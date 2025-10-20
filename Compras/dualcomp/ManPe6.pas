unit ManPe6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, ppBands, ppClass, ppStrtch, ppMemo, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  FShowPadrao, dxDBColorDateEdit, dxDBColorEdit, dxDBColorCurrencyEdit;

type
  TfmManPe6 = class(TfmShowPadrao)
    CmpPe5: TwwQuery;
    DsPe5: TwwDataSource;
    FinFor: TwwQuery;
    PaintBox: TPaintBox;
    Bevel1: TBevel;
    Label10: TLabel;
    grPe5: ThGrid;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DsFor: TwwDataSource;
    UpPe5: TUpdateSQL;
    grPro: TdxDBGraphicEdit;
    quSQL: TwwQuery;
    EdTotGer: TAlignEdit;
    dbTotGer: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    bRetornar: TSpeedButton;
    bContinuar: TSpeedButton;
    Label4: TLabel;
    dbLanNot: TdxDBColorCurrencyEdit;
    EdLanNot: TAlignEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    dbSldNot: TdxDBColorCurrencyEdit;
    EdSldNot: TAlignEdit;
    Label12: TLabel;
    Label13: TLabel;
    Panel1: TPanel;
    EdDtvPe5: TdxDBColorDateEdit;
    EdValPe5: TdxDBColorCurrencyEdit;
    EdCodFor: TdxDBColorEdit;
    EdApeFor: TdxDBColorEdit;
    CmpPe5CODEMP: TIntegerField;
    CmpPe5DTEPED: TDateTimeField;
    CmpPe5NUMPED: TIntegerField;
    CmpPe5SEQPE5: TIntegerField;
    CmpPe5CODFOR: TIntegerField;
    CmpPe5DTVPE5: TDateTimeField;
    CmpPe5VALPE5: TFloatField;
    CmpPe5NROPE5: TIntegerField;
    FinForCODFOR: TIntegerField;
    FinForAPEFOR: TStringField;
    CmpPe5APEFOR: TStringField;
    DsReport: TppDBPipeline;
    DsReportppField1: TppField;
    DsReportppField2: TppField;
    DsReportppField3: TppField;
    DsReportppField4: TppField;
    DsReportppField5: TppField;
    DsReportppField6: TppField;
    DsReportppField7: TppField;
    DsReportppField8: TppField;
    DsReportppField9: TppField;
    DsReportppField10: TppField;
    DsReportppField11: TppField;
    DsReportppField12: TppField;
    DsReportppField13: TppField;
    DsReportppField14: TppField;
    DsReportppField15: TppField;
    DsReportppField16: TppField;
    DsReportppField17: TppField;
    DsReportppField18: TppField;
    DsReportppField19: TppField;
    DsReportppField20: TppField;
    DsReportppField21: TppField;
    DsReportppField22: TppField;
    DsReportppField23: TppField;
    DsReportppField24: TppField;
    DsReportppField25: TppField;
    DsReportppField26: TppField;
    DsReportppField27: TppField;
    DsReportppField28: TppField;
    DsReportppField29: TppField;
    DsReportppField30: TppField;
    DsReportppField31: TppField;
    DsReportppField32: TppField;
    DsReportppField33: TppField;
    DsReportppField34: TppField;
    DsReportppField35: TppField;
    DsReportppField36: TppField;
    DsReportppField37: TppField;
    DsReportppField38: TppField;
    DsReportppField39: TppField;
    DsReportppField40: TppField;
    DsReportppField41: TppField;
    DsReportppField42: TppField;
    DsReportppField43: TppField;
    DsReportppField44: TppField;
    DsReportppField45: TppField;
    DsReportppField46: TppField;
    DsReportppField47: TppField;
    DsReportppField48: TppField;
    DsReportppField49: TppField;
    DsReportppField50: TppField;
    DsReportppField51: TppField;
    DsReportppField52: TppField;
    DsReportppField53: TppField;
    DsReportppField54: TppField;
    DsReportppField55: TppField;
    DsReportppField56: TppField;
    DsReportppField57: TppField;
    DsReportppField58: TppField;
    DsReportppField59: TppField;
    DsReportppField60: TppField;
    DsReportppField61: TppField;
    DsReportppField62: TppField;
    DsReportppField63: TppField;
    DsReportppField64: TppField;
    DsReportppField65: TppField;
    DsReportppField66: TppField;
    DsReportppField67: TppField;
    DsReportppField68: TppField;
    DsReportppField69: TppField;
    p1Report: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppApeEmp: TppLabel;
    ppNomEmp: TppLabel;
    ppEndEmp: TppLabel;
    ppRefEmp: TppLabel;
    ppTitulo: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppImagem: TppImage;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel8: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel63: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppCgcEmp: TppLabel;
    ppLabel37: TppLabel;
    ppInsEmp: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLabel12: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine5: TppLine;
    ppLine2: TppLine;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel39: TppLabel;
    ppLabel15: TppLabel;
    ppLine6: TppLine;
    ppLabel40: TppLabel;
    ppLine13: TppLine;
    ppLine10: TppLine;
    ppLabel42: TppLabel;
    p1CodFor: TppLabel;
    p1NomFor: TppLabel;
    p1EndFor: TppLabel;
    p1BaiFor: TppLabel;
    p1FonFor: TppLabel;
    p1NomCon: TppLabel;
    p1NomUsu: TppLabel;
    p1FaxFor: TppLabel;
    p1CidFor: TppLabel;
    p1SigUfe: TppLabel;
    dbReport: TppDetailBand;
    ppQtpPe2: TppDBText;
    ppCodUnd: TppDBText;
    ppVlqPe2: TppDBText;
    ppTotGe2: TppDBText;
    p1Memo: TppMemo;
    ppIcmPe2: TppDBText;
    ppIpiPe2: TppDBText;
    ppPacPe2: TppDBText;
    p1ValVen: TppDBText;
    p1TotRen: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine7: TppLine;
    ppLabel35: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel22: TppLabel;
    ppLabel20: TppLabel;
    ppLabel18: TppLabel;
    ppLabel34: TppLabel;
    ppLabel16: TppLabel;
    p1TotPed: TppLabel;
    p1ObsCnd: TppLabel;
    p1DpePed: TppLabel;
    p1PrePed: TppLabel;
    p1NomVen: TppLabel;
    p1ObsPed: TppMemo;
    ppLabel41: TppLabel;
    p1TotAcc: TppLabel;
    ppLabel65: TppLabel;
    p1TotGer: TppLabel;
    p2Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    p2ApeEmp: TppLabel;
    p2NomEmp: TppLabel;
    p2EndEmp: TppLabel;
    p2RefEmp: TppLabel;
    p2Titulo: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel50: TppLabel;
    ppLabel56: TppLabel;
    ppLine16: TppLine;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    p2Imagem: TppImage;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel74: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel75: TppLabel;
    p2CgcEmp: TppLabel;
    ppLabel77: TppLabel;
    p2InsEmp: TppLabel;
    ppLine21: TppLine;
    ppLabel79: TppLabel;
    ppLine22: TppLine;
    ppLabel80: TppLabel;
    ppLine23: TppLine;
    ppLabel81: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    p2CodFor: TppLabel;
    p2EndFor: TppLabel;
    p2BaiFor: TppLabel;
    p2FonFor: TppLabel;
    p2NomCon: TppLabel;
    p2NomUsu: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    p2FaxFor: TppLabel;
    p2CidFor: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    p2SigUfe: TppLabel;
    p2NomFor: TppLabel;
    ppLabel86: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    p2Memo: TppMemo;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine30: TppLine;
    ppLabel87: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel97: TppLabel;
    p2ObsCnd: TppLabel;
    p2DpePed: TppLabel;
    p2NomVen: TppLabel;
    p2ObsPed: TppMemo;
    p2PrePed: TppLabel;
    ppLabel68: TppLabel;
    p2TotPed: TppLabel;
    ppLabel64: TppLabel;
    p2TotAcc: TppLabel;
    ppLabel67: TppLabel;
    p2TotGer: TppLabel;
    CmpPe5FLGPAG: TStringField;
    EdFlgPag: TdxDBCheckEdit;
    Label6: TLabel;
    CmpPe5FLGINT: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdCodForExit(Sender: TObject);
    procedure grPe5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel1Exit(Sender: TObject);
    procedure EdDtvPe5Exit(Sender: TObject);
    procedure CmpPe5NewRecord(DataSet: TDataSet);
    procedure bContinuarClick(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure DsPe5DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPe6: TfmManPe6;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManPed, AuxIni, AuxPsq,
     ManPe3, RelPfo, Fpreview;

{$R *.DFM}

procedure TfmManPe6.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then begin

     if CmpPe5.State <> dsBrowse then CmpPe5.CancelUpdates;

     if EdFlgPag.Enabled then begin

        EdFlgPag.Enabled := False;
        EdDtvPe5.Enabled := False;
        EdValPe5.Enabled := False;
        EdCodFor.Enabled := False;

        grPe5.SetFocus;

        end
     else
        bRetornar.OnClick(Sender);
  end;

  if key = 123 then begin

     if grPe5.Focused then bContinuar.OnClick(Sender);

  end;
end;

procedure TfmManPe6.FormShow(Sender: TObject);
begin
  inherited;
  
  EdTotGer.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);
  EdLanNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedLanGer.Value);
  EdSldNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedSldGer.Value);

  CmpPe5.Close;
  CmpPe5.Params[0].AsInteger  := fmManPed.CmpPedCodEmp.Value;
  CmpPe5.Params[1].AsDateTime := fmManPed.CmpPedDtePed.Value;
  CmpPe5.Params[2].AsInteger  := fmManPed.CmpPedNumPed.Value;
  CmpPe5.Open;

  FinFor.Close;
  FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
  FinFor.Open;
  
  if fmManPed.CmpPedQtpPed.Value > 0 then
     grPe5.SetFocus
  else
     begin

     CmpPe5.Append;

     EdFlgPag.SetFocus;

  end;
end;

procedure TfmManPe6.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManPe6.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe6.FormDestroy(Sender: TObject);
begin
  inherited;
  Screen.OnActiveControlChange := nil;
end;

procedure TfmManPe6.EdCodForExit(Sender: TObject);
begin
  inherited;
  if not EdCodFor.Focused then begin

     FinFor.Close;
     FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
     FinFor.Open;

     if FinForCodFor.Value = 0 then fmsgErro('Fornecedor Informado não Encontrado.',EdCodFor);

  end;
end;

procedure TfmManPe6.grPe5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
SeqPe5 : integer;
begin
  if key = 13 then begin {Tecla - ENTER}

     CmpPe5.Edit;

     EdFlgPag.Enabled := True;
     EdDtvPe5.Enabled := True;
     EdValPe5.Enabled := True;
     EdCodFor.Enabled := True;

     EdFlgPag.SetFocus;

  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if CmpPe5NroPe5.Value = fmManPed.CmpPedQtpPed.Value then CmpPe5.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if CmpPe5CodEmp.Value > 0 then begin

        SeqPe5 := CmpPe5SeqPe5.Value;

        CmpPe5.Delete;

        with CmpPe5 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpPe5.State <> dsBrowse then CmpPe5.CancelUpdates;

                grPe5.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        CmpPe5.Close;
        CmpPe5.Open;

        fmManPed.CmpPed.Close;
        fmManPed.CmpPed.Open;

        EdTotGer.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);
        EdLanNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedLanGer.Value);
        EdSldNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedSldGer.Value);

        if SeqPe5 < fmManPed.CmpPedQtpPed.Value then
           CmpPe5.Locate('CodEmp;DtePed;NumPed;SeqPe5',VarArrayOf([CmpPe5CodEmp.Value,CmpPe5DtePed.Value,CmpPe5NumPed.Value,SeqPe5]),[LoPartialKey])
        else
           begin

           if fmManPed.CmpPedQtpPed.Value = 0 then
              CmpPe5.Append
           else
              CmpPe5.Last;

        end;
     end;
  end;
end;

procedure TfmManPe6.EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then CmpPe5CodFor.Value := fmAuxIni.CodFor;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     FinFor.Close;
     FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
     FinFor.Open;

     EdCodFor.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then CmpPe5CodFor.Value := fmAuxPsq.CodFor;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     FinFor.Close;
     FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
     FinFor.Open;

     EdCodFor.SetFocus;

  end;
end;

procedure TfmManPe6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if CmpPe5.State <> dsBrowse then CmpPe5.CancelUpdates;
end;

procedure TfmManPe6.Panel1Exit(Sender: TObject);
var
SeqPe5 : integer;
begin
  if CmpPe5.State <> dsBrowse then begin

     FinFor.Close;
     FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
     FinFor.Open;

     if FinForCodFor.Value = 0 then fmsgErro('Fornecedor Informado não Encontrado.',EdCodFor);

     if CmpPe5ValPe5.Value = 0 then fmsgErro('Valor da Parcela para o Vencimento não Informado',EdValPe5);

     try

        if CmpPe5.State = dsInsert then begin

           with CmpPe5 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if CmpPe5.State <> dsBrowse then CmpPe5.Edit;

                   EdFlgPag.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           CmpPe5.Close;
           CmpPe5.Open;

           fmManPed.CmpPed.Close;
           fmManPed.CmpPed.Open;

           EdTotGer.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);
           EdLanNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedLanGer.Value);
           EdSldNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedSldGer.Value);

           CmpPe5.Append;

           EdFlgPag.SetFocus;

           end
        else
           begin

           SeqPe5 := CmpPe5SeqPe5.Value;

           with CmpPe5 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if CmpPe5.State = dsBrowse then CmpPe5.Edit;

                   EdFlgPag.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           CmpPe5.Close;
           CmpPe5.Open;

           fmManPed.CmpPed.Close;
           fmManPed.CmpPed.Open;

           EdTotGer.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);
           EdLanNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedLanGer.Value);
           EdSldNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedSldGer.Value);

           CmpPe5.Locate('CodEmp;DtePed;NumPed;SeqPe5',VarArrayOf([fmManPed.CmpPedCodEmp.Value,fmManPed.CmpPedDtePed.Value,fmManPed.CmpPedNumPed.Value,SeqPe5]),[LoPartialKey]);

           if CmpPe5NroPe5.Value = fmManPed.CmpPedQtpPed.Value then
              CmpPe5.Append
           else
              begin

              CmpPe5.Next;

              EdFlgPag.Enabled := False;
              EdDtvPe5.Enabled := False;
              EdValPe5.Enabled := False;
              EdCodFor.Enabled := False;

              grPe5.SetFocus;

           end;
        end;

     except

        CmpPe5.Edit;

        EdFlgPag.SetFocus;

     end;

     end
  else
     begin

     EdFlgPag.Enabled := False;
     EdDtvPe5.Enabled := False;
     EdValPe5.Enabled := False;
     EdCodFor.Enabled := False;

     grPe5.SetFocus;

  end;
end;

procedure TfmManPe6.EdDtvPe5Exit(Sender: TObject);
begin
  if (Tecla = 'UP') then begin

     if fmManPed.CmpPedQtpPed.Value > 0 then begin

        EdFlgPag.Enabled := False;
        EdDtvPe5.Enabled := False;
        EdValPe5.Enabled := False;
        EdCodFor.Enabled := False;

        if CmpPe5.State <> dsBrowse then
           CmpPe5.CancelUpdates
        else
           begin

           if not CmpPe5.Bof then CmpPe5.Prior;

        end;

        grPe5.Enabled := True;

        grPe5.SetFocus;

        end
     else
        EdFlgPag.SetFocus;
  end;
end;

procedure TfmManPe6.CmpPe5NewRecord(DataSet: TDataSet);
begin

  CmpPe5.DisableControls;

  CmpPe5ValPe5.Value := 0;
  CmpPe5FlgInt.Value := ' ';
  CmpPe5FlgPag.Value := 'Nao';
  CmpPe5DtvPe5.Value := fmManPed.CmpPedDpePed.Value;
  CmpPe5CodEmp.Value := fmManPed.CmpPedCodEmp.Value;
  CmpPe5DtePed.Value := fmManPed.CmpPedDtePed.Value;
  CmpPe5NumPed.Value := fmManPed.CmpPedNumPed.Value;
  CmpPe5SeqPe5.Value := fmManPed.CmpPedSqpPed.Value + 1;
  CmpPe5NroPe5.Value := fmManPed.CmpPedQtpPed.Value + 1;

  CmpPe5.EnableControls;

  FinFor.Close;
  FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
  FinFor.Open;

  EdDtvPe5.Text := DateToStr(CmpPe5DtvPe5.Value);

  EdFlgPag.Enabled := True;
  EdDtvPe5.Enabled := True;
  EdValPe5.Enabled := True;
  EdCodFor.Enabled := True;

  EdFlgPag.SetFocus;

end;

procedure TfmManPe6.bContinuarClick(Sender: TObject);
var
NroPe2 : integer;
sContinuar : string;
begin

  NroPe2 := fmManPed.CmpPe2NroPe2.Value;

  sContinuar := 'N';

  if fmManPed.CmpPedFlgOco.Value = '*' then begin

     try

        fmManPe3 := TfmManPe3.Create(Self);

        fmManPe3.ShowModal;

        sContinuar := fmManPe3.sContinuar;

     finally

        FreeAndNil(fmManPe3);

     end;

     end
  else
     sContinuar := 'S';

  if sContinuar = 'S' then begin

     if fMsg('Confirma Pedido de Compra ?','O') then begin

        fmManPed.CmpPed.Edit;

        if (Trim(fmManPed.CmpPedSitPed.Value) = 'Nao Concluido') or (Trim(fmManPed.CmpPedSitPed.Value) = 'Processo de Alteracao') then
           fmManPed.CmpPedSitPed.Value := 'Concluido'
        else
           fmManPed.CmpPedFlgAtu.Value := '*';

        with fmManPed.CmpPed do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                fmManPed.Finalizar := 'N';

                if fmManPed.CmpPed.State <> dsBrowse then fmManPed.CmpPed.CancelUpdates;

                fmManPed.CmpPed.Edit;

                grPe5.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManPed.CmpPed.Close;
        fmManPed.CmpPed.Open;

        fmManPed.CmpPe2.Close;
        fmManPed.CmpPe2.Open;

        fmManPed.CmpPe2.Locate('CodEmp;DtePed;NumPed;NroPe2',VarArrayOf([fmManPed.CmpPe2CodEmp.Value,fmManPed.CmpPe2DtePed.Value,fmManPed.CmpPedNumPed.Value,NroPe2]),[LoPartialKey]);

        fmManPed.Finalizar := 'S';

        if fMsg('Confirma a Impressão da via Interna do Pedido de Compra ?','O') then begin

           try

              p1Report.DeviceType := 'Screen';
              fmPreview := TfmPreview.Create(fmManPe6);
              fmPreview.ppViewer.Report := p1Report;
              p1Report.PrintToDevices;
              fmPreview.ShowModal;

              if Assigned(p1Report.AfterPrint) then p1Report.AfterPrint(Sender);

           finally

              FreeAndNil(fmPreview);

           end;
        end;

        if fMsg('Confirma a Impressão da via Fornecedor do Pedido de Compra ?','O') then begin

           try

              fmRelPfo := TfmRelPfo.Create(Self);

              fmRelPfo.CmpPed.Close;
              fmRelPfo.CmpPed.Params[0].AsInteger  := fmManPed.CmpPedCodEmp.Value;
              fmRelPfo.CmpPed.Params[1].AsDateTime := fmManPed.CmpPedDtePed.Value;
              fmRelPfo.CmpPed.Params[2].AsInteger  := fmManPed.CmpPedNumPed.Value;
              fmRelPfo.CmpPed.Open;

              fmRelPfo.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmRelPfo);

           end;
        end;

        Close;

     end;
  end;
end;

procedure TfmManPe6.ppHeaderBand3BeforePrint(Sender: TObject);
begin

  if FileExists('C:\Emerion\Print.bmp') then
     ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     ppImagem.Picture.Bitmap.FreeImage;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;
  ppCgcEmp.Caption := GCgcEmp;
  ppInsEmp.Caption := GInsEmp;

  ppTitulo.Caption := 'Pedido de Compra No. '+ fNumZeros(IntToStr(fmManPed.CmpPe2NumPed.Value),7)+ ' - ' + FormatDateTime('dd/mm/yyyy',fmManPed.CmpPe2DtePed.Value);

  p1CodFor.Caption := IntToStr( fmManPed.CmpPedCodFor.Value );
  p1NomFor.Caption := fmManPed.CmpPedNomFor.Value;
  p1EndFor.Caption := fmManPed.CmpPedEndFor.Value;
  p1BaiFor.Caption := fmManPed.CmpPedBaiFor.Value;
  p1CidFor.Caption := fmManPed.CmpPedCidFor.Value;
  p1SigUfe.Caption := fmManPed.CmpPedSigUfe.Value;
  p1FonFor.Caption := fmManPed.CmpPedFonFor.Value;
  p1FaxFor.Caption := fmManPed.CmpPedFaxFor.Value;
  p1NomCon.Caption := fmManPed.CmpPedNomCon.Value;
  p1NomUsu.Caption := fmManPed.CmpPedLogUsu.Value;

end;

procedure TfmManPe6.dbReportBeforePrint(Sender: TObject);
begin

  p1Memo.Lines.Clear;
  p1Memo.Lines.Add(fmManPed.CmpPe2DesPe2.Value);

  if Trim( fmManPed.CmpPe2CodPfo.Value ) <> '' then
     p1Memo.Lines.Add(fmManPed.CmpPe2CodClp.Value+ '-' +fmManPed.CmpPe2CodGru.Value+ '.' +fmManPed.CmpPe2CodSub.Value+ '.' +fmManPed.CmpPe2CodPro.Value+ ' - ' +fmManPed.CmpPe2CodPfo.Value)
  else
     p1Memo.Lines.Add(fmManPed.CmpPe2CodClp.Value+ '-' +fmManPed.CmpPe2CodGru.Value+ '.' +fmManPed.CmpPe2CodSub.Value+ '.' +fmManPed.CmpPe2CodPro.Value);

  if Trim( fmManPed.CmpPe2ObsPe2.Value ) <> '' then p1Memo.Lines.Add(fmManPed.CmpPe2ObsPe2.Value);
  if Trim( fmManPed.CmpPe2ObsPe3.Value ) <> '' then p1Memo.Lines.Add(fmManPed.CmpPe2ObsPe3.Value);

end;

procedure TfmManPe6.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin

  p1TotPed.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotPed.Value);
  p1TotAcc.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotAcc.Value);
  p1TotGer.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);

  p1ObsCnd.Caption := fmManPed.CmpPedObsCnd.Value;

  p1DpePed.Caption := FormatDatetime('dd/mm/yyyy',fmManPed.CmpPedDpePed.Value);

  if fmManPed.CmpPedPrePed.Value > 0 then
     p1PrePed.Caption := IntToStr( fmManPed.CmpPedPrePed.Value )
  else
     p1PrePed.Caption := '0';

  p1NomVen.Caption := fmManPed.CmpPedNomVen.Value;

  p1ObsPed.Lines.Clear;

  p1ObsPed.Lines.Add( fmManPed.CmpPedObsPed.Value );

end;

procedure TfmManPe6.ppHeaderBand1BeforePrint(Sender: TObject);
begin

  if FileExists('C:\Emerion\Print.bmp') then
     p2Imagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     p2Imagem.Picture.Bitmap.FreeImage;

  p2ApeEmp.Caption := GApeEmp;
  p2NomEmp.Caption := GRazEmp;
  p2EndEmp.Caption := GEndEmp;
  p2RefEmp.Caption := GRefEmp;
  p2CgcEmp.Caption := GCgcEmp;
  p2InsEmp.Caption := GInsEmp;

  p2Titulo.Caption := 'Pedido de Compra No. '+ fNumZeros(IntToStr(fmManPed.CmpPe2NumPed.Value),7)+ ' - ' + FormatDateTime('dd/mm/yyyy',fmManPed.CmpPe2DtePed.Value)+ ' ( Fornecedor ) ';

  p2CodFor.Caption := IntToStr( fmManPed.CmpPedCodFor.Value );
  p2NomFor.Caption := fmManPed.CmpPedNomFor.Value;
  p2EndFor.Caption := fmManPed.CmpPedEndFor.Value;
  p2BaiFor.Caption := fmManPed.CmpPedBaiFor.Value;
  p2CidFor.Caption := fmManPed.CmpPedCidFor.Value;
  p2SigUfe.Caption := fmManPed.CmpPedSigUfe.Value;
  p2FonFor.Caption := fmManPed.CmpPedFonFor.Value;
  p2FaxFor.Caption := fmManPed.CmpPedFaxFor.Value;
  p2NomCon.Caption := fmManPed.CmpPedNomCon.Value;
  p2NomUsu.Caption := fmManPed.CmpPedLogUsu.Value;

end;

procedure TfmManPe6.ppDetailBand1BeforePrint(Sender: TObject);
begin

  p2Memo.Lines.Clear;
  p2Memo.Lines.Add(fmManPed.CmpPe2DesPe2.Value);

  if Trim( fmManPed.CmpPe2CodPfo.Value ) <> '' then
     p2Memo.Lines.Add(fmManPed.CmpPe2CodClp.Value+ '-' +fmManPed.CmpPe2CodGru.Value+ '.' +fmManPed.CmpPe2CodSub.Value+ '.' +fmManPed.CmpPe2CodPro.Value+ ' - ' +fmManPed.CmpPe2CodPfo.Value)
  else
     p2Memo.Lines.Add(fmManPed.CmpPe2CodClp.Value+ '-' +fmManPed.CmpPe2CodGru.Value+ '.' +fmManPed.CmpPe2CodSub.Value+ '.' +fmManPed.CmpPe2CodPro.Value);

  if Trim( fmManPed.CmpPe2ObsPe2.Value ) <> '' then p2Memo.Lines.Add(fmManPed.CmpPe2ObsPe2.Value);

end;

procedure TfmManPe6.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin

  p2TotPed.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotPed.Value);
  p2TotAcc.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotAcc.Value);
  p2TotGer.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);

  p2ObsCnd.Caption := fmManPed.CmpPedObsCnd.Value;

  p2DpePed.Caption := FormatDatetime('dd/mm/yyyy',fmManPed.CmpPedDpePed.Value);

  if fmManPed.CmpPedPrePed.Value > 0 then
     p2PrePed.Caption := IntToStr( fmManPed.CmpPedPrePed.Value )
  else
     p2PrePed.Caption := '0';

  p2NomVen.Caption := fmManPed.CmpPedNomVen.Value;

  p2ObsPed.Lines.Clear;

  p2ObsPed.Lines.Add( fmManPed.CmpPedObsPed.Value );

end;

procedure TfmManPe6.DsPe5DataChange(Sender: TObject; Field: TField);
begin
  if grPe5.Focused then begin

     if FinFor.Params[0].AsInteger <> CmpPe5CodFor.Value then begin

        FinFor.Close;
        FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
        FinFor.Open;

     end;
  end;
end;

end.
