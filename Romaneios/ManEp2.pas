unit ManEp2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, RDprint, dxCntner, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxEdLib, AlignEdit, FShowPadrao, dxDBColorDateEdit,
  dxDBColorEdit, dxDBColorCurrencyEdit;

type
  TfmManEp2 = class(TfmShowPadrao)
    FatOr3: TwwQuery;
    DsOr3: TwwDataSource;
    FinBan: TwwQuery;
    PaintBox: TPaintBox;
    Bevel1: TBevel;
    Label10: TLabel;
    grOr3: ThGrid;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DsBan: TwwDataSource;
    FinBanCODBAN: TIntegerField;
    FinBanNOMBAN: TStringField;
    UpOr3: TUpdateSQL;
    grPro: TdxDBGraphicEdit;
    quSQL: TwwQuery;
    RDprint1: TRDprint;
    bRetornar: TSpeedButton;
    bContinuar: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label7: TLabel;
    EdTotGer: TAlignEdit;
    dbTotGer: TdxDBColorCurrencyEdit;
    EdLanOrc: TAlignEdit;
    dbLanNot: TdxDBColorCurrencyEdit;
    EdSldOrc: TAlignEdit;
    dbSldNot: TdxDBColorCurrencyEdit;
    Panel1: TPanel;
    EdPraOr3: TdxDBColorEdit;
    EdDtvOr3: TdxDBColorDateEdit;
    EdVlpOr3: TdxDBColorCurrencyEdit;
    EdCodBan: TdxDBColorEdit;
    Label6: TLabel;
    EdNomBan: TdxDBColorEdit;
    FatOr3CODEMP: TIntegerField;
    FatOr3DTERES: TDateTimeField;
    FatOr3NUMRES: TIntegerField;
    FatOr3SEQLIB: TIntegerField;
    FatOr3SEQORC: TIntegerField;
    FatOr3SEQOR3: TIntegerField;
    FatOr3PRAOR3: TIntegerField;
    FatOr3DTVOR3: TDateTimeField;
    FatOr3VLPOR3: TFloatField;
    FatOr3CODBAN: TIntegerField;
    FatOr3NROOR3: TIntegerField;
    FatOr3FLGINT: TStringField;
    FatOr3NOMBAN: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodBanExit(Sender: TObject);
    procedure EdPraOr3Exit(Sender: TObject);
    procedure grOr3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPraOr3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdDtvOr3Exit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FatOr3NewRecord(DataSet: TDataSet);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure RDprint1BeforeNewPage(Sender: TObject; Pagina: Integer);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
    pSaida : string;
  public
    {Public declarations}
  end;

var
  TotOrc   : Real;
  Linha    : integer;
  NroPag   : integer;
  fmManEp2 : TfmManEp2;
  NomVen,EndFat,EndCob,EndEnt,FonVen,CgcCli,InsCli : string;
  NomCli,ApeCli,BafCli,CifCli,UffCli,CefCli,BacCli,CicCli,UfcCli,CecCli : string;  

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManEpe, PsqBan, AuxPsq;

{$R *.DFM}

procedure TfmManEp2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then begin

     psaida := 'Sim';

     if FatOr3.State <> dsBrowse then FatOr3.CancelUpdates;

     if EdPraOr3.Enabled then begin

        EdPraOr3.Enabled := False;
        EdDtvOr3.Enabled := False;
        EdVlpOr3.Enabled := False;
        EdCodBan.Enabled := False;

        psaida := 'Nao';

        grOr3.SetFocus;

        end
     else
        begin

        psaida := 'Nao';

        bRetornar.OnClick(Sender);

     end;   
  end;

  if key = 123 then begin

     if grOr3.Focused then bContinuar.OnClick(Sender);

  end;
end;

procedure TfmManEp2.FormShow(Sender: TObject);
begin
  inherited;
  
  EdTotGer.Text := FormatFloat('###,###,##0.00',fmManEpe.FatOrcTotGer.Value);
  EdLanOrc.Text := FormatFloat('###,###,##0.00',fmManEpe.FatOrcLanOrc.Value);
  EdSldOrc.Text := FormatFloat('###,###,##0.00',fmManEpe.FatOrcSldOrc.Value);

  FatOr3.Close;
  FatOr3.Params[0].AsInteger  := fmManEpe.FatOrcCodEmp.Value;
  FatOr3.Params[1].AsDateTime := fmManEpe.FatOrcDteRes.Value;
  FatOr3.Params[2].AsInteger  := fmManEpe.FatOrcNumRes.Value;
  FatOr3.Params[3].AsInteger  := fmManEpe.FatOrcSeqLib.Value;
  FatOr3.Params[4].AsInteger  := fmManEpe.FatOrcSeqOrc.Value;
  FatOr3.Open;

  if fmManEpe.FatOrcQtpOrc.Value > 0 then
     grOr3.SetFocus
  else
     begin

     FatOr3.Append;

     EdPraOr3.SetFocus;

  end;
end;

procedure TfmManEp2.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManEp2.bContinuarClick(Sender: TObject);
var
  TotDif : real;
  ObsRes : string;
begin

  TotOrc := fmManEpe.FatOrcTotGer.Value;

  if fmManEpe.FatOrcLanOrc.Value >= fmManEpe.FatOrcTotGer.Value then
     TotDif := fRound(fmManEpe.FatOrcLanOrc.Value - fmManEpe.FatOrcTotGer.Value,2)
  else
     TotDif := fRound(fmManEpe.FatOrcTotGer.Value - fmManEpe.FatOrcLanOrc.Value,2);

  if TotDif > 0 then begin

     if fmManEpe.FatOrcLanOrc.Value < fmManEpe.FatOrcTotGer.Value then
        fmsgErro('Total de Vencimentos Informados é Menor que o Valor a ser Lançado.',Nil)
     else
        fmsgErro('Total de Vencimentos Informados é Maior que o Total a ser Lançado.',Nil);

     end
  else
     begin

     if fMsg('Confirma Impressão do Romaneio ?','S') then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select QtdRom From FatPar';
             Open;

             if FieldbyName('QtdRom').AsInteger > 0 then
                rdprint1.NumerodeCopias := FieldbyName('QtdRom').AsInteger
             else
                rdprint1.NumerodeCopias := 1;
                
        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinVen.ApeVen,'+
                     '        FinVen.PrfVen,'+
                     '        FinVen.FonVen'+
                     ' From FinVen'+
                     ' Where FinVen.CodVen = '+ QuotedStr(IntToStr(fmManEpe.FatOrcCodVen.Value));
             Open;

             NomVen := FieldbyName('ApeVen').AsString;

             if Trim( FieldbyName('PrfVen').AsString ) <> '' then
                FonVen := '(' +FieldbyName('PrfVen').AsString+ ') ' +FieldbyName('FonVen').AsString
             else
                FonVen := FieldbyName('FonVen').AsString;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinCli.ApeCli,'+
                     '        FinCli.NomCli,'+
                     '        FinCli.CgcCli,'+
                     '        FinCli.InsCli,'+
                     '        FinCli.CefCli,'+
                     '        FinCli.TefCli,'+
                     '        FinCli.EnfCli,'+
                     '        FinCli.NrfCli,'+
                     '        FinCli.RffCli,'+
                     '        FinCli.CifCli,'+
                     '        FinCli.BafCli,'+
                     '        FinCli.UffCli,'+
                     '        FinCli.CecCli,'+
                     '        FinCli.TecCli,'+
                     '        FinCli.EncCli,'+
                     '        FinCli.NrcCli,'+
                     '        FinCli.RfcCli,'+
                     '        FinCli.CicCli,'+
                     '        FinCli.BacCli,'+
                     '        FinCli.UfcCli'+
                     ' From FinCli'+
                     ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(fmManEpe.FatOrcCodCli.Value));
             Open;

             ApeCli := FieldbyName('ApeCli').AsString;
             NomCli := FieldbyName('NomCli').AsString;
             CgcCli := FieldbyName('CgcCli').AsString;
             InsCli := FieldbyName('InsCli').AsString;
             CefCli := FieldbyName('CefCli').AsString;
             BafCli := FieldbyName('BafCli').AsString;
             CifCli := FieldbyName('CifCli').AsString;
             UffCli := FieldbyName('UffCli').AsString;
             CecCli := FieldbyName('CecCli').AsString;
             BacCli := FieldbyName('BacCli').AsString;
             CicCli := FieldbyName('CicCli').AsString;
             UfcCli := FieldbyName('UfcCli').AsString;

             if Trim( FieldbyName('TefCli').AsString ) <> '' then
                EndFat := Trim( FieldbyName('TefCli').AsString )+ ' ' +Trim( FieldbyName('EnfCli').AsString )
             else
                EndFat := Trim( FieldbyName('EnfCli').AsString );

             if Trim( FieldbyName('NrfCli').AsString ) <> '' then
                EndFat := EndFat+ ', ' +Trim( FieldbyName('NrfCli').AsString );

             if Trim( FieldbyName('TecCli').AsString ) <> '' then   
                EndCob := Trim( FieldbyName('TecCli').AsString )+ ' ' +Trim( FieldbyName('EncCli').AsString )
             else
                EndCob := Trim( FieldbyName('EncCli').AsString );

             if Trim( FieldbyName('NrcCli').AsString ) <> '' then
                EndCob := EndCob+ ', ' +Trim( FieldbyName('NrcCli').AsString );
        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select PedRes.ObsRes'+
                     ' From PedRes'+
                     ' Where PedRes.CodEmp = '+ QuotedStr(IntToStr(fmManEpe.FatOrcCodEmp.Value))+
                     '   and PedRes.DteRes = '+ QuotedStr(fDateToSQL(fmManEpe.FatOrcDteRes.Value))+
                     '   and PedRes.NumRes = '+ QuotedStr(IntToStr(fmManEpe.FatOrcNumRes.Value));
             Open;

             ObsRes := FieldbyName('ObsRes').AsString;

        end;

        EndEnt := Trim( fmManEpe.FatOrcTenCli.Value )+' '+Trim( fmManEpe.FatOrcEndCli.Value )+', '+Trim( fmManEpe.FatOrcNumCli.Value ) + ' - ' + Trim( fmManEpe.FatOrcBaiCli.Value ) + ' - ' + Trim( fmManEpe.FatOrcCidCli.Value ) + ' ' + Trim( fmManEpe.FatOrcUfeCli.Value );

        with quSQL,SQL do begin

             Close;
             Text := ' Select FatOr2.CodGru,'+
                     '        FatOr2.CodSub,'+
                     '        FatOr2.CodPro,'+
                     '        FatOr2.DesOr2,'+
                     '        FatOr2.QtpOr2,'+
                     '        FatOr2.VluOr2,'+
                     '        FatOr2.TotOr2'+                     
                     ' From FatOr2'+
                     ' Where FatOr2.CodEmp = :CodEmp'+
                     '   and FatOr2.DteRes = :DteRes'+
                     '   and FatOr2.NumRes = :NumRes'+
                     '   and FatOr2.SeqLib = :SeqLib'+
                     '   and FatOr2.SeqOrc = :SeqOrc'+
                     ' Order by FatOr2.NroOr2';

             with Params do begin

                  Params[0].AsInteger  := fmManEpe.FatOrcCodEmp.Value;
                  Params[1].AsDateTime := fmManEpe.FatOrcDteRes.Value;
                  Params[2].AsInteger  := fmManEpe.FatOrcNumRes.Value;
                  Params[3].AsInteger  := fmManEpe.FatOrcSeqLib.Value;
                  Params[4].AsInteger  := fmManEpe.FatOrcSeqOrc.Value;

             end;

             Open;

        end;

        rdprint1.OpcoesPreview.Preview     := False;
        rdprint1.OpcoesPreview.PreviewZoom := 100;
        rdprint1.TamanhoQteLPP             := seis;
        rdprint1.UsaGerenciadorImpr        := True;

        rdprint1.TamanhoQteColunas  := 136;
        rdprint1.FonteTamanhoPadrao := s17cpp;

        NroPag := 0;

        {Inicio...}
        with rdprint1 do begin

             abrir; {inicializa o arquivo de impressao...}

             if setup then begin {abre tela para escolha da impressora e modelo...}

                quSql.First;

                while not quSQL.EOF do begin

                      impf(Linha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString,[NORMAL]);
                      impf(Linha,026,copy(Trim(quSql.FieldbyName('DesOr2').AsString),1,40),[NORMAL]);
                      impf(Linha,091,PreString(FormatFloat('###,###,##0',quSql.FieldbyName('QtpOr2').AsFloat),07),[NORMAL]);
                      impf(Linha,104,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('VluOr2').AsFloat),10),[NORMAL]);
                      impf(Linha,122,PreString(FormatFloat('###,##0.00',quSql.FieldbyName('TotOr2').AsFloat),09),[NORMAL]);

                      Inc(Linha);

                      quSQL.Next;

                      if linha > 61 then rdprint1.novapagina;

                end;

                impf(Linha,121,fReplicate('-',10),[NORMAL]);

                Inc(Linha);

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,077,'Total Produtos',[NORMAL]);
                impf(Linha,114,PreString(FormatFloat('###,###,##0.00',fmManEpe.FatOrcTotOrc.Value),14),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,077,'Total Frete',[NORMAL]);
                impf(Linha,114,PreString(FormatFloat('###,###,##0.00',fmManEpe.FatOrcTotFrt.Value),14),[NORMAL]);

                Inc(Linha);

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,077,'Outras Despesas',[NORMAL]);
                impf(Linha,114,PreString(FormatFloat('###,###,##0.00',fRound(fmManEpe.FatOrcTotDes.Value + fmManEpe.FatOrcTotSeg.Value,2)),14),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,121,fReplicate('-',10),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,077,'Total Romaneio',[NORMAL]);
                impf(Linha,114,PreString(FormatFloat('###,###,##0.00',fmManEpe.FatOrcTotGer.Value),14),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,077,'Qtde Volumes',[NORMAL]);
                impf(Linha,114,PreString(FormatFloat('####0',fmManEpe.FatOrcQtdVol.Value),14),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,fReplicate('-',80),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'Entrega     : '+EndEnt,[NORMAL, NEGRITO]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                if Trim(CgcCli) <> '' then begin

                   if Length( Trim(CgcCli) ) <= 11 then begin

                      CgcCli := copy(CgcCli,1,3)+'.'+copy(CgcCli,4,3)+'.'+copy(CgcCli,7,3)+'-'+copy(CgcCli,10,2);

                      impf(Linha,001,'CPF         : '+CgcCli,[NORMAL, NEGRITO]);
                      impf(Linha,057,'RG  : '+InsCli,[NORMAL, NEGRITO]);

                      end
                   else
                      begin

                      CgcCli := copy(CgcCli,01,2)+'.'+copy(CgcCli,3,3)+'.'+copy(CgcCli,06,3)+'/'+copy(CgcCli,9,4)+'-'+copy(CgcCli,13,2);

                      impf(Linha,001,'CNPJ        : '+CgcCli,[NORMAL, NEGRITO]);
                      impf(Linha,057,'I.E.: '+InsCli,[NORMAL, NEGRITO]);

                   end;

                   end
                else
                   begin

                   impf(Linha,001,'CNPJ        : ',[NORMAL, NEGRITO]);
                   impf(Linha,057,'I.E.: ',[NORMAL, NEGRITO]);

                end;

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,fReplicate('-',80),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'Vencimentos : ',[NORMAL, NEGRITO]);

                with quSQL,SQL do begin

                     Close;
                     Text := ' Select * From FatOr3'+
                             ' Where CodEmp = :CodEmp'+
                             '   and DteRes = :DteRes'+
                             '   and NumRes = :NumRes'+
                             '   and SeqLib = :SeqLib'+
                             '   and SeqOrc = :SeqOrc'+
                             ' Order by CodEmp,DteRes,NumRes,SeqLib,SeqOrc,SeqOr3';

                     with Params do begin

                          Params[0].AsInteger  := fmManEpe.FatOrcCodEmp.Value;
                          Params[1].AsDateTime := fmManEpe.FatOrcDteRes.Value;
                          Params[2].AsInteger  := fmManEpe.FatOrcNumRes.Value;
                          Params[3].AsInteger  := fmManEpe.FatOrcSeqLib.Value;
                          Params[4].AsInteger  := fmManEpe.FatOrcSeqOrc.Value;

                     end;

                     Open;

                end;

                while not quSQL.Eof do begin

                      impf(Linha,025,quSql.FieldbyName('DtvOr3').AsString,[NORMAL]);
                      impf(Linha,046,PreString(IntToStr(quSql.FieldbyName('PraOr3').AsInteger),5),[NORMAL]);
                      impf(Linha,060,PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpOr3').AsFloat),14),[NORMAL]);
                      impf(Linha,085,PreString(IntToStr(quSql.FieldbyName('CodBan').AsInteger),5),[NORMAL]);

                      Inc(Linha);

                      quSql.Next;

                      if linha > 61 then rdprint1.novapagina;

                end;

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,fReplicate('-',80),[NORMAL]);

                Linha := Linha + 2;

                if linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'Observacoes : ',[NORMAL, NEGRITO]);
                impf(Linha,025,copy(ObsRes,001,040),[NORMAL]);

                if Trim( copy(ObsRes,041,040) ) <> '' then begin

                   Inc(Linha);

                   if linha > 61 then rdprint1.novapagina;

                   impf(Linha,025,copy(ObsRes,041,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,081,040) ) <> '' then begin

                   Inc(Linha);

                   if linha > 61 then rdprint1.novapagina;

                   impf(Linha,025,copy(ObsRes,081,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,121,040) ) <> '' then begin

                   Inc(Linha);

                   if linha > 61 then rdprint1.novapagina;

                   impf(Linha,025,copy(ObsRes,121,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,161,040) ) <> '' then begin

                   Inc(Linha);

                   if linha > 61 then rdprint1.novapagina;

                   impf(Linha,025,copy(ObsRes,161,040),[NORMAL]);

                end;

                if Trim( copy(ObsRes,201,040) ) <> '' then begin

                   Inc(Linha);

                   if linha > 61 then rdprint1.novapagina;

                   impf(Linha,025,copy(ObsRes,201,040),[NORMAL]);

                end;
             end;

             fechar;  {Finaliza e inicia impressao ou preview}

        end;

        if fMsg('Impressão Correta ?','O') then begin

           fmManEpe.FatOrc.Edit;

           fmManEpe.FatOrcFlgImp.Value := 'Sim';

           fmManEpe.FatOrcSitOrc.Value := 'Faturado';

           with fmManEpe.FatOrc do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if fmManEpe.FatOrc.State <> dsBrowse then fmManEpe.FatOrc.CancelUpdates;

                   grOr3.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           fmManEpe.FatOrc.Close;
           fmManEpe.FatOrc.Open;

           fmManEpe.Finalizar := 'S';

           Close;

        end;       
     end;
  end;
end;

procedure TfmManEp2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEp2.EdPraOr3Exit(Sender: TObject);
begin
  if psaida = 'Nao' then begin

     if (Tecla <> 'ESC') and (Tecla <> 'UP') and (Tecla <> 'MouseUP') then begin

        FatOr3DtvOr3.Value := fmManEpe.FatOrcDteOrc.Value + FatOr3PraOr3.Value;

        EdDtvOr3.Text := DateToStr(FatOr3DtvOr3.Value);

        end
     else
        begin

        if (Tecla = 'UP') then begin

           if fmManEpe.FatOrcQtpOrc.Value > 0 then begin

              EdPraOr3.Enabled := False;
              EdDtvOr3.Enabled := False;
              EdVlpOr3.Enabled := False;
              EdCodBan.Enabled := False;

              if FatOr3.State <> dsBrowse then
                 FatOr3.CancelUpdates
              else
                 begin

                 if not FatOr3.Bof then FatOr3.Prior;

              end;

              grOr3.Enabled := True;

              grOr3.SetFocus;

              end
           else
              EdPraOr3.SetFocus;
        end;
     end;
  end;   
end;

procedure TfmManEp2.EdCodBanExit(Sender: TObject);
begin
  inherited;
  if (not EdCodBan.Focused) then begin

     FinBan.Close;
     FinBan.Params[0].AsInteger := FatOr3CodBan.Value;
     FinBan.Open;

     if FinBanCodBan.Value = 0 then fmsgErro('Banco Informado não Encontrado',EdCodBan);

  end;
end;

procedure TfmManEp2.grOr3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
SeqOr3 : integer;
begin
  if key = 13 then begin {Tecla - ENTER}

     FatOr3.Edit;
     
     EdPraOr3.Enabled := True;
     EdDtvOr3.Enabled := True;
     EdVlpOr3.Enabled := True;
     EdCodBan.Enabled := True;

     EdPraOr3.SetFocus;

  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if FatOr3SeqOr3.Value = fmManEpe.FatOrcQtpOrc.Value then FatOr3.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if FatOr3CodEmp.Value > 0 then begin

        SeqOr3 := FatOr3SeqOr3.Value;

        FatOr3.Delete;

        with FatOr3 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if FatOr3.State <> dsBrowse then FatOr3.CancelUpdates;

                grOr3.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        FatOr3.Close;
        FatOr3.Open;

        fmManEpe.FatOrc.Close;
        fmManEpe.FatOrc.Open;

        EdTotGer.Text := FormatFloat('###,###,##0.00',fmManEpe.FatOrcTotGer.Value);
        EdLanOrc.Text := FormatFloat('###,###,##0.00',fmManEpe.FatOrcLanOrc.Value);
        EdSldOrc.Text := FormatFloat('###,###,##0.00',fmManEpe.FatOrcSldOrc.Value);

        if SeqOr3 < fmManEpe.FatOrcQtpOrc.Value then
           FatOr3.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqOrc;SeqOr3',VarArrayOf([FatOr3CodEmp.Value,FatOr3DteRes.Value,FatOr3NumRes.Value,FatOr3SeqLib.Value,FatOr3SeqOrc.Value,SeqOr3]),[LoPartialKey])
        else
           begin

           if fmManEpe.FatOrcQtpOrc.Value = 0 then
              FatOr3.Append
           else
              FatOr3.Last;

        end;
     end;
  end;
end;

procedure TfmManEp2.EdCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqBan := TfmPsqBan.Create(Self);

        fmPsqBan.ShowModal;

        if fmPsqBan.CodBan > 0 then begin

           if FatOr3.State = dsBrowse then begin

              if FatOr3CodEmp.Value > 0 then
                 FatOr3.Edit
              else
                 FatOr3.Append;

           end;

           FatOr3CodBan.Value := fmPsqBan.CodBan;

        end;

     finally   

        FreeAndNil(fmPsqBan);

     end;
  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'B';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodBan > 0 then begin

           if FatOr3.State = dsBrowse then begin

              if FatOr3CodEmp.Value > 0 then
                 FatOr3.Edit
              else
                 FatOr3.Append;

           end;

           FatOr3CodBan.Value := fmAuxPsq.CodBan;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManEp2.EdPraOr3KeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManEp2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if FatOr3.State <> dsBrowse then FatOr3.CancelUpdates;
end;

procedure TfmManEp2.Panel1Exit(Sender: TObject);
var
SeqOr3 : integer;
begin
  if psaida = 'Nao' then begin

     if FatOr3.State <> dsBrowse then begin

        FinBan.Close;
        FinBan.Params[0].AsInteger := FatOr3CodBan.Value;
        FinBan.Open;

        if FinBanCodBan.Value = 0 then fmsgErro('Banco Informado não Encontrado',EdCodBan);

        if FatOr3VlpOr3.Value = 0 then fmsgErro('Valor da Parcela para o Vencimento não Informado',EdVlpOr3);

        if FatOr3DtvOr3.Value < fmManEpe.FatOrcDteOrc.Value then fmsgErro('Data de Vencimento Informada Inferior a Data de Emissão do Romaneio.',EdDtvOr3);

        if FatOr3.State = dsInsert then begin

           with FatOr3 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if FatOr3.State = dsBrowse then FatOr3.Edit;

                   EdPraOr3.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           FatOr3.Close;
           FatOr3.Open;

           fmManEpe.FatOrc.Close;
           fmManEpe.FatOrc.Open;

           EdLanOrc.Text := FormatFloat('###,###,##0.00',fmManEpe.FatOrcLanOrc.Value);
           EdSldOrc.Text := FormatFloat('###,###,##0.00',fmManEpe.FatOrcSldOrc.Value);

           FatOr3.Append;

           EdPraOr3.SetFocus;

           end
        else
           begin

           SeqOr3 := FatOr3SeqOr3.Value;

           with FatOr3 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if FatOr3.State = dsBrowse then FatOr3.Edit;

                   EdPraOr3.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           FatOr3.Close;
           FatOr3.Open;

           fmManEpe.FatOrc.Close;
           fmManEpe.FatOrc.Open;

           FatOr3.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqOrc;SeqOr3',VarArrayOf([fmManEpe.FatOrcCodEmp.Value,fmManEpe.FatOrcDteRes.Value,fmManEpe.FatOrcNumRes.Value,fmManEpe.FatOrcSeqLib.Value,fmManEpe.FatOrcSeqOrc.Value,SeqOr3]),[LoPartialKey]);

           EdLanOrc.Text := FormatFloat('###,###,##0.00',fmManEpe.FatOrcLanOrc.Value);
           EdSldOrc.Text := FormatFloat('###,###,##0.00',fmManEpe.FatOrcSldOrc.Value);

           if FatOr3SeqOr3.Value = fmManEpe.FatOrcQtpOrc.Value then
              FatOr3.Append
           else
              begin

              EdPraOr3.Enabled := False;
              EdDtvOr3.Enabled := False;
              EdVlpOr3.Enabled := False;
              EdCodBan.Enabled := False;

              grOr3.SetFocus;

           end;
        end;

        end
     else
        begin

        EdPraOr3.Enabled := False;
        EdDtvOr3.Enabled := False;
        EdVlpOr3.Enabled := False;
        EdCodBan.Enabled := False;

        grOr3.SetFocus;

     end;
  end;   
end;

procedure TfmManEp2.EdDtvOr3Exit(Sender: TObject);
begin
  if psaida = 'Nao' then begin

     if FatOr3DtvOr3.Value >= fmManEpe.FatOrcDteOrc.Value then begin

        FatOr3PraOr3.Value := StrToInt(FloatToStr(FatOr3DtvOr3.Value - fmManEpe.FatOrcDteOrc.Value));

        if FatOr3PraOr3.Value > 0 then
           EdPraOr3.Text := IntToStr(FatOr3PraOr3.Value)
        else
           EdPraOr3.Text := '0';

        end
     else
        fmsgErro('Data de Vencimento Informada Inferior a Data de Emissão do Romaneio.',EdDtvOr3);
        
  end;
end;

procedure TfmManEp2.FatOr3NewRecord(DataSet: TDataSet);
begin

  FatOr3.DisableControls;

  FatOr3PraOr3.Value := 0;
  FatOr3VlpOr3.Value := 0;
  FatOr3FlgInt.Value := ' ';
  FatOr3CodBan.Value := 888;
  FatOr3DtvOr3.Value := fmManEpe.FatOrcDteOrc.Value;
  FatOr3CodEmp.Value := fmManEpe.FatOrcCodEmp.Value;
  FatOr3DteRes.Value := fmManEpe.FatOrcDteRes.Value;
  FatOr3NumRes.Value := fmManEpe.FatOrcNumRes.Value;
  FatOr3SeqLib.Value := fmManEpe.FatOrcSeqLib.Value;
  FatOr3SeqOrc.Value := fmManEpe.FatOrcSeqOrc.Value;
  FatOr3SeqOr3.Value := fmManEpe.FatOrcSqpOrc.Value + 1;
  FatOr3NroOr3.Value := fmManEpe.FatOrcQtpOrc.Value + 1;

  FatOr3.EnableControls;

  EdPraOr3.Text := '0';

  EdCodBan.Text := '888';

  EdDtvOr3.Text := DateToStr(FatOr3DtvOr3.Value);

  EdPraOr3.Enabled := True;
  EdDtvOr3.Enabled := True;
  EdVlpOr3.Enabled := True;
  EdCodBan.Enabled := True;

  EdPraOr3.SetFocus;

end;

procedure TfmManEp2.RDprint1NewPage(Sender: TObject; Pagina: Integer);
begin

  rdPrint1.impf(01,001,'Romaneio    : '+preString(fNumZeros(IntToStr(fmManEpe.FatOrcNumRes.Value),7),7),[NORMAL, NEGRITO]);
  rdPrint1.impf(01,109,'Data : '+DateToStr(fmManEpe.FatOrcDteOrc.Value),[NORMAL, NEGRITO]);
  rdPrint1.impf(02,001,'Vendedor    : '+preString(fNumZeros(IntToStr(fmManEpe.FatOrcCodVen.Value),7),7)+' - '+copy(Trim(NomVen),1,21),[NORMAL, NEGRITO]);
  rdPrint1.impf(02,083,'Fone : '+FonVen,[NORMAL, NEGRITO]);

  rdPrint1.impf(03,001,'Cliente     : '+preString(fNumZeros(IntToStr(fmManEpe.FatOrcCodCli.Value),7),7)+' - '+copy(Trim(NomCli),1,40)+' / '+copy(Trim(ApeCli),1,20),[NORMAL, NEGRITO]);
  rdPrint1.impf(04,001,'Endereco    : '+EndFat,[NORMAL, NEGRITO]);
  rdPrint1.impf(04,088,'Bairro : '+copy(Trim(BafCli),1,20),[NORMAL, NEGRITO]);
  rdPrint1.impf(05,001,'Cidade      : '+copy(Trim(CifCli),1,36),[NORMAL, NEGRITO]);
  rdPrint1.impf(05,088,'Estado : '+UffCli,[NORMAL, NEGRITO]);
  rdPrint1.impf(05,112,'Cep : '+copy(CefCli,1,5)+'-'+copy(CefCli,6,3),[NORMAL, NEGRITO]);

  rdPrint1.impf(06,001,'Cobranca    : '+EndCob,[NORMAL, NEGRITO]);
  rdPrint1.impf(06,088,'Bairro : '+copy(Trim(BacCli),1,20),[NORMAL, NEGRITO]);
  rdPrint1.impf(07,001,'Cidade      : '+copy(Trim(CicCli),1,36),[NORMAL, NEGRITO]);
  rdPrint1.impf(07,088,'Estado : '+UfcCli,[NORMAL, NEGRITO]);
  rdPrint1.impf(07,112,'Cep : '+copy(CecCli,1,5)+'-'+copy(CecCli,6,3),[NORMAL, NEGRITO]);

  RdPrint1.impf(08,001,fReplicate('-',80),[NORMAL]);
  RdPrint1.impf(09,001,'N.Codigo',[NORMAL]);
  RdPrint1.impf(09,026,'Descricao',[NORMAL]);
  RdPrint1.impf(09,096,'Qtde',[NORMAL]);
  RdPrint1.impf(09,112,'Preco',[NORMAL]);
  RdPrint1.impf(09,129,'Total',[NORMAL]);
  RdPrint1.impf(10,001,fReplicate('-',80),[NORMAL]);

  Linha := 11;

end;

procedure TfmManEp2.RDprint1BeforeNewPage(Sender: TObject; Pagina: Integer);
begin

  NroPag := NroPag + 1;

  rdprint1.impf(64,114,'Pagina No. '+fNumZeros(IntToStr(NroPag),3),[NORMAL]);

end;

procedure TfmManEp2.FormCreate(Sender: TObject);
begin
  inherited;
  psaida := 'Nao';
end;

end.
