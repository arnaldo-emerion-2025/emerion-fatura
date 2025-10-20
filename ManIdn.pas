unit ManIdn;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Db,
  DBTables, Wwquery, RDprint, dxExEdtr, FShowPadrao, dxDBColorCurrencyEdit;

type
  TfmManIdn = class(TfmShowPadrao)
    GerEmp: TwwQuery;
    GerEmpCODEMP: TIntegerField;
    GerEmpNOMEMP: TStringField;
    GerEmpAPEEMP: TStringField;
    GerEmpCEPEMP: TStringField;
    GerEmpENDEMP: TStringField;
    GerEmpREFEMP: TStringField;
    GerEmpTENEMP: TStringField;
    GerEmpNUMEMP: TStringField;
    GerEmpBAIEMP: TStringField;
    GerEmpCIDEMP: TStringField;
    GerEmpSIGUFE: TStringField;
    GerEmpCGCEMP: TStringField;
    GerEmpINSEMP: TStringField;
    GerEmpPRTEMP: TStringField;
    GerEmpFONEMP: TStringField;
    GerEmpPRFEMP: TStringField;
    GerEmpFAXEMP: TStringField;
    GerEmpEMAEMP: TStringField;
    GerEmpWEBEMP: TStringField;
    GerEmpQTDNFS: TIntegerField;
    GerEmpNUMRES: TIntegerField;
    GerEmpNUMPED: TIntegerField;
    PaintBox: TPaintBox;
    Label10: TLabel;
    Bevel1: TBevel;
    Label57: TLabel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    RDprint1: TRDprint;
    quSQL: TwwQuery;
    EdNroNfs: TdxDBColorCurrencyEdit;
    procedure bretornarClick(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManIdn: TfmManIdn;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB, ManDn1;

{$R *.DFM}

procedure TfmManIdn.bretornarClick(Sender: TObject);
begin

  if fmManDn1.FatDevSitDev.Value = 'Devolvido' then
    fmManDn1.Finalizar := 'S';

  close;

end;

procedure TfmManIdn.bcontinuarClick(Sender: TObject);
var
  ArqTexto: TStringList;
  Nota01: array[1..208] of string;
  Nota02: array[1..208] of string;
  NomCli, CgcCli, InsCli, TefCli, CefCli, EnfCli, NrfCli, BafCli, CifCli, UffCli, GImpRef: string;
  EndEnt1, EndEnt2, EndCob1, EndCob2, Linha, FonCli, Pt1Cli, Fo1Cli, sCanc, sText, ImpClf: string;
  TecCli, EncCli, NrcCli, BacCli, CicCli, UfcCli, CecCli, ValorExt, ValorEx1, ValorEx2, ValorEx3, sContinuar: string;
  Tam, Reg, Inc, Col, Lin, r, i, j, rec, qtdIte, qtdNfs, qtdLin, qtdnfis, qtdimpr, qtitens, SeqDv2, SeqNfd, QtiNfd, qtdnot, SeqError: integer;
begin
  if fmManDn1.FatDevNroNfs.Value > 0 then
  begin

    sContinuar := 'N';

    qtdnfs := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

    if EdNroNfs.Value > qtdnfs then
    begin

      if fMsgConf('Nota Fiscal Informada Fora de Sequencia. Proxima ' + Trim(IntToStr(QtdNfs)) + '. Confirma ?', 'E') = 'SIM' then
        sContinuar := 'S'
      else
      begin

        if fmManDn1.FatDev.State = dsBrowse then
          fmManDn1.FatDev.Edit;

        fmManDn1.FatDevNroNfs.Value := QtdNfs;

        if EdNroNfs.Enabled then
          EdNroNfs.SetFocus;

      end;

    end
    else
    begin

      if EdNroNfs.Value < qtdnfs then
      begin

        if fMsgConf('Nota Fiscal Informada Fora de Sequencia. Proxima ' + Trim(IntToStr(QtdNfs)) + '. Confirma ?', 'E') = 'SIM' then
          sContinuar := 'S'
        else
          sContinuar := 'N';

      end
      else
        sContinuar := 'S';

    end;

    if sContinuar = 'S' then
    begin

      if FileExists('C:\Emerion\LINCOL.TXT') then
      begin

        if fmManDn1.FatDevSitDev.Value = 'Faturando' then
        begin

          if fmManDn1.FatDev.State = dsBrowse then
            fmManDn1.FatDev.Edit;

          fmManDn1.FatDevFlgNfs.Value := '*';

          with fmManDn1.FatDev do
          begin

            fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
            ;

            try

              ApplyUpdates; {Tenta aplicar as alterações}
              ;

              fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
              ;

            except

              fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
              ;

              sContinuar := 'N';

              if fmManDn1.FatDev.State = dsBrowse then
                fmManDn1.FatDev.Edit;

              if EdNroNfs.Enabled then
                EdNroNfs.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;

          fmManDn1.FatDev.Close;
          fmManDn1.FatDev.Open;

          fmManDn1.FatDv2.Close;
          fmManDn1.FatDv2.Open;

          fmManDn1.FatDev.Edit;

          sContinuar := 'S';

        end
        else
          sContinuar := 'S';

        if sContinuar = 'S' then
        begin

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
              '        FinCli.CgcCli,' +
              '        FinCli.InsCli,' +
              '        FinCli.TefCli,' +
              '        FinCli.TecCli,' +
              '        FinCli.EnfCli,' +
              '        FinCli.EncCli,' +
              '        FinCli.NrfCli,' +
              '        FinCli.NrcCli,' +
              '        FinCli.BafCli,' +
              '        FinCli.BacCli,' +
              '        FinCli.CifCli,' +
              '        FinCli.CicCli,' +
              '        FinCli.UffCli,' +
              '        FinCli.UfcCli,' +
              '        FinCli.CefCli,' +
              '        FinCli.CecCli,' +
              '        FinCli.Pt1Cli,' +
              '        FinCli.Fo1Cli From FinCli Where FinCli.CodCli = ''' + IntToStr(fmManDn1.FatDevCodCli.Value) + '''';
            Open;

            NomCli := FieldbyName('NomCli').AsString;
            CgcCli := FieldbyName('CgcCli').AsString;
            InsCli := FieldbyName('InsCli').AsString;
            TefCli := FieldbyName('TefCli').AsString;
            TecCli := FieldbyName('TecCli').AsString;
            EnfCli := FieldbyName('EnfCli').AsString;
            EncCli := FieldbyName('EncCli').AsString;
            NrfCli := FieldbyName('NrfCli').AsString;
            NrcCli := FieldbyName('NrcCli').AsString;
            BafCli := FieldbyName('BafCli').AsString;
            BacCli := FieldbyName('BacCli').AsString;
            CifCli := FieldbyName('CifCli').AsString;
            CicCli := FieldbyName('CicCli').AsString;
            UffCli := FieldbyName('UffCli').AsString;
            UfcCli := FieldbyName('UfcCli').AsString;
            CefCli := FieldbyName('CefCli').AsString;
            CecCli := FieldbyName('CecCli').AsString;

            Pt1Cli := FieldbyName('Pt1Cli').AsString;
            Fo1Cli := FieldbyName('Fo1Cli').AsString;

          end;

          if Trim(NomCli) <> '' then
          begin

            if fmManDn1.FatDevSitDev.Value = 'Faturando' then
            begin

              sText := '              Confirma Nota Fiscal?               ' + #10 +
                '                                                  ' + #10 +
                ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :' + #10 +
                '                                                  ';

              if fmManDn1.FatDevAtuEst.Value = 'Sim' then
                sText := sText + #10 + ' . Baixas nos Estoques dos Itens Faturados;       ';

              if fmManDn1.FatDevIntFin.Value = 'Sim' then
                sText := sText + #10 + ' . Lançamentos dos Titulos no Contas a Receber.   ';

              sText := sText + #10 + '                                                  ';

              if fMsg(sText, 'O') then
              begin

                fmManDn1.FatDev.Edit;

                fmManDn1.FatDevSitDev.Value := 'Devolvido';

                with fmManDn1.FatDev do
                begin

                  fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
                  ;

                  try

                    ApplyUpdates; {Tenta aplicar as alterações}
                    ;

                    fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
                    ;

                  except

                    fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
                    ;

                    if fmManDn1.FatDev.State <> dsBrowse then
                      fmManDn1.FatDev.CancelUpdates;

                    fmManDn1.FatDev.Close;
                    fmManDn1.FatDev.Open;

                    fmManDn1.FatDev.Edit;

                    sContinuar := 'N';

                    if EdNroNfs.Enabled then
                      EdNroNfs.SetFocus;

                    raise;

                  end;

                  CommitUpdates; {sucesso!, limpa o cache...}

                end;

                fmManDn1.FatDev.Close;
                fmManDn1.FatDev.Open;

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
                ArqTexto.LoadFromFile('C:\Emerion\LINCOL.TXT');

                qtdLin := ArqTexto.Count - 1; {Quantidade de Linhas no Arquivo LINCOL.TXT}

                EndCob2 := '';
                EndEnt2 := '';

                if Trim(TecCli) <> '' then
                  EndCob1 := Trim(TecCli);

                EndCob1 := EndCob1 + ' ' + Trim(EncCli) + ' No. ' + Trim(NrcCli) + ' ' +
                  Trim(BacCli) + ' - ' + Trim(CicCli) + ' ' +
                  Trim(UfcCli) + ' Cep ' + Trim(CecCli);

                if Trim(fmManDn1.FatDevNomEnt.Value) <> '' then
                begin

                  EndEnt1 := Trim(fmManDn1.FatDevNomEnt.Value);

                  EndEnt1 := EndEnt1 + ' C.N.P.J :' + copy(fmManDn1.FatDevCgeCli.Value, 01, 2) + '.' + copy(fmManDn1.FatDevCgeCli.Value, 3, 3) + '.' +
                    copy(fmManDn1.FatDevCgeCli.Value, 06, 3) + '/' + copy(fmManDn1.FatDevCgeCli.Value, 9, 4) + '-' +
                    copy(fmManDn1.FatDevCgeCli.Value, 13, 2);

                  if Trim(fmManDn1.FatDevTenCli.Value) <> '' then
                    EndEnt2 := Trim(fmManDn1.FatDevTenCli.Value) + ' ';

                  if Trim(fmManDn1.FatDevNumCli.Value) <> '' then
                    EndEnt2 := EndEnt2 + Trim(fmManDn1.FatDevEndCli.Value) + ', ' + Trim(fmManDn1.FatDevNumCli.Value) + ' '
                  else
                    EndEnt2 := EndEnt2 + Trim(fmManDn1.FatDevEndCli.Value) + ' ';

                  EndEnt2 := EndEnt2 + Trim(fmManDn1.FatDevBaiCli.Value) + ' - ' + Trim(fmManDn1.FatDevCidCli.Value) + ' ' + Trim(fmManDn1.FatDevUfeCli.Value) +
                    ' Cep ' + Trim(fmManDn1.FatDevCepCli.Value);

                end
                else
                begin

                  if Trim(fmManDn1.FatDevTenCli.Value) <> '' then
                    EndEnt1 := Trim(fmManDn1.FatDevTenCli.Value) + ' ';

                  if Trim(fmManDn1.FatDevNumCli.Value) <> '' then
                    EndEnt1 := EndEnt1 + Trim(fmManDn1.FatDevEndCli.Value) + ', ' + Trim(fmManDn1.FatDevNumCli.Value) + ' '
                  else
                    EndEnt1 := EndEnt1 + Trim(fmManDn1.FatDevEndCli.Value) + ' ';

                  EndEnt1 := EndEnt1 + Trim(fmManDn1.FatDevBaiCli.Value) + ' - ' + Trim(fmManDn1.FatDevCidCli.Value) + ' ' + Trim(fmManDn1.FatDevUfeCli.Value) +
                    ' Cep ' + Trim(fmManDn1.FatDevCepCli.Value);

                  EndEnt2 := 'C.N.P.J.:' + copy(fmManDn1.FatDevCgeCli.Value, 01, 2) + '.' + copy(fmManDn1.FatDevCgeCli.Value, 3, 3) + '.' +
                    copy(fmManDn1.FatDevCgeCli.Value, 06, 3) + '/' + copy(fmManDn1.FatDevCgeCli.Value, 9, 4) + '-' +
                    copy(fmManDn1.FatDevCgeCli.Value, 13, 2);

                end;

                if Trim(Pt1Cli) <> '' then
                  FonCli := '(' + Trim(Pt1Cli) + ')' + Trim(Fo1Cli)
                else
                  FonCli := Trim(Fo1Cli);

                Nota01[001] := 'NumNot';
                Nota02[001] := 'Comp12';

                Nota01[002] := fmManDn1.FatDevFlgSai.Value; {Saida}
                Nota02[002] := 'Comp12';

                Nota01[003] := fmManDn1.FatDevFlgEnt.Value; {Entrada}
                Nota02[003] := 'Comp12';

                Nota01[004] := Trim(fmManDn1.FatDevDesNat.Value); {NatOper}
                Nota02[004] := 'Comp12';

                if Trim(fmManDn1.FatDevCodCf2.Value) <> '' then {Cfop}
                  Nota01[005] := Trim(fmManDn1.FatDevCodCf1.Value) + '/' + Trim(fmManDn1.FatDevCodCf2.Value)
                else
                  Nota01[005] := Trim(fmManDn1.FatDevCodCf1.Value);

                Nota02[005] := 'Comp12';

                Nota01[006] := '';
                Nota02[006] := 'Comp12';

                Nota01[007] := fmManDn1.FatDevInsSub.Value; {InscEstSubTrib}
                Nota02[007] := 'Comp12';

                Nota01[008] := NomCli; {Nome do Cliente}
                Nota02[008] := 'Comp12';

                CgcCli := fLimpaStr(CgcCli);

                if Trim(fmManDn1.FatDevUfeDev.Value) <> 'EX' then
                begin

                  if Length(Trim(CgcCli)) <= 11 then
                    Nota01[009] := copy(CgcCli, 1, 3) + '.' + copy(CgcCli, 4, 3) + '.' +
                      copy(CgcCli, 7, 3) + '-' + copy(CgcCli, 10, 2)
                  else
                    Nota01[009] := copy(CgcCli, 01, 2) + '.' + copy(CgcCli, 3, 3) + '.' +
                      copy(CgcCli, 06, 3) + '/' + copy(CgcCli, 9, 4) + '-' +
                      copy(CgcCli, 13, 2);

                end
                else
                  Nota01[009] := ' ';

                Nota02[009] := 'Comp12';

                Nota01[010] := DateToStr(fmManDn1.FatDevDteDev.Value); {DataEmis}
                Nota02[010] := 'Comp12';

                Nota01[011] := Trim(TEfCli) + ' ' + Trim(EnfCli) + ', ' + Trim(NrfCli); {Endereco}
                Nota02[011] := 'Comp12';

                Nota01[012] := BafCli; {Bairro}
                Nota02[012] := 'Comp12';

                if Trim(CefCli) <> '' then {Cep}
                  Nota01[013] := copy(CefCli, 1, 5) + '-' + copy(CefCli, 6, 3)
                else
                  Nota01[013] := ' ';

                Nota02[013] := 'Comp12';

                Nota01[014] := ''; {DataSai}
                Nota02[014] := '';

                Nota01[015] := CifCli; {Cidade}
                Nota02[015] := 'Comp12';

                Nota01[016] := FonCli; {Fone}
                Nota02[016] := 'Comp12';

                {Uf}
                if Trim(fmManDn1.FatDevUfeDev.Value) <> 'EX' then
                  Nota01[017] := UffCli
                else
                  Nota01[017] := ' ';

                Nota02[017] := 'Comp12';

                {InscEst}
                if Trim(fmManDn1.FatDevUfeDev.Value) <> 'EX' then
                  Nota01[018] := InsCli
                else
                  Nota01[018] := ' ';

                Nota02[018] := 'Comp12';

                Nota01[019] := ''; {Hora da Saida}
                Nota02[019] := 'Comp12';

                Nota01[208] := ' '; {Detalhamento do ICMS}
                Nota02[208] := 'Comp20';

                i := 131;

                rec := 0;

                for j := 1 to 12 do
                begin

                  Nota01[i] := ' '; {Número}
                  Nota02[i] := 'Comp12';

                  i := i + 1;

                  rec := rec + 1;

                  if rec = 8 then
                    i := 195;

                end;

                i := 141;

                rec := 0;

                for j := 1 to 12 do
                begin

                  Nota01[i] := ' '; {Número}
                  Nota02[i] := 'Comp12';

                  i := i + 1;

                  rec := rec + 1;

                  if rec = 8 then
                    i := 199;

                end;

                i := 151;

                rec := 0;

                for j := 1 to 12 do
                begin

                  Nota01[i] := ' '; {Número}
                  Nota02[i] := 'Comp12';

                  i := i + 1;

                  rec := rec + 1;

                  if rec = 8 then
                    i := 203;

                end;

                i := 161;

                rec := 0;

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select * From FatDse' +
                    ' Where FatDse.CodEmp = :CodEmp' +
                    '   and FatDse.DteRes = :DteRes' +
                    '   and FatDse.NumRes = :NumRes' +
                    '   and FatDse.SeqLib = :SeqLib' +
                    '   and FatDse.SeqFat = :SeqFat' +
                    '   and FatDse.SeqDev = :SeqDev' +
                    '   and FatDse.UltQtd > :UltQtd';

                  with Params do
                  begin

                    Params[0].AsInteger := fmManDn1.FatDevCodEmp.Value;
                    Params[1].AsDateTime := fmManDn1.FatDevDteRes.Value;
                    Params[2].AsInteger := fmManDn1.FatDevNumRes.Value;
                    Params[3].AsInteger := fmManDn1.FatDevSeqLib.Value;
                    Params[4].AsInteger := fmManDn1.FatDevSeqFat.Value;
                    Params[5].AsInteger := fmManDn1.FatDevSeqDev.Value;
                    Params[6].AsFloat := 0;

                  end;

                  Open;
                  First;

                end;

                while not quSQL.Eof do
                begin

                  if (quSql.FieldbyName('CodGru').AsString <> '888') and (quSql.FieldbyName('CodGru').AsString <> '999') then
                    Nota01[i] := quSql.FieldbyName('CodGru').AsString + '.' + quSql.FieldbyName('CodSub').AsString + '.' + quSql.FieldbyName('CodPro').AsString
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

                  if Trim(quSql.FieldbyName('DesDse').AsString) <> '' then
                    Nota01[i] := copy(quSql.FieldbyName('DesDse').AsString, 1, 40)
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

                  if quSql.FieldbyName('UltQtd').AsFloat > 0 then
                  begin

                    if fEncDecimal(quSql.FieldbyName('UltQtd').AsFloat) > 0 then
                      Nota01[i] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('UltQtd').AsFloat), 12)
                    else
                      Nota01[i] := Prestring(FormatFloat('####,###,##0', quSql.FieldbyName('UltQtd').AsFloat), 12);

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

                  if quSql.FieldbyName('VluDse').AsFloat > 0 then
                    Nota01[i] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('VluDse').AsFloat), 12)
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

                  if quSql.FieldbyName('TotDse').AsFloat > 0 then
                    Nota01[i] := Prestring(FormatFloat('###,###,##0.00', quSql.FieldbyName('TotDse').AsFloat), 12)
                  else
                    Nota01[i] := ' ';

                  Nota02[i] := 'Comp20';

                  i := i + 1;

                  if rec > 4 then
                    quSQL.Last
                  else
                    quSQL.Next;

                end;

                if fmManDn1.FatDevTotIss.Value > 0 then
                  Nota01[185] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevTotIss.Value), 14)
                else
                  Nota01[185] := ' ';

                Nota02[185] := 'Comp12';

                if fmManDn1.FatDevTotDse.Value > 0 then
                  Nota01[186] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevTotDse.Value), 14)
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

                Nota01[053] := fmManDn1.FatDevTxfIpi.Value; {TextIpi}
                Nota02[053] := 'Comp20';

                Nota01[054] := fmManDn1.FatDevTxfIcm.Value; {TextIcm}
                Nota02[054] := 'Comp20';

                Nota01[055] := 'Entrega: ' + EndEnt1; {Entrega_1}
                Nota02[055] := 'Comp20';

                Nota01[056] := '         ' + EndEnt2; {Entrega_2}
                Nota02[056] := 'Comp20';

                Nota01[067] := fmManDn1.FatDevNomTra.Value; {NomeTransp}
                Nota02[067] := 'Comp12';

                Nota01[068] := fmManDn1.FatDevTipFrt.Value; {FretePc}
                Nota02[068] := 'Comp12';

                Nota01[069] := fmManDn1.FatDevPlcTra.Value; {Placa}
                Nota02[069] := 'Comp12';

                Nota01[070] := fmManDn1.FatDevUfePlc.Value; {UfPlaca}
                Nota02[070] := 'Comp12';

                if Trim(fmManDn1.FatDevCgcTra.Value) <> '' then

                  Nota01[071] := copy(fmManDn1.FatDevCgcTra.Value, 01, 2) + '.' + copy(fmManDn1.FatDevCgcTra.Value, 3, 3) + '.' +
                    copy(fmManDn1.FatDevCgcTra.Value, 06, 3) + '/' + copy(fmManDn1.FatDevCgcTra.Value, 9, 4) + '-' +
                    copy(fmManDn1.FatDevCgcTra.Value, 13, 2)

                else
                  Nota01[071] := ' ';

                Nota02[071] := 'Comp12';

                Nota01[072] := Trim(fmManDn1.FatDevTenTra.Value) + ' ' + Trim(fmManDn1.FatDevEndTra.Value) + ', ' + Trim(fmManDn1.FatDevNumTra.Value) + ' ' +
                  Trim(fmManDn1.FatDevBaiTra.Value);
                Nota02[072] := 'Comp12';

                Nota01[073] := fmManDn1.FatDevCidTra.Value; {CidTransp}
                Nota02[073] := 'Comp12';

                Nota01[074] := fmManDn1.FatDevUfeTra.Value; {UFTransp}
                Nota02[074] := 'Comp12';

                Nota01[075] := fmManDn1.FatDevInsTra.Value; {InscTransp}
                Nota02[075] := 'Comp12';

                // De Acordo com o Toninho Por Enquanto Deixar o Campo de Volumes Em branco Em  : 02/07/2003 //
                // So Exibir se a Valeria Alterar o seu Conteudo "Notas de Exportação //

                if fmManDn1.FatDevQtdVol.Value > 0 then
                  Nota01[076] := Prestring(IntToStr(fmManDn1.FatDevQtdVol.Value), 7) {QtdeVol}
                else
                  Nota01[076] := ' ';

                Nota02[076] := 'Comp12';

                Nota01[077] := fmManDn1.FatDevEspDev.Value; {Especie}
                Nota02[077] := 'Comp12';

                Nota01[078] := fmManDn1.FatDevMarDev.Value; {Marca}
                Nota02[078] := 'Comp12';

                Nota01[079] := fmManDn1.FatDevNroDev.Value; {Numero}
                Nota02[079] := 'Comp12';

                Nota01[080] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevInfBrt.Value), 14); {PesBruto}
                Nota02[080] := 'Comp12';

                Nota01[081] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevInfLiq.Value), 14); {PesLiq}
                Nota02[081] := 'Comp12';

                if (Trim(fmManDn1.FatDevOb1Dev.Value) = '') and
                  (Trim(fmManDn1.FatDevOb2Dev.Value) = '') and
                  (Trim(fmManDn1.FatDevOb3Dev.Value) = '') and
                  (Trim(fmManDn1.FatDevOb4Dev.Value) = '') and
                  (Trim(fmManDn1.FatDevOb5Dev.Value) = '') and
                  (Trim(fmManDn1.FatDevOb6Dev.Value) = '') and
                  (Trim(fmManDn1.FatDevOb7Dev.Value) = '') and
                  (Trim(fmManDn1.FatDevOb8Dev.Value) = '') then
                begin

                  Nota01[187] := copy(fmManDn1.FatDevObsDev.Value, 001, 070); {Obs1}
                  Nota02[187] := 'Comp20';

                  Nota01[188] := copy(fmManDn1.FatDevObsDev.Value, 071, 070); {Obs2}
                  Nota02[188] := 'Comp20';

                  Nota01[189] := copy(fmManDn1.FatDevObsDev.Value, 141, 070); {Obs3}
                  Nota02[189] := 'Comp20';

                  Nota01[190] := copy(fmManDn1.FatDevObsDev.Value, 211, 070); {Obs4}
                  Nota02[190] := 'Comp20';

                  Nota01[191] := copy(fmManDn1.FatDevObsDev.Value, 281, 070); {Obs5}
                  Nota02[191] := 'Comp20';

                  Nota01[192] := copy(fmManDn1.FatDevObsDev.Value, 351, 070); {Obs6}
                  Nota02[192] := 'Comp20';

                  Nota01[193] := ' '; {Obs7}
                  Nota02[193] := 'Comp20';

                  Nota01[194] := ' '; {Obs8}
                  Nota02[194] := 'Comp20';

                end
                else
                begin

                  Nota01[187] := fmManDn1.FatDevOb1Dev.Value; {Obs1}
                  Nota02[187] := 'Comp20';

                  Nota01[188] := fmManDn1.FatDevOb2Dev.Value; {Obs2}
                  Nota02[188] := 'Comp20';

                  Nota01[189] := fmManDn1.FatDevOb3Dev.Value; {Obs3}
                  Nota02[189] := 'Comp20';

                  Nota01[190] := fmManDn1.FatDevOb4Dev.Value; {Obs4}
                  Nota02[190] := 'Comp20';

                  Nota01[191] := fmManDn1.FatDevOb5Dev.Value; {Obs5}
                  Nota02[191] := 'Comp20';

                  Nota01[192] := fmManDn1.FatDevOb6Dev.Value; {Obs6}
                  Nota02[192] := 'Comp20';

                  Nota01[193] := fmManDn1.FatDevOb7Dev.Value; {Obs7}
                  Nota02[193] := 'Comp20';

                  Nota01[194] := fmManDn1.FatDevOb8Dev.Value; {Obs8}
                  Nota02[194] := 'Comp20';

                end;

                Nota01[117] := IntToStr(fmManDn1.FatDevCodCli.Value); {código do Cliente}
                Nota02[117] := 'Comp12';

                Nota01[118] := fNumZeros(IntToStr(fmManDn1.FatDevCodVen.Value), 3); {código do Vendedor}
                Nota02[118] := 'Comp12';

                Nota01[119] := ''; {SeuPed}
                Nota02[119] := 'Comp12';

                Nota01[120] := fNumZeros(IntToStr(fmManDn1.FatDevNumRes.Value), 7); {Nosso Pedido}
                Nota02[120] := 'Comp12';

                Nota01[121] := 'NumNot'; {NotaRod1}
                Nota02[121] := 'Comp20';

                Nota01[122] := 'NumNot'; {NotaRod2}
                Nota02[122] := 'Comp20';

                ValorExt := fExtenso(fmManDn1.FatDevTotGer.Value);

                if Length(TrimLeft(TrimRight(ValorExt))) < 150 then
                  ValorExt := TrimLeft(TrimRight(ValorExt)) + fReplicate('*', 150 - Length(TrimLeft(TrimRight(ValorExt))));

                Nota01[123] := copy(ValorExt, 001, 50); {Valor por Extenso 1}
                Nota02[123] := 'Comp12';

                Nota01[124] := copy(ValorExt, 051, 50); {Valor por Extenso 2}
                Nota02[124] := 'Comp12';

                Nota01[125] := copy(ValorExt, 101, 50); {Valor por Extenso 3}
                Nota02[125] := 'Comp12';

                Nota01[126] := fmManDn1.FatDevDesReg.Value; {Observações Sobre Desconto}
                Nota02[126] := 'Comp20';

                {********************************************************************************************}

                rdprint1.OpcoesPreview.Preview := False;
                rdprint1.OpcoesPreview.PreviewZoom := 100;
                rdprint1.TamanhoQteLPP := oito;
                rdprint1.UsaGerenciadorImpr := True;

                rdprint1.TamanhoQteColunas := 136;
                rdprint1.FonteTamanhoPadrao := s17cpp;

                {Programação dos Eventos: desliga eventos cabecalho/rodape}
                rdprint1.OnNewPage := nil;
                rdprint1.OnBeforeNewPage := nil;

                rdprint1.TamanhoQteLinhas := QtdNfs;

                qtdimpr := 0; {Quantidade de Linhas de Itens Impressas}
                ;
                qtitens := 0; {Indicador se Esta Sendo Impressos Itens ou Não}

                SeqDv2 := 0; {sequencial dos Itens a Serem Impressos}

                Lin := 0; {Linha que Esta Sendo Impressas} {Incrementos de Linhas}
                Inc := 0; {Incrementos de Linhas}
                Col := 0; {Posição da Coluna a ser Impressa}
                Reg := 0; {Numero do Vetor a Ser Impresso}
                Tam := 0; {Tamanho da String a Ser Impressa}

                qtdnot := 1; {Quantidade de Notas Impressas}

                rdprint1.abrir;

                //                     qtdnfis := (fmManDn1.FatDevNroNfs.Value - fmManDn1.FatDevQtdNfs.Value)+ 1;  {Quantidade de Notas Fiscais Impressas}

                qtdnfis := 1; {Quantidade de Notas Fiscais Impressas}

                while qtdnfis <= fmManDn1.FatDevQtdNfs.Value do
                begin

                  with quSQL, SQL do
                  begin

                    Close;
                    Text := ' Select Count(*) as QtdReg From FatDv2' +
                      ' Where FatDv2.CodEmp = :CodEmp' +
                      '   and FatDv2.DteRes = :DteRes' +
                      '   and FatDv2.NumRes = :NumRes' +
                      '   and FatDv2.SeqLib = :SeqLib' +
                      '   and FatDv2.SeqFat = :SeqFat' +
                      '   and FatDv2.SeqDev = :SeqDev' +
                      '   and FatDv2.SeqNfd = :SeqNfd';

                    with Params do
                    begin

                      Params[0].AsInteger := fmManDn1.FatDevCodEmp.Value;
                      Params[1].AsDateTime := fmManDn1.FatDevDteRes.Value;
                      Params[2].AsInteger := fmManDn1.FatDevNumRes.Value;
                      Params[3].AsInteger := fmManDn1.FatDevSeqLib.Value;
                      Params[4].AsInteger := fmManDn1.FatDevSeqFat.Value;
                      Params[5].AsInteger := fmManDn1.FatDevSeqDev.Value;
                      Params[6].AsInteger := qtdnfis;

                    end;

                    Open;

                    QtiNfd := FieldbyName('QtdReg').AsInteger;

                  end;

                  SeqNfd := 0;

                  if qtdnfis = fmManDn1.FatDevQtdNfs.Value then
                  begin

                    with quSQL, SQL do
                    begin

                      Close;
                      Text := ' Select Count(Distinct(FatDv4.PerIcm)) as QtdReg' +
                        ' From FatDv4' +
                        ' Where FatDv4.CodEmp = :CodEmp' +
                        '   and FatDv4.DteRes = :DteRes' +
                        '   and FatDv4.NumRes = :NumRes' +
                        '   and FatDv4.SeqLib = :SeqLib' +
                        '   and FatDv4.SeqFat = :SeqFat' +
                        '   and FatDv4.SeqDev = :SeqDev';

                      with Params do
                      begin

                        Params[0].AsInteger := fmManDn1.FatDevCodEmp.Value;
                        Params[1].AsDateTime := fmManDn1.FatDevDteRes.Value;
                        Params[2].AsInteger := fmManDn1.FatDevNumRes.Value;
                        Params[3].AsInteger := fmManDn1.FatDevSeqLib.Value;
                        Params[4].AsInteger := fmManDn1.FatDevSeqFat.Value;
                        Params[5].AsInteger := fmManDn1.FatDevSeqDev.Value;

                      end;

                      Open;

                    end;

                    if quSQL.FieldbyName('QtdReg').AsInteger > 1 then
                    begin

                      with quSQL, SQL do
                      begin

                        Close;
                        Text := ' Select FatDv4.PerIcm,' +
                          '        Sum(FatDv4.BasIcm) as BasIcm,' +
                          '        Sum(FatDv4.TotIcm) as TotIcm ' +
                          ' From FatDv4' +
                          ' Where FatDv4.CodEmp = :CodEmp' +
                          '   and FatDv4.DteRes = :DteRes' +
                          '   and FatDv4.NumRes = :NumRes' +
                          '   and FatDv4.SeqLib = :SeqLib' +
                          '   and FatDv4.SeqFat = :SeqFat' +
                          '   and FatDv4.SeqDev = :SeqDev' +
                          ' Group by FatDv4.PerIcm' +
                          ' Order by FatDv4.PerIcm';

                        with Params do
                        begin

                          Params[0].AsInteger := fmManDn1.FatDevCodEmp.Value;
                          Params[1].AsDateTime := fmManDn1.FatDevDteRes.Value;
                          Params[2].AsInteger := fmManDn1.FatDevNumRes.Value;
                          Params[3].AsInteger := fmManDn1.FatDevSeqLib.Value;
                          Params[4].AsInteger := fmManDn1.FatDevSeqFat.Value;
                          Params[5].AsInteger := fmManDn1.FatDevSeqDev.Value;

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
                          Nota01[208] := 'Base ' + FormatFloat('###', quSQL.FieldbyName('PerIcm').AsFloat) + '% R$ ' + preString(FormatFloat('###,###,##0.00',
                            quSQL.FieldbyName('BasIcm').AsFloat), 15) + ' Imp. R$ ' + preString(FormatFloat('###,###,##0.00',
                            quSQL.FieldbyName('TotIcm').AsFloat), 15);

                        quSQL.Next;

                      end;
                    end;

                    {BaseIcms}
                    if Trim(fmManDn1.FatDevCodCf1.Value) <> '6.411' then
                    begin

                      if fmManDn1.FatDevBasIcm.Value > 0 then
                        Nota01[057] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevBasIcm.Value), 14)
                      else
                        Nota01[057] := ' ';

                    end
                    else
                      Nota01[057] := ' ';

                    Nota02[057] := 'Comp12';

                    {ValIcms}
                    if fmManDn1.FatDevTotIcm.Value > 0 then
                      Nota01[058] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevTotIcm.Value), 14)
                    else
                      Nota01[058] := ' ';

                    Nota02[058] := 'Comp12';

                    {BaseIcmsSub}
                    if fmManDn1.FatDevBasSub.Value > 0 then
                      Nota01[059] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevBasSub.Value), 14)
                    else
                      Nota01[059] := ' ';

                    Nota02[059] := 'Comp12';

                    {ValIcmsSub}
                    if fmManDn1.FatDevTotSub.Value > 0 then
                      Nota01[060] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevTotSub.Value), 14)
                    else
                      Nota01[060] := ' ';

                    Nota02[060] := 'Comp12';

                    Nota01[061] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevTotDev.Value), 14); {TotalProds}
                    Nota02[061] := 'Comp12';

                    if fmManDn1.FatDevTotFrt.Value > 0 then
                      Nota01[062] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevTotFrt.Value), 14) {Frete}
                    else
                      Nota01[062] := ' ';

                    Nota02[062] := 'Comp12';

                    if fmManDn1.FatDevTotSeg.Value > 0 then
                      Nota01[063] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevTotSeg.Value), 14) {Seguro}
                    else
                      Nota01[063] := ' ';

                    Nota02[063] := 'Comp12';

                    if fmManDn1.FatDevTotDes.Value > 0 then
                      Nota01[064] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevTotDes.Value), 14) {Outras}
                    else
                      Nota01[064] := ' ';

                    Nota02[064] := 'Comp12';

                    if fmManDn1.FatDevTotIpi.Value > 0 then
                      Nota01[065] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevTotIpi.Value), 14) {TotalIPI}
                    else
                      Nota01[065] := ' ';

                    Nota02[065] := 'Comp12';

                    Nota01[066] := Prestring(FormatFloat('###,###,##0.00', fmManDn1.FatDevTotGer.Value), 14); {TotalNota}
                    Nota02[066] := 'Comp12';

                    Nota01[126] := fmManDn1.FatDevDesReg.Value; {Descontos Gerais na Nota}
                    Nota02[126] := 'Comp20';

                    if fmManDn1.FatDevTotDsr.Value > 0 then
                      Nota01[127] := PreString('-' + Trim(FormatFloat('###,##0.00', fmManDn1.FatDevTotDsr.Value)), 12) {Descontos Gerais na Nota}
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

                  ValorExt := fExtenso(fmManDn1.FatDevTotGer.Value);

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
                    Text := ' Select FatDv3.SeqDv3,' +
                      '        FatDv3.ClsIpi From FatDv3' +
                      ' Where FatDv3.CodEmp = :CodEmp' +
                      '   and FatDv3.DteRes = :DteRes' +
                      '   and FatDv3.NumRes = :NumRes' +
                      '   and FatDv3.SeqLib = :SeqLib' +
                      '   and FatDv3.SeqFat = :SeqFat' +
                      '   and FatDv3.SeqDev = :SeqDev' +
                      '   and FatDv3.SeqNfd = :SeqNfd' +
                      ' Order by FatDv3.SeqDv3';

                    with Params do
                    begin

                      Params[0].AsInteger := fmManDn1.FatDevCodEmp.Value;
                      Params[1].AsDateTime := fmManDn1.FatDevDteRes.Value;
                      Params[2].AsInteger := fmManDn1.FatDevNumRes.Value;
                      Params[3].AsInteger := fmManDn1.FatDevSeqLib.Value;
                      Params[4].AsInteger := fmManDn1.FatDevSeqFat.Value;
                      Params[5].AsInteger := fmManDn1.FatDevSeqDev.Value;
                      Params[6].AsInteger := qtdnfis;

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
                      Nota01[i] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqDv3').AsInteger), 3) + ' - ' + quSQL.FieldbyName('ClsIpi').AsString
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

                              rdprint1.impf(Lin, Col, fNumZeros(IntToStr(fmManDn1.FatDevNroNfs.Value), 6), [EXPANDIDO, negrito]);

                            end;

                          end
                          else
                          begin

                            if (pos('#00040', Linha) = 0) and (qtitens = 0) then
                            begin {A Linha que Esta Sendo Impressa não e a de Itens}

                              Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3)); {Linha encontrada e de Incremento de Saltos de Linhas}
                              Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));
                              reg := StrToInt(copy(Linha, pos('#', Linha) + 1, 5));

                              if (Col > 0) or (Inc > 0) then
                              begin

                                Lin := Lin + Inc;

                                if (reg >= 131) and (reg <= 160) then
                                begin

                                  if qtdnfis = fmManDn1.FatDevQtdNfs.Value then
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

                                SeqDv2 := SeqDv2 + 1;
                                SeqNfd := SeqNfd + 1;

                                if qtdimpr = 0 then
                                  qtdimpr := Lin;

                                with quSQL, SQL do
                                begin

                                  Close;
                                  Text := ' Select FatDv2.CodClp,' +
                                    '        FatDv2.CodGru,' +
                                    '        FatDv2.CodSub,' +
                                    '        FatDv2.CodPro,' +
                                    '        FatDv2.SeqNfd,' +
                                    '        FatDv2.DesDv2,' +
                                    '        FatDv2.ObsDv2,' +
                                    '        FatDv2.RefDv2,' +
                                    '        FatDv2.SeqDv3,' +
                                    '        FatDv2.ClsIpi,' +
                                    '        FatDv2.CodSt1,' +
                                    '        FatDv2.CodSt2,' +
                                    '        FatDv2.CodUnd,' +
                                    '        FatDv2.UltQtd,' +
                                    '        FatDv2.CodUnd,' +
                                    '        FatDv2.VlqDv2,' +
                                    '        FatDv2.TotDv2,' +
                                    '        FatDv2.TrbIcm,' +
                                    '        FatDv2.IcmDv2,' +
                                    '        FatDv2.TrbIpi,' +
                                    '        FatDv2.IpiDv2,' +
                                    '        FatDv2.TotIpi ' +
                                    ' From FatDv2' +
                                    ' Where FatDv2.CodEmp = :CodEmp' +
                                    '   and FatDv2.DteRes = :DteRes' +
                                    '   and FatDv2.NumRes = :NumRes' +
                                    '   and FatDv2.SeqLib = :SeqLib' +
                                    '   and FatDv2.SeqFat = :SeqFat' +
                                    '   and FatDv2.SeqDev = :SeqDev' +
                                    '   and FatDv2.NroDv2 = :NroDv2';

                                  with Params do
                                  begin

                                    Params[0].AsInteger := fmManDn1.FatDevCodEmp.Value;
                                    Params[1].AsDateTime := fmManDn1.FatDevDteRes.Value;
                                    Params[2].AsInteger := fmManDn1.FatDevNumRes.Value;
                                    Params[3].AsInteger := fmManDn1.FatDevSeqLib.Value;
                                    Params[4].AsInteger := fmManDn1.FatDevSeqFat.Value;
                                    Params[5].AsInteger := fmManDn1.FatDevSeqDev.Value;
                                    Params[6].AsInteger := SeqDv2;

                                  end;

                                  Open;

                                end;

                                if Trim(quSql.FieldbyName('CodGru').AsString) <> '' then
                                begin

                                  {Item a Ser Impresso Pertence a Nota Fiscal}
                                  if quSql.FieldbyName('SeqNfd').AsInteger = qtdnfis then
                                  begin

                                    {Produto}
                                    if GImpRef = 'Nao' then
                                      Nota01[040] := quSql.FieldbyName('CodClp').AsString + '-' + quSql.FieldbyName('CodGru').AsString + '.' +
                                        quSql.FieldbyName('CodSub').AsString + '.' + quSql.FieldbyName('CodPro').AsString
                                    else
                                      Nota01[040] := Trim(quSql.FieldbyName('RefDv2').AsString);

                                    Nota02[040] := 'Comp20';

                                    {Descr}
                                    Nota01[041] := Trim(quSql.FieldbyName('DesDv2').AsString);
                                    Nota02[041] := 'Comp20';

                                    {Descr}

                                    if Trim(quSql.FieldbyName('RefDv2').AsString) <> '' then
                                      Nota01[052] := Trim(quSql.FieldbyName('RefDv2').AsString)
                                    else
                                      Nota01[052] := ' ';

                                    Nota02[052] := 'Comp20';

                                    {ClassFisc}
                                    if Trim(quSQL.FieldbyName('ClsIpi').AsString) <> '' then
                                      Nota01[042] := fLimpaStr(quSql.FieldbyName('ClsIpi').AsString)
                                    else
                                      Nota01[042] := ' ';

                                    Nota02[042] := 'Comp20';

                                    if Trim(quSQL.FieldbyName('SeqDv3').AsString) <> '' then
                                      Nota01[207] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqDv3').AsInteger), 3)
                                    else
                                      Nota01[207] := ' ';

                                    Nota02[207] := 'Comp20';

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

                                    if fEncDecimal(quSql.FieldbyName('UltQtd').AsFloat) > 0 then
                                      Nota01[046] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('UltQtd').AsFloat), 12)
                                    else
                                      Nota01[046] := Prestring(FormatFloat('####,###,##0', quSql.FieldbyName('UltQtd').AsFloat), 12);

                                    Nota02[046] := 'Comp20';

                                    {Unit}
                                    Nota01[047] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('VlqDv2').AsFloat), 12);
                                    Nota02[047] := 'Comp20';

                                    {Total}
                                    Nota01[048] := Prestring(FormatFloat('###,###,##0.00', quSql.FieldbyName('TotDv2').AsFloat), 12);
                                    Nota02[048] := 'Comp20';

                                    {AlIcms}
                                    if quSql.FieldbyName('TrbIcm').AsString = 'Sim' then
                                      Nota01[049] := Prestring(FormatFloat('##0', quSql.FieldbyName('IcmDv2').AsFloat), 3)
                                    else
                                      Nota01[049] := ' ';

                                    Nota02[049] := 'Comp20';

                                    {AlIpi}
                                    if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                      Nota01[050] := Prestring(FormatFloat('##0', quSql.FieldbyName('IpiDv2').AsFloat), 3)
                                    else
                                      Nota01[050] := ' ';

                                    Nota02[050] := 'Comp20';

                                    {ValIpi}
                                    if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                      Nota01[051] := Prestring(FormatFloat('###,##0.00', fRound(quSql.FieldbyName('TotIpi').AsFloat, 2)), 10)
                                    else
                                    begin

                                      if quSql.FieldbyName('TotIpi').AsFloat > 0 then
                                        Nota01[051] := Prestring(FormatFloat('###,##0.00', fRound(quSql.FieldbyName('TotIpi').AsFloat, 2)), 10)
                                      else
                                        Nota01[051] := ' ';

                                    end;

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

                                              {Verifica se a Linha que Esta Sendo Impressa não e a de Segunda Descrição ou de Titulos de Descontos}
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

                                                if (Reg = 52) and (Trim(quSql.FieldbyName('RefDv2').AsString) <> '') then
                                                begin

                                                  {Descr2}
                                                  Nota01[052] := Trim(quSql.FieldbyName('RefDv2').AsString);
                                                  Nota02[052] := 'Comp20';

                                                  Lin := Lin + Inc;

                                                  if Nota02[Reg] = 'Comp12' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                  if Nota02[Reg] = 'Comp20' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                  if Nota02[Reg] = 'Comp17' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                                end;

                                                if (Reg = 128) and (Trim(quSql.FieldbyName('ObsDv2').AsString) <> '') then
                                                begin

                                                  {Descr2}
                                                  Nota01[128] := Trim(quSql.FieldbyName('ObsDv2').AsString);
                                                  Nota02[128] := 'Comp20';

                                                  Lin := Lin + Inc;

                                                  if Nota02[Reg] = 'Comp12' then
                                                    rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp12]);
                                                  if Nota02[Reg] = 'Comp20' then
                                                    rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp20]);
                                                  if Nota02[Reg] = 'Comp17' then
                                                    rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp17]);

                                                end;

                                                if ((Reg = 126) or (Reg = 127)) then
                                                begin

                                                  if (fmManDn1.FatDevTotDsr.Value > 0) and (SeqNfd = QtiNfd) then
                                                  begin

                                                    { Só ira Imprimir o Campo de Descontos na Ultima Nota e se foi Efetuado Descontos na Nota }

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
                                  begin {Finalizar Nota para Impressão da Proxima Nota}

                                    SeqDv2 := SeqDv2 - 1;

                                    r := r + 18;

                                    qtitens := 2;

                                  end;

                                end
                                else
                                begin {Não Ha Mais Itens para Impressão}

                                  SeqDv2 := SeqDv2 - 1;

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

                                    if (Reg = 67) and (qtdnfis < fmManDn1.FatDevQtdNfs.Value) then
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

                                      if (Reg >= 68) and (Reg <= 81) and (qtdnfis < fmManDn1.FatDevQtdNfs.Value) then
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

                                        if (reg >= 187) and (reg <= 194) and (qtdnfis < fmManDn1.FatDevQtdNfs.Value) then
                                        begin

                                          if reg = 187 then
                                            Linha := 'Continua ' + Trim(IntToStr(qtdnot)) + '/' + Trim(IntToStr(fmManDn1.FatDevQtdNfs.Value))
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

                rdprint1.fechar; {Finaliza e inicia impressão ou preview}

                rdprint1.TamanhoQteLinhas := 66; {Voltar o valor original...}

                SeqError := 0;

                if fMsg('Nota Impressa Corretamente', 'O') then
                begin

                  fmManDn1.FatDev.Edit;

                  fmManDn1.FatDevFlgAtu.Value := '*';

                  fmManDn1.FatDevFlgImp.Value := 'Sim';

                  with fmManDn1.FatDev do
                  begin

                    fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
                    ;

                    try

                      ApplyUpdates; {Tenta aplicar as alterações}
                      ;

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
                      ;

                    except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
                      ;

                      fmManDn1.Finalizar := 'N';

                      if fmManDn1.FatDev.State <> dsBrowse then
                        fmManDn1.FatDev.CancelUpdates;

                      fmManDn1.FatDev.Close;
                      fmManDn1.FatDev.Open;

                      fmManDn1.FatDev.Edit;

                      if EdNroNfs.Enabled then
                        EdNroNfs.SetFocus;

                      raise;

                    end;

                    CommitUpdates; {sucesso!, limpa o cache...}

                  end;

                  fmManDn1.FatDev.Close;
                  fmManDn1.FatDev.Open;

                  fmManDn1.Finalizar := 'S';

                  close;

                end
                else
                begin

                  if EdNroNfs.Enabled then
                    EdNroNfs.SetFocus;

                  exit;

                end;

              finally

                fmManDn1.FatDev.Edit;

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

            if EdNroNfs.Enabled then
              fmsgErro('Cliente Informado para a Emissão da Nota Fiscal não Encontrado.', EdNroNfs)
            else
              fmsgErro('Cliente Informado para a Emissão da Nota Fiscal não Encontrado.', nil)

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
          fmsgErro('Arquivo de Configuração da Nota Fiscal não Encontrado. Consulte o Administrador do Sistema para Maiores Informações', EdNroNfs)
        else
          fmsgErro('Arquivo de Configuração da Nota Fiscal não Encontrado. Consulte o Administrador do Sistema para Maiores Informações', nil);

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

      if fmManDn1.FatDevNroNfs.Value = 0 then
      begin

        GerEmp.Close;
        GerEmp.Open;

        fmManDn1.FatDev.Edit;

        EdNroNfs.Value := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

        fmsgErro('Número da Nota Fiscal não Informado. Próximo No. ' + Trim(FloatToStr(EdNroNfs.Value)), EdNroNfs);

      end;
    end;
  end;
end;

procedure TfmManIdn.FormShow(Sender: TObject);
begin
  inherited;

  EdNroNfs.Enabled := False;

  if fmManDn1.FatDevSitDev.Value = 'Faturando' then
  begin

    if fmManDn1.FatDevNroNfs.Value = 0 then
    begin

      EdNroNfs.Enabled := True;

      GerEmp.Close;
      GerEmp.Params[0].AsInteger := fmManDn1.FatDevCodEmp.Value;
      GerEmp.Open;

      fmManDn1.FatDev.Edit;

      if fmManDn1.FatDevNroNfs.Value = 0 then
        fmManDn1.FatDevNroNfs.Value := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

      if fmManDn1.FatDevNroNfs.Value > 0 then
        EdNroNfs.Text := IntToStr(fmManDn1.FatDevNroNfs.Value)
      else
        EdNroNfs.Text := '0';

    end;
  end;

  if EdNroNfs.Enabled then
    EdNroNfs.SetFocus
  else
    bContinuar.SetFocus;

end;

procedure TfmManIdn.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
