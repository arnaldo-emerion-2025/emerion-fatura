unit ManRo1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxDBColorDateEdit, dxDBColorEdit, ppDB, ppDBPipe, ppBands, ppClass,
  ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport;

type
  TfmManRo1 = class(TfmPadrao)
    PaintBox: TPaintBox;
    CmpNfs: TwwQuery;
    CmpNf2: TwwQuery;
    UpNfs: TUpdateSQL;
    UpNf2: TUpdateSQL;
    DsNf2: TDataSource;
    DsNfs: TDataSource;
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
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Label29: TLabel;
    Label9: TLabel;
    pnSeqNfs: TPanel;
    EdSeqNfs: TdxDBColorEdit;
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
    pnUfeNfs: TPanel;
    EdUfeNfs: TdxDBColorEdit;
    Label12: TLabel;
    Label20: TLabel;
    EdFrtNfs: TdxDBColorPickEdit;
    Label5: TLabel;
    Label7: TLabel;
    EdCodPfa: TdxDBColorEdit;
    pnNomPfa: TPanel;
    EdNomPfa: TdxDBColorEdit;
    Panel3: TPanel;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpNf2: TdxDBColorCurrencyEdit;
    EdVluNf2: TdxDBColorCurrencyEdit;
    EdIpiNf2: TdxDBColorCurrencyEdit;
    EdIcmNf2: TdxDBColorCurrencyEdit;
    EdTotIte: TdxDBColorCurrencyEdit;
    EdCodFor: TdxDBColorEdit;
    bpsqFor: TSpeedButton;
    EdNomCli: TdxDBColorEdit;
    pnNomFor: TPanel;
    bpsqEmp: TSpeedButton;
    bpsqPfa: TSpeedButton;
    EdCodClp: TdxDBColorEdit;
    EdObsNf2: TdxDBColorEdit;
    pnObsNf2: TPanel;
    EdDesNf2: TdxDBColorEdit;
    pnDesNf2: TPanel;
    Label44: TLabel;
    Label43: TLabel;
    pnNroNf2: TPanel;
    EdNroNf2: TdxDBColorCurrencyEdit;
    CmpNf2CODCLP: TStringField;
    CmpNf2CODGRU: TStringField;
    CmpNf2CODSUB: TStringField;
    CmpNf2CODPRO: TStringField;
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
    grNf2: ThGrid;
    CmpNfsCODEMP: TIntegerField;
    CmpNfsDTENFS: TDateTimeField;
    CmpNfsSEQNFS: TIntegerField;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsHREFAT: TStringField;
    CmpNfsUFENFS: TStringField;
    CmpNfsCODPFA: TStringField;
    CmpNfsTIPPFA: TStringField;
    CmpNfsMODPFA: TStringField;
    CmpNfsCODFOR: TIntegerField;
    CmpNfsPERPIS: TFloatField;
    CmpNfsPERCOF: TFloatField;
    CmpNfsCODFIL: TIntegerField;
    CmpNfsQTDNFS: TIntegerField;
    CmpNfsNRONFS: TIntegerField;
    CmpNfsCGCFOR: TStringField;
    CmpNfsINSFOR: TStringField;
    CmpNfsCODCF1: TStringField;
    CmpNfsCODCF2: TStringField;
    CmpNfsFRTNFS: TStringField;
    CmpNfsFLGENT: TStringField;
    CmpNfsFLGSAI: TStringField;
    CmpNfsDESNAT: TStringField;
    CmpNfsINSSUB: TStringField;
    CmpNfsTIPFRT: TStringField;
    CmpNfsMARNFS: TStringField;
    CmpNfsNUMNFS: TStringField;
    CmpNfsESPNFS: TStringField;
    CmpNfsNOMTRA: TStringField;
    CmpNfsCGCTRA: TStringField;
    CmpNfsINSTRA: TStringField;
    CmpNfsCEPTRA: TStringField;
    CmpNfsTENTRA: TStringField;
    CmpNfsENDTRA: TStringField;
    CmpNfsREFTRA: TStringField;
    CmpNfsNUMTRA: TStringField;
    CmpNfsBAITRA: TStringField;
    CmpNfsCIDTRA: TStringField;
    CmpNfsUFETRA: TStringField;
    CmpNfsPLCTRA: TStringField;
    CmpNfsPRTTRA: TStringField;
    CmpNfsFONTRA: TStringField;
    CmpNfsUFEPLC: TStringField;
    CmpNfsCEPFOR: TStringField;
    CmpNfsTENFOR: TStringField;
    CmpNfsENDFOR: TStringField;
    CmpNfsREFFOR: TStringField;
    CmpNfsNUMFOR: TStringField;
    CmpNfsBAIFOR: TStringField;
    CmpNfsCIDFOR: TStringField;
    CmpNfsUFEFOR: TStringField;
    CmpNfsTXFIPI: TStringField;
    CmpNfsTXFICM: TStringField;
    CmpNfsOBSNFS: TStringField;
    CmpNfsSEQITE: TIntegerField;
    CmpNfsQTINFS: TIntegerField;
    CmpNfsLINNFS: TIntegerField;
    CmpNfsQTDVOL: TIntegerField;
    CmpNfsALTVOL: TIntegerField;
    CmpNfsINFLIQ: TFloatField;
    CmpNfsTOTLIQ: TFloatField;
    CmpNfsINFBRT: TFloatField;
    CmpNfsTOTBRT: TFloatField;
    CmpNfsBASIPI: TFloatField;
    CmpNfsTOTIPI: TFloatField;
    CmpNfsBASICM: TFloatField;
    CmpNfsTOTICM: TFloatField;
    CmpNfsBASSUB: TFloatField;
    CmpNfsTOTSUB: TFloatField;
    CmpNfsTOTITE: TFloatField;
    CmpNfsTOTGER: TFloatField;
    CmpNfsTOTPIS: TFloatField;
    CmpNfsTOTCOF: TFloatField;
    CmpNfsTOTFRT: TFloatField;
    CmpNfsTOTSEG: TFloatField;
    CmpNfsTOTDES: TFloatField;
    CmpNfsICMFRT: TFloatField;
    CmpNfsBSICMF: TFloatField;
    CmpNfsBAICMF: TFloatField;
    CmpNfsTOICMF: TFloatField;
    CmpNfsICMSEG: TFloatField;
    CmpNfsBSICMS: TFloatField;
    CmpNfsBAICMS: TFloatField;
    CmpNfsTOICMS: TFloatField;
    CmpNfsICMDES: TFloatField;
    CmpNfsBSICMD: TFloatField;
    CmpNfsBAICMD: TFloatField;
    CmpNfsTOICMD: TFloatField;
    CmpNfsIPIFRT: TFloatField;
    CmpNfsBSIPIF: TFloatField;
    CmpNfsBAIPIF: TFloatField;
    CmpNfsTOIPIF: TFloatField;
    CmpNfsIPISEG: TFloatField;
    CmpNfsBSIPIS: TFloatField;
    CmpNfsBAIPIS: TFloatField;
    CmpNfsTOIPIS: TFloatField;
    CmpNfsIPIDES: TFloatField;
    CmpNfsBSIPID: TFloatField;
    CmpNfsBAIPID: TFloatField;
    CmpNfsTOIPID: TFloatField;
    CmpNfsBASIP1: TFloatField;
    CmpNfsTOTIP1: TFloatField;
    CmpNfsBASIC1: TFloatField;
    CmpNfsTOTIC1: TFloatField;
    CmpNfsBASSU1: TFloatField;
    CmpNfsTOTSU1: TFloatField;
    CmpNfsTOTIT1: TFloatField;
    CmpNfsTOTGE1: TFloatField;
    CmpNfsCODUSU: TIntegerField;
    CmpNfsHRCNFS: TStringField;
    CmpNfsDTCNFS: TDateTimeField;
    CmpNfsUSCNFS: TIntegerField;
    CmpNfsOBCNFS: TStringField;
    CmpNfsATUEST: TStringField;
    CmpNfsLANEST: TStringField;
    CmpNfsINTFIN: TStringField;
    CmpNfsCONSUM: TStringField;
    CmpNfsFLGCTB: TStringField;
    CmpNfsCODIPI: TStringField;
    CmpNfsTIPIPI: TStringField;
    CmpNfsTRBIPI: TStringField;
    CmpNfsREDIPI: TFloatField;
    CmpNfsBSCIPI: TFloatField;
    CmpNfsCODICM: TStringField;
    CmpNfsTIPICM: TStringField;
    CmpNfsTRBICM: TStringField;
    CmpNfsREDICM: TFloatField;
    CmpNfsBSCICM: TFloatField;
    CmpNfsINCREV: TFloatField;
    CmpNfsINCFIN: TFloatField;
    CmpNfsNROCOL: TStringField;
    CmpNfsSEQOPE: TStringField;
    CmpNfsSITNFS: TStringField;
    CmpNfsFLGNFS: TStringField;
    CmpNfsFLGATU: TStringField;
    CmpNf2CODEMP: TIntegerField;
    CmpNf2DTENFS: TDateTimeField;
    CmpNf2SEQNFS: TIntegerField;
    CmpNf2SEQNF2: TIntegerField;
    CmpNf2CODEIT: TIntegerField;
    CmpNf2CODTAM: TStringField;
    CmpNf2CODCOR: TStringField;
    CmpNf2DESNF2: TStringField;
    CmpNf2OBSNF2: TStringField;
    CmpNf2CODST1: TStringField;
    CmpNf2CODST2: TStringField;
    CmpNf2CODUND: TStringField;
    CmpNf2REFNF2: TStringField;
    CmpNf2LIQNF2: TFloatField;
    CmpNf2BRTNF2: TFloatField;
    CmpNf2LINNF2: TIntegerField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2QTDNF2: TFloatField;
    CmpNf2SLDNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2CLSIPI: TStringField;
    CmpNf2SEQNFG: TIntegerField;
    CmpNf2SEQNF3: TIntegerField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2BASIPI: TFloatField;
    CmpNf2TOTIPI: TFloatField;
    CmpNf2BASICM: TFloatField;
    CmpNf2TOTICM: TFloatField;
    CmpNf2BASSUB: TFloatField;
    CmpNf2TOTSUB: TFloatField;
    CmpNf2TOTITE: TFloatField;
    CmpNf2TOTNF2: TFloatField;
    CmpNf2TOTLIQ: TFloatField;
    CmpNf2TOTBRT: TFloatField;
    CmpNf2TOTPIS: TFloatField;
    CmpNf2TOTCOF: TFloatField;
    CmpNf2CODSTR: TStringField;
    CmpNf2TIPSTR: TStringField;
    CmpNf2REGIPI: TStringField;
    CmpNf2TIPIPI: TStringField;
    CmpNf2TRBIPI: TStringField;
    CmpNf2REDIPI: TFloatField;
    CmpNf2BSCIPI: TFloatField;
    CmpNf2REGICM: TStringField;
    CmpNf2TIPICM: TStringField;
    CmpNf2TRBICM: TStringField;
    CmpNf2REDICM: TFloatField;
    CmpNf2BSCICM: TFloatField;
    CmpNf2INCREV: TFloatField;
    CmpNf2INCFIN: TFloatField;
    CmpNf2NRONFS: TIntegerField;
    CmpNf2NRONF2: TIntegerField;
    CmpNf2FLGATU: TStringField;
    Label3: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label52: TLabel;
    Label14: TLabel;
    EdCodTip: TdxDBColorCurrencyEdit;
    CmpNfsCODTIP: TIntegerField;
    CmpNfsFLGENV: TStringField;
    CmpNfsFLGSIN: TStringField;
    CmpNfsDESREG: TStringField;
    CmpNfsOB1NFS: TStringField;
    CmpNfsOB2NFS: TStringField;
    CmpNfsOB3NFS: TStringField;
    CmpNfsOB4NFS: TStringField;
    CmpNfsOB5NFS: TStringField;
    CmpNfsOB6NFS: TStringField;
    CmpNfsOB7NFS: TStringField;
    CmpNfsOB8NFS: TStringField;
    CmpNf2FLGENT: TStringField;
    CmpNf2QTINFE: TIntegerField;
    CmpNf2SEQNFE: TIntegerField;
    CmpNf2CODTXF: TStringField;
    CmpNfsFLGIMP: TStringField;
    CmpNfsNOMENT: TStringField;
    p1Report: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppApeEmp: TppLabel;
    ppNomEmp: TppLabel;
    ppEndEmp: TppLabel;
    ppRefEmp: TppLabel;
    ppTitulo: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
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
    ppLabel15: TppLabel;
    ppLine6: TppLine;
    p1CodFor: TppLabel;
    p1NomFor: TppLabel;
    p1EndFor: TppLabel;
    p1BaiFor: TppLabel;
    p1FonFor: TppLabel;
    p1NomUsu: TppLabel;
    p1FaxFor: TppLabel;
    p1CidFor: TppLabel;
    p1SigUfe: TppLabel;
    dbReport: TppDetailBand;
    ppQtpNf2: TppDBText;
    ppCodUnd: TppDBText;
    ppVlqNf2: TppDBText;
    ppTotIte: TppDBText;
    p1Memo: TppMemo;
    ppIcmNf2: TppDBText;
    ppIpiNf2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine7: TppLine;
    ppLabel35: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel16: TppLabel;
    p1TotIte: TppLabel;
    ppLabel65: TppLabel;
    p1TotGer: TppLabel;
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
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodForKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodForMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdCodForExit(Sender: TObject);
    procedure EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodPfaExit(Sender: TObject);
    procedure CmpNfsNewRecord(DataSet: TDataSet);
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
    procedure EdQtpNf2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdQtpNf2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdQtpNf2Exit(Sender: TObject);
    procedure EdVluNf2Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grNf2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CmpNf2NewRecord(DataSet: TDataSet);
    procedure Panel3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure grNf2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grNf2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Panel4Exit(Sender: TObject);
    procedure bpsqEmpClick(Sender: TObject);
    procedure bpsqForClick(Sender: TObject);
    procedure bpsqPfaClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure DsNf2DataChange(Sender: TObject; Field: TField);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
  private
  public
    qticms: integer;
    AntVluNf2: real;
    DteNfs: TDateTime;
    CodEmp, SeqNfs: integer;
    psaida, sEnc, sEntr, Finalizar: string;
  end;

var
  fmManRo1: TfmManRo1;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, AuxPsq, PsqEst, ManRom,
  PsqEmp, PsqPfa, PsqClp, AuxIni, Fpreview, manro13;

{$R *.DFM}

procedure TfmManRo1.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  psaida := 'Sim';

  Finalizar := 'N';

end;

procedure TfmManRo1.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManRo1.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManRo1 := nil;
end;

procedure TfmManRo1.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManRo1.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then
  begin

    if Trim(CmpNfsSitNfs.Value) = 'Concluido' then
      fMsg('Operação não Pode ser Realizada. Operação já Concluida.', 'E')

    else if Trim(CmpNfsSitNfs.Value) = 'Recebido' then
      fMsg('Operação não Pode ser Realizada. Operação com Recebimentos já Realizados.', 'E')

    else if Trim(CmpNfsSitNfs.Value) = 'Recebido Parcialmente' then
      fMsg('Operação não Pode ser Realizada. Operação com Recebimentos já Realizados.', 'E')

    else if Trim(CmpNfsSitNfs.Value) = 'Saldo Nao Atendido' then
      fMsg('Operação não Pode ser Realizada. Operação com Saldo não Atendido.', 'E')

    else if Trim(CmpNfsSitNfs.Value) = 'Cancelado' then
      fMsg('Operação não Pode ser Realizada. Operação Cancelada.', 'E');

    Finalizar := 'S';

    Close;

  end;
end;

procedure TfmManRo1.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManRo1.EdTipPfaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque';

end;

procedure TfmManRo1.EdTipPfaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque';

end;

procedure TfmManRo1.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        CmpNfsCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(CmpNfsCodEmp.Value);

        pnApeEmp.Caption := fmPsqEmp.ApeEmp;

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;

    if CmpNfsCodEmp.Value > 0 then
      EdDteFat.SetFocus;

  end;
end;

procedure TfmManRo1.EdCodEmpKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManRo1.EdCodEmpMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManRo1.Panel1Exit(Sender: TObject);
var
  SeqOpe: string;
begin
  inherited;
  if CmpNfs.State <> dsBrowse then
  begin

    if CmpNfsDteFat.Value = 0 then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdDteFat);

    if CmpNfs.State = dsInsert then
    begin

      if CmpNfsCodTip.Value = 0 then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodTip);

      if CmpNfsCodFor.Value = 0 then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodFor);

      if Trim(CmpNfsCodPfa.Value) = '' then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdCodPfa);

      if Trim(CmpNfsUfeNfs.Value) = '' then
        fmsgErro('Endereço do Fornecedor Esta Incompleto.', EdCodFor);

      Randomize;
      SeqOpe := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
        copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
        copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
        copy(TimeToStr(Time), 1, 2) +
        copy(TimeToStr(Time), 4, 2) +
        copy(TimeToStr(Time), 7, 2) +
        FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
        FNumZeros(Trim(IntToStr(Random(50000))), 5);

      CmpNfsSeqOpe.Value := SeqOpe;

    end
    else
      SeqOpe := CmpNfsSeqOpe.Value;

    with CmpNfs do
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

        if CmpNfs.State = dsBrowse then
          CmpNfs.Edit;

        if EdCodTip.Enabled then
          EdCodTip.SetFocus
        else
          EdDteFat.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select CodEmp,DteNfs,SeqNfs From CmpNfs Where CmpNfs.SeqOpe = :SeqOpe';

      with Params do
      begin

        Params[0].AsString := SeqOpe;

      end;

      Open;

    end;

    CmpNfs.Close;
    CmpNfs.Params[0].AsInteger := quSQL.FieldbyName('CodEmp').AsInteger;
    CmpNfs.Params[1].AsDateTime := quSQL.FieldbyName('DteNfs').AsDateTime;
    CmpNfs.Params[2].AsInteger := quSQL.FieldbyName('SeqNfs').AsInteger;
    CmpNfs.Open;

    CmpNf2.Close;
    CmpNf2.Params[0].AsInteger := CmpNfsCodEmp.Value;
    CmpNf2.Params[1].AsDateTime := CmpNfsDteNfs.Value;
    CmpNf2.Params[2].AsInteger := CmpNfsSeqNfs.Value;
    CmpNf2.Open;

    fmManRom.CodEmp := CmpNfsCodEmp.Value;
    fmManRom.DteNfs := CmpNfsDteNfs.Value;
    fmManRom.SeqNfs := CmpNfsSeqNfs.Value;

    with fmManRom.CmpNfs, SQL do
    begin

      Close;
      Text := fmManRom.sBase +
        ' Where CmpNfs.CodEmp = :CodEmp' +
        '   and CmpNfs.DteNfs = :DteNfs' +
        '   and CmpNfs.SeqNfs = :SeqNfs';

      with Params do
      begin

        Params[0].AsInteger := fmManRom.CodEmp;
        Params[1].AsDateTime := fmManRom.DteNfs;
        Params[2].AsInteger := fmManRom.SeqNfs;

      end;

      Open;

    end;

    qticms := 0;

    if GUfeEmp <> CmpNfsUfeNfs.Value then
    begin

      with quSql, SQL do
      begin

        Close;
        Text := ' Select Count(*) as Reg from GerIcm Where GerIcm.SigUfe = ' + QuotedStr(CmpNfsUfeNfs.Value);
        Open;

      end;

      qticms := quSql.FieldbyName('Reg').AsInteger;

    end;

    bPsqEmp.Enabled := False;
    bPsqFor.Enabled := False;
    bPsqPfa.Enabled := False;

    EdCodTip.Enabled := False;
    EdCodEmp.Enabled := False;
    EdDteFat.Enabled := False;
    EdCodFor.Enabled := False;
    EdFrtNfs.Enabled := False;
    EdCodPfa.Enabled := False;

    EdCodTip.Font.Style := [fsBold];
    EdCodEmp.Font.Style := [fsBold];
    EdDteFat.Font.Style := [fsBold];
    EdCodFor.Font.Style := [fsBold];
    EdFrtNfs.Font.Style := [fsBold];
    EdCodPfa.Font.Style := [fsBold];

    if Trim(CmpNfsCodPfa.Value) = '5.905' then
    begin

      try

        fmManRo13 := TfmManRo13.Create(Self);

        fmManRo13.CmpNf5.Close;
        fmManRo13.CmpNf5.Params[0].AsInteger := CmpNfsCodEmp.Value;
        fmManRo13.CmpNf5.Params[1].AsDateTime := CmpNfsDteNfs.Value;
        fmManRo13.CmpNf5.Params[2].AsInteger := CmpNfsSeqNfs.Value;
        fmManRo13.CmpNf5.Open;

        fmManRo13.ShowModal;

      finally

        FreeAndNil(fmManRo13);

      end;
    end;

    if CmpNfsQtiNfs.Value = 0 then
      CmpNf2.Append
    else
      grNf2.SetFocus;

  end;
end;

procedure TfmManRo1.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if CmpNfs.State <> dsBrowse then
    begin

      if CmpNfsCodEmp.Value > 0 then
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

            Params[0].AsInteger := CmpNfsCodEmp.Value;

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

procedure TfmManRo1.EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'F';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodFor > 0 then
      begin

        CmpNfsCodFor.Value := fmAuxIni.CodFor;
        CmpNfsUfeNfs.Value := fmAuxIni.SigUfe;

        EdCodFor.Text := IntToStr(CmpNfsCodFor.Value);

        pnUfeNfs.Caption := fmAuxIni.SigUfe;
        pnNomFor.Caption := fmAuxIni.NomFor;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if CmpNfsCodFor.Value > 0 then
      EdFrtNfs.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'F';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodFor > 0 then
      begin

        CmpNfsCodFor.Value := fmAuxPsq.CodFor;
        CmpNfsUfeNfs.Value := fmAuxPsq.SigUfe;

        EdCodFor.Text := IntToStr(CmpNfsCodFor.Value);

        pnUfeNfs.Caption := fmAuxPsq.SigUfe;
        pnNomFor.Caption := fmAuxPsq.NomFor;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if CmpNfsCodFor.Value > 0 then
      EdFrtNfs.SetFocus;

  end;
end;

procedure TfmManRo1.EdCodForKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManRo1.EdCodForMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManRo1.EdCodForExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdDteFat.Focused) and (not EdCodEmp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if CmpNfs.State <> dsBrowse then
      begin

        if CmpNfsCodFor.Value > 0 then
        begin

          with quSql, SQL do
          begin

            Close;
            Text := ' Select * From FinFor Where FinFor.CodFor = ' + QuotedStr(IntToStr(CmpNfsCodFor.Value));
            Open;

          end;

          if quSql.FieldbyName('CodFor').AsInteger = CmpNfsCodFor.Value then
          begin

            pnUfeNfs.Caption := quSQL.FieldbyName('SigUfe').AsString;
            pnNomFor.Caption := quSQL.FieldbyName('NomFor').AsString;

            CmpNfsUfeNfs.Value := quSQL.FieldbyName('SigUfe').AsString;

          end
          else
          begin

            pnUfeNfs.Caption := '';
            pnNomFor.Caption := '';

            fmsgErro('Fornecedor Informado não Encontrado', EdCodFor);

          end;

        end
        else
        begin

          pnUfeNfs.Caption := '';
          pnNomFor.Caption := '';

          fmsgErro('Campo de Preenchimento Obrigátorio não Informado', EdCodFor);

        end;
      end;
    end;
  end;
end;

procedure TfmManRo1.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  LocPfa: string;
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if CmpNfsUfeNfs.Value = 'EX' then
      LocPfa := 'Importacao ou Exportacao'
    else
    begin

      if CmpNfsUfeNfs.Value <> GUfeEmp then
        LocPfa := 'Outros Estados'
      else
        LocPfa := 'Mesmo Estado'

    end;

    try

      fmPsqPfa := TfmPsqPfa.Create(Self);
      fmPsqPfa.RMA := true;

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

          Params[0].AsString := CmpNfsTipPfa.Value;
          Params[1].AsString := LocPfa;

        end;

        Open;

      end;
      fmPsqPfa.ShowModal;

      if Trim(fmPsqPfa.CodPfa) <> '' then
      begin

        CmpNfsCodPfa.Value := Trim(fmPsqPfa.CodPfa);

        pnNomPfa.Caption := fmPsqPfa.NomPfa;

        EdCodPfa.Text := CmpNfsCodPfa.Value;

      end;

    finally
      if fmPsqPfa.rma then
      begin
        CmpNfsINTFIN.value := fmPsqPfa.EstPfaINTFIN.Value;
        CmpNfsATUEST.value := fmPsqPfa.EstPfaATUEST.Value;
      end;

      FreeAndNil(fmPsqPfa);

    end;

    EdCodPfa.SetFocus;

  end;
end;

procedure TfmManRo1.EdCodPfaExit(Sender: TObject);
var
  saida: boolean;
  LocPfa: string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdFrtNfs.Focused) and (not EdCodFor.Focused) and (not EdDteFat.Focused) and (not EdCodEmp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if CmpNfs.State <> dsBrowse then
      begin

        if Trim(CmpNfsCodPfa.Value) <> '' then
        begin

          if CmpNfsUfeNfs.Value = 'EX' then
            LocPfa := 'Importacao ou Exportacao'
          else
          begin

            if CmpNfsUfeNfs.Value <> GUfeEmp then
              LocPfa := 'Outros Estados'
            else
              LocPfa := 'Mesmo Estado'

          end;

          with quSql, SQL do
          begin

            Close;
            Text := ' Select DscPfa,ModPfa From EstPfa ' +
              ' Where EstPfa.TipPfa = :TipPfa' +
              '   and EstPfa.CodPfa = :CodPfa' +
              '   and EstPfa.LocPfa = :LocPfa' +
              '   and EstPfa.ModPfa <> ' + QuotedStr('Vendas');

            with Params do
            begin

              Params[0].AsString := CmpNfsTipPfa.Value;
              Params[1].AsString := CmpNfsCodPfa.Value;
              Params[2].AsString := LocPfa;

            end;

            Open;

          end;

          if Trim(quSql.FieldbyName('DscPfa').AsString) <> '' then
          begin

            pnNomPfa.Caption := quSql.FieldbyName('DscPfa').AsString;

            CmpNfsModPfa.Value := quSql.FieldbyName('ModPfa').AsString;

          end
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

procedure TfmManRo1.CmpNfsNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpNfs.DisableControls;

  CmpNfsCodTip.Value := 1;
  CmpNfsSeqNfs.Value := 0;
  CmpNfsQtiNfs.Value := 0;
  CmpNfsQtdVol.Value := 0;
  CmpNfsAltVol.Value := 0;
  CmpNfsSeqIte.Value := 0;
  CmpNfsQtdNfs.Value := 0;
  CmpNfsTotIte.Value := 0;
  CmpNfsTotGer.Value := 0;
  CmpNfsBasIcm.Value := 0;
  CmpNfsTotIcm.Value := 0;
  CmpNfsBasIpi.Value := 0;
  CmpNfsTotIpi.Value := 0;
  CmpNfsTotGer.Value := 0;
  CmpNfsTotBrt.Value := 0;
  CmpNfsObsNfs.Value := '';
  CmpNfsDteNfs.Value := Date;
  CmpNfsDteFat.Value := Date;
  CmpNfsFrtNfs.Value := 'FOB';
  CmpNfsFlgImp.Value := 'Nao';
  CmpNfsTipPfa.Value := 'Saida';
  CmpNfsCodEmp.Value := GEmp_Id;
  CmpNfsSitNfs.Value := 'Nao Concluido';
  CmpNfsHreFat.Value := TimeToStr(Time);

  EdDteFat.Date := Date;

  EdFrtNfs.Text := 'FOB';

  EdCodTip.Value := 1;

  if GEmp_Id > 0 then
    EdCodEmp.Text := IntToStr(GEmp_Id);

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

    if GFlgAce = 'Sim' then
      Text := Text + ' and CodFil > ' + QuotedStr('0');

    with Params do
    begin

      Params[0].AsInteger := CmpNfsCodEmp.Value;

    end;

    Open;

    pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select NomFor,SigUfe From FinFor Where FinFor.CodFor = ' + QuotedStr(IntToStr(CmpNfsCodFor.Value));
    Open;

    pnNomFor.Caption := FieldbyName('NomFor').AsString;
    pnUfeNfs.Caption := FieldbyName('SigUfe').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select DscPfa From EstPfa Where EstPfa.TipPfa = ' + QuotedStr(CmpNfsTipPfa.Value) + ' and EstPfa.CodPfa = ' + QuotedStr(CmpNfsCodPfa.Value);
    Open;

    pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

  end;

  CmpNf2.Close;
  CmpNf2.Params[0].AsInteger := CmpNfsCodEmp.Value;
  CmpNf2.Params[1].AsDateTime := CmpNfsDteNfs.Value;
  CmpNf2.Params[2].AsInteger := CmpNfsSeqNfs.Value;
  CmpNf2.Open;

  EdCodTip.Enabled := True;
  EdCodEmp.Enabled := True;
  EdDteFat.Enabled := True;
  EdCodFor.Enabled := True;
  EdFrtNfs.Enabled := True;
  EdCodPfa.Enabled := True;

  EdCodTip.Font.Style := [];
  EdCodEmp.Font.Style := [];
  EdDteFat.Font.Style := [];
  EdCodFor.Font.Style := [];
  EdFrtNfs.Font.Style := [];
  EdCodPfa.Font.Style := [];

  EdCodTip.SetFocus;

end;

procedure TfmManRo1.EdCodClpExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdFrtNfs.Focused) and (not EdDteFat.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if CmpNf2.State <> dsBrowse then
      begin

        if Trim(CmpNf2CodClp.Value) <> '' then
        begin

          with quSql, SQL do
          begin

            Close;
            Text := ' Select Count(*) as Reg From EstClp Where EstClp.CodClp = ' + QuotedStr(CmpNf2CodClp.Value);
            Open;

          end;

          if quSql.FieldbyName('Reg').AsInteger = 0 then
            fmsgErro('Classificação Informada não Encontrada.', EdCodClp);

        end
        else
          fmsgErro('Classificação Informada não Encontrada.', EdCodClp);

      end
      else
      begin

        if EdCodClp.Enabled then
        begin

          if Trim(CmpNf2CodClp.Value) = '' then
            fmsgErro('Classificação Informada não Encontrada.', EdCodClp);

        end;
      end;
    end;

  end
  else
  begin

    if (Tecla = 'UP') then
    begin

      if CmpNfsQtiNfs.Value > 0 then
      begin

        EdCodClp.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdQtpNf2.Enabled := False;
        EdVluNf2.Enabled := False;
        EdIpiNf2.Enabled := False;
        EdIcmNf2.Enabled := False;
        EdDesNf2.Enabled := False;
        EdObsNf2.Enabled := False;

        EdCodClp.Font.Style := [fsBold];
        EdCodGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];
        EdQtpNf2.Font.Style := [fsBold];
        EdVluNf2.Font.Style := [fsBold];
        EdIpiNf2.Font.Style := [fsBold];
        EdIcmNf2.Font.Style := [fsBold];
        EdDesNf2.Font.Style := [fsBold];
        EdObsNf2.Font.Style := [fsBold];

        if CmpNf2.State <> dsBrowse then
          CmpNf2.CancelUpdates
        else
        begin

          if not CmpNf2.Bof then
            CmpNf2.Prior;

        end;

        grNf2.SetFocus;

      end
      else
        EdCodClp.SetFocus;
    end;
  end;
end;

procedure TfmManRo1.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

        if CmpNf2.State = dsBrowse then
        begin

          if CmpNf2CodEmp.Value > 0 then
            CmpNf2.Edit
          else
            CmpNf2.Append;

        end;

        CmpNf2CodClp.Value := fmPsqClp.CodClp;

      end;

    finally

      FreeAndNil(fmPsqClp);

    end;

    if Trim(CmpNf2CodClp.Value) <> '' then
    begin

      if (CmpNf2CodClp.Value <> '8') and (CmpNf2CodClp.Value <> '9') then
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

procedure TfmManRo1.EdCodClpKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Iniciais F3-Descr F4-Estoque F5-Refer F6-Int/Desc F7-Int/Ref';

end;

procedure TfmManRo1.EdCodClpMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Iniciais F3-Descr F4-Estoque F5-Refer F6-Int/Desc F7-Int/Ref';

end;

procedure TfmManRo1.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := CmpNf2CodClp.Value;

      fmAuxIni.TipoPesq := 'G';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if CmpNf2.State = dsBrowse then
        begin

          if CmpNf2CodEmp.Value > 0 then
            CmpNf2.Edit
          else
            CmpNf2.Append;

        end;

        CmpNf2CodGru.Value := fmAuxIni.CodGru;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(CmpNf2CodGru.Value) <> '' then
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

      fmAuxPsq.CodClp := CmpNf2CodClp.Value;

      fmAuxPsq.TipoPesq := 'G';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if CmpNf2.State = dsBrowse then
        begin

          if CmpNf2CodEmp.Value > 0 then
            CmpNf2.Edit
          else
            CmpNf2.Append;

        end;

        CmpNf2CodGru.Value := fmAuxPsq.CodGru;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(CmpNf2CodGru.Value) <> '' then
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

procedure TfmManRo1.EdCodGruExit(Sender: TObject);
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

      if CmpNf2.State <> dsBrowse then
      begin

        if Trim(CmpNf2CodGru.Value) <> '' then
        begin

          CmpNf2CodGru.Value := FNumZeros(CmpNf2CodGru.Value, 3);

          if (CmpNf2CodGru.Value <> '888') and (CmpNf2CodGru.Value <> '999') then
          begin

            with quSql, SQL do
            begin

              Close;
              Text := ' Select Count(*) as QtdReg From EstGru ' +
                ' Where CodGru = ' + QuotedStr(CmpNf2CodGru.Value);
              Open;

            end;

            if quSql.FieldbyName('QtdReg').AsInteger = 0 then
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

          if Trim(CmpNf2CodGru.Value) = '' then
            fmsgErro('Grupo Informado não Encontrado.', EdCodGru);

        end;
      end;
    end;
  end;
end;

procedure TfmManRo1.EdCodGruKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Refer F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManRo1.EdCodGruMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Refer F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManRo1.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      if Trim(CmpNf2CodGru.Value) <> '' then
        fmAuxIni.CodGru := CmpNf2CodGru.Value;

      fmAuxIni.CodClp := CmpNf2CodClp.Value;

      fmAuxIni.TipoPesq := 'S';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if CmpNf2.State = dsBrowse then
        begin

          if CmpNf2CodEmp.Value > 0 then
            CmpNf2.Edit
          else
            CmpNf2.Append;

        end;

        CmpNf2CodGru.Value := fmAuxIni.CodGru;
        CmpNf2CodSub.Value := fmAuxIni.CodSub;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(CmpNf2CodSub.Value) <> '' then
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

      if Trim(CmpNf2CodGru.Value) <> '' then
        fmAuxPsq.CodGru := CmpNf2CodGru.Value;

      fmAuxPsq.CodClp := CmpNf2CodClp.Value;

      fmAuxPsq.TipoPesq := 'S';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if CmpNf2.State = dsBrowse then
        begin

          if CmpNf2CodEmp.Value > 0 then
            CmpNf2.Edit
          else
            CmpNf2.Append;

        end;

        CmpNf2CodGru.Value := fmAuxPsq.CodGru;
        CmpNf2CodSub.Value := fmAuxPsq.CodSub;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(CmpNf2CodSub.Value) <> '' then
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

procedure TfmManRo1.EdCodSubExit(Sender: TObject);
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

      if Trim(CmpNf2CodSub.Value) <> '' then
      begin

        if CmpNf2.State <> dsBrowse then
        begin

          CmpNf2CodSub.Value := FNumZeros(CmpNf2CodSub.Value, 4);

          if (CmpNf2CodSub.Value <> '8888') and (CmpNf2CodSub.Value <> '9999') then
          begin

            with quSql, SQL do
            begin

              Close;
              Text := ' Select Count(*) as QtdReg From EstSub' +
                ' Where CodGru = ' + QuotedStr(CmpNf2CodGru.Value) +
                '   and CodSub = ' + QuotedStr(CmpNf2CodSub.Value);
              Open;

              if quSql.FieldbyName('QtdReg').AsInteger = 0 then
                fmsgErro('Grupo e Sub-Grupo não Encontrado.', EdCodGru);

            end;
          end;

        end
        else
        begin

          if EdCodSub.Enabled then
          begin

            if Trim(CmpNf2CodSub.Value) = '' then
              fmsgErro('Sub-Grupo Informado não Encontrado.', EdCodSub);

          end;
        end;

      end
      else
        fmsgErro('Sub-Grupo Informado não Encontrado.', EdCodSub);
    end;
  end;
end;

procedure TfmManRo1.EdCodSubKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManRo1.EdCodSubMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManRo1.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {f1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := CmpNf2CodClp.Value;
      fmAuxIni.CodGru := CmpNf2CodGru.Value;
      fmAuxIni.CodSub := CmpNf2CodSub.Value;

      fmAuxIni.TipoPesq := 'I';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if EdCodClp.Enabled then
        begin

          CmpNf2CodClp.Value := fmAuxIni.CodClp;
          CmpNf2CodGru.Value := fmAuxIni.CodGru;
          CmpNf2CodSub.Value := fmAuxIni.CodSub;
          CmpNf2CodPro.Value := fmAuxIni.CodPro;

        end;
      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(CmpNf2CodPro.Value) <> '' then
    begin

      if EdQtpNf2.Enabled then
        EdQtpNf2.SetFocus
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

      fmAuxPsq.CodClp := CmpNf2CodClp.Value;

      if Trim(CmpNf2CodGru.Value) <> '' then
        fmAuxPsq.CodGru := CmpNf2CodGru.Value;
      if Trim(CmpNf2CodSub.Value) <> '' then
        fmAuxPsq.CodSub := CmpNf2CodSub.Value;

      fmAuxPsq.TipoPesq := 'I';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if CmpNf2.State = dsBrowse then
        begin

          if CmpNf2CodEmp.Value > 0 then
            CmpNf2.Edit
          else
            CmpNf2.Append;

        end;

        CmpNf2CodClp.Value := fmAuxPsq.CodClp;
        CmpNf2CodGru.Value := fmAuxPsq.CodGru;
        CmpNf2CodSub.Value := fmAuxPsq.CodSub;
        CmpNf2CodPro.Value := fmAuxPsq.CodPro;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(CmpNf2CodPro.Value) <> '' then
    begin

      if EdQtpNf2.Enabled then
        EdQtpNf2.SetFocus
      else
        EdCodPro.SetFocus;

    end
    else
      EdCodPro.SetFocus;

  end;
end;

procedure TfmManRo1.EdCodProExit(Sender: TObject);
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

      if Trim(CmpNf2CodPro.Value) <> '' then
      begin

        if CmpNf2.State <> dsBrowse then
        begin

          CmpNf2CodPro.Value := FNumStrZero(CmpNf2CodPro.Value);

          if (CmpNf2CodPro.Value <> '88888') and (CmpNf2CodPro.Value <> '99999') then
          begin

            with quSQL, SQL do
            begin

              Close;
              Text := ' Select * From EstPro ' +
                ' Where CodClp = ' + QuotedStr(CmpNf2CodClp.Value) +
                '   and CodGru = ' + QuotedStr(CmpNf2CodGru.Value) +
                '   and CodSub = ' + QuotedStr(CmpNf2CodSub.Value) +
                '   and CodPro = ' + QuotedStr(CmpNf2CodPro.Value);
              Open;

            end;

            if Trim(quSQL.FieldbyName('CodPro').AsString) <> '' then
            begin

              CmpNf2DesNf2.Value := quSQL.FieldbyName('DscPro').AsString;
              CmpNf2CodUnd.Value := quSQL.FieldbyName('CodUns').AsString;

              qusql.Active := false;
              qusql.sql.text := 'Select CODICM, TIPICM, codipi, tipipi from ESTPFA where CODPFA = (Select codpfa from CMPNFS where codemp = ' +
                QuotedStr(CmpNfsCODEMP.asstring) + ' and dtenfs = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', CmpNfsDTENFS.asdatetime)) + ' and seqnfs = ' +
                QuotedStr(CmpNfsSEQNFS.asstring) + ');';
              qusql.Active := true;

              if Trim(quSQL.FieldbyName('CODIPI').AsString) <> '' then
              begin

                CmpNf2RegIpi.Value := quSQL.FieldbyName('CODIPI').AsString;
                CmpNf2TipIpi.Value := quSQL.FieldbyName('TIPIPI').AsString;

              end;

              if Trim(quSQL.FieldbyName('CODICM').AsString) <> '' then
              begin

                CmpNf2RegIcm.Value := quSQL.FieldbyName('CODICM').AsString;
                CmpNf2TipIcm.Value := quSQL.FieldbyName('TIPICM').AsString;

              end;

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select * From EstIcm' +
                  ' Where CodIcm = ' + QuotedStr(CmpNf2RegIcm.Value) +
                  '   and TipIcm = ' + QuotedStr(CmpNf2TipIcm.Value);
                Open;

              end;

              if Trim(quSql.FieldbyName('CodIcm').AsString) <> '' then
              begin

                CmpNf2IcmNf2.Value := quSql.FieldbyName('PerIcm').AsFloat;

                if quSql.FieldbyName('CodSt1').AsString <> '' then
                  CmpNf2CodSt1.Value := quSql.FieldbyName('CodSt1').AsString;
                if quSql.FieldbyName('CodSt2').AsString <> '' then
                  CmpNf2CodSt2.Value := quSql.FieldbyName('CodSt2').AsString;

              end
              else
                CmpNf2IcmNf2.Value := 0;

              if qticms = 1 then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select PerIcm From GerIcm' +
                    ' Where SigUfe = :SigUfe';

                  with Params do
                  begin
                    Params[0].AsString := CmpNfsUfeNfs.Value;
                  end;

                  Open;

                  CmpNf2IcmNf2.Value := quSql.FieldbyName('PerIcm').AsFloat;

                end;
              end;

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select * From EstIpi' +
                  ' Where CodIpi = ' + QuotedStr(CmpNf2RegIpi.Value) +
                  '   and TipIpi = ' + QuotedStr(CmpNf2TipIpi.Value);
                Open;

              end;

              if Trim(quSql.FieldbyName('CodIpi').AsString) <> '' then
                CmpNf2IpiNf2.Value := quSql.FieldbyName('PerIpi').AsFloat
              else
                CmpNf2IpiNf2.Value := 0;

              with quSql, SQL do
              begin

                Close;
                Text := ' Select * From EstIte ' +
                  ' Where CodEmp = ' + QuotedStr(IntToStr(CmpNf2CodEmp.Value)) +
                  '   and CodClp = ' + QuotedStr(CmpNf2CodClp.Value) +
                  '   and CodGru = ' + QuotedStr(CmpNf2CodGru.Value) +
                  '   and CodSub = ' + QuotedStr(CmpNf2CodSub.Value) +
                  '   and CodPro = ' + QuotedStr(CmpNf2CodPro.Value);
                Open;
                First;

              end;

              if quSql.FieldbyName('CodPro').AsString = CmpNf2CodPro.Value then
              begin

                CmpNf2VluNf2.Value := quSql.FieldbyName('VpfIte').AsFloat;

                AntVluNf2 := CmpNf2VluNf2.Value;

                CmpNf2TotNf2.Value := fRound(CmpNf2VluNf2.Value * CmpNf2QtpNf2.Value, 2);

                with quSql, SQL do
                begin

                  Close;
                  Text := ' Select Count(*) as Reg from EstQte ' +
                    ' Where CodEmp = ' + QuotedStr(IntToStr(CmpNf2CodEmp.Value)) +
                    '   and CodClp = ' + QuotedStr(CmpNf2CodClp.Value) +
                    '   and CodGru = ' + QuotedStr(CmpNf2CodGru.Value) +
                    '   and CodSub = ' + QuotedStr(CmpNf2CodSub.Value) +
                    '   and CodPro = ' + QuotedStr(CmpNf2CodPro.Value) +
                    '   and CodTam = ' + QuotedStr(CmpNf2CodTam.Value) +
                    '   and CodCor = ' + QuotedStr(CmpNf2CodCor.Value);
                  Open;

                  if FieldbyName('Reg').AsInteger = 0 then
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

            if Trim(CmpNf2CodPro.Value) = '' then
              fmsgErro('Item Informado não Encontrado.', EdCodPro);

          end;
        end;

      end
      else
        fmsgErro('Item Informado não Encontrado.', EdCodPro);
    end;
  end;
end;

procedure TfmManRo1.EdQtpNf2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque'

end;

procedure TfmManRo1.EdQtpNf2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque'

end;

procedure TfmManRo1.EdQtpNf2Exit(Sender: TObject);
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

      if CmpNf2.State <> dsBrowse then
      begin

        if CmpNf2QtpNf2.Value > 0 then
          CmpNf2TotIte.Value := fRound(CmpNf2VluNf2.Value * CmpNf2QtpNf2.Value, 2)
        else
        begin

          if (CmpNf2CodClp.Value <> '8') and (CmpNf2CodClp.Value <> '9') then
            fmsgErro('Campo de Preenchimento Obrigatorio.', EdQtpNf2);

        end;
      end;
    end;

  end
  else
  begin

    if (Tecla = 'UP') and (not EdCodClp.Enabled) then
      EdQtpNf2.SetFocus;

  end;
end;

procedure TfmManRo1.EdVluNf2Exit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdQtpNf2.Focused) and (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if CmpNf2.State <> dsBrowse then
      begin

        if CmpNf2VluNf2.Value > 0 then
        begin

          if CmpNf2VluNf2.Value <> AntVluNf2 then
          begin

            AntVluNf2 := CmpNf2VluNf2.Value;

            CmpNf2TotIte.Value := fRound(CmpNf2VluNf2.Value * CmpNf2QtpNf2.Value, 2);

          end;

        end
        else
        begin

          if (CmpNf2CodClp.Value <> '8') and (CmpNf2CodClp.Value <> '9') then
            fmsgErro('Campo de Preenchimento Obrigatorio.', EdVluNf2);

        end;
      end;
    end;
  end;
end;

procedure TfmManRo1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  sText: string;
begin
  inherited;
  if (EdCodClp.Focused) or (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then
  begin

    if key = 114 then
    begin {F3 - Descrição}

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpNf2CodClp.Value;
        fmAuxIni.CodGru := CmpNf2CodGru.Value;
        fmAuxIni.CodSub := CmpNf2CodSub.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            CmpNf2CodClp.Value := fmAuxIni.CodClp;
            CmpNf2CodGru.Value := fmAuxIni.CodGru;
            CmpNf2CodSub.Value := fmAuxIni.CodSub;
            CmpNf2CodPro.Value := fmAuxIni.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      if Trim(CmpNf2CodPro.Value) <> '' then
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

        fmAuxIni.CodClp := CmpNf2CodClp.Value;
        fmAuxIni.CodGru := CmpNf2CodGru.Value;
        fmAuxIni.CodSub := CmpNf2CodSub.Value;

        fmAuxIni.TipoPesq := 'R';

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            CmpNf2CodClp.Value := fmAuxIni.CodClp;
            CmpNf2CodGru.Value := fmAuxIni.CodGru;
            CmpNf2CodSub.Value := fmAuxIni.CodSub;
            CmpNf2CodPro.Value := fmAuxIni.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      if Trim(CmpNf2CodPro.Value) <> '' then
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

        fmAuxPsq.CodClp := CmpNf2CodClp.Value;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            CmpNf2CodClp.Value := fmAuxPsq.CodClp;
            CmpNf2CodGru.Value := fmAuxPsq.CodGru;
            CmpNf2CodSub.Value := fmAuxPsq.CodSub;
            CmpNf2CodPro.Value := fmAuxPsq.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if Trim(CmpNf2CodPro.Value) <> '' then
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

        fmAuxPsq.CodClp := CmpNf2CodClp.Value;

        fmAuxPsq.TipoPesq := 'R';

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            CmpNf2CodClp.Value := fmAuxPsq.CodClp;
            CmpNf2CodGru.Value := fmAuxPsq.CodGru;
            CmpNf2CodSub.Value := fmAuxPsq.CodSub;
            CmpNf2CodPro.Value := fmAuxPsq.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if Trim(CmpNf2CodPro.Value) <> '' then
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

      fmPsqEst.sCodClp := CmpNf2CodClp.Value;

      if (Trim(CmpNf2CodGru.Value) <> '') or
        (Trim(CmpNf2CodSub.Value) <> '') or
        (Trim(CmpNf2CodPro.Value) <> '') then
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
            ' Where EstPro.CodClp = ' + QuotedStr('1') +
            '   and EstPro.FlbPro = ' + QuotedStr(' ');

          if Trim(CmpNf2CodGru.Value) <> '' then
            Text := Text + ' and EstPro.CodGru = ' + QuotedStr(CmpNf2CodGru.Value);
          if Trim(CmpNf2CodSub.Value) <> '' then
            Text := Text + ' and EstPro.CodSub = ' + QuotedStr(CmpNf2CodSub.Value);
          if Trim(CmpNf2CodPro.Value) <> '' then
            Text := Text + ' and EstPro.CodPro = ' + QuotedStr(CmpNf2CodPro.Value);

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

            CmpNf2CodClp.Value := fmPsqEst.CodClp;
            CmpNf2CodGru.Value := fmPsqEst.CodGru;
            CmpNf2CodSub.Value := fmPsqEst.CodSub;
            CmpNf2CodPro.Value := fmPsqEst.CodPro;

          end;
        end;
      end;

    finally

      FreeAndNil(fmPsqEst);

    end;

    if Trim(CmpNf2CodPro.Value) <> '' then
    begin

      if EdCodPro.Enabled then
        EdCodPro.SetFocus;

    end
    else
    begin

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

    if EdQtpNf2.Enabled then
    begin

      if CmpNf2.State <> dsBrowse then
        CmpNf2.CancelUpdates;

      EdCodClp.Enabled := False;
      EdCodGru.Enabled := False;
      EdCodSub.Enabled := False;
      EdCodPro.Enabled := False;
      EdQtpNf2.Enabled := False;
      EdVluNf2.Enabled := False;
      EdIpiNf2.Enabled := False;
      EdIcmNf2.Enabled := False;

      EdCodGru.Font.Style := [fsBold];
      EdCodSub.Font.Style := [fsBold];
      EdCodPro.Font.Style := [fsBold];
      EdQtpNf2.Font.Style := [fsBold];
      EdVluNf2.Font.Style := [fsBold];
      EdIpiNf2.Font.Style := [fsBold];
      EdIcmNf2.Font.Style := [fsBold];

      grNf2.SetFocus;

    end
    else
    begin

      if EdDesNf2.Enabled then
      begin

        if CmpNf2.State <> dsBrowse then
          CmpNf2.CancelUpdates;

        EdDesNf2.Enabled := False;
        EdObsNf2.Enabled := False;

        EdDesNf2.Font.Style := [fsBold];
        EdObsNf2.Font.Style := [fsBold];

        grNf2.SetFocus;

      end
      else
      begin

        if EdBasIc1.Enabled then
        begin

          if CmpNfs.State <> dsBrowse then
            CmpNfs.CancelUpdates;

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

          grNf2.SetFocus;

        end
        else
        begin

          if grNf2.Focused then
            Close
          else
          begin

            if CmpNfs.State <> dsBrowse then
              Close;

          end;
        end;
      end;
    end;
  end;

  if key = 123 then
  begin {F12-Finalizar Pedido}

    if CmpNfsQtiNfs.Value > 0 then
    begin

      if grNf2.Focused then
      begin

        if (CmpNfsCodTip.Value = 1) or (CmpNfsCodTip.Value = 2) then
        begin

          if fMsg('Confirmar Documento Fiscal ?', 'S') then
          begin

            Finalizar := 'S';

            CmpNfs.Edit;

            CmpNfsSitNfs.Value := 'Aguardando Emissao de Nota Fiscal';

            with CmpNfs do
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

                if CmpNfs.State <> dsBrowse then
                  CmpNfs.CancelUpdates;

                grNf2.SetFocus;

                raise;

              end;

              CommitUpdates; {sucesso!, limpa o cache...}

            end;

          end
          else
            grNf2.SetFocus;

        end
        else
        begin

          sText := '               Confirma Romaneio ?                ' + #10 +
            '                                                  ' + #10 +
            ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :' + #10 +
            '                                                  ';

          if CmpNfsAtuEst.Value = 'Sim' then
            sText := sText + #10 + ' . Baixas nos Estoques dos Itens Lançados;        ';

          sText := sText + #10 + '                                                  ';

          if fMsg(sText, 'O') then
          begin

            CmpNfs.Edit;

            CmpNfsSitNfs.Value := 'Concluido';

            with CmpNfs do
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

                if CmpNfs.State <> dsBrowse then
                  CmpNfs.CancelUpdates;

                grNf2.SetFocus;

                raise;

              end;

              CommitUpdates; {sucesso!, limpa o cache...}

            end;

            CmpNfs.Close;
            CmpNfs.Open;

            Finalizar := 'S';

            if fMsg('Confirma Impressão do Romaneio ?', 'O') then
            begin

              try

                p1Report.DeviceType := 'Screen';
                fmPreview := TfmPreview.Create(fmManRo1);
                fmPreview.ppViewer.Report := p1Report;
                p1Report.PrintToDevices;
                fmPreview.ShowModal;

                if Assigned(p1Report.AfterPrint) then
                  p1Report.AfterPrint(Sender);

              finally

                FreeAndNil(fmPreview);

              end;
            end;

          end
          else
            grNf2.SetFocus;

        end;

        if Finalizar = 'S' then
        begin

          Finalizar := 'N';

          EdCodEmp.Clear;
          EdDteFat.Clear;
          EdCodFor.Clear;
          EdCodPfa.Clear;
          EdFrtNfs.Clear;
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

          pnSeqNfs.Caption := '0';

          pnApeEmp.Caption := '';
          pnNomFor.Caption := '';
          pnUfeNfs.Caption := '';
          pnNomPfa.Caption := '';

          CmpNfs.Close;
          CmpNfs.Params[0].AsInteger := 0;
          CmpNfs.Params[2].AsInteger := 0;
          CmpNfs.Open;

          CmpNfs.Insert;

          EdCodTip.SetFocus

        end
        else
          grNf2.SetFocus;

      end;
    end;
  end;
end;

procedure TfmManRo1.grNf2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroNf2: integer;
begin
  inherited;
  if key = 116 then
  begin

    if CmpNf2CodEmp.Value > 0 then
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

      EdBasIc1.Value := CmpNfsBasIc1.Value;
      EdTotIc1.Value := CmpNfsTotIc1.Value;
      EdBasSu1.Value := CmpNfsBasSu1.Value;
      EdTotSu1.Value := CmpNfsTotSu1.Value;
      EdTotIt1.Value := CmpNfsTotIt1.Value;
      EdTotFrt.Value := CmpNfsTotFrt.Value;
      EdTotSeg.Value := CmpNfsTotSeg.Value;
      EdTotDes.Value := CmpNfsTotDes.Value;
      EdTotIp1.Value := CmpNfsTotIp1.Value;
      EdTotGe1.Value := CmpNfsTotGe1.Value;

      CmpNfs.Edit;

      EdBasIc1.SetFocus;

    end;
  end;

  if key = 13 then
  begin {Tecla - ENTER}

    if CmpNf2CodEmp.Value > 0 then
    begin

      CmpNf2.Edit;

      pnDesNf2.Visible := False;
      pnObsNf2.Visible := False;

      if CmpNf2CodClp.Value <> '8' then
      begin

        EdQtpNf2.Enabled := True;
        EdVluNf2.Enabled := True;
        EdIpiNf2.Enabled := True;
        EdIcmNf2.Enabled := True;

        EdQtpNf2.Font.Style := [];
        EdVluNf2.Font.Style := [];
        EdIpiNf2.Font.Style := [];
        EdIcmNf2.Font.Style := [];

        if CmpNf2CodClp.Value <> '9' then
        begin

          EdDesNf2.Enabled := True;
          EdObsNf2.Enabled := True;

          EdDesNf2.Font.Style := [];
          EdObsNf2.Font.Style := [];

        end;

        EdQtpNf2.SetFocus;

      end
      else
      begin

        EdDesNf2.Enabled := True;
        EdObsNf2.Enabled := True;

        EdDesNf2.Font.Style := [];
        EdObsNf2.Font.Style := [];

        EdDesNf2.SetFocus;

      end;
    end;
  end;

  if key = 40 then
  begin {Tecla - Seta para Baixo}

    if CmpNf2NroNf2.Value = CmpNfsQtiNfs.Value then
      CmpNf2.Append;

  end;

  if key = 46 then
  begin {Tecla - DEL}

    if CmpNf2CodEmp.Value > 0 then
    begin

      NroNf2 := CmpNf2NroNf2.Value;

      CmpNf2.Delete;

      with CmpNf2 do
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

          if CmpNf2.State <> dsBrowse then
            CmpNf2.CancelUpdates;

          grNf2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      CmpNf2.Close;
      CmpNf2.Open;

      CmpNfs.Close;
      CmpNfs.Open;

      if NroNf2 < CmpNfsQtiNfs.Value then
        CmpNf2.Locate('CodEmp;DteNfs;SeqNfs;NroNf2', VarArrayOf([CmpNf2CodEmp.Value, CmpNf2DteNfs.Value, CmpNf2SeqNfs.Value, NroNf2]), [LoPartialKey])
      else
      begin

        if CmpNfsQtiNfs.Value = 0 then
          CmpNf2.Append
        else
          CmpNf2.Last;

      end;
    end;
  end;
end;

procedure TfmManRo1.FormShow(Sender: TObject);
begin
  inherited;
  if fmManRom.CodEmp > 0 then
  begin

    sEntr := 'S';

    CmpNfs.Close;
    CmpNfs.Params[0].AsInteger := fmManRom.CodEmp;
    CmpNfs.Params[1].AsDateTime := fmManRom.DteNfs;
    CmpNfs.Params[2].AsInteger := fmManRom.SeqNfs;
    CmpNfs.Open;

    CmpNf2.Close;
    CmpNf2.Params[0].AsInteger := CmpNfsCodEmp.Value;
    CmpNf2.Params[1].AsDateTime := CmpNfsDteNfs.Value;
    CmpNf2.Params[2].AsInteger := CmpNfsSeqNfs.Value;
    CmpNf2.Open;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

      if GFlgAce = 'Sim' then
        Text := Text + ' and CodFil > ' + QuotedStr('0');

      with Params do
      begin

        Params[0].AsInteger := CmpNfsCodEmp.Value;

      end;

      Open;

      pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select DscPfa From EstPfa Where EstPfa.TipPfa = ' + QuotedStr(CmpNfsTipPfa.Value) + ' and EstPfa.CodPfa = ' + QuotedStr(CmpNfsCodPfa.Value);
      Open;

      pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomFor From FinFor Where FinFor.CodFor = ' + QuotedStr(IntToStr(CmpNfsCodFor.Value));
      Open;

      pnNomFor.Caption := FieldbyName('NomFor').AsString;

    end;

    pnUfeNfs.Caption := CmpNfsUfeNfs.Value;

    if (Trim(CmpNfsSitNfs.Value) <> 'Nao Concluido') and
      (Trim(CmpNfsSitNfs.Value) <> 'Processo de Alteracao') then
      sEnc := 'S'
    else
    begin

      CmpNfs.Edit;

      bPsqEmp.Enabled := False;
      bPsqFor.Enabled := False;
      bPsqPfa.Enabled := False;

      EdCodTip.Enabled := True;
      EdDteFat.Enabled := True;
      EdFrtNfs.Enabled := True;

      EdCodTip.Font.Style := [];
      EdDteFat.Font.Style := [];
      EdFrtNfs.Font.Style := [];

      EdCodTip.SetFocus;

    end;

  end
  else
  begin

    sEntr := 'N';

    LbText.Caption := '';

    CmpNfs.Insert;

    EdCodTip.SetFocus;

  end;
end;

procedure TfmManRo1.CmpNf2NewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpNf2.DisableControls;

  CmpNf2IcmNf2.Value := 0;
  CmpNf2IpiNf2.Value := 0;
  CmpNf2LiqNf2.Value := 0;
  CmpNf2BrtNf2.Value := 0;
  CmpNf2QtpNf2.Value := 0;
  CmpNf2VluNf2.Value := 0;
  CmpNf2BasIpi.Value := 0;
  CmpNf2TotIpi.Value := 0;
  CmpNf2BasIcm.Value := 0;
  CmpNf2TotIcm.Value := 0;
  CmpNf2TotIte.Value := 0;
  CmpNf2TotNf2.Value := 0;
  CmpNf2TotBrt.Value := 0;
  CmpNf2TotLiq.Value := 0;
  CmpNf2DesNf2.Value := '';
  CmpNf2ObsNf2.Value := '';
  CmpNf2FlgAtu.Value := '';
  CmpNf2CodClp.Value := '1';
  CmpNf2CodTam.Value := 'UN';
  CmpNf2CodCor.Value := 'UN';
  CmpNf2CodEmp.Value := CmpNfsCodEmp.Value;
  CmpNf2DteNfs.Value := CmpNfsDteNfs.Value;
  CmpNf2CodEit.Value := CmpNfsCodEmp.Value;
  CmpNf2SeqNfs.Value := CmpNfsSeqNfs.Value;
  CmpNf2SeqNf2.Value := CmpNfsSeqIte.Value + 1;
  CmpNf2NroNf2.Value := CmpNfsQtiNfs.Value + 1;

  CmpNf2.EnableControls;

  AntVluNf2 := CmpNf2VluNf2.Value;

  EdDesNf2.Enabled := False;
  EdObsNf2.Enabled := False;

  pnDesNf2.Visible := True;
  pnObsNf2.Visible := True;

  EdCodClp.Enabled := True;
  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdQtpNf2.Enabled := True;
  EdVluNf2.Enabled := True;
  EdIpiNf2.Enabled := True;
  EdIcmNf2.Enabled := True;

  EdCodClp.Font.Style := [];
  EdCodGru.Font.Style := [];
  EdCodSub.Font.Style := [];
  EdCodPro.Font.Style := [];
  EdQtpNf2.Font.Style := [];
  EdVluNf2.Font.Style := [];
  EdIpiNf2.Font.Style := [];
  EdIcmNf2.Font.Style := [];

  EdCodClp.SetFocus;

end;

procedure TfmManRo1.Panel3Exit(Sender: TObject);
var
  NroNf2: integer;
begin
  inherited;
  if CmpNf2.State <> dsBrowse then
  begin

    if (CmpNf2CodClp.Value <> '8') and (CmpNf2CodClp.Value <> '9') then
    begin

      if CmpNf2VluNf2.Value = 0 then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdVluNf2);
      if CmpNf2QtpNf2.Value = 0 then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdQtpNf2);

    end;

    if CmpNf2.State = dsInsert then
    begin

      with CmpNf2 do
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

          if CmpNf2.State = dsBrowse then
            CmpNf2.Edit;

          EdCodClp.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      CmpNf2.Close;
      CmpNf2.Open;

      CmpNfs.Close;
      CmpNfs.Open;

      CmpNf2.Append;

      EdCodClp.SetFocus;

    end
    else
    begin

      NroNf2 := CmpNf2NroNf2.Value;

      with CmpNf2 do
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

          if CmpNf2.State = dsBrowse then
            CmpNf2.Edit;

          EdCodClp.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      CmpNf2.Close;
      CmpNf2.Open;

      CmpNf2.Locate('CodEmp;DteNfs;SeqNfs;NroNf2', VarArrayOf([CmpNf2CodEmp.Value, CmpNf2DteNfs.Value, CmpNf2SeqNfs.Value, NroNf2]), [LoPartialKey]);

      CmpNfs.Close;
      CmpNfs.Open;

      if CmpNf2NroNf2.Value = CmpNfsQtiNfs.Value then
        CmpNf2.Append
      else
      begin

        CmpNf2.Next;

        EdCodClp.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdQtpNf2.Enabled := False;
        EdVluNf2.Enabled := False;
        EdIpiNf2.Enabled := False;
        EdIcmNf2.Enabled := False;
        EdDesNf2.Enabled := False;
        EdObsNf2.Enabled := False;

        EdCodClp.Font.Style := [fsBold];
        EdCodGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];
        EdQtpNf2.Font.Style := [fsBold];
        EdVluNf2.Font.Style := [fsBold];
        EdIpiNf2.Font.Style := [fsBold];
        EdIcmNf2.Font.Style := [fsBold];
        EdDesNf2.Font.Style := [fsBold];
        EdObsNf2.Font.Style := [fsBold];

        pnDesNf2.Visible := True;
        pnObsNf2.Visible := True;

        grNf2.SetFocus;

      end;
    end;

  end
  else
  begin

    EdCodClp.Enabled := False;
    EdCodGru.Enabled := False;
    EdCodSub.Enabled := False;
    EdCodPro.Enabled := False;
    EdQtpNf2.Enabled := False;
    EdVluNf2.Enabled := False;
    EdIpiNf2.Enabled := False;
    EdIcmNf2.Enabled := False;
    EdDesNf2.Enabled := False;
    EdObsNf2.Enabled := False;

    EdCodClp.Font.Style := [fsBold];
    EdCodGru.Font.Style := [fsBold];
    EdCodSub.Font.Style := [fsBold];
    EdCodPro.Font.Style := [fsBold];
    EdQtpNf2.Font.Style := [fsBold];
    EdVluNf2.Font.Style := [fsBold];
    EdIpiNf2.Font.Style := [fsBold];
    EdIcmNf2.Font.Style := [fsBold];
    EdDesNf2.Font.Style := [fsBold];
    EdObsNf2.Font.Style := [fsBold];

    pnDesNf2.Visible := True;
    pnObsNf2.Visible := True;

    grNf2.SetFocus;

  end;
end;

procedure TfmManRo1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then
  begin

    if fMsg('Deseja Realmente Abandonar a Nota ?', 'O') then
    begin

      if CmpNf2.State <> dsBrowse then
        CmpNf2.CancelUpdates;

      if CmpNfs.State <> dsBrowse then
        CmpNfs.CancelUpdates;

      fmManRom.CmpNfs.Close;
      fmManRom.CmpNfs.Open;

      fmManRom.CmpNf2.Close;
      fmManRom.CmpNf2.Open;

      Action := CaFree;

    end
    else
    begin

      Abort;

      if CmpNfsSeqNfs.Value = Null then
        CmpNfs.Insert;

    end;

  end
  else
  begin

    fmManRom.CmpNfs.Close;
    fmManRom.CmpNfs.Open;

    fmManRom.CmpNf2.Close;
    fmManRom.CmpNf2.Open;

    Action := CaFree;

  end;
end;

procedure TfmManRo1.grNf2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'Enter-Alterar Dados do Item Item DEL-Excluir Item F4-Estoque F5-Alterar Dados da Nota';

end;

procedure TfmManRo1.grNf2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'Enter-Alterar Dados do Item Item DEL-Excluir Item F4-Estoque F5-Alterar Dados da Nota';

end;

procedure TfmManRo1.Panel4Exit(Sender: TObject);
begin
  inherited;
  if CmpNfs.State <> dsBrowse then
  begin

    with CmpNfs do
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

        if CmpNfs.State = dsBrowse then
          CmpNfs.Edit;

        EdBasIc1.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    CmpNfs.Close;
    CmpNfs.Open;

    pnBasIc1.Caption := FormatFloat('###,###,##0.00', CmpNfsBasIc1.Value);
    pnTotIc1.Caption := FormatFloat('###,###,##0.00', CmpNfsTotIc1.Value);
    pnBasSu1.Caption := FormatFloat('###,###,##0.00', CmpNfsBasSu1.Value);
    pnTotSu1.Caption := FormatFloat('###,###,##0.00', CmpNfsTotSu1.Value);
    pnTotIt1.Caption := FormatFloat('###,###,##0.00', CmpNfsTotIt1.Value);
    pnTotFrt.Caption := FormatFloat('###,###,##0.00', CmpNfsTotFrt.Value);
    pnTotSeg.Caption := FormatFloat('###,###,##0.00', CmpNfsTotSeg.Value);
    pnTotDes.Caption := FormatFloat('###,###,##0.00', CmpNfsTotDes.Value);
    pnTotIp1.Caption := FormatFloat('###,###,##0.00', CmpNfsTotIp1.Value);
    pnTotGe1.Caption := FormatFloat('###,###,##0.00', CmpNfsTotGe1.Value);

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

    grNf2.SetFocus;

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

    grNf2.SetFocus;

  end;
end;

procedure TfmManRo1.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      CmpNfsCodEmp.Value := fmPsqEmp.CodEmp;

      EdCodEmp.Text := IntToStr(CmpNfsCodEmp.Value);

      pnApeEmp.Caption := fmPsqEmp.ApeEmp;

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;

  if CmpNfsCodEmp.Value > 0 then
    EdDteFat.SetFocus;

end;

procedure TfmManRo1.bpsqForClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'F';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodFor > 0 then
    begin

      CmpNfsCodFor.Value := fmAuxIni.CodFor;
      CmpNfsUfeNfs.Value := fmAuxIni.SigUfe;

      EdCodFor.Text := IntToStr(CmpNfsCodFor.Value);

      pnUfeNfs.Caption := fmAuxIni.SigUfe;
      pnNomFor.Caption := fmAuxIni.NomFor;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if CmpNfsCodFor.Value > 0 then
    EdFrtNfs.SetFocus;

end;

procedure TfmManRo1.bpsqPfaClick(Sender: TObject);
var
  LocPfa: string;
begin
  inherited;

  if CmpNfsUfeNfs.Value = 'EX' then
    LocPfa := 'Importacao ou Exportacao'
  else
  begin

    if CmpNfsUfeNfs.Value <> GUfeEmp then
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
        '   and EstPfa.ModPfa <> ' + QuotedStr('Vendas') +
        ' Order by EstPfa.DscPfa';

      with Params do
      begin

        Params[0].AsString := CmpNfsTipPfa.Value;
        Params[1].AsString := LocPfa;

      end;

      Open;

    end;

    fmPsqPfa.ShowModal;

    if Trim(fmPsqPfa.CodPfa) <> '' then
    begin

      CmpNfsCodPfa.Value := fmPsqPfa.CodPfa;

      pnNomPfa.Caption := fmPsqPfa.NomPfa;

      EdCodPfa.Text := CmpNfsCodPfa.Value;

    end;

  finally

    FreeAndNil(fmPsqPfa);

  end;

  EdCodPfa.SetFocus;

end;

procedure TfmManRo1.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then
    EdCodTip.SetFocus;
end;

procedure TfmManRo1.DsNf2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if CmpNf2.State = dsBrowse then
    AntVluNf2 := CmpNf2VluNf2.Value;

  pnDesNf2.Caption := CmpNf2DesNf2.Value;
  pnObsNf2.Caption := CmpNf2ObsNf2.Value;

  pnSeqNfs.Caption := IntToStr(CmpNfsSeqNfs.Value);

  pnBasIc1.Caption := FormatFloat('###,###,##0.00', CmpNfsBasIc1.Value);
  pnTotIc1.Caption := FormatFloat('###,###,##0.00', CmpNfsTotIc1.Value);
  pnBasSu1.Caption := FormatFloat('###,###,##0.00', CmpNfsBasSu1.Value);
  pnTotSu1.Caption := FormatFloat('###,###,##0.00', CmpNfsTotSu1.Value);
  pnTotIt1.Caption := FormatFloat('###,###,##0.00', CmpNfsTotIt1.Value);
  pnTotFrt.Caption := FormatFloat('###,###,##0.00', CmpNfsTotFrt.Value);
  pnTotSeg.Caption := FormatFloat('###,###,##0.00', CmpNfsTotSeg.Value);
  pnTotDes.Caption := FormatFloat('###,###,##0.00', CmpNfsTotDes.Value);
  pnTotIp1.Caption := FormatFloat('###,###,##0.00', CmpNfsTotIp1.Value);
  pnTotGe1.Caption := FormatFloat('###,###,##0.00', CmpNfsTotGe1.Value);

  if CmpNf2.State = dsInsert then
    pnNroNf2.Caption := FNumZeros(IntToStr(CmpNf2NroNf2.Value), 4) + '/' + FNumZeros(IntToStr(CmpNfsQtiNfs.Value + 1), 4)
  else
    pnNroNf2.Caption := FNumZeros(IntToStr(CmpNf2NroNf2.Value), 4) + '/' + FNumZeros(IntToStr(CmpNfsQtiNfs.Value), 4);

end;

procedure TfmManRo1.ppHeaderBand3BeforePrint(Sender: TObject);
begin
  inherited;

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

  ppTitulo.Caption := 'Romaneio de Saida No. ' + fNumZeros(IntToStr(CmpNf2SeqNfs.Value), 7) + ' - ' + FormatDateTime('dd/mm/yyyy', CmpNf2DteNfs.Value);

  p1CodFor.Caption := IntToStr(CmpNfsCodFor.Value);

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select FinFor.NomFor,' +
      '        FinFor.TenFor,' +
      '        FinFor.EndFor,' +
      '        FinFor.NumFor,' +
      '        FinFor.RefFor,' +
      '        FinFor.BaiFor,' +
      '        FinFor.CidFor,' +
      '        FinFor.SigUfe,' +
      '        FinFor.PrtFor,' +
      '        FinFor.FonFor,' +
      '        FinFor.PrfFor,' +
      '        FinFor.FaxFor ' +
      ' From FinFor' +
      ' Where FinFor.CodFor = ' + QuotedStr(IntToStr(CmpNfsCodFor.Value));
    Open;

    p1NomFor.Caption := Trim(FieldbyName('NomFor').AsString);

    if Trim(FieldbyName('TenFor').AsString) <> '' then
      p1EndFor.Caption := Trim(FieldbyName('TenFor').AsString) + ' ' + Trim(FieldbyName('EndFor').AsString)
    else
      p1EndFor.Caption := Trim(FieldbyName('EndFor').AsString);

    if Trim(FieldbyName('NumFor').AsString) <> '' then
      p1EndFor.Caption := p1EndFor.Caption + ', ' + Trim(FieldbyName('NumFor').AsString);

    if Trim(FieldbyName('RefFor').AsString) <> '' then
      p1EndFor.Caption := p1EndFor.Caption + ' ' + Trim(FieldbyName('RefFor').AsString);

    p1BaiFor.Caption := Trim(FieldbyName('BaiFor').AsString);
    p1CidFor.Caption := Trim(FieldbyName('CidFor').AsString);

    p1SigUfe.Caption := FieldbyName('SigUfe').AsString;

    if Trim(FieldbyName('PrtFor').AsString) <> '' then
      p1FonFor.Caption := '(' + Trim(FieldbyName('PrtFor').AsString) + ') ' + Trim(FieldbyName('FonFor').AsString)
    else
      p1FonFor.Caption := Trim(FieldbyName('FonFor').AsString);

    if Trim(FieldbyName('PrfFor').AsString) <> '' then
      p1FaxFor.Caption := '(' + Trim(FieldbyName('PrfFor').AsString) + ') ' + Trim(FieldbyName('FaxFor').AsString)
    else
      p1FaxFor.Caption := Trim(FieldbyName('FaxFor').AsString);

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select GerUsu.LogUsu' +
      ' From GerUsu' +
      ' Where GerUsu.CodUsu = ' + QuotedStr(IntToStr(CmpNfsCodUsu.Value));
    Open;

    p1NomUsu.Caption := Trim(FieldbyName('LogUsu').AsString);

  end;
end;

procedure TfmManRo1.dbReportBeforePrint(Sender: TObject);
begin
  inherited;

  p1Memo.Lines.Clear;
  p1Memo.Lines.Add(CmpNf2DesNf2.Value);

  p1Memo.Lines.Add(CmpNf2CodClp.Value + '-' + CmpNf2CodGru.Value + '.' + CmpNf2CodSub.Value + '.' + CmpNf2CodPro.Value);

  if Trim(CmpNf2ObsNf2.Value) <> '' then
    p1Memo.Lines.Add(CmpNf2ObsNf2.Value);

end;

procedure TfmManRo1.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;
  p1TotIte.Caption := FormatFloat('###,###,##0.00', CmpNfsTotIte.Value);
  p1TotGer.Caption := FormatFloat('###,###,##0.00', CmpNfsTotGer.Value);
end;

end.
