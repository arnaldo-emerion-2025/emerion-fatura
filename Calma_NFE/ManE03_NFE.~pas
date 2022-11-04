unit ManE03_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLFilters, RLPDFFilter, Db, Wwdatsrc, DBTables, Wwquery, jpeg,
  RLBarcode, RLXLSFilter, RLRichFilter, RLHTMLFilter, RLPreviewForm;

type
  TfmManE03_NFE = class(TForm)
    RLReport1: TRLReport;
    FatDev: TwwQuery;
    DsFatDev: TwwDataSource;
    FatNfe: TwwQuery;
    DsFatNfe: TwwDataSource;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLBand2: TRLBand;
    quSql: TwwQuery;
    RLLabel2: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel101: TRLLabel;
    RLBand1: TRLBand;
    RLDBText39: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText57: TRLDBText;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel73: TRLLabel;
    FatNfeCODCLP: TStringField;
    FatNfeCODGRU: TStringField;
    FatNfeCODSUB: TStringField;
    FatNfeCODPRO: TStringField;
    FatNfeCODTAM: TStringField;
    FatNfeCODCOR: TStringField;
    FatNfeDESNFE: TStringField;
    FatNfeNCMNFE: TStringField;
    FatNfeSITNFE: TStringField;
    FatNfeUNDNFE: TStringField;
    FatNfeCFONFE: TStringField;
    FatNfeQTPNFE: TFloatField;
    FatNfeVLQNFE: TFloatField;
    FatNfeTOTNFE: TFloatField;
    FatNfeBASICM: TFloatField;
    FatNfeTOTICM: TFloatField;
    FatNfeTOTIPI: TFloatField;
    FatNfeICMNFE: TFloatField;
    FatNfeIPINFE: TFloatField;
    FatNfeNRONFE: TIntegerField;
    FatNfeITENFE: TStringField;
    RLLabel107: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel109: TRLLabel;
    RLLabel110: TRLLabel;
    RLLabel111: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter2: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw5: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw13: TRLDraw;
    RLLabel14: TRLLabel;
    ppInsEmp: TRLLabel;
    RLLabel13: TRLLabel;
    RLDBText2: TRLDBText;
    RLDraw14: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw15: TRLDraw;
    RLLabel24: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel20: TRLLabel;
    ppCgcCli: TRLLabel;
    RLLabel19: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel26: TRLLabel;
    ppEndCli: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBBarcode1: TRLDBBarcode;
    ppImagem: TRLImage;
    RLLabel103: TRLLabel;
    ppNomEmp2: TRLLabel;
    ppEndEmp: TRLLabel;
    ppBaiEmp: TRLLabel;
    ppCidEmp: TRLLabel;
    ppFonEmp: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLDBText53: TRLDBText;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    ppTipNot: TRLLabel;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLLabel27: TRLLabel;
    RLDBText11: TRLDBText;
    RLDraw18: TRLDraw;
    RLDraw19: TRLDraw;
    RLLabel30: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel28: TRLLabel;
    ppFonCli: TRLLabel;
    RLDraw20: TRLDraw;
    RLDraw21: TRLDraw;
    RLLabel113: TRLLabel;
    ppCgeCli: TRLLabel;
    RLLabel112: TRLLabel;
    RLDBText3: TRLDBText;
    RLDraw22: TRLDraw;
    RLLabel114: TRLLabel;
    ppIneCli: TRLLabel;
    RLDraw23: TRLDraw;
    RLLabel115: TRLLabel;
    ppEntCli: TRLLabel;
    RLDraw24: TRLDraw;
    RLLabel116: TRLLabel;
    RLDBText6: TRLDBText;
    RLDraw25: TRLDraw;
    RLLabel117: TRLLabel;
    RLDBText8: TRLDBText;
    RLDraw26: TRLDraw;
    RLDraw27: TRLDraw;
    RLLabel119: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel118: TRLLabel;
    RLDBText12: TRLDBText;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLDraw30: TRLDraw;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLDraw31: TRLDraw;
    RLDraw32: TRLDraw;
    RLDraw33: TRLDraw;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLDraw34: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw36: TRLDraw;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLDraw37: TRLDraw;
    RLDraw38: TRLDraw;
    RLDraw39: TRLDraw;
    RLDraw40: TRLDraw;
    RLDraw41: TRLDraw;
    RLDraw42: TRLDraw;
    ppNroDoc1: TRLLabel;
    ppNroDoc4: TRLLabel;
    ppDteDoc4: TRLLabel;
    ppDteDoc1: TRLLabel;
    ppVlpDoc1: TRLLabel;
    ppVlpDoc4: TRLLabel;
    RLDraw43: TRLDraw;
    RLDraw44: TRLDraw;
    RLDraw45: TRLDraw;
    RLDraw46: TRLDraw;
    RLDraw47: TRLDraw;
    RLDraw48: TRLDraw;
    RLDraw49: TRLDraw;
    RLDraw50: TRLDraw;
    RLDraw51: TRLDraw;
    RLDraw52: TRLDraw;
    RLDraw53: TRLDraw;
    RLDraw54: TRLDraw;
    ppNroDoc2: TRLLabel;
    ppNroDoc5: TRLLabel;
    ppDteDoc5: TRLLabel;
    ppDteDoc2: TRLLabel;
    ppVlpDoc2: TRLLabel;
    ppVlpDoc5: TRLLabel;
    ppNroDoc6: TRLLabel;
    ppNroDoc3: TRLLabel;
    ppDteDoc3: TRLLabel;
    ppDteDoc6: TRLLabel;
    ppVlpDoc6: TRLLabel;
    ppVlpDoc3: TRLLabel;
    RLDraw55: TRLDraw;
    RLDraw56: TRLDraw;
    RLDraw57: TRLDraw;
    RLDraw58: TRLDraw;
    RLDraw59: TRLDraw;
    RLDraw60: TRLDraw;
    RLDraw61: TRLDraw;
    RLDraw62: TRLDraw;
    RLDraw63: TRLDraw;
    RLDraw64: TRLDraw;
    RLDraw65: TRLDraw;
    RLDraw66: TRLDraw;
    RLDraw67: TRLDraw;
    RLDraw68: TRLDraw;
    RLDraw69: TRLDraw;
    RLDraw70: TRLDraw;
    RLDraw71: TRLDraw;
    RLDraw72: TRLDraw;
    RLDraw73: TRLDraw;
    RLDraw74: TRLDraw;
    RLDraw75: TRLDraw;
    RLDraw77: TRLDraw;
    RLDraw78: TRLDraw;
    RLDraw79: TRLDraw;
    RLDraw80: TRLDraw;
    RLDraw81: TRLDraw;
    RLDraw82: TRLDraw;
    RLLabel57: TRLLabel;
    RLLabel56: TRLLabel;
    ppEndTra: TRLLabel;
    RLDBText43: TRLDBText;
    RLLabel65: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLDraw76: TRLDraw;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLDBText40: TRLDBText;
    RLLabel71: TRLLabel;
    RLDBText52: TRLDBText;
    ppCgcTra: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel63: TRLLabel;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLLabel64: TRLLabel;
    RLLabel62: TRLLabel;
    pnInfLiq: TRLLabel;
    pnInfBrt: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel59: TRLLabel;
    RLDBText48: TRLDBText;
    RLDBText47: TRLDBText;
    RLLabel58: TRLLabel;
    pnAltVol: TRLLabel;
    RLDBText38: TRLDBText;
    RLLabel55: TRLLabel;
    RLDraw83: TRLDraw;
    RLDraw84: TRLDraw;
    RLDraw85: TRLDraw;
    RLDraw86: TRLDraw;
    RLDraw87: TRLDraw;
    RLDraw88: TRLDraw;
    RLDraw89: TRLDraw;
    RLDraw90: TRLDraw;
    RLDraw91: TRLDraw;
    RLDraw92: TRLDraw;
    RLDraw93: TRLDraw;
    RLDraw94: TRLDraw;
    RLDraw95: TRLDraw;
    RLDraw96: TRLDraw;
    RLDraw97: TRLDraw;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    RLLabel79: TRLLabel;
    RLLabel80: TRLLabel;
    RLLabel81: TRLLabel;
    RLLabel82: TRLLabel;
    RLLabel83: TRLLabel;
    RLLabel84: TRLLabel;
    RLLabel85: TRLLabel;
    RLLabel86: TRLLabel;
    RLLabel91: TRLLabel;
    RLLabel87: TRLLabel;
    RLLabel92: TRLLabel;
    RLLabel88: TRLLabel;
    RLLabel93: TRLLabel;
    RLLabel89: TRLLabel;
    RLLabel94: TRLLabel;
    RLLabel90: TRLLabel;
    RLLabel95: TRLLabel;
    RLDraw98: TRLDraw;
    RLDraw99: TRLDraw;
    RLDraw100: TRLDraw;
    RLLabel96: TRLLabel;
    RLLabel97: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLDraw101: TRLDraw;
    RLLabel98: TRLLabel;
    RLDraw102: TRLDraw;
    RLDraw103: TRLDraw;
    RLDraw104: TRLDraw;
    RLDraw105: TRLDraw;
    RLLabel104: TRLLabel;
    ppNomEmp1: TRLLabel;
    RLDraw106: TRLDraw;
    RLDraw107: TRLDraw;
    RLLabel105: TRLLabel;
    RLLabel106: TRLLabel;
    RLDraw108: TRLDraw;
    RLLabel102: TRLLabel;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLDBText56: TRLDBText;
    RLDraw9: TRLDraw;
    RLLabel21: TRLLabel;
    RLDBText7: TRLDBText;
    RLDraw6: TRLDraw;
    RLDraw10: TRLDraw;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel16: TRLLabel;
    ppCgcEmp: TRLLabel;
    RLLabel18: TRLLabel;
    RLDBText58: TRLDBText;
    RLLabel15: TRLLabel;
    pnTotFrt: TRLLabel;
    pnTotSeg: TRLLabel;
    pnTotDsr: TRLLabel;
    pnTotDes: TRLLabel;
    pnBasSub: TRLLabel;
    pnTotIc1: TRLLabel;
    pnBasIc1: TRLLabel;
    pnTotIp1: TRLLabel;
    pnTotSub: TRLLabel;
    pnTotIte: TRLLabel;
    pnTotGer: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel52: TRLLabel;
    pnCodNfe: TRLLabel;
    pnClsIpi: TRLLabel;
    pnCodSit: TRLLabel;
    pnCodCfo: TRLLabel;
    pnCodUnd: TRLLabel;
    pnQtpNfe: TRLLabel;
    pnVlqNfe: TRLLabel;
    pnTotNfe: TRLLabel;
    pnBasIcm: TRLLabel;
    pnTotIcm: TRLLabel;
    pnTotIpi: TRLLabel;
    pnIcmNfe: TRLLabel;
    pnIpiNfe: TRLLabel;
    FatNfeFAT_CODEMP: TIntegerField;
    FatNfeFAT_DTERES: TDateTimeField;
    FatNfeFAT_NUMRES: TIntegerField;
    FatNfeFAT_SEQLIB: TIntegerField;
    FatNfeFAT_SEQFAT: TIntegerField;
    FatNfeOUT_CODEMP: TIntegerField;
    FatNfeOUT_DTEGER: TDateTimeField;
    FatNfeOUT_NUMGER: TIntegerField;
    FatNfeDEV_CODEMP: TIntegerField;
    FatNfeDEV_DTERES: TDateTimeField;
    FatNfeDEV_NUMRES: TIntegerField;
    FatNfeDEV_SEQLIB: TIntegerField;
    FatNfeDEV_SEQFAT: TIntegerField;
    FatDevCODEMP: TIntegerField;
    FatDevDTERES: TDateTimeField;
    FatDevNUMRES: TIntegerField;
    FatDevSEQLIB: TIntegerField;
    FatDevSEQFAT: TIntegerField;
    FatDevSEQDEV: TIntegerField;
    FatDevNUMNFS: TIntegerField;
    FatDevDTEDEV: TDateTimeField;
    FatDevHREDEV: TStringField;
    FatDevUFEDEV: TStringField;
    FatDevCODPFA: TStringField;
    FatDevTIPPFA: TStringField;
    FatDevDSCREG: TFloatField;
    FatDevPERPIS: TFloatField;
    FatDevPERCOF: TFloatField;
    FatDevCODFIL: TIntegerField;
    FatDevQTDNFS: TIntegerField;
    FatDevNRONFS: TIntegerField;
    FatDevNROSUF: TStringField;
    FatDevFLGAVI: TStringField;
    FatDevCGCCLI: TStringField;
    FatDevINSCLI: TStringField;
    FatDevCODCF1: TStringField;
    FatDevCODCF2: TStringField;
    FatDevFRTDEV: TStringField;
    FatDevFLGENT: TStringField;
    FatDevFLGSAI: TStringField;
    FatDevDESNAT: TStringField;
    FatDevINSSUB: TStringField;
    FatDevTIPFRT: TStringField;
    FatDevMARDEV: TStringField;
    FatDevNRODEV: TStringField;
    FatDevESPDEV: TStringField;
    FatDevNOMTRA: TStringField;
    FatDevCGCTRA: TStringField;
    FatDevINSTRA: TStringField;
    FatDevCEPTRA: TStringField;
    FatDevTENTRA: TStringField;
    FatDevENDTRA: TStringField;
    FatDevREFTRA: TStringField;
    FatDevNUMTRA: TStringField;
    FatDevBAITRA: TStringField;
    FatDevCIDTRA: TStringField;
    FatDevUFETRA: TStringField;
    FatDevPLCTRA: TStringField;
    FatDevUFEPLC: TStringField;
    FatDevCEPCLI: TStringField;
    FatDevTENCLI: TStringField;
    FatDevENDCLI: TStringField;
    FatDevREFCLI: TStringField;
    FatDevNUMCLI: TStringField;
    FatDevBAICLI: TStringField;
    FatDevCIDCLI: TStringField;
    FatDevUFECLI: TStringField;
    FatDevINECLI: TStringField;
    FatDevCGECLI: TStringField;
    FatDevTXFIPI: TStringField;
    FatDevTXFICM: TStringField;
    FatDevOBSDEV: TStringField;
    FatDevQTDDEV: TIntegerField;
    FatDevSEQITE: TIntegerField;
    FatDevQTIDEV: TIntegerField;
    FatDevLINDEV: TIntegerField;
    FatDevQTDVOL: TIntegerField;
    FatDevINFLIQ: TFloatField;
    FatDevTOTLIQ: TFloatField;
    FatDevINFBRT: TFloatField;
    FatDevTOTBRT: TFloatField;
    FatDevBASIPI: TFloatField;
    FatDevTOTIPI: TFloatField;
    FatDevBASICM: TFloatField;
    FatDevTOTICM: TFloatField;
    FatDevBASSUB: TFloatField;
    FatDevTOTSUB: TFloatField;
    FatDevTOTDEV: TFloatField;
    FatDevTOTPIS: TFloatField;
    FatDevTOTCOF: TFloatField;
    FatDevTOTFRT: TFloatField;
    FatDevTOTSEG: TFloatField;
    FatDevTOTDES: TFloatField;
    FatDevBSICMF: TFloatField;
    FatDevBAICMF: TFloatField;
    FatDevTOICMF: TFloatField;
    FatDevBSICMS: TFloatField;
    FatDevBAICMS: TFloatField;
    FatDevTOICMS: TFloatField;
    FatDevBSICMD: TFloatField;
    FatDevBAICMD: TFloatField;
    FatDevTOICMD: TFloatField;
    FatDevBSIPIF: TFloatField;
    FatDevBAIPIF: TFloatField;
    FatDevTOIPIF: TFloatField;
    FatDevBSIPIS: TFloatField;
    FatDevBAIPIS: TFloatField;
    FatDevTOIPIS: TFloatField;
    FatDevBSIPID: TFloatField;
    FatDevBAIPID: TFloatField;
    FatDevTOIPID: TFloatField;
    FatDevTOTGER: TFloatField;
    FatDevBASCOM: TFloatField;
    FatDevTOTCOM: TFloatField;
    FatDevTOTDSR: TFloatField;
    FatDevDESREG: TStringField;
    FatDevCODUSU: TIntegerField;
    FatDevATUEST: TStringField;
    FatDevLANEST: TStringField;
    FatDevINTFIN: TStringField;
    FatDevCONSUM: TStringField;
    FatDevFLGCTB: TStringField;
    FatDevCODIPI: TStringField;
    FatDevTIPIPI: TStringField;
    FatDevTRBIPI: TStringField;
    FatDevREDIPI: TFloatField;
    FatDevBSCIPI: TFloatField;
    FatDevCODICM: TStringField;
    FatDevTIPICM: TStringField;
    FatDevTRBICM: TStringField;
    FatDevREDICM: TFloatField;
    FatDevBSCICM: TFloatField;
    FatDevINCREV: TFloatField;
    FatDevINCFIN: TFloatField;
    FatDevOBSMDV: TMemoField;
    FatDevSEQREG: TStringField;
    FatDevFLGDIF: TStringField;
    FatDevFLGDEV: TStringField;
    FatDevFLGATU: TStringField;
    FatDevSITDEV: TStringField;
    FatDevCODCLI: TIntegerField;
    FatDevCODVEN: TIntegerField;
    FatDevMODPFA: TStringField;
    FatDevFLGNFS: TStringField;
    FatDevHRCDEV: TStringField;
    FatDevDTCDEV: TDateTimeField;
    FatDevUSUCFT: TIntegerField;
    FatDevOBSCFT: TMemoField;
    FatDevFLGSIN: TStringField;
    FatDevFLGFSC: TStringField;
    FatDevSERNOT: TStringField;
    FatDevMODDEV: TStringField;
    FatDevOB1DEV: TStringField;
    FatDevOB2DEV: TStringField;
    FatDevOB3DEV: TStringField;
    FatDevOB4DEV: TStringField;
    FatDevOB5DEV: TStringField;
    FatDevOB6DEV: TStringField;
    FatDevOB7DEV: TStringField;
    FatDevOB8DEV: TStringField;
    FatDevFLGIMP: TStringField;
    FatDevNOMENT: TStringField;
    FatDevQTDDSE: TIntegerField;
    FatDevSEQDSE: TIntegerField;
    FatDevTOTDSE: TFloatField;
    FatDevBASISS: TFloatField;
    FatDevTOTISS: TFloatField;
    FatDevTOTFAT: TFloatField;
    FatDevFLGTOT: TStringField;
    FatDevCODTCL: TIntegerField;
    FatDevFLGENV: TStringField;
    FatDevNFSCLI: TIntegerField;
    FatDevCEFCLI: TStringField;
    FatDevTEFCLI: TStringField;
    FatDevENFCLI: TStringField;
    FatDevRFFCLI: TStringField;
    FatDevNRFCLI: TStringField;
    FatDevBAFCLI: TStringField;
    FatDevCIFCLI: TStringField;
    FatDevUFFCLI: TStringField;
    FatDevID_FINUFF: TIntegerField;
    FatDevID_FINCIF: TIntegerField;
    FatDevID_TRAUFE: TIntegerField;
    FatDevID_TRACIE: TIntegerField;
    FatDevID_FINUFE: TIntegerField;
    FatDevID_FINCIE: TIntegerField;
    FatDevID_ESTSIP: TIntegerField;
    FatDevTRBPIS: TStringField;
    FatDevNFEPIS: TStringField;
    FatDevTRBCOF: TStringField;
    FatDevNFECOF: TStringField;
    FatDevFLGNOT: TStringField;
    FatDevFLGNFE: TStringField;
    FatDevENVNFE: TStringField;
    FatDevSEQNFE: TStringField;
    FatDevDTENFE: TDateTimeField;
    FatDevRECNFE: TStringField;
    FatDevPRONFE: TStringField;
    FatDevLOTNFE: TIntegerField;
    FatDevDTEPNF: TDateTimeField;
    FatDevHREPNF: TStringField;
    FatDevDOPNFE: TDateTimeField;
    FatDevHRENFE: TStringField;
    FatDevUSUNFE: TIntegerField;
    FatDevIMPNFE: TStringField;
    FatDevRETNFE: TStringField;
    FatDevDTCNFE: TDateTimeField;
    FatDevHRCNFE: TStringField;
    FatDevPRCNFE: TStringField;
    FatDevDTECNE: TDateTimeField;
    FatDevHRECNE: TStringField;
    FatDevARQNFE: TBlobField;
    FatDevCODTRA: TIntegerField;
    FatDevNOMCLI: TStringField;
    FatDevPT1CLI: TStringField;
    FatDevFO1CLI: TStringField;
    FatDevNFE: TStringField;
    FatNfeDEV_SEQDEV: TIntegerField;
    RLDBText4: TRLDBText;
    RLDBText16: TRLDBText;
    RLDraw122: TRLDraw;
    RLDraw121: TRLDraw;
    RLDraw120: TRLDraw;
    RLDraw119: TRLDraw;
    RLDraw118: TRLDraw;
    RLDraw117: TRLDraw;
    RLDraw116: TRLDraw;
    RLDraw115: TRLDraw;
    RLDraw110: TRLDraw;
    RLDraw109: TRLDraw;
    RLDraw114: TRLDraw;
    RLDraw113: TRLDraw;
    RLDraw112: TRLDraw;
    RLDraw111: TRLDraw;
    pnDesNfe: TRLMemo;
    FatNfeDES2NFE: TStringField;
    RLLabel120: TRLLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1PageStarting(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IncPag: integer;
  fmManE03_NFE: TfmManE03_NFE;

implementation

uses SendMailOptions, Bbgeral, Bbfuncao;

{$R *.DFM}

procedure TfmManE03_NFE.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  SeqPar: integer;
begin
  if RLReport1.PageNumber = 1 then
  begin
    RLBand1.Height := 580;
    //RLReport1.Background.Picture.LoadFromFile('C:\Emerion\NFE.jpg');

    RLLabel31.Visible := True;
    RLLabel19.Visible := True;
    RLDBText5.Visible := True;
    RLLabel26.Visible := True;
    RLLabel20.Visible := True;
    ppCgcCli.Visible := True;
    RLLabel25.Visible := True;
    RLLabel24.Visible := True;
    RLLabel21.Visible := True;
    RLDBText7.Visible := True;
    RLLabel22.Visible := True;

    RLLabel74.Top := 556;
    RLLabel82.Top := 556;
    RLLabel84.Top := 556;
    RLLabel86.Top := 556;
    RLLabel87.Top := 556;
    RLLabel88.Top := 556;
    RLLabel89.Top := 556;
    RLLabel90.Top := 556;

    RLLabel75.Top := 566;
    RLLabel83.Top := 566;
    RLLabel85.Top := 566;
    RLLabel91.Top := 566;
    RLLabel92.Top := 566;
    RLLabel93.Top := 566;
    RLLabel94.Top := 566;
    RLLabel95.Top := 566;

    RLLabel76.Top := 561;
    RLLabel77.Top := 561;
    RLLabel78.Top := 561;
    RLLabel79.Top := 561;
    RLLabel80.Top := 561;
    RLLabel81.Top := 561;

    RLBand2.Visible := True;

    RLDraw84.Top := 553;
    RLDraw85.Top := 553;
    RLDraw86.Top := 553;
    RLDraw87.Top := 553;
    RLDraw88.Top := 553;
    RLDraw89.Top := 553;
    RLDraw90.Top := 553;
    RLDraw91.Top := 553;
    RLDraw92.Top := 553;
    RLDraw93.Top := 553;
    RLDraw94.Top := 553;
    RLDraw95.Top := 553;
    RLDraw96.Top := 553;
    RLDraw97.Top := 553;

    RLDraw111.Height := 215;
    RLDraw112.Height := 215;
    RLDraw113.Height := 215;
    RLDraw114.Height := 215;
    RLDraw109.Height := 215;
    RLDraw110.Height := 215;
    RLDraw115.Height := 215;
    RLDraw116.Height := 215;
    RLDraw117.Height := 215;
    RLDraw118.Height := 215;
    RLDraw119.Height := 215;
    RLDraw120.Height := 215;
    RLDraw121.Height := 215;
    RLDraw122.Height := 215;

  end
  else
  begin
    RLBand1.Height := 190;
    //RLReport1.Background.Picture.LoadFromFile('C:\Emerion\NFE2.jpg');

    RLLabel31.Visible := False;
    RLLabel19.Visible := False;
    RLDBText5.Visible := False;
    RLLabel26.Visible := False;
    RLLabel20.Visible := False;
    ppCgcCli.Visible := False;
    RLLabel25.Visible := False;
    RLLabel24.Visible := False;
    RLLabel21.Visible := False;
    RLDBText7.Visible := False;
    RLLabel22.Visible := False;

    RLLabel74.Top := 160;
    RLLabel82.Top := 160;
    RLLabel84.Top := 160;
    RLLabel86.Top := 160;
    RLLabel87.Top := 160;
    RLLabel88.Top := 160;
    RLLabel89.Top := 160;
    RLLabel90.Top := 160;

    RLLabel75.Top := 170;
    RLLabel83.Top := 170;
    RLLabel85.Top := 170;
    RLLabel91.Top := 170;
    RLLabel92.Top := 170;
    RLLabel93.Top := 170;
    RLLabel94.Top := 170;
    RLLabel95.Top := 170;

    RLLabel76.Top := 165;
    RLLabel77.Top := 165;
    RLLabel78.Top := 165;
    RLLabel79.Top := 165;
    RLLabel80.Top := 165;
    RLLabel81.Top := 165;

    RLBand2.Visible := False;

    RLDraw84.Top := 363;
    RLDraw85.Top := 363;
    RLDraw86.Top := 363;
    RLDraw87.Top := 363;
    RLDraw88.Top := 363;
    RLDraw89.Top := 363;
    RLDraw90.Top := 363;
    RLDraw91.Top := 363;
    RLDraw92.Top := 363;
    RLDraw93.Top := 363;
    RLDraw94.Top := 363;
    RLDraw95.Top := 363;
    RLDraw96.Top := 363;
    RLDraw97.Top := 363;

    RLDraw111.Height := 855;
    RLDraw112.Height := 855;
    RLDraw113.Height := 855;
    RLDraw114.Height := 855;
    RLDraw109.Height := 855;
    RLDraw110.Height := 855;
    RLDraw115.Height := 855;
    RLDraw116.Height := 855;
    RLDraw117.Height := 855;
    RLDraw118.Height := 855;
    RLDraw119.Height := 855;
    RLDraw120.Height := 855;
    RLDraw121.Height := 855;
    RLDraw122.Height := 855;
  end;

  if FileExists('C:\Emerion\Print.bmp') then
    ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
    ppImagem.Picture.Bitmap.FreeImage;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select GerEmp.NomEmp,' +
      '        GerEmp.InsEmp,' +
      '        GerEmp.CgcEmp,' +
      '        GerEmp.CepEmp,' +
      '        GerEmp.TenEmp,' +
      '        GerEmp.EndEmp,' +
      '        GerEmp.NumEmp,' +
      '        GerEmp.RefEmp,' +
      '        GerEmp.BaiEmp,' +
      '        GerEmp.CidEmp,' +
      '        GerEmp.SigUfe,' +
      '        GerEmp.PrtEmp,' +
      '        GerEmp.FonEmp ' +
      ' From GerEmp' +
      ' Where GerEmp.CodEmp = ' + QuotedStr(IntToStr(FatDevCodEmp.Value));
    Open;

    ppNomEmp1.Caption := FieldbyName('NomEmp').AsString;
    ppNomEmp2.Caption := FieldbyName('NomEmp').AsString;

    if Trim(FieldbyName('TenEmp').AsString) <> '' then
      ppEndEmp.Caption := Trim(FieldbyName('TenEmp').AsString) + ' ' + Trim(FieldbyName('EndEmp').AsString)
    else
      ppEndEmp.Caption := Trim(FieldbyName('EndEmp').AsString);

    if Trim(FieldbyName('NumEmp').AsString) <> '' then
      ppEndEmp.Caption := ppEndEmp.Caption + ', ' + Trim(FieldbyName('NumEmp').AsString);

    if Trim(FieldbyName('RefEmp').AsString) <> '' then
      ppEndEmp.Caption := ppEndEmp.Caption + ' ' + Trim(FieldbyName('RefEmp').AsString);

    ppBaiEmp.Caption := Trim(FieldbyName('BaiEmp').AsString);

    if Trim(FieldbyName('CidEmp').AsString) <> '' then
      ppCidEmp.Caption := Trim(FieldbyName('CidEmp').AsString);

    if Trim(FieldbyName('SigUfe').AsString) <> '' then
    begin

      if Trim(ppCidEmp.Caption) <> '' then
        ppCidEmp.Caption := ppCidEmp.Caption + ' - ' + Trim(FieldbyName('SigUfe').AsString)
      else
        ppCidEmp.Caption := Trim(FieldbyName('SigUfe').AsString);

    end;

    if Trim(FieldbyName('CepEmp').AsString) <> '' then
    begin

      if Trim(ppCidEmp.Caption) <> '' then
        ppCidEmp.Caption := ppCidEmp.Caption + ' CEP ' + copy(FieldbyName('CepEmp').AsString, 1, 5) + '-' + copy(FieldbyName('CepEmp').AsString, 6, 3)
      else
        ppCidEmp.Caption := 'CEP ' + copy(FieldbyName('CepEmp').AsString, 1, 5) + '-' + copy(FieldbyName('CepEmp').AsString, 6, 3)

    end;

    if Trim(FieldbyName('PrtEmp').AsString) <> '' then
      ppFonEmp.Caption := '(' + Trim(FieldbyName('PrtEmp').AsString) + ') ' + Trim(FieldbyName('FonEmp').AsString)
    else
      ppFonEmp.Caption := Trim(FieldbyName('FonEmp').AsString);

    ppInsEmp.Caption := FieldbyName('InsEmp').AsString;
    ppCgcEmp.Caption := fFormatCGCCPF(FieldbyName('CgcEmp').AsString);

  end;

  ppCgcCli.Caption := fFormatCGCCPF(FatDevCgcCli.Value);

  if Trim(FatDevCgeCli.Value) <> '' then
    ppCgeCli.Caption := fFormatCGCCPF(FatDevCgeCli.Value)
  else
    ppCgeCli.Caption := fFormatCGCCPF(FatDevCgcCli.Value);

  if Trim(FatDevIneCli.Value) <> '' then
    ppIneCli.Caption := Trim(FatDevIneCli.Value)
  else
    ppIneCli.Caption := Trim(FatDevInsCli.Value);

  if Trim(FatDevPt1Cli.Value) <> '' then
    ppFonCli.Caption := '(' + Trim(FatDevPt1Cli.Value) + ') ' + Trim(FatDevFo1Cli.Value)
  else
    ppFonCli.Caption := Trim(FatDevFo1Cli.Value);

  ppCgcTra.Caption := fFormatCGCCPF(FatDevCgcTra.Value);

  if Trim(FatDevTefCli.Value) <> '' then
    ppEndCli.Caption := Trim(FatDevTefCli.Value) + ' ' + Trim(FatDevEnfCli.Value)
  else
    ppEndCli.Caption := Trim(FatDevEnfCli.Value);

  if Trim(FatDevNrfCli.Value) <> '' then
    ppEndCli.Caption := ppEndCli.Caption + ', ' + Trim(FatDevNrfCli.Value);

  if Trim(FatDevRffCli.Value) <> '' then
    ppEndCli.Caption := ppEndCli.Caption + ' ' + Trim(FatDevRffCli.Value);

  if Trim(FatDevTenCli.Value) <> '' then
    ppEntCli.Caption := Trim(FatDevTenCli.Value) + ' ' + Trim(FatDevEndCli.Value)
  else
    ppEntCli.Caption := Trim(FatDevEndCli.Value);

  if Trim(FatDevNumCli.Value) <> '' then
    ppEntCli.Caption := ppEntCli.Caption + ', ' + Trim(FatDevNumCli.Value);

  if Trim(FatDevRefCli.Value) <> '' then
    ppEntCli.Caption := ppEntCli.Caption + ' ' + Trim(FatDevRefCli.Value);

  if Trim(FatDevTenTra.Value) <> '' then
    ppEndTra.Caption := Trim(FatDevTenTra.Value) + ' ' + Trim(FatDevEndTra.Value)
  else
    ppEndTra.Caption := Trim(FatDevEndTra.Value);

  if Trim(FatDevNumTra.Value) <> '' then
    ppEndTra.Caption := ppEndTra.Caption + ', ' + Trim(FatDevNumTra.Value);

  if Trim(FatDevRefTra.Value) <> '' then
    ppEndTra.Caption := ppEndTra.Caption + ' ' + Trim(FatDevRefTra.Value);

  ppTipNot.Caption := '0';

  ppNroDoc1.Caption := '';
  ppNroDoc2.Caption := '';
  ppNroDoc3.Caption := '';
  ppNroDoc4.Caption := '';
  ppNroDoc5.Caption := '';
  ppNroDoc6.Caption := '';

  ppDteDoc1.Caption := '';
  ppDteDoc2.Caption := '';
  ppDteDoc3.Caption := '';
  ppDteDoc4.Caption := '';
  ppDteDoc5.Caption := '';
  ppDteDoc6.Caption := '';

  ppVlpDoc1.Caption := '';
  ppVlpDoc2.Caption := '';
  ppVlpDoc3.Caption := '';
  ppVlpDoc4.Caption := '';
  ppVlpDoc5.Caption := '';
  ppVlpDoc6.Caption := '';

  if IncPag = 1 then
  begin

    SeqPar := 1;

    if FatDevBasIcm.Value > 0 then
      pnBasIc1.Caption := FormatFloat('###,###,##0.00', FatDevBasIcm.Value)
    else
      pnBasIc1.Caption := '';

    if FatDevTotIcm.Value > 0 then
      pnTotIc1.Caption := FormatFloat('###,###,##0.00', FatDevTotIcm.Value)
    else
      pnTotIc1.Caption := '';

    if FatDevBasSub.Value > 0 then
      pnBasSub.Caption := FormatFloat('###,###,##0.00', FatDevBasSub.Value)
    else
      pnBasSub.Caption := '';

    if FatDevTotSub.Value > 0 then
      pnTotSub.Caption := FormatFloat('###,###,##0.00', FatDevTotSub.Value)
    else
      pnTotSub.Caption := '';

    if FatDevTotDev.Value > 0 then
      pnTotIte.Caption := FormatFloat('###,###,##0.00', FatDevTotDev.Value)
    else
      pnTotIte.Caption := '';

    if FatDevTotFrt.Value > 0 then
      pnTotFrt.Caption := FormatFloat('###,###,##0.00', FatDevTotFrt.Value)
    else
      pnTotFrt.Caption := '';

    if FatDevTotSeg.Value > 0 then
      pnTotSeg.Caption := FormatFloat('###,###,##0.00', FatDevTotSeg.Value)
    else
      pnTotSeg.Caption := '';

    if FatDevTotDsr.Value > 0 then
      pnTotDsr.Caption := FormatFloat('###,###,##0.00', FatDevTotDsr.Value)
    else
      pnTotDsr.Caption := '';

    if FatDevTotDes.Value > 0 then
      pnTotDes.Caption := FormatFloat('###,###,##0.00', FatDevTotDes.Value)
    else
      pnTotDes.Caption := '';

    if FatDevTotIpi.Value > 0 then
      pnTotIp1.Caption := FormatFloat('###,###,##0.00', FatDevTotIpi.Value)
    else
      pnTotIp1.Caption := '';

    if FatDevTotGer.Value > 0 then
      pnTotGer.Caption := FormatFloat('###,###,##0.00', FatDevTotGer.Value)
    else
      pnTotGer.Caption := '';

    if FatDevQtdVol.Value > 0 then
      pnAltVol.Caption := IntToStr(FatDevQtdVol.Value)
    else
      pnAltVol.Caption := '';

    if FatDevInfLiq.Value > 0 then
      pnInfLiq.Caption := FormatFloat('###,###,##0.0000', FatDevInfLiq.Value)
    else
      pnInfLiq.Caption := '';

    if FatDevInfBrt.Value > 0 then
      pnInfBrt.Caption := FormatFloat('###,###,##0.0000', FatDevInfBrt.Value)
    else
      pnInfBrt.Caption := '';

  end
  else
  begin

    pnBasIc1.Caption := '';
    pnTotIc1.Caption := '';
    pnBasSub.Caption := '';
    pnTotSub.Caption := '';
    pnTotIte.Caption := '';
    pnTotFrt.Caption := '';
    pnTotSeg.Caption := '';
    pnTotDsr.Caption := '';
    pnTotDes.Caption := '';
    pnTotIp1.Caption := '';
    pnTotGer.Caption := '';
    pnAltVol.Caption := '';
    pnInfLiq.Caption := '';
    pnInfBrt.Caption := '';

  end;
end;

procedure TfmManE03_NFE.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if FatNfeIteNfe.Value = 'Sim' then
  begin

    pnCodNfe.Caption := FatNfeCodClp.Value + '-' + FatNfeCodGru.Value + '.' + FatNfeCodSub.Value + '.' + FatNfeCodPro.Value;

    pnDesNfe.Lines.Clear;
    pnDesNfe.Lines.Add(Trim(FatNfeDesNfe.Value));

    if Trim(FatNfeDES2NFE.AsString) <> '' then
    begin
      if Trim(FatNfeDES2NFE.AsString) = '|' then
        pnDesNfe.Lines.Add(' ')
      else
        pnDesNfe.Lines.Add(Trim(FatNfeDES2NFE.Value));
    end;

    if Trim(fLimpaStr(FatNfeNcmNfe.Value)) <> '00000000' then
      pnClsIpi.Caption := Trim(fLimpaStr(FatNfeNcmNfe.Value))
    else
      pnClsIpi.Caption := ' ';

    pnCodSit.Caption := Trim(FatNfeSitNfe.Value);
    pnCodCfo.Caption := Trim(FatNfeCfoNfe.Value);
    pnCodUnd.Caption := Trim(FatNfeUndNfe.Value);

    if fEncDecimal(FatNfeQtpNfe.Value) > 0 then
      pnQtpNfe.Caption := FormatFloat('###,###,##0.0000', FatNfeQtpNfe.Value)
    else
      pnQtpNfe.Caption := FormatFloat('####,###,##0', FatNfeQtpNfe.Value);

    pnVlqNfe.Caption := FormatFloat('###,###,##0.0000', FatNfeVlqNfe.Value);

    pnTotNfe.Caption := FormatFloat('###,###,##0.00', FatNfeTotNfe.Value);
    pnBasIcm.Caption := FormatFloat('###,###,##0.00', FatNfeBasIcm.Value);
    pnTotIcm.Caption := FormatFloat('###,###,##0.00', FatNfeTotIcm.Value);
    pnTotIpi.Caption := FormatFloat('###,###,##0.00', FatNfeTotIpi.Value);
    pnIcmNfe.Caption := FormatFloat('##0', FatNfeIcmNfe.Value);
    pnIpiNfe.Caption := FormatFloat('##0', FatNfeIpiNfe.Value);

  end
  else
  begin

    pnCodNfe.Caption := '';

    //pnDesNfe.Caption := Trim(FatNfeDesNfe.Value);
    pnDesNfe.Lines.Clear;
    pnDesNfe.Lines.Add(Trim(copy(FatNfeDesNfe.Value, 1, 40)));

    pnClsIpi.Caption := '';
    pnCodSit.Caption := '';
    pnCodCfo.Caption := '';
    pnCodUnd.Caption := '';
    pnQtpNfe.Caption := '';
    pnVlqNfe.Caption := '';
    pnTotNfe.Caption := '';
    pnBasIcm.Caption := '';
    pnTotIcm.Caption := '';
    pnTotIpi.Caption := '';
    pnIcmNfe.Caption := '';
    pnIpiNfe.Caption := '';

  end;
end;

procedure TfmManE03_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatNfe' +
      ' Where FatNfe.Dev_CodEmp = ' + QuotedStr(IntToStr(FatDevCodEmp.Value)) +
      '   and FatNfe.Dev_DteRes = ' + QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
      '   and FatNfe.Dev_NumRes = ' + QuotedStr(IntToStr(FatDevNumRes.Value)) +
      '   and FatNfe.Dev_SeqLib = ' + QuotedStr(IntToStr(FatDevSeqLib.Value)) +
      '   and FatNfe.Dev_SeqFat = ' + QuotedStr(IntToStr(FatDevSeqFat.Value)) +
      '   and FatNfe.Dev_SeqDev = ' + QuotedStr(IntToStr(FatDevSeqDev.Value));
    ExecSQL;

  end;
end;

procedure TfmManE03_NFE.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE03_NFE.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  IncPag := 1;
end;

procedure TfmManE03_NFE.RLReport1PageStarting(Sender: TObject);
begin
  IncPag := IncPag + 1;
end;

end.
