unit ManPco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Db, Wwdatsrc, DBTables, Wwquery, dxPageControl, Buttons,
  ExtCtrls, StdCtrls, dxCntner, dxEditor, dxEdLib, ComCtrls, hNavigator,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBELib, dxExEdtr, dxDBEdtr, Menus,
  ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl, ppClass, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, dxDBColorCurrencyEdit,
  dxDBColorLookupEdit, dxDBColorEdit, dxColorEdit, dxDBColorDateEdit;

type
  TfmManPco = class(TfmPadrao)
    FinFor: TwwQuery;
    FinForCODFOR: TIntegerField;
    FinForNOMFOR: TStringField;
    FinForAPEFOR: TStringField;
    FinForCGCFOR: TStringField;
    FinForPRTFOR: TStringField;
    FinForFONFOR: TStringField;
    FinForCODBAN: TIntegerField;
    FinForNOMCNB: TStringField;
    FinForCONPLC: TIntegerField;
    FinForSUBPLC: TIntegerField;
    FinForINSFOR: TStringField;
    FinForFAXFOR: TStringField;
    FinForEMAFOR: TStringField;
    FinForWEBFOR: TStringField;
    FinForTENFOR: TStringField;
    FinForENDFOR: TStringField;
    FinForREFFOR: TStringField;
    FinForBAIFOR: TStringField;
    FinForCIDFOR: TStringField;
    FinForSIGUFE: TStringField;
    FinForCEPFOR: TStringField;
    FinForNUMFOR: TStringField;
    FinForPRFFOR: TStringField;
    dsFor: TwwDataSource;
    quSql: TwwQuery;
    pcFor: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    Panel1: TPanel;
    nvFor: ThDBNavigator;
    FinForCONFOR: TStringField;
    Label5: TLabel;
    Shape9: TShape;
    Shape10: TShape;
    EdCodFor: TdxDBColorEdit;
    Label9: TLabel;
    Label7: TLabel;
    EdNomFor: TdxDBColorEdit;
    Label6: TLabel;
    EdApeFor: TdxDBColorEdit;
    Label24: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    Shape6: TShape;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqNomFor: TdxColorEdit;
    EdPsqCodFor: TdxColorEdit;
    Label11: TLabel;
    EdPsqApeFor: TdxColorEdit;
    Shape2: TShape;
    bselecionar: TBitBtn;
    rgOrdem: TRadioGroup;
    rgBusca: TRadioGroup;
    Shape4: TShape;
    Label3: TLabel;
    Shape5: TShape;
    Panel3: TPanel;
    grFor: ThGrid;
    Label34: TLabel;
    Shape11: TShape;
    FinForCERFOR: TStringField;
    FinForENRFOR: TStringField;
    FinForRERFOR: TStringField;
    FinForTERFOR: TStringField;
    FinForNURFOR: TStringField;
    FinForBARFOR: TStringField;
    FinForCIRFOR: TStringField;
    FinForUFERET: TStringField;
    FinForPTRFOR: TStringField;
    FinForFORFOR: TStringField;
    FinForPFRFOR: TStringField;
    FinForFARFOR: TStringField;
    FinForCORFOR: TStringField;
    FinForCODAGB: TStringField;
    FinForCODCNB: TStringField;
    Label39: TLabel;
    EdPrtFor: TdxDBColorEdit;
    EdFonFor: TdxDBColorEdit;
    Label40: TLabel;
    EdPrfFor: TdxDBColorEdit;
    EdFaxFor: TdxDBColorEdit;
    Label41: TLabel;
    EdConFor: TdxDBColorEdit;
    Panel2: TPanel;
    nvPfo: ThDBNavigator;
    Shape1: TShape;
    Label13: TLabel;
    CmpPfo: TwwQuery;
    DsPfo: TwwDataSource;
    UpPfo: TUpdateSQL;
    CmpPfoCODFOR: TIntegerField;
    CmpPfoCODPFO: TStringField;
    CmpPfoCODCLP: TStringField;
    CmpPfoCODGRU: TStringField;
    CmpPfoCODSUB: TStringField;
    CmpPfoCODPRO: TStringField;
    CmpPfoVALPFO: TFloatField;
    CmpPfoDSCPFO: TFloatField;
    CmpPfoNROPFO: TIntegerField;
    CmpPfoDSCPRO: TStringField;
    FinForQTDPFO: TIntegerField;
    FinForSEQPFO: TIntegerField;
    FinForFLGTRG: TStringField;
    EstClp: TwwQuery;
    EstClpCODCLP: TStringField;
    EstClpNOMCLP: TStringField;
    DsClp: TwwDataSource;
    DsGru: TwwDataSource;
    EstGru: TwwQuery;
    EstGruCODGRU: TStringField;
    EstGruNOMGRU: TStringField;
    EstSub: TwwQuery;
    EstSubCODGRU: TStringField;
    EstSubCODSUB: TStringField;
    EstSubNOMSUB: TStringField;
    DsSub: TwwDataSource;
    DsPro: TwwDataSource;
    EstPro: TwwQuery;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    EstProDSCPRO: TStringField;
    EstProDSRPRO: TStringField;
    Panel4: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    EdCodPro: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodGru: TdxDBColorEdit;
    CbNomPro: TdxDBColorLookupEdit;
    CbNomSub: TdxDBColorLookupEdit;
    CbNomGru: TdxDBColorLookupEdit;
    Label8: TLabel;
    EdCodClp: TdxDBColorEdit;
    CbNomClp: TdxDBColorLookupEdit;
    EdCodPfo: TdxDBColorEdit;
    Label12: TLabel;
    Label14: TLabel;
    EdValPfo: TdxDBColorCurrencyEdit;
    Label17: TLabel;
    EdDscPfo: TdxDBColorCurrencyEdit;
    Label19: TLabel;
    EdObsPfo: TdxDBColorEdit;
    Panel5: TPanel;
    grCco: ThGrid;
    pnEmaFor: TPanel;
    pnWebFor: TPanel;
    pnText: TPanel;
    qrReport: TwwQuery;
    DsReport: TwwDataSource;
    qrReportCODFOR: TIntegerField;
    qrReportSEQPFO: TIntegerField;
    qrReportCODPFO: TStringField;
    qrReportCODCLP: TStringField;
    qrReportCODGRU: TStringField;
    qrReportCODSUB: TStringField;
    qrReportCODPRO: TStringField;
    qrReportVALPFO: TFloatField;
    qrReportDSCPFO: TFloatField;
    qrReportOBSPFO: TStringField;
    qrReportNROPFO: TIntegerField;
    qrReportFLGTRG: TStringField;
    qrReportDSCPRO: TStringField;
    qrReportCODITE: TStringField;
    qrReportNOMFOR: TStringField;
    ppReport: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppLabel50: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel8: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel45: TppLabel;
    dbReport: TppDetailBand;
    ppDBPipeline: TppDBPipeline;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel1: TppLabel;
    ppCodPfo: TppDBText;
    ppLabel2: TppLabel;
    ppCodIte: TppDBText;
    ppDscPro: TppDBText;
    ppLabel3: TppLabel;
    ppDscPfo: TppDBText;
    ppLabel4: TppLabel;
    ppValPfo: TppDBText;
    ppLabel5: TppLabel;
    ppObsPfo: TppDBText;
    ppLabel7: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLabel9: TppLabel;
    ppDBText1: TppDBText;
    Label10: TLabel;
    EdPerIpi: TdxDBColorCurrencyEdit;
    CmpPfoPERIPI: TFloatField;
    CmpPfoVALFIN: TFloatField;
    Label18: TLabel;
    EdValFin: TdxDBColorCurrencyEdit;
    ppLabel6: TppLabel;
    ppPerIpi: TppDBText;
    qrReportPERIPI: TFloatField;
    qrReportVALFIN: TFloatField;
    ppLabel10: TppLabel;
    ppDBText2: TppDBText;
    FinForCODTMO: TIntegerField;
    FinForCODPFA: TStringField;
    FinForTIPPFA: TStringField;
    FinTmo: TwwQuery;
    FinTmoNOMTMO: TStringField;
    FinTmoCODTMO: TIntegerField;
    DsTmo: TwwDataSource;
    FinForCODGFO: TIntegerField;
    FinForCODSUP: TIntegerField;
    FinForPERACR: TFloatField;
    UpFor: TUpdateSQL;
    CmpPfoMARKUP: TFloatField;
    Label27: TLabel;
    Label22: TLabel;
    EdDulCmp: TdxDBColorDateEdit;
    Label23: TLabel;
    EdUltCmp: TdxDBColorCurrencyEdit;
    Label28: TLabel;
    EdUltQtd: TdxDBColorCurrencyEdit;
    CmpPfoULTCMP: TFloatField;
    CmpPfoULTQTD: TFloatField;
    CmpPfoDULCMP: TDateTimeField;
    CmpPfoDIFICM: TFloatField;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label29: TLabel;
    EdPsqCodClp: TdxColorEdit;
    EdPsqCodGru: TdxColorEdit;
    EdPsqCodSub: TdxColorEdit;
    EdPsqCodPro: TdxColorEdit;
    bPsqPro: TSpeedButton;
    bPsqSub: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqClp: TSpeedButton;
    EdPsqNomClp: TdxColorEdit;
    EdPsqNomGru: TdxColorEdit;
    EdPsqNomSub: TdxColorEdit;
    EdPsqNomPro: TdxColorEdit;
    CmpPfoCODITE: TStringField;
    CmpPfoULTPFO: TFloatField;
    CmpPfoVARPFO: TFloatField;
    Label30: TLabel;
    EdUltPfo: TdxDBColorCurrencyEdit;
    Label31: TLabel;
    EdVarPfo: TdxDBColorCurrencyEdit;
    Label26: TLabel;
    EdMarkup: TdxDBColorCurrencyEdit;
    CmpPfoDSCPF1: TFloatField;
    CmpPfoDSCPF2: TFloatField;
    CmpPfoDSCPF3: TFloatField;
    CmpPfoDSCPF4: TFloatField;
    Label32: TLabel;
    EdDscPf1: TdxDBColorCurrencyEdit;
    Label33: TLabel;
    EdDscPf2: TdxDBColorCurrencyEdit;
    Label35: TLabel;
    EdDscPf3: TdxDBColorCurrencyEdit;
    Label36: TLabel;
    Label21: TLabel;
    EdJurPfo: TdxDBColorCurrencyEdit;
    Label37: TLabel;
    EdAcrPfo: TdxDBColorCurrencyEdit;
    CmpPfoJURPFO: TFloatField;
    CmpPfoACRPFO: TFloatField;
    CmpPfoPERMVA: TFloatField;
    Label38: TLabel;
    EdPerIcm: TdxDBColorCurrencyEdit;
    CmpPfoPERICM: TFloatField;
    CmpPfoTOTICM: TFloatField;
    CmpPfoTOTSUB: TFloatField;
    Label42: TLabel;
    EdPerMva: TdxDBColorCurrencyEdit;
    CmpPfoID_CMPPFO: TIntegerField;
    CmpPfoQTDMIN: TFloatField;
    CmpPfoFLGATU: TStringField;
    CmpPfoLOTPFO: TStringField;
    CmpPfoOBSPFO: TStringField;
    EdQtdMin: TdxDBColorCurrencyEdit;
    Label43: TLabel;
    Label44: TLabel;
    procedure FormShow(Sender: TObject);
    procedure pcPag1Show(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure grForDblClick(Sender: TObject);
    procedure bselecionarClick(Sender: TObject);
    procedure EdPsqCodForKeyPress(Sender: TObject; var Key: Char);
    procedure dsForDataChange(Sender: TObject; Field: TField);
    procedure CmpPfoNewRecord(DataSet: TDataSet);
    procedure Panel4Exit(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnEmaForDblClick(Sender: TObject);
    procedure pnWebForDblClick(Sender: TObject);
    procedure nvPfoSalva(Sender: TObject);
    procedure nvForImprime(Sender: TObject);
    procedure EdValPfoExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqCodClpExit(Sender: TObject);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure bPsqSubClick(Sender: TObject);
    procedure bPsqProClick(Sender: TObject);
    procedure EdPsqCodClpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CmpPfoCODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure EdCodClpEnter(Sender: TObject);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdCodPfoEnter(Sender: TObject);
    procedure EdCodPfoExit(Sender: TObject);
  private
    pSaida : string;
    {Private declarations}
  public
    sBase, sOrdem, sFiltro : string;
    {Public declarations}
  end;

var
  fmManPco: TfmManPco;

implementation

uses Fpreview, ShellAPI, BbMensag, Bbacesso, Bbgeral, Bbfuncao, PsqCep, ManGDB,
     ManPri, PsqClp, AuxIni, AuxPsq, PsqTmo;

{$R *.DFM}

procedure TfmManPco.FormCreate(Sender: TObject);
begin
  inherited;

  pSaida := 'Sim';

  sBase  := ' Select * From FinFor';
  
end;

procedure TfmManPco.bselecionarClick(Sender: TObject);
var
  sFiltro1: string;
begin
  inherited;

  ActiveControl := nil;
  
  sFiltro := '';

  {Ordem}
  case rgOrdem.ItemIndex of
       0: sOrdem := ' Order by FinFor.CodFor';
       1: sOrdem := ' Order by FinFor.ApeFor';
       2: sOrdem := ' Order by FinFor.NomFor';
  end;

  if Trim( EdPsqCodFor.Text ) <> '' then sFiltro := ' Where FinFor.CodFor = '+ QuotedStr(EdPsqCodFor.Text);

  if rgbusca.ItemIndex = 0 then begin

     if Trim( EdPsqApeFor.Text ) <> '' then sFiltro := ' Where FinFor.ApeFor LIKE '+ QuotedStr(EdPsqApeFor.Text +'%');
     if Trim( EdPsqNomFor.Text ) <> '' then sFiltro := ' Where FinFor.NomFor LIKE '+ QuotedStr(EdPsqNomFor.Text +'%');

     end
  else
     begin

     if Trim( EdPsqApeFor.Text ) <> '' then sFiltro := ' Where FinFor.ApeFor LIKE '+ QuotedStr('%'+ EdPsqApeFor.Text +'%');
     if Trim( EdPsqNomFor.Text ) <> '' then sFiltro := ' Where FinFor.NomFor LIKE '+ QuotedStr('%'+ EdPsqNomFor.Text +'%');

  end;

  sFiltro1 := '';
  
  if Trim( EdPsqCodClp.Text ) <> '' then sFiltro1 := sFiltro1 + ' and CmpPfo.CodClp = '+ QuotedStr(EdPsqCodClp.Text);
  if Trim( EdPsqCodGru.Text ) <> '' then sFiltro1 := sFiltro1 + ' and CmpPfo.CodGru = '+ QuotedStr(EdPsqCodGru.Text);
  if Trim( EdPsqCodSub.Text ) <> '' then sFiltro1 := sFiltro1 + ' and CmpPfo.CodSub = '+ QuotedStr(EdPsqCodSub.Text);
  if Trim( EdPsqCodPro.Text ) <> '' then sFiltro1 := sFiltro1 + ' and CmpPfo.CodPro = '+ QuotedStr(EdPsqCodPro.Text);

  if Trim( sFiltro1 ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and Exists(Select * From CmpPfo Where CmpPfo.CodFor = FinFor.CodFor'+ sFiltro1 +' )'
     else
        sFiltro := ' Where Exists(Select * From CmpPfo Where CmpPfo.CodFor = FinFor.CodFor'+ sFiltro1 +' )';

  end;
  
  with CmpPfo,SQL do begin

       Close;
       Text := ' Select CmpPfo.*,'+
               '        EstPro.DscPro'+
               ' From CmpPfo LEFT JOIN EstPro ON (CmpPfo.CodClp = EstPro.CodClp)'+
               '                             AND (CmpPfo.CodGru = EstPro.CodGru)'+
               '                             AND (CmpPfo.CodSub = EstPro.CodSub)'+
               '                             AND (CmpPfo.CodPro = EstPro.CodPro)'+
               ' Where CmpPfo.CodFor = :CodFor'+ sFiltro1 +
               ' Order by CmpPfo.CodFor,CmpPfo.CodPfo';
       Open;

  end;

  with FinFor,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;
end;

procedure TfmManPco.pcPag2Show(Sender: TObject);
begin
  inherited;

  pnText.Caption := '';

  if EdCodClp.Enabled then
     EdCodClp.SetFocus
  else
     EdCodPfo.SetFocus;
  
end;

procedure TfmManPco.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodFor.SetFocus;
end;

procedure TfmManPco.grForDblClick(Sender: TObject);
begin
  inherited;
  pcFor.ActivePage := pcPag2;
end;

procedure TfmManPco.FormShow(Sender: TObject);
begin
  inherited;

  PcFor.ActivePage := PcPag1;

  EdPsqCodFor.SetFocus;

end;

procedure TfmManPco.EdPsqCodForKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPco.dsForDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnEmaFor.Caption := FinForEmaFor.Value;
  pnWebFor.Caption := FinForWebFor.Value;

  if CmpPfo.Params[0].AsInteger <> FinForCodFor.Value then begin

     CmpPfo.Close;
     CmpPfo.Params[0].AsInteger := FinForCodFor.Value;
     CmpPfo.Open;

  end;

  if EstGru.Params[0].AsString <> CmpPfoCodClp.Value then begin

     EstGru.Close;
     EstGru.Params[0].AsString := CmpPfoCodClp.Value;
     EstGru.Open;

  end;

  if (EstSub.Params[0].AsString <> CmpPfoCodGru.Value) or (EstSub.Params[1].AsString <> CmpPfoCodClp.Value) then begin

     EstSub.Close;
     EstSub.Params[0].AsString := CmpPfoCodGru.Value;
     EstSub.Params[1].AsString := CmpPfoCodClp.Value;
     EstSub.Open;

  end;

  if (EstPro.Params[0].AsString <> CmpPfoCodClp.Value) or
     (EstPro.Params[1].AsString <> CmpPfoCodGru.Value) or
     (EstPro.Params[2].AsString <> CmpPfoCodSub.Value) then begin

     EstPro.Close;
     EstPro.Params[0].AsString := CmpPfoCodClp.Value;
     EstPro.Params[1].AsString := CmpPfoCodGru.Value;
     EstPro.Params[2].AsString := CmpPfoCodSub.Value;
     EstPro.Open;

  end;

  if not nvPfo.Salvar then begin

     if EdCodClp.Enabled then begin

        pSaida := 'Nao';

        EdCodClp.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;

        EdCodClp.Font.Style := [fsBold];
        EdCodGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];

        pSaida := 'Sim';

     end;
  end;
end;

procedure TfmManPco.CmpPfoNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpPfo.DisableControls;

  CmpPfoId_CmpPfo.Value := 0;

  CmpPfoUltPfo.Value := 0;
  CmpPfoValPfo.Value := 0;
  CmpPfoVarPfo.Value := 0;
  CmpPfoDifIcm.Value := 0;
  CmpPfoDscPfo.Value := 0;
  CmpPfoDscPf1.Value := 0;
  CmpPfoDscPf2.Value := 0;
  CmpPfoDscPf3.Value := 0;
  CmpPfoDscPf4.Value := 0;
  CmpPfoJurPfo.Value := 0;
  CmpPfoAcrPfo.Value := 0;
  CmpPfoPerIpi.Value := 0;
  CmpPfoPerIcm.Value := 0;
  CmpPfoMarkup.Value := 0;
  CmpPfoPerMva.Value := 0;
  CmpPfoTotIcm.Value := 0;
  CmpPfoTotSub.Value := 0;
  CmpPfoValFin.Value := 0;
  CmpPfoQtdMin.Value := 0;
  CmpPfoUltCmp.Value := 0;
  CmpPfoUltQtd.Value := 0;
  CmpPfoFlgAtu.Value := ' ';
  CmpPfoCodClp.Value := '1';
  CmpPfoCodFor.Value := FinForCodFor.Value;
  CmpPfoNroPfo.Value := FinForQtdPfo.Value + 1;

  CmpPfo.EnableControls;

  EdCodClp.Enabled := True;
  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;

  EdCodClp.Font.Style := [];
  EdCodGru.Font.Style := [];
  EdCodSub.Font.Style := [];
  EdCodPro.Font.Style := [];

  EdCodGru.SetFocus;

end;

procedure TfmManPco.Panel4Exit(Sender: TObject);
var
  Operac : string;
begin
  inherited;
  if pSaida = 'Sim' then begin

     if nvPfo.Salvar then begin

        if Trim( CmpPfoLotPfo.Value ) = '' then CmpPfoLotPfo.Clear;
        if Trim( CmpPfoObsPfo.Value ) = '' then CmpPfoObsPfo.Clear;

        CmpPfoCodPfo.Value := Trim(CmpPfoCodPfo.Value);
     
        if Trim( CmpPfoCodPfo.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodPfo);

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From EstPro'+
                     ' Where EstPro.CodClp = :CodClp'+
                     '   and EstPro.CodGru = :CodGru'+
                     '   and EstPro.CodSub = :CodSub'+
                     '   and EstPro.CodPro = :CodPro';

             with Params do begin

                  Params[0].AsString := CmpPfoCodClp.Value;
                  Params[1].AsString := CmpPfoCodGru.Value;
                  Params[2].AsString := CmpPfoCodSub.Value;
                  Params[3].AsString := CmpPfoCodPro.Value;

             end;

             Open;

        end;

        if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

           if CmpPfo.State = dsInsert then Operac := 'dsInsert';

           nvPfo.SBSalvaClick(Sender);

           if (Operac = 'dsInsert') and (not nvPfo.Salvar) then begin

              nvPfo.SBIncluiClick(Sender);

              EdCodGru.SetFocus;

           end;

           end
        else
           fmsgErro('Item Informado não Encontrado.',EdCodClp);
        
     end;
  end;   
end;

procedure TfmManPco.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if nvPfo.Salvar then begin

     if EdCodGru.Enabled then begin

        if Trim( CmpPfoCodGru.Value ) <> '' then CmpPfoCodGru.Value := FNumZeros(CmpPfoCodGru.Value,3);

     end;
  end;
end;

procedure TfmManPco.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if nvPfo.Salvar then begin

     if EdCodSub.Enabled then begin

        if Trim( CmpPfoCodSub.Value ) <> '' then CmpPfoCodSub.Value := FNumZeros(CmpPfoCodSub.Value,4);

     end;
  end;
end;

procedure TfmManPco.EdCodProExit(Sender: TObject);
begin
  inherited;
  if nvPfo.Salvar then begin

     if EdCodPfo.Enabled then begin

        if Trim( CmpPfoCodPro.Value ) <> '' then CmpPfoCodPro.Value := FNumStrZero(CmpPfoCodPro.Value);

     end;
  end;
end;

procedure TfmManPco.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then begin

           if CmpPfo.State = dsBrowse then begin

              if CmpPfoCodFor.Value > 0 then
                 CmpPfo.Edit
              else
                 CmpPfo.Append;

           end;

           CmpPfoCodClp.Value := fmPsqClp.CodClp;

        end;

     finally   

        FreeAndNil(fmPsqClp);

     end;

     if Trim( CmpPfoCodClp.Value ) <> '' then EdCodGru.SetFocus;

  end;
end;

procedure TfmManPco.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpPfoCodClp.Value;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if CmpPfo.State = dsBrowse then begin

              if CmpPfoCodFor.Value > 0 then
                 CmpPfo.Edit
              else
                 CmpPfo.Append;

           end;

           CmpPfoCodGru.Value := fmAuxIni.CodGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpPfoCodGru.Value ) <> '' then EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := CmpPfoCodClp.Value;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpPfo.State = dsBrowse then begin

              if CmpPfoCodFor.Value > 0 then
                 CmpPfo.Edit
              else
                 CmpPfo.Append;

           end;

           CmpPfoCodGru.Value := fmAuxPsq.CodGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpPfoCodGru.Value ) <> '' then EdCodSub.SetFocus;

  end;
end;

procedure TfmManPco.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( CmpPfoCodClp.Value ) <> '' then fmAuxIni.CodClp := CmpPfoCodClp.Value;
        if Trim( CmpPfoCodGru.Value ) <> '' then fmAuxIni.CodGru := CmpPfoCodGru.Value;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if CmpPfo.State = dsBrowse then begin

              if CmpPfoCodFor.Value > 0 then
                 CmpPfo.Edit
              else
                 CmpPfo.Append;

           end;

           CmpPfoCodGru.Value := fmAuxIni.CodGru;
           CmpPfoCodSub.Value := fmAuxIni.CodSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpPfoCodSub.Value ) <> '' then EdCodPro.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( CmpPfoCodClp.Value ) <> '' then fmAuxPsq.CodClp := CmpPfoCodClp.Value;
        if Trim( CmpPfoCodGru.Value ) <> '' then fmAuxPsq.CodGru := CmpPfoCodGru.Value;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpPfo.State = dsBrowse then begin

              if CmpPfoCodFor.Value > 0 then
                 CmpPfo.Edit
              else
                 CmpPfo.Append;

           end;

           CmpPfoCodGru.Value := fmAuxPsq.CodGru;
           CmpPfoCodSub.Value := fmAuxPsq.CodSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpPfoCodSub.Value ) <> '' then EdCodPro.SetFocus;

  end;
end;

procedure TfmManPco.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( CmpPfoCodClp.Value ) <> '' then fmAuxIni.CodClp := CmpPfoCodClp.Value;
        if Trim( CmpPfoCodGru.Value ) <> '' then fmAuxIni.CodGru := CmpPfoCodGru.Value;
        if Trim( CmpPfoCodSub.Value ) <> '' then fmAuxIni.CodSub := CmpPfoCodSub.Value;

        fmAuxIni.TipoPesq := 'IC';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if CmpPfo.State = dsBrowse then begin

              if CmpPfoCodFor.Value > 0 then
                 CmpPfo.Edit
              else
                 CmpPfo.Append;

           end;

           CmpPfoCodClp.Value := fmAuxIni.CodClp;
           CmpPfoCodGru.Value := fmAuxIni.CodGru;
           CmpPfoCodSub.Value := fmAuxIni.CodSub;
           CmpPfoCodPro.Value := fmAuxIni.CodPro;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpPfoCodPro.Value ) <> '' then EdCodPfo.SetFocus;

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( CmpPfoCodClp.Value ) <> '' then fmAuxPsq.CodClp := CmpPfoCodClp.Value;
        if Trim( CmpPfoCodGru.Value ) <> '' then fmAuxPsq.CodGru := CmpPfoCodGru.Value;
        if Trim( CmpPfoCodSub.Value ) <> '' then fmAuxPsq.CodSub := CmpPfoCodSub.Value;

        fmAuxPsq.TipoPesq := 'IC';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpPfo.State = dsBrowse then begin

              if CmpPfoCodFor.Value > 0 then
                 CmpPfo.Edit
              else
                 CmpPfo.Append;

           end;

           CmpPfoCodClp.Value := fmAuxPsq.CodClp;
           CmpPfoCodGru.Value := fmAuxPsq.CodGru;
           CmpPfoCodSub.Value := fmAuxPsq.CodSub;
           CmpPfoCodPro.Value := fmAuxPsq.CodPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpPfoCodPro.Value ) <> '' then EdCodPfo.SetFocus;

  end;
end;

procedure TfmManPco.pnEmaForDblClick(Sender: TObject);
var
cemail : string;
begin
  inherited;
  if Trim( pnEmaFor.Caption ) <> '' then begin

     if Pos('@', pnEmaFor.Caption) = 0 then
        fMsgErro('E-Mail Incorreto',Nil)
     else
        begin

        cEMail := 'mailto:' + Trim( pnEmaFor.Caption ) + ' <' + Trim( pnEmaFor.Caption ) + '>';

        ShellExecute(Handle, 'Open', PChar(cEMail), Nil, '', sw_ShowNormal);

     end;
  end;
end;

procedure TfmManPco.pnWebForDblClick(Sender: TObject);
var
pagina : string;
begin
  inherited;
  if Trim( pnWebFor.Caption ) <> '' then begin

     pagina := 'http://'+pnWebFor.Caption;

     ShellExecute(0, Nil, PChar(pagina), Nil, Nil, sw_Normal);

  end;
end;

procedure TfmManPco.nvPfoSalva(Sender: TObject);
var
  Id_CmpPfo : integer;
begin
  inherited;

  Id_CmpPfo := CmpPfoId_CmpPfo.Value;

  if Trim(sFiltro) <> ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(FinForCodFor.Value)) then begin
  
     sFiltro := ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(FinForCodFor.Value));

     with FinFor,SQL do begin

          Close;
          Text := sBase + sFiltro;
          Open;

     end;
  end;        

  if Id_CmpPfo > 0 then CmpPfo.Locate('Id_CmpPfo',Id_CmpPfo, [loPartialKey]);

end;

procedure TfmManPco.nvForImprime(Sender: TObject);
begin
  inherited;

  with qrReport,SQL do begin

       Close;
       Text := ' Select CmpPfo.*,'+
               '        EstPro.DscPro,'+
               '        CmpPfo.CodClp || _UNICODE_FSS '+ QuotedStr(' - ') +' || CmpPfo.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || CmpPfo.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || CmpPfo.CodPro as CodIte,'+
               '        TextoOcor(IntStrZeros(CmpPfo.CodFor,7),'+ QuotedStr('-') +',FinFor.NomFor,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as NomFor'+
               ' From CmpPfo LEFT JOIN FinFor ON (CmpPfo.CodFor = FinFor.CodFor)'+
               '             LEFT JOIN EstPro ON (CmpPfo.CodClp = EstPro.CodClp '+
               '                             AND  CmpPfo.CodGru = EstPro.CodGru '+
               '                             AND  CmpPfo.CodSub = EstPro.CodSub '+
               '                             AND  CmpPfo.CodPro = EstPro.CodPro)'+ sFiltro +
               ' Order by CmpPfo.CodFor,CmpPfo.CodPfo';
       Open;
       First;

  end;

  if not qrReport.Eof then begin

     try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManPco);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

     finally

        FreeAndNil(fmPreview);
        
     end;
  end;
end;

procedure TfmManPco.EdValPfoExit(Sender: TObject);
begin
  inherited;
  if nvPfo.Salvar then begin

     CmpPfoValFin.Value := CmpPfoValPfo.Value;

     if CmpPfoValPfo.Value > 0 then begin

        CmpPfoTotIcm.Value := 0;
        CmpPfoTotSub.Value := 0;

        if CmpPfoDscPfo.Value > 0 then CmpPfoValFin.Value := fRound(CmpPfoValFin.Value - ((CmpPfoValFin.Value * CmpPfoDscPfo.Value)/100),4);
        if CmpPfoDscPf1.Value > 0 then CmpPfoValFin.Value := fRound(CmpPfoValFin.Value - ((CmpPfoValFin.Value * CmpPfoDscPf1.Value)/100),4);
        if CmpPfoDscPf2.Value > 0 then CmpPfoValFin.Value := fRound(CmpPfoValFin.Value - ((CmpPfoValFin.Value * CmpPfoDscPf2.Value)/100),4);
        if CmpPfoDscPf3.Value > 0 then CmpPfoValFin.Value := fRound(CmpPfoValFin.Value - ((CmpPfoValFin.Value * CmpPfoDscPf3.Value)/100),4);
        if CmpPfoDscPf4.Value > 0 then CmpPfoValFin.Value := fRound(CmpPfoValFin.Value - ((CmpPfoValFin.Value * CmpPfoDscPf4.Value)/100),4);

        if CmpPfoJurPfo.Value > 0 then CmpPfoValFin.Value := fRound(CmpPfoValFin.Value + ((CmpPfoValFin.Value * CmpPfoJurPfo.Value)/100),4);
        if CmpPfoAcrPfo.Value > 0 then CmpPfoValFin.Value := fRound(CmpPfoValFin.Value + ((CmpPfoValFin.Value * CmpPfoAcrPfo.Value)/100),4);

        if CmpPfoPerIcm.Value > 0 then CmpPfoTotIcm.Value := fRound((CmpPfoValFin.Value * CmpPfoPerIcm.Value)/100,4);

        if CmpPfoPerIpi.Value > 0 then CmpPfoValFin.Value := fRound(CmpPfoValFin.Value + ((CmpPfoValFin.Value * CmpPfoPerIpi.Value)/100),4);

        if CmpPfoPerMva.Value > 0 then begin

           CmpPfoTotSub.Value := fRound(CmpPfoValFin.Value + ((CmpPfoValFin.Value * CmpPfoPerMva.Value)/100),4);

           CmpPfoTotSub.Value := fRound(((CmpPfoTotSub.Value * CmpPfoPerIcm.Value)/100) - CmpPfoTotIcm.Value,4);

           CmpPfoValFin.Value := fRound(CmpPfoValFin.Value + CmpPfoTotSub.Value,4);

        end
     end;
  end;
end;

procedure TfmManPco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPco.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPco := nil;
end;

procedure TfmManPco.EdPsqCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(EdPsqCodClp.Text);
          Open;


     end;

     if Trim( quSQL.FieldbyName('NomClp').AsString ) <> '' then
        EdPsqNomClp.Text := quSql.FieldByName('NomClp').AsString
     else
        fmsgErro('Classificação Informada não Encontrada.',EdPsqCodClp);

     end
  else
     EdPsqNomClp.Text := '';
end;

procedure TfmManPco.EdPsqCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGru.Text ) <> '' then begin

     EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = '+ QuotedStr(EdPsqCodGru.Text);
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomGru').AsString ) <> '' then
        EdPsqNomGru.Text := quSql.FieldByName('NomGru').AsString
     else
        fmsgErro('Grupo Informado não Encontrado.',EdPsqCodGru);

     end
  else
     EdPsqNomGru.Text := '';
end;

procedure TfmManPco.EdPsqCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodSub.Text ) <> '' then begin

     EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstSub.NomSub'+
                  ' From EstSub '+
                  ' Where EstSub.CodGru = '+ QuotedStr(EdPsqCodGru.Text)+
                  '   and EstSub.CodSub = '+ QuotedStr(EdPsqCodSub.Text);
          Open;

     end;

     if Trim( quSQL.FieldbyName('NomSub').AsString ) <> '' then
        EdPsqNomSub.Text := quSql.FieldByName('NomSub').AsString
     else
        fmsgErro('SubGrupo Informado não Encontrado.',EdPsqCodSub);

     end
  else
     EdPsqNomSub.Text := '';
end;

procedure TfmManPco.EdPsqCodProExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPro.Text ) <> '' then begin

     EdPsqCodPro.Text := FNumStrZero(EdPsqCodPro.Text);

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPro From EstPro '+
                  ' Where CodClp = :CodClp'+
                  '   and CodGru = :CodGru'+
                  '   and CodSub = :CodSub'+
                  '   and CodPro = :CodPro';

          with Params do begin

               Params[0].AsString := EdPsqCodClp.Text;
               Params[1].AsString := EdPsqCodGru.Text;
               Params[2].AsString := EdPsqCodSub.Text;
               Params[3].AsString := EdPsqCodPro.Text;

          end;

          Open;

          EdPsqNomPro.Text := FieldByName('DscPro').AsString;

     end;

     end
  else
     EdPsqNomPro.Text := '';
end;

procedure TfmManPco.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Cls';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodClp ) <> '' then begin

        EdPsqCodClp.Text := fmAuxIni.CodClp;
        EdPsqNomClp.Text := fmAuxIni.NomClp;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodClp.Text ) <> '' then EdPsqCodGru.SetFocus;

end;

procedure TfmManPco.bPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;

     fmAuxIni.TipoPesq := 'G';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodGru ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodSub.SetFocus;

end;

procedure TfmManPco.bPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;

     fmAuxIni.TipoPesq := 'S';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodSub ) <> '' then begin

        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodSub.Text ) <> '' then EdPsqCodPro.SetFocus;

end;

procedure TfmManPco.bPsqProClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;
     if Trim( EdPsqCodSub.Text ) <> '' then fmAuxIni.CodSub := EdPsqCodSub.Text;

     fmAuxIni.TipoPesq := 'I';

     fmAuxIni.ShowModal;

     if Trim( fmAuxIni.CodPro ) <> '' then begin

        EdPsqCodClp.Text := fmAuxIni.CodClp;
        EdPsqNomClp.Text := fmAuxIni.NomClp;
        EdPsqCodGru.Text := fmAuxIni.CodGru;
        EdPsqNomGru.Text := fmAuxIni.NomGru;
        EdPsqCodSub.Text := fmAuxIni.CodSub;
        EdPsqNomSub.Text := fmAuxIni.NomSub;
        EdPsqCodPro.Text := fmAuxIni.CodPro;
        EdPsqNomPro.Text := fmAuxIni.DscPro;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodPro.Text ) <> '' then bSelecionar.SetFocus;

end;

procedure TfmManPco.EdPsqCodClpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Cls';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodClp ) <> '' then begin

           EdPsqCodClp.Text := fmAuxIni.CodClp;
           EdPsqNomClp.Text := fmAuxIni.NomClp;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodClp.Text ) <> '' then EdPsqCodGru.SetFocus;

  end;   
end;

procedure TfmManPco.EdPsqCodGruKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdPsqCodClp.Text;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdPsqCodClp.Text;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

            EdPsqCodGru.Text := fmAuxPsq.CodGru;
            EdPsqNomGru.Text := fmAuxPsq.NomGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdPsqCodGru.Text ) <> '' then EdPsqCodSub.SetFocus;

  end;
end;

procedure TfmManPco.EdPsqCodSubKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdPsqCodClp.Text;
        fmAuxIni.CodGru := EdPsqCodGru.Text;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;
           EdPsqCodSub.Text := fmAuxIni.CodSub;
           EdPsqNomSub.Text := fmAuxIni.NomSub;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodSub.Text ) <> '' then EdPsqCodPro.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdPsqCodClp.Text;
        fmAuxPsq.CodGru := EdPsqCodGru.Text;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxPsq.CodGru;
           EdPsqNomGru.Text := fmAuxPsq.NomGru;
           EdPsqCodSub.Text := fmAuxPsq.CodSub;
           EdPsqNomSub.Text := fmAuxPsq.NomSub;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdPsqCodSub.Text ) <> '' then EdPsqCodPro.SetFocus;

  end;
end;

procedure TfmManPco.EdPsqCodProKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdPsqCodClp.Text;
        fmAuxIni.CodGru := EdPsqCodGru.Text;
        fmAuxIni.CodSub := EdPsqCodSub.Text;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EdPsqCodGru.Text := fmAuxIni.CodGru;
           EdPsqNomGru.Text := fmAuxIni.NomGru;
           EdPsqCodSub.Text := fmAuxIni.CodSub;
           EdPsqNomSub.Text := fmAuxIni.NomSub;
           EdPsqCodPro.Text := fmAuxIni.CodPro;
           EdPsqNomPro.Text := fmAuxIni.DscPro;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodPro.Text ) <> '' then bSelecionar.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := EdPsqCodClp.Text;
        fmAuxPsq.CodGru := EdPsqCodGru.Text;
        fmAuxPsq.CodSub := EdPsqCodSub.Text;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EdPsqCodClp.Text := fmAuxPsq.CodClp;
           EdPsqNomClp.Text := fmAuxPsq.NomClp;
           EdPsqCodGru.Text := fmAuxPsq.CodGru;
           EdPsqNomGru.Text := fmAuxPsq.NomGru;
           EdPsqCodSub.Text := fmAuxPsq.CodSub;
           EdPsqNomSub.Text := fmAuxPsq.NomSub;
           EdPsqCodPro.Text := fmAuxPsq.CodPro;
           EdPsqNomPro.Text := fmAuxPsq.DscPro;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EdPsqCodPro.Text ) <> '' then bSelecionar.SetFocus;

  end;
end;

procedure TfmManPco.CmpPfoCODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Trim( CmpPfoCodPro.Value ) <> '' then
     Text := CmpPfoCodClp.Value+ '-' +CmpPfoCodGru.Value+ '.' +CmpPfoCodSub.Value+ '.' +CmpPfoCodPro.Value
  else
     Text := '';
end;

procedure TfmManPco.EdCodClpEnter(Sender: TObject);
begin
  inherited;
  pnText.Caption := 'F1-Iniciais';
end;

procedure TfmManPco.EdCodGruEnter(Sender: TObject);
begin
  inherited;
  pnText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManPco.EdCodPfoEnter(Sender: TObject);
begin
  inherited;
  pnText.Caption := '';
end;

procedure TfmManPco.EdCodPfoExit(Sender: TObject);
begin
  inherited;
  if Trim(CmpPfoCodPfo.Value) = '' then begin

     if Trim(CmpPfoCodPro.Value) <> '' then
        CmpPfoCodPfo.Value := CmpPfoCodClp.Value+'.'+
                              CmpPfoCodGru.Value+'.'+
                              CmpPfoCodSub.Value+'.'+
                              CmpPfoCodPro.Value;
  end;                            
end;

end.
