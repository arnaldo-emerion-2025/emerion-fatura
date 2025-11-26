unit ManImp_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Db,
  DBTables, Wwquery, RDprint, dxExEdtr, FShowpadrao, dxDBColorCurrencyEdit;

type
  TfmManImp_NFE = class(TfmShowPadrao)
    GerEmp: TwwQuery;
    PaintBox: TPaintBox;
    RDprint1: TRDprint;
    quSQL: TwwQuery;
    Label57: TLabel;
    EdNroNfs: TdxDBColorCurrencyEdit;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    GerEmpQTDNFS: TIntegerField;
    dsgeremp: TDataSource;
    procedure bretornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bcontinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManImp_NFE: TfmManImp_NFE;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB, ManPri, ManNot_NFE,
  ManNge_NFE2, MsgUser;

{$R *.DFM}

procedure TfmManImp_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManImp_NFE.bretornarClick(Sender: TObject);
begin

  if fmManNot_NFE.FatPedSitFat.AsString = 'Faturado' then
  begin
    fmManNot_NFE.Finalizar := 'S';
  end
  else if fmManNot_NFE.FatPedSitFat.AsString = 'Nao Concluido' then
  begin
      fmManNot_NFE.FatPedNroNfs.Asinteger := 0;
  end;


  close;

end;

procedure TfmManImp_NFE.bcontinuarClick(Sender: TObject);
var
  ArqTexto: TStringList;
  Nota01: array[1..210] of string;
  Nota02: array[1..210] of string;
  NomCli, RfCCli, GImpRef: string;
  EndEnt1, EndEnt2, EndCob1, EndCob2, Linha, FonCli, Pt1Cli, Fo1Cli, sCanc, sText, ImpClf: string;
  TecCli, EncCli, NrcCli, BacCli, CicCli, UfcCli, CecCli, ValorExt, ValorEx1, ValorEx2, ValorEx3, sContinuar: string;
  Tam, Reg, Inc, Col, Lin, r, i, j, rec, qtdIte, qtdNfs, qtdLin, qtdnfis, qtdimpr, qtitens, SeqPe2, SeqNfs, QtiNfs, qtdnot, CodCli, SeqError: integer;

  procedure ApagaNroNfs;
  begin
    with fmManNot_NFE.FatPed do
    begin

      fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
      fmManNot_NFE.FatPedNroNfs.Value := Null;

      try

        ApplyUpdates; {Tenta aplicar as alteracoes}

        fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}

      except

        fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}

        sContinuar := 'N';

        if fmManNot_NFE.FatPed.State = dsBrowse then
          fmManNot_NFE.FatPed.Edit;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;
  end;
begin
  if ExisteNroNF(StrToInt(edNroNfs.Text), GEmp_Id) then
  begin
    if MessageBox(Handle, 'Deseja continuar com a emiss�o da NFe ciente que haver� duplicidade?',
      'Validacao de NFe', MB_YESNO + MB_ICONQUESTION + MB_NOFOCUS) = idYes then
    begin
      InformacaoObrigatoria('Continuar o processo de faturamento poder� causar duplicidade de envio de NFe e gerar informacoes nao consistentes em relat�rios do faturamento. Al�m de duplicar titulos em contas a receber.', 'Validacao de NFE');
      if ExisteNroNF(StrToInt(EdNroNfs.Text), GEmp_Id) then
      begin
        if messagebox(handle, 'Se est� certo e deseja continuar?', 'Validacao NFe', MB_YESNO + MB_ICONQUESTION + MB_NOFOCUS) = idno then
        begin

          bretornar.Click;
          abort;
        end;
      end;
    end
    else
    begin

      bretornar.Click;
      abort;
    end;
  end;

  //

  if fmManNot_NFE.FatPedNroNfs.Value > 0 then
  begin

    sContinuar := 'N';

    qtdnfs := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

    if EdNroNfs.Value > qtdnfs then
    begin

      if fMsgConf('Numero de nota fiscal informado esta fora de sequ�ncia. Pr�ximo ' + Trim(IntToStr(QtdNfs)) + '. Confirma ?', 'E') = 'SIM' then
        sContinuar := 'S'
      else
      begin

        fmManNot_NFE.FatPedNroNfs.Value := QtdNfs;

        EdNroNfs.SetFocus;

      end;

    end
    else
    begin

      if EdNroNfs.Value < qtdnfs then
      begin

        if fMsgConf('Numero de nota fiscal informado esta fora de sequ�ncia. Pr�ximo ' + Trim(IntToStr(QtdNfs)) + '. Confirma ?', 'E') = 'SIM' then
          sContinuar := 'S'
        else
          sContinuar := 'N';

      end
      else
        sContinuar := 'S';

    end;

    if sContinuar = 'S' then
    begin

      if fmManNot_NFE.FatPedFlgNfe.Value = 'Nao' then
      begin

        if not FileExists(ExtractFilePath(Application.ExeName) + 'lincol.txt') then
          sContinuar := 'N';

      end;

      if sContinuar = 'S' then
      begin

        if fmManNot_NFE.FatPed.State = dsBrowse then
          fmManNot_NFE.FatPed.Edit;

        with fmManNot_NFE.FatPed do
        begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
          ;

          //Rolando - 16/03/2010
          fmManNot_NFE.FatPedFlgNfs.Value := '*';
          fmManNot_NFE.FatPedFlgNfe.Value := 'Sim';
          fmmanNot_NFE.FatPedENVNFE.Value := 'Nao';
          //

       (*   try

             ApplyUpdates; {Tenta aplicar as alteracoes};

             fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro};

             sContinuar := 'N';

             if fmManNot_NFE.FatPed.State = dsBrowse then fmManNot_NFE.FatPed.Edit;

             EdNroNfs.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}
         *)
        end;

        (*fmManNot_NFE.FatPed.Close;
        fmManNot_NFE.FatPed.Open;

        fmManNot_NFE.FatPe2.Close;
        fmManNot_NFE.FatPe2.Open;

        fmManNot_NFE.FatPed.Edit;
          *)
        sContinuar := 'S';

      end;

      if sContinuar = 'S' then
      begin

        if Trim(fmManNot_NFE.FatPedSitFat.Value) = 'Nao Concluido' then
        begin

          sText := '              Confirma Nota Fiscal?               ' + #10 +
            '                                                  ' + #10 +
            ' Ao Confirmar Ocorrer�o os Seguintes Lan�amentos :' + #10 +
            '                                                  ';

          if fmManNot_NFE.FatPedAtuEst.Value = 'Sim' then
            sText := sText + #10 + ' . Baixas nos Estoques dos Itens Faturados;       ';

          if fmManNot_NFE.FatPedIntFin.Value = 'Sim' then
            sText := sText + #10 + ' . Lan�amentos dos Titulos no Contas a Receber.   ';

          sText := sText + #10 + '                                                  ';

          if fMsg(sText, 'O') then
          begin

            fmManNot_NFE.FatPed.Edit;

            fmManNot_NFE.FatPedSitFat.Value := 'Faturado';

            fmManNot_NFE.FatPedFLGNFE.Value := 'Sim';
            fmmanNot_NFE.FatPedENVNFE.Value := 'Nao';
            fmManNot_NFE.fatpedflgimp.Value := 'SIM';
            //

            with fmManNot_NFE.FatPed do
            begin

              try

                ApplyUpdates; {Tenta aplicar as alteracoes}
                ;

                fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
                ;

              except

                fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
                ;

                if fmManNot_NFE.FatPed.State <> dsBrowse then
                  fmManNot_NFE.FatPed.CancelUpdates;

                fmManNot_NFE.FatPed.Close;
                fmManNot_NFE.FatPed.Open;

                fmManNot_NFE.FatPed.Edit;

                sContinuar := 'N';

                if EdNroNfs.Enabled then
                  EdNroNfs.SetFocus;

                raise;

              end;

              CommitUpdates; {sucesso!, limpa o cache...}

            end;

            fmManNot_NFE.FatPed.Close;
            fmManNot_NFE.FatPed.Open;

          end
          else
          begin

            EdNroNfs.Enabled := False;

            sContinuar := 'N';

            bContinuar.SetFocus;

          end;
        end;

        if sContinuar = 'S' then
        begin

          if fmManNot_NFE.FatPedFlgNfe.Value = 'Nao' then
          begin

            fmsg('Posicione a nota fiscal e pressione ENTER', 'E');

            with quSQL, SQL do
            begin

              Close;
              Text := ' Select ImpRef From FatPar';
              Open;

              GImpRef := FieldByName('ImpRef').AsString;

            end;

            with quSQL, SQL do
            begin

              Close;
              Text := ' Select FinCli.NomCli,' +
                '        FinCli.TecCli,' +
                '        FinCli.EncCli,' +
                '        FinCli.RfcCli,' +
                '        FinCli.NrcCli,' +
                '        FinCli.BacCli,' +
                '        FinCli.CicCli,' +
                '        FinCli.UfcCli,' +
                '        FinCli.CecCli,' +
                '        FinCli.Pt1Cli,' +
                '        FinCli.Fo1Cli ' +
                ' From FinCli' +
                ' Where FinCli.CodCli = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedCodCli.Value));
              Open;

              NomCli := Trim(FieldbyName('NomCli').AsString);
              TecCli := Trim(FieldbyName('TecCli').AsString);
              EncCli := Trim(FieldbyName('EncCli').AsString);
              RfcCli := Trim(FieldbyName('RfcCli').AsString);
              NrcCli := Trim(FieldbyName('NrcCli').AsString);
              BacCli := Trim(FieldbyName('BacCli').AsString);
              CicCli := Trim(FieldbyName('CicCli').AsString);
              UfcCli := Trim(FieldbyName('UfcCli').AsString);
              CecCli := Trim(FieldbyName('CecCli').AsString);
              Pt1Cli := Trim(FieldbyName('Pt1Cli').AsString);
              Fo1Cli := Trim(FieldbyName('Fo1Cli').AsString);

              if Trim(CecCli) <> '' then
                CecCli := copy(CecCli, 1, 5) + '-' + copy(CecCli, 6, 3);

            end;

            if fmManNot_NFE.FatPedSitFat.Value = 'Nao Concluido' then
            begin

              sText := '              Confirma Nota Fiscal?               ' + #10 +
                '                                                  ' + #10 +
                ' Ao Confirmar Ocorrer�o os Seguintes Lan�amentos :' + #10 +
                '                                                  ';

              if fmManNot_NFE.FatPedAtuEst.Value = 'Sim' then
                sText := sText + #10 + ' . Baixas nos Estoques dos Itens Faturados;       ';

              if fmManNot_NFE.FatPedIntFin.Value = 'Sim' then
                sText := sText + #10 + ' . Lan�amentos dos Titulos no Contas a Receber.   ';

              sText := sText + #10 + '                                                  ';

              if fMsg(sText, 'O') then
              begin

                fmManNot_NFE.FatPed.Edit;

                fmManNot_NFE.FatPedSitFat.Value := 'Faturado';

                with fmManNot_NFE.FatPed do
                begin

                  fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
                  ;

                  try

                    ApplyUpdates; {Tenta aplicar as alteracoes}
                    ;

                    fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
                    ;

                  except

                    fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
                    ;

                    if fmManNot_NFE.FatPed.State <> dsBrowse then
                      fmManNot_NFE.FatPed.CancelUpdates;

                    fmManNot_NFE.FatPed.Close;
                    fmManNot_NFE.FatPed.Open;

                    fmManNot_NFE.FatPed.Edit;

                    sContinuar := 'N';

                    if EdNroNfs.Enabled then
                      EdNroNfs.SetFocus;

                    raise;

                  end;

                  CommitUpdates; {sucesso!, limpa o cache...}

                end;

                fmManNot_NFE.FatPed.Close;
                fmManNot_NFE.FatPed.Open;

                EdNroNfs.Enabled := False;

                sContinuar := 'S';

              end
              else
              begin

                EdNroNfs.Enabled := False;

                sContinuar := 'N';

                bContinuar.SetFocus;

              end;
            end;

            if sContinuar = 'S' then
            begin

              fmsg('Posicione Nota Fiscal e Pressione ENTER', 'E');

              SeqError := 1;

              try

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select QtdLin,QtdNot,ImpClf From FatPar';
                  Open;

                  ImpClf := quSql.FieldbyName('ImpClf').AsString;
                  QtdIte := quSql.FieldbyName('QtdLin').AsInteger;
                  QtdNfs := quSql.FieldbyName('QtdNot').AsInteger;

                end;

                ArqTexto := TStringList.Create;
                ArqTexto.LoadFromFile(ExtractFilePath(Application.ExeName) + 'lincol.txt');

                qtdLin := ArqTexto.Count - 1;

                EndCob2 := '';
                EndEnt2 := '';

                if Trim(TecCli) <> '' then
                  EndCob1 := Trim(TecCli) + ' ' + Trim(EncCli)
                else
                  EndCob1 := Trim(EncCli);

                if Trim(NrcCli) <> '' then
                  EndCob1 := EndCob1 + ', ' + Trim(NrcCli);

                if Trim(RfcCli) <> '' then
                  EndCob1 := EndCob1 + ' ' + Trim(RfcCli);

                if Trim(BacCli) <> '' then
                  EndCob1 := EndCob1 + ' ' + Trim(BacCli);

                if Trim(CicCli) <> '' then
                  EndCob1 := EndCob1 + ' - ' + Trim(CicCli);

                if Trim(UfcCli) <> '' then
                  EndCob1 := EndCob1 + ' ' + Trim(UfcCli);

                if Trim(CecCli) <> '' then
                  EndCob1 := EndCob1 + ' Cep ' + Trim(CecCli);

                if Trim(fmManNot_NFE.FatPedNomEnt.Value) <> '' then
                begin

                  EndEnt1 := Trim(fmManNot_NFE.FatPedNomEnt.Value);

                  EndEnt1 := EndEnt1 + ' C.N.P.J :' + copy(fmManNot_NFE.FatPedCgeCli.Value, 01, 2) + '.' + copy(fmManNot_NFE.FatPedCgeCli.Value, 3, 3) + '.'
                    +
                    copy(fmManNot_NFE.FatPedCgeCli.Value, 06, 3) + '/' + copy(fmManNot_NFE.FatPedCgeCli.Value, 9, 4) + '-' +
                    copy(fmManNot_NFE.FatPedCgeCli.Value, 13, 2);

                  if Trim(fmManNot_NFE.FatPedTenCli.Value) <> '' then
                    EndEnt2 := Trim(fmManNot_NFE.FatPedTenCli.Value) + ' ' + Trim(fmManNot_NFE.FatPedEndCli.Value)
                  else
                    EndEnt2 := Trim(fmManNot_NFE.FatPedEndCli.Value);

                  if Trim(fmManNot_NFE.FatPedNumCli.Value) <> '' then
                    EndEnt2 := EndEnt2 + ', ' + Trim(fmManNot_NFE.FatPedNumCli.Value);

                  if Trim(fmManNot_NFE.FatPedRefCli.Value) <> '' then
                    EndEnt2 := EndEnt2 + ' ' + Trim(fmManNot_NFE.FatPedRefCli.Value);

                  if Trim(fmManNot_NFE.FatPedBaiCli.Value) <> '' then
                    EndEnt2 := EndEnt2 + ' ' + Trim(fmManNot_NFE.FatPedBaiCli.Value);

                  if Trim(fmManNot_NFE.FatPedCidCli.Value) <> '' then
                    EndEnt2 := EndEnt2 + ' - ' + Trim(fmManNot_NFE.FatPedCidCli.Value);

                  if Trim(fmManNot_NFE.FatPedUfeCli.Value) <> '' then
                    EndEnt2 := EndEnt2 + ' - ' + Trim(fmManNot_NFE.FatPedUfeCli.Value);

                  if Trim(fmManNot_NFE.FatPedCepCli.Value) <> '' then
                    EndEnt2 := EndEnt2 + ' Cep ' + copy(Trim(fmManNot_NFE.FatPedCepCli.Value), 1, 5) + '-' + copy(Trim(fmManNot_NFE.FatPedCepCli.Value), 6,
                      3);

                end
                else
                begin

                  if Trim(fmManNot_NFE.FatPedTenCli.Value) <> '' then
                    EndEnt1 := Trim(fmManNot_NFE.FatPedTenCli.Value) + ' ' + Trim(fmManNot_NFE.FatPedEndCli.Value)
                  else
                    EndEnt1 := Trim(fmManNot_NFE.FatPedEndCli.Value);

                  if Trim(fmManNot_NFE.FatPedNumCli.Value) <> '' then
                    EndEnt1 := EndEnt1 + ', ' + Trim(fmManNot_NFE.FatPedNumCli.Value);

                  if Trim(fmManNot_NFE.FatPedRefCli.Value) <> '' then
                    EndEnt1 := EndEnt1 + ' ' + Trim(fmManNot_NFE.FatPedRefCli.Value);

                  if Trim(fmManNot_NFE.FatPedBaiCli.Value) <> '' then
                    EndEnt1 := EndEnt1 + ' ' + Trim(fmManNot_NFE.FatPedBaiCli.Value);

                  if Trim(fmManNot_NFE.FatPedCidCli.Value) <> '' then
                    EndEnt1 := EndEnt1 + ' - ' + Trim(fmManNot_NFE.FatPedCidCli.Value);

                  if Trim(fmManNot_NFE.FatPedUfeCli.Value) <> '' then
                    EndEnt1 := EndEnt1 + ' - ' + Trim(fmManNot_NFE.FatPedUfeCli.Value);

                  if Trim(fmManNot_NFE.FatPedCepCli.Value) <> '' then
                    EndEnt1 := EndEnt1 + ' Cep ' + copy(Trim(fmManNot_NFE.FatPedCepCli.Value), 1, 5) + '-' + copy(Trim(fmManNot_NFE.FatPedCepCli.Value), 6,
                      3);

                  EndEnt2 := 'C.N.P.J.:' + copy(fmManNot_NFE.FatPedCgeCli.Value, 01, 2) + '.' + copy(fmManNot_NFE.FatPedCgeCli.Value, 3, 3) + '.' +
                    copy(fmManNot_NFE.FatPedCgeCli.Value, 06, 3) + '/' + copy(fmManNot_NFE.FatPedCgeCli.Value, 9, 4) + '-' +
                    copy(fmManNot_NFE.FatPedCgeCli.Value, 13, 2);

                end;

                if Trim(Pt1Cli) <> '' then
                  FonCli := '(' + Trim(Pt1Cli) + ')' + Trim(Fo1Cli)
                else
                  FonCli := Trim(Fo1Cli);

                Nota01[001] := 'NumNot';
                Nota02[001] := 'Comp12';

                Nota01[002] := fmManNot_NFE.FatPedFlgSai.Value; {Saida}
                Nota02[002] := 'Comp12';

                Nota01[003] := fmManNot_NFE.FatPedFlgEnt.Value; {Entrada}
                Nota02[003] := 'Comp12';

                Nota01[004] := Trim(fmManNot_NFE.FatPedDesNat.Value); {NatOper}
                Nota02[004] := 'Comp12';

                if Trim(fmManNot_NFE.FatPedCodCf2.Value) <> '' then {Cfop}
                  Nota01[005] := Trim(fmManNot_NFE.FatPedCodCf1.Value) + '/' + Trim(fmManNot_NFE.FatPedCodCf2.Value)
                else
                  Nota01[005] := Trim(fmManNot_NFE.FatPedCodCf1.Value);

                Nota02[005] := 'Comp12';

                Nota01[006] := '';
                Nota02[006] := 'Comp12';

                Nota01[007] := Trim(fmManNot_NFE.FatPedInsSub.Value); {InscEstSubTrib}
                Nota02[007] := 'Comp12';

                Nota01[008] := NomCli; {Nome do Cliente}
                Nota02[008] := 'Comp12';

                Nota01[009] := fFormatCGCCPF(fmManNot_NFE.FatPedCgcCli.Value);
                Nota02[009] := 'Comp12';

                Nota01[010] := DateToStr(fmManNot_NFE.FatPedDteFat.Value); {DataEmis}
                Nota02[010] := 'Comp12';

                if Trim(fmManNot_NFE.FatPedTefCli.Value) <> '' then {Endereco}
                  Nota01[011] := Trim(fmManNot_NFE.FatPedTefCli.Value) + ' ' + Trim(fmManNot_NFE.FatPedEnfCli.Value)
                else
                  Nota01[011] := Trim(fmManNot_NFE.FatPedEnfCli.Value);

                if Trim(fmManNot_NFE.FatPedNrfCli.Value) <> '' then
                  Nota01[011] := Nota01[011] + ', ' + Trim(fmManNot_NFE.FatPedNrfCli.Value);

                if Trim(fmManNot_NFE.FatPedRffCli.Value) <> '' then
                  Nota01[011] := Nota01[011] + ' ' + Trim(fmManNot_NFE.FatPedRffCli.Value);

                Nota02[011] := 'Comp12';

                Nota01[012] := fmManNot_NFE.FatPedBafCli.Value; {Bairro}
                Nota02[012] := 'Comp12';

                if Trim(fmManNot_NFE.FatPedCefCli.Value) <> '' then {Cep}
                  Nota01[013] := copy(fmManNot_NFE.FatPedCefCli.Value, 1, 5) + '-' + copy(fmManNot_NFE.FatPedCefCli.Value, 6, 3)
                else
                  Nota01[013] := ' ';

                Nota02[013] := 'Comp12';

                Nota01[014] := ''; {DataSai}
                Nota02[014] := '';

                Nota01[015] := fmManNot_NFE.FatPedCifCli.Value; {Cidade}
                Nota02[015] := 'Comp12';

                Nota01[016] := FonCli; {Fone}
                Nota02[016] := 'Comp12';

                {Uf}
                if Trim(fmManNot_NFE.FatPedUfeFat.Value) <> 'EX' then
                  Nota01[017] := fmManNot_NFE.FatPedUfeFat.Value
                else
                  Nota01[017] := ' ';

                Nota02[017] := 'Comp12';

                {InscEst}
                if Trim(fmManNot_NFE.FatPedUfeFat.Value) <> 'EX' then
                  Nota01[018] := fmManNot_NFE.FatPedInsCli.Value
                else
                  Nota01[018] := ' ';

                Nota02[018] := 'Comp12';

                Nota01[019] := ' '; {Hora da Saida}
                Nota02[019] := 'Comp12';

                Nota01[208] := ' '; {Detalhamento do ICMS}
                Nota02[208] := 'Comp20';

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select FatPe3.NroPe3,' +
                    '        FatPe3.DtvPe3,' +
                    '        FatPe3.VlpPe3 From FatPe3' +
                    ' Where FatPe3.CodEmp = :CodEmp' +
                    '   and FatPe3.DteRes = :DteRes' +
                    '   and FatPe3.NumRes = :NumRes' +
                    '   and FatPe3.SeqLib = :SeqLib' +
                    '   and FatPe3.SeqFat = :SeqFat' +
                    ' Order by FatPe3.NroPe3';

                  with Params do
                  begin

                    Params[0].AsInteger := fmManNot_NFE.FatPedCodEmp.Value;
                    Params[1].AsDateTime := fmManNot_NFE.FatPedDteRes.Value;
                    Params[2].AsInteger := fmManNot_NFE.FatPedNumRes.Value;
                    Params[3].AsInteger := fmManNot_NFE.FatPedSeqLib.Value;
                    Params[4].AsInteger := fmManNot_NFE.FatPedSeqFat.Value;

                  end;

                  Open;
                  First;

                end;

                i := 131;

                rec := 0;

                while not quSQL.Eof do
                begin

                  Nota01[i] := fNumZeros(IntToStr(fmManNot_NFE.FatPedNroNfs.Value), 6) + '/' + FNumZeros(IntToStr(quSQL.FieldbyName('NroPe3').AsInteger), 3);
                  {Numero}
                  Nota02[i] := 'Comp12';

                  i := i + 1;

                  rec := rec + 1;

                  if rec = 8 then
                    i := 195;

                  if rec > 12 then
                    quSQL.Last
                  else
                    quSQL.Next;

                end;

                quSQL.First;

                i := 141;

                rec := 0;

                while not quSQL.Eof do
                begin

                  Nota01[i] := quSQL.FieldbyName('DtvPe3').AsString; {Vencimento}
                  Nota02[i] := 'Comp12';

                  i := i + 1;

                  rec := rec + 1;

                  if rec = 8 then
                    i := 199;

                  if rec > 12 then
                    quSQL.Last
                  else
                    quSQL.Next;

                end;

                quSQL.First;

                i := 151;

                rec := 0;

                while not quSQL.Eof do
                begin

                  Nota01[i] := Prestring(FormatFloat('###,###,##0.00', quSQL.FieldbyName('VlpPe3').AsFloat), 14); {Valor}
                  Nota02[i] := 'Comp12';

                  i := i + 1;

                  rec := rec + 1;

                  if rec = 8 then
                    i := 203;

                  if rec > 12 then
                    quSQL.Last
                  else
                    quSQL.Next;

                end;

                i := 161;

                rec := 0;

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select * From FatSer' +
                    ' Where FatSer.CodEmp = :CodEmp' +
                    '   and FatSer.DteRes = :DteRes' +
                    '   and FatSer.NumRes = :NumRes' +
                    '   and FatSer.SeqLib = :SeqLib' +
                    '   and FatSer.SeqFat = :SeqFat';

                  with Params do
                  begin

                    Params[0].AsInteger := fmManNot_NFE.FatPedCodEmp.Value;
                    Params[1].AsDateTime := fmManNot_NFE.FatPedDteRes.Value;
                    Params[2].AsInteger := fmManNot_NFE.FatPedNumRes.Value;
                    Params[3].AsInteger := fmManNot_NFE.FatPedSeqLib.Value;
                    Params[4].AsInteger := fmManNot_NFE.FatPedSeqFat.Value;

                  end;

                  Open;
                  First;

                end;

                while not quSQL.Eof do
                begin

                  if (quSql.FieldbyName('CodGru').AsString <> '888') and (quSql.FieldbyName('CodGru').AsString <> '999') then
                    Nota01[i] := quSql.FieldbyName('CodGru').AsString + '.' + quSql.FieldbyName('CodSub').AsString + '.' +
                      quSql.FieldbyName('CodPro').AsString
                  else
                    Nota01[i] := ' ';

                  Nota02[i] := 'Comp20';

                  i := i + 1;

                  if rec > 4 then
                    quSQL.Last
                  else
                    quSQL.Next;

                end;

                i := 165;

                quSQL.First;

                while not quSQL.Eof do
                begin

                  if Trim(quSql.FieldbyName('DesSer').AsString) <> '' then
                    Nota01[i] := copy(quSql.FieldbyName('DesSer').AsString, 1, 40)
                  else
                    Nota01[i] := ' ';

                  Nota02[i] := 'Comp20';

                  i := i + 1;

                  if rec > 4 then
                    quSQL.Last
                  else
                    quSQL.Next;

                end;

                i := 169;

                quSQL.First;

                while not quSQL.Eof do
                begin

                  if Trim(quSql.FieldbyName('CodUnd').AsString) <> '' then
                    Nota01[i] := quSql.FieldbyName('CodUnd').AsString
                  else
                    Nota01[i] := ' ';

                  Nota02[i] := 'Comp20';

                  i := i + 1;

                  if rec > 4 then
                    quSQL.Last
                  else
                    quSQL.Next;

                end;

                i := 173;

                quSQL.First;

                while not quSQL.Eof do
                begin

                  if quSql.FieldbyName('QtpSer').AsFloat > 0 then
                  begin

                    if fEncDecimal(quSql.FieldbyName('QtpSer').AsFloat) > 0 then
                      Nota01[i] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('QtpSer').AsFloat), 12)
                    else
                      Nota01[i] := Prestring(FormatFloat('####,###,##0', quSql.FieldbyName('QtpSer').AsFloat), 12);

                  end
                  else
                    Nota01[i] := ' ';

                  Nota02[i] := 'Comp20';

                  i := i + 1;

                  if rec > 4 then
                    quSQL.Last
                  else
                    quSQL.Next;

                end;

                i := 177;

                quSQL.First;

                while not quSQL.Eof do
                begin

                  if quSql.FieldbyName('VluSer').AsFloat > 0 then
                    Nota01[i] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('VluSer').AsFloat), 12)
                  else
                    Nota01[i] := ' ';

                  Nota02[i] := 'Comp20';

                  i := i + 1;

                  if rec > 4 then
                    quSQL.Last
                  else
                    quSQL.Next;

                end;

                i := 181;

                quSQL.First;

                while not quSQL.Eof do
                begin

                  if quSql.FieldbyName('TotSer').AsFloat > 0 then
                    Nota01[i] := Prestring(FormatFloat('###,###,##0.00', quSql.FieldbyName('TotSer').AsFloat), 12)
                  else
                    Nota01[i] := ' ';

                  Nota02[i] := 'Comp20';

                  i := i + 1;

                  if rec > 4 then
                    quSQL.Last
                  else
                    quSQL.Next;

                end;

                if fmManNot_NFE.FatPedTotIss.Value > 0 then
                  Nota01[185] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotIss.Value), 14)
                else
                  Nota01[185] := ' ';

                Nota02[185] := 'Comp12';

                if fmManNot_NFE.FatPedTotSer.Value > 0 then
                  Nota01[186] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotSer.Value), 14)
                else
                  Nota01[186] := ' ';

                Nota02[186] := 'Comp12';

                Nota01[038] := EndCob1; {Cobranca_1}
                Nota02[038] := 'Comp20';

                Nota01[039] := EndCob2; {Cobranca_2}
                Nota02[039] := 'Comp20';

                Nota01[040] := ''; {Produto}
                Nota02[040] := 'Comp20';

                Nota01[041] := ''; {Descr}
                Nota02[041] := 'Comp20';

                Nota01[042] := ''; {ClassFisc}
                Nota02[042] := 'Comp20';

                Nota01[207] := ''; {ClassFisc}
                Nota02[207] := 'Comp20';

                Nota01[210] := ''; {ClassFisc}
                Nota02[210] := 'Comp20';

                Nota01[043] := ''; {St1}
                Nota02[043] := 'Comp20';

                Nota01[044] := ''; {St2}
                Nota02[044] := 'Comp20';

                Nota01[045] := ''; {Unidade}
                Nota02[045] := 'Comp20';

                Nota01[046] := ''; {Qtde}
                Nota02[046] := 'Comp20';

                Nota01[047] := ''; {Unit}
                Nota02[047] := 'Comp20';

                Nota01[048] := ''; {Total}
                Nota02[048] := 'Comp20';

                Nota01[049] := ''; {AlIcms}
                Nota02[049] := 'Comp20';

                Nota01[050] := ''; {AlIpi}
                Nota02[050] := 'Comp20';

                Nota01[051] := ''; {ValIpi}
                Nota02[051] := 'Comp20';

                Nota01[052] := ''; {Descr2}
                Nota02[052] := 'Comp20';

                Nota01[128] := ''; {Descr3}
                Nota02[128] := 'Comp20';

                Nota01[053] := fmManNot_NFE.FatPedTxfIpi.Value; {TextIpi}
                Nota02[053] := 'Comp20';

                Nota01[054] := fmManNot_NFE.FatPedTxfIcm.Value; {TextIcm}
                Nota02[054] := 'Comp20';

                Nota01[055] := 'Entrega: ' + EndEnt1; {Entrega_1}
                Nota02[055] := 'Comp20';

                Nota01[056] := '         ' + EndEnt2; {Entrega_2}
                Nota02[056] := 'Comp20';

                Nota01[067] := fmManNot_NFE.FatPedNomTra.Value; {NomeTransp}
                Nota02[067] := 'Comp12';

                Nota01[068] := fmManNot_NFE.FatPedTipFrt.Value; {FretePc}
                Nota02[068] := 'Comp12';

                Nota01[069] := fmManNot_NFE.FatPedPlcTra.Value; {Placa}
                Nota02[069] := 'Comp12';

                Nota01[070] := fmManNot_NFE.FatPedUfePlc.Value; {UfPlaca}
                Nota02[070] := 'Comp12';

                if Trim(fmManNot_NFE.FatPedCgcTra.Value) <> '' then

                  Nota01[071] := copy(fmManNot_NFE.FatPedCgcTra.Value, 01, 2) + '.' + copy(fmManNot_NFE.FatPedCgcTra.Value, 3, 3) + '.' +
                    copy(fmManNot_NFE.FatPedCgcTra.Value, 06, 3) + '/' + copy(fmManNot_NFE.FatPedCgcTra.Value, 9, 4) + '-' +
                    copy(fmManNot_NFE.FatPedCgcTra.Value, 13, 2)

                else
                  Nota01[071] := ' ';

                Nota02[071] := 'Comp12';

                Nota01[072] := Trim(fmManNot_NFE.FatPedTenTra.Value) + ' ' + Trim(fmManNot_NFE.FatPedEndTra.Value) + ', ' +
                  Trim(fmManNot_NFE.FatPedNumTra.Value) + ' ' + Trim(fmManNot_NFE.FatPedBaiTra.Value);
                Nota02[072] := 'Comp12';

                Nota01[073] := fmManNot_NFE.FatPedCidTra.Value; {CidTransp}
                Nota02[073] := 'Comp12';

                Nota01[074] := fmManNot_NFE.FatPedUfeTra.Value; {UFTransp}
                Nota02[074] := 'Comp12';

                Nota01[075] := fmManNot_NFE.FatPedInsTra.Value; {InscTransp}
                Nota02[075] := 'Comp12';

                // De Acordo com o Toninho Por Enquanto Deixar o Campo de Volumes Em branco Em  : 02/07/2003 //
                // So Exibir se a Valeria Alterar o seu Conteudo "Notas de Exporta��o //

                if fmManNot_NFE.FatPedAltVol.Value > 0 then
                  Nota01[076] := Prestring(IntToStr(fmManNot_NFE.FatPedAltVol.Value), 7) {QtdeVol}
                else
                  Nota01[076] := ' ';

                Nota02[076] := 'Comp12';

                Nota01[077] := fmManNot_NFE.FatPedEspFat.Value; {Especie}
                Nota02[077] := 'Comp12';

                Nota01[078] := fmManNot_NFE.FatPedMarFat.Value; {Marca}
                Nota02[078] := 'Comp12';

                Nota01[079] := fmManNot_NFE.FatPedNroFat.Value; {Numero}
                Nota02[079] := 'Comp12';

                Nota01[080] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedInfBrt.Value), 14); {PesBruto}
                Nota02[080] := 'Comp12';

                Nota01[081] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedInfLiq.Value), 14); {PesLiq}
                Nota02[081] := 'Comp12';

                if (Trim(fmManNot_NFE.FatPedOb1Fat.Value) = '') and
                  (Trim(fmManNot_NFE.FatPedOb2Fat.Value) = '') and
                  (Trim(fmManNot_NFE.FatPedOb3Fat.Value) = '') and
                  (Trim(fmManNot_NFE.FatPedOb4Fat.Value) = '') and
                  (Trim(fmManNot_NFE.FatPedOb5Fat.Value) = '') and
                  (Trim(fmManNot_NFE.FatPedOb6Fat.Value) = '') and
                  (Trim(fmManNot_NFE.FatPedOb7Fat.Value) = '') and
                  (Trim(fmManNot_NFE.FatPedOb8Fat.Value) = '') then
                begin

                  Nota01[187] := copy(fmManNot_NFE.FatPedObsFat.Value, 001, 070); {Obs1}
                  Nota02[187] := 'Comp20';

                  Nota01[188] := copy(fmManNot_NFE.FatPedObsFat.Value, 071, 070); {Obs2}
                  Nota02[188] := 'Comp20';

                  Nota01[189] := copy(fmManNot_NFE.FatPedObsFat.Value, 141, 070); {Obs3}
                  Nota02[189] := 'Comp20';

                  Nota01[190] := copy(fmManNot_NFE.FatPedObsFat.Value, 211, 070); {Obs4}
                  Nota02[190] := 'Comp20';

                  Nota01[191] := copy(fmManNot_NFE.FatPedObsFat.Value, 281, 070); {Obs5}
                  Nota02[191] := 'Comp20';

                  Nota01[192] := copy(fmManNot_NFE.FatPedObsFat.Value, 351, 070); {Obs6}
                  Nota02[192] := 'Comp20';

                  Nota01[193] := ' '; {Obs7}
                  Nota02[193] := 'Comp20';

                  Nota01[193] := ' '; {Obs8}
                  Nota02[193] := 'Comp20';

                end
                else
                begin

                  Nota01[187] := fmManNot_NFE.FatPedOb1Fat.Value; {Obs1}
                  Nota02[187] := 'Comp20';

                  Nota01[188] := fmManNot_NFE.FatPedOb2Fat.Value; {Obs2}
                  Nota02[188] := 'Comp20';

                  Nota01[189] := fmManNot_NFE.FatPedOb3Fat.Value; {Obs3}
                  Nota02[189] := 'Comp20';

                  Nota01[190] := fmManNot_NFE.FatPedOb4Fat.Value; {Obs4}
                  Nota02[190] := 'Comp20';

                  Nota01[191] := fmManNot_NFE.FatPedOb5Fat.Value; {Obs5}
                  Nota02[191] := 'Comp20';

                  Nota01[192] := fmManNot_NFE.FatPedOb6Fat.Value; {Obs6}
                  Nota02[192] := 'Comp20';

                  Nota01[193] := fmManNot_NFE.FatPedOb7Fat.Value; {Obs7}
                  Nota02[193] := 'Comp20';

                  Nota01[194] := fmManNot_NFE.FatPedOb8Fat.Value; {Obs8}
                  Nota02[194] := 'Comp20';

                end;

                Nota01[117] := IntToStr(fmManNot_NFE.CodCli); {c�digo do Cliente}
                Nota02[117] := 'Comp12';

                Nota01[118] := fNumZeros(IntToStr(fmManNot_NFE.CodVen), 3); {c�digo do Vendedor}
                Nota02[118] := 'Comp12';

                Nota01[119] := ''; {SeuPed}
                Nota02[119] := 'Comp12';

                Nota01[120] := fNumZeros(IntToStr(fmManNot_NFE.FatPedNumRes.Value), 7); {Nosso Pedido}
                Nota02[120] := 'Comp12';

                Nota01[121] := 'NumNot'; {NotaRod1}
                Nota02[121] := 'Comp20';

                Nota01[122] := 'NumNot'; {NotaRod2}
                Nota02[122] := 'Comp20';

                ValorExt := fExtenso(fmManNot_NFE.FatPedTotGer.Value);

                if Length(TrimLeft(TrimRight(ValorExt))) < 150 then
                  ValorExt := TrimLeft(TrimRight(ValorExt)) + fReplicate('*', 150 - Length(TrimLeft(TrimRight(ValorExt))));

                Nota01[123] := copy(ValorExt, 001, 50); {Valor por Extenso 1}
                Nota02[123] := 'Comp12';

                Nota01[124] := copy(ValorExt, 051, 50); {Valor por Extenso 2}
                Nota02[124] := 'Comp12';

                Nota01[125] := copy(ValorExt, 101, 50); {Valor por Extenso 3}
                Nota02[125] := 'Comp12';

                Nota01[126] := fmManNot_NFE.FatPedDesReg.Value; {Observacoes Sobre Desconto}
                Nota02[126] := 'Comp20';

                {********************************************************************************************}

                if FileExists('C:\Windows\Emerion.prg') then
                  rdprint1.opcoesPreview.Preview := True
                else
                  rdprint1.opcoesPreview.Preview := False;

                rdprint1.OpcoesPreview.PreviewZoom := 100;
                rdprint1.TamanhoQteLPP := oito;
                rdprint1.UsaGerenciadorImpr := True;

                rdprint1.TamanhoQteColunas := 136;
                rdprint1.FonteTamanhoPadrao := s17cpp;

                {Programa��o dos Eventos: desliga eventos cabecalho/rodape}
                rdprint1.OnNewPage := nil;
                rdprint1.OnBeforeNewPage := nil;

                rdprint1.TamanhoQteLinhas := QtdNfs;

                qtdimpr := 0; {Quantidade de Linhas de Itens Impressas}
                ;
                qtitens := 0; {Indicador se Esta Sendo Impressos Itens ou Nao}

                SeqPe2 := 0; {sequencial dos Itens a Serem Impressos}

                Lin := 0; {Linha que Esta Sendo Impressas} {Incrementos de Linhas}
                Inc := 0; {Incrementos de Linhas}
                Col := 0; {Posi��o da Coluna a ser Impressa}
                Reg := 0; {Numero do Vetor a Ser Impresso}
                Tam := 0; {Tamanho da String a Ser Impressa}

                qtdnot := 1; {Quantidade de Notas Impressas}

                rdprint1.abrir;

                //                     qtdnfis := (fmManNot_NFE.FatPedNroNfs.Value - fmManNot_NFE.FatPedQtdNfs.Value)+ 1;  {Quantidade de Notas Fiscais Impressas}

                qtdnfis := 1; {Quantidade de Notas Fiscais Impressas}

                while qtdnfis <= fmManNot_NFE.FatPedQtdNfs.Value do
                begin

                  with quSQL, SQL do
                  begin

                    Close;
                    Text := ' Select Count(*) as QtdReg From FatPe2' +
                      ' Where FatPe2.CodEmp = :CodEmp' +
                      '   and FatPe2.DteRes = :DteRes' +
                      '   and FatPe2.NumRes = :NumRes' +
                      '   and FatPe2.SeqLib = :SeqLib' +
                      '   and FatPe2.SeqFat = :SeqFat' +
                      '   and FatPe2.SeqNfs = :SeqNfs';

                    with Params do
                    begin

                      Params[0].AsInteger := fmManNot_NFE.FatPedCodEmp.Value;
                      Params[1].AsDateTime := fmManNot_NFE.FatPedDteRes.Value;
                      Params[2].AsInteger := fmManNot_NFE.FatPedNumRes.Value;
                      Params[3].AsInteger := fmManNot_NFE.FatPedSeqLib.Value;
                      Params[4].AsInteger := fmManNot_NFE.FatPedSeqFat.Value;
                      Params[5].AsInteger := qtdnfis;

                    end;

                    Open;

                    QtiNfs := FieldbyName('QtdReg').AsInteger;

                  end;

                  SeqNfs := 0;

                  if qtdnfis = fmManNot_NFE.FatPedQtdNfs.Value then
                  begin

                    with quSQL, SQL do
                    begin

                      Close;
                      Text := ' Select Count(Distinct(FatIcm.PerIcm)) as QtdReg' +
                        ' From FatIcm' +
                        ' Where FatIcm.CodEmp = :CodEmp' +
                        '   and FatIcm.DteRes = :DteRes' +
                        '   and FatIcm.NumRes = :NumRes' +
                        '   and FatIcm.SeqLib = :SeqLib' +
                        '   and FatIcm.SeqFat = :SeqFat';

                      with Params do
                      begin

                        Params[0].AsInteger := fmManNot_NFE.FatPedCodEmp.Value;
                        Params[1].AsDateTime := fmManNot_NFE.FatPedDteRes.Value;
                        Params[2].AsInteger := fmManNot_NFE.FatPedNumRes.Value;
                        Params[3].AsInteger := fmManNot_NFE.FatPedSeqLib.Value;
                        Params[4].AsInteger := fmManNot_NFE.FatPedSeqFat.Value;

                      end;

                      Open;

                    end;

                    if quSQL.FieldbyName('QtdReg').AsInteger > 1 then
                    begin

                      with quSQL, SQL do
                      begin

                        Close;
                        Text := ' Select FatIcm.PerIcm,' +
                          '        Sum(FatIcm.BasIcm) as BasIcm,' +
                          '        Sum(FatIcm.TotIcm) as TotIcm ' +
                          ' From FatIcm' +
                          ' Where FatIcm.CodEmp = :CodEmp' +
                          '   and FatIcm.DteRes = :DteRes' +
                          '   and FatIcm.NumRes = :NumRes' +
                          '   and FatIcm.SeqLib = :SeqLib' +
                          '   and FatIcm.SeqFat = :SeqFat' +
                          ' Group by FatIcm.PerIcm' +
                          ' Order by FatIcm.PerIcm';

                        with Params do
                        begin

                          Params[0].AsInteger := fmManNot_NFE.FatPedCodEmp.Value;
                          Params[1].AsDateTime := fmManNot_NFE.FatPedDteRes.Value;
                          Params[2].AsInteger := fmManNot_NFE.FatPedNumRes.Value;
                          Params[3].AsInteger := fmManNot_NFE.FatPedSeqLib.Value;
                          Params[4].AsInteger := fmManNot_NFE.FatPedSeqFat.Value;

                        end;

                        Open;
                        First;

                      end;

                      while not quSQL.EOF do
                      begin

                        if Trim(Nota01[208]) <> '' then
                          Nota01[208] := Trim(Nota01[208]) + ' Base ' + FormatFloat('###', quSQL.FieldbyName('PerIcm').AsFloat) + '% R$ ' +
                            preString(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIcm').AsFloat), 15) + ' Imp. R$ ' +
                            preString(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIcm').AsFloat), 15)
                        else
                          Nota01[208] := 'Base ' + FormatFloat('###', quSQL.FieldbyName('PerIcm').AsFloat) + '% R$ ' +
                            preString(FormatFloat('###,###,##0.00',
                            quSQL.FieldbyName('BasIcm').AsFloat), 15) + ' Imp. R$ ' + preString(FormatFloat('###,###,##0.00',
                            quSQL.FieldbyName('TotIcm').AsFloat), 15);

                        quSQL.Next;

                      end;
                    end;

                    {BaseIcms}
                    if fmManNot_NFE.FatPedBasIcm.Value > 0 then
                      Nota01[057] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedBasIcm.Value), 14)
                    else
                      Nota01[057] := ' ';

                    Nota02[057] := 'Comp12';

                    {ValIcms}
                    if fmManNot_NFE.FatPedTotIcm.Value > 0 then
                      Nota01[058] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotIcm.Value), 14)
                    else
                      Nota01[058] := ' ';

                    Nota02[058] := 'Comp12';

                    {BaseIcmsSub}
                    if fmManNot_NFE.FatPedBasSub.Value > 0 then
                      Nota01[059] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedBasSub.Value), 14)
                    else
                      Nota01[059] := ' ';

                    Nota02[059] := 'Comp12';

                    {ValIcmsSub}
                    if fmManNot_NFE.FatPedTotSub.Value > 0 then
                      Nota01[060] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotSub.Value), 14)
                    else
                      Nota01[060] := ' ';

                    Nota02[060] := 'Comp12';

                    Nota01[061] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotFat.Value), 14); {TotalProds}
                    Nota02[061] := 'Comp12';

                    if fmManNot_NFE.FatPedTotFrt.Value > 0 then
                      Nota01[062] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotFrt.Value), 14) {Frete}
                    else
                      Nota01[062] := ' ';

                    Nota02[062] := 'Comp12';

                    if fmManNot_NFE.FatPedTotSeg.Value > 0 then
                      Nota01[063] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotSeg.Value), 14) {Seguro}
                    else
                      Nota01[063] := ' ';

                    Nota02[063] := 'Comp12';

                    if fmManNot_NFE.FatPedTotDes.Value > 0 then
                      Nota01[064] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotDes.Value), 14) {Outras}
                    else
                      Nota01[064] := ' ';

                    Nota02[064] := 'Comp12';

                    if fmManNot_NFE.FatPedTotIpi.Value > 0 then
                      Nota01[065] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotIpi.Value), 14) {TotalIPI}
                    else
                      Nota01[065] := ' ';

                    Nota02[065] := 'Comp12';

                    Nota01[066] := Prestring(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotGer.Value), 14); {TotalNota}
                    Nota02[066] := 'Comp12';

                    Nota01[126] := fmManNot_NFE.FatPedDesReg.Value; {Descontos Gerais na Nota}
                    Nota02[126] := 'Comp20';

                    if fmManNot_NFE.FatPedTotDsr.Value > 0 then
                      Nota01[127] := PreString('-' + Trim(FormatFloat('###,##0.00', fmManNot_NFE.FatPedTotDsr.Value)), 12) {Descontos Gerais na Nota}
                    else
                      Nota01[127] := ' ';

                    Nota02[127] := 'Comp20';

                  end
                  else
                  begin

                    {BaseIcms}
                    Nota01[057] := '***,***,***.**';
                    Nota02[057] := 'Comp12';

                    {ValIcms}
                    Nota01[058] := '***,***,***.**';
                    Nota02[058] := 'Comp12';

                    {BaseIcmsSub}
                    Nota01[059] := '***,***,***.**';
                    Nota02[059] := 'Comp12';

                    {ValIcmsSub}
                    Nota01[060] := '***,***,***.**';
                    Nota02[060] := 'Comp12';

                    Nota01[061] := '***,***,***.**';
                    Nota02[061] := 'Comp12';

                    Nota01[062] := '***,***,***.**';
                    Nota02[062] := 'Comp12';

                    Nota01[063] := '***,***,***.**';
                    Nota02[063] := 'Comp12';

                    Nota01[064] := '***,***,***.**';
                    Nota02[064] := 'Comp12';

                    Nota01[065] := '***,***,***.**';
                    Nota02[065] := 'Comp12';

                    {TotalNota}
                    Nota01[066] := '***,***,***.**';
                    Nota02[066] := 'Comp12';

                    {Descontos Gerais na Nota}
                    Nota01[126] := ' ';
                    Nota02[126] := 'Comp20';

                    Nota01[127] := ' ';
                    Nota02[127] := 'Comp20';

                  end;

                  {Carregando Itens na Matriz NotaImpr}

                  ValorExt := fExtenso(fmManNot_NFE.FatPedTotGer.Value);

                  if Length(Trim(ValorExt)) < 150 then
                    ValorExt := Trim(ValorExt) + fReplicate('*', 150 - Length(Trim(ValorExt)));

                  Nota01[123] := copy(ValorExt, 001, 50); {Valor por Extenso 1}
                  Nota02[123] := 'Comp12';

                  Nota01[124] := copy(ValorExt, 051, 50); {Valor por Extenso 2}
                  Nota02[124] := 'Comp12';

                  Nota01[125] := copy(ValorExt, 101, 50); {Valor por Extenso 3}
                  Nota02[125] := 'Comp12';

                  with quSQL, SQL do
                  begin

                    Close;
                    Text := ' Select FatClf.SeqClf,' +
                      '        FatClf.ClsIpi From FatClf' +
                      ' Where FatClf.CodEmp = :CodEmp' +
                      '   and FatClf.DteRes = :DteRes' +
                      '   and FatClf.NumRes = :NumRes' +
                      '   and FatClf.SeqLib = :SeqLib' +
                      '   and FatClf.SeqFat = :SeqFat' +
                      '   and FatClf.SeqNfs = :SeqNfs' +
                      ' Order by FatClf.SeqClf';

                    with Params do
                    begin

                      Params[0].AsInteger := fmManNot_NFE.FatPedCodEmp.Value;
                      Params[1].AsDateTime := fmManNot_NFE.FatPedDteRes.Value;
                      Params[2].AsInteger := fmManNot_NFE.FatPedNumRes.Value;
                      Params[3].AsInteger := fmManNot_NFE.FatPedSeqLib.Value;
                      Params[4].AsInteger := fmManNot_NFE.FatPedSeqFat.Value;
                      Params[5].AsInteger := qtdnfis;

                    end;

                    Open;

                  end;

                  quSQL.First;

                  {CodClassfisc}

                  i := 88;

                  for j := 1 to 28 do
                  begin

                    Nota01[i] := ' ';
                    Nota02[i] := 'Comp20';

                    i := i + 1;

                  end;

                  i := 88;

                  rec := 0;

                  while not quSQL.Eof do
                  begin

                    if Trim(quSQL.FieldbyName('ClsIpi').AsString) <> '' then
                      Nota01[i] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqClf').AsInteger), 3) + ' - ' + quSQL.FieldbyName('ClsIpi').AsString
                    else
                      Nota01[i] := ' ';

                    Nota02[i] := 'Comp20';

                    i := i + 1;

                    rec := rec + 1;

                    if rec > 28 then
                      quSQL.Last
                    else
                      quSQL.Next;

                  end;

                  r := 0;

                  while r <= qtdLin do
                  begin

                    Linha := ArqTexto[r];

                    if Trim(Linha) <> '' then
                    begin

                      if pos('Sim', Linha) > 0 then
                      begin

                        if pos('salto', Linha) > 0 then
                        begin

                          Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3)); {Linha encontrada e de Incremento de Saltos de Linhas}
                          Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));

                          if pos('Inicio', Linha) > 0 then
                          begin

                            if qtdnot > 1 then
                              Inc := Inc + 1;

                          end;

                          Lin := Lin + Inc;

                          rdprint1.imp(Lin, 001, '');

                        end
                        else
                        begin

                          if (pos('NotaCab', Linha) > 0) or (pos('NotaRod', Linha) > 0) then
                          begin

                            Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3)); {Linha encontrada e de Final de Nota Fiscal}
                            Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));

                            if (Col > 0) or (Inc > 0) then
                            begin

                              Lin := Lin + Inc;

                              rdprint1.impf(Lin, Col, fNumZeros(IntToStr(fmManNot_NFE.FatPedNroNfs.Value), 6), [EXPANDIDO, negrito]);

                            end;

                          end
                          else
                          begin

                            if (pos('#00040', Linha) = 0) and (qtitens = 0) then
                            begin {A Linha que Esta Sendo Impressa nao e a de Itens}

                              Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3)); {Linha encontrada e de Incremento de Saltos de Linhas}
                              Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));
                              reg := StrToInt(copy(Linha, pos('#', Linha) + 1, 5));

                              if (Col > 0) or (Inc > 0) then
                              begin

                                Lin := Lin + Inc;

                                if (reg >= 131) and (reg <= 160) then
                                begin

                                  if qtdnfis = fmManNot_NFE.FatPedQtdNfs.Value then
                                  begin

                                    if Nota02[Reg] = 'Comp12' then
                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                    if Nota02[Reg] = 'Comp20' then
                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                    if Nota02[Reg] = 'Comp17' then
                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                  end
                                  else
                                  begin

                                    if (reg = 151) then
                                    begin

                                      if Nota02[Reg] = 'Comp12' then
                                        rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp12]);
                                      if Nota02[Reg] = 'Comp20' then
                                        rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp20]);
                                      if Nota02[Reg] = 'Comp17' then
                                        rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp17]);

                                    end
                                    else
                                    begin

                                      if (reg >= 131) and (reg <= 140) then
                                      begin

                                        if Nota02[Reg] = 'Comp12' then
                                          rdprint1.impf(Lin, Col, ' ', [Comp12]);
                                        if Nota02[Reg] = 'Comp20' then
                                          rdprint1.impf(Lin, Col, ' ', [Comp20]);
                                        if Nota02[Reg] = 'Comp17' then
                                          rdprint1.impf(Lin, Col, ' ', [Comp17]);

                                      end
                                      else
                                      begin

                                        if (reg >= 141) and (reg <= 150) then
                                        begin

                                          if Nota02[Reg] = 'Comp12' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp12]);
                                          if Nota02[Reg] = 'Comp20' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp20]);
                                          if Nota02[Reg] = 'Comp17' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp17]);

                                        end
                                        else
                                        begin

                                          if (reg >= 151) and (reg <= 160) then
                                          begin

                                            if Nota02[Reg] = 'Comp12' then
                                              rdprint1.impf(Lin, Col, ' ', [Comp12]);
                                            if Nota02[Reg] = 'Comp20' then
                                              rdprint1.impf(Lin, Col, ' ', [Comp20]);
                                            if Nota02[Reg] = 'Comp17' then
                                              rdprint1.impf(Lin, Col, ' ', [Comp17]);

                                          end;
                                        end;
                                      end;
                                    end;
                                  end;

                                end
                                else
                                begin

                                  if Nota02[Reg] = 'Comp12' then
                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                  if Nota02[Reg] = 'Comp20' then
                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                  if Nota02[Reg] = 'Comp17' then
                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                end;
                              end;

                            end
                            else
                            begin

                              if qtitens < 2 then
                              begin

                                qtitens := 1;

                                SeqPe2 := SeqPe2 + 1;
                                SeqNfs := SeqNfs + 1;

                                if qtdimpr = 0 then
                                  qtdimpr := Lin;

                                with quSQL, SQL do
                                begin

                                  Close;
                                  Text := ' Select FatPe2.CodClp,' +
                                    '        FatPe2.CodGru,' +
                                    '        FatPe2.CodSub,' +
                                    '        FatPe2.CodPro,' +
                                    '        FatPe2.SeqNfs,' +
                                    '        FatPe2.DesPe2,' +
                                    '        FatPe2.ObsPe2,' +
                                    '        FatPe2.RefPe2,' +
                                    '        FatPe2.TipClf,' +
                                    '        FatPe2.SeqClf,' +
                                    '        FatPe2.ClsIpi,' +
                                    '        FatPe2.CodSt1,' +
                                    '        FatPe2.CodSt2,' +
                                    '        FatPe2.CodCfo,' +
                                    '        FatPe2.CodUnd,' +
                                    '        FatPe2.QtpPe2,' +
                                    '        FatPe2.CodUnd,' +
                                    '        FatPe2.VlqPe2,' +
                                    '        FatPe2.TotPe2,' +
                                    '        FatPe2.BasSub,' +
                                    '        FatPe2.TotSub,' + '        FatPe2.TrbIcm,' +
                                    '        FatPe2.IcmPe2,' +
                                    '        FatPe2.TrbIpi,' +
                                    '        FatPe2.IpiPe2,' +
                                    '        FatPe2.TotIpi ' +
                                    ' From FatPe2' +
                                    ' Where FatPe2.CodEmp = :CodEmp' +
                                    '   and FatPe2.DteRes = :DteRes' +
                                    '   and FatPe2.NumRes = :NumRes' +
                                    '   and FatPe2.SeqLib = :SeqLib' +
                                    '   and FatPe2.SeqFat = :SeqFat' +
                                    '   and FatPe2.NroPe2 = :NroPe2';

                                  with Params do
                                  begin

                                    Params[0].AsInteger := fmManNot_NFE.FatPedCodEmp.Value;
                                    Params[1].AsDateTime := fmManNot_NFE.FatPedDteRes.Value;
                                    Params[2].AsInteger := fmManNot_NFE.FatPedNumRes.Value;
                                    Params[3].AsInteger := fmManNot_NFE.FatPedSeqLib.Value;
                                    Params[4].AsInteger := fmManNot_NFE.FatPedSeqFat.Value;
                                    Params[5].AsInteger := SeqPe2;

                                  end;

                                  Open;

                                end;

                                if Trim(quSql.FieldbyName('CodGru').AsString) <> '' then
                                begin

                                  {Item a Ser Impresso Pertence a Nota Fiscal}
                                  if quSql.FieldbyName('SeqNfs').AsInteger = qtdnfis then
                                  begin

                                    {Produto}
                                    if Trim(quSql.FieldbyName('CodGru').AsString) <> '888' then
                                    begin

                                      if GImpRef = 'Nao' then
                                        Nota01[040] := quSql.FieldbyName('CodClp').AsString + '-' + quSql.FieldbyName('CodGru').AsString + '.' +
                                          quSql.FieldbyName('CodSub').AsString + '.' + quSql.FieldbyName('CodPro').AsString
                                      else
                                        Nota01[040] := Trim(quSql.FieldbyName('RefPe2').AsString);
                                    end
                                    else
                                      Nota01[040] := '';

                                    Nota02[040] := 'Comp20';

                                    {Descr}
                                    Nota01[041] := Trim(quSql.FieldbyName('DesPe2').AsString);
                                    Nota02[041] := 'Comp20';

                                    if Trim(quSQL.FieldbyName('CodCfo').AsString) <> '' then
                                      if (quSQL.FieldbyName('CodCfo').AsInteger = 5405) or (quSQL.FieldbyName('CodCfo').AsInteger = 6405) then
                                        Nota01[041] := Nota01[041] + #13#10
                                          + ' ValorBase: ' + FormatFloat('#,##0.00', quSQL.FieldbyName('BaseSub').AsFloat)
                                          + ' Valor St.: ' + FormatFloat('#,##0.00', quSQL.FieldbyName('TotSub').AsFloat);

                                    {Refer�ncia}

                                    if Trim(quSql.FieldbyName('RefPe2').AsString) <> '' then
                                      Nota01[052] := Trim(quSql.FieldbyName('RefPe2').AsString)
                                    else
                                      Nota01[052] := ' ';

                                    Nota02[052] := 'Comp20';

                                    {ClassFisc}
                                    if Trim(quSQL.FieldbyName('ClsIpi').AsString) <> '' then
                                      Nota01[042] := fLimpaStr(quSql.FieldbyName('ClsIpi').AsString)
                                    else
                                      Nota01[042] := ' ';

                                    Nota02[042] := 'Comp20';

                                    {CFOP}
                                    if Trim(quSQL.FieldbyName('CodCfo').AsString) <> '' then
                                      Nota01[209] := fLimpaStr(quSql.FieldbyName('CodCfo').AsString)
                                    else
                                      Nota01[209] := ' ';

                                    Nota02[209] := 'Comp20';

                                    if Trim(quSQL.FieldbyName('SeqClf').AsString) <> '' then
                                      Nota01[207] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqClf').AsInteger), 3)
                                    else
                                      Nota01[207] := ' ';

                                    Nota02[207] := 'Comp20';

                                    Nota01[210] := Trim(quSQL.FieldbyName('TipClf').AsString);
                                    Nota02[210] := 'Comp20';

                                    {St1}
                                    Nota01[043] := quSql.FieldbyName('CodSt1').AsString;
                                    Nota02[043] := 'Comp20';

                                    {St2}
                                    Nota01[044] := quSql.FieldbyName('CodSt2').AsString;
                                    Nota02[044] := 'Comp20';

                                    {Unidade}
                                    Nota01[045] := quSql.FieldbyName('CodUnd').AsString;
                                    Nota02[045] := 'Comp20';

                                    {Qtde}

                                    if Trim(quSql.FieldbyName('CodGru').AsString) <> '888' then
                                    begin

                                      if fEncDecimal(quSql.FieldbyName('QtpPe2').AsFloat) > 0 then
                                        Nota01[046] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('QtpPe2').AsFloat), 12)
                                      else
                                        Nota01[046] := Prestring(FormatFloat('####,###,##0', quSql.FieldbyName('QtpPe2').AsFloat), 12);

                                    end
                                    else
                                      Nota01[046] := '';

                                    Nota02[046] := 'Comp20';

                                    {Unit}
                                    if Trim(quSql.FieldbyName('CodGru').AsString) <> '888' then
                                      Nota01[047] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('VlqPe2').AsFloat), 12)
                                    else
                                      Nota01[047] := ' ';

                                    Nota02[047] := 'Comp20';

                                    {Total}
                                    if Trim(quSql.FieldbyName('CodGru').AsString) <> '888' then
                                      Nota01[048] := Prestring(FormatFloat('###,###,##0.00', quSql.FieldbyName('TotPe2').AsFloat), 12)
                                    else
                                      Nota01[048] := ' ';

                                    Nota02[048] := 'Comp20';

                                    {AlIcms}
                                    if Trim(quSql.FieldbyName('CodGru').AsString) <> '888' then
                                    begin

                                      if quSql.FieldbyName('TrbIcm').AsString = 'Sim' then
                                        Nota01[049] := Prestring(FormatFloat('##0', quSql.FieldbyName('IcmPe2').AsFloat), 3)
                                      else
                                        Nota01[049] := ' ';

                                    end
                                    else
                                      Nota01[049] := ' ';

                                    Nota02[049] := 'Comp20';

                                    {AlIpi}
                                    if Trim(quSql.FieldbyName('CodGru').AsString) <> '888' then
                                    begin

                                      if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                        Nota01[050] := Prestring(FormatFloat('##0', quSql.FieldbyName('IpiPe2').AsFloat), 3)
                                      else
                                        Nota01[050] := ' ';

                                    end
                                    else
                                      Nota01[050] := ' ';

                                    Nota02[050] := 'Comp20';

                                    {ValIpi}
                                    if Trim(quSql.FieldbyName('CodGru').AsString) <> '888' then
                                    begin

                                      if quSql.FieldbyName('TrbIcm').AsString = 'Sim' then
                                        Nota01[051] := Prestring(FormatFloat('###,##0.00', fRound(quSql.FieldbyName('TotIpi').AsFloat, 2)), 10)
                                      else
                                      begin

                                        if quSql.FieldbyName('TotIpi').AsFloat > 0 then
                                          Nota01[051] := Prestring(FormatFloat('###,##0.00', fRound(quSql.FieldbyName('TotIpi').AsFloat, 2)), 10)
                                        else
                                          Nota01[051] := ' ';

                                      end;

                                    end
                                    else
                                      Nota01[051] := ' ';

                                    Nota02[051] := 'Comp20';

                                    rec := r;

                                    i := rec + 18;

                                    Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3)); {Linha encontrada e de Incremento de Saltos de Linhas}

                                    Lin := Lin + 1;

                                    while r <= i do
                                    begin

                                      Linha := ArqTexto[r];

                                      if Trim(Linha) <> '' then
                                      begin

                                        Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3));
                                        Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));
                                        reg := StrToInt(copy(Linha, pos('#', Linha) + 1, 5));
                                        Tam := StrToInt(copy(Linha, pos('#', Linha) + 6, 3));

                                        if Tam > 0 then
                                        begin

                                          if (Col > 0) or (Inc > 0) then
                                          begin

                                            if pos('Sim', Linha) > 0 then
                                            begin

                                              {Verifica se a Linha que Esta Sendo Impressa nao e a de Segunda Descri��o ou de Titulos de Descontos}
                                              if (Reg <> 52) and (Reg <> 126) and (Reg <> 127) and (Reg <> 128) then
                                              begin

                                                if Nota02[Reg] = 'Comp12' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp12]);
                                                if Nota02[Reg] = 'Comp20' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp20]);
                                                if Nota02[Reg] = 'Comp17' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp17]);

                                              end
                                              else
                                              begin

                                                if (Reg = 52) and (Trim(quSql.FieldbyName('RefPe2').AsString) <> '') then
                                                begin

                                                  {Descr2}
                                                  Nota01[052] := Trim(quSql.FieldbyName('RefPe2').AsString);
                                                  Nota02[052] := 'Comp20';

                                                  Lin := Lin + Inc;

                                                  if Nota02[Reg] = 'Comp12' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                  if Nota02[Reg] = 'Comp20' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                  if Nota02[Reg] = 'Comp17' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                                end;

                                                if (Reg = 128) and (Trim(quSql.FieldbyName('ObsPe2').AsString) <> '') then
                                                begin

                                                  {Descr2}
                                                  Nota01[128] := Trim(copy(quSql.FieldbyName('ObsPe2').AsString, 1, Tam));
                                                  Nota02[128] := 'Comp20';

                                                  Lin := Lin + Inc;

                                                  if Nota02[Reg] = 'Comp12' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                  if Nota02[Reg] = 'Comp20' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                  if Nota02[Reg] = 'Comp17' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                                  if Trim(copy(quSql.FieldbyName('ObsPe2').AsString, Tam + 1, Tam)) <> '' then
                                                  begin

                                                    {Descr2}
                                                    Nota01[128] := Trim(copy(quSql.FieldbyName('ObsPe2').AsString, Tam + 1, Tam));
                                                    Nota02[128] := 'Comp20';

                                                    Lin := Lin + 1;

                                                    if Nota02[Reg] = 'Comp12' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                    if Nota02[Reg] = 'Comp20' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                    if Nota02[Reg] = 'Comp17' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                                  end;

                                                  if Trim(copy(quSql.FieldbyName('ObsPe2').AsString, (Tam + Tam + 1), Tam)) <> '' then
                                                  begin

                                                    {Descr2}
                                                    Nota01[128] := Trim(copy(quSql.FieldbyName('ObsPe2').AsString, (Tam + Tam + 1), Tam));
                                                    Nota02[128] := 'Comp20';

                                                    Lin := Lin + 1;

                                                    if Nota02[Reg] = 'Comp12' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                    if Nota02[Reg] = 'Comp20' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                    if Nota02[Reg] = 'Comp17' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                                  end;
                                                end;

                                                if ((Reg = 126) or (Reg = 127)) then
                                                begin

                                                  if (fmManNot_NFE.FatPedTotDsr.Value > 0) and (SeqNfs = QtiNfs) then
                                                  begin

                                                    { S� ira Imprimir o Campo de Descontos na Ultima Nota e se foi Efetuado Descontos na Nota }

                                                    Lin := Lin + Inc;

                                                    if Nota02[Reg] = 'Comp12' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                    if Nota02[Reg] = 'Comp20' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                    if Nota02[Reg] = 'Comp17' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                                  end;
                                                end;
                                              end;
                                            end;
                                          end;
                                        end;
                                      end;

                                      r := r + 1;

                                    end;

                                    r := rec;

                                  end
                                  else
                                  begin {Finalizar Nota para Impress�o da Proxima Nota}

                                    SeqPe2 := SeqPe2 - 1;

                                    r := r + 18;

                                    qtitens := 2;

                                  end;

                                end
                                else
                                begin {Nao Ha Mais Itens para Impress�o}

                                  SeqPe2 := SeqPe2 - 1;

                                  r := r + 18;

                                  qtitens := 0;

                                end;

                              end
                              else
                              begin

                                reg := StrToInt(copy(Linha, pos('#', Linha) + 1, 5));
                                Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3));
                                Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));

                                if (Col > 0) or (Inc > 0) then
                                begin

                                  if (reg >= 57) and (reg <= 66) then
                                  begin

                                    Lin := Lin + Inc;

                                    if Nota02[Reg] = 'Comp12' then
                                      rdprint1.impf(Lin, Col, Nota01[Reg], [Comp12]);
                                    if Nota02[Reg] = 'Comp20' then
                                      rdprint1.impf(Lin, Col, Nota01[Reg], [Comp20]);
                                    if Nota02[Reg] = 'Comp17' then
                                      rdprint1.impf(Lin, Col, Nota01[Reg], [Comp17]);

                                  end
                                  else
                                  begin

                                    if (Reg = 67) and (qtdnfis < fmManNot_NFE.FatPedQtdNfs.Value) then
                                    begin

                                      Lin := Lin + Inc;

                                      if Nota02[Reg] = 'Comp12' then
                                        rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp12]);
                                      if Nota02[Reg] = 'Comp20' then
                                        rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp20]);
                                      if Nota02[Reg] = 'Comp17' then
                                        rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp17]);

                                    end
                                    else
                                    begin

                                      if (Reg >= 68) and (Reg <= 81) and (qtdnfis < fmManNot_NFE.FatPedQtdNfs.Value) then
                                      begin

                                        Lin := Lin + Inc;

                                        if Nota02[Reg] = 'Comp12' then
                                          rdprint1.impf(Lin, Col, ' ', [Comp12]);
                                        if Nota02[Reg] = 'Comp20' then
                                          rdprint1.impf(Lin, Col, ' ', [Comp20]);
                                        if Nota02[Reg] = 'Comp17' then
                                          rdprint1.impf(Lin, Col, ' ', [Comp17]);

                                      end
                                      else
                                      begin

                                        if (reg >= 187) and (reg <= 194) and (qtdnfis < fmManNot_NFE.FatPedQtdNfs.Value) then
                                        begin

                                          if reg = 187 then
                                            Linha := 'Continua ' + Trim(IntToStr(qtdnot)) + '/' + Trim(IntToStr(fmManNot_NFE.FatPedQtdNfs.Value))
                                          else
                                            Linha := ' ';

                                          Lin := Lin + Inc;

                                          if Nota02[Reg] = 'Comp12' then
                                            rdprint1.impf(Lin, Col, Linha, [Comp12]);
                                          if Nota02[Reg] = 'Comp20' then
                                            rdprint1.impf(Lin, Col, Linha, [Comp20]);
                                          if Nota02[Reg] = 'Comp17' then
                                            rdprint1.impf(Lin, Col, Linha, [Comp17]);

                                        end
                                        else
                                        begin

                                          if (reg >= 82) or (reg <= 128) or (reg >= 187) then
                                          begin

                                            Lin := Lin + Inc;

                                            if Nota02[Reg] = 'Comp12' then
                                              rdprint1.impf(Lin, Col, Nota01[Reg], [Comp12]);
                                            if Nota02[Reg] = 'Comp20' then
                                              rdprint1.impf(Lin, Col, Nota01[Reg], [Comp20]);
                                            if Nota02[Reg] = 'Comp17' then
                                              rdprint1.impf(Lin, Col, Nota01[Reg], [Comp17]);

                                          end
                                          else
                                            Lin := Lin + Inc;
                                        end;
                                      end;
                                    end;
                                  end;
                                end;
                              end;
                            end;
                          end;
                        end;

                        if (qtitens = 0) or (qtitens = 2) then
                        begin

                          if qtdimpr > 0 then
                          begin

                            Lin := Lin + (QtdIte - (Lin - qtdimpr));

                            qtdimpr := 0;

                          end;

                          r := r + 1;

                        end;

                      end
                      else
                        r := r + 1;

                    end
                    else
                      r := r + 1;
                  end;

                  qtitens := 0;

                  qtdnot := qtdnot + 1;

                  qtdnfis := qtdnfis + 1;

                end;

                rdprint1.fechar; {Finaliza e inicia impress�o ou preview}

                rdprint1.TamanhoQteLinhas := 66; {Voltar o valor original...}

                SeqError := 0;

                if fMsg('Nota fiscal impressa corretamente', 'O') then
                begin

                  fmManNot_NFE.FatPed.Edit;

                  fmManNot_NFE.FatPedFlgAtu.Value := 'F';

                  fmManNot_NFE.FatPedFlgImp.Value := 'Sim';

                  with fmManNot_NFE.FatPed do
                  begin

                    fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
                    ;

                    try

                      ApplyUpdates; {Tenta aplicar as alteracoes}
                      ;

                      fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
                      ;

                    except

                      fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
                      ;

                      fmManNot_NFE.Finalizar := 'N';

                      if fmManNot_NFE.FatPed.State <> dsBrowse then
                        fmManNot_NFE.FatPed.CancelUpdates;

                      fmManNot_NFE.FatPed.Close;
                      fmManNot_NFE.FatPed.Open;

                      fmManNot_NFE.FatPed.Edit;

                      if EdNroNfs.Enabled then
                        EdNroNfs.SetFocus;

                      raise;

                    end;

                    CommitUpdates; {sucesso!, limpa o cache...}

                  end;

                  fmManNot_NFE.FatPed.Close;
                  fmManNot_NFE.FatPed.Open;

                  fmManNot_NFE.Finalizar := 'S';

                  close;

                end
                else
                begin

                  if EdNroNfs.Enabled then
                    EdNroNfs.SetFocus;

                  exit;

                end;

              finally

                fmManNot_NFE.FatPed.Edit;

                if SeqError = 1 then
                begin

                  rdprint1.Abortar;

                  rdprint1.TamanhoQteLinhas := 66;

                end;

                if EdNroNfs.Enabled then
                  EdNroNfs.SetFocus;

              end;

              close;

            end
            else
            begin

              if EdNroNfs.Enabled then
                EdNroNfs.SetFocus;

            end;

          end
          else
          begin

            fmManNot_NFE.Finalizar := 'S';

            close;

          end;

        end
        else
        begin

          if EdNroNfs.Enabled then
            EdNroNfs.SetFocus;

        end;

      end
      else
      begin

        if EdNroNfs.Enabled then
          fmsgErro('Arquivo de configura��o da nota Fiscal nao localizado. Consulte o administrador do sistema para maiores informacoes.', EdNroNfs)
        else
          fmsgErro('Arquivo de configura��o da nota Fiscal nao localizado. Consulte o administrador do sistema para maiores informacoes.', nil);

      end;

    end
    else
    begin

      if EdNroNfs.Enabled then
        EdNroNfs.SetFocus;

    end;

  end
  else
  begin

    if EdNroNfs.Enabled then
    begin

      if fmManNot_NFE.FatPedNroNfs.Value = 0 then
      begin

        GerEmp.Close;
        GerEmp.Open;

        fmManNot_NFE.FatPed.Edit;

        EdNroNfs.Value := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

        fmsgErro('Numero da Nota Fiscal nao Informado. Pr�ximo No. ' + Trim(FloatToStr(EdNroNfs.Value)), EdNroNfs);

      end;
    end;
  end;
end;

procedure TfmManImp_NFE.FormShow(Sender: TObject);
begin
  inherited;

  EdNroNfs.Enabled := False;

  if fmManNot_NFE.FatPedSitFat.Value = 'Nao Concluido' then
  begin

    if fmManNot_NFE.FatPedNroNfs.Value = 0 then
    begin

      EdNroNfs.Enabled := True;

      GerEmp.Close;
      GerEmp.Params[0].AsInteger := fmManNot_NFE.FatPedCodEmp.Value;
      GerEmp.Open;

      fmManNot_NFE.FatPed.Edit;

      if fmManNot_NFE.FatPedNroNfs.Value = 0 then
        fmManNot_NFE.FatPedNroNfs.Value := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

      if fmManNot_NFE.FatPedNroNfs.Value > 0 then
        EdNroNfs.Text := IntToStr(fmManNot_NFE.FatPedNroNfs.Value)
      else
        EdNroNfs.Text := '0';

    end;
  end;

  if EdNroNfs.Enabled then
    EdNroNfs.SetFocus
  else
    bContinuar.SetFocus;

end;

procedure TfmManImp_NFE.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.

