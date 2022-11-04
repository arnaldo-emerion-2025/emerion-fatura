unit ManE02_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLFilters, RLPDFFilter, Db, Wwdatsrc, DBTables, Wwquery, jpeg,
  RLBarcode, RLXLSFilter, RLRichFilter, RLHTMLFilter, RLPreviewForm;

type
  TfmManE02_NFE = class(TForm)
    RLReport1: TRLReport;
    FatGer: TwwQuery;
    DsFatGer: TwwDataSource;
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
    pnDesNfe: TRLLabel;
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
    FatGerBSICMF: TFloatField;
    FatGerBAICMF: TFloatField;
    FatGerTOICMF: TFloatField;
    FatGerBSICMS: TFloatField;
    FatGerBAICMS: TFloatField;
    FatGerTOICMS: TFloatField;
    FatGerBSICMD: TFloatField;
    FatGerBAICMD: TFloatField;
    FatGerTOICMD: TFloatField;
    FatGerBSIPIF: TFloatField;
    FatGerBAIPIF: TFloatField;
    FatGerTOIPIF: TFloatField;
    FatGerBSIPIS: TFloatField;
    FatGerBAIPIS: TFloatField;
    FatGerTOIPIS: TFloatField;
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
    FatGerOB1GER: TStringField;
    FatGerOB2GER: TStringField;
    FatGerOB3GER: TStringField;
    FatGerOB4GER: TStringField;
    FatGerOB5GER: TStringField;
    FatGerOB6GER: TStringField;
    FatGerOB7GER: TStringField;
    FatGerOB8GER: TStringField;
    FatGerCODTCL: TIntegerField;
    FatGerTRBPIS: TStringField;
    FatGerTRBCOF: TStringField;
    FatGerCODTRA: TIntegerField;
    FatGerNFEPIS: TStringField;
    FatGerNFECOF: TStringField;
    FatGerID_ESTSIP: TIntegerField;
    FatGerCEFCLI: TStringField;
    FatGerTEFCLI: TStringField;
    FatGerENFCLI: TStringField;
    FatGerRFFCLI: TStringField;
    FatGerNRFCLI: TStringField;
    FatGerBAFCLI: TStringField;
    FatGerCIFCLI: TStringField;
    FatGerUFFCLI: TStringField;
    FatGerID_FINUFF: TIntegerField;
    FatGerID_FINCIF: TIntegerField;
    FatGerID_TRAUFE: TIntegerField;
    FatGerID_TRACIE: TIntegerField;
    FatGerID_FINUFE: TIntegerField;
    FatGerID_FINCIE: TIntegerField;
    FatGerFLGNFE: TStringField;
    FatGerENVNFE: TStringField;
    FatGerSEQNFE: TStringField;
    FatGerDTENFE: TDateTimeField;
    FatGerRECNFE: TStringField;
    FatGerPRONFE: TStringField;
    FatGerLOTNFE: TIntegerField;
    FatGerDTEPNF: TDateTimeField;
    FatGerHREPNF: TStringField;
    FatGerDOPNFE: TDateTimeField;
    FatGerHRENFE: TStringField;
    FatGerUSUNFE: TIntegerField;
    FatGerIMPNFE: TStringField;
    FatGerRETNFE: TStringField;
    FatGerDTECNE: TDateTimeField;
    FatGerHRECNE: TStringField;
    FatGerARQNFE: TBlobField;
    FatGerDTCNFE: TDateTimeField;
    FatGerHRCNFE: TStringField;
    FatGerPRCNFE: TStringField;
    FatGerUFECOM: TStringField;
    FatGerDTECOM: TDateTimeField;
    FatGerNFSCOM: TIntegerField;
    FatGerSEQCOM: TStringField;
    FatGerMODPFA: TStringField;
    FatGerNOMCLI: TStringField;
    FatGerPT1CLI: TStringField;
    FatGerFO1CLI: TStringField;
    FatGerNFE: TStringField;
    RLDBText4: TRLDBText;
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
    RLDBText16: TRLDBText;
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
  fmManE02_NFE: TfmManE02_NFE;

implementation

uses SendMailOptions, Bbgeral, Bbfuncao;

{$R *.DFM}

procedure TfmManE02_NFE.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  SeqPar : integer;
begin

  if FileExists('C:\Emerion\Print.bmp') then
     ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     ppImagem.Picture.Bitmap.FreeImage;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.NomEmp,'+
               '        GerEmp.InsEmp,'+
               '        GerEmp.CgcEmp,'+
               '        GerEmp.CepEmp,'+
               '        GerEmp.TenEmp,'+
               '        GerEmp.EndEmp,'+
               '        GerEmp.NumEmp,'+
               '        GerEmp.RefEmp,'+
               '        GerEmp.BaiEmp,'+
               '        GerEmp.CidEmp,'+
               '        GerEmp.SigUfe,'+
               '        GerEmp.PrtEmp,'+
               '        GerEmp.FonEmp '+                                                                                                                                                      
               ' From GerEmp'+
               ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(FatGerCodEmp.Value));
       Open;

       ppNomEmp1.Caption := FieldbyName('NomEmp').AsString;
       ppNomEmp2.Caption := FieldbyName('NomEmp').AsString;

       if Trim(FieldbyName('TenEmp').AsString) <> '' then
          ppEndEmp.Caption := Trim(FieldbyName('TenEmp').AsString)+ ' ' +Trim(FieldbyName('EndEmp').AsString)
       else
          ppEndEmp.Caption := Trim(FieldbyName('EndEmp').AsString);

       if Trim(FieldbyName('NumEmp').AsString) <> '' then
          ppEndEmp.Caption := ppEndEmp.Caption+ ', ' +Trim(FieldbyName('NumEmp').AsString);

       if Trim(FieldbyName('RefEmp').AsString) <> '' then
          ppEndEmp.Caption := ppEndEmp.Caption+ ' ' +Trim(FieldbyName('RefEmp').AsString);

       ppBaiEmp.Caption := Trim(FieldbyName('BaiEmp').AsString);

       if Trim(FieldbyName('CidEmp').AsString) <> '' then
          ppCidEmp.Caption := Trim(FieldbyName('CidEmp').AsString);

       if Trim(FieldbyName('SigUfe').AsString) <> '' then begin

          if Trim(ppCidEmp.Caption) <> '' then
             ppCidEmp.Caption := ppCidEmp.Caption+ ' - ' +Trim(FieldbyName('SigUfe').AsString)
          else
             ppCidEmp.Caption := Trim(FieldbyName('SigUfe').AsString);

       end;

       if Trim(FieldbyName('CepEmp').AsString) <> '' then begin

          if Trim(ppCidEmp.Caption) <> '' then
             ppCidEmp.Caption := ppCidEmp.Caption+ ' CEP ' +copy(FieldbyName('CepEmp').AsString,1,5)+ '-' +copy(FieldbyName('CepEmp').AsString,6,3)
          else
             ppCidEmp.Caption := 'CEP '+copy(FieldbyName('CepEmp').AsString,1,5)+ '-' +copy(FieldbyName('CepEmp').AsString,6,3)

       end;
       
       if Trim(FieldbyName('PrtEmp').AsString) <> '' then
          ppFonEmp.Caption := '('+ Trim(FieldbyName('PrtEmp').AsString)+ ') ' +Trim(FieldbyName('FonEmp').AsString)
       else
          ppFonEmp.Caption := Trim(FieldbyName('FonEmp').AsString);

       ppInsEmp.Caption := FieldbyName('InsEmp').AsString;
       ppCgcEmp.Caption := fFormatCGCCPF(FieldbyName('CgcEmp').AsString);

  end;

  ppCgcCli.Caption := fFormatCGCCPF(FatGerCgcCli.Value);

  if Trim(FatGerCgeCli.Value) <> '' then
     ppCgeCli.Caption := fFormatCGCCPF(FatGerCgeCli.Value)
  else
     ppCgeCli.Caption := fFormatCGCCPF(FatGerCgcCli.Value);

  if Trim(FatGerIneCli.Value) <> '' then
     ppIneCli.Caption := Trim(FatGerIneCli.Value)
  else
     ppIneCli.Caption := Trim(FatGerInsCli.Value);

  if Trim(FatGerPt1Cli.Value) <> '' then
     ppFonCli.Caption := '(' +Trim(FatGerPt1Cli.Value)+ ') ' +Trim(FatGerFo1Cli.Value)
  else
     ppFonCli.Caption := Trim(FatGerFo1Cli.Value);

  ppCgcTra.Caption := fFormatCGCCPF(FatGerCgcTra.Value);

  if Trim(FatGerTefCli.Value) <> '' then
     ppEndCli.Caption := Trim(FatGerTefCli.Value)+ ' ' +Trim(FatGerEnfCli.Value)
  else
     ppEndCli.Caption := Trim(FatGerEnfCli.Value);

  if Trim(FatGerNrfCli.Value) <> '' then
     ppEndCli.Caption := ppEndCli.Caption+ ', ' +Trim(FatGerNrfCli.Value);

  if Trim(FatGerRffCli.Value) <> '' then
     ppEndCli.Caption := ppEndCli.Caption+ ' ' +Trim(FatGerRffCli.Value);

  if Trim(FatGerTenCli.Value) <> '' then
     ppEntCli.Caption := Trim(FatGerTenCli.Value)+ ' ' +Trim(FatGerEndCli.Value)
  else
     ppEntCli.Caption := Trim(FatGerEndCli.Value);

  if Trim(FatGerNumCli.Value) <> '' then
     ppEntCli.Caption := ppEntCli.Caption+ ', ' +Trim(FatGerNumCli.Value);

  if Trim(FatGerRefCli.Value) <> '' then
     ppEntCli.Caption := ppEntCli.Caption+ ' ' +Trim(FatGerRefCli.Value);

  if Trim(FatGerTenTra.Value) <> '' then
     ppEndTra.Caption := Trim(FatGerTenTra.Value)+ ' ' +Trim(FatGerEndTra.Value)
  else
     ppEndTra.Caption := Trim(FatGerEndTra.Value);

  if Trim(FatGerNumTra.Value) <> '' then
     ppEndTra.Caption := ppEndTra.Caption+ ', ' +Trim(FatGerNumTra.Value);

  if Trim(FatGerRefTra.Value) <> '' then
     ppEndTra.Caption := ppEndTra.Caption+ ' ' +Trim(FatGerRefTra.Value);

  if Trim(FatGerTipPfa.Value) = 'Entrada' then
     ppTipNot.Caption := '0'
  else
     ppTipNot.Caption := '1';

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

  if IncPag =  1 then begin
  
     with quSQL,SQL do begin

          Close;
          Text := ' Select FatGe3.NroGe3,'+
                  '        FatGe3.DtvGe3,'+
                  '        FatGe3.VlpGe3 '+
                  ' From FatGe3'+
                  ' Where FatGe3.CodEmp = '+ QuotedStr(IntToStr(FatGerCodEmp.Value)) +
                  '   and FatGe3.DteGer = '+ QuotedStr(fDateToSQL(FatGerDteGer.Value)) +
                  '   and FatGe3.NumGer = '+ QuotedStr(IntToStr(FatGerNumGer.Value)) ;
          Open;
          First;

     end;

     SeqPar := 1;

     while not quSQL.EOF do begin

           if SeqPar = 1 then begin

              ppNroDoc1.Caption := IntToStr(FatGerNroNfs.Value)+ '/' +fNumZeros(IntToStr(SeqPar),2);
              ppDteDoc1.Caption := FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvGe3').AsDateTime);
              ppVlpDoc1.Caption := FormatFloat('###,###,##0.00',quSQL.FieldbyName('VlpGe3').AsFloat);

           end;

           if SeqPar = 2 then begin

              ppNroDoc2.Caption := IntToStr(FatGerNroNfs.Value)+ '/' +fNumZeros(IntToStr(SeqPar),2);
              ppDteDoc2.Caption := FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvGe3').AsDateTime);
              ppVlpDoc2.Caption := FormatFloat('###,###,##0.00',quSQL.FieldbyName('VlpGe3').AsFloat);

           end;

           if SeqPar = 3 then begin

              ppNroDoc3.Caption := IntToStr(FatGerNroNfs.Value)+ '/' +fNumZeros(IntToStr(SeqPar),2);
              ppDteDoc3.Caption := FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvGe3').AsDateTime);
              ppVlpDoc3.Caption := FormatFloat('###,###,##0.00',quSQL.FieldbyName('VlpGe3').AsFloat);

           end;

           if SeqPar = 4 then begin

              ppNroDoc4.Caption := IntToStr(FatGerNroNfs.Value)+ '/' +fNumZeros(IntToStr(SeqPar),2);
              ppDteDoc4.Caption := FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvGe3').AsDateTime);
              ppVlpDoc4.Caption := FormatFloat('###,###,##0.00',quSQL.FieldbyName('VlpGe3').AsFloat);

           end;

           if SeqPar = 5 then begin

              ppNroDoc5.Caption := IntToStr(FatGerNroNfs.Value)+ '/' +fNumZeros(IntToStr(SeqPar),2);
              ppDteDoc5.Caption := FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvGe3').AsDateTime);
              ppVlpDoc5.Caption := FormatFloat('###,###,##0.00',quSQL.FieldbyName('VlpGe3').AsFloat);

           end;

           if SeqPar = 6 then begin

              ppNroDoc6.Caption := IntToStr(FatGerNroNfs.Value)+ '/' +fNumZeros(IntToStr(SeqPar),2);
              ppDteDoc6.Caption := FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvGe3').AsDateTime);
              ppVlpDoc6.Caption := FormatFloat('###,###,##0.00',quSQL.FieldbyName('VlpGe3').AsFloat);

           end;

           Inc(SeqPar);

           quSQL.Next;

     end;

     if FatGerBasIc1.Value > 0 then
        pnBasIc1.Caption := FormatFloat('###,###,##0.00',FatGerBasIc1.Value)
     else
        pnBasIc1.Caption := '';

     if FatGerTotIc1.Value > 0 then
        pnTotIc1.Caption := FormatFloat('###,###,##0.00',FatGerTotIc1.Value)
     else
        pnTotIc1.Caption := '';

     if FatGerBasSu1.Value > 0 then
        pnBasSub.Caption := FormatFloat('###,###,##0.00',FatGerBasSu1.Value)
     else
        pnBasSub.Caption := '';

     if FatGerTotSu1.Value > 0 then
        pnTotSub.Caption := FormatFloat('###,###,##0.00',FatGerTotSu1.Value)
     else
        pnTotSub.Caption := '';

     if FatGerTotIt1.Value > 0 then
        pnTotIte.Caption := FormatFloat('###,###,##0.00',FatGerTotIt1.Value)
     else
        pnTotIte.Caption := '';

     if FatGerTotFrt.Value > 0 then
        pnTotFrt.Caption := FormatFloat('###,###,##0.00',FatGerTotFrt.Value)
     else
        pnTotFrt.Caption := '';

     if FatGerTotSeg.Value > 0 then
        pnTotSeg.Caption := FormatFloat('###,###,##0.00',FatGerTotSeg.Value)
     else
        pnTotSeg.Caption := '';

     if FatGerTotDsr.Value > 0 then
        pnTotDsr.Caption := FormatFloat('###,###,##0.00',FatGerTotDsr.Value)
     else
        pnTotDsr.Caption := '';

     if FatGerTotDes.Value > 0 then
        pnTotDes.Caption := FormatFloat('###,###,##0.00',FatGerTotDes.Value)
     else
        pnTotDes.Caption := '';

     if FatGerTotIp1.Value > 0 then
        pnTotIp1.Caption := FormatFloat('###,###,##0.00',FatGerTotIp1.Value)
     else
        pnTotIp1.Caption := '';

     if FatGerTotGe1.Value > 0 then
        pnTotGer.Caption := FormatFloat('###,###,##0.00',FatGerTotGe1.Value)
     else
        pnTotGer.Caption := '';

     if FatGerAltVol.Value > 0 then
        pnAltVol.Caption := IntToStr(FatGerAltVol.Value)
     else
        pnAltVol.Caption := '';

     if FatGerInfLiq.Value > 0 then
        pnInfLiq.Caption := FormatFloat('###,###,##0.0000',FatGerInfLiq.Value)
     else
        pnInfLiq.Caption := '';

     if FatGerInfBrt.Value > 0 then
        pnInfBrt.Caption := FormatFloat('###,###,##0.0000',FatGerInfBrt.Value)
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

procedure TfmManE02_NFE.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if FatNfeIteNfe.Value = 'Sim' then begin

     pnCodNfe.Caption := FatNfeCodClp.Value+ '-' +FatNfeCodGru.Value+ '.' +FatNfeCodSub.Value+ '.' +FatNfeCodPro.Value;

     pnDesNfe.Caption := Trim(FatNfeDesNfe.Value);

     if Trim(fLimpaStr(FatNfeNcmNfe.Value)) <> '00000000' then
        pnClsIpi.Caption := Trim(fLimpaStr(FatNfeNcmNfe.Value))
     else
        pnClsIpi.Caption := ' ';

     pnCodSit.Caption := Trim(FatNfeSitNfe.Value);
     pnCodCfo.Caption := Trim(FatNfeCfoNfe.Value);
     pnCodUnd.Caption := Trim(FatNfeUndNfe.Value);

     if fEncDecimal(FatNfeQtpNfe.Value) > 0 then
        pnQtpNfe.Caption := FormatFloat('###,###,##0.0000',FatNfeQtpNfe.Value)
     else
        pnQtpNfe.Caption := FormatFloat('####,###,##0',FatNfeQtpNfe.Value);

     pnVlqNfe.Caption := FormatFloat('###,###,##0.0000',FatNfeVlqNfe.Value);

     pnTotNfe.Caption := FormatFloat('###,###,##0.00',FatNfeTotNfe.Value);
     pnBasIcm.Caption := FormatFloat('###,###,##0.00',FatNfeBasIcm.Value);
     pnTotIcm.Caption := FormatFloat('###,###,##0.00',FatNfeTotIcm.Value);
     pnTotIpi.Caption := FormatFloat('###,###,##0.00',FatNfeTotIpi.Value);
     pnIcmNfe.Caption := FormatFloat('##0',FatNfeIcmNfe.Value);
     pnIpiNfe.Caption := FormatFloat('##0',FatNfeIpiNfe.Value);

     end
  else
     begin

     pnCodNfe.Caption := '';

     pnDesNfe.Caption := Trim(FatNfeDesNfe.Value);

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

procedure TfmManE02_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FatNfe Where FatNfe.Id_FatGer = '+ QuotedStr(IntToStr(FatGerNumGer.Value));
       ExecSQL;

  end;
end;

procedure TfmManE02_NFE.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE02_NFE.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  IncPag := 1;
end;

procedure TfmManE02_NFE.RLReport1PageStarting(Sender: TObject);
begin
  IncPag := IncPag + 1;
end;

end.
