unit ManPro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, AlignEdit, ppBands, ppClass, ppVar, ppCtrls, ppPrnabl, ppProd,
  ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe, Menus, ExtDlgs, Db,
  DBTables, Wwquery, Wwdatsrc, StdCtrls, ComCtrls, wwriched, wwdblook, DBCtrls,
  hEdits, jpeg, ExtCtrls, Buttons, Mask, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, hNavigator,
  FileCtrl, dxDBColorDateEdit, dxDBColorHyperLinkEdit, dxDBColorMemo,
  dxDBColorCurrencyEdit, dxDBColorLookupEdit, dxDBColorEdit, dxColorEdit,
  dxDBColorPickEdit;

type
  TfmManPro = class(TfmPadrao)
    pcPro: TPageControl;
    pcPag1: TTabSheet;
    pcPag2: TTabSheet;
    pcPag3: TTabSheet;
    UpPro: TUpdateSQL;
    DsPro: TwwDataSource;
    EstPro: TwwQuery;
    FinCom: TwwQuery;
    EstSub: TwwQuery;
    EstSubNOMSUB: TStringField;
    EstSubCODGRU: TStringField;
    EstSubCODSUB: TStringField;
    EstGru: TwwQuery;
    GerUsu: TwwQuery;
    GerUsuCODUSU: TIntegerField;
    EstUns: TwwQuery;
    EstTip: TwwQuery;
    EstClp: TwwQuery;
    pcPag4: TTabSheet;
    EstIte: TwwQuery;
    DsIte: TwwDataSource;
    EstQte: TwwQuery;
    EstQteQTMQTE: TFloatField;
    EstQteQTDQTE: TFloatField;
    EstQteQTRQTE: TFloatField;
    EstQteCODEMP: TIntegerField;
    EstQteCODCLP: TStringField;
    EstQteCODGRU: TStringField;
    EstQteCODSUB: TStringField;
    EstQteCODPRO: TStringField;
    EstQteQTAQTE: TFloatField;
    DsQte: TwwDataSource;
    UpIte: TUpdateSQL;
    UpQte: TUpdateSQL;
    GerEmp: TwwQuery;
    GerEmpCODEMP: TIntegerField;
    GerEmpNOMEMP: TStringField;
    EstTam: TwwQuery;
    EstTamCODEMP: TIntegerField;
    EstTamCODCLP: TStringField;
    EstTamCODGRU: TStringField;
    EstTamCODSUB: TStringField;
    EstTamCODPRO: TStringField;
    DsTam: TwwDataSource;
    UpTam: TUpdateSQL;
    EstIteCODEMP: TIntegerField;
    EstIteCODCLP: TStringField;
    EstIteCODGRU: TStringField;
    EstIteCODSUB: TStringField;
    EstIteCODPRO: TStringField;
    EstIteVCHITE: TFloatField;
    EstIteVCRITE: TFloatField;
    EstIteVCPITE: TFloatField;
    EstIteVB1ITE: TFloatField;
    EstIteVB2ITE: TFloatField;
    EstIteVB3ITE: TFloatField;
    EstIteVB4ITE: TFloatField;
    EstIteVB5ITE: TFloatField;
    EstQteNOMCOR: TStringField;
    GerUsuLOGUSU: TStringField;
    EstCor: TwwQuery;
    EstCorNOMCOR: TStringField;
    quSql: TwwQuery;
    plOcoCr1: TppDBPipeline;
    ppReport1: TppReport;
    hbReport: TppHeaderBand;
    ppLabel22: TppLabel;
    dbReport: TppDetailBand;
    ppCodPro: TppLabel;
    ppDscPro: TppLabel;
    ppRefPro: TppLabel;
    ppSimPro: TppLabel;
    ppLocPro: TppLabel;
    ppCatPro: TppLabel;
    ppCodUne: TppLabel;
    ppQtePro: TppLabel;
    ppCodUns: TppLabel;
    ppQtsPro: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel3: TppLabel;
    ppCodClp: TppLabel;
    ppNomClp: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppCodGru: TppLabel;
    ppNomGru: TppLabel;
    ppLabel2: TppLabel;
    ppCodSub: TppLabel;
    ppNomSub: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppGroupFooterBand2: TppGroupFooterBand;
    OpenPicture: TOpenPictureDialog;
    quSql1: TwwQuery;
    quSql1CODCLP: TStringField;
    quSql1CODGRU: TStringField;
    quSql1NOMGRU: TStringField;
    quSql1CODSUB: TStringField;
    quSql1NOMSUB: TStringField;
    quSql1CODPRO: TStringField;
    quSql1DSCPRO: TStringField;
    quSql1REFPRO: TStringField;
    quSql1SIMPRO: TStringField;
    quSql1LOCPRO: TStringField;
    quSql1CATPRO: TStringField;
    quSql1CODUNE: TStringField;
    quSql1CODUNS: TStringField;
    quSql1NOMCLP: TStringField;
    quSql1QTEPRO: TFloatField;
    quSql1QTSPRO: TFloatField;
    DsSql: TwwDataSource;
    EstIteQTMITE: TFloatField;
    EstIteQTDITE: TFloatField;
    EstIteQTRITE: TFloatField;
    EstIteQTAITE: TFloatField;
    EstClpCODCLP: TStringField;
    EstClpNOMCLP: TStringField;
    EstPar: TwwQuery;
    IcmEnt: TwwQuery;
    IcmEntNOMICM: TStringField;
    IcmEntPERICM: TFloatField;
    IcmSai: TwwQuery;
    StringField2: TStringField;
    IpiEnt: TwwQuery;
    IpiEntNOMIPI: TStringField;
    IpiEntPERIPI: TFloatField;
    IpiSai: TwwQuery;
    StringField4: TStringField;
    FloatField2: TFloatField;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    EstProDSCPRO: TStringField;
    EstProDSRPRO: TStringField;
    EstProCBAPRO: TStringField;
    EstProCBAEMB: TStringField;
    EstProQTDEMB: TFloatField;
    EstProCATPRO: TStringField;
    EstProLOCPRO: TStringField;
    EstProREFPRO: TStringField;
    EstProISSPRO: TFloatField;
    EstProCODUNE: TStringField;
    EstProQTEPRO: TFloatField;
    EstProCODUNS: TStringField;
    EstProQTSPRO: TFloatField;
    EstProFLBPRO: TStringField;
    EstProWEBPRO: TStringField;
    EstProDTCPRO: TDateTimeField;
    EstProOBSPRO: TMemoField;
    EstProCODST1: TStringField;
    EstProCODST2: TStringField;
    EstProCODTIP: TIntegerField;
    EstProCODCOM: TStringField;
    EstProCODUSU: TIntegerField;
    EstProSAIICM: TFloatField;
    EstProENTICM: TFloatField;
    EstProSAIIPI: TFloatField;
    EstProENTIPI: TFloatField;
    PopupMenu1: TPopupMenu;
    mmSelImg: TMenuItem;
    Limpar1: TMenuItem;
    EstProIMGPRO: TBlobField;
    Label1: TLabel;
    Shape53: TShape;
    Panel3: TPanel;
    grPro: ThGrid;
    EstProCODITE: TStringField;
    Label44: TLabel;
    Shape54: TShape;
    Shape55: TShape;
    Label45: TLabel;
    Shape56: TShape;
    Shape57: TShape;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    EdPsqCodClp: TdxColorEdit;
    EdPsqCodGru: TdxColorEdit;
    EdPsqCodSub: TdxColorEdit;
    EdPsqCodPro: TdxColorEdit;
    Label51: TLabel;
    EdPsqDscPro: TdxColorEdit;
    bPesquisa: TBitBtn;
    Rgbusca: TRadioGroup;
    rgStatus: TRadioGroup;
    BbPsqClp: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqSub: TSpeedButton;
    EdPsqNomSub: TdxColorEdit;
    EdPsqNomGru: TdxColorEdit;
    EdPsqNomClp: TdxColorEdit;
    Label6: TLabel;
    EdCodClp: TdxDBColorEdit;
    EdCodGru: TdxDBColorEdit;
    Label9: TLabel;
    Label10: TLabel;
    EdCodSub: TdxDBColorEdit;
    Label52: TLabel;
    EdCodPro: TdxDBColorEdit;
    CbNomSub: TdxDBColorLookupEdit;
    CbNomGru: TdxDBColorLookupEdit;
    CbNomClp: TdxDBColorLookupEdit;
    Label32: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label27: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    EdDscPro: TdxDBColorEdit;
    EdDsrPro: TdxDBColorEdit;
    EdCodTip: TdxDBColorEdit;
    CbNomTip: TdxDBColorLookupEdit;
    EdLocPro: TdxDBColorEdit;
    EdCodUne: TdxDBColorEdit;
    CbNomUne: TdxDBColorLookupEdit;
    EdQtePro: TdxDBColorCurrencyEdit;
    EdQtsPro: TdxDBColorCurrencyEdit;
    EdIdePro: TdxDBColorEdit;
    EdRefPro: TdxDBColorEdit;
    EdCodUns: TdxDBColorEdit;
    CbNomUns: TdxDBColorLookupEdit;
    EdQtdEmb: TdxDBColorCurrencyEdit;
    EdPesLiq: TdxDBColorCurrencyEdit;
    EdPesBrt: TdxDBColorCurrencyEdit;
    EdSimPro: TdxDBColorEdit;
    Label2: TLabel;
    Shape58: TShape;
    Shape59: TShape;
    Label12: TLabel;
    EdIcmSai: TdxDBColorEdit;
    Label15: TLabel;
    EdIpiSai: TdxDBColorEdit;
    CbNomIpiSai: TdxDBColorLookupEdit;
    Label16: TLabel;
    Shape64: TShape;
    Shape65: TShape;
    Label17: TLabel;
    Label18: TLabel;
    EdIpiEnt: TdxDBColorEdit;
    EdIcmEnt: TdxDBColorEdit;
    CbNomIcmEnt: TdxDBColorLookupEdit;
    CbNomIpiEnt: TdxDBColorLookupEdit;
    Label19: TLabel;
    EdSaiIcm: TdxDBColorCurrencyEdit;
    EdSaiIpi: TdxDBColorCurrencyEdit;
    EdEntIcm: TdxDBColorCurrencyEdit;
    EdEntIpi: TdxDBColorCurrencyEdit;
    DsClp: TwwDataSource;
    DsGru: TwwDataSource;
    DsSub: TwwDataSource;
    DsUns: TwwDataSource;
    DsTip: TwwDataSource;
    DsCom: TwwDataSource;
    DsIcmSai: TwwDataSource;
    DsIpiEnt: TwwDataSource;
    DsIcmEnt: TwwDataSource;
    DsIpiSai: TwwDataSource;
    Label20: TLabel;
    Shape67: TShape;
    Shape68: TShape;
    EdObsPro: TdxDBColorMemo;
    Label25: TLabel;
    EdWebPro: TdxDBColorHyperLinkEdit;
    Label22: TLabel;
    Shape69: TShape;
    Shape70: TShape;
    Label23: TLabel;
    EdDtcPro: TdxDBColorDateEdit;
    Label24: TLabel;
    EdCodUsu: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    DsUsu: TwwDataSource;
    pcPag5: TTabSheet;
    DsEmp: TwwDataSource;
    Label4: TLabel;
    Shape60: TShape;
    Shape61: TShape;
    Panel5: TPanel;
    EstIteCSTITE: TFloatField;
    grIte: ThGrid;
    Label33: TLabel;
    EdCodEmp: TdxDBColorEdit;
    CbNomEmp: TdxDBColorLookupEdit;
    Label34: TLabel;
    EdCstIte: TdxDBColorCurrencyEdit;
    Label35: TLabel;
    EdVchIte: TdxDBColorCurrencyEdit;
    Label36: TLabel;
    EdVcrIte: TdxDBColorCurrencyEdit;
    Label37: TLabel;
    EdVcpIte: TdxDBColorCurrencyEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    EdVb4Ite: TdxDBColorCurrencyEdit;
    EdVb3Ite: TdxDBColorCurrencyEdit;
    EdVb2Ite: TdxDBColorCurrencyEdit;
    EdVb1Ite: TdxDBColorCurrencyEdit;
    Label42: TLabel;
    EdVb5Ite: TdxDBColorCurrencyEdit;
    Shape1: TShape;
    Label43: TLabel;
    Label46: TLabel;
    Label57: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    EdQtaIte: TdxDBColorCurrencyEdit;
    EdQtrIte: TdxDBColorCurrencyEdit;
    EdQtdIte: TdxDBColorCurrencyEdit;
    EdQtmIte: TdxDBColorCurrencyEdit;
    Label71: TLabel;
    EdQtsIte: TdxDBColorCurrencyEdit;
    EstIteQTSITE: TFloatField;
    Shape2: TShape;
    Panel1: TPanel;
    nvIte: ThDBNavigator;
    Label73: TLabel;
    Label77: TLabel;
    Shape3: TShape;
    Shape4: TShape;
    Label82: TLabel;
    EdCodEmp1: TdxDBColorEdit;
    Panel2: TPanel;
    nvTam: ThDBNavigator;
    Panel7: TPanel;
    grTam: ThGrid;
    Label85: TLabel;
    EdCodIte1: TdxDBColorEdit;
    Panel8: TPanel;
    nvQte: ThDBNavigator;
    Panel9: TPanel;
    grQte: ThGrid;
    DsCor: TwwDataSource;
    EstQteQTSQTE: TFloatField;
    Label93: TLabel;
    CbNomIcmSai: TdxDBColorLookupEdit;
    EstProPESLIQ: TFloatField;
    EstProPESBRT: TFloatField;
    Label94: TLabel;
    EdCodSts: TdxDBColorEdit;
    CbNomSts: TdxDBColorLookupEdit;
    Label21: TLabel;
    Label26: TLabel;
    Label28: TLabel;
    Label95: TLabel;
    EdCodSte: TdxDBColorEdit;
    CbNomSte: TdxDBColorLookupEdit;
    rgOrdem: TRadioGroup;
    EstProTIPSTE: TStringField;
    EstProTIPSTS: TStringField;
    Label13: TLabel;
    EdFlbPro: TdxDBCheckEdit;
    Panel6: TPanel;
    nvPro: ThDBNavigator;
    EstIteVREITE: TFloatField;
    EstIteVPRITE: TFloatField;
    Label14: TLabel;
    EdVreIte: TdxDBColorCurrencyEdit;
    Label30: TLabel;
    EdVprIte: TdxDBColorCurrencyEdit;
    EdQtdEst: TdxDBColorCurrencyEdit;
    Label31: TLabel;
    EdCodCm1: TdxDBColorEdit;
    CbNomCm1: TdxDBColorLookupEdit;
    EdCodCm2: TdxDBColorEdit;
    CbNomCm2: TdxDBColorLookupEdit;
    EdCodCm3: TdxDBColorEdit;
    CbNomCm3: TdxDBColorLookupEdit;
    EdCodCm4: TdxDBColorEdit;
    CbNomCm4: TdxDBColorLookupEdit;
    EdCodCm5: TdxDBColorEdit;
    CbNomCm5: TdxDBColorLookupEdit;
    EstIteCODCM1: TStringField;
    EstIteCODCM2: TStringField;
    EstIteCODCM3: TStringField;
    EstIteCODCM4: TStringField;
    EstIteCODCM5: TStringField;
    FinComCODCOM: TStringField;
    FinComPERCOM: TFloatField;
    Label101: TLabel;
    EdCodAnt: TdxDBColorEdit;
    EstProCODANT: TStringField;
    EstProFLGTRG: TStringField;
    Label102: TLabel;
    EdClfEnt: TdxDBColorEdit;
    Label103: TLabel;
    EdClfSai: TdxDBColorEdit;
    Label104: TLabel;
    EdNumPro: TdxDBColorEdit;
    Label105: TLabel;
    Panel4: TPanel;
    EstProNUMPRO: TStringField;
    EstProSIMPRO: TStringField;
    EstTamCODTAM: TStringField;
    EstQteCODTAM: TStringField;
    EstQteCBAQTE: TStringField;
    EstQteCODCOR: TStringField;
    Panel10: TPanel;
    Label90: TLabel;
    Label91: TLabel;
    EdCodCor: TdxDBColorEdit;
    EdQtmQte: TdxDBColorCurrencyEdit;
    CbNomCor: TdxDBColorLookupEdit;
    Panel11: TPanel;
    EdCodTam: TdxDBColorEdit;
    Shape6: TShape;
    Label89: TLabel;
    EstCorCODCOR: TStringField;
    Shape5: TShape;
    Label29: TLabel;
    EdCbaQte: TdxDBColorEdit;
    Label63: TLabel;
    EdQtdVol: TdxDBColorCurrencyEdit;
    EstProQTDVOL: TIntegerField;
    Label83: TLabel;
    EdCodMrc: TdxDBColorEdit;
    CbNomMrc: TdxDBColorLookupEdit;
    Label5: TLabel;
    Label84: TLabel;
    Label92: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label108: TLabel;
    EstProCODMRC: TIntegerField;
    EstMrc: TwwQuery;
    DsMrc: TwwDataSource;
    EstMrcCODMRC: TIntegerField;
    EstMrcNOMMRC: TStringField;
    EstProIDEPRO: TStringField;
    EstProCODCAT: TIntegerField;
    Label109: TLabel;
    EdCodCat: TdxDBColorEdit;
    CbNomCat: TdxDBColorLookupEdit;
    EstCat: TwwQuery;
    DsCat: TwwDataSource;
    EstCatCODCAT: TIntegerField;
    EstCatNOMCAT: TStringField;
    Label110: TLabel;
    EdPsqCodCat: TdxColorEdit;
    bPsqCat: TSpeedButton;
    EdPsqNomCat: TdxColorEdit;
    Label111: TLabel;
    EdPsqCodTip: TdxColorEdit;
    bPsqTip: TSpeedButton;
    EdPsqNomTip: TdxColorEdit;
    Label112: TLabel;
    EdPsqCodMrc: TdxColorEdit;
    bPsqMrc: TSpeedButton;
    EdPsqNomMrc: TdxColorEdit;
    Label113: TLabel;
    EdPsqRefPro: TdxColorEdit;
    EdPsqSimPro: TdxColorEdit;
    Label114: TLabel;
    Label115: TLabel;
    EdPsqIdePro: TdxColorEdit;
    EstProICMSAI: TStringField;
    EstProICMTSD: TStringField;
    EstProICMENT: TStringField;
    EstProICMTEN: TStringField;
    EstProIPISAI: TStringField;
    EstProIPITSD: TStringField;
    EstProIPIENT: TStringField;
    EstProIPITEN: TStringField;
    EstProCLFENT: TStringField;
    EstProCLFSAI: TStringField;
    EstProCODSTE: TStringField;
    EstProCODSTS: TStringField;
    IpiEntCLSIPI: TStringField;
    IpiSaiCLSIPI: TStringField;
    IpiEntCODIPI: TStringField;
    IpiSaiCODIPI: TStringField;
    IcmSaiCODICM: TStringField;
    IcmEntCODICM: TStringField;
    pnQuant: TLabel;
    EdMk1Ite: TdxDBColorCurrencyEdit;
    Label116: TLabel;
    EdMk2Ite: TdxDBColorCurrencyEdit;
    EdMk3Ite: TdxDBColorCurrencyEdit;
    EdMk4Ite: TdxDBColorCurrencyEdit;
    EdMk5Ite: TdxDBColorCurrencyEdit;
    Label117: TLabel;
    EstIteMK1ITE: TFloatField;
    EstIteMK2ITE: TFloatField;
    EstIteMK3ITE: TFloatField;
    EstIteMK4ITE: TFloatField;
    EstIteMK5ITE: TFloatField;
    EstProFLGPRO: TStringField;
    EstIteVP1ITE: TFloatField;
    EstIteVP2ITE: TFloatField;
    EstIteVP3ITE: TFloatField;
    EstIteVP4ITE: TFloatField;
    EstIteVP5ITE: TFloatField;
    EdVp1Ite: TdxDBColorCurrencyEdit;
    EdVp2Ite: TdxDBColorCurrencyEdit;
    EdVp3Ite: TdxDBColorCurrencyEdit;
    EdVp4Ite: TdxDBColorCurrencyEdit;
    EdVp5Ite: TdxDBColorCurrencyEdit;
    EdMs1Ite: TdxDBColorCurrencyEdit;
    EdMs2Ite: TdxDBColorCurrencyEdit;
    EdMs3Ite: TdxDBColorCurrencyEdit;
    EdMs4Ite: TdxDBColorCurrencyEdit;
    EdMs5Ite: TdxDBColorCurrencyEdit;
    rgPromocao: TRadioGroup;
    Imagem2: TImage;
    EstIteQMAITE: TFloatField;
    EstIteVMEITE: TFloatField;
    EstIteMS1ITE: TFloatField;
    EstIteMS2ITE: TFloatField;
    EstIteMS3ITE: TFloatField;
    EstIteMS4ITE: TFloatField;
    EstIteMS5ITE: TFloatField;
    Label97: TLabel;
    Label98: TLabel;
    EdQmaIte: TdxDBColorCurrencyEdit;
    EstQteQMAQTE: TFloatField;
    Label99: TLabel;
    EdQmaQte: TdxDBColorCurrencyEdit;
    Label100: TLabel;
    EdVmeIte: TdxDBColorCurrencyEdit;
    ppLabel45: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel6: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    EdNomIte1: TdxDBColorEdit;
    Label72: TLabel;
    dxDBEdit2: TdxDBColorEdit;
    dxDBEdit3: TdxDBColorEdit;
    CbNomEmp3: TdxDBColorLookupEdit;
    Label74: TLabel;
    dxDBEdit4: TdxDBColorEdit;
    dxDBEdit5: TdxDBColorEdit;
    Label75: TLabel;
    EdVpfIte: TdxDBColorCurrencyEdit;
    Label76: TLabel;
    Label78: TLabel;
    EdQtdCmp: TdxDBColorCurrencyEdit;
    EstIteVREOUT: TFloatField;
    EstIteVCHOUT: TFloatField;
    EstIteCSTOUT: TFloatField;
    EstIteVPFITE: TFloatField;
    EstIteDULCMP: TDateTimeField;
    EstIteQTDCMP: TFloatField;
    EdDulCmp: TdxDBColorDateEdit;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    Label86: TLabel;
    Label87: TLabel;
    Label88: TLabel;
    Label96: TLabel;
    Label118: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    EdDs1Ite: TdxDBColorCurrencyEdit;
    EdDs2Ite: TdxDBColorCurrencyEdit;
    EdDs3Ite: TdxDBColorCurrencyEdit;
    EdDs4Ite: TdxDBColorCurrencyEdit;
    EdDs5Ite: TdxDBColorCurrencyEdit;
    Label121: TLabel;
    EstIteDS1ITE: TFloatField;
    EstIteDS2ITE: TFloatField;
    EstIteDS3ITE: TFloatField;
    EstIteDS4ITE: TFloatField;
    EstIteDS5ITE: TFloatField;
    Label122: TLabel;
    Label123: TLabel;
    Label124: TLabel;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    EdQtdRma: TdxDBColorCurrencyEdit;
    EstIteQTDRMA: TFloatField;
    EstQteQTDRMA: TFloatField;
    EdCstOut: TdxDBColorCurrencyEdit;
    EstIteVPFOUT: TFloatField;
    EdVpfOut: TdxDBColorCurrencyEdit;
    EstProFLGKIT: TStringField;
    EstProCBAEM2: TStringField;
    EstProCBAEM3: TStringField;
    EstProLIQEMB: TFloatField;
    EstProBRTEMB: TFloatField;
    EstProCUBPRO: TFloatField;
    EstProCXAPRO: TFloatField;
    Label132: TLabel;
    Shape7: TShape;
    Shape8: TShape;
    Label133: TLabel;
    EdLiqEmb: TdxDBColorCurrencyEdit;
    Label134: TLabel;
    EdBrtEmb: TdxDBColorCurrencyEdit;
    Label135: TLabel;
    EdCubPro: TdxDBColorCurrencyEdit;
    Label136: TLabel;
    EdCxaPro: TdxDBColorCurrencyEdit;
    EstProENTIMP: TFloatField;
    ddMarca: TShape;
    ddRefPro: TShape;
    ddTipo: TShape;
    ddCategoria: TShape;
    pnCategoria: TPanel;
    pnTipo: TPanel;
    pnRefPro: TPanel;
    pnMarca: TPanel;
    EstTipCODTIP: TIntegerField;
    EstTipNOMTIP: TStringField;
    Shape9: TShape;
    pnPerCom: TPanel;
    EdQtdImp: TdxDBColorCurrencyEdit;
    EdDulImp: TdxDBColorDateEdit;
    EstIteDULIMP: TDateTimeField;
    EstIteQTDIMP: TFloatField;
    EdPsqCbaPro: TdxColorEdit;
    Label139: TLabel;
    IcmSaiPERICM: TFloatField;
    Label140: TLabel;
    EdDesImp: TdxDBColorMemo;
    EstUne: TwwQuery;
    DsUne: TwwDataSource;
    GerEmpFLGFIL: TStringField;
    Label128: TLabel;
    Label129: TLabel;
    Label137: TLabel;
    Label138: TLabel;
    PopupMenu2: TPopupMenu;
    ClassificaoFiscal1: TMenuItem;
    EstProDESIMP: TMemoField;
    EstProNROPRO: TIntegerField;
    BtnCodigos: TBitBtn;
    EstProCODBAR: TIntegerField;
    EstProQTDBAR: TIntegerField;
    EstProSEQBAR: TIntegerField;
    Label141: TLabel;
    EdCodSt1: TdxDBColorEdit;
    EdCodSt2: TdxDBColorEdit;
    PartNumber1: TMenuItem;
    EdDesIm2: TdxDBColorMemo;
    Label142: TLabel;
    EstProDESIM2: TMemoField;
    Label143: TLabel;
    EdValImp: TdxDBColorCurrencyEdit;
    EstProVALIMP: TFloatField;
    EstParTAMCOR: TStringField;
    EstParFLGTAM: TStringField;
    EstParLANCBA: TStringField;
    EstParINIEAN: TStringField;
    EstParTIPEAN: TStringField;
    EstParLANMIN: TStringField;
    EstParFLGANT: TStringField;
    EstParFLGTAB: TStringField;
    EstParATUMSU: TStringField;
    Label144: TLabel;
    EdDscImp: TdxDBColorEdit;
    EstProDSCIMP: TStringField;
    EstProDSRIMP: TStringField;
    Label145: TLabel;
    EdDsrImp: TdxDBColorEdit;
    StoredProcedure: TStoredProc;
    EstParATUVCR: TStringField;
    EstSte: TwwQuery;
    DsSte: TwwDataSource;
    EstSteCODSTR: TStringField;
    EstSteNOMSTR: TStringField;
    EstSts: TwwQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    DsSts: TwwDataSource;
    Label11: TLabel;
    EdPesCub: TdxDBColorCurrencyEdit;
    Label66: TLabel;
    EdCodCom: TdxDBColorEdit;
    CbPerCom: TdxDBColorLookupEdit;
    Label61: TLabel;
    EdIssPro: TdxDBColorCurrencyEdit;
    Label130: TLabel;
    EdFlgLis: TdxDBColorPickEdit;
    EstProFLGLIS: TStringField;
    EstProPESCUB: TFloatField;
    EstProALTPRO: TFloatField;
    EstProCOMPRO: TFloatField;
    EstProLARPRO: TFloatField;
    EstProGARPRO: TIntegerField;
    EstProPRODEP: TStringField;
    procedure pcPag1Show(Sender: TObject);
    procedure grProCellChanged(Sender: TObject);
    procedure pcPag2Show(Sender: TObject);
    procedure pcPag3Show(Sender: TObject);
    procedure pcPag4Show(Sender: TObject);
    procedure grIteCellChanged(Sender: TObject);
    procedure grTamCellChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsProDataChange(Sender: TObject; Field: TField);
    procedure EstProNewRecord(DataSet: TDataSet);
    procedure EdPsqCodClpExit(Sender: TObject);
    procedure BbPsqClpClick(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure EdPsqCodGruExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdPsqCodSubExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure mmPopProPopup(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure nvProImprime(Sender: TObject);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppGroupHeaderBand2BeforePrint(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure EstProBeforePost(DataSet: TDataSet);
    procedure EdDscProExit(Sender: TObject);
    procedure nvProCancela(Sender: TObject);
    procedure nvProSalva(Sender: TObject);
    procedure EstIteNewRecord(DataSet: TDataSet);
    procedure EdPsqCodProExit(Sender: TObject);
    procedure EstIteBeforeEdit(DataSet: TDataSet);
    procedure EstProBeforeEdit(DataSet: TDataSet);
    procedure EstTamNewRecord(DataSet: TDataSet);
    procedure EstTamBeforeEdit(DataSet: TDataSet);
    procedure EstQteNewRecord(DataSet: TDataSet);
    procedure EstQteBeforeEdit(DataSet: TDataSet);
    procedure nvQteSalva(Sender: TObject);
    procedure nvTamExclui(Sender: TObject);
    procedure grQteCellChanged(Sender: TObject);
    procedure grProDblClick(Sender: TObject);
    procedure EdIcmSaiExit(Sender: TObject);
    procedure CbNomIcmSaiExit(Sender: TObject);
    procedure EdIpiSaiExit(Sender: TObject);
    procedure CbNomIpiSaiExit(Sender: TObject);
    procedure EdIcmEntExit(Sender: TObject);
    procedure CbNomIcmEntExit(Sender: TObject);
    procedure EdIpiEntExit(Sender: TObject);
    procedure CbNomIpiEntExit(Sender: TObject);
    procedure nvProBeforeSalva(Sender: TObject);
    procedure mmSelImgClick(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure EdSimProExit(Sender: TObject);
    procedure EdSimProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdWebProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure pcPag5Show(Sender: TObject);
    procedure DsIteDataChange(Sender: TObject; Field: TField);
    procedure DsTamDataChange(Sender: TObject; Field: TField);
    procedure DsQteDataChange(Sender: TObject; Field: TField);
    procedure EstProAfterCancel(DataSet: TDataSet);
    procedure EstIteAfterCancel(DataSet: TDataSet);
    procedure EstTamAfterCancel(DataSet: TDataSet);
    procedure EstQteAfterCancel(DataSet: TDataSet);
    procedure EdPsqCodClpKeyPress(Sender: TObject; var Key: Char);
    procedure CbNomCorExit(Sender: TObject);
    procedure CbNomStsExit(Sender: TObject);
    procedure EdCodStsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormPaint(Sender: TObject);
    procedure nvIteBeforeSalva(Sender: TObject);
    procedure Panel10Exit(Sender: TObject);
    procedure Panel11Exit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdPsqCodCatExit(Sender: TObject);
    procedure EdPsqCodTipExit(Sender: TObject);
    procedure EdPsqCodMrcExit(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure EdCodUneExit(Sender: TObject);
    procedure EdCodUnsExit(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure EdMk1IteExit(Sender: TObject);
    procedure EdMk2IteExit(Sender: TObject);
    procedure EdMk3IteExit(Sender: TObject);
    procedure EdMk4IteExit(Sender: TObject);
    procedure EdMk5IteExit(Sender: TObject);
    procedure EdVb1IteExit(Sender: TObject);
    procedure EdVb2IteExit(Sender: TObject);
    procedure EdVb3IteExit(Sender: TObject);
    procedure EdVb4IteExit(Sender: TObject);
    procedure EdVb5IteExit(Sender: TObject);
    procedure EdCodCm5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure nvProAtualizar(Sender: TObject);
    procedure EdPsqCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodUneKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodUnsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdIcmSaiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdIcmEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdIpiSaiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdIpiEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ClassificaoFiscal1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BtnCodigosClick(Sender: TObject);
    procedure PartNumber1Click(Sender: TObject);
    procedure EdMs1IteExit(Sender: TObject);
    procedure EdMs2IteExit(Sender: TObject);
    procedure EdMs3IteExit(Sender: TObject);
    procedure EdMs4IteExit(Sender: TObject);
    procedure EdMs5IteExit(Sender: TObject);
    procedure EdVcrIteExit(Sender: TObject);
    procedure EdCodSteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EstQteBeforePost(DataSet: TDataSet);
    procedure EdCodStsExit(Sender: TObject);
    procedure EdCodSteExit(Sender: TObject);
    procedure EdCodProEnter(Sender: TObject);
    procedure EdSimProEnter(Sender: TObject);
  private
    {Private declarations}
    pCodEmp       : integer;
    pCodClp       : string;
    pCodGru       : string;
    pCodSub       : string;
    pCodPro       : string;
    pCodTam       : string;
    pCodCor       : string;
  public
    {Public declarations}
    sBase         : string;
    sFiltro       : string;
    sOrdem        : string;
    sRetornar     : string;
    sEstGruCodGru : string;
    sEstSubCodGru : string;    
    sEstSubCodSub : string;
  end;

var
  AntVcrIte : real;
  AntVb1Ite : real;
  AntVb2Ite : real;
  AntVb3Ite : real;
  AntVb4Ite : real;
  AntVb5Ite : real;
  AntMk1Ite : real;
  AntMk2Ite : real;
  AntMk3Ite : real;
  AntMk4Ite : real;
  AntMk5Ite : real;
  AntMs1Ite : real;
  AntMs2Ite : real;
  AntMs3Ite : real;
  AntMs4Ite : real;
  AntMs5Ite : real;
  fmManPro  : TfmManPro;

implementation

uses dxDemoUtils, ShellAPI, Bbacesso, BbGeral, Bbfuncao, BbMensag, ManGDB, PsqClp,
     Fpreview, AuxPro, PsqPro, AuxCod, ManPri, AuxIni, AuxPsq, ConClf,
     ManBar, ConPar;

{$R *.DFM}

procedure TfmManPro.pcPag1Show(Sender: TObject);
begin
  inherited;
  EdPsqCodCat.SetFocus;
end;

procedure TfmManPro.grProCellChanged(Sender: TObject);
begin
  inherited;
  if not nvPro.Salvar then begin

     if EstParTamCor.Value = 'Nao' then begin

        if EstQteCodEmp.Value > 0 then
           nvQte.Enabledbuttons := [nbExclui,nbSalva,nbCancela,nbNavega]
        else
           nvQte.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

        nvQte.DataSource := DsQte;

        end
     else
        begin

        nvQte.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

        nvQte.DataSource := DsQte;

     end;

     if EstParFlgTam.Value = 'Nao' then begin

        if EstTamCodEmp.Value > 0 then
           nvTam.Enabledbuttons := [nbExclui,nbSalva,nbCancela,nbNavega]
        else
           nvTam.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

        nvTam.DataSource := DsTam;

        end
     else
        begin

        nvTam.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

        nvTam.DataSource := DsTam;

     end;

     if Trim( EstProCodClp.Value ) = '' then begin

        pcPag4.Enabled := False;
        pcPag5.Enabled := False;

        end
     else
        begin

        pcPag4.Enabled := True;
        pcPag5.Enabled := True;

     end;
  end;
end;

procedure TfmManPro.pcPag2Show(Sender: TObject);
begin
  inherited;

  EstSub.Close;
  EstSub.Params[0].AsString := EstProCodGru.Value;
  EstSub.Open;

  if pcPag2.Enabled then begin

     if EdCodClp.Enabled then
        EdCodClp.Setfocus
     else
        EdDscPro.SetFocus;

  end;      
end;

procedure TfmManPro.pcPag3Show(Sender: TObject);
begin
  inherited;

  EstSub.Close;
  EstSub.Params[0].AsString := EstProCodGru.Value;
  EstSub.Open;

  if pcPag3.Enabled then EdObsPro.Setfocus;

end;

procedure TfmManPro.pcPag4Show(Sender: TObject);
begin
  inherited;

  EstSub.Close;
  EstSub.Params[0].AsString := EstProCodGru.Value;
  EstSub.Open;

  if pcPag4.Enabled then EdVcrIte.Setfocus;
  
end;

procedure TfmManPro.grIteCellChanged(Sender: TObject);
begin
  inherited;
  if EstParTamCor.Value = 'Nao' then begin

     if EstQteCodEmp.Value > 0 then
        nvQte.Enabledbuttons := [nbExclui,nbSalva,nbCancela,nbNavega]
     else
        nvQte.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvQte.DataSource := DsQte;

     end
  else
     begin

     nvQte.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvQte.DataSource := DsQte;

  end;

  if EstParFlgTam.Value = 'Nao' then begin

     if EstTamCodEmp.Value > 0 then
        nvTam.Enabledbuttons := [nbExclui,nbSalva,nbCancela,nbNavega]
     else
        nvTam.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvTam.DataSource := DsTam;

     end
  else
     begin

     nvTam.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvTam.DataSource := DsTam;

  end;

  if EstIteCodEmp.Value > 0 then
     pcPag4.Enabled := True
  else
     begin

     if not nvIte.Salvar then pcPag4.Enabled := False;

  end;
end;

procedure TfmManPro.grTamCellChanged(Sender: TObject);
begin
  inherited;
  if EstParTamCor.Value = 'Nao' then begin

     if EstQteCodEmp.Value > 0 then
        nvQte.Enabledbuttons := [nbExclui,nbSalva,nbCancela,nbNavega]
     else
        nvQte.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvQte.DataSource := DsQte;

     end
  else
     begin

     nvQte.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvQte.DataSource := DsQte;

  end;

  if EstParFlgTam.Value = 'Nao' then begin

     if EstTamCodEmp.Value > 0 then
        nvTam.Enabledbuttons := [nbExclui,nbSalva,nbCancela,nbNavega]
     else
        nvTam.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvTam.DataSource := DsTam;

     end
  else
     begin

     nvTam.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvTam.DataSource := DsTam;

  end;
end;

procedure TfmManPro.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select EstPro.*,'+
           '        EstPro.CodClp || _UNICODE_FSS '+ QuotedStr('-') +' || EstPro.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || EstPro.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || EstPro.CodPro as CodIte'+
           ' From EstPro';

end;

procedure TfmManPro.DsProDataChange(Sender: TObject; Field: TField);
var
BlobStream : TStream;
JPEGImage : TJPEGImage;
begin
  inherited;

  if EstClp.Params[0].AsString <> EstProCodClp.Value then begin

     EstClp.Close;
     EstClp.Params[0].AsString := EstProCodClp.Value;
     EstClp.Open;

  end;

  if EstGru.Params[0].AsString <> FNumZeros(EstProCodGru.Value,3) then begin

     EstGru.Close;
     EstGru.Params[0].AsString := FNumZeros(EstProCodGru.Value,3);
     EstGru.Open;

  end;

  if ( EstSub.Params[0].AsString <> FNumZeros(EstProCodGru.Value,3) ) or
     ( EstSub.Params[1].AsString <> FNumZeros(EstProCodSub.Value,4) ) then begin

     EstSub.Close;
     EstSub.Params[0].AsString := FNumZeros(EstProCodGru.Value,3);
     EstSub.Params[1].AsString := FNumZeros(EstProCodSub.Value,4);
     EstSub.Open;

  end;

  if EstCat.Params[0].AsInteger <> EstProCodCat.Value then begin

     EstCat.Close;
     EstCat.Params[0].AsInteger := EstProCodCat.Value;
     EstCat.Open;

  end;

  if EstTip.Params[0].AsInteger <> EstProCodTip.Value then begin

     EstTip.Close;
     EstTip.Params[0].AsInteger := EstProCodTip.Value;
     EstTip.Open;

  end;

  if EstMrc.Params[0].AsInteger <> EstProCodMrc.Value then begin

     EstMrc.Close;
     EstMrc.Params[0].AsInteger := EstProCodMrc.Value;
     EstMrc.Open;

  end;

  if EstUns.Params[0].AsString <> EstProCodUns.Value then begin

     EstUns.Close;
     EstUns.Params[0].AsString := EstProCodUns.Value;
     EstUns.Open;

  end;

  if EstUne.Params[0].AsString <> EstProCodUne.Value then begin

     EstUne.Close;
     EstUne.Params[0].AsString := EstProCodUne.Value;
     EstUne.Open;

  end;

  if (IcmSai.Params[0].AsString <> EstProIcmSai.Value) or
     (IcmSai.Params[1].AsString <> EstProIcmTsd.Value) then begin

     IcmSai.Close;
     IcmSai.Params[0].AsString := EstProIcmSai.Value;
     IcmSai.Params[1].AsString := EstProIcmTsd.Value;
     IcmSai.Open;

  end;

  if (IcmEnt.Params[0].AsString <> EstProIcmEnt.Value) or
     (IcmEnt.Params[1].AsString <> EstProIcmTen.Value) then begin

     IcmEnt.Close;
     IcmEnt.Params[0].AsString := EstProIcmEnt.Value;
     IcmEnt.Params[1].AsString := EstProIcmTen.Value;
     IcmEnt.Open;

  end;

  if (IpiSai.Params[0].AsString <> EstProIpiSai.Value) or
     (IpiSai.Params[1].AsString <> EstProIpiTsd.Value) then begin

     IpiSai.Close;
     IpiSai.Params[0].AsString := EstProIpiSai.Value;
     IpiSai.Params[1].AsString := EstProIpiTsd.Value;
     IpiSai.Open;

  end;

  if (IpiEnt.Params[0].AsString <> EstProIpiEnt.Value) or
     (IpiEnt.Params[1].AsString <> EstProIpiTen.Value) then begin

     IpiEnt.Close;
     IpiEnt.Params[0].AsString := EstProIpiEnt.Value;
     IpiEnt.Params[1].AsString := EstProIpiTen.Value;
     IpiEnt.Open;

  end;

  if (EstSts.Params[0].AsString <> EstProCodSts.Value) or
     (EstSts.Params[1].AsString <> EstProTipSts.Value) then begin

     EstSts.Close;
     EstSts.Params[0].AsString := EstProCodSts.Value;
     EstSts.Params[1].AsString := EstProTipSts.Value;
     EstSts.Open;

  end;

  if (EstSte.Params[0].AsString <> EstProCodSte.Value) or
     (EstSte.Params[1].AsString <> EstProTipSte.Value) then begin

     EstSte.Close;
     EstSte.Params[0].AsString := EstProCodSte.Value;
     EstSte.Params[1].AsString := EstProTipSte.Value;
     EstSte.Open;

  end;

  if GerUsu.Params[0].AsInteger <> EstProCodUsu.Value then begin

     GerUsu.Close;
     GerUsu.Params[0].AsInteger := EstProCodUsu.Value;
     GerUsu.Open;

  end;

  if EstProCodCat.Value > 0 then
     pnCategoria.Caption := EstCatNomCat.Value
  else
     pnCategoria.Caption := ' ';

  if EstProCodTip.Value > 0 then
     pnTipo.Caption := EstTipNomTip.Value
  else
     pnTipo.Caption := ' ';

  if EstProCodMrc.Value > 0 then
     pnMarca.Caption := EstMrcNomMrc.Value
  else
     pnMarca.Caption := ' ';

  if Trim( EstProCodCom.Value ) <> '' then
     pnPerCom.Caption := FormatFloat('##0.00',FinComPerCom.Value)+' %'
  else
     pnPerCom.Caption := '0'+DecimalSeparator+'00'+' %';

  if Trim(EstProNumPro.Value) <> '' then
     pnRefPro.Caption := EstProNumPro.Value
  else
     pnRefPro.Caption := EstProRefPro.Value;
     
  if not nvPro.Salvar then begin

     Label32.Caption := '';

     if EstProCodClp.Value <> '' then begin

        EdCodClp.Enabled := False;
        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;

        EdCodClp.Font.Style := [fsBold];
        EdCodGru.Font.Style := [fsBold];
        EdCodSub.Font.Style := [fsBold];
        EdCodPro.Font.Style := [fsBold];

        end
     else
        begin

        EdCodClp.Enabled := True;
        EdCodGru.Enabled := True;
        EdCodSub.Enabled := True;
        EdCodPro.Enabled := True;

        EdCodClp.Font.Style := [];
        EdCodGru.Font.Style := [];
        EdCodSub.Font.Style := [];
        EdCodPro.Font.Style := [];

     end;

     if EstProFlgPro.Value = 'Sim' then begin

        if not Label79.Visible then begin

           Label79.Visible := True;
           Label80.Visible := True;
           Label81.Visible := True;
           Label86.Visible := True;
           Label87.Visible := True;

           Label122.Visible := True;
           Label123.Visible := True;
           Label124.Visible := True;
           Label125.Visible := True;
           Label126.Visible := True;

           EdVp1Ite.Visible := True;
           EdVp2Ite.Visible := True;
           EdVp3Ite.Visible := True;
           EdVp4Ite.Visible := True;
           EdVp5Ite.Visible := True;

        end;

        end
     else
        begin

        if Label79.Visible then begin

           Label79.Visible := False;
           Label80.Visible := False;
           Label81.Visible := False;
           Label86.Visible := False;
           Label87.Visible := False;

           Label122.Visible := False;
           Label123.Visible := False;
           Label124.Visible := False;
           Label125.Visible := False;
           Label126.Visible := False;

           EdVp1Ite.Visible := False;
           EdVp2Ite.Visible := False;
           EdVp3Ite.Visible := False;
           EdVp4Ite.Visible := False;
           EdVp5Ite.Visible := False;

        end;
     end;

     if (EstIte.Params[0].AsString <> EstProCodClp.Value) or
        (EstIte.Params[1].AsString <> EstProCodGru.Value) or
        (EstIte.Params[2].AsString <> EstProCodSub.Value) or
        (EstIte.Params[3].AsString <> EstProCodPro.Value) then begin

        EstIte.Close;
        EstIte.Params[0].AsString := EstProCodClp.Value;
        EstIte.Params[1].AsString := EstProCodGru.Value;
        EstIte.Params[2].AsString := EstProCodSub.Value;
        EstIte.Params[3].AsString := EstProCodPro.Value;
        EstIte.Open;

        if EstProImgPro.BlobSize <> 0 then begin

           BlobStream := EstPro.CreateBlobStream(EstProImgPro,bmRead);

           JPEGImage := TJPEGImage.Create;

           try

              JPEGImage.LoadFromStream(BlobStream);

              Imagem2.Picture.Assign(JPEGImage);

           finally

              FreeAndNil(BlobStream);

              FreeAndNil(JPEGImage);

           end;

           end
        else
           Imagem2.Picture:= nil;
     end;
  end;
end;

procedure TfmManPro.EstProNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstPro.DisableControls;

  EstProISSPRO.Value := 0;
  EstProSAIICM.Value := 0;
  EstProENTICM.Value := 0;
  EstProSAIIPI.Value := 0;
  EstProENTIPI.Value := 0;
  EstProQtdEmb.Value := 0;
  EstProPesCub.Value := 0;
  EstProPesBrt.Value := 0;
  EstProPesLiq.Value := 0;
  EstProBrtEmb.Value := 0;
  EstProLiqEmb.Value := 0;
  EstProCubPro.Value := 0;
  EstProCxaPro.Value := 0;
  EstProQtdBar.Value := 0;
  EstProSeqBar.Value := 0;
  EstProAltPro.Value := 0;
  EstProComPro.Value := 0;
  EstProLarPro.Value := 0;
  EstProGarPro.Value := 0;
  EstProFlbPro.Value := ' ';
  EstProFlgTrg.Value := ' ';
  EstProCodClp.Value := '1';
  EstProDTCPRO.Value := Date;
  EstProFlgPro.Value := 'Nao';
  EstProFlgLis.Value := 'Nao';
  EstProCODUSU.Value := GUsu_Id;

  EstPro.EnableControls;

  Label96.Visible := False;

  EdVp1Ite.Visible := False;
  EdVp2Ite.Visible := False;
  EdVp3Ite.Visible := False;
  EdVp4Ite.Visible := False;
  EdVp5Ite.Visible := False;

  Imagem2.Picture:= nil;

  if pcPro.ActivePage <> pcPag2 then pcPro.ActivePage := PcPag2;

  EdCodClp.Enabled := True;
  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;

  EdCodClp.Font.Style := [];
  EdCodGru.Font.Style := [];
  EdCodSub.Font.Style := [];
  EdCodPro.Font.Style := [];

  pcPag4.Enabled := False;
  pcPag5.Enabled := False;

  EstIte.Close;
  EstIte.Params[0].AsString := EstProCodClp.Value;
  EstIte.Params[1].AsString := EstProCodGru.Value;
  EstIte.Params[2].AsString := EstProCodSub.Value;
  EstIte.Params[3].AsString := EstProCodPro.Value;
  EstIte.Open;

  EdCodClp.SetFocus;

end;

procedure TfmManPro.EdPsqCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodClp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(EdPsqCodClp.Text);
          Open;

          EdPsqNomClp.Text := FieldByName('NomClp').AsString;
          
     end;

     end
  else
     EdPsqNomClp.Text := '';
end;

procedure TfmManPro.BbPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
     if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );
     if Trim( EdPsqCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdPsqCodMrc.Text );

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

procedure TfmManPro.EdPsqCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGru.Text ) <> '' then begin

     EdPsqCodGru.Text := FNumZeros(EdPsqCodGru.Text,3);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstGru.NomGru From EstGru Where EstGru.CodGru = '+ QuotedStr(EdPsqCodGru.Text);
          Open;

          EdPsqNomGru.Text := FieldByName('NomGru').AsString;

     end;

     end
  else
     EdPsqNomGru.Text := '';
end;

procedure TfmManPro.BbPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
     if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );
     if Trim( EdPsqCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdPsqCodMrc.Text );
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

procedure TfmManPro.EdPsqCodSubExit(Sender: TObject);
begin
  inherited;
  if (EdPsqCodSub.Text <> '') and (EdPsqCodGru.Text <> '') then begin

     EdPsqCodSub.Text := FNumZeros(EdPsqCodSub.Text,4);

     with quSql,SQL do begin

          Close;
          Text := ' Select EstSub.NomSub'+
                  ' From EstSub '+
                  ' Where EstSub.CodGru = '+ QuotedStr(EdPsqCodGru.Text) +
                  '   and EstSub.CodSub = '+ QuotedStr(EdPsqCodSub.Text) ;
          Open;

          EdPsqNomSub.Text := FieldByName('NomSub').AsString;

     end;

     end
  else
     EdPsqNomSub.Text := '';
end;

procedure TfmManPro.BbPsqSubClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodClp.Text ) <> '' then fmAuxIni.CodClp := EdPsqCodClp.Text;
     if Trim( EdPsqCodGru.Text ) <> '' then fmAuxIni.CodGru := EdPsqCodGru.Text;
     if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
     if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );
     if Trim( EdPsqCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdPsqCodMrc.Text );

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

procedure TfmManPro.bPesquisaClick(Sender: TObject);
begin
  inherited;

  sOrdem  := '';
  sFiltro := '';

  case rgOrdem.Itemindex of
       0: sOrdem := ' Order by EstPro.CodClp,EstPro.CodGru,EstPro.CodSub,EstPro.CodPro';
       1: sOrdem := ' Order by EstPro.DscPro';
       2: sOrdem := ' Order by EstPro.SimPro';
       3: sOrdem := ' Order by EstPro.CodCat';
       4: sOrdem := ' Order by EstPro.CodTip';
       5: sOrdem := ' Order by EstPro.CodMrc';
  end;

  case rgStatus.Itemindex of
       0: sFiltro := ' Where EstPro.FlbPro  = '+ QuotedStr(' ');
       1: sFiltro := ' Where EstPro.FlbPro  = '+ QuotedStr('*');
  end;

  if pos('Where',sFiltro) > 0 then begin

     case rgPromocao.Itemindex of
          0: sFiltro := sFiltro + ' and EstPro.FlgPro  = '+ QuotedStr('Sim');
          1: sFiltro := sFiltro + ' and EstPro.FlgPro  = '+ QuotedStr('Nao');
     end;

     end
  else
     begin

     case rgPromocao.Itemindex of
          0: sFiltro := ' Where EstPro.FlgPro  = '+ QuotedStr('Sim');
          1: sFiltro := ' Where EstPro.FlgPro  = '+ QuotedStr('Nao');
     end;
  end;

  if Trim( EdPsqCodCat.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodCat = '+ QuotedStr(EdPsqCodCat.Text)
     else
        sFiltro := ' Where EstPro.CodCat = '+ QuotedStr(EdPsqCodCat.Text);

  end;

  if Trim( EdPsqCodTip.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodTip = '+ QuotedStr(EdPsqCodTip.Text)
     else
        sFiltro := ' Where EstPro.CodTip = '+ QuotedStr(EdPsqCodTip.Text);

  end;

  if Trim( EdPsqCodMrc.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodMrc = '+ QuotedStr(EdPsqCodMrc.Text)
     else
        sFiltro := ' Where EstPro.CodMrc = '+ QuotedStr(EdPsqCodMrc.Text);

  end;

  if Trim( EdPsqCodClp.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodClp = '+ QuotedStr(EdPsqCodClp.Text)
     else
        sFiltro := ' Where EstPro.CodClp = '+ QuotedStr(EdPsqCodClp.Text)

  end;

  if Trim( EdPsqCodGru.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodGru = '+ QuotedStr(EdPsqCodGru.Text)
     else
        sFiltro := ' Where EstPro.CodGru = '+ QuotedStr(EdPsqCodGru.Text);

  end;

  if Trim( EdPsqCodSub.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodSub = '+ QuotedStr(EdPsqCodSub.Text)
     else
        sFiltro := ' Where EstPro.CodSub = '+ QuotedStr(EdPsqCodSub.Text);

  end;

  if Trim( EdPsqCodPro.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and EstPro.CodPro = '+ QuotedStr(EdPsqCodPro.Text)
     else
        sFiltro := ' Where EstPro.CodPro = '+ QuotedStr(EdPsqCodPro.Text);

  end;

  if Rgbusca.ItemIndex = 0 then begin

     if Trim( EdPsqSimPro.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and EstPro.SimPro LIKE '+ QuotedStr(EdPsqSimPro.Text +'%')
        else
           sFiltro := ' Where EstPro.SimPro LIKE '+ QuotedStr(EdPsqSimPro.Text +'%')

     end;

     if Trim( EdPsqCbaPro.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and EstPro.CbaPro LIKE '+ QuotedStr(EdPsqCbaPro.Text +'%')
        else
           sFiltro := ' Where EstPro.CbaPro LIKE '+ QuotedStr(EdPsqCbaPro.Text +'%')

     end;

     if Trim( EdPsqRefPro.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and EstPro.RefPro LIKE '+ QuotedStr(EdPsqRefPro.Text +'%')
        else
           sFiltro := ' Where EstPro.RefPro LIKE '+ QuotedStr(EdPsqRefPro.Text +'%');

     end;

     if Trim( EdPsqIdePro.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and EstPro.IdePro LIKE '+ QuotedStr(EdPsqIdePro.Text +'%')
        else
           sFiltro := ' Where EstPro.IdePro LIKE '+ QuotedStr(EdPsqIdePro.Text +'%');

     end;

     if Trim( EdPsqDscPro.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and EstPro.DscPro LIKE '+ QuotedStr(EdPsqDscPro.Text +'%')
        else
           sFiltro := ' Where EstPro.DscPro LIKE '+ QuotedStr(EdPsqDscPro.Text +'%');

     end;

     end
  else
     begin

     if Trim( EdPsqSimPro.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and EstPro.SimPro LIKE '+ QuotedStr('%'+ EdPsqSimPro.Text +'%')
        else
           sFiltro := ' Where EstPro.SimPro LIKE '+ QuotedStr('%'+ EdPsqSimPro.Text +'%')

     end;

     if Trim( EdPsqCbaPro.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and EstPro.CbaPro LIKE '+ QuotedStr('%'+ EdPsqCbaPro.Text +'%')
        else
           sFiltro := ' Where EstPro.CbaPro LIKE '+ QuotedStr('%'+ EdPsqCbaPro.Text +'%')

     end;

     if Trim( EdPsqRefPro.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and EstPro.RefPro LIKE '+ QuotedStr('%'+ EdPsqRefPro.Text +'%')
        else
           sFiltro := ' Where EstPro.RefPro LIKE '+ QuotedStr('%'+ EdPsqRefPro.Text +'%');

     end;

     if Trim( EdPsqIdePro.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and EstPro.IdePro LIKE '+ QuotedStr('%'+ EdPsqIdePro.Text +'%')
        else
           sFiltro := ' Where EstPro.IdePro LIKE '+ QuotedStr('%'+ EdPsqIdePro.Text +'%');

     end;

     if Trim( EdPsqDscPro.Text ) <> '' then begin

        if pos('Where',sFiltro) > 0 then
           sFiltro := sFiltro + ' and EstPro.DscPro LIKE '+ QuotedStr('%'+ EdPsqDscPro.Text +'%')
        else
           sFiltro := ' Where EstPro.DscPro LIKE '+ QuotedStr('%'+ EdPsqDscPro.Text +'%');

     end;
  end;

  with EstPro,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as Reg From EstPro' + sFiltro;
       Open;

       pnQuant.Caption := fNumZeros(IntToStr(FieldbyName('Reg').AsInteger),6);

  end;

  grPro.SetFocus;

end;

procedure TfmManPro.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim( EstProCodGru.Value ) <> '' then begin

     if nvPro.Salvar then EstProCodGru.Value := FNumZeros(EstProCodGru.Value,3);

  end;
end;

procedure TfmManPro.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim( EstProCodSub.Value ) <> '' then begin

     if nvPro.Salvar then EstProCodSub.Value := FNumZeros(EstProCodSub.Value,4);

  end;
end;

procedure TfmManPro.mmPopProPopup(Sender: TObject);
begin
  inherited;
  PcPro.ActivePage := pcPag1;
end;

procedure TfmManPro.EdCodProExit(Sender: TObject);
begin
  inherited;

  Label32.Caption := '';

  if nvPro.Salvar then begin

     if EstProCodPro.Value <> '' then EstProCodPro.Value := FNumStrZero(EstProCodPro.Value);

     if EstPro.State = dsInsert then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg From EstPro'+
                     ' Where EstPro.CodClp = :CodClp'+
                     '   and EstPro.CodGru = :CodGru'+
                     '   and EstPro.CodSub = :CodSub'+
                     '   and EstPro.CodPro = :CodPro';

             with Params do begin

                  Params[0].AsString := EstProCodClp.Value;
                  Params[1].AsString := EstProCodGru.Value;
                  Params[2].AsString := EstProCodSub.Value;
                  Params[3].AsString := EstProCodPro.Value;

             end;

             Open;

             if FieldbyName('Reg').AsInteger > 0 then fmsgErro('Item já Cadastrado.',EdCodPro);

        end;
     end;
  end;
end;

procedure TfmManPro.nvProImprime(Sender: TObject);
begin
  inherited;
  with quSql1,SQL do begin

       Close;
       Text := ' Select CodClp,NomClp,CodGru,NomGru,CodSub,NomSub,CodPro,DscPro,'+
               '        RefPro,SimPro,LocPro,CatPro,CodUne,CodUns,QtePro,QtsPro'+
               ' From EstPro LEFT JOIN EstClp ON (EstPro.CodClp = EstClp.CodClp)'+
               '             LEFT JOIN EstSub ON (EstPro.CodGru = EstSub.CodGru)'+
               '                             AND (EstPro.CodSub = EstSub.CodSub)'+
               '             LEFT JOIN EstGru ON (EstSub.CodGru = EstGru.CodGru)'+ sFiltro + ' Order by CodClp,CodGru,CodSub,CodPro';
       Open;
       First;

  end;

  if not quSql1.Eof then begin

     try

        ppReport1.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManPro);
        fmPreview.ppViewer.Report := ppReport1;
        ppReport1.PrintToDevices;
        fmPreview.ShowModal;

     finally

        FreeAndNil(fmPreview);

     end;

     if Assigned(ppReport1.AfterPrint) then ppReport1.AfterPrint(Sender);

  end;
end;

procedure TfmManPro.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppCodClp.Caption := PreString(quSql1CodClp.Value,7);
  ppNomClp.Caption := quSql1NomClp.Value;
end;

procedure TfmManPro.ppGroupHeaderBand2BeforePrint(Sender: TObject);
begin
  inherited;

  ppCodGru.Caption := PreString(quSql1CodGru.Value,7);
  ppNomGru.Caption := quSql1NomGru.Value;

  ppCodSub.Caption := PreString(quSql1CodSub.Value,7);
  ppNomSub.Caption := quSql1NomSub.Value;

end;

procedure TfmManPro.dbReportBeforePrint(Sender: TObject);
begin
  inherited;
  
  ppCodPro.Caption := quSql1CodPro.Value;
  ppDscPro.Caption := quSql1DscPro.Value;
  ppRefPro.Caption := copy(quSql1RefPro.Value,1,15);
  ppSimPro.Caption := PreString(quSql1SimPro.Value,7);
  ppLocPro.Caption := copy(quSql1LocPro.Value,1,15);
  ppCatPro.Caption := copy(quSql1CatPro.Value,1,15);
  ppCodUne.Caption := PreString(quSql1CodUne.Value,3);
  ppQtePro.Caption := PreString(FormatFloat('###,##0.0000',quSql1QtePro.Value),12);
  ppCodUns.Caption := PreString(quSql1CodUns.Value,3);
  ppQtsPro.Caption := PreString(FormatFloat('###,##0.0000',quSql1QtsPro.Value),12);

end;

procedure TfmManPro.EstProBeforePost(DataSet: TDataSet);
begin
  inherited;

  EstProCodGru.Value := FNumZeros(EstProCodGru.Value,3);
  EstProCodSub.Value := FNumZeros(EstProCodSub.Value,4);
  EstProCodPro.Value := FNumStrZero(EstProCodPro.Value);

  if Trim( EstProDscPro.Value ) = '' then fmsgErro('Descrição Principal não Informada',EdDscPro);

  if (EstPro.State = dsInsert) or (pos('and',sFiltro) = 0) then sFiltro := ' Where EstPro.CodClp = '+ QuotedStr(EstProCodClp.Value)+
                                                                           '   and EstPro.CodGru = '+ QuotedStr(EstProCodGru.Value)+
                                                                           '   and EstPro.CodSub = '+ QuotedStr(EstProCodSub.Value)+
                                                                           '   and EstPro.CodPro = '+ QuotedStr(EstProCodPro.Value);

  pCodClp := EstProCodClp.Value;
  pCodGru := EstProCodGru.Value;
  pCodSub := EstProCodSub.Value;
  pCodPro := EstProCodPro.Value;

end;

procedure TfmManPro.EdDscProExit(Sender: TObject);
begin
  inherited;
  if (nvPro.Salvar) and (EstProDsrPro.Value = '') then EstProDsrPro.Value := EstProDscPro.Value;
end;

procedure TfmManPro.nvProCancela(Sender: TObject);
begin
  inherited;
  pcPag4.Enabled := True;
  pcPag5.Enabled := True;
end;

procedure TfmManPro.nvProSalva(Sender: TObject);
var
sCodBar : integer;
CodBar  : string;
SeqBar  : integer;
begin
  inherited;

  pcPag4.Enabled := True;
  pcPag5.Enabled := True;

  with EstPro,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as Reg From EstPro' + sFiltro;
       Open;

       pnQuant.Caption := fNumZeros(IntToStr(FieldbyName('Reg').AsInteger),6);

  end;

  if Trim( pCodClp ) <> '' then EstPro.Locate('CODCLP;CODGRU;CODSUB;CODPRO', VarArrayOf([pCodClp,pCodGru,pCodSub,pCodPro]), [loPartialKey]);

  if EstParLanCba.Value = 'Sim' then begin

     if EstParTipEan.Value = 'Itens' then begin

        if Trim( EstParIniEan.Value ) <> '' then begin

           if Length(Trim(EstParIniEan.Value)) = 9 then begin

              SeqBar := 0;
              
              if fmManGDB.dbMain.InTransaction then fmManGDB.dbMain.Rollback;

              fmManGDB.dbMain.StartTransaction;

              with StoredProcedure do begin

                   ParamByName('SEQOPE').AsInteger := 0;
                   Close;
                   Prepare;
                   ExecProc;
                   Unprepare;

                   if ParamByName('RETORNO').Value <> null then begin

                      SeqBar := ParamByName('RETORNO').Value;

                      fmManGDB.dbMain.Commit;

                      end
                   else
                      fmManGDB.dbMain.Rollback;

              end;

              if (SeqBar + 1) > 999 then fmsgErro('Limite de Sequencial Valido para Códigos de Barras já Utilizado. Por Favor Verificar.',Nil); 

           end;
           
           with quSQL,SQL do begin

                Close;
                Text := ' Select EstPro.CodBar From EstPro'+
                        ' Where EstPro.CodClp = '+ QuotedStr(EstProCodClp.Value)+
                        '   and EstPro.CodGru = '+ QuotedStr(EstProCodGru.Value)+
                        '   and EstPro.CodSub = '+ QuotedStr(EstProCodSub.Value)+
                        '   and EstPro.CodPro = '+ QuotedStr(EstProCodPro.Value);
                Open;        

                sCodBar := FieldbyName('CodBar').AsInteger;

           end;

           if sCodBar > 0 then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg From EstBar'+
                           ' Where EstBar.CodClp = '+ QuotedStr(EstProCodClp.Value)+
                           '   and EstBar.CodGru = '+ QuotedStr(EstProCodGru.Value)+
                           '   and EstBar.CodSub = '+ QuotedStr(EstProCodSub.Value)+
                           '   and EstBar.CodPro = '+ QuotedStr(EstProCodPro.Value)+
                           '   and EstBar.FlgInt = '+ QuotedStr('Sim');
                   Open;

              end;

              if quSQL.FieldbyName('QtdReg').AsInteger = 0 then begin

                 if Length(Trim(EstParIniEan.Value)) = 9 then
                    CodBar := fGeraCB2(EstParIniEan.Value+fNumZeros(IntToStr(sCodBar),3))
                 else
                    CodBar := fGeraCB2(EstParIniEan.Value+fNumZeros(IntToStr(sCodBar),5));
                    
                 if Trim( CodBar ) <> '' then begin

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Insert Into EstBar(CodClp,CodGru,CodSub,CodPro,SeqBar,CodBar,NroBar,FlgInt)'+
                                 '             Values(:CodClp,:CodGru,:CodSub,:CodPro,:SeqBar,:CodBar,:NroBar,:FlgInt)';

                         with Params do begin

                              Params[0].AsString  := EstProCodClp.Value;
                              Params[1].AsString  := EstProCodGru.Value;
                              Params[2].AsString  := EstProCodSub.Value;
                              Params[3].AsString  := EstProCodPro.Value;
                              Params[4].AsInteger := 1;
                              Params[5].AsString  := CodBar;
                              Params[6].AsInteger := 1;
                              Params[7].AsString  := 'Sim';

                         end;

                         ExecSQL;

                    end;
                 end;
              end;
           end;
        end;   
     end;
  end;
end;

procedure TfmManPro.EstIteNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstIte.DisableControls;

  EstIteVCHITE.Value := 0;
  EstIteVREITE.Value := 0;
  EstIteVCRITE.Value := 0;
  EstIteVCPITE.Value := 0;
  EstIteVPRITE.Value := 0;
  EstIteVMEITE.Value := 0;  
  EstIteVB1ITE.Value := 0;
  EstIteVB2ITE.Value := 0;
  EstIteVB3ITE.Value := 0;
  EstIteVB4ITE.Value := 0;
  EstIteVB5ITE.Value := 0;
  EstIteMK1ITE.Value := 0;
  EstIteMK2ITE.Value := 0;
  EstIteMK3ITE.Value := 0;
  EstIteMK4ITE.Value := 0;
  EstIteMK5ITE.Value := 0;
  EstIteVP1ITE.Value := 0;
  EstIteVP2ITE.Value := 0;
  EstIteVP3ITE.Value := 0;
  EstIteVP4ITE.Value := 0;
  EstIteVP5ITE.Value := 0;
  EstIteQTMITE.Value := 0;
  EstIteQTDITE.Value := 0;
  EstIteQTRITE.Value := 0;
  EstIteQTAITE.Value := 0;
  EstIteCodClp.Value := EstProCodClp.Value;
  EstIteCodGru.Value := EstProCodGru.Value;
  EstIteCodSub.Value := EstProCodSub.Value;
  EstIteCodPro.Value := EstProCodPro.Value;

  EstIte.EnableControls;

  AntVcrIte := EstIteVcrIte.Value;
  AntVb1Ite := EstIteVb1Ite.Value;
  AntVb2Ite := EstIteVb2Ite.Value;
  AntVb3Ite := EstIteVb3Ite.Value;
  AntVb4Ite := EstIteVb4Ite.Value;
  AntVb5Ite := EstIteVb5Ite.Value;
  AntMk1Ite := EstIteMk1Ite.Value;
  AntMk2Ite := EstIteMk2Ite.Value;
  AntMk3Ite := EstIteMk3Ite.Value;
  AntMk4Ite := EstIteMk4Ite.Value;
  AntMk5Ite := EstIteMk5Ite.Value;
  AntMs1Ite := EstIteMs1Ite.Value;
  AntMs2Ite := EstIteMs2Ite.Value;
  AntMs3Ite := EstIteMs3Ite.Value;
  AntMs4Ite := EstIteMs4Ite.Value;
  AntMs5Ite := EstIteMs5Ite.Value;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;
  pcPag5.Enabled := False;

  EstTam.Close;
  EstTam.Params[0].AsInteger := EstIteCodEmp.Value;
  EstTam.Params[1].AsString  := EstIteCodClp.Value;
  EstTam.Params[2].AsString  := EstIteCodGru.Value;
  EstTam.Params[3].AsString  := EstIteCodSub.Value;
  EstTam.Params[4].AsString  := EstIteCodPro.Value;
  EstTam.Open;

  EdCodEmp.Enabled := True;
  CbNomEmp.Enabled := True;

  EdCodEmp.Font.Style := [];
  CbNomEmp.Font.Style := [];

  EdCodEmp.SetFocus;

end;

procedure TfmManPro.EdPsqCodProExit(Sender: TObject);
begin
  inherited;
  if EdPsqCodPro.Text <> '' then EdPsqCodPro.Text := FNumStrZero(EdPsqCodPro.Text);
end;

procedure TfmManPro.EstTamNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstTam.DisableControls;

  EstTamCodEmp.Value := EstIteCodEmp.Value;
  EstTamCodClp.Value := EstIteCodClp.Value;
  EstTamCodGru.Value := EstIteCodGru.Value;
  EstTamCodSub.Value := EstIteCodSub.Value;
  EstTamCodPro.Value := EstIteCodPro.Value;

  EstTam.EnableControls;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;
  pcPag4.Enabled := False;

  EdCodTam.Enabled := True;

  EdCodTam.Font.Style := [];

  EstQte.Close;
  EstQte.Params[0].AsInteger := EstTamCodEmp.Value;
  EstQte.Params[1].AsString  := EstTamCodClp.Value;
  EstQte.Params[2].AsString  := EstTamCodGru.Value;
  EstQte.Params[3].AsString  := EstTamCodSub.Value;
  EstQte.Params[4].AsString  := EstTamCodPro.Value;
  EstQte.Params[5].AsString  := EstTamCodTam.Value;
  EstQte.Open;

  EdCodTam.SetFocus;

end;

procedure TfmManPro.EstQteNewRecord(DataSet: TDataSet);
begin
  inherited;

  EstQte.DisableControls;

  EstQteQTMQTE.Value := 0;
  EstQteQTDQTE.Value := 0;
  EstQteQTRQTE.Value := 0;
  EstQteQTAQTE.Value := 0;
  EstQteCodEmp.Value := EstTamCodEmp.Value;
  EstQteCodClp.Value := EstTamCodClp.Value;
  EstQteCodGru.Value := EstTamCodGru.Value;
  EstQteCodSub.Value := EstTamCodSub.Value;
  EstQteCodPro.Value := EstTamCodPro.Value;
  EstQteCodTam.Value := EstTamCodTam.Value;

  EstQte.EnableControls;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;
  pcPag4.Enabled := False;

  EdCodCor.Enabled := True;
  CbNomCor.Enabled := True;

  EdCodCor.Font.Style := [];
  CbNomCor.Font.Style := [];

  EdCodCor.SetFocus;

end;

procedure TfmManPro.nvQteSalva(Sender: TObject);
var
  Codbar  : string;
  sCodBar : integer;
begin
  inherited;

  EstTam.Close;
  EstTam.Open;

  EstTam.Locate('CodEmp;CodClp;CodGru;CodSub;CodPro;CodTam',VarArrayOf([pCodEmp,pCodClp,pCodGru,pCodSub,pCodPro,pCodTam]),[LoPartialKey]);

  if Trim( pCodClp ) <> '' then EstQte.Locate('CODEMP;CODCLP;CODGRU;CODSUB;CODPRO;CODTAM;CODCOR', VarArrayOf([pCodEmp,pCodClp,pCodGru,pCodSub,pCodPro,pCodtam,pCodCor]), [loPartialKey]);

  if EstParLanCba.Value = 'Sim' then begin

     if EstParTipEan.Value = 'Cores' then begin

        if Trim( EstParIniEan.Value ) <> '' then begin
        
           with quSQL,SQL do begin

                Close;
                Text := ' Select EstQte.CodBar From EstQte'+
                        ' Where EstQte.CodEmp = '+ QuotedStr(IntToStr(EstQteCodEmp.Value)) +
                        '   and EstQte.CodClp = '+ QuotedStr(EstQteCodClp.Value) +
                        '   and EstQte.CodGru = '+ QuotedStr(EstQteCodGru.Value) +
                        '   and EstQte.CodSub = '+ QuotedStr(EstQteCodSub.Value) +
                        '   and EstQte.CodPro = '+ QuotedStr(EstQteCodPro.Value) +
                        '   and EstQte.CodTam = '+ QuotedStr(EstQteCodTam.Value) +
                        '   and EstQte.CodCor = '+ QuotedStr(EstQteCodCor.Value) ;
                Open;

                sCodBar := FieldbyName('CodBar').AsInteger;

           end;

           if sCodBar > 0 then begin

              if Length(Trim(EstParIniEan.Value)) = 9 then
                 CodBar := fGeraCB2(EstParIniEan.Value+fNumZeros(IntToStr(sCodBar),3))
              else
                 CodBar := fGeraCB2(EstParIniEan.Value+fNumZeros(IntToStr(sCodBar),5));
                 
              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg From EstQte'+
                           ' Where EstQte.CodEmp = '+ QuotedStr(IntToStr(EstQteCodEmp.Value)) +
                           '   and EstQte.CodClp = '+ QuotedStr(EstQteCodClp.Value) +
                           '   and EstQte.CodGru = '+ QuotedStr(EstQteCodGru.Value) +
                           '   and EstQte.CodSub = '+ QuotedStr(EstQteCodSub.Value) +
                           '   and EstQte.CodPro = '+ QuotedStr(EstQteCodPro.Value) +
                           '   and EstQte.CodTam = '+ QuotedStr(EstQteCodTam.Value) +
                           '   and EstQte.CodCor = '+ QuotedStr(EstQteCodCor.Value) +
                           '   and EstQte.CodBar = '+ QuotedStr(CodBar) ;
                   Open;

              end;

              if quSQL.FieldbyName('QtdReg').AsInteger = 0 then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Update EstQte set EstQte.CbaQte = '+ QuotedStr(CodBar) +
                              ' Where EstQte.CodEmp = '+ QuotedStr(IntToStr(EstQteCodEmp.Value)) +
                              '   and EstQte.CodClp = '+ QuotedStr(EstQteCodClp.Value) +
                              '   and EstQte.CodGru = '+ QuotedStr(EstQteCodGru.Value) +
                              '   and EstQte.CodSub = '+ QuotedStr(EstQteCodSub.Value) +
                              '   and EstQte.CodPro = '+ QuotedStr(EstQteCodPro.Value) +
                              '   and EstQte.CodTam = '+ QuotedStr(EstQteCodTam.Value) +
                              '   and EstQte.CodCor = '+ QuotedStr(EstQteCodCor.Value) ;
                      ExecSQL;

                 end;

                 EstQte.Close;
                 EstQte.Open;

                 if Trim( pCodClp ) <> '' then EstQte.Locate('CODEMP;CODCLP;CODGRU;CODSUB;CODPRO;CODTAM;CODCOR', VarArrayOf([pCodEmp,pCodClp,pCodGru,pCodSub,pCodPro,pCodtam,pCodCor]), [loPartialKey]);
                 
              end;
           end;
        end;   
     end;
  end;  
end;

procedure TfmManPro.nvTamExclui(Sender: TObject);
begin
  inherited;

  EstTam.Close;
  EstTam.Open;

end;

procedure TfmManPro.grQteCellChanged(Sender: TObject);
begin
  inherited;
  if EstParTamCor.Value = 'Nao' then begin

     if EstQteCodEmp.Value > 0 then
        nvQte.Enabledbuttons := [nbExclui,nbSalva,nbCancela,nbNavega]
     else
        nvQte.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvQte.DataSource := DsQte;

     end
  else
     begin

     nvQte.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvQte.DataSource := DsQte;

  end;

  if EstParFlgTam.Value = 'Nao' then begin

     if EstTamCodEmp.Value > 0 then
        nvTam.Enabledbuttons := [nbExclui,nbSalva,nbCancela,nbNavega]
     else
        nvTam.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvTam.DataSource := DsTam;

     end
  else
     begin

     nvTam.EnabledButtons := [nbAtualizar,nbInclui,nbExclui,nbSalva,nbCancela,nbNavega];

     nvTam.DataSource := DsTam;

  end;
end;

procedure TfmManPro.grProDblClick(Sender: TObject);
begin
  inherited;
  pcPro.ActivePage := pcPag2;
end;

procedure TfmManPro.EdIcmSaiExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then begin

     if Trim( EstProIcmSai.Value ) <> '' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select TipIcm,PerIcm From EstIcm '+
                     ' Where CodIcm = '+ QuotedStr(EstProIcmSai.Value)+
                     '   and TipIcm = '+ QuotedStr('Saida');
             Open;

             if Trim( FieldbyName('TipIcm').AsString ) <> '' then
                EstProSaiIcm.Value := FieldbyName('PerIcm').AsFloat
             else
                fmsgErro('Regra de Icms Informada não Encontrada.',EdIcmSai);

        end;

        end
     else
        EstProSaiIcm.Value := 0;
  end;
end;

procedure TfmManPro.CbNomIcmSaiExit(Sender: TObject);
begin
  inherited;
  EdIcmSai.SetFocus;
end;

procedure TfmManPro.EdIpiSaiExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then begin

     if Trim( EstProIpiSai.Value ) <> '' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select TipIpi,ClsIpi,PerIpi From EstIpi '+
                     ' Where CodIpi = '+ QuotedStr(EstProIpiSai.Value)+
                     '   and TipIpi = '+ QuotedStr('Saida');
             Open;

             if Trim( FieldbyName('TipIpi').AsString ) <> '' then begin

                EstProSaiIpi.Value := FieldbyName('PerIpi').AsFloat;
                EstProClfSai.Value := FieldbyName('ClsIpi').AsString;

                end
             else
                fmsgErro('Regra de IPI Informada não Encontrada.',EdIpiSai);

        end;

        end
     else
        EstProSaiIpi.Value := 0;
  end;
end;

procedure TfmManPro.CbNomIpiSaiExit(Sender: TObject);
begin
  inherited;
  EdIpiSai.SetFocus;
end;

procedure TfmManPro.EdIcmEntExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then begin

     if Trim( EstProIcmEnt.Value ) <> '' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select TipIcm,PerIcm From EstIcm '+
                     ' Where CodIcm = '+ QuotedStr(EstProIcmEnt.Value)+
                     '   and TipIcm = '+ QuotedStr('Entrada');
             Open;

             if Trim( FieldbyName('TipIcm').AsString ) <> '' then
                EstProEntIcm.Value := FieldbyName('PerIcm').AsFloat
             else
                fmsgErro('Regra de Icms Informada não Encontrada.',EdIcmEnt);

        end;

        end
     else
        EstProEntIcm.Value := 0;
  end;
end;

procedure TfmManPro.CbNomIcmEntExit(Sender: TObject);
begin
  inherited;
  EdIcmEnt.SetFocus;
end;

procedure TfmManPro.EdIpiEntExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then begin

     if Trim( EstProIpiEnt.Value ) <> '' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select TipIpi,PerIpi,ClsIpi From EstIpi '+
                     ' Where CodIpi = '+ QuotedStr(EstProIpiEnt.Value)+
                     '   and TipIpi = '+ QuotedStr('Entrada');
             Open;

             if Trim( FieldbyName('TipIpi').AsString ) <> '' then begin

                EstProEntIpi.Value := FieldbyName('PerIpi').AsFloat;
                EstProClfEnt.Value := FieldbyName('ClsIpi').AsString;

                end
             else
                fmsgErro('Regra de IPI Informada não Encontrada.',EdIpiEnt);

        end;

        end
     else
        EstProEntIpi.Value := 0;
  end;
end;

procedure TfmManPro.CbNomIpiEntExit(Sender: TObject);
begin
  inherited;
  EdIpiEnt.SetFocus;
end;

procedure TfmManPro.nvProBeforeSalva(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  EstProDscPro.Value := Trim(EstProDscPro.Value);
  EstProDsrPro.Value := Trim(EstProDsrPro.Value);
  EstProSimPro.Value := Trim(EstProSimPro.Value);
  EstProLocPro.Value := Trim(EstProLocPro.Value);
  EstProIdePro.Value := Trim(EstProIdePro.Value);
  EstProCodUne.Value := Trim(EstProCodUne.Value);
  EstProCodUns.Value := Trim(EstProCodUns.Value);
  EstProRefPro.Value := Trim(EstProRefPro.Value);
  EstProIcmSai.Value := Trim(EstProIcmSai.Value);
  EstProIcmEnt.Value := Trim(EstProIcmEnt.Value);
  EstProIpiSai.Value := Trim(EstProIpiSai.Value);
  EstProIpiEnt.Value := Trim(EstProIpiEnt.Value);
  EstProCodSts.Value := Trim(EstProCodSts.Value);
  EstProCodSte.Value := Trim(EstProCodSte.Value);
  EstProObsPro.Value := Trim(EstProObsPro.Value);
  EstProWebPro.Value := Trim(EstProWebPro.Value);
  EstProCodAnt.Value := Trim(EstProCodAnt.Value);
  EstProDesImp.Value := Trim(EstProDesImp.Value);
  EstProDesIm2.Value := Trim(EstProDesIm2.Value);
  EstProDscImp.Value := Trim(EstProDscImp.Value);
  EstProDsrImp.Value := Trim(EstProDsrImp.Value);

  if Trim(EstProCodUne.Value) = '' then EstProCodUne.Clear;
  if Trim(EstProCodUns.Value) = '' then EstProCodUns.Clear;

  if Trim( EstProCodSte.Value ) <> '' then
     EstProTipSte.Value := 'Entrada'
  else
     begin

     EstProCodSte.Clear;
     EstProTipSte.Clear;

  end;

  if Trim( EstProCodSts.Value ) <> '' then
     EstProTipSts.Value := 'Saida'
  else
     begin

     EstProCodSts.Clear;
     EstProTipSts.Clear;

  end;

  if Trim( EstProCodCom.Value ) = '' then EstProCodCom.Clear;
  
  if Trim( EstProIcmSai.Value ) <> '' then begin

     EstProIcmTsd.Value := 'Saida';

     with quSQL,SQL do begin

          Close;
          Text := ' Select PerIcm From EstIcm '+
                  ' Where CodIcm = '+ QuotedStr(EstProIcmSai.Value)+
                  '   and TipIcm = '+ QuotedStr(EstProIcmTsd.Value);
          Open;

          EstProSaiIcm.Value := FieldbyName('PerIcm').AsFloat;

     end;

     end
  else
     begin

     EstProIcmSai.Clear;
     EstProIcmTsd.Clear;

     EstProSaiIcm.Value := 0;

  end;

  if Trim( EstProIpiSai.Value ) <> '' then begin

     EstProIpiTsd.Value := 'Saida';

     with quSQL,SQL do begin

          Close;
          Text := ' Select PerIpi From EstIpi '+
                  ' Where CodIpi = '+ QuotedStr(EstProIpiSai.Value)+
                  '   and TipIpi = '+ QuotedStr(EstProIpiTsd.Value);
          Open;

          EstProSaiIpi.Value := FieldbyName('PerIpi').AsFloat;

     end;

     end
  else
     begin

     EstProIpiSai.Clear;
     EstProIpiTsd.Clear;
     EstProClfSai.Clear;

     EstProSaiIpi.Value := 0;

  end;

  if Trim( EstProIcmEnt.Value ) <> '' then begin

     EstProIcmTen.Value := 'Entrada';

     with quSQL,SQL do begin

          Close;
          Text := ' Select PerIcm From EstIcm '+
                  ' Where CodIcm = '+ QuotedStr(EstProIcmEnt.Value)+
                  '   and TipIcm = '+ QuotedStr(EstProIcmTen.Value);
          Open;

          EstProEntIcm.Value := FieldbyName('PerIcm').AsFloat;

     end;

     end
  else
     begin

     EstProIcmEnt.Clear;
     EstProIcmTen.Clear;

     EstProEntIcm.Value := 0;

  end;

  if Trim( EstProIpiEnt.Value ) <> '' then begin

     EstProIpiTen.Value := 'Entrada';

     with quSQL,SQL do begin

          Close;
          Text := ' Select PerIpi From EstIpi '+
                  ' Where CodIpi = '+ QuotedStr(EstProIpiEnt.Value)+
                  '   and TipIpi = '+ QuotedStr(EstProIpiTen.Value);
          Open;

          EstProEntIpi.Value := FieldbyName('PerIpi').AsFloat;

     end;

     end
  else
     begin

     EstProIpiEnt.Clear;
     EstProIpiTen.Clear;
     EstProClfEnt.Clear;     

     EstProEntIpi.Value := 0;

  end;

  if Trim( EstProCodClp.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodClp);
  if Trim( EstProCodGru.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodGru);
  if Trim( EstProCodSub.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodSub);
  if Trim( EstProCodPro.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodPro);

  EstProCodGru.Value := FNumZeros(EstProCodGru.Value,3);
  EstProCodSub.Value := FNumZeros(EstProCodSub.Value,4);
  EstProCodPro.Value := FNumStrZero(EstProCodPro.Value);

end;

procedure TfmManPro.mmSelImgClick(Sender: TObject);
var
BlobStream : TStream;
JPEGImage : TJPEGImage;
FileStream : TFileStream;
begin
  inherited;
  if not (EstPro.State in ([dsEdit, dsInsert])) then
     EstPro.Edit;

  if OpenPicture.Execute then begin

     FileStream := TFileStream.Create(OpenPicture.FileName,fmOpenRead or fmShareDenyWrite);

     BlobStream := EstPro.CreateBlobStream(EstProImgPro,bmWrite);

     try
        BlobStream.CopyFrom(FileStream,FileStream.Size);
     finally
        FreeAndNil(FileStream);
        FreeAndNil(BlobStream);
     end;
  end;

  if EstProImgPro.BlobSize <> 0 then begin

     BlobStream := EstPro.CreateBlobStream(EstProImgPro,bmRead);

     JPEGImage := TJPEGImage.Create;

     try
        JPEGImage.LoadFromStream(BlobStream);
        Imagem2.Picture.Assign(JPEGImage);
     finally
        FreeAndNil(BlobStream);
        FreeAndNil(JPEGImage);
     end;

     end
  else
     Imagem2.Picture:= nil;
end;

procedure TfmManPro.Limpar1Click(Sender: TObject);
var
JPEGImage : TJPEGImage;
BlobStream : TStream;
begin
  inherited;
  if EstProImgPro.BlobSize <> 0 then begin

     if not (EstPro.State in ([dsEdit, dsInsert])) then EstPro.Edit;

     EstProImgPro.Clear;

     if EstProImgPro.BlobSize <> 0 then begin

        BlobStream := EstPro.CreateBlobStream(EstProImgPro,bmRead);

        JPEGImage := TJPEGImage.Create;

        try
          JPEGImage.LoadFromStream(BlobStream);
          Imagem2.Picture.Assign(JPEGImage);
        finally
          FreeAndNil(BlobStream);
          FreeAndNil(JPEGImage);
        end;

        end
     else
        Imagem2.Picture:= nil;
  end;
end;

procedure TfmManPro.EdSimProExit(Sender: TObject);
begin
  inherited;
  Label32.Caption := '';
end;

procedure TfmManPro.EdSimProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 113 then begin {Busca pelo Código}

     try

        fmAuxCod := TfmAuxCod.Create(Self);

        fmAuxCod.ShowModal;

        if Trim( fmAuxCod.sSimPro ) <> '' then begin

           if not nvPro.Salvar then begin

              if EstProCodClp.Value <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProSimPro.Value := fmAuxCod.sSimPro;

        end;

     finally   

        FreeAndNil(fmAuxCod);

     end;

     EdSimPro.SetFocus;

  end;

  if key = 114 then begin {Busca Inteligente}

     try

        fmAuxPro := TfmAuxPro.Create(Self);

        fmAuxPro.TipoPsq := 'I';

        fmAuxPro.ShowModal;

        if Trim( fmAuxPro.SimPro ) <> '' then begin

           if not nvPro.Salvar then begin

              if EstProCodClp.Value <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProSimPro.Value := fmAuxPro.SimPro;

        end;

     finally   

        FreeAndNil(fmAuxPro);

     end;

     EdSimPro.SetFocus;

  end;

  if key = 115 then begin {Busca Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if fmAuxIni.SimPro <> '' then begin

           if not nvPro.Salvar then begin

              if EstProCodClp.Value <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProSimPro.Value := fmAuxIni.SimPro;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     EdSimPro.SetFocus;

  end;
end;

procedure TfmManPro.EdWebProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) or (key = 40) then pcPro.ActivePage := pcPag4;
end;

procedure TfmManPro.FormShow(Sender: TObject);
begin
  inherited;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg'+
                  ' From GerTra'+
                  ' Where GerTra.CodTra = '+ QuotedStr('EST010701');
          Open;

          if FieldbyName('QtdReg').AsInteger > 0 then nvIte.Permissao := fAcesso('EST010701');
          
     end;
  end;   

  if FileExists('C:\Windows\Emerion.ini') then begin

     nvPro.Permissao := 'NNNNN';

     nvIte.Permissao := 'SSSSS';

     nvQte.Permissao := 'SSSSS';

  end;

  if EstParLanMin.Value <> 'Sim' then begin

     EdPsqDscPro.CharCase := ecUpperCase;

     EdDscPro.CharCase := ecUpperCase;

  end;
  
  if ( EstParFlgAnt.Value <> 'Sim' ) and ( GUsu_Id <> 999 ) then begin

     Label101.Visible := False;

     EdCodAnt.Visible := False;

  end;

  EdCbaQte.Enabled := False;

  if EstParTamCor.Value = 'Sim' then begin

     if EstParLanCba.Value = 'Nao' then begin

        if EstParTipEan.Value = 'Cores' then EdCbaQte.Enabled := True;

     end;
  end;

  if GFlgAce = 'Sim' then begin

     if GEmpLog > 0 then begin

        with GerEmp,SQL do begin

             Close;
             Text := ' Select CodEmp,NomEmp,FlgFil From GerEmp Where GerEmp.CodEmp = :CodEmp';

             with Params do begin

                  Params[0].AsInteger := GEmpLog;
                  
             end;

             Open;

        end;

        with EstIte,SQL do begin

             Close;
             Text := ' Select EstIte.*,'+
                     '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as QtsIte'+
                     ' From EstIte LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)'+
                     ' Where EstIte.CodClp = :CodClp'+
                     '   and EstIte.CodGru = :CodGru'+
                     '   and EstIte.CodSub = :CodSub'+
                     '   and EstIte.CodPro = :CodPro'+
                     '   and EstIte.CodEmp = '+ QuotedStr(IntToStr(GEmpLog)) +
                     ' Order by EstIte.CodEmp';
             Open;

        end;

        end
     else
        begin

        with GerEmp,SQL do begin

             Close;
             Text := ' Select CodEmp,NomEmp,FlgFil From GerEmp Where GerEmp.ExiEst = '+ QuotedStr('Nao');
             Open;

        end;

        with EstIte,SQL do begin

             Close;
             Text := ' Select EstIte.*,'+
                     '        Round(EstIte.QtdIte - (EstIte.QtrIte + EstIte.QtdRma),4) as QtsIte'+
                     ' From EstIte LEFT JOIN GerEmp ON (EstIte.CodEmp = GerEmp.CodEmp)'+
                     ' Where EstIte.CodClp = :CodClp'+
                     '   and EstIte.CodGru = :CodGru'+
                     '   and EstIte.CodSub = :CodSub'+
                     '   and EstIte.CodPro = :CodPro'+
                     '   and GerEmp.ExiEst = '+ QuotedStr('Nao') +
                     ' Order by EstIte.CodEmp';
             Open;

        end;
     end;
  end;

  if Trim( EstParFlgTab.Value ) <> '' then begin

     if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then Label34.Font.Color  := clRed;
     if Trim(EstParFlgTab.Value) = 'Custo Historico'        then Label35.Font.Color  := clRed;
     if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then Label14.Font.Color  := clRed;
     if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then Label36.Font.Color  := clRed;
     if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then Label129.Font.Color := clRed;
     if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then Label37.Font.Color  := clRed;
     if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then Label30.Font.Color  := clRed;
     if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then Label100.Font.Color := clRed;
     if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then Label75.Font.Color  := clRed;

  end;
  
  pcPro.ActivePage := pcPag1;

end;

procedure TfmManPro.pcPag5Show(Sender: TObject);
begin
  inherited;

  EstSub.Close;
  EstSub.Params[0].AsString := EstProCodGru.Value;
  EstSub.Open;

  if pcPag5.Enabled then begin

     if EdCodCor.Enabled then
        EdCodCor.Setfocus
     else
        begin

        if EdQtmQte.Enabled then EdQtmQte.SetFocus;

     end;
  end;
end;

procedure TfmManPro.DsIteDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if GerEmp.Params[0].AsInteger <> EstIteCodEmp.Value then begin

     GerEmp.Close;
     GerEmp.Params[0].AsInteger := EstIteCodEmp.Value;
     GerEmp.Open;

  end;

  if GerEmpFlgFil.Value = 'Sim' then begin

     if EdVb1Ite.Enabled then begin

        EdVb1Ite.Enabled := False;
        EdVb2Ite.Enabled := False;
        EdVb3Ite.Enabled := False;
        EdVb4Ite.Enabled := False;
        EdVb5Ite.Enabled := False;
        EdMk1Ite.Enabled := False;
        EdMk2Ite.Enabled := False;
        EdMk3Ite.Enabled := False;
        EdMk4Ite.Enabled := False;
        EdMk5Ite.Enabled := False;
        EdMs1Ite.Enabled := False;
        EdMs2Ite.Enabled := False;
        EdMs3Ite.Enabled := False;
        EdMs4Ite.Enabled := False;
        EdMs5Ite.Enabled := False;
        EdCodCm1.Enabled := False;
        EdCodCm2.Enabled := False;
        EdCodCm3.Enabled := False;
        EdCodCm4.Enabled := False;
        EdCodCm5.Enabled := False;
        CbNomCm1.Enabled := False;
        CbNomCm2.Enabled := False;
        CbNomCm3.Enabled := False;
        CbNomCm4.Enabled := False;
        CbNomCm5.Enabled := False;
        EdDs1Ite.Enabled := False;
        EdDs2Ite.Enabled := False;
        EdDs3Ite.Enabled := False;
        EdDs4Ite.Enabled := False;
        EdDs5Ite.Enabled := False;

        EdVb1Ite.Font.Style := [fsBold];
        EdVb2Ite.Font.Style := [fsBold];
        EdVb3Ite.Font.Style := [fsBold];
        EdVb4Ite.Font.Style := [fsBold];
        EdVb5Ite.Font.Style := [fsBold];
        EdMk1Ite.Font.Style := [fsBold];
        EdMk2Ite.Font.Style := [fsBold];
        EdMk3Ite.Font.Style := [fsBold];
        EdMk4Ite.Font.Style := [fsBold];
        EdMk5Ite.Font.Style := [fsBold];
        EdMs1Ite.Font.Style := [fsBold];
        EdMs2Ite.Font.Style := [fsBold];
        EdMs3Ite.Font.Style := [fsBold];
        EdMs4Ite.Font.Style := [fsBold];
        EdMs5Ite.Font.Style := [fsBold];
        EdCodCm1.Font.Style := [fsBold];
        EdCodCm2.Font.Style := [fsBold];
        EdCodCm3.Font.Style := [fsBold];
        EdCodCm4.Font.Style := [fsBold];
        EdCodCm5.Font.Style := [fsBold];
        CbNomCm1.Font.Style := [fsBold];
        CbNomCm2.Font.Style := [fsBold];
        CbNomCm3.Font.Style := [fsBold];
        CbNomCm4.Font.Style := [fsBold];
        CbNomCm5.Font.Style := [fsBold];
        EdDs1Ite.Font.Style := [fsBold];
        EdDs2Ite.Font.Style := [fsBold];
        EdDs3Ite.Font.Style := [fsBold];
        EdDs4Ite.Font.Style := [fsBold];
        EdDs5Ite.Font.Style := [fsBold];

     end;

     end
  else
     begin

     if not EdVb1Ite.Enabled then begin

        EdVb1Ite.Enabled := True;
        EdVb2Ite.Enabled := True;
        EdVb3Ite.Enabled := True;
        EdVb4Ite.Enabled := True;
        EdVb5Ite.Enabled := True;
        EdMk1Ite.Enabled := True;
        EdMk2Ite.Enabled := True;
        EdMk3Ite.Enabled := True;
        EdMk4Ite.Enabled := True;
        EdMk5Ite.Enabled := True;
        EdMs1Ite.Enabled := True;
        EdMs2Ite.Enabled := True;
        EdMs3Ite.Enabled := True;
        EdMs4Ite.Enabled := True;
        EdMs5Ite.Enabled := True;
        EdCodCm1.Enabled := True;
        EdCodCm2.Enabled := True;
        EdCodCm3.Enabled := True;
        EdCodCm4.Enabled := True;
        EdCodCm5.Enabled := True;
        CbNomCm1.Enabled := True;
        CbNomCm2.Enabled := True;
        CbNomCm3.Enabled := True;
        CbNomCm4.Enabled := True;
        CbNomCm5.Enabled := True;
        EdDs1Ite.Enabled := True;
        EdDs2Ite.Enabled := True;
        EdDs3Ite.Enabled := True;
        EdDs4Ite.Enabled := True;
        EdDs5Ite.Enabled := True;

        EdVb1Ite.Font.Style := [];
        EdVb2Ite.Font.Style := [];
        EdVb3Ite.Font.Style := [];
        EdVb4Ite.Font.Style := [];
        EdVb5Ite.Font.Style := [];
        EdMk1Ite.Font.Style := [];
        EdMk2Ite.Font.Style := [];
        EdMk3Ite.Font.Style := [];
        EdMk4Ite.Font.Style := [];
        EdMk5Ite.Font.Style := [];
        EdMs1Ite.Font.Style := [];
        EdMs2Ite.Font.Style := [];
        EdMs3Ite.Font.Style := [];
        EdMs4Ite.Font.Style := [];
        EdMs5Ite.Font.Style := [];
        EdCodCm1.Font.Style := [];
        EdCodCm2.Font.Style := [];
        EdCodCm3.Font.Style := [];
        EdCodCm4.Font.Style := [];
        EdCodCm5.Font.Style := [];
        CbNomCm1.Font.Style := [];
        CbNomCm2.Font.Style := [];
        CbNomCm3.Font.Style := [];
        CbNomCm4.Font.Style := [];
        CbNomCm5.Font.Style := [];
        EdDs1Ite.Font.Style := [];
        EdDs2Ite.Font.Style := [];
        EdDs3Ite.Font.Style := [];
        EdDs4Ite.Font.Style := [];
        EdDs5Ite.Font.Style := [];

     end;
  end;

  if not nvIte.Salvar then begin

     if EdCodTam.Enabled then begin

        nvPro.Enabled := True;

        pcPag2.Enabled := True;
        pcPag3.Enabled := True;
        pcPag5.Enabled := True;

        EdCodEmp.Enabled := False;
        CbNomEmp.Enabled := False;

        EdCodEmp.Font.Style := [fsBold];
        CbNomEmp.Font.Style := [fsBold];

     end;

     AntVcrIte := EstIteVcrIte.Value;
     AntVb1Ite := EstIteVb1Ite.Value;
     AntVb2Ite := EstIteVb2Ite.Value;
     AntVb3Ite := EstIteVb3Ite.Value;
     AntVb4Ite := EstIteVb4Ite.Value;
     AntVb5Ite := EstIteVb5Ite.Value;
     AntMk1Ite := EstIteMk1Ite.Value;
     AntMk2Ite := EstIteMk2Ite.Value;
     AntMk3Ite := EstIteMk3Ite.Value;
     AntMk4Ite := EstIteMk4Ite.Value;
     AntMk5Ite := EstIteMk5Ite.Value;
     AntMs1Ite := EstIteMs1Ite.Value;
     AntMs2Ite := EstIteMs2Ite.Value;
     AntMs3Ite := EstIteMs3Ite.Value;
     AntMs4Ite := EstIteMs4Ite.Value;
     AntMs5Ite := EstIteMs5Ite.Value;
     
     if (EstTam.Params[0].AsInteger <> EstIteCodEmp.Value) or
        (EstTam.Params[1].AsString  <> EstIteCodClp.Value) or
        (EstTam.Params[2].AsString  <> EstIteCodGru.Value) or
        (EstTam.Params[3].AsString  <> EstIteCodSub.Value) or
        (EstTam.Params[4].AsString  <> EstIteCodPro.Value) then begin

        EstTam.Close;
        EstTam.Params[0].AsInteger := EstIteCodEmp.Value;
        EstTam.Params[1].AsString  := EstIteCodClp.Value;
        EstTam.Params[2].AsString  := EstIteCodGru.Value;
        EstTam.Params[3].AsString  := EstIteCodSub.Value;
        EstTam.Params[4].AsString  := EstIteCodPro.Value;
        EstTam.Open;

     end;
  end;
end;

procedure TfmManPro.DsTamDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvTam.Salvar then begin

     if EdCodTam.Enabled then begin

        nvPro.Enabled := True;

        pcPag2.Enabled := True;
        pcPag3.Enabled := True;
        pcPag4.Enabled := True;

        EdCodTam.Enabled := False;

        EdCodTam.Font.Style := [fsBold];

     end;

     if (EstQte.Params[0].AsInteger <> EstTamCodEmp.Value) or (EstQte.Params[1].AsString <> EstTamCodClp.Value) or
        (EstQte.Params[2].AsString  <> EstTamCodGru.Value) or (EstQte.Params[3].AsString <> EstTamCodSub.Value) or
        (EstQte.Params[4].AsString  <> EstTamCodPro.Value) or (EstQte.Params[5].AsString <> EstTamCodTam.Value) then begin

        EstQte.Close;
        EstQte.Params[0].AsInteger := EstTamCodEmp.Value;
        EstQte.Params[1].AsString  := EstTamCodClp.Value;
        EstQte.Params[2].AsString  := EstTamCodGru.Value;
        EstQte.Params[3].AsString  := EstTamCodSub.Value;
        EstQte.Params[4].AsString  := EstTamCodPro.Value;
        EstQte.Params[5].AsString  := EstTamCodTam.Value;
        EstQte.Open;

     end;
  end;
end;

procedure TfmManPro.DsQteDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not nvQte.Salvar then begin

     if EdCodCor.Enabled then begin

        nvPro.Enabled := True;

        pcPag2.Enabled := True;
        pcPag3.Enabled := True;
        pcPag4.Enabled := True;

        EdCodCor.Enabled := True;
        CbNomCor.Enabled := True;

        EdCodCor.Font.Style := [];
        CbNomCor.Font.Style := [];
        
     end;
  end;
end;

procedure TfmManPro.EstProAfterCancel(DataSet: TDataSet);
begin
  inherited;
  if Trim( EstProCodPro.Value ) <> '' then begin

     pcPag4.Enabled := True;
     pcPag5.Enabled := True;

     end
  else
     begin

     pcPag4.Enabled := False;
     pcPag5.Enabled := False;

  end;
end;

procedure TfmManPro.EstProBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  pcPag4.Enabled := False;
  pcPag5.Enabled := False;

end;

procedure TfmManPro.EstIteAfterCancel(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := True;

  pcPag2.Enabled := True;
  pcPag3.Enabled := True;
  pcPag5.Enabled := True;

  EdCodEmp.Enabled := False;
  CbNomEmp.Enabled := False;

  EdCodEmp.Font.Style := [fsBold];
  CbNomEmp.Font.Style := [fsBold];

end;

procedure TfmManPro.EstIteBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;
  pcPag5.Enabled := False;

end;

procedure TfmManPro.EstTamAfterCancel(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := True;

  pcPag2.Enabled := True;
  pcPag3.Enabled := True;
  pcPag4.Enabled := True;

end;

procedure TfmManPro.EstTamBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;
  pcPag4.Enabled := False;

end;

procedure TfmManPro.EstQteAfterCancel(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := True;

  pcPag2.Enabled := True;
  pcPag3.Enabled := True;
  pcPag4.Enabled := True;

end;

procedure TfmManPro.EstQteBeforeEdit(DataSet: TDataSet);
begin
  inherited;

  nvPro.Enabled := False;

  pcPag2.Enabled := False;
  pcPag3.Enabled := False;
  PcPag4.Enabled := False;

end;

procedure TfmManPro.EdPsqCodClpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPro.CbNomCorExit(Sender: TObject);
begin
  inherited;
  if EdCodCor.Enabled then EdCodCor.SetFocus;
end;

procedure TfmManPro.CbNomStsExit(Sender: TObject);
begin
  inherited;
  EdCodSts.SetFocus;
end;

procedure TfmManPro.EdCodStsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'STR';

        fmAuxIni.TipStr := 'Saida';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodStr ) <> '' then begin

           if not nvPro.Salvar then begin

              if Trim( EstProCodClp.Value ) <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProCodSts.Value := fmAuxIni.CodStr;
           EstProTipSts.Value := fmAuxIni.TipStr;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstProCodSts.Value ) <> '' then EdCodSte.SetFocus;

  end;
end;

procedure TfmManPro.FormPaint(Sender: TObject);
begin
  inherited;
  if fmManPri.PopMenu.AutoPopup then fmManPri.PopMenu.AutoPopup := False;
end;

procedure TfmManPro.nvIteBeforeSalva(Sender: TObject);
begin
  inherited;

  if Trim( EstIteCodCm1.Value ) = '' then EstIteCodCm1.Clear;
  if Trim( EstIteCodCm2.Value ) = '' then EstIteCodCm2.Clear;
  if Trim( EstIteCodCm3.Value ) = '' then EstIteCodCm3.Clear;
  if Trim( EstIteCodCm4.Value ) = '' then EstIteCodCm4.Clear;
  if Trim( EstIteCodCm5.Value ) = '' then EstIteCodCm5.Clear;

end;

procedure TfmManPro.Panel10Exit(Sender: TObject);
var
Operac : string;
begin
  inherited;
  if nvQte.Salvar then begin

     if EstQte.State = dsInsert then Operac := 'dsInsert';

     if EstQteCodEmp.Value > 0 then begin

        nvQte.SBSalvaClick(Sender);

        if not nvQte.Salvar then begin

           if Operac = 'dsInsert' then begin

              if EstParTamCor.Value = 'Sim' then begin

                 nvQte.SBIncluiClick(Sender);

                 EdCodCor.SetFocus;

              end;

              end
           else
              begin

              if EstQteCodEmp.Value > 0 then nvQte.SBSalvaClick(Sender);

              if not EstQte.Eof then EstQte.Next;

              EdQtmQte.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManPro.Panel11Exit(Sender: TObject);
var
Operac : string;
begin
  inherited;
  if nvTam.Salvar then begin

     if EstTam.State = dsInsert then Operac := 'dsInsert';

     if EstTamCodEmp.Value > 0 then begin

        nvTam.SBSalvaClick(Sender);

        if (Operac = 'dsInsert') and (not nvTam.Salvar) then begin

           if EstParFlgTam.Value = 'Sim' then begin

              nvTam.SBIncluiClick(Sender);

              EdCodTam.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManPro.bPsqCatClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Categoria';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCat > 0 then begin

        EdPsqNomCat.Text := fmAuxIni.NomCat;
        EdPsqCodCat.Text := IntToStr( fmAuxIni.CodCat );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodCat.Text ) <> '' then EdPsqCodTip.SetFocus;

end;

procedure TfmManPro.bPsqTipClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );

     fmAuxIni.TipoPesq := 'Tipo';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodTip > 0 then begin

        EdPsqNomTip.Text := fmAuxIni.NomTip;
        EdPsqCodTip.Text := IntToStr( fmAuxIni.CodTip );

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodTip.Text ) <> '' then EdPsqCodMrc.SetFocus;

end;

procedure TfmManPro.bPsqMrcClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
     if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );

     fmAuxIni.TipoPesq := 'Marca';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodMrc > 0 then begin

        EdPsqNomMrc.Text := fmAuxIni.NomMrc;
        EdPsqCodMrc.Text := IntToStr( fmAuxIni.CodMrc );

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if Trim( EdPsqCodMrc.Text ) <> '' then EdPsqCodClp.SetFocus;

end;

procedure TfmManPro.EdPsqCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCat.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCat From EstCat Where CodCat = '+ QuotedStr(EdPsqCodCat.Text);
          Open;

          EdPsqNomCat.Text := FieldByName('NomCat').AsString;

     end;

     end
  else
     EdPsqNomCat.Text := '';
end;

procedure TfmManPro.EdPsqCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodTip.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomTip From EstTip Where CodTip = '+ QuotedStr(EdPsqCodTip.Text);
          Open;

          EdPsqNomTip.Text := FieldByName('NomTip').AsString;

     end;

     end
  else
     EdPsqNomTip.Text := '';
end;

procedure TfmManPro.EdPsqCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodMrc.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomMrc From EstMrc Where CodMrc = '+ QuotedStr(EdPsqCodMrc.Text);
          Open;

          EdPsqNomMrc.Text := FieldByName('NomMrc').AsString;

     end;

     end
  else
     EdPsqNomMrc.Text := '';
end;

procedure TfmManPro.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then begin

     if EstProCodTip.Value > 0 then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg From EstTip Where EstTip.CodTip = :CodTip';

             with Params do begin

                  Params[0].AsInteger := EstProCodTip.Value;

             end;

             Open;

             if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Tipo Informado não Encontrado.',EdCodTip);

        end;
     end;
  end;
end;

procedure TfmManPro.EdCodUneExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then begin

     if Trim( EstProCodUne.Value ) <> '' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg From EstUnd Where EstUnd.CodUnd = :CodUnd';

             with Params do begin

                  Params[0].AsString := EstProCodUne.Value;

             end;

             Open;

             if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Unidade Informada não Encontrada.',EdCodUne);

        end;
     end;
  end;
end;

procedure TfmManPro.EdCodUnsExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then begin

     if Trim( EstProCodUns.Value ) <> '' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg From EstUnd'+
                     ' Where CodUnd = :CodUnd';

             with Params do begin

                  Params[0].AsString := EstProCodUns.Value;

             end;

             Open;

             if FieldbyName('Reg').AsInteger = 0 then fmsgErro('Unidade Informada não Encontrada.',EdCodUns);

        end;
     end;
  end;
end;

procedure TfmManPro.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then begin

     if EstProCodMrc.Value > 0 then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg From EstMrc Where EstMrc.CodMrc = :CodMrc';

             with Params do begin

                  Params[0].AsInteger := EstProCodMrc.Value;

             end;

             Open;

             if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Marca Informada não Encontrada.',EdCodMrc);

        end;
     end;
  end;
end;

procedure TfmManPro.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then begin

     if EstProCodCat.Value > 0 then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg From EstCat Where EstCat.CodCat = :CodCat';

             with Params do begin

                  Params[0].AsInteger := EstProCodCat.Value;

             end;

             Open;

             if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Categoria Informada não Encontrada.',EdCodCat);

        end;
     end;
  end;
end;

procedure TfmManPro.EdMk1IteExit(Sender: TObject);
var
  ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if EstIteMk1Ite.Value <> AntMk1Ite then begin

        AntMk1Ite := EstIteMk1Ite.Value;

        ValorBase := 0;

        if Trim( EstParFlgTab.Value ) <> '' then begin

           if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
           if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
           if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

           if ValorBase > 0 then begin

              if EstIteMk1Ite.Value > 0 then
                 EstIteVb1Ite.Value := fRound(ValorBase + ((ValorBase * EstIteMk1Ite.Value)/100),4)
              else
                 begin

                 if EstParAtuVcr.Value = 'Nao' then EstIteVb1Ite.Value := ValorBase;

              end;
           end;

           if Trim( EstParATUMSU.Value ) = 'Sim' then begin

              if EstIteVcrIte.Value > 0 then
                 EstIteMs1Ite.Value := fRound((EstIteVb1Ite.Value/EstIteVcrIte.Value),2)
              else
                 EstIteMs1Ite.Value := 0;

              AntMs1Ite := EstIteMs1Ite.Value;

              end
           else
              begin

              if Trim( EstParATUVCR.Value ) = 'Sim' then begin

                 if EstIteMk1Ite.Value > 0 then
                    EstIteVb1Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk1Ite.Value)/100),4)
                 else
                    EstIteVb1Ite.Value := 0;

              end;
           end;
        end;

        AntVb1Ite := EstIteVb1Ite.Value;

     end;
  end;
end;

procedure TfmManPro.EdMk2IteExit(Sender: TObject);
var
  ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if EstIteMk2Ite.Value <> AntMk2Ite then begin

        AntMk2Ite := EstIteMk2Ite.Value;

        ValorBase := 0;

        if Trim( EstParFlgTab.Value ) <> '' then begin

           if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
           if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
           if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

           if ValorBase > 0 then begin

              if EstIteMk2Ite.Value > 0 then
                 EstIteVb2Ite.Value := fRound(ValorBase + ((ValorBase * EstIteMk2Ite.Value)/100),4)
              else
                 begin

                 if EstParAtuVcr.Value = 'Nao' then EstIteVb2Ite.Value := ValorBase;

              end;
           end;
           
           if Trim( EstParATUMSU.Value ) = 'Sim' then begin

              if EstIteVcrIte.Value > 0 then
                 EstIteMs2Ite.Value := fRound((EstIteVb2Ite.Value/EstIteVcrIte.Value),2)
              else
                 EstIteMs2Ite.Value := 0;

              AntMs2Ite := EstIteMs2Ite.Value;

              end
           else
              begin

              if Trim( EstParATUVCR.Value ) = 'Sim' then begin

                 if EstIteMk2Ite.Value > 0 then
                    EstIteVb2Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk2Ite.Value)/100),4)
                 else
                    EstIteVb2Ite.Value := 0;

              end;
           end;
        end;

        AntVb2Ite := EstIteVb2Ite.Value;
        
     end;
  end;
end;

procedure TfmManPro.EdMk3IteExit(Sender: TObject);
var
  ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if EstIteMk3Ite.Value <> AntMk3Ite then begin

        AntMk3Ite := EstIteMk3Ite.Value;

        ValorBase := 0;

        if Trim( EstParFlgTab.Value ) <> '' then begin

           if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
           if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
           if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

           if ValorBase > 0 then begin

              if EstIteMk3Ite.Value > 0 then
                 EstIteVb3Ite.Value := fRound(ValorBase + ((ValorBase * EstIteMk3Ite.Value)/100),4)
              else
                 begin

                 if EstParAtuVcr.Value = 'Nao' then EstIteVb3Ite.Value := ValorBase;
                 
              end;
           end;
           
           if Trim( EstParATUMSU.Value ) = 'Sim' then begin

              if EstIteVcrIte.Value > 0 then
                 EstIteMs3Ite.Value := fRound((EstIteVb3Ite.Value/EstIteVcrIte.Value),2)
              else
                 EstIteMs3Ite.Value := 0;

              AntMs3Ite := EstIteMs3Ite.Value;

              end
           else
              begin

              if Trim( EstParATUVCR.Value ) = 'Sim' then begin

                 if EstIteMk3Ite.Value > 0 then
                    EstIteVb3Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk3Ite.Value)/100),4)
                 else
                    EstIteVb3Ite.Value := 0;

              end;
           end;
        end;

        AntVb3Ite := EstIteVb3Ite.Value;
        
     end;
  end;
end;

procedure TfmManPro.EdMk4IteExit(Sender: TObject);
var
ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if EstIteMk4Ite.Value <> AntMk4Ite then begin

        AntMk4Ite := EstIteMk4Ite.Value;

        ValorBase := 0;

        if Trim( EstParFlgTab.Value ) <> '' then begin

           if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
           if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
           if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

           if ValorBase > 0 then begin

              if EstIteMk4Ite.Value > 0 then
                 EstIteVb4Ite.Value := fRound(ValorBase + ((ValorBase * EstIteMk4Ite.Value)/100),4)
              else
                 begin

                 if EstParAtuVcr.Value = 'Nao' then EstIteVb4Ite.Value := ValorBase;

              end;
           end;
           
           if Trim( EstParATUMSU.Value ) = 'Sim' then begin

              if EstIteVcrIte.Value > 0 then
                 EstIteMs4Ite.Value := fRound((EstIteVb4Ite.Value/EstIteVcrIte.Value),2)
              else
                 EstIteMs4Ite.Value := 0;

              AntMs4Ite := EstIteMs4Ite.Value;

              end
           else
              begin

              if Trim( EstParATUVCR.Value ) = 'Sim' then begin

                 if EstIteMk4Ite.Value > 0 then
                    EstIteVb4Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk4Ite.Value)/100),4)
                 else
                    EstIteVb4Ite.Value := 0;

              end;
           end;
        end;

        AntVb4Ite := EstIteVb4Ite.Value;
        
     end;
  end;
end;

procedure TfmManPro.EdMk5IteExit(Sender: TObject);
var
ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if EstIteMk5Ite.Value <> AntMk5Ite then begin

        AntMk5Ite := EstIteMk5Ite.Value;

        ValorBase := 0;

        if Trim( EstParFlgTab.Value ) <> '' then begin

           if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
           if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
           if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
           if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

           if ValorBase > 0 then begin

              if EstIteMk5Ite.Value > 0 then
                 EstIteVb5Ite.Value := fRound(ValorBase + ((ValorBase * EstIteMk5Ite.Value)/100),4)
              else
                 begin

                 if EstParAtuVcr.Value = 'Nao' then EstIteVb5Ite.Value := ValorBase;

              end;
           end;
           
           if Trim( EstParATUMSU.Value ) = 'Sim' then begin

              if EstIteVcrIte.Value > 0 then
                 EstIteMs5Ite.Value := fRound((EstIteVb5Ite.Value/EstIteVcrIte.Value),2)
              else
                 EstIteMs5Ite.Value := 0;

              AntMs5Ite := EstIteMs5Ite.Value;

              end
           else
              begin

              if Trim( EstParATUVCR.Value ) = 'Sim' then begin

                 if EstIteMk5Ite.Value > 0 then
                    EstIteVb5Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk5Ite.Value)/100),4)
                 else
                    EstIteVb5Ite.Value := 0;

              end;
           end;
        end;

        AntVb5Ite := EstIteVb5Ite.Value;
        
     end;
  end;
end;

procedure TfmManPro.EdVb1IteExit(Sender: TObject);
var
ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if EstIteVb1Ite.Value <> AntVb1Ite then begin

        AntVb1Ite := EstIteVb1Ite.Value;

        if EstIteVb1Ite.Value > 0 then begin
        
           if Trim( EstParATUMSU.Value ) = 'Sim' then begin

              if EstIteVcrIte.Value > 0 then
                 EstIteMs1Ite.Value := fRound((EstIteVb1Ite.Value/EstIteVcrIte.Value),2)
              else
                 EstIteMs1Ite.Value := 0;

              AntMs1Ite := EstIteMs1Ite.Value;

           end;
        
           ValorBase := 0;

           if Trim( EstParFlgTab.Value ) <> '' then begin

              if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
              if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
              if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

              if ValorBase > 0 then
                 EstIteMk1Ite.Value := fRound(((EstIteVb1Ite.Value - ValorBase) * 100)/ValorBase,2)
              else
                 EstIteMk1Ite.Value := 0;

              end
           else
              EstIteMk1Ite.Value := 0;

           end
        else
           EstIteMk1Ite.Value := 0;
           
        AntMk1Ite := EstIteMk1Ite.Value;

     end;
  end;
end;

procedure TfmManPro.EdVb2IteExit(Sender: TObject);
var
ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if EstIteVb2Ite.Value <> AntVb2Ite then begin

        AntVb2Ite := EstIteVb2Ite.Value;

        if EstIteVb2Ite.Value > 0 then begin
        
           if Trim( EstParATUMSU.Value ) = 'Sim' then begin

              if EstIteVcrIte.Value > 0 then
                 EstIteMs2Ite.Value := fRound((EstIteVb2Ite.Value/EstIteVcrIte.Value),2)
              else
                 EstIteMs2Ite.Value := 0;

              AntMs2Ite := EstIteMs2Ite.Value;

           end;

           ValorBase := 0;

           if Trim( EstParFlgTab.Value ) <> '' then begin

              if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
              if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
              if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

              if ValorBase > 0 then
                 EstIteMk2Ite.Value := fRound(((EstIteVb2Ite.Value - ValorBase) * 100)/ValorBase,2)
              else
                 EstIteMk2Ite.Value := 0;
              
              end
           else
              EstIteMk2Ite.Value := 0;

           end
        else
           EstIteMk2Ite.Value := 0;
           
        AntMk2Ite := EstIteMk2Ite.Value;

     end;
  end;
end;

procedure TfmManPro.EdVb3IteExit(Sender: TObject);
var
ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if EstIteVb3Ite.Value <> AntVb3Ite then begin

        AntVb3Ite := EstIteVb3Ite.Value;

        if EstIteVb3Ite.Value > 0 then begin
        
           if Trim( EstParATUMSU.Value ) = 'Sim' then begin

              if EstIteVcrIte.Value > 0 then
                 EstIteMs3Ite.Value := fRound((EstIteVb3Ite.Value/EstIteVcrIte.Value),2)
              else
                 EstIteMs3Ite.Value := 0;

              AntMs3Ite := EstIteMs3Ite.Value;

           end;

           ValorBase := 0;

           if Trim( EstParFlgTab.Value ) <> '' then begin

              if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
              if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
              if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

              if ValorBase > 0 then
                 EstIteMk3Ite.Value := fRound(((EstIteVb3Ite.Value - ValorBase) * 100)/ValorBase,2)
              else
                 EstIteMk3Ite.Value := 0;

              end
           else
              EstIteMk3Ite.Value := 0;

           end
        else
           EstIteMk3Ite.Value := 0;
           
        AntMk3Ite := EstIteMk3Ite.Value;

     end;
  end;
end;

procedure TfmManPro.EdVb4IteExit(Sender: TObject);
var
ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if EstIteVb4Ite.Value <> AntVb4Ite then begin

        AntVb4Ite := EstIteVb4Ite.Value;

        if EstIteVb4Ite.Value > 0 then begin
        
           if Trim( EstParATUMSU.Value ) = 'Sim' then begin

              if EstIteVcrIte.Value > 0 then
                 EstIteMs4Ite.Value := fRound((EstIteVb4Ite.Value/EstIteVcrIte.Value),2)
              else
                 EstIteMs4Ite.Value := 0;

              AntMs4Ite := EstIteMs4Ite.Value;

           end;

           ValorBase := 0;

           if Trim( EstParFlgTab.Value ) <> '' then begin

              if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
              if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
              if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

              if ValorBase > 0 then
                 EstIteMk4Ite.Value := fRound(((EstIteVb4Ite.Value - ValorBase) * 100)/ValorBase,2)
              else
                 EstIteMk4Ite.Value := 0;

              end
           else
              EstIteMk4Ite.Value := 0;

           end
        else
           EstIteMk4Ite.Value := 0;
           
        AntMk4Ite := EstIteMk4Ite.Value;

     end;
  end;
end;

procedure TfmManPro.EdVb5IteExit(Sender: TObject);
var
ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if EstIteVb5Ite.Value <> AntVb5Ite then begin

        AntVb5Ite := EstIteVb5Ite.Value;

        if EstIteVb5Ite.Value > 0 then begin
        
           if Trim( EstParATUMSU.Value ) = 'Sim' then begin

              if EstIteVcrIte.Value > 0 then
                 EstIteMs5Ite.Value := fRound((EstIteVb5Ite.Value/EstIteVcrIte.Value),2)
              else
                 EstIteMs5Ite.Value := 0;

              AntMs5Ite := EstIteMs5Ite.Value;

           end;

           ValorBase := 0;

           if Trim( EstParFlgTab.Value ) <> '' then begin

              if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
              if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
              if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

              if ValorBase > 0 then
                 EstIteMk5Ite.Value := fRound(((EstIteVb5Ite.Value - ValorBase) * 100)/ValorBase,2)
              else
                 EstIteMk5Ite.Value := 0;

              end
           else
              EstIteMk5Ite.Value := 0;

           end
        else
           EstIteMk5Ite.Value := 0;
           
        AntMk5Ite := EstIteMk5Ite.Value;

     end;
  end;
end;

procedure TfmManPro.EdCodCm5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key = 13) or (key = 40) then begin

     if nvIte.Salvar then begin

        if EstIteCodEmp.Value > 0 then nvIte.SBSalvaClick(Sender);

     end;
  end;
end;

procedure TfmManPro.nvProAtualizar(Sender: TObject);
begin
  inherited;
  if Trim( EstParFlgTab.Value ) <> '' then begin

     if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then Label34.Font.Color := clRed else Label34.Font.Color := clBlack;
     if Trim(EstParFlgTab.Value) = 'Custo Historico'        then Label35.Font.Color := clRed else Label35.Font.Color := clBlack;
     if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then Label14.Font.Color := clRed else Label14.Font.Color := clBlack;
     if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then Label36.Font.Color := clRed else Label36.Font.Color := clBlack;
     if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then Label129.Font.Color := clRed else Label129.Font.Color := clBlack;
     if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then Label37.Font.Color := clRed else Label37.Font.Color := clBlack;
     if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then Label30.Font.Color := clRed else Label30.Font.Color := clBlack;
     if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then Label100.Font.Color := clRed else Label100.Font.Color := clBlack;
     if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then Label75.Font.Color := clRed  else Label75.Font.Color := clBlack;

  end;

  if ( EstParFlgAnt.Value <> 'Sim' ) and ( GUsu_Id <> 999 ) then begin

     Label101.Visible := False;

     EdCodAnt.Visible := False;

  end;

  EdCbaQte.Enabled := False;

  if EstParTamCor.Value = 'Sim' then begin

     if EstParLanCba.Value = 'Nao' then begin

        if EstParTipEan.Value = 'Cores' then EdCbaQte.Enabled := True;

     end;
  end;
end;

procedure TfmManPro.EdPsqCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then begin

           EdPsqCodClp.Text := fmPsqClp.CodClp;
           EdPsqNomClp.Text := fmPsqClp.NomClp;

        end;

     finally   

        FreeAndNil(fmPsqClp);

     end;

     if Trim( EdPsqCodClp.Text ) <> '' then EdPsqCodGru.SetFocus;

  end;
end;

procedure TfmManPro.EdPsqCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdPsqCodClp.Text;

        if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
        if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );
        if Trim( EdPsqCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdPsqCodMrc.Text );

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

        if Trim( EdPsqCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdPsqCodCat.Text );
        if Trim( EdPsqCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdPsqCodTip.Text );
        if Trim( EdPsqCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdPsqCodMrc.Text );

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

procedure TfmManPro.EdPsqCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := EdPsqCodClp.Text;
        fmAuxIni.CodGru := EdPsqCodGru.Text;

        if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
        if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );
        if Trim( EdPsqCodMrc.Text ) <> '' then fmAuxIni.CodMrc := StrToInt( EdPsqCodMrc.Text );

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

        if Trim( EdPsqCodCat.Text ) <> '' then fmAuxPsq.CodCat := StrToInt( EdPsqCodCat.Text );
        if Trim( EdPsqCodTip.Text ) <> '' then fmAuxPsq.CodTip := StrToInt( EdPsqCodTip.Text );
        if Trim( EdPsqCodMrc.Text ) <> '' then fmAuxPsq.CodMrc := StrToInt( EdPsqCodMrc.Text );

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

procedure TfmManPro.EdPsqCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Categoria';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCat > 0 then begin

           EdPsqNomCat.Text := fmAuxIni.NomCat;
           EdPsqCodCat.Text := IntToStr( fmAuxIni.CodCat );

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodCat.Text ) <> '' then EdPsqCodTip.SetFocus;

  end;
end;

procedure TfmManPro.EdPsqCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );

        fmAuxIni.TipoPesq := 'Tipo';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodTip > 0 then begin

           EdPsqNomTip.Text := fmAuxIni.NomTip;
           EdPsqCodTip.Text := IntToStr( fmAuxIni.CodTip );

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodTip.Text ) <> '' then EdPsqCodMrc.SetFocus;

  end;
end;

procedure TfmManPro.EdPsqCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( EdPsqCodCat.Text ) <> '' then fmAuxIni.CodCat := StrToInt( EdPsqCodCat.Text );
        if Trim( EdPsqCodTip.Text ) <> '' then fmAuxIni.CodTip := StrToInt( EdPsqCodTip.Text );

        fmAuxIni.TipoPesq := 'Marca';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodMrc > 0 then begin

           EdPsqNomMrc.Text := fmAuxIni.NomMrc;
           EdPsqCodMrc.Text := IntToStr( fmAuxIni.CodMrc );

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EdPsqCodMrc.Text ) <> '' then EdPsqCodClp.SetFocus;

  end;   
end;

procedure TfmManPro.EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Tipo2';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodTip > 0 then begin

           if not nvPro.Salvar then begin

              if Trim( EstProCodClp.Value ) <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProCodTip.Value := fmAuxIni.CodTip;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if EstProCodTip.Value > 0 then
        EdIdePro.SetFocus
     else
        EdCodTip.SetFocus;

  end;
end;

procedure TfmManPro.EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Marca2';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodMrc > 0 then begin

           if not nvPro.Salvar then begin

              if Trim( EstProCodClp.Value ) <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProCodMrc.Value := fmAuxIni.CodMrc;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if EstProCodMrc.Value > 0 then
        EdCodCat.SetFocus
     else
        EdCodMrc.SetFocus;

  end;
end;

procedure TfmManPro.EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Categoria';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCat > 0 then begin

           if not nvPro.Salvar then begin

              if Trim( EstProCodClp.Value ) <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProCodCat.Value := fmAuxIni.CodCat;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if EstProCodCat.Value > 0 then
        EdIcmSai.SetFocus
     else
        EdCodCat.SetFocus;

  end;
end;

procedure TfmManPro.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Grupo';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then EstProCodGru.Value := fmAuxIni.CodGru;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstProCodGru.Value ) <> '' then
        EdCodSub.SetFocus
     else
        EdCodGru.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Grupo';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then EstProCodGru.Value := fmAuxPsq.CodGru;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EstProCodGru.Value ) <> '' then
        EdCodSub.SetFocus
     else
        EdCodGru.SetFocus;

  end;
end;

procedure TfmManPro.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'SubGrupo';

        fmAuxIni.CodGru := EstProCodGru.Value;

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           EstProCodGru.Value := fmAuxIni.CodGru;
           EstProCodSub.Value := fmAuxIni.CodSub;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstProCodSub.Value ) <> '' then
        EdCodPro.SetFocus
     else
        EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'SubGrupo';

        fmAuxPsq.CodGru := EstProCodGru.Value;

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           EstProCodGru.Value := fmAuxPsq.CodGru;
           EstProCodSub.Value := fmAuxPsq.CodSub;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( EstProCodSub.Value ) <> '' then
        EdCodPro.SetFocus
     else
        EdCodSub.SetFocus;

  end;
end;

procedure TfmManPro.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'classificacao';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodClp ) <> '' then EstProCodClp.Value := fmAuxIni.CodClp;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstProCodClp.Value ) <> '' then
        EdCodGru.SetFocus
     else
        EdCodClp.SetFocus;

  end;
end;

procedure TfmManPro.EdCodUneKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Unidade';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodUnd ) <> '' then begin

           if not nvPro.Salvar then begin

             if Trim( EstProCodClp.Value ) <> '' then
                EstPro.Edit
             else
                EstPro.Insert;

           end;

           EstProCodUne.Value := fmAuxIni.CodUnd;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstProCodUne.Value ) <> '' then
        EdQtePro.SetFocus
     else
        EdCodUne.SetFocus;

  end;
end;

procedure TfmManPro.EdCodUnsKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Unidade';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodUnd ) <> '' then begin

           if not nvPro.Salvar then begin

              if Trim( EstProCodClp.Value ) <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProCodUns.Value := fmAuxIni.CodUnd;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstProCodUns.Value ) <> '' then
        EdQtsPro.SetFocus
     else
        EdCodUns.SetFocus;

  end;
end;

procedure TfmManPro.EdIcmSaiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'ICMS';

        fmAuxIni.TipIcm := 'Saida';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodIcm ) <> '' then begin

           if not nvPro.Salvar then begin

              if Trim( EstProCodClp.Value ) <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProIcmSai.Value := fmAuxIni.CodIcm;
           EstProIcmTsd.Value := fmAuxIni.TipIcm;
           EstProSaiIcm.Value := fmAuxIni.PerIcm;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstProIcmSai.Value ) <> '' then EdIcmEnt.SetFocus;

  end;
end;

procedure TfmManPro.EdIcmEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'ICMS';

        fmAuxIni.TipIcm := 'Entrada';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodIcm ) <> '' then begin

           if not nvPro.Salvar then begin

              if Trim( EstProCodClp.Value ) <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProIcmEnt.Value := fmAuxIni.CodIcm;
           EstProIcmTen.Value := fmAuxIni.TipIcm;
           EstProEntIcm.Value := fmAuxIni.PerIcm;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstProIcmEnt.Value ) <> '' then EdIpiSai.SetFocus;

  end;
end;

procedure TfmManPro.EdIpiSaiKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'IPI';

        fmAuxIni.TipIpi := 'Saida';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodIpi ) <> '' then begin

           if not nvPro.Salvar then begin

              if Trim( EstProCodClp.Value ) <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProIpiSai.Value := fmAuxIni.CodIpi;
           EstProIpiTsd.Value := fmAuxIni.TipIpi;
           EstProSaiIpi.Value := fmAuxIni.PerIpi;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstProIpiSai.Value ) <> '' then EdIpiEnt.SetFocus;

  end;
end;

procedure TfmManPro.EdIpiEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'IPI';

        fmAuxIni.TipIpi := 'Entrada';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodIpi ) <> '' then begin

           if not nvPro.Salvar then begin

              if Trim( EstProCodClp.Value ) <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProIpiEnt.Value := fmAuxIni.CodIpi;
           EstProIpiTen.Value := fmAuxIni.TipIpi;
           EstProEntIpi.Value := fmAuxIni.PerIpi;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( EstProIpiEnt.Value ) <> '' then EdCodSts.SetFocus;

  end;
end;

procedure TfmManPro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPro.ClassificaoFiscal1Click(Sender: TObject);
begin
  inherited;

  try

     fmConClf := TfmConClf.Create(Self);

     fmConClf.ShowModal;

  finally

     FreeAndNil(fmConClf);

  end;
end;

procedure TfmManPro.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPro := nil;
end;

procedure TfmManPro.BtnCodigosClick(Sender: TObject);
begin
  inherited;
  if EstPro.State = dsBrowse then begin

     try

        fmManBar := TfmManBar.Create(Self);

        fmManBar.CodClp := EstProCodClp.Value;
        fmManBar.CodGru := EstProCodGru.Value;
        fmManBar.CodSub := EstProCodSub.Value;
        fmManBar.CodPro := EstProCodPro.Value;

        fmManBar.EstBar.Close;
        fmManBar.EstBar.Params[0].AsString := EstProCodClp.Value;
        fmManBar.EstBar.Params[1].AsString := EstProCodGru.Value;
        fmManBar.EstBar.Params[2].AsString := EstProCodSub.Value;
        fmManBar.EstBar.Params[3].AsString := EstProCodPro.Value;
        fmManBar.EstBar.Open;

        fmManBar.ShowModal;

     finally

        FreeAndNil(fmManBar);

     end;

     end
  else
     fmsgErro('Existem Informações não Confirmadas para o Item.',Nil);

end;

procedure TfmManPro.PartNumber1Click(Sender: TObject);
begin
  inherited;

  try

     fmConPar := TfmConPar.Create(Self);

     fmConPar.ShowModal;

  finally

     FreeAndNil(fmConPar);

  end;
end;

procedure TfmManPro.EdMs1IteExit(Sender: TObject);
var
  ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if Trim( EstParATUMSU.Value ) = 'Sim' then begin

        if EstIteMs1Ite.Value <> AntMs1Ite then begin

           AntMs1Ite := EstIteMs1Ite.Value;

           if EstIteVcrIte.Value > 0 then begin

              if EstIteMs1Ite.Value > 0 then
                 EstIteVb1Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs1Ite.Value)/100),4)
              else
                 EstIteVb1Ite.Value := EstIteVcrIte.Value;

           end;

           AntVb1Ite := EstIteVb1Ite.Value;

           ValorBase := 0;

           if Trim( EstParFlgTab.Value ) <> '' then begin

              if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
              if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
              if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

              if ValorBase > 0 then
                 EstIteMk1Ite.Value := fRound(((EstIteVb1Ite.Value - ValorBase) * 100)/ValorBase,2)
              else
                 EstIteMk1Ite.Value := 0;

              end
           else
              EstIteMk1Ite.Value := 0;

           AntMk1Ite := EstIteMk1Ite.Value;

        end;    
     end;
  end;
end;

procedure TfmManPro.EdMs2IteExit(Sender: TObject);
var
  ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if Trim( EstParATUMSU.Value ) = 'Sim' then begin

        if EstIteMs2Ite.Value <> AntMs2Ite then begin

           AntMs2Ite := EstIteMs2Ite.Value;

           if EstIteVcrIte.Value > 0 then begin

              if EstIteMs2Ite.Value > 0 then
                 EstIteVb2Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs2Ite.Value)/100),4)
              else
                 EstIteVb2Ite.Value := EstIteVcrIte.Value;

           end;

           AntVb2Ite := EstIteVb2Ite.Value;

           ValorBase := 0;

           if Trim( EstParFlgTab.Value ) <> '' then begin

              if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
              if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
              if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

              if ValorBase > 0 then
                 EstIteMk2Ite.Value := fRound(((EstIteVb2Ite.Value - ValorBase) * 100)/ValorBase,2)
              else
                 EstIteMk2Ite.Value := 0;
              
              end
           else
              EstIteMk2Ite.Value := 0;

           AntMk2Ite := EstIteMk2Ite.Value;

        end;   
     end;
  end;
end;

procedure TfmManPro.EdMs3IteExit(Sender: TObject);
var
  ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if Trim( EstParATUMSU.Value ) = 'Sim' then begin

        if EstIteMs3Ite.Value <> AntMs3Ite then begin

           AntMs3Ite := EstIteMs3Ite.Value;

           if EstIteVcrIte.Value > 0 then begin

              if EstIteMs3Ite.Value > 0 then
                 EstIteVb3Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs3Ite.Value)/100),4)
              else
                 EstIteVb3Ite.Value := EstIteVcrIte.Value;

           end;

           AntVb3Ite := EstIteVb3Ite.Value;

           ValorBase := 0;

           if Trim( EstParFlgTab.Value ) <> '' then begin

              if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
              if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
              if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

              if ValorBase > 0 then
                 EstIteMk3Ite.Value := fRound(((EstIteVb3Ite.Value - ValorBase) * 100)/ValorBase,2)
              else
                 EstIteMk3Ite.Value := 0;

              end
           else
              EstIteMk3Ite.Value := 0;

           AntMk3Ite := EstIteMk3Ite.Value;

        end;   
     end;
  end;
end;

procedure TfmManPro.EdMs4IteExit(Sender: TObject);
var
  ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if Trim( EstParATUMSU.Value ) = 'Sim' then begin

        if EstIteMs4Ite.Value <> AntMs4Ite then begin

           AntMs4Ite := EstIteMs4Ite.Value;

           if EstIteVcrIte.Value > 0 then begin

              if EstIteMs4Ite.Value > 0 then
                 EstIteVb4Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs4Ite.Value)/100),4)
              else
                 EstIteVb4Ite.Value := EstIteVcrIte.Value;

           end;

           AntVb4Ite := EstIteVb4Ite.Value;

           ValorBase := 0;

           if Trim( EstParFlgTab.Value ) <> '' then begin

              if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
              if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
              if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

              if ValorBase > 0 then
                 EstIteMk4Ite.Value := fRound(((EstIteVb4Ite.Value - ValorBase) * 100)/ValorBase,2)
              else
                 EstIteMk4Ite.Value := 0;

              end
           else
              EstIteMk4Ite.Value := 0;

           AntMk4Ite := EstIteMk4Ite.Value;

        end;   
     end;
  end;
end;

procedure TfmManPro.EdMs5IteExit(Sender: TObject);
var
  ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if Trim( EstParATUMSU.Value ) = 'Sim' then begin

        if EstIteMs5Ite.Value <> AntMs5Ite then begin

           AntMs5Ite := EstIteMs5Ite.Value;

           if EstIteVcrIte.Value > 0 then begin

              if EstIteMs5Ite.Value > 0 then
                 EstIteVb5Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs5Ite.Value)/100),4)
              else
                 EstIteVb5Ite.Value := EstIteVcrIte.Value;

           end;

           AntVb5Ite := EstIteVb5Ite.Value;

           ValorBase := 0;

           if Trim( EstParFlgTab.Value ) <> '' then begin

              if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
              if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
              if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

              if ValorBase > 0 then
                 EstIteMk5Ite.Value := fRound(((EstIteVb5Ite.Value - ValorBase) * 100)/ValorBase,2)
              else
                 EstIteMk5Ite.Value := 0;

              end
           else
              EstIteMk5Ite.Value := 0;

           AntMk5Ite := EstIteMk5Ite.Value;

        end;   
     end;
  end;
end;

procedure TfmManPro.EdVcrIteExit(Sender: TObject);
var
  ValorBase : real;
begin
  inherited;
  if nvIte.Salvar then begin

     if EstIteVcrIte.Value <> AntVcrIte then begin

        AntVcrIte := EstIteVcrIte.Value;

        if Trim( EstParATUMSU.Value ) = 'Sim' then begin

           if EstIteMs1Ite.Value > 0 then
              EstIteVb1Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs1Ite.Value)/100),4);

           if EstIteMs2Ite.Value > 0 then
              EstIteVb2Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs2Ite.Value)/100),4);

           if EstIteMs3Ite.Value > 0 then
              EstIteVb3Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs3Ite.Value)/100),4);

           if EstIteMs4Ite.Value > 0 then
              EstIteVb4Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs4Ite.Value)/100),4);

           if EstIteMs5Ite.Value > 0 then
              EstIteVb5Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMs5Ite.Value)/100),4);

           AntVb1Ite := EstIteVb1Ite.Value;
           AntVb2Ite := EstIteVb2Ite.Value;
           AntVb3Ite := EstIteVb3Ite.Value;
           AntVb4Ite := EstIteVb4Ite.Value;
           AntVb5Ite := EstIteVb5Ite.Value;

           ValorBase := 0;

           if Trim( EstParFlgTab.Value ) <> '' then begin

              if Trim(EstParFlgTab.Value) = 'Ultimo Preco'           then ValorBase := EstIteCstIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico'        then ValorBase := EstIteVchIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado'        then ValorBase := EstIteVreIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Referencial'      then ValorBase := EstIteVcrIte.Value;
              if Trim(EstParFlgTab.Value) = 'Ultimo Custo(CIF)'      then ValorBase := EstIteVpfOut.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Historico (G)'    then ValorBase := EstIteVcpIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo Ponderado (G)'    then ValorBase := EstIteVprIte.Value;
              if Trim(EstParFlgTab.Value) = 'Media Ponderada (E)'    then ValorBase := EstIteVmeIte.Value;
              if Trim(EstParFlgTab.Value) = 'Custo da Ultima Compra' then ValorBase := EstIteVpfIte.Value;

              if ValorBase > 0 then begin

                 EstIteMk1Ite.Value := fRound(((EstIteVb1Ite.Value - ValorBase) * 100)/ValorBase,2);
                 EstIteMk2Ite.Value := fRound(((EstIteVb2Ite.Value - ValorBase) * 100)/ValorBase,2);
                 EstIteMk3Ite.Value := fRound(((EstIteVb3Ite.Value - ValorBase) * 100)/ValorBase,2);
                 EstIteMk4Ite.Value := fRound(((EstIteVb4Ite.Value - ValorBase) * 100)/ValorBase,2);
                 EstIteMk5Ite.Value := fRound(((EstIteVb5Ite.Value - ValorBase) * 100)/ValorBase,2);
                 
                 end
              else
                 begin

                 EstIteMk1Ite.Value := 0;
                 EstIteMk2Ite.Value := 0;
                 EstIteMk3Ite.Value := 0;
                 EstIteMk4Ite.Value := 0;
                 EstIteMk5Ite.Value := 0;

              end;

              end
           else
              begin

              EstIteMk1Ite.Value := 0;
              EstIteMk2Ite.Value := 0;
              EstIteMk3Ite.Value := 0;
              EstIteMk4Ite.Value := 0;
              EstIteMk5Ite.Value := 0;

           end;

           AntMk1Ite := EstIteMk1Ite.Value;
           AntMk2Ite := EstIteMk2Ite.Value;
           AntMk3Ite := EstIteMk3Ite.Value;
           AntMk4Ite := EstIteMk4Ite.Value;
           AntMk5Ite := EstIteMk5Ite.Value;

           end
        else
           begin

           if Trim( EstParATUVCR.Value ) = 'Sim' then begin

              if EstIteMk1Ite.Value > 0 then
                 EstIteVb1Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk1Ite.Value)/100),4);

              if EstIteMk2Ite.Value > 0 then
                 EstIteVb2Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk2Ite.Value)/100),4);

              if EstIteMk3Ite.Value > 0 then
                 EstIteVb3Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk3Ite.Value)/100),4);

              if EstIteMk4Ite.Value > 0 then
                 EstIteVb4Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk4Ite.Value)/100),4);

              if EstIteMk5Ite.Value > 0 then
                 EstIteVb5Ite.Value := fRound(EstIteVcrIte.Value + ((EstIteVcrIte.Value * EstIteMk5Ite.Value)/100),4);

              AntVb1Ite := EstIteVb1Ite.Value;
              AntVb2Ite := EstIteVb2Ite.Value;
              AntVb3Ite := EstIteVb3Ite.Value;
              AntVb4Ite := EstIteVb4Ite.Value;
              AntVb5Ite := EstIteVb5Ite.Value;

           end;
        end;
     end;
  end;
end;

procedure TfmManPro.EdCodSteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'STR';

        fmAuxIni.TipStr := 'Entrada';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodStr ) <> '' then begin

           if not nvPro.Salvar then begin

              if Trim( EstProCodClp.Value ) <> '' then
                 EstPro.Edit
              else
                 EstPro.Insert;

           end;

           EstProCodSte.Value := fmAuxIni.CodStr;
           EstProTipSte.Value := fmAuxIni.TipStr;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdCodSte.SetFocus;

  end;

  if (key = 13) or (key = 40) then pcPro.ActivePage := pcPag3;
  
end;

procedure TfmManPro.EstQteBeforePost(DataSet: TDataSet);
begin
  inherited;

  pCodEmp := EstQteCodEmp.Value;
  pCodClp := EstQteCodClp.Value;
  pCodGru := EstQteCodGru.Value;
  pCodSub := EstQteCodSub.Value;
  pCodPro := EstQteCodPro.Value;
  pCodTam := EstQteCodTam.Value;
  pCodCor := EstQteCodCor.Value;
  
end;

procedure TfmManPro.EdCodStsExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then begin

     if Trim( EstProCodSts.Value ) <> '' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select EstStr.TipStr'+
                     ' From EstStr'+
                     ' Where EstStr.CodStr = '+ QuotedStr(EstProCodSts.Value) +
                     '   and EstStr.TipStr = '+ QuotedStr('Saida') ;
             Open;

             if Trim( FieldbyName('TipStr').AsString ) <> '' then
                EstProTipSts.Value := FieldbyName('TipStr').AsString
             else
                fmsgErro('Regra de Substituição Tributária Informada não Encontrada.',EdCodSts);

        end;
     end;
  end;
end;

procedure TfmManPro.EdCodSteExit(Sender: TObject);
begin
  inherited;
  if nvPro.Salvar then begin

     if Trim( EstProCodSte.Value ) <> '' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select EstStr.TipStr'+
                     ' From EstStr'+
                     ' Where EstStr.CodStr = '+ QuotedStr(EstProCodSte.Value) +
                     '   and EstStr.TipStr = '+ QuotedStr('Entrada') ;
             Open;

             if Trim( FieldbyName('TipStr').AsString ) <> '' then
                EstProTipSte.Value := FieldbyName('TipStr').AsString
             else
                fmsgErro('Regra de Substituição Tributária Informada não Encontrada.',EdCodSte);

        end;
     end;
  end;
end;

procedure TfmManPro.EdCodProEnter(Sender: TObject);
begin
  inherited;
  if EstPro.State = dsInsert then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select CodPro From EstPro '+
                  ' Where EstPro.CodClp = '+ QuotedStr(EstProCodClp.Value)+
                  '   and EstPro.CodGru = '+ QuotedStr(EstProCodGru.Value)+
                  '   and EstPro.CodSub = '+ QuotedStr(EstProCodSub.Value)+
                  ' Order by EstPro.CodPro';
          Open;
          Last;

          if FieldbyName('CodPro').AsString <> '' then
             Label32.Caption := 'Ultimo Item Cadastrado para o Grupo/Sub-Grupo '+quSql.FieldbyName('CodPro').AsString
          else
             Label32.Caption := 'Ultimo Item Cadastrado para o Grupo/Sub-Grupo 00000';

     end;

     end
  else
     Label32.Caption := '';
end;

procedure TfmManPro.EdSimProEnter(Sender: TObject);
begin
  inherited;
  Label32.Caption := 'F2-Código F3-Busca Inteligente F4-Busca Iniciais';
end;

end.
