unit ManDC2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxDBColorDateEdit, dxDBColorEdit;

type
  TfmManDc2 = class(TfmPadrao)
    PaintBox: TPaintBox;
    FatDCl: TwwQuery;
    FatDC2: TwwQuery;
    UpDCl: TUpdateSQL;
    UpDC2: TUpdateSQL;
    DsDC2: TDataSource;
    DsDCl: TDataSource;
    quSql: TwwQuery;
    grPe21: TdxDBGraphicEdit;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    LbText: TLabel;
    Label8: TLabel;
    Label32: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Label24: TLabel;
    Label27: TLabel;
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
    EdTotIt2: TdxDBColorCurrencyEdit;
    EdCodCli: TdxDBColorEdit;
    bpsqCli: TSpeedButton;
    EdNomCli: TdxDBColorEdit;
    pnNomCli: TPanel;
    bpsqEmp: TSpeedButton;
    bpsqVen: TSpeedButton;
    bpsqPfa: TSpeedButton;
    EdCodClp: TdxDBColorEdit;
    FatDClCODEMP: TIntegerField;
    FatDClDTEGER: TDateTimeField;
    FatDClNUMGER: TIntegerField;
    FatDClCODCLI: TIntegerField;
    FatDClCODVEN: TIntegerField;
    FatDClCODPFA: TStringField;
    FatDClTIPPFA: TStringField;
    FatDClUFEGER: TStringField;
    FatDClSEQITE: TIntegerField;
    FatDClQTDNFS: TIntegerField;
    FatDClNRONFS: TIntegerField;
    FatDClCGCCLI: TStringField;
    FatDClINSCLI: TStringField;
    FatDClCODCF1: TStringField;
    FatDClCODCF2: TStringField;
    FatDClFRTGER: TStringField;
    FatDClFLGENT: TStringField;
    FatDClFLGSAI: TStringField;
    FatDClTIPFRT: TStringField;
    FatDClMARGER: TStringField;
    FatDClNROGER: TStringField;
    FatDClESPGER: TStringField;
    FatDClNOMTRA: TStringField;
    FatDClCGCTRA: TStringField;
    FatDClINSTRA: TStringField;
    FatDClCEPTRA: TStringField;
    FatDClTENTRA: TStringField;
    FatDClENDTRA: TStringField;
    FatDClREFTRA: TStringField;
    FatDClNUMTRA: TStringField;
    FatDClBAITRA: TStringField;
    FatDClCIDTRA: TStringField;
    FatDClUFETRA: TStringField;
    FatDClPLCTRA: TStringField;
    FatDClUFEPLC: TStringField;
    FatDClCGECLI: TStringField;
    FatDClNROSUF: TStringField;
    FatDClOBSGER: TStringField;
    FatDClQTIGER: TIntegerField;
    FatDClQTDVOL: TIntegerField;
    FatDClALTVOL: TIntegerField;
    FatDClLINGER: TIntegerField;
    FatDClINFLIQ: TFloatField;
    FatDClTOTLIQ: TFloatField;
    FatDClINFBRT: TFloatField;
    FatDClTOTBRT: TFloatField;
    FatDClBASIPI: TFloatField;
    FatDClTOTIPI: TFloatField;
    FatDClBASICM: TFloatField;
    FatDClTOTICM: TFloatField;
    FatDClBASSUB: TFloatField;
    FatDClTOTSUB: TFloatField;
    FatDClTOTITE: TFloatField;
    FatDClTOTPIS: TFloatField;
    FatDClTOTCOF: TFloatField;
    FatDClTOTFRT: TFloatField;
    FatDClTOTSEG: TFloatField;
    FatDClTOTDES: TFloatField;
    FatDClICMFRT: TFloatField;
    FatDClBAICMF: TFloatField;
    FatDClTOICMF: TFloatField;
    FatDClICMSEG: TFloatField;
    FatDClBAICMS: TFloatField;
    FatDClTOICMS: TFloatField;
    FatDClICMDES: TFloatField;
    FatDClBAICMD: TFloatField;
    FatDClTOICMD: TFloatField;
    FatDClIPIFRT: TFloatField;
    FatDClBAIPIF: TFloatField;
    FatDClTOIPIF: TFloatField;
    FatDClIPISEG: TFloatField;
    FatDClBAIPIS: TFloatField;
    FatDClTOIPIS: TFloatField;
    FatDClIPIDES: TFloatField;
    FatDClBAIPID: TFloatField;
    FatDClTOIPID: TFloatField;
    FatDClTOTGER: TFloatField;
    FatDClCODUSU: TIntegerField;
    FatDClHRCGER: TStringField;
    FatDClDTCGER: TDateTimeField;
    FatDClUSCGER: TIntegerField;
    FatDClOBCGER: TMemoField;
    FatDClTIPIPI: TStringField;
    FatDClTRBIPI: TStringField;
    FatDClREDIPI: TFloatField;
    FatDClBSCIPI: TFloatField;
    FatDClTIPICM: TStringField;
    FatDClTRBICM: TStringField;
    FatDClREDICM: TFloatField;
    FatDClBSCICM: TFloatField;
    FatDClINCREV: TFloatField;
    FatDClINCFIN: TFloatField;
    FatDClBASIP1: TFloatField;
    FatDClTOTIP1: TFloatField;
    FatDClBASIC1: TFloatField;
    FatDClTOTIC1: TFloatField;
    FatDClBASSU1: TFloatField;
    FatDClTOTSU1: TFloatField;
    FatDClTOTIT1: TFloatField;
    FatDClTOTGE1: TFloatField;
    FatDClTXFIPI: TStringField;
    FatDClTXFICM: TStringField;
    EdObsGe2: TdxDBColorEdit;
    pnObsGe2: TPanel;
    EdDesGe2: TdxDBColorEdit;
    pnDesGe2: TPanel;
    Label44: TLabel;
    Label43: TLabel;
    pnNroGe2: TPanel;
    EdNroGe2: TdxDBColorCurrencyEdit;
    FatDClQTPGER: TIntegerField;
    FatDClLANGER: TFloatField;
    FatDClSLDGER: TFloatField;
    FatDC2CODEMP: TIntegerField;
    FatDC2DTEGER: TDateTimeField;
    FatDC2NUMGER: TIntegerField;
    FatDC2SEQGE2: TIntegerField;
    FatDC2CODEIT: TIntegerField;
    FatDC2CODCLP: TStringField;
    FatDC2CODGRU: TStringField;
    FatDC2CODSUB: TStringField;
    FatDC2CODPRO: TStringField;
    FatDC2CODTAM: TStringField;
    FatDC2CODCOR: TStringField;
    FatDC2DESGE2: TStringField;
    FatDC2OBSGE2: TStringField;
    FatDC2CODST1: TStringField;
    FatDC2CODST2: TStringField;
    FatDC2CODUND: TStringField;
    FatDC2LIQGE2: TFloatField;
    FatDC2BRTGE2: TFloatField;
    FatDC2LINGE2: TIntegerField;
    FatDC2QTPGE2: TFloatField;
    FatDC2VLUGE2: TFloatField;
    FatDC2ICMGE2: TFloatField;
    FatDC2IPIGE2: TFloatField;
    FatDC2CLSIPI: TStringField;
    FatDC2BASIPI: TFloatField;
    FatDC2TOTIPI: TFloatField;
    FatDC2BASICM: TFloatField;
    FatDC2TOTICM: TFloatField;
    FatDC2TOTGE2: TFloatField;
    FatDC2TOTLIQ: TFloatField;
    FatDC2TOTBRT: TFloatField;
    FatDC2TOTPIS: TFloatField;
    FatDC2TOTCOF: TFloatField;
    FatDC2NROGE2: TIntegerField;
    FatDC2NRONFS: TIntegerField;
    FatDC2TIPIPI: TStringField;
    FatDC2TRBIPI: TStringField;
    FatDC2REDIPI: TFloatField;
    FatDC2BSCIPI: TFloatField;
    FatDC2TIPICM: TStringField;
    FatDC2TRBICM: TStringField;
    FatDC2REDICM: TFloatField;
    FatDC2BSCICM: TFloatField;
    FatDC2INCREV: TFloatField;
    FatDC2INCFIN: TFloatField;
    EdCodUnd: TdxDBColorEdit;
    EdCstGe2: TdxDBColorCurrencyEdit;
    Label11: TLabel;
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
    Label17: TLabel;
    FatDClSEQGER: TStringField;
    Label23: TLabel;
    EdTipPfa: TdxDBColorPickEdit;
    Label55: TLabel;
    Label59: TLabel;
    pnCgcCli: TPanel;
    EdCgcCli: TdxDBColorEdit;
    FatDClINECLI: TStringField;
    FatDClFLGCTB: TStringField;
    FatDClATUEST: TStringField;
    FatDClINTFIN: TStringField;
    FatDClCONSUM: TStringField;
    FatDC2CSTGE2: TFloatField;
    FatDClPERPIS: TFloatField;
    FatDClPERCOF: TFloatField;
    FatDClDESNAT: TStringField;
    FatDClPRTTRA: TStringField;
    FatDClFONTRA: TStringField;
    grGe2: ThGrid;
    FatDClBSICMF: TFloatField;
    FatDClBSICMS: TFloatField;
    FatDClBSICMD: TFloatField;
    FatDClBSIPIF: TFloatField;
    FatDClBSIPIS: TFloatField;
    FatDClBSIPID: TFloatField;
    FatDClCODIPI: TStringField;
    FatDClCODICM: TStringField;
    FatDClFLGATU: TStringField;
    FatDC2REGIPI: TStringField;
    FatDC2REGICM: TStringField;
    FatDClSITGER: TStringField;
    FatDClHREFAT: TStringField;
    FatDClDSCREG: TFloatField;
    FatDClCODFIL: TIntegerField;
    FatDClFLGAVI: TStringField;
    FatDClCEPCLI: TStringField;
    FatDClTENCLI: TStringField;
    FatDClENDCLI: TStringField;
    FatDClREFCLI: TStringField;
    FatDClNUMCLI: TStringField;
    FatDClBAICLI: TStringField;
    FatDClCIDCLI: TStringField;
    FatDClSTPGER: TIntegerField;
    FatDClTOTDSR: TFloatField;
    FatDClLANEST: TStringField;
    FatDClDTEATU: TDateTimeField;
    FatDClHREATU: TStringField;
    FatDClUSUATU: TIntegerField;
    FatDClTRASDA: TIntegerField;
    FatDClDTESDA: TDateTimeField;
    FatDClHRESDA: TStringField;
    FatDClUSUSDA: TIntegerField;
    FatDClOBSSDA: TStringField;
    FatDClCODVEI: TIntegerField;
    FatDClDTEENT: TDateTimeField;
    FatDClHREENT: TStringField;
    FatDClUSUENT: TIntegerField;
    FatDClOBSENT: TStringField;
    FatDClDESREG: TStringField;
    FatDClUFECLI: TStringField;
    FatDClINSSUB: TStringField;
    FatDC2REFGE2: TStringField;
    FatDC2QTDGE2: TFloatField;
    FatDC2SLDGE2: TFloatField;
    FatDC2VCHGE2: TFloatField;
    FatDC2VREGE2: TFloatField;
    FatDC2VCRGE2: TFloatField;
    FatDC2VCPGE2: TFloatField;
    FatDC2VPRGE2: TFloatField;
    FatDC2VMEGE2: TFloatField;
    FatDC2VPFGE2: TFloatField;
    FatDC2CSTCST: TFloatField;
    FatDC2VCHCST: TFloatField;
    FatDC2VRECST: TFloatField;
    FatDC2VCRCST: TFloatField;
    FatDC2VCPCST: TFloatField;
    FatDC2VPRCST: TFloatField;
    FatDC2VMECST: TFloatField;
    FatDC2VPFCST: TFloatField;
    FatDC2DSRGE2: TFloatField;
    FatDC2VDRGE2: TFloatField;
    FatDC2VLQGE2: TFloatField;
    FatDC2SEQNFG: TIntegerField;
    FatDC2SEQGE4: TIntegerField;
    FatDC2BASSUB: TFloatField;
    FatDC2TOTSUB: TFloatField;
    FatDC2TOTITE: TFloatField;
    FatDC2TOTDSR: TFloatField;
    FatDC2CODSTR: TStringField;
    FatDC2TIPSTR: TStringField;
    FatDC2FLASEQ: TStringField;
    FatDC2FLGLIB: TStringField;
    FatDClNROCOL: TStringField;
    FatDClDTEFAT: TDateTimeField;
    FatDClFLGNFS: TStringField;
    FatDClFLGENV: TStringField;
    FatDClQTISER: TIntegerField;
    FatDClSEQSER: TIntegerField;
    FatDClBASISS: TFloatField;
    FatDClTOTISS: TFloatField;
    FatDClBASIS1: TFloatField;
    FatDClTOTIS1: TFloatField;
    FatDClTOTSER: TFloatField;
    FatDClTOTSE1: TFloatField;
    FatDClFLGSIN: TStringField;
    Label3: TLabel;
    EdNroNfs: TdxDBColorEdit;
    Label18: TLabel;
    EdSerNot: TdxDBColorEdit;
    FatDClSERNOT: TStringField;
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
    procedure EdTipPfaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdTipPfaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
    procedure FatDClNewRecord(DataSet: TDataSet);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodGruKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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
    procedure EdCodSt1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSt1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdCodSt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSt2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grGe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FatDC2NewRecord(DataSet: TDataSet);
    procedure Panel3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grGe2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grGe2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Panel4Exit(Sender: TObject);
    procedure bpsqEmpClick(Sender: TObject);
    procedure bpsqCliClick(Sender: TObject);
    procedure bpsqVenClick(Sender: TObject);
    procedure bpsqPfaClick(Sender: TObject);
    procedure DsDC2DataChange(Sender: TObject; Field: TField);
  private
  public
    qticms: integer;
    AntVluGe2: real;
    DteGer: TDateTime;
    CodEmp, NumGer: integer;
    psaida, sEnc, sEntr, Finalizar: string;
  end;

var
  fmManDc2: TfmManDc2;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, AuxPsq, PsqRef, PsqObs,
  PsqPro, PsqEst, ManDCl, PsqGru, PsqSub, PsqIcm, PsqTab, PsqTam, PsqSt1,
  PsqSt2, PsqEmp, PsqVen, PsqPfa, PsqCli, PsqClp, AuxIni, PsqUnd;

{$R *.DFM}

procedure TfmManDc2.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  psaida := 'Sim';

  Finalizar := 'N';

end;

procedure TfmManDc2.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDc2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManDC2 := nil;
end;

procedure TfmManDc2.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManDc2.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then
  begin

    if FatDClSitGer.Value = 'Faturado' then
      fMsg('Operação não Pode ser Realizada. Nota já Emitida.', 'E')

    else if FatDClSitGer.Value = 'Cancelado' then
      fMsg('Operação não Pode ser Realizada. Nota Cancelada.', 'E');

    Finalizar := 'S';

    Close;

  end;
end;

procedure TfmManDc2.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManDc2.EdTipPfaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque';

end;

procedure TfmManDc2.EdTipPfaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque';

end;

procedure TfmManDc2.EdTipPfaExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then
    EdTipPfa.SetFocus
end;

procedure TfmManDc2.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        FatDClCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(FatDClCodEmp.Value);

        pnApeEmp.Caption := fmPsqEmp.ApeEmp;

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;

    if FatDClCodEmp.Value > 0 then
    begin

      if EdDteFat.Enabled then
        EdDteFat.SetFocus
      else
        EdCodEmp.SetFocus;

    end
    else
      EdCodEmp.SetFocus;

  end;
end;

procedure TfmManDc2.EdCodEmpKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManDc2.EdCodEmpMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManDc2.Panel1Exit(Sender: TObject);
var
  SeqGer: string;
begin
  inherited;
  if FatDCl.State <> dsBrowse then
  begin

    if FatDClDteFat.Value = 0 then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdDteFat);
    if FatDClNroNfs.Value = 0 then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdNroNfs);

    if FatDCl.State = dsInsert then
    begin

      if FatDClCodCli.Value = 0 then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodCli);

      if FatDClCodVen.Value = 0 then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodVen);

      if Trim(FatDClCodPfa.Value) = '' then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodPfa);

      if Trim(FatDClUfeGer.Value) = '' then
        fmsgErro('Endereço de Faturamento do Cliente Esta Incompleto.', EdCodCli);

      Randomize;
      SeqGer := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
        copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
        copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
        copy(TimeToStr(Time), 1, 2) +
        copy(TimeToStr(Time), 4, 2) +
        copy(TimeToStr(Time), 7, 2) +
        FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
        FNumZeros(Trim(IntToStr(Random(50000))), 5);

      FatDClSeqGer.Value := SeqGer;

    end
    else
      SeqGer := FatDClSeqGer.Value;

    with FatDCl do
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

        if FatDCl.State = dsBrowse then
          FatDCl.Edit;

        if EdCodEmp.Enabled then
          EdCodEmp.SetFocus
        else
          EdDteFat.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select CodEmp,DteGer,NumGer From FatDCl' +
        ' Where SeqGer = :SeqGer';

      with Params do
      begin

        Params[0].AsString := SeqGer;

      end;

      Open;

    end;

    FatDCl.Close;
    FatDCl.Params[0].AsInteger := quSQL.FieldbyName('CodEmp').AsInteger;
    FatDCl.Params[1].AsDateTime := quSQL.FieldbyName('DteGer').AsDateTime;
    FatDCl.Params[2].AsInteger := quSQL.FieldbyName('NumGer').AsInteger;
    FatDCl.Open;

    FatDC2.Close;
    FatDC2.Params[0].AsInteger := FatDClCodEmp.Value;
    FatDC2.Params[1].AsDateTime := FatDClDteGer.Value;
    FatDC2.Params[2].AsInteger := FatDClNumGer.Value;
    FatDC2.Open;

    qticms := 0;

    if GUfeEmp <> FatDClUfeGer.Value then
    begin

      with quSql, SQL do
      begin

        Close;
        Text := ' Select Count(*) as Reg from GerIcm ' +
          ' Where SigUfe = ''' + FatDClUfeGer.Value + '''';
        Open;

      end;

      qticms := quSql.FieldbyName('Reg').AsInteger;

    end;

    EdTipPfa.Enabled := False;
    EdNroNfs.Enabled := False;
    EdSerNot.Enabled := False;
    EdCodEmp.Enabled := False;
    EdDteFat.Enabled := False;
    EdCodCli.Enabled := False;
    EdCodVen.Enabled := False;
    EdFrtGer.Enabled := False;
    EdCodPfa.Enabled := False;

    EdTipPfa.Font.Style := [fsBold];
    EdNroNfs.Font.Style := [fsBold];
    EdSerNot.Font.Style := [fsBold];
    EdCodEmp.Font.Style := [fsBold];
    EdDteFat.Font.Style := [fsBold];
    EdCodCli.Font.Style := [fsBold];
    EdCodVen.Font.Style := [fsBold];
    EdFrtGer.Font.Style := [fsBold];
    EdCodPfa.Font.Style := [fsBold];

    if FatDClQtiGer.Value = 0 then
      FatDc2.Append
    else
      grGe2.SetFocus;

  end;
end;

procedure TfmManDc2.EdCodEmpExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if not EdTipPfa.Focused then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatDCl.State <> dsBrowse then
      begin

        if FatDClCodEmp.Value > 0 then
        begin

          if GFlgAce <> 'Sim' then
          begin

            with quSQL, SQL do
            begin

              Close;
              Text := ' Select FLGDEL,SEQIMP from GerPar';
              Open;

              if Trim(FieldbyName('FLGDEL').AsString) = '*' then
              begin

                GFlgAce := 'Sim';

                if FieldbyName('SEQIMP').AsInteger > 0 then
                  GEmpLog := FieldbyName('SEQIMP').AsInteger;

              end
              else
              begin

                GEmpLog := 0;
                GFlgAce := 'Nao';

              end;
            end;
          end;

          with quSql, SQL do
          begin

            Close;
            Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

            if GFlgAce = 'Sim' then
            begin

              if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
              else
                Text := Text + ' and GerEmp.CodFil > 0';

            end;

            with Params do
            begin

              Params[0].AsInteger := FatDClCodEmp.Value;

            end;

            Open;

          end;

          if Trim(quSql.FieldbyName('ApeEmp').AsString) <> '' then
            pnApeEmp.Caption := quSql.FieldbyName('ApeEmp').AsString
          else
          begin

            pnApeEmp.Caption := '';

            fmsgErro('Empresa Informada não Encontrada', EdCodEmp);

          end;

        end
        else
        begin

          pnApeEmp.Caption := '';

          fmsgErro('Campo de Preenchimento Obrigátorio não Informado', EdCodEmp);

        end;
      end;
    end;
  end;
end;

procedure TfmManDc2.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqCli := TfmPsqCli.Create(Self);

      fmPsqCli.ShowModal;

      if fmPsqCli.CodCli > 0 then
      begin

        FatDClCodCli.Value := fmPsqCli.CodCli;
        FatDClUfeGer.Value := fmPsqCli.UffCli;
        FatDClCodVen.Value := fmPsqCli.CodVen;

        EdCodCli.Text := IntToStr(FatDClCodCli.Value);

        pnNomCli.Caption := fmPsqCli.NomCli;
        pnUfeGer.Caption := fmPsqCli.UffCli;

        if FatDClCodVen.Value > 0 then
          EdCodVen.Text := IntToStr(FatDClCodVen.Value)
        else
          EdCodVen.Text := '';

      end;

    finally

      FreeAndNil(fmPsqCli);

    end;

    if FatDClCodCli.Value > 0 then
    begin

      if EdCodVen.Enabled then
        EdCodVen.SetFocus
      else
        EdCodCli.SetFocus;

    end
    else
      EdCodCli.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'C';
      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodCli > 0 then
      begin

        FatDClCodCli.Value := fmAuxPsq.CodCli;
        FatDClUfeGer.Value := fmAuxPsq.UffCli;
        FatDClCodVen.Value := fmAuxPsq.CodVen;

        EdCodCli.Text := IntToStr(FatDClCodCli.Value);

        pnNomCli.Caption := fmPsqCli.NomCli;
        pnUfeGer.Caption := fmPsqCli.UffCli;

        if FatDClCodVen.Value > 0 then
          EdCodVen.Text := IntToStr(FatDClCodVen.Value)
        else
          EdCodVen.Text := '';

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if FatDClCodCli.Value > 0 then
    begin

      if EdCodVen.Enabled then
        EdCodVen.SetFocus
      else
        EdCodCli.SetFocus;

    end
    else
      EdCodCli.SetFocus;

  end;
end;

procedure TfmManDc2.EdCodCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManDc2.EdCodCliMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManDc2.EdCodCliExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdDteFat.Focused) and (not EdCodEmp.Focused) and (not EdTipPfa.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatDCl.State <> dsBrowse then
      begin

        if FatDClCodCli.Value > 0 then
        begin

          with quSql, SQL do
          begin

            Close;
            Text := ' Select FinCli.CodCli,' +
              '        FinCli.NomCli,' +
              '        FinCli.UffCli,' +
              '        FinCli.CodVen,' +
              '        FinCli.CgcCli From FinCli Where FinCli.CodCli = ''' + IntToStr(FatDClCodCli.Value) + '''';
            Open;

          end;

          if quSql.FieldbyName('CodCli').AsInteger = FatDClCodCli.Value then
          begin

            FatDClUfeGer.Value := quSQL.FieldbyName('UffCli').AsString;
            FatDClCodVen.Value := quSQL.FieldbyName('CodVen').AsInteger;

            pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
            pnUfeGer.Caption := quSQL.FieldbyName('UffCli').AsString;

            if Trim(quSQL.FieldbyName('CodVen').AsString) <> '' then
              EdCodVen.Text := quSQL.FieldbyName('CodVen').AsString;

            if Trim(quSQL.FieldbyName('CgcCli').AsString) <> '' then
            begin

              if Length(Trim(quSQL.FieldbyName('CgcCli').AsString)) <= 11 then
                pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString, 01, 03) + '.' +
                  copy(quSQL.FieldbyName('CgcCli').AsString, 04, 03) + '.' +
                  copy(quSQL.FieldbyName('CgcCli').AsString, 07, 03) + '-' +
                  copy(quSQL.FieldbyName('CgcCli').AsString, 10, 02)
              else
                pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString, 01, 02) + '.' +
                  copy(quSQL.FieldbyName('CgcCli').AsString, 03, 03) + '.' +
                  copy(quSQL.FieldbyName('CgcCli').AsString, 06, 03) + '/' +
                  copy(quSQL.FieldbyName('CgcCli').AsString, 09, 04) + '-' +
                  copy(quSQL.FieldbyName('CgcCli').AsString, 13, 02);

            end
            else
              pnCgcCli.Caption := '';

            with quSql, SQL do
            begin

              Close;
              Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = ''' + IntToStr(FatDClCodVen.Value) + '''';
              Open;

            end;

            pnNomVen.Caption := quSQL.FieldbyName('ApeVen').AsString;

            if Trim(FatDClUfeGer.Value) = '' then
              fmsgErro('Endereço de Faturamento do Cliente Incompleto. Falta UF', EdCodCli);

          end
          else
          begin

            pnNomCli.Caption := '';
            pnCgcCli.Caption := '';
            pnUfeGer.Caption := '';
            pnNomVen.Caption := '';

            fmsgErro('Cliente Informado não Encontrado', EdCodCli);

          end;

        end
        else
        begin

          pnNomCli.Caption := '';
          pnUfeGer.Caption := '';
          pnCgcCli.Caption := '';
          pnNomVen.Caption := '';

          fmsgErro('Campo de Preenchimento Obrigátorio não Informado', EdCodCli);

        end;
      end;
    end;
  end;
end;

procedure TfmManDc2.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqVen := TfmPsqVen.Create(Self);

      fmPsqVen.ShowModal;

      if fmPsqVen.CodVen > 0 then
      begin

        FatDClCodVen.Value := fmPsqVen.CodVen;

        pnNomVen.Caption := fmPsqVen.NomVen;

        EdCodVen.Text := IntToStr(FatDClCodVen.Value);

      end;

    finally

      FreeAndNil(fmPsqVen);

    end;

    if FatDClCodVen.Value > 0 then
    begin

      if EdFrtGer.Enabled then
        EdFrtGer.SetFocus
      else
        EdCodVen.SetFocus;

    end
    else
      EdCodVen.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'V';
      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodVen > 0 then
      begin

        FatDClCodVen.Value := fmAuxPsq.CodVen;

        pnNomVen.Caption := fmAuxPsq.NomVen;

        EdCodVen.Text := IntToStr(FatDClCodVen.Value);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if FatDClCodVen.Value > 0 then
    begin

      if EdFrtGer.Enabled then
        EdFrtGer.SetFocus
      else
        EdCodVen.SetFocus;

    end
    else
      EdCodVen.SetFocus;

  end;
end;

procedure TfmManDc2.EdCodVenExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodCli.Focused) and (not EdDteFat.Focused) and (not EdCodEmp.Focused) and (not EdTipPfa.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatDCl.State <> dsBrowse then
      begin

        if FatDClCodVen.Value > 0 then
        begin

          with quSql, SQL do
          begin

            Close;
            Text := ' Select NomVen From FinVen ' +
              ' Where CodVen = :CodVen';

            with Params do
            begin
              Params[0].AsInteger := FatDClCodVen.Value;
            end;

            Open;

          end;

          if Trim(quSql.FieldbyName('NomVen').AsString) <> '' then
            pnNomVen.Caption := quSql.FieldbyName('NomVen').AsString
          else
          begin

            pnNomVen.Caption := '';

            fmsgErro('Vendedor Informado não Encontrado', EdCodVen);

          end;

        end
        else
        begin

          pnNomVen.Caption := '';

          fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdCodVen);

        end;

      end
      else
      begin

        pnNomVen.Caption := '';

        fmsgErro('Vendedor Informado não Encontrado', EdCodVen);

      end;
    end;
  end;
end;

procedure TfmManDc2.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  LocPfa: string;
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if FatDClUfeGer.Value = 'EX' then
      LocPfa := 'Importacao ou Exportacao'
    else
    begin

      if FatDClUfeGer.Value <> GUfeEmp then
        LocPfa := 'Outros Estados'
      else
        LocPfa := 'Mesmo Estado'

    end;

    try

      fmPsqPfa := TfmPsqPfa.Create(Self);

      with fmPsqPfa.EstPfa, SQL do
      begin

        Close;
        Text := ' Select EstPfa.CodPfa,' +
          '        EstPfa.TipPfa,' +
          '        EstPfa.DscPfa,' +
          '        EstPfa.DsrPfa,' +
          '        EstPfa.CodCf1,' +
          '        EstPfa.CodCf2,' +
          '        EstPfa.IntFin,' +
          '        EstPfa.AtuEst,' +
          '        EstPfa.ConSum,' +
          '        EstPfa.ModPfa' +
          ' From EstPfa' +
          ' Where EstPfa.TipPfa = :TipPfa' +
          '   and EstPfa.LocPfa = :LocPfa' +
          ' Order by EstPfa.DscPfa';

        with Params do
        begin

          Params[0].AsString := FatDClTipPfa.Value;
          Params[1].AsString := LocPfa;

        end;

        Open;

      end;

      fmPsqPfa.ShowModal;

      if Trim(fmPsqPfa.CodPfa) <> '' then
      begin

        FatDClCodPfa.Value := fmPsqPfa.CodPfa;

        pnNomPfa.Caption := fmPsqPfa.NomPfa;

        EdCodPfa.Text := FatDClCodPfa.Value;

      end;

    finally

      FreeAndNil(fmPsqPfa);

    end;

    EdCodPfa.SetFocus;

  end;
end;

procedure TfmManDc2.EdCodPfaExit(Sender: TObject);
var
  saida: boolean;
  LocPfa: string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdFrtGer.Focused) and (not EdCodVen.Focused) and (not EdCodCli.Focused) and
      (not EdDteFat.Focused) and (not EdCodEmp.Focused) and (not EdTipPfa.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatDCl.State <> dsBrowse then
      begin

        if Trim(FatDClCodPfa.Value) <> '' then
        begin

          if FatDClUfeGer.Value = 'EX' then
            LocPfa := 'Importacao ou Exportacao'
          else
          begin

            if FatDClUfeGer.Value <> GUfeEmp then
              LocPfa := 'Outros Estados'
            else
              LocPfa := 'Mesmo Estado'

          end;

          with quSql, SQL do
          begin

            Close;
            Text := ' Select DscPfa From EstPfa ' +
              ' Where TipPfa = :TipPfa' +
              '   and CodPfa = :CodPfa' +
              '   and LocPfa = :LocPfa';

            with Params do
            begin

              Params[0].AsString := FatDClTipPfa.Value;
              Params[1].AsString := FatDClCodPfa.Value;
              Params[2].AsString := LocPfa;

            end;

            Open;

          end;

          if Trim(quSql.FieldbyName('DscPfa').AsString) <> '' then
            pnNomPfa.Caption := quSql.FieldbyName('DscPfa').AsString
          else
          begin

            pnNomPfa.Caption := '';

            fmsgErro('Padrão de Faturamento Informado não Encontrado', EdCodPfa);

          end;

        end
        else
        begin

          pnNomPfa.Caption := '';

          fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdCodPfa);

        end;
      end;
    end;
  end;
end;

procedure TfmManDc2.FatDClNewRecord(DataSet: TDataSet);
begin
  inherited;

  FatDCl.DisableControls;

  FatDClNumGer.Value := 0;
  FatDClNroNfs.Value := 0;
  FatDClQtiGer.Value := 0;
  FatDClQtdVol.Value := 0;
  FatDClAltVol.Value := 0;
  FatDClSeqIte.Value := 0;
  FatDClQtdNfs.Value := 0;
  FatDClTotIte.Value := 0;
  FatDClTotGer.Value := 0;
  FatDClBasIcm.Value := 0;
  FatDClTotIcm.Value := 0;
  FatDClBasIpi.Value := 0;
  FatDClTotIpi.Value := 0;
  FatDClQtpGer.Value := 0;
  FatDClTotGer.Value := 0;
  FatDClTotBrt.Value := 0;
  FatDClObsGer.Value := '';
  FatDClDteGer.Value := Date;
  FatDClDteFat.Value := Date;
  FatDClFlgSin.Value := 'Sim';
  FatDClFrtGer.Value := 'FOB';
  FatDClCodEmp.Value := GEmp_Id;
  FatDClTipPfa.Value := 'Entrada';
  FatDClSitGer.Value := 'Nao Concluido';
  FatDClHreFat.Value := TimeToStr(Time);

  EdDteFat.Date := Date;

  EdFrtGer.Text := 'FOB';

  EdTipPfa.Text := 'Entrada';

  EdNroNfs.Text := '0';

  if GEmp_Id > 0 then
    EdCodEmp.Text := IntToStr(GEmp_Id);

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select ApeEmp From GerEmp' +
      ' Where CodEmp = :CodEmp';

    if GFlgAce = 'Sim' then
      Text := Text + ' and CodFil > ''' + '0' + '''';

    with Params do
    begin

      Params[0].AsInteger := FatDClCodEmp.Value;

    end;

    Open;

    pnApeEmp.Caption := quSQL.FieldbyName('ApeEmp').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select NomCli,CgcCli,UffCli From FinCli' +
      ' Where CodCli = :CodCli';

    with Params do
    begin

      Params[0].AsInteger := FatDClCodCli.Value;

    end;

    Open;

  end;

  pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
  pnUfeGer.Caption := quSQL.FieldbyName('UffCli').AsString;

  if Trim(quSQL.FieldbyName('CgcCli').AsString) <> '' then
  begin

    if Length(Trim(quSQL.FieldbyName('CgcCli').AsString)) <= 11 then
      pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString, 01, 03) + '.' +
        copy(quSQL.FieldbyName('CgcCli').AsString, 04, 03) + '.' +
        copy(quSQL.FieldbyName('CgcCli').AsString, 07, 03) + '-' +
        copy(quSQL.FieldbyName('CgcCli').AsString, 10, 02)
    else
      pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString, 01, 02) + '.' +
        copy(quSQL.FieldbyName('CgcCli').AsString, 03, 03) + '.' +
        copy(quSQL.FieldbyName('CgcCli').AsString, 06, 03) + '/' +
        copy(quSQL.FieldbyName('CgcCli').AsString, 09, 04) + '-' +
        copy(quSQL.FieldbyName('CgcCli').AsString, 13, 02);

  end
  else
    pnCgcCli.Caption := '';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select NomVen From FinVen Where FinVen.CodVen = :CodVen';

    with Params do
    begin

      Params[0].AsInteger := FatDClCodVen.Value;

    end;

    Open;

    pnNomVen.Caption := quSQL.FieldbyName('NomVen').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select DscPfa From EstPfa' +
      ' Where TipPfa = :TipPfa' +
      '   and CodPfa = :CodPfa';

    with Params do
    begin

      Params[0].AsString := FatDClTipPfa.Value;
      Params[1].AsString := FatDClCodPfa.Value;

    end;

    Open;

    pnNomPfa.Caption := quSQL.FieldbyName('DscPfa').AsString;

  end;

  FatDc2.Close;
  FatDc2.Params[0].AsInteger := FatDClCodEmp.Value;
  FatDc2.Params[1].AsDateTime := FatDClDteGer.Value;
  FatDc2.Params[2].AsInteger := FatDClNumGer.Value;
  FatDc2.Open;

  EdTipPfa.Enabled := True;
  EdNroNfs.Enabled := True;
  EdSerNot.Enabled := True;
  EdCodEmp.Enabled := True;
  EdDteFat.Enabled := True;
  EdCodCli.Enabled := True;
  EdCodVen.Enabled := True;
  EdFrtGer.Enabled := True;
  EdCodPfa.Enabled := True;

  EdTipPfa.Font.Style := [];
  EdNroNfs.Font.Style := [];
  EdSerNot.Font.Style := [];
  EdCodEmp.Font.Style := [];
  EdDteFat.Font.Style := [];
  EdCodCli.Font.Style := [];
  EdCodVen.Font.Style := [];
  EdFrtGer.Font.Style := [];
  EdCodPfa.Font.Style := [];

  EdNroNfs.SetFocus

end;

procedure TfmManDc2.EdCodClpExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdFrtGer.Focused) and (not EdDteFat.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatDc2.State <> dsBrowse then
      begin

        if Trim(FatDc2CodClp.Value) <> '' then
        begin

          if (FatDc2CodClp.Value <> '9') and (FatDc2CodClp.Value <> '8') then
          begin

            psaida := 'Nao';

            EdCodGru.Enabled := True;
            EdCodSub.Enabled := True;
            EdCodPro.Enabled := True;

            EdCodGru.Font.Style := [];
            EdCodSub.Font.Style := [];
            EdCodPro.Font.Style := [];

            psaida := 'Sim';

            with quSql, SQL do
            begin

              Close;
              Text := ' Select Count(*) as Reg From EstClp ' +
                ' Where CodClp = ''' + FatDc2CodClp.Value + '''';
              Open;

            end;

            if quSql.FieldbyName('Reg').AsInteger > 0 then
            begin

              EdDesGe2.Enabled := False;
              EdObsGe2.Enabled := False;

              EdDesGe2.Font.Style := [fsBold];
              EdObsGe2.Font.Style := [fsBold];

            end
            else
              fmsgErro('Classificação Informada não Encontrada.', EdCodClp);

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

            if FatDc2CodClp.Value = '9' then
            begin

              FatDc2CodGru.Value := '999';
              FatDc2CodSub.Value := '9999';
              FatDc2CodPro.Value := '99999';

              EdQtpGe2.Enabled := True;
              EdVluGe2.Enabled := True;
              EdIpiGe2.Enabled := True;
              EdIcmGe2.Enabled := True;
              EdCodSt1.Enabled := True;
              EdCodSt2.Enabled := True;
              EdCodUnd.Enabled := True;
              EdDesGe2.Enabled := True;
              EdObsGe2.Enabled := True;

              EdQtpGe2.Font.Style := [];
              EdVluGe2.Font.Style := [];
              EdIpiGe2.Font.Style := [];
              EdIcmGe2.Font.Style := [];
              EdCodSt1.Font.Style := [];
              EdCodSt2.Font.Style := [];
              EdCodUnd.Font.Style := [];
              EdDesGe2.Font.Style := [];
              EdObsGe2.Font.Style := [];

              EdQtpGe2.SetFocus;

            end
            else
            begin

              FatDc2CodGru.Value := '888';
              FatDc2CodSub.Value := '8888';
              FatDc2CodPro.Value := '88888';

              EdQtpGe2.Enabled := False;
              EdVluGe2.Enabled := False;
              EdIpiGe2.Enabled := False;
              EdIcmGe2.Enabled := False;
              EdCodSt1.Enabled := False;
              EdCodSt2.Enabled := False;
              EdCodUnd.Enabled := False;

              EdQtpGe2.Font.Style := [fsBold];
              EdVluGe2.Font.Style := [fsBold];
              EdIpiGe2.Font.Style := [fsBold];
              EdIcmGe2.Font.Style := [fsBold];
              EdCodSt1.Font.Style := [fsBold];
              EdCodSt2.Font.Style := [fsBold];
              EdCodUnd.Font.Style := [fsBold];

              EdDesGe2.Enabled := True;
              EdObsGe2.Enabled := True;

              EdDesGe2.Font.Style := [];
              EdObsGe2.Font.Style := [];

              EdDesGe2.SetFocus;

            end;
          end;

        end
        else
          fmsgErro('Classificação Informada não Encontrada.', EdCodClp);

      end
      else
      begin

        if EdCodClp.Enabled then
        begin

          if Trim(FatDc2CodClp.Value) = '' then
            fmsgErro('Classificação Informada não Encontrada.', EdCodClp);

        end;
      end;
    end;

  end
  else
  begin

    if (Tecla = 'UP') then
    begin

      if FatDClQtiGer.Value > 0 then
      begin

        EdCodClp.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdQtpGe2.Enabled := False;
        EdVluGe2.Enabled := False;
        EdIpiGe2.Enabled := False;
        EdIcmGe2.Enabled := False;
        EdCodSt1.Enabled := False;
        EdCodSt2.Enabled := False;
        EdCodUnd.Enabled := False;
        EdDesGe2.Enabled := False;
        EdObsGe2.Enabled := False;

        EdCodClp.Font.Style := [fsBold];
        EdCodGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];
        EdQtpGe2.Font.Style := [fsBold];
        EdVluGe2.Font.Style := [fsBold];
        EdIpiGe2.Font.Style := [fsBold];
        EdIcmGe2.Font.Style := [fsBold];
        EdCodSt1.Font.Style := [fsBold];
        EdCodSt2.Font.Style := [fsBold];
        EdCodUnd.Font.Style := [fsBold];
        EdDesGe2.Font.Style := [fsBold];
        EdObsGe2.Font.Style := [fsBold];

        if FatDc2.State <> dsBrowse then
          FatDc2.CancelUpdates
        else
        begin

          if not FatDc2.Bof then
            FatDc2.Prior;

        end;

        grGe2.SetFocus;

      end
      else
        EdCodClp.SetFocus;
    end;
  end;
end;

procedure TfmManDc2.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqClp := TfmPsqClp.Create(Self);

      with fmPsqClp.EstClp, SQL do
      begin

        Close;
        Text := ' Select * From EstClp ' +
          ' Where Exists(Select * From EstPro Where EstPro.CodClp = EstClp.CodClp)' +
          ' Order by NomClp';
        Open;

      end;

      fmPsqClp.ShowModal;

      if Trim(fmPsqClp.CodClp) <> '' then
      begin

        if FatDc2.State = dsBrowse then
        begin

          if FatDc2CodEmp.Value > 0 then
            FatDc2.Edit
          else
            FatDc2.Append;

        end;

        FatDc2CodClp.Value := fmPsqClp.CodClp;

      end;

    finally

      FreeAndNil(fmPsqClp);

    end;

    if Trim(FatDc2CodClp.Value) <> '' then
    begin

      if (FatDc2CodClp.Value <> '8') and (FatDc2CodClp.Value <> '9') then
      begin

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

procedure TfmManDc2.EdCodClpKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Iniciais F3-Descr F4-Estoque F5-Refer F6-Int/Desc F7-Int/Ref';

end;

procedure TfmManDc2.EdCodClpMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Iniciais F3-Descr F4-Estoque F5-Refer F6-Int/Desc F7-Int/Ref';

end;

procedure TfmManDc2.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqGru := TfmPsqGru.Create(Self);

      with fmPsqGru.EstGru, SQL do
      begin

        Close;
        Text := ' Select * From EstGru ' +
          ' Where Exists(Select * From EstPro Where EstPro.CodClp = ''' + FatDc2CodClp.Value + '''' +
          '                                     and EstPro.CodGru = EstGru.CodGru)' +
          ' Order by NomGru';
        Open;

      end;

      fmPsqGru.ShowModal;

      if Trim(fmPsqGru.CodGru) <> '' then
      begin

        if FatDc2.State = dsBrowse then
        begin

          if FatDc2CodEmp.Value > 0 then
            FatDc2.Edit
          else
            FatDc2.Append;

        end;

        FatDc2CodGru.Value := fmPsqGru.CodGru;

      end;

    finally

      FreeAndNil(fmPsqGru);

    end;

    if Trim(FatDc2CodGru.Value) <> '' then
    begin

      if EdCodSub.Enabled then
        EdCodSub.SetFocus
      else
        EdCodGru.SetFocus;

    end
    else
      EdCodGru.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := FatDc2CodClp.Value;

      fmAuxPsq.TipoPesq := 'G';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if FatDc2.State = dsBrowse then
        begin

          if FatDc2CodEmp.Value > 0 then
            FatDc2.Edit
          else
            FatDc2.Append;

        end;

        FatDc2CodGru.Value := fmAuxPsq.CodGru;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(FatDc2CodGru.Value) <> '' then
    begin

      if EdCodSub.Enabled then
        EdCodSub.SetFocus
      else
        EdCodGru.SetFocus;

    end
    else
      EdCodGru.SetFocus;

  end;
end;

procedure TfmManDc2.EdCodGruExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if not EdCodClp.Focused then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatDc2.State <> dsBrowse then
      begin

        if Trim(FatDc2CodGru.Value) <> '' then
        begin

          FatDc2CodGru.Value := FNumZeros(FatDc2CodGru.Value, 3);

          if (FatDc2CodGru.Value <> '888') and (FatDc2CodGru.Value <> '999') then
          begin

            with quSql, SQL do
            begin

              Close;
              Text := ' Select Count(*) as Reg From EstGru ' +
                ' Where CodGru = ''' + FatDc2CodGru.Value + '''';
              Open;

            end;

            if quSql.FieldbyName('Reg').AsInteger = 0 then
              fmsgErro('Grupo Informado não Encontrado.', EdCodGru);

          end;

        end
        else
          fmsgErro('Grupo Informado não Encontrado.', EdCodGru);

      end
      else
      begin

        if EdCodGru.Enabled then
        begin

          if Trim(FatDc2CodGru.Value) = '' then
            fmsgErro('Grupo Informado não Encontrado.', EdCodGru);

        end;
      end;
    end;
  end;
end;

procedure TfmManDc2.EdCodGruKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Refer F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManDc2.EdCodGruMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Refer F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManDc2.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqSub := TfmPsqSub.Create(Self);

      with fmPsqSub.EstSub, SQL do
      begin

        Close;
        Text := ' Select CodGru,NomSub,CodSub,NomGru' +
          ' From EstSub INNER JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)' +
          ' Where Exists(Select * From EstPro Where EstPro.CodClp = ''' + FatDc2CodClp.Value + '''' +
          '                                     and EstPro.CodGru = EstSub.CodGru' +
          '                                     and EstPro.CodSub = EstSub.CodSub)';

        if Trim(FatDc2CodGru.Value) <> '' then
          Text := Text + '   and CodGru = ''' + FatDc2CodGru.Value + '''';

        Text := Text + ' Order by NomSub';

        Open;

      end;

      fmPsqSub.ShowModal;

      if Trim(fmPsqSub.CodSub) <> '' then
      begin

        if FatDc2.State = dsBrowse then
        begin

          if FatDc2CodEmp.Value > 0 then
            FatDc2.Edit
          else
            FatDc2.Append;

        end;

        FatDc2CodGru.Value := fmPsqSub.CodGru;
        FatDc2CodSub.Value := fmPsqSub.CodSub;

      end;

    finally

      FreeAndNil(fmPsqSub);

    end;

    if Trim(FatDc2CodSub.Value) <> '' then
    begin

      if EdCodPro.Enabled then
        EdCodPro.SetFocus
      else
        EdCodSub.SetFocus;

    end
    else
      EdCodSub.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      if Trim(FatDc2CodGru.Value) <> '' then
        fmAuxPsq.CodGru := FatDc2CodGru.Value;

      fmAuxPsq.CodClp := FatDc2CodClp.Value;

      fmAuxPsq.TipoPesq := 'S';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if FatDc2.State = dsBrowse then
        begin

          if FatDc2CodEmp.Value > 0 then
            FatDc2.Edit
          else
            FatDc2.Append;

        end;

        FatDc2CodGru.Value := fmAuxPsq.CodGru;
        FatDc2CodSub.Value := fmAuxPsq.CodSub;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(FatDc2CodSub.Value) <> '' then
    begin

      if EdCodPro.Enabled then
        EdCodPro.SetFocus
      else
        EdCodSub.SetFocus;

    end
    else
      EdCodSub.SetFocus;

  end;
end;

procedure TfmManDc2.EdCodSubExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodGru.Focused) and (not EdCodClp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if Trim(FatDc2CodSub.Value) <> '' then
      begin

        if FatDc2.State <> dsBrowse then
        begin

          FatDc2CodSub.Value := FNumZeros(FatDc2CodSub.Value, 4);

          if (FatDc2CodSub.Value <> '8888') and (FatDc2CodSub.Value <> '9999') then
          begin

            with quSql, SQL do
            begin

              Close;
              Text := ' Select Count(*) as Reg From EstSub' +
                ' Where CodGru = ''' + FatDc2CodGru.Value + '''' +
                '   and CodSub = ''' + FatDc2CodSub.Value + '''';
              Open;

              if quSql.FieldbyName('Reg').AsInteger = 0 then
                fmsgErro('Grupo e Sub-Grupo não Encontrado.', EdCodGru);

            end;
          end;

        end
        else
        begin

          if EdCodSub.Enabled then
          begin

            if Trim(FatDc2CodSub.Value) = '' then
              fmsgErro('Sub-Grupo Informado não Encontrado.', EdCodSub);

          end;
        end;

      end
      else
        fmsgErro('Sub-Grupo Informado não Encontrado.', EdCodSub);
    end;
  end;
end;

procedure TfmManDc2.EdCodSubKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManDc2.EdCodSubMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManDc2.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {f1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := FatDc2CodClp.Value;
      fmAuxIni.CodGru := FatDc2CodGru.Value;
      fmAuxIni.CodSub := FatDc2CodSub.Value;

      fmAuxIni.TipoPesq := 'I';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if EdCodClp.Enabled then
        begin

          FatDc2CodClp.Value := fmAuxIni.CodClp;
          FatDc2CodGru.Value := fmAuxIni.CodGru;
          FatDc2CodSub.Value := fmAuxIni.CodSub;
          FatDc2CodPro.Value := fmAuxIni.CodPro;

        end;
      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(FatDc2CodPro.Value) <> '' then
    begin

      if EdQtpGe2.Enabled then
        EdQtpGe2.SetFocus
      else
        EdCodPro.SetFocus;

    end
    else
      EdCodPro.SetFocus;

  end;

  if key = 113 then
  begin {F5 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := FatDc2CodClp.Value;

      if Trim(FatDc2CodGru.Value) <> '' then
        fmAuxPsq.CodGru := FatDc2CodGru.Value;
      if Trim(FatDc2CodSub.Value) <> '' then
        fmAuxPsq.CodSub := FatDc2CodSub.Value;

      fmAuxPsq.TipoPesq := 'I';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if FatDc2.State = dsBrowse then
        begin

          if FatDc2CodEmp.Value > 0 then
            FatDc2.Edit
          else
            FatDc2.Append;

        end;

        FatDc2CodClp.Value := fmAuxPsq.CodClp;
        FatDc2CodGru.Value := fmAuxPsq.CodGru;
        FatDc2CodSub.Value := fmAuxPsq.CodSub;
        FatDc2CodPro.Value := fmAuxPsq.CodPro;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(FatDc2CodPro.Value) <> '' then
    begin

      if EdQtpGe2.Enabled then
        EdQtpGe2.SetFocus
      else
        EdCodPro.SetFocus;

    end
    else
      EdCodPro.SetFocus;

  end;
end;

procedure TfmManDc2.EdCodProExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if Trim(FatDc2CodPro.Value) <> '' then
      begin

        if FatDc2.State <> dsBrowse then
        begin

          FatDc2CodPro.Value := FNumStrZero(FatDc2CodPro.Value);

          if (FatDc2CodPro.Value <> '88888') and (FatDc2CodPro.Value <> '99999') then
          begin

            with quSQL, SQL do
            begin

              Close;
              Text := ' Select EstPro.CodPro,' +
                '        EstPro.DscPro,' +
                '        EstPro.CodUns,' +
                '        EstPro.IpiSai,' +
                '        EstPro.IpiTsd,' +
                '        EstPro.IcmSai,' +
                '        EstPro.ID_ESTICM_ENTRADA, EstPro.ID_ESTICM_SAIDA,' +
                '        EstPro.IcmTsd From EstPro' +
                ' Where CodClp = ''' + FatDc2CodClp.Value + '''' +
                '   and CodGru = ''' + FatDc2CodGru.Value + '''' +
                '   and CodSub = ''' + FatDc2CodSub.Value + '''' +
                '   and CodPro = ''' + FatDc2CodPro.Value + '''';
              Open;

            end;

            if Trim(quSQL.FieldbyName('CodPro').AsString) <> '' then
            begin

              FatDc2DesGe2.Value := quSQL.FieldbyName('DscPro').AsString;
              FatDc2CodUnd.Value := quSQL.FieldbyName('CodUns').AsString;

              if Trim(quSQL.FieldbyName('IpiSai').AsString) <> '' then
              begin

                FatDc2RegIpi.Value := quSQL.FieldbyName('IpiSai').AsString;
                FatDc2TipIpi.Value := quSQL.FieldbyName('IpiTsd').AsString;

              end;

              if Trim(quSQL.FieldbyName('IcmSai').AsString) <> '' then
              begin

                FatDc2RegIcm.Value := quSQL.FieldbyName('IcmSai').AsString;
                FatDc2TipIcm.Value := quSQL.FieldbyName('IcmTsd').AsString;

              end;

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select EstIcm.CodIcm,' +
                  '        EstIcm.CodSt1,' +
                  '        EstIcm.CodSt2,' +
                  '        EstIcm.PerIcm From EstIcm' +
                  ' Where EstIcm.CodIcm = ''' + FatDc2RegIcm.Value + '''' +
                  '   and EstIcm.TipIcm = ''' + FatDc2TipIcm.Value + '''';
                Open;

              end;

              if Trim(quSql.FieldbyName('CodIcm').AsString) <> '' then
              begin

                FatDc2IcmGe2.Value := quSql.FieldbyName('PerIcm').AsFloat;

                if quSql.FieldbyName('CodSt1').AsString <> '' then
                  FatDc2CodSt1.Value := quSql.FieldbyName('CodSt1').AsString;
                if quSql.FieldbyName('CodSt2').AsString <> '' then
                  FatDc2CodSt2.Value := quSql.FieldbyName('CodSt2').AsString;

              end
              else
                FatDc2IcmGe2.Value := 0;

              if qticms = 1 then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select PerIcm From GerIcm Where GerIcm.SigUfe = ''' + FatDClUfeGer.Value + '''';
                  Open;

                  FatDc2IcmGe2.Value := FieldbyName('PerIcm').AsFloat;

                end;
              end;

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select EstIpi.CodIpi,' +
                  '        EstIpi.PerIpi From EstIpi' +
                  ' Where EstIpi.CodIpi = ''' + FatDc2RegIpi.Value + '''' +
                  '   and EstIpi.TipIpi = ''' + FatDc2TipIpi.Value + '''';
                Open;

              end;

              if Trim(quSql.FieldbyName('CodIpi').AsString) <> '' then
                FatDc2IpiGe2.Value := quSql.FieldbyName('PerIpi').AsFloat
              else
                FatDc2IpiGe2.Value := 0;

              with quSql, SQL do
              begin

                Close;
                Text := ' Select EstIte.CodPro,' +
                  '        EstIte.VpfIte From EstIte ' +
                  ' Where EstIte.CodEmp = ''' + IntToStr(FatDc2CodEmp.Value) + '''' +
                  '   and EstIte.CodClp = ''' + FatDc2CodClp.Value + '''' +
                  '   and EstIte.CodGru = ''' + FatDc2CodGru.Value + '''' +
                  '   and EstIte.CodSub = ''' + FatDc2CodSub.Value + '''' +
                  '   and EstIte.CodPro = ''' + FatDc2CodPro.Value + '''';
                Open;
                First;

              end;

              if quSql.FieldbyName('CodPro').AsString = FatDc2CodPro.Value then
              begin

                FatDc2CstGe2.Value := quSql.FieldbyName('VpfIte').AsFloat;
                FatDc2VluGe2.Value := quSql.FieldbyName('VpfIte').AsFloat;

                AntVluGe2 := FatDc2VluGe2.Value;

                FatDc2TotGe2.Value := fRound(FatDc2VluGe2.Value * FatDc2QtpGe2.Value, 2);

                with quSql, SQL do
                begin

                  Close;
                  Text := ' Select Count(*) as QtdReg from EstQte ' +
                    ' Where EstQte.CodEmp = ''' + IntToStr(FatDc2CodEmp.Value) + '''' +
                    '   and EstQte.CodClp = ''' + FatDc2CodClp.Value + '''' +
                    '   and EstQte.CodGru = ''' + FatDc2CodGru.Value + '''' +
                    '   and EstQte.CodSub = ''' + FatDc2CodSub.Value + '''' +
                    '   and EstQte.CodPro = ''' + FatDc2CodPro.Value + '''' +
                    '   and EstQte.CodTam = ''' + FatDc2CodTam.Value + '''' +
                    '   and EstQte.CodCor = ''' + FatDc2CodCor.Value + '''';
                  Open;

                  if FieldbyName('QtdReg').AsInteger = 0 then
                    fmsgErro('Item Informado não Encontrado no Estoque da Empresa.', EdCodPro);

                end;

              end
              else
                fmsgErro('Item Informado não Encontrado na Empresa.', EdCodPro);

            end
            else
              fmsgErro('Item Informado não Encontrado.', EdCodPro);

          end;

        end
        else
        begin

          if EdCodPro.Enabled then
          begin

            if Trim(FatDc2CodPro.Value) = '' then
              fmsgErro('Item Informado não Encontrado.', EdCodPro);

          end;
        end;

      end
      else
        fmsgErro('Item Informado não Encontrado.', EdCodPro);
    end;
  end;
end;

procedure TfmManDc2.EdQtpGe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque'

end;

procedure TfmManDc2.EdQtpGe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque'

end;

procedure TfmManDc2.EdQtpGe2Exit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatDc2.State <> dsBrowse then
      begin

        if FatDc2QtpGe2.Value > 0 then
          FatDc2TotIte.Value := fRound(FatDc2VluGe2.Value * FatDc2QtpGe2.Value, 2)
        else
        begin

          if (FatDc2CodClp.Value <> '8') and (FatDc2CodClp.Value <> '9') then
            fmsgErro('Campo de Preenchimento Obrigatorio.', EdQtpGe2);

        end;
      end;
    end;

  end
  else
  begin

    if (Tecla = 'UP') and (not EdCodClp.Enabled) then
      EdQtpGe2.SetFocus;

  end;
end;

procedure TfmManDc2.EdVluGe2Exit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdQtpGe2.Focused) and (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatDc2.State <> dsBrowse then
      begin

        if FatDc2VluGe2.Value > 0 then
        begin

          if FatDc2VluGe2.Value <> AntVluGe2 then
          begin

            AntVluGe2 := FatDc2VluGe2.Value;

            FatDc2TotIte.Value := fRound(FatDc2VluGe2.Value * FatDc2QtpGe2.Value, 2);

          end;

        end
        else
        begin

          if (FatDc2CodClp.Value <> '8') and (FatDc2CodClp.Value <> '9') then
            fmsgErro('Campo de Preenchimento Obrigatorio.', EdVluGe2);

        end;
      end;
    end;
  end;
end;

procedure TfmManDc2.EdCodSt1KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManDc2.EdCodSt1MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManDc2.EdCodSt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqSt1 := TfmPsqSt1.Create(Self);

      fmPsqSt1.ShowModal;

      if Trim(fmPsqSt1.CodSt1) <> '' then
        FatDc2CodSt1.Value := fmPsqSt1.CodSt1;

    finally

      FreeAndNil(fmPsqSt1);

    end;

    if Trim(FatDc2CodSt1.Value) <> '' then
    begin

      if EdCodSt2.Enabled then
        EdCodSt2.SetFocus
      else
        EdCodSt1.SetFocus;

    end
    else
      EdCodSt1.SetFocus;

  end;
end;

procedure TfmManDc2.EdCodSt2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqSt2 := TfmPsqSt2.Create(Self);

      fmPsqSt2.ShowModal;

      if Trim(fmPsqSt2.CodSt2) <> '' then
        FatDc2CodSt2.Value := fmPsqSt2.CodSt2;

    finally

      FreeAndNil(fmPsqSt2);

    end;

    if Trim(FatDc2CodSt2.Value) <> '' then
    begin

      if EdCodUnd.Enabled then
        EdCodUnd.SetFocus
      else
        EdCodSt2.SetFocus;

    end
    else
      EdCodSt2.SetFocus;

  end;
end;

procedure TfmManDc2.EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqUnd := TfmPsqUnd.Create(Self);

      fmPsqUnd.ShowModal;

      if Trim(fmPsqUnd.CodUnd) <> '' then
        FatDc2CodUnd.Value := fmPsqUnd.CodUnd;

    finally

      FreeAndNil(fmPsqUnd);

    end;

    if Trim(FatDc2CodUnd.Value) <> '' then
    begin

      if EdDesGe2.Enabled then
        EdDesGe2.SetFocus
      else
        EdCodUnd.SetFocus;

    end
    else
      EdCodUnd.SetFocus;

  end;
end;

procedure TfmManDc2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdCodClp.Focused) or (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then
  begin

    if key = 114 then
    begin {F3 - Descrição}

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := FatDc2CodClp.Value;
        fmAuxIni.CodGru := FatDc2CodGru.Value;
        fmAuxIni.CodSub := FatDc2CodSub.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            FatDc2CodClp.Value := fmAuxIni.CodClp;
            FatDc2CodGru.Value := fmAuxIni.CodGru;
            FatDc2CodSub.Value := fmAuxIni.CodSub;
            FatDc2CodPro.Value := fmAuxIni.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      if Trim(FatDc2CodPro.Value) <> '' then
      begin

        if EdCodPro.Enabled then
          EdCodPro.SetFocus;

      end
      else
      begin

        if EdCodClp.Focused then
          EdCodClp.SetFocus;
        if EdCodGru.Focused then
          EdCodGru.SetFocus;
        if EdCodSub.Focused then
          EdCodSub.SetFocus;
        if EdCodPro.Focused then
          EdCodPro.SetFocus;

      end;
    end;

    if key = 116 then
    begin {F5 - Referência}

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := FatDc2CodClp.Value;
        fmAuxIni.CodGru := FatDc2CodGru.Value;
        fmAuxIni.CodSub := FatDc2CodSub.Value;

        fmAuxIni.TipoPesq := 'R';

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            FatDc2CodClp.Value := fmAuxIni.CodClp;
            FatDc2CodGru.Value := fmAuxIni.CodGru;
            FatDc2CodSub.Value := fmAuxIni.CodSub;
            FatDc2CodPro.Value := fmAuxIni.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      if Trim(FatDc2CodPro.Value) <> '' then
      begin

        if EdCodPro.Enabled then
          EdCodPro.SetFocus;

      end
      else
      begin

        if EdCodClp.Focused then
          EdCodClp.SetFocus;
        if EdCodGru.Focused then
          EdCodGru.SetFocus;
        if EdCodSub.Focused then
          EdCodSub.SetFocus;
        if EdCodPro.Focused then
          EdCodPro.SetFocus;

      end;
    end;

    if key = 117 then
    begin {F6 - Inteligente/Descrição}

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := FatDc2CodClp.Value;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            FatDc2CodClp.Value := fmAuxPsq.CodClp;
            FatDc2CodGru.Value := fmAuxPsq.CodGru;
            FatDc2CodSub.Value := fmAuxPsq.CodSub;
            FatDc2CodPro.Value := fmAuxPsq.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if Trim(FatDc2CodPro.Value) <> '' then
      begin

        if EdCodPro.Enabled then
          EdCodPro.SetFocus;

      end
      else
      begin

        if EdCodClp.Focused then
          EdCodClp.SetFocus;
        if EdCodGru.Focused then
          EdCodGru.SetFocus;
        if EdCodSub.Focused then
          EdCodSub.SetFocus;
        if EdCodPro.Focused then
          EdCodPro.SetFocus;

      end;
    end;

    if key = 118 then
    begin {F7 - Inteligente/Referência}

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := FatDc2CodClp.Value;

        fmAuxPsq.TipoPesq := 'R';

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            FatDc2CodClp.Value := fmAuxPsq.CodClp;
            FatDc2CodGru.Value := fmAuxPsq.CodGru;
            FatDc2CodSub.Value := fmAuxPsq.CodSub;
            FatDc2CodPro.Value := fmAuxPsq.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if Trim(FatDc2CodPro.Value) <> '' then
      begin

        if EdCodPro.Enabled then
          EdCodPro.SetFocus;

      end
      else
      begin

        if EdCodClp.Focused then
          EdCodClp.SetFocus;
        if EdCodGru.Focused then
          EdCodGru.SetFocus;
        if EdCodSub.Focused then
          EdCodSub.SetFocus;
        if EdCodPro.Focused then
          EdCodPro.SetFocus;

      end;
    end;
  end;

  if key = 115 then
  begin {F4 - Estoque}

    try

      fmPsqEst := TfmPsqEst.Create(Self);

      fmPsqEst.sEntr := sEntr;

      fmPsqEst.sCodClp := '1';

      if (Trim(FatDc2CodGru.Value) <> '') or
        (Trim(FatDc2CodSub.Value) <> '') or
        (Trim(FatDc2CodPro.Value) <> '') then
      begin

        with fmPsqEst.EstPro, SQL do
        begin

          Close;
          Text := ' Select EstPro.CodClp,' +
            '        EstPro.CodGru,' +
            '        EstPro.CodSub,' +
            '        EstPro.CodPro,' +
            '        EstPro.DscPro,' +
            '        EstPro.RefPro,' +
            '        EstPro.LocPro,' +
            '        EstPro.CodUne,' +
            '        EstPro.CodUns,' +
            '        EstPro.QtePro,' +
            '        EstPro.QtsPro,' +
            '        EstPro.SaiIpi,' +
            '        EstPro.ClfSai,' +
            '        EstPro.SaiIcm,' +
            '        EstPro.SimPro,' +
            '        EstPro.CodSt1,' +
            '        EstPro.CodSt2,' +
            '        EstPro.QtdEmb,' +
            '        EstPro.ImgPro,' +
            '        EstPro.FlgPro,' +
            '        EstPro.CbaPro,' +
            '        EstPro.WebPro,' +
            '        EstPro.CodCat,' +
            '        EstPro.CodTip,' +
            '        EstPro.CodMrc,' +
            '        EstPro.NumPro,' +
            '        EstPro.CodAnt' +
            ' From EstPro' +
            ' Where EstPro.CodClp = ''' + '1' + '''' +
            '   and EstPro.FlbPro = ''' + ' ' + '''';

          if Trim(FatDc2CodGru.Value) <> '' then
            Text := Text + ' and EstPro.CodGru = ''' + FatDc2CodGru.Value + '''';
          if Trim(FatDc2CodSub.Value) <> '' then
            Text := Text + ' and EstPro.CodSub = ''' + FatDc2CodSub.Value + '''';
          if Trim(FatDc2CodPro.Value) <> '' then
            Text := Text + ' and EstPro.CodPro = ''' + FatDc2CodPro.Value + '''';

          Text := Text + ' Order by EstPro.DscPro';

          Open;

        end;
      end;

      fmPsqEst.ShowModal;

      if sEntr = 'S' then
      begin

        if Trim(fmPsqEst.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            FatDc2CodClp.Value := fmPsqEst.CodClp;
            FatDc2CodGru.Value := fmPsqEst.CodGru;
            FatDc2CodSub.Value := fmPsqEst.CodSub;
            FatDc2CodPro.Value := fmPsqEst.CodPro;

          end;
        end;
      end;

    finally

      FreeAndNil(fmPsqEst);

    end;

    if Trim(FatDc2CodPro.Value) <> '' then
    begin

      if (EdCodGru.Focused) or (EdCodSub.Focused) then
      begin

        if EdCodPro.Enabled then
          EdCodPro.SetFocus;

      end;

    end
    else
    begin

      if EdCodClp.Focused then
        EdCodClp.SetFocus;
      if EdCodGru.Focused then
        EdCodGru.SetFocus;
      if EdCodSub.Focused then
        EdCodSub.SetFocus;
      if EdCodPro.Focused then
        EdCodPro.SetFocus;

    end;
  end;

  if key = 27 then
  begin

    if EdQtpGe2.Enabled then
    begin

      if FatDc2.State <> dsBrowse then
        FatDc2.CancelUpdates;

      EdCodClp.Enabled := False;
      EdCodGru.Enabled := False;
      EdCodSub.Enabled := False;
      EdCodPro.Enabled := False;
      EdQtpGe2.Enabled := False;
      EdVluGe2.Enabled := False;
      EdIpiGe2.Enabled := False;
      EdIcmGe2.Enabled := False;
      EdCodSt1.Enabled := False;
      EdCodSt2.Enabled := False;
      EdCodUnd.Enabled := False;

      EdCodGru.Font.Style := [fsBold];
      EdCodSub.Font.Style := [fsBold];
      EdCodPro.Font.Style := [fsBold];
      EdQtpGe2.Font.Style := [fsBold];
      EdVluGe2.Font.Style := [fsBold];
      EdIpiGe2.Font.Style := [fsBold];
      EdIcmGe2.Font.Style := [fsBold];
      EdCodSt1.Font.Style := [fsBold];
      EdCodSt2.Font.Style := [fsBold];
      EdCodUnd.Font.Style := [fsBold];

      grGe2.SetFocus;

    end
    else
    begin

      if EdDesGe2.Enabled then
      begin

        if FatDc2.State <> dsBrowse then
          FatDc2.CancelUpdates;

        EdDesGe2.Enabled := False;
        EdObsGe2.Enabled := False;

        EdDesGe2.Font.Style := [fsBold];
        EdObsGe2.Font.Style := [fsBold];

        grGe2.SetFocus;

      end
      else
      begin

        if EdBasIc1.Enabled then
        begin

          if FatDCl.State <> dsBrowse then
            FatDCl.CancelUpdates;

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

            if FatDCl.State <> dsBrowse then
              Close;

          end;
        end;
      end;
    end;
  end;

  if key = 123 then
  begin {F12-Finalizar Pedido}

    if FatDClQtiGer.Value > 0 then
    begin

      if grGe2.Focused then
      begin

        if fMsg('Confirma Nota Fiscal do Cliente', 'O') then
        begin

          FatDCl.Edit;

          FatDClSitGer.Value := 'Faturado';

          with FatDCl do
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

              Finalizar := 'N';

              if FatDCl.State = dsBrowse then
                FatDCl.Edit;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;

          FatDCl.Close;
          FatDCl.Open;

          Finalizar := 'S';

        end
        else
          Finalizar := 'N';

        if Finalizar = 'S' then
        begin

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

          FatDCl.Close;
          FatDCl.Params[0].AsInteger := 0;
          FatDCl.Params[2].AsInteger := 0;
          FatDCl.Open;

          FatDCl.Insert;

          EdNroNfs.SetFocus

        end;
      end;
    end;
  end;
end;

procedure TfmManDc2.grGe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroGe2: integer;
begin
  inherited;
  if key = 116 then
  begin

    if FatDc2CodEmp.Value > 0 then
    begin

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

      EdBasIc1.Value := FatDClBasIc1.Value;
      EdTotIc1.Value := FatDClTotIc1.Value;
      EdBasSu1.Value := FatDClBasSu1.Value;
      EdTotSu1.Value := FatDClTotSu1.Value;
      EdTotIt1.Value := FatDClTotIt1.Value;
      EdTotFrt.Value := FatDClTotFrt.Value;
      EdTotSeg.Value := FatDClTotSeg.Value;
      EdTotDes.Value := FatDClTotDes.Value;
      EdTotIp1.Value := FatDClTotIp1.Value;
      EdTotGe1.Value := FatDClTotGe1.Value;

      FatDCl.Edit;

      EdBasIc1.SetFocus;

    end;
  end;

  if key = 13 then
  begin {Tecla - ENTER}

    if FatDc2CodEmp.Value > 0 then
    begin

      FatDc2.Edit;

      pnDesGe2.Visible := False;
      pnObsGe2.Visible := False;

      if FatDc2CodClp.Value <> '8' then
      begin

        EdQtpGe2.Enabled := True;
        EdVluGe2.Enabled := True;
        EdIpiGe2.Enabled := True;
        EdIcmGe2.Enabled := True;
        EdCodSt1.Enabled := True;
        EdCodSt2.Enabled := True;
        EdCodUnd.Enabled := True;

        EdQtpGe2.Font.Style := [];
        EdVluGe2.Font.Style := [];
        EdIpiGe2.Font.Style := [];
        EdIcmGe2.Font.Style := [];
        EdCodSt1.Font.Style := [];
        EdCodSt2.Font.Style := [];
        EdCodUnd.Font.Style := [];

        if FatDc2CodClp.Value <> '9' then
        begin

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

  if key = 40 then
  begin {Tecla - Seta para Baixo}

    if FatDc2NroGe2.Value = FatDClQtiGer.Value then
      FatDc2.Append;

  end;

  if key = 46 then
  begin {Tecla - DEL}

    if FatDc2CodEmp.Value > 0 then
    begin

      NroGe2 := FatDc2NroGe2.Value;

      FatDc2.Delete;

      with FatDc2 do
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

          if FatDc2.State <> dsBrowse then
            FatDc2.CancelUpdates;

          grGe2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatDc2.Close;
      FatDc2.Open;

      FatDCl.Close;
      FatDCl.Open;

      if NroGe2 < FatDClQtiGer.Value then
        FatDc2.Locate('CodEmp;DteGer;NumGer;NroGe2', VarArrayOf([FatDc2CodEmp.Value, FatDc2DteGer.Value, FatDc2NumGer.Value, NroGe2]), [LoPartialKey])
      else
      begin

        if FatDClQtiGer.Value = 0 then
          FatDc2.Append
        else
          FatDc2.Last;

      end;
    end;
  end;
end;

procedure TfmManDc2.FormShow(Sender: TObject);
begin
  inherited;

  if fmManDCl.CodEmp > 0 then
  begin

    sEntr := 'S';

    FatDCl.Close;
    FatDCl.Params[0].AsInteger := fmManDCl.CodEmp;
    FatDCl.Params[1].AsDateTime := fmManDCl.DteGer;
    FatDCl.Params[2].AsInteger := fmManDCl.NumGer;
    FatDCl.Open;

    FatDc2.Close;
    FatDc2.Params[0].AsInteger := FatDClCodEmp.Value;
    FatDc2.Params[1].AsDateTime := FatDClDteGer.Value;
    FatDc2.Params[2].AsInteger := FatDClNumGer.Value;
    FatDc2.Open;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select ApeEmp From GerEmp' +
        ' Where CodEmp = :CodEmp';

      if GFlgAce = 'Sim' then
        Text := Text + ' and CodFil > ''' + '0' + '''';

      with Params do
      begin

        Params[0].AsInteger := FatDClCodEmp.Value;

      end;

      Open;

      pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomVen From FinVen' +
        ' Where CodVen = :CodVen';

      with Params do
      begin

        Params[0].AsInteger := FatDClCodVen.Value;

      end;

      Open;

      pnNomVen.Caption := FieldbyName('NomVen').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select DscPfa From EstPfa' +
        ' Where TipPfa = :TipPfa' +
        '   and CodPfa = :CodPfa';

      with Params do
      begin

        Params[0].AsString := FatDClTipPfa.Value;
        Params[1].AsString := FatDClCodPfa.Value;

      end;

      Open;

      pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomCli,CgcCli,UffCli From FinCli' +
        ' Where CodCli = :CodCli';

      with Params do
      begin

        Params[0].AsInteger := FatDClCodCli.Value;

      end;

      Open;

    end;

    pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
    pnUfeGer.Caption := quSQL.FieldbyName('UffCli').AsString;

    if Trim(quSQL.FieldbyName('CgcCli').AsString) <> '' then
    begin

      if Length(Trim(quSQL.FieldbyName('CgcCli').AsString)) <= 11 then
        pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString, 01, 03) + '.' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 04, 03) + '.' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 07, 03) + '-' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 10, 02)
      else
        pnCgcCli.Caption := copy(quSQL.FieldbyName('CgcCli').AsString, 01, 02) + '.' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 03, 03) + '.' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 06, 03) + '/' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 09, 04) + '-' +
          copy(quSQL.FieldbyName('CgcCli').AsString, 13, 02);

    end
    else
      pnCgcCli.Caption := '';

    if FatDClSitGer.Value <> 'Nao Concluido' then
      sEnc := 'S'
    else
    begin

      FatDCl.Edit;

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

    FatDCl.Insert;

    EdNroNfs.SetFocus;

  end;
end;

procedure TfmManDc2.FatDC2NewRecord(DataSet: TDataSet);
begin
  inherited;

  FatDc2.DisableControls;

  with quSql, SQL do
  begin

    Close;
    Text := ' Select Count(*) as Reg From FatDc2 ' +
      ' Where CodEmp = :CodEmp' +
      '   and DteGer = :DteGer' +
      '   and NumGer = :NumGer';

    with Params do
    begin

      Params[0].AsInteger := FatDClCodEmp.Value;
      Params[1].AsDateTime := FatDClDteGer.Value;
      Params[2].AsInteger := FatDClNumGer.Value;

    end;

    Open;
    Last;

  end;

  FatDc2IcmGe2.Value := 0;
  FatDc2IpiGe2.Value := 0;
  FatDc2LiqGe2.Value := 0;
  FatDc2BrtGe2.Value := 0;
  FatDc2QtpGe2.Value := 0;
  FatDc2VluGe2.Value := 0;
  FatDc2CstGe2.Value := 0;
  FatDc2BasIpi.Value := 0;
  FatDc2TotIpi.Value := 0;
  FatDc2BasIcm.Value := 0;
  FatDc2TotIcm.Value := 0;
  FatDc2TotIte.Value := 0;
  FatDc2TotGe2.Value := 0;
  FatDc2TotBrt.Value := 0;
  FatDc2TotLiq.Value := 0;
  FatDc2DesGe2.Value := '';
  FatDc2ObsGe2.Value := '';
  FatDc2FlaSeq.Value := '';
  FatDc2CodClp.Value := '1';
  FatDc2CodTam.Value := 'UN';
  FatDc2CodCor.Value := 'UN';
  FatDc2CodEmp.Value := FatDClCodEmp.Value;
  FatDc2DteGer.Value := FatDClDteGer.Value;
  FatDc2CodEit.Value := FatDClCodEmp.Value;
  FatDc2NumGer.Value := FatDClNumGer.Value;
  FatDc2NroNfs.Value := FatDClNroNfs.Value;
  FatDc2SeqGe2.Value := FatDClSeqIte.Value + 1;
  FatDc2NroGe2.Value := quSql.FieldbyName('Reg').AsInteger + 1;

  FatDc2.EnableControls;

  AntVluGe2 := FatDc2VluGe2.Value;

  pnDesGe2.Visible := False;
  pnObsGe2.Visible := False;

  EdCodClp.Enabled := True;
  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdQtpGe2.Enabled := True;
  EdVluGe2.Enabled := True;
  EdIpiGe2.Enabled := True;
  EdIcmGe2.Enabled := True;
  EdCodSt1.Enabled := True;
  EdCodSt2.Enabled := True;
  EdCodUnd.Enabled := True;
  EdDesGe2.Enabled := True;
  EdObsGe2.Enabled := True;

  EdCodClp.Font.Style := [];
  EdCodGru.Font.Style := [];
  EdCodSub.Font.Style := [];
  EdCodPro.Font.Style := [];
  EdQtpGe2.Font.Style := [];
  EdVluGe2.Font.Style := [];
  EdIpiGe2.Font.Style := [];
  EdIcmGe2.Font.Style := [];
  EdCodSt1.Font.Style := [];
  EdCodSt2.Font.Style := [];
  EdCodUnd.Font.Style := [];
  EdDesGe2.Font.Style := [];
  EdObsGe2.Font.Style := [];

  EdCodClp.SetFocus;

end;

procedure TfmManDc2.Panel3Exit(Sender: TObject);
var
  NroGe2: integer;
begin
  inherited;
  if psaida = 'Sim' then
  begin

    if FatDc2.State <> dsBrowse then
    begin

      if (FatDc2CodClp.Value <> '8') and (FatDc2CodClp.Value <> '9') then
      begin

        if FatDc2VluGe2.Value = 0 then
          fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdVluGe2);
        if FatDc2QtpGe2.Value = 0 then
          fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdQtpGe2);

      end
      else
      begin

        if Trim(FatDc2DesGe2.Value) = '' then
          fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdDesGe2);

      end;

      if FatDc2.State = dsInsert then
      begin

        with FatDc2 do
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

            if FatDc2.State = dsBrowse then
              FatDc2.Edit;

            EdCodClp.SetFocus;

            raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

        end;

        FatDc2.Close;
        FatDc2.Open;

        FatDCl.Close;
        FatDCl.Open;

        FatDc2.Append;

        EdCodClp.SetFocus;

      end
      else
      begin

        NroGe2 := FatDc2NroGe2.Value;

        with FatDc2 do
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

            if FatDc2.State = dsBrowse then
              FatDc2.Edit;

            EdCodClp.SetFocus;

            raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

        end;

        FatDc2.Close;
        FatDc2.Open;

        FatDc2.Locate('CodEmp;DteGer;NumGer;NroGe2', VarArrayOf([FatDc2CodEmp.Value, FatDc2DteGer.Value, FatDc2NumGer.Value, NroGe2]), [LoPartialKey]);

        FatDCl.Close;
        FatDCl.Open;

        if FatDc2NroGe2.Value = FatDClQtiGer.Value then
          FatDc2.Append
        else
        begin

          FatDc2.Next;

          EdCodClp.Enabled := False;
          EdCodGru.Enabled := False;
          EdCodSub.Enabled := False;
          EdCodPro.Enabled := False;
          EdQtpGe2.Enabled := False;
          EdVluGe2.Enabled := False;
          EdIpiGe2.Enabled := False;
          EdIcmGe2.Enabled := False;
          EdCodSt1.Enabled := False;
          EdCodSt2.Enabled := False;
          EdCodUnd.Enabled := False;
          EdDesGe2.Enabled := False;
          EdObsGe2.Enabled := False;

          EdCodClp.Font.Style := [fsBold];
          EdCodGru.Font.Style := [fsBold];
          EdCodSub.Font.Style := [fsBold];
          EdCodPro.Font.Style := [fsBold];
          EdQtpGe2.Font.Style := [fsBold];
          EdVluGe2.Font.Style := [fsBold];
          EdIpiGe2.Font.Style := [fsBold];
          EdIcmGe2.Font.Style := [fsBold];
          EdCodSt1.Font.Style := [fsBold];
          EdCodSt2.Font.Style := [fsBold];
          EdCodUnd.Font.Style := [fsBold];
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
      EdQtpGe2.Enabled := False;
      EdVluGe2.Enabled := False;
      EdIpiGe2.Enabled := False;
      EdIcmGe2.Enabled := False;
      EdCodSt1.Enabled := False;
      EdCodSt2.Enabled := False;
      EdCodUnd.Enabled := False;
      EdDesGe2.Enabled := False;
      EdObsGe2.Enabled := False;

      EdCodClp.Font.Style := [fsBold];
      EdCodGru.Font.Style := [fsBold];
      EdCodSub.Font.Style := [fsBold];
      EdCodPro.Font.Style := [fsBold];
      EdQtpGe2.Font.Style := [fsBold];
      EdVluGe2.Font.Style := [fsBold];
      EdIpiGe2.Font.Style := [fsBold];
      EdIcmGe2.Font.Style := [fsBold];
      EdCodSt1.Font.Style := [fsBold];
      EdCodSt2.Font.Style := [fsBold];
      EdCodUnd.Font.Style := [fsBold];
      EdDesGe2.Font.Style := [fsBold];
      EdObsGe2.Font.Style := [fsBold];

      pnDesGe2.Visible := True;
      pnObsGe2.Visible := True;

      grGe2.SetFocus;

    end;
  end;
end;

procedure TfmManDc2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then
  begin

    if fMsg('Deseja Realmente Abandonar a Nota ?', 'O') then
    begin

      if FatDc2.State <> dsBrowse then
        FatDc2.CancelUpdates;

      if FatDCl.State <> dsBrowse then
        FatDCl.CancelUpdates;

      CodEmp := fmManDCl.FatDClCodEmp.Value;
      DteGer := fmManDCl.FatDClDteGer.Value;
      NumGer := fmManDCl.FatDClNumGer.Value;

      fmManDCl.FatDCl.Close;
      fmManDCl.FatDCl.Open;

      if CodEmp > 0 then
        fmManDCl.FatDCl.Locate('CodEmp;DteGer;NumGer', VarArrayOf([CodEmp, DteGer, NumGer]), [loPartialKey]);

      Action := CaFree;

    end
    else
    begin

      Abort;

      if FatDClNumGer.Value = Null then
        FatDCl.Insert;

    end;

  end
  else
  begin

    CodEmp := fmManDCl.FatDClCodEmp.Value;
    DteGer := fmManDCl.FatDClDteGer.Value;
    NumGer := fmManDCl.FAtDClNumGer.Value;

    fmManDCl.FatDCl.Close;
    fmManDCl.FatDCl.Open;

    fmManDCl.FatDCl.Locate('CodEmp;DteGer;NumGer', VarArrayOf([CodEmp, DteGer, NumGer]), [loPartialKey]);

    Action := CaFree;

  end;
end;

procedure TfmManDc2.grGe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'Enter-Alterar Dados do Item Item DEL-Excluir Item F4-Estoque F5-Alterar Dados da Nota';

end;

procedure TfmManDc2.grGe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'Enter-Alterar Dados do Item Item DEL-Excluir Item F4-Estoque F5-Alterar Dados da Nota';

end;

procedure TfmManDc2.Panel4Exit(Sender: TObject);
begin
  inherited;
  if FatDCl.State <> dsBrowse then
  begin

    with FatDCl do
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

        if FatDCl.State = dsBrowse then
          FatDCl.Edit;

        EdBasIc1.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    FatDCl.Close;
    FatDCl.Open;

    pnBasIc1.Caption := FormatFloat('###,###,##0.00', FatDClBasIc1.Value);
    pnTotIc1.Caption := FormatFloat('###,###,##0.00', FatDClTotIc1.Value);
    pnBasSu1.Caption := FormatFloat('###,###,##0.00', FatDClBasSu1.Value);
    pnTotSu1.Caption := FormatFloat('###,###,##0.00', FatDClTotSu1.Value);
    pnTotIt1.Caption := FormatFloat('###,###,##0.00', FatDClTotIt1.Value);
    pnTotFrt.Caption := FormatFloat('###,###,##0.00', FatDClTotFrt.Value);
    pnTotSeg.Caption := FormatFloat('###,###,##0.00', FatDClTotSeg.Value);
    pnTotDes.Caption := FormatFloat('###,###,##0.00', FatDClTotDes.Value);
    pnTotIp1.Caption := FormatFloat('###,###,##0.00', FatDClTotIp1.Value);
    pnTotGe1.Caption := FormatFloat('###,###,##0.00', FatDClTotGe1.Value);

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

procedure TfmManDc2.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      FatDClCodEmp.Value := fmPsqEmp.CodEmp;

      EdCodEmp.Text := IntToStr(FatDClCodEmp.Value);

      pnApeEmp.Caption := fmPsqEmp.ApeEmp;

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmManDc2.bpsqCliClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqCli := TfmPsqCli.Create(Self);

    fmPsqCli.ShowModal;

    if fmPsqCli.CodCli > 0 then
    begin

      FatDClCodCli.Value := fmPsqCli.CodCli;
      FatDClUfeGer.Value := fmPsqCli.UffCli;
      FatDClCodVen.Value := fmPsqCli.CodVen;

      EdCodCli.Text := IntToStr(FatDClCodCli.Value);

      pnNomCli.Caption := fmPsqCli.NomCli;
      pnUfeGer.Caption := fmPsqCli.UffCli;

      if FatDClCodVen.Value > 0 then
        EdCodVen.Text := IntToStr(FatDClCodVen.Value)
      else
        EdCodVen.Text := '';

    end;

  finally

    FreeAndNil(fmPsqCli);

  end;

  EdCodCli.SetFocus;

end;

procedure TfmManDc2.bpsqVenClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqVen := TfmPsqVen.Create(Self);

    fmPsqVen.ShowModal;

    if fmPsqVen.CodVen > 0 then
    begin

      FatDClCodVen.Value := fmPsqVen.CodVen;

      pnNomVen.Caption := fmPsqVen.NomVen;

      EdCodVen.Text := IntToStr(FatDClCodVen.Value);

    end;

  finally

    FreeAndNil(fmPsqVen);

  end;

  EdCodVen.SetFocus;

end;

procedure TfmManDc2.bpsqPfaClick(Sender: TObject);
var
  LocPfa: string;
begin
  inherited;

  if FatDClUfeGer.Value = 'EX' then
    LocPfa := 'Importacao ou Exportacao'
  else
  begin

    if FatDClUfeGer.Value <> GUfeEmp then
      LocPfa := 'Outros Estados'
    else
      LocPfa := 'Mesmo Estado';

  end;

  try

    fmPsqPfa := TfmPsqPfa.Create(Self);

    with fmPsqPfa.EstPfa, SQL do
    begin

      Close;
      Text := ' Select EstPfa.CodPfa,' +
        '        EstPfa.TipPfa,' +
        '        EstPfa.DscPfa,' +
        '        EstPfa.DsrPfa,' +
        '        EstPfa.CodCf1,' +
        '        EstPfa.CodCf2,' +
        '        EstPfa.IntFin,' +
        '        EstPfa.AtuEst,' +
        '        EstPfa.ConSum,' +
        '        EstPfa.ModPfa' +
        ' From EstPfa' +
        ' Where EstPfa.TipPfa = :TipPfa' +
        '   and EstPfa.LocPfa = :LocPfa' +
        ' Order by EstPfa.DscPfa';

      with Params do
      begin

        Params[0].AsString := FatDClTipPfa.Value;
        Params[1].AsString := LocPfa;

      end;

      Open;

    end;

    fmPsqPfa.ShowModal;

    if Trim(fmPsqPfa.CodPfa) <> '' then
    begin

      FatDClCodPfa.Value := fmPsqPfa.CodPfa;

      pnNomPfa.Caption := fmPsqPfa.NomPfa;

      EdCodPfa.Text := FatDClCodPfa.Value;

    end;

  finally

    FreeAndNil(fmPsqPfa);

  end;

  EdCodPfa.SetFocus;

end;

procedure TfmManDc2.DsDC2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if FatDc2.State = dsBrowse then
    AntVluGe2 := FatDc2VluGe2.Value;

  pnDesGe2.Caption := FatDc2DesGe2.Value;
  pnObsGe2.Caption := FatDc2ObsGe2.Value;

  pnNumGer.Caption := IntToStr(FatDClNumGer.Value);

  pnBasIc1.Caption := FormatFloat('###,###,##0.00', FatDClBasIc1.Value);
  pnTotIc1.Caption := FormatFloat('###,###,##0.00', FatDClTotIc1.Value);
  pnBasSu1.Caption := FormatFloat('###,###,##0.00', FatDClBasSu1.Value);
  pnTotSu1.Caption := FormatFloat('###,###,##0.00', FatDClTotSu1.Value);
  pnTotIt1.Caption := FormatFloat('###,###,##0.00', FatDClTotIt1.Value);
  pnTotFrt.Caption := FormatFloat('###,###,##0.00', FatDClTotFrt.Value);
  pnTotSeg.Caption := FormatFloat('###,###,##0.00', FatDClTotSeg.Value);
  pnTotDes.Caption := FormatFloat('###,###,##0.00', FatDClTotDes.Value);
  pnTotIp1.Caption := FormatFloat('###,###,##0.00', FatDClTotIp1.Value);
  pnTotGe1.Caption := FormatFloat('###,###,##0.00', FatDClTotGe1.Value);

  if FatDc2.State = dsInsert then
    pnNroGe2.Caption := FNumZeros(IntToStr(FatDc2NroGe2.Value), 4) + '/' + FNumZeros(IntToStr(FatDClQtiGer.Value + 1), 4)
  else
    pnNroGe2.Caption := FNumZeros(IntToStr(FatDc2NroGe2.Value), 4) + '/' + FNumZeros(IntToStr(FatDClQtiGer.Value), 4);

end;

end.
