unit ManPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, AlignEdit, ComCtrls, hNavigator, Buttons,
  Mask, hEdits, FlEdit, Db, DBTables, Wwquery, Wwdatsrc, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, wwdbdatetimepicker, wwdblook, DBCtrls, DBFlEdit, wwriched,
  jpeg, wwdbedit, Wwdotdot, Wwdbcomb, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxfCheckBox, Menus, dxDBEdtr, dxDBColorPickEdit,
  dxDBColorDateEdit, dxDBColorEdit, dxDBColorCurrencyEdit;

type
  TfmManPed = class(TfmPadrao)
    DsRes: TwwDataSource;
    DsRe2: TwwDataSource;
    UpRes: TUpdateSQL;
    UpRe2: TUpdateSQL;
    quSql: TwwQuery;
    PaintBox: TPaintBox;
    LbText: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Label29: TLabel;
    Label49: TLabel;
    EdNumRes: TdxDBColorEdit;
    pnNumRes: TPanel;
    Label37: TLabel;
    Label48: TLabel;
    EdCodEmp: TdxDBColorEdit;
    EdCodCli: TdxDBColorEdit;
    Label45: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label46: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label47: TLabel;
    Label44: TLabel;
    EdCodVen: TdxDBColorEdit;
    EdCodAtd: TdxDBColorEdit;
    EdCodPfa: TdxDBColorEdit;
    EdPrfREs: TdxDBColorEdit;
    bpsqPfa: TSpeedButton;
    bpsqCli: TSpeedButton;
    bpsqEmp: TSpeedButton;
    EdDtfRes: TdxDBColorDateEdit;
    pnNomPfa: TPanel;
    pnNomAtd: TPanel;
    pnNomVen: TPanel;
    pnNomCli: TPanel;
    pnNomEmp: TPanel;
    EdNomEmp: TdxDBColorEdit;
    EdNomCli: TdxDBColorEdit;
    EdNomVen: TdxDBColorEdit;
    EdNomAtd: TdxDBColorEdit;
    EdNomPfa: TdxDBColorEdit;
    Label50: TLabel;
    pnLimite: TPanel;
    EdLimite: TdxDBColorCurrencyEdit;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label68: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    pnUfeRes: TPanel;
    EdUfeRes: TdxDBColorEdit;
    pnCgcCli: TPanel;
    EdCgcCli: TdxDBColorEdit;
    EdDteREs: TdxDBColorDateEdit;
    EdFlgOco: TdxDBColorEdit;
    pnFlgOco: TPanel;
    Panel3: TPanel;
    Label03: TLabel;
    Label31: TLabel;
    pnTotRen: TPanel;
    EdTotRen: TdxDBColorCurrencyEdit;
    Label33: TLabel;
    Label3: TLabel;
    EdDscReg: TdxDBColorCurrencyEdit;
    Label25: TLabel;
    Label1: TLabel;
    EdPedAnt: TdxDBColorPickEdit;
    Label26: TLabel;
    grLabel2: TPanel;
    Label32: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    grLabel1: TdxDBGraphicEdit;
    PedRes: TwwQuery;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    PedResHRERES: TStringField;
    PedResCODCLI: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTIPPFA: TStringField;
    PedResCODTIP: TIntegerField;
    PedResPRFRES: TIntegerField;
    PedResDTFRES: TDateTimeField;
    PedResCODFIL: TIntegerField;
    PedResCODTRA: TIntegerField;
    PedResUFERES: TStringField;
    PedResCGCCLI: TStringField;
    PedResINSCLI: TStringField;
    PedResCEPCLI: TStringField;
    PedResTENCLI: TStringField;
    PedResENDCLI: TStringField;
    PedResREFCLI: TStringField;
    PedResNUMCLI: TStringField;
    PedResBAICLI: TStringField;
    PedResCIDCLI: TStringField;
    PedResUFECLI: TStringField;
    PedResINECLI: TStringField;
    PedResCGECLI: TStringField;
    PedResOBSRES: TStringField;
    PedResQTIRES: TIntegerField;
    PedResSEQITE: TIntegerField;
    PedResQTPRES: TIntegerField;
    PedResLINRES: TIntegerField;
    PedResQTLRES: TIntegerField;
    PedResQTFRES: TIntegerField;
    PedResBASIPI: TFloatField;
    PedResTOTIPI: TFloatField;
    PedResBASICM: TFloatField;
    PedResTOTICM: TFloatField;
    PedResBASSUB: TFloatField;
    PedResTOTSUB: TFloatField;
    PedResTOTCST: TFloatField;
    PedResTOTVEN: TFloatField;
    PedResTOTRES: TFloatField;
    PedResTOTREN: TFloatField;
    PedResTOTGER: TFloatField;
    PedResTOTLIQ: TFloatField;
    PedResTOTBRT: TFloatField;
    PedResBASCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResDSCCOM: TFloatField;
    PedResDSCREG: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResMEDPRM: TFloatField;
    PedResTOTDSC: TFloatField;
    PedResTOTDSR: TFloatField;
    PedResTOTDSP: TFloatField;
    PedResDESREG: TStringField;
    PedResCODUSU: TIntegerField;
    PedResFLGPSQ: TStringField;
    PedResDTLPSQ: TDateTimeField;
    PedResFLGCTB: TStringField;
    PedResFLGAVI: TStringField;
    PedResFLGOCO: TStringField;
    PedResSEQRES: TStringField;
    PedResATUEST: TStringField;
    PedResINTFIN: TStringField;
    PedResCONSUM: TStringField;
    PedResCODIPI: TStringField;
    PedResTIPIPI: TStringField;
    PedResTRBIPI: TStringField;
    PedResREDIPI: TFloatField;
    PedResBSCIPI: TFloatField;
    PedResCODICM: TStringField;
    PedResTIPICM: TStringField;
    PedResTRBICM: TStringField;
    PedResREDICM: TFloatField;
    PedResBSCICM: TFloatField;
    PedResINCREV: TFloatField;
    PedResINCFIN: TFloatField;
    PedResPEDANT: TStringField;
    PedResDTEREJ: TDateTimeField;
    PedResHREREJ: TStringField;
    PedResOBSREJ: TMemoField;
    PedResUSUREJ: TIntegerField;
    PedResFLGFIN: TStringField;
    PedResDTEFIN: TDateTimeField;
    PedResHREFIN: TStringField;
    PedResOBSFIN: TMemoField;
    PedResUSUFIN: TIntegerField;
    PedResTXFIPI: TStringField;
    PedResTXFICM: TStringField;
    PedResFLGSLD: TStringField;
    PedResFATRES: TFloatField;
    PedResFATGER: TFloatField;
    PedResDEVRES: TFloatField;
    PedResDEVGER: TFloatField;
    PedResSLDRES: TFloatField;
    PedResSLDGER: TFloatField;
    PedResMEDDSC: TFloatField;
    PedResFLGIMP: TStringField;
    PedResFLGGER: TStringField;
    PedResLIBSLD: TStringField;
    PedRe2: TwwQuery;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLURE2: TFloatField;
    PedRe2CODUND: TStringField;
    PedRe2ICMRE2: TFloatField;
    PedRe2DSCRE2: TFloatField;
    PedRe2PACRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedRe2FLGRES: TStringField;
    PedRe2IPIRE2: TFloatField;
    PedRe2CODTAM: TStringField;
    PedRe2CODCOR: TStringField;
    PedRe2CODEMP: TIntegerField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2CODEIT: TIntegerField;
    PedRe2CODCLP: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2OBSRE2: TStringField;
    PedRe2TIPIPI: TStringField;
    PedRe2CODST1: TStringField;
    PedRe2CODST2: TStringField;
    PedRe2LIQRE2: TFloatField;
    PedRe2BRTRE2: TFloatField;
    PedRe2LINRE2: TIntegerField;
    PedRe2TABPRC: TIntegerField;
    PedRe2QTSRE2: TFloatField;
    PedRe2SLDRE2: TFloatField;
    PedRe2VDSRE2: TFloatField;
    PedRe2VACRE2: TFloatField;
    PedRe2CLSIPI: TStringField;
    PedRe2TOTVEN: TFloatField;
    PedRe2TOTCST: TFloatField;
    PedRe2BASIPI: TFloatField;
    PedRe2TOTIPI: TFloatField;
    PedRe2BASICM: TFloatField;
    PedRe2TOTICM: TFloatField;
    PedRe2TOTGE2: TFloatField;
    PedRe2TOTREN: TFloatField;
    PedRe2TOTLIQ: TFloatField;
    PedRe2TOTBRT: TFloatField;
    PedRe2FLASEQ: TStringField;
    PedRe2NRORE2: TIntegerField;
    PedRe2VCHRE2: TFloatField;
    PedRe2VRERE2: TFloatField;
    PedRe2VCPRE2: TFloatField;
    PedRe2VPRRE2: TFloatField;
    PedRe2CODCOM: TStringField;
    PedRe2PCORE2: TFloatField;
    PedRe2BASCOM: TFloatField;
    PedRe2TOTCOM: TFloatField;
    PedRe2QTFRE2: TFloatField;
    PedRe2QTDRE2: TFloatField;
    PedRe2DTERES: TDateTimeField;
    PedRe2ULTQTS: TFloatField;
    PedRe2VCSRE2: TFloatField;
    PedRe2DSPRE2: TFloatField;
    PedRe2VDPRE2: TFloatField;
    PedRe2DSRRE2: TFloatField;
    PedRe2VDRRE2: TFloatField;
    PedRe2CLFRE2: TStringField;
    PedRe2TOTDSC: TFloatField;
    PedRe2TOTDSR: TFloatField;
    PedRe2TOTDSP: TFloatField;
    PedRe2TOTACR: TFloatField;
    PedRe2TRBIPI: TStringField;
    PedRe2REDIPI: TFloatField;
    PedRe2BSCIPI: TFloatField;
    PedRe2TIPICM: TStringField;
    PedRe2TRBICM: TStringField;
    PedRe2REDICM: TFloatField;
    PedRe2BSCICM: TFloatField;
    PedRe2INCREV: TFloatField;
    PedRe2INCFIN: TFloatField;
    Panel2: TPanel;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpRe2: TdxDBColorCurrencyEdit;
    EdVluRe2: TdxDBColorCurrencyEdit;
    EdIcmRe2: TdxDBColorCurrencyEdit;
    EdDscRe2: TdxDBColorCurrencyEdit;
    EdCodUnd: TdxDBColorEdit;
    EdVlqRe2: TdxDBColorCurrencyEdit;
    EdTotRe2: TdxDBColorCurrencyEdit;
    grRe21: TdxDBGraphicEdit;
    grRe2: ThGrid;
    PedResTOTACR: TFloatField;
    PedResDTEDEL: TDateTimeField;
    PedResHREDEL: TStringField;
    PedResOBSDEL: TMemoField;
    PedResUSUDEL: TIntegerField;
    PedResDTEFPE: TDateTimeField;
    PedResHREFPE: TStringField;
    PedResOBSFPE: TMemoField;
    PedResUSUFPE: TIntegerField;
    PedResSEQPAR: TIntegerField;
    PedResLANEST: TStringField;
    PedRe2CODPRM: TIntegerField;
    PedRe2BASSUB: TFloatField;
    PedRe2TOTSUB: TFloatField;
    PedRe2CODSTR: TStringField;
    PedRe2TIPSTR: TStringField;
    PedRe2REGIPI: TStringField;
    PedRe2REGICM: TStringField;
    PedResSITRES: TStringField;
    PedResMEDACR: TFloatField;
    pnEstoque: TPanel;
    Panel10: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label30: TLabel;
    Label36: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    EdDscCom: TdxDBColorCurrencyEdit;
    Label52: TLabel;
    PedResTOTDCO: TFloatField;
    PedResMEDDCO: TFloatField;
    PedRe2DSCCOM: TFloatField;
    PedRe2VDSCOM: TFloatField;
    PedRe2TOTDCO: TFloatField;
    Panel5: TPanel;
    EdSldIte: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    EdQtrIte: TPanel;
    EdQtdIte: TPanel;
    EdQtaIte: TPanel;
    Panel9: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    EdDspRe2: TdxDBColorCurrencyEdit;
    Label24: TLabel;
    Label53: TLabel;
    PedResCODATD: TIntegerField;
    PedRe2SEQPR2: TIntegerField;
    PedRe2CSTRE2: TFloatField;
    PedRe2VCRRE2: TFloatField;
    PedRe2FLGDUP: TStringField;
    PedResFLGTAB: TStringField;
    Panel14: TPanel;
    PedResFLGCOM: TStringField;
    PedResDTECOM: TDateTimeField;
    PedResHRECOM: TStringField;
    PedResOBSCOM: TMemoField;
    PedResUSUCOM: TIntegerField;
    PedResFLGREQ: TStringField;
    PedRe2EMPGER: TIntegerField;
    PedRe2DTEGER: TDateTimeField;
    PedRe2NUMGER: TIntegerField;
    PedRe2SEQGR2: TIntegerField;
    PedRe2PEDCLI: TStringField;
    PedRe2FLGREQ: TStringField;
    PedResFLGRES: TStringField;
    Label57: TLabel;
    pnTotMk2: TPanel;
    EdTotMk2: TdxDBColorCurrencyEdit;
    Label12: TLabel;
    pnNroRe2: TPanel;
    EdNroRe2: TdxDBColorCurrencyEdit;
    Label5: TLabel;
    Label7: TLabel;
    pnTotRes: TPanel;
    EdTotRes: TdxDBColorCurrencyEdit;
    PedRe2QTDEMB: TFloatField;
    PedRe2CODVWA: TStringField;
    pnDesRe2: TPanel;
    pnObsRe2: TPanel;
    EdObsRe2: TdxDBColorEdit;
    EdDesRe2: TdxDBColorEdit;
    Label28: TLabel;
    Label27: TLabel;
    Label8: TLabel;
    Label35: TLabel;
    EdTotSub: TdxDBColorCurrencyEdit;
    pnTotSub: TPanel;
    EdTotIpi: TdxDBColorCurrencyEdit;
    pnTotIpi: TPanel;
    PedRe2REFRE2: TStringField;
    PedRe2SEQGR3: TIntegerField;
    PedRe2CSTCST: TFloatField;
    PedRe2VCHCST: TFloatField;
    PedRe2VRECST: TFloatField;
    PedRe2VCRCST: TFloatField;
    PedRe2VCPCST: TFloatField;
    PedRe2VPRCST: TFloatField;
    bpsqVen: TSpeedButton;
    Panel15: TPanel;
    PedResQTDIMP: TIntegerField;
    PedResMODPFA: TStringField;
    Panel16: TPanel;
    Label18: TLabel;
    Label58: TLabel;
    Panel17: TPanel;
    EdQtdEmb: TPanel;
    PedRe2VMERE2: TFloatField;
    PedRe2VPFRE2: TFloatField;
    PedRe2VMECST: TFloatField;
    PedRe2VPFCST: TFloatField;
    PedResEMPCTA: TIntegerField;
    PedResDTECTA: TDateTimeField;
    PedResNUMCTA: TIntegerField;
    PedResPRCCTA: TStringField;
    PedRe2DSCPER: TFloatField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGLIB: TStringField;
    PedResMESRES: TStringField;
    PedResANORES: TIntegerField;
    PedResFLGPRO: TStringField;
    PedResPEDPRO: TStringField;
    PedResDTEPRO: TDateTimeField;
    PedResHREPRO: TStringField;
    PedResOBSPRO: TMemoField;
    PedResUSUPRO: TIntegerField;
    PedRe2CODTIP: TIntegerField;
    PedRe2CODCAT: TIntegerField;
    PedRe2CODMRC: TIntegerField;
    PedRe2MESRES: TStringField;
    PedRe2ANORES: TIntegerField;
    PedRe2LANCST: TStringField;
    PedResCLITAB: TStringField;
    PedResCODTCL: TIntegerField;
    PedResCODGCL: TIntegerField;
    Panel18: TPanel;
    Panel19: TPanel;
    EdQtdRma: TPanel;
    Label51: TLabel;
    Label61: TLabel;
    PedResFLGCON: TStringField;
    PedResDTECON: TDateTimeField;
    PedResHRECON: TStringField;
    PedResOBSCON: TMemoField;
    PedResUSUCON: TIntegerField;
    PedRe2VPFOUT: TFloatField;
    PedRe2OUTCST: TFloatField;
    PedRe2ISSRE2: TFloatField;
    PedRe2BASISS: TFloatField;
    PedRe2TOTISS: TFloatField;
    PedRe2FLGPAC: TStringField;
    PedResTIPCOM: TStringField;
    PedResCODCOM: TStringField;
    PedResFLGSER: TStringField;
    PedResBASISS: TFloatField;
    PedResTOTISS: TFloatField;
    EdIpiRe2: TdxDBColorCurrencyEdit;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    EdTotGer: TdxDBColorCurrencyEdit;
    pnTotGer: TPanel;
    Label34: TLabel;
    EdTotDsr: TdxDBColorCurrencyEdit;
    pnTotDsr: TPanel;
    PedResTIPCPA: TStringField;
    PedResMEDCAT: TFloatField;
    PedResBASCAT: TFloatField;
    PedResTOTCAT: TFloatField;
    PedResFLGFEC: TStringField;
    PedResEMPPED: TIntegerField;
    PedResDTEPED: TDateTimeField;
    PedResNUMPED: TIntegerField;
    PedResFLGDIF: TStringField;
    PedResFLGCMP: TStringField;
    PedResHRECMP: TStringField;
    PedResDTECMP: TDateTimeField;
    PedResUSUCMP: TIntegerField;
    PedResFLGIPI: TStringField;
    PedResTOTIPC: TFloatField;
    PedResNOMENT: TStringField;
    Label65: TLabel;
    Panel20: TPanel;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    pnTotSu2: TPanel;
    Label66: TLabel;
    Label67: TLabel;
    procedure SaiGrupo;
    procedure SaiCliente;
    procedure SaiProduto;
    procedure SaiSubGrupo;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PedResNewRecord(DataSet: TDataSet);
    procedure PedRe2NewRecord(DataSet: TDataSet);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodPfaExit(Sender: TObject);
    procedure EdPrfREsExit(Sender: TObject);
    procedure EdDtfResExit(Sender: TObject);
    procedure EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bpsqEmpClick(Sender: TObject);
    procedure bpsqCliClick(Sender: TObject);
    procedure bpsqPfaClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grRe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdQtpRe2Exit(Sender: TObject);
    procedure EdVluRe2Exit(Sender: TObject);
    procedure EdDscRe2Exit(Sender: TObject);
    procedure EdDesRe2Exit(Sender: TObject);
    procedure EdDspRe2Exit(Sender: TObject);
    procedure EdCodUndExit(Sender: TObject);
    procedure EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenExit(Sender: TObject);
    procedure bpsqVenClick(Sender: TObject);
    procedure grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure DsRe2DataChange(Sender: TObject; Field: TField);
    procedure EdVluRe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpEnter(Sender: TObject);
    procedure EdDteREsEnter(Sender: TObject);
    procedure EdCodCliEnter(Sender: TObject);
    procedure grRe2Enter(Sender: TObject);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdCodProEnter(Sender: TObject);
    procedure EdQtpRe2Enter(Sender: TObject);
    procedure EdVluRe2Enter(Sender: TObject);
    procedure EdCodUndEnter(Sender: TObject);
    procedure EdDscRe2Enter(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    GImpMrc : string;
    GImpTra : string;
    GImpObs : string;
    GImpFin : string;
    GVerEst : string;
    GPerPro : string;    
    DteRes  : TDateTime;
    CodEmp,NumRes,SeqRe2,Qticms,NroReg : integer;
    AntVluRe2,AntDscRe2,AntDspRe2 : real;
    sEnc,sEntr,Finalizar,PSaida : string;
    pCodClp,pCodGru,pCodSub,pCodPro: string;
  end;

var
  fmManPed : TfmManPed;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManGDB, ManRes, PsqEmp, AuxPsq,
     PsqTpe, PsqPfa, PsqGru, PsqSub, PsqPro, PsqRef, PsqEst, PsqRej, PsqOco,
     PsqTab, ManPe1, PsqRes, PsqObs, PsqIcm, AuxIni, PsqCmp, PsqUnd, PsqUve;

{$R *.DFM}

procedure TfmManPed.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  pSaida := 'Sim';

  Finalizar := 'N';

end;

procedure TfmManPed.FormShow(Sender: TObject);
var
LimCli : real;
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From PedPar';
       Open;

       GImpMrc := FieldByName('ImpMrc').AsString;       
       GImpTra := FieldByName('ImpTra').AsString;
       GImpObs := FieldByName('ImpObs').AsString;
       GImpFin := FieldByName('ImpFin').AsString;
       GVerEst := FieldByName('VerEst').AsString;
       GPerPro := FieldByName('PerPro').AsString;

  end;
  
  if GGus_Id > 1 then begin

     Label03.Visible := False;
     Label31.Visible := False;
     Label33.Visible := False;
     Label57.Visible := False;

     pnTotRen.Visible := False;
     EdTotRen.Visible := False;

     pnTotMk2.Visible := False;
     EdTotMk2.Visible := False;

  end;

  if fmManRes.CodEmp > 0 then begin

     sEntr := 'S';

     PedRes.Close;
     PedRes.Params[0].AsInteger  := fmManRes.CodEmp;
     PedRes.Params[1].AsDateTime := fmManRes.DteRes;
     PedRes.Params[2].AsInteger  := fmManRes.NumRes;
     PedRes.Open;

     PedRe2.Close;
     PedRe2.Params[0].AsInteger  := PedResCodEmp.Value;
     PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
     PedRe2.Params[2].AsInteger  := PedResNumRes.Value;
     PedRe2.Open;

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

          if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > '+ QuotedStr('0');

          with Params do begin

               Params[0].AsInteger := PedResCodEmp.Value;

          end;

          Open;

          pnNomEmp.Caption := FieldbyName('NomEmp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

          with Params do begin

               Params[0].AsInteger := PedResCodVen.Value;

          end;

          Open;

          pnNomVen.Caption := FieldbyName('ApeVen').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinAtd.NomAtd From FinAtd Where FinAtd.CodAtd = :CodAtd';

          with Params do begin

               Params[0].AsInteger := PedResCodAtd.Value;

          end;

          Open;

          pnNomAtd.Caption := FieldbyName('NomAtd').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa From EstPfa Where EstPfa.TipPfa = :TipPfa and EstPfa.CodPfa = :CodPfa';

          with Params do begin

               Params[0].AsString := 'Saida';
               Params[1].AsString := PedResCodPfa.Value;

          end;

          Open;

          pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli,FormatCgcCpf(FinCli.CgcCli) as CgcCpf,FinCli.UffCli,FinCli.LimCli From FinCli Where FinCli.CodCli = :CodCli';

          with Params do begin

               Params[0].AsInteger := PedResCodCli.Value;

          end;

          Open;

     end;

     pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
     pnUfeRes.Caption := quSQL.FieldbyName('UffCli').AsString;
     pnCgcCli.Caption := quSQL.FieldbyName('CgcCpf').AsString;

     LimCli := quSQL.FieldbyName('LimCli').AsFloat;

     pnLimite.Caption := FormatFloat('###,###,##0.00',LimCli);

     qticms := 1;

     if GUfeEmp <> PedResUfeRes.Value then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg from GerIcm Where GerIcm.SigUfe = '+ QuotedStr(PedResUfeRes.Value);
             Open;

        end;

        qticms := quSql.FieldbyName('Reg').AsInteger;

     end;

     if (PedResSitRes.Value <> 'Nao Concluido') and (PedResSitRes.Value <> 'Processo de Alteracao') and (PedResSitRes.Value <> 'Rejeitado') then
        sEnc := 'S'
     else
        begin

        bPsqEmp.Enabled := False;
        bPsqCli.Enabled := False;
        bPsqPfa.Enabled := False;
        bPsqVen.Enabled := False;        

        PedRes.Edit;

        EdPedAnt.Enabled := True;

        EdPedAnt.Font.Style := [];

        if (GGus_Id = 1)     or
           (GUsu_Id = 1)     or
           (GUsu_Id = 999)   or
           (GPerPro = 'Sim') or
           (GFlgGer = 'Sim') then begin

           EdPrfRes.Enabled := True;

           EdPrfRes.Font.Style := [];

           EdDtfRes.Date := PedResDtfRes.Value;

           if PedResPrfRes.Value > 0 then
              EdPrfRes.Text := IntToStr(PedResPrfRes.Value)
           else
              EdPrfRes.Text := '0';

        end;
        
        EdPedAnt.Text := PedResPedAnt.Value;

        EdPedAnt.SetFocus;

     end;

     end
  else
     begin

     sEntr := 'N';

     LbText.Caption := '';

     PedRes.Insert;

     EdDteRes.SetFocus;

  end;
end;

procedure TfmManPed.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPed.PedResNewRecord(DataSet: TDataSet);
var
LimCli : real;
begin
  inherited;

  PedRes.DisableControls;

  PedResCodTip.Value := 1;
  PedResNumRes.Value := 0;
  PedResQtiRes.Value := 0;
  PedResSeqIte.Value := 0;
  PedResTotRes.Value := 0;
  PedResBasIcm.Value := 0;
  PedResTotIcm.Value := 0;
  PedResBasIpi.Value := 0;
  PedResTotIpi.Value := 0;
  PedResTotCst.Value := 0;
  PedResTotRen.Value := 0;
  PedResTotVen.Value := 0;
  PedResQtpRes.Value := 0;
  PedResTotRes.Value := 0;
  PedResTotBrt.Value := 0;
  PedResTotDsc.Value := 0;
  PedResTotDsr.Value := 0;
  PedResTotAcr.Value := 0;
  PedResDscReg.Value := 0;
  PedResDscCom.Value := 0;
  PedResBasCom.Value := 0;
  PedResTotCom.Value := 0;
  PedResPrfRes.Value := 0;
  PedResFlgFin.Value := ' ';
  PedResFlgAvi.Value := ' ';
  PedResObsRes.Value := ' ';
  PedResDteRes.Value := Date;
  PedResDtfRes.Value := Date;
  PedResFlgGer.Value := 'Nao';
  PedResLibSld.Value := 'Nao';
  PedResFlgImp.Value := 'Nao';
  PedResPedAnt.Value := 'Nao';
  PedResFlgReq.Value := 'Nao';
  PedResTipPfa.Value := 'Saida';
  PedResCodEmp.Value := GEmp_Id;
  PedResSitRes.Value := 'Nao Concluido';
  PedResHreRes.Value := TimeToStr(Time);

  if GCodAtd_Id > 0 then PedResCodAtd.Value := GCodAtd_Id;

  PedRes.EnableControls;

  EdDteRes.Date := Date;
  EdDtfRes.Date := Date;

  EdPrfRes.Text := '0';

  EdPedAnt.Text := 'Nao';

  if GEmp_Id > 0 then EdCodEmp.Text := IntToStr(GEmp_Id);

  if GCodAtd_Id > 0 then begin

     pnNomAtd.Caption := GNomAtd_Id;

     EdCodAtd.Text := IntToStr(GCodAtd_Id);

     PedResCodAtd.Value := GCodAtd_Id;

  end;
  
  if GCodVen_Id > 0 then begin

     pnNomVen.Caption := GNomVen_Id;

     EdCodVen.Text := IntToStr(GCodVen_Id);

     PedResCodVen.Value := GCodVen_Id;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

       if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > '+ QuotedStr('0');

       with Params do begin

            Params[0].AsInteger := PedResCodEmp.Value;

       end;

       Open;

       pnNomEmp.Caption := quSQL.FieldbyName('NomEmp').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinCli.NomCli,FinCli.CgcCli,FinCli.UffCli,FinCli.LimCli From FinCli Where FinCli.CodCli = :CodCli';

       with Params do begin

            Params[0].AsInteger := PedResCodCli.Value;

       end;

       Open;

  end;

  pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
  pnUfeRes.Caption := quSQL.FieldbyName('UffCli').AsString;

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

  LimCli := quSQL.FieldbyName('LimCli').AsFloat;

  pnLimite.Caption := FormatFloat('###,###,##0.00',LimCli);

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinAtd.NomAtd From FinAtd Where FinAtd.CodAtd = :CodAtd';

       with Params do begin

            Params[0].AsInteger := PedResCodAtd.Value;

       end;

       Open;

       pnNomAtd.Caption := quSQL.FieldbyName('NomAtd').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstPfa.DscPfa From EstPfa Where EstPfa.TipPfa = :TipPfa and EstPfa.CodPfa = :CodPfa';

       with Params do begin

            Params[0].AsString  := 'Saida';
            Params[1].AsString  := PedResCodPfa.Value;

       end;

       Open;

       pnNomPfa.Caption := quSQL.FieldbyName('DscPfa').AsString;

  end;

  PedRe2.Close;
  PedRe2.Params[0].AsInteger  := PedResCodEmp.Value;
  PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
  PedRe2.Params[2].AsInteger  := PedResNumRes.Value;
  PedRe2.Open;

  bPsqEmp.Enabled := True;
  bPsqCli.Enabled := True;
  bPsqPfa.Enabled := True;
  bPsqVen.Enabled := True;  

  EdCodEmp.Enabled := True;
  EdDteRes.Enabled := True;
  EdCodCli.Enabled := True;
  EdCodVen.Enabled := True;
  EdPedAnt.Enabled := True;
  EdCodPfa.Enabled := True;

  EdCodEmp.Font.Style := [];
  EdDteRes.Font.Style := [];
  EdCodCli.Font.Style := [];
  EdCodVen.Font.Style := [];
  EdPedAnt.Font.Style := [];
  EdCodPfa.Font.Style := [];

  if (GGus_Id = 1)     or
     (GUsu_Id = 1)     or
     (GUsu_Id = 999)   or
     (GPerPro = 'Sim') or
     (GFlgGer = 'Sim') then begin

     EdPrfRes.Enabled := True;

     EdPrfRes.Font.Style := [];

  end;
  
  if GGUs_Id <> 1 then begin

     if (GCodVen_Id > 0) or (GCodAtd_Id > 0) then begin

        EdCodVen.Enabled := False;

        EdCodVen.Font.Style := [fsBold];

        bPsqVen.Enabled := False;

     end;
  end;

  if PedResCodEmp.Value > 0 then
     EdDteRes.SetFocus
  else
     EdCodEmp.SetFocus;

end;

procedure TfmManPed.PedRe2NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedRe2.DisableControls;

  PedRe2LiqRe2.Value := 0;
  PedRe2BrtRe2.Value := 0;
  PedRe2QtpRe2.Value := 0;
  PedRe2QtsRe2.Value := 0;
  PedRe2SldRe2.Value := 0;
  PedRe2VluRe2.Value := 0;
  PedRe2VlqRe2.Value := 0;
  PedRe2DscRe2.Value := 0;
  PedRe2VdsRe2.Value := 0;
  PedRe2DspRe2.Value := 0;
  PedRe2VdpRe2.Value := 0;
  PedRe2PacRe2.Value := 0;
  PedRe2VacRe2.Value := 0;
  PedRe2PcoRe2.Value := 0;
  PedRe2TotVen.Value := 0;
  PedRe2TotCst.Value := 0;
  PedRe2TotRen.Value := 0;
  PedRe2BasIpi.Value := 0;
  PedRe2TotIpi.Value := 0;
  PedRe2BasIcm.Value := 0;
  PedRe2TotIcm.Value := 0;
  PedRe2TotRe2.Value := 0;
  PedRe2TotGe2.Value := 0;
  PedRe2TotBrt.Value := 0;
  PedRe2BasCom.Value := 0;
  PedRe2TotCom.Value := 0;
  PedRe2TotLiq.Value := 0;
  PedRe2DscCom.Value := 0;
  PedRe2VdsCom.Value := 0;
  PedRe2TotDco.Value := 0;
  PedRe2FlaSeq.Value := '';
  PedRe2CodClp.Value := '1';
  PedRe2CodTam.Value := 'UN';
  PedRe2CodCor.Value := 'UN';
  PedRe2FlgRes.Value := 'Nao';
  PedRe2FlgReq.Value := 'Nao';
  PedRe2FlgDup.Value := 'Nao';
  PedRe2CodEmp.Value := PedResCodEmp.Value;
  PedRe2DteRes.Value := PedResDteRes.Value;
  PedRe2CodEit.Value := PedResCodEmp.Value;
  PedRe2NumRes.Value := PedResNumRes.Value;
  PedRe2NroRe2.Value := PedResQtiRes.Value + 1;
  PedRe2SeqRe2.Value := PedResSeqIte.Value + 1;

  PedRe2.EnableControls;

  if PedResDscCom.Value > 0 then PedRe2DscCom.Value := PedResDscCom.Value;

  AntVluRe2 := PedRe2VluRe2.Value;
  AntDscRe2 := PedRe2DscRe2.Value;
  AntDspRe2 := PedRe2DspRe2.Value;

  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdQtpRe2.Enabled := True;
  EdVluRe2.Enabled := True;
  EdDscRe2.Enabled := True;
  
  EdCodUnd.Enabled := False;
  EdDesRe2.Enabled := False;
  EdObsRe2.Enabled := False;

  pnDesRe2.Visible := True;
  pnObsRe2.Visible := True;

  ActiveControl := nil;
  
  EdCodGru.SetFocus;

end;

procedure TfmManPed.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if PedRes.State <> dsBrowse then begin

        if PedResCodEmp.Value > 0 then begin

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
                Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp and GerEmp.CodFil > '+ QuotedStr('0');

                if GFlgAce = 'Sim' then begin

                   if GEmpLog > 0 then
                      Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
                   else
                      Text := Text + ' and GerEmp.CodFil > 0';

                end;

                with Params do begin

                     Params[0].AsInteger := PedResCodEmp.Value;

                end;

                Open;

           end;

           if Trim( quSql.FieldbyName('NomEmp').AsString ) <> '' then
              pnNomEmp.Caption := quSql.FieldbyName('NomEmp').AsString
           else
              begin

              pnNomEmp.Caption := '';

              fmsgErro('Empresa Informada não Encontrada',EdCodEmp);

           end;

           end
        else
           begin

           pnNomEmp.Caption := '';

           fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodEmp);

        end;
     end;

     end
  else
     begin

     if Tecla = 'UP' then EdCodEmp.SetFocus

  end;
end;

procedure TfmManPed.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           PedResCodEmp.Value := fmPsqEmp.CodEmp;

           EdCodEmp.Text := IntToStr(PedResCodEmp.Value);

           pnNomEmp.Caption := fmPsqEmp.NomEmp;

        end;

     finally   

        FreeAndNil(fmPsqEmp);

     end;

     if PedResCodEmp.Value > 0 then EdDteRes.SetFocus;

  end;
end;

procedure TfmManPed.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPed.EdCodCliExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDteRes.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiCliente;

  end;
end;

procedure TfmManPed.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.sCodVen_Id := GCodVen_Id;

        fmAuxIni.sGUs_Id := GGUs_Id;

        fmAuxIni.sCodAtd_Id := GCodAtd_Id;

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           PedResCodCli.Value := fmAuxIni.CodCli;
           PedResCodVen.Value := fmAuxIni.CodVen;
           PedResUfeRes.Value := Trim(fmAuxIni.UffCli);

           EdCodCli.Text := IntToStr(PedResCodCli.Value);

           pnNomCli.Caption := fmAuxIni.NomCli;
           pnUfeRes.Caption := fmAuxIni.UffCli;

           if PedResCodVen.Value > 0 then
              EdCodVen.Text := IntToStr(PedResCodVen.Value)
           else
              EdCodVen.Text := '';

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if PedResCodCli.Value > 0 then
        SaiCliente
     else
        EdCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.sCodVen_Id := GCodVen_Id;

        fmAuxPsq.sGUs_Id := GGUs_Id;

        fmAuxPsq.sCodAtd_Id := GCodAtd_Id;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           PedResCodCli.Value := fmAuxPsq.CodCli;
           PedResCodVen.Value := fmAuxPsq.CodVen;
           PedResUfeRes.Value := Trim(fmAuxPsq.UffCli);

           EdCodCli.Text := IntToStr(PedResCodCli.Value);

           pnNomCli.Caption := fmAuxPsq.NomCli;
           pnUfeRes.Caption := fmAuxPsq.UffCli;

           if PedResCodVen.Value > 0 then
              EdCodVen.Text := IntToStr(PedResCodVen.Value)
           else
              EdCodVen.Text := '';

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedResCodCli.Value > 0 then
        SaiCliente
     else
        EdCodCli.SetFocus;

  end;
end;

procedure TfmManPed.EdCodPfaExit(Sender: TObject);
var
saida : boolean;
LocPfa : string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodVen.Focused) and (not EdDscCom.Focused) and
        (not EdCodCli.Focused) and (not EdDteRes.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedRes.State <> dsBrowse then begin

           if Trim( PedResCodPfa.Value ) <> '' then begin

              if PedResUfeRes.Value = 'EX' then
                 LocPfa := 'Importacao ou Exportacao'
              else
                 begin

                 if PedResUfeRes.Value <> GUfeEmp then
                    LocPfa := 'Outros Estados'
                 else
                    LocPfa := 'Mesmo Estado'

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstPfa.DscPfa From EstPfa '+
                           ' Where EstPfa.TipPfa = :TipPfa'+
                           '   and EstPfa.CodPfa = :CodPfa'+
                           '   and EstPfa.LocPfa = :LocPfa';

                   with Params do begin

                        Params[0].AsString  := PedResTipPfa.Value;
                        Params[1].AsString  := PedResCodPfa.Value;
                        Params[2].AsString  := LocPfa;

                   end;

                   Open;

              end;

              if Trim( quSql.FieldbyName('DscPfa').AsString ) <> '' then
                 pnNomPfa.Caption := quSql.FieldbyName('DscPfa').AsString
              else
                 begin

                 pnNomPfa.Caption := '';

                 fmsgErro('Padrão de Faturamento Informado não Encontrado',EdCodPfa);

              end;

              end
           else
              begin

              pnNomPfa.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodPfa);

           end;
        end;
     end;
  end;
end;

procedure TfmManPed.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
LocPfa : string;
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if PedResUfeRes.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if PedResUfeRes.Value <> GUfeEmp then
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

                  Params[0].AsString  := 'Saida';
                  Params[1].AsString  := LocPfa;

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           PedResCodPfa.Value := Trim(fmPsqPfa.CodPfa);

           pnNomPfa.Caption := fmPsqPfa.NomPfa;

           EdCodPfa.Text := PedResCodPfa.Value;

        end;

     finally

        FreeAndNil(fmPsqPfa);

     end;
         
     if Trim( PedResCodPfa.Value ) <> '' then begin

        if EdPrfRes.Enabled then
           EdPrfRes.SetFocus
        else
           EdCodPfa.SetFocus;
           
     end;
  end;

  if key = 113 then begin {F2 - Inteligente}

     if PedResUfeRes.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if PedResUfeRes.Value <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'P';

        fmAuxPsq.LocPfa := LocPfa;
        fmAuxPsq.TipPfa := 'Saida';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodPfa ) <> '' then begin

           PedResCodPfa.Value := Trim(fmAuxPsq.CodPfa);

           pnNomPfa.Caption := fmAuxPsq.NomPfa;

           EdCodPfa.Text := PedResCodPfa.Value;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedResCodPfa.Value ) <> '' then begin

        if EdPrfRes.Enabled then
           EdPrfRes.SetFocus
        else
           EdCodPfa.SetFocus;
           
     end;
  end;
end;

procedure TfmManPed.EdPrfREsExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodPfa.Focused) and (not EdCodVen.Focused) and (not EdDscCom.Focused) and
        (not EdCodCli.Focused) and (not EdDteRes.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedRes.State <> dsBrowse then begin

           if PedResPrfRes.Value = 0 then begin

              PedResDtfRes.Value := PedResDteRes.Value;
              
              EdDtfRes.Enabled := True;

              EdDtfRes.Font.Style := [];

              EdDtfRes.SetFocus;

              end
           else
              PedResDtfRes.Value := PedResDteRes.Value + PedResPrfRes.Value;
        end;
     end;
  end;
end;

procedure TfmManPed.EdDtfResExit(Sender: TObject);
begin
  inherited;
  if PedRes.State <> dsBrowse then begin

     if PedResDtfRes.Value >= PedResDteRes.Value then begin

        if PedResDtfRes.Value > PedResDteRes.Value then
           PedResPrfRes.Value := StrToInt(FloatToStr(PedResDtfRes.Value - PedResDteRes.Value))
        else
           PedResPrfRes.Value := 0;

        if PedResPrfRes.Value > 0 then
           EdPrfRes.Text := IntToStr(PedResPrfRes.Value)
        else
           EdPrfRes.Text := '0';

        end
     else
        fmsgErro('Data Prevista para o Faturamento Inferior a Data de Emissao do Pedido.',EdDtfRes);
  end;
end;

procedure TfmManPed.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;
     
     if fmPsqEmp.CodEmp > 0 then begin

        PedResCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(PedResCodEmp.Value);

        pnNomEmp.Caption := fmPsqEmp.NomEmp;

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
  
  EdCodEmp.SetFocus;

end;

procedure TfmManPed.bpsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.sCodVen_Id := GCodVen_Id;

     fmAuxIni.sGUs_Id := GGUs_Id;

     fmAuxIni.sCodAtd_Id := GCodAtd_Id;

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        PedResCodCli.Value := fmAuxIni.CodCli;
        PedResCodVen.Value := fmAuxIni.CodVen;
        PedResUfeRes.Value := Trim(fmAuxIni.UffCli);

        EdCodCli.Text := IntToStr(PedResCodCli.Value);

        EdUfeRes.Text := PedResUfeRes.Value;

        if PedResCodVen.Value > 0 then
           EdCodVen.Text := IntToStr(PedResCodVen.Value)
        else
           EdCodVen.Text := '';

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if PedResCodCli.Value > 0 then
     SaiCliente
  else
     EdCodCli.SetFocus;

end;

procedure TfmManPed.bpsqPfaClick(Sender: TObject);
var
LocPfa : string;
begin
  inherited;

  if PedResUfeRes.Value = 'EX' then
     LocPfa := 'Importacao ou Exportacao'
  else
     begin

     if PedResUfeRes.Value <> GUfeEmp then
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

               Params[0].AsString  := 'Saida';
               Params[1].AsString  := LocPfa;

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        PedResCodPfa.Value := Trim(fmPsqPfa.CodPfa);

        pnNomPfa.Caption := fmPsqPfa.NomPfa;

        EdCodPfa.Text := PedResCodPfa.Value;

     end;

  finally   

     FreeAndNil(fmPsqPfa);

  end;

  EdCodPfa.SetFocus;

end;

procedure TfmManPed.EdCodGruExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDtfRes.Focused) and (not EdPrfRes.Focused) and (not EdDteRes.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiGrupo;

     end
  else
     begin

     if (Tecla = 'UP') then begin

        if PedResQtiRes.Value > 0 then begin

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdVluRe2.Enabled := False;
           EdQtpRe2.Enabled := False;
           EdDscRe2.Enabled := False;
           EdDspRe2.Enabled := False;

           if PedRe2.State <> dsBrowse then
              PedRe2.CancelUpdates
           else
              begin

              if not PedRe2.Bof then PedRe2.Prior;

           end;

           grRe2.SetFocus;

           end
        else
           EdCodGru.SetFocus;
     end;
  end;
end;

procedure TfmManPed.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := '1';

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedRe2.State = dsBrowse then begin

              if Trim( PedRe2CodClp.Value ) <> '' then
                 PedRe2.Edit
              else
                 PedRe2.Append;

           end;

           PedRe2CodGru.Value := fmAuxIni.CodGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedRe2CodGru.Value ) <> '' then
        SaiGrupo
     else
        EdCodGru.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := '1';

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedRe2.State = dsBrowse then begin

              if Trim( PedRe2CodClp.Value ) <> '' then
                 PedRe2.Edit
              else
                 PedRe2.Append;

           end;

           PedRe2CodGru.Value := fmAuxPsq.CodGru;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedRe2CodGru.Value ) <> '' then
        SaiGrupo
     else
        EdCodGru.SetFocus;

  end;
end;

procedure TfmManPed.EdCodSubExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not EdCodGru.Focused then
        saida := True
     else
        saida := False;

     if saida then SaiSubGrupo;

  end;
end;

procedure TfmManPed.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( PedRe2CodGru.Value ) <> '' then fmAuxIni.CodGru := PedRe2CodGru.Value;

        fmAuxIni.CodClp := '1';

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedRe2.State = dsBrowse then begin

              if Trim( PedRe2CodClp.Value ) <> '' then
                 PedRe2.Edit
              else
                 PedRe2.Append;

           end;

           PedRe2CodGru.Value := fmAuxIni.CodGru;
           PedRe2CodSub.Value := fmAuxIni.CodSub;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedRe2CodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( PedRe2CodGru.Value ) <> '' then fmAuxPsq.CodGru := PedRe2CodGru.Value;

        fmAuxPsq.CodClp := '1';

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedRe2.State = dsBrowse then begin

              if Trim( PedRe2CodClp.Value ) <> '' then
                 PedRe2.Edit
              else
                 PedRe2.Append;

           end;

           PedRe2CodGru.Value := fmAuxPsq.CodGru;
           PedRe2CodSub.Value := fmAuxPsq.CodSub;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedRe2CodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;

  end;
end;

procedure TfmManPed.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdQtpRe2.Focused) or (EdVluRe2.Focused) or (EdDscRe2.Focused) or (grRe2.Focused) then begin

     if ( Trim(PedRe2CodClp.Value) <> '' ) and
        ( Trim(PedRe2CodGru.Value) <> '' ) and
        ( Trim(PedRe2CodSub.Value) <> '' ) and
        ( Trim(PedRe2CodPro.Value) <> '' ) then begin

        if key = 116 then begin // F5-Reservas //

           try

              fmPsqRes := TfmPsqRes.Create(Self);

              fmPsqRes.Panel3.Caption := ' '+PedRe2CodGru.Value+'.'+PedRe2CodSub.Value+'.'+PedRe2CodPro.Value+' - '+PedRe2DesRe2.Value;

              fmPsqRes.PedRes.Close;
              fmPsqRes.PedRes.Params[0].AsString := PedRe2CodClp.Value;
              fmPsqRes.PedRes.Params[1].AsString := PedRe2CodGru.Value;
              fmPsqRes.PedRes.Params[2].AsString := PedRe2CodSub.Value;
              fmPsqRes.PedRes.Params[3].AsString := PedRe2CodPro.Value;
              fmPsqRes.PedRes.Open;

              fmPsqRes.ShowModal;

           finally

              FreeAndNil(fmPsqRes);

           end;
        end;

        if key = 118 then begin // Comprado //

           try

              fmPsqCmp := TfmPsqCmp.Create(Self);

              fmPsqCmp.Label1.Caption := ' '+PedRe2CodGru.Value+'.'+PedRe2CodSub.Value+'.'+PedRe2CodPro.Value+' - '+PedRe2DesRe2.Value;

              fmPsqCmp.CmpPed.Close;
              fmPsqCmp.CmpPed.Params[0].AsString  := PedRe2CodClp.Value;
              fmPsqCmp.CmpPed.Params[1].AsString  := PedRe2CodGru.Value;
              fmPsqCmp.CmpPed.Params[2].AsString  := PedRe2CodSub.Value;
              fmPsqCmp.CmpPed.Params[3].AsString  := PedRe2CodPro.Value;
              fmPsqCmp.CmpPed.Open;

              fmPsqCmp.ShowModal;

           finally

              FreeAndNil(fmPsqCmp);

           end;
        end;
     end;
  end;

  if (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then begin

     if key = 114 then begin // F3 - Descrição //

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := PedRe2CodClp.Value;
           fmAuxIni.CodGru := PedRe2CodGru.Value;
           fmAuxIni.CodSub := PedRe2CodSub.Value;

           fmAuxIni.CliTab := PedResCliTab.Value;

           fmAuxIni.TipoPesq := 'I';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              PedRe2CodClp.Value := fmAuxIni.CodClp;
              PedRe2CodGru.Value := fmAuxIni.CodGru;
              PedRe2CodSub.Value := fmAuxIni.CodSub;
              PedRe2CodPro.Value := fmAuxIni.CodPro;

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if Trim( PedRe2CodPro.Value ) <> '' then
           SaiProduto
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;

     if key = 116 then begin // F5 - Referência //

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := PedRe2CodClp.Value;
           fmAuxIni.CodGru := PedRe2CodGru.Value;
           fmAuxIni.CodSub := PedRe2CodSub.Value;

           fmAuxIni.CliTab := PedResCliTab.Value;

           fmAuxIni.TipoPesq := 'R';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              PedRe2CodClp.Value := fmAuxIni.CodClp;
              PedRe2CodGru.Value := fmAuxIni.CodGru;
              PedRe2CodSub.Value := fmAuxIni.CodSub;
              PedRe2CodPro.Value := fmAuxIni.CodPro;

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if Trim( PedRe2CodPro.Value ) <> '' then
           SaiProduto
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;

     if key = 117 then begin // F6 - Inteligente/Descrição //

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := PedRe2CodClp.Value;
           fmAuxPsq.CodGru := PedRe2CodGru.Value;
           fmAuxPsq.CodSub := PedRe2CodSub.Value;

           fmAuxPsq.CliTab := PedResCliTab.Value;

           fmAuxPsq.TipoPesq := 'I';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 PedRe2CodClp.Value := fmAuxPsq.CodClp;
                 PedRe2CodGru.Value := fmAuxPsq.CodGru;
                 PedRe2CodSub.Value := fmAuxPsq.CodSub;
                 PedRe2CodPro.Value := fmAuxPsq.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;
        
        if Trim( PedRe2CodPro.Value ) <> '' then
           SaiProduto
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;

     if key = 118 then begin {F7 - Inteligente/Referência}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := PedRe2CodClp.Value;
           fmAuxPsq.CodGru := PedRe2CodGru.Value;
           fmAuxPsq.CodSub := PedRe2CodSub.Value;

           fmAuxPsq.TipoPesq := 'R';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              PedRe2CodClp.Value := fmAuxPsq.CodClp;
              PedRe2CodGru.Value := fmAuxPsq.CodGru;
              PedRe2CodSub.Value := fmAuxPsq.CodSub;
              PedRe2CodPro.Value := fmAuxPsq.CodPro;

           end;

        finally   

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( PedRe2CodPro.Value ) <> '' then
           SaiProduto
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;
  end;

  if key = 115 then begin // F4 - Estoque //

     if not Assigned(fmPsqEst) then begin
     
        try

           fmPsqEst := TfmPsqEst.Create(Self);

           fmPsqEst.sEntr := sEntr;

           if Trim( PedResCliTab.Value ) <> '' then fmPsqEst.CliTab := PedResCliTab.Value;

           fmPsqEst.sCodClp := '1';

           if ( Trim(PedRe2CodGru.Value) <> '' ) or
              ( Trim(PedRe2CodSub.Value) <> '' ) or
              ( Trim(PedRe2CodPro.Value) <> '' ) then begin

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
                           ' Where EstPro.CodClp = '+ QuotedStr('1') +
                           '   and EstPro.FlbPro = '+ QuotedStr(' ') ;

                   if Trim( PedRe2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(PedRe2CodGru.Value) ;
                   if Trim( PedRe2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(PedRe2CodSub.Value) ;
                   if Trim( PedRe2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '+ QuotedStr(PedRe2CodPro.Value) ;

                   Text := Text + ' Order by EstPro.DscPro';

                   Open;

              end;
           end;

           fmPsqEst.ShowModal;

           if sEntr = 'S' then begin

              if Trim( fmPsqEst.CodGru ) <> '' then begin

                 if EdCodGru.Enabled then begin

                    PedRe2CodClp.Value := fmPsqEst.CodClp;
                    PedRe2CodGru.Value := fmPsqEst.CodGru;
                    PedRe2CodSub.Value := fmPsqEst.CodSub;
                    PedRe2CodPro.Value := fmPsqEst.CodPro;

                 end;
              end;
           end;

        finally   

           FreeAndNil(fmPsqEst);

        end;

        if Trim( PedRe2CodPro.Value ) <> '' then begin

           if EdCodGru.Enabled then SaiProduto;

           end
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;   
  end;

  if key = 27 then begin

     if PedRes.State <> dsBrowse then
        Close
     else
        begin

        if PedRe2.State <> dsBrowse then PedRe2.CancelUpdates;

        if (EdCodGru.Enabled) or (EdCodSub.Enabled) or (EdCodPro.Enabled) or
           (EdQtpRe2.Enabled) or (EdVluRe2.Enabled) or (EdDscRe2.Enabled) then begin

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpRe2.Enabled := False;
           EdVluRe2.Enabled := False;
           EdDscRe2.Enabled := False;
           EdDspRe2.Enabled := False;
           EdDesRe2.Enabled := False;
           EdObsRe2.Enabled := False;
           EdCodUnd.Enabled := False;

           grRe2.SetFocus;

           end
        else
           begin

           if EdDesRe2.Enabled then begin

              EdDesRe2.Enabled := False;
              EdObsRe2.Enabled := False;

              pnDesRe2.Visible := True;
              pnObsRe2.Visible := True;

              grRe2.SetFocus;

              end
           else
              Close;
        end;
     end;
  end;

  if key = 121 then begin // F10-Ocorrencias do Rejeicao do Pedido //

     if PedResUsuRej.Value > 0 then begin

        try

           fmPsqRej := TfmPsqRej.Create(Self);

           fmPsqRej.PedRes.Close;
           fmPsqRej.PedRes.Params[0].AsInteger  := PedResCodEmp.Value;
           fmPsqRej.PedRes.Params[1].AsDateTime := PedResDteRes.Value;
           fmPsqRej.PedRes.Params[2].AsInteger  := PedResNumRes.Value;
           fmPsqRej.PedRes.Open;

           fmPsqRej.ShowModal;

        finally

           FreeAndNil(fmPsqRej);

        end;
     end;
  end;

  if key = 122 then begin // F11-Ocorrencias do Pedido //

     if PedResFlgOco.Value = '*' then begin

        try

           fmPsqOco := TfmPsqOco.Create(Self);

           fmPsqOco.PedOco.Close;
           fmPsqOco.PedOco.Params[0].AsInteger  := PedResCodEmp.Value;
           fmPsqOco.PedOco.Params[1].AsDateTime := PedResDteRes.Value;
           fmPsqOco.PedOco.Params[2].AsInteger  := PedResNumRes.Value;
           fmPsqOco.PedOco.Open;

           fmPsqOco.PedRe2.Close;
           fmPsqOco.PedRe2.Params[0].AsInteger  := PedResCodEmp.Value;
           fmPsqOco.PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
           fmPsqOco.PedRe2.Params[2].AsInteger  := PedResNumRes.Value;
           fmPsqOco.PedRe2.Open;

           fmPsqOco.ShowModal;

        finally

           FreeAndNil(fmPsqOco);

        end;
     end;
  end;

  if key = 123 then begin // F12-Finalizar Pedido //

     if PedResTotRes.Value > 0 then begin

        if grRe2.Focused then begin

           try

              fmManPe1 := TfmManPe1.Create(Self);
              fmManPe1.ShowModal;

           finally

              FreeAndNil(fmManPe1);

           end;

           if Finalizar = 'S' then begin

              Finalizar := 'N';

              EdCodEmp.Clear;
              EdDteRes.Clear;
              EdCodCli.Clear;
              EdCodVen.Clear;
              EdCodPfa.Clear;
              EdPrfRes.Clear;
              EdDtfRes.Clear;

              pnLimite.Caption := '0'+DecimalSeparator+'00';

              pnNumRes.Caption := '0';

              pnNomEmp.Caption := '';
              pnNomCli.Caption := '';
              pnCgcCli.Caption := '';
              pnNomVen.Caption := '';
              pnUfeRes.Caption := '';
              pnNomAtd.Caption := '';
              pnNomPfa.Caption := '';

              PedRes.Close;
              PedRes.Params[0].AsInteger  := GEmp_Id;
              PedRes.Params[1].AsDateTime := Date;
              PedRes.Params[2].AsInteger  := 0;
              PedRes.Open;

              PedRe2.Close;
              PedRe2.Params[0].AsInteger  := PedResCodEmp.Value;
              PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
              PedRe2.Params[2].AsInteger  := PedResNumRes.Value;
              PedRe2.Open;

              PedRes.Insert;

              if PedResCodEmp.Value > 0 then
                 EdDteRes.SetFocus
              else
                 EdCodEmp.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManPed.grRe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroRe2 : integer;
begin
  inherited;
  if key = 68 then begin // D - Mudar Descrição/Observações Sobre o Item //

     if PedRe2CodEmp.Value > 0 then begin

        pnDesRe2.Visible := False;
        pnObsRe2.Visible := False;

        EdDesRe2.Enabled := True;
        EdObsRe2.Enabled := True;

        PedRe2.Edit;

        EdDesRe2.SetFocus;

     end;
  end;

  if key = 13 then begin // Tecla - ENTER //

     if PedRe2CodEmp.Value > 0 then begin

        PedRe2.Edit;

        EdQtpRe2.Enabled := True;
        EdVluRe2.Enabled := True;
        EdDscRe2.Enabled := True;

        EdQtpRe2.SetFocus;

     end;
  end;

  if key = 40 then begin // Tecla - Seta para Baixo //

     if PedRe2NroRe2.Value = PedResQtiRes.Value then PedRe2.Append;

  end;

  if key = 46 then begin // Tecla - DEL //

     if Trim( PedRe2CodClp.Value ) <> '' then begin

        NroRe2 := PedRe2NroRe2.Value;

        PedRe2.Delete;

        with PedRe2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedRe2.State <> dsBrowse then PedRe2.CancelUpdates;

                grRe2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedRe2.Close;
        PedRe2.Open;

        PedRes.Close;
        PedRes.Open;

        if NroRe2 < PedResQtiRes.Value then
           PedRe2.Locate('CodEmp;DteRes;NumRes;NroRe2',VarArrayOf([PedRe2CodEmp.Value,PedRe2DteRes.Value,PedRe2NumRes.Value,NroRe2]),[LoPartialKey])
        else
           begin

           if PedResQtiRes.Value = 0 then
              PedRe2.Append
           else
              PedRe2.Last;

        end;
     end;
  end;
end;

procedure TfmManPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja Realmente Abandonar o Pedido?','O') then begin

        if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

        if PedRe2.State <> dsBrowse then PedRe2.CancelUpdates;

        if PedResNumRes.Value > 0 then begin

           with fmManRes.PedRes,SQL do begin

                Close;
                Text := fmManRes.sBase +
                        ' Where PedRes.CodEmp = :CodEmp'+
                        '   and PedRes.DteRes = :DteRes'+
                        '   and PedRes.NumRes = :NumRes';

                with Params do begin

                     Params[0].AsInteger  := PedResCodEmp.Value;
                     Params[1].AsDateTime := PedResDteRes.Value;
                     Params[2].AsInteger  := PedResNumRes.Value;

                end;

                Open;

           end;

           fmManRes.PedRe2.Close;
           fmManRes.PedRe2.Open;

           end
        else
           begin

           fmManRes.PedRes.Close;
           fmManRes.PedRes.Open;

           fmManRes.PedRe2.Close;
           fmManRes.PedRe2.Open;

           if fmManRes.CodEmp > 0 then fmManRes.PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([fmManRes.CodEmp,fmManRes.DteRes,fmManRes.NumRes]), [loPartialKey]);

        end;

        Action := CaFree;

        end
     else
        begin

        Abort;

        if PedResNumRes.Value = Null then PedRes.Insert;

     end;

     end
  else
     begin

     fmManRes.PedRes.Close;
     fmManRes.PedRes.Open;

     fmManRes.PedRe2.Close;
     fmManRes.PedRe2.Open;

     if fmManRes.CodEmp > 0 then fmManRes.PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([fmManRes.CodEmp,fmManRes.DteRes,fmManRes.NumRes]), [loPartialKey]);

     Action := CaFree;

  end;
end;

procedure TfmManPed.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if GFlgAce = 'Nao' then begin
     
        if PedResSitRes.Value = 'Faturado' then fMsg('Operação não Pode ser Realizada. Pedido Faturado.','E')

        else if PedResSitRes.Value = 'Parcialmente Faturado' then fMsg('Operação não Pode ser Realizada. Pedido Parcialmente Faturado.','E')

        else if PedResSitRes.Value = 'Aguardando Liberacao do Depto Comercial' then fMsg('Operação não Pode ser Realizada. Pedido Aguardando Liberação do Depto Comercial.','E')

        else if PedResSitRes.Value = 'Aguardando Separacao dos Itens a Faturar' then fMsg('Operação não Pode ser Realizada. Pedido em Processo de Separação dos Itens para Faturamento.','E')

        else if PedResSitRes.Value = 'Pronto para Faturar' then fMsg('Operação não Pode ser Realizada. Pedido Pronto para Faturar.','E')

        else if PedResSitRes.Value = 'Aguardando Separacao de Estoque' then fMsg('Operação não Pode ser Realizada. Pedido Aguardando Separação de Estoque.','E')

        else if PedResSitRes.Value = 'Aguardando Liberacao para Faturamento' then fMsg('Operação não Pode ser Realizada. Pedido Aguardando Liberacao para Faturamento.','E')

        else if PedResSitRes.Value = 'Cancelado' then fMsg('Operação não Pode ser Realizada. Pedido Cancelado','E')

        else if PedResSitRes.Value = 'Faturado com Saldo nao Atendido' then fMsg('Operação não Pode ser Realizada. Pedido Faturado com Saldo que não Será Atendido.','E')

        else if PedResSitRes.Value = 'Aguardando Confirmacao do Pagamento' then fMsg('Operação não Pode ser Realizada. Pedido Aguardando Confirmação do Pagamento.','E')

        else if PedResSitRes.Value = 'Aguardando Periodo de Programacao' then fMsg('Operação não Pode ser Realizada. Pedido Aguardando Periodo de Programação.','E');

        end
     else
        begin

        if PedResSitRes.Value = 'Cancelado' then fMsg('Operação não Pode ser Realizada. Pedido Cancelado.','E')

        else if PedResSitRes.Value = 'Aguardando Separacao dos Itens a Faturar' then fMsg('Operação não Pode ser Realizada. Pedido em Processo de Separação dos Itens para Faturamento.','E')

        else if PedResSitRes.Value = 'Pronto para Faturar' then fMsg('Operação não Pode ser Realizada. Pedido Pronto para Faturar.','E')

        else if PedResSitRes.Value = 'Aguardando Separacao de Estoque' then fMsg('Operação não Pode ser Realizada. Pedido Aguardando Separação de Estoque.','E')

        else if PedResSitRes.Value = 'Aguardando Liberacao para Faturamento' then fMsg('Operação não Pode ser Realizada. Pedido Aguardando Liberacao para Faturamento.','E')

        else if PedResSitRes.Value = 'Aguardando Confirmacao do Pagamento' then fMsg('Operação não Pode ser Realizada. Pedido Aguardando Confirmação do Pagamento.','E')

        else if PedResSitRes.Value = 'Faturado' then fMsg('Operação não Pode ser Realizada. Pedido Concluido.','E')

        else if PedResSitRes.Value = 'Parcialmente Faturado' then fMsg('Operação não Pode ser Realizada. Pedido Concluido.','E')

        else if PedResSitRes.Value = 'Faturado com Saldo nao Atendido' then fMsg('Operação não Pode ser Realizada. Pedido Concluido.','E')

        else if PedResSitRes.Value = 'Aguardando Periodo de Programacao' then fMsg('Operação não Pode ser Realizada. Pedido Aguardando Periodo de Programação.','E');

     end;

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManPed.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManPed.Panel1Exit(Sender: TObject);
var
  SeqRes,Status : string;
begin
  inherited;
  if pSaida = 'Sim' then begin
  
     if PedRes.State <> dsBrowse then begin

        PedResDtfRes.Value := PedResDteRes.Value + PedResPrfRes.Value;

        EdDtfRes.Date := PedResDtfRes.Value;

        if PedResDteRes.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdDteRes);

        Status := 'dsEdit';

        if PedRes.State = dsInsert then begin

           Status := 'dsInsert';

           if PedResCodCli.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodCli);

           if PedResCodVen.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodVen);

           if Trim( PedResCodPfa.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodPfa);

           if Trim( PedResUfeRes.Value ) = '' then fmsgErro('Endereço de Faturamento do Cliente Esta Incompleto.',EdCodCli);

           Randomize;
           SeqRes := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                     copy(TimeToStr(Time),1,2)+
                     copy(TimeToStr(Time),4,2)+
                     copy(TimeToStr(Time),7,2)+
                     FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                     FNumZeros(Trim( IntToStr(Random(50000)) ),5);

           PedResSeqRes.Value := SeqRes;

           end
        else
           SeqRes := PedResSeqRes.Value;

        if Trim( SeqRes ) = '' then begin

           Randomize;
           SeqRes := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                     copy(TimeToStr(Time),1,2)+
                     copy(TimeToStr(Time),4,2)+
                     copy(TimeToStr(Time),7,2)+
                     FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                     FNumZeros(Trim( IntToStr(Random(50000)) ),5);

           PedResSeqRes.Value := SeqRes;

        end;

        CodEmp := PedResCodEmp.Value;
        DteRes := PedResDteRes.Value;

        with PedRes do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedRes.State = dsBrowse then PedRes.Edit;

                if EdCodEmp.Enabled then
                   EdCodEmp.SetFocus
                else
                   EdDteRes.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select PedRes.CodEmp,PedRes.DteRes,PedRes.NumRes From PedRes'+
                     ' Where PedRes.CodEmp = :CodEmp'+
                     '   and PedRes.DteRes = :DteRes'+
                     '   and PedRes.SeqRes = :SeqRes';

             with Params do begin

                  Params[0].AsInteger  := CodEmp;
                  Params[1].AsDateTime := DteRes;
                  Params[2].AsString   := SeqRes;

             end;

             Open;

        end;

        PedRes.Close;
        PedRes.Params[0].AsInteger  := quSQL.FieldbyName('CodEmp').AsInteger;
        PedRes.Params[1].AsDateTime := quSQL.FieldbyName('DteRes').AsDateTime;
        PedRes.Params[2].AsInteger  := quSQL.FieldbyName('NumRes').AsInteger;
        PedRes.Open;

        PedRe2.Close;
        PedRe2.Params[0].AsInteger  := PedResCodEmp.Value;
        PedRe2.Params[1].AsDateTime := PedResDteRes.Value;
        PedRe2.Params[2].AsInteger  := PedResNumRes.Value;
        PedRe2.Open;

        if Status = 'dsInsert' then begin

           with fmManRes.PedRes,SQL do begin

                Close;
                Text := fmManRes.sBase +
                        ' Where PedRes.CodEmp = :CodEmp'+
                        '   and PedRes.DteRes = :DteRes'+
                        '   and PedRes.NumRes = :NumRes';

                with Params do begin

                     Params[0].AsInteger  := PedResCodEmp.Value;
                     Params[1].AsDateTime := PedResDteRes.Value;
                     Params[2].AsInteger  := PedResNumRes.Value;

                end;

                Open;

           end;
        end;

        qticms := 1;

        if GUfeEmp <> PedResUfeRes.Value then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg from GerIcm Where GerIcm.SigUfe = '+ QuotedStr(PedResUfeRes.Value);
                Open;

                qticms := FieldbyName('QtdReg').AsInteger;

           end;
        end;

        EdCodEmp.Enabled := False;
        EdDteRes.Enabled := False;
        EdCodCli.Enabled := False;
        EdCodVen.Enabled := False;
        EdPedAnt.Enabled := False;
        EdCodPfa.Enabled := False;
        EdPrfRes.Enabled := False;
        EdDtfRes.Enabled := False;
        EdDscCom.Enabled := False;

        EdCodEmp.Font.Style := [fsBold];
        EdDteRes.Font.Style := [fsBold];
        EdCodCli.Font.Style := [fsBold];
        EdCodVen.Font.Style := [fsBold];
        EdPedAnt.Font.Style := [fsBold];
        EdCodPfa.Font.Style := [fsBold];
        EdPrfRes.Font.Style := [fsBold];
        EdDtfRes.Font.Style := [fsBold];
        EdDscCom.Font.Style := [fsBold];

        bPsqEmp.Enabled := False;
        bPsqCli.Enabled := False;
        bPsqVen.Enabled := False;
        bPsqPfa.Enabled := False;

        if PedResQtiRes.Value = 0 then
           PedRe2.Append
        else
           grRe2.SetFocus;

     end;
  end;   
end;

procedure TfmManPed.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPed := nil;
end;

procedure TfmManPed.Panel2Exit(Sender: TObject);
var
NroRe2 : integer;
begin
  inherited;
  if PedRe2.State <> dsBrowse then begin

     if EdDesRe2.Enabled then begin

        if Trim( PedRe2DesRe2.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio.',EdDesRe2);

     end;
     
     if PedRe2QtpRe2.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdQtpRe2);

     if PedRe2VluRe2.Value = 0 then begin

        if EdVluRe2.Enabled then
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdVluRe2)
        else
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdQtpRe2);

     end;

     if PedRe2.State = dsInsert then begin

        with PedRe2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedRe2.State = dsBrowse then PedRe2.Edit;

                EdCodGru.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedRe2.Close;
        PedRe2.Open;

        PedRes.Close;
        PedRes.Open;

        PedRe2.Append;

        EdCodGru.SetFocus;

        end
     else
        begin

        NroRe2 := PedRe2NroRe2.Value;

        with PedRe2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedRe2.State = dsBrowse then PedRe2.Edit;

                EdQtpRe2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedRe2.Close;
        PedRe2.Open;

        PedRes.Close;
        PedRes.Open;

        PedRe2.Locate('CodEmp;DteRes;NumRes;NroRe2',VarArrayOf([PedRe2CodEmp.Value,PedRe2DteRes.Value,PedRe2NumRes.Value,NroRe2]),[LoPartialKey]);

        if PedRe2NroRe2.Value = PedResQtiRes.Value then
           PedRe2.Append
        else
           begin

           PedRe2.Next;

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpRe2.Enabled := False;
           EdVluRe2.Enabled := False;
           EdDscRe2.Enabled := False;
           EdDspRe2.Enabled := False;
           EdDesRe2.Enabled := False;
           EdObsRe2.Enabled := False;
           EdCodUnd.Enabled := False;

           pnDesRe2.Visible := True;
           pnObsRe2.Visible := True;

           grRe2.SetFocus;

        end;
     end;

     end
  else
     begin

     EdCodGru.Enabled := False;
     EdCodSub.Enabled := False;
     EdCodPro.Enabled := False;
     EdQtpRe2.Enabled := False;
     EdVluRe2.Enabled := False;
     EdDscRe2.Enabled := False;
     EdDspRe2.Enabled := False;

     grRe2.SetFocus;

  end;
end;

procedure TfmManPed.EdCodProExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodGru.Focused) and (not EdCodSub.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiProduto;

  end;
end;

procedure TfmManPed.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := PedRe2CodClp.Value;
        fmAuxIni.CodGru := PedRe2CodGru.Value;
        fmAuxIni.CodSub := PedRe2CodSub.Value;

        fmAuxIni.CliTab := PedResCliTab.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if EdCodGru.Enabled then begin

              PedRe2CodClp.Value := fmAuxIni.CodClp;
              PedRe2CodGru.Value := fmAuxIni.CodGru;
              PedRe2CodSub.Value := fmAuxIni.CodSub;
              PedRe2CodPro.Value := fmAuxIni.CodPro;

           end;
        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedRe2CodPro.Value ) <> '' then
        SaiProduto
     else
        EdCodPro.SetFocus;
     
  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := '1';

        if Trim( PedRe2CodGru.Value ) <> '' then fmAuxPsq.CodGru := PedRe2CodGru.Value;
        if Trim( PedRe2CodSub.Value ) <> '' then fmAuxPsq.CodSub := PedRe2CodSub.Value;

        fmAuxPsq.CliTab := PedResCliTab.Value;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedRe2.State = dsBrowse then begin

              if Trim( PedRe2CodClp.Value ) <> '' then
                 PedRe2.Edit
              else
                 PedRe2.Append;

           end;

           PedRe2CodClp.Value := fmAuxPsq.CodClp;
           PedRe2CodGru.Value := fmAuxPsq.CodGru;
           PedRe2CodSub.Value := fmAuxPsq.CodSub;
           PedRe2CodPro.Value := fmAuxPsq.CodPro;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedRe2CodPro.Value ) <> '' then
        SaiProduto
     else
        EdCodPro.SetFocus;   
     
  end;
end;

procedure TfmManPed.EdQtpRe2Exit(Sender: TObject);
var
Saida : boolean;
FlgAce : string;
PrecoLiquido,SldAtu : real;
SeqIni,SeqLin,CodEmp : integer;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        pnEstoque.Visible := False;

        if PedRe2.State <> dsBrowse then begin

           if PedRe2QtpRe2.Value > 0 then begin

              FlgAce := 'Nao';

              if PedResLanEst.Value = 'Sim' then begin

                 if PedResCodFil.Value > 0 then
                    CodEmp := PedResCodFil.Value
                 else
                    CodEmp := PedResCodEmp.Value;

                 end
              else
                 CodEmp := PedResCodEmp.Value;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstIte.CodEmp,'+
                           '        EstIte.QtdIte,'+
                           '        EstIte.QtrIte,'+
                           '        EstIte.QtdRma,'+
                           '        EstIte.QtaIte,'+
                           '        EstIte.Vb1Ite,'+
                           '        EstIte.Ds1Ite,'+
                           '        EstIte.Vb2Ite,'+
                           '        EstIte.Ds2Ite,'+
                           '        EstIte.Vb3Ite,'+
                           '        EstIte.Ds3Ite,'+
                           '        EstIte.Vb4Ite,'+
                           '        EstIte.Ds4Ite,'+
                           '        EstIte.Vb5Ite,'+
                           '        EstIte.Ds5Ite,'+
                           '        EstIte.VpfIte '+
                           ' From EstIte'+
                           ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                           '   and EstIte.CodClp = '+ QuotedStr(PedRe2CodClp.Value) +
                           '   and EstIte.CodGru = '+ QuotedStr(PedRe2CodGru.Value) +
                           '   and EstIte.CodSub = '+ QuotedStr(PedRe2CodSub.Value) +
                           '   and EstIte.CodPro = '+ QuotedStr(PedRe2CodPro.Value) ;
                   Open;

              end;

              if Trim(GVerEst) = 'Sim' then begin

                 if quSql.FieldbyName('CodEmp').AsInteger > 0 then begin

                    SldAtu := fRound(quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat),4);

                    if PedRe2QtpRe2.Value > SldAtu then begin

                       if fMsg('Quantidade Informada para o Item Acima do Estoque Disponivel. Confirma Lançamento ?','O') then FlgAce := 'Sim';

                       end
                    else
                       FlgAce := 'Sim';

                    end
                 else
                    fmsgErro('Item Informado não Encontrado na Empresa.',EdCodPro);

                 end
              else
                 FlgAce := 'Sim';

              if FlgAce = 'Sim' then begin   

                 if (PedResModPfa.Value <> 'Transferencias') and (PedResModPfa.Value <> 'Remessas') and (PedResModPfa.Value <> 'Consumo') then begin

                    try

                       fmPsqTab := TfmPsqTab.Create(Self);

                       if (PedResCliTab.Value = '98 Qualquer das Tabelas') or (PedResCliTab.Value = '99 Tabela Livre') or (Trim(PedResCliTab.Value) = '')then begin

                          SeqLin := 0;
                          SeqIni := 1;

                          while SeqIni <= 5 do begin

                                if quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then begin

                                   PrecoLiquido := quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat;

                                   if quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then
                                      PrecoLiquido := PrecoLiquido - ((quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat * PrecoLiquido)/100);

                                   fmPsqTab.StrTab.Cells[0,SeqLin] := 'TABELA '+ fNumZeros(IntToStr(SeqIni),2);
                                   fmPsqTab.StrTab.Cells[1,SeqLin] := PreString(FormatFloat('###,###,##0.0000',quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat),26);
                                   fmPsqTab.StrTab.Cells[2,SeqLin] := PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat),26)+' %';
                                   fmPsqTab.StrTab.Cells[3,SeqLin] := PreString(FormatFloat('###,###,##0.00',PrecoLiquido),26);

                                   Inc(SeqLin);

                                end;

                                Inc(SeqIni);

                          end;

                          end
                       else
                          begin

                          SeqLin := 0;
                          SeqIni := 1;

                          while SeqIni <= StrToInt(copy(PedResCliTab.Value,1,2)) do begin

                                if quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then begin

                                   PrecoLiquido := quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat;

                                   if quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then
                                      PrecoLiquido := PrecoLiquido - ((quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat * PrecoLiquido)/100);

                                   fmPsqTab.StrTab.Cells[0,SeqLin] := 'TABELA '+ fNumZeros(IntToStr(SeqIni),2);
                                   fmPsqTab.StrTab.Cells[1,SeqLin] := PreString(FormatFloat('###,###,##0.0000',quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat),26);
                                   fmPsqTab.StrTab.Cells[2,SeqLin] := PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat),26)+' %';
                                   fmPsqTab.StrTab.Cells[3,SeqLin] := PreString(FormatFloat('###,###,##0.00',PrecoLiquido),26);
                                
                                   Inc(SeqLin);

                                end;

                                Inc(SeqIni);

                          end;
                       end;

                       fmPsqTab.StrTab.RowCount := SeqLin;
                    
                       fmPsqTab.ShowModal;

                       PedRe2TabPrc.Value := fmPsqTab.TabPrc;

                    finally   

                       FreeAndNil(fmPsqTab);

                    end;

                    end
                 else
                    PedRe2TabPrc.Value := 3;
              
                 if PedRe2TabPrc.Value > 0 then begin

                    if (PedResModPfa.Value <> 'Transferencias') and (PedResModPfa.Value <> 'Remessas') and (PedResModPfa.Value <> 'Consumo') then
                       PedRe2VluRe2.Value := quSQL.FieldbyName('Vb'+Trim(IntToStr(PedRe2TabPrc.Value))+'Ite').AsFloat
                    else
                       PedRe2VluRe2.Value := quSQL.FieldbyName('VpfIte').AsFloat;

                    if PedRe2VluRe2.Value <> AntVluRe2 then begin

                       AntVluRe2 := PedRe2VluRe2.Value;

                       PedRe2VlqRe2.Value := PedRe2VluRe2.Value;

                       if PedRe2DscRe2.Value > 0 then begin

                          PedRe2VdsRe2.Value := fRound((PedRe2DscRe2.Value * PedRe2VlqRe2.Value)/100,4);

                          PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdsRe2.Value,4);

                       end;

                       if PedRe2DscCom.Value > 0 then begin

                          PedRe2VdsCom.Value := fRound((PedRe2DscCom.Value * PedRe2VlqRe2.Value)/100,4);

                          PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdsCom.Value,4);

                       end;

                       if PedRe2DspRe2.Value > 0 then begin

                          PedRe2VdpRe2.Value := fRound((PedRe2DspRe2.Value * PedRe2VlqRe2.Value)/100,4);

                          PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdpRe2.Value,4);

                       end;

                       if PedRe2PacRe2.Value > 0 then begin

                          PedRe2VacRe2.Value := fRound((PedRe2PacRe2.Value * PedRe2VlqRe2.Value)/100,4);

                          PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VacRe2.Value,4);

                       end;
                    end;

                    PedRe2TotRe2.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);

                    if EdVluRe2.Enabled then
                       EdVluRe2.SetFocus
                    else
                       begin

                       if PedRe2VluRe2.Value = 0 then fmsgErro('Item sem Preço Únitario Informado.',EdQtpRe2);

                    end;

                    end
                 else
                    fmsgErro('Tabela de Preço não Informada para o Item.',EdQtpRe2);

                 end
              else
                 EdQtpRe2.SetFocus;   
              
              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio.',EdQtpRe2);
        end;
     end;
  end;
end;

procedure TfmManPed.EdVluRe2Exit(Sender: TObject);
var
ret,FlgAce : string;
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdQtpRe2.Focused) and (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedRe2.State <> dsBrowse then begin

           if PedRe2VluRe2.Value > 0 then begin

              if PedRe2VluRe2.Value <> AntVluRe2 then begin

                 FlgAce := 'Nao';

                 if PedRe2VluRe2.Value > AntVluRe2 then begin

                    if fMsg('Valor Informado para o Item Acima do Valor Praticado de Tabela. Confirma Valor Unitário ?','O') then FlgAce := 'Sim';

                    end
                 else
                    FlgAce := 'Sim';

                 if FlgAce = 'Sim' then begin

                    PedRe2DscRe2.Value := 0;
                    PedRe2VdsRe2.Value := 0;
                    PedRe2PacRe2.Value := 0;
                    PedRe2VacRe2.Value := 0;

                    if AntVluRe2 > 0 then begin

                       if PedRe2VluRe2.Value > AntVluRe2 then begin

                          PedRe2VacRe2.Value := fRound(PedRe2VluRe2.Value - AntVluRe2,4);

                          if AntVluRe2 > 0 then
                             PedRe2PacRe2.Value := fRound((100 * PedRe2VacRe2.Value)/AntVluRe2,2)
                          else
                             PedRe2PacRe2.Value := 100;

                          end
                       else
                          begin

                          if PedRe2VluRe2.Value < AntVluRe2 then begin

                             PedRe2VdsRe2.Value := fRound(AntVluRe2 - PedRe2VluRe2.Value,4);

                             PedRe2DscRe2.Value := fRound((100 * PedRe2VdsRe2.Value)/AntVluRe2,2);

                          end;
                       end;
                    end;

                    AntDscRe2 := PedRe2DscRe2.Value;

                    PedRe2VlqRe2.Value := PedRe2VluRe2.Value;

                    if PedRe2DscCom.Value > 0 then begin

                       PedRe2VdsCom.Value := fRound((PedRe2DscCom.Value * PedRe2VlqRe2.Value)/100,4);

                       PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdsCom.Value,4);

                    end;

                    if PedRe2DspRe2.Value > 0 then begin

                       PedRe2VdpRe2.Value := fRound((PedRe2DspRe2.Value * PedRe2VlqRe2.Value)/100,4);

                       PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdpRe2.Value,4);

                    end;

                    if AntVluRe2 > 0 then PedRe2VluRe2.Value := AntVluRe2;

                    PedRe2TotRe2.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);

                    PedRe2TotVen.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);

                    PedRe2TotCst.Value := 0;
                    PedRe2TotRen.Value := 0;

                    if PedRe2VcsRe2.Value > 0 then begin

                       PedRe2TotCst.Value := fRound(PedRe2VcsRe2.Value * PedRe2QtpRe2.Value,2);

                       if PedRe2TotCst.Value > 0 then PedRe2TotRen.Value := fRound(((PedRe2TotRe2.Value - PedRe2TotCst.Value) * 100)/PedRe2TotCst.Value,2);

                    end;

                    if (qticms > 1) and (GUfeEmp <> PedResUfeRes.Value) then begin

                       if (PedResCodTcl.Value <> 1) and (PedResCodTcl.Value <> 3) and (PedResCodTcl.Value <> 5) then begin

                          ret := 'N';

                          try

                             fmPsqIcm := TfmPsqIcm.Create(Self);

                             with fmPsqIcm.GerIcm,SQL do begin

                                  Close;
                                  Text := ' Select * From GerIcm Where GerIcm.SigUfe = '+ QuotedStr(PedResUfeRes.Value);
                                  Open;

                             end;

                             fmPsqIcm.ShowModal;

                             ret := fmPsqIcm.ret;

                             PedRe2IcmRe2.Value := fmPsqIcm.Icms;

                          finally

                             FreeAndNil(fmPsqIcm);

                          end;

                          if ret = 'N' then EdVluRe2.SetFocus;
                          
                       end;
                    end;

                    end
                 else
                    EdVluRe2.SetFocus;
                       
              end;

              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio',EdVluRe2);
        end;
     end;
  end;
end;

procedure TfmManPed.EdDscRe2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdVluRe2.Focused) and (not EdQtpRe2.Focused) and
        (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedRe2.State <> dsBrowse then begin

           if PedRe2DscRe2.Value <> AntDscRe2 then begin

              if PedRe2DscRe2.Value = 0 then PedRe2VdsRe2.Value := 0;

              PedRe2VlqRe2.Value := PedRe2VluRe2.Value;

              if PedRe2DscRe2.Value > 0 then begin

                 PedRe2VdsRe2.Value := fRound((PedRe2DscRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdsRe2.Value,4);

                 end
              else
                 PedRe2VdsRe2.Value := 0;
                 
              if PedRe2DscCom.Value > 0 then begin

                 PedRe2VdsCom.Value := fRound((PedRe2DscCom.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdsCom.Value,4);

                 end
              else
                 PedRe2VdsCom.Value := 0;
                 
              if PedRe2DspRe2.Value > 0 then begin

                 PedRe2VdpRe2.Value := fRound((PedRe2DspRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdpRe2.Value,4);

                 end
              else
                 PedRe2VdpRe2.Value := 0;
                 
              if PedRe2PacRe2.Value > 0 then begin

                 PedRe2VacRe2.Value := fRound((PedRe2PacRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VacRe2.Value,4);

                 end
              else
                 PedRe2VacRe2.Value := 0;
                 
              AntDscRe2 := PedRe2DscRe2.Value;

              PedRe2TotRe2.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);
              PedRe2TotVen.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);

              PedRe2TotCst.Value := 0;
              PedRe2TotRen.Value := 0;

              if PedRe2VcsRe2.Value > 0 then begin

                 PedRe2TotCst.Value := fRound(PedRe2VcsRe2.Value * PedRe2QtpRe2.Value,2);

                 if PedRe2TotCst.Value > 0 then PedRe2TotRen.Value := fRound(((PedRe2TotRe2.Value - PedRe2TotCst.Value) * 100)/PedRe2TotCst.Value,2);

              end;
           end;
        end;
     end;
  end;
end;

procedure TfmManPed.EdDesRe2Exit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then fmManPed.Panel3.OnExit(Sender);
end;

procedure TfmManPed.EdDspRe2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDscRe2.Focused) and (not EdVluRe2.Focused) and (not EdQtpRe2.Focused) and
        (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedRe2.State <> dsBrowse then begin

           if PedRe2DspRe2.Value <> AntDspRe2 then begin

              if PedRe2DspRe2.Value = 0 then PedRe2VdpRe2.Value := 0;

              PedRe2VlqRe2.Value := PedRe2VluRe2.Value;

              if PedRe2DscRe2.Value > 0 then begin

                 PedRe2VdsRe2.Value := fRound((PedRe2DscRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdsRe2.Value,4);

                 end
              else
                 PedRe2VdsRe2.Value := 0;

              if PedRe2DscCom.Value > 0 then begin

                 PedRe2VdsCom.Value := fRound((PedRe2DscCom.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdsCom.Value,4);

                 end
              else
                 PedRe2VdsCom.Value := 0;
                 
              if PedRe2DspRe2.Value > 0 then begin

                 PedRe2VdpRe2.Value := fRound((PedRe2DspRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdpRe2.Value,4);

                 end
              else
                 PedRe2VdpRe2.Value := 0;

              if PedRe2PacRe2.Value > 0 then begin

                 PedRe2VacRe2.Value := fRound((PedRe2PacRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VacRe2.Value,4);

                 end
              else
                 PedRe2VacRe2.Value := 0;
                 
              AntDspRe2 := PedRe2DspRe2.Value;

              PedRe2TotRe2.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);
              PedRe2TotVen.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);

              PedRe2TotCst.Value := 0;
              PedRe2TotRen.Value := 0;

              if PedRe2VcsRe2.Value > 0 then begin

                 PedRe2TotCst.Value := fRound(PedRe2VcsRe2.Value * PedRe2QtpRe2.Value,2);

                 if PedRe2TotCst.Value > 0 then PedRe2TotRen.Value := fRound(((PedRe2TotRe2.Value - PedRe2TotCst.Value) * 100)/PedRe2TotCst.Value,2);

              end;
           end;
        end;
     end;
  end;
end;

procedure TfmManPed.SaiGrupo;
begin
  if Trim( PedRe2CodGru.Value ) <> '' then begin

     if PedRe2.State <> dsBrowse then begin

        PedRe2CodGru.Value := FNumZeros(PedRe2CodGru.Value,3);

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg From EstGru Where EstGru.CodGru = '+ QuotedStr(PedRe2CodGru.Value);
             Open;

        end;

        if quSql.FieldbyName('QtdReg').AsInteger = 0 then
           fmsgErro('Grupo Informado não Encontrado',EdCodGru)
        else
           begin

           if EdQtpRe2.Focused then begin

              if Trim( PedRe2CodSub.Value ) = '' then EdCodSub.SetFocus;
              if Trim( PedRe2CodPro.Value ) = '' then EdCodPro.SetFocus;

              end
           else
              EdCodSub.SetFocus;
              
        end;
        
        end
     else
        begin

        if EdCodGru.Enabled then begin

           if Trim( PedRe2CodGru.Value ) = '' then fmsgErro('Grupo Informado não Encontrado',EdCodGru);

        end;
     end;

     end
  else
     fmsgErro('Grupo Informado não Encontrado',EdCodGru);
     
end;

procedure TfmManPed.SaiSubGrupo;
begin
  if Trim( PedRe2CodSub.Value ) <> '' then begin

     if PedRe2.State <> dsBrowse then begin

        PedRe2CodSub.Value := FNumZeros(PedRe2CodSub.Value,4);

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg From EstSub'+
                     ' Where EstSub.CodGru = '+ QuotedStr(PedRe2CodGru.Value) +
                     '   and EstSub.CodSub = '+ QuotedStr(PedRe2CodSub.Value) ;
             Open;

        end;

        if quSQL.FieldbyName('QtdReg').AsInteger = 0 then
           fmsgErro('Grupo e Sub-Grupo Informado não Encontrado.',EdCodGru)
        else
           begin

           if EdQtpRe2.Focused then begin

              if Trim( PedRe2CodPro.Value ) = '' then EdCodPro.SetFocus;

              end
           else
              EdCodPro.SetFocus;
              
        end;

        end
     else
        begin

        if EdCodSub.Enabled then begin

           if Trim( PedRe2CodSub.Value ) = '' then fmsgErro('Sub-Grupo Informado não Encontrado.',EdCodSub);

        end;
     end;

     end
  else
     fmsgErro('Sub-Grupo Informado não Encontrado.',EdCodSub);
     
end;

procedure TfmManPed.SaiProduto;
begin
  if Trim( PedRe2CodPro.Value ) <> '' then begin

     if PedRe2.State <> dsBrowse then begin

        PedRe2CodPro.Value := FNumStrZero(PedRe2CodPro.Value);

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg From PedRe2 '+
                     ' Where PedRe2.CodEmp = '+ QuotedStr(IntToStr(PedRe2CodEmp.Value)) +
                     '   and PedRe2.DteRes = '+ QuotedStr(fDateToSQL(PedRe2DteRes.Value)) +
                     '   and PedRe2.NumRes = '+ QuotedStr(IntToStr(PedRe2NumRes.Value)) +
                     '   and PedRe2.CodClp = '+ QuotedStr(PedRe2CodClp.Value) +
                     '   and PedRe2.CodGru = '+ QuotedStr(PedRe2CodGru.Value) +
                     '   and PedRe2.CodSub = '+ QuotedStr(PedRe2CodSub.Value) +
                     '   and PedRe2.CodPro = '+ QuotedStr(PedRe2CodPro.Value) +
                     '   and PedRe2.CodTam = '+ QuotedStr(PedRe2CodTam.Value) +
                     '   and PedRe2.CodCor = '+ QuotedStr(PedRe2CodCor.Value) ;
             Open;

        end;

        if quSql.FieldbyName('Reg').AsInteger = 0 then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select EstPro.CodPro,'+
                        '        EstPro.IcmSai,'+
                        '        EstPro.IcmTsd,'+
                        '        EstPro.SaiIcm,'+
                        '        EstPro.IpiSai,'+
                        '        EstPro.IpiTsd,'+
                        '        EstPro.SaiIpi,'+
                        '        EstPro.CodUns,'+
                        '        EstPro.CodSt1,'+
                        '        EstPro.CodSt2,'+
                        '        EstPro.DscPro From EstPro'+
                        ' Where EstPro.CodClp = :CodClp'+
                        '   and EstPro.CodGru = :CodGru'+
                        '   and EstPro.CodSub = :CodSub'+
                        '   and EstPro.CodPro = :CodPro'+
                        '   and EstPro.FlbPro = :FlbPro';

                with Params do begin

                     Params[0].AsString := PedRe2CodClp.Value;
                     Params[1].AsString := PedRe2CodGru.Value;
                     Params[2].AsString := PedRe2CodSub.Value;
                     Params[3].AsString := PedRe2CodPro.Value;
                     Params[4].AsString := ' ';

                end;

                Open;

           end;

           if Trim( quSQL.FieldbyName('CodPro').AsString ) <> '' then begin

              PedRe2IcmRe2.Value := quSql.FieldbyName('SaiIcm').AsFloat;
              PedRe2IpiRe2.Value := quSql.FieldbyName('SaiIpi').AsFloat;
              PedRe2RegIpi.Value := quSQL.FieldbyName('IpiSai').AsString;
              PedRe2TipIpi.Value := quSQL.FieldbyName('IpiTsd').AsString;
              PedRe2RegIcm.Value := quSQL.FieldbyName('IcmSai').AsString;
              PedRe2TipIcm.Value := quSQL.FieldbyName('IcmTsd').AsString;
              PedRe2CodUnd.Value := Trim(quSQL.FieldbyName('CodUns').AsString);
              PedRe2CodSt1.Value := Trim(quSql.FieldbyName('CodSt1').AsString);
              PedRe2CodSt2.Value := Trim(quSql.FieldbyName('CodSt2').AsString);
              PedRe2DesRe2.Value := Trim(quSQL.FieldbyName('DscPro').AsString);

              if Trim(PedResCodIpi.Value) <> '' then begin

                 PedRe2RegIpi.Value := PedResCodIpi.Value;
                 PedRe2TipIpi.Value := PedResTipIpi.Value;
                 PedRe2TrbIpi.Value := PedResTrbIpi.Value;
                 PedRe2RedIpi.Value := PedResRedIpi.Value;
                 PedRe2BscIpi.Value := PedResBscIpi.Value;

              end;

              if Trim(PedResCodIcm.Value) <> '' then begin

                 PedRe2RegIcm.Value := PedResCodIcm.Value;
                 PedRe2TipIcm.Value := PedResTipIcm.Value;
                 PedRe2TrbIcm.Value := PedResTrbIcm.Value;
                 PedRe2RedIcm.Value := PedResRedIcm.Value;
                 PedRe2BscIcm.Value := PedResBscIcm.Value;
                 PedRe2IncRev.Value := PedResIncRev.Value;
                 PedRe2IncFin.Value := PedResIncFin.Value;

              end;

              if Trim(PedResCodIpi.Value) = '' then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select TrbIpi From EstIpi'+
                              ' Where EstIpi.CodIpi = '+ QuotedStr(PedRe2RegIpi.Value)+
                              '   and EstIpi.TipIpi = '+ QuotedStr(PedRe2TipIpi.Value);
                      Open;

                      PedRe2TrbIpi.Value := FieldbyName('TrbIpi').AsString;

                 end;
              end;

              if (qticms = 1) and (GUfeEmp <> PedResUfeRes.Value) then begin

                 if (PedResCodTcl.Value <> 1) and (PedResCodTcl.Value <> 3) and (PedResCodTcl.Value <> 5) then begin

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select PerIcm From GerIcm Where GerIcm.SigUfe = '+ QuotedStr(PedResUfeRes.Value);
                         Open;

                         PedRe2IcmRe2.Value := FieldbyName('PerIcm').AsFloat;

                    end;
                 end;   
              end;

              EdQtpRe2.SetFocus;

              end
           else
              fmsgErro('Item Informado não Encontrado.',EdCodPro);

           end
        else
           fMsgErro('Item Duplicado !',EdCodPro);

        end
     else
        begin

        if EdCodPro.Enabled then begin

           if Trim( PedRe2CodPro.Value ) = '' then fmsgErro('Item Informado não Encontrado.',EdCodPro);

        end;
     end;

     end
  else
     fmsgErro('Item Informado não Encontrado.',EdCodPro);
end;

procedure TfmManPed.SaiCliente;
var
LimCli : real;
NroSuf : string;
LocPfa : string;
CodGCl : integer;
begin
  if PedResCodCli.Value > 0 then begin

     if PedRes.State <> dsBrowse then begin

        if GCodVen_Id = 0 then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select FinCli.CodCli,'+
                        '        FinCli.NomCli,'+
                        '        FinCli.CgcCli,'+
                        '        FinCli.NroSuf,'+
                        '        FinCli.UffCli,'+
                        '        FinCli.CodVen,'+
                        '        FinCli.LimCli,'+
                        '        FinCli.CodPfa,'+
                        '        FinCli.TipPfa,'+
                        '        FinCli.CodAtd,'+                        
                        '        FinCli.CodGCl From FinCli Where FinCli.CodCli = :CodCli';

                 with Params do begin

                      Params[0].AsInteger := PedResCodCli.Value;

                 end;

                 Open;

           end;

           end
        else
           begin

           with quSql,SQL do begin

                Close;
                Text := ' Select FinCli.CodCli,'+
                        '        FinCli.NomCli,'+
                        '        FinCli.CgcCli,'+
                        '        FinCli.NroSuf,'+
                        '        FinCli.UffCli,'+
                        '        FinCli.CodVen,'+
                        '        FinCli.LimCli,'+
                        '        FinCli.CodPfa,'+
                        '        FinCli.TipPfa,'+
                        '        FinCli.CodAtd,'+                        
                        '        FinCli.CodGCl From FinCli'+
                        ' Where FinCli.CodCli = :CodCli'+
                        '   and FinCli.CodVen = :CodVen';

                with Params do begin

                     Params[0].AsInteger := PedResCodCli.Value;
                     Params[1].AsInteger := GCodVen_Id;

                end;

                Open;

           end;
        end;

        if quSql.FieldbyName('CodCli').AsInteger = PedResCodCli.Value then begin

           NroSuf := quSql.FieldbyName('NroSuf').AsString;
           CodGCl := quSql.FieldbyName('CodGCl').AsInteger;

           PedResCodVen.Value := quSQL.FieldbyName('CodVen').AsInteger;
           PedResUfeRes.Value := Trim(quSQL.FieldbyName('UffCli').AsString);

           pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
           pnUfeRes.Caption := quSQL.FieldbyName('UffCli').AsString;

           if PedResCodVen.Value > 0 then EdCodVen.Text := quSQL.FieldbyName('CodVen').AsString;

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

           LimCli := quSQL.FieldbyName('LimCli').AsFloat;

           if GCodAtd_Id > 0 then begin

              if quSQL.FieldbyName('CodAtd').AsInteger <> GCodAtd_Id then begin

                 pnNomCli.Caption := '';
                 pnCgcCli.Caption := '';
                 pnUfeRes.Caption := '';
                 pnNomVen.Caption := '';
                 pnLimite.Caption := '0' + decimalSeparator + '00';

                 fmsgErro('Cliente Informado não Pertence ao Atendente.',EdCodCli);
              
              end;
           end;

           if Trim( quSQL.FieldbyName('CodPfa').AsString ) <> '' then begin

              PedResCodPfa.Value := Trim(quSQL.FieldbyName('CodPfa').AsString);
              PedResTipPfa.Value := Trim(quSQL.FieldbyName('TipPfa').AsString);

              if Trim( PedResCodPfa.Value ) <> '' then EdCodPfa.Text := PedResCodPfa.Value;

              if PedResUfeRes.Value = 'EX' then
                 LocPfa := 'Importacao ou Exportacao'
              else
                 begin

                 if PedResUfeRes.Value <> GUfeEmp then
                    LocPfa := 'Outros Estados'
                 else
                    LocPfa := 'Mesmo Estado'

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstPfa.DscPfa From EstPfa '+
                           ' Where EstPfa.TipPfa = :TipPfa'+
                           '   and EstPfa.CodPfa = :CodPfa'+
                           '   and EstPfa.LocPfa = :LocPfa';

                   with Params do begin

                        Params[0].AsString  := PedResTipPfa.Value;
                        Params[1].AsString  := PedResCodPfa.Value;
                        Params[2].AsString  := LocPfa;

                   end;

                   Open;

                   pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

              end;
           end;
           
           if (GCodVen_Id > 0) or (GCodAtd_Id > 0) then begin

              if Trim( PedResCodPfa.Value ) <> '' then begin

                 pSaida := 'Nao';
                 
                 bPsqPfa.Enabled := False;

                 EdCodPfa.Enabled := False;

                 EdCodPfa.Font.Style := [fsBold];

                 pSaida := 'Sim';

                 end
              else
                 begin

                 pSaida := 'Nao';

                 bPsqPfa.Enabled := True;

                 EdCodPfa.Enabled := True;

                 EdCodPfa.Font.Style := [];

                 pSaida := 'Sim';
                 
              end;
           end;
           
           with quSql,SQL do begin

                Close;
                Text := ' Select FinGCl.CliTab From FinGCl Where FinGCl.CodGCl = :CodGCl';

                with Params do begin

                     Params[0].AsInteger := CodGCl;

                end;

                Open;

                PedResCliTab.Value := Trim(FieldbyName('CliTab').AsString);

           end;

           if PedResCodVen.Value > 0 then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FinVen.CodVen,FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedResCodVen.Value));
                   Open;

              end;

              if quSQL.FieldbyName('CodVen').AsInteger > 0 then
                 pnNomVen.Caption := quSQL.FieldbyName('ApeVen').AsString
              else
                 begin

                 pnNomVen.Caption := ' ';

                 fmsgErro('Vendedor Informado para o Cliente não Encontrado.',EdCodCli);

              end;
           end;

           pnLimite.Caption := FormatFloat('###,###,##0.00',LimCli);

           if Trim( PedResUfeRes.Value ) <> '' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select * From GerUfe Where GerUfe.SigUfe = '+ QuotedStr(PedResUfeRes.Value);
                   Open;

              end;

              if Trim( quSQL.FieldbyName('SigUfe').AsString ) <> '' then begin

                 if Trim( NroSuf ) <> '' then
                    PedResDscReg.Value := quSQL.FieldbyName('DscUfe').AsFloat
                 else
                    PedResDscReg.Value := 0;

                 end
              else
                 PedResDscReg.Value := 0;

              if quSQL.FieldbyName('DscCom').AsFloat > 0 then begin

                 if not EdDscCom.Enabled then begin

                    pSaida := 'Nao';

                    EdDscCom.Enabled := True;

                    EdDscCom.Font.Style := [];

                    pSaida := 'Sim';

                    PedResDscCom.Value := quSQL.FieldbyName('DscCom').AsFloat;

                    EdDscCom.Text := FormatFloat('##0.00',PedResDscCom.Value);

                 end;

                 end
              else
                 begin

                 if EdDscCom.Enabled then begin

                    pSaida := 'Nao';
                    
                    EdDscCom.Enabled := False;

                    EdDscCom.Font.Style := [fsBold];

                    pSaida := 'Sim';
                    
                    PedResDscCom.Value := 0;

                    EdDscCom.Text := '0';

                 end;
              end;

              if EdCodVen.Enabled then
                 EdCodVen.SetFocus
              else
                 begin

                 if EdDscCom.Enabled then
                    EdDscCom.SetFocus
                 else
                    begin

                    if EdCodPfa.Enabled then
                       EdCodPfa.SetFocus
                    else
                       EdPedAnt.SetFocus;

                 end;
              end;

              end
           else
              fmsgErro('Endereço de Faturamento do Cliente Incompleto. Falta UF',EdCodCli);

           end
        else
           begin

           pnNomCli.Caption := '';
           pnCgcCli.Caption := '';
           pnUfeRes.Caption := '';
           pnNomVen.Caption := '';
           pnLimite.Caption := '0' + decimalSeparator + '00';

           fmsgErro('Cliente Informado não Encontrado',EdCodCli);

        end;
     end;

     end
  else
     begin

     pnNomCli.Caption := '';
     pnUfeRes.Caption := '';
     pnCgcCli.Caption := '';
     pnNomVen.Caption := '';
     pnLimite.Caption := '0'+decimalSeparator+'00';

     fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodCli);

  end;
end;

procedure TfmManPed.EdCodUndExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodGru.Focused) and (not EdCodSub.Focused) and
        (not EdCodPro.Focused) and (not EdQtpRe2.Focused) and (not EdVluRe2.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if Trim(PedRe2CodUnd.Value) <> '' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select EstUnd.NomUnd From EstUnd Where EstUnd.CodUnd = '+ QuotedStr(PedRe2CodUnd.Value);
                Open;

           end;

           if Trim( quSQL.FieldbyName('NomUnd').AsString ) = '' then fmsgErro('Unidade Informada não Encontrada.',EdCodUnd);

           end
        else
           fmsgErro('Unidade Informada não Encontrada.',EdCodUnd);

     end;
  end;
end;

procedure TfmManPed.EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqUnd := TfmPsqUnd.Create(Self);

        fmPsqUnd.ShowModal;

        if Trim( fmPsqUnd.CodUnd ) <> '' then begin

           PedRe2CodUnd.Value := Trim(fmPsqUnd.CodUnd);

           EdCodUnd.Text := PedRe2CodUnd.Value;

        end;

     finally

        FreeAndNil(fmPsqUnd);

     end;

     if Trim( PedRe2CodUnd.Value ) <> '' then
        EdDscRe2.SetFocus
     else
        EdCodUnd.SetFocus;   

  end;
end;

procedure TfmManPed.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
CodVen : integer;
begin
  inherited;

  CodVen := 0;
  
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';
        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           CodVen := fmAuxIni.CodVen;

           PedResCodVen.Value := fmAuxIni.CodVen;

           pnNomVen.Caption := fmAuxIni.NomVen;

           EdCodVen.Text := IntToStr(PedResCodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if CodVen > 0 then begin

        if EdDscCom.Enabled then
           EdDscCom.SetFocus
        else
           begin

           if EdCodPfa.Enabled then
              EdCodPfa.SetFocus
           else
              EdPedAnt.SetFocus;

        end;
     end;
  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';
        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           CodVen := fmAuxPsq.CodVen;

           PedResCodVen.Value := fmAuxPsq.CodVen;

           pnNomVen.Caption := fmAuxPsq.NomVen;

           EdCodVen.Text := IntToStr(PedResCodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CodVen > 0 then begin

        if EdDscCom.Enabled then
           EdDscCom.SetFocus
        else
           begin

           if EdCodPfa.Enabled then
              EdCodPfa.SetFocus
           else
              EdPedAnt.SetFocus;

        end;
     end;
  end;
end;

procedure TfmManPed.EdCodVenExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodCli.Focused) and (not EdDteRes.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedRes.State <> dsBrowse then begin

           if PedResCodVen.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

                   with Params do begin

                        Params[0].AsInteger := PedResCodVen.Value;
                        
                   end;

                   Open;

              end;

              if Trim( quSql.FieldbyName('ApeVen').AsString ) <> '' then
                 pnNomVen.Caption := quSql.FieldbyName('ApeVen').AsString
              else
                 begin

                 pnNomVen.Caption := '';

                 fmsgErro('Vendedor Informado não Encontrado',EdCodVen);

              end;

              end
           else
              begin

              pnNomVen.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodVen);

           end;

           end
        else
           begin

           pnNomVen.Caption := '';

           fmsgErro('Vendedor Informado não Encontrado',EdCodVen);

        end;
     end;
  end;
end;

procedure TfmManPed.bpsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';
     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        PedResCodVen.Value := fmAuxIni.CodVen;

        pnNomVen.Caption := fmAuxIni.NomVen;

        EdCodVen.Text := IntToStr(PedResCodVen.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodVen.SetFocus;

end;

procedure TfmManPed.grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then begin

     with (Sender as ThGrid).Canvas do begin

          Font.Color := clWhite;

          FillRect(Rect);

     end;

     end
  else
     begin

     if ((PedRe2.FieldbyName('FlgVal').AsString = 'Sim') or (PedRe2.FieldbyName('FlgPac').AsString = 'Sim')) and (PedRe2.FieldbyName('FlgLib').AsString = 'Nao') then begin

        with (Sender as ThGrid).Canvas do begin

             Font.Color := clRed;

             FillRect(Rect);

        end;
     end;
  end;

  (Sender as ThGrid).DefaultDrawDataCell(Rect, Field, State);

end;

procedure TfmManPed.DsRe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  
  if PedRe2.State = dsBrowse then begin

     AntVluRe2 := PedRe2VluRe2.Value;
     AntDscRe2 := PedRe2DscRe2.Value;
     AntDspRe2 := PedRe2DspRe2.Value;

  end;

  pnDesRe2.Caption := PedRe2DesRe2.Value;
  pnObsRe2.Caption := PedRe2ObsRe2.Value;

  pnNumRes.Caption := IntToStr(PedResNumRes.Value);

  pnTotRes.Caption := FormatFloat('###,###,##0.00',PedResTotRes.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00',PedResTotIpi.Value);
  pnTotDsr.Caption := FormatFloat('###,###,##0.00',PedResTotDsr.Value);
  pnTotSub.Caption := FormatFloat('###,###,##0.00',PedResTotSub.Value);
  pnTotGer.Caption := FormatFloat('###,###,##0.00',PedResTotGer.Value);
  pnTotRen.Caption := FormatFloat('###,###,##0.00',PedResTotRen.Value);
  pnTotMk2.Caption := FormatFloat('###,###,##0.00',PedRe2TotRen.Value);
  pnTotSu2.Caption := FormatFloat('###,###,##0.00',PedRe2TotSub.Value);

  if PedResFlgOco.Value = '*' then
     pnFlgOco.Color := clRed
  else
     pnFlgOco.Color := clLime;

  if PedRe2.State = dsInsert then
     pnNroRe2.Caption := FNumZeros(IntToStr(PedRe2NroRe2.Value),4)+'/'+FNumZeros(IntToStr(PedResQtiRes.Value + 1),4)
  else
     pnNroRe2.Caption := FNumZeros(IntToStr(PedRe2NroRe2.Value),4)+'/'+FNumZeros(IntToStr(PedResQtiRes.Value),4);

end;

procedure TfmManPed.EdVluRe2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Últimas Vendas para o Item}

     try

        fmPsqUve := TfmPsqUve.Create(Self);

        fmPsqUve.Panel3.Caption := ' '+PedRe2CodGru.Value+'.'+PedRe2CodSub.Value+'.'+PedRe2CodPro.Value+' - '+PedRe2DesRe2.Value;

        fmPsqUve.PedRes.Close;
        fmPsqUve.PedRes.Params[0].AsInteger := PedResCodCli.Value;
        fmPsqUve.PedRes.Params[1].AsString  := PedRe2CodClp.Value;
        fmPsqUve.PedRes.Params[2].AsString  := PedRe2CodGru.Value;
        fmPsqUve.PedRes.Params[3].AsString  := PedRe2CodSub.Value;
        fmPsqUve.PedRes.Params[4].AsString  := PedRe2CodPro.Value;
        fmPsqUve.PedRes.Open;

        fmPsqUve.ShowModal;

     finally

        FreeAndNil(fmPsqUve);

     end;
  end;
end;

procedure TfmManPed.EdCodEmpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then begin

     if PedResFlgOco.Value = '*' then
        LbText.Caption := 'F1-Iniciais F4-Estoque F11-Ocorrências'
     else
        LbText.Caption := 'F1-Iniciais F4-Estoque';

     end
  else
     LbText.Caption := 'F1-Iniciais F4-Estoque F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdDteREsEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then begin

     if PedResFlgOco.Value = '*' then
        LbText.Caption := 'F4-Estoque F11-Ocorrências'
     else
        LbText.Caption := 'F4-Estoque';

     end
  else
     LbText.Caption := 'F4-Estoque F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdCodCliEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then begin

     if PedResFlgOco.Value = '*' then
        LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque F11-Ocorrências'
     else
        LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

     end
  else
     LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.grRe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then begin

     if PedResFlgOco.Value = '*' then
        LbText.Caption := 'D-Descrição/Obs F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'D-Descrição/Obs F4-Estoque F5-Reservas F7-Comprado';

     end
  else
     LbText.Caption := 'D-Descrição/Obs F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then begin

     if PedResFlgOco.Value = '*' then
        LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F11-Oco'
     else
        LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref';

     end
  else
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F10-Rej F11-Oco';

end;

procedure TfmManPed.EdCodProEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then begin

     if PedResFlgOco.Value = '*' then
        LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F11-Ocorrências'
     else
        LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref';

     end
  else
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdQtpRe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if not pnEstoque.Visible then pnEstoque.Visible := True;

  if PedResUsuRej.Value = 0 then begin

     if PedResFlgOco.Value = '*' then
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado';

     end
  else
     LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';

  if PedResLanEst.Value = 'Sim' then begin

     if PedResCodFil.Value > 0 then
        CodEmp := PedResCodFil.Value
     else
        CodEmp := PedResCodEmp.Value;

     end
  else
     CodEmp := PedResCodEmp.Value;

  with quSql,SQL do begin

       Close;
       Text := ' Select EstPro.QtdEmb'+
               ' From EstPro'+
               ' Where EstPro.CodClp = '+ QuotedStr(PedRe2CodClp.Value) +
               '   and EstPro.CodGru = '+ QuotedStr(PedRe2CodGru.Value) +
               '   and EstPro.CodSub = '+ QuotedStr(PedRe2CodSub.Value) +
               '   and EstPro.CodPro = '+ QuotedStr(PedRe2CodPro.Value) ;
       Open;

       EdQtdEmb.Caption := FormatFloat('###,###,##0.0000',FieldbyName('QtdEmb').AsFloat)+' ';

  end;

  with quSql,SQL do begin

       Close;
       Text := ' Select EstIte.CodEmp,'+
               '        EstIte.QtdIte,'+
               '        EstIte.QtrIte,'+
               '        EstIte.QtdRma,'+
               '        EstIte.QtaIte From EstIte'+
               ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
               '   and EstIte.CodClp = '+ QuotedStr(PedRe2CodClp.Value) +
               '   and EstIte.CodGru = '+ QuotedStr(PedRe2CodGru.Value) +
               '   and EstIte.CodSub = '+ QuotedStr(PedRe2CodSub.Value) +
               '   and EstIte.CodPro = '+ QuotedStr(PedRe2CodPro.Value) ;
       Open;

  end;

  EdQtdIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtdIte').AsFloat)+' ';
  EdQtrIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtrIte').AsFloat)+' ';
  EdQtdRma.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtdRma').AsFloat)+' ';
  EdQtaIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtaIte').AsFloat)+' ';

  if fRound(quSQL.FieldbyName('QtdIte').AsFloat - quSQL.FieldbyName('QtrIte').AsFloat,4) < 0 then
     EdSldIte.Font.Color := clRed
  else
     EdSldIte.Font.Color := clGray;

  EdSldIte.Caption := FormatFloat('###,###,##0.0000',fRound(quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat),4))+' ';

end;

procedure TfmManPed.EdVluRe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then begin

     if PedResFlgOco.Value = '*' then
        LbText.Caption := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado';

     end
  else
     LbText.Caption := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdCodUndEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then begin

     if PedResFlgOco.Value = '*' then
        LbText.Caption := 'F1-Iniciais F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'F1-Iniciais F4-Estoque F5-Reservas F7-Comprado';

     end
  else
     LbText.Caption := 'F1-Iniciais F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdDscRe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResUsuRej.Value = 0 then begin

     if PedResFlgOco.Value = '*' then
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado';

     end
  else
     LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';

end;

end.
