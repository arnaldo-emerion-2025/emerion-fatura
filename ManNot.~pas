unit ManNot;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorPickEdit, dxDBColorDateEdit,
  dxDBColorCurrencyEdit, dxDBColorEdit, uIndicadores;

type
  TfmManNot = class(TfmPadrao)
    PaintBox: TPaintBox;
    FatPed: TwwQuery;
    FatPe2: TwwQuery;
    UpFat: TUpdateSQL;
    UpPe2: TUpdateSQL;
    DsPe2: TDataSource;
    DsFat: TDataSource;
    quSql: TwwQuery;
    LbText: TLabel;
    Label8: TLabel;
    EdBasIcm: TdxDBColorCurrencyEdit;
    pnBasIcm: TPanel;
    Label28: TLabel;
    EdTotIcm: TdxDBColorCurrencyEdit;
    pnTotIcm: TPanel;
    Label33: TLabel;
    EdBasSub: TdxDBColorCurrencyEdit;
    pnBasSub: TPanel;
    Label34: TLabel;
    EdTotSub: TdxDBColorCurrencyEdit;
    pnTotSub: TPanel;
    Label35: TLabel;
    EdTotFat: TdxDBColorCurrencyEdit;
    pnTotFat: TPanel;
    Label36: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Label38: TLabel;
    pnTotFrt: TPanel;
    EdTotFrt: TdxDBColorCurrencyEdit;
    pnTotSeg: TPanel;
    EdTotSeg: TdxDBColorCurrencyEdit;
    Label39: TLabel;
    Label40: TLabel;
    EdTotDes: TdxDBColorCurrencyEdit;
    pnTotDes: TPanel;
    Label41: TLabel;
    EdTotIpi: TdxDBColorCurrencyEdit;
    pnTotIpi: TPanel;
    Label42: TLabel;
    pnTotGer: TPanel;
    EdTotGer: TdxDBColorCurrencyEdit;
    Shape4: TShape;
    Shape5: TShape;
    FatPedCODEMP: TIntegerField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    FatPedDTEFAT: TDateTimeField;
    FatPedHREFAT: TStringField;
    FatPedCODTMO: TIntegerField;
    FatPedTIPTMO: TStringField;
    FatPedDTCTMO: TDateTimeField;
    FatPedVALTMO: TFloatField;
    FatPedSEQITE: TIntegerField;
    FatPedQTDNFS: TIntegerField;
    FatPedNRONFS: TIntegerField;
    FatPedFLGENT: TStringField;
    FatPedFLGSAI: TStringField;
    FatPedDESNAT: TStringField;
    FatPedINSSUB: TStringField;
    FatPedTIPFRT: TStringField;
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
    FatPedQTIFAT: TIntegerField;
    FatPedLINFAT: TIntegerField;
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
    FatPedBAICMF: TFloatField;
    FatPedTOICMF: TFloatField;
    FatPedICMSEG: TFloatField;
    FatPedBAICMS: TFloatField;
    FatPedTOICMS: TFloatField;
    FatPedICMDES: TFloatField;
    FatPedBAICMD: TFloatField;
    FatPedTOICMD: TFloatField;
    FatPedIPIFRT: TFloatField;
    FatPedBAIPIF: TFloatField;
    FatPedTOIPIF: TFloatField;
    FatPedIPISEG: TFloatField;
    FatPedBAIPIS: TFloatField;
    FatPedTOIPIS: TFloatField;
    FatPedIPIDES: TFloatField;
    FatPedBAIPID: TFloatField;
    FatPedTOIPID: TFloatField;
    FatPedTOTGER: TFloatField;
    FatPedCODUSU: TIntegerField;
    FatPedFRTFAT: TStringField;
    EdSeqPe2: TdxDBColorCurrencyEdit;
    Label43: TLabel;
    Label44: TLabel;
    pnNroPe2: TPanel;
    FatPar: TwwQuery;
    FatParFLGCOT: TStringField;
    FatPedCODCF1: TStringField;
    FatPedCODCF2: TStringField;
    FatPedMARFAT: TStringField;
    FatPedNROFAT: TStringField;
    FatPedESPFAT: TStringField;
    FatPedINSCLI: TStringField;
    FatPedFLGAVI: TStringField;
    FatPedOBSFAT: TStringField;
    FatPedTOTDUP: TFloatField;
    FatPedLANNOT: TFloatField;
    FatPedLANDUP: TFloatField;
    FatPedSLDNOT: TFloatField;
    FatPedSLDDUP: TFloatField;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Label29: TLabel;
    Label9: TLabel;
    EdNumRes: TdxDBColorEdit;
    Label1: TLabel;
    Label46: TLabel;
    EdCodEmp: TdxDBColorEdit;
    pnNomEmp: TPanel;
    EdNomEmp: TdxDBColorEdit;
    Label2: TLabel;
    Label68: TLabel;
    EdDteFat: TdxDBColorDateEdit;
    Label4: TLabel;
    Label6: TLabel;
    EdCodCli: TdxDBColorEdit;
    pnNomCli: TPanel;
    EdNomCli: TdxDBColorEdit;
    Label16: TLabel;
    Label53: TLabel;
    pnUfeFat: TPanel;
    EdUfeFat: TdxDBColorEdit;
    Label13: TLabel;
    Label14: TLabel;
    EdCodVen: TdxDBColorEdit;
    pnNomVen: TPanel;
    EdNomVen: TdxDBColorEdit;
    Label12: TLabel;
    Label20: TLabel;
    EdFrtFat: TdxDBColorPickEdit;
    Label5: TLabel;
    Label7: TLabel;
    EdCodPfa: TdxDBColorEdit;
    pnNomPfa: TPanel;
    EdDscPfa: TdxDBColorEdit;
    Label31: TLabel;
    EdDtcTmo: TdxDBColorDateEdit;
    Label45: TLabel;
    Label11: TLabel;
    Label37: TLabel;
    EdValTmo: TdxDBColorCurrencyEdit;
    FatPedQTPNOT: TIntegerField;
    FatPedQTPDUP: TIntegerField;
    FatPedDTCFAT: TDateTimeField;
    FatPedUSUCFT: TIntegerField;
    FatPedOBSCFT: TMemoField;
    FatPedHRCFAT: TStringField;
    FatPedENVRAE: TStringField;
    FatPedDTERES: TDateTimeField;
    FatPedSEQLIB: TIntegerField;
    FatPedUFEFAT: TStringField;
    FatPedFLGTMO: TStringField;
    FatPedDSCREG: TFloatField;
    FatPedPERPIS: TFloatField;
    FatPedPERCOF: TFloatField;
    FatPedCODFIL: TIntegerField;
    FatPedNROSUF: TStringField;
    FatPedTXFIPI: TStringField;
    FatPedTXFICM: TStringField;
    FatPedSTPNOT: TIntegerField;
    FatPedSTPDUP: TIntegerField;
    FatPedQTDVOL: TIntegerField;
    FatPedALTVOL: TIntegerField;
    FatPedBSICMF: TFloatField;
    FatPedBSICMS: TFloatField;
    FatPedBSICMD: TFloatField;
    FatPedBSIPIF: TFloatField;
    FatPedBSIPIS: TFloatField;
    FatPedBSIPID: TFloatField;
    FatPedTOTDSR: TFloatField;
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
    FatPe2CODEMP: TIntegerField;
    FatPe2DTERES: TDateTimeField;
    FatPe2NUMRES: TIntegerField;
    FatPe2SEQLIB: TIntegerField;
    FatPe2SEQFAT: TIntegerField;
    FatPe2SEQPE2: TIntegerField;
    FatPe2CODEIT: TIntegerField;
    FatPe2CODCLP: TStringField;
    FatPe2CODGRU: TStringField;
    FatPe2CODSUB: TStringField;
    FatPe2CODPRO: TStringField;
    FatPe2CODTAM: TStringField;
    FatPe2CODCOR: TStringField;
    FatPe2DESPE2: TStringField;
    FatPe2OBSPE2: TStringField;
    FatPe2CODST1: TStringField;
    FatPe2CODST2: TStringField;
    FatPe2CODUND: TStringField;
    FatPe2LIQPE2: TFloatField;
    FatPe2BRTPE2: TFloatField;
    FatPe2LINPE2: TIntegerField;
    FatPe2QTPPE2: TFloatField;
    FatPe2VLUPE2: TFloatField;
    FatPe2VCHPE2: TFloatField;
    FatPe2VREPE2: TFloatField;
    FatPe2VCPPE2: TFloatField;
    FatPe2VPRPE2: TFloatField;
    FatPe2DSRPE2: TFloatField;
    FatPe2VDRPE2: TFloatField;
    FatPe2VLQPE2: TFloatField;
    FatPe2IPIPE2: TFloatField;
    FatPe2CLSIPI: TStringField;
    FatPe2ICMPE2: TFloatField;
    FatPe2BASIPI: TFloatField;
    FatPe2TOTIPI: TFloatField;
    FatPe2BASICM: TFloatField;
    FatPe2TOTICM: TFloatField;
    FatPe2BASSUB: TFloatField;
    FatPe2TOTSUB: TFloatField;
    FatPe2TOTPE2: TFloatField;
    FatPe2TOTGE2: TFloatField;
    FatPe2TOTLIQ: TFloatField;
    FatPe2TOTBRT: TFloatField;
    FatPe2TOTDSR: TFloatField;
    FatPe2TOTPIS: TFloatField;
    FatPe2TOTCOF: TFloatField;
    FatPe2CODSTR: TStringField;
    FatPe2TIPSTR: TStringField;
    FatPe2REGIPI: TStringField;
    FatPe2TIPIPI: TStringField;
    FatPe2TRBIPI: TStringField;
    FatPe2REDIPI: TFloatField;
    FatPe2BSCIPI: TFloatField;
    FatPe2REGICM: TStringField;
    FatPe2TIPICM: TStringField;
    FatPe2TRBICM: TStringField;
    FatPe2REDICM: TFloatField;
    FatPe2BSCICM: TFloatField;
    FatPe2INCREV: TFloatField;
    FatPe2INCFIN: TFloatField;
    FatPe2FLGREQ: TStringField;
    FatPe2FLASEQ: TStringField;
    FatPe2FLGLIB: TStringField;
    FatPe2NRONFS: TIntegerField;
    FatPe2NROPE2: TIntegerField;
    FatPedFLGREQ: TStringField;
    FatPedDESREG: TStringField;
    pnNumRes: TPanel;
    FatPedSITFAT: TStringField;
    FatPe2SEQNFS: TIntegerField;
    pnEstoque: TPanel;
    Panel10: TPanel;
    Panel4: TPanel;
    Label3: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Label30: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Panel13: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    Panel9: TPanel;
    Panel8: TPanel;
    EdQtaIte: TPanel;
    Panel7: TPanel;
    EdQtdIte: TPanel;
    Panel6: TPanel;
    EdQtrIte: TPanel;
    Panel5: TPanel;
    EdSldIte: TPanel;
    Panel14: TPanel;
    FatPe2SEQRE2: TIntegerField;
    FatPe2CODVWA: TStringField;
    FatPe2REFPE2: TStringField;
    FatPe2FLGDUP: TStringField;
    FatPe2QTDPE2: TFloatField;
    FatPe2SLDPE2: TFloatField;
    FatPe2SEQCLF: TIntegerField;
    pnDscNot: TPanel;
    Label49: TLabel;
    EdDscNot: TdxDBColorCurrencyEdit;
    FatPedFLGDIF: TStringField;
    FatPedNROCOL: TStringField;
    FatPedDSCNOT: TFloatField;
    FatPedSEQDES: TIntegerField;
    FatPedQTIDES: TIntegerField;
    FatPedFLGNFS: TStringField;
    FatPedCGCCLI: TStringField;
    pnCodEmp: TPanel;
    pnCodCli: TPanel;
    pnCodVen: TPanel;
    pnCodPfa: TPanel;
    FatPe2VALPE2: TFloatField;
    FatPedTOTLIB: TFloatField;
    FatPedCODTCL: TIntegerField;
    FatPedFLGENV: TStringField;
    FatPedFLGSER: TStringField;
    FatPedQTISER: TIntegerField;
    FatPedSEQSER: TIntegerField;
    FatPedBASISS: TFloatField;
    FatPedTOTISS: TFloatField;
    FatPedTOTSER: TFloatField;
    FatPedFLGFEC: TStringField;
    FatPedFLGSIN: TStringField;
    FatPedCODCLI: TIntegerField;
    FatPedCODVEN: TIntegerField;
    FatPedCODPFA: TStringField;
    FatPedTIPPFA: TStringField;
    FatPedMODPFA: TStringField;
    FatPe2VALTMO: TFloatField;
    FatPe2CODTXF: TStringField;
    FatPedFLGIMP: TStringField;
    FatPedNOMENT: TStringField;
    FatParLEROBS: TStringField;
    FatPedFLGIPI: TStringField;
    FatPedCODTRA: TIntegerField;
    FatPe2CODCFO: TStringField;
    FatPe2TRBSUB: TStringField;
    FatPe2ICMSUB: TFloatField;
    FatPe2MRGSUB: TFloatField;
    FatPe2BASESB: TFloatField;
    grLabel1: TdxDBGraphicEdit;
    grPe21: TdxDBGraphicEdit;
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
    grPe2: ThGrid;
    Panel3: TPanel;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpPe2: TdxDBColorCurrencyEdit;
    EdVluPe2: TdxDBColorCurrencyEdit;
    EdIpiPe2: TdxDBColorCurrencyEdit;
    EdIcmPe2: TdxDBColorCurrencyEdit;
    EdCodSt1: TdxDBColorEdit;
    EdCodSt2: TdxDBColorEdit;
    EdTotPe2: TdxDBColorCurrencyEdit;
    EdCodCfo: TdxDBColorEdit;
    EdClsIpi: TdxDBColorEdit;
    Panel2: TPanel;
    EdDesPe2: TdxDBColorEdit;
    EdObsPe2: TdxDBColorEdit;
    pnObsPe2: TPanel;
    pnDesPe2: TPanel;
    FatPedOB1FAT: TMemoField;
    FatPedOB2FAT: TMemoField;
    FatPedOB3FAT: TMemoField;
    FatPedOB4FAT: TMemoField;
    FatPedOB5FAT: TMemoField;
    FatPedOB6FAT: TMemoField;
    FatPedOB7FAT: TMemoField;
    FatPedOB8FAT: TMemoField;
    FatPedOBSDES: TStringField;
    FatPedTRBPIS: TStringField;
    FatPedTRBCOF: TStringField;
    FatPedARQNFE: TBlobField;
    FatPedAVIDUP: TStringField;
    FatPedAVINOT: TStringField;
    FatPedCEFCLI: TStringField;
    FatPedDOPNFE: TDateTimeField;
    FatPedDSCFAT: TFloatField;
    FatPedDTCNFE: TDateTimeField;
    FatPedDTECAN: TDateTimeField;
    FatPedDTECNE: TDateTimeField;
    FatPedDTEDEV: TDateTimeField;
    FatPedDTENFE: TDateTimeField;
    FatPedFLGANT: TStringField;
    FatPedFLGSEG: TStringField;
    FatPedHRCNFE: TStringField;
    FatPedHRECAN: TStringField;
    FatPedHRECNE: TStringField;
    FatPedHREDEV: TStringField;
    FatPedHRENFE: TStringField;
    FatPedID_ESTSIP: TIntegerField;
    FatPedID_FATPED: TIntegerField;
    FatPedID_FINCIE: TIntegerField;
    FatPedID_FINCIF: TIntegerField;
    FatPedID_FINUFE: TIntegerField;
    FatPedID_FINUFF: TIntegerField;
    FatPedID_PEDCND: TIntegerField;
    FatPedID_TRACIE: TIntegerField;
    FatPedID_TRAUFE: TIntegerField;
    FatPedLOTNFE: TIntegerField;
    FatPedNFECOF: TStringField;
    FatPedNFEPIS: TStringField;
    FatPedNRONOT: TIntegerField;
    FatPedOB1CAN: TStringField;
    FatPedOB1DES: TStringField;
    FatPedOB1DEV: TStringField;
    FatPedOB1ENT: TStringField;
    FatPedOB1SDA: TStringField;
    FatPedOB2CAN: TStringField;
    FatPedOB2DES: TStringField;
    FatPedOB2DEV: TStringField;
    FatPedOB2ENT: TStringField;
    FatPedOB2SDA: TStringField;
    FatPedOB3CAN: TStringField;
    FatPedOB3DES: TStringField;
    FatPedOB3DEV: TStringField;
    FatPedOB3ENT: TStringField;
    FatPedOB3SDA: TStringField;
    FatPedOB4CAN: TStringField;
    FatPedOB4DES: TStringField;
    FatPedOB4DEV: TStringField;
    FatPedOB4ENT: TStringField;
    FatPedOB4SDA: TStringField;
    FatPedOB5CAN: TStringField;
    FatPedOB5DES: TStringField;
    FatPedOB5DEV: TStringField;
    FatPedOB5ENT: TStringField;
    FatPedOB5SDA: TStringField;
    FatPedQTDNOT: TIntegerField;
    FatPedQTIPE2: TIntegerField;
    FatPedQTIPE4: TIntegerField;
    FatPedQTIPE5: TIntegerField;
    FatPedQTIPE6: TIntegerField;
    FatPedQTIPE7: TIntegerField;
    FatPedQTPSEL: TIntegerField;
    FatPedRETNFE: TStringField;
    FatPedSEQFIN: TIntegerField;
    FatPedSEQINI: TIntegerField;
    FatPedSERNOT: TStringField;
    FatPedSERSEL: TStringField;
    FatPedTOTFRE: TFloatField;
    FatPedUSUCAN: TIntegerField;
    FatPedUSUDEV: TIntegerField;
    FatPedUSUNFE: TIntegerField;
    FatPedFLGNFE: TStringField;
    FatPedENVNFE: TStringField;
    FatPedTEFCLI: TStringField;
    FatPedIMPNFE: TStringField;
    FatPedENFCLI: TStringField;
    FatPedSEQNFE: TStringField;
    FatPedRFFCLI: TStringField;
    FatPedRECNFE: TStringField;
    FatPedNRFCLI: TStringField;
    FatPedPRONFE: TStringField;
    FatPedBAFCLI: TStringField;
    FatPedPRCNFE: TStringField;
    FatPedCIFCLI: TStringField;
    FatPedDTEPNF: TDateTimeField;
    FatPedUFFCLI: TStringField;
    FatPedHREPNF: TStringField;
    FatPedMODFRT: TStringField;
    FatPedFLGNOT: TStringField;
    FatPedUFECOM: TStringField;
    FatPedFLGREC: TStringField;
    FatPedFLGAPR: TStringField;
    FatPedFLGQTD: TStringField;
    FatPedNFETH: TSmallintField;
    FatPedARQNFECANC: TBlobField;
    FatPedNFETHCANC: TSmallintField;
    FatPedFLGVERBOL: TSmallintField;
    FatPedFLGCON: TStringField;
    FatPedTOTVOL: TIntegerField;
    FatPedDATA_IMPRESSAO: TDateTimeField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FatPe2NewRecord(DataSet: TDataSet);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel1Exit(Sender: TObject);
    procedure EdDteFatExit(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdQtpPe2Exit(Sender: TObject);
    procedure EdVluPe2Exit(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure EdDesPe2Exit(Sender: TObject);
    procedure grPe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pnDscNotExit(Sender: TObject);
    procedure DsPe2DataChange(Sender: TObject; Field: TField);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdCodProEnter(Sender: TObject);
    procedure EdDteFatEnter(Sender: TObject);
    procedure EdQtpPe2Enter(Sender: TObject);
    procedure grPe2Enter(Sender: TObject);
  private
  public
    SeqImpText: string;
    AntVluPe2: real;
    sEnc, sEntr, Finalizar: string;
    CodPfa, TipPfa, ModPfa: string;
    qticms, CodCli, CodVen: integer;
  end;

var
  fmManNot: TfmManNot;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, AuxPsq, PsqRef, PsqObs,
  PsqPro, PsqEst, ManLno, ManNt1, PsqGru, PsqSub, PsqIcm, PsqSt1, PsqSt2,
  AuxIni;

{$R *.DFM}

procedure TfmManNot.FormCreate(Sender: TObject);
begin
  inherited;

  SeqImpText := 'N';

  sEnc := 'N';

  sEntr := 'N';

  Finalizar := 'N';

end;

procedure TfmManNot.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNot.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManNot := nil;
end;

procedure TfmManNot.FatPe2NewRecord(DataSet: TDataSet);
begin
  inherited;

  FatPe2.DisableControls;

  FatPe2IcmPe2.Value := 0;
  FatPe2IpiPe2.Value := 0;
  FatPe2LiqPe2.Value := 0;
  FatPe2BrtPe2.Value := 0;
  FatPe2QtpPe2.Value := 0;
  FatPe2VluPe2.Value := 0;
  FatPe2VlqPe2.Value := 0;
  FatPe2VchPe2.Value := 0;
  FatPe2VrePe2.Value := 0;
  FatPe2VcpPe2.Value := 0;
  FatPe2Vprpe2.Value := 0;
  FatPe2BasIpi.Value := 0;
  FatPe2TotIpi.Value := 0;
  FatPe2BasIcm.Value := 0;
  FatPe2TotIcm.Value := 0;
  FatPe2TotPe2.Value := 0;
  FatPe2TotGe2.Value := 0;
  FatPe2TotBrt.Value := 0;
  FatPe2TotLiq.Value := 0;
  FatPe2TotPis.Value := 0;
  FatPe2TotCof.Value := 0;
  FatPe2NroNfs.Value := 0;
  FatPe2DesPe2.Value := ' ';
  FatPe2ObsPe2.Value := ' ';
  FatPe2FlaSeq.Value := ' ';
  FatPe2FlgLib.Value := ' ';
  FatPe2CodClp.Value := '1';
  FatPe2CodTam.Value := 'UN';
  FatPe2CodCor.Value := 'UN';
  FatPe2FlgReq.Value := 'Nao';
  FatPe2FlgDup.Value := 'Nao';
  FatPe2CodEit.Value := FatPedCodEmp.Value;
  FatPe2CodEmp.Value := FatPedCodEmp.Value;
  FatPe2DteRes.Value := FatPedDteRes.Value;
  FatPe2NumRes.Value := FatPedNumRes.Value;
  FatPe2SeqLib.Value := FatPedSeqLib.Value;
  FatPe2SeqFat.Value := FatPedSeqFat.Value;
  FatPe2SeqPe2.Value := FatPedSeqIte.Value + 1;
  FatPe2NroPe2.Value := FatPedQtiFat.Value + 1;

  AntVluPe2 := FatPe2VluPe2.Value;

  FatPe2.EnableControls;

  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdQtpPe2.Enabled := True;
  EdVluPe2.Enabled := True;
  EdIpiPe2.Enabled := True;
  EdIcmPe2.Enabled := True;

  EdCodGru.SetFocus;

end;

procedure TfmManNot.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManNot.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then
  begin

    if FatPedSitFat.Value = 'Faturado' then
      fMsg('Operação não Pode ser Realizada. Nota Fiscal já Emitida.', 'E')

    else if FatPedSitFat.Value = 'Cancelado' then
      fMsg('Operação não Pode ser Realizada. Nota Fiscal Cancelada.', 'E');

    Finalizar := 'S';

    Close;

  end;
end;

procedure TfmManNot.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManNot.FormShow(Sender: TObject);
begin
  inherited;

  FatPed.Close;
  FatPed.Params[0].AsInteger := fmManLno.CodEmp;
  FatPed.Params[1].AsDateTime := fmManLno.DteRes;
  FatPed.Params[2].AsInteger := fmManLno.NumRes;
  FatPed.Params[3].AsInteger := fmManLno.SeqLib;
  FatPed.Params[4].AsInteger := fmManLno.SeqFat;
  FatPed.Open;

  FatPe2.Close;
  FatPe2.Params[0].AsInteger := FatPedCodEmp.Value;
  FatPe2.Params[1].AsDateTime := FatPedDteRes.Value;
  FatPe2.Params[2].AsInteger := FatPedNumRes.Value;
  FatPe2.Params[3].AsInteger := FatPedSeqLib.Value;
  FatPe2.Params[4].AsInteger := FatPedSeqFat.Value;
  FatPe2.Open;

  pnCodEmp.Caption := IntToStr(FatPedCodEmp.Value);

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select CodCli,CodVen,CodPfa,TipPfa,ModPfa From PedRes' +
      ' Where PedRes.CodEmp = :CodEmp' +
      '   and PedRes.DteRes = :DteRes' +
      '   and PedRes.NumRes = :NumRes';

    with Params do
    begin

      Params[0].AsInteger := FatPedCodEmp.Value;
      Params[1].AsDateTime := FatPedDteRes.Value;
      Params[2].AsInteger := FatPedNumRes.Value;

    end;

    Open;

    CodPfa := FieldbyName('CodPfa').AsString;
    TipPfa := FieldbyName('TipPfa').AsString;
    ModPfa := FieldbyName('ModPfa').AsString;

    CodCli := FieldbyName('CodCli').AsInteger;
    CodVen := FieldbyName('CodVen').AsInteger;

    pnCodPfa.Caption := FieldbyName('CodPfa').AsString;
    pnCodCli.Caption := IntToStr(FieldbyName('CodCli').AsInteger);
    pnCodVen.Caption := IntToStr(FieldbyName('CodVen').AsInteger);

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = ''' + IntToStr(FatPedCodEmp.Value) + '''';

    if GFlgAce = 'Sim' then
      Text := Text + ' and CodFil > ''' + '0' + '''';

    Open;

    pnNomEmp.Caption := FieldbyName('NomEmp').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select NomCli From FinCli Where FinCli.CodCli = ''' + IntToStr(CodCli) + '''';
    Open;

    pnNomCli.Caption := FieldbyName('NomCli').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select ApeVen From FinVen Where FinVen.CodVen = ''' + IntToStr(CodVen) + '''';
    Open;

    pnNomVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select DsrPfa From EstPfa' +
      ' Where EstPfa.CodPfa = ''' + CodPfa + '''' +
      '   and EstPfa.TipPfa = ''' + TipPfa + '''';
    Open;

    pnNomPfa.Caption := FieldbyName('DsrPfa').AsString;

  end;

  pnUfeFat.Caption := FatPedUfeFat.Value;
  pnNumRes.Caption := IntToStr(FatPedNumRes.Value);

  if FatPedSitFat.Value <> 'Nao Concluido' then
    sEnc := 'S'
  else
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FlgCot From FatPar';
      Open;

      if FieldbyName('FlgCot').AsString = 'Sim' then
      begin

        EdValTmo.Enabled := True;

        EdValTmo.Font.Style := [];

      end;
    end;

    EdDteFat.Enabled := True;
    EdFrtFat.Enabled := True;

    EdDteFat.Font.Style := [];
    EdFrtFat.Font.Style := [];

    FatPed.Edit;

    EdDteFat.SetFocus;

  end;
end;

procedure TfmManNot.FormClose(Sender: TObject; var Action: TCloseAction);
var
  DteRes: TDateTime;
  CodEmp, NumRes, SeqLib: integer;
begin
  inherited;
  if finalizar = 'N' then
  begin

    if fMsg('Deseja Realmente Abandonar a Emissão da Nota Fiscal ?', 'O') then
    begin

      if FatPedNumRes.Value > 0 then
      begin

        if FatPedSitFat.Value = 'Nao Concluido' then
        begin

          FatPed.Delete;

          with FatPed do
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

              if FatPed.State <> dsBrowse then
                FatPed.CancelUpdates;

              Abort;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;
        end;
      end;

      CodEmp := fmManLno.PedLibCodEmp.Value;
      DteRes := fmManLno.PedLibDteRes.Value;
      NumRes := fmManLno.PedLibNumRes.Value;
      SeqLib := fmManLno.PedLibSeqLib.Value;

      fmManLno.PedLib.Close;
      fmManLno.PedLib.Open;

      fmManLno.FatPed.Close;
      fmManLno.FatPed.Open;

      if CodEmp > 0 then
        fmManLno.PedLib.Locate('CodEmp;DteRes;NumRes;SeqLib', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib]), [loPartialKey]);

      Action := CaFree;

    end
    else
      Abort;

  end
  else
  begin

    if FatPedSitFat.Value <> 'Faturado' then
    begin

      CodEmp := fmManLno.PedLibCodEmp.Value;
      DteRes := fmManLno.PedLibDteRes.Value;
      NumRes := fmManLno.PedLibNumRes.Value;
      SeqLib := fmManLno.PedLibSeqLib.Value;

      fmManLno.PedLib.Close;
      fmManLno.PedLib.Open;

      fmManLno.FatPed.Close;
      fmManLno.FatPed.Open;

      fmManLno.PedLib.Locate('CodEmp;Dteres;NumRes;SeqLib', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib]), [loPartialKey])

    end
    else
    begin

      fmManLno.PedLib.Close;
      fmManLno.PedLib.Open;

      fmManLno.FatPed.Close;
      fmManLno.FatPed.Open;

      fmManLno.EdPsqNumRes.Text := '';

    end;

    Action := CaFree;

  end;
end;

procedure TfmManNot.EdDteFatExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then
    EdDteFat.SetFocus
end;

procedure TfmManNot.Panel1Exit(Sender: TObject);
var
   pSaida: String;
begin
  inherited;

  if (EdCodCli.Enabled) then
  begin
    try
      begin
        frmIndicadores := TfrmIndicadores.Create(Self);

        frmIndicadores.edIndicCF.DataField := 'INDIC_CF';
        frmIndicadores.edIndicPresenca.DataField := 'INDIC_PRESENCA';
        frmIndicadores.edIndicCF.DataSource := fmmanNot.DsFat;
        frmIndicadores.edIndicPresenca.DataSource := fmmanNot.DsFat;

        frmIndicadores.INDIC_CON.Active := True;
        frmIndicadores.INDIC_PRES.Active := True;

        frmIndicadores.ShowModal;

        if frmIndicadores.ModalResult = mrOK then
          pSaida := 'Sim'
        else
          pSaida := 'Nao';
      end;
    finally
      FreeAndNil(frmIndicadores);
    end;
  end;

  if pSaida = 'Nao' then
     fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdDteFat);

  if FatPedDteFat.Value = 0 then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdDteFat);

  if FatPed.State <> dsBrowse then
  begin

    with FatPed do
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

        if FatPed.State = dsBrowse then
          FatPed.Edit;

        EdDteFat.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    FatPed.Close;
    FatPed.Open;

    FatPe2.Close;
    FatPe2.Open;

    qticms := 0;

    if GUfeEmp <> FatPedUfeFat.Value then
    begin

      with quSql, SQL do
      begin

        Close;
        Text := ' Select Count(*) as Reg from GerIcm Where GerIcm.SigUfe = ''' + FatPedUfeFat.Value + '''';
        Open;

      end;

      qticms := quSql.FieldbyName('Reg').AsInteger;

    end;

    EdDteFat.Enabled := False;
    EdFrtFat.Enabled := False;
    EdValTmo.Enabled := False;

    EdDteFat.Font.Style := [fsBold];
    EdFrtFat.Font.Style := [fsBold];
    EdValTmo.Font.Style := [fsBold];

    grPe2.SetFocus;

  end
  else
  begin

    EdDteFat.Enabled := False;
    EdFrtFat.Enabled := False;
    EdValTmo.Enabled := False;

    EdDteFat.Font.Style := [fsBold];
    EdFrtFat.Font.Style := [fsBold];
    EdValTmo.Font.Style := [fsBold];

    grPe2.SetFocus;

  end;
end;

procedure TfmManNot.EdCodGruExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdFrtFat.Focused) and (not EdDteFat.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatPe2.State <> dsBrowse then
      begin

        if Trim(FatPe2CodGru.Value) <> '' then
        begin

          FatPe2CodGru.Value := FNumZeros(FatPe2CodGru.Value, 3);

          with quSql, SQL do
          begin

            Close;
            Text := ' Select Count(*) as Reg From EstGru ' +
              ' Where CodGru = ''' + FatPe2CodGru.Value + '''';
            Open;

          end;

          if quSql.FieldbyName('Reg').AsInteger = 0 then
            fmsgErro('Grupo Informado não Encontrado.', EdCodGru);

        end
        else
          fmsgErro('Grupo Informado não Encontrado', EdCodGru);

      end
      else
      begin

        if EdCodGru.Enabled then
        begin

          if Trim(FatPe2CodGru.Value) = '' then
            fmsgErro('Grupo Informado não Encontrado.', EdCodGru);

        end;
      end;
    end;

  end
  else
  begin

    if (Tecla = 'UP') then
    begin

      if FatPedQtiFat.Value > 0 then
      begin

        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdVluPe2.Enabled := False;
        EdQtpPe2.Enabled := False;
        EdIpiPe2.Enabled := False;
        EdIcmPe2.Enabled := False;

        if FatPe2.State <> dsBrowse then
          FatPe2.CancelUpdates
        else
        begin

          if not FatPe2.Bof then
            FatPe2.Prior;

        end;

        grPe2.SetFocus;

      end
      else
        EdCodGru.SetFocus;
    end;
  end;
end;

procedure TfmManNot.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := '1';

      fmAuxIni.TipoPesq := 'G';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if FatPe2.State = dsBrowse then
        begin

          if Trim(FatPe2CodClp.Value) <> '' then
            FatPe2.Edit
          else
            FatPe2.Append;

        end;

        FatPe2CodGru.Value := fmAuxIni.CodGru;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(FatPe2CodGru.Value) <> '' then
    begin

      if EdCodSub.Enabled then
        EdCodSub.SetFocus;

    end;
  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := '1';

      fmAuxPsq.TipoPesq := 'G';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if FatPe2.State = dsBrowse then
        begin

          if Trim(FatPe2CodClp.Value) <> '' then
            FatPe2.Edit
          else
            FatPe2.Append;

        end;

        FatPe2CodGru.Value := fmAuxPsq.CodGru;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(FatPe2CodGru.Value) <> '' then
    begin

      if EdCodSub.Enabled then
        EdCodSub.SetFocus;

    end;
  end;
end;

procedure TfmManNot.EdCodSubExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if not EdCodGru.Focused then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if Trim(FatPe2CodSub.Value) <> '' then
      begin

        if FatPe2.State <> dsBrowse then
        begin

          FatPe2CodSub.Value := FNumZeros(FatPe2CodSub.Value, 4);

          with quSql, SQL do
          begin

            Close;
            Text := ' Select Count(*) as Reg From EstSub' +
              ' Where CodGru = ''' + FatPe2CodGru.Value + '''' +
              '   and CodSub = ''' + FatPe2CodSub.Value + '''';
            Open;

            if FieldbyName('Reg').AsInteger = 0 then
              fmsgErro('Grupo e Sub-Grupo Informado não Encontrado.', EdCodGru);

          end;

        end
        else
        begin

          if EdCodSub.Enabled then
          begin

            if Trim(FatPe2CodSub.Value) = '' then
              fmsgErro('Sub-Grupo Informado não Encontrado.', EdCodSub);

          end;
        end;

      end
      else
        fmsgErro('Sub-Grupo Informado não Encontrado.', EdCodSub);
    end;
  end;
end;

procedure TfmManNot.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      if Trim(FatPe2CodGru.Value) <> '' then
        fmAuxIni.CodGru := FatPe2CodGru.Value;

      fmAuxIni.CodClp := '1';

      fmAuxIni.TipoPesq := 'S';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if FatPe2.State = dsBrowse then
        begin

          if Trim(FatPe2CodClp.Value) <> '' then
            FatPe2.Edit
          else
            FatPe2.Append;

        end;

        FatPe2CodGru.Value := fmAuxIni.CodGru;
        FatPe2CodSub.Value := fmAuxIni.CodSub;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(FatPe2CodSub.Value) <> '' then
    begin

      if EdCodPro.Enabled then
        EdCodPro.SetFocus;

    end;
  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      if Trim(FatPe2CodGru.Value) <> '' then
        fmAuxPsq.CodGru := FatPe2CodGru.Value;

      fmAuxPsq.CodClp := '1';

      fmAuxPsq.TipoPesq := 'S';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if FatPe2.State = dsBrowse then
        begin

          if Trim(FatPe2CodClp.Value) <> '' then
            FatPe2.Edit
          else
            FatPe2.Append;

        end;

        FatPe2CodGru.Value := fmAuxPsq.CodGru;
        FatPe2CodSub.Value := fmAuxPsq.CodSub;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(FatPe2CodSub.Value) <> '' then
    begin

      if EdCodPro.Enabled then
        EdCodPro.SetFocus;

    end;
  end;
end;

procedure TfmManNot.EdCodProExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodGru.Focused) and (not EdCodSub.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if Trim(FatPe2CodPro.Value) <> '' then
      begin

        if FatPe2.State <> dsBrowse then
        begin

          FatPe2CodPro.Value := FNumStrZero(FatPe2CodPro.Value);

          if FatPe2.State = dsInsert then
          begin

            with quSQL, SQL do
            begin

              Close;
              Text := ' Select Count(*) as QtdReg From FatPe2 ' +
                ' Where FatPe2.CodEmp = ''' + IntToStr(FatPe2CodEmp.Value) + '''' +
                '   and FatPe2.DteRes = ''' + fDateToSQL(FatPe2DteRes.Value) + '''' +
                '   and FatPe2.NumRes = ''' + IntToStr(FatPe2NumRes.Value) + '''' +
                '   and FatPe2.SeqLib = ''' + IntToStr(FatPe2SeqLib.Value) + '''' +
                '   and FatPe2.SeqFat = ''' + IntToStr(FatPe2SeqFat.Value) + '''' +
                '   and FatPe2.CodClp = ''' + FatPe2CodClp.Value + '''' +
                '   and FatPe2.CodGru = ''' + FatPe2CodGru.Value + '''' +
                '   and FatPe2.CodSub = ''' + FatPe2CodSub.Value + '''' +
                '   and FatPe2.CodPro = ''' + FatPe2CodPro.Value + '''' +
                '   and FatPe2.CodTam = ''' + FatPe2CodTam.Value + '''' +
                '   and FatPe2.CodCor = ''' + FatPe2CodCor.Value + '''';
              Open;

              if quSql.FieldbyName('QtdReg').AsInteger > 0 then
                fmsgErro('Item Duplicado.', EdCodPro);

            end;
          end;

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select EstPro.CodPro,' +
              '        EstPro.DscPro,' +
              '        EstPro.SaiIcm,' +
              '        EstPro.SaiIpi,' +
              '        EstPro.CodUns,' +
              '        EstPro.CodSt1,' +
              '        EstPro.CodSt2 From EstPro ' +
              ' Where EstPro.CodClp = :CodClp' +
              '   and EstPro.CodGru = :CodGru' +
              '   and EstPro.CodSub = :CodSub' +
              '   and EstPro.CodPro = :CodPro' +
              '   and EstPro.FlbPro = :FlbPro';

            with Params do
            begin

              Params[0].AsString := FatPe2CodClp.Value;
              Params[1].AsString := FatPe2CodGru.Value;
              Params[2].AsString := FatPe2CodSub.Value;
              Params[3].AsString := FatPe2CodPro.Value;
              Params[4].AsString := ' ';

            end;

            Open;

          end;

          if Trim(quSQL.FieldbyName('CodPro').AsString) <> '' then
          begin

            FatPe2IcmPe2.Value := quSql.FieldbyName('SaiIcm').AsFloat;
            FatPe2IpiPe2.Value := quSql.FieldbyName('SaiIpi').AsFloat;
            FatPe2CodUnd.Value := quSQL.FieldbyName('CodUns').AsString;
            FatPe2CodSt1.Value := quSql.FieldbyName('CodSt1').AsString;
            FatPe2CodSt2.Value := quSql.FieldbyName('CodSt2').AsString;
            FatPe2DesPe2.Value := Trim(quSQL.FieldbyName('DscPro').AsString);

            if qticms = 1 then
            begin

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select GerIcm.PerIcm From GerIcm Where GerIcm.SigUfe = ''' + FatPedUfeFat.Value + '''';
                Open;

                FatPe2IcmPe2.Value := FieldbyName('PerIcm').AsFloat;

              end;
            end;

            with quSql, SQL do
            begin

              Close;
              Text := ' Select EstQte.CodEmp,' +
                '        EstQte.QtdQte,' +
                '        EstQte.QtrQte,' +
                '        EstQte.QtaQte,' +
                '        EstQte.QtdRma From EstQte ' +
                ' Where EstQte.CodEmp = ''' + IntToStr(FatPe2CodEit.Value) + '''' +
                '   and EstQte.CodClp = ''' + FatPe2CodClp.Value + '''' +
                '   and EstQte.CodGru = ''' + FatPe2CodGru.Value + '''' +
                '   and EstQte.CodSub = ''' + FatPe2CodSub.Value + '''' +
                '   and EstQte.CodPro = ''' + FatPe2CodPro.Value + '''';
              Open;

            end;

            if quSql.FieldbyName('CodEmp').AsInteger > 0 then
            begin

              if not pnEstoque.visible then
                pnEstoque.Visible := True;

              EdQtdIte.Caption := FormatFloat('###,###,##0.0000', quSQL.FieldbyName('QtdQte').AsFloat) + ' ';
              EdQtrIte.Caption := FormatFloat('###,###,##0.0000', quSQL.FieldbyName('QtrQte').AsFloat) + ' ';
              EdQtaIte.Caption := FormatFloat('###,###,##0.0000', quSQL.FieldbyName('QtaQte').AsFloat) + ' ';

              if fRound(quSQL.FieldbyName('QtdQte').AsFloat - quSQL.FieldbyName('QtrQte').AsFloat, 4) < 0 then
                EdSldIte.Font.Color := clRed
              else
                EdSldIte.Font.Color := clNavy;

              EdSldIte.Caption := FormatFloat('###,###,##0.0000', fRound(quSQL.FieldbyName('QtdQte').AsFloat - quSQL.FieldbyName('QtrQte').AsFloat, 4)) + ' ';

              EdQtpPe2.SetFocus;

            end
            else
              fmsgErro('Item Informado não Encontrado na Empresa.', EdCodPro);

          end
          else
            fmsgErro('Item Informado não Encontrado.', EdCodPro);
        end;

      end
      else
        fmsgErro('Item Informado não Encontrado.', EdCodPro);
    end;
  end;
end;

procedure TfmManNot.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {f1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := FatPe2CodClp.Value;
      fmAuxIni.CodGru := FatPe2CodGru.Value;
      fmAuxIni.CodSub := FatPe2CodSub.Value;

      fmAuxIni.TipoPesq := 'I';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        if EdCodGru.Enabled then
        begin

          FatPe2CodClp.Value := fmAuxIni.CodClp;
          FatPe2CodGru.Value := fmAuxIni.CodGru;
          FatPe2CodSub.Value := fmAuxIni.CodSub;
          FatPe2CodPro.Value := fmAuxIni.CodPro;

        end;
      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(FatPe2CodPro.Value) <> '' then
      EdQtpPe2.SetFocus;

  end;

  if key = 113 then
  begin {F5 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := '1';

      if Trim(FatPe2CodGru.Value) <> '' then
        fmAuxPsq.CodGru := FatPe2CodGru.Value;
      if Trim(FatPe2CodSub.Value) <> '' then
        fmAuxPsq.CodSub := FatPe2CodSub.Value;

      fmAuxPsq.TipoPesq := 'I';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        if FatPe2.State = dsBrowse then
        begin

          if Trim(FatPe2CodClp.Value) <> '' then
            FatPe2.Edit
          else
            FatPe2.Append;

        end;

        FatPe2CodClp.Value := fmAuxPsq.CodClp;
        FatPe2CodGru.Value := fmAuxPsq.CodGru;
        FatPe2CodSub.Value := fmAuxPsq.CodSub;
        FatPe2CodPro.Value := fmAuxPsq.CodPro;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(FatPe2CodPro.Value) <> '' then
      EdQtpPe2.SetFocus;

  end;
end;

procedure TfmManNot.EdQtpPe2Exit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      pnEstoque.Visible := False;

      if FatPe2.State <> dsBrowse then
      begin

        if FatPe2QtpPe2.Value > 0 then
        begin

          FatPe2TotPe2.Value := fRound(FatPe2VlqPe2.Value * FatPe2QtpPe2.Value, 2);

          EdVluPe2.SetFocus;

        end
        else
          fmsgErro('Campo de Preenchimento Obrigatorio.', EdQtpPe2);
      end;
    end;
  end;
end;

procedure TfmManNot.EdVluPe2Exit(Sender: TObject);
var
  ret: string;
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdQtpPe2.Focused) and (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
      saida := True
    else
      saida := False;

    if saida then
    begin

      if FatPe2.State <> dsBrowse then
      begin

        if FatPe2VluPe2.Value > 0 then
        begin

          if FatPe2VluPe2.Value <> AntVluPe2 then
          begin

            FatPe2VlqPe2.Value := FatPe2VluPe2.Value;

            AntVluPe2 := FatPe2VluPe2.Value;

            FatPe2TotPe2.Value := fRound(FatPe2VlqPe2.Value * FatPe2QtpPe2.Value, 2);

            if qticms > 1 then
            begin

              ret := 'N';

              try

                fmPsqIcm := TfmPsqIcm.Create(Self);

                with fmPsqIcm.GerIcm, SQL do
                begin

                  Close;
                  Text := ' Select * From GerIcm Where GerIcm.SigUfe = ''' + FatPedUfeFat.Value + '''';
                  Open;

                end;

                fmPsqIcm.ShowModal;

                ret := fmPsqIcm.ret;

                FatPe2IcmPe2.Value := fmPsqIcm.Icms;

              finally

                FreeAndNil(fmPsqIcm);

              end;

              if ret = 'N' then
                EdVluPe2.SetFocus;

            end;
          end;

        end
        else
          fmsgErro('Campo de Preenchimento Obrigatorio.', EdVluPe2);
      end;
    end;
  end;
end;

procedure TfmManNot.Panel3Exit(Sender: TObject);
var
  NroPe2: integer;
begin
  inherited;
  if FatPe2.State <> dsBrowse then
  begin

    if FatPe2QtpPe2.Value = 0 then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdQtpPe2);

    if FatPe2VluPe2.Value = 0 then
    begin

      if EdVluPe2.Enabled then
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdVluPe2)
      else
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdQtpPe2);

    end;

    if FatPe2.State = dsInsert then
    begin

      with FatPe2 do
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

          if FatPe2.State = dsBrowse then
            FatPe2.Edit;

          EdCodGru.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatPe2.Close;
      FatPe2.Open;

      FatPed.Close;
      FatPed.Open;

      FatPe2.Append;

      EdCodGru.SetFocus;

    end
    else
    begin

      NroPe2 := FatPe2NroPe2.Value;

      with FatPe2 do
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

          if FatPe2.State = dsBrowse then
            FatPe2.Edit;

          EdQtpPe2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatPe2.Close;
      FatPe2.Open;

      FatPed.Close;
      FatPed.Open;

      FatPe2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;NroPe2', VarArrayOf([FatPe2CodEmp.Value, FatPe2DteRes.Value, FatPe2NumRes.Value, FatPe2SeqLib.Value,
        FatPe2SeqFat.Value, NroPe2]),
        [LoPartialKey]);

      if FatPe2NroPe2.Value = FatPedQtiFat.Value then
        FatPe2.Append
      else
      begin

        FatPe2.Next;

        EdCodGru.Enabled := False;
        EdCodSub.Enabled := False;
        EdCodPro.Enabled := False;
        EdQtpPe2.Enabled := False;
        EdVluPe2.Enabled := False;
        EdIpiPe2.Enabled := False;
        EdIcmPe2.Enabled := False;

        grPe2.SetFocus;

      end;
    end;

  end
  else
  begin

    EdCodGru.Enabled := False;
    EdCodSub.Enabled := False;
    EdCodPro.Enabled := False;
    EdQtpPe2.Enabled := False;
    EdVluPe2.Enabled := False;
    EdIpiPe2.Enabled := False;
    EdIcmPe2.Enabled := False;

    grPe2.SetFocus;

  end;
end;

procedure TfmManNot.Panel2Exit(Sender: TObject);
var
  NroPe2: integer;
begin
  inherited;
  if FatPe2.State <> dsBrowse then
  begin

    NroPe2 := FatPe2NroPe2.Value;

    with FatPe2 do
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

        if FatPe2.State = dsBrowse then
          FatPe2.Edit;

        if EdCodGru.Enabled then
          EdCodGru.SetFocus
        else
          EdQtpPe2.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    FatPe2.Close;
    FatPe2.Open;

    FatPed.Close;
    FatPed.Open;

    FatPe2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;NroPe2', VarArrayOf([FatPe2CodEmp.Value, FatPe2DteRes.Value, FatPe2NumRes.Value, FatPe2SeqLib.Value,
      FatPe2SeqFat.Value, NroPe2]),
      [LoPartialKey]);

    EdDesPe2.Enabled := False;
    EdObsPe2.Enabled := False;

    pnDesPe2.Visible := True;
    pnObsPe2.Visible := True;

    grPe2.SetFocus;

  end
  else
  begin

    EdDesPe2.Enabled := False;
    EdObsPe2.Enabled := False;

    pnDesPe2.Visible := True;
    pnObsPe2.Visible := True;

    grPe2.SetFocus;

  end;
end;

procedure TfmManNot.EdDesPe2Exit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then
    fmManNot.Panel2.OnExit(Sender);
end;

procedure TfmManNot.grPe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroPe2: integer;
begin
  inherited;
  if key = 68 then
  begin // D - Mudar Descrição/Observações Sobre o Item //

    if FatPe2CodEmp.Value > 0 then
    begin

      pnDesPe2.Visible := False;
      pnObsPe2.Visible := False;

      EdDesPe2.Enabled := True;
      EdObsPe2.Enabled := True;

      EdDesPe2.SetFocus;

    end;
  end;

  if key = 13 then
  begin // Tecla - ENTER //

    if FatPe2CodEmp.Value > 0 then
    begin

      FatPe2.Edit;

      EdQtpPe2.Enabled := True;
      EdVluPe2.Enabled := True;
      EdIpiPe2.Enabled := True;
      EdIcmPe2.Enabled := True;

      //        EdQtpPe2.SetFocus;

    end;
  end;

  if key = 40 then
  begin // Tecla - Seta para Baixo //

    if FatPe2NroPe2.Value = FatPedQtiFat.Value then
      FatPe2.Append;

  end;

  if key = 46 then
  begin // Tecla - DEL //

    if Trim(FatPe2CodClp.Value) <> '' then
    begin

      NroPe2 := FatPe2NroPe2.Value;

      FatPe2.Delete;

      with FatPe2 do
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

          if FatPe2.State <> dsBrowse then
            FatPe2.CancelUpdates;

          grPe2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatPe2.Close;
      FatPe2.Open;

      FatPed.Close;
      FatPed.Open;

      if NroPe2 < FatPedQtiFat.Value then
        FatPe2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;NroPe2', VarArrayOf([FatPe2CodEmp.Value, FatPe2DteRes.Value, FatPe2NumRes.Value, FatPe2SeqLib.Value,
          FatPe2SeqFat.Value, NroPe2]),
          [LoPartialKey])
      else
      begin

        if FatPedQtiFat.Value = 0 then
          FatPe2.Append
        else
          FatPe2.Last;

      end;
    end;
  end;
end;

procedure TfmManNot.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then
  begin

    if key = 114 then
    begin // F3 - Descrição //

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := FatPe2CodClp.Value;
        fmAuxIni.CodGru := FatPe2CodGru.Value;
        fmAuxIni.CodSub := FatPe2CodSub.Value;

        fmAuxIni.CodEmp := FatPe2CodEmp.Value;

        if FatPedLanEst.Value = 'Sim' then
        begin

          if FatPedCodFil.Value > 0 then
            fmAuxIni.CodEmp := FatPedCodFil.Value;

        end;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.CodGru) <> '' then
        begin

          FatPe2CodClp.Value := fmAuxIni.CodClp;
          FatPe2CodGru.Value := fmAuxIni.CodGru;
          FatPe2CodSub.Value := fmAuxIni.CodSub;
          FatPe2CodPro.Value := fmAuxIni.CodPro;

        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      if EdCodGru.Focused then
        EdCodGru.SetFocus;
      if EdCodSub.Focused then
        EdCodSub.SetFocus;
      if EdCodPro.Focused then
        EdCodPro.SetFocus;

    end;

    if key = 116 then
    begin // F5 - Referência //

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := FatPe2CodClp.Value;
        fmAuxIni.CodGru := FatPe2CodGru.Value;
        fmAuxIni.CodSub := FatPe2CodSub.Value;

        fmAuxIni.CodEmp := FatPe2CodEmp.Value;

        if FatPedLanEst.Value = 'Sim' then
        begin

          if FatPedCodFil.Value > 0 then
            fmAuxIni.CodEmp := FatPedCodFil.Value;

        end;

        fmAuxIni.TipoPesq := 'R';

        fmAuxIni.ShowModal;

        if Trim(fmAuxIni.CodGru) <> '' then
        begin

          FatPe2CodClp.Value := fmAuxIni.CodClp;
          FatPe2CodGru.Value := fmAuxIni.CodGru;
          FatPe2CodSub.Value := fmAuxIni.CodSub;
          FatPe2CodPro.Value := fmAuxIni.CodPro;

        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      if EdCodGru.Focused then
        EdCodGru.SetFocus;
      if EdCodSub.Focused then
        EdCodSub.SetFocus;
      if EdCodPro.Focused then
        EdCodPro.SetFocus;

    end;

    if key = 117 then
    begin // F6 - Inteligente/Descrição //

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := FatPe2CodClp.Value;
        fmAuxPsq.CodGru := FatPe2CodGru.Value;
        fmAuxPsq.CodSub := FatPe2CodSub.Value;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            FatPe2CodClp.Value := fmAuxPsq.CodClp;
            FatPe2CodGru.Value := fmAuxPsq.CodGru;
            FatPe2CodSub.Value := fmAuxPsq.CodSub;

          end;
        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if EdCodGru.Focused then
        EdCodGru.SetFocus;
      if EdCodSub.Focused then
        EdCodSub.SetFocus;

    end;

    if key = 118 then
    begin {F7 - Inteligente/Referência}

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := FatPe2CodClp.Value;
        fmAuxPsq.CodGru := FatPe2CodGru.Value;
        fmAuxPsq.CodSub := FatPe2CodSub.Value;

        fmAuxPsq.TipoPesq := 'R';

        fmAuxPsq.ShowModal;

        if Trim(fmAuxPsq.CodGru) <> '' then
        begin

          FatPe2CodClp.Value := fmAuxPsq.CodClp;
          FatPe2CodGru.Value := fmAuxPsq.CodGru;
          FatPe2CodSub.Value := fmAuxPsq.CodSub;

        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      if EdCodGru.Focused then
        EdCodGru.SetFocus;
      if EdCodSub.Focused then
        EdCodSub.SetFocus;

    end;
  end;

  if key = 115 then
  begin // F4 - Estoque //

    try

      fmPsqEst := TfmPsqEst.Create(Self);

      fmPsqEst.sEntr := sEntr;

      fmPsqEst.sCodClp := '1';

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
          '   and EstPro.FlbPro = ''' + ' ' + '''' +
          ' Order by EstPro.DscPro';
        Open;

      end;

      if Trim(FatPe2CodGru.Value) <> '' then
      begin

        if Trim(FatPe2CodSub.Value) <> '' then
        begin

          if Trim(FatPe2CodPro.Value) <> '' then
            fmPsqEst.EstPro.Locate('CodClp;CodGru;CodSub;CodPro', VarArrayOf([FatPe2CodClp.Value, FatPe2CodGru.Value, FatPe2CodSub.Value, FatPe2CodPro.Value]),
              [loPartialKey])
          else
            fmPsqEst.EstPro.Locate('CodClp;CodGru;CodSub', VarArrayOf([FatPe2CodClp.Value, FatPe2CodGru.Value, FatPe2CodSub.Value]), [loPartialKey]);

        end
        else
          fmPsqEst.EstPro.Locate('CodClp;CodGru', VarArrayOf([FatPe2CodClp.Value, FatPe2CodGru.Value]), [loPartialKey]);

      end;

      fmPsqEst.ShowModal;

      if sEntr = 'S' then
      begin

        if Trim(fmPsqEst.CodGru) <> '' then
        begin

          if EdCodGru.Enabled then
          begin

            FatPe2CodClp.Value := fmPsqEst.CodClp;
            FatPe2CodGru.Value := fmPsqEst.CodGru;
            FatPe2CodSub.Value := fmPsqEst.CodSub;
            FatPe2CodPro.Value := fmPsqEst.CodPro;

          end;
        end;
      end;

    finally

      FreeAndNil(fmPsqEst);

    end;

    if Trim(FatPe2CodPro.Value) <> '' then
    begin

      if EdCodPro.Enabled then
      begin

        EdCodPro.SetFocus;

        EdCodPro.OnExit(Sender);

      end;

    end
    else
    begin

      if EdCodPro.Focused then
        EdCodPro.SetFocus;
      if EdCodSub.Focused then
        EdCodSub.SetFocus;
      if EdCodGru.Focused then
        EdCodGru.SetFocus;

    end;
  end;

  if key = 27 then
  begin

    if pnDscNot.Visible then
    begin

      if FatPed.State <> dsBrowse then
        FatPed.CancelUpdates;

      pnDscNot.Visible := False;

    end
    else
    begin

      if FatPed.State <> dsBrowse then
        Close
      else
      begin

        if FatPe2.State <> dsBrowse then
          FatPe2.CancelUpdates;

        if (EdCodGru.Enabled) or (EdCodSub.Enabled) or (EdCodPro.Enabled) or
          (EdQtpPe2.Enabled) or (EdVluPe2.Enabled) or (EdIcmPe2.Enabled) or (EdIpiPe2.Enabled) then
        begin

          EdCodGru.Enabled := False;
          EdCodSub.Enabled := False;
          EdCodPro.Enabled := False;
          EdQtpPe2.Enabled := False;
          EdVluPe2.Enabled := False;
          EdIpiPe2.Enabled := False;
          EdIcmPe2.Enabled := False;

          grPe2.SetFocus;

        end
        else
        begin

          if EdDesPe2.Enabled then
          begin

            EdDesPe2.Enabled := False;
            EdObsPe2.Enabled := False;

            pnDesPe2.Visible := True;
            pnObsPe2.Visible := True;

            grPe2.SetFocus;

          end
          else
            Close;
        end;
      end;
    end;
  end;

  if key = 123 then
  begin // F12-Finalizar Pedido //

    if FatPedTotFat.Value > 0 then
    begin

      if grPe2.Focused then
      begin

        try

          fmManNt1 := TfmManNt1.Create(Self);

          fmManNt1.ShowModal;

        finally

          FreeAndNil(fmManNt1);

        end;

        if Finalizar = 'S' then
          close;

      end;
    end;
  end;
end;

procedure TfmManNot.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if grPe2.Focused then
  begin

    if FatPe2.State = dsBrowse then
    begin

      if key = #22 then
      begin {Gerenciamento de Contratos Ctrl + 'V'}

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

        if GFlgAce = 'Nao' then
        begin

          pnDscNot.Visible := True;

          EdDscNot.Enabled := True;

          EdDscNot.Font.Style := [];

          EdDscNot.SetFocus;

        end;
      end;
    end;
  end;
end;

procedure TfmManNot.pnDscNotExit(Sender: TObject);
begin
  inherited;
  if FatPed.State <> dsBrowse then
  begin

    with FatPed do
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

        if FatPed.State = dsBrowse then
          FatPed.Edit;

        EdDscNot.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    FatPed.Close;
    FatPed.Open;

    FatPe2.Close;
    FatPe2.Open;

    EdDscNot.Enabled := False;

    EdDscNot.Font.Style := [fsBold];

    pnDscNot.Visible := False;

    grPe2.SetFocus;

  end
  else
  begin

    EdDscNot.Enabled := False;

    EdDscNot.Font.Style := [fsBold];

    pnDscNot.Visible := False;

    grPe2.SetFocus;

  end;
end;

procedure TfmManNot.DsPe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if FatPe2.State = dsBrowse then
    AntVluPe2 := FatPe2VluPe2.Value;

  pnDesPe2.Caption := FatPe2DesPe2.Value;
  pnObsPe2.Caption := FatPe2ObsPe2.Value;

  pnNumRes.Caption := IntToStr(FatPedNumRes.Value);

  pnBasIcm.Caption := FormatFloat('###,###,##0.00', FatPedBasIcm.Value);
  pnTotIcm.Caption := FormatFloat('###,###,##0.00', FatPedTotIcm.Value);
  pnBasSub.Caption := FormatFloat('###,###,##0.00', FatPedBasSub.Value);
  pnTotSub.Caption := FormatFloat('###,###,##0.00', FatPedTotSub.Value);
  pnTotFat.Caption := FormatFloat('###,###,##0.00', FatPedTotFat.Value);
  pnTotFrt.Caption := FormatFloat('###,###,##0.00', FatPedTotFrt.Value);
  pnTotSeg.Caption := FormatFloat('###,###,##0.00', FatPedTotSeg.Value);
  pnTotDes.Caption := FormatFloat('###,###,##0.00', FatPedTotDes.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00', FatPedTotIpi.Value);
  pnTotGer.Caption := FormatFloat('###,###,##0.00', FatPedTotGer.Value);

  if FatPe2.State = dsInsert then
    pnNroPe2.Caption := FNumZeros(IntToStr(FatPe2NroPe2.Value), 4) + '/' + FNumZeros(IntToStr(FatPedQtiFat.Value + 1), 4)
  else
    pnNroPe2.Caption := FNumZeros(IntToStr(FatPe2NroPe2.Value), 4) + '/' + FNumZeros(IntToStr(FatPedQtiFat.Value), 4);

end;

procedure TfmManNot.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref'

end;

procedure TfmManNot.EdCodProEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref'

end;

procedure TfmManNot.EdDteFatEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'F4-Estoque'

end;

procedure TfmManNot.EdQtpPe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if not pnEstoque.Visible then
    pnEstoque.Visible := True;

  LbText.Caption := 'F4-Estoque'

end;

procedure TfmManNot.grPe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'D-Descrição/Obs F4-Estoque'

end;

end.
