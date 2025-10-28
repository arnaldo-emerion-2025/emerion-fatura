unit ManNge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxDBColorDateEdit, dxDBColorEdit;

type
  TfmManNge = class(TfmPadrao)
    PaintBox: TPaintBox;
    FatGer: TwwQuery;
    FatGe2: TwwQuery;
    UpGer: TUpdateSQL;
    UpGe2: TUpdateSQL;
    DsGe2: TDataSource;
    DsGer: TDataSource;
    quSql: TwwQuery;
    LbText: TLabel;
    Label8: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Label29: TLabel;
    Label9: TLabel;
    pnNumGer: TPanel;
    EdNumGer: TdxDBColorEdit;
    Label1: TLabel;
    Label46: TLabel;
    EdCodEmp: TdxDBColorEdit;
    pnApeEmp: TPanel;
    EdApeEmp: TdxDBColorEdit;
    Label2: TLabel;
    Label68: TLabel;
    EdDteFat: TdxDBColorDateEdit;
    Label4: TLabel;
    Label6: TLabel;
    Label16: TLabel;
    Label53: TLabel;
    pnUfeGer: TPanel;
    EdUfeGer: TdxDBColorEdit;
    Label13: TLabel;
    Label14: TLabel;
    EdCodVen: TdxDBColorEdit;
    pnNomVen: TPanel;
    EdNomVen: TdxDBColorEdit;
    Label12: TLabel;
    Label20: TLabel;
    EdFrtGer: TdxDBColorPickEdit;
    Label5: TLabel;
    Label7: TLabel;
    EdCodPfa: TdxDBColorEdit;
    pnNomPfa: TPanel;
    EdNomPfa: TdxDBColorEdit;
    EdCodCli: TdxDBColorEdit;
    bpsqCli: TSpeedButton;
    EdNomCli: TdxDBColorEdit;
    pnNomCli: TPanel;
    bpsqEmp: TSpeedButton;
    bpsqVen: TSpeedButton;
    bpsqPfa: TSpeedButton;
    FatGerCODEMP: TIntegerField;
    FatGerDTEGER: TDateTimeField;
    FatGerNUMGER: TIntegerField;
    FatGerCODCLI: TIntegerField;
    FatGerCODVEN: TIntegerField;
    FatGerCODPFA: TStringField;
    FatGerTIPPFA: TStringField;
    FatGerUFEGER: TStringField;
    FatGerSEQITE: TIntegerField;
    FatGerQTDNFS: TIntegerField;
    FatGerNRONFS: TIntegerField;
    FatGerCGCCLI: TStringField;
    FatGerINSCLI: TStringField;
    FatGerCODCF1: TStringField;
    FatGerCODCF2: TStringField;
    FatGerFRTGER: TStringField;
    FatGerFLGENT: TStringField;
    FatGerFLGSAI: TStringField;
    FatGerTIPFRT: TStringField;
    FatGerMARGER: TStringField;
    FatGerNROGER: TStringField;
    FatGerESPGER: TStringField;
    FatGerNOMTRA: TStringField;
    FatGerCGCTRA: TStringField;
    FatGerINSTRA: TStringField;
    FatGerCEPTRA: TStringField;
    FatGerTENTRA: TStringField;
    FatGerENDTRA: TStringField;
    FatGerREFTRA: TStringField;
    FatGerNUMTRA: TStringField;
    FatGerBAITRA: TStringField;
    FatGerCIDTRA: TStringField;
    FatGerUFETRA: TStringField;
    FatGerPLCTRA: TStringField;
    FatGerUFEPLC: TStringField;
    FatGerCGECLI: TStringField;
    FatGerNROSUF: TStringField;
    FatGerOBSGER: TStringField;
    FatGerQTIGER: TIntegerField;
    FatGerQTDVOL: TIntegerField;
    FatGerALTVOL: TIntegerField;
    FatGerLINGER: TIntegerField;
    FatGerINFLIQ: TFloatField;
    FatGerTOTLIQ: TFloatField;
    FatGerINFBRT: TFloatField;
    FatGerTOTBRT: TFloatField;
    FatGerBASIPI: TFloatField;
    FatGerTOTIPI: TFloatField;
    FatGerBASICM: TFloatField;
    FatGerTOTICM: TFloatField;
    FatGerBASSUB: TFloatField;
    FatGerTOTSUB: TFloatField;
    FatGerTOTITE: TFloatField;
    FatGerTOTPIS: TFloatField;
    FatGerTOTCOF: TFloatField;
    FatGerTOTFRT: TFloatField;
    FatGerTOTSEG: TFloatField;
    FatGerTOTDES: TFloatField;
    FatGerICMFRT: TFloatField;
    FatGerBAICMF: TFloatField;
    FatGerTOICMF: TFloatField;
    FatGerICMSEG: TFloatField;
    FatGerBAICMS: TFloatField;
    FatGerTOICMS: TFloatField;
    FatGerICMDES: TFloatField;
    FatGerBAICMD: TFloatField;
    FatGerTOICMD: TFloatField;
    FatGerIPIFRT: TFloatField;
    FatGerBAIPIF: TFloatField;
    FatGerTOIPIF: TFloatField;
    FatGerIPISEG: TFloatField;
    FatGerBAIPIS: TFloatField;
    FatGerTOIPIS: TFloatField;
    FatGerIPIDES: TFloatField;
    FatGerBAIPID: TFloatField;
    FatGerTOIPID: TFloatField;
    FatGerTOTGER: TFloatField;
    FatGerCODUSU: TIntegerField;
    FatGerHRCGER: TStringField;
    FatGerDTCGER: TDateTimeField;
    FatGerUSCGER: TIntegerField;
    FatGerOBCGER: TMemoField;
    FatGerTIPIPI: TStringField;
    FatGerTRBIPI: TStringField;
    FatGerREDIPI: TFloatField;
    FatGerBSCIPI: TFloatField;
    FatGerTIPICM: TStringField;
    FatGerTRBICM: TStringField;
    FatGerREDICM: TFloatField;
    FatGerBSCICM: TFloatField;
    FatGerINCREV: TFloatField;
    FatGerINCFIN: TFloatField;
    FatGerBASIP1: TFloatField;
    FatGerTOTIP1: TFloatField;
    FatGerBASIC1: TFloatField;
    FatGerTOTIC1: TFloatField;
    FatGerBASSU1: TFloatField;
    FatGerTOTSU1: TFloatField;
    FatGerTOTIT1: TFloatField;
    FatGerTOTGE1: TFloatField;
    FatGerTXFIPI: TStringField;
    FatGerTXFICM: TStringField;
    FatGerQTPGER: TIntegerField;
    FatGerLANGER: TFloatField;
    FatGerSLDGER: TFloatField;
    FatGe2CODEMP: TIntegerField;
    FatGe2DTEGER: TDateTimeField;
    FatGe2NUMGER: TIntegerField;
    FatGe2SEQGE2: TIntegerField;
    FatGe2CODEIT: TIntegerField;
    FatGe2CODCLP: TStringField;
    FatGe2CODGRU: TStringField;
    FatGe2CODSUB: TStringField;
    FatGe2CODPRO: TStringField;
    FatGe2CODTAM: TStringField;
    FatGe2CODCOR: TStringField;
    FatGe2DESGE2: TStringField;
    FatGe2OBSGE2: TStringField;
    FatGe2CODST1: TStringField;
    FatGe2CODST2: TStringField;
    FatGe2CODUND: TStringField;
    FatGe2LIQGE2: TFloatField;
    FatGe2BRTGE2: TFloatField;
    FatGe2LINGE2: TIntegerField;
    FatGe2QTPGE2: TFloatField;
    FatGe2VLUGE2: TFloatField;
    FatGe2ICMGE2: TFloatField;
    FatGe2IPIGE2: TFloatField;
    FatGe2CLSIPI: TStringField;
    FatGe2BASIPI: TFloatField;
    FatGe2TOTIPI: TFloatField;
    FatGe2BASICM: TFloatField;
    FatGe2TOTICM: TFloatField;
    FatGe2TOTGE2: TFloatField;
    FatGe2TOTLIQ: TFloatField;
    FatGe2TOTBRT: TFloatField;
    FatGe2TOTPIS: TFloatField;
    FatGe2TOTCOF: TFloatField;
    FatGe2NROGE2: TIntegerField;
    FatGe2NRONFS: TIntegerField;
    FatGe2TIPIPI: TStringField;
    FatGe2TRBIPI: TStringField;
    FatGe2REDIPI: TFloatField;
    FatGe2BSCIPI: TFloatField;
    FatGe2TIPICM: TStringField;
    FatGe2TRBICM: TStringField;
    FatGe2REDICM: TFloatField;
    FatGe2BSCICM: TFloatField;
    FatGe2INCREV: TFloatField;
    FatGe2INCFIN: TFloatField;
    Panel4: TPanel;
    EdBasIc1: TdxDBColorCurrencyEdit;
    pnBasIc1: TPanel;
    Label28: TLabel;
    pnTotFrt: TPanel;
    EdTotFrt: TdxDBColorCurrencyEdit;
    Label38: TLabel;
    EdTotIc1: TdxDBColorCurrencyEdit;
    pnTotIc1: TPanel;
    Label33: TLabel;
    EdTotSeg: TdxDBColorCurrencyEdit;
    pnTotSeg: TPanel;
    Label39: TLabel;
    EdBasSu1: TdxDBColorCurrencyEdit;
    pnBasSu1: TPanel;
    Label34: TLabel;
    EdTotDes: TdxDBColorCurrencyEdit;
    pnTotDes: TPanel;
    Label40: TLabel;
    EdTotSu1: TdxDBColorCurrencyEdit;
    pnTotSu1: TPanel;
    Label35: TLabel;
    EdTotIp1: TdxDBColorCurrencyEdit;
    pnTotIp1: TPanel;
    Label41: TLabel;
    EdTotIt1: TdxDBColorCurrencyEdit;
    pnTotIt1: TPanel;
    Label36: TLabel;
    EdTotGe1: TdxDBColorCurrencyEdit;
    pnTotGe1: TPanel;
    Label42: TLabel;
    FatGerSEQGER: TStringField;
    Label23: TLabel;
    EdTipPfa: TdxDBColorPickEdit;
    Label55: TLabel;
    Label59: TLabel;
    pnCgcCli: TPanel;
    EdCgcCli: TdxDBColorEdit;
    FatGerINECLI: TStringField;
    FatGerFLGCTB: TStringField;
    FatGerATUEST: TStringField;
    FatGerINTFIN: TStringField;
    FatGerCONSUM: TStringField;
    FatGe2CSTGE2: TFloatField;
    FatGerPERPIS: TFloatField;
    FatGerPERCOF: TFloatField;
    FatGerDESNAT: TStringField;
    FatGerPRTTRA: TStringField;
    FatGerFONTRA: TStringField;
    FatGerBSICMF: TFloatField;
    FatGerBSICMS: TFloatField;
    FatGerBSICMD: TFloatField;
    FatGerBSIPIF: TFloatField;
    FatGerBSIPIS: TFloatField;
    FatGerBSIPID: TFloatField;
    FatGerCODIPI: TStringField;
    FatGerCODICM: TStringField;
    FatGerFLGATU: TStringField;
    FatGe2REGIPI: TStringField;
    FatGe2REGICM: TStringField;
    FatGerSITGER: TStringField;
    FatGerHREFAT: TStringField;
    FatGerDSCREG: TFloatField;
    FatGerCODFIL: TIntegerField;
    FatGerFLGAVI: TStringField;
    FatGerCEPCLI: TStringField;
    FatGerTENCLI: TStringField;
    FatGerENDCLI: TStringField;
    FatGerREFCLI: TStringField;
    FatGerNUMCLI: TStringField;
    FatGerBAICLI: TStringField;
    FatGerCIDCLI: TStringField;
    FatGerSTPGER: TIntegerField;
    FatGerTOTDSR: TFloatField;
    FatGerLANEST: TStringField;
    FatGerDTEATU: TDateTimeField;
    FatGerHREATU: TStringField;
    FatGerUSUATU: TIntegerField;
    FatGerTRASDA: TIntegerField;
    FatGerDTESDA: TDateTimeField;
    FatGerHRESDA: TStringField;
    FatGerUSUSDA: TIntegerField;
    FatGerOBSSDA: TStringField;
    FatGerCODVEI: TIntegerField;
    FatGerDTEENT: TDateTimeField;
    FatGerHREENT: TStringField;
    FatGerUSUENT: TIntegerField;
    FatGerOBSENT: TStringField;
    FatGerDESREG: TStringField;
    FatGerUFECLI: TStringField;
    FatGerINSSUB: TStringField;
    FatGe2REFGE2: TStringField;
    FatGe2QTDGE2: TFloatField;
    FatGe2SLDGE2: TFloatField;
    FatGe2VCHGE2: TFloatField;
    FatGe2VREGE2: TFloatField;
    FatGe2VCRGE2: TFloatField;
    FatGe2VCPGE2: TFloatField;
    FatGe2VPRGE2: TFloatField;
    FatGe2VMEGE2: TFloatField;
    FatGe2VPFGE2: TFloatField;
    FatGe2CSTCST: TFloatField;
    FatGe2VCHCST: TFloatField;
    FatGe2VRECST: TFloatField;
    FatGe2VCRCST: TFloatField;
    FatGe2VCPCST: TFloatField;
    FatGe2VPRCST: TFloatField;
    FatGe2VMECST: TFloatField;
    FatGe2VPFCST: TFloatField;
    FatGe2DSRGE2: TFloatField;
    FatGe2VDRGE2: TFloatField;
    FatGe2VLQGE2: TFloatField;
    FatGe2SEQNFG: TIntegerField;
    FatGe2SEQGE4: TIntegerField;
    FatGe2BASSUB: TFloatField;
    FatGe2TOTSUB: TFloatField;
    FatGe2TOTITE: TFloatField;
    FatGe2TOTDSR: TFloatField;
    FatGe2CODSTR: TStringField;
    FatGe2TIPSTR: TStringField;
    FatGe2FLASEQ: TStringField;
    FatGe2FLGLIB: TStringField;
    FatGerNROCOL: TStringField;
    FatGerDTEFAT: TDateTimeField;
    FatGerFLGNFS: TStringField;
    FatGerFLGENV: TStringField;
    FatGerFLGSIN: TStringField;
    FatGerQTISER: TIntegerField;
    FatGerSEQSER: TIntegerField;
    FatGerBASISS: TFloatField;
    FatGerTOTISS: TFloatField;
    FatGerBASIS1: TFloatField;
    FatGerTOTIS1: TFloatField;
    FatGerTOTSER: TFloatField;
    FatGerTOTSE1: TFloatField;
    FatGerOB1GER: TStringField;
    FatGerOB2GER: TStringField;
    FatGerOB3GER: TStringField;
    FatGerOB4GER: TStringField;
    FatGerOB5GER: TStringField;
    FatGerOB6GER: TStringField;
    FatGerOB7GER: TStringField;
    FatGerOB8GER: TStringField;
    FatGe2CODTXF: TStringField;
    FatGerFLGIMP: TStringField;
    FatGerNOMENT: TStringField;
    FatGe2CODCFO: TStringField;
    FatGe2TRBSUB: TStringField;
    FatGe2ICMSUB: TFloatField;
    FatGe2MRGSUB: TFloatField;
    FatGe2BASESB: TFloatField;
    grLabel1: TdxDBGraphicEdit;
    grPe21: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label50: TLabel;
    grGe2: ThGrid;
    Panel3: TPanel;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpGe2: TdxDBColorCurrencyEdit;
    EdVluGe2: TdxDBColorCurrencyEdit;
    EdIpiGe2: TdxDBColorCurrencyEdit;
    EdIcmGe2: TdxDBColorCurrencyEdit;
    EdCodSt1: TdxDBColorEdit;
    EdCodSt2: TdxDBColorEdit;
    EdTotGe2: TdxDBColorCurrencyEdit;
    EdCodCfo: TdxDBColorEdit;
    EdClsIpi: TdxDBColorEdit;
    EdCodUnd: TdxDBColorEdit;
    Label3: TLabel;
    EdCodClp: TdxDBColorEdit;
    Label44: TLabel;
    Label43: TLabel;
    pnNroGe2: TPanel;
    EdSeqPe2: TdxDBColorCurrencyEdit;
    EdObsGe2: TdxDBColorEdit;
    pnObsGe2: TPanel;
    EdDesGe2: TdxDBColorEdit;
    pnDesGe2: TPanel;
    FatGe2ID_ESTICM: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdTipPfaExit(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodCliMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenExit(Sender: TObject);
    procedure EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodPfaExit(Sender: TObject);
    procedure FatGerNewRecord(DataSet: TDataSet);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodSubKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProExit(Sender: TObject);
    procedure EdQtpGe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdQtpGe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdQtpGe2Exit(Sender: TObject);
    procedure EdVluGe2Exit(Sender: TObject);
    procedure EdCodSt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSt2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grGe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FatGe2NewRecord(DataSet: TDataSet);
    procedure Panel3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel4Exit(Sender: TObject);
    procedure bpsqEmpClick(Sender: TObject);
    procedure bpsqCliClick(Sender: TObject);
    procedure bpsqVenClick(Sender: TObject);
    procedure bpsqPfaClick(Sender: TObject);
    procedure DsGe2DataChange(Sender: TObject; Field: TField);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdTipPfaEnter(Sender: TObject);
    procedure EdCodSt1Enter(Sender: TObject);
    procedure EdQtpPe2Exit(Sender: TObject);
    procedure EdCodClpEnter(Sender: TObject);
    procedure grGe2Enter(Sender: TObject);
  private
  public
    qticms : integer;
    AntVluGe2 : real;
    DteGer : TDateTime;
    CodEmp,NumGer : integer;
    psaida,sEnc,sEntr,Finalizar : string;
  end;

var
  fmManNge: TfmManNge;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, AuxPsq, PsqRef, PsqObs,
     PsqPro, PsqEst, ManGer, PsqGru, PsqSub, PsqIcm, PsqTab, PsqTam, PsqSt1,
     PsqSt2, PsqEmp, PsqVen, PsqPfa, PsqCli, PsqClp, AuxIni, PsqUnd, ManNg1;

{$R *.DFM}

procedure TfmManNge.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  psaida := 'Sim';

  Finalizar := 'N';

end;

procedure TfmManNge.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNge.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManNge := Nil;
end;

procedure TfmManNge.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManNge.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if FatGerSitGer.Value = 'Faturado' then fMsg('Opera��o n�o Pode ser Realizada. Nota j� Emitida.','E')

     else if FatGerSitGer.Value = 'Cancelado' then fMsg('Opera��o n�o Pode ser Realizada. Nota Cancelada.','E');

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManNge.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManNge.EdTipPfaExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then EdTipPfa.SetFocus
end;

procedure TfmManNge.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           FatGerCodEmp.Value := fmPsqEmp.CodEmp;

           EdCodEmp.Text := IntToStr(FatGerCodEmp.Value);

           pnApeEmp.Caption := fmPsqEmp.NomEmp;

        end;

     finally   

        FreeAndNil(fmPsqEmp);

     end;

     if FatGerCodEmp.Value > 0 then begin

        if EdDteFat.Enabled then
           EdDteFat.SetFocus
        else
           EdCodEmp.SetFocus;

        end
     else
        EdCodEmp.SetFocus;
           
  end;
end;

procedure TfmManNge.EdCodEmpKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManNge.EdCodEmpMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManNge.Panel1Exit(Sender: TObject);
var
  SeqGer,Status : string;
begin
  inherited;
  if FatGer.State <> dsBrowse then begin

     if FatGerDteFat.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado',EdDteFat);

     Status := 'dsEdit';

     if FatGer.State = dsInsert then begin

        Status := 'dsInsert';

        if FatGerCodCli.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.',EdCodCli);

        if FatGerCodVen.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.',EdCodVen);

        if Trim( FatGerCodPfa.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.',EdCodPfa);

        if Trim( FatGerUfeGer.Value ) = '' then fmsgErro('Endere�o de Faturamento do Cliente Esta Incompleto.',EdCodCli);

        Randomize;
        SeqGer := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                  copy(TimeToStr(Time),1,2)+
                  copy(TimeToStr(Time),4,2)+
                  copy(TimeToStr(Time),7,2)+
                  FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                  FNumZeros(Trim( IntToStr(Random(50000)) ),5);

        FatGerSeqGer.Value := SeqGer;

        end
     else
        SeqGer := FatGerSeqGer.Value;

     with FatGer do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

          try

             ApplyUpdates; {Tenta aplicar as altera��es};

             fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o};

          except

             fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro};

             if FatGer.State = dsBrowse then FatGer.Edit;

             if EdCodEmp.Enabled then
                EdCodEmp.SetFocus
             else
                EdDteFat.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select CodEmp,DteGer,NumGer From FatGer'+
                  ' Where SeqGer = :SeqGer';

          with Params do begin

               Params[0].AsString := SeqGer;

          end;

          Open;

     end;

     FatGer.Close;
     FatGer.Params[0].AsInteger  := quSQL.FieldbyName('CodEmp').AsInteger;
     FatGer.Params[1].AsDateTime := quSQL.FieldbyName('DteGer').AsDateTime;
     FatGer.Params[2].AsInteger  := quSQL.FieldbyName('NumGer').AsInteger;
     FatGer.Open;

     FatGe2.Close;
     FatGe2.Params[0].AsInteger  := FatGerCodEmp.Value;
     FatGe2.Params[1].AsDateTime := FatGerDteGer.Value;
     FatGe2.Params[2].AsInteger  := FatGerNumGer.Value;
     FatGe2.Open;

     if Status = 'dsInsert' then begin

        with fmManGer.FatGer,SQL do begin

             Close;
             Text := fmManGer.sBase +
                     ' and FatGer.CodEmp = :CodEmp'+
                     ' and FatGer.DteGer = :DteGer'+
                     ' and FatGer.NumGer = :NumGer';

             with Params do begin

                  Params[0].AsInteger  := FatGerCodEmp.Value;
                  Params[1].AsDateTime := FatGerDteGer.Value;
                  Params[2].AsInteger  := FatGerNumGer.Value;

             end;

             Open;

        end;
     end;

     qticms := 0;

     if GUfeEmp <> FatGerUfeGer.Value then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From GerIcm'+
                     ' Where GerIcm.SigUfe = '+ QuotedStr(FatGerUfeGer.Value);
             Open;

             qticms := FieldbyName('QtdReg').AsInteger;

        end;
     end;

     bPsqEmp.Enabled := False;
     bPsqCli.Enabled := False;
     bPsqVen.Enabled := False;
     bPsqPfa.Enabled := False;
     
     EdTipPfa.Enabled := False;
     EdCodEmp.Enabled := False;
     EdDteFat.Enabled := False;
     EdCodCli.Enabled := False;
     EdCodVen.Enabled := False;
     EdFrtGer.Enabled := False;
     EdCodPfa.Enabled := False;

     EdTipPfa.Font.Style := [fsBold];
     EdCodEmp.Font.Style := [fsBold];
     EdDteFat.Font.Style := [fsBold];
     EdCodCli.Font.Style := [fsBold];
     EdCodVen.Font.Style := [fsBold];
     EdFrtGer.Font.Style := [fsBold];
     EdCodPfa.Font.Style := [fsBold];

     if FatGerQtiGer.Value = 0 then
        FatGe2.Append
     else
        grGe2.SetFocus;

  end;
end;

procedure TfmManNge.EdCodEmpExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not EdTipPfa.Focused then
        saida := True
     else
        saida := False;

     if saida then begin

        if FatGer.State <> dsBrowse then begin

           if FatGerCodEmp.Value > 0 then begin

              if GFlgAce <> 'Sim' then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select FLGDEL,SEQIMP from GerPar';
                      Open;

                      if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

                         GFlgAce := 'Sim';

                         if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

                         end
                      else
                         begin

                         GEmpLog := 0;
                         GFlgAce := 'Nao';

                      end;
                 end;
              end;
              
              with quSql,SQL do begin

                   Close;
                   Text := ' Select GerEmp.ApeEmp'+
                           ' From GerEmp'+
                           ' Where GerEmp.CodEmp = :CodEmp';

                   if GFlgAce = 'Sim' then begin

                      if GEmpLog > 0 then
                         Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
                      else
                         Text := Text + ' and GerEmp.CodFil > 0';

                   end;

                   with Params do begin

                        Params[0].AsInteger := FatGerCodEmp.Value;

                   end;

                   Open;

              end;

              if Trim( quSql.FieldbyName('ApeEmp').AsString ) <> '' then
                 pnApeEmp.Caption := quSql.FieldbyName('ApeEmp').AsString
              else
                 begin

                 pnApeEmp.Caption := '';

                 fmsgErro('Empresa Informada n�o Encontrada',EdCodEmp);

              end;

              end
           else
              begin

              pnApeEmp.Caption := '';

              fmsgErro('Campo de Preenchimento Obrig�torio n�o Informado',EdCodEmp);

           end;
        end;
     end;
  end;
end;

procedure TfmManNge.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqCli := TfmPsqCli.Create(Self);

        fmPsqCli.ShowModal;

        if fmPsqCli.CodCli > 0 then begin

           FatGerCodCli.Value := fmPsqCli.CodCli;
           FatGerUfeGer.Value := fmPsqCli.UffCli;
           FatGerCodVen.Value := fmPsqCli.CodVen;

           EdCodCli.Text := IntToStr(FatGerCodCli.Value);

           pnNomCli.Caption := fmPsqCli.NomCli;
           pnUfeGer.Caption := fmPsqCli.UffCli;

           if FatGerCodVen.Value > 0 then
              EdCodVen.Text := IntToStr(FatGerCodVen.Value)
           else
              EdCodVen.Text := '';

        end;

     finally   

        FreeAndNil(fmPsqCli);

     end;

     if FatGerCodCli.Value > 0 then begin

        if EdCodVen.Enabled then
           EdCodVen.SetFocus
        else
           EdCodCli.SetFocus;

        end
     else
        EdCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';
        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           FatGerCodCli.Value := fmAuxPsq.CodCli;
           FatGerUfeGer.Value := fmAuxPsq.UffCli;
           FatGerCodVen.Value := fmAuxPsq.CodVen;

           EdCodCli.Text := IntToStr(FatGerCodCli.Value);

           pnNomCli.Caption := fmPsqCli.NomCli;
           pnUfeGer.Caption := fmPsqCli.UffCli;

           if FatGerCodVen.Value > 0 then
              EdCodVen.Text := IntToStr(FatGerCodVen.Value)
           else
              EdCodVen.Text := '';

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if FatGerCodCli.Value > 0 then begin

        if EdCodVen.Enabled then
           EdCodVen.SetFocus
        else
           EdCodCli.SetFocus;

        end
     else
        EdCodCli.SetFocus;

  end;
end;

procedure TfmManNge.EdCodCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManNge.EdCodCliMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManNge.EdCodCliExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDteFat.Focused) and (not EdCodEmp.Focused) and (not EdTipPfa.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if FatGer.State <> dsBrowse then begin

           if FatGerCodCli.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinCli.CodCli,'+
                           '        FinCli.NomCli,'+
                           '        FinCli.UffCli,'+
                           '        FinCli.CodVen,'+
                           '        FinCli.CgcCli From FinCli Where FinCli.CodCli = '+ QuotedStr(IntToStr(FatGerCodCli.Value));
                   Open;

              end;

              if quSql.FieldbyName('CodCli').AsInteger = FatGerCodCli.Value then begin

                 FatGerUfeGer.Value := quSQL.FieldbyName('UffCli').AsString;
                 FatGerCodVen.Value := quSQL.FieldbyName('CodVen').AsInteger;

                 pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
                 pnUfeGer.Caption := quSQL.FieldbyName('UffCli').AsString;

                 if Trim( quSQL.FieldbyName('CodVen').AsString ) <> '' then EdCodVen.Text := quSQL.FieldbyName('CodVen').AsString;

                 if Trim( quSQL.FieldbyName('CgcCli').AsString ) <> '' then begin

                    if Length(Trim( quSQL.FieldbyName('CgcCli').AsString )) <= 11 then
                       pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString,01,03)+ '.' +
                                           copy(quSQL.FieldbyName('CgcCli').AsString,04,03)+ '.' +
                                           copy(quSQL.FieldbyName('CgcCli').AsString,07,03)+ '-' +
                                           copy(quSQL.FieldbyName('CgcCli').AsString,10,02)
                    else
                       pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString,01,02)+ '.' +
                                           copy(quSQL.FieldbyName('CgcCli').AsString,03,03)+ '.' +
                                           copy(quSQL.FieldbyName('CgcCli').AsString,06,03)+ '/' +
                                           copy(quSQL.FieldbyName('CgcCli').AsString,09,04)+ '-' +
                                           copy(quSQL.FieldbyName('CgcCli').AsString,13,02);


                    end
                 else
                    pnCgcCli.Caption := '';

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(FatGerCodVen.Value));
                      Open;

                 end;

                 pnNomVen.Caption := quSQL.FieldbyName('ApeVen').AsString;

                 if Trim( FatGerUfeGer.Value ) = '' then fmsgErro('Endere�o de Faturamento do Cliente Incompleto. Falta UF',EdCodCli);

                 end
              else
                 begin

                 pnNomCli.Caption := '';
                 pnCgcCli.Caption := '';
                 pnUfeGer.Caption := '';
                 pnNomVen.Caption := '';

                 fmsgErro('Cliente Informado n�o Encontrado',EdCodCli);

              end;

              end
           else
              begin

              pnNomCli.Caption := '';
              pnUfeGer.Caption := '';
              pnCgcCli.Caption := '';
              pnNomVen.Caption := '';

              fmsgErro('Campo de Preenchimento Obrig�torio n�o Informado',EdCodCli);

           end;
        end;
     end;
  end;
end;

procedure TfmManNge.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqVen := TfmPsqVen.Create(Self);

        fmPsqVen.ShowModal;

        if fmPsqVen.CodVen > 0 then begin

           FatGerCodVen.Value := fmPsqVen.CodVen;

           pnNomVen.Caption := fmPsqVen.NomVen;

           EdCodVen.Text := IntToStr(FatGerCodVen.Value);

        end;

     finally   

        FreeAndNil(fmPsqVen);

     end;

     if FatGerCodVen.Value > 0 then begin

        if EdFrtGer.Enabled then
           EdFrtGer.SetFocus
        else
           EdCodVen.SetFocus;

        end
     else
        EdCodVen.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';
        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           FatGerCodVen.Value := fmAuxPsq.CodVen;

           pnNomVen.Caption := fmAuxPsq.NomVen;

           EdCodVen.Text := IntToStr(FatGerCodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if FatGerCodVen.Value > 0 then begin

        if EdFrtGer.Enabled then
           EdFrtGer.SetFocus
        else
           EdCodVen.SetFocus;

        end
     else
        EdCodVen.SetFocus;

  end;
end;

procedure TfmManNge.EdCodVenExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodCli.Focused) and (not EdDteFat.Focused) and (not EdCodEmp.Focused) and (not EdTipPfa.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if FatGer.State <> dsBrowse then begin

           if FatGerCodVen.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select NomVen From FinVen '+
                           ' Where CodVen = :CodVen';

                   with Params do begin
                        Params[0].AsInteger := FatGerCodVen.Value;
                   end;

                   Open;

              end;

              if Trim( quSql.FieldbyName('NomVen').AsString ) <> '' then
                 pnNomVen.Caption := quSql.FieldbyName('NomVen').AsString
              else
                 begin

                 pnNomVen.Caption := '';

                 fmsgErro('Vendedor Informado n�o Encontrado',EdCodVen);

              end;

              end
           else
              begin

              pnNomVen.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado',EdCodVen);

           end;

           end
        else
           begin

           pnNomVen.Caption := '';

           fmsgErro('Vendedor Informado n�o Encontrado',EdCodVen);

        end;
     end;
  end;
end;

procedure TfmManNge.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
LocPfa : string;
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if FatGerUfeGer.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if FatGerUfeGer.Value <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     try

        fmPsqPfa := TfmPsqPfa.Create(Self);

        with fmPsqPfa.EstPfa,SQL do begin

             Close;
             Text := ' Select EstPfa.CodPfa,'+
                     '        EstPfa.TipPfa,'+
                     '        EstPfa.DscPfa,'+
                     '        EstPfa.DsrPfa,'+
                     '        EstPfa.CodCf1,'+
                     '        EstPfa.CodCf2,'+
                     '        EstPfa.IntFin,'+
                     '        EstPfa.AtuEst,'+
                     '        EstPfa.ConSum,'+
                     '        EstPfa.ModPfa'+
                     ' From EstPfa'+
                     ' Where EstPfa.TipPfa = :TipPfa'+
                     '   and EstPfa.LocPfa = :LocPfa'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString  := FatGerTipPfa.Value;
                  Params[1].AsString  := LocPfa;

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           FatGerCodPfa.Value := Trim(fmPsqPfa.CodPfa);

           pnNomPfa.Caption := fmPsqPfa.NomPfa;

           EdCodPfa.Text := FatGerCodPfa.Value;

        end;

     finally

        FreeAndNil(fmPsqPfa);

     end;

     EdCodPfa.SetFocus;

  end;
end;

procedure TfmManNge.EdCodPfaExit(Sender: TObject);
var
saida : boolean;
LocPfa : string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdFrtGer.Focused) and (not EdCodVen.Focused) and (not EdCodCli.Focused) and
        (not EdDteFat.Focused) and (not EdCodEmp.Focused) and (not EdTipPfa.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if FatGer.State <> dsBrowse then begin

           if Trim( FatGerCodPfa.Value ) <> '' then begin

              if FatGerUfeGer.Value = 'EX' then
                 LocPfa := 'Importacao ou Exportacao'
              else
                 begin

                 if FatGerUfeGer.Value <> GUfeEmp then
                    LocPfa := 'Outros Estados'
                 else
                    LocPfa := 'Mesmo Estado'

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select DscPfa From EstPfa '+
                           ' Where TipPfa = :TipPfa'+
                           '   and CodPfa = :CodPfa'+
                           '   and LocPfa = :LocPfa';

                   with Params do begin

                        Params[0].AsString  := FatGerTipPfa.Value;
                        Params[1].AsString  := FatGerCodPfa.Value;
                        Params[2].AsString  := LocPfa;

                   end;

                   Open;

              end;

              if Trim( quSql.FieldbyName('DscPfa').AsString ) <> '' then
                 pnNomPfa.Caption := quSql.FieldbyName('DscPfa').AsString
              else
                 begin

                 pnNomPfa.Caption := '';

                 fmsgErro('Padr�o de Faturamento Informado n�o Encontrado',EdCodPfa);

              end;

              end
           else
              begin

              pnNomPfa.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado',EdCodPfa);

           end;
        end;
     end;
  end;
end;

procedure TfmManNge.FatGerNewRecord(DataSet: TDataSet);
begin
  inherited;

  FatGer.DisableControls;

  FatGerNumGer.Value := 0;
  FatGerQtiGer.Value := 0;
  FatGerQtdVol.Value := 0;
  FatGerAltVol.Value := 0;
  FatGerSeqIte.Value := 0;
  FatGerQtdNfs.Value := 0;
  FatGerTotIte.Value := 0;
  FatGerTotGer.Value := 0;
  FatGerBasIcm.Value := 0;
  FatGerTotIcm.Value := 0;
  FatGerBasIpi.Value := 0;
  FatGerTotIpi.Value := 0;
  FatGerQtpGer.Value := 0;
  FatGerTotGer.Value := 0;
  FatGerTotBrt.Value := 0;
  FatGerObsGer.Value := '';
  FatGerDteGer.Value := Date;
  FatGerDteFat.Value := Date;
  FatGerFrtGer.Value := 'FOB';
  FatGerTipPfa.Value := 'Saida';
  FatGerCodEmp.Value := GEmp_Id;
  FatGerSitGer.Value := 'Nao Concluido';
  FatGerHreFat.Value := TimeToStr(Time);

  EdDteFat.Date := Date;

  EdFrtGer.Text := 'FOB';

  EdTipPfa.Text := 'Saida';

  if GEmp_Id > 0 then EdCodEmp.Text := IntToStr(GEmp_Id);

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.ApeEmp'+
               ' From GerEmp'+
               ' Where GerEmp.CodEmp = :CodEmp';

       if GFlgAce = 'Sim' then Text := Text + ' and CodFil > '+ QuotedStr('0');
               
       with Params do begin

            Params[0].AsInteger := FatGerCodEmp.Value;

       end;

       Open;

       pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select NomCli,CgcCli,UffCli From FinCli'+
               ' Where CodCli = :CodCli';

       with Params do begin

            Params[0].AsInteger := FatGerCodCli.Value;

       end;

       Open;

  end;

  pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
  pnUfeGer.Caption := quSQL.FieldbyName('UffCli').AsString;

  if Trim( quSQL.FieldbyName('CgcCli').AsString ) <> '' then begin

     if Length(Trim( quSQL.FieldbyName('CgcCli').AsString )) <= 11 then
        pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString,01,03)+ '.' +
                            copy(quSQL.FieldbyName('CgcCli').AsString,04,03)+ '.' +
                            copy(quSQL.FieldbyName('CgcCli').AsString,07,03)+ '-' +
                            copy(quSQL.FieldbyName('CgcCli').AsString,10,02)
     else
        pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString,01,02)+ '.' +
                            copy(quSQL.FieldbyName('CgcCli').AsString,03,03)+ '.' +
                            copy(quSQL.FieldbyName('CgcCli').AsString,06,03)+ '/' +
                            copy(quSQL.FieldbyName('CgcCli').AsString,09,04)+ '-' +
                            copy(quSQL.FieldbyName('CgcCli').AsString,13,02);

     end
  else
     pnCgcCli.Caption := '';

  with quSQL,SQL do begin

       Close;
       Text := ' Select NomVen From FinVen Where FinVen.CodVen = :CodVen';

       with Params do begin

            Params[0].AsInteger := FatGerCodVen.Value;

       end;

       Open;

       pnNomVen.Caption := quSQL.FieldbyName('NomVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select DscPfa From EstPfa'+
               ' Where TipPfa = :TipPfa'+
               '   and CodPfa = :CodPfa';

       with Params do begin

            Params[0].AsString  := FatGerTipPfa.Value;
            Params[1].AsString  := FatGerCodPfa.Value;

       end;

       Open;

       pnNomPfa.Caption := quSQL.FieldbyName('DscPfa').AsString;

  end;

  FatGe2.Close;
  FatGe2.Params[0].AsInteger  := FatGerCodEmp.Value;
  FatGe2.Params[1].AsDateTime := FatGerDteGer.Value;
  FatGe2.Params[2].AsInteger  := FatGerNumGer.Value;
  FatGe2.Open;

  EdTipPfa.Enabled := True;
  EdCodEmp.Enabled := True;
  EdDteFat.Enabled := True;
  EdCodCli.Enabled := True;
  EdCodVen.Enabled := True;
  EdFrtGer.Enabled := True;
  EdCodPfa.Enabled := True;

  EdTipPfa.Font.Style := [];
  EdCodEmp.Font.Style := [];
  EdDteFat.Font.Style := [];
  EdCodCli.Font.Style := [];
  EdCodVen.Font.Style := [];
  EdFrtGer.Font.Style := [];
  EdCodPfa.Font.Style := [];

  EdTipPfa.SetFocus

end;

procedure TfmManNge.EdCodClpExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdFrtGer.Focused) and (not EdDteFat.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if FatGe2.State <> dsBrowse then begin

           if Trim( FatGe2CodClp.Value ) <> '' then begin

              if (FatGe2CodClp.Value <> '9') and (FatGe2CodClp.Value <> '8') then begin

                 psaida := 'Nao';

                 EdCodGru.Enabled := True;
                 EdCodSub.Enabled := True;
                 EdCodPro.Enabled := True;

                 EdCodGru.Font.Style := [];
                 EdCodSub.Font.Style := [];
                 EdCodPro.Font.Style := [];

                 psaida := 'Sim';
                 
                 with quSql,SQL do begin

                      Close;
                      Text := ' Select Count(*) as Reg From EstClp '+
                              ' Where CodClp = '+ QuotedStr(FatGe2CodClp.Value);
                      Open;

                 end;

                 if quSql.FieldbyName('Reg').AsInteger > 0 then begin

                    EdDesGe2.Enabled := False;
                    EdObsGe2.Enabled := False;

                    EdDesGe2.Font.Style := [fsBold];
                    EdObsGe2.Font.Style := [fsBold];

                    end
                 else
                    fmsgErro('Classifica��o Informada n�o Encontrada.',EdCodClp);

                 end
              else
                 begin

                 psaida := 'Nao';

                 EdCodGru.Enabled := False;
                 EdCodSub.Enabled := False;
                 EdCodPro.Enabled := False;

                 EdCodGru.Font.Style := [fsBold];
                 EdCodSub.Font.Style := [fsBold];
                 EdCodPro.Font.Style := [fsBold];

                 psaida := 'Sim';

                 if FatGe2CodClp.Value = '9' then begin

                    FatGe2CodGru.Value := '999';
                    FatGe2CodSub.Value := '9999';
                    FatGe2CodPro.Value := '99999';

                    EdCodCfo.Enabled := True;
                    EdClsIpi.Enabled := True;
                    EdCodSt1.Enabled := True;
                    EdCodSt2.Enabled := True;
                    EdCodUnd.Enabled := True;
                    EdQtpGe2.Enabled := True;
                    EdVluGe2.Enabled := True;
                    EdIpiGe2.Enabled := True;
                    EdIcmGe2.Enabled := True;
                    EdDesGe2.Enabled := True;
                    EdObsGe2.Enabled := True;

                    EdCodCfo.Font.Style := [];
                    EdClsIpi.Font.Style := [];
                    EdCodSt1.Font.Style := [];
                    EdCodSt2.Font.Style := [];
                    EdCodUnd.Font.Style := [];
                    EdQtpGe2.Font.Style := [];
                    EdVluGe2.Font.Style := [];
                    EdIpiGe2.Font.Style := [];
                    EdIcmGe2.Font.Style := [];
                    EdDesGe2.Font.Style := [];
                    EdObsGe2.Font.Style := [];

                    EdCodCfo.SetFocus;

                    end
                 else
                    begin

                    FatGe2CodGru.Value := '888';
                    FatGe2CodSub.Value := '8888';
                    FatGe2CodPro.Value := '88888';

                    EdCodCfo.Enabled := False;
                    EdClsIpi.Enabled := False;
                    EdCodSt1.Enabled := False;
                    EdCodSt2.Enabled := False;
                    EdCodUnd.Enabled := False;
                    EdQtpGe2.Enabled := False;
                    EdVluGe2.Enabled := False;
                    EdIpiGe2.Enabled := False;
                    EdIcmGe2.Enabled := False;

                    EdCodCfo.Font.Style := [fsBold];
                    EdClsIpi.Font.Style := [fsBold];
                    EdCodSt1.Font.Style := [fsBold];
                    EdCodSt2.Font.Style := [fsBold];
                    EdCodUnd.Font.Style := [fsBold];
                    EdQtpGe2.Font.Style := [fsBold];
                    EdVluGe2.Font.Style := [fsBold];
                    EdIpiGe2.Font.Style := [fsBold];
                    EdIcmGe2.Font.Style := [fsBold];

                    EdDesGe2.Enabled := True;
                    EdObsGe2.Enabled := True;

                    EdDesGe2.Font.Style := [];
                    EdObsGe2.Font.Style := [];

                    EdDesGe2.SetFocus;

                 end;
              end;

              end
           else
              fmsgErro('Classifica��o Informada n�o Encontrada.',EdCodClp);

           end
        else
           begin

           if EdCodClp.Enabled then begin

              if Trim( FatGe2CodClp.Value ) = '' then fmsgErro('Classifica��o Informada n�o Encontrada.',EdCodClp);

           end;
        end;
     end;

     end
  else
     begin

     if (Tecla = 'UP') then begin

        if FatGerQtiGer.Value > 0 then begin

           EdCodClp.Enabled := False;
           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdCodCfo.Enabled := False;
           EdClsIpi.Enabled := False;
           EdCodSt1.Enabled := False;
           EdCodSt2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdQtpGe2.Enabled := False;
           EdVluGe2.Enabled := False;
           EdIpiGe2.Enabled := False;
           EdIcmGe2.Enabled := False;
           EdDesGe2.Enabled := False;
           EdObsGe2.Enabled := False;

           EdCodClp.Font.Style := [fsBold];
           EdCodGru.Font.Style := [fsBold];
           EdCodSub.Font.Style := [fsBold];
           EdCodPro.Font.Style := [fsBold];
           EdCodCfo.Font.Style := [fsBold];
           EdClsIpi.Font.Style := [fsBold];
           EdCodSt1.Font.Style := [fsBold];
           EdCodSt2.Font.Style := [fsBold];
           EdCodUnd.Font.Style := [fsBold];
           EdQtpGe2.Font.Style := [fsBold];
           EdVluGe2.Font.Style := [fsBold];
           EdIpiGe2.Font.Style := [fsBold];
           EdIcmGe2.Font.Style := [fsBold];
           EdDesGe2.Font.Style := [fsBold];
           EdObsGe2.Font.Style := [fsBold];

           if FatGe2.State <> dsBrowse then
              FatGe2.CancelUpdates
           else
              begin

              if not FatGe2.Bof then FatGe2.Prior;

           end;

           grGe2.SetFocus;

           end
        else
           EdCodClp.SetFocus;
     end;
  end;
end;

procedure TfmManNge.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        with fmPsqClp.EstClp,SQL do begin

             Close;
             Text := ' Select * From EstClp '+
                     ' Where Exists(Select * From EstPro Where EstPro.CodClp = EstClp.CodClp)'+
                     ' Order by NomClp';
             Open;

        end;

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then begin

           if FatGe2.State = dsBrowse then begin

              if FatGe2CodEmp.Value > 0 then
                 FatGe2.Edit
              else
                 FatGe2.Append;

           end;

           FatGe2CodClp.Value := fmPsqClp.CodClp;

        end;

     finally

        FreeAndNil(fmPsqClp);

     end;

     if Trim( FatGe2CodClp.Value ) <> '' then begin

        if (FatGe2CodClp.Value <> '8') and (FatGe2CodClp.Value <> '9') then begin

           if EdCodGru.Enabled then
              EdCodGru.SetFocus
           else
              EdCodClp.SetFocus;

           end
        else
           EdCodClp.SetFocus;

        end
     else
        EdCodClp.SetFocus;

  end;
end;

procedure TfmManNge.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqGru := TfmPsqGru.Create(Self);

        with fmPsqGru.EstGru,SQL do begin

             Close;
             Text := ' Select * From EstGru '+
                     ' Where Exists(Select * From EstPro Where EstPro.CodClp = '+ QuotedStr(FatGe2CodClp.Value) +
                     '                                     and EstPro.CodGru = EstGru.CodGru)'+
                     ' Order by NomGru';
             Open;

        end;

        fmPsqGru.ShowModal;

        if Trim( fmPsqGru.CodGru ) <> '' then begin

           if FatGe2.State = dsBrowse then begin

              if FatGe2CodEmp.Value > 0 then
                 FatGe2.Edit
              else
                 FatGe2.Append;

           end;

           FatGe2CodGru.Value := fmPsqGru.CodGru;

        end;

     finally

        FreeAndNil(fmPsqGru);

     end;

     if Trim( FatGe2CodGru.Value ) <> '' then begin

        if EdCodSub.Enabled then
           EdCodSub.SetFocus
        else
           EdCodGru.SetFocus;

        end
     else
        EdCodGru.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := FatGe2CodClp.Value;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if FatGe2.State = dsBrowse then begin

              if FatGe2CodEmp.Value > 0 then
                 FatGe2.Edit
              else
                 FatGe2.Append;

           end;

           FatGe2CodGru.Value := fmAuxPsq.CodGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( FatGe2CodGru.Value ) <> '' then begin

        if EdCodSub.Enabled then
           EdCodSub.SetFocus
        else
           EdCodGru.SetFocus;

        end
     else
        EdCodGru.SetFocus;
        
  end;
end;

procedure TfmManNge.EdCodGruExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not EdCodClp.Focused then
        saida := True
     else
        saida := False;

     if saida then begin

        if FatGe2.State <> dsBrowse then begin

           if Trim( FatGe2CodGru.Value ) <> '' then begin

              FatGe2CodGru.Value := FNumZeros(FatGe2CodGru.Value,3);

              if (FatGe2CodGru.Value <> '888') and (FatGe2CodGru.Value <> '999') then begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select Count(*) as Reg From EstGru '+
                              ' Where CodGru = '+ QuotedStr(FatGe2CodGru.Value);
                      Open;

                 end;

                 if quSql.FieldbyName('Reg').AsInteger = 0 then fmsgErro('Grupo Informado n�o Encontrado.',EdCodGru);

              end;

              end
           else
              fmsgErro('Grupo Informado n�o Encontrado.',EdCodGru);

           end
        else
           begin

           if EdCodGru.Enabled then begin

              if Trim( FatGe2CodGru.Value ) = '' then fmsgErro('Grupo Informado n�o Encontrado.',EdCodGru);

           end;
        end;
     end;
  end;
end;

procedure TfmManNge.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSub := TfmPsqSub.Create(Self);

        with fmPsqSub.EstSub,SQL do begin

             Close;
             Text := ' Select CodGru,NomSub,CodSub,NomGru'+
                     ' From EstSub INNER JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)'+
                     ' Where Exists(Select * From EstPro Where EstPro.CodClp = '+ QuotedStr(FatGe2CodClp.Value) +
                     '                                     and EstPro.CodGru = EstSub.CodGru'+
                     '                                     and EstPro.CodSub = EstSub.CodSub)';

             if Trim( FatGe2CodGru.Value ) <> '' then Text := Text + '   and CodGru = '+ QuotedStr(FatGe2CodGru.Value);

             Text := Text + ' Order by NomSub';

             Open;

        end;

        fmPsqSub.ShowModal;

        if Trim( fmPsqSub.CodSub ) <> '' then begin

           if FatGe2.State = dsBrowse then begin

              if FatGe2CodEmp.Value > 0 then
                 FatGe2.Edit
              else
                 FatGe2.Append;

           end;

           FatGe2CodGru.Value := fmPsqSub.CodGru;
           FatGe2CodSub.Value := fmPsqSub.CodSub;

        end;

     finally

        FreeAndNil(fmPsqSub);

     end;

     if Trim( FatGe2CodSub.Value ) <> '' then begin

        if EdCodPro.Enabled then
           EdCodPro.SetFocus
        else
           EdCodSub.SetFocus;

        end
     else
        EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( FatGe2CodGru.Value ) <> '' then fmAuxPsq.CodGru := FatGe2CodGru.Value;

        fmAuxPsq.CodClp := FatGe2CodClp.Value;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if FatGe2.State = dsBrowse then begin

              if FatGe2CodEmp.Value > 0 then
                 FatGe2.Edit
              else
                 FatGe2.Append;

           end;

           FatGe2CodGru.Value := fmAuxPsq.CodGru;
           FatGe2CodSub.Value := fmAuxPsq.CodSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( FatGe2CodSub.Value ) <> '' then begin

        if EdCodPro.Enabled then
           EdCodPro.SetFocus
        else
           EdCodSub.SetFocus;

        end
     else
        EdCodSub.SetFocus;

  end;
end;

procedure TfmManNge.EdCodSubExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodGru.Focused) and (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if Trim( FatGe2CodSub.Value ) <> '' then begin

           if FatGe2.State <> dsBrowse then begin

              FatGe2CodSub.Value := FNumZeros(FatGe2CodSub.Value,4);

              if (FatGe2CodSub.Value <> '8888') and (FatGe2CodSub.Value <> '9999') then begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select Count(*) as Reg From EstSub'+
                              ' Where CodGru = '+ QuotedStr(FatGe2CodGru.Value) +
                              '   and CodSub = '+ QuotedStr(FatGe2CodSub.Value) ;
                      Open;

                      if quSql.FieldbyName('Reg').AsInteger = 0 then fmsgErro('Grupo e Sub-Grupo n�o Encontrado.',EdCodGru);

                 end;
              end;

              end
           else
              begin

              if EdCodSub.Enabled then begin

                 if Trim( FatGe2CodSub.Value ) = '' then fmsgErro('Sub-Grupo Informado n�o Encontrado.',EdCodSub);

              end;
           end;

           end
        else
           fmsgErro('Sub-Grupo Informado n�o Encontrado.',EdCodSub);
     end;
  end;
end;

procedure TfmManNge.EdCodSubKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManNge.EdCodSubMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManNge.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := FatGe2CodClp.Value;
        fmAuxIni.CodGru := FatGe2CodGru.Value;
        fmAuxIni.CodSub := FatGe2CodSub.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if EdCodClp.Enabled then begin

              FatGe2CodClp.Value := fmAuxIni.CodClp;
              FatGe2CodGru.Value := fmAuxIni.CodGru;
              FatGe2CodSub.Value := fmAuxIni.CodSub;
              FatGe2CodPro.Value := fmAuxIni.CodPro;

           end;
        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( FatGe2CodPro.Value ) <> '' then begin

        if EdQtpGe2.Enabled then
           EdQtpGe2.SetFocus
        else
           EdCodPro.SetFocus;

        end
     else
        EdCodPro.SetFocus;

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := FatGe2CodClp.Value;

        if Trim( FatGe2CodGru.Value ) <> '' then fmAuxPsq.CodGru := FatGe2CodGru.Value;
        if Trim( FatGe2CodSub.Value ) <> '' then fmAuxPsq.CodSub := FatGe2CodSub.Value;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if FatGe2.State = dsBrowse then begin

              if FatGe2CodEmp.Value > 0 then
                 FatGe2.Edit
              else
                 FatGe2.Append;

           end;

           FatGe2CodClp.Value := fmAuxPsq.CodClp;
           FatGe2CodGru.Value := fmAuxPsq.CodGru;
           FatGe2CodSub.Value := fmAuxPsq.CodSub;
           FatGe2CodPro.Value := fmAuxPsq.CodPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( FatGe2CodPro.Value ) <> '' then begin

        if EdQtpGe2.Enabled then
           EdQtpGe2.SetFocus
        else
           EdCodPro.SetFocus;

        end
     else
        EdCodPro.SetFocus;

  end;
end;

procedure TfmManNge.EdCodProExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if Trim( FatGe2CodPro.Value ) <> '' then begin

           if FatGe2.State <> dsBrowse then begin

              FatGe2CodPro.Value := FNumStrZero(FatGe2CodPro.Value);

              if (FatGe2CodPro.Value <> '88888') and (FatGe2CodPro.Value <> '99999') then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstPro.CodPro,'+
                              '        EstPro.DscPro,'+
                              '        EstPro.CodUns,'+
                              '        EstPro.CodSt1,'+
                              '        EstPro.CodSt2,'+                                                            
                              '        EstPro.IpiSai,'+
                              '        EstPro.ClfSai,'+                              
                              '        EstPro.IpiTsd,'+
                              '        EstPro.CodSts,'+
                              '        EstPro.TipSts,'+                                                            
                              '        EstPro.IcmSai,'+
                              '        EstPro.IcmTsd,'+
                              '        EstPro.ID_ESTICM_ENTRADA, ID_ESTICM_SAIDA'+
                              ' From EstPro'+
                              ' Where EstPro.CodClp = '+ QuotedStr(FatGe2CodClp.Value) +
                              '   and EstPro.CodGru = '+ QuotedStr(FatGe2CodGru.Value) +
                              '   and EstPro.CodSub = '+ QuotedStr(FatGe2CodSub.Value) +
                              '   and EstPro.CodPro = '+ QuotedStr(FatGe2CodPro.Value) ;
                      Open;

                 end;

                 if Trim( quSQL.FieldbyName('CodPro').AsString ) <> '' then begin

                    FatGe2DesGe2.Value := quSQL.FieldbyName('DscPro').AsString;
                    FatGe2CodSt1.Value := quSQL.FieldbyName('CodSt1').AsString;
                    FatGe2CodSt2.Value := quSQL.FieldbyName('CodSt2').AsString;
                    FatGe2CodUnd.Value := quSQL.FieldbyName('CodUns').AsString;
                    FatGe2ClsIpi.Value := Trim(quSQL.FieldbyName('ClfSai').AsString);

                    if Trim( quSQL.FieldbyName('CodSts').AsString ) <> '' then begin

                       FatGe2CodStr.Value := Trim(quSQL.FieldbyName('CodSts').AsString);
                       FatGe2TipStr.Value := Trim(quSQL.FieldbyName('TipSts').AsString);

                    end;
                    
                    if Trim( quSQL.FieldbyName('IpiSai').AsString ) <> '' then begin

                       FatGe2RegIpi.Value := Trim(quSQL.FieldbyName('IpiSai').AsString);
                       FatGe2TipIpi.Value := Trim(quSQL.FieldbyName('IpiTsd').AsString);

                    end;

                    if Trim( quSQL.FieldbyName('IcmSai').AsString ) <> '' then begin

                       FatGe2RegIcm.Value := Trim(quSQL.FieldbyName('IcmSai').AsString);
                       FatGe2TipIcm.Value := Trim(quSQL.FieldbyName('IcmTsd').AsString);

                       FatGe2TipIcm.Value := Trim(quSQL.FieldbyName('ID_ESTICM_SAIDA').AsString);

                    end;

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select EstIcm.CodIcm,'+
                                 '        EstIcm.CodSt1,'+
                                 '        EstIcm.CodSt2,'+
                                 '        EstIcm.PerIcm From EstIcm'+
                                 ' Where EstIcm.CodIcm = '+ QuotedStr(FatGe2RegIcm.Value) +
                                 '   and EstIcm.TipIcm = '+ QuotedStr(FatGe2TipIcm.Value) ;
                         Open;

                    end;

                    if Trim( quSql.FieldbyName('CodIcm').AsString ) <> '' then begin

                       FatGe2IcmGe2.Value := quSql.FieldbyName('PerIcm').AsFloat;

                       if quSql.FieldbyName('CodSt1').AsString <> '' then FatGe2CodSt1.Value := quSql.FieldbyName('CodSt1').AsString;
                       if quSql.FieldbyName('CodSt2').AsString <> '' then FatGe2CodSt2.Value := quSql.FieldbyName('CodSt2').AsString;

                       end
                    else
                       FatGe2IcmGe2.Value := 0;

                    if qticms = 1 then begin

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select PerIcm From GerIcm Where GerIcm.SigUfe = '+ QuotedStr(FatGerUfeGer.Value);
                            Open;

                            FatGe2IcmGe2.Value := FieldbyName('PerIcm').AsFloat;

                       end;
                    end;

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select EstIpi.CodIpi,'+
                                 '        EstIpi.PerIpi From EstIpi'+
                                 ' Where EstIpi.CodIpi = '+ QuotedStr(FatGe2RegIpi.Value)+
                                 '   and EstIpi.TipIpi = '+ QuotedStr(FatGe2TipIpi.Value);
                         Open;

                    end;

                    if Trim( quSql.FieldbyName('CodIpi').AsString ) <> '' then
                       FatGe2IpiGe2.Value := quSql.FieldbyName('PerIpi').AsFloat
                    else
                       FatGe2IpiGe2.Value := 0;

                    with quSql,SQL do begin

                         Close;
                         Text := ' Select EstIte.CodPro,'+
                                 '        EstIte.VpfIte '+
                                 ' From EstIte'+
                                 ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(FatGe2CodEmp.Value)) +
                                 '   and EstIte.CodClp = '+ QuotedStr(FatGe2CodClp.Value) +
                                 '   and EstIte.CodGru = '+ QuotedStr(FatGe2CodGru.Value) +
                                 '   and EstIte.CodSub = '+ QuotedStr(FatGe2CodSub.Value) +
                                 '   and EstIte.CodPro = '+ QuotedStr(FatGe2CodPro.Value) ;
                         Open;
                         First;

                    end;

                    if quSql.FieldbyName('CodPro').AsString = FatGe2CodPro.Value then begin

                       FatGe2CstGe2.Value := quSql.FieldbyName('VpfIte').AsFloat;
                       FatGe2VluGe2.Value := quSql.FieldbyName('VpfIte').AsFloat;

                       AntVluGe2 := FatGe2VluGe2.Value;

                       FatGe2TotGe2.Value := fRound(FatGe2VluGe2.Value * FatGe2QtpGe2.Value,2);

                       with quSql,SQL do begin

                            Close;
                            Text := ' Select Count(*) as QtdReg from EstQte '+
                                    ' Where EstQte.CodEmp = '+ QuotedStr(IntToStr(FatGe2CodEmp.Value)) +
                                    '   and EstQte.CodClp = '+ QuotedStr(FatGe2CodClp.Value) +
                                    '   and EstQte.CodGru = '+ QuotedStr(FatGe2CodGru.Value) +
                                    '   and EstQte.CodSub = '+ QuotedStr(FatGe2CodSub.Value) +
                                    '   and EstQte.CodPro = '+ QuotedStr(FatGe2CodPro.Value) +
                                    '   and EstQte.CodTam = '+ QuotedStr(FatGe2CodTam.Value) +
                                    '   and EstQte.CodCor = '+ QuotedStr(FatGe2CodCor.Value) ;
                            Open;

                            if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Item Informado n�o Encontrado no Estoque da Empresa.',EdCodPro);

                       end;

                       end
                    else
                       fmsgErro('Item Informado n�o Encontrado na Empresa.',EdCodPro);

                    end
                 else
                    fmsgErro('Item Informado n�o Encontrado.',EdCodPro);

              end;

              end
           else
              begin

              if EdCodPro.Enabled then begin

                 if Trim( FatGe2CodPro.Value ) = '' then fmsgErro('Item Informado n�o Encontrado.',EdCodPro);

              end;
           end;

           end
        else
           fmsgErro('Item Informado n�o Encontrado.',EdCodPro);
     end;
  end;
end;

procedure TfmManNge.EdQtpGe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque'
  
end;

procedure TfmManNge.EdQtpGe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque'

end;

procedure TfmManNge.EdQtpGe2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if FatGe2.State <> dsBrowse then begin

           if FatGe2QtpGe2.Value > 0 then
              FatGe2TotIte.Value := fRound(FatGe2VluGe2.Value * FatGe2QtpGe2.Value,2)
           else
              begin

              if (FatGe2CodClp.Value <> '8') and (FatGe2CodClp.Value <> '9') then fmsgErro('Campo de Preenchimento Obrigatorio.',EdQtpGe2);

           end;
        end;
     end;

     end
  else
     begin

     if (Tecla = 'UP') and (not EdCodClp.Enabled) then EdQtpGe2.SetFocus;

  end;
end;

procedure TfmManNge.EdVluGe2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdQtpGe2.Focused) and (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if FatGe2.State <> dsBrowse then begin

           if FatGe2VluGe2.Value > 0 then begin

              if FatGe2VluGe2.Value <> AntVluGe2 then begin

                 AntVluGe2 := FatGe2VluGe2.Value;

                 FatGe2TotIte.Value := fRound(FatGe2VluGe2.Value * FatGe2QtpGe2.Value,2);

              end;

              end
           else
              begin

              if (FatGe2CodClp.Value <> '8') and (FatGe2CodClp.Value <> '9') then fmsgErro('Campo de Preenchimento Obrigatorio.',EdVluGe2);

           end;   
        end;
     end;
  end;
end;

procedure TfmManNge.EdCodSt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt1 := TfmPsqSt1.Create(Self);

        fmPsqSt1.ShowModal;

        if Trim( fmPsqSt1.CodSt1 ) <> '' then FatGe2CodSt1.Value := fmPsqSt1.CodSt1;

     finally

        FreeAndNil(fmPsqSt1);

     end;

     if Trim( FatGe2CodSt1.Value ) <> '' then begin

        if EdCodSt2.Enabled then
           EdCodSt2.SetFocus
        else
           EdCodSt1.SetFocus;

        end
     else
        EdCodSt1.SetFocus;

  end;
end;

procedure TfmManNge.EdCodSt2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt2 := TfmPsqSt2.Create(Self);

        fmPsqSt2.ShowModal;

        if Trim( fmPsqSt2.CodSt2 ) <> '' then FatGe2CodSt2.Value := fmPsqSt2.CodSt2;

     finally

        FreeAndNil(fmPsqSt2);

     end;

     if Trim( FatGe2CodSt2.Value ) <> '' then begin

        if EdCodUnd.Enabled then
           EdCodUnd.SetFocus
        else
           EdCodSt2.SetFocus;

        end
     else
        EdCodSt2.SetFocus;

  end;
end;

procedure TfmManNge.EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqUnd := TfmPsqUnd.Create(Self);

        fmPsqUnd.ShowModal;

        if Trim( fmPsqUnd.CodUnd ) <> '' then FatGe2CodUnd.Value := fmPsqUnd.CodUnd;

     finally

        FreeAndNil(fmPsqUnd);

     end;

     if Trim( FatGe2CodUnd.Value ) <> '' then begin

        if EdQtpGe2.Enabled then
           EdQtpGe2.SetFocus
        else
           EdCodUnd.SetFocus;

        end
     else
        EdCodUnd.SetFocus;

  end;
end;

procedure TfmManNge.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdCodClp.Focused) or (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then begin

     if key = 114 then begin {F3 - Descri��o}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := FatGe2CodClp.Value;
           fmAuxIni.CodGru := FatGe2CodGru.Value;
           fmAuxIni.CodSub := FatGe2CodSub.Value;

           fmAuxIni.TipoPesq := 'I';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 FatGe2CodClp.Value := fmAuxIni.CodClp;
                 FatGe2CodGru.Value := fmAuxIni.CodGru;
                 FatGe2CodSub.Value := fmAuxIni.CodSub;
                 FatGe2CodPro.Value := fmAuxIni.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if Trim( FatGe2CodPro.Value ) <> '' then begin

           if EdCodPro.Enabled then EdCodPro.SetFocus;

           end
        else
           begin

           if EdCodClp.Focused then EdCodClp.SetFocus;
           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;

     if key = 116 then begin {F5 - Refer�ncia}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := FatGe2CodClp.Value;
           fmAuxIni.CodGru := FatGe2CodGru.Value;
           fmAuxIni.CodSub := FatGe2CodSub.Value;

           fmAuxIni.TipoPesq := 'R';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 FatGe2CodClp.Value := fmAuxIni.CodClp;
                 FatGe2CodGru.Value := fmAuxIni.CodGru;
                 FatGe2CodSub.Value := fmAuxIni.CodSub;
                 FatGe2CodPro.Value := fmAuxIni.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if Trim( FatGe2CodPro.Value ) <> '' then begin

           if EdCodPro.Enabled then EdCodPro.SetFocus;

           end
        else
           begin

           if EdCodClp.Focused then EdCodClp.SetFocus;
           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;

     if key = 117 then begin {F6 - Inteligente/Descri��o}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := FatGe2CodClp.Value;

           fmAuxPsq.TipoPesq := 'I';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 FatGe2CodClp.Value := fmAuxPsq.CodClp;
                 FatGe2CodGru.Value := fmAuxPsq.CodGru;
                 FatGe2CodSub.Value := fmAuxPsq.CodSub;
                 FatGe2CodPro.Value := fmAuxPsq.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( FatGe2CodPro.Value ) <> '' then begin

           if EdCodPro.Enabled then EdCodPro.SetFocus;

           end
        else
           begin

           if EdCodClp.Focused then EdCodClp.SetFocus;
           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;

     if key = 118 then begin {F7 - Inteligente/Refer�ncia}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := FatGe2CodClp.Value;

           fmAuxPsq.TipoPesq := 'R';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 FatGe2CodClp.Value := fmAuxPsq.CodClp;
                 FatGe2CodGru.Value := fmAuxPsq.CodGru;
                 FatGe2CodSub.Value := fmAuxPsq.CodSub;
                 FatGe2CodPro.Value := fmAuxPsq.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( FatGe2CodPro.Value ) <> '' then begin

           if EdCodPro.Enabled then EdCodPro.SetFocus;

           end
        else
           begin

           if EdCodClp.Focused then EdCodClp.SetFocus;
           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;
  end;

  if key = 115 then begin {F4 - Estoque}
                          
     try

        fmPsqEst := TfmPsqEst.Create(Self);

        fmPsqEst.sEntr := sEntr;

        fmPsqEst.sCodClp := '1';

        if ( Trim(FatGe2CodGru.Value) <> '' ) or
           ( Trim(FatGe2CodSub.Value) <> '' ) or
           ( Trim(FatGe2CodPro.Value) <> '' ) then begin

           with fmPsqEst.EstPro,SQL do begin

                Close;
                Text := ' Select EstPro.CodClp,'+
                        '        EstPro.CodGru,'+
                        '        EstPro.CodSub,'+
                        '        EstPro.CodPro,'+
                        '        EstPro.DscPro,'+
                        '        EstPro.RefPro,'+
                        '        EstPro.LocPro,'+
                        '        EstPro.CodUne,'+
                        '        EstPro.CodUns,'+
                        '        EstPro.QtePro,'+
                        '        EstPro.QtsPro,'+
                        '        EstPro.SaiIpi,'+
                        '        EstPro.ClfSai,'+
                        '        EstPro.SaiIcm,'+
                        '        EstPro.SimPro,'+
                        '        EstPro.CodSt1,'+
                        '        EstPro.CodSt2,'+
                        '        EstPro.QtdEmb,'+
                        '        EstPro.ImgPro,'+
                        '        EstPro.FlgPro,'+
                        '        EstPro.CbaPro,'+
                        '        EstPro.WebPro,'+
                        '        EstPro.CodCat,'+
                        '        EstPro.CodTip,'+
                        '        EstPro.CodMrc,'+
                        '        EstPro.NumPro,'+
                        '        EstPro.CodAnt'+
                        ' From EstPro'+
                        ' Where EstPro.CodClp = '''+ '1' +''''+
                        '   and EstPro.FlbPro = '''+ ' ' +'''';

                if Trim( FatGe2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '''+ FatGe2CodGru.Value +'''';
                if Trim( FatGe2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '''+ FatGe2CodSub.Value +'''';
                if Trim( FatGe2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '''+ FatGe2CodPro.Value +'''';

                Text := Text + ' Order by EstPro.DscPro';

                Open;

           end;
        end;

        fmPsqEst.ShowModal;

        if sEntr = 'S' then begin

           if Trim( fmPsqEst.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 FatGe2CodClp.Value := fmPsqEst.CodClp;
                 FatGe2CodGru.Value := fmPsqEst.CodGru;
                 FatGe2CodSub.Value := fmPsqEst.CodSub;
                 FatGe2CodPro.Value := fmPsqEst.CodPro;

              end;
           end;
        end;

     finally

        FreeAndNil(fmPsqEst);

     end;

     if Trim( FatGe2CodPro.Value ) <> '' then begin

        if (EdCodGru.Focused) or (EdCodSub.Focused) then begin

           if EdCodPro.Enabled then EdCodPro.SetFocus;

        end;

        end
     else
        begin

        if EdCodClp.Focused then EdCodClp.SetFocus;
        if EdCodGru.Focused then EdCodGru.SetFocus;
        if EdCodSub.Focused then EdCodSub.SetFocus;
        if EdCodPro.Focused then EdCodPro.SetFocus;

     end;
  end;

  if key = 27 then begin

     if EdQtpGe2.Enabled then begin

        if FatGe2.State <> dsBrowse then FatGe2.CancelUpdates;

        EdCodClp.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdCodCfo.Enabled := False;
        EdClsIpi.Enabled := False;
        EdCodSt1.Enabled := False;
        EdCodSt2.Enabled := False;
        EdCodUnd.Enabled := False;
        EdQtpGe2.Enabled := False;
        EdVluGe2.Enabled := False;
        EdIpiGe2.Enabled := False;
        EdIcmGe2.Enabled := False;
        EdDesGe2.Enabled := False;
        EdObsGe2.Enabled := False;

        EdCodClp.Font.Style := [fsBold];
        EdCodGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];
        EdCodCfo.Font.Style := [fsBold];
        EdClsIpi.Font.Style := [fsBold];
        EdCodSt1.Font.Style := [fsBold];
        EdCodSt2.Font.Style := [fsBold];
        EdCodUnd.Font.Style := [fsBold];
        EdQtpGe2.Font.Style := [fsBold];
        EdVluGe2.Font.Style := [fsBold];
        EdIpiGe2.Font.Style := [fsBold];
        EdIcmGe2.Font.Style := [fsBold];
        EdDesGe2.Font.Style := [fsBold];
        EdObsGe2.Font.Style := [fsBold];

        grGe2.SetFocus;

        end
     else
        begin

        if EdDesGe2.Enabled then begin

           if FatGe2.State <> dsBrowse then FatGe2.CancelUpdates;

           EdDesGe2.Enabled := False;
           EdObsGe2.Enabled := False;

           EdDesGe2.Font.Style := [fsBold];
           EdObsGe2.Font.Style := [fsBold];

           grGe2.SetFocus;

           end
        else
           begin

           if EdBasIc1.Enabled then begin

              if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

              EdBasIc1.Enabled := False;
              EdTotIc1.Enabled := False;
              EdBasSu1.Enabled := False;
              EdTotSu1.Enabled := False;
              EdTotIt1.Enabled := False;
              EdTotFrt.Enabled := False;
              EdTotSeg.Enabled := False;
              EdTotDes.Enabled := False;
              EdTotIp1.Enabled := False;
              EdTotGe1.Enabled := False;

              EdBasIc1.Font.Style := [fsBold];
              EdTotIc1.Font.Style := [fsBold];
              EdBasSu1.Font.Style := [fsBold];
              EdTotSu1.Font.Style := [fsBold];
              EdTotIt1.Font.Style := [fsBold];
              EdTotFrt.Font.Style := [fsBold];
              EdTotSeg.Font.Style := [fsBold];
              EdTotDes.Font.Style := [fsBold];
              EdTotIp1.Font.Style := [fsBold];
              EdTotGe1.Font.Style := [fsBold];

              pnBasIc1.Visible := True;
              pnTotIc1.Visible := True;
              pnBasSu1.Visible := True;
              pnTotSu1.Visible := True;
              pnTotIt1.Visible := True;
              pnTotFrt.Visible := True;
              pnTotSeg.Visible := True;
              pnTotDes.Visible := True;
              pnTotIp1.Visible := True;
              pnTotGe1.Visible := True;

              grGe2.SetFocus;

              end
           else
              begin

              if grGe2.Focused then
                 Close
              else
                 begin

                 if FatGer.State <> dsBrowse then Close;

              end;
           end;
        end;
     end;
  end;

  if key = 123 then begin {F12-Finalizar Pedido}

     if FatGerQtiGer.Value > 0 then begin

        if grGe2.Focused then begin

           try

              fmManNg1 := TfmManNg1.Create(Self);

              fmManNg1.ShowModal;

           finally

              FreeAndNil(fmManNg1);

           end;

           if Finalizar = 'S' then begin

              Finalizar := 'N';

              EdTipPfa.Clear;
              EdCodEmp.Clear;
              EdDteFat.Clear;
              EdCodCli.Clear;
              EdCodVen.Clear;
              EdCodPfa.Clear;
              EdFrtGer.Clear;
              EdBasIc1.Clear;
              EdTotIc1.Clear;
              EdBasSu1.Clear;
              EdTotSu1.Clear;
              EdTotIt1.Clear;
              EdTotFrt.Clear;
              EdTotSeg.Clear;
              EdTotDes.Clear;
              EdTotIp1.Clear;
              EdTotGe1.Clear;

              pnNumGer.Caption := '0';

              pnApeEmp.Caption := '';
              pnNomCli.Caption := '';
              pnCgcCli.Caption := '';
              pnNomVen.Caption := '';
              pnUfeGer.Caption := '';
              pnNomPfa.Caption := '';

              FatGer.Close;
              FatGer.Params[0].AsInteger := 0;
              FatGer.Params[2].AsInteger := 0;
              FatGer.Open;

              FatGer.Insert;

              EdTipPfa.SetFocus

           end;
        end;
     end;
  end;
end;

procedure TfmManNge.grGe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroGe2 : integer;
begin
  inherited;
  if key = 116 then begin

     if FatGe2CodEmp.Value > 0 then begin

        pnBasIc1.Visible := False;
        pnTotIc1.Visible := False;
        pnBasSu1.Visible := False;
        pnTotSu1.Visible := False;
        pnTotIt1.Visible := False;
        pnTotFrt.Visible := False;
        pnTotSeg.Visible := False;
        pnTotDes.Visible := False;
        pnTotIp1.Visible := False;
        pnTotGe1.Visible := False;

        EdBasIc1.Enabled := True;
        EdTotIc1.Enabled := True;
        EdBasSu1.Enabled := True;
        EdTotSu1.Enabled := True;
        EdTotIt1.Enabled := True;
        EdTotFrt.Enabled := True;
        EdTotSeg.Enabled := True;
        EdTotDes.Enabled := True;
        EdTotIp1.Enabled := True;
        EdTotGe1.Enabled := True;

        EdBasIc1.Font.Style := [];
        EdTotIc1.Font.Style := [];
        EdBasSu1.Font.Style := [];
        EdTotSu1.Font.Style := [];
        EdTotIt1.Font.Style := [];
        EdTotFrt.Font.Style := [];
        EdTotSeg.Font.Style := [];
        EdTotDes.Font.Style := [];
        EdTotIp1.Font.Style := [];
        EdTotGe1.Font.Style := [];

        EdBasIc1.Value := FatGerBasIc1.Value;
        EdTotIc1.Value := FatGerTotIc1.Value;
        EdBasSu1.Value := FatGerBasSu1.Value;
        EdTotSu1.Value := FatGerTotSu1.Value;
        EdTotIt1.Value := FatGerTotIt1.Value;
        EdTotFrt.Value := FatGerTotFrt.Value;
        EdTotSeg.Value := FatGerTotSeg.Value;
        EdTotDes.Value := FatGerTotDes.Value;
        EdTotIp1.Value := FatGerTotIp1.Value;
        EdTotGe1.Value := FatGerTotGe1.Value;

        FatGer.Edit;
        
        EdBasIc1.SetFocus;

     end;
  end;

  if key = 13 then begin {Tecla - ENTER}

     if FatGe2CodEmp.Value > 0 then begin

        FatGe2.Edit;
        
        pnDesGe2.Visible := False;
        pnObsGe2.Visible := False;

        if FatGe2CodClp.Value <> '8' then begin

           EdCodCfo.Enabled := True;
           EdClsIpi.Enabled := True;
           EdCodSt1.Enabled := True;
           EdCodSt2.Enabled := True;
           EdCodUnd.Enabled := True;
           EdQtpGe2.Enabled := True;
           EdVluGe2.Enabled := True;
           EdIpiGe2.Enabled := True;
           EdIcmGe2.Enabled := True;

           EdCodCfo.Font.Style := [];
           EdClsIpi.Font.Style := [];
           EdCodSt1.Font.Style := [];
           EdCodSt2.Font.Style := [];
           EdCodUnd.Font.Style := [];
           EdQtpGe2.Font.Style := [];
           EdVluGe2.Font.Style := [];
           EdIpiGe2.Font.Style := [];
           EdIcmGe2.Font.Style := [];

           if FatGe2CodClp.Value <> '9' then begin

              EdDesGe2.Enabled := True;
              EdObsGe2.Enabled := True;

              EdDesGe2.Font.Style := [];
              EdObsGe2.Font.Style := [];

           end;

           EdQtpGe2.SetFocus;

           end
        else
           begin

           EdDesGe2.Enabled := True;
           EdObsGe2.Enabled := True;

           EdDesGe2.Font.Style := [];
           EdObsGe2.Font.Style := [];

           EdDesGe2.SetFocus;

        end;
     end;
  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if FatGe2NroGe2.Value = FatGerQtiGer.Value then FatGe2.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if FatGe2CodEmp.Value > 0 then begin

        NroGe2 := FatGe2NroGe2.Value;

        FatGe2.Delete;

        with FatGe2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

             try

                ApplyUpdates; {Tenta aplicar as altera��es};

                fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o};

             except

                fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro};

                if FatGe2.State <> dsBrowse then FatGe2.CancelUpdates;

                grGe2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        FatGe2.Close;
        FatGe2.Open;

        FatGer.Close;
        FatGer.Open;

        if NroGe2 < FatGerQtiGer.Value then
           FatGe2.Locate('CodEmp;DteGer;NumGer;NroGe2',VarArrayOf([FatGe2CodEmp.Value,FatGe2DteGer.Value,FatGe2NumGer.Value,NroGe2]),[LoPartialKey])
        else
           begin

           if FatGerQtiGer.Value = 0 then
              FatGe2.Append
           else
              FatGe2.Last;

        end;
     end;
  end;
end;

procedure TfmManNge.FormShow(Sender: TObject);
begin
  inherited;
  if fmManGer.CodEmp > 0 then begin

     sEntr := 'S';

     FatGer.Close;
     FatGer.Params[0].AsInteger  := fmManGer.CodEmp;
     FatGer.Params[1].AsDateTime := fmManGer.DteGer;
     FatGer.Params[2].AsInteger  := fmManGer.NumGer;
     FatGer.Open;

     FatGe2.Close;
     FatGe2.Params[0].AsInteger  := FatGerCodEmp.Value;
     FatGe2.Params[1].AsDateTime := FatGerDteGer.Value;
     FatGe2.Params[2].AsInteger  := FatGerNumGer.Value;
     FatGe2.Open;

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.ApeEmp'+
                  ' From GerEmp'+
                  ' Where GerEmp.CodEmp = :CodEmp';

          if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > '+ QuotedStr('0');

          with Params do begin

               Params[0].AsInteger := FatGerCodEmp.Value;

          end;

          Open;

          pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomVen From FinVen'+
                  ' Where CodVen = :CodVen';

          with Params do begin

               Params[0].AsInteger := FatGerCodVen.Value;

          end;

          Open;

          pnNomVen.Caption := FieldbyName('NomVen').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select DscPfa From EstPfa'+
                  ' Where TipPfa = :TipPfa'+
                  '   and CodPfa = :CodPfa';

          with Params do begin

               Params[0].AsString := FatGerTipPfa.Value;
               Params[1].AsString := FatGerCodPfa.Value;

          end;

          Open;

          pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomCli,CgcCli,UffCli From FinCli'+
                  ' Where CodCli = :CodCli';

          with Params do begin

               Params[0].AsInteger := FatGerCodCli.Value;

          end;

          Open;

     end;

     pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
     pnUfeGer.Caption := quSQL.FieldbyName('UffCli').AsString;

     if Trim( quSQL.FieldbyName('CgcCli').AsString ) <> '' then begin

        if Length(Trim( quSQL.FieldbyName('CgcCli').AsString )) <= 11 then
           pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString,01,03)+ '.' +
                               copy(quSQL.FieldbyName('CgcCli').AsString,04,03)+ '.' +
                               copy(quSQL.FieldbyName('CgcCli').AsString,07,03)+ '-' +
                               copy(quSQL.FieldbyName('CgcCli').AsString,10,02)
        else
           pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString,01,02)+ '.' +
                               copy(quSQL.FieldbyName('CgcCli').AsString,03,03)+ '.' +
                               copy(quSQL.FieldbyName('CgcCli').AsString,06,03)+ '/' +
                               copy(quSQL.FieldbyName('CgcCli').AsString,09,04)+ '-' +
                               copy(quSQL.FieldbyName('CgcCli').AsString,13,02);

        end
     else
        pnCgcCli.Caption := '';

     if FatGerSitGer.Value <> 'Nao Concluido' then
        sEnc := 'S'
     else
        begin

        FatGer.Edit;

        bPsqEmp.Enabled := False;
        bPsqCli.Enabled := False;
        bPsqVen.Enabled := False;
        bPsqPfa.Enabled := False;

        EdDteFat.Enabled := True;
        EdFrtGer.Enabled := True;

        EdDteFat.Font.Style := [];
        EdFrtGer.Font.Style := [];

        EdDteFat.SetFocus;

     end;

     end
  else
     begin

     sEntr := 'N';

     LbText.Caption := '';

     FatGer.Insert;

     EdTipPfa.SetFocus;

  end;
end;

procedure TfmManNge.FatGe2NewRecord(DataSet: TDataSet);
begin
  inherited;

  FatGe2.DisableControls;

  with quSql,SQL do begin

       Close;
       Text := ' Select Count(*) as Reg From FatGe2 '+
               ' Where CodEmp = :CodEmp'+
               '   and DteGer = :DteGer'+
               '   and NumGer = :NumGer';

       with Params do begin

            Params[0].AsInteger  := FatGerCodEmp.Value;
            Params[1].AsDateTime := FatGerDteGer.Value;
            Params[2].AsInteger  := FatGerNumGer.Value;

       end;

       Open;
       Last;

  end;

  FatGe2IcmGe2.Value := 0;
  FatGe2IpiGe2.Value := 0;
  FatGe2LiqGe2.Value := 0;
  FatGe2BrtGe2.Value := 0;
  FatGe2QtpGe2.Value := 0;
  FatGe2VluGe2.Value := 0;
  FatGe2CstGe2.Value := 0;
  FatGe2BasIpi.Value := 0;
  FatGe2TotIpi.Value := 0;
  FatGe2BasIcm.Value := 0;
  FatGe2TotIcm.Value := 0;
  FatGe2TotIte.Value := 0;
  FatGe2TotGe2.Value := 0;
  FatGe2TotBrt.Value := 0;
  FatGe2TotLiq.Value := 0;
  FatGe2DesGe2.Value := '';
  FatGe2ObsGe2.Value := '';
  FatGe2FlaSeq.Value := '';
  FatGe2CodClp.Value := '1';
  FatGe2CodTam.Value := 'UN';
  FatGe2CodCor.Value := 'UN';
  FatGe2CodEmp.Value := FatGerCodEmp.Value;
  FatGe2DteGer.Value := FatGerDteGer.Value;
  FatGe2CodEit.Value := FatGerCodEmp.Value;
  FatGe2CodCfo.Value := FatGerCodCf1.Value;
  FatGe2NumGer.Value := FatGerNumGer.Value;
  FatGe2SeqGe2.Value := FatGerSeqIte.Value + 1;
  FatGe2NroGe2.Value := quSql.FieldbyName('Reg').AsInteger + 1;

  FatGe2.EnableControls;

  AntVluGe2 := FatGe2VluGe2.Value;

  pnDesGe2.Visible := False;
  pnObsGe2.Visible := False;

  EdCodClp.Enabled := True;
  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdCodCfo.Enabled := True;
  EdClsIpi.Enabled := True;
  EdCodSt1.Enabled := True;
  EdCodSt2.Enabled := True;
  EdCodUnd.Enabled := True;
  EdQtpGe2.Enabled := True;
  EdVluGe2.Enabled := True;
  EdIpiGe2.Enabled := True;
  EdIcmGe2.Enabled := True;
  EdDesGe2.Enabled := True;
  EdObsGe2.Enabled := True;

  EdCodClp.Font.Style := [];
  EdCodGru.Font.Style := [];
  EdCodSub.Font.Style := [];
  EdCodPro.Font.Style := [];
  EdCodCfo.Font.Style := [];
  EdClsIpi.Font.Style := [];
  EdCodSt1.Font.Style := [];
  EdCodSt2.Font.Style := [];
  EdCodUnd.Font.Style := [];
  EdQtpGe2.Font.Style := [];
  EdVluGe2.Font.Style := [];
  EdIpiGe2.Font.Style := [];
  EdIcmGe2.Font.Style := [];
  EdDesGe2.Font.Style := [];
  EdObsGe2.Font.Style := [];

  EdCodClp.SetFocus;

end;

procedure TfmManNge.Panel3Exit(Sender: TObject);
var
NroGe2 : integer;
begin
  inherited;
  if psaida = 'Sim' then begin

     if FatGe2.State <> dsBrowse then begin

        if (FatGe2CodClp.Value <> '8') and (FatGe2CodClp.Value <> '9') then begin

           if FatGe2VluGe2.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.',EdVluGe2);
           if FatGe2QtpGe2.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.',EdQtpGe2);

           end
        else
           begin

           if Trim( FatGe2DesGe2.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.',EdDesGe2);

        end;
        
        if FatGe2.State = dsInsert then begin

           with FatGe2 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

                try

                   ApplyUpdates; {Tenta aplicar as altera��es};

                   fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro};

                   if FatGe2.State = dsBrowse then FatGe2.Edit;

                   EdCodClp.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           FatGe2.Close;
           FatGe2.Open;

           FatGer.Close;
           FatGer.Open;

           FatGe2.Append;

           EdCodClp.SetFocus;

           end
        else
           begin

           NroGe2 := FatGe2NroGe2.Value;

           with FatGe2 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

                try

                   ApplyUpdates; {Tenta aplicar as altera��es};

                   fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro};

                   if FatGe2.State = dsBrowse then FatGe2.Edit;

                   EdCodClp.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           FatGe2.Close;
           FatGe2.Open;

           FatGe2.Locate('CodEmp;DteGer;NumGer;NroGe2',VarArrayOf([FatGe2CodEmp.Value,FatGe2DteGer.Value,FatGe2NumGer.Value,NroGe2]),[LoPartialKey]);

           FatGer.Close;
           FatGer.Open;

           if FatGe2NroGe2.Value = FatGerQtiGer.Value then
              FatGe2.Append
           else
              begin

              FatGe2.Next;

              EdCodClp.Enabled := False;
              EdCodGru.Enabled := False;
              EdCodSub.Enabled := False;
              EdCodPro.Enabled := False;
              EdCodCfo.Enabled := False;
              EdClsIpi.Enabled := False;
              EdCodSt1.Enabled := False;
              EdCodSt2.Enabled := False;
              EdCodUnd.Enabled := False;
              EdQtpGe2.Enabled := False;
              EdVluGe2.Enabled := False;
              EdIpiGe2.Enabled := False;
              EdIcmGe2.Enabled := False;
              EdDesGe2.Enabled := False;
              EdObsGe2.Enabled := False;

              EdCodClp.Font.Style := [fsBold];
              EdCodGru.Font.Style := [fsBold];
              EdCodSub.Font.Style := [fsBold];
              EdCodPro.Font.Style := [fsBold];
              EdCodCfo.Font.Style := [fsBold];
              EdClsIpi.Font.Style := [fsBold];
              EdCodSt1.Font.Style := [fsBold];
              EdCodSt2.Font.Style := [fsBold];
              EdCodUnd.Font.Style := [fsBold];
              EdQtpGe2.Font.Style := [fsBold];
              EdVluGe2.Font.Style := [fsBold];
              EdIpiGe2.Font.Style := [fsBold];
              EdIcmGe2.Font.Style := [fsBold];
              EdDesGe2.Font.Style := [fsBold];
              EdObsGe2.Font.Style := [fsBold];

              pnDesGe2.Visible := True;
              pnObsGe2.Visible := True;

              grGe2.SetFocus;

           end;
        end;

        end
     else
        begin

        EdCodClp.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdCodCfo.Enabled := False;
        EdClsIpi.Enabled := False;
        EdCodSt1.Enabled := False;
        EdCodSt2.Enabled := False;
        EdCodUnd.Enabled := False;
        EdQtpGe2.Enabled := False;
        EdVluGe2.Enabled := False;
        EdIpiGe2.Enabled := False;
        EdIcmGe2.Enabled := False;
        EdDesGe2.Enabled := False;
        EdObsGe2.Enabled := False;

        EdCodClp.Font.Style := [fsBold];
        EdCodGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];
        EdCodCfo.Font.Style := [fsBold];
        EdClsIpi.Font.Style := [fsBold];
        EdCodSt1.Font.Style := [fsBold];
        EdCodSt2.Font.Style := [fsBold];
        EdCodUnd.Font.Style := [fsBold];
        EdQtpGe2.Font.Style := [fsBold];
        EdVluGe2.Font.Style := [fsBold];
        EdIpiGe2.Font.Style := [fsBold];
        EdIcmGe2.Font.Style := [fsBold];
        EdDesGe2.Font.Style := [fsBold];
        EdObsGe2.Font.Style := [fsBold];

        pnDesGe2.Visible := True;
        pnObsGe2.Visible := True;

        grGe2.SetFocus;

     end;
  end;
end;

procedure TfmManNge.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja Realmente Abandonar a Nota ?','O') then begin

        if FatGe2.State <> dsBrowse then FatGe2.CancelUpdates;
        if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

        fmManGer.FatGer.Close;
        fmManGer.FatGer.Open;

        fmManGer.FatGe2.Close;
        fmManGer.FatGe2.Open;

        Action := CaFree;

        end
     else
        begin

        Abort;

        if FatGerNumGer.Value = Null then FatGer.Insert;

     end;

     end
  else
     begin

     fmManGer.FatGer.Close;
     fmManGer.FatGer.Open;

     fmManGer.FatGe2.Close;
     fmManGer.FatGe2.Open;

     Action := CaFree;

  end;
end;

procedure TfmManNge.Panel4Exit(Sender: TObject);
begin
  inherited;
  if FatGer.State <> dsBrowse then begin

     with FatGer do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

          try

             ApplyUpdates; {Tenta aplicar as altera��es};

             fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o};

          except

             fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro};

             if FatGer.State = dsBrowse then FatGer.Edit;

             EdBasIc1.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     FatGer.Close;
     FatGer.Open;

     pnBasIc1.Caption := FormatFloat('###,###,##0.00',FatGerBasIc1.Value);
     pnTotIc1.Caption := FormatFloat('###,###,##0.00',FatGerTotIc1.Value);
     pnBasSu1.Caption := FormatFloat('###,###,##0.00',FatGerBasSu1.Value);
     pnTotSu1.Caption := FormatFloat('###,###,##0.00',FatGerTotSu1.Value);
     pnTotIt1.Caption := FormatFloat('###,###,##0.00',FatGerTotIt1.Value);
     pnTotFrt.Caption := FormatFloat('###,###,##0.00',FatGerTotFrt.Value);
     pnTotSeg.Caption := FormatFloat('###,###,##0.00',FatGerTotSeg.Value);
     pnTotDes.Caption := FormatFloat('###,###,##0.00',FatGerTotDes.Value);
     pnTotIp1.Caption := FormatFloat('###,###,##0.00',FatGerTotIp1.Value);
     pnTotGe1.Caption := FormatFloat('###,###,##0.00',FatGerTotGe1.Value);

     EdBasIc1.Enabled := False;
     EdTotIc1.Enabled := False;
     EdBasSu1.Enabled := False;
     EdTotSu1.Enabled := False;
     EdTotIt1.Enabled := False;
     EdTotFrt.Enabled := False;
     EdTotSeg.Enabled := False;
     EdTotDes.Enabled := False;
     EdTotIp1.Enabled := False;
     EdTotGe1.Enabled := False;

     EdBasIc1.Font.Style := [fsBold];
     EdTotIc1.Font.Style := [fsBold];
     EdBasSu1.Font.Style := [fsBold];
     EdTotSu1.Font.Style := [fsBold];
     EdTotIt1.Font.Style := [fsBold];
     EdTotFrt.Font.Style := [fsBold];
     EdTotSeg.Font.Style := [fsBold];
     EdTotDes.Font.Style := [fsBold];
     EdTotIp1.Font.Style := [fsBold];
     EdTotGe1.Font.Style := [fsBold];

     pnBasIc1.Visible := True;
     pnTotIc1.Visible := True;
     pnBasSu1.Visible := True;
     pnTotSu1.Visible := True;
     pnTotIt1.Visible := True;
     pnTotFrt.Visible := True;
     pnTotSeg.Visible := True;
     pnTotDes.Visible := True;
     pnTotIp1.Visible := True;
     pnTotGe1.Visible := True;

     grGe2.SetFocus;

     end
  else
     begin

     EdBasIc1.Enabled := False;
     EdTotIc1.Enabled := False;
     EdBasSu1.Enabled := False;
     EdTotSu1.Enabled := False;
     EdTotIt1.Enabled := False;
     EdTotFrt.Enabled := False;
     EdTotSeg.Enabled := False;
     EdTotDes.Enabled := False;
     EdTotIp1.Enabled := False;
     EdTotGe1.Enabled := False;

     EdBasIc1.Font.Style := [fsBold];
     EdTotIc1.Font.Style := [fsBold];
     EdBasSu1.Font.Style := [fsBold];
     EdTotSu1.Font.Style := [fsBold];
     EdTotIt1.Font.Style := [fsBold];
     EdTotFrt.Font.Style := [fsBold];
     EdTotSeg.Font.Style := [fsBold];
     EdTotDes.Font.Style := [fsBold];
     EdTotIp1.Font.Style := [fsBold];
     EdTotGe1.Font.Style := [fsBold];

     pnBasIc1.Visible := True;
     pnTotIc1.Visible := True;
     pnBasSu1.Visible := True;
     pnTotSu1.Visible := True;
     pnTotIt1.Visible := True;
     pnTotFrt.Visible := True;
     pnTotSeg.Visible := True;
     pnTotDes.Visible := True;
     pnTotIp1.Visible := True;
     pnTotGe1.Visible := True;

     grGe2.SetFocus;

  end;
end;

procedure TfmManNge.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        FatGerCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(FatGerCodEmp.Value);

        pnApeEmp.Caption := fmPsqEmp.NomEmp;

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmManNge.bpsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCli := TfmPsqCli.Create(Self);

     fmPsqCli.ShowModal;

     if fmPsqCli.CodCli > 0 then begin

        FatGerCodCli.Value := fmPsqCli.CodCli;
        FatGerUfeGer.Value := fmPsqCli.UffCli;
        FatGerCodVen.Value := fmPsqCli.CodVen;

        EdCodCli.Text := IntToStr(FatGerCodCli.Value);

        pnNomCli.Caption := fmPsqCli.NomCli;
        pnUfeGer.Caption := fmPsqCli.UffCli;

        if FatGerCodVen.Value > 0 then
           EdCodVen.Text := IntToStr(FatGerCodVen.Value)
        else
           EdCodVen.Text := '';

     end;

  finally

     FreeAndNil(fmPsqCli);

  end;

  EdCodCli.SetFocus;
  
end;

procedure TfmManNge.bpsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqVen := TfmPsqVen.Create(Self);

     fmPsqVen.ShowModal;

     if fmPsqVen.CodVen > 0 then begin

        FatGerCodVen.Value := fmPsqVen.CodVen;

        pnNomVen.Caption := fmPsqVen.NomVen;

        EdCodVen.Text := IntToStr(FatGerCodVen.Value);

     end;

  finally

     FreeAndNil(fmPsqVen);

  end;

  EdCodVen.SetFocus;
  
end;

procedure TfmManNge.bpsqPfaClick(Sender: TObject);
var
LocPfa : string;
begin
  inherited;

  if FatGerUfeGer.Value = 'EX' then
     LocPfa := 'Importacao ou Exportacao'
  else
     begin

     if FatGerUfeGer.Value <> GUfeEmp then
        LocPfa := 'Outros Estados'
     else
        LocPfa := 'Mesmo Estado'

  end;

  try

     fmPsqPfa := TfmPsqPfa.Create(Self);

     with fmPsqPfa.EstPfa,SQL do begin

          Close;
          Text := ' Select EstPfa.CodPfa,'+
                  '        EstPfa.TipPfa,'+
                  '        EstPfa.DscPfa,'+
                  '        EstPfa.DsrPfa,'+
                  '        EstPfa.CodCf1,'+
                  '        EstPfa.CodCf2,'+
                  '        EstPfa.IntFin,'+
                  '        EstPfa.AtuEst,'+
                  '        EstPfa.ConSum,'+
                  '        EstPfa.ModPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  '   and EstPfa.LocPfa = :LocPfa'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString  := FatGerTipPfa.Value;
               Params[1].AsString  := LocPfa;

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        FatGerCodPfa.Value := Trim(fmPsqPfa.CodPfa);

        pnNomPfa.Caption := fmPsqPfa.NomPfa;

        EdCodPfa.Text := FatGerCodPfa.Value;

     end;

  finally

     FreeAndNil(fmPsqPfa);

  end;

  EdCodPfa.SetFocus;

end;

procedure TfmManNge.DsGe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if FatGe2.State = dsBrowse then AntVluGe2 := FatGe2VluGe2.Value;

  pnDesGe2.Caption := FatGe2DesGe2.Value;
  pnObsGe2.Caption := FatGe2ObsGe2.Value;

  pnNumGer.Caption := IntToStr(FatGerNumGer.Value);

  pnBasIc1.Caption := FormatFloat('###,###,##0.00',FatGerBasIc1.Value);
  pnTotIc1.Caption := FormatFloat('###,###,##0.00',FatGerTotIc1.Value);
  pnBasSu1.Caption := FormatFloat('###,###,##0.00',FatGerBasSu1.Value);
  pnTotSu1.Caption := FormatFloat('###,###,##0.00',FatGerTotSu1.Value);
  pnTotIt1.Caption := FormatFloat('###,###,##0.00',FatGerTotIt1.Value);
  pnTotFrt.Caption := FormatFloat('###,###,##0.00',FatGerTotFrt.Value);
  pnTotSeg.Caption := FormatFloat('###,###,##0.00',FatGerTotSeg.Value);
  pnTotDes.Caption := FormatFloat('###,###,##0.00',FatGerTotDes.Value);
  pnTotIp1.Caption := FormatFloat('###,###,##0.00',FatGerTotIp1.Value);
  pnTotGe1.Caption := FormatFloat('###,###,##0.00',FatGerTotGe1.Value);

  if FatGe2.State = dsInsert then
     pnNroGe2.Caption := FNumZeros(IntToStr(FatGe2NroGe2.Value),4)+'/'+FNumZeros(IntToStr(FatGerQtiGer.Value + 1),4)
  else
     pnNroGe2.Caption := FNumZeros(IntToStr(FatGe2NroGe2.Value),4)+'/'+FNumZeros(IntToStr(FatGerQtiGer.Value),4);

end;

procedure TfmManNge.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Refer F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManNge.EdTipPfaEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque';
  
end;

procedure TfmManNge.EdCodSt1Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManNge.EdQtpPe2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodCfo.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if FatGe2.State <> dsBrowse then begin

           if FatGe2QtpGe2.Value > 0 then begin

              FatGe2TotGe2.Value := fRound(FatGe2VluGe2.Value * FatGe2QtpGe2.Value,2);

              EdVluGe2.SetFocus;

              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio.',EdQtpGe2);
        end;
     end;
  end;
end;

procedure TfmManNge.EdCodClpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Iniciais F3-Descr F4-Estoque F5-Refer F6-Int/Desc F7-Int/Ref';

end;

procedure TfmManNge.grGe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'Enter-Alterar Dados do Item Item DEL-Excluir Item F4-Estoque F5-Alterar Dados da Nota';

end;

end.
