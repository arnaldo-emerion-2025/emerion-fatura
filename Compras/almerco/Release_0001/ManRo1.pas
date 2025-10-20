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
    grPe21: TdxDBGraphicEdit;
    grLabel1: TdxDBGraphicEdit;
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
    pnId_CmpNfs: TPanel;
    EdId_CmpNfs: TdxDBColorEdit;
    Label1: TLabel;
    EdCodEmp: TdxDBColorEdit;
    pnApeEmp: TPanel;
    EdApeEmp: TdxDBColorEdit;
    Label2: TLabel;
    EdDteFat: TdxDBColorDateEdit;
    Label4: TLabel;
    Label16: TLabel;
    pnUfeNfs: TPanel;
    EdUfeNfs: TdxDBColorEdit;
    Label12: TLabel;
    EdFrtNfs: TdxDBColorPickEdit;
    Label5: TLabel;
    EdCodPfa: TdxDBColorEdit;
    pnNomPfa: TPanel;
    EdNomPfa: TdxDBColorEdit;
    EdCodFor: TdxDBColorEdit;
    bpsqFor: TSpeedButton;
    EdNomFor: TdxDBColorEdit;
    pnNomFor: TPanel;
    bpsqEmp: TSpeedButton;
    bpsqPfa: TSpeedButton;
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
    CmpNf2QTPNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2TOTITE: TFloatField;
    Label52: TLabel;
    EdCodTip: TdxDBColorCurrencyEdit;
    quSql: TwwQuery;
    CmpNf2ID_CMPNF2: TIntegerField;
    CmpNf2ID_CMPNFS: TIntegerField;
    CmpNf2CODEIT: TIntegerField;
    CmpNf2CODTAM: TStringField;
    CmpNf2CODCOR: TStringField;
    CmpNf2DESNF2: TStringField;
    CmpNf2OBSNF2: TStringField;
    CmpNf2CODST1: TStringField;
    CmpNf2CODST2: TStringField;
    CmpNf2CODUND: TStringField;
    CmpNf2REFNF2: TStringField;
    CmpNf2QTINFE: TIntegerField;
    CmpNf2LIQNF2: TFloatField;
    CmpNf2BRTNF2: TFloatField;
    CmpNf2LINNF2: TIntegerField;
    CmpNf2QTNNF2: TFloatField;
    CmpNf2QTDNF2: TFloatField;
    CmpNf2SLDNF2: TFloatField;
    CmpNf2CLSIPI: TStringField;
    CmpNf2CODTXF: TStringField;
    CmpNf2CODCFO: TStringField;
    CmpNf2BASIPI: TFloatField;
    CmpNf2TOTIPI: TFloatField;
    CmpNf2BASICM: TFloatField;
    CmpNf2TOTICM: TFloatField;
    CmpNf2BASSUB: TFloatField;
    CmpNf2TOTSUB: TFloatField;
    CmpNf2TOTNF2: TFloatField;
    CmpNf2TOTPIS: TFloatField;
    CmpNf2TOTCOF: TFloatField;
    CmpNf2TOTLIQ: TFloatField;
    CmpNf2TOTBRT: TFloatField;
    CmpNf2CODSTR: TStringField;
    CmpNf2TIPSTR: TStringField;
    CmpNf2TRBSUB: TStringField;
    CmpNf2ICMSUB: TFloatField;
    CmpNf2MRGSUB: TFloatField;
    CmpNf2BASESB: TFloatField;
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
    CmpNf2FLGENT: TStringField;
    CmpNf2NRONFS: TIntegerField;
    CmpNf2FLGATU: TStringField;
    CmpNf2NRONF2: TIntegerField;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsCODEMP: TIntegerField;
    CmpNfsCODTIP: TIntegerField;
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
    CmpNfsQTDNOT: TIntegerField;
    CmpNfsNRONOT: TIntegerField;
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
    CmpNfsNOMENT: TStringField;
    CmpNfsCEPFOR: TStringField;
    CmpNfsTENFOR: TStringField;
    CmpNfsENDFOR: TStringField;
    CmpNfsREFFOR: TStringField;
    CmpNfsNUMFOR: TStringField;
    CmpNfsBAIFOR: TStringField;
    CmpNfsCIDFOR: TStringField;
    CmpNfsUFEFOR: TStringField;
    CmpNfsOB1NFS: TStringField;
    CmpNfsOB2NFS: TStringField;
    CmpNfsOB3NFS: TStringField;
    CmpNfsOB4NFS: TStringField;
    CmpNfsOB5NFS: TStringField;
    CmpNfsOB6NFS: TStringField;
    CmpNfsOB7NFS: TStringField;
    CmpNfsOB8NFS: TStringField;
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
    CmpNfsBSICMF: TFloatField;
    CmpNfsBAICMF: TFloatField;
    CmpNfsTOICMF: TFloatField;
    CmpNfsBSICMS: TFloatField;
    CmpNfsBAICMS: TFloatField;
    CmpNfsTOICMS: TFloatField;
    CmpNfsBSICMD: TFloatField;
    CmpNfsBAICMD: TFloatField;
    CmpNfsTOICMD: TFloatField;
    CmpNfsBSIPIF: TFloatField;
    CmpNfsBAIPIF: TFloatField;
    CmpNfsTOIPIF: TFloatField;
    CmpNfsBSIPIS: TFloatField;
    CmpNfsBAIPIS: TFloatField;
    CmpNfsTOIPIS: TFloatField;
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
    CmpNfsOBCNF1: TStringField;
    CmpNfsOBCNF2: TStringField;
    CmpNfsOBCNF3: TStringField;
    CmpNfsDTFNFS: TDateTimeField;
    CmpNfsHRFNFS: TStringField;
    CmpNfsOBFNF1: TStringField;
    CmpNfsOBFNF2: TStringField;
    CmpNfsOBFNF3: TStringField;
    CmpNfsUSFNFS: TIntegerField;
    CmpNfsATUEST: TStringField;
    CmpNfsLANEST: TStringField;
    CmpNfsINTFIN: TStringField;
    CmpNfsCONSUM: TStringField;
    CmpNfsFLGSIN: TStringField;
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
    CmpNfsTRBPIS: TStringField;
    CmpNfsTRBCOF: TStringField;
    CmpNfsFLGENV: TStringField;
    CmpNfsFLGIMP: TStringField;
    CmpNfsFLGATU: TStringField;
    CmpNfsSEQNFS: TStringField;
    CmpNfsSITNFS: TStringField;
    CmpNfsSERNOT: TStringField;
    CmpNfsSERSEL: TStringField;
    CmpNfsFLGSEG: TStringField;
    CmpNfsSEQINI: TIntegerField;
    CmpNfsSEQFIN: TIntegerField;
    CmpNf2ID_CMPNFG: TIntegerField;
    CmpNf2ID_CMPNF3: TIntegerField;
    CmpNf2NRONOT: TIntegerField;
    CmpNfsCODTRA: TIntegerField;
    CmpNfsTXFICM: TStringField;
    CmpNfsTXFIPI: TStringField;
    CmpNfsFLGNFS: TStringField;
    Label17: TLabel;
    EdId_CmpPed: TdxDBColorEdit;
    CmpNfsVALTMO: TFloatField;
    CmpNfsID_CMPPED: TIntegerField;
    CmpNf2VALNF2: TFloatField;
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
    Label3: TLabel;
    grNf2: ThGrid;
    Panel3: TPanel;
    Label44: TLabel;
    EdNroNf2: TdxDBColorCurrencyEdit;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpNf2: TdxDBColorCurrencyEdit;
    EdVluNf2: TdxDBColorCurrencyEdit;
    EdIpiNf2: TdxDBColorCurrencyEdit;
    EdIcmNf2: TdxDBColorCurrencyEdit;
    EdCodSt1: TdxDBColorEdit;
    EdCodSt2: TdxDBColorEdit;
    EdTotNf2: TdxDBColorCurrencyEdit;
    EdCodCfo: TdxDBColorEdit;
    EdClsIpi: TdxDBColorEdit;
    EdCodUnd: TdxDBColorEdit;
    EdCodClp: TdxDBColorEdit;
    pnNroNf2: TPanel;
    EdObsNf2: TdxDBColorEdit;
    pnObsNf2: TPanel;
    EdDesNf2: TdxDBColorEdit;
    pnDesNf2: TPanel;
    CmpNfsOB1OPE: TStringField;
    CmpNfsOB2OPE: TStringField;
    CmpNfsOB3OPE: TStringField;
    CmpNfsOB4OPE: TStringField;
    CmpNfsOB5OPE: TStringField;
    CmpNfsCEFFOR: TStringField;
    CmpNfsTEFFOR: TStringField;
    CmpNfsENFFOR: TStringField;
    CmpNfsRFFFOR: TStringField;
    CmpNfsNRFFOR: TStringField;
    CmpNfsBAFFOR: TStringField;
    CmpNfsCIFFOR: TStringField;
    CmpNfsID_FINUFF: TIntegerField;
    CmpNfsID_FINCIF: TIntegerField;
    CmpNfsID_TRAUFE: TIntegerField;
    CmpNfsID_TRACIE: TIntegerField;
    CmpNfsID_FINUFE: TIntegerField;
    CmpNfsID_FINCIE: TIntegerField;
    CmpNfsNFEPIS: TStringField;
    CmpNfsNFECOF: TStringField;
    CmpNfsFLGNFE: TStringField;
    CmpNfsENVNFE: TStringField;
    CmpNfsSEQNFE: TStringField;
    CmpNfsDTENFE: TDateTimeField;
    CmpNfsRECNFE: TStringField;
    CmpNfsPRONFE: TStringField;
    CmpNfsLOTNFE: TIntegerField;
    CmpNfsDTEPNF: TDateTimeField;
    CmpNfsHREPNF: TStringField;
    CmpNfsDOPNFE: TDateTimeField;
    CmpNfsHRENFE: TStringField;
    CmpNfsUSUNFE: TIntegerField;
    CmpNfsIMPNFE: TStringField;
    CmpNfsRETNFE: TStringField;
    CmpNfsDTECNE: TDateTimeField;
    CmpNfsHRECNE: TStringField;
    CmpNfsARQNFE: TBlobField;
    CmpNfsDTCNFE: TDateTimeField;
    CmpNfsHRCNFE: TStringField;
    CmpNfsPRCNFE: TStringField;
    CmpNfsUFFFOR: TStringField;
    CmpNf2FLGINT: TStringField;
    CmpNf2PRODEP: TStringField;
    CmpNf2TOTFRT: TFloatField;
    CmpNf2TOTSEG: TFloatField;
    CmpNf2TOTDES: TFloatField;
    CmpNf2BAICMF: TFloatField;
    CmpNf2TOICMF: TFloatField;
    CmpNf2BAICMS: TFloatField;
    CmpNf2TOICMS: TFloatField;
    CmpNf2BAICMD: TFloatField;
    CmpNf2TOICMD: TFloatField;
    CmpNf2BAIPIF: TFloatField;
    CmpNf2TOIPIF: TFloatField;
    CmpNf2BAIPIS: TFloatField;
    CmpNf2TOIPIS: TFloatField;
    CmpNf2BAIPID: TFloatField;
    CmpNf2TOIPID: TFloatField;
    CmpNfsCGEFOR: TStringField;
    CmpNfsINEFOR: TStringField;
    CmpNfsDSCPED: TFloatField;
    CmpNfsBASIMP: TFloatField;
    CmpNfsTOTIMP: TFloatField;
    CmpNfsBASPIS: TFloatField;
    CmpNfsBASCOF: TFloatField;
    CmpNf2IMPNF2: TFloatField;
    CmpNf2BASIMP: TFloatField;
    CmpNf2TOTIMP: TFloatField;
    CmpNf2BASPIS: TFloatField;
    CmpNf2BASCOF: TFloatField;
    EdImpNf2: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    Label46: TLabel;
    EdDscPed: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    EdValTmo: TdxDBColorCurrencyEdit;
    CmpNfsNROPDI: TStringField;
    CmpNfsDTEPDI: TDateTimeField;
    CmpNfsLOCPDI: TStringField;
    CmpNfsUFEPDI: TStringField;
    CmpNfsDTEADU: TDateTimeField;
    CmpNfsEXPPDI: TStringField;
    CmpNf2NROADI: TIntegerField;
    CmpNf2SEQADI: TIntegerField;
    CmpNf2FABADI: TStringField;
    CmpNf2DSCADI: TFloatField;
    Label9: TLabel;
    EdTipPfa: TdxDBColorPickEdit;
    CmpNfsTOTNFS: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodForExit(Sender: TObject);
    procedure EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodPfaExit(Sender: TObject);
    procedure CmpNfsNewRecord(DataSet: TDataSet);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProExit(Sender: TObject);
    procedure EdQtpNf2Exit(Sender: TObject);
    procedure EdVluNf2Exit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grNf2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure CmpNf2NewRecord(DataSet: TDataSet);
    procedure Panel3Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel4Exit(Sender: TObject);
    procedure bpsqEmpClick(Sender: TObject);
    procedure bpsqForClick(Sender: TObject);
    procedure bpsqPfaClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure DsNf2DataChange(Sender: TObject; Field: TField);
    procedure EdId_CmpPedExit(Sender: TObject);
    procedure EdCodClpEnter(Sender: TObject);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdCodSubEnter(Sender: TObject);
    procedure EdCodTipEnter(Sender: TObject);
    procedure EdCodEmpEnter(Sender: TObject);
    procedure EdCodForEnter(Sender: TObject);
    procedure grNf2Enter(Sender: TObject);
    procedure EdCodSt1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSt2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodUndKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodCfoKeyPress(Sender: TObject; var Key: Char);
    procedure grNf2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
  private
    psaida : string;
  public
    qticms : integer;
    AntVluNf2 : real;
    Id_CmpNfs : integer;
    sEnc,sEntr,Finalizar : string;
  end;

var
  fmManRo1: TfmManRo1;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, AuxPsq, PsqEst, ManRom,
     PsqEmp, PsqPfa, PsqClp, AuxIni, Fpreview, ManE06, ManRo5, PsqSt1, PsqSt2,
     PsqUnd, ManIn1, ManIn2, ManRo8;

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
  fmManRo1 := Nil;
end;

procedure TfmManRo1.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManRo1.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if Trim(CmpNfsSitNfs.Value) = 'Concluido' then fMsg('Operação não Pode ser Realizada. Operação já Concluida.','E')

     else if Trim(CmpNfsSitNfs.Value) = 'Recebido' then fMsg('Operação não Pode ser Realizada. Operação com Recebimentos já Realizados.','E')

     else if Trim(CmpNfsSitNfs.Value) = 'Recebido Parcialmente' then fMsg('Operação não Pode ser Realizada. Operação com Recebimentos já Realizados.','E')

     else if Trim(CmpNfsSitNfs.Value) = 'Saldo Nao Atendido' then fMsg('Operação não Pode ser Realizada. Operação com Saldo não Atendido.','E')

     else if Trim(CmpNfsSitNfs.Value) = 'Cancelado' then fMsg('Operação não Pode ser Realizada. Operação Cancelada.','E');

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

procedure TfmManRo1.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           CmpNfsCodEmp.Value := fmPsqEmp.CodEmp;

           EdCodEmp.Text := IntToStr(CmpNfsCodEmp.Value);

           pnApeEmp.Caption := fmPsqEmp.ApeEmp;

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     if CmpNfsCodEmp.Value > 0 then EdDteFat.SetFocus;

  end;
end;

procedure TfmManRo1.Panel1Exit(Sender: TObject);
var
  SeqNfs,sContinuar : string;
begin
  inherited;
  if CmpNfs.State <> dsBrowse then begin

     CmpNfsCodPfa.Value := Trim(CmpNfsCodPfa.Value);
     CmpNfsTipPfa.Value := Trim(CmpNfsTipPfa.Value);

     if CmpNfsDteFat.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado',EdDteFat);

     if CmpNfs.State = dsInsert then begin

        if CmpNfsCodTip.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodTip);

        if CmpNfsCodFor.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodFor);

        if Trim(CmpNfsCodPfa.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodPfa);

        if Trim(CmpNfsUfeNfs.Value) = '' then fmsgErro('Endereço do fornecedor esta incompleto.',EdCodFor);

        Randomize;
        SeqNfs := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                  copy(TimeToStr(Time),1,2)+
                  copy(TimeToStr(Time),4,2)+
                  copy(TimeToStr(Time),7,2)+
                  FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                  FNumZeros(Trim( IntToStr(Random(50000)) ),5);

        CmpNfsSeqNfs.Value := SeqNfs;

        end
     else
        SeqNfs := CmpNfsSeqNfs.Value;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstPfa.ModPfa From EstPfa Where EstPfa.CodPfa = '+ QuotedStr(CmpNfsCodPfa.Value) +' and EstPfa.TipPfa = '+ QuotedStr(CmpNfsTipPfa.Value);
          Open;

     end;

     sContinuar := 'S';

     if Trim(quSQL.FieldbyName('ModPfa').AsString) = 'Importacao direta' then begin

        try

           fmManIn1 := TfmManIn1.Create(Self);
           fmManIn1.ShowModal;

           sContinuar := fmManIn1.sContinuar;

        finally

           FreeAndNil(fmManIn1);

        end;
     end;

     if sContinuar = 'S' then begin
     
        with CmpNfs do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                if EdCodTip.Enabled then
                   EdCodTip.SetFocus
                else
                   EdDteFat.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select CmpNfs.Id_CmpNfs From CmpNfs Where CmpNfs.SeqNfs = '+ QuotedStr(SeqNfs);
             Open;

        end;

        CmpNfs.Close;
        CmpNfs.Params[0].AsInteger := quSQL.FieldbyName('Id_CmpNfs').AsInteger;
        CmpNfs.Open;

        CmpNf2.Close;
        CmpNf2.Open;

        with fmManRom.CmpNfs,SQL do begin

             Close;
             Text := fmManRom.sBase +
                     ' Where CmpNfs.Id_CmpNfs = '+ QuotedStr(IntToStr(CmpNfsId_CmpNfs.Value));
             Open;

        end;

        qticms := 0;

        with quSQL,SQL do begin

             Close;
             Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(CmpNfsCodEmp.Value));
             Open;

        end;

        if quSQL.FieldbyName('SigUfe').AsString <> CmpNfsUfeNfs.Value then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg From GerIcm Where GerIcm.SigUfe = '+ QuotedStr(CmpNfsUfeNfs.Value);
                Open;

           end;

           qticms := quSql.FieldbyName('QtdReg').AsInteger;

        end;

        bPsqEmp.Enabled := False;
        bPsqFor.Enabled := False;
        bPsqPfa.Enabled := False;

        EdId_CmpPed.Enabled := False;
     
        EdCodTip.Enabled := False;
        EdDscPed.Enabled := False;
        EdCodEmp.Enabled := False;
        EdDteFat.Enabled := False;
        EdTipPfa.Enabled := False;
        EdCodFor.Enabled := False;
        EdFrtNfs.Enabled := False;
        EdCodPfa.Enabled := False;
        EdValTmo.Enabled := False;

        EdId_CmpPed.Font.Style := [fsBold];

        EdCodTip.Font.Style := [fsBold];
        EdDscPed.Font.Style := [fsBold];
        EdCodEmp.Font.Style := [fsBold];
        EdDteFat.Font.Style := [fsBold];
        EdTipPfa.Font.Style := [fsBold];
        EdCodFor.Font.Style := [fsBold];
        EdFrtNfs.Font.Style := [fsBold];
        EdCodPfa.Font.Style := [fsBold];
        EdValTmo.Font.Style := [fsBold];

        if CmpNfsQtiNfs.Value = 0 then
           CmpNf2.Append
        else
           grNf2.SetFocus;

        end
     else
        EdCodTip.SetFocus;
        
  end;
end;

procedure TfmManRo1.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if CmpNfs.State <> dsBrowse then begin

        if CmpNfsCodEmp.Value > 0 then begin

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
                Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

                if GFlgAce = 'Sim' then begin

                   if GEmpLog > 0 then
                      Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
                   else
                      Text := Text + ' and GerEmp.CodFil > 0';

                end;

                with Params do begin

                     Params[0].AsInteger := CmpNfsCodEmp.Value;

                end;

                Open;

           end;

           if Trim( quSql.FieldbyName('ApeEmp').AsString ) <> '' then
              pnApeEmp.Caption := quSql.FieldbyName('ApeEmp').AsString
           else
              begin

              pnApeEmp.Caption := '';

              fmsgErro('Empresa Informada não Encontrada',EdCodEmp);

           end;

           end
        else
           begin

           pnApeEmp.Caption := '';

           fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodEmp);

        end;
     end;
  end;
end;

procedure TfmManRo1.EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           CmpNfsCodFor.Value := fmAuxIni.CodFor;
           CmpNfsUfeNfs.Value := fmAuxIni.SigUfe;

           EdCodFor.Text := IntToStr(CmpNfsCodFor.Value);

           pnUfeNfs.Caption := fmAuxIni.SigUfe;
           pnNomFor.Caption := fmAuxIni.NomFor;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if CmpNfsCodFor.Value > 0 then EdFrtNfs.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           CmpNfsCodFor.Value := fmAuxPsq.CodFor;
           CmpNfsUfeNfs.Value := fmAuxPsq.SigUfe;

           EdCodFor.Text := IntToStr(CmpNfsCodFor.Value);

           pnUfeNfs.Caption := fmAuxPsq.SigUfe;
           pnNomFor.Caption := fmAuxPsq.NomFor;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if CmpNfsCodFor.Value > 0 then EdFrtNfs.SetFocus;

  end;
end;

procedure TfmManRo1.EdCodForExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDteFat.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpNfs.State <> dsBrowse then begin

           if CmpNfsCodFor.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinFor.NomFor,'+
                           '        FinFor.SigUfe '+
                           ' From FinFor'+
                           ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpNfsCodFor.Value));
                   Open;

              end;

              if Trim(quSql.FieldbyName('NomFor').AsString) <> '' then begin

                 pnUfeNfs.Caption := quSQL.FieldbyName('SigUfe').AsString;
                 pnNomFor.Caption := quSQL.FieldbyName('NomFor').AsString;
                 
                 CmpNfsUfeNfs.Value := quSQL.FieldbyName('SigUfe').AsString;

                 end
              else
                 begin

                 pnUfeNfs.Caption := '';
                 pnNomFor.Caption := '';

                 fmsgErro('Fornecedor Informado não Encontrado',EdCodFor);

              end;

              end
           else
              begin

              pnUfeNfs.Caption := '';
              pnNomFor.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodFor);

           end;
        end;
     end;
  end;
end;

procedure TfmManRo1.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  LocPfa : string;
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(CmpNfsCodEmp.Value));
          Open;

     end;
     
     if CmpNfsUfeNfs.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if CmpNfsUfeNfs.Value <> quSQL.FieldbyName('SigUfe').AsString then
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
                     '        EstPfa.ModPfa '+
                     ' From EstPfa'+
                     ' Where EstPfa.TipPfa = :TipPfa'+
                     '   and EstPfa.LocPfa = :LocPfa'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString  := CmpNfsTipPfa.Value;
                  Params[1].AsString  := LocPfa;

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           CmpNfsCodPfa.Value := Trim(fmPsqPfa.CodPfa);

           pnNomPfa.Caption := fmPsqPfa.NomPfa;

           EdCodPfa.Text := CmpNfsCodPfa.Value;

        end;

     finally   

        FreeAndNil(fmPsqPfa);

     end;

     EdCodPfa.SetFocus;

  end;
end;

procedure TfmManRo1.EdCodPfaExit(Sender: TObject);
var
  saida : boolean;
  LocPfa : string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdFrtNfs.Focused) and
        (not EdCodFor.Focused) and
        (not EdDteFat.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpNfs.State <> dsBrowse then begin

           if Trim( CmpNfsCodPfa.Value ) <> '' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(CmpNfsCodEmp.Value));
                   Open;

              end;

              if CmpNfsUfeNfs.Value = 'EX' then
                 LocPfa := 'Importacao ou Exportacao'
              else
                 begin

                 if CmpNfsUfeNfs.Value <> quSQL.FieldbyName('SigUfe').AsString then
                    LocPfa := 'Outros Estados'
                 else
                    LocPfa := 'Mesmo Estado'

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstPfa.DscPfa,'+
                           '        EstPfa.ModPfa '+
                           ' From EstPfa '+
                           ' Where EstPfa.TipPfa = '+ QuotedStr(CmpNfsTipPfa.Value) +
                           '   and EstPfa.CodPfa = '+ QuotedStr(CmpNfsCodPfa.Value) +
                           '   and EstPfa.LocPfa = '+ QuotedStr(LocPfa);
                   Open;

              end;

              if Trim(quSql.FieldbyName('DscPfa').AsString) <> '' then begin

                 pnNomPfa.Caption := quSql.FieldbyName('DscPfa').AsString;

                 CmpNfsModPfa.Value := quSql.FieldbyName('ModPfa').AsString;

                 end
              else
                 begin

                 pnNomPfa.Caption := '';

                 fmsgErro('Padrão de Faturamento Informado não Encontrado.',EdCodPfa);

              end;

              end
           else
              begin

              pnNomPfa.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodPfa);

           end;
        end;
     end;
  end;
end;

procedure TfmManRo1.CmpNfsNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpNfs.DisableControls;

  CmpNfsId_CmpNfs.Value := -1;

  CmpNfsCodTip.Value := 1;
  CmpNfsValTmo.Value := 0;
  CmpNfsQtiNfs.Value := 0;
  CmpNfsQtdVol.Value := 0;
  CmpNfsAltVol.Value := 0;
  CmpNfsQtdNfs.Value := 0;
  CmpNfsTotIte.Value := 0;
  CmpNfsTotGer.Value := 0;
  CmpNfsBasIcm.Value := 0;
  CmpNfsTotIcm.Value := 0;
  CmpNfsBasIpi.Value := 0;
  CmpNfsTotIpi.Value := 0;
  CmpNfsTotGer.Value := 0;
  CmpNfsTotBrt.Value := 0;
  CmpNfsValTmo.Value := 1;
  CmpNfsDteFat.Value := Date;
  CmpNfsFrtNfs.Value := 'FOB';
  CmpNfsFlgImp.Value := 'Nao';
  CmpNfsTipPfa.Value := 'Saida';
  CmpNfsCodEmp.Value := GEmp_Id;
  CmpNfsSitNfs.Value := 'Nao Concluido';
  CmpNfsHreFat.Value := TimeToStr(Time);

  EdDteFat.Date := Date;

  EdFrtNfs.Text := 'FOB';

  EdTipPfa.Text := 'Saida';

  EdCodTip.Value := 1;

  EdValTmo.Value := 1;

  if GEmp_Id > 0 then EdCodEmp.Text := IntToStr(GEmp_Id);

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

       if GFlgAce = 'Sim' then Text := Text + ' and CodFil > '+ QuotedStr('0');
               
       with Params do begin

            Params[0].AsInteger := CmpNfsCodEmp.Value;

       end;

       Open;

       pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinFor.NomFor,FinFor.SigUfe From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpNfsCodFor.Value));
       Open;

       pnNomFor.Caption := FieldbyName('NomFor').AsString;
       pnUfeNfs.Caption := FieldbyName('SigUfe').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstPfa.DscPfa From EstPfa Where EstPfa.TipPfa = '+ QuotedStr(CmpNfsTipPfa.Value) +' and EstPfa.CodPfa = '+ QuotedStr(CmpNfsCodPfa.Value);
       Open;

       pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

  end;

  EdId_CmpPed.Enabled := True;

  EdCodTip.Enabled := True;
  EdDscPed.Enabled := True;
  EdCodEmp.Enabled := True;
  EdDteFat.Enabled := True;
  EdTipPfa.Enabled := True;
  EdCodFor.Enabled := True;
  EdFrtNfs.Enabled := True;
  EdCodPfa.Enabled := True;
  EdValTmo.Enabled := True;

  EdId_CmpPed.Font.Style := [];

  EdCodTip.Font.Style := [];
  EdDscPed.Font.Style := [];
  EdCodEmp.Font.Style := [];
  EdDteFat.Font.Style := [];
  EdTipPfa.Font.Style := [];
  EdCodFor.Font.Style := [];
  EdFrtNfs.Font.Style := [];
  EdCodPfa.Font.Style := [];
  EdValTmo.Font.Style := [];

  EdCodTip.SetFocus;

end;

procedure TfmManRo1.EdCodClpExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdFrtNfs.Focused) and
        (not EdDteFat.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpNf2.State <> dsBrowse then begin

           if Trim( CmpNf2CodClp.Value ) <> '' then begin

              if (CmpNf2CodClp.Value <> '9') and (CmpNf2CodClp.Value <> '8') then begin

                 if not EdDesNf2.Enabled then begin

                    pnDesNf2.Visible := True;
                    pnObsNf2.Visible := True;
                    
                    EdDesNf2.Enabled := False;
                    EdObsNf2.Enabled := False;

                 end;
                    
                 with quSql,SQL do begin

                      Close;
                      Text := ' Select Count(*) as QtdReg From EstClp Where EstClp.CodClp = '+ QuotedStr(CmpNf2CodClp.Value);
                      Open;

                 end;

                 if quSql.FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Classificação Informada não Encontrada.',EdCodClp);

                 end
              else
                 begin

                 psaida := 'Nao';

                 if EdCodGru.Enabled then begin
                 
                    EdCodGru.Enabled := False;
                    EdCodSub.Enabled := False;
                    EdCodPro.Enabled := False;

                 end;
                    
                 psaida := 'Sim';

                 if CmpNf2CodClp.Value = '9' then begin

                    CmpNf2CodGru.Value := '999';
                    CmpNf2CodSub.Value := '9999';
                    CmpNf2CodPro.Value := '99999';

                    if not EdDesNf2.Enabled then begin

                       pnDesNf2.Visible := False;
                       pnObsNf2.Visible := False;

                       EdDesNf2.Enabled := True;
                       EdObsNf2.Enabled := True;

                    end;
                    
                    EdCodCfo.SetFocus;

                    end
                 else
                    begin

                    CmpNf2CodGru.Value := '888';
                    CmpNf2CodSub.Value := '8888';
                    CmpNf2CodPro.Value := '88888';

                    if EdCodCfo.Enabled then begin

                       EdCodCfo.Enabled := False;
                       EdClsIpi.Enabled := False;
                       EdCodSt1.Enabled := False;
                       EdCodSt2.Enabled := False;
                       EdCodUnd.Enabled := False;
                       EdQtpNf2.Enabled := False;
                       EdVluNf2.Enabled := False;
                       EdIpiNf2.Enabled := False;
                       EdIcmNf2.Enabled := False;
                       EdImpNf2.Enabled := False;

                       pnDesNf2.Visible := False;
                       pnObsNf2.Visible := False;

                       EdDesNf2.Enabled := True;
                       EdObsNf2.Enabled := True;

                    end;
                    
                    EdDesNf2.SetFocus;

                 end;
              end;

              end
           else
              fmsgErro('Classificação Informada não Encontrada.',EdCodClp);

           end
        else
           begin

           if EdCodClp.Enabled then begin

              if Trim( CmpNf2CodClp.Value ) = '' then fmsgErro('Classificação Informada não Encontrada.',EdCodClp);

           end;
        end;
     end;

     end
  else
     begin

     if (Tecla = 'UP') then begin

        if CmpNfsQtiNfs.Value > 0 then begin

           EdCodClp.Enabled := False;
           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpNf2.Enabled := False;
           EdVluNf2.Enabled := False;
           EdIpiNf2.Enabled := False;
           EdIcmNf2.Enabled := False;
           EdImpNf2.Enabled := False;
           EdDesNf2.Enabled := False;
           EdObsNf2.Enabled := False;

           if CmpNf2.State <> dsBrowse then
              CmpNf2.CancelUpdates
           else
              begin

              if not CmpNf2.Bof then CmpNf2.Prior;

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

           if CmpNf2.State = dsBrowse then begin

              if CmpNf2Id_CmpNfs.Value > 0 then
                 CmpNf2.Edit
              else
                 CmpNf2.Append;

           end;

           CmpNf2CodClp.Value := fmPsqClp.CodClp;

        end;

     finally

        FreeAndNil(fmPsqClp);

     end;

     if Trim( CmpNf2CodClp.Value ) <> '' then begin

        if (CmpNf2CodClp.Value <> '8') and (CmpNf2CodClp.Value <> '9') then begin

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

procedure TfmManRo1.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpNf2CodClp.Value;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if CmpNf2.State = dsBrowse then begin

              if CmpNf2Id_CmpNfs.Value > 0 then
                 CmpNf2.Edit
              else
                 CmpNf2.Append;

           end;

           CmpNf2CodGru.Value := fmAuxIni.CodGru;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpNf2CodGru.Value ) <> '' then begin

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

        fmAuxPsq.CodClp := CmpNf2CodClp.Value;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpNf2.State = dsBrowse then begin

              if CmpNf2Id_CmpNfs.Value > 0 then
                 CmpNf2.Edit
              else
                 CmpNf2.Append;

           end;

           CmpNf2CodGru.Value := fmAuxPsq.CodGru;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpNf2CodGru.Value ) <> '' then begin

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
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not EdCodClp.Focused then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpNf2.State <> dsBrowse then begin

           if Trim( CmpNf2CodGru.Value ) <> '' then begin

              CmpNf2CodGru.Value := FNumZeros(CmpNf2CodGru.Value,3);

              if (CmpNf2CodGru.Value <> '888') and (CmpNf2CodGru.Value <> '999') then begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select Count(*) as QtdReg From EstGru Where EstGru.CodGru = '+ QuotedStr(CmpNf2CodGru.Value);
                      Open;

                 end;

                 if quSql.FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Grupo Informado não Encontrado.',EdCodGru);

              end;

              end
           else
              fmsgErro('Grupo Informado não Encontrado.',EdCodGru);

           end
        else
           begin

           if EdCodGru.Enabled then begin

              if Trim( CmpNf2CodGru.Value ) = '' then fmsgErro('Grupo Informado não Encontrado.',EdCodGru);

           end;
        end;
     end;
  end;
end;

procedure TfmManRo1.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( CmpNf2CodGru.Value ) <> '' then fmAuxIni.CodGru := CmpNf2CodGru.Value;

        fmAuxIni.CodClp := CmpNf2CodClp.Value;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if CmpNf2.State = dsBrowse then begin

              if CmpNf2Id_CmpNfs.Value > 0 then
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

     if Trim( CmpNf2CodSub.Value ) <> '' then begin

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

        if Trim( CmpNf2CodGru.Value ) <> '' then fmAuxPsq.CodGru := CmpNf2CodGru.Value;

        fmAuxPsq.CodClp := CmpNf2CodClp.Value;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpNf2.State = dsBrowse then begin

              if CmpNf2Id_CmpNfs.Value > 0 then
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

     if Trim( CmpNf2CodSub.Value ) <> '' then begin

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
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodGru.Focused) and
        (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if Trim( CmpNf2CodSub.Value ) <> '' then begin

           if CmpNf2.State <> dsBrowse then begin

              CmpNf2CodSub.Value := FNumZeros(CmpNf2CodSub.Value,4);

              if (CmpNf2CodSub.Value <> '8888') and (CmpNf2CodSub.Value <> '9999') then begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select Count(*) as QtdReg'+
                              ' From EstSub'+
                              ' Where EstSub.CodGru = '+ QuotedStr(CmpNf2CodGru.Value)+
                              '   and EstSub.CodSub = '+ QuotedStr(CmpNf2CodSub.Value);
                      Open;

                      if quSql.FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Grupo e Sub-Grupo não Encontrado.',EdCodGru);

                 end;
              end;

              end
           else
              begin

              if EdCodSub.Enabled then begin

                 if Trim( CmpNf2CodSub.Value ) = '' then fmsgErro('Sub-Grupo Informado não Encontrado.',EdCodSub);

              end;
           end;

           end
        else
           fmsgErro('Sub-Grupo Informado não Encontrado.',EdCodSub);
     end;
  end;
end;

procedure TfmManRo1.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpNf2CodClp.Value;
        fmAuxIni.CodGru := CmpNf2CodGru.Value;
        fmAuxIni.CodSub := CmpNf2CodSub.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if EdCodClp.Enabled then begin

              CmpNf2CodClp.Value := fmAuxIni.CodClp;
              CmpNf2CodGru.Value := fmAuxIni.CodGru;
              CmpNf2CodSub.Value := fmAuxIni.CodSub;
              CmpNf2CodPro.Value := fmAuxIni.CodPro;

           end;
        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpNf2CodPro.Value ) <> '' then begin

        if EdQtpNf2.Enabled then
           EdQtpNf2.SetFocus
        else
           EdCodPro.SetFocus;

        end
     else
        EdCodPro.SetFocus;

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := CmpNf2CodClp.Value;

        if Trim( CmpNf2CodGru.Value ) <> '' then fmAuxPsq.CodGru := CmpNf2CodGru.Value;
        if Trim( CmpNf2CodSub.Value ) <> '' then fmAuxPsq.CodSub := CmpNf2CodSub.Value;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpNf2.State = dsBrowse then begin

              if CmpNf2Id_CmpNfs.Value > 0 then
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

     if Trim( CmpNf2CodPro.Value ) <> '' then begin

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
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if Trim( CmpNf2CodPro.Value ) <> '' then begin

           if CmpNf2.State <> dsBrowse then begin

              CmpNf2CodPro.Value := FNumStrZero(CmpNf2CodPro.Value);

              if (CmpNf2CodPro.Value <> '88888') and (CmpNf2CodPro.Value <> '99999') then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstPro.DscPro,'+
                              '        EstPro.CodUns,'+
                              '        EstPro.IpiSai,'+
                              '        EstPro.IpiTsd,'+
                              '        EstPro.IcmSai,'+
                              '        EstPro.IcmTsd,'+
                              '        EstPro.ClfSai,'+
                              '        EstPro.CodSt1,'+
                              '        EstPro.CodSt2 '+
                              ' From EstPro'+
                              ' Where EstPro.CodClp = '+ QuotedStr(CmpNf2CodClp.Value) +
                              '   and EstPro.CodGru = '+ QuotedStr(CmpNf2CodGru.Value) +
                              '   and EstPro.CodSub = '+ QuotedStr(CmpNf2CodSub.Value) +
                              '   and EstPro.CodPro = '+ QuotedStr(CmpNf2CodPro.Value) ;
                      Open;

                 end;

                 if Trim(quSQL.FieldbyName('DscPro').AsString) <> '' then begin

                    CmpNf2DesNf2.Value := Trim(quSQL.FieldbyName('DscPro').AsString);
                    CmpNf2CodUnd.Value := Trim(quSQL.FieldbyName('CodUns').AsString);
                    CmpNf2ClsIpi.Value := Trim(quSQL.FieldbyName('ClfSai').AsString);
                    CmpNf2CodSt1.Value := Trim(quSQL.FieldbyName('CodSt1').AsString);
                    CmpNf2CodSt2.Value := Trim(quSQL.FieldbyName('CodSt2').AsString);

                    if Trim( quSQL.FieldbyName('IpiSai').AsString ) <> '' then begin

                       CmpNf2RegIpi.Value := quSQL.FieldbyName('IpiSai').AsString;
                       CmpNf2TipIpi.Value := quSQL.FieldbyName('IpiTsd').AsString;

                    end;

                    if Trim( quSQL.FieldbyName('IcmSai').AsString ) <> '' then begin

                       CmpNf2RegIcm.Value := quSQL.FieldbyName('IcmSai').AsString;
                       CmpNf2TipIcm.Value := quSQL.FieldbyName('IcmTsd').AsString;

                    end;

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select EstIcm.CodIcm,'+
                                 '        EstIcm.PerIcm,'+
                                 '        EstIcm.CodSt1,'+
                                 '        EstIcm.CodSt2 '+
                                 ' From EstIcm'+
                                 ' Where EstIcm.CodIcm = '+ QuotedStr(CmpNf2RegIcm.Value)+
                                 '   and EstIcm.TipIcm = '+ QuotedStr(CmpNf2TipIcm.Value);
                         Open;

                    end;

                    if Trim( quSql.FieldbyName('CodIcm').AsString ) <> '' then begin

                       CmpNf2IcmNf2.Value := quSql.FieldbyName('PerIcm').AsFloat;

                       CmpNf2CodSt1.Value := Trim(quSql.FieldbyName('CodSt1').AsString);
                       CmpNf2CodSt2.Value := Trim(quSql.FieldbyName('CodSt2').AsString);

                       end
                    else
                       CmpNf2IcmNf2.Value := 0;

                    if qticms = 1 then begin

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select GerIcm.PerIcm From GerIcm Where GerIcm.SigUfe = '+ QuotedStr(CmpNfsUfeNfs.Value);
                            Open;

                            CmpNf2IcmNf2.Value := FieldbyName('PerIcm').AsFloat;

                       end;
                    end;

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select EstIpi.CodIpi,'+
                                 '        EstIpi.PerIpi,'+
                                 '        EstIpi.ClsIpi '+
                                 ' From EstIpi'+
                                 ' Where EstIpi.CodIpi = '+ QuotedStr(CmpNf2RegIpi.Value)+
                                 '   and EstIpi.TipIpi = '+ QuotedStr(CmpNf2TipIpi.Value);
                         Open;

                    end;

                    if Trim( quSql.FieldbyName('CodIpi').AsString ) <> '' then begin

                       CmpNf2IpiNf2.Value := quSql.FieldbyName('PerIpi').AsFloat;
                       
                       CmpNf2ClsIpi.Value := Trim(quSql.FieldbyName('ClsIpi').AsString);

                       end
                    else
                       CmpNf2IpiNf2.Value := 0;

                    with quSql,SQL do begin

                         Close;
                         Text := ' Select EstIte.CodEmp,'+
                                 '        EstIte.VpfIte '+
                                 ' From EstIte '+
                                 ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(CmpNfsCodEmp.Value))+
                                 '   and EstIte.CodClp = '+ QuotedStr(CmpNf2CodClp.Value)+
                                 '   and EstIte.CodGru = '+ QuotedStr(CmpNf2CodGru.Value)+
                                 '   and EstIte.CodSub = '+ QuotedStr(CmpNf2CodSub.Value)+
                                 '   and EstIte.CodPro = '+ QuotedStr(CmpNf2CodPro.Value);
                         Open;
                         First;

                    end;

                    if quSql.FieldbyName('CodEmp').AsInteger > 0 then begin

                       CmpNf2VluNf2.Value := quSql.FieldbyName('VpfIte').AsFloat;

                       AntVluNf2 := CmpNf2VluNf2.Value;

                       CmpNf2TotNf2.Value := fRound(CmpNf2VluNf2.Value * CmpNf2QtpNf2.Value,2);

                       with quSql,SQL do begin

                            Close;
                            Text := ' Select Count(*) as QtdReg'+
                                    ' From EstQte '+
                                    ' Where EstQte.CodEmp = '+ QuotedStr(IntToStr(CmpNfsCodEmp.Value))+
                                    '   and EstQte.CodClp = '+ QuotedStr(CmpNf2CodClp.Value)+
                                    '   and EstQte.CodGru = '+ QuotedStr(CmpNf2CodGru.Value)+
                                    '   and EstQte.CodSub = '+ QuotedStr(CmpNf2CodSub.Value)+
                                    '   and EstQte.CodPro = '+ QuotedStr(CmpNf2CodPro.Value)+
                                    '   and EstQte.CodTam = '+ QuotedStr(CmpNf2CodTam.Value)+
                                    '   and EstQte.CodCor = '+ QuotedStr(CmpNf2CodCor.Value);
                            Open;

                            if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Item Informado não Encontrado no Estoque da Empresa.',EdCodPro);

                       end;

                       end
                    else
                       fmsgErro('Item Informado não Encontrado na Empresa.',EdCodPro);

                    end
                 else
                    fmsgErro('Item Informado não Encontrado.',EdCodPro);

              end;

              end
           else
              begin

              if EdCodPro.Enabled then begin

                 if Trim( CmpNf2CodPro.Value ) = '' then fmsgErro('Item Informado não Encontrado.',EdCodPro);

              end;
           end;

           end
        else
           fmsgErro('Item Informado não Encontrado.',EdCodPro);
           
     end;
  end;
end;

procedure TfmManRo1.EdQtpNf2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpNf2.State <> dsBrowse then begin

           if CmpNf2QtpNf2.Value > 0 then
              CmpNf2TotIte.Value := fRound(CmpNf2VluNf2.Value * CmpNf2QtpNf2.Value,2)
           else
              begin

              if (CmpNf2CodClp.Value <> '8') and (CmpNf2CodClp.Value <> '9') then fmsgErro('Campo de Preenchimento Obrigatorio.',EdQtpNf2);

           end;
        end;
     end;

     end
  else
     begin

     if (Tecla = 'UP') and (not EdCodClp.Enabled) then EdQtpNf2.SetFocus;

  end;
end;

procedure TfmManRo1.EdVluNf2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdQtpNf2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpNf2.State <> dsBrowse then begin

           if CmpNf2VluNf2.Value > 0 then begin

              if CmpNf2VluNf2.Value <> AntVluNf2 then begin

                 AntVluNf2 := CmpNf2VluNf2.Value;

                 CmpNf2TotIte.Value := fRound(CmpNf2VluNf2.Value * CmpNf2QtpNf2.Value,2);

              end;

              end
           else
              begin

              if (CmpNf2CodClp.Value <> '8') and (CmpNf2CodClp.Value <> '9') then fmsgErro('Campo de Preenchimento Obrigatorio.',EdVluNf2);

           end;   
        end;
     end;
  end;
end;

procedure TfmManRo1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  sContinuar : string;
begin
  inherited;
  if (EdCodClp.Focused) or (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then begin

     if key = 114 then begin {F3 - Descrição}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := CmpNf2CodClp.Value;
           fmAuxIni.CodGru := CmpNf2CodGru.Value;
           fmAuxIni.CodSub := CmpNf2CodSub.Value;

           fmAuxIni.TipoPesq := 'I';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpNf2CodClp.Value := fmAuxIni.CodClp;
                 CmpNf2CodGru.Value := fmAuxIni.CodGru;
                 CmpNf2CodSub.Value := fmAuxIni.CodSub;
                 CmpNf2CodPro.Value := fmAuxIni.CodPro;

              end;
           end;

        finally   

           FreeAndNil(fmAuxIni);

        end;

        if Trim( CmpNf2CodPro.Value ) <> '' then begin

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

     if key = 116 then begin {F5 - Referência}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := CmpNf2CodClp.Value;
           fmAuxIni.CodGru := CmpNf2CodGru.Value;
           fmAuxIni.CodSub := CmpNf2CodSub.Value;

           fmAuxIni.TipoPesq := 'R';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpNf2CodClp.Value := fmAuxIni.CodClp;
                 CmpNf2CodGru.Value := fmAuxIni.CodGru;
                 CmpNf2CodSub.Value := fmAuxIni.CodSub;
                 CmpNf2CodPro.Value := fmAuxIni.CodPro;

              end;
           end;

        finally   

           FreeAndNil(fmAuxIni);

        end;

        if Trim( CmpNf2CodPro.Value ) <> '' then begin

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

     if key = 117 then begin {F6 - Inteligente/Descrição}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := CmpNf2CodClp.Value;

           fmAuxPsq.TipoPesq := 'I';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpNf2CodClp.Value := fmAuxPsq.CodClp;
                 CmpNf2CodGru.Value := fmAuxPsq.CodGru;
                 CmpNf2CodSub.Value := fmAuxPsq.CodSub;
                 CmpNf2CodPro.Value := fmAuxPsq.CodPro;

              end;
           end;

        finally   

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( CmpNf2CodPro.Value ) <> '' then begin

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

     if key = 118 then begin {F7 - Inteligente/Referência}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := CmpNf2CodClp.Value;

           fmAuxPsq.TipoPesq := 'R';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpNf2CodClp.Value := fmAuxPsq.CodClp;
                 CmpNf2CodGru.Value := fmAuxPsq.CodGru;
                 CmpNf2CodSub.Value := fmAuxPsq.CodSub;
                 CmpNf2CodPro.Value := fmAuxPsq.CodPro;

              end;
           end;

        finally   

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( CmpNf2CodPro.Value ) <> '' then begin

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

        fmPsqEst.sCodClp := CmpNf2CodClp.Value;

        if ( Trim(CmpNf2CodGru.Value) <> '' ) or
           ( Trim(CmpNf2CodSub.Value) <> '' ) or
           ( Trim(CmpNf2CodPro.Value) <> '' ) then begin

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
                        '        EstPro.CodAnt '+
                        ' From EstPro'+
                        ' Where EstPro.CodClp = '+ QuotedStr('1')+
                        '   and EstPro.FlbPro = '+ QuotedStr(' ');

                if Trim( CmpNf2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(CmpNf2CodGru.Value);
                if Trim( CmpNf2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(CmpNf2CodSub.Value);
                if Trim( CmpNf2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '+ QuotedStr(CmpNf2CodPro.Value);

                Text := Text + ' Order by EstPro.DscPro';

                Open;

           end;
        end;

        fmPsqEst.ShowModal;

        if sEntr = 'S' then begin

           if Trim( fmPsqEst.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

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

     if Trim( CmpNf2CodPro.Value ) <> '' then begin

        if EdCodPro.Enabled then EdCodPro.SetFocus;

        end
     else
        begin

        if EdCodGru.Focused then EdCodGru.SetFocus;
        if EdCodSub.Focused then EdCodSub.SetFocus;
        if EdCodPro.Focused then EdCodPro.SetFocus;

     end;
  end;

  if key = 27 then begin

     if EdQtpNf2.Enabled then begin

        if CmpNf2.State <> dsBrowse then CmpNf2.CancelUpdates;

        EdCodClp.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdCodCfo.Enabled := False;
        EdClsIpi.Enabled := False;
        EdCodSt1.Enabled := False;
        EdCodSt2.Enabled := False;
        EdCodUnd.Enabled := False;
        EdQtpNf2.Enabled := False;
        EdVluNf2.Enabled := False;
        EdIpiNf2.Enabled := False;
        EdIcmNf2.Enabled := False;
        EdImpNf2.Enabled := False;

        grNf2.SetFocus;

        end
     else
        begin

        if EdDesNf2.Enabled then begin

           if CmpNf2.State <> dsBrowse then CmpNf2.CancelUpdates;

           EdDesNf2.Enabled := False;
           EdObsNf2.Enabled := False;

           grNf2.SetFocus;

           end
        else
           begin

           if EdBasIc1.Enabled then begin

              if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

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

                 if CmpNfs.State <> dsBrowse then Close;

              end;
           end;
        end;
     end;
  end;

  if key = 123 then begin {F12-Finalizar Pedido}

     if CmpNfsQtiNfs.Value > 0 then begin

        if grNf2.Focused then begin

           sContinuar := 'S';

           if Trim(CmpNfsModPfa.Value) = 'Importacao direta' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select CmpNf2.NroAdi,'+
                           '        CmpNf2.SeqAdi,'+
                           '        CmpNf2.FabAdi '+
                           ' From CmpNf2'+
                           ' Where CmpNf2.Id_CmpNfs = '+ QuotedStr(IntToStr(CmpNfsId_CmpNfs.Value));
                   Open;

              end;

              while not quSQL.EOF do begin

                    if quSQL.FieldbyName('NroAdi').AsInteger = 0 then sContinuar := 'N';
                    if quSQL.FieldbyName('SeqAdi').AsInteger = 0 then sContinuar := 'N';

                    if Trim(quSQL.FieldbyName('FabAdi').AsString) = '' then sContinuar := 'N';

                    quSQL.Next;
                    
              end;
           end;

           if sContinuar = 'S' then begin

              if Trim(CmpNfsModPfa.Value) = 'Importacao direta' then begin

                 try

                    fmManRo8 := TfmManRo8.Create(Self);
                    fmManRo8.ShowModal;

                 finally

                    FreeAndNil(fmManRo8);

                 end;

                 end
              else
                 begin

                 try

                    fmManRo5 := TfmManRo5.Create(Self);
                    fmManRo5.ShowModal;

                 finally

                    FreeAndNil(fmManRo5);

                 end;
              end;

              if Finalizar = 'S' then begin

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

                 pnId_CmpNfs.Caption := '0';

                 pnApeEmp.Caption := '';
                 pnNomFor.Caption := '';
                 pnUfeNfs.Caption := '';
                 pnNomPfa.Caption := '';

                 CmpNfs.Close;
                 CmpNfs.Params[0].AsInteger := 0;
                 CmpNfs.Open;

                 CmpNf2.Close;
                 CmpNf2.Open;

                 CmpNfs.Insert;

                 EdCodTip.SetFocus

                 end
              else
                 grNf2.SetFocus;

              end
           else
              fmsgErro('Itens com dados de importação não informados.',Nil);

        end;
     end;
  end;
end;

procedure TfmManRo1.grNf2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroNf2 : integer;
begin
  inherited;
  if key = 68 then begin // D - Mudar Descrição/Observações Sobre o Item //

     if CmpNf2Id_CmpNf2.Value > 0 then begin

        pnDesNf2.Visible := False;
        pnObsNf2.Visible := False;

        EdDesNf2.Enabled := True;
        EdObsNf2.Enabled := True;

        EdDesNf2.SetFocus;

     end;
  end;

  if key = 116 then begin

     if CmpNf2Id_CmpNf2.Value > 0 then begin

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

  if key = 13 then begin {Tecla - ENTER}

     if CmpNf2Id_CmpNf2.Value > 0 then begin

        CmpNf2.Edit;

        if CmpNf2CodClp.Value = '8' then begin

           EdDesNf2.Enabled := True;
           EdObsNf2.Enabled := True;

           EdDesNf2.SetFocus;

           end
        else
           begin

           if CmpNf2CodClp.Value = '1' then begin

              EdCodCfo.Enabled := True;
              EdClsIpi.Enabled := True;
              EdCodSt1.Enabled := True;
              EdCodSt2.Enabled := True;
              EdCodUnd.Enabled := True;
              EdQtpNf2.Enabled := True;
              EdVluNf2.Enabled := True;
              EdIpiNf2.Enabled := True;
              EdIcmNf2.Enabled := True;
              EdImpNf2.Enabled := True;

              EdCodCfo.SetFocus;
              
              if CmpNf2CodClp.Value = '9' then begin

                 EdDesNf2.Enabled := True;
                 EdObsNf2.Enabled := True;

              end;
           end;
        end;
     end;
  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if CmpNf2NroNf2.Value = CmpNfsQtiNfs.Value then CmpNf2.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if CmpNf2Id_CmpNf2.Value > 0 then begin

        NroNf2 := CmpNf2NroNf2.Value;

        CmpNf2.Delete;

        with CmpNf2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpNf2.State <> dsBrowse then CmpNf2.CancelUpdates;

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
           CmpNf2.Locate('Id_CmpNfs;NroNf2',VarArrayOf([CmpNf2Id_CmpNfs.Value,NroNf2]),[LoPartialKey])
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
  if fmManRom.Id_CmpNfs > 0 then begin

     sEntr := 'S';

     CmpNfs.Close;
     CmpNfs.Params[0].AsInteger := fmManRom.Id_CmpNfs;
     CmpNfs.Open;

     CmpNf2.Close;
     CmpNf2.Open;

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

          if GFlgAce = 'Sim' then Text := Text + ' and CodFil > '+ QuotedStr('0');
                  
          with Params do begin

               Params[0].AsInteger := CmpNfsCodEmp.Value;

          end;

          Open;

          pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa From EstPfa Where EstPfa.TipPfa = '+ QuotedStr(CmpNfsTipPfa.Value) +' and EstPfa.CodPfa = '+ QuotedStr(CmpNfsCodPfa.Value);
          Open;

          pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpNfsCodFor.Value));
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

  CmpNf2Id_CmpNf2.Value := -1;
  CmpNf2Id_CmpNfs.Value := CmpNfsId_CmpNfs.Value;

  CmpNf2IcmNf2.Value := 0;
  CmpNf2IpiNf2.Value := 0;
  CmpNf2LiqNf2.Value := 0;
  CmpNf2BrtNf2.Value := 0;
  CmpNf2QtpNf2.Value := 0;
  CmpNf2VluNf2.Value := 0;
  CmpNf2ValNf2.Value := 0;
  CmpNf2BasIpi.Value := 0;
  CmpNf2TotIpi.Value := 0;
  CmpNf2BasIcm.Value := 0;
  CmpNf2TotIcm.Value := 0;
  CmpNf2TotIte.Value := 0;
  CmpNf2TotNf2.Value := 0;
  CmpNf2TotBrt.Value := 0;
  CmpNf2TotLiq.Value := 0;
  CmpNf2FlgAtu.Value := '';
  CmpNf2CodClp.Value := '1';
  CmpNf2CodTam.Value := 'UN';
  CmpNf2CodCor.Value := 'UN';
  CmpNf2CodEit.Value := CmpNfsCodEmp.Value;
  CmpNf2NroNf2.Value := CmpNfsQtiNfs.Value + 1;
  CmpNf2CodCfo.Value := Trim(CmpNfsCodCf1.Value);

  CmpNf2.EnableControls;

  AntVluNf2 := CmpNf2VluNf2.Value;

  EdCodCfo.Text := Trim(CmpNf2CodCfo.Value);
  
  EdDesNf2.Enabled := False;
  EdObsNf2.Enabled := False;
  
  pnDesNf2.Visible := True;
  pnObsNf2.Visible := True;

  EdCodClp.Enabled := True;
  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdCodCfo.Enabled := True;
  EdClsIpi.Enabled := True;
  EdCodSt1.Enabled := True;
  EdCodSt2.Enabled := True;
  EdCodUnd.Enabled := True;
  EdQtpNf2.Enabled := True;
  EdVluNf2.Enabled := True;
  EdIpiNf2.Enabled := True;
  EdIcmNf2.Enabled := True;
  EdImpNf2.Enabled := True;

  EdCodClp.SetFocus;

end;

procedure TfmManRo1.Panel3Exit(Sender: TObject);
var
  NroNf2 : integer;
  sContinuar : string;
begin
  inherited;
  if psaida = 'Sim' then begin

     if CmpNf2.State <> dsBrowse then begin

        CmpNf2CodCfo.Value := Trim(CmpNf2CodCfo.Value);
        CmpNf2ClsIpi.Value := Trim(CmpNf2ClsIpi.Value);
        CmpNf2CodSt1.Value := Trim(CmpNf2CodSt1.Value);
        CmpNf2CodSt2.Value := Trim(CmpNf2CodSt2.Value);
        CmpNf2CodUnd.Value := Trim(CmpNf2CodUnd.Value);
        CmpNf2DesNf2.Value := Trim(CmpNf2DesNf2.Value);
        CmpNf2ObsNf2.Value := Trim(CmpNf2ObsNf2.Value);

        if (CmpNf2CodClp.Value <> '8') and (CmpNf2CodClp.Value <> '9') then begin

           if CmpNf2VluNf2.Value = 0 then fmsgErro('Campo de preenchimento obrigatorio não informado.',EdVluNf2);
           if CmpNf2QtpNf2.Value = 0 then fmsgErro('Campo de preenchimento obrigatorio não informado.',EdQtpNf2);
                                                                                                                 
           if (CmpNf2DesNf2.Value) = '' then fmsgErro('Campo de preenchimento obrigatorio não informado.',EdDesNf2);
           
        end;

        sContinuar := 'S';
        
        if Trim(CmpNfsModPfa.Value) = 'Importacao direta' then begin

           try

              fmManIn2 := TfmManIn2.Create(Self);
              fmManIn2.ShowModal;

              sContinuar := fmManIn2.sContinuar;

           finally

              FreeAndNil(fmManIn2);

           end;
        end;

        if sContinuar = 'S' then begin

           if CmpNf2.State = dsInsert then begin

              with CmpNf2 do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if CmpNf2.State = dsBrowse then CmpNf2.Edit;

                      if EdCodClp.Enabled then
                         EdCodClp.SetFocus
                      else
                         EdCodCfo.SetFocus;

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

              with CmpNf2 do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if CmpNf2.State = dsBrowse then CmpNf2.Edit;

                      if EdCodClp.Enabled then
                         EdCodClp.SetFocus
                      else
                         EdCodCfo.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              CmpNf2.Close;
              CmpNf2.Open;

              CmpNfs.Close;
              CmpNfs.Open;

              CmpNf2.Locate('Id_CmpNfs;NroNf2',VarArrayOf([CmpNf2Id_CmpNfs.Value,NroNf2]),[LoPartialKey]);

              if CmpNf2NroNf2.Value = CmpNfsQtiNfs.Value then
                 CmpNf2.Append
              else
                 begin

                 CmpNf2.Next;

                 EdCodClp.Enabled := False;
                 EdCodGru.Enabled := False;
                 EdCodSub.Enabled := False;
                 EdCodPro.Enabled := False;
                 EdCodCfo.Enabled := False;
                 EdClsIpi.Enabled := False;
                 EdCodSt1.Enabled := False;
                 EdCodSt2.Enabled := False;
                 EdCodUnd.Enabled := False;
                 EdQtpNf2.Enabled := False;
                 EdVluNf2.Enabled := False;
                 EdIpiNf2.Enabled := False;
                 EdIcmNf2.Enabled := False;
                 EdImpNf2.Enabled := False;
                 EdDesNf2.Enabled := False;
                 EdObsNf2.Enabled := False;

                 pnDesNf2.Visible := True;
                 pnObsNf2.Visible := True;

                 grNf2.SetFocus;

              end;
           end;

           end
        else
           begin

           if EdCodClp.Enabled then
              EdCodClp.SetFocus
           else
              EdQtpNf2.SetFocus;

        end;
           
        end
     else
        begin

        EdCodClp.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdQtpNf2.Enabled := False;
        EdCodCfo.Enabled := False;
        EdClsIpi.Enabled := False;
        EdCodSt1.Enabled := False;
        EdCodSt2.Enabled := False;
        EdCodUnd.Enabled := False;
        EdVluNf2.Enabled := False;
        EdIpiNf2.Enabled := False;
        EdIcmNf2.Enabled := False;
        EdImpNf2.Enabled := False;
        EdDesNf2.Enabled := False;
        EdObsNf2.Enabled := False;

        pnDesNf2.Visible := True;
        pnObsNf2.Visible := True;

        grNf2.SetFocus;

     end;
  end;   
end;

procedure TfmManRo1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja Realmente Abandonar a Nota ?','O') then begin

        if CmpNf2.State <> dsBrowse then CmpNf2.CancelUpdates;
        if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

        fmManRom.CmpNfs.Close;
        fmManRom.CmpNfs.Open;

        fmManRom.CmpNf2.Close;
        fmManRom.CmpNf2.Open;

        Action := CaFree;

        end
     else
        begin

        Abort;

        if CmpNfsSeqNfs.Value = Null then CmpNfs.Insert;

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

procedure TfmManRo1.Panel4Exit(Sender: TObject);
begin
  inherited;
  if CmpNfs.State <> dsBrowse then begin

     with CmpNfs do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if CmpNfs.State = dsBrowse then CmpNfs.Edit;

             EdBasIc1.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     CmpNfs.Close;
     CmpNfs.Open;

     CmpNf2.Close;
     CmpNf2.Open;

     pnBasIc1.Caption := FormatFloat('###,###,##0.00',CmpNfsBasIc1.Value);
     pnTotIc1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIc1.Value);
     pnBasSu1.Caption := FormatFloat('###,###,##0.00',CmpNfsBasSu1.Value);
     pnTotSu1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotSu1.Value);
     pnTotIt1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIt1.Value);
     pnTotFrt.Caption := FormatFloat('###,###,##0.00',CmpNfsTotFrt.Value);
     pnTotSeg.Caption := FormatFloat('###,###,##0.00',CmpNfsTotSeg.Value);
     pnTotDes.Caption := FormatFloat('###,###,##0.00',CmpNfsTotDes.Value);
     pnTotIp1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIp1.Value);
     pnTotGe1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotGe1.Value);

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

     if fmPsqEmp.CodEmp > 0 then begin

        CmpNfsCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(CmpNfsCodEmp.Value);

        pnApeEmp.Caption := fmPsqEmp.ApeEmp;

     end;

  finally   

     FreeAndNil(fmPsqEmp);

  end;

  if CmpNfsCodEmp.Value > 0 then EdDteFat.SetFocus;

end;

procedure TfmManRo1.bpsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        CmpNfsCodFor.Value := fmAuxIni.CodFor;
        CmpNfsUfeNfs.Value := fmAuxIni.SigUfe;

        EdCodFor.Text := IntToStr(CmpNfsCodFor.Value);

        pnUfeNfs.Caption := fmAuxIni.SigUfe;
        pnNomFor.Caption := fmAuxIni.NomFor;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if CmpNfsCodFor.Value > 0 then EdFrtNfs.SetFocus;

end;

procedure TfmManRo1.bpsqPfaClick(Sender: TObject);
var
  LocPfa : string;
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(CmpNfsCodEmp.Value));
       Open;

  end;

  if CmpNfsUfeNfs.Value = 'EX' then
     LocPfa := 'Importacao ou Exportacao'
  else
     begin

     if CmpNfsUfeNfs.Value <> quSQL.FieldbyName('SigUfe').AsString then
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
                  '        EstPfa.ModPfa '+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  '   and EstPfa.LocPfa = :LocPfa'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString  := CmpNfsTipPfa.Value;
               Params[1].AsString  := LocPfa;

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

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
  if Tecla = 'UP' then EdCodTip.SetFocus;
end;

procedure TfmManRo1.DsNf2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if CmpNf2.State = dsBrowse then AntVluNf2 := CmpNf2VluNf2.Value;

  pnDesNf2.Caption := CmpNf2DesNf2.Value;
  pnObsNf2.Caption := CmpNf2ObsNf2.Value;

  pnId_CmpNfs.Caption := IntToStr(CmpNfsId_CmpNfs.Value);

  pnBasIc1.Caption := FormatFloat('###,###,##0.00',CmpNfsBasIc1.Value);
  pnTotIc1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIc1.Value);
  pnBasSu1.Caption := FormatFloat('###,###,##0.00',CmpNfsBasSu1.Value);
  pnTotSu1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotSu1.Value);
  pnTotIt1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIt1.Value);
  pnTotFrt.Caption := FormatFloat('###,###,##0.00',CmpNfsTotFrt.Value);
  pnTotSeg.Caption := FormatFloat('###,###,##0.00',CmpNfsTotSeg.Value);
  pnTotDes.Caption := FormatFloat('###,###,##0.00',CmpNfsTotDes.Value);
  pnTotIp1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIp1.Value);
  pnTotGe1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotGe1.Value);

  if CmpNf2.State = dsInsert then
     pnNroNf2.Caption := FNumZeros(IntToStr(CmpNf2NroNf2.Value),3)+ '/' +FNumZeros(IntToStr(CmpNfsQtiNfs.Value + 1),3)
  else
     pnNroNf2.Caption := FNumZeros(IntToStr(CmpNf2NroNf2.Value),3)+ '/' +FNumZeros(IntToStr(CmpNfsQtiNfs.Value),3);

end;

procedure TfmManRo1.EdId_CmpPedExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not EdCodTip.Focused then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpNfs.State <> dsBrowse then begin

           if CmpNfsId_CmpPed.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg'+
                           ' From CmpPed'+
                           ' Where CmpPed.Id_CmpPed = '+ QuotedStr(IntToStr(CmpNfsId_CmpPed.Value));
                   Open;

              end;

              if quSql.FieldbyName('QtdReg').AsInteger = 0 then
                 fmsgErro('Pedido de compra informado não encontrado.',EdId_CmpPed);

           end;
        end;
     end;
  end;
end;

procedure TfmManRo1.EdCodClpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Iniciais F3-Descr F4-Estoque F5-Refer F6-Int/Desc F7-Int/Ref';

end;

procedure TfmManRo1.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Refer F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManRo1.EdCodSubEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManRo1.EdCodTipEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F4-Estoque';

end;

procedure TfmManRo1.EdCodEmpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManRo1.EdCodForEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManRo1.grNf2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  LbText.Caption := 'Enter-Alterar Dados do Item Item DEL-Excluir Item F4-Estoque F5-Alterar Dados da Nota';

end;

procedure TfmManRo1.EdCodSt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt1 := TfmPsqSt1.Create(Self);
        fmPsqSt1.ShowModal;

        if Trim( fmPsqSt1.CodSt1 ) <> '' then CmpNf2CodSt1.Value := fmPsqSt1.CodSt1;

     finally

        FreeAndNil(fmPsqSt1);

     end;

     if Trim( CmpNf2CodSt1.Value ) <> '' then begin

        if EdCodSt2.Enabled then
           EdCodSt2.SetFocus
        else
           EdCodSt1.SetFocus;

        end
     else
        EdCodSt1.SetFocus;

  end;
end;

procedure TfmManRo1.EdCodSt2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt2 := TfmPsqSt2.Create(Self);
        fmPsqSt2.ShowModal;

        if Trim( fmPsqSt2.CodSt2 ) <> '' then CmpNf2CodSt2.Value := fmPsqSt2.CodSt2;

     finally

        FreeAndNil(fmPsqSt2);

     end;

     if Trim( CmpNf2CodSt2.Value ) <> '' then begin

        if EdCodUnd.Enabled then
           EdCodUnd.SetFocus
        else
           EdCodSt2.SetFocus;

        end
     else
        EdCodSt2.SetFocus;

  end;
end;

procedure TfmManRo1.EdCodUndKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqUnd := TfmPsqUnd.Create(Self);
        fmPsqUnd.ShowModal;

        if Trim( fmPsqUnd.CodUnd ) <> '' then CmpNf2CodUnd.Value := fmPsqUnd.CodUnd;

     finally

        FreeAndNil(fmPsqUnd);

     end;

     if Trim( CmpNf2CodUnd.Value ) <> '' then begin

        if EdQtpNf2.Enabled then
           EdQtpNf2.SetFocus
        else
           EdCodUnd.SetFocus;

        end
     else
        EdCodUnd.SetFocus;

  end;
end;

procedure TfmManRo1.EdCodCfoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not ( key in [ '0'..'9' ] )) and (not ( key in ['.'] )) then key := #0;
end;

procedure TfmManRo1.grNf2DrawDataCell(Sender: TObject; const Rect: TRect;
  Field: TField; State: TGridDrawState);
begin
  inherited;
  if Trim(CmpNfsModPfa.Value) = 'Importacao direta' then begin

     if gdSelected in State then begin

        with (Sender as ThGrid).Canvas do begin

             Font.Color := clWhite;

             FillRect(Rect);

        end;

        end
     else
        begin

        if CmpNf2.FieldbyName('NroAdi').AsInteger = 0 then begin

           with (Sender as ThGrid).Canvas do begin

                Font.Color := clRed;

                FillRect(Rect);

           end;
        end;
     end;

     (Sender as ThGrid).DefaultDrawDataCell(Rect, Field, State);

  end;
end;

end.


