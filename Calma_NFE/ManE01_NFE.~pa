unit ManE01_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLFilters, RLPDFFilter, Db, Wwdatsrc, DBTables, Wwquery, jpeg,
  RLBarcode, RLXLSFilter, RLRichFilter, RLHTMLFilter, RLPreviewForm;

type
  TfmManE01_NFE = class(TForm)
    RLReport1: TRLReport;
    FatPed: TwwQuery;
    DsFatPed: TwwDataSource;
    FatNfe: TwwQuery;
    DsFatNfe: TwwDataSource;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLBand2: TRLBand;
    RLDBText31: TRLDBText;
    RLDBText32: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLDBText56: TRLDBText;
    quSql: TwwQuery;
    RLLabel96: TRLLabel;
    RLLabel97: TRLLabel;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLLabel101: TRLLabel;
    RLLabel102: TRLLabel;
    RLBand1: TRLBand;
    ppNomEmp2: TRLLabel;
    ppEndEmp: TRLLabel;
    ppBaiEmp: TRLLabel;
    ppCidEmp: TRLLabel;
    ppFonEmp: TRLLabel;
    RLDBText53: TRLDBText;
    RLLabel11: TRLLabel;
    ppImagem: TRLImage;
    RLDBText2: TRLDBText;
    ppInsEmp: TRLLabel;
    ppCgcEmp: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    ppCgcCli: TRLLabel;
    RLDBText7: TRLDBText;
    ppEndCli: TRLLabel;
    ppTipNot: TRLLabel;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    ppCgcTra: TRLLabel;
    ppEndTra: TRLLabel;
    RLLabel17: TRLLabel;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLDBBarcode1: TRLDBBarcode;
    ppFonCli: TRLLabel;
    ppNroDoc1: TRLLabel;
    ppDteDoc1: TRLLabel;
    ppVlpDoc1: TRLLabel;
    ppNroDoc4: TRLLabel;
    ppDteDoc4: TRLLabel;
    ppVlpDoc4: TRLLabel;
    ppNroDoc2: TRLLabel;
    ppNroDoc5: TRLLabel;
    ppDteDoc5: TRLLabel;
    ppDteDoc2: TRLLabel;
    ppVlpDoc2: TRLLabel;
    ppVlpDoc5: TRLLabel;
    ppNroDoc3: TRLLabel;
    ppNroDoc6: TRLLabel;
    ppDteDoc6: TRLLabel;
    ppDteDoc3: TRLLabel;
    ppVlpDoc3: TRLLabel;
    ppVlpDoc6: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel7: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel64: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
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
    RLLabel87: TRLLabel;
    RLLabel88: TRLLabel;
    RLLabel89: TRLLabel;
    RLLabel90: TRLLabel;
    RLLabel91: TRLLabel;
    RLLabel92: TRLLabel;
    RLLabel93: TRLLabel;
    RLLabel94: TRLLabel;
    RLLabel95: TRLLabel;
    RLLabel103: TRLLabel;
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
    pnBasIc1: TRLLabel;
    pnTotFrt: TRLLabel;
    pnTotSeg: TRLLabel;
    pnTotDsr: TRLLabel;
    pnTotIc1: TRLLabel;
    pnBasSub: TRLLabel;
    pnTotDes: TRLLabel;
    pnTotIp1: TRLLabel;
    pnTotSub: TRLLabel;
    pnTotIte: TRLLabel;
    pnTotGer: TRLLabel;
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
    RLLabel104: TRLLabel;
    ppNomEmp1: TRLLabel;
    RLLabel105: TRLLabel;
    RLLabel106: TRLLabel;
    RLLabel107: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel109: TRLLabel;
    RLLabel110: TRLLabel;
    ppEntCli: TRLLabel;
    RLLabel111: TRLLabel;
    RLLabel112: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel113: TRLLabel;
    ppCgeCli: TRLLabel;
    RLLabel115: TRLLabel;
    RLLabel116: TRLLabel;
    RLLabel117: TRLLabel;
    RLLabel114: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLLabel118: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel119: TRLLabel;
    RLDBText15: TRLDBText;
    ppIneCli: TRLLabel;
    pnInfBrt: TRLLabel;
    pnInfLiq: TRLLabel;
    pnAltVol: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter2: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    FatNfeDEV_SEQDEV: TIntegerField;
    FatPedCODEMP: TIntegerField;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    FatPedDTEFAT: TDateTimeField;
    FatPedHREFAT: TStringField;
    FatPedUFEFAT: TStringField;
    FatPedFLGTMO: TStringField;
    FatPedCODTMO: TIntegerField;
    FatPedTIPTMO: TStringField;
    FatPedDTCTMO: TDateTimeField;
    FatPedVALTMO: TFloatField;
    FatPedDSCREG: TFloatField;
    FatPedPERPIS: TFloatField;
    FatPedPERCOF: TFloatField;
    FatPedCODFIL: TIntegerField;
    FatPedQTDNFS: TIntegerField;
    FatPedNRONFS: TIntegerField;
    FatPedNROSUF: TStringField;
    FatPedFLGAVI: TStringField;
    FatPedCGCCLI: TStringField;
    FatPedINSCLI: TStringField;
    FatPedCODCF1: TStringField;
    FatPedCODCF2: TStringField;
    FatPedFRTFAT: TStringField;
    FatPedFLGENT: TStringField;
    FatPedFLGSAI: TStringField;
    FatPedDESNAT: TStringField;
    FatPedINSSUB: TStringField;
    FatPedTIPFRT: TStringField;
    FatPedMARFAT: TStringField;
    FatPedNROFAT: TStringField;
    FatPedESPFAT: TStringField;
    FatPedNOMTRA: TStringField;
    FatPedCGCTRA: TStringField;
    FatPedINSTRA: TStringField;
    FatPedCEPTRA: TStringField;
    FatPedTENTRA: TStringField;
    FatPedENDTRA: TStringField;
    FatPedREFTRA: TStringField;
    FatPedNUMTRA: TStringField;
    FatPedBAITRA: TStringField;
    FatPedCIDTRA: TStringField;
    FatPedUFETRA: TStringField;
    FatPedPLCTRA: TStringField;
    FatPedUFEPLC: TStringField;
    FatPedCEPCLI: TStringField;
    FatPedTENCLI: TStringField;
    FatPedENDCLI: TStringField;
    FatPedREFCLI: TStringField;
    FatPedNUMCLI: TStringField;
    FatPedBAICLI: TStringField;
    FatPedCIDCLI: TStringField;
    FatPedUFECLI: TStringField;
    FatPedINECLI: TStringField;
    FatPedCGECLI: TStringField;
    FatPedTXFIPI: TStringField;
    FatPedTXFICM: TStringField;
    FatPedOBSFAT: TStringField;
    FatPedSEQITE: TIntegerField;
    FatPedQTIFAT: TIntegerField;
    FatPedLINFAT: TIntegerField;
    FatPedQTPNOT: TIntegerField;
    FatPedSTPNOT: TIntegerField;
    FatPedQTPDUP: TIntegerField;
    FatPedSTPDUP: TIntegerField;
    FatPedQTDVOL: TIntegerField;
    FatPedALTVOL: TIntegerField;
    FatPedINFLIQ: TFloatField;
    FatPedTOTLIQ: TFloatField;
    FatPedINFBRT: TFloatField;
    FatPedTOTBRT: TFloatField;
    FatPedBASIPI: TFloatField;
    FatPedTOTIPI: TFloatField;
    FatPedBASICM: TFloatField;
    FatPedTOTICM: TFloatField;
    FatPedBASSUB: TFloatField;
    FatPedTOTSUB: TFloatField;
    FatPedTOTFAT: TFloatField;
    FatPedTOTPIS: TFloatField;
    FatPedTOTCOF: TFloatField;
    FatPedTOTFRT: TFloatField;
    FatPedTOTSEG: TFloatField;
    FatPedTOTDES: TFloatField;
    FatPedICMFRT: TFloatField;
    FatPedBSICMF: TFloatField;
    FatPedBAICMF: TFloatField;
    FatPedTOICMF: TFloatField;
    FatPedICMSEG: TFloatField;
    FatPedBSICMS: TFloatField;
    FatPedBAICMS: TFloatField;
    FatPedTOICMS: TFloatField;
    FatPedICMDES: TFloatField;
    FatPedBSICMD: TFloatField;
    FatPedBAICMD: TFloatField;
    FatPedTOICMD: TFloatField;
    FatPedIPIFRT: TFloatField;
    FatPedBSIPIF: TFloatField;
    FatPedBAIPIF: TFloatField;
    FatPedTOIPIF: TFloatField;
    FatPedIPISEG: TFloatField;
    FatPedBSIPIS: TFloatField;
    FatPedBAIPIS: TFloatField;
    FatPedTOIPIS: TFloatField;
    FatPedIPIDES: TFloatField;
    FatPedBSIPID: TFloatField;
    FatPedBAIPID: TFloatField;
    FatPedTOIPID: TFloatField;
    FatPedTOTGER: TFloatField;
    FatPedTOTDUP: TFloatField;
    FatPedLANNOT: TFloatField;
    FatPedLANDUP: TFloatField;
    FatPedSLDNOT: TFloatField;
    FatPedSLDDUP: TFloatField;
    FatPedTOTDSR: TFloatField;
    FatPedCODUSU: TIntegerField;
    FatPedHRCFAT: TStringField;
    FatPedDTCFAT: TDateTimeField;
    FatPedUSUCFT: TIntegerField;
    FatPedOBSCFT: TMemoField;
    FatPedATUEST: TStringField;
    FatPedLANEST: TStringField;
    FatPedINTFIN: TStringField;
    FatPedCONSUM: TStringField;
    FatPedFLGCTB: TStringField;
    FatPedCODIPI: TStringField;
    FatPedTIPIPI: TStringField;
    FatPedTRBIPI: TStringField;
    FatPedREDIPI: TFloatField;
    FatPedBSCIPI: TFloatField;
    FatPedCODICM: TStringField;
    FatPedTIPICM: TStringField;
    FatPedTRBICM: TStringField;
    FatPedREDICM: TFloatField;
    FatPedBSCICM: TFloatField;
    FatPedINCREV: TFloatField;
    FatPedINCFIN: TFloatField;
    FatPedFLGATU: TStringField;
    FatPedDTEATU: TDateTimeField;
    FatPedHREATU: TStringField;
    FatPedUSUATU: TIntegerField;
    FatPedTRASDA: TIntegerField;
    FatPedDTESDA: TDateTimeField;
    FatPedHRESDA: TStringField;
    FatPedUSUSDA: TIntegerField;
    FatPedOBSSDA: TStringField;
    FatPedCODVEI: TIntegerField;
    FatPedDTEENT: TDateTimeField;
    FatPedHREENT: TStringField;
    FatPedUSUENT: TIntegerField;
    FatPedOBSENT: TStringField;
    FatPedDESREG: TStringField;
    FatPedFLGREQ: TStringField;
    FatPedENVRAE: TStringField;
    FatPedFLGDIF: TStringField;
    FatPedSITFAT: TStringField;
    FatPedNROCOL: TStringField;
    FatPedDSCNOT: TFloatField;
    FatPedSEQDES: TIntegerField;
    FatPedQTIDES: TIntegerField;
    FatPedFLGNFS: TStringField;
    FatPedTOTLIB: TFloatField;
    FatPedCODTCL: TIntegerField;
    FatPedFLGENV: TStringField;
    FatPedFLGSER: TStringField;
    FatPedTOTSER: TFloatField;
    FatPedBASISS: TFloatField;
    FatPedTOTISS: TFloatField;
    FatPedQTISER: TIntegerField;
    FatPedSEQSER: TIntegerField;
    FatPedFLGFEC: TStringField;
    FatPedFLGSIN: TStringField;
    FatPedCODCLI: TIntegerField;
    FatPedCODVEN: TIntegerField;
    FatPedCODPFA: TStringField;
    FatPedTIPPFA: TStringField;
    FatPedMODPFA: TStringField;
    FatPedOB1FAT: TStringField;
    FatPedOB2FAT: TStringField;
    FatPedOB3FAT: TStringField;
    FatPedOB4FAT: TStringField;
    FatPedOB5FAT: TStringField;
    FatPedOB6FAT: TStringField;
    FatPedOB7FAT: TStringField;
    FatPedOB8FAT: TStringField;
    FatPedFLGIMP: TStringField;
    FatPedNOMENT: TStringField;
    FatPedFLGIPI: TStringField;
    FatPedCODTRA: TIntegerField;
    FatPedOBSDES: TStringField;
    FatPedTRBPIS: TStringField;
    FatPedTRBCOF: TStringField;
    FatPedID_TRAUFE: TIntegerField;
    FatPedID_TRACIE: TIntegerField;
    FatPedID_FINUFE: TIntegerField;
    FatPedID_FINCIE: TIntegerField;
    FatPedCEFCLI: TStringField;
    FatPedTEFCLI: TStringField;
    FatPedENFCLI: TStringField;
    FatPedRFFCLI: TStringField;
    FatPedNRFCLI: TStringField;
    FatPedBAFCLI: TStringField;
    FatPedCIFCLI: TStringField;
    FatPedUFFCLI: TStringField;
    FatPedID_FINUFF: TIntegerField;
    FatPedID_FINCIF: TIntegerField;
    FatPedID_ESTSIP: TIntegerField;
    FatPedNFEPIS: TStringField;
    FatPedNFECOF: TStringField;
    FatPedFLGNFE: TStringField;
    FatPedENVNFE: TStringField;
    FatPedIMPNFE: TStringField;
    FatPedSEQNFE: TStringField;
    FatPedDTENFE: TDateTimeField;
    FatPedRECNFE: TStringField;
    FatPedPRONFE: TStringField;
    FatPedLOTNFE: TIntegerField;
    FatPedDTEPNF: TDateTimeField;
    FatPedHREPNF: TStringField;
    FatPedDOPNFE: TDateTimeField;
    FatPedHRENFE: TStringField;
    FatPedUSUNFE: TIntegerField;
    FatPedRETNFE: TStringField;
    FatPedDTCNFE: TDateTimeField;
    FatPedHRCNFE: TStringField;
    FatPedPRCNFE: TStringField;
    FatPedDTECNE: TDateTimeField;
    FatPedHRECNE: TStringField;
    FatPedARQNFE: TBlobField;
    FatPedID_FATPED: TIntegerField;
    FatPedNOMCLI: TStringField;
    FatPedPT1CLI: TStringField;
    FatPedFO1CLI: TStringField;
    FatPedNFE: TStringField;
    pnDesNfe: TRLMemo;
    FatNfeDES2NFE: TStringField;
    RLLabel120: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel3: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLLabel2: TRLLabel;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE01_NFE: TfmManE01_NFE;

implementation

uses SendMailOptions, Bbgeral, Bbfuncao;

{$R *.DFM}

procedure TfmManE01_NFE.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  SeqPar: integer;
begin
  if RLReport1.PageNumber = 1 then
  begin
    RLBand1.Height := 580;
    RLReport1.Background.Picture.LoadFromFile('C:\Emerion\NFE.jpg');

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

  end
  else
  begin
    RLBand1.Height := 190;
    RLReport1.Background.Picture.LoadFromFile('C:\Emerion\NFE2.jpg');

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
      ' Where GerEmp.CodEmp = ' + QuotedStr(IntToStr(FatPedCodEmp.Value));
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

  ppCgcCli.Caption := fFormatCGCCPF(FatPedCgcCli.Value);

  if Trim(FatPedCgeCli.Value) <> '' then
    ppCgeCli.Caption := fFormatCGCCPF(FatPedCgeCli.Value)
  else
    ppCgeCli.Caption := fFormatCGCCPF(FatPedCgcCli.Value);

  if Trim(FatPedIneCli.Value) <> '' then
    ppIneCli.Caption := Trim(FatPedIneCli.Value)
  else
    ppIneCli.Caption := Trim(FatPedInsCli.Value);

  if Trim(FatPedPt1Cli.Value) <> '' then
    ppFonCli.Caption := '(' + Trim(FatPedPt1Cli.Value) + ') ' + Trim(FatPedFo1Cli.Value)
  else
    ppFonCli.Caption := Trim(FatPedFo1Cli.Value);

  ppCgcTra.Caption := fFormatCGCCPF(FatPedCgcTra.Value);

  if Trim(FatPedTefCli.Value) <> '' then
    ppEndCli.Caption := Trim(FatPedTefCli.Value) + ' ' + Trim(FatPedEnfCli.Value)
  else
    ppEndCli.Caption := Trim(FatPedEnfCli.Value);

  if Trim(FatPedNrfCli.Value) <> '' then
    ppEndCli.Caption := ppEndCli.Caption + ', ' + Trim(FatPedNrfCli.Value);

  if Trim(FatPedRffCli.Value) <> '' then
    ppEndCli.Caption := ppEndCli.Caption + ' ' + Trim(FatPedRffCli.Value);

  if Trim(FatPedTenCli.Value) <> '' then
    ppEntCli.Caption := Trim(FatPedTenCli.Value) + ' ' + Trim(FatPedEndCli.Value)
  else
    ppEntCli.Caption := Trim(FatPedEndCli.Value);

  if Trim(FatPedNumCli.Value) <> '' then
    ppEntCli.Caption := ppEntCli.Caption + ', ' + Trim(FatPedNumCli.Value);

  if Trim(FatPedRefCli.Value) <> '' then
    ppEntCli.Caption := ppEntCli.Caption + ' ' + Trim(FatPedRefCli.Value);

  if Trim(FatPedTenTra.Value) <> '' then
    ppEndTra.Caption := Trim(FatPedTenTra.Value) + ' ' + Trim(FatPedEndTra.Value)
  else
    ppEndTra.Caption := Trim(FatPedEndTra.Value);

  if Trim(FatPedNumTra.Value) <> '' then
    ppEndTra.Caption := ppEndTra.Caption + ', ' + Trim(FatPedNumTra.Value);

  if Trim(FatPedRefTra.Value) <> '' then
    ppEndTra.Caption := ppEndTra.Caption + ' ' + Trim(FatPedRefTra.Value);

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

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select FatPe3.NroPe3,' +
      '        FatPe3.DtvPe3,' +
      '        FatPe3.VlpPe3 ' +
      ' From FatPe3' +
      ' Where FatPe3.CodEmp = ' + QuotedStr(IntToStr(FatPedCodEmp.Value)) +
      '   and FatPe3.DteRes = ' + QuotedStr(fDateToSQL(FatPedDteRes.Value)) +
      '   and FatPe3.NumRes = ' + QuotedStr(IntToStr(FatPedNumRes.Value)) +
      '   and FatPe3.SeqLib = ' + QuotedStr(IntToStr(FatPedSeqLib.Value)) +
      '   and FatPe3.SeqFat = ' + QuotedStr(IntToStr(FatPedSeqFat.Value));
    Open;
    First;

  end;

  SeqPar := 1;

  while not quSQL.EOF do
  begin

    if SeqPar = 1 then
    begin

      ppNroDoc1.Caption := IntToStr(FatPedNroNfs.Value) + '/' + fNumZeros(IntToStr(SeqPar), 2);
      ppDteDoc1.Caption := FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DtvPe3').AsDateTime);
      ppVlpDoc1.Caption := FormatFloat('###,###,##0.00', quSQL.FieldbyName('VlpPe3').AsFloat);

    end;

    if SeqPar = 2 then
    begin

      ppNroDoc2.Caption := IntToStr(FatPedNroNfs.Value) + '/' + fNumZeros(IntToStr(SeqPar), 2);
      ppDteDoc2.Caption := FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DtvPe3').AsDateTime);
      ppVlpDoc2.Caption := FormatFloat('###,###,##0.00', quSQL.FieldbyName('VlpPe3').AsFloat);

    end;

    if SeqPar = 3 then
    begin

      ppNroDoc3.Caption := IntToStr(FatPedNroNfs.Value) + '/' + fNumZeros(IntToStr(SeqPar), 2);
      ppDteDoc3.Caption := FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DtvPe3').AsDateTime);
      ppVlpDoc3.Caption := FormatFloat('###,###,##0.00', quSQL.FieldbyName('VlpPe3').AsFloat);

    end;

    if SeqPar = 4 then
    begin

      ppNroDoc4.Caption := IntToStr(FatPedNroNfs.Value) + '/' + fNumZeros(IntToStr(SeqPar), 2);
      ppDteDoc4.Caption := FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DtvPe3').AsDateTime);
      ppVlpDoc4.Caption := FormatFloat('###,###,##0.00', quSQL.FieldbyName('VlpPe3').AsFloat);

    end;

    if SeqPar = 5 then
    begin

      ppNroDoc5.Caption := IntToStr(FatPedNroNfs.Value) + '/' + fNumZeros(IntToStr(SeqPar), 2);
      ppDteDoc5.Caption := FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DtvPe3').AsDateTime);
      ppVlpDoc5.Caption := FormatFloat('###,###,##0.00', quSQL.FieldbyName('VlpPe3').AsFloat);

    end;

    if SeqPar = 6 then
    begin

      ppNroDoc6.Caption := IntToStr(FatPedNroNfs.Value) + '/' + fNumZeros(IntToStr(SeqPar), 2);
      ppDteDoc6.Caption := FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DtvPe3').AsDateTime);
      ppVlpDoc6.Caption := FormatFloat('###,###,##0.00', quSQL.FieldbyName('VlpPe3').AsFloat);

    end;

    Inc(SeqPar);

    quSQL.Next;

  end;

  if FatPedBasIcm.Value > 0 then
    pnBasIc1.Caption := FormatFloat('###,###,##0.00', FatPedBasIcm.Value)
  else
    pnBasIc1.Caption := '';

  if FatPedTotIcm.Value > 0 then
    pnTotIc1.Caption := FormatFloat('###,###,##0.00', FatPedTotIcm.Value)
  else
    pnTotIc1.Caption := '';

  if FatPedBasSub.Value > 0 then
    pnBasSub.Caption := FormatFloat('###,###,##0.00', FatPedBasSub.Value)
  else
    pnBasSub.Caption := '';

  if FatPedTotSub.Value > 0 then
    pnTotSub.Caption := FormatFloat('###,###,##0.00', FatPedTotSub.Value)
  else
    pnTotSub.Caption := '';

  if FatPedTotFat.Value > 0 then
    pnTotIte.Caption := FormatFloat('###,###,##0.00', FatPedTotFat.Value)
  else
    pnTotIte.Caption := '';

  if FatPedTotFrt.Value > 0 then
    pnTotFrt.Caption := FormatFloat('###,###,##0.00', FatPedTotFrt.Value)
  else
    pnTotFrt.Caption := '';

  if FatPedTotSeg.Value > 0 then
    pnTotSeg.Caption := FormatFloat('###,###,##0.00', FatPedTotSeg.Value)
  else
    pnTotSeg.Caption := '';

  if FatPedTotDsr.Value > 0 then
    pnTotDsr.Caption := FormatFloat('###,###,##0.00', FatPedTotDsr.Value)
  else
    pnTotDsr.Caption := '';

  if FatPedTotDes.Value > 0 then
    pnTotDes.Caption := FormatFloat('###,###,##0.00', FatPedTotDes.Value)
  else
    pnTotDes.Caption := '';

  if FatPedTotIpi.Value > 0 then
    pnTotIp1.Caption := FormatFloat('###,###,##0.00', FatPedTotIpi.Value)
  else
    pnTotIp1.Caption := '';

  if FatPedTotGer.Value > 0 then
    pnTotGer.Caption := FormatFloat('###,###,##0.00', FatPedTotGer.Value)
  else
    pnTotGer.Caption := '';

  if FatPedAltVol.Value > 0 then
    pnAltVol.Caption := IntToStr(FatPedAltVol.Value)
  else
    pnAltVol.Caption := '';

  if FatPedInfLiq.Value > 0 then
    pnInfLiq.Caption := FormatFloat('###,###,##0.0000', FatPedInfLiq.Value)
  else
    pnInfLiq.Caption := '';

  if FatPedInfBrt.Value > 0 then
    pnInfBrt.Caption := FormatFloat('###,###,##0.0000', FatPedInfBrt.Value)
  else
    pnInfBrt.Caption := '';

end;

procedure TfmManE01_NFE.RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  if FatNfeIteNfe.Value = 'Sim' then
  begin

    pnCodNfe.Caption := FatNfeCodClp.Value + '-' + FatNfeCodGru.Value + '.' + FatNfeCodSub.Value + '.' + FatNfeCodPro.Value;

    pnDesNfe.Lines.Clear;
    pnDesNfe.Lines.Add(Trim(copy(FatNfeDesNfe.Value, 1, 40)));

    if Trim(FatNfeDES2NFE.AsString) <> '' then
    begin
      if Trim(FatNfeDES2NFE.AsString) = '|' then
        pnDesNfe.Lines.Add(' ')
      else
        pnDesNfe.Lines.Add(Trim(FatNfeDES2NFE.Value));
    end;

    //pnDesNfe.Height := pnDesNfe.Height+((pnDesNfe.Lines.Count-1) * 10) ;

    pnClsIpi.Caption := Trim(FatNfeNcmNfe.Value);
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

procedure TfmManE01_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatNfe' +
      ' Where FatNfe.Fat_CodEmp = ' + QuotedStr(IntToStr(FatPedCodEmp.Value)) +
      '   and FatNfe.Fat_DteRes = ' + QuotedStr(fDateToSQL(FatPedDteRes.Value)) +
      '   and FatNfe.Fat_NumRes = ' + QuotedStr(IntToStr(FatPedNumRes.Value)) +
      '   and FatNfe.Fat_SeqLib = ' + QuotedStr(IntToStr(FatPedSeqLib.Value)) +
      '   and FatNfe.Fat_SeqFat = ' + QuotedStr(IntToStr(FatPedSeqFat.Value));
    ExecSQL;

  end;
end;

procedure TfmManE01_NFE.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE01_NFE.FormCreate(Sender: TObject);
begin
  TRLCustomControl(pnDesNfe).AutoExpand := True;
end;

end.
