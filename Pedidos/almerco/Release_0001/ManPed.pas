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
    EdId_PedRes: TdxDBColorEdit;
    pnId_PedRes: TPanel;
    Label37: TLabel;
    EdCodEmp: TdxDBColorEdit;
    EdCodCli: TdxDBColorEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    EdCodVen: TdxDBColorEdit;
    EdCodPfa: TdxDBColorEdit;
    EdPrfREs: TdxDBColorEdit;
    bpsqPfa: TSpeedButton;
    bpsqCli: TSpeedButton;
    bpsqEmp: TSpeedButton;
    EdDtfRes: TdxDBColorDateEdit;
    pnNomPfa: TPanel;
    pnApeVen: TPanel;
    pnNomCli: TPanel;
    pnApeEmp: TPanel;
    EdNomEmp: TdxDBColorEdit;
    EdNomCli: TdxDBColorEdit;
    EdNomVen: TdxDBColorEdit;
    EdNomPfa: TdxDBColorEdit;
    Label50: TLabel;
    pnLimite: TPanel;
    EdLimite: TdxDBColorCurrencyEdit;
    Label55: TLabel;
    Label56: TLabel;
    pnUfeRes: TPanel;
    EdUfeRes: TdxDBColorEdit;
    pnCgcCli: TPanel;
    EdCgcCli: TdxDBColorEdit;
    EdDteRes: TdxDBColorDateEdit;
    Panel3: TPanel;
    Label03: TLabel;
    pnRenPed: TPanel;
    EdRenPed: TdxDBColorCurrencyEdit;
    Label3: TLabel;
    EdDscReg: TdxDBColorCurrencyEdit;
    Label1: TLabel;
    EdFlgAnt: TdxDBColorPickEdit;
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
    PedRe2: TwwQuery;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLURE2: TFloatField;
    PedRe2CODUND: TStringField;
    PedRe2ICMRE2: TFloatField;
    PedRe2DSCRE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2TOTRE2: TFloatField;
    PedRe2IPIRE2: TFloatField;
    PedRe2TOTREN: TFloatField;
    Panel2: TPanel;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpRe2: TdxDBColorCurrencyEdit;
    EdVluRe2: TdxDBColorCurrencyEdit;
    EdIcmRe2: TdxDBColorCurrencyEdit;
    EdPacRe2: TdxDBColorCurrencyEdit;
    EdCodUnd: TdxDBColorEdit;
    EdVlqRe2: TdxDBColorCurrencyEdit;
    EdTotRe2: TdxDBColorCurrencyEdit;
    grPedRe21: TdxDBGraphicEdit;
    grPedRe2: ThGrid;
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
    EdDscRe2: TdxDBColorCurrencyEdit;
    Label24: TLabel;
    Label53: TLabel;
    Panel14: TPanel;
    Label06: TLabel;
    EdTotRen: TdxDBColorCurrencyEdit;
    Label12: TLabel;
    pnNroRe2: TPanel;
    EdNroRe2: TdxDBColorCurrencyEdit;
    Label5: TLabel;
    pnTotRes: TPanel;
    EdTotRes: TdxDBColorCurrencyEdit;
    pnDesRe2: TPanel;
    pnObsRe2: TPanel;
    EdObsRe2: TdxDBColorEdit;
    EdDesRe2: TdxDBColorEdit;
    Label28: TLabel;
    Label27: TLabel;
    EdTotSub: TdxDBColorCurrencyEdit;
    pnTotSub: TPanel;
    EdTotIpi: TdxDBColorCurrencyEdit;
    pnTotIpi: TPanel;
    bpsqVen: TSpeedButton;
    Panel15: TPanel;
    Panel16: TPanel;
    Label18: TLabel;
    Label58: TLabel;
    Panel17: TPanel;
    EdQtdEmb: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    EdQtdRma: TPanel;
    Label51: TLabel;
    Label61: TLabel;
    EdIpiRe2: TdxDBColorCurrencyEdit;
    Label62: TLabel;
    Label63: TLabel;
    EdTotGer: TdxDBColorCurrencyEdit;
    pnTotGer: TPanel;
    Label05: TLabel;
    EdVcsRe2: TdxDBColorCurrencyEdit;
    pnVcsRe2: TPanel;
    PedResID_PEDRES: TIntegerField;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResHRERES: TStringField;
    PedResCODCLI: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODATD: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTIPPFA: TStringField;
    PedResCODTIP: TIntegerField;
    PedResPRFRES: TIntegerField;
    PedResDTFRES: TDateTimeField;
    PedResID_PEDCND: TIntegerField;
    PedResCODFIL: TIntegerField;
    PedResCODTRA: TIntegerField;
    PedResCODCFO: TStringField;
    PedResFLGTAB: TStringField;
    PedResUFERES: TStringField;
    PedResCGCCLI: TStringField;
    PedResINSCLI: TStringField;
    PedResNOMENT: TStringField;
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
    PedResQTDIMP: TIntegerField;
    PedResQTIRE2: TIntegerField;
    PedResQTIRE3: TIntegerField;
    PedResQTILIB: TIntegerField;
    PedResLINRES: TIntegerField;
    PedResQTFRES: TIntegerField;
    PedResACRCND: TFloatField;
    PedResDSCCND: TFloatField;
    PedResBASIPI: TFloatField;
    PedResTOTIPI: TFloatField;
    PedResBASICM: TFloatField;
    PedResTOTICM: TFloatField;
    PedResBASSUB: TFloatField;
    PedResTOTSUB: TFloatField;
    PedResTOTVEN: TFloatField;
    PedResTOTCST: TFloatField;
    PedResTOTRES: TFloatField;
    PedResTOTREN: TFloatField;
    PedResTOTGER: TFloatField;
    PedResTOTLIQ: TFloatField;
    PedResTOTBRT: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResBASCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResDSCREG: TFloatField;
    PedResMEDACR: TFloatField;
    PedResMEDPRM: TFloatField;
    PedResTOTDSC: TFloatField;
    PedResTOTDSR: TFloatField;
    PedResTOTACR: TFloatField;
    PedResFATRES: TFloatField;
    PedResFATGER: TFloatField;
    PedResDEVRES: TFloatField;
    PedResDEVGER: TFloatField;
    PedResMEDDSC: TFloatField;
    PedResTOTDSP: TFloatField;
    PedResTOTACP: TFloatField;
    PedResTOTFRT: TFloatField;
    PedResSLDRES: TFloatField;
    PedResSLDGER: TFloatField;
    PedResDESREG: TStringField;
    PedResCODUSU: TIntegerField;
    PedResFLGPSQ: TStringField;
    PedResDTLPSQ: TDateTimeField;
    PedResFLGCTB: TStringField;
    PedResFLGOCO: TStringField;
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
    PedResFLGGER: TStringField;
    PedResLIBSLD: TStringField;
    PedResLANEST: TStringField;
    PedResFLGRES: TStringField;
    PedResID_PEDCTA: TIntegerField;
    PedResPRCCTA: TStringField;
    PedResMODPFA: TStringField;
    PedResCLITAB: TStringField;
    PedResCODTCL: TIntegerField;
    PedResCODGCL: TIntegerField;
    PedResTIPCOM: TStringField;
    PedResCODCOM: TStringField;
    PedResFLGREJ: TStringField;
    PedResFLGCOM: TStringField;
    PedResLIBCLI: TStringField;
    PedResFLGFIN: TStringField;
    PedResFLGPRO: TStringField;
    PedResFLGCON: TStringField;
    PedResPEDPRO: TStringField;
    PedResTIPFRT: TStringField;
    PedResFLGDIF: TStringField;
    PedResFLGIMP: TStringField;
    PedResOB1RES: TStringField;
    PedResOB2RES: TStringField;
    PedResOB3RES: TStringField;
    PedResOB4RES: TStringField;
    PedResOB5RES: TStringField;
    PedResOB6RES: TStringField;
    PedResOB7RES: TStringField;
    PedResOB8RES: TStringField;
    PedResOB1FAT: TStringField;
    PedResOB2FAT: TStringField;
    PedResOB3FAT: TStringField;
    PedResOB4FAT: TStringField;
    PedResOB5FAT: TStringField;
    PedResOB6FAT: TStringField;
    PedResOB7FAT: TStringField;
    PedResOB8FAT: TStringField;
    PedResSEQRES: TStringField;
    PedResFLGATU: TStringField;
    PedResSITRES: TStringField;
    PedRe2ID_PEDRE2: TIntegerField;
    PedRe2ID_PEDRES: TIntegerField;
    PedRe2CODEIT: TIntegerField;
    PedRe2CODCLP: TStringField;
    PedRe2CODTAM: TStringField;
    PedRe2CODCOR: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2OBSRE2: TStringField;
    PedRe2CODST1: TStringField;
    PedRe2CODST2: TStringField;
    PedRe2REFRE2: TStringField;
    PedRe2LIQRE2: TFloatField;
    PedRe2BRTRE2: TFloatField;
    PedRe2LINRE2: TIntegerField;
    PedRe2TABPRC: TIntegerField;
    PedRe2CODTIP: TIntegerField;
    PedRe2CODCAT: TIntegerField;
    PedRe2CODMRC: TIntegerField;
    PedRe2QTSRE2: TFloatField;
    PedRe2QTFRE2: TFloatField;
    PedRe2QTDRE2: TFloatField;
    PedRe2QTDEMB: TFloatField;
    PedRe2ULTQTS: TFloatField;
    PedRe2SLDRE2: TFloatField;
    PedRe2VCSRE2: TFloatField;
    PedRe2TIPDSC: TStringField;
    PedRe2VDSRE2: TFloatField;
    PedRe2DSRRE2: TFloatField;
    PedRe2VDRRE2: TFloatField;
    PedRe2TIPACR: TStringField;
    PedRe2PACRE2: TFloatField;
    PedRe2VACRE2: TFloatField;
    PedRe2PDPRE2: TFloatField;
    PedRe2VDPRE2: TFloatField;
    PedRe2PAPRE2: TFloatField;
    PedRe2VAPRE2: TFloatField;
    PedRe2VCHRE2: TFloatField;
    PedRe2VRERE2: TFloatField;
    PedRe2VCHCST: TFloatField;
    PedRe2VRECST: TFloatField;
    PedRe2CODCOM: TStringField;
    PedRe2PCORE2: TFloatField;
    PedRe2CODCFO: TStringField;
    PedRe2CLSIPI: TStringField;
    PedRe2CODTXF: TStringField;
    PedRe2TOTVEN: TFloatField;
    PedRe2TOTCST: TFloatField;
    PedRe2BASIPI: TFloatField;
    PedRe2TOTIPI: TFloatField;
    PedRe2BASICM: TFloatField;
    PedRe2TOTICM: TFloatField;
    PedRe2BASSUB: TFloatField;
    PedRe2TOTSUB: TFloatField;
    PedRe2TOTGE2: TFloatField;
    PedRe2TOTLIQ: TFloatField;
    PedRe2TOTBRT: TFloatField;
    PedRe2BASCOM: TFloatField;
    PedRe2TOTCOM: TFloatField;
    PedRe2TOTDSC: TFloatField;
    PedRe2TOTDSR: TFloatField;
    PedRe2TOTACR: TFloatField;
    PedRe2TOTDSP: TFloatField;
    PedRe2TOTACP: TFloatField;
    PedRe2CODSTR: TStringField;
    PedRe2TIPSTR: TStringField;
    PedRe2TRBSUB: TStringField;
    PedRe2ICMSUB: TFloatField;
    PedRe2MRGSUB: TFloatField;
    PedRe2BASESB: TFloatField;
    PedRe2REGIPI: TStringField;
    PedRe2TIPIPI: TStringField;
    PedRe2TRBIPI: TStringField;
    PedRe2REDIPI: TFloatField;
    PedRe2BSCIPI: TFloatField;
    PedRe2REGICM: TStringField;
    PedRe2TIPICM: TStringField;
    PedRe2TRBICM: TStringField;
    PedRe2REDICM: TFloatField;
    PedRe2BSCICM: TFloatField;
    PedRe2INCREV: TFloatField;
    PedRe2INCFIN: TFloatField;
    PedRe2ID_PEDGR3: TIntegerField;
    PedRe2FLGRES: TStringField;
    PedRe2FLGDUP: TStringField;
    PedRe2FLGVAL: TStringField;
    PedRe2FLGLIB: TStringField;
    PedRe2FLGREN: TStringField;
    PedRe2DSCPER: TFloatField;
    PedRe2DIFDSC: TFloatField;
    PedRe2MARPRE: TFloatField;
    PedRe2MARPED: TFloatField;
    PedRe2LUCROL: TFloatField;
    PedRe2LUCROP: TFloatField;
    PedRe2TOTPER: TFloatField;
    PedRe2FLGATU: TStringField;
    PedRe2NRORE2: TIntegerField;
    PedPar: TwwQuery;
    PedParEXIREN: TStringField;
    PedParTIPATD: TStringField;
    PedParUSADEC: TStringField;
    Label4: TLabel;
    EdCodAtd: TdxDBColorEdit;
    bPsqAtd: TSpeedButton;
    pnApeAtd: TPanel;
    EdApeAtd: TdxDBColorEdit;
    PedRe2CSTLAN: TFloatField;
    PedParTIPIMP: TStringField;
    quSQL1: TwwQuery;
    pnFrete: TPanel;
    EdTotFrt: TdxDBColorCurrencyEdit;
    EdTipFre: TdxDBColorPickEdit;
    Label65: TLabel;
    PedRe2ID_PEDGER: TIntegerField;
    PedResLIMCLI: TFloatField;
    PedResFLGEST: TStringField;
    PedResCODEAN: TStringField;
    PedResSEQRE3: TIntegerField;
    PedResFLGAVI: TStringField;
    PedParTIPPAG: TStringField;
    PedRe2ID_PEDICL: TIntegerField;
    PedRe2NROITE: TIntegerField;
    PedRe2QTIRE4: TIntegerField;
    PedParFLGCOT: TStringField;
    PedResQTIRE4: TIntegerField;
    PedRe2FLGMAR: TStringField;
    PedResRENMIN: TFloatField;
    PedResCOMCLI: TFloatField;
    PedResTOTCLI: TFloatField;
    PedRe2COMCLI: TFloatField;
    PedRe2VALCLI: TFloatField;
    PedRe2TOTCLI: TFloatField;
    Label46: TLabel;
    EdComCli: TdxDBColorCurrencyEdit;
    PedResNROSUF: TStringField;
    PedResTRBPIS: TStringField;
    PedResTRBCOF: TStringField;
    PedResTXFIPI: TStringField;
    PedResTXFICM: TStringField;
    PedRe2ISSRE2: TFloatField;
    PedRe2CSTRE2: TFloatField;
    PedRe2VCPRE2: TFloatField;
    PedRe2VPRRE2: TFloatField;
    PedRe2VCRRE2: TFloatField;
    PedRe2VMERE2: TFloatField;
    PedRe2VPFRE2: TFloatField;
    PedRe2CSTCST: TFloatField;
    PedRe2VCPCST: TFloatField;
    PedRe2VPRCST: TFloatField;
    PedRe2VCRCST: TFloatField;
    PedRe2VMECST: TFloatField;
    PedRe2VPFCST: TFloatField;
    PedResFLGIPI: TStringField;
    PedResCODGUS: TIntegerField;
    PedResTIPFRE: TStringField;
    Label52: TLabel;
    pnTotLiq: TPanel;
    EdTotLiq: TdxDBColorCurrencyEdit;
    Label69: TLabel;
    pnTotBrt: TPanel;
    EdTotBrt: TdxDBColorCurrencyEdit;
    Label71: TLabel;
    EdTotCub: TdxDBColorCurrencyEdit;
    pnTotCub: TPanel;
    PedResTOTCUB: TFloatField;
    PedRe2ID_PEDCT2: TIntegerField;
    PedRe2CUBRE2: TFloatField;
    PedRe2TOTCUB: TFloatField;
    Label73: TLabel;
    EdClsIpi: TdxDBColorEdit;
    Label75: TLabel;
    EdRefPe2: TdxDBColorEdit;
    Label66: TLabel;
    EdMrgSub: TdxDBColorCurrencyEdit;
    pnClsIpi: TPanel;
    pnRefRe2: TPanel;
    PedParREFDES: TStringField;
    pnTotRen: TPanel;
    PedParMUDREN: TStringField;
    pnNomBan: TLabel;
    PedParEXILOC: TStringField;
    PedRe2PCOATD: TFloatField;
    PedRe2BASCAT: TFloatField;
    PedRe2TOTCAT: TFloatField;
    PedRe2TOTPIS: TFloatField;
    PedRe2TOTCOF: TFloatField;
    PedRe2CODICL: TStringField;
    EdCodICl: TdxDBColorEdit;
    Label6: TLabel;
    EdTrbSub: TdxDBColorEdit;
    pnTrbSub: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    EdTotDsr: TdxDBColorCurrencyEdit;
    pnTotDsr: TPanel;
    PedParFLGDUP: TStringField;
    PedResOBRGVE: TStringField;
    PedResCODGVE: TIntegerField;
    PedResCOMATD: TStringField;
    PedResMEDCAT: TFloatField;
    PedResBASCAT: TFloatField;
    PedResTOTCAT: TFloatField;
    PedResPERPIS: TFloatField;
    PedResTOTPIS: TFloatField;
    PedResPERCOF: TFloatField;
    PedResTOTCOF: TFloatField;
    PedResFLGCLI: TStringField;
    PedResFLGANT: TStringField;
    Image1: TImage;
    Image2: TImage;
    PedResSEQLIB: TIntegerField;
    PedResID_FINUFE: TIntegerField;
    PedResID_FINCIE: TIntegerField;
    PedResID_ESTSIP: TIntegerField;
    PedResID_PEDFE2: TIntegerField;
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
    procedure grPedRe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    procedure EdDesRe2Exit(Sender: TObject);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenExit(Sender: TObject);
    procedure bpsqVenClick(Sender: TObject);
    procedure grPedRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
    procedure DsRe2DataChange(Sender: TObject; Field: TField);
    procedure EdVluRe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpEnter(Sender: TObject);
    procedure EdDteResEnter(Sender: TObject);
    procedure EdCodCliEnter(Sender: TObject);
    procedure grPedRe2Enter(Sender: TObject);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdCodProEnter(Sender: TObject);
    procedure EdQtpRe2Enter(Sender: TObject);
    procedure EdVluRe2Enter(Sender: TObject);
    procedure EdCodUndEnter(Sender: TObject);
    procedure EdPacRe2Enter(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdCodAtdExit(Sender: TObject);
    procedure EdCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPacRe2Exit(Sender: TObject);
    procedure EdDscRe2Exit(Sender: TObject);
    procedure EdTotRenExit(Sender: TObject);
    procedure pnFreteExit(Sender: TObject);
    procedure grPedRe2KeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
  public
    {Public declarations}
    GImpMrc : string;
    GImpTra : string;
    GImpObs : string;
    GImpFin : string;
    GImpRef : string;
    GImpLoc : string;
    GFlgPro : string;
    Id_PedRes : integer;
    Qticms,NroReg : integer;
    AntVluRe2,AntPacRe2,AntDscRe2,AntTotRen : real;
    sEnc,sEntr,Finalizar,PSaida : string;
    pCodClp,pCodGru,pCodSub,pCodPro: string;
  end;

var
  fmManPed : TfmManPed;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManGDB, ManRes, PsqEmp,
     AuxPsq, PsqTpe, PsqPfa, PsqGru, PsqSub, PsqPro, PsqRef, PsqEst, PsqRej,
     PsqOco, PsqTab, ManPe1, PsqRes, PsqObs, PsqIcm, AuxIni, PsqCmp, PsqUnd,
     PsqUve, ManLge, PsqRe4;

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
  CodBan: integer;
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select PedPar.ImpMrc,'+
               '        PedPar.ImpTra,'+
               '        PedPar.ImpObs,'+
               '        PedPar.ImpFin,'+
               '        PedPar.ImpRef,'+
               '        PedPar.ImpLoc,'+
               '        PedPar.FlgPro '+
               ' From PedPar';
       Open;

       GImpMrc := FieldByName('ImpMrc').AsString;
       GImpTra := FieldByName('ImpTra').AsString;
       GImpObs := FieldByName('ImpObs').AsString;
       GImpFin := FieldByName('ImpFin').AsString;
       GImpRef := FieldByName('ImpRef').AsString;
       GImpLoc := FieldByName('ImpLoc').AsString;
       GFlgPro := FieldByName('FlgPro').AsString;

  end;

  if PedParUsaDec.Value = 'Nao' then begin

     PedRe2QtpRe2.DisplayFormat := '###,###,##0';

     EdQtpRe2.DecimalPlaces := 0;

  end;

  if Trim(PedParTipAtd.Value) = 'Vendedor' then bPsqAtd.Visible := False;

  if PedParExiLoc.Value = 'Sim' then begin

     pnNomBan.Caption := '';

     pnNomBan.Visible := True;

  end;
  
  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if PedParExiRen.Value <> 'Sim' then begin

        Label03.Visible := False;
        Label05.Visible := False;
        Label06.Visible := False;

        EdVcsRe2.Visible := False;
        pnVcsRe2.Visible := False;
        EdTotRen.Visible := False;
        pnTotRen.Visible := False;
        EdRenPed.Visible := False;
        pnRenPed.Visible := False;

     end;
  end;
  
  if fmManRes.Id_PedRes > 0 then begin

     sEntr := 'S';

     PedRes.Close;
     PedRes.Params[0].AsInteger := fmManRes.Id_PedRes;
     PedRes.Open;

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.ApeEmp'+
                  ' From GerEmp'+
                  ' Where GerEmp.CodEmp = :CodEmp';

          if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > '+ QuotedStr('0');

          with Params do begin

               Params[0].AsInteger := PedResCodEmp.Value;

          end;

          Open;

          pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen'+
                  ' From FinVen'+
                  ' Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedResCodVen.Value));
          Open;

          pnApeVen.Caption := FieldbyName('ApeVen').AsString;

     end;

     if PedResCodAtd.Value > 0 then begin

        if Trim(PedParTipAtd.Value) = 'Atendente' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
                Open;

                pnApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

           end;

           end
        else
           begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
                Open;

                pnApeAtd.Caption := FieldbyName('ApeVen').AsString;

           end;
        end;
     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = '+ QuotedStr('Saida') +
                  '   and EstPfa.CodPfa = '+ QuotedStr(PedResCodPfa.Value);
          Open;

          pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli,'+
                  '        FinCli.CgcCli,'+
                  '        FinCli.UffCli,'+
                  '        FinCli.CodBan,'+
                  '        FinCli.LimCli '+
                  ' From FinCli'+
                  ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedResCodCli.Value));
          Open;

          CodBan := FieldbyName('CodBan').AsInteger;

          pnNomCli.Caption := FieldbyName('NomCli').AsString;
          pnUfeRes.Caption := FieldbyName('UffCli').AsString;
          pnCgcCli.Caption := fFormatCGCCPF(FieldbyName('CgcCli').AsString);
          pnLimite.Caption := FormatFloat('###,###,##0.00',FieldbyName('LimCli').AsFloat);
           
     end;  

     if CodBan > 0 then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinBan.NomBan From FinBan Where FinBan.CodBan = '+ QuotedStr(IntToStr(CodBan));
             Open;

             pnNomBan.Caption := copy('Forma de pagto: '+Trim(FieldbyName('NomBan').AsString),1,43);

        end;

        end
     else
        pnNomBan.Caption := '';
        
     qticms := 1;

     if GUfeEmp <> PedResUfeRes.Value then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg From GerIcm Where GerIcm.SigUfe = '+ QuotedStr(PedResUfeRes.Value);
             Open;

        end;

        qticms := quSql.FieldbyName('QtdReg').AsInteger;

     end;

     if (Trim(PedResSitRes.Value) <> 'Rejeitado') and
        (Trim(PedResSitRes.Value) <> 'Nao Concluido') and
        (Trim(PedResSitRes.Value) <> 'Processo de Alteracao') then
        sEnc := 'S'
     else
        begin

        bPsqEmp.Enabled := False;
        bPsqCli.Enabled := False;
        bPsqVen.Enabled := False;
        bPsqAtd.Enabled := False;
        bPsqPfa.Enabled := False;

        PedRes.Edit;

        EdFlgAnt.Enabled := True;
        EdTipFre.Enabled := True;
        EdTotFrt.Enabled := True;

        EdFlgAnt.Font.Style := [];
        EdTipFre.Font.Style := [];
        EdTotFrt.Font.Style := [];

        EdFlgAnt.Text := PedResFlgAnt.Value;
        EdTipFre.Text := PedResTipFre.Value;

        if (GGus_Id = 1)     or
           (GUsu_Id = 1)     or
           (GUsu_Id = 999)   or
           (GFlgPro = 'Sim') or
           (GFlgGer = 'Sim') then begin

           EdPrfRes.Enabled := True;

           EdPrfRes.Font.Style := [];

           EdDtfRes.Date := PedResDtfRes.Value;

           if PedResPrfRes.Value > 0 then
              EdPrfRes.Text := IntToStr(PedResPrfRes.Value)
           else
              EdPrfRes.Text := '0';

        end;

        EdFlgAnt.SetFocus;

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
  CodBan: integer;
begin
  inherited;

  PedRes.DisableControls;

  PedResId_PedRes.Value := 0;
  
  PedResCodTip.Value := 1;
  PedResQtdImp.Value := 0;
  PedResTotDsc.Value := 0;
  PedResTotDsr.Value := 0;
  PedResTotAcr.Value := 0;
  PedResLinRes.Value := 0;
  PedResQtiRe2.Value := 0;
  PedResQtiRe3.Value := 0;
  PedResQtiLib.Value := 0;
  PedResQtfRes.Value := 0;
  PedResBasIpi.Value := 0;
  PedResTotIpi.Value := 0;
  PedResBasIcm.Value := 0;
  PedResTotIcm.Value := 0;
  PedResBasSub.Value := 0;
  PedResTotSub.Value := 0;
  PedResTotVen.Value := 0;
  PedResTotCst.Value := 0;
  PedResTotRes.Value := 0;
  PedResTotRen.Value := 0;
  PedResTotLiq.Value := 0;
  PedResTotBrt.Value := 0;
  PedResMedCom.Value := 0;
  PedResBasCom.Value := 0;
  PedResTotCom.Value := 0;
  PedResTotGer.Value := 0;
  PedResComCli.Value := 0;
  PedResTotCli.Value := 0;
  PedResMedDsc.Value := 0;
  PedResMedAcr.Value := 0;
  PedResFatRes.Value := 0;
  PedResFatGer.Value := 0;
  PedResDevRes.Value := 0;
  PedResDevGer.Value := 0;
  PedResSldRes.Value := 0;
  PedResSldGer.Value := 0;
  PedResPrfRes.Value := 0;
  PedResDscReg.Value := 0;
  PedResTotFrt.Value := 0;
  PedResFlgAtu.Value := ' ';
  PedResDteRes.Value := Date;
  PedResDtfRes.Value := Date;
  PedResTipFre.Value := 'CIF incluso na NF';
  PedResTipFrt.Value := 'CIF';
  PedResFlgRej.Value := 'Nao';
  PedResFlgCon.Value := 'Nao';
  PedResLibCli.Value := 'Nao';
  PedResFlgFin.Value := 'Nao';
  PedResFlgCom.Value := 'Nao';
  PedResFlgOco.Value := 'Nao';
  PedResFlgDif.Value := 'Nao';
  PedResLibSld.Value := 'Nao';
  PedResFlgGer.Value := 'Nao';
  PedResFlgRes.Value := 'Nao';
  PedResFlgImp.Value := 'Nao';
  PedResFlgCtb.Value := 'Nao';
  PedResPedPro.Value := 'Nao';
  PedResFlgAnt.Value := 'Nao';
  PedResTipPfa.Value := 'Saida';
  PedResCodEmp.Value := GEmp_Id;
  PedResSitRes.Value := 'Nao Concluido';
  PedResHreRes.Value := TimeToStr(Time);

  if GCodVen_Id > 0 then begin

     pnApeVen.Caption := GNomVen_Id;

     EdCodVen.Text := IntToStr(GCodVen_Id);

     PedResCodVen.Value := GCodVen_Id;

  end;

  if Trim(PedParTipAtd.Value) = 'Atendente' then begin

     if GCodAtd_Id > 0 then PedResCodAtd.Value := GCodAtd_Id;

  end;

  PedRes.EnableControls;

  EdDteRes.Date := Date;
  EdDtfRes.Date := Date;
  
  EdPrfRes.Text := '0';

  EdFlgAnt.Text := 'Nao';
  EdTipFre.Text := 'CIF incluso na NF';

  EdTotFrt.Value := 0;

  if GEmp_Id > 0 then EdCodEmp.Text := IntToStr(GEmp_Id);

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.ApeEmp'+
               ' From GerEmp'+
               ' Where GerEmp.CodEmp = :CodEmp';

       if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > '+ QuotedStr('0');

       with Params do begin

            Params[0].AsInteger := PedResCodEmp.Value;

       end;

       Open;

       pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinCli.NomCli,'+
               '        FinCli.CgcCli,'+
               '        FinCli.UffCli,'+
               '        FinCli.CodBan,'+               
               '        FinCli.LimCli '+
               ' From FinCli'+
               ' Where FinCli.CodCli = :CodCli';

       with Params do begin

            Params[0].AsInteger := PedResCodCli.Value;

       end;

       Open;

       CodBan := FieldbyName('CodBan').AsInteger;

       pnNomCli.Caption := FieldbyName('NomCli').AsString;
       pnUfeRes.Caption := FieldbyName('UffCli').AsString;
       pnCgcCli.Caption := fFormatCgcCpf(FieldbyName('CgcCli').AsString);
       pnLimite.Caption := FormatFloat('###,###,##0.00',FieldbyName('LimCli').AsFloat);

  end;

  if CodBan > 0 then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinBan.NomBan From FinBan Where FinBan.CodBan = '+ QuotedStr(IntToStr(CodBan));
          Open;

          pnNomBan.Caption := copy('Forma de pagto: '+Trim(FieldbyName('NomBan').AsString),1,43);

     end;

     end
  else
     pnNomBan.Caption := '';        
  
  if Trim(PedParTipAtd.Value) = 'Atendente' then begin

     if GCodAtd_Id > 0 then begin

        EdCodAtd.Text := IntToStr(GCodAtd_Id);

        PedResCodAtd.Value := GCodAtd_Id;

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
             Open;

             pnApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

        end;
     end;
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstPfa.DscPfa'+
               ' From EstPfa'+
               ' Where EstPfa.TipPfa = '+ QuotedStr('Saida') +
               '   and EstPfa.CodPfa = '+ QuotedStr(PedResCodPfa.Value);
       Open;

       pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

  end;

  bPsqEmp.Enabled := True;
  bPsqCli.Enabled := True;
  bPsqPfa.Enabled := True;
  bPsqVen.Enabled := True;  

  EdCodEmp.Enabled := True;
  EdDteRes.Enabled := True;
  EdCodCli.Enabled := True;
  EdCodVen.Enabled := True;
  EdComCli.Enabled := True;
  EdFlgAnt.Enabled := True;
  EdTipFre.Enabled := True;
  EdTotFrt.Enabled := True;
  EdCodPfa.Enabled := True;

  EdCodEmp.Font.Style := [];
  EdDteRes.Font.Style := [];
  EdCodCli.Font.Style := [];
  EdCodVen.Font.Style := [];
  EdComCli.Font.Style := [];
  EdFlgAnt.Font.Style := [];
  EdTipFre.Font.Style := [];
  EdTotFrt.Font.Style := [];
  EdCodPfa.Font.Style := [];

  if (GGus_Id = 1)     or
     (GUsu_Id = 1)     or
     (GUsu_Id = 999)   or
     (GFlgPro = 'Sim') or
     (GFlgGer = 'Sim') then begin

     EdPrfRes.Enabled := True;

     EdPrfRes.Font.Style := [];

  end;

  if GGUs_Id <> 1 then begin

     if GCodVen_Id > 0 then begin

        EdCodVen.Enabled := False;

        EdCodVen.Font.Style := [fsBold];

        bPsqVen.Enabled := False;

     end;
  end;

  if Trim(PedParTipAtd.Value) = 'Atendente' then begin

     EdCodAtd.Enabled := True;

     EdCodAtd.Font.Style := [];

     if GGUs_Id <> 1 then begin

        if GCodAtd_Id > 0 then begin

           EdCodAtd.Enabled := False;

           EdCodAtd.Font.Style := [fsBold];

           bPsqAtd.Enabled := False;

        end;
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

  PedRe2Id_PedRe2.Value := 0;
  PedRe2Id_PedRes.Value := PedResId_PedRes.Value;

  PedRe2LiqRe2.Value := 0;
  PedRe2BrtRe2.Value := 0;
  PedRe2QtpRe2.Value := 0;
  PedRe2QtsRe2.Value := 0;
  PedRe2SldRe2.Value := 0;
  PedRe2CubRe2.Value := 0;
  PedRe2LiqRe2.Value := 0;
  PedRe2BrtRe2.Value := 0;
  PedRe2VluRe2.Value := 0;
  PedRe2VlqRe2.Value := 0;
  PedRe2DscRe2.Value := 0;
  PedRe2VdsRe2.Value := 0;
  PedRe2PacRe2.Value := 0;
  PedRe2VacRe2.Value := 0;
  PedRe2PcoRe2.Value := 0;
  PedRe2CstRe2.Value := 0;
  PedRe2VchRe2.Value := 0;
  PedRe2VreRe2.Value := 0;
  PedRe2VcpRe2.Value := 0;
  PedRe2VprRe2.Value := 0;
  PedRe2VcrRe2.Value := 0;
  PedRe2VmeRe2.Value := 0;
  PedRe2VpfRe2.Value := 0;
  PedRe2CstCst.Value := 0;
  PedRe2VchCst.Value := 0;
  PedRe2VreCst.Value := 0;
  PedRe2VcpCst.Value := 0;
  PedRe2VprCst.Value := 0;
  PedRe2VcrCst.Value := 0;
  PedRe2VmeCst.Value := 0;
  PedRe2VpfCst.Value := 0;
  PedRe2VcsRe2.Value := 0;
  PedRe2CstLan.Value := 0;
  PedRe2ValCli.Value := 0;
  PedRe2TotCli.Value := 0;
  PedRe2TotVen.Value := 0;
  PedRe2TotCst.Value := 0;
  PedRe2TotRen.Value := 0;
  PedRe2BasIpi.Value := 0;
  PedRe2TotIpi.Value := 0;
  PedRe2BasIcm.Value := 0;
  PedRe2TotIcm.Value := 0;
  PedRe2TotRe2.Value := 0;
  PedRe2TotGe2.Value := 0;
  PedRe2TotCub.Value := 0;
  PedRe2TotLiq.Value := 0;
  PedRe2TotBrt.Value := 0;
  PedRe2BasCom.Value := 0;
  PedRe2TotCom.Value := 0;
  PedRe2FlgAtu.Value := ' ';
  PedRe2CodClp.Value := '1';
  PedRe2CodTam.Value := 'UN';
  PedRe2CodCor.Value := 'UN';
  PedRe2FlgRen.Value := 'Nao';
  PedRe2FlgRes.Value := 'Nao';
  PedRe2FlgDup.Value := 'Nao';
  PedRe2TipDsc.Value := 'Percentual';
  PedRe2TipAcr.Value := 'Percentual';
  PedRe2ComCli.Value := PedResComCli.Value;
  PedRe2CodEit.Value := PedResCodEmp.Value;
  PedRe2NroRe2.Value := PedResQtiRe2.Value + 1;

  PedRe2.EnableControls;

  AntVluRe2 := PedRe2VluRe2.Value;
  AntPacRe2 := PedRe2PacRe2.Value;
  AntDscRe2 := PedRe2DscRe2.Value;
  AntTotRen := PedRe2TotRen.Value;

  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdQtpRe2.Enabled := True;
  EdVluRe2.Enabled := True;
  EdPacRe2.Enabled := True;
  EdDscRe2.Enabled := True;
  EdCodICl.Enabled := True;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if PedParExiRen.Value = 'Sim' then begin

        if PedParMudRen.Value = 'Sim' then begin

           pnTotRen.Visible := False;

           EdTotRen.Enabled := True;

        end;
     end;   

     end
  else
     begin

     if PedParMudRen.Value = 'Sim' then begin

        pnTotRen.Visible := False;

        EdTotRen.Enabled := True;

     end;
  end;

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
                Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp and GerEmp.CodFil > '+ QuotedStr('0');

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

           if Trim( quSql.FieldbyName('ApeEmp').AsString ) <> '' then
              pnApeEmp.Caption := quSql.FieldbyName('ApeEmp').AsString
           else
              begin

              pnApeEmp.Caption := '';

              fmsgErro('Empresa Informada não Encontrada.',EdCodEmp);

           end;

           end
        else
           begin

           pnApeEmp.Caption := '';

           fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdCodEmp);

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

           pnApeEmp.Caption := fmPsqEmp.NomEmp;

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

     if (not EdCodAtd.Focused) and
        (not EdComCli.Focused) and
        (not EdCodVen.Focused) and
        (not EdCodCli.Focused) and
        (not EdDteRes.Focused) and
        (not EdCodEmp.Focused) then
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
                     '        EstPfa.ModPfa '+
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
         
     if Trim( PedResCodPfa.Value ) <> '' then EdPrfRes.SetFocus;

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

     if Trim( PedResCodPfa.Value ) <> '' then EdPrfRes.SetFocus;

  end;
end;

procedure TfmManPed.EdPrfREsExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodPfa.Focused) and
        (not EdCodAtd.Focused) and
        (not EdComCli.Focused) and
        (not EdCodVen.Focused) and
        (not EdCodCli.Focused) and
        (not EdDteRes.Focused) and
        (not EdCodEmp.Focused) then
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

        pnApeEmp.Caption := fmPsqEmp.NomEmp;

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
                  '        EstPfa.ModPfa '+
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

        if PedResQtiRe2.Value > 0 then begin

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdVluRe2.Enabled := False;
           EdQtpRe2.Enabled := False;
           EdPacRe2.Enabled := False;
           EdDscRe2.Enabled := False;
           EdCodICl.Enabled := False;

           if EdTotRen.Enabled then begin
           
              pnTotRen.Visible := True;

              EdTotRen.Enabled := False;

           end;
           
           if PedRe2.State <> dsBrowse then
              PedRe2.CancelUpdates
           else
              begin

              if not PedRe2.Bof then PedRe2.Prior;

           end;

           grPedRe2.SetFocus;

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
  if (EdQtpRe2.Focused) or
     (EdVluRe2.Focused) or
     (EdPacRe2.Focused) or
     (EdDscRe2.Focused) or
     (EdCodICl.Focused) or (grPedRe2.Focused) then begin

     if ( Trim(PedRe2CodClp.Value) <> '' ) and
        ( Trim(PedRe2CodGru.Value) <> '' ) and
        ( Trim(PedRe2CodSub.Value) <> '' ) and
        ( Trim(PedRe2CodPro.Value) <> '' ) then begin

        if key = 116 then begin // F5-Reservas //

           try

              fmPsqRes := TfmPsqRes.Create(Self);

              fmPsqRes.Panel3.Caption := ' '+PedRe2CodClp.Value+'-'+PedRe2CodGru.Value+'.'+PedRe2CodSub.Value+'.'+PedRe2CodPro.Value+' - '+PedRe2DesRe2.Value;

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

              fmPsqCmp.Label1.Caption := ' '+PedRe2CodClp.Value+'-'+PedRe2CodGru.Value+'.'+PedRe2CodSub.Value+'.'+PedRe2CodPro.Value+' - '+PedRe2DesRe2.Value;

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

           fmAuxIni.CliTab := Trim(PedResCliTab.Value);

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

           fmAuxIni.CliTab := Trim(PedResCliTab.Value);

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

           fmAuxPsq.CliTab := Trim(PedResCliTab.Value);

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

     try

        fmPsqEst := TfmPsqEst.Create(Self);

        fmPsqEst.sEntr := sEntr;

        fmPsqEst.CliTab := Trim(PedResCliTab.Value);

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

  if key = 27 then begin

     if (EdTotFrt.Enabled) and (not EdFlgAnt.Enabled) then begin

        PedRes.CancelUpdates;

        EdTipFre.Enabled := False;
        EdTotFrt.Enabled := False;

        EdTipFre.Font.Style := [fsBold];
        EdTotFrt.Font.Style := [fsBold];

        grPedRe2.SetFocus;

        end
     else
        begin
           
        if PedRes.State <> dsBrowse then
           Close
        else
           begin

           if PedRe2.State <> dsBrowse then PedRe2.CancelUpdates;

           if (EdCodGru.Enabled) or
              (EdCodSub.Enabled) or
              (EdCodPro.Enabled) or
              (EdQtpRe2.Enabled) or
              (EdVluRe2.Enabled) or
              (EdPacRe2.Enabled) or
              (EdDscRe2.Enabled) or
              (EdCodICl.Enabled) then begin

              EdCodGru.Enabled := False;
              EdCodSub.Enabled := False;
              EdCodPro.Enabled := False;
              EdQtpRe2.Enabled := False;
              EdVluRe2.Enabled := False;
              EdPacRe2.Enabled := False;
              EdDscRe2.Enabled := False;
              EdDesRe2.Enabled := False;
              EdObsRe2.Enabled := False;
              EdCodICl.Enabled := False;
              EdCodUnd.Enabled := False;

              if EdTotRen.Enabled then begin
              
                 pnTotRen.Visible := True;

                 EdTotRen.Enabled := False;

              end;
              
              grPedRe2.SetFocus;

              end
           else
              begin

              if EdDesRe2.Enabled then begin

                 EdDesRe2.Enabled := False;
                 EdObsRe2.Enabled := False;

                 pnDesRe2.Visible := True;
                 pnObsRe2.Visible := True;

                 grPedRe2.SetFocus;

                 end
              else
                 Close;
           end;
        end;
     end;
  end;
  
  if key = 121 then begin // F10-Ocorrencias do Rejeicao do Pedido //

     if PedResFlgRej.Value = 'Sim' then begin

        try

           fmPsqRej := TfmPsqRej.Create(Self);

           fmPsqRej.PedRej.Close;
           fmPsqRej.PedRej.Params[0].AsInteger := PedResId_PedRes.Value;
           fmPsqRej.PedRej.Open;

           fmPsqRej.ShowModal;

        finally

           FreeAndNil(fmPsqRej);

        end;
     end;
  end;

  if key = 122 then begin // F11-Ocorrencias do Pedido //

     if PedResFlgOco.Value = 'Sim' then begin

        try

           fmPsqOco := TfmPsqOco.Create(Self);

           fmPsqOco.PedOco.Close;
           fmPsqOco.PedOco.Params[0].AsInteger := PedResId_PedRes.Value;
           fmPsqOco.PedOco.Open;

           fmPsqOco.PedRe2.Close;
           fmPsqOco.PedRe2.Params[0].AsInteger := PedResId_PedRes.Value;
           fmPsqOco.PedRe2.Open;

           fmPsqOco.ShowModal;

        finally

           FreeAndNil(fmPsqOco);

        end;
     end;
  end;

  if key = 123 then begin // F12-Finalizar Pedido //

     if PedResTotRes.Value > 0 then begin

        if grPedRe2.Focused then begin

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
              EdCodAtd.Clear;
              EdCodPfa.Clear;
              EdPrfRes.Clear;
              EdDtfRes.Clear;

              pnLimite.Caption := '0'+DecimalSeparator+'00';

              pnId_PedRes.Caption := '0';

              pnApeEmp.Caption := '';
              pnNomCli.Caption := '';
              pnNomBan.Caption := '';
              pnCgcCli.Caption := '';
              pnApeVen.Caption := '';
              pnApeAtd.Caption := '';
              pnUfeRes.Caption := '';
              pnNomPfa.Caption := '';

              PedRes.Close;
              PedRes.Params[0].AsInteger := 0;
              PedRes.Open;

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

procedure TfmManPed.grPedRe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroRe2,Id_PedRe2 : integer;
begin
  inherited;
  if key = 117 then begin // F6 - Cotações //

     if PedResId_PedFe2.Value = 0 then begin
     
        if PedParFlgCot.Value = 'Sim' then begin
     
           if PedRe2Id_PedRe2.Value > 0 then begin

              Id_PedRe2 := PedRe2Id_PedRe2.Value;

              PedRe2.Edit;

              PedRe2FlgAtu.Value := 'C';

              with PedRe2 do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if PedRe2.State <> dsBrowse then PedRe2.CancelUpdates;

                      grPedRe2.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              PedRe2.Close;
              PedRe2.Open;

              PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

              try

                 fmPsqRe4 := TfmPsqRe4.Create(Self);

                 fmPsqRe4.Panel3.Caption := ' '+PedRe2CodClp.Value+ '-' +PedRe2CodGru.Value+ '.' +PedRe2CodSub.Value+ '.' +PedRe2CodPro.Value+ ' - ' +PedRe2DesRe2.Value;

                 fmPsqRe4.pnQtdCot.Caption := FormatFloat('###,###,##0.0000',PedRe2QtpRe2.Value);

                 fmPsqRe4.PedRe4.Close;
                 fmPsqRe4.PedRe4.Params[0].AsInteger := PedRe2Id_PedRe2.Value;
                 fmPsqRe4.PedRe4.Open;

                 fmPsqRe4.ShowModal;

              finally

                 FreeAndNil(fmPsqRe4);

              end;
           end;
        end;
     end;   
  end;
  
  if key = 68 then begin // D - Mudar Descrição/Observações Sobre o Item //

     if PedRe2Id_PedRe2.Value > 0 then begin

        pnDesRe2.Visible := False;
        pnObsRe2.Visible := False;

        EdDesRe2.Enabled := True;
        EdObsRe2.Enabled := True;

        PedRe2.Edit;

        EdDesRe2.SetFocus;

     end;
  end;

  if key = 13 then begin // Tecla - ENTER //

     if PedRe2Id_PedRe2.Value > 0 then begin

        PedRe2.Edit;

        if PedResId_PedFe2.Value = 0 then EdQtpRe2.Enabled := True;
        
        EdVluRe2.Enabled := True;
        EdPacRe2.Enabled := True;
        EdDscRe2.Enabled := True;
        EdCodICl.Enabled := True;

        if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

           if PedParExiRen.Value = 'Sim' then begin

              if PedParMudRen.Value = 'Sim' then begin
              
                 pnTotRen.Visible := False;

                 EdTotRen.Enabled := True;

              end;
           end;
              
           end
        else
           begin

           if PedParMudRen.Value = 'Sim' then begin

              pnTotRen.Visible := False;

              EdTotRen.Enabled := True;

           end;
        end;

        if EdQtpRe2.Enabled then
           EdQtpRe2.SetFocus
        else
           EdVluRe2.SetFocus;

     end;
  end;

  if key = 40 then begin // Tecla - Seta para Baixo //

     if PedRe2NroRe2.Value = PedResQtiRe2.Value then begin

        if PedResId_PedFe2.Value = 0 then PedRe2.Append;

     end;
  end;

  if key = 46 then begin // Tecla - DEL //

     if PedRe2Id_PedRe2.Value > 0 then begin

        if PedResId_PedFe2.Value = 0 then begin

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

                   grPedRe2.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedRe2.Close;
           PedRe2.Open;

           PedRes.Close;
           PedRes.Open;

           if NroRe2 < PedResQtiRe2.Value then
              PedRe2.Locate('Id_PedRes;NroRe2',VarArrayOf([PedRe2Id_PedRes.Value,NroRe2]),[LoPartialKey])
           else
              begin

              if PedResQtiRe2.Value = 0 then
                 PedRe2.Append
              else
                 PedRe2.Last;

           end;

           end
        else
           fmsgErro('Operação não pode ser realizada em pedidos gerados por fechamento de vales.',Nil);
           
     end;
  end;
end;

procedure TfmManPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja realmente abandonar o pedido ?','O') then begin

        if PedRes.State <> dsBrowse then PedRes.CancelUpdates;
        if PedRe2.State <> dsBrowse then PedRe2.CancelUpdates;

        fmManRes.PedRes.Close;
        fmManRes.PedRes.Open;

        fmManRes.PedRe2.Close;
        fmManRes.PedRe2.Open;

        Action := CaFree;

        end
     else
        begin

        if PedResId_PedRes.Value = 0 then begin

           if PedRes.State = dsBrowse then PedRes.Insert;

           end
        else
           begin

           if PedResQtiRe2.Value = 0 then
              PedRe2.Append
           else
              grPedRe2.SetFocus;

        end;

        Abort;

     end;

     end
  else
     begin

     fmManRes.PedRes.Close;
     fmManRes.PedRes.Open;

     fmManRes.PedRe2.Close;
     fmManRes.PedRe2.Open;

     Action := CaFree;

  end;
end;

procedure TfmManPed.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if GFlgAce = 'Nao' then begin
     
        if Trim(PedResSitRes.Value) = 'Faturado' then fMsg('Operação não pode ser realizada. Pedido faturado.','E')

        else if Trim(PedResSitRes.Value) = 'Parcialmente Faturado' then fMsg('Operação não pode ser realizada. Pedido parcialmente faturado.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando Liberacao do Depto Comercial' then fMsg('Operação não pode ser realizada. Pedido aguardando liberação do depto comercial.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando Separacao dos Itens a Faturar' then fMsg('Operação não pode ser realizada. Pedido em processo de separação dos itens para faturamento.','E')

        else if Trim(PedResSitRes.Value) = 'Pronto para Faturar' then fMsg('Operação não pode ser realizada. Pedido pronto para faturar.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando Separacao de Estoque' then fMsg('Operação não pode ser realizada. Pedido aguardando separação de estoque.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando Liberacao para Faturamento' then fMsg('Operação não pode ser realizada. Pedido aguardando liberacao para faturamento.','E')

        else if Trim(PedResSitRes.Value) = 'Cancelado' then fMsg('Operação não pode ser realizada. Pedido cancelado','E')

        else if Trim(PedResSitRes.Value) = 'Faturado com Saldo nao Atendido' then fMsg('Operação não pode ser realizada. Pedido faturado com saldo que não será atendido.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando informacoes de transporte' then fMsg('Operação não pode ser realizada. Pedido aguardando informações de transporte.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando Confirmacao do Pagamento' then fMsg('Operação não pode ser realizada. Pedido aguardando confirmação do pagamento.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando Periodo de Programacao' then fMsg('Operação não pode ser realizada. Pedido aguardando periodo de programação.','E');

        end
     else
        begin

        if Trim(PedResSitRes.Value) = 'Cancelado' then fMsg('Operação não pode ser realizada. Pedido cancelado.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando Separacao dos Itens a Faturar' then fMsg('Operação não pode ser realizada. Pedido em processo de separação dos itens para faturamento.','E')

        else if Trim(PedResSitRes.Value) = 'Pronto para Faturar' then fMsg('Operação não pode ser realizada. Pedido pronto para faturar.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando Separacao de Estoque' then fMsg('Operação não pode ser realizada. Pedido aguardando separação de estoque.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando Liberacao para Faturamento' then fMsg('Operação não pode ser realizada. Pedido aguardando liberacao para faturamento.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando informacoes de transporte' then fMsg('Operação não pode ser realizada. Pedido aguardando informações de transporte.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando Confirmacao do Pagamento' then fMsg('Operação não pode ser realizada. Pedido aguardando confirmação do pagamento.','E')

        else if Trim(PedResSitRes.Value) = 'Faturado' then fMsg('Operação não pode ser realizada. Pedido concluido.','E')

        else if Trim(PedResSitRes.Value) = 'Parcialmente Faturado' then fMsg('Operação não pode ser realizada. Pedido concluido.','E')

        else if Trim(PedResSitRes.Value) = 'Faturado com Saldo nao Atendido' then fMsg('Operação não pode ser realizada. Pedido faturado com saldo que não será atendido.','E')

        else if Trim(PedResSitRes.Value) = 'Aguardando Periodo de Programacao' then fMsg('Operação não pode ser realizada. Pedido aguardando periodo de programação.','E');

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

           if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

              if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then begin

                 if GCodVen_Id > 0 then begin

                    if PedResCodVen.Value <> GCodVen_Id then begin

                       PedResCodAtd.Value := GCodVen_Id;

                       if PedResCodAtd.Value = 0 then fmsgErro('Atendente não Encontrado para a Cotação.',EdCodCli);

                    end;
                 end;
              end;

              if PedResCodAtd.Value > 0 then begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
                      Open;

                      pnApeAtd.Caption := FieldbyName('ApeVen').AsString;

                 end;

                 end
              else
                 pnApeAtd.Caption := ' ';

           end;

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
             Text := ' Select PedRes.Id_PedRes From PedRes Where PedRes.SeqRes = '+ QuotedStr(SeqRes);
             Open;

        end;

        PedRes.Close;
        PedRes.Params[0].AsInteger := quSQL.FieldbyName('Id_PedRes').AsInteger;
        PedRes.Open;

        PedRe2.Close;
        PedRe2.Open;

        if Status = 'dsInsert' then begin

           with fmManRes.PedRes,SQL do begin

                Close;
                Text := fmManRes.sBase +
                        ' Where PedRes.Id_PedRes = :Id_PedRes';

                with Params do begin

                     Params[0].AsInteger := PedResId_PedRes.Value;

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
        EdComCli.Enabled := False;
        EdCodAtd.Enabled := False;
        EdFlgAnt.Enabled := False;
        EdTipFre.Enabled := False;
        EdTotFrt.Enabled := False;
        EdCodPfa.Enabled := False;
        EdPrfRes.Enabled := False;
        EdDtfRes.Enabled := False;

        EdCodEmp.Font.Style := [fsBold];
        EdDteRes.Font.Style := [fsBold];
        EdCodCli.Font.Style := [fsBold];
        EdCodVen.Font.Style := [fsBold];
        EdComCli.Font.Style := [fsBold];
        EdCodAtd.Font.Style := [fsBold];
        EdFlgAnt.Font.Style := [fsBold];
        EdTipFre.Font.Style := [fsBold];
        EdTotFrt.Font.Style := [fsBold];
        EdCodPfa.Font.Style := [fsBold];
        EdPrfRes.Font.Style := [fsBold];
        EdDtfRes.Font.Style := [fsBold];

        bPsqEmp.Enabled := False;
        bPsqCli.Enabled := False;
        bPsqVen.Enabled := False;
        bPsqAtd.Enabled := False;
        bPsqPfa.Enabled := False;

        if PedResQtiRe2.Value = 0 then
           PedRe2.Append
        else
           grPedRe2.SetFocus;

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

                if EdQtpRe2.Enabled then
                   EdQtpRe2.SetFocus
                else
                   EdVluRe2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedRe2.Close;
        PedRe2.Open;

        PedRes.Close;
        PedRes.Open;

        PedRe2.Locate('Id_PedRes;NroRe2',VarArrayOf([PedRe2Id_PedRes.Value,NroRe2]),[LoPartialKey]);

        if PedRe2NroRe2.Value = PedResQtiRe2.Value then
           PedRe2.Append
        else
           begin

           PedRe2.Next;

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpRe2.Enabled := False;
           EdVluRe2.Enabled := False;
           EdPacRe2.Enabled := False;
           EdDscRe2.Enabled := False;
           EdDesRe2.Enabled := False;
           EdObsRe2.Enabled := False;
           EdCodICl.Enabled := False;

           if EdTotRen.Enabled then begin

              pnTotRen.Visible := True;

              EdTotRen.Enabled := False;

           end;
           
           pnDesRe2.Visible := True;
           pnObsRe2.Visible := True;

           grPedRe2.SetFocus;

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
     EdPacRe2.Enabled := False;
     EdDscRe2.Enabled := False;
     EdDesRe2.Enabled := False;
     EdObsRe2.Enabled := False;
     EdCodICl.Enabled := False;

     if EdTotRen.Enabled then begin
     
        pnTotRen.Visible := True;

        EdTotRen.Enabled := False;

     end;
     
     pnDesRe2.Visible := True;
     pnObsRe2.Visible := True;

     grPedRe2.SetFocus;

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

        fmAuxIni.CliTab := Trim(PedResCliTab.Value);

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

        fmAuxPsq.CliTab := Trim(PedResCliTab.Value);

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
PrecoLiquido : real;
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
                           '        EstIte.CstIte,'+
                           '        EstIte.VchIte,'+
                           '        EstIte.VreIte,'+
                           '        EstIte.VcpIte,'+
                           '        EstIte.VprIte,'+
                           '        EstIte.VcrIte,'+
                           '        EstIte.VmeIte,'+
                           '        EstIte.VpfIte,'+
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

              if (Trim(PedResModPfa.Value) <> 'Transferencias') and (Trim(PedResModPfa.Value) <> 'Remessas') and (Trim(PedResModPfa.Value) <> 'Consumo') then begin

                 try

                    fmPsqTab := TfmPsqTab.Create(Self);

                    if (Trim(PedResCliTab.Value) = '98 Qualquer das Tabelas') or (Trim(PedResCliTab.Value) = '99 Tabela Livre') or (Trim(PedResCliTab.Value) = '')then begin

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
                                fmPsqTab.StrTab.Cells[3,SeqLin] := PreString(FormatFloat('###,###,##0.0000',PrecoLiquido),26);

                                Inc(SeqLin);

                             end;

                             Inc(SeqIni);

                       end;

                       end
                    else
                       begin

                       SeqLin := 0;
                       SeqIni := 1;

                       while SeqIni <= StrToInt(copy(Trim(PedResCliTab.Value),1,2)) do begin

                             if quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then begin

                                PrecoLiquido := quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat;

                                if quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then
                                   PrecoLiquido := PrecoLiquido - ((quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat * PrecoLiquido)/100);

                                fmPsqTab.StrTab.Cells[0,SeqLin] := 'TABELA '+ fNumZeros(IntToStr(SeqIni),2);
                                fmPsqTab.StrTab.Cells[1,SeqLin] := PreString(FormatFloat('###,###,##0.0000',quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat),26);
                                fmPsqTab.StrTab.Cells[2,SeqLin] := PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat),26)+' %';
                                fmPsqTab.StrTab.Cells[3,SeqLin] := PreString(FormatFloat('###,###,##0.0000',PrecoLiquido),26);

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

                 if (Trim(PedResModPfa.Value) <> 'Transferencias') and (Trim(PedResModPfa.Value) <> 'Remessas') and (Trim(PedResModPfa.Value) <> 'Consumo') then
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

                    if PedRe2PacRe2.Value > 0 then begin

                       PedRe2VacRe2.Value := fRound((PedRe2PacRe2.Value * PedRe2VlqRe2.Value)/100,4);

                       PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VacRe2.Value,4);

                    end;

                    PedRe2ValCli.Value := 0;
                    PedRe2TotCli.Value := 0;

                    if PedRe2ComCli.Value > 0 then begin

                       PedRe2ValCli.Value := fRound((PedRe2ComCli.Value * PedRe2VlqRe2.Value)/100,4);

                       PedRe2TotCli.Value := fRound(PedRe2ValCli.Value * PedRe2QtpRe2.Value,2);

                    end;

                    if PedRe2PdpRe2.Value > 0 then begin

                       PedRe2VdpRe2.Value := fRound((PedRe2PdpRe2.Value * PedRe2VlqRe2.Value)/100,4);

                       PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdpRe2.Value,4);

                    end;

                    if PedRe2PapRe2.Value > 0 then begin

                       PedRe2VapRe2.Value := fRound((PedRe2PapRe2.Value * PedRe2VlqRe2.Value)/100,4);

                       PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VapRe2.Value,4);

                    end;
                 end;

                 PedRe2TotRe2.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);

                 if Trim(PedResFlgTab.Value) = 'Ultimo Preco'           then PedRe2VcsRe2.Value := quSQL.FieldbyName('CstIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo Historico'        then PedRe2VcsRe2.Value := quSQL.FieldbyName('VchIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo Ponderado'        then PedRe2VcsRe2.Value := quSQL.FieldbyName('VcpIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo Referencial'      then PedRe2VcsRe2.Value := quSQL.FieldbyName('VcrIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo Historico (G)'    then PedRe2VcsRe2.Value := quSQL.FieldbyName('VreIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo Ponderado (G)'    then PedRe2VcsRe2.Value := quSQL.FieldbyName('VprIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Media Ponderada (E)'    then PedRe2VcsRe2.Value := quSQL.FieldbyName('VmeIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo da Ultima Compra' then PedRe2VcsRe2.Value := quSQL.FieldbyName('VpfIte').AsFloat;

                 if PedRe2VcsRe2.Value = 0 then begin

                    if PedRe2CstLan.Value > 0 then PedRe2VcsRe2.Value := PedRe2CstLan.Value;

                 end;

                 PedRe2TotRe2.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);
                 PedRe2TotVen.Value := fRound(PedRe2QtpRe2.Value * PedRe2VlqRe2.Value,2);
                 PedRe2TotCst.Value := fRound(PedRe2QtpRe2.Value * PedRe2VcsRe2.Value,2);

                 if PedRe2DsrRe2.Value > 0 then begin

                    PedRe2VdrRe2.Value := fRound((PedRe2DsrRe2.Value * PedRe2VlqRe2.Value)/100,4);

                    PedRe2TotDsr.Value := fRound(PedRe2VdrRe2.Value * PedRe2QtpRe2.Value,2);

                    PedRe2CodSt2.Value := '40';

                 end;

                 PedRe2TotGe2.Value := fRound(PedRe2TotRe2.Value - PedRe2TotDsr.Value,2);

                 if PedRe2TotGe2.Value > 0 then begin

                    if PedRe2TotCst.Value > 0 then
                       PedRe2TotRen.Value := fRound(((PedRe2TotGe2.Value - (PedRe2TotCst.Value + PedRe2TotCli.Value)) * 100)/(PedRe2TotCst.Value + PedRe2TotCli.Value),2)
                    else
                       PedRe2TotRen.Value := 0;

                    end
                 else
                    PedRe2TotRen.Value := 0;

                 PedRe2FlgRen.Value := 'Nao';

                 AntTotRen := PedRe2TotRen.Value;

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
              fmsgErro('Campo de Preenchimento Obrigatorio.',EdQtpRe2);

        end;
     end;
  end;
end;

procedure TfmManPed.EdVluRe2Exit(Sender: TObject);
var
ret    : string;
FlgAce : string;
saida  : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdQtpRe2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedRe2.State <> dsBrowse then begin

           if PedRe2VluRe2.Value > 0 then begin

              if PedRe2VluRe2.Value <> AntVluRe2 then begin

                 if PedRe2CodGru.Value <> '999' then begin

                    FlgAce := 'Nao';

                    if PedRe2VluRe2.Value > AntVluRe2 then begin

                       if fMsg('Valor Informado para o Item Acima do Valor Praticado de Tabela. Confirma Valor Unitário ?','O') then FlgAce := 'Sim';

                       end
                    else
                      FlgAce := 'Sim';

                    end
                 else
                    FlgAce := 'Sim';

                 if FlgAce = 'Sim' then begin

                    PedRe2DscRe2.Value := 0;
                    PedRe2VdsRe2.Value := 0;
                    PedRe2PacRe2.Value := 0;
                    PedRe2VacRe2.Value := 0;
                    PedRe2TipDsc.Value := 'Valor';
                    PedRe2TipAcr.Value := 'Valor';

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

                    if PedRe2CodGru.Value <> '999' then begin

                       if AntVluRe2 > 0 then PedRe2VluRe2.Value := AntVluRe2;

                    end;

                    PedRe2ValCli.Value := 0;
                    PedRe2TotCli.Value := 0;

                    if PedRe2ComCli.Value > 0 then begin

                       PedRe2ValCli.Value := fRound((PedRe2ComCli.Value * PedRe2VlqRe2.Value)/100,4);

                       PedRe2TotCli.Value := fRound(PedRe2ValCli.Value * PedRe2QtpRe2.Value,2);

                    end;

                    if PedRe2PdpRe2.Value > 0 then begin

                       PedRe2VdpRe2.Value := fRound((PedRe2PdpRe2.Value * PedRe2VlqRe2.Value)/100,4);

                       PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdpRe2.Value,4);

                    end;

                    if PedRe2PapRe2.Value > 0 then begin

                       PedRe2VapRe2.Value := fRound((PedRe2PapRe2.Value * PedRe2VlqRe2.Value)/100,4);

                       PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VapRe2.Value,4);

                    end;

                    if (qticms > 1) and (GUfeEmp <> PedResUfeRes.Value) then begin

                       if (PedResCodTcl.Value <> 1) and
                          (PedResCodTcl.Value <> 3) and
                          (PedResCodTcl.Value <> 5) then begin

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

                    PedRe2TotRe2.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);
                    PedRe2TotVen.Value := fRound(PedRe2QtpRe2.Value * PedRe2VlqRe2.Value,2);
                    PedRe2TotCst.Value := fRound(PedRe2QtpRe2.Value * PedRe2VcsRe2.Value,2);

                    if PedRe2DsrRe2.Value > 0 then begin

                       PedRe2VdrRe2.Value := fRound((PedRe2DsrRe2.Value * PedRe2VlqRe2.Value)/100,4);

                       PedRe2TotDsr.Value := fRound(PedRe2VdrRe2.Value * PedRe2QtpRe2.Value,2);

                       PedRe2CodSt2.Value := '40';

                    end;

                    PedRe2TotGe2.Value := fRound(PedRe2TotRe2.Value - PedRe2TotDsr.Value,2);

                    if PedRe2TotCst.Value > 0 then
                       PedRe2TotRen.Value := fRound(((PedRe2TotGe2.Value - (PedRe2TotCst.Value + PedRe2TotCli.Value)) * 100)/(PedRe2TotCst.Value + PedRe2TotCli.Value),2)
                    else
                       PedRe2TotRen.Value := 0;

                    PedRe2FlgRen.Value := 'Nao';

                    AntTotRen := PedRe2TotRen.Value;

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

procedure TfmManPed.EdDesRe2Exit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then fmManPed.Panel3.OnExit(Sender);
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
           fmsgErro('Grupo Informado não Encontrado.',EdCodGru)
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

           if Trim( PedRe2CodGru.Value ) = '' then fmsgErro('Grupo Informado não Encontrado.',EdCodGru);

        end;
     end;

     end
  else
     fmsgErro('Grupo Informado não Encontrado.',EdCodGru);     
end;

procedure TfmManPed.SaiSubGrupo;
begin
  if Trim( PedRe2CodSub.Value ) <> '' then begin

     if PedRe2.State <> dsBrowse then begin

        PedRe2CodSub.Value := FNumZeros(PedRe2CodSub.Value,4);

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From EstSub'+
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
var
  ret    : string;
  CodEmp : integer;
  sContinuar : string;
begin
  if Trim( PedRe2CodPro.Value ) <> '' then begin

     if PedRe2.State <> dsBrowse then begin

        PedRe2CodPro.Value := FNumStrZero(PedRe2CodPro.Value);

        sContinuar := 'Sim';

        PedRe2FlgDup.Value := 'Nao';

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From PedRe2 '+
                     ' Where PedRe2.Id_PedRes = '+ QuotedStr(IntToStr(PedRe2Id_PedRes.Value)) +
                     '   and PedRe2.CodClp = '+ QuotedStr(PedRe2CodClp.Value) +
                     '   and PedRe2.CodGru = '+ QuotedStr(PedRe2CodGru.Value) +
                     '   and PedRe2.CodSub = '+ QuotedStr(PedRe2CodSub.Value) +
                     '   and PedRe2.CodPro = '+ QuotedStr(PedRe2CodPro.Value) +
                     '   and PedRe2.CodTam = '+ QuotedStr(PedRe2CodTam.Value) +
                     '   and PedRe2.CodCor = '+ QuotedStr(PedRe2CodCor.Value) ;
             Open;

        end;

        if quSql.FieldbyName('QtdReg').AsInteger > 0 then begin

           if PedParFlgDup.Value = 'Sim' then begin

              if fMsg('Item já informado para o pedido. Confirma duplicidade ?','O') then
                 PedRe2FlgDup.Value := 'Sim'
              else
                 sContinuar := 'Nao';

              end
           else
              sContinuar := 'Nao';
              
        end;

        if sContinuar = 'Sim' then begin

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
                        '        EstPro.RefPro,'+
                        '        EstPro.DscPro '+
                        ' From EstPro'+
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

              if Trim(quSQL.FieldbyName('RefPro').AsString) <> '' then begin

                 if PedParRefDes.Value = 'Sim' then
                    PedRe2DesRe2.Value := Trim(quSQL.FieldbyName('RefPro').AsString)+ ' ' +Trim(quSQL.FieldbyName('DscPro').AsString)
                 else
                    PedRe2DesRe2.Value := Trim(quSQL.FieldbyName('DscPro').AsString);

                 end
              else
                 PedRe2DesRe2.Value := Trim(quSQL.FieldbyName('DscPro').AsString);

              PedRe2DesRe2.Value := copy(PedRe2DesRe2.Value,1,70);
                 
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
                      Text := ' Select EstIpi.TrbIpi'+
                              ' From EstIpi'+
                              ' Where EstIpi.CodIpi = '+ QuotedStr(PedRe2RegIpi.Value)+
                              '   and EstIpi.TipIpi = '+ QuotedStr(PedRe2TipIpi.Value);
                      Open;

                      PedRe2TrbIpi.Value := FieldbyName('TrbIpi').AsString;

                 end;
              end;

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select PedICl.CodICl'+
                           ' From PedICl'+
                           ' Where PedICl.CodCli = '+ QuotedStr(IntToStr(PedResCodCli.Value)) +
                           '   and PedICl.CodClp = '+ QuotedStr(PedRe2CodClp.Value) +
                           '   and PedICl.CodGru = '+ QuotedStr(PedRe2CodGru.Value) +
                           '   and PedICl.CodSub = '+ QuotedStr(PedRe2CodSub.Value) +
                           '   and PedICl.CodPro = '+ QuotedStr(PedRe2CodPro.Value) ;
                   Open;

                   PedRe2CodICl.Value := Trim(FieldbyName('CodICl').AsString);

              end;

              if (qticms = 1) and (GUfeEmp <> PedResUfeRes.Value) then begin

                 if (PedResCodTcl.Value <> 1) and (PedResCodTcl.Value <> 3) and (PedResCodTcl.Value <> 5) then begin

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select GerIcm.PerIcm'+
                                 ' From GerIcm'+
                                 ' Where GerIcm.SigUfe = '+ QuotedStr(PedResUfeRes.Value);
                         Open;

                         PedRe2IcmRe2.Value := FieldbyName('PerIcm').AsFloat;

                    end;
                 end;
              end;

              CodEmp := PedResCodEmp.Value;

              if PedResLanEst.Value = 'Sim' then begin

                 if PedResCodFil.Value > 0 then CodEmp := PedResCodFil.Value;

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstIte.CodEmp,'+
                           '        EstIte.CstIte,'+
                           '        EstIte.VchIte,'+
                           '        EstIte.VreIte,'+
                           '        EstIte.VcpIte,'+
                           '        EstIte.VprIte,'+
                           '        EstIte.VcrIte,'+
                           '        EstIte.VmeIte,'+
                           '        EstIte.VpfIte '+
                           ' From EstIte'+
                           ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                           '   and EstIte.CodClp = '+ QuotedStr(PedRe2CodClp.Value) +
                           '   and EstIte.CodGru = '+ QuotedStr(PedRe2CodGru.Value) +
                           '   and EstIte.CodSub = '+ QuotedStr(PedRe2CodSub.Value) +
                           '   and EstIte.CodPro = '+ QuotedStr(PedRe2CodPro.Value) ;
                   Open;

              end;

              if quSql.FieldbyName('CodEmp').AsInteger > 0 then begin

                 PedRe2CstRe2.Value := quSQL.FieldbyName('CstIte').AsFloat;
                 PedRe2VchRe2.Value := quSQL.FieldbyName('VchIte').AsFloat;
                 PedRe2VreRe2.Value := quSQL.FieldbyName('VreIte').AsFloat;
                 PedRe2VcpRe2.Value := quSQL.FieldbyName('VcpIte').AsFloat;
                 PedRe2VprRe2.Value := quSQL.FieldbyName('VprIte').AsFloat;
                 PedRe2VcrRe2.Value := quSQL.FieldbyName('VcrIte').AsFloat;
                 PedRe2VmeRe2.Value := quSQL.FieldbyName('VmeIte').AsFloat;
                 PedRe2VpfRe2.Value := quSQL.FieldbyName('VpfIte').AsFloat;
                 PedRe2CstCst.Value := quSQL.FieldbyName('CstIte').AsFloat;
                 PedRe2VchCst.Value := quSQL.FieldbyName('VchIte').AsFloat;
                 PedRe2VreCst.Value := quSQL.FieldbyName('VreIte').AsFloat;
                 PedRe2VcpCst.Value := quSQL.FieldbyName('VcpIte').AsFloat;
                 PedRe2VprCst.Value := quSQL.FieldbyName('VprIte').AsFloat;
                 PedRe2VcrCst.Value := quSQL.FieldbyName('VcrIte').AsFloat;
                 PedRe2VmeCst.Value := quSQL.FieldbyName('VmeIte').AsFloat;
                 PedRe2VpfCst.Value := quSQL.FieldbyName('VpfIte').AsFloat;

                 if Trim(PedResFlgTab.Value) = 'Ultimo Preco'           then PedRe2VcsRe2.Value := quSQL.FieldbyName('CstIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo Historico'        then PedRe2VcsRe2.Value := quSQL.FieldbyName('VchIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo Ponderado'        then PedRe2VcsRe2.Value := quSQL.FieldbyName('VcpIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo Referencial'      then PedRe2VcsRe2.Value := quSQL.FieldbyName('VcrIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo Historico (G)'    then PedRe2VcsRe2.Value := quSQL.FieldbyName('VreIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo Ponderado (G)'    then PedRe2VcsRe2.Value := quSQL.FieldbyName('VprIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Media Ponderada (E)'    then PedRe2VcsRe2.Value := quSQL.FieldbyName('VmeIte').AsFloat;
                 if Trim(PedResFlgTab.Value) = 'Custo da Ultima Compra' then PedRe2VcsRe2.Value := quSQL.FieldbyName('VpfIte').AsFloat;

                 if PedRe2VcsRe2.Value = 0 then begin

                    if PedRe2CstLan.Value > 0 then PedRe2VcsRe2.Value := PedRe2CstLan.Value;

                 end;
                    
                 if (qticms > 1) and (GUfeEmp <> PedResUfeRes.Value) then begin

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

                    if ret = 'N' then EdCodPro.SetFocus;

                 end;

                 EdQtpRe2.SetFocus;

                 end
              else
                 fmsgErro('Item Informado não Encontrado na Empresa.',EdCodPro);

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
  NroSuf : string;
  LocPfa : string;
  CodGCl : integer;
  CodBan : integer;
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
                        '        FinCli.CodBan,'+
                        '        FinCli.CodAtd,'+
                        '        FinCli.CodGCl '+
                        ' From FinCli'+
                        ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedResCodCli.Value));
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
                        '        FinCli.CodBan,'+
                        '        FinCli.CodAtd,'+
                        '        FinCli.CodGCl '+
                        ' From FinCli'+
                        ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedResCodCli.Value)) +
                        '   and FinCli.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));
                Open;

           end;
        end;

        if quSql.FieldbyName('CodCli').AsInteger = PedResCodCli.Value then begin

           NroSuf := quSql.FieldbyName('NroSuf').AsString;
           CodGCl := quSql.FieldbyName('CodGCl').AsInteger;
           CodBan := quSQL.FieldbyName('CodBan').AsInteger;

           PedResCodVen.Value := quSQL.FieldbyName('CodVen').AsInteger;
           PedResUfeRes.Value := Trim(quSQL.FieldbyName('UffCli').AsString);

           pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
           pnUfeRes.Caption := quSQL.FieldbyName('UffCli').AsString;
           pnCgcCli.Caption := fFormatCgcCpf(quSQL.FieldbyName('CgcCli').AsString);
           pnLimite.Caption := FormatFloat('###,###,##0.00',quSQL.FieldbyName('LimCli').AsFloat);

           if PedResCodVen.Value > 0 then EdCodVen.Text := quSQL.FieldbyName('CodVen').AsString;

           if Trim(quSQL.FieldbyName('CodPfa').AsString) <> '' then begin

              PedResCodPfa.Value := Trim(quSQL.FieldbyName('CodPfa').AsString);
              PedResTipPfa.Value := Trim(quSQL.FieldbyName('TipPfa').AsString);

           end;

           if CodBan > 0 then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FinBan.NomBan From FinBan Where FinBan.CodBan = '+ QuotedStr(IntToStr(CodBan));
                   Open;

                   pnNomBan.Caption := copy('Forma de pagto: '+Trim(FieldbyName('NomBan').AsString),1,43);

              end;

              end
           else
              pnNomBan.Caption := '';
        
           if PedResCodVen.Value > 0 then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FinVen.CodVen,FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedResCodVen.Value));
                   Open;

              end;

              if quSQL.FieldbyName('CodVen').AsInteger > 0 then
                 pnApeVen.Caption := quSQL.FieldbyName('ApeVen').AsString
              else
                 begin

                 pnApeVen.Caption := ' ';

                 fmsgErro('Vendedor Informado para o Cliente não Encontrado.',EdCodCli);

              end;
           end;

           if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

              if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then begin

                 if GCodVen_Id > 0 then begin

                    if PedResCodVen.Value <> GCodVen_Id then begin

                       PedResCodAtd.Value := GCodVen_Id;

                       if PedResCodAtd.Value = 0 then fmsgErro('Atendente não Encontrado para a Cotação.',EdCodCli);

                    end;
                 end;
              end;

              if PedResCodAtd.Value > 0 then begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
                      Open;

                      pnApeAtd.Caption := FieldbyName('ApeVen').AsString;

                 end;

                 end
              else
                 pnApeAtd.Caption := ' ';

           end;

           if Trim(PedResCodPfa.Value) <> '' then begin

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
                   Text := ' Select EstPfa.DscPfa'+
                           ' From EstPfa '+
                           ' Where EstPfa.TipPfa = '+ QuotedStr(PedResTipPfa.Value) +
                           '   and EstPfa.CodPfa = '+ QuotedStr(PedResCodPfa.Value) +
                           '   and EstPfa.LocPfa = '+ QuotedStr(LocPfa) ;
                   Open;

                   pnNomPfa.Caption := Trim(FieldbyName('DscPfa').AsString);

              end;
           end;

           if GCodVen_Id > 0 then begin

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

           if Trim( PedResUfeRes.Value ) <> '' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select GerUfe.SigUfe,'+
                           '        GerUfe.DscUfe '+
                           ' From GerUfe'+
                           ' Where GerUfe.SigUfe = '+ QuotedStr(PedResUfeRes.Value);
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

              if EdCodVen.Enabled then
                 EdCodVen.SetFocus
              else
                 begin

                 if EdCodAtd.Enabled then
                    EdCodAtd.SetFocus
                 else
                    EdFlgAnt.SetFocus;

              end;
              
              end
           else
              fmsgErro('Endereço de faturamento do cliente incompleto. Falta UF',EdCodCli);

           end
        else
           begin

           pnNomCli.Caption := '';
           pnNomBan.Caption := '';
           pnCgcCli.Caption := '';
           pnUfeRes.Caption := '';
           pnApeVen.Caption := '';
           pnLimite.Caption := '0' + decimalSeparator + '00';

           fmsgErro('Cliente informado não localizado.',EdCodCli);

        end;
     end;

     end
  else
     begin

     pnNomCli.Caption := '';
     pnNomBan.Caption := '';
     pnUfeRes.Caption := '';
     pnCgcCli.Caption := '';
     pnApeVen.Caption := '';
     pnLimite.Caption := '0'+decimalSeparator+'00';

     fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodCli);

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

           pnApeVen.Caption := fmAuxIni.NomVen;

           EdCodVen.Text := IntToStr(PedResCodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if CodVen > 0 then EdComCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';
        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           CodVen := fmAuxPsq.CodVen;

           PedResCodVen.Value := fmAuxPsq.CodVen;

           pnApeVen.Caption := fmAuxPsq.NomVen;

           EdCodVen.Text := IntToStr(PedResCodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CodVen > 0 then EdComCli.SetFocus;

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
                   Text := ' Select FinVen.ApeVen'+
                           ' From FinVen'+
                           ' Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedResCodVen.Value));
                   Open;

              end;

              if Trim( quSql.FieldbyName('ApeVen').AsString ) <> '' then
                 pnApeVen.Caption := quSql.FieldbyName('ApeVen').AsString
              else
                 begin

                 pnApeVen.Caption := '';

                 fmsgErro('Vendedor Informado não Encontrado.',EdCodVen);

              end;

              end
           else
              begin

              pnApeVen.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodVen);

           end;

           end
        else
           begin

           pnApeVen.Caption := '';

           fmsgErro('Vendedor Informado não Encontrado.',EdCodVen);

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

        pnApeVen.Caption := fmAuxIni.NomVen;

        EdCodVen.Text := IntToStr(PedResCodVen.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodVen.SetFocus;

end;

procedure TfmManPed.grPedRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
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

     if ((PedRe2.FieldbyName('FlgVal').AsString = 'Sim') or (PedRe2.FieldbyName('FlgMar').AsString = 'Sim')) and (PedRe2.FieldbyName('FlgLib').AsString = 'Nao') then begin

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
     AntPacRe2 := PedRe2PacRe2.Value;
     AntDscRe2 := PedRe2DscRe2.Value;
     AntTotRen := PedRe2TotRen.Value;

  end;

  pnDesRe2.Caption := PedRe2DesRe2.Value;
  pnObsRe2.Caption := PedRe2ObsRe2.Value;
  pnClsIpi.Caption := PedRe2ClsIpi.Value;
  pnRefRe2.Caption := PedRe2RefRe2.Value;

  pnTrbSub.Caption := Trim(PedRe2TrbSub.Value);
  
  pnId_PedRes.Caption := IntToStr(PedResId_PedRes.Value);

  if PedResFlgOco.Value = 'Sim' then begin

     if not Image2.Visible then Image2.Visible := True;

     end
  else
     begin

     if not Image1.Visible then Image1.Visible := True;
     
  end;
     
  pnTotRes.Caption := FormatFloat('###,###,##0.00',PedResTotRes.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00',PedResTotIpi.Value);
  pnTotSub.Caption := FormatFloat('###,###,##0.00',PedResTotSub.Value);
  pnTotDsr.Caption := FormatFloat('###,###,##0.00',PedResTotDsr.Value);
  pnTotGer.Caption := FormatFloat('###,###,##0.00',PedResTotGer.Value);
  pnRenPed.Caption := FormatFloat('###,###,##0.00',PedResTotRen.Value);
  pnLimite.Caption := FormatFloat('###,###,##0.00',PedResLimCli.Value);
  pnTotRen.Caption := FormatFloat('###,###,##0.00',PedRe2TotRen.Value);

  pnVcsRe2.Caption := FormatFloat('###,###,##0.0000',PedRe2VcsRe2.Value);
  pnTotCub.Caption := FormatFloat('###,###,##0.0000',PedResTotCub.Value);
  pnTotLiq.Caption := FormatFloat('###,###,##0.0000',PedResTotLiq.Value);
  pnTotBrt.Caption := FormatFloat('###,###,##0.0000',PedResTotBrt.Value);

  if PedRe2.State = dsInsert then
     pnNroRe2.Caption := FNumZeros(IntToStr(PedRe2NroRe2.Value),3)+ '/' +FNumZeros(IntToStr(PedResQtiRe2.Value + 1),3)
  else
     pnNroRe2.Caption := FNumZeros(IntToStr(PedRe2NroRe2.Value),3)+ '/' +FNumZeros(IntToStr(PedResQtiRe2.Value),3);

end;

procedure TfmManPed.EdVluRe2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Últimas Vendas para o Item}

     try

        fmPsqUve := TfmPsqUve.Create(Self);

        fmPsqUve.Panel3.Caption := ' '+PedRe2CodClp.Value+'-'+PedRe2CodGru.Value+'.'+PedRe2CodSub.Value+'.'+PedRe2CodPro.Value+' - '+PedRe2DesRe2.Value;

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

  if PedResFlgRej.Value = 'Nao' then begin

     if PedResFlgOco.Value = 'Sim' then
        LbText.Caption := 'F1-Iniciais F4-Estoque F11-Ocorrências'
     else
        LbText.Caption := 'F1-Iniciais F4-Estoque';

     end
  else
     LbText.Caption := 'F1-Iniciais F4-Estoque F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdDteResEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResFlgRej.Value = 'Nao' then begin

     if PedResFlgOco.Value = 'Sim' then
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

  if PedResFlgRej.Value = 'Nao' then begin

     if PedResFlgOco.Value = 'Sim' then
        LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque F11-Ocorrências'
     else
        LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

     end
  else
     LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.grPedRe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResFlgRej.Value = 'Nao' then begin

     if PedResFlgOco.Value = 'Sim' then begin

        if PedParFlgCot.Value = 'Sim' then
           LbText.Caption := 'D-Descr F4-Est F5-Reser F6-Cotações F7-Compr F11-Ocor Ctrl+G-Gerenciar contratos Ctrl+F-Frete'
        else
           LbText.Caption := 'D-Descr F4-Est F5-Reservas F7-Compras F11-Ocor Ctrl+G-Gerenciar contratos Ctrl+F-Frete';

        end
     else
        begin

        if PedParFlgCot.Value = 'Sim' then
           LbText.Caption := 'D-Descr F4-Est F5-Reser F6-Cotações F7-Compr Ctrl+G-Gerenciar contratos Ctrl+F-Frete'
        else
           LbText.Caption := 'D-Descr F4-Est F5-Reservas F7-Compras Ctrl+G-Gerenciar contratos Ctrl+F-Frete';

     end;

     end
  else
     begin

     if PedParFlgCot.Value = 'Sim' then
        LbText.Caption := 'D-Descr F4-Est F5-Reser F6-Cotações F7-Compr F10-Rejeições F11-Ocor Ctrl+G-Gerenciar contratos Ctrl+F-Frete'
     else
        LbText.Caption := 'D-Descr F4-Est F5-Reservas F7-Compras F10-Rejeições F11-Ocor Ctrl+G-Gerenciar contratos Ctrl+F-Frete';

  end;
end;

procedure TfmManPed.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResFlgRej.Value = 'Nao' then begin

     if PedResFlgOco.Value = 'Sim' then
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

  if PedResFlgRej.Value = 'Nao' then begin

     if PedResFlgOco.Value = 'Sim' then
        LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F11-Ocorrências'
     else
        LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref';

     end
  else
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdQtpRe2Enter(Sender: TObject);
var
  CodEmp : integer;
begin
  inherited;

  sEntr := 'N';

  if not pnEstoque.Visible then pnEstoque.Visible := True;

  if PedResFlgRej.Value = 'Nao' then begin

     if PedResFlgOco.Value = 'Sim' then
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
               '        EstIte.QtaIte '+
               ' From EstIte'+
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

  if fRound(quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat),4) < 0 then
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

  if PedResFlgRej.Value = 'Nao' then begin

     if PedResFlgOco.Value = 'Sim' then
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

  if PedResFlgRej.Value = 'Nao' then begin

     if PedResFlgOco.Value = 'Sim' then
        LbText.Caption := 'F1-Iniciais F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'F1-Iniciais F4-Estoque F5-Reservas F7-Comprado';

     end
  else
     LbText.Caption := 'F1-Iniciais F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.EdPacRe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedResFlgRej.Value = 'Nao' then begin

     if PedResFlgOco.Value = 'Sim' then
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado';

     end
  else
     LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F10-Rejeições F11-Ocorrências';

end;

procedure TfmManPed.FormKeyPress(Sender: TObject; var Key: Char);
var
  Id_PedRe2  : integer;
  Lge_CodGru : string;
  Lge_CodSub : string;
  Lge_CodPro : string;
  Lge_Status : string;
begin
  inherited;
  if (grPedRe2.Focused) or (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then begin

     if (PedRe2.State = dsInsert) or (grPedRe2.Focused) then begin

        if PedRe2.State = dsInsert then
           Lge_Status := 'Sim'
        else
           Lge_Status := 'Nao';

        if key = #7 then begin {Gerenciamento de Contratos}

           Id_PedRe2 := PedRe2Id_PedRe2.Value;

           PedRes.Edit;

           PedResFlgAtu.Value := 'E';

           PedResFlgCli.Value := 'Sim';

           with PedRes do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                   grPedRe2.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedRes.Close;
           PedRes.Open;

           PedRe2.Close;
           PedRe2.Open;

           PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

           with quSQL,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg'+
                        ' From PedLge'+
                        ' Where PedLge.Id_PedRes = '+ QuotedStr(IntToStr(PedResId_PedRes.Value));
                Open;

           end;

           if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

              try

                 fmManLge := TfmManLge.Create(Self);

                 fmManLge.PedLge.Close;
                 fmManLge.PedLge.Params[0].AsInteger := PedResId_PedRes.Value;
                 fmManLge.PedLge.Open;

                 fmManLge.ShowModal;

              finally

                 FreeAndNil(fmManLge);

              end;

              if Lge_Status = 'Sim' then begin

                 PedRe2.Append;

                 PedRe2CodGru.Value := Lge_CodGru;
                 PedRe2CodSub.Value := Lge_CodSub;
                 PedRe2CodPro.Value := Lge_CodPro;

                 if Trim( PedRe2CodPro.Value ) <> '' then EdCodPro.SetFocus;

                 end
              else
                 grPedRe2.SetFocus;

              end
           else
              fmsgErro('Não foram localizados contratos a atender para o cliente.',Nil);

        end;
     end;
  end;
end;

procedure TfmManPed.bPsqAtdClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Atendentes';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodAtd > 0 then begin

        PedResCodAtd.Value := fmAuxIni.CodAtd;

        pnApeAtd.Caption := fmAuxIni.NomAtd;

        EdCodAtd.Text := IntToStr(PedResCodAtd.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodAtd.SetFocus;

end;

procedure TfmManPed.EdCodAtdExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdComCli.Focused) and
        (not EdCodVen.Focused) and
        (not EdCodCli.Focused) and
        (not EdDteRes.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedResCodAtd.Value > 0 then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select FinAtd.ApeAtd'+
                        ' From FinAtd'+
                        ' Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
                Open;

           end;

           if Trim( quSql.FieldbyName('ApeAtd').AsString ) <> '' then
              pnApeAtd.Caption := Trim(quSql.FieldbyName('ApeAtd').AsString)
           else
              begin

              pnApeAtd.Caption := '';

              fmsgErro('Atendente Informado não Encontrado.',EdCodAtd);

           end;

           end
        else
           pnApeAtd.Caption := '';

     end;
  end;
end;

procedure TfmManPed.EdCodAtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Atendentes';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodAtd > 0 then begin

           PedResCodAtd.Value := fmAuxIni.CodAtd;

           pnApeAtd.Caption := fmAuxIni.NomAtd;

           EdCodAtd.Text := IntToStr(PedResCodAtd.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
     
     if PedResCodAtd.Value > 0 then EdFlgAnt.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Atendentes';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodAtd > 0 then begin

           PedResCodAtd.Value := fmAuxPsq.CodAtd;

           pnApeAtd.Caption := fmAuxPsq.NomAtd;

           EdCodAtd.Text := IntToStr(PedResCodAtd.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedResCodAtd.Value > 0 then EdFlgAnt.SetFocus;

  end;
end;

procedure TfmManPed.EdPacRe2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdVluRe2.Focused) and
        (not EdQtpRe2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedRe2.State <> dsBrowse then begin

           if PedRe2PacRe2.Value <> AntPacRe2 then begin

              PedRe2TipAcr.Value := 'Percentual';
              
              if PedRe2PacRe2.Value = 0 then PedRe2VacRe2.Value := 0;

              PedRe2VlqRe2.Value := PedRe2VluRe2.Value;

              if PedRe2DscRe2.Value > 0 then begin

                 PedRe2VdsRe2.Value := fRound((PedRe2DscRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdsRe2.Value,4);

                 end
              else
                 PedRe2VdsRe2.Value := 0;

              if PedRe2PacRe2.Value > 0 then begin

                 PedRe2VacRe2.Value := fRound((PedRe2PacRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VacRe2.Value,4);

                 end
              else
                 PedRe2VacRe2.Value := 0;

              PedRe2ValCli.Value := 0;
              PedRe2TotCli.Value := 0;

              if PedRe2ComCli.Value > 0 then begin

                 PedRe2ValCli.Value := fRound((PedRe2ComCli.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2TotCli.Value := fRound(PedRe2ValCli.Value * PedRe2QtpRe2.Value,2);

              end;

              if PedRe2PdpRe2.Value > 0 then begin

                 PedRe2VdpRe2.Value := fRound((PedRe2PdpRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdpRe2.Value,4);

              end;

              if PedRe2PapRe2.Value > 0 then begin

                 PedRe2VapRe2.Value := fRound((PedRe2PapRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VapRe2.Value,4);

              end;

              AntPacRe2 := PedRe2PacRe2.Value;

              PedRe2TotRe2.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);
              PedRe2TotVen.Value := fRound(PedRe2QtpRe2.Value * PedRe2VlqRe2.Value,2);
              PedRe2TotCst.Value := fRound(PedRe2QtpRe2.Value * PedRe2VcsRe2.Value,2);

              if PedRe2DsrRe2.Value > 0 then begin

                 PedRe2VdrRe2.Value := fRound((PedRe2DsrRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2TotDsr.Value := fRound(PedRe2VdrRe2.Value * PedRe2QtpRe2.Value,2);

                 PedRe2CodSt2.Value := '40';

              end;

              PedRe2TotGe2.Value := fRound(PedRe2TotRe2.Value - PedRe2TotDsr.Value,2);

              if PedRe2TotCst.Value > 0 then
                 PedRe2TotRen.Value := fRound(((PedRe2TotGe2.Value - (PedRe2TotCst.Value + PedRe2TotCli.Value)) * 100)/(PedRe2TotCst.Value + PedRe2TotCli.Value),2)
              else
                 PedRe2TotRen.Value := 0;

              PedRe2FlgRen.Value := 'Nao';

              AntTotRen := PedRe2TotRen.Value;

           end;
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

     if (not EdPacRe2.Focused) and
        (not EdVluRe2.Focused) and
        (not EdQtpRe2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedRe2.State <> dsBrowse then begin

           if PedRe2DscRe2.Value <> AntDscRe2 then begin

              PedRe2TipDsc.Value := 'Percentual';
              
              if PedRe2DscRe2.Value = 0 then PedRe2VdsRe2.Value := 0;

              PedRe2VlqRe2.Value := PedRe2VluRe2.Value;

              if PedRe2DscRe2.Value > 0 then begin

                 PedRe2VdsRe2.Value := fRound((PedRe2DscRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdsRe2.Value,4);

                 end
              else
                 PedRe2VdsRe2.Value := 0;

              if PedRe2PacRe2.Value > 0 then begin

                 PedRe2VacRe2.Value := fRound((PedRe2PacRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VacRe2.Value,4);

                 end
              else
                 PedRe2VacRe2.Value := 0;

              PedRe2ValCli.Value := 0;
              PedRe2TotCli.Value := 0;

              if PedRe2ComCli.Value > 0 then begin

                 PedRe2ValCli.Value := fRound((PedRe2ComCli.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2TotCli.Value := fRound(PedRe2ValCli.Value * PedRe2QtpRe2.Value,2);

              end;

              if PedRe2PdpRe2.Value > 0 then begin

                 PedRe2VdpRe2.Value := fRound((PedRe2PdpRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdpRe2.Value,4);

              end;

              if PedRe2PapRe2.Value > 0 then begin

                 PedRe2VapRe2.Value := fRound((PedRe2PapRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VapRe2.Value,4);

              end;

              AntDscRe2 := PedRe2DscRe2.Value;

              PedRe2TotRe2.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);
              PedRe2TotVen.Value := fRound(PedRe2QtpRe2.Value * PedRe2VlqRe2.Value,2);
              PedRe2TotCst.Value := fRound(PedRe2QtpRe2.Value * PedRe2VcsRe2.Value,2);

              if PedRe2DsrRe2.Value > 0 then begin

                 PedRe2VdrRe2.Value := fRound((PedRe2DsrRe2.Value * PedRe2VlqRe2.Value)/100,4);

                 PedRe2TotDsr.Value := fRound(PedRe2VdrRe2.Value * PedRe2QtpRe2.Value,2);

                 PedRe2CodSt2.Value := '40';

              end;

              PedRe2TotGe2.Value := fRound(PedRe2TotRe2.Value - PedRe2TotDsr.Value,2);

              if PedRe2TotCst.Value > 0 then
                 PedRe2TotRen.Value := fRound(((PedRe2TotGe2.Value - (PedRe2TotCst.Value + PedRe2TotCli.Value)) * 100)/(PedRe2TotCst.Value + PedRe2TotCli.Value),2)
              else
                 PedRe2TotRen.Value := 0;

              PedRe2FlgRen.Value := 'Nao';

              AntTotRen := PedRe2TotRen.Value;

           end;
        end;
     end;
  end;
end;

procedure TfmManPed.EdTotRenExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDscRe2.Focused) and
        (not EdPacRe2.Focused) and
        (not EdCodUnd.Focused) and
        (not EdVluRe2.Focused) and
        (not EdQtpRe2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedRe2.State <> dsBrowse then begin

           if PedRe2TotRen.Value <> AntTotRen then begin

              if PedRe2TotRen.Value > 0 then PedRe2FlgRen.Value := 'Sim';

              if PedRe2VcsRe2.Value > 0 then begin

                 PedRe2DscRe2.Value := 0;
                 PedRe2VdsRe2.Value := 0;
                 PedRe2PacRe2.Value := 0;
                 PedRe2VacRe2.Value := 0;
                 PedRe2TipDsc.Value := 'Valor';
                 PedRe2TipAcr.Value := 'Valor';

                 PedRe2VlqRe2.Value := fRound(PedRe2VcsRe2.Value + ((PedRe2TotRen.Value * PedRe2VcsRe2.Value)/100),4);

                 if PedRe2DsrRe2.Value > 0 then
                    PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + (PedRe2DsrRe2.Value * PedRe2VlqRe2.Value)/100,4);
              
                 if PedRe2VluRe2.Value > PedRe2VlqRe2.Value then begin

                    PedRe2VdsRe2.Value := fRound(PedRe2VluRe2.Value - PedRe2VlqRe2.Value,4);
                    PedRe2DscRe2.Value := fRound((100 * PedRe2VdsRe2.Value)/PedRe2VlqRe2.Value,2);

                    end
                 else
                    begin

                    if PedRe2VluRe2.Value < PedRe2VlqRe2.Value then begin

                       PedRe2VacRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VluRe2.Value,4);

                       PedRe2PacRe2.Value := fRound((100 * PedRe2VacRe2.Value)/PedRe2VluRe2.Value,2);

                    end;
                 end;

                 PedRe2ValCli.Value := 0;
                 PedRe2TotCli.Value := 0;

                 if PedRe2ComCli.Value > 0 then begin

                    PedRe2ValCli.Value := fRound((PedRe2ComCli.Value * PedRe2VlqRe2.Value)/100,4);

                    PedRe2TotCli.Value := fRound(PedRe2ValCli.Value * PedRe2QtpRe2.Value,2);

                 end;

                 if PedRe2PdpRe2.Value > 0 then begin

                    PedRe2VdpRe2.Value := fRound((PedRe2PdpRe2.Value * PedRe2VlqRe2.Value)/100,4);

                    PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value - PedRe2VdpRe2.Value,4);

                 end;

                 if PedRe2PapRe2.Value > 0 then begin

                    PedRe2VapRe2.Value := fRound((PedRe2PapRe2.Value * PedRe2VlqRe2.Value)/100,4);

                    PedRe2VlqRe2.Value := fRound(PedRe2VlqRe2.Value + PedRe2VapRe2.Value,4);

                 end;

                 if PedRe2DsrRe2.Value > 0 then begin

                    PedRe2VdrRe2.Value := fRound((PedRe2DsrRe2.Value * PedRe2VlqRe2.Value)/100,4);

                    PedRe2TotDsr.Value := fRound(PedRe2VdrRe2.Value * PedRe2QtpRe2.Value,2);

                    PedRe2CodSt2.Value := '40';

                 end;

                 PedRe2TotRe2.Value := fRound(PedRe2VlqRe2.Value * PedRe2QtpRe2.Value,2);
                 PedRe2TotVen.Value := fRound(PedRe2QtpRe2.Value * PedRe2VlqRe2.Value,2);
                 PedRe2TotCst.Value := fRound(PedRe2QtpRe2.Value * PedRe2VcsRe2.Value,2);

                 PedRe2TotGe2.Value := fRound(PedRe2TotRe2.Value - PedRe2TotDsr.Value,2);

                 if PedRe2TotCst.Value > 0 then
                    PedRe2TotRen.Value := fRound(((PedRe2TotGe2.Value - (PedRe2TotCst.Value + PedRe2TotCli.Value)) * 100)/(PedRe2TotCst.Value + PedRe2TotCli.Value),2)
                 else
                    PedRe2TotRen.Value := 0;

              end;
              
              AntTotRen := PedRe2TotRen.Value;

           end;
        end;
     end;
  end;
end;

procedure TfmManPed.pnFreteExit(Sender: TObject);
var
  Id_PedRe2 : integer;
begin
  inherited;
  if not EdFlgAnt.Enabled then begin

     if PedRes.State <> dsBrowse then begin

        Id_PedRe2 := PedRe2Id_PedRe2.Value;

        with PedRes do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedRes.State = dsBrowse then PedRes.Edit;

                EdTipFre.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        EdTipFre.Enabled := False;
        EdTotFrt.Enabled := False;

        PedRes.Close;
        PedRes.Open;

        pnTotRes.Caption := FormatFloat('###,###,##0.00',PedResTotRes.Value);
        pnTotIpi.Caption := FormatFloat('###,###,##0.00',PedResTotIpi.Value);
        pnTotSub.Caption := FormatFloat('###,###,##0.00',PedResTotSub.Value);
        pnTotGer.Caption := FormatFloat('###,###,##0.00',PedResTotGer.Value);
        pnTotRen.Caption := FormatFloat('###,###,##0.00',PedResTotRen.Value);

        PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

        grPedRe2.SetFocus;

     end;
  end;
end;

procedure TfmManPed.grPedRe2KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #6 then begin {Vencimentos Ctrl+F}

     if PedResTotRes.Value > 0 then begin

        PedRes.Edit;

        EdTipFre.Text := PedResTipFre.Value;

        EdTipFre.Enabled := True;
        EdTotFrt.Enabled := True;

        EdTipFre.Font.Style := [];
        EdTotFrt.Font.Style := [];

        EdTipFre.SetFocus;

     end;
  end;
end;

end.
