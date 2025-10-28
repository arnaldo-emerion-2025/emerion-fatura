                                                                 unit ManNge_NFE2;

interface

uses
  Windows, Messages , SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls , StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib , dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxDBColorDateEdit , dxDBColorEdit, clipbrd, DBCtrls, ComCtrls, Comobj,
  DBGrids, dxDBEdtr , dxDBColorLookupEdit, ManGDB, dxColorEdit;

type
  TfmManNge_NFE2 = class(TfmPadrao)
    FatGer: TwwQuery;
    UpGer: TUpdateSQL;
    DsGer: TDataSource;                                                     
    TipFrt: TwwQuery;
    Panel1: TPanel;
    Label29: TLabel;
    EdNumGer: TdxDBColorEdit;
    Label1: TLabel;
    EdCodEmp: TdxDBColorEdit;
    Label2: TLabel;
    EdDteFat: TdxDBColorDateEdit;
    bpsqEmp: TSpeedButton;
    Label23: TLabel;
    EdTipPfa: TdxDBColorPickEdit;
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
    EdCodClp: TdxDBColorEdit;
    EdObsGe2: TdxDBColorEdit;
    EdDesGe2: TdxDBColorEdit;
    FatGerCODEMP: TIntegerField;
    FatGerDTEGER: TDateTimeField;
    FatGerNUMGER: TIntegerField;
    FatGerHREFAT: TStringField;
    FatGerUFEGER: TStringField;
    FatGerCODPFA: TStringField;
    FatGerTIPPFA: TStringField;
    FatGerCODCLI: TIntegerField;
    FatGerCODVEN: TIntegerField;
    FatGerDSCREG: TFloatField;
    FatGerPERPIS: TFloatField;
    FatGerPERCOF: TFloatField;
    FatGerCODFIL: TIntegerField;
    FatGerQTDNFS: TIntegerField;
    FatGerNRONFS: TIntegerField;
    FatGerNROSUF: TStringField;
    FatGerFLGAVI: TStringField;
    FatGerCGCCLI: TStringField;
    FatGerINSCLI: TStringField;
    FatGerCODCF1: TStringField;
    FatGerCODCF2: TStringField;
    FatGerFRTGER: TStringField;
    FatGerFLGENT: TStringField;
    FatGerFLGSAI: TStringField;
    FatGerDESNAT: TStringField;
    FatGerINSSUB: TStringField;
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
    FatGerPRTTRA: TStringField;
    FatGerFONTRA: TStringField;
    FatGerUFEPLC: TStringField;
    FatGerCEPCLI: TStringField;
    FatGerTENCLI: TStringField;
    FatGerENDCLI: TStringField;
    FatGerREFCLI: TStringField;
    FatGerNUMCLI: TStringField;
    FatGerBAICLI: TStringField;
    FatGerCIDCLI: TStringField;
    FatGerUFECLI: TStringField;
    FatGerINECLI: TStringField;
    FatGerCGECLI: TStringField;
    FatGerTXFIPI: TStringField;
    FatGerTXFICM: TStringField;
    FatGerOBSGER: TStringField;
    FatGerSEQITE: TIntegerField;
    FatGerQTIGER: TIntegerField;
    FatGerLINGER: TIntegerField;
    FatGerQTPGER: TIntegerField;
    FatGerSTPGER: TIntegerField;
    FatGerQTDVOL: TIntegerField;
    FatGerALTVOL: TIntegerField;
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
    FatGerBSICMF: TFloatField;
    FatGerBAICMF: TFloatField;
    FatGerTOICMF: TFloatField;
    FatGerICMSEG: TFloatField;
    FatGerBSICMS: TFloatField;
    FatGerBAICMS: TFloatField;
    FatGerTOICMS: TFloatField;
    FatGerICMDES: TFloatField;
    FatGerBSICMD: TFloatField;
    FatGerBAICMD: TFloatField;
    FatGerTOICMD: TFloatField;
    FatGerIPIFRT: TFloatField;
    FatGerBSIPIF: TFloatField;
    FatGerBAIPIF: TFloatField;
    FatGerTOIPIF: TFloatField;
    FatGerIPISEG: TFloatField;
    FatGerBSIPIS: TFloatField;
    FatGerBAIPIS: TFloatField;
    FatGerTOIPIS: TFloatField;
    FatGerIPIDES: TFloatField;
    FatGerBSIPID: TFloatField;
    FatGerBAIPID: TFloatField;
    FatGerTOIPID: TFloatField;
    FatGerTOTGER: TFloatField;
    FatGerLANGER: TFloatField;
    FatGerSLDGER: TFloatField;
    FatGerTOTDSR: TFloatField;
    FatGerBASIP1: TFloatField;
    FatGerTOTIP1: TFloatField;
    FatGerBASIC1: TFloatField;
    FatGerTOTIC1: TFloatField;
    FatGerBASSU1: TFloatField;
    FatGerTOTSU1: TFloatField;
    FatGerTOTIT1: TFloatField;
    FatGerTOTGE1: TFloatField;
    FatGerCODUSU: TIntegerField;
    FatGerHRCGER: TStringField;
    FatGerDTCGER: TDateTimeField;
    FatGerUSCGER: TIntegerField;
    FatGerOBCGER: TMemoField;
    FatGerATUEST: TStringField;
    FatGerLANEST: TStringField;
    FatGerINTFIN: TStringField;
    FatGerCONSUM: TStringField;
    FatGerFLGCTB: TStringField;
    FatGerCODIPI: TStringField;
    FatGerTIPIPI: TStringField;
    FatGerTRBIPI: TStringField;
    FatGerREDIPI: TFloatField;
    FatGerBSCIPI: TFloatField;
    FatGerCODICM: TStringField;
    FatGerTIPICM: TStringField;
    FatGerTRBICM: TStringField;
    FatGerREDICM: TFloatField;
    FatGerBSCICM: TFloatField;
    FatGerINCREV: TFloatField;
    FatGerINCFIN: TFloatField;
    FatGerFLGATU: TStringField;
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
    FatGerSEQGER: TStringField;
    FatGerSITGER: TStringField;
    FatGerNROCOL: TStringField;
    FatGerDTEFAT: TDateTimeField;
    FatGerFLGNFS: TStringField;
    FatGerFLGENV: TStringField;
    FatGerBASISS: TFloatField;
    FatGerTOTISS: TFloatField;
    FatGerBASIS1: TFloatField;
    FatGerTOTIS1: TFloatField;
    FatGerTOTSER: TFloatField;
    FatGerTOTSE1: TFloatField;
    FatGerQTISER: TIntegerField;
    FatGerSEQSER: TIntegerField;
    FatGerFLGSIN: TStringField;
    FatGerFLGIMP: TStringField;
    FatGerNOMENT: TStringField;
    FatGerCODTCL: TIntegerField;
    FatGerTRBPIS: TStringField;
    FatGerTRBCOF: TStringField;
    FatGerID_FATGER: TIntegerField;
    FatGerQTIGE2: TIntegerField;
    FatGerSEQNFE: TStringField;
    FatGerDTENFE: TDateTimeField;
    FatGerMODPFA: TStringField;
    FatGerRECNFE: TStringField;
    FatGerARQNFE: TBlobField;
    FatGerBAFCLI: TStringField;
    FatGerCEFCLI: TStringField;
    FatGerCIFCLI: TStringField;
    FatGerCODTRA: TIntegerField;
    FatGerDOPNFE: TDateTimeField;
    FatGerDTCNFE: TDateTimeField;
    FatGerDTECAN: TDateTimeField;
    FatGerDTECNE: TDateTimeField;
    FatGerDTENPF: TDateTimeField;
    FatGerENFCLI: TStringField;
    FatGerFLGSEG: TStringField;
    FatGerHRCNFE: TStringField;
    FatGerHRECAN: TStringField;
    FatGerHRECNE: TStringField;
    FatGerHRENFE: TStringField;
    FatGerHREPNF: TStringField;
    FatGerID_ESTSIP: TIntegerField;
    FatGerID_FINCIE: TIntegerField;
    FatGerID_FINCIF: TIntegerField;
    FatGerID_FINUFE: TIntegerField;
    FatGerID_FINUFF: TIntegerField;
    FatGerID_TRACIE: TIntegerField;
    FatGerID_TRAUFE: TIntegerField;
    FatGerIMPNFE: TStringField;
    FatGerLOTNFE: TIntegerField;
    FatGerNFECOF: TStringField;
    FatGerNFEPIS: TStringField;
    FatGerNRFCLI: TStringField;
    FatGerNRONOT: TIntegerField;
    FatGerOB1CAN: TStringField;
    FatGerOB1ENT: TStringField;
    FatGerOB1SDA: TStringField;
    FatGerOB2CAN: TStringField;
    FatGerOB2ENT: TStringField;
    FatGerOB2SDA: TStringField;
    FatGerOB3CAN: TStringField;
    FatGerOB3ENT: TStringField;
    FatGerOB3SDA: TStringField;
    FatGerOB4CAN: TStringField;
    FatGerOB4ENT: TStringField;
    FatGerOB4SDA: TStringField;
    FatGerOB5CAN: TStringField;
    FatGerOB5ENT: TStringField;
    FatGerOB5SDA: TStringField;
    FatGerQTDNOT: TIntegerField;
    FatGerQTIGE3: TIntegerField;
    FatGerQTISGE: TIntegerField;
    FatGerRFFCLI: TStringField;
    FatGerSEQFIN: TIntegerField;
    FatGerSEQINI: TIntegerField;
    FatGerSERNOT: TStringField;
    FatGerSERSEL: TStringField;
    FatGerTEFCLI: TStringField;
    FatGerUFECOM: TStringField;
    FatGerUFFCLI: TStringField;
    FatGerUSUCAN: TIntegerField;
    FatGerUSUNFE: TIntegerField;
    FatGerPRONFE: TStringField;
    FatGerDTEPNF: TDateTimeField;
    FatGerRETNFE: TStringField;
    FatGerENVNFE: TStringField;
    FatGerFLGNFE: TStringField;
    FatGerDTECOM: TDateTimeField;
    FatGerRTENFE: TStringField;
    FatGerNFSCOM: TIntegerField;
    FatGerSEQCOM: TStringField;
    FatGerPRCNFE: TStringField;
    FatGerFLGREC: TStringField;
    FatGerFLGAPR: TStringField;
    FatGerFLGQTD: TStringField;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    OpenDialog1: TOpenDialog;
    FatGerNFETH: TSmallintField;
    FatGerARQNFECANC: TBlobField;
    FatGerNFETHCANC: TSmallintField;
    FatGerOBSDES: TStringField;
    FatGerLOCEMB: TStringField;
    FatGerUFEMB: TStringField;
    FatGerID_ESTDIP: TIntegerField;
    FatGerTOTIMPII: TFloatField;
    FatGerSERIENF: TSmallintField;
    FatGerSERIECONTINGENCIA: TSmallintField;
    FatGerNUMCONTINGENCIA: TSmallintField;
    FatGerOB1GER: TStringField;
    FatGerOB2GER: TStringField;
    FatGerOB3GER: TStringField;
    FatGerOB4GER: TStringField;
    FatGerOB5GER: TStringField;
    FatGerOB6GER: TStringField;
    FatGerOB7GER: TStringField;
    FatGerOB8GER: TStringField;
    grGe2: TDBGrid;
    edAliqPis: TdxDBColorCurrencyEdit;
    edAliqCof: TdxDBColorCurrencyEdit;
    FatGerLIBERA_RESP: TStringField;
    FatGerLIBERA_CODUSU: TIntegerField;
    FatGerLIBERA_DTEHRE: TDateTimeField;
    FatGerNFEIPI: TStringField;
    FatGerFLGDENEGADA: TStringField;
    FatGerTOTOUTDESP: TFloatField;
    FatGerTOTDESCINC: TFloatField;
    FatGerENVDPEC: TStringField;
    FatGerUSUDPEC: TIntegerField;
    FatGerJUSTDPEC: TStringField;
    FatGerPROTDPEC: TStringField;
    FatGerNFE_PROTOCOLO: TMemoField;
    FatGerNFE_RECIBO: TMemoField;
    FatGerTOTVOL: TIntegerField;
    FatGerID_FRETE: TIntegerField;
    FatGerFRTICM: TFloatField;
    FatGerSEGICM: TFloatField;
    FatGerDESICM: TFloatField;
    FatGerFRTIPI: TFloatField;
    FatGerSEGIPI: TFloatField;
    FatGerDESIPI: TFloatField;
    wwQuery1: TwwQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    IntegerField5: TIntegerField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    StringField14: TStringField;
    StringField15: TStringField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    StringField16: TStringField;
    StringField17: TStringField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    FloatField27: TFloatField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    IntegerField10: TIntegerField;
    FloatField50: TFloatField;
    FloatField51: TFloatField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    FloatField55: TFloatField;
    FloatField56: TFloatField;
    FloatField57: TFloatField;
    FloatField58: TFloatField;
    FloatField59: TFloatField;
    FloatField60: TFloatField;
    FloatField61: TFloatField;
    FloatField62: TFloatField;
    FloatField63: TFloatField;
    FloatField64: TFloatField;
    FloatField65: TFloatField;
    FloatField66: TFloatField;
    FloatField67: TFloatField;
    FloatField68: TFloatField;
    FloatField69: TFloatField;
    FloatField70: TFloatField;
    FloatField71: TFloatField;
    FloatField72: TFloatField;
    FloatField73: TFloatField;
    StringField35: TStringField;
    FloatField74: TFloatField;
    FloatField75: TFloatField;
    StringField36: TStringField;
    FloatField76: TFloatField;
    FloatField77: TFloatField;
    StringField37: TStringField;
    StringField38: TStringField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField42: TStringField;
    StringField43: TStringField;
    FloatField78: TFloatField;
    FloatField79: TFloatField;
    FloatField80: TFloatField;
    FloatField81: TFloatField;
    FloatField82: TFloatField;
    FloatField83: TFloatField;
    FloatField84: TFloatField;
    FloatField85: TFloatField;
    FloatField86: TFloatField;
    FloatField87: TFloatField;
    dsTipFrt: TDataSource;
    quSQL: TwwQuery;
    GroupBox3: TGroupBox;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label81: TLabel;
    Label12: TLabel;
    edTotIcmItem: TdxDBColorCurrencyEdit;
    edBaseICMSItem: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit7: TdxDBColorCurrencyEdit;
    dxDBColorEdit2: TdxDBColorEdit;
    dxDBColorEdit7: TdxDBColorEdit;
    dxDBLookupEdit1: TdxDBLookupEdit;
    dxDBColorCurrencyEdit20: TdxDBColorCurrencyEdit;
    GroupBox4: TGroupBox;
    Label83: TLabel;
    Label84: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    edTotIPIItem: TdxDBColorCurrencyEdit;
    edBaseIPIItem: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit15: TdxDBColorCurrencyEdit;
    edCodIPI: TdxDBLookupEdit;
    GroupBox5: TGroupBox;
    Label86: TLabel;
    Label87: TLabel;
    Label22: TLabel;
    Label24: TLabel;
    dxDBColorCurrencyEdit17: TdxDBColorCurrencyEdit;
    edBaseCOFItem: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit19: TdxDBColorCurrencyEdit;
    edCodCOF: TdxDBLookupEdit;
    GroupBox2: TGroupBox;
    Label77: TLabel;
    Label78: TLabel;
    Label25: TLabel;
    Label32: TLabel;
    dxDBColorCurrencyEdit8: TdxDBColorCurrencyEdit;
    edBasePISItem: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit10: TdxDBColorCurrencyEdit;
    edCodPIS: TdxDBLookupEdit;
    GroupBox1: TGroupBox;
    Label67: TLabel;
    Label71: TLabel;
    Label26: TLabel;
    Label31: TLabel;
    Label27: TLabel;
    edTotIcmSTItem: TdxDBColorCurrencyEdit;
    edBaseStItem: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit13: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit16: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit21: TdxDBColorCurrencyEdit;
    GroupBox6: TGroupBox;
    Label30: TLabel;
    Label37: TLabel;
    Label43: TLabel;
    Label63: TLabel;
    Label90: TLabel;
    Label45: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    EdTotRes: TdxDBColorCurrencyEdit;
    EdTotSub: TdxDBColorCurrencyEdit;
    EdTotIpi: TdxDBColorCurrencyEdit;
    EdTotGer: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit22: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit23: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit24: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit25: TdxDBColorCurrencyEdit;
    GroupBox7: TGroupBox;
    Label4: TLabel;
    Label13: TLabel;
    bpsqCli: TSpeedButton;
    bpsqVen: TSpeedButton;
    Label55: TLabel;
    EdCgcCli: TdxDBColorEdit;
    EdCodVen: TdxDBColorEdit;
    EdCodCli: TdxDBColorEdit;
    Label16: TLabel;
    EdUfeGer: TdxDBColorEdit;
    GroupBox8: TGroupBox;
    Label5: TLabel;
    bpsqPfa: TSpeedButton;
    EdCodPfa: TdxDBColorEdit;
    EdFrtGer: TdxDBColorLookupEdit;
    Label70: TLabel;
    Label10: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    wwQuery1REDSUB: TFloatField;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    GroupBox9: TGroupBox;
    Label11: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    edIOF: TdxDBColorCurrencyEdit;
    edBCII: TdxDBColorCurrencyEdit;
    edDespAdu: TdxDBColorCurrencyEdit;
    edII: TdxDBColorCurrencyEdit;
    Panel4: TPanel;
    PageControl1: TPageControl;
    tsFixar: TTabSheet;
    Label28: TLabel;
    Label38: TLabel;
    Label33: TLabel;
    Label39: TLabel;
    Label34: TLabel;
    Label40: TLabel;
    Label35: TLabel;
    Label41: TLabel;
    Label36: TLabel;
    Label42: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    EdTotFrt: TdxDBColorCurrencyEdit;
    EdBasIc1: TdxDBColorCurrencyEdit;
    EdTotIc1: TdxDBColorCurrencyEdit;
    EdTotSeg: TdxDBColorCurrencyEdit;
    EdBasSu1: TdxDBColorCurrencyEdit;
    EdTotDes: TdxDBColorCurrencyEdit;
    EdTotSu1: TdxDBColorCurrencyEdit;
    EdTotIp1: TdxDBColorCurrencyEdit;
    EdTotIt1: TdxDBColorCurrencyEdit;
    EdTotGe1: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit26: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit27: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit28: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit29: TdxDBColorCurrencyEdit;
    tsCalculado: TTabSheet;
    Label54: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label69: TLabel;
    Label72: TLabel;
    Label76: TLabel;
    Label79: TLabel;
    edFreteCalc: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit31: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit32: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit33: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit34: TdxDBColorCurrencyEdit;
    D: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit36: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit37: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit38: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit39: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit40: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit41: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit42: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit43: TdxDBColorCurrencyEdit;
    edNomCli: TdxColorEdit;
    edNomEmp: TdxColorEdit;
    edNomVen: TdxColorEdit;
    edDescPfa: TdxColorEdit;
    FatGerDESNAT_1: TStringField;
    sbInfo: TStatusBar;
    GroupBox10: TGroupBox;
    EdSeqPe2: TdxDBColorCurrencyEdit;
    pnNroGe2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    FatGerID_FATDEV: TIntegerField;
    FatGerTOTIBPT: TFloatField;
    FatGerCHAVENFE_DEV: TStringField;
    FatGerID_CMPENT: TIntegerField;
    FatGerID_LOJFAT: TIntegerField;
    btnRef: TSpeedButton;
    FatGerFLGPLAN: TStringField;
    FatGerREGTRBEMP: TIntegerField;
    FatGerINDIC_CF: TIntegerField;
    FatGerINDIC_PRESENCA: TIntegerField;
    desoneracao: TQuery;
    desoneracaoID: TIntegerField;
    desoneracaoMOTIVO: TStringField;
    dsDesoneracao: TDataSource;
    edMotivo: TdxDBColorLookupEdit;
    Label3: TLabel;
    pnReferencia: TPanel;
    EdDesGe2_1: TdxDBColorEdit;
    EdObsGe2_1: TdxDBColorEdit;
    Label8: TLabel;
    dxDBColorEdit5: TdxDBColorEdit;
    FatGe2: TwwQuery;
    FatGe2CODCLP: TStringField;
    FatGe2CODGRU: TStringField;
    FatGe2CODSUB: TStringField;
    FatGe2CODPRO: TStringField;
    FatGe2CODCFO: TStringField;
    FatGe2CLSIPI: TStringField;
    FatGe2CODST1: TStringField;
    FatGe2CODST2: TStringField;
    FatGe2CODUND: TStringField;
    FatGe2QTPGE2: TFloatField;
    FatGe2VLUGE2: TFloatField;
    FatGe2IPIGE2: TFloatField;
    FatGe2ICMGE2: TFloatField;
    FatGe2TOTGE2: TFloatField;
    FatGe2CSTGE2: TFloatField;
    FatGe2TOTITE: TFloatField;
    FatGe2CODEMP: TIntegerField;
    FatGe2DTEGER: TDateTimeField;
    FatGe2NUMGER: TIntegerField;
    FatGe2SEQGE2: TIntegerField;
    FatGe2CODEIT: TIntegerField;
    FatGe2CODTAM: TStringField;
    FatGe2CODCOR: TStringField;
    FatGe2DESGE2: TStringField;
    FatGe2OBSGE2: TStringField;
    FatGe2LIQGE2: TFloatField;
    FatGe2BRTGE2: TFloatField;
    FatGe2LINGE2: TIntegerField;
    FatGe2BASIPI: TFloatField;
    FatGe2TOTIPI: TFloatField;
    FatGe2BASICM: TFloatField;
    FatGe2TOTICM: TFloatField;
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
    FatGe2REGIPI: TStringField;
    FatGe2REGICM: TStringField;
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
    FatGe2TOTDSR: TFloatField;
    FatGe2CODSTR: TStringField;
    FatGe2TIPSTR: TStringField;
    FatGe2FLASEQ: TStringField;
    FatGe2FLGLIB: TStringField;
    FatGe2CODTXF: TStringField;
    FatGe2TRBSUB: TStringField;
    FatGe2ICMSUB: TFloatField;
    FatGe2MRGSUB: TFloatField;
    FatGe2BASESB: TFloatField;
    FatGe2ID_FATGE2: TIntegerField;
    FatGe2BAIPIS: TFloatField;
    FatGe2TOTDES: TFloatField;
    FatGe2DESNC1: TStringField;
    FatGe2DESNC2: TStringField;
    FatGe2DESNC3: TStringField;
    FatGe2DESNC4: TStringField;
    FatGe2DESNC5: TStringField;
    FatGe2DESNC6: TStringField;
    FatGe2DESNC7: TStringField;
    FatGe2DESNC8: TStringField;
    FatGe2TOTSEG: TFloatField;
    FatGe2TOTFRT: TFloatField;
    FatGe2BAICMF: TFloatField;
    FatGe2TOICMF: TFloatField;
    FatGe2BAICMS: TFloatField;
    FatGe2TOICMS: TFloatField;
    FatGe2BAICMD: TFloatField;
    FatGe2TOICMD: TFloatField;
    FatGe2BAIPIF: TFloatField;
    FatGe2TOIPIF: TFloatField;
    FatGe2TOIPIS: TFloatField;
    FatGe2BAIPID: TFloatField;
    FatGe2TOIPID: TFloatField;
    FatGe2VLRBCII: TFloatField;
    FatGe2VLRDESPATU: TFloatField;
    FatGe2VLRIOF: TFloatField;
    FatGe2VLRIMPII: TFloatField;
    FatGe2PERIMPII: TFloatField;
    FatGe2ALIQPIS: TFloatField;
    FatGe2BASCOF: TFloatField;
    FatGe2ALIQCOF: TFloatField;
    FatGe2BASPIS: TFloatField;
    FatGe2TOTPISZF: TFloatField;
    FatGe2TOTCOFZF: TFloatField;
    FatGe2FLGCABRITO: TStringField;
    FatGe2PERPIS: TFloatField;
    FatGe2PERCOF: TFloatField;
    FatGe2CSTIPI: TStringField;
    FatGe2CSTPIS: TStringField;
    FatGe2CSTCOF: TStringField;
    FatGe2TRBPIS: TStringField;
    FatGe2TRBCOF: TStringField;
    FatGe2ID_DI: TIntegerField;
    FatGe2TOTVOL: TIntegerField;
    FatGe2FLG_DESC_ZF_PIS: TStringField;
    FatGe2FLG_DESC_ZF_COF: TStringField;
    FatGe2ALIQPIS_ZF: TFloatField;
    FatGe2ALIQCOF_ZF: TFloatField;
    FatGe2FRTICM: TFloatField;
    FatGe2SEGICM: TFloatField;
    FatGe2DESICM: TFloatField;
    FatGe2FRTIPI: TFloatField;
    FatGe2SEGIPI: TFloatField;
    FatGe2DESIPI: TFloatField;
    FatGe2TOTOUTDESP: TFloatField;
    FatGe2TOTDESCINC: TFloatField;
    FatGe2REDSUB: TFloatField;
    FatGe2TOTIBPT: TFloatField;
    FatGe2TOTDESONERADO: TFloatField;
    FatGe2BASICM_DESON: TFloatField;
    FatGe2TOTICM_DESON: TFloatField;
    FatGe2BASSUB_DESON: TFloatField;
    FatGe2TOTSUB_DESON: TFloatField;
    FatGe2FRTSUB: TFloatField;
    FatGe2SEGSUB: TFloatField;
    FatGe2DESSUB: TFloatField;
    FatGe2DSCSUB: TFloatField;
    FatGe2DSCIPI: TFloatField;
    FatGe2DSCICM: TFloatField;
    FatGe2CODDESONERACAO: TIntegerField;
    FatGe2ID_ESTICM: TIntegerField;
    DsGe2: TDataSource;
    UpGe2: TUpdateSQL;
    FatGe2DI: TStringField;
    FatGe2CEST: TStringField;
    FatGe2BAS_UFDEST: TFloatField;
    FatGe2ALIQ_FCPUFDEST: TFloatField;
    FatGe2ALIQ_ICMSUFDEST: TFloatField;
    FatGe2ALIQ_ICMSINTER: TFloatField;
    FatGe2ALIQ_ICMSINTERPART: TFloatField;
    FatGe2TOT_FCPUFDEST: TFloatField;
    FatGe2TOT_ICMSUFDEST: TFloatField;
    FatGe2TOT_ICMSUFREMET: TFloatField;
    FatGe2DIFAL: TFloatField;
    FatGe2COD_ENQ: TStringField;
    FatGe2BASICMCRED: TFloatField;
    FatGe2TOTICMCRED: TFloatField;
    FatGe2ICMGE2CRED: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
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
    procedure EdCodPFAExist(Sender: TObject);
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
    procedure FatGerBeforePost(DataSet: TDataSet);
    procedure Panel3Enter(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FatGerAfterOpen(DataSet: TDataSet);
    procedure EdClsIpiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure flagDI();
    procedure grGe2Exit(Sender: TObject);
    procedure tsFixarExit(Sender: TObject);
    procedure DsGerDataChange(Sender: TObject; Field: TField);
    procedure DsGe2StateChange(Sender: TObject);
    procedure btnRefClick(Sender: TObject);
    procedure EdCodSt2Exit(Sender: TObject);
    procedure pnReferenciaEnter(Sender: TObject);
    procedure EdCodCfoExit(Sender: TObject);
  private
    FlgTemDI: boolean;
    flgXLS: boolean;
    procedure CarregaCbo;
    procedure MostraDI;
    procedure ValidaDI;
    procedure ImportaXLS;
    procedure ValidaDanfeRef;
  public
    VCufecom, VCDteCOm, VCNFSCom, VCSeqCom: string;
    vtiponota: string;
    qticms: integer;
    AntVluGe2: real;
    DteGer: TDateTime;
    CodEmp, NumGer: integer;
    psaida, sEnc, sEntr, Finalizar: string;
    sContinuar: string;
    VCODICM: string;

    //VARIAVEIS DA DI
    FinalizarDI: Boolean;
    Vdiddi, VdiLOCDESEMB, VdiUF, VDICexp: string;
    vdidata, VdiDataDesemb: TDate;
  end;

var
  fmManNge_NFE2: TfmManNge_NFE2;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, AuxPsq, PsqRef, PsqObs,
  PsqPro, PsqEst, ManGer_NFE, PsqGru, PsqSub, PsqIcm, PsqTab, PsqTam, PsqSt1,
  PsqSt2, PsqEmp, PsqVen, PsqPfa, PsqCli, PsqClp, AuxIni, PsqUnd, ManNg1_NFE,
  ManC01, ManDi2, ManChaveNfe, ManListaNFeRef, uIndicadores;

{$R *.DFM}

procedure TfmManNge_NFE2.FormCreate(Sender: TObject);
begin
  inherited;
  sEnc := 'N';

  sEntr := 'N';

  psaida := 'Sim';

  Finalizar := 'N';
  flgXLS := False;

  FlgTemDI := False; //Flag informa se tem DI para NFe

  tsFixar.TabVisible := False;
  tsCalculado.TabVisible := True;

  PageControl1.ActivePage := tsCalculado;

  TipFrt.Active := false;
  TipFrt.Active := True;

  vdidata := Date;
  VdiDataDesemb := Date;

  CarregaCbo;

end;

procedure TfmManNge_NFE2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManNge_NFE2 := nil;
end;

procedure TfmManNge_NFE2.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManNge_NFE2.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then
  begin

    if FatGerSitGer.Value = 'Faturado' then
      fMsg('Opera��o n�o Pode ser Realizada. Nota j� Emitida.', 'E')

    else if FatGerSitGer.Value = 'Cancelado' then
      fMsg('Opera��o n�o Pode ser Realizada. Nota Cancelada.', 'E');

    Finalizar := 'S';

    Close;

  end;
  {  fmManNge_NFE.Vdiddi := '';
    fmManNge_NFE.Vdidata:=now;
    fmManNge_NFE.VdiLOCDESEMB:= '';
    fmManNge_NFE.Vdidatadesemb:=now;
    fmManNge_NFE.VdiUF:= '';
    fmManNge_NFE.VDICexp:= '';}

end;

procedure TfmManNge_NFE2.EdTipPfaExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then
    EdTipPfa.SetFocus
end;

procedure TfmManNge_NFE2.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        FatGerCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(FatGerCodEmp.Value);

        edNomEmp.Text := fmPsqEmp.NomEmp;

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;

    if FatGerCodEmp.Value > 0 then
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

procedure TfmManNge_NFE2.EdCodEmpKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  sbInfo.Panels[0].Text := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManNge_NFE2.EdCodEmpMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  sbInfo.Panels[0].Text := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManNge_NFE2.Panel1Exit(Sender: TObject);
var
  SeqGer, Status, sai: string;
begin
  inherited;

  if (EdCodCli.Enabled) then
  begin
    try
      begin
        frmIndicadores := TfrmIndicadores.Create(Self);

        frmIndicadores.edIndicCF.DataField := 'INDIC_CF';
        frmIndicadores.edIndicPresenca.DataField := 'INDIC_PRESENCA';
        frmIndicadores.edIndicCF.DataSource := fmManNge_NFE2.DsGer;
        frmIndicadores.edIndicPresenca.DataSource := fmManNge_NFE2.DsGer;

        frmIndicadores.INDIC_CON.Active := True;
        frmIndicadores.INDIC_PRES.Active := True;

        frmIndicadores.ShowModal;

        if frmIndicadores.ModalResult = mrOK then
          sai := 'Sim'
        else
          sai := 'Nao';
      end;
    finally
      FreeAndNil(frmIndicadores);
    end;
  end;

  if ((FatGer.State <> dsBrowse) {and (sai = 'Sim')}) then
  begin

    if FatGerDteFat.Value = 0 then
      fmsgErro('Campo de preenchimento obrigatorio n�o informado.', EdDteFat);

    Status := 'dsEdit';

    if FatGer.State = dsInsert then
    begin

      Status := 'dsInsert';

      if FatGerCodCli.Value = 0 then
        fmsgErro('Campo de preenchimento obrigatorio n�o informado.', EdCodCli);

      if Trim(FatGerCodPfa.Value) = '' then
        fmsgErro('Campo de preenchimento obrigatorio n�o informado.', EdCodPfa);

      if Trim(FatGerUfeGer.Value) = '' then
        fmsgErro('Endere�o de faturamento do cliente esta incompleto.', EdCodCli);

      Randomize;
      SeqGer := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
        copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
        copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
        copy(TimeToStr(Time), 1, 2) +
        copy(TimeToStr(Time), 4, 2) +
        copy(TimeToStr(Time), 7, 2) +
        FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
        FNumZeros(Trim(IntToStr(Random(50000))), 5);

      FatGerSeqGer.AsString := SeqGer;

    end
    else
    begin
      if FatGerSeqGer.AsString = '' then
      begin
        Randomize;
        SeqGer := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
          copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
          copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
          copy(TimeToStr(Time), 1, 2) +
          copy(TimeToStr(Time), 4, 2) +
          copy(TimeToStr(Time), 7, 2) +
          FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
          FNumZeros(Trim(IntToStr(Random(50000))), 5);
      end;
      SeqGer := FatGerSeqGer.AsString;
    end;

    quSql.Close;
    quSql.SQL.Text := ' Select EstPfa.ModPfa From EstPfa ' +
                      ' Where EstPfa.CodPfa = ' + QuotedStr(FatGerCodPfa.Value) +
                      '   and EstPfa.TipPfa = ' + QuotedStr(FatGerTipPfa.Value);
    quSql.Open;

    sContinuar := 'N';

    if Trim(quSQL.FieldbyName('ModPfa').AsString) = 'Vendas' then
    begin
      MessageBox(handle, 'N�o � permitido o uso de Padr�o de Faturamento de venda neste modulo. Verifique e tente novamente.', 'Outros tipo de nota', MB_OK +
        MB_ICONINFORMATION);
      Abort;
    end;

    sContinuar := 'S';

    if sContinuar = 'S' then
    begin
      if FatGer.State <> dsBrowse then
      begin
        if FatGer.State = dsInsert then
        begin
          Randomize;
          SeqGer := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
            copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
            copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
            copy(TimeToStr(Time), 1, 2) +
            copy(TimeToStr(Time), 4, 2) +
            copy(TimeToStr(Time), 7, 2) +
            FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
            FNumZeros(Trim(IntToStr(Random(50000))), 5);
          FatGerSeqGer.AsString := SeqGer;
        end
        else
        begin
          if FatGerSeqGer.AsString = '' then
          begin
            SeqGer := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
              copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
              copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
              copy(TimeToStr(Time), 1, 2) +
              copy(TimeToStr(Time), 4, 2) +
              copy(TimeToStr(Time), 7, 2) +
              FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
              FNumZeros(Trim(IntToStr(Random(50000))), 5);
          end;
          SeqGer := FatGerSeqGer.AsString;
        end;

        with FatGer do
        begin
          post;
          ApplyUpdates;
          fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}

          try
            ApplyUpdates; {Tenta aplicar as altera��es}

            fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}

          except
            fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}

            if FatGer.State = dsBrowse then
              FatGer.Edit;
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
          Text := ' Select CodEmp,DteGer,NumGer From FatGer' +
                  ' Where SeqGer = :SeqGer';
          with Params do
          begin
            Params[0].AsString := SeqGer;
          end;

          Open;
        end;
      end;

      FatGer.Close;
      FatGer.Params[0].AsInteger := quSQL.FieldbyName('CodEmp').AsInteger;
      FatGer.Params[1].AsDateTime:= quSQL.FieldbyName('DteGer').AsDateTime;
      FatGer.Params[2].AsInteger := quSQL.FieldbyName('NumGer').AsInteger;
      FatGer.Open;

      if Status = 'dsInsert' then
      begin

        with fmManGer_nfe.FatGer, SQL do
        begin

          Close;
          Text := fmManGer_nfe.sBase +
            ' and FatGer.codemp = :codemp' +
            ' and FatGer.dteger = :dteger' +
            ' and FatGer.numger = :numger';

          with Params do
          begin

            Params[0].AsInteger := FatGerCODEMP.AsInteger;
            Params[1].Asdate := FatGerDTEGER.AsDateTime;
            Params[2].AsInteger := FatGerNUMGER.AsInteger;

          end;

          Open;

        end;
      end;

      qticms := 0;

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(IntToStr(FatGerCodEmp.Value));
        Open;

      end;

      if quSQL.FieldbyName('SigUfe').AsString <> FatGerUfeGer.Value then
      begin

        with quSql, SQL do
        begin

          Close;
          Text := ' Select Count(1) as QtdReg' +
            ' From GerIcm' +
            ' Where GerIcm.SigUfe = ' + QuotedStr(FatGerUfeGer.Value);
          Open;

          qticms := FieldbyName('QtdReg').AsInteger;

        end;
      end;

      bPsqEmp.Enabled := False;
      bPsqCli.Enabled := False;
      bPsqPfa.Enabled := False;

      EdTipPfa.Enabled := False;
      EdCodEmp.Enabled := False;
      EdDteFat.Enabled := False;
      EdCodCli.Enabled := False;
      EdFrtGer.Enabled := False;
      EdCodPfa.Enabled := False;
      edcodven.Enabled := False;

      EdTipPfa.Font.Style := [fsBold];
      EdCodEmp.Font.Style := [fsBold];
      EdDteFat.Font.Style := [fsBold];
      EdCodCli.Font.Style := [fsBold];
      EdFrtGer.Font.Style := [fsBold];
      EdCodPfa.Font.Style := [fsBold];

      if FatGer.isEmpty then
        FatGe2.Append
      else
        grGe2.SetFocus;

    end
    else
    begin

      if EdTipPfa.Enabled then
        if EdTipPfa.CanFocus then
          EdTipPfa.SetFocus
        else if EdDteFat.CanFocus then
          EdDteFat.SetFocus;

    end;
  end
  else
  begin
    if EdTipPfa.Enabled then
      if EdTipPfa.CanFocus then
        EdTipPfa.SetFocus
      else if EdDteFat.CanFocus then
        EdDteFat.SetFocus;
  end;

end;

procedure TfmManNge_NFE2.EdCodEmpExit(Sender: TObject);
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

      if FatGer.State <> dsBrowse then
      begin

        if FatGerCodEmp.Value > 0 then
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
            Text := ' Select GerEmp.ApeEmp' +
              ' From GerEmp' +
              ' Where GerEmp.CodEmp = :CodEmp';

            if GFlgAce = 'Sim' then
            begin

              if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
              else
                Text := Text + ' and GerEmp.CodFil > 0';

            end;

            with Params do
            begin

              Params[0].AsInteger := FatGerCodEmp.Value;

            end;

            Open;

          end;

          if Trim(quSql.FieldbyName('ApeEmp').AsString) = '' then
            fmsgErro('Empresa Informada n�o Encontrada', EdCodEmp)
          else
            edNomEmp.Text := quSql.FieldbyName('ApeEmp').AsString;

        end
        else
        begin

          edNomEmp.Text := '';

          fmsgErro('Campo de Preenchimento Obrig�torio n�o Informado', EdCodEmp);

        end;
      end;
    end;
  end;
end;

procedure TfmManNge_NFE2.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqCli := TfmPsqCli.Create(Self);

      fmPsqCli.ShowModal;

      if fmPsqCli.CodCli > 0 then
      begin

        FatGerCodCli.Value := fmPsqCli.CodCli;
        FatGerUfeGer.Value := fmPsqCli.UffCli;
        FatGerCodVen.Value := fmPsqCli.CodVen;

        EdCodCli.Text := FatGerCodCli.AsString;

        edNomCli.Text := fmPsqCli.NomCli;
        //pnUfeGer.Caption := fmPsqCli.UffCli;

        if FatGerCodVen.AsInteger > 0 then
          EdCodVen.Text := FatGerCodVen.AsString
        else
          EdCodVen.Text := '';

      end;

    finally

      FreeAndNil(fmPsqCli);

    end;

    if FatGerCodCli.AsInteger > 0 then
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

        FatGerCodCli.AsInteger := fmAuxPsq.CodCli;
        FatGerUfeGer.AsString := fmAuxPsq.UffCli;
        FatGerCodVen.AsInteger := fmAuxPsq.CodVen;

        EdCodCli.Text := FatGerCodCli.AsString;

        edNomCli.Text := fmPsqCli.NomCli;
        //pnUfeGer.Caption := fmPsqCli.UffCli;

        if FatGerCodVen.AsInteger > 0 then
          EdCodVen.Text := FatGerCodVen.AsString
        else
          EdCodVen.Text := '';

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if FatGerCodCli.AsInteger > 0 then
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

procedure TfmManNge_NFE2.EdCodCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  sbInfo.Panels[0].Text := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManNge_NFE2.EdCodCliMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  sbInfo.Panels[0].Text := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManNge_NFE2.EdCodCliExit(Sender: TObject);
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

      if FatGer.State <> dsBrowse then
      begin

        if FatGerCodCli.Value > 0 then
        begin

          with quSql, SQL do
          begin

            Close;
            Text := ' Select FinCli.CodCli,' +
              '        FinCli.NomCli,' +
              '        FinCli.UffCli,' +
              '        FinCli.CodVen,' +
              '        FinCli.CgcCli From FinCli Where FinCli.CodCli = ' + QuotedStr(IntToStr(FatGerCodCli.Value));
            Open;

          end;

          if quSql.FieldbyName('CodCli').AsInteger = FatGerCodCli.AsInteger then
          begin

            FatGerUfeGer.Value := quSQL.FieldbyName('UffCli').AsString;
            FatGerCodVen.Value := quSQL.FieldbyName('CodVen').AsInteger;

            edNomCli.Text := quSQL.FieldbyName('NomCli').AsString;
            //pnUfeGer.Caption := quSQL.FieldbyName('UffCli').AsString;

            if Trim(quSQL.FieldbyName('CodVen').AsString) <> '' then
              EdCodVen.Text := quSQL.FieldbyName('CodVen').AsString;

            FatGerCGCCLI.AsString := quSQL.FieldbyName('CgcCli').AsString;

            if length(trim(FatGerCGCCLI.AsString)) > 11 then
              FatGerCGCCLI.EditMask := '00.000.000/0000-00;0; '
            else
              FatGerCGCCLI.EditMask := '000.000.000-00;0; ';

            {if Trim(quSQL.FieldbyName('CgcCli').AsString) <> '' then
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
              pnCgcCli.Caption := '';}

            with quSql, SQL do
            begin

              Close;
              Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = ' + QuotedStr(IntToStr(FatGerCodVen.Value));
              Open;

            end;

            edNomVen.Text := quSQL.FieldbyName('ApeVen').AsString;

            if Trim(FatGerUfeGer.Value) = '' then
              fmsgErro('Endere�o de Faturamento do Cliente Incompleto. Falta UF', EdCodCli);

          end
          else
          begin

            {pnNomCli.Caption := '';
            pnCgcCli.Caption := '';
            pnUfeGer.Caption := '';
            pnNomVen.Caption := '';}

            fmsgErro('Cliente Informado n�o Encontrado', EdCodCli);

          end;

        end
        else
        begin

          {pnNomCli.Caption := '';
          pnUfeGer.Caption := '';
          pnCgcCli.Caption := '';
          pnNomVen.Caption := '';}

          fmsgErro('Campo de Preenchimento Obrig�torio n�o Informado', EdCodCli);

        end;
      end;
    end;
  end;
end;

procedure TfmManNge_NFE2.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqVen := TfmPsqVen.Create(Self);

      fmPsqVen.ShowModal;

      if fmPsqVen.CodVen > 0 then
      begin

        FatGerCodVen.Value := fmPsqVen.CodVen;

        edNomVen.Text := fmPsqVen.NomVen;

        EdCodVen.Text := IntToStr(FatGerCodVen.Value);

      end;

    finally

      FreeAndNil(fmPsqVen);

    end;

    if FatGerCodVen.Value > 0 then
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

        FatGerCodVen.Value := fmAuxPsq.CodVen;

        edNomVen.Text := fmAuxPsq.NomVen;

        EdCodVen.Text := IntToStr(FatGerCodVen.Value);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if FatGerCodVen.Value > 0 then
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

procedure TfmManNge_NFE2.EdCodVenExit(Sender: TObject);
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

      if FatGer.State <> dsBrowse then
      begin

        if FatGerCodVen.Value > 0 then
        begin

          with quSql, SQL do
          begin

            Close;
            Text := ' Select NomVen From FinVen ' +
              ' Where CodVen = :CodVen';

            with Params do
            begin
              Params[0].AsInteger := FatGerCodVen.Value;
            end;

            Open;

          end;

          if Trim(quSql.FieldbyName('NomVen').AsString) = '' then
            fmsgErro('Vendedor Informado n�o Encontrado', EdCodVen)
          else
            edNomVen.Text := quSql.FieldbyName('NomVen').AsString;

        end
        else
        begin

          edNomVen.Text := '';

          fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado', EdCodVen);

        end;

      end
      else
      begin

        edNomVen.Text := '';

        fmsgErro('Vendedor Informado n�o Encontrado', EdCodVen);

      end;
    end;
  end;
end;

procedure TfmManNge_NFE2.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  LocPfa: string;
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

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
      fmPsqPfa.EstPfa.Close;
      fmPsqPfa.EstPfa.SQL.Text := ' Select EstPfa.CodPfa,' +
                                  '        EstPfa.TipPfa,' +
                                  '        EstPfa.DscPfa,' +
                                  '        EstPfa.DsrPfa,' +
                                  '        EstPfa.CodCf1,' +
                                  '        EstPfa.CodCf2,' +
                                  '        EstPfa.IntFin,' +
                                  '        EstPfa.AtuEst,' +
                                  '        EstPfa.ConSum,' +
                                  '        EstPfa.ModPfa ' +
                                  '  From EstPfa         ' +
                                  ' Where EstPfa.TipPfa = :TipPfa' +
                                  '   and EstPfa.LocPfa = :LocPfa' +
                                  ' Order by EstPfa.DscPfa';
      fmPsqPfa.EstPfa.Params[0].AsString := FatGerTipPfa.Value;
      fmPsqPfa.EstPfa.Params[1].AsString := LocPfa;
      fmPsqPfa.EstPfa.Open;

      fmPsqPfa.ShowModal;

      if Trim(fmPsqPfa.CodPfa) <> '' then
      begin

        FatGerCodPfa.Value := Trim(fmPsqPfa.CodPfa);
        FatGerMODPfa.Value := Trim(fmPsqPfa.modPfa);
        FatGerATUEST.Value := Trim(fmPsqPfa.ATUEST);
        FatGerINTFIN.Value := Trim(fmPsqPfa.INTFIN);

        edDescPfa.Text := fmPsqPfa.NomPfa;

        EdCodPfa.Text := FatGerCodPfa.Value;

      end;

    finally

      FreeAndNil(fmPsqPfa);

    end;

    EdCodPfa.SetFocus;

  end;
end;

procedure TfmManNge_NFE2.EdCodPFAExist(Sender: TObject);
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
      if FatGer.State <> dsBrowse then
      begin
        if Trim(FatGerCodPfa.Value) <> '' then
        begin

          if FatGerUfeGer.Value = 'EX' then
            LocPfa := 'Importacao ou Exportacao'
          else
          begin

            if FatGerUfeGer.Value <> GUfeEmp then
              LocPfa := 'Outros Estados'
            else
              LocPfa := 'Mesmo Estado'

          end;

          //          if FatGerMODPFA.AsString = '' then
          //          begin
          with quSql, SQL do
          begin

            Close;
            Text := ' Select DscPfa, modpfa, ATUEST, INTFIN, codicm From EstPfa ' +
              ' Where TipPfa = :TipPfa' +
              '   and CodPfa = :CodPfa' +
              '   and LocPfa = :LocPfa';
            //              '   and (modpfa <> '+QuotedStr('Devolucoes')+' and modpfa <> '+QuotedStr('Vendas')+')';

            with Params do
            begin

              Params[0].AsString := FatGerTipPfa.Value;
              Params[1].AsString := FatGerCodPfa.Value;
              Params[2].AsString := LocPfa;
            end;

            Open;

            FatGerMODPFA.AsString := quSql.FieldbyName('MODPfa').AsString;
            FatGerLANEST.AsString := quSql.FieldbyName('atuest').AsString;
            FatGerINTFIN.AsString := quSql.FieldbyName('intfin').AsString;

            vcodicm := '';
            VCODICM := quSql.FieldbyName('CODICM').AsString;
            vtiponota := quSql.FieldbyName('MODPfa').AsString;

            //Removido para atender Segs
            {if ((vcodicm = '') or (vcodicm = '0')) then
              fmsgErro('Padr�o de Faturamento Informado Sem regra de ICMS', EdCodPfa);}

          end;

          if Trim(quSql.FieldbyName('DscPfa').AsString) = '' then
          begin
            fmsgErro('Padr�o de Faturamento Informado n�o Encontrado', EdCodPfa);
          end
          else
            edDescPfa.Text := quSql.FieldbyName('DscPfa').AsString;
          ;

        end
        else
        begin

          edDescPfa.Text := '';

          fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado', EdCodPfa);

        end;
      end;
    end;
    flagDI;
  end;

  if DebugHook > 0 then
  begin
    //Quando modalidade � devolu��o � necess�rio informar chave da nfe de refer�ncia
    if UpperCase(FatGerMODPFA.AsString) = 'DEVOLUCOES' then
    begin
      fmManListaNFeRef := TfmManListaNFeRef.Create(Self);
      try
        fmManListaNFeRef.ShowModal(fatgernumger.AsInteger);
      finally
        FreeAndNil(fmManListaNFeRef);
      end;

    end;
  end;

end;

procedure TfmManNge_NFE2.FatGerNewRecord(DataSet: TDataSet);
begin
  inherited;

  FatGer.DisableControls;
  try

    FatGerNumGer.AsInteger := 0;
    FatGerQtiGer.AsInteger := 0;
    FatGerQtdVol.AsInteger := 0;
    FatGerAltVol.AsInteger := 0;
    FatGerSeqIte.AsInteger := 0;
    FatGerQtdNfs.AsInteger := 0;
    FatGerTotIte.AsFloat := 0;
    FatGerTotGer.AsFloat := 0;
    FatGerBasIcm.AsFloat := 0;
    FatGerTotIcm.AsFloat := 0;
    FatGerBasIpi.AsFloat := 0;
    FatGerTotIpi.AsFloat := 0;
    FatGerQtpGer.AsFloat := 0;
    FatGerTotGer.AsFloat := 0;
    FatGerTotBrt.AsFloat := 0;
    FatGerID_FRETE.AsInteger := 9;
    FatGerObsGer.Value := '';
    FatGerDteGer.AsDateTime := Date;
    FatGerDteFat.AsDateTime := Date;
    FatGerFrtGer.asString := 'FOB';
    FatGerTipPfa.asString := 'Saida';
    FatGerCodEmp.AsInteger := GEmp_Id;
    FatGerSitGer.asString := 'Nao Concluido';
    FatGerHreFat.Value := TimeToStr(Time);

    EdDteFat.Date := Date;

    //EdFrtGer.Text := 'FOB';

    EdTipPfa.Text := 'Saida';

    if GEmp_Id > 0 then
      EdCodEmp.Text := IntToStr(GEmp_Id);

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select GerEmp.ApeEmp' +
        ' From GerEmp' +
        ' Where GerEmp.CodEmp = :CodEmp';

      if GFlgAce = 'Sim' then
        Text := Text + ' and CodFil > ' + QuotedStr('0');

      with Params do
      begin

        Params[0].AsInteger := FatGerCodEmp.Value;

      end;

      Open;

      edNomEmp.Text := FieldbyName('ApeEmp').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomCli,CgcCli,UffCli From FinCli' +
        ' Where CodCli = :CodCli';

      with Params do
      begin

        Params[0].AsInteger := FatGerCodCli.Value;

      end;

      Open;

    end;

    edNomCli.Text := quSQL.FieldbyName('NomCli').AsString;
    //pnUfeGer.Caption := quSQL.FieldbyName('UffCli').AsString;

    {if Trim(quSQL.FieldbyName('CgcCli').AsString) <> '' then
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
      pnCgcCli.Caption := '';}

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomVen From FinVen Where FinVen.CodVen = :CodVen';

      with Params do
      begin

        Params[0].AsInteger := FatGerCodVen.Value;

      end;

      Open;

      edNomVen.Text := quSQL.FieldbyName('NomVen').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select DscPfa From EstPfa' +
        ' Where TipPfa = :TipPfa' +
        '   and CodPfa = :CodPfa';

      with Params do
      begin

        Params[0].AsString := FatGerTipPfa.Value;
        Params[1].AsString := FatGerCodPfa.Value;

      end;

      Open;

      edDescPfa.Text := quSQL.FieldbyName('DscPfa').AsString;

    end;

    FatGe2.Close;
    FatGe2.Params[0].AsInteger := FatGerCodEmp.Value;
    FatGe2.Params[1].AsDateTime := FatGerDteGer.Value;
    FatGe2.Params[2].AsInteger := FatGerNumGer.Value;
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
  finally
    FatGer.EnableControls;
  end;

  Vdiddi := '';
  Vdidata := now;
  VdiLOCDESEMB := '';
  Vdidatadesemb := now;
  VdiUF := '';
  VDICexp := '';

end;

procedure TfmManNge_NFE2.EdCodClpExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;

  if Tecla = 'UP' then
  begin
    psaida := 'Nao';
    edAliqCof.enabled := false;
    edAliqPis.enabled := false;
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
    edMotivo.Enabled := False;
    EdVluGe2.Enabled := False;
    EdIpiGe2.Enabled := False;
    EdIcmGe2.Enabled := False;
    EdDesGe2.Enabled := False;
    EdObsGe2.Enabled := False;
    edii.Enabled := False;
    edBCII.Enabled := False;
    edIOF.Enabled := False;
    edDespAdu.Enabled := False;
    //edTotIcmItem.ReadOnly := True;

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

    edii.Font.Style := [fsBold];
    edBCII.Font.Style := [fsBold];
    edIOF.Font.Style := [fsBold];
    edDespAdu.Font.Style := [fsBold];

    if (FatGe2.State in [dsedit, dsinsert]) then
      fatge2.Cancel;
    sysutils.abort;
  end;


  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdFrtGer.Focused) and (not EdDteFat.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatGe2.State <> dsBrowse then
      begin

        if Trim(FatGe2CodClp.Value) <> '' then
        begin

          if (FatGe2CodClp.Value <> '9') and (FatGe2CodClp.Value <> '8') then
          begin

            psaida := 'Nao';
            EdCodClp.Enabled := True;
            EdCodGru.Enabled := True;
            EdCodSub.Enabled := True;
            EdCodPro.Enabled := True;

            EdCodClp.Font.Style := [];
            EdCodGru.Font.Style := [];
            EdCodSub.Font.Style := [];
            EdCodPro.Font.Style := [];

            psaida := 'Sim';

            with quSql, SQL do
            begin

              Close;
              Text := ' Select Count(*) as Reg From EstClp ' +
                ' Where CodClp = ' + QuotedStr(FatGe2CodClp.Value);
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
              fmsgErro('Classifica��o Informada n�o Encontrada.', EdCodClp);

          end
          else
          begin

            psaida := 'Nao';

            EdCodClp.Enabled := False;
            EdCodGru.Enabled := False;
            EdCodSub.Enabled := False;
            EdCodPro.Enabled := False;

            EdCodClp.Font.Style := [fsBold];
            EdCodGru.Font.Style := [fsBold];
            EdCodSub.Font.Style := [fsBold];
            EdCodPro.Font.Style := [fsBold];

            psaida := 'Sim';

            if FatGe2CodClp.Value = '9' then
            begin

              FatGe2CodGru.Value := '999';
              FatGe2CodSub.Value := '9999';
              FatGe2CodPro.Value := '99999';

              EdCodCfo.Enabled := True;
              EdClsIpi.Enabled := True;
              EdCodSt1.Enabled := True;
              EdCodSt2.Enabled := True;
              EdCodUnd.Enabled := True;
              EdQtpGe2.Enabled := True;

              if trim(FatGe2CODST2.asString) <> '' then
                if FatGe2CODST2.Asinteger in [20, 30, 40, 41, 50, 70, 90] then
                  edMotivo.Enabled := True;

              EdVluGe2.Enabled := True;
              EdIpiGe2.Enabled := True;
              EdIcmGe2.Enabled := True;
              edAliqCof.enabled := True;
              edAliqPis.enabled := True;
              EdDesGe2.enabled := True; EdDesGe2_1.enabled := True;
              EdObsGe2.Enabled := True; EdObsGe2_1.Enabled := True;

              if trim(FatGe2CodCfo.AsString) = '1.604' then
                edTotIcmItem.ReadOnly := False;

              if FatGe2CODCFO.AsString[1] = '3' then
              begin
                edii.Enabled := True;
                edBCII.Enabled := True;
                edIOF.Enabled := True;
                edDespAdu.Enabled := True;

              end
              else
              begin
                edii.Enabled := False;
                edBCII.Enabled := False;
                edIOF.Enabled := False;
                edDespAdu.Enabled := False;

              end;

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
              edii.Font.Style := [];
              edBCII.Font.Style := [];
              edIOF.Font.Style := [];
              edDespAdu.Font.Style := [];

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
              edMotivo.Enabled := False;
              EdVluGe2.Enabled := False;
              EdIpiGe2.Enabled := False;
              EdIcmGe2.Enabled := False;
              EdDesGe2.Enabled := False;
              EdObsGe2.Enabled := False;
              edAliqCof.enabled := false;
              edAliqPis.enabled := false;
              //edTotIcmItem.ReadOnly := True;

              edii.Enabled := False;
              edBCII.Enabled := False;
              edIOF.Enabled := False;
              edDespAdu.Enabled := False;

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

              edii.Font.Style := [fsBold];
              edBCII.Font.Style := [fsBold];
              edIOF.Font.Style := [fsBold];
              edDespAdu.Font.Style := [fsBold];

              EdDesGe2.enabled := True; EdDesGe2_1.enabled := True;
              EdObsGe2.Enabled := True; EdObsGe2_1.Enabled := True;

              EdDesGe2.Font.Style := [];
              EdObsGe2.Font.Style := [];

              EdDesGe2.SetFocus;

            end;
          end;

        end
        else
          fmsgErro('Classifica��o Informada n�o Encontrada.', EdCodClp);

      end
      else
      begin

        if EdCodClp.Enabled then
        begin

          if Trim(FatGe2CodClp.AsString) = '' then
            fmsgErro('Classifica��o Informada n�o Encontrada.', EdCodClp);

        end;
      end;
    end;

  end
  else
  begin

    if (Tecla = 'UP') then
    begin

      if FatGerQtiGer.Value > 0 then
      begin

        edAliqCof.enabled := false;
        edAliqPis.enabled := false;
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
        edMotivo.Enabled := False;
        EdVluGe2.Enabled := False;
        EdIpiGe2.Enabled := False;
        EdIcmGe2.Enabled := False;
        EdDesGe2.Enabled := False;
        EdObsGe2.Enabled := False;
        edii.Enabled := False;
        edBCII.Enabled := False;
        edIOF.Enabled := False;
        edDespAdu.Enabled := False;
        //edTotIcmItem.ReadOnly := True;

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
        edii.Font.Style := [fsBold];
        edBCII.Font.Style := [fsBold];
        edIOF.Font.Style := [fsBold];
        edDespAdu.Font.Style := [fsBold];

        if FatGe2.State <> dsBrowse then
          FatGe2.CancelUpdates
        else
        begin

          if not FatGe2.Bof then
            FatGe2.Prior;

        end;

        grGe2.SetFocus;

      end
      else
        EdCodClp.SetFocus;
    end;
  end;
end;

procedure TfmManNge_NFE2.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if (Shift = [ssCtrl]) then
    case Key of
      65:
        begin
          ImportaXLS;
          sysutils.abort;
        end;
    end;

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

        if FatGe2.State = dsBrowse then
        begin

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

    if Trim(FatGe2CodClp.Value) <> '' then
    begin

      if (FatGe2CodClp.Value <> '8') and (FatGe2CodClp.Value <> '9') then
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

procedure TfmManNge_NFE2.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
          ' Where Exists(Select * From EstPro ' +
          ' Where EstPro.CodClp = ' + QuotedStr(FatGe2CodClp.AsString) +
          ' and EstPro.CodGru = EstGru.CodGru)' +
          ' Order by NomGru';
        Open;

      end;

      fmPsqGru.ShowModal;

      if Trim(fmPsqGru.CodGru) <> '' then
      begin

        if FatGe2.State = dsBrowse then
        begin

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

    if Trim(FatGe2CodGru.Value) <> '' then
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

      fmAuxPsq.CodClp := FatGe2CodClp.Value;

      fmAuxPsq.TipoPesq := 'G';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if FatGe2.State = dsBrowse then
        begin

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

    if Trim(FatGe2CodGru.Value) <> '' then
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

procedure TfmManNge_NFE2.EdCodGruExit(Sender: TObject);
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

      if FatGe2.State <> dsBrowse then
      begin

        if Trim(FatGe2CodGru.Value) <> '' then
        begin

          FatGe2CodGru.Value := FNumZeros(FatGe2CodGru.Value, 3);

          if (FatGe2CodGru.Value <> '888') and (FatGe2CodGru.Value <> '999') then
          begin

            with quSql, SQL do
            begin

              Close;
              Text := ' Select Count(*) as Reg From EstGru ' +
                ' Where CodGru = ' + QuotedStr(FatGe2CodGru.Value);
              Open;

            end;

            if quSql.FieldbyName('Reg').AsInteger = 0 then
              fmsgErro('Grupo Informado n�o Encontrado.', EdCodGru);

          end;

        end
        else
          fmsgErro('Grupo Informado n�o Encontrado.', EdCodGru);

      end
      else
      begin

        if EdCodGru.Enabled then
        begin

          if Trim(FatGe2CodGru.Value) = '' then
            fmsgErro('Grupo Informado n�o Encontrado.', EdCodGru);

        end;
      end;
    end;
  end;
end;

procedure TfmManNge_NFE2.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
          ' Where Exists(Select * From EstPro Where EstPro.CodClp = ' + QuotedStr(FatGe2CodClp.Value) +
          '                                     and EstPro.CodGru = EstSub.CodGru' +
          '                                     and EstPro.CodSub = EstSub.CodSub)';

        if Trim(FatGe2CodGru.Value) <> '' then
          Text := Text + '   and CodGru = ' + QuotedStr(FatGe2CodGru.Value);

        Text := Text + ' Order by NomSub';

        Open;

      end;

      fmPsqSub.ShowModal;

      if Trim(fmPsqSub.CodSub) <> '' then
      begin

        if FatGe2.State = dsBrowse then
        begin

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

    if Trim(FatGe2CodSub.Value) <> '' then
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

      if Trim(FatGe2CodGru.Value) <> '' then
        fmAuxPsq.CodGru := FatGe2CodGru.Value;

      fmAuxPsq.CodClp := FatGe2CodClp.Value;

      fmAuxPsq.TipoPesq := 'S';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if FatGe2.State = dsBrowse then
        begin

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

    if Trim(FatGe2CodSub.Value) <> '' then
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

procedure TfmManNge_NFE2.EdCodSubExit(Sender: TObject);
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

      if Trim(FatGe2CodSub.Value) <> '' then
      begin

        if FatGe2.State <> dsBrowse then
        begin

          FatGe2CodSub.Value := FNumZeros(FatGe2CodSub.Value, 4);

          if (FatGe2CodSub.Value <> '8888') and (FatGe2CodSub.Value <> '9999') then
          begin

            with quSql, SQL do
            begin

              Close;
              Text := ' Select Count(*) as Reg From EstSub' +
                ' Where CodGru = ' + QuotedStr(FatGe2CodGru.Value) +
                '   and CodSub = ' + QuotedStr(FatGe2CodSub.Value);
              Open;

              if quSql.FieldbyName('Reg').AsInteger = 0 then
                fmsgErro('Grupo e Sub-Grupo n�o Encontrado.', EdCodGru);

            end;
          end;

        end
        else
        begin

          if EdCodSub.Enabled then
          begin

            if Trim(FatGe2CodSub.Value) = '' then
              fmsgErro('Sub-Grupo Informado n�o Encontrado.', EdCodSub);

          end;
        end;

      end
      else
        fmsgErro('Sub-Grupo Informado n�o Encontrado.', EdCodSub);
    end;
  end;
end;

procedure TfmManNge_NFE2.EdCodSubKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'S';

  sbInfo.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManNge_NFE2.EdCodSubMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'S';

  sbInfo.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManNge_NFE2.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {f1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := FatGe2CodClp.Value;
      fmAuxIni.CodGru := FatGe2CodGru.Value;
      fmAuxIni.CodSub := FatGe2CodSub.Value;

      fmAuxIni.TipoPesq := 'I';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if EdCodClp.Enabled then
        begin

          FatGe2CodClp.Value := fmAuxIni.CodClp;
          FatGe2CodGru.Value := fmAuxIni.CodGru;
          FatGe2CodSub.Value := fmAuxIni.CodSub;
          FatGe2CodPro.Value := fmAuxIni.CodPro;

        end;
      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(FatGe2CodPro.Value) <> '' then
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

      fmAuxPsq.CodClp := FatGe2CodClp.Value;

      if Trim(FatGe2CodGru.Value) <> '' then
        fmAuxPsq.CodGru := FatGe2CodGru.Value;
      if Trim(FatGe2CodSub.Value) <> '' then
        fmAuxPsq.CodSub := FatGe2CodSub.Value;

      fmAuxPsq.TipoPesq := 'I';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if FatGe2.State = dsBrowse then
        begin

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

    if Trim(FatGe2CodPro.Value) <> '' then
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

procedure TfmManNge_NFE2.EdCodProExit(Sender: TObject);
var
  saida         : boolean;
  strCusto      : string;
  VlrCusto      : Double;

  itemJaLancado :       Boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
      saida := True
    else
      saida := False;

    itemJaLancado :=
        StrToInt(fmManGDB.BuscaSimples('','TOTAL','','select count(1) TOTAL from fatge2 where ' +
                                                ' NUMGER = ' + QuotedStr(FatGe2NUMGER.AsString) + ' and ' +
                                                ' CODCLP = ' + QuotedStr(FatGe2CODCLP.AsString) + ' and ' +
                                                ' CODGRU = ' + QuotedStr(FatGe2CODGRU.AsString) + ' and ' +
                                                ' CODSUB = ' + QuotedStr(FatGe2CODSUB.AsString) + ' and ' +
                                                ' CODPRO = ' + QuotedStr(FNumZeros(FatGe2CODPRO.AsString,5)))) > 0;

    if saida then
    begin

      if Trim(FatGe2CodPro.AsString) <> '' then
      begin

        if FatGe2.State <> dsBrowse then
        begin

          FatGe2CodPro.AsString := FNumStrZero(FatGe2CodPro.AsString);

          if (FatGe2CodPro.AsString <> '88888') and (FatGe2CodPro.AsString <> '99999') then
          begin

            with quSQL, SQL do
            begin

              Close;
              Text := ' Select EstPro.CodPro,' +
                ' EstPro.DscPro,' +
                ' EstPro.CodUns,' +
                ' EstPro.CodSt1,' +
                ' EstPro.CodSt2,' +
                ' EstPro.CODNCM ClfSai,' +

              ' EstPro.IpiSai,' +
                ' EstPro.IpiTsd,' +
                ' EstPro.IpiEnt,' +
                ' EstPro.IpiTen,' +

              ' EstPro.CodSts,' +
                ' EstPro.TipSts,' +
                ' EstPro.CodSte,' +
                ' EstPro.TipSte,' +

              ' EstPro.IcmSai,' +
                ' EstPro.IcmTsd,' +
                ' EstPro.IcmEnt,' +
                ' EstPro.IcmTen, ' +
                ' EstPro.ID_ESTICM_SAIDA, EstPro.ID_ESTICM_ENTRADA' +

              ' From EstPro' +
                ' Where EstPro.CodClp = ' + QuotedStr(FatGe2CodClp.AsString) +
                '   and EstPro.CodGru = ' + QuotedStr(FatGe2CodGru.AsString) +
                '   and EstPro.CodSub = ' + QuotedStr(FatGe2CodSub.AsString) +
                '   and EstPro.CodPro = ' + QuotedStr(FatGe2CodPro.AsString);
              Open;

            end;

            if Trim(quSQL.FieldbyName('CodPro').AsString) <> '' then
            begin

              FatGe2DesGe2.AsString := quSQL.FieldbyName('DscPro').AsString;
              FatGe2CodSt1.AsString := quSQL.FieldbyName('CodSt1').AsString;
              FatGe2CodSt2.AsString := quSQL.FieldbyName('CodSt2').AsString;
              FatGe2CodUnd.AsString := quSQL.FieldbyName('CodUns').AsString;
              FatGe2ClsIpi.AsString := Trim(quSQL.FieldbyName('ClfSai').AsString);

              if trim(FatGerMODPFA.asString) <> 'Devolucoes' then
              begin
                if UpperCase(trim(FatGerTIPPFA.AsString)) = 'ENTRADA' then
                begin
                  FatGe2CodStr.AsString := Trim(quSQL.FieldbyName('CodSte').AsString);
                  FatGe2TipStr.AsString := Trim(quSQL.FieldbyName('TipSte').AsString);

                  FatGe2REGICM.AsString := Trim(quSQL.FieldbyName('IcmEnt').AsString);
                  FatGe2TIPICM.AsString := Trim(quSQL.FieldbyName('IcmTen').AsString);

                  FatGe2REGIPI.AsString := Trim(quSQL.FieldbyName('IpiEnt').AsString);
                  FatGe2TIPIPI.AsString := Trim(quSQL.FieldbyName('IpiTen').AsString);

                  FatGe2ID_ESTICM.AsInteger := quSQL.FieldByName('ID_ESTICM_ENTRADA').AsInteger;
                end
                else
                begin
                  FatGe2CodStr.AsString := Trim(quSQL.FieldbyName('CodSts').AsString);
                  FatGe2TipStr.AsString := Trim(quSQL.FieldbyName('TipSts').AsString);

                  FatGe2REGICM.AsString := Trim(quSQL.FieldbyName('IcmSai').AsString);
                  FatGe2TIPICM.AsString := Trim(quSQL.FieldbyName('IcmTsd').AsString);

                  FatGe2REGIPI.AsString := Trim(quSQL.FieldbyName('IpiSai').AsString);
                  FatGe2TIPIPI.AsString := Trim(quSQL.FieldbyName('IpiTsd').AsString);

                  FatGe2ID_ESTICM.AsInteger := quSQL.FieldByName('ID_ESTICM_SAIDA').AsInteger;
                end;
              end
              else
              begin
                //Quando ModPfa Devolu��o
                if UpperCase(trim(FatGerTIPPFA.AsString)) <> 'SAIDA' then
                begin
                  FatGe2CodStr.AsString := Trim(quSQL.FieldbyName('CodSte').AsString);
                  FatGe2TipStr.AsString := Trim(quSQL.FieldbyName('TipSte').AsString);

                  FatGe2REGICM.AsString := Trim(quSQL.FieldbyName('IcmEnt').AsString);
                  FatGe2TIPICM.AsString := Trim(quSQL.FieldbyName('IcmTen').AsString);

                  FatGe2REGIPI.AsString := Trim(quSQL.FieldbyName('IpiEnt').AsString);
                  FatGe2TIPIPI.AsString := Trim(quSQL.FieldbyName('IpiTen').AsString);

                  FatGe2ID_ESTICM.AsInteger := quSQL.FieldByName('ID_ESTICM_ENTRADA').AsInteger;
                end
                else
                begin
                  FatGe2CodStr.AsString := Trim(quSQL.FieldbyName('CodSts').AsString);
                  FatGe2TipStr.AsString := Trim(quSQL.FieldbyName('TipSts').AsString);

                  FatGe2REGICM.AsString := Trim(quSQL.FieldbyName('IcmSai').AsString);
                  FatGe2TIPICM.AsString := Trim(quSQL.FieldbyName('IcmTsd').AsString);

                  FatGe2REGIPI.AsString := Trim(quSQL.FieldbyName('IpiSai').AsString);
                  FatGe2TIPIPI.AsString := Trim(quSQL.FieldbyName('IpiTsd').AsString);

                  FatGe2ID_ESTICM.AsInteger := quSQL.FieldByName('ID_ESTICM_SAIDA').AsInteger;
                end;
              end;

              qusql.Close;
              qusql.sql.text := 'Select CODICM,TIPICM,CODIPI,TIPIPI,FRTICM,SEGICM,DESICM,FRTIPI,SEGIPI,DESIPI,' +
                                '       CSTPIS,CSTIPI,CSTCOF,ALIQPIS,ALIQCOF,TRBPIS,TRBCOF, ID_ESTICM ' +
                                '   from ESTPFA ' +
                                ' left join estipi ipi on ipi.codipi = estpfa.codipi and ipi.tipipi = estpfa.tipipi ' +
                                ' where CODPFA = (Select codpfa from FATGER where codemp = ' + QuotedStr(FatGerCODEMP.asstring) +
                                '                                             and dteger = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FatGerDTEGER.AsDateTime)) +
                                '                                             and numger = ' + QuotedStr(FatGerNUMGER.asstring) + ');';
              qusql.Open;

              //Regra de IPI Padr�o de Faturamento
              if Trim(quSQL.FieldbyName('CODIPI').AsString) <> '' then
              begin
                FatGe2RegIpi.AsString := Trim(quSQL.FieldbyName('CODIPI').AsString);
                FatGe2TipIpi.AsString := Trim(quSQL.FieldbyName('TIPIPI').AsString);
                FatGe2CSTIPI.AsString := Trim(quSQL.FieldbyName('CSTIPI').AsString);
              end;

              //Regra de ICMS Padr�o de Faturamento
              if Trim(quSQL.FieldbyName('CODICM').AsString) <> '' then
              begin
                FatGe2RegIcm.AsString := Trim(quSQL.FieldbyName('CODICM').AsString);
                FatGe2TipIcm.AsString := Trim(quSQL.FieldbyName('TIPICM').AsString);
                FatGe2ID_ESTICM.AsInteger := quSQL.FieldByName('ID_ESTICM').AsInteger;

                // TODO -> Verificar 2024_02
                //FatGe2CodStr.AsString := '';
                FatGe2TipStr.AsString := '';
              end;

              FatGe2TRBPIS.AsString := Trim(quSQL.FieldbyName('TRBPIS').AsString);

              if Trim(quSQL.FieldbyName('TRBPIS').AsString) = 'Nao' then
              begin
                FatGe2CSTPIS.AsString := Trim(quSQL.FieldbyName('CSTPIS').AsString);
                FatGe2ALIQPIS.AsFloat := quSQL.FieldbyName('ALIQPIS').AsFloat;
              end;

              FatGe2TRBCOF.AsString := Trim(quSQL.FieldbyName('TRBCOF').AsString);

              if Trim(quSQL.FieldbyName('TRBCOF').AsString) = 'Nao' then
              begin
                FatGe2CSTCOF.AsString := Trim(quSQL.FieldbyName('CSTCOF').AsString);
                FatGe2ALIQCOF.AsFloat := quSQL.FieldbyName('ALIQCOF').AsFloat;
              end;

              FatGe2FRTICM.AsFloat := quSQL.FieldbyName('FRTICM').AsFloat;
              FatGe2SEGICM.AsFloat := quSQL.FieldbyName('SEGICM').AsFloat;
              FatGe2DESICM.AsFloat := quSQL.FieldbyName('DESICM').AsFloat;

              FatGe2FRTIPI.AsFloat := quSQL.FieldbyName('FRTIPI').AsFloat;
              FatGe2SEGIPI.AsFloat := quSQL.FieldbyName('SEGIPI').AsFloat;
              FatGe2DESIPI.AsFloat := quSQL.FieldbyName('DESIPI').AsFloat;

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select EstIcm.CodIcm,' +
                  ' EstIcm.CodSt2,' +
                  ' EstIcm.PerIcm From EstIcm' +
                  ' Where EstIcm.CodIcm = ' + QuotedStr(FatGe2RegIcm.AsString) +
                  '   and EstIcm.TipIcm = ' + QuotedStr(FatGe2TipIcm.AsString) +
                  '   and EstIcm.UFEMITENTE = ' +
                  QuotedStr(fmManGdb.BuscaSimples('GEREMP', 'SIGUFE', ' CodEmp = ' + FatGe2CodEmp.AsString)) +
                  ' and EstIcm.CodRegTrib = ' + inttostr(FatGerREGTRBEMP.AsInteger);
                Open;
              end;

              if Trim(quSql.FieldbyName('CodIcm').AsString) <> '' then
              begin
                FatGe2IcmGe2.AsFloat := quSql.FieldbyName('PerIcm').AsFloat;

                if quSql.FieldbyName('CodSt2').AsString <> '' then
                  FatGe2CodSt2.AsString := quSql.FieldbyName('CodSt2').AsString;
              end
              else
                FatGe2IcmGe2.AsFloat := 0;

              if FATGERMODPFA.AsString = 'Transferencias' then
              begin

                if copy(FATGE2CodCfo.AsString, 1, 1) = '5' then
                begin
                  FATGE2CodCfo.AsString := '5.152';

                end
                else if copy(FATGE2CodCfo.AsString, 1, 1) = '6' then
                begin
                  FATGE2CodCfo.AsString := '6.152';

                end;
              end;

              with quSQL, SQL do
              begin

                quSQL.Active := False;
                Text := 'SELECT CODCFO,CODST2 ' +
                  ' FROM ESTUFE ' +
                  ' WHERE ESTUFE.CODSTR = ' + QuotedStr(FatGe2CodStr.AsString) +
                  ' AND ESTUFE.TIPSTR = ' + QuotedStr(FatGe2TipStr.AsString) +
                  ' AND ESTUFE.SIGUFE = ' + QuotedStr(FATGERUFEGER.AsString) +
                  ' and estufe.ufemitente = ' + QuotedStr(fmManGdb.BuscaSimples('GEREMP', 'SIGUFE', ' CODEMP = ' + FatGerCodEmp.AsString)) +
                  ' and estufe.codregtrib = ' + FATGERREGTRBEMP.AsString;
                quSQL.Active := True;
              end;

              if not QuSQL.IsEmpty then
              begin

                if trim(FatGerMODPFA.asString) = 'Devolucoes' then
                  FATGE2CODCFO.AsString := quSql.FieldbyName('CODCFO').AsString;

                FATGE2CODST2.AsString := quSql.FieldbyName('CODST2').AsString;

                if FATGERMODPFA.AsString = 'Transferencias' then
                begin
                  if fatgertippfa.AsString = 'Saida' then
                  begin
                    if copy(FATGE2CodCfo.AsString, 1, 1) = '5' then
                    begin
                      //FATGE2CodCfo.AsString := '';
                    end
                    else if copy(FATGE2CodCfo.AsString, 1, 1) = '6' then
                    begin
                      FATGE2CodCfo.AsString := '6.409';
                    end
                  end;

                  if fatgertippfa.AsString = 'Entrada' then
                  begin
                    if copy(FATGE2CodCfo.AsString, 1, 1) = '1' then
                    begin
                      FATGE2CodCfo.AsString := '1.409';
                    end
                    else if copy(FATGE2CodCfo.AsString, 1, 1) = '2' then
                    begin
                      FATGE2CodCfo.AsString := '2.409';
                    end
                  end;

                end;

                if FATGERMODPFA.AsString = 'Devolucoes' then
                begin
                  if fatgertippfa.AsString = 'Saida' then
                  begin
                    if (copy(FATGE2CodCfo.AsString, 1, 1) = '5') or (copy(FATGE2CodCfo.AsString, 1, 1) = '1') then
                    begin
                      FATGE2CodCfo.AsString := '5.411';
                    end
                    else if (copy(FATGE2CodCfo.AsString, 1, 1) = '6') or (copy(FATGE2CodCfo.AsString, 1, 1) = '2') then
                    begin
                      FATGE2CodCfo.AsString := '6.411';
                    end;
                  end;

                  if fatgertippfa.AsString = 'Entrada' then
                  begin
                    if (copy(FATGE2CodCfo.AsString, 1, 1) = '5') or (copy(FATGE2CodCfo.AsString, 1, 1) = '1') then
                    begin
                      FATGE2CodCfo.AsString := '1.411';
                    end
                    else if (copy(FATGE2CodCfo.AsString, 1, 1) = '6') or (copy(FATGE2CodCfo.AsString, 1, 1) = '2') then
                    begin
                      FATGE2CodCfo.AsString := '2.411';
                    end;
                  end;

                end;
              end;

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select EstIpi.CodIpi,' +
                  ' EstIpi.PerIpi,ALIQ_PIS,ALIQ_COF,CSTIPI,CSTPIS,CSTCOF,PERIMP ' +
                  ' From EstIpi' +
                  ' Where EstIpi.CodIpi = ' + QuotedStr(FatGe2RegIpi.AsString) +
                  '   and EstIpi.TipIpi = ' + QuotedStr(FatGe2TipIpi.AsString);
                Open;

              end;

              FatGe2PERIMPII.AsFloat := quSql.FieldbyName('PERIMP').AsFloat;

              if Trim(quSql.FieldbyName('CodIpi').AsString) <> '' then
                begin
                   FatGe2IpiGe2.AsFloat := quSql.FieldbyName('PerIpi').AsFloat;
                   FatGe2CSTIPI.AsString := Trim(quSQL.FieldbyName('CSTIPI').AsString);
                end
              else
                FatGe2IpiGe2.Value := 0;

              if Trim(FatGe2TRBPIS.AsString) = 'Sim' then
              begin
                FatGe2ALIQPIS.AsFloat := quSql.FieldbyName('ALIQ_PIS').AsFloat;
                FatGe2CSTPIS.AsString := quSql.FieldbyName('CSTPIS').AsString;
              end;

              if Trim(FatGe2TRBCOF.AsString) = 'Sim' then
              begin
                FatGe2CSTCOF.AsString := quSql.FieldbyName('CSTCOF').AsString;
                FatGe2ALIQCOF.AsFloat := quSql.FieldbyName('ALIQ_COF').AsFloat;
              end;

              with quSql, SQL do
              begin
                Close;
                Text := ' Select EstIte.CodPro,' +
                  ' VMEITE,VpfIte,VPRITE,VREITE,VCRITE,VCPITE,VPFOUT,VCHITE,CSTITE ' +
                  ' From EstIte' +
                  ' Where EstIte.CodEmp = ' + QuotedStr(FatGe2CodEmp.AsString) +
                  '   and EstIte.CodClp = ' + QuotedStr(FatGe2CodClp.AsString) +
                  '   and EstIte.CodGru = ' + QuotedStr(FatGe2CodGru.AsString) +
                  '   and EstIte.CodSub = ' + QuotedStr(FatGe2CodSub.AsString) +
                  '   and EstIte.CodPro = ' + QuotedStr(FatGe2CodPro.AsString);
                Open;
                First;
              end;

              if quSql.FieldbyName('CodPro').AsString = FatGe2CodPro.AsString then
              begin

                strCusto := fmManGdb.BuscaSimples('ESTPAR', 'FLGTAB', ' 1 = 1 ');
                if strCusto = 'Ultimo Preco' then
                  VlrCusto := quSql.FieldbyName('CSTITE').AsFloat
                else if strCusto = 'Custo Historico' then
                  VlrCusto := quSql.FieldbyName('VCHITE').AsFloat
                else if strCusto = 'Ultimo Custo(CIF)' then
                  VlrCusto := quSql.FieldbyName('VPFOUT').AsFloat
                else if strCusto = 'Custo Ponderado' then
                  VlrCusto := quSql.FieldbyName('VCPITE').AsFloat
                else if strCusto = 'Custo Referencial' then
                  VlrCusto := quSql.FieldbyName('VCRITE').AsFloat
                else if strCusto = 'Custo Historico (G)' then
                  VlrCusto := quSql.FieldbyName('VREITE').AsFloat
                else if strCusto = 'Custo Ponderado (G)' then
                  VlrCusto := quSql.FieldbyName('VPRITE').AsFloat
                else if strCusto = 'Media Ponderada (E)' then
                  VlrCusto := quSql.FieldbyName('VpfIte').AsFloat
                else if strCusto = 'Custo da Ultima Compra' then
                  VlrCusto := quSql.FieldbyName('VMEITE').AsFloat;

                FatGe2CstGe2.AsFloat := VlrCusto;
                FatGe2VluGe2.AsFloat := VlrCusto;

                AntVluGe2 := FatGe2VluGe2.AsFloat;

                FatGe2TotGe2.AsFloat := fRound(FatGe2VluGe2.AsFloat * FatGe2QtpGe2.AsFloat, 2);

                with quSql, SQL do
                begin

                  Close;
                  Text := ' Select Count(*) as QtdReg from EstQte ' +
                    ' Where EstQte.CodEmp = ' + QuotedStr(IntToStr(FatGe2CodEmp.Value)) +
                    '   and EstQte.CodClp = ' + QuotedStr(FatGe2CodClp.Value) +
                    '   and EstQte.CodGru = ' + QuotedStr(FatGe2CodGru.Value) +
                    '   and EstQte.CodSub = ' + QuotedStr(FatGe2CodSub.Value) +
                    '   and EstQte.CodPro = ' + QuotedStr(FatGe2CodPro.Value) +
                    '   and EstQte.CodTam = ' + QuotedStr(FatGe2CodTam.Value) +
                    '   and EstQte.CodCor = ' + QuotedStr(FatGe2CodCor.Value);
                  Open;

                  if FieldbyName('QtdReg').AsInteger = 0 then
                    fmsgErro('Item Informado n�o Encontrado no Estoque da Empresa.', EdCodPro);

                end;

              end
              else
                fmsgErro('Item Informado n�o Encontrado na Empresa.', EdCodPro);

            end
            else
              fmsgErro('Item Informado n�o Encontrado.', EdCodPro);

          end;

        end
        else
        begin

          if EdCodPro.Enabled then
          begin

            if Trim(FatGe2CodPro.Value) = '' then
              fmsgErro('Item Informado n�o Encontrado.', EdCodPro);

          end;
        end;

      end
      else
        fmsgErro('Item Informado n�o Encontrado.', EdCodPro);
    end;
  end;
end;

procedure TfmManNge_NFE2.EdQtpGe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  sbInfo.Panels[0].Text := 'F4-Estoque'

end;

procedure TfmManNge_NFE2.EdQtpGe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  sbInfo.Panels[0].Text := 'F4-Estoque'

end;

procedure TfmManNge_NFE2.EdQtpGe2Exit(Sender: TObject);
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

      if FatGe2.State <> dsBrowse then
      begin

        if FatGe2QtpGe2.Value > 0 then
          FatGe2TotIte.Value := fRound(FatGe2VluGe2.Value * FatGe2QtpGe2.Value, 2)
        else
        begin

          if (FatGe2CodClp.Value <> '8') and (FatGe2CodClp.Value <> '9') then
          begin
            with quSql, SQL do
            begin
              Close;
              Text := ' Select EstPfa.ModPfa' +
                ' From EstPfa' +
                ' Where EstPfa.CodPfa = ' + QuotedStr(FatGerCodPfa.Value) +
                '   and EstPfa.TipPfa = ' + QuotedStr(FatGerTipPfa.Value);
              Open;
            end;
            if (quSQL.FieldbyName('ModPfa').AsString <> 'Complemento') then
              fmsgErro('Campo de Preenchimento Obrigatorio.', EdQtpGe2);

          end;
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

procedure TfmManNge_NFE2.EdVluGe2Exit(Sender: TObject);
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

      if FatGe2.State <> dsBrowse then
      begin

        if FatGe2VluGe2.Value > 0 then
        begin

          if FatGe2VluGe2.Value <> AntVluGe2 then
          begin

            AntVluGe2 := FatGe2VluGe2.Value;

            FatGe2TotIte.Value := fRound(FatGe2VluGe2.Value * FatGe2QtpGe2.Value, 2);

          end;

        end
        else
        begin

          if (FatGe2CodClp.Value <> '8') and (FatGe2CodClp.Value <> '9') then
            fmsgErro('Campo de Preenchimento Obrigatorio.', EdVluGe2);

        end;
      end;
    end;
  end;
end;

procedure TfmManNge_NFE2.EdCodSt1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqSt1 := TfmPsqSt1.Create(Self);

      fmPsqSt1.ShowModal;

      if Trim(fmPsqSt1.CodSt1) <> '' then
        FatGe2CodSt1.Value := fmPsqSt1.CodSt1;

    finally

      FreeAndNil(fmPsqSt1);

    end;

    if Trim(FatGe2CodSt1.Value) <> '' then
    begin

      if EdCodSt2.Enabled then
        EdCodSt2.SetFocus
      else
        EdCodSt1.SetFocus;

    end
    else
      EdCodSt1.SetFocus;
  end;

  if ((key = vk_return) or (Key = vk_tab)) then
  begin
    if (FatGe2CODCLP.AsString = '9') then
    begin
      EdCodSt2.SetFocus;
    end;
  end;
end;

procedure TfmManNge_NFE2.EdCodSt2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqSt2 := TfmPsqSt2.Create(Self);

      fmPsqSt2.ShowModal;

      if Trim(fmPsqSt2.CodSt2) <> '' then
        FatGe2CodSt2.Value := fmPsqSt2.CodSt2;

    finally

      FreeAndNil(fmPsqSt2);

    end;

    if Trim(FatGe2CodSt2.Value) <> '' then
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

procedure TfmManNge_NFE2.EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqUnd := TfmPsqUnd.Create(Self);

      fmPsqUnd.ShowModal;

      if Trim(fmPsqUnd.CodUnd) <> '' then
        FatGe2CodUnd.Value := fmPsqUnd.CodUnd;

    finally

      FreeAndNil(fmPsqUnd);

    end;

    if Trim(FatGe2CodUnd.Value) <> '' then
    begin

      if EdQtpGe2.Enabled then
        EdQtpGe2.SetFocus
      else
        EdCodUnd.SetFocus;

    end
    else
      EdCodUnd.SetFocus;

  end;
end;

procedure TfmManNge_NFE2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
   codDescCustomizados  :       Integer;
begin
  inherited;

  codDescCustomizados := StrToIntDef(fmManGDB.BuscaSimples('FATPAR','CUSTOM_COD_DESC',' 1 = 1'),0);

  if (Shift = [ssCtrl]) then
    case Key of
      82:
        begin
          if (codDescCustomizados = 1) then
             begin
                pnReferencia.Visible := True;
                pnReferencia.BringToFront;

                EdDesGe2_1.Enabled := True;
                EdObsGe2_1.Enabled := True;

                EdDesGe2_1.ReadOnly := False;
                EdObsGe2_1.ReadOnly := False;
             end;
        end;
    end;

  if (EdCodClp.Focused) or (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then
  begin
    if key = 114 then
    begin {F3 - Descri��o}

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := FatGe2CodClp.Value;
        fmAuxIni.CodGru := FatGe2CodGru.Value;
        fmAuxIni.CodSub := FatGe2CodSub.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            FatGe2CodClp.Value := fmAuxIni.CodClp;
            FatGe2CodGru.Value := fmAuxIni.CodGru;
            FatGe2CodSub.Value := fmAuxIni.CodSub;
            FatGe2CodPro.Value := fmAuxIni.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      if Trim(FatGe2CodPro.Value) <> '' then
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
    begin {F5 - Refer�ncia}

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := FatGe2CodClp.Value;
        fmAuxIni.CodGru := FatGe2CodGru.Value;
        fmAuxIni.CodSub := FatGe2CodSub.Value;

        fmAuxIni.TipoPesq := 'R';

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            FatGe2CodClp.Value := fmAuxIni.CodClp;
            FatGe2CodGru.Value := fmAuxIni.CodGru;
            FatGe2CodSub.Value := fmAuxIni.CodSub;
            FatGe2CodPro.Value := fmAuxIni.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      if Trim(FatGe2CodPro.Value) <> '' then
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
    begin {F6 - Inteligente/Descri��o}

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := FatGe2CodClp.Value;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            FatGe2CodClp.Value := fmAuxPsq.CodClp;
            FatGe2CodGru.Value := fmAuxPsq.CodGru;
            FatGe2CodSub.Value := fmAuxPsq.CodSub;
            FatGe2CodPro.Value := fmAuxPsq.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if Trim(FatGe2CodPro.Value) <> '' then
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
    begin {F7 - Inteligente/Refer�ncia}

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := FatGe2CodClp.Value;

        fmAuxPsq.TipoPesq := 'R';

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            FatGe2CodClp.Value := fmAuxPsq.CodClp;
            FatGe2CodGru.Value := fmAuxPsq.CodGru;
            FatGe2CodSub.Value := fmAuxPsq.CodSub;
            FatGe2CodPro.Value := fmAuxPsq.CodPro;

          end;
        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if Trim(FatGe2CodPro.Value) <> '' then
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

      if (Trim(FatGe2CodGru.Value) <> '') or
        (Trim(FatGe2CodSub.Value) <> '') or
        (Trim(FatGe2CodPro.Value) <> '') then
      begin

        with fmPsqEst.EstPro, SQL do
        begin

          Close;
          Text := ' Select EstPro.CodClp,' +
            ' EstPro.CodGru,' +
            ' EstPro.CodSub,' +
            ' EstPro.CodPro,' +
            ' EstPro.DscPro,' +
            ' EstPro.RefPro,' +
            ' EstPro.LocPro,' +
            ' EstPro.CodUne,' +
            ' EstPro.CodUns,' +
            ' EstPro.QtePro,' +
            ' EstPro.QtsPro,' +
            ' EstPro.SaiIpi,' +
            ' EstPro.CODNCM ClfSai,' +
            ' EstPro.SaiIcm,' +
            ' EstPro.SimPro,' +
            ' EstPro.CodSt1,' +
            ' EstPro.CodSt2,' +
            ' EstPro.QtdEmb,' +
            ' EstPro.ImgPro,' +
            ' EstPro.FlgPro,' +
            ' EstPro.CbaPro,' +
            ' EstPro.WebPro,' +
            ' EstPro.CodCat,' +
            ' EstPro.CodTip,' +
            ' EstPro.CodMrc,' +
            ' EstPro.NumPro,' +
            ' EstPro.QtdVol,' +
            ' EstPro.CodAnt' +
            ' From EstPro' +
            ' Where EstPro.CodClp = ''' + '1' + '''' +
            '   and EstPro.FlbPro = ''' + ' ' + '''';

          if Trim(FatGe2CodGru.Value) <> '' then
            Text := Text + ' and EstPro.CodGru = ''' + FatGe2CodGru.Value + '''';
          if Trim(FatGe2CodSub.Value) <> '' then
            Text := Text + ' and EstPro.CodSub = ''' + FatGe2CodSub.Value + '''';
          if Trim(FatGe2CodPro.Value) <> '' then
            Text := Text + ' and EstPro.CodPro = ''' + FatGe2CodPro.Value + '''';

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

    if Trim(FatGe2CodPro.Value) <> '' then
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

      if FatGe2.State <> dsBrowse then
      begin
        FatGe2.Cancel;
        FatGe2.CancelUpdates;
      end;

      EdCodClp.Enabled := False;
      EdCodGru.Enabled := False;
      edAliqCof.enabled := false;
      edAliqPis.enabled := false;
      EdCodSub.Enabled := False;
      EdCodPro.Enabled := False;
      EdCodCfo.Enabled := False;
      EdClsIpi.Enabled := False;
      EdCodSt1.Enabled := False;
      EdCodSt2.Enabled := False;
      EdCodUnd.Enabled := False;
      EdQtpGe2.Enabled := False;
      edMotivo.Enabled := False;
      EdVluGe2.Enabled := False;
      EdIpiGe2.Enabled := False;
      EdIcmGe2.Enabled := False;
      EdDesGe2.Enabled := False;
      EdObsGe2.Enabled := False;
      edii.Enabled := False;
      edBCII.Enabled := False;
      edIOF.Enabled := False;
      edDespAdu.Enabled := False;
      //edTotIcmItem.ReadOnly := True;

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
      edii.Font.Style := [fsBold];
      edBCII.Font.Style := [fsBold];
      edIOF.Font.Style := [fsBold];
      edDespAdu.Font.Style := [fsBold];

      grGe2.SetFocus;

    end
    else
    begin

      if EdDesGe2.Enabled then
      begin

        if FatGe2.State <> dsBrowse then
          FatGe2.CancelUpdates;

        EdDesGe2.Enabled := False;
        EdObsGe2.Enabled := False;

        EdDesGe2.Font.Style := [fsBold];
        EdObsGe2.Font.Style := [fsBold];

        grGe2.SetFocus;

      end
      else
      begin

        if not EdBasIc1.ReadOnly then
        begin

          if FatGer.State <> dsBrowse then
            FatGer.CancelUpdates;

          EdBasIc1.ReadOnly := True;
          EdTotIc1.ReadOnly := True;
          EdBasSu1.ReadOnly := True;
          EdTotSu1.ReadOnly := True;
          EdTotIt1.ReadOnly := True;
          EdTotFrt.ReadOnly := True;
          EdTotSeg.ReadOnly := True;
          EdTotDes.ReadOnly := True;
          EdTotIp1.ReadOnly := True;
          EdTotGe1.ReadOnly := True;


          grGe2.SetFocus;

        end
        else
        begin

          if grGe2.Focused then
            Close
          else
          begin

            if FatGer.State <> dsBrowse then
              Close;

          end;
        end;
      end;
    end;
  end;

  if key = 123 then
  begin {F12-Finalizar Pedido}

    if FatGerQtiGer.Asinteger > 0 then
    begin

      if FlgTemDI then
        ValidaDI;

      if (UPPERCASE(Trim(FatGerMODPFA.AsString)) = 'DEVOLUCOES') or (UPPERCASE(Trim(FatGerMODPFA.AsString)) = 'COMPLEMENTO') then
        ValidaDanfeRef;

      if grGe2.Focused then
      begin

        try

          fmManNg1_NFE := TfmManNg1_NFE.Create(Self);

          fmManNg1_NFE.ShowModal;

        finally

          FreeAndNil(fmManNg1_NFE);

        end;

        if Finalizar = 'S' then
        begin

          Finalizar := 'N';

          EdTipPfa.Clear;
          EdCodEmp.Clear;
          EdDteFat.Clear;
          EdCodCli.Clear;
          EdCodVen.Clear;
          EdCodPfa.Clear;
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

procedure TfmManNge_NFE2.grGe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroGe2: integer;
begin
  inherited;

  if key = vk_F5 then
  begin
    if fatger.Active = True then
    begin

      tsFixar.TabVisible := not tsFixar.TabVisible;
      tsCalculado.TabVisible := not tsCalculado.TabVisible;

      if tsFixar.TabVisible then
        PageControl1.ActivePage := tsFixar;

      if tsCalculado.TabVisible then
        PageControl1.ActivePage := tsCalculado;

      if FatGe2CodEmp.AsInteger > 0 then
      begin
        EdBasIc1.ReadOnly := False;
        EdTotIc1.ReadOnly := False;
        EdBasSu1.ReadOnly := False;
        EdTotSu1.ReadOnly := False;
        EdTotIt1.ReadOnly := False;
        EdTotFrt.ReadOnly := False;
        EdTotSeg.ReadOnly := False;
        EdTotDes.ReadOnly := False;
        EdTotIp1.ReadOnly := False;
        EdTotGe1.ReadOnly := False;

        EdBasIc1.Value := FatGerBasIc1.AsFloat;
        EdTotIc1.Value := FatGerTotIc1.AsFloat;
        EdBasSu1.Value := FatGerBasSu1.AsFloat;
        EdTotSu1.Value := FatGerTotSu1.AsFloat;
        EdTotIt1.Value := FatGerTotIt1.AsFloat;
        EdTotFrt.Value := FatGerTotFrt.AsFloat;
        EdTotSeg.Value := FatGerTotSeg.AsFloat;
        EdTotDes.Value := FatGerTotDes.AsFloat;
        EdTotIp1.Value := FatGerTotIp1.AsFloat;
        EdTotGe1.Value := FatGerTotGe1.AsFloat;

        FatGer.Edit;

        if tsFixar.TabVisible then
          EdBasIc1.SetFocus;

      end;
    end;
  end;

  if key = vk_return then
  begin {Tecla - ENTER}

    if FatGe2CodEmp.Value > 0 then
    begin

      FatGe2.Edit;

      EdDesGe2.Enabled := False;  // mauricio readyonly
      EdObsGe2.Enabled := False;
      EdDesGe2_1.Enabled := True;

      if FatGe2CodClp.Value <> '8' then
      begin

        EdCodCfo.Enabled := True;
        EdClsIpi.Enabled := True;
        EdCodSt1.Enabled := True;
        EdCodSt2.Enabled := True;
        EdCodUnd.Enabled := True;
        EdQtpGe2.Enabled := True;

        if trim(FatGe2CODST2.asString) <> '' then
          if FatGe2CODST2.Asinteger in [20, 30, 40, 41, 50, 70, 90] then
            edMotivo.Enabled := True;

        EdVluGe2.Enabled := True;
        EdIpiGe2.Enabled := True;
        EdIcmGe2.Enabled := True;
        edAliqCof.enabled := True;
        edAliqPis.enabled := True;
        EdObsGe2.Enabled := True;
        EdObsGe2_1.Enabled := True;

        if trim(FatGe2CodCfo.AsString) = '1.604' then
          edTotIcmItem.ReadOnly := False;

        if FatGe2CODCFO.AsString[1] = '3' then
        begin
          edii.Enabled      := True;
          edBCII.Enabled    := True;
          edIOF.Enabled     := True;
          edDespAdu.Enabled := True;

        end
        else
        begin
          edii.Enabled      := False;
          edBCII.Enabled    := False;
          edIOF.Enabled     := False;
          edDespAdu.Enabled := False;

        end;

        EdCodCfo.Font.Style := [];
        EdClsIpi.Font.Style := [];
        EdCodSt1.Font.Style := [];
        EdCodSt2.Font.Style := [];
        EdCodUnd.Font.Style := [];
        EdQtpGe2.Font.Style := [];
        EdVluGe2.Font.Style := [];
        EdIpiGe2.Font.Style := [];
        EdIcmGe2.Font.Style := [];
        EdObsGe2.Font.Style := [];
        edii.Font.Style := [];
        edBCII.Font.Style := [];
        edIOF.Font.Style := [];
        edDespAdu.Font.Style := [];

        if FatGe2CodClp.Value <> '9' then
        begin

          EdDesGe2.enabled := True; EdDesGe2_1.enabled := True;
          EdObsGe2.Enabled := True; EdObsGe2_1.Enabled := True;

          EdDesGe2.Font.Style := [];
          EdObsGe2.Font.Style := [];

        end;

        EdQtpGe2.SetFocus;

      end
      else
      begin

        EdDesGe2.enabled := True; EdDesGe2_1.enabled := True;
        EdObsGe2.Enabled := True; EdObsGe2_1.Enabled := True;

        EdDesGe2.Font.Style := [];
        EdObsGe2.Font.Style := [];

        EdDesGe2.SetFocus;

      end;
    end;
  end;

  if key = 40 then
  begin {Tecla - Seta para Baixo}

    if FatGe2NroGe2.Value = FatGerQtiGer.Value then
      FatGe2.Append;

  end;

  if key = 46 then
  begin {Tecla - DEL}

    if FatGe2CodEmp.Value > 0 then
    begin

      NroGe2 := FatGe2NroGe2.Value;

      FatGe2.Delete;

      with FatGe2 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
        ;

        try

          ApplyUpdates; {Tenta aplicar as altera��es}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
          ;

          if FatGe2.State <> dsBrowse then
            FatGe2.CancelUpdates;

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
        FatGe2.Locate('CodEmp;DteGer;NumGer;NroGe2', VarArrayOf([FatGe2CodEmp.Value, FatGe2DteGer.Value, FatGe2NumGer.Value, NroGe2]), [LoPartialKey])
      else
      begin

        if FatGerQtiGer.Value = 0 then
          FatGe2.Append
        else
          FatGe2.Last;

      end;

    end;
  end;

  if key = vk_f8 then
  begin
    MostraDI;
  end;

end;

procedure TfmManNge_NFE2.FormShow(Sender: TObject);
begin
  inherited;
  if fmManGer_NFE.CodEmp > 0 then
  begin

    sEntr := 'S';

    FatGer.Close;
    FatGer.Params[0].AsInteger := fmManGer_NFE.CodEmp;
    FatGer.Params[1].AsDateTime := fmManGer_NFE.DteGer;
    FatGer.Params[2].AsInteger := fmManGer_NFE.NumGer;
    FatGer.Open;

    FatGe2.Close;
    FatGe2.Params[0].AsInteger := FatGerCodEmp.Value;
    FatGe2.Params[1].AsDateTime := FatGerDteGer.Value;
    FatGe2.Params[2].AsInteger := FatGerNumGer.Value;
    FatGe2.Open;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select GerEmp.ApeEmp' +
        ' From GerEmp' +
        ' Where GerEmp.CodEmp = :CodEmp';

      if GFlgAce = 'Sim' then
        Text := Text + ' and GerEmp.CodFil > ' + QuotedStr('0');

      with Params do
      begin

        Params[0].AsInteger := FatGerCodEmp.Value;

      end;

      Open;

      edNomEmp.Text := FieldbyName('ApeEmp').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomVen From FinVen' +
        ' Where CodVen = :CodVen';

      with Params do
      begin

        Params[0].AsInteger := FatGerCodVen.Value;

      end;

      Open;

      edNomVen.Text := FieldbyName('NomVen').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select DscPfa From EstPfa' +
        ' Where TipPfa = :TipPfa' +
        '   and CodPfa = :CodPfa';

      with Params do
      begin

        Params[0].AsString := FatGerTipPfa.Value;
        Params[1].AsString := FatGerCodPfa.Value;

      end;

      Open;

      edDescPfa.Text := FieldbyName('DscPfa').AsString;

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select NomCli,CgcCli,UffCli From FinCli' +
        ' Where CodCli = :CodCli';

      with Params do
      begin

        Params[0].AsInteger := FatGerCodCli.Value;

      end;

      Open;

    end;

    edNomCli.Text := quSQL.FieldbyName('NomCli').AsString;

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

    sbInfo.Panels[0].Text := '';

    FatGer.Insert;

    EdTipPfa.SetFocus;

  end;
end;

procedure TfmManNge_NFE2.FatGe2NewRecord(DataSet: TDataSet);
begin
  inherited;

  FatGe2.DisableControls;
  try

    with quSql, SQL do
    begin

      Close;
      Text := ' Select Count(*) as Reg From FatGe2 ' +
        ' Where CodEmp = :CodEmp' +
        '   and DteGer = :DteGer' +
        '   and NumGer = :NumGer';

      with Params do
      begin

        Params[0].AsInteger := FatGerCodEmp.Value;
        Params[1].AsDateTime := FatGerDteGer.Value;
        Params[2].AsInteger := FatGerNumGer.Value;

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
//    FatGe2codipi

    FatGe2NumGer.Asinteger := FatGerNumGer.Asinteger;
    FatGe2SeqGe2.Asinteger := FatGerSeqIte.Asinteger + 1;
    FatGe2NroGe2.Asinteger := quSql.FieldbyName('Reg').AsInteger + 1;

    FatGe2.EnableControls;

    AntVluGe2 := FatGe2VluGe2.AsFloat;

    EdDesGe2.Enabled := false; EdDesGe2_1.Enabled := false;
    EdObsGe2.Enabled := false; EdObsGe2_1.Enabled := false;
    edAliqCof.enabled := true;
    edAliqPis.enabled := true;
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

    if trim(FatGe2CODST2.asString) <> '' then
      if FatGe2CODST2.Asinteger in [20, 30, 40, 41, 50, 70, 90] then
        edMotivo.Enabled := True;

    EdVluGe2.Enabled := True;
    EdIpiGe2.Enabled := True;
    EdIcmGe2.Enabled := True;
    EdDesGe2.enabled := True; EdDesGe2_1.enabled := True;
    EdObsGe2.Enabled := True; EdObsGe2_1.Enabled := True;

    if trim(FatGe2CodCfo.AsString) = '1.604' then
      edTotIcmItem.ReadOnly := False;

    if FatGe2CODCFO.AsString[1] = '3' then
    begin
      edii.Enabled := True;
      edBCII.Enabled := True;
      edIOF.Enabled := True;
      edDespAdu.Enabled := True;

    end
    else
    begin
      edii.Enabled := False;
      edBCII.Enabled := false;
      edIOF.Enabled := False;
      edDespAdu.Enabled := False;

    end;

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
    edii.Font.Style := [];
    edBCII.Font.Style := [];
    edIOF.Font.Style := [];
    edDespAdu.Font.Style := [];

    EdCodClp.SetFocus;
  finally
    FatGer.EnableControls;
  end;

end;

procedure TfmManNge_NFE2.Panel3Exit(Sender: TObject);
var
  NroGe2: integer;
  bmLocalImportante: TBookmark;
  inserindo : Boolean;
begin
  inherited;
  //===========================

  if not flgXLS then
  begin

    if psaida = 'Sim' then
    begin
      if FatGe2.State <> dsBrowse then
      begin
        if (FatGe2CodClp.AsString <> '8') and (FatGe2CodClp.AsString <> '9') then
        begin

          if FatGe2VluGe2.AsFloat = 0 then
            if ((FatGerMODPfa.AsString <> 'Complemento')) then
              fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdVluGe2);
          if FatGe2QtpGe2.AsFloat = 0 then
          begin
            if FatGe2CodCfo.Asstring <> '1.604' then
            begin
              with quSql, SQL do
              begin
                Close;
                Text := ' Select EstPfa.ModPfa' +
                  ' From EstPfa' +
                  ' Where EstPfa.CodPfa = ' + QuotedStr(FatGerCodPfa.Value) +
                  '   and EstPfa.TipPfa = ' + QuotedStr(FatGerTipPfa.Value);
                Open;
              end;
              if (FatGerMODPfa.AsString <> 'Complemento') then
                fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdQtpGe2);
            end;
          end;
        end
        else
        begin

          if EdDesGe2.Enabled and (Trim(FatGe2DesGe2.Value) = '') then
            fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdDesGe2);

        end;
        try
          bmLocalImportante := fatge2.GetBookMark;
          inserindo := dsGe2.State = dsInsert;

          FatGe2CODST1.Value:= FatGe2CODST1.Value;

          NroGe2 := FatGe2NroGe2.Value;

          FatGe2.Post;            //aqui
          FatGe2.ApplyUpdates;
          FatGe2.CommitUpdates;

          FatGe2.Close;
          FatGe2.Params[0].AsInteger := FatGerCodEmp.AsInteger;
          FatGe2.Params[1].AsDateTime:= FatGerDteGer.AsDateTime;
          FatGe2.Params[2].AsInteger := FatGerNumGer.AsInteger;                                                                            //LoPartialKey
          FatGe2.Open;

          if FatGe2.Locate('CodEmp;DteGer;NumGer;NroGe2', VarArrayOf([FatGe2CodEmp.Value,
                                                                      FatGe2DteGer.Value,
                                                                      FatGe2NumGer.Value,
                                                                      NroGe2]), [loCaseInsensitive]) then
            MostraDI;

          FatGer.Close;
          FatGer.Open;
          if bmLocalImportante <> Nil then
            FatGe2.GotoBookMark(bmLocalImportante);
        finally

          FatGe2.FreeBookMark(bmLocalImportante);
        end;

        if(inserindo) then
           begin
              FatGe2.Append;
              EdCodClp.SetFocus;
           end
        else
           begin
              grGe2.setFocus;
              FatGe2.Locate('CodEmp;DteGer;NumGer;NroGe2', VarArrayOf([FatGe2CodEmp.Value, FatGe2DteGer.Value, FatGe2NumGer.Value, NroGe2]), [LoPartialKey]);
           end;

      end
      else
      begin
        if (Tecla <> 'UP') and (Tecla <> 'ESC') then
        begin
          NroGe2 := FatGe2NroGe2.Value;

          with FatGe2 do
          begin

            fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}

            try
              ApplyUpdates; {Tenta aplicar as altera��es}

              fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}

            except

              fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}

              if FatGe2.State = dsBrowse then
                FatGe2.Edit;

              if EdCodClp.CanFocus then
                EdCodClp.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;

          FatGe2.Close;
          FatGe2.Open;

          FatGe2.Locate('CodEmp;DteGer;NumGer;NroGe2', VarArrayOf([FatGe2CodEmp.Value, FatGe2DteGer.Value, FatGe2NumGer.Value, NroGe2]), [LoPartialKey]);

          FatGer.Close;
          FatGer.Open;

          if FatGe2NroGe2.Value = FatGerQtiGer.Value then
          begin
            FatGe2.Append;
          end
          else
          begin

            FatGe2.Next;
            edAliqCof.enabled := false;
            edAliqPis.enabled := false;
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
            edMotivo.Enabled := False;
            EdVluGe2.Enabled := False;
            EdIpiGe2.Enabled := False;
            EdIcmGe2.Enabled := False;
            EdDesGe2.Enabled := False;
            EdObsGe2.Enabled := False;
            edii.Enabled := False;
            edBCII.Enabled := False;
            edIOF.Enabled := False;
            edDespAdu.Enabled := False;

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
            edii.Font.Style := [fsBold];
            edBCII.Font.Style := [fsBold];
            edIOF.Font.Style := [fsBold];
            edDespAdu.Font.Style := [fsBold];

            EdObsGe2.Enabled := True;

            grGe2.SetFocus;

          end;
        end;
      end;

    end
    else
    begin
      edAliqCof.enabled := false;
      edAliqPis.enabled := false;
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
      edMotivo.Enabled := False;
      EdVluGe2.Enabled := False;
      EdIpiGe2.Enabled := False;
      EdIcmGe2.Enabled := False;
      EdDesGe2.Enabled := False;
      EdObsGe2.Enabled := False;
      edii.Enabled := False;
      edBCII.Enabled := False;
      edIOF.Enabled := False;
      edDespAdu.Enabled := False;

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
      edii.Font.Style := [fsBold];
      edBCII.Font.Style := [fsBold];
      edIOF.Font.Style := [fsBold];
      edDespAdu.Font.Style := [fsBold];

      EdDesGe2.Enabled := True;
      EdObsGe2.Enabled := True;

      grGe2.SetFocus;

    end;
  end;
end;

procedure TfmManNge_NFE2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then
  begin

    if fMsg('Deseja Realmente Abandonar a Nota ?', 'O') then
    begin

      if FatGe2.State <> dsBrowse then
        FatGe2.CancelUpdates;
      if FatGer.State <> dsBrowse then
        FatGer.CancelUpdates;

      fmManGer_NFE.FatGer.Close;
      fmManGer_NFE.FatGer.Open;

      fmManGer_NFE.FatGe2.Close;
      fmManGer_NFE.FatGe2.Open;

      Action := CaFree;

    end
    else
    begin

      Abort;

      if FatGerNumGer.Value = Null then
        FatGer.Insert;

    end;

  end
  else
  begin

    fmManGer_NFE.FatGer.Close;
    fmManGer_NFE.FatGer.Open;

    fmManGer_NFE.FatGe2.Close;
    fmManGer_NFE.FatGe2.Open;

    Action := CaFree;

  end;
end;

procedure TfmManNge_NFE2.Panel4Exit(Sender: TObject);
begin
  inherited;
  if FatGer.State = dsEdit then
  begin

    with FatGer do
    begin

      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}

      try

        ApplyUpdates; {Tenta aplicar as altera��es}

        fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}

      except

        fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}

        if FatGer.State = dsBrowse then
          FatGer.Edit;

        if EdBasIc1.CanFocus then
          EdBasIc1.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    FatGer.Close;
    FatGer.Open;

    EdBasIc1.ReadOnly := True;
    EdTotIc1.ReadOnly := True;
    EdBasSu1.ReadOnly := True;
    EdTotSu1.ReadOnly := True;
    EdTotIt1.ReadOnly := True;
    EdTotFrt.ReadOnly := True;
    EdTotSeg.ReadOnly := True;
    EdTotDes.ReadOnly := True;
    EdTotIp1.ReadOnly := True;
    EdTotGe1.ReadOnly := True;

    grGe2.SetFocus;

  end
  else
  begin

    EdBasIc1.ReadOnly := True;
    EdTotIc1.ReadOnly := True;
    EdBasSu1.ReadOnly := True;
    EdTotSu1.ReadOnly := True;
    EdTotIt1.ReadOnly := True;
    EdTotFrt.ReadOnly := True;
    EdTotSeg.ReadOnly := True;
    EdTotDes.ReadOnly := True;
    EdTotIp1.ReadOnly := True;
    EdTotGe1.ReadOnly := True;

    grGe2.SetFocus;

  end;
end;

procedure TfmManNge_NFE2.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      FatGerCodEmp.Value := fmPsqEmp.CodEmp;

      EdCodEmp.Text := IntToStr(FatGerCodEmp.Value);

      edNomEmp.Text := fmPsqEmp.NomEmp;

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmManNge_NFE2.bpsqCliClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqCli := TfmPsqCli.Create(Self);

    fmPsqCli.ShowModal;

    if fmPsqCli.CodCli > 0 then
    begin

      FatGerCodCli.Value := fmPsqCli.CodCli;
      FatGerUfeGer.Value := fmPsqCli.UffCli;
      FatGerCodVen.Value := fmPsqCli.CodVen;

      EdCodCli.Text := IntToStr(FatGerCodCli.Value);

      edNomCli.Text := fmPsqCli.NomCli;
      //pnUfeGer.Caption := fmPsqCli.UffCli;

      if FatGerCodVen.AsInteger > 0 then
        EdCodVen.Text := FatGerCodVen.AsString
      else
        EdCodVen.Text := '';

    end;

  finally

    FreeAndNil(fmPsqCli);

  end;

  EdCodCli.SetFocus;

end;

procedure TfmManNge_NFE2.bpsqVenClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqVen := TfmPsqVen.Create(Self);

    fmPsqVen.ShowModal;

    if fmPsqVen.CodVen > 0 then
    begin

      FatGerCodVen.Value := fmPsqVen.CodVen;

      edNomVen.Text := fmPsqVen.NomVen;

      EdCodVen.Text := IntToStr(FatGerCodVen.Value);

    end;

  finally

    FreeAndNil(fmPsqVen);

  end;

  EdCodVen.SetFocus;

end;

procedure TfmManNge_NFE2.bpsqPfaClick(Sender: TObject);
var
  LocPfa: string;
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
      '   and modpfa <> ' + QuotedStr('Vendas') +
        ' Order by EstPfa.DscPfa';

      with Params do
      begin

        Params[0].AsString := FatGerTipPfa.Value;
        Params[1].AsString := LocPfa;

      end;

      Open;

    end;

    fmPsqPfa.ShowModal;
    fmpsqpfa.vCompl := 'S';

    if Trim(fmPsqPfa.CodPfa) <> '' then
    begin

      FatGerCodPfa.Value := Trim(fmPsqPfa.CodPfa);

      edDescPfa.Text := fmPsqPfa.NomPfa;

      EdCodPfa.Text := FatGerCodPfa.Value;
      vtiponota := Trim(fmPsqPfa.CodPfa);
    end;

  finally

    FreeAndNil(fmPsqPfa);

  end;

  FatGerMODPFA.Value := vtiponota;
  EdCodPfa.SetFocus;

end;

procedure TfmManNge_NFE2.DsGe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if ((FatGe2.State <> dsBrowse) and (FatGe2BAIPIS.asFloat > 0)) then
    FatGe2BAIPIS.asFLoat := FatGe2BASPIS.asFloat;

  if FatGe2.State = dsBrowse then
    AntVluGe2 := FatGe2VluGe2.Value;

  if EdQtpGe2.Enabled then
  begin
    if trim(FatGe2CODST2.asString) <> '' then
      if FatGe2CODST2.asinteger in [20, 30, 40, 41, 50, 70, 90] then
        edMotivo.Enabled := True;
  end;

  if FatGe2.State = dsInsert then
    pnNroGe2.Caption := FNumZeros(IntToStr(FatGe2NroGe2.Value), 4) + '/' + FNumZeros(IntToStr(FatGerQtiGer.Value + 1), 4)
  else
    pnNroGe2.Caption := FNumZeros(IntToStr(FatGe2NroGe2.Value), 4) + '/' + FNumZeros(IntToStr(FatGerQtiGer.Value), 4);

end;

procedure TfmManNge_NFE2.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  sbInfo.Panels[0].Text := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Refer F6-Int/Dsc F7-Int/Ref'

end;

procedure TfmManNge_NFE2.EdTipPfaEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  sbInfo.Panels[0].Text := 'F4-Estoque';

end;

procedure TfmManNge_NFE2.EdCodSt1Enter(Sender: TObject);
begin
  inherited;
  sEntr := 'N';
  sbInfo.Panels[0].Text := 'F1-Iniciais F4-Estoque';
end;

procedure TfmManNge_NFE2.EdQtpPe2Exit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodCfo.Focused) and
      (not EdCodPro.Focused) and
      (not EdCodSub.Focused) and
      (not EdCodGru.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatGe2.State <> dsBrowse then
      begin

        if (FatGe2QtpGe2.Value > 0) then
        begin

          FatGe2TotGe2.AsFloat := fRound(FatGe2VluGe2.AsFloat * FatGe2QtpGe2.AsFloat, 2);

          grGe2.Enabled := True;

        end
        else if (FatGe2QtpGe2.AsFloat = 0) then
        begin

          if trim(FatGe2CodCfo.asString) <> '1.604' then
          begin
            with quSql, SQL do
            begin
              Close;
              Text := ' Select EstPfa.ModPfa' +
                ' From EstPfa' +
                ' Where EstPfa.CodPfa = ' + QuotedStr(FatGerCodPfa.Value) +
                '   and EstPfa.TipPfa = ' + QuotedStr(FatGerTipPfa.Value);
              Open;
            end;
            if ((quSQL.FieldbyName('ModPfa').AsString <> 'Complemento')) then
              fmsgErro('Campo de Preenchimento Obrigatorio.', EdQtpGe2);

          end
          else
          begin
            FatGe2TotGe2.AsFloat := 0;

            grGe2.Enabled := True;
          end;

        end
        else
        begin
          fmsgErro('Quantidade deve ser maior iggual a zero.', EdQtpGe2);
        end;
      end;
    end;
  end;
end;

procedure TfmManNge_NFE2.EdCodClpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  sbInfo.Panels[0].Text := 'F1-Iniciais F3-Descr F4-Estoque F5-Refer F6-Int/Desc F7-Int/Ref';

end;

procedure TfmManNge_NFE2.grGe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  sbInfo.Panels[0].Text := 'Enter-Alterar Dados do Item Item DEL-Excluir Item F4-Estoque F5-Alterar Dados da Nota F8-DI';

  if FatGe2.isEmpty then
    FatGe2.Append
  else
    grGe2.SetFocus;

end;

procedure TfmManNge_NFE2.FatGerBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (fatger.state in [dsinsert]) then
    FatGerMODPFA.Value := vtiponota
  else
    vtiponota := FatGerMODPFA.Value;

  grGe2.Color := clInfoBk;

end;

procedure TfmManNge_NFE2.Panel3Enter(Sender: TObject);
begin
  inherited;
  psaida := 'Sim';
end;

procedure TfmManNge_NFE2.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (Key in ['0'..'9', Chr(8)]) then
    Key := #0;
end;

procedure TfmManNge_NFE2.SpeedButton2Click(Sender: TObject);
var
  linha: integer;
var
  planilha: variant;
begin
  //=================planilha principal
  planilha := CreateoleObject('Excel.Application');
  planilha.caption := 'Importa��o';
  planilha.visible := true;
  planilha.WorkBooks.add(1);

  Linha := 1;
  // Planilha.WorkSheets.add;
  planilha.WorkSheets[1].name := 'Import';
  planilha.WorkSheets[1].cells[linha, 1] := 'GRUPO';
  planilha.WorkSheets[1].cells[linha, 2] := 'SUBGRUPO';
  planilha.WorkSheets[1].cells[linha, 3] := 'PRODUTO';
  planilha.WorkSheets[1].cells[linha, 4] := 'QUANTIDADE';
  planilha.WorkSheets[1].cells[linha, 5] := 'Valor Unit.';
  planilha.WorkSheets[1].cells[linha, 6] := 'IPI';
  planilha.WorkSheets[1].cells[linha, 7] := 'ICMS';
  planilha.WorkSheets[1].cells[linha, 8] := 'Base PIS';
  planilha.WorkSheets[1].cells[linha, 9] := 'Base ICMS';

  Planilha.WorkSheets[1].cells[linha, 1].Font.Size := 12;
  Planilha.WorkSheets[1].cells[linha, 1].Font.Bold := True;
  Planilha.WorkSheets[1].cells[linha, 2].Font.Size := 12;
  Planilha.WorkSheets[1].cells[linha, 2].Font.Bold := True;
  Planilha.WorkSheets[1].cells[linha, 3].Font.Size := 12;
  Planilha.WorkSheets[1].cells[linha, 3].Font.Bold := True;
  Planilha.WorkSheets[1].cells[linha, 4].Font.Size := 12;
  Planilha.WorkSheets[1].cells[linha, 4].Font.Bold := True;
  Planilha.WorkSheets[1].cells[linha, 5].Font.Size := 12;
  Planilha.WorkSheets[1].cells[linha, 5].Font.Bold := True;
  Planilha.WorkSheets[1].cells[linha, 6].Font.Size := 12;
  Planilha.WorkSheets[1].cells[linha, 6].Font.Bold := True;
  Planilha.WorkSheets[1].cells[linha, 7].Font.Size := 12;
  Planilha.WorkSheets[1].cells[linha, 7].Font.Bold := True;
  Planilha.WorkSheets[1].cells[linha, 8].Font.Size := 12;
  Planilha.WorkSheets[1].cells[linha, 8].Font.Bold := True;
  Planilha.WorkSheets[1].cells[linha, 9].Font.Size := 12;
  Planilha.WorkSheets[1].cells[linha, 9].Font.Bold := True;

  linha := linha + 1;
  fatge2.first;
  while not fatge2.eof do
  begin
    Planilha.WorkSheets[1].cells[linha, 1] := fatge2codgru.asstring;
    Planilha.WorkSheets[1].cells[linha, 2] := fatge2codsub.asstring;
    Planilha.WorkSheets[1].cells[linha, 3] := fatge2codpro.asstring;

    Planilha.WorkSheets[1].cells[linha, 4] := fatge2qtpge2.value;
    Planilha.WorkSheets[1].cells[linha, 4].NumberFormat := '_( * #.##0,0000_);_( * (#.##0,0000);_( * "-"??_);_(@_)';

    Planilha.WorkSheets[1].cells[linha, 5] := fatge2vluge2.value;
    Planilha.WorkSheets[1].cells[linha, 5].NumberFormat := '_( * #.##0,0000_);_( * (#.##0,0000);_( * "-"??_);_(@_)';

    Planilha.WorkSheets[1].cells[linha, 6] := fatge2IPIge2.value;
    Planilha.WorkSheets[1].cells[linha, 7] := fatge2ICMge2.value;
    Planilha.WorkSheets[1].cells[linha, 8] := fatge2baipis.value;
    Planilha.WorkSheets[1].cells[linha, 9] := fatge2basicm.value;

    fatge2.next;
  end;
  //=================planilha principal

end;

procedure TfmManNge_NFE2.SpeedButton3Click(Sender: TObject);
var
  Excel: OleVariant;
  COLCodigo, COLQtde, COLIPI, COLICMS, COLunitario, COLbasePISCOF, COLBaseICMS, COLSIscomex, COLadicao, COLitem, COLdi, COLdatadi, COLdatades, COLUFdes,
    COLcodexp, COLlocaldes, COLBCII, COLII, COLPERII, COLDespAdu, COLIOF: integer;
  Linha, NroGe2, VGENID, VFATGE2: Integer;
  Sadicao, Sitem, Sdi, SUFdes, Scodexp, Slocaldes: string;
  Sdatadi, Sdatades: TDatetime;

begin
  if OpenDialog1.Execute = false then
    sysutils.Abort;

  COLCodigo := 2;
  COLQtde := 3;
  COLIPI := 8;
  COLICMS := 9;
  COLunitario := 6;
  COLbasePISCOF := 14;
  COLBaseICMS := 17;
  COLSIscomex := 19;
  COLadicao := 20;
  COLitem := 21;
  COLdi := 22;
  COLdatadi := 23;
  COLdatades := 24;
  COLUFdes := 25;
  COLcodexp := 26;
  COLlocaldes := 27;
  COLBCII := 28;
  COLII := 29;
  COLPERII := 30;
  COLDespAdu := 31;
  COLIOF := 32;

  try
    Excel := CreateOleObject('Excel.Application');
    Excel.Visible := False; {True mostra o excel, false naum mostra}
    Excel.WorkBooks.Open(opendialog1.filename, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam);
    linha := 2;

    while (string(Excel.WorkBooks[1].Sheets[1].cells[linha, 1]) <> '') do
    begin
      //===================================================================

      try
        fatge2.Insert;
      except
      end;

      EdCodGru.Enabled := True;
      EdCodGru.SetFocus;
      FATGE2CodGru.Value := copy(Excel.WorkBooks[1].Sheets[1].cells[linha, COLCODIGO], 1, 3);

      EdCodSub.Enabled := True;
      edcodsub.setfocus;
      FATGE2codsub.Value := copy(Excel.WorkBooks[1].Sheets[1].cells[linha, COLCODIGO], 5, 4);

      EdCodPro.Enabled := True;
      edcodpro.setfocus;
      FATGE2codpro.text := copy(Excel.WorkBooks[1].Sheets[1].cells[linha, COLCODIGO], 10, 5);

      EdQTPGE2.Enabled := True;
      edqtpge2.setfocus;
      FATGE2QTPGE2.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLQTDE];

      EdVLUGE2.Enabled := True;
      edVLUge2.setfocus;
      FATGE2VLUGE2.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLUnitario];

      FATGE2IPIGE2.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLIPI];
      FATGE2ICMGE2.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLICMS];
      FATGE2BAIPIS.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLbasePISCOF];
      FATGE2BASICM.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLBaseICMS];
      FATGE2TOTDES.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLSIscomex];

      //Informa��es de II
      FATGE2VLRIMPII.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLII];
      FATGE2VLRBCII.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLBCII];
      FATGE2PERIMPII.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLPERII];
      FATGE2VLRDESPATU.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLDespAdu];
      FATGE2VLRIOF.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLIOF];

      EdDesGe2.enabled := True;
      EdDesGe2_1.enabled := True;
      edDESge2.setfocus;

      fatge2.Post;

      //Salvando os dados
      NroGe2 := FatGe2NroGe2.Value;
      with FatGe2 do
      begin
        fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
        try
          ApplyUpdates; {Tenta aplicar as altera��es}
          fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
        except
          fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
          raise;
        end;
        CommitUpdates; {sucesso!, limpa o cache...}
      end;
      FatGe2.Close;
      FatGe2.Params[0].AsInteger := FatGerCodEmp.Value;
      FatGe2.Params[1].AsDateTime := FatGerDteGer.Value;
      FatGe2.Params[2].AsInteger := FatGerNumGer.Value;
      FatGe2.Open;
      FatGe2.Locate('CodEmp;DteGer;NumGer;NroGe2', VarArrayOf([FatGe2CodEmp.Value, FatGe2DteGer.Value, FatGe2NumGer.Value, NroGe2]), [LoPartialKey]);
      //Salvando os dados
      //Salvando a DI
      quSql.active := false;
      qusql.sql.text := 'Select GEN_ID(DI_ID_DI_GEN, 1)As PROX from RDB$DATABASE';
      qusql.open;
      VGENID := qusql.fieldbyname('PROX').asinteger;

      VFATGE2 := FatGe2ID_FATGE2.Value;

      if vfatge2 < 1 then
      begin
        quSql.active := false;
        qusql.sql.text := 'Select GEN_ID(GEN_FATGE2_ID, 0)As PROX from RDB$DATABASE';
        qusql.open;
        VFATGE2 := qusql.fieldbyname('PROX').asinteger;
      end;

      Sadicao := Excel.WorkBooks[1].Sheets[1].cells[linha, COLAdicao];
      Sitem := Excel.WorkBooks[1].Sheets[1].cells[linha, COLItem];
      Sdi := Excel.WorkBooks[1].Sheets[1].cells[linha, COLDI];
      Sdatadi := Excel.WorkBooks[1].Sheets[1].cells[linha, coldataDI];
      Sdatades := Excel.WorkBooks[1].Sheets[1].cells[linha, COLDatades];
      SUFdes := Excel.WorkBooks[1].Sheets[1].cells[linha, COLufdes];
      Scodexp := Excel.WorkBooks[1].Sheets[1].cells[linha, COLcodexp];
      Slocaldes := Excel.WorkBooks[1].Sheets[1].cells[linha, COLlocaldes];

      qusql.active := false;
      qusql.sql.Text := 'INSERT INTO DI (ID_DI, ID_CMPNF2, NUMDI, DATADI, LOCALDESEMB, UFDESEMB, DATADESEMB, CODEXPORT) VALUES (' + Inttostr(VGenid) + ', ' +
        QuotedStr(inttostr(vfatge2)) + ', ' + quotedstr(SDI) + ', ' + QuotedStr(formatdatetime('mm/dd/yyyy', Sdatadi)) + ', ' + QuotedStr(SLocalDes) + ', ' +
        QuotedStr(SUFDES) + ', ' + QuotedStr(formatdatetime('mm/dd/yyyy', SDATADES)) + ', ' + QuotedStr(SCODEXP) + ')';
      quSql.ExecSQL;

      qusql.Active := false;
      qusql.sql.Text := 'INSERT INTO DIDET (ID_DIDET, ID_DI, NADICAO, NSEQADIC, CODFAB, VDESCDI, QTDE) VALUES (NULL, ' + inttostr(VGENID) + ', ' + SAdicao +
        ' ,' + SITEM + ' ,' + QuotedStr(SCODEXP) + ' , 0, NULL)';
      qusql.ExecSQL;

      //====================================================================
      //        showmessage(String(Excel.WorkBooks[1].Sheets[1].cells[1,1]));
      linha := linha + 1;
    end;

    Excel.WorkBooks.Close;
    Excel.Quit;
  except
  end;
  Showmessage('Arquivo importado com exito!');
  fatge2.close;
  fatge2.SQL.text := 'Select * From FatGe2' +
    '     Where FatGe2.CodEmp = :CodEmp ' +
    '     and FatGe2.DteGer = :DteGer ' +
    '     and FatGe2.NumGer = :NumGer ' +
    ' Order by FatGe2.NroGe2';

  FatGe2.Params[0].AsInteger := FatGerCodEmp.Value;
  FatGe2.Params[1].AsDateTime := FatGerDteGer.Value;
  FatGe2.Params[2].AsInteger := FatGerNumGer.Value;
  FatGe2.Open;
end;

procedure TfmManNge_NFE2.FatGerAfterOpen(DataSet: TDataSet);
begin
  inherited;
  flagDI;
  CarregaCbo;
end;

procedure TfmManNge_NFE2.EdClsIpiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((key = vk_return) or (Key = vk_tab)) then
  begin
    if (FatGe2CODCLP.AsString = '9') then
    begin
      EdCodSt1.SetFocus;
    end;
  end;
end;

procedure TfmManNge_NFE2.flagDI;
begin

  if ((fmManGDB.BuscaSimples('EstPfa', 'ModPfa', 'codpfa = ' + QuotedStr(FatGerCODPFA.AsString)) = 'Importacao') or
    (fmManGDB.BuscaSimples('EstPfa', 'ModPfa', 'codpfa = ' + QuotedStr(FatGerCODPFA.AsString)) = 'Importacao direta') or
    (fmManGDB.BuscaSimples('EstPfa', 'ModPfa', 'codpfa = ' + QuotedStr(FatGerCODPFA.AsString)) = 'Complemento')) then
  begin
    if (fmManGDB.BuscaSimples('EstPfa', 'ModPfa', 'codpfa = ' + QuotedStr(FatGerCODPFA.AsString)) <> 'Complemento') then
      FlgTemDI := True
    else
    begin
      FlgTemDI := False;
      edTotIcmItem.ReadOnly := False;
      edTotIcmItem.TabStop := True;
    end;

    edBaseICMSItem.ReadOnly := False;
    edBasePISItem.ReadOnly := False;
    edBaseCOFItem.ReadOnly := False;
    edTotIcmItem.ReadOnly := False;
    edBaseStItem.ReadOnly := False;
    edTotIcmSTItem.ReadOnly := False;
    edBaseIPIItem.ReadOnly := False;
    edTotIPIItem.ReadOnly := False;

    edBaseICMSItem.TabStop := True;
    edBasePISItem.TabStop := True;
    edBaseCOFItem.TabStop := True;
    edTotIcmItem.TabStop := True;
    edBaseStItem.TabStop := True;
    edTotIcmSTItem.TabStop := True;
    edBaseIPIItem.TabStop := True;
    edTotIPIItem.TabStop := True;

  end
  else
  begin
    FlgTemDI := False;

    edTotIcmItem.ReadOnly := True;
    edBaseICMSItem.ReadOnly := True;
    edBasePISItem.ReadOnly := True;
    edBaseCOFItem.ReadOnly := True;
    edTotIcmItem.ReadOnly := True;
    edBaseStItem.ReadOnly := True;
    edTotIcmSTItem.ReadOnly := True;
    edBaseIPIItem.ReadOnly := True;
    edTotIPIItem.ReadOnly := True;

    edBaseICMSItem.TabStop := False;
    edBasePISItem.TabStop := False;
    edBaseCOFItem.TabStop := False;
    edTotIcmItem.TabStop := False;
    edBaseStItem.TabStop := False;
    edTotIcmSTItem.TabStop := False;
    edBaseIPIItem.TabStop := False;
    edTotIPIItem.TabStop := False;
  end;

end;

procedure TfmManNge_NFE2.grGe2Exit(Sender: TObject);
begin
  inherited;
  grGe2.Color := $00FCF4ED;
end;

procedure TfmManNge_NFE2.CarregaCbo;
begin
  if FatGerTIPPFA.AsString <> '' then
  begin
    //ST ICMS
    fmManGdb.CarregaCboICMS(Trim(FmManGdb.BuscaSimples('GEREMP', 'TIPEMP', ' CODEMP = ' + IntToStr(GEmp_Id))) = 'Simples Nacional', 'L');

    //st PIS
    fmManGdb.CarregaCboPIS;

    //st COF
    fmManGdb.CarregaCboCOF;

    //st IPI
    fmManGdb.CarregaCboIPI(FatGerTIPPFA.AsString);
  end;
end;

procedure TfmManNge_NFE2.tsFixarExit(Sender: TObject);
begin
  inherited;

  if tsFixar.TabVisible then
  begin
    tsFixar.TabVisible := False;
    tsCalculado.TabVisible := True;

    PageControl1.ActivePage := tsCalculado;
  end;
end;

procedure TfmManNge_NFE2.DsGerDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if FatGerID_FRETE.AsInteger = 9 then
    edFreteCalc.Enabled := False
  else
    edFreteCalc.Enabled := True;
end;

procedure TfmManNge_NFE2.DsGe2StateChange(Sender: TObject);
begin
  inherited;
  if FatGe2.State in [dsInsert, dsEdit] then
    Panel3.Enabled := True
  else
    Panel3.Enabled := False;
end;

procedure TfmManNge_NFE2.MostraDI;
var
  NroGe2: integer;
  CodEmp, NumGer: Integer;
  Dteger: TdateTime;

begin
  flgtemdi := True;
  if ((flgtemdi) and (fmManNge_NFE2.Fatge2.IsEmpty = false) and (fmManNge_NFE2.FatGe2CODCFO.AsString[1] = '3')
    and (fmManNge_NFE2.FatGerSitger.asString = 'Nao Concluido')) then
  begin
    finalizarDI := false;
    CodEmp := FatGe2CodEmp.AsInteger;
    DteGer := FatGe2DteGer.AsDateTime;
    NumGer := FatGe2NumGer.AsInteger;
    NroGe2 := FatGe2NroGe2.AsInteger;
    try
      fmmandi2 := Tfmmandi2.Create(Self);
      FMMANDI2.ShowModal('FATGE2', FatGe2ID_FATGE2.AsString);
    finally
      FreeAndNil(fmmandi2);
    end;

    with FatGe2 do
    begin

      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}

      try
        ApplyUpdates; {Tenta aplicar as altera��es}

        fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}

      except

        fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}

        if FatGe2.State = dsBrowse then
          FatGe2.Edit;

        if EdCodClp.CanFocus then
          EdCodClp.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    FatGe2.Close;
    FatGer.Close;

    FatGe2.Open;
    FatGer.Open;

    FatGe2.Locate('CodEmp;DteGer;NumGer;NroGe2', VarArrayOf([CodEmp, DteGer, NumGer, NroGe2]), [LoPartialKey]);

  end;

end;

procedure TfmManNge_NFE2.ValidaDI;
var
  SQLTEMP: TQuery;
  strMsg: string;
begin

  SQLTEMP := TQuery.Create(Self);
  try
    SQLTEMP.DatabaseName := 'Isade';

    SQLTEMP.SQL.Text := 'Select CODGRU,CODSUB,CODPRO ' +
      ' from fatge2 g2 ' +
      ' where g2.numger = ' + FatGerNumger.AsString +
      ' and (((select COUNT(1) from di where di.id_cmpnf2 = g2.id_fatge2) = 0) ' +
      ' or ((select COUNT(1) from didet d2 ' +
      ' join di on di.id_di = d2.id_di ' +
      ' where di.id_cmpnf2 = g2.id_fatge2 ) = 0)) ';
    SQLTEMP.Active := True;

    if not SQLTEMP.IsEmpty then
    begin
      SQLTEMP.Last;
      SQLTEMP.First;

      strMsg := 'H� itens sem DI ou sem adi��o da DI : ' + _BR;

      while not SQLTEMP.Eof do
      begin

        strMsg := strMsg + SQLTEMP.FieldByName('CODGRU').AsString + '.' +
          SQLTEMP.FieldByName('CODSUB').AsString + '.' +
          SQLTEMP.FieldByName('CODPRO').AsString + _BR;
        SQLTEMP.Next;
      end;

      Messagebox(Handle, pChar(strMsg), 'Valida��o de DI', mb_ok + MB_ICONSTOP);
      Abort;

    end;

  finally
    FreeAndnil(SQLTEMP);
  end;

end;

procedure TfmManNge_NFE2.ImportaXLS;
var
  Excel: OleVariant;
  COLCodigo, COLQtde, COLIPI, COLICMS, COLunitario, COLbasePISCOF, COLBaseICMS,
    COLSIscomex, COLadicao, COLitem, COLdi, COLdatadi, COLdatades, COLUFdes, COLcodexp,
    COLlocaldes, COLBCII, COLII, COLPERII, COLDespAdu, COLIOF, COLBASIPI,
    CSTIPI, CSTPIS, CSTCOF: integer;
  Linha, NroGe2, VGENID, VFATGE2, ALIQ_PIS, ALIQ_COF: Integer;
  Sadicao, Sitem, Sdi, SUFdes, Scodexp, Slocaldes, strCodPro: string;
  Sdatadi, Sdatades: TDatetime;
begin
  try
    flgXLS := True;

    if OpenDialog1.Execute = false then
      sysutils.Abort;

    COLCodigo           := 2;
    COLQtde             := 3;
    COLBASIPI           := 7;
    COLIPI              := 8;
    COLICMS             := 9;
    COLunitario         := 42;
    COLbasePISCOF       := 14;
    COLBaseICMS         := 17;
    COLSIscomex         := 19;
    COLadicao           := 20;
    COLitem             := 21;
    COLdi               := 22;
    COLdatadi           := 23;
    COLdatades          := 24;
    COLUFdes            := 25;
    COLcodexp           := 26;
    COLlocaldes         := 27;
    COLBCII             := 28;
    COLII               := 29;
    COLPERII            := 30;
    COLDespAdu          := 31;
    COLIOF              := 32;
    ALIQ_PIS            := 33;
    ALIQ_COF            := 34;
    CSTIPI              := 38;
    CSTPIS              := 39;
    CSTCOF              := 40;

    try
      Excel := CreateOleObject('Excel.Application');
      try
        Excel.Visible := False; {True mostra o excel, false naum mostra}
        Excel.WorkBooks.Open(opendialog1.filename, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam,
          EmptyParam, EmptyParam);
        linha := 2;
        while (string(Excel.WorkBooks[1].Sheets[1].cells[linha, 1]) <> '') do
        begin

          try
            if not (fatge2.state in [dsinsert, dsedit]) then
              fatge2.Append;
          except
          end;

          strCodPro := Excel.WorkBooks[1].Sheets[1].cells[linha, COLCODIGO];

          if not (strCodPro[1] in ['0'..'9']) then
            strCodPro := copy(strCodPro, 2, length(strCodPro) - 1);

          FATGE2CodGru.AsString := '1';
          EdCodGru.Enabled := True;
          EdCodGru.SetFocus;
          FATGE2CodGru.AsString := copy(strCodPro, 1, 3);

          EdCodSub.Enabled := True;
          edcodsub.setfocus;
          FATGE2codsub.AsString := copy(strCodPro, 5, 4);

          EdCodPro.Enabled := True;
          edcodpro.setfocus;
          FATGE2codpro.AsString := copy(strCodPro, 10, 5);

          EdQTPGE2.Enabled := True;
          edqtpge2.setfocus;
          FATGE2QTPGE2.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLQTDE];

          EdVLUGE2.Enabled := True;
          edVLUge2.setfocus;
          FATGE2VLUGE2.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLUnitario];

          FATGE2IPIGE2.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLIPI];
          FATGE2BASIPI.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLBASIPI];

          FATGE2ICMGE2.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLICMS];

          FATGE2BAIPIS.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLbasePISCOF];
          FATGE2BASPIS.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLbasePISCOF];
          FATGE2BASCOF.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLbasePISCOF];

          FatGe2ALIQPIS.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, ALIQ_PIS];
          FatGe2ALIQCOF.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, ALIQ_COF];

          FATGE2BASICM.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLBaseICMS];
          FATGE2TOTOUTDESP.Value := Excel.WorkBooks[1].Sheets[1].cells[linha, COLSIscomex];

          //Informa��es de II
          FATGE2VLRIMPII.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLII];
          FATGE2VLRBCII.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLBCII];
          FATGE2PERIMPII.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLPERII];
          FATGE2VLRDESPATU.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLDespAdu];
          FATGE2VLRIOF.AsFloat := Excel.WorkBooks[1].Sheets[1].cells[linha, COLIOF];

          //if trim(Excel.WorkBooks[1].Sheets[1].cells[linha, CSTIPI]) <> '' then
            FATGE2CSTIPI.AsString := Excel.WorkBooks[1].Sheets[1].cells[linha, CSTIPI];

          //if trim(Excel.WorkBooks[1].Sheets[1].cells[linha, CSTPIS]) <> '' then
            FATGE2CSTPIS.AsString := Excel.WorkBooks[1].Sheets[1].cells[linha, CSTPIS];

          //if trim(Excel.WorkBooks[1].Sheets[1].cells[linha, CSTCOF]) <> '' then
            FATGE2CSTCOF.AsString := Excel.WorkBooks[1].Sheets[1].cells[linha, CSTCOF];

          //ARNALDO
          FATGE2CODST2.AsString := '00';

          EdDesGe2.enabled := True;
          EdDesGe2_1.enabled := True;
          edDESge2.setfocus;

          fatge2.Post;

          //Salvando os dados
          NroGe2 := FatGe2NroGe2.Value;
          with FatGe2 do
          begin
            fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
            try
              ApplyUpdates; {Tenta aplicar as altera��es}
              fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
            except
              fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
              raise;
            end;
            CommitUpdates; {sucesso!, limpa o cache...}
          end;

          FatGer.Active := False;
          FatGe2.Active := False;
          FatGe2.Params[0].AsInteger := FatGerCodEmp.AsInteger;
          FatGe2.Params[1].AsDateTime := FatGerDteGer.AsDateTime;
          FatGe2.Params[2].AsInteger := FatGerNumGer.AsInteger;
          FatGe2.Active := True;
          FatGe2.Locate('CodEmp;DteGer;NumGer;NroGe2', VarArrayOf([FatGe2CodEmp.AsInteger, FatGe2DteGer.AsDateTime, FatGe2NumGer.AsInteger, NroGe2]),
            [LoPartialKey]);
          FatGer.Active := True;

          //Salvando os dados
          //Salvando a DI
          quSql.active := false;
          qusql.sql.text := 'Select GEN_ID(DI_ID_DI_GEN, 1)As PROX from RDB$DATABASE';
          qusql.open;
          VGENID := qusql.fieldbyname('PROX').asinteger;

          VFATGE2 := FatGe2ID_FATGE2.Value;

          if vfatge2 < 1 then
          begin
            quSql.active := false;
            qusql.sql.text := 'Select GEN_ID(GEN_FATGE2_ID, 0)As PROX from RDB$DATABASE';
            qusql.open;
            VFATGE2 := qusql.fieldbyname('PROX').asinteger;
          end;

          Sadicao := Excel.WorkBooks[1].Sheets[1].cells[linha, COLAdicao];
          Sitem := Excel.WorkBooks[1].Sheets[1].cells[linha, COLItem];
          Sdi := Excel.WorkBooks[1].Sheets[1].cells[linha, COLDI];
          Sdatadi := Excel.WorkBooks[1].Sheets[1].cells[linha, coldataDI];
          Sdatades := Excel.WorkBooks[1].Sheets[1].cells[linha, COLDatades];
          SUFdes := Excel.WorkBooks[1].Sheets[1].cells[linha, COLufdes];
          Scodexp := Excel.WorkBooks[1].Sheets[1].cells[linha, COLcodexp];
          Slocaldes := Excel.WorkBooks[1].Sheets[1].cells[linha, COLlocaldes];

          qusql.active := false;
          qusql.sql.Text := 'INSERT INTO DI (ID_DI, ID_CMPNF2, NUMDI, DATADI, LOCALDESEMB, UFDESEMB, DATADESEMB, CODEXPORT) VALUES (' + Inttostr(VGenid) + ', '
            +
            QuotedStr(inttostr(vfatge2)) + ', ' + quotedstr(SDI) + ', ' + QuotedStr(formatdatetime('mm/dd/yyyy', Sdatadi)) + ', ' + QuotedStr(SLocalDes) + ', '
            +
            QuotedStr(SUFDES) + ', ' + QuotedStr(formatdatetime('mm/dd/yyyy', SDATADES)) + ', ' + QuotedStr(SCODEXP) + ')';
          quSql.ExecSQL;

          qusql.Active := false;
          qusql.sql.Text := 'INSERT INTO DIDET (ID_DIDET, ID_DI, NADICAO, NSEQADIC, CODFAB, VDESCDI, QTDE) VALUES (NULL, ' + inttostr(VGENID) + ', ' + SAdicao
            +
            ' ,' + SITEM + ' ,' + QuotedStr(SCODEXP) + ' , 0, NULL)';
          qusql.ExecSQL;

          //====================================================================
          //        showmessage(String(Excel.WorkBooks[1].Sheets[1].cells[1,1]));
          linha := linha + 1;

          if linha = 90 then
            linha := linha;

        end;
      finally

        //Excel.WorkBooks.Close;

        Excel.quit;
        Excel := null;
        Excel := Unassigned;
      end;
    except
    end;

    fatge2.Active := False;
    FatGe2.Params[0].AsInteger := FatGerCodEmp.Value;
    FatGe2.Params[1].AsDateTime := FatGerDteGer.Value;
    FatGe2.Params[2].AsInteger := FatGerNumGer.Value;

    FatGe2.Active := True;
    Showmessage('Arquivo importado com exito!');

    if grGe2.CanFocus then
      grGe2.SetFocus;
  finally
    flgXLS := False;
  end;
end;

procedure TfmManNge_NFE2.btnRefClick(Sender: TObject);
begin
  inherited;
  if (UPPERCASE(Trim(FatGerMODPFA.AsString)) = 'DEVOLUCOES') or (UPPERCASE(Trim(FatGerMODPFA.AsString)) = 'COMPLEMENTO') then
  begin
    if FatGerNUMGER.AsInteger > 0 then
    begin
      fmManListaNFeRef := TfmManListaNFeRef.Create(Self);
      try
        fmManListaNFeRef.ShowModal(FatGerNUMGER.AsInteger);
      finally
        FreeAndNil(fmManListaNFeRef);
      end;
    end;
  end;
end;

procedure TfmManNge_NFE2.ValidaDanfeRef;
var
  SQLTEMP: TQuery;
begin

  SQLTEMP := TQuery.Create(Self);
  try
    SQLTEMP.DatabaseName := 'Isade';

    SQLTEMP.SQL.Text := 'Select COUNT(1) NFE ' +
      ' from fatger_Ref Ref  ' +
      ' where Ref.id_fatger = ' + FatGerNumger.AsString;
    SQLTEMP.Active := True;

    if SQLTEMP.FieldByName('NFE').AsInteger < 1 then
    begin

      Messagebox(Handle, '� necess�rio informar a Danfe de refer�ncia. Verifique e tente novamente.', 'Valida��o de refer�ncia', mb_ok + MB_ICONSTOP);
      Abort;

    end;

  finally
    FreeAndnil(SQLTEMP);
  end;                                                                   ;
end;

procedure TfmManNge_NFE2.EdCodSt2Exit(Sender: TObject);
begin
  inherited;
  if fatge2.state in [dsinsert, dsedit] then
  begin
    if not (FatGe2CODST2.asinteger in [20, 30, 40, 41, 50, 70, 90]) then
    begin
      FatGe2CODDESONERACAO.Asinteger := 0;
      edMotivo.Enabled := False;
    end
    else
    begin
      edMotivo.Enabled := True;
    end;
  end;
end;

procedure TfmManNge_NFE2.pnReferenciaEnter(Sender: TObject);
begin
  inherited;
  EdDesGe2_1.Enabled := True;
  EdObsGe2_1.Enabled := True;
end;

procedure TfmManNge_NFE2.EdCodCfoExit(Sender: TObject);
begin
  inherited;
  //
  if FatGe2CodClp.Value <> '9' then
    Exit;


  qusql.Close;
  qusql.sql.text := 'Select ESTPFA.CODICM, '+
                    '       ESTPFA.TIPICM, '+
                    '       ESTPFA.CODIPI, '+
                    '       ESTPFA.FRTICM, '+
                    '       ESTPFA.SEGICM, '+
                    '       ESTPFA.DESICM, '+
                    '       ESTPFA.FRTIPI, '+
                    '       ESTPFA.SEGIPI, '+
                    '       ESTPFA.DESIPI, '+
                    '       ESTPFA.CSTCOF, '+
                    '       ESTPFA.ALIQPIS,'+
                    '       ESTPFA.ALIQCOF,'+
                    '       ESTPFA.TRBPIS, '+
                    '       ESTPFA.TRBCOF, '+
                    '       ESTPFA.ID_ESTICM, '+
                    '       EstIPI.CSTIPI, '+
                    '       EstIPI.CSTPIS, '+
                    '       EstIPI.tipipi, '+
                    '       EstIPI.PERIPI  '+
                    '  from ESTPFA         '+
                    '  left outer join EstIpi on EstIpi.codipi = EstPFA.codipi '+
                    ' where ESTPFA.CODPFA = (Select codpfa from FATGER where codemp = ' + QuotedStr(FatGerCODEMP.asstring) +
                    '                                                    and dteger = ' + QuotedStr(FormatDateTime('mm/dd/yyyy', FatGerDTEGER.AsDateTime)) +
                    '                                                    and numger = ' + QuotedStr(FatGerNUMGER.asstring) + ');';
  qusql.Open;

  //Regra de IPI Padr�o de Faturamento
  if Trim(quSQL.FieldbyName('CODIPI').AsString) <> '' then
  begin
    FatGe2RegIpi.AsString := Trim(quSQL.FieldbyName('CODIPI').AsString);
    FatGe2TipIpi.AsString := Trim(quSQL.FieldbyName('TIPIPI').AsString);
    FatGe2CSTIPI.AsString := Trim(quSQL.FieldbyName('CSTIPI').AsString);
  end;

  //Regra de ICMS Padr�o de Faturamento
  if Trim(quSQL.FieldbyName('CODICM').AsString) <> '' then
  begin
    FatGe2RegIcm.AsString := Trim(quSQL.FieldbyName('CODICM').AsString);
    FatGe2TipIcm.AsString := Trim(quSQL.FieldbyName('TIPICM').AsString);
    FatGe2ID_ESTICM.AsInteger := quSQL.FieldByName('ID_ESTICM').AsInteger;

    // TODO -> Verificar 2024_02
    //FatGe2CodStr.AsString := '';
    FatGe2TipStr.AsString := '';
  end;

  FatGe2TRBPIS.AsString := Trim(quSQL.FieldbyName('TRBPIS').AsString);

  if Trim(quSQL.FieldbyName('TRBPIS').AsString) = 'Nao' then
  begin
    FatGe2CSTPIS.AsString := Trim(quSQL.FieldbyName('CSTPIS').AsString);
    FatGe2ALIQPIS.AsFloat := quSQL.FieldbyName('ALIQPIS').AsFloat;
  end;

  FatGe2TRBCOF.AsString := Trim(quSQL.FieldbyName('TRBCOF').AsString);

  if Trim(quSQL.FieldbyName('TRBCOF').AsString) = 'Nao' then
  begin
    FatGe2CSTCOF.AsString := Trim(quSQL.FieldbyName('CSTCOF').AsString);
    FatGe2ALIQCOF.AsFloat := quSQL.FieldbyName('ALIQCOF').AsFloat;
  end;

  FatGe2FRTICM.AsFloat := quSQL.FieldbyName('FRTICM').AsFloat;
  FatGe2SEGICM.AsFloat := quSQL.FieldbyName('SEGICM').AsFloat;
  FatGe2DESICM.AsFloat := quSQL.FieldbyName('DESICM').AsFloat;

  FatGe2FRTIPI.AsFloat := quSQL.FieldbyName('FRTIPI').AsFloat;
  FatGe2SEGIPI.AsFloat := quSQL.FieldbyName('SEGIPI').AsFloat;
  FatGe2DESIPI.AsFloat := quSQL.FieldbyName('DESIPI').AsFloat;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select EstIcm.CodIcm,' +
      ' EstIcm.CodSt2,' +
      ' EstIcm.PerIcm From EstIcm' +
      ' Where EstIcm.CodIcm = ' + QuotedStr(FatGe2RegIcm.AsString) +
      '   and EstIcm.TipIcm = ' + QuotedStr(FatGe2TipIcm.AsString) +
      '   and EstIcm.UFEMITENTE = ' +
      QuotedStr(fmManGdb.BuscaSimples('GEREMP', 'SIGUFE', ' CodEmp = ' + FatGe2CodEmp.AsString)) +
      ' and EstIcm.CodRegTrib = ' + inttostr(FatGerREGTRBEMP.AsInteger);
    Open;

  end;


  if Trim(quSql.FieldbyName('CodIcm').AsString) <> '' then
  begin
    FatGe2IcmGe2.AsFloat := quSql.FieldbyName('PerIcm').AsFloat;

    if quSql.FieldbyName('CodSt2').AsString <> '' then
      FatGe2CodSt2.AsString := quSql.FieldbyName('CodSt2').AsString;
  end
  else
    FatGe2IcmGe2.AsFloat := 0;

end;

end.

