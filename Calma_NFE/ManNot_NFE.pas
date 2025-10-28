unit ManNot_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorPickEdit, dxDBColorDateEdit,
  dxDBColorCurrencyEdit, dxDBColorEdit, Mask, DBCtrls, dxDBEdtr,
  dxDBColorLookupEdit, uIndicadores;

type
  TfmManNot_NFE = class(TfmPadrao)
    FatPed: TwwQuery;
    FatPe2: TwwQuery;
    UpFat: TUpdateSQL;
    UpPe2: TUpdateSQL;
    DsPe2: TDataSource;
    DsFat: TDataSource;
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
    Label25: TLabel;
    Label26: TLabel;
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
    Label24: TLabel;
    Label27: TLabel;
    EdSeqPe2: TdxDBColorCurrencyEdit;
    Label44: TLabel;
    pnNroPe2: TPanel;
    FatPar: TwwQuery;
    FatParFLGCOT: TStringField;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Label29: TLabel;
    EdNumRes: TdxDBColorEdit;
    Label1: TLabel;
    EdCodEmp: TdxDBColorEdit;
    pnApeEmp: TPanel;
    EdApeEmp: TdxDBColorEdit;
    Label2: TLabel;
    EdDteFat: TdxDBColorDateEdit;
    Label4: TLabel;
    EdCodCli: TdxDBColorEdit;
    pnNomCli: TPanel;
    EdNomCli: TdxDBColorEdit;
    Label16: TLabel;
    pnUfeFat: TPanel;
    EdUfeFat: TdxDBColorEdit;
    Label13: TLabel;
    EdCodVen: TdxDBColorEdit;
    pnNomVen: TPanel;
    EdNomVen: TdxDBColorEdit;
    Label12: TLabel;
    Label5: TLabel;
    EdCodPfa: TdxDBColorEdit;
    pnNomPfa: TPanel;
    EdDscPfa: TdxDBColorEdit;
    Label31: TLabel;
    EdDtcTmo: TdxDBColorDateEdit;
    Label11: TLabel;
    EdValTmo: TdxDBColorCurrencyEdit;
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
    EdVlqPe2: TdxDBColorCurrencyEdit;
    EdTotPe2: TdxDBColorCurrencyEdit;
    grPe2: ThGrid;
    pnNumRes: TPanel;
    Panel2: TPanel;
    pnObsPe2: TPanel;
    pnDesPe2: TPanel;
    EdDesPe2: TdxDBColorEdit;
    EdObsPe2: TdxDBColorEdit;
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
    pnDscNot: TPanel;
    Label49: TLabel;
    EdDscNot: TdxDBColorCurrencyEdit;
    pnCodEmp: TPanel;
    pnCodCli: TPanel;
    pnCodVen: TPanel;
    pnCodPfa: TPanel;
    FatParLEROBS: TStringField;
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
    FatPe2REFPE2: TStringField;
    FatPe2LIQPE2: TFloatField;
    FatPe2BRTPE2: TFloatField;
    FatPe2LINPE2: TIntegerField;
    FatPe2QTPPE2: TFloatField;
    FatPe2QTDPE2: TFloatField;
    FatPe2SLDPE2: TFloatField;
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
    FatPe2SEQNFS: TIntegerField;
    FatPe2SEQCLF: TIntegerField;
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
    FatPe2TOTPIS: TFloatField;
    FatPe2TOTCOF: TFloatField;
    FatPe2TOTDSR: TFloatField;
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
    FatPe2FLASEQ: TStringField;
    FatPe2FLGLIB: TStringField;
    FatPe2NRONFS: TIntegerField;
    FatPe2NROPE2: TIntegerField;
    FatPe2SEQRE2: TIntegerField;
    FatPe2CODVWA: TStringField;
    FatPe2FLGREQ: TStringField;
    FatPe2FLGDUP: TStringField;
    FatPe2VALPE2: TFloatField;
    FatPe2VALTMO: TFloatField;
    FatPe2CODTXF: TStringField;
    FatPe2CODCFO: TStringField;
    FatPe2TRBSUB: TStringField;
    FatPe2ICMSUB: TFloatField;
    FatPe2MRGSUB: TFloatField;
    FatPe2BASESB: TFloatField;
    FatPe2TOTFRT: TFloatField;
    FatPe2TOTSEG: TFloatField;
    FatPe2TOTDES: TFloatField;
    TIPFRT: TwwQuery;
    TIPFRTID: TIntegerField;
    TIPFRTNOMFRT: TStringField;
    EdModFrt: TdxDBColorLookupEdit;
    dsTipFrt: TDataSource;
    FatParVAL_DESCONTO: TFloatField;
    FatPedID_FATPED: TIntegerField;
    FatPedDTEFAT: TDateTimeField;
    FatPedHREFAT: TStringField;
    FatPedCODCLI: TIntegerField;
    FatPedUFEFAT: TStringField;
    FatPedCODEMP: TIntegerField;
    FatPedCODFIL: TIntegerField;
    FatPedCODVEN: TIntegerField;
    FatPedCODPFA: TStringField;
    FatPedTIPPFA: TStringField;
    FatPedCODTCL: TIntegerField;
    FatPedFLGCTB: TStringField;
    FatPedCONSUM: TStringField;
    FatPedLANEST: TStringField;
    FatPedATUEST: TStringField;
    FatPedINTFIN: TStringField;
    FatPedCODTRA: TIntegerField;
    FatPedMODPFA: TStringField;
    FatPedID_PEDCND: TIntegerField;
    FatPedTIPTMO: TStringField;
    FatPedDTCTMO: TDateTimeField;
    FatPedVALTMO: TFloatField;
    FatPedDSCREG: TFloatField;
    FatPedPERPIS: TFloatField;
    FatPedPERCOF: TFloatField;
    FatPedDESREG: TStringField;
    FatPedQTDNFS: TIntegerField;
    FatPedNRONFS: TIntegerField;
    FatPedQTDNOT: TIntegerField;
    FatPedNRONOT: TIntegerField;
    FatPedTRBPIS: TStringField;
    FatPedTRBCOF: TStringField;
    FatPedAVINOT: TStringField;
    FatPedAVIDUP: TStringField;
    FatPedCGCCLI: TStringField;
    FatPedINSCLI: TStringField;
    FatPedCODCF1: TStringField;
    FatPedCODCF2: TStringField;
    FatPedFRTFAT: TStringField;
    FatPedDESNAT: TStringField;
    FatPedINSSUB: TStringField;
    FatPedTIPFRT: TStringField;
    FatPedMARFAT: TStringField;
    FatPedNROFAT: TStringField;
    FatPedESPFAT: TStringField;
    FatPedUFEPLC: TStringField;
    FatPedPLCTRA: TStringField;
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
    FatPedNOMENT: TStringField;
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
    FatPedNROSUF: TStringField;
    FatPedOB1FAT: TMemoField;
    FatPedOB2FAT: TMemoField;
    FatPedOB3FAT: TMemoField;
    FatPedOB4FAT: TMemoField;
    FatPedOB5FAT: TMemoField;
    FatPedOB6FAT: TMemoField;
    FatPedOB7FAT: TMemoField;
    FatPedOB8FAT: TMemoField;
    FatPedQTPSEL: TIntegerField;
    FatPedQTIPE2: TIntegerField;
    FatPedQTIPE4: TIntegerField;
    FatPedQTIPE5: TIntegerField;
    FatPedQTIPE6: TIntegerField;
    FatPedQTIPE7: TIntegerField;
    FatPedQTIDES: TIntegerField;
    FatPedLINFAT: TIntegerField;
    FatPedQTDVOL: TIntegerField;
    FatPedALTVOL: TIntegerField;
    FatPedDSCFAT: TFloatField;
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
    FatPedBSICMF: TFloatField;
    FatPedBAICMF: TFloatField;
    FatPedTOICMF: TFloatField;
    FatPedBSICMS: TFloatField;
    FatPedBAICMS: TFloatField;
    FatPedTOICMS: TFloatField;
    FatPedBSICMD: TFloatField;
    FatPedBAICMD: TFloatField;
    FatPedTOICMD: TFloatField;
    FatPedBSIPIF: TFloatField;
    FatPedBAIPIF: TFloatField;
    FatPedTOIPIF: TFloatField;
    FatPedBSIPIS: TFloatField;
    FatPedBAIPIS: TFloatField;
    FatPedTOIPIS: TFloatField;
    FatPedBSIPID: TFloatField;
    FatPedBAIPID: TFloatField;
    FatPedTOIPID: TFloatField;
    FatPedTOTSER: TFloatField;
    FatPedBASISS: TFloatField;
    FatPedTOTISS: TFloatField;
    FatPedTOTGER: TFloatField;
    FatPedTOTDUP: TFloatField;
    FatPedLANNOT: TFloatField;
    FatPedSLDNOT: TFloatField;
    FatPedLANDUP: TFloatField;
    FatPedSLDDUP: TFloatField;
    FatPedTOTDSR: TFloatField;
    FatPedTOTLIB: TFloatField;
    FatPedFLGDIF: TStringField;
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
    FatPedTXFICM: TStringField;
    FatPedTXFIPI: TStringField;
    FatPedCODUSU: TIntegerField;
    FatPedDTECAN: TDateTimeField;
    FatPedHRECAN: TStringField;
    FatPedUSUCAN: TIntegerField;
    FatPedDTEATU: TDateTimeField;
    FatPedHREATU: TStringField;
    FatPedUSUATU: TIntegerField;
    FatPedCODVEI: TIntegerField;
    FatPedTRASDA: TIntegerField;
    FatPedDTESDA: TDateTimeField;
    FatPedHRESDA: TStringField;
    FatPedUSUSDA: TIntegerField;
    FatPedNROCOL: TStringField;
    FatPedOB1SDA: TStringField;
    FatPedOB2SDA: TStringField;
    FatPedOB3SDA: TStringField;
    FatPedOB4SDA: TStringField;
    FatPedOB5SDA: TStringField;
    FatPedDTEENT: TDateTimeField;
    FatPedHREENT: TStringField;
    FatPedUSUENT: TIntegerField;
    FatPedOB1ENT: TStringField;
    FatPedOB2ENT: TStringField;
    FatPedOB3ENT: TStringField;
    FatPedOB4ENT: TStringField;
    FatPedOB5ENT: TStringField;
    FatPedFLGANT: TStringField;
    FatPedFLGENV: TStringField;
    FatPedFLGSER: TStringField;
    FatPedOB1DES: TStringField;
    FatPedOB2DES: TStringField;
    FatPedOB3DES: TStringField;
    FatPedOB4DES: TStringField;
    FatPedOB5DES: TStringField;
    FatPedFLGNFS: TStringField;
    FatPedFLGIMP: TStringField;
    FatPedFLGATU: TStringField;
    FatPedSEQFAT: TIntegerField;
    FatPedSITFAT: TStringField;
    FatPedSEQINI: TIntegerField;
    FatPedSEQFIN: TIntegerField;
    FatPedFLGSEG: TStringField;
    FatPedSERNOT: TStringField;
    FatPedSERSEL: TStringField;
    FatPedFLGIPI: TStringField;
    FatPedDTEDEV: TDateTimeField;
    FatPedHREDEV: TStringField;
    FatPedUSUDEV: TIntegerField;
    FatPedOB1DEV: TStringField;
    FatPedOB2DEV: TStringField;
    FatPedOB3DEV: TStringField;
    FatPedOB4DEV: TStringField;
    FatPedOB5DEV: TStringField;
    FatPedTOTFRE: TFloatField;
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
    FatPedNFEPIS: TStringField;
    FatPedNFECOF: TStringField;
    FatPedFLGNFE: TStringField;
    FatPedENVNFE: TStringField;
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
    FatPedIMPNFE: TStringField;
    FatPedRETNFE: TStringField;
    FatPedDTECNE: TDateTimeField;
    FatPedHRECNE: TStringField;
    FatPedARQNFE: TBlobField;
    FatPedDTCNFE: TDateTimeField;
    FatPedHRCNFE: TStringField;
    FatPedPRCNFE: TStringField;
    FatPedID_ESTSIP: TIntegerField;
    FatPedNFETH: TSmallintField;
    FatPedARQNFECANC: TBlobField;
    FatPedNFETHCANC: TSmallintField;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedFLGTMO: TStringField;
    FatPedCODTMO: TIntegerField;
    FatPedFLGAVI: TStringField;
    FatPedFLGENT: TStringField;
    FatPedFLGSAI: TStringField;
    FatPedOBSFAT: TStringField;
    FatPedSEQITE: TIntegerField;
    FatPedQTIFAT: TIntegerField;
    FatPedQTPNOT: TIntegerField;
    FatPedSTPNOT: TIntegerField;
    FatPedQTPDUP: TIntegerField;
    FatPedSTPDUP: TIntegerField;
    FatPedICMFRT: TFloatField;
    FatPedICMSEG: TFloatField;
    FatPedICMDES: TFloatField;
    FatPedIPIFRT: TFloatField;
    FatPedIPISEG: TFloatField;
    FatPedIPIDES: TFloatField;
    FatPedHRCFAT: TStringField;
    FatPedDTCFAT: TDateTimeField;
    FatPedUSUCFT: TIntegerField;
    FatPedOBSCFT: TMemoField;
    FatPedOBSSDA: TStringField;
    FatPedOBSENT: TStringField;
    FatPedFLGREQ: TStringField;
    FatPedENVRAE: TStringField;
    FatPedDSCNOT: TFloatField;
    FatPedSEQDES: TIntegerField;
    FatPedQTISER: TIntegerField;
    FatPedSEQSER: TIntegerField;
    FatPedFLGFEC: TStringField;
    FatPedFLGSIN: TStringField;
    FatPedOBSDES: TStringField;
    FatPedOB1CAN: TStringField;
    FatPedOB2CAN: TStringField;
    FatPedOB3CAN: TStringField;
    FatPedOB4CAN: TStringField;
    FatPedOB5CAN: TStringField;
    FatPedMODFRT: TStringField;
    FatPedFLGNOT: TStringField;
    FatPedUFECOM: TStringField;
    FatPedFLGREC: TStringField;
    FatPedFLGAPR: TStringField;
    FatPedFLGQTD: TStringField;
    FatPedFLGVERBOL: TSmallintField;
    FatPedFLGCON: TStringField;
    FatPedLIBERA_RESP: TStringField;
    FatPedLIBERA_CODUSU: TIntegerField;
    FatPedLIBERA_DTEHRE: TDateTimeField;
    FatPedFLGOPE: TStringField;
    FatPedSERIENF: TSmallintField;
    FatPedSERIECONTINGENCIA: TSmallintField;
    FatPedNUMCONTINGENCIA: TSmallintField;
    FatPedTOTOUTDESP: TFloatField;
    FatPedTOTDESCINC: TFloatField;
    FatPedOBSCOMPLEMENTO: TMemoField;
    FatPedFLGDENEGADA: TStringField;
    FatPedENVDPEC: TStringField;
    FatPedUSUDPEC: TIntegerField;
    FatPedJUSTDPEC: TStringField;
    FatPedPROTDPEC: TStringField;
    FatPedNFE_PROTOCOLO: TMemoField;
    FatPedNFE_RECIBO: TMemoField;
    FatPedLOCEMB: TStringField;
    FatPedUFEMB: TStringField;
    FatPedTOTVOL: TIntegerField;
    FatPedTOTIBPT: TFloatField;
    FatPedID_FRETE: TIntegerField;
    FatPedSUFR_ICMS: TStringField;
    FatPedSUFR_IPI: TStringField;
    FatPedSUFR_PIS: TStringField;
    FatPedSUFR_COFINS: TStringField;
    FatPedINDIC_CF: TIntegerField;
    FatPedINDIC_PRESENCA: TIntegerField;
    FatPedTOTDESONERADO: TFloatField;
    FatPedFRTSUB: TFloatField;
    FatPedSEGSUB: TFloatField;
    FatPedDESSUB: TFloatField;
    FatPedDSCSUB: TFloatField;
    FatPedDSCIPI: TFloatField;
    FatPedDSCICM: TFloatField;
    Button1: TButton;
    FatPedID_ESTICM: TIntegerField;
    FatPedID_ESTIPI: TIntegerField;
    FatPedTOT_FCPUFDEST: TFloatField;
    FatPedTOT_ICMSUFDEST: TFloatField;
    FatPedTOT_ICMSUFREMET: TFloatField;
    FatPedALIQ_CRED_SN: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FatPe2NewRecord(DataSet: TDataSet);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdDteFatKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdDteFatMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel1Exit(Sender: TObject);
    procedure EdDteFatExit(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodGruMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodProMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EdQtpPe2Exit(Sender: TObject);
    procedure EdVluPe2Exit(Sender: TObject);
    procedure Panel3Exit(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure EdDesPe2Exit(Sender: TObject);
    procedure grPe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grPe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grPe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdQtpPe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdQtpPe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pnDscNotExit(Sender: TObject);
    procedure DsPe2DataChange(Sender: TObject; Field: TField);
    procedure FatPedNewRecord(DataSet: TDataSet);
    procedure FatPedDESNATGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure Button1Click(Sender: TObject);
  private
  public
    SeqImpText: string;
    AntVluPe2: real;
    sEnc, sEntr, Finalizar: string;
    CodPfa, TipPfa, ModPfa: string;
    qticms, CodCli, CodVen: integer;
  end;

var
  fmManNot_NFE: TfmManNot_NFE;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, AuxPsq, PsqRef, PsqObs,
  PsqPro, PsqEst, ManLno_NFE, ManNt1_NFE, PsqGru, PsqSub, PsqIcm, PsqTab, PsqSt1,
  PsqSt2, AuxIni, ManRo3, ManNot, manLote;

{$R *.DFM}

procedure TfmManNot_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  SeqImpText := 'N';

  sEnc := 'N';

  sEntr := 'N';

  Finalizar := 'N';

  TIPFRT.Active := False;
  TIPFRT.Active := True;

end;

procedure TfmManNot_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManNot_NFE := nil;
end;

procedure TfmManNot_NFE.FatPe2NewRecord(DataSet: TDataSet);
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

procedure TfmManNot_NFE.EdDteFatKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'F4-Estoque'

end;

procedure TfmManNot_NFE.EdDteFatMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'F4-Estoque'

end;

procedure TfmManNot_NFE.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManNot_NFE.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then
  begin

    if FatPedSitFat.Value = 'Faturado' then
      fMsg('Opera��o n�o Pode ser Realizada. Nota Fiscal j� Emitida.', 'E')

    else if FatPedSitFat.Value = 'Cancelado' then
      fMsg('Opera��o n�o Pode ser Realizada. Nota Fiscal Cancelada.', 'E');

    Finalizar := 'S';

    Close;

  end;
end;

procedure TfmManNot_NFE.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManNot_NFE.FormShow(Sender: TObject);
begin
  inherited;

  FatPed.Close;
  FatPed.Params[0].AsInteger := fmManLno_NFE.CodEmp;
  FatPed.Params[1].AsDateTime := fmManLno_NFE.DteRes;
  FatPed.Params[2].AsInteger := fmManLno_NFE.NumRes;
  FatPed.Params[3].AsInteger := fmManLno_NFE.SeqLib;
  FatPed.Params[4].AsInteger := fmManLno_NFE.SeqFat;
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
    Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = ''' + IntToStr(FatPedCodEmp.Value) + '''';

    if GFlgAce = 'Sim' then
      Text := Text + ' and CodFil > ''' + '0' + '''';

    Open;

    pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    // Rolando 19/03/2010      Text := ' Select NomCli From FinCli Where FinCli.CodCli = '''+ IntToStr(CodCli) +'''';
    Text := ' Select * From FinCli Where FinCli.CodCli = ''' + IntToStr(CodCli) + '''';

    Open;

    pnNomCli.Caption := FieldbyName('NomCli').AsString;

    // Rolando 19/03/2010
    fatped.edit;
    fatpedTEFCLI.value := trim(FieldbyName('tefcli').AsString);
    fatpedENFCLI.Value := trim(FieldbyName('enfcli').AsString);
    fatpedNRFCLI.Value := FieldbyName('nrfcli').asstring;
    fatpedRFFCLI.value := fieldbyname('rffcli').asstring;
    fatpedBAFCLI.value := fieldbyname('bafcli').asstring;
    fatpedCIFCLI.value := fieldbyname('cifcli').asstring;
    fatpedUFFCLI.value := fieldbyname('uffcli').asstring;
    fatpedCEFCLI.value := fieldbyname('cefcli').asstring;
    fatpedid_finuff.Value := fieldbyname('id_finuff').asinteger;
    fatpedid_fincif.Value := fieldbyname('id_fincif').asinteger;

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
    //EdModFrt.Enabled := True;

    EdDteFat.Font.Style := [];
    EdModFrt.Font.Style := [];

    FatPed.Edit;

    EdDteFat.SetFocus;

  end;
end;

procedure TfmManNot_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
var
  DteRes: TDateTime;
  CodEmp, NumRes, SeqLib: integer;
begin
  inherited;
  if finalizar = 'N' then
  begin

    if fMsg('Deseja Realmente Abandonar a Emiss�o da Nota Fiscal ?', 'O') then
    begin

      if FatPedNumRes.Value > 0 then
      begin

        if FatPedSitFat.Value = 'Nao Concluido' then
        begin

          FatPed.Delete;

          with FatPed do
          begin

            fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
            ;

            try

              ApplyUpdates; {Tenta aplicar as alteracoes}
              ;

              fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}
              ;

            except

              fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
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

      CodEmp := fmManLno_NFE.PedLibCodEmp.Value;
      DteRes := fmManLno_NFE.PedLibDteRes.Value;
      NumRes := fmManLno_NFE.PedLibNumRes.Value;
      SeqLib := fmManLno_NFE.PedLibSeqLib.Value;

      fmManLno_NFE.PedLib.Close;
      fmManLno_NFE.PedLib.Open;

      fmManLno_NFE.FatPed.Close;
      fmManLno_NFE.FatPed.Open;

      if CodEmp > 0 then
        fmManLno_NFE.PedLib.Locate('CodEmp;DteRes;NumRes;SeqLib', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib]), [loPartialKey]);

      Action := CaFree;

    end
    else
      Abort;

  end
  else
  begin

    if FatPedSitFat.Value <> 'Faturado' then
    begin

      CodEmp := fmManLno_NFE.PedLibCodEmp.Value;
      DteRes := fmManLno_NFE.PedLibDteRes.Value;
      NumRes := fmManLno_NFE.PedLibNumRes.Value;
      SeqLib := fmManLno_NFE.PedLibSeqLib.Value;

      fmManLno_NFE.PedLib.Close;
      fmManLno_NFE.PedLib.Open;

      fmManLno_NFE.FatPed.Close;
      fmManLno_NFE.FatPed.Open;

      fmManLno_NFE.PedLib.Locate('CodEmp;Dteres;NumRes;SeqLib', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib]), [loPartialKey])

    end
    else
    begin

      fmManLno_NFE.PedLib.Close;
      fmManLno_NFE.PedLib.Open;

      fmManLno_NFE.FatPed.Close;
      fmManLno_NFE.FatPed.Open;

      fmManLno_NFE.EdPsqNumRes.Text := '';

    end;

    Action := CaFree;

  end;
end;

procedure TfmManNot_NFE.EdDteFatExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then
    EdDteFat.SetFocus
end;

procedure TfmManNot_NFE.Panel1Exit(Sender: TObject);
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
     fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado', EdDteFat);

  if FatPedDteFat.Value = 0 then
    fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado', EdDteFat);

  if FatPed.State <> dsBrowse then
  begin

    with FatPed do
    begin

      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
      ;

      try

        ApplyUpdates; {Tenta aplicar as alteracoes}
        ;

        fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}
        ;

      except

        fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
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
    EdModFrt.Enabled := False;
    EdValTmo.Enabled := False;

    EdDteFat.Font.Style := [fsBold];
    EdModFrt.Font.Style := [fsBold];
    EdValTmo.Font.Style := [fsBold];

    grPe2.SetFocus;

  end
  else
  begin

    EdDteFat.Enabled := False;
    EdModFrt.Enabled := False;
    EdValTmo.Enabled := False;

    EdDteFat.Font.Style := [fsBold];
    EdModFrt.Font.Style := [fsBold];
    EdValTmo.Font.Style := [fsBold];

    grPe2.SetFocus;

  end;
end;

procedure TfmManNot_NFE.EdCodGruExit(Sender: TObject);
var
  saida: boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then
  begin

    if (not EdModFrt.Focused) and (not EdDteFat.Focused) then
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
            fmsgErro('Grupo Informado n�o Encontrado.', EdCodGru);

        end
        else
          fmsgErro('Grupo Informado n�o Encontrado', EdCodGru);

      end
      else
      begin

        if EdCodGru.Enabled then
        begin

          if Trim(FatPe2CodGru.Value) = '' then
            fmsgErro('Grupo Informado n�o Encontrado.', EdCodGru);

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

procedure TfmManNot_NFE.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManNot_NFE.EdCodGruKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref'

end;

procedure TfmManNot_NFE.EdCodGruMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref'

end;

procedure TfmManNot_NFE.EdCodSubExit(Sender: TObject);
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
              fmsgErro('Grupo e Sub-Grupo Informado n�o Encontrado.', EdCodGru);

          end;

        end
        else
        begin

          if EdCodSub.Enabled then
          begin

            if Trim(FatPe2CodSub.Value) = '' then
              fmsgErro('Sub-Grupo Informado n�o Encontrado.', EdCodSub);

          end;
        end;

      end
      else
        fmsgErro('Sub-Grupo Informado n�o Encontrado.', EdCodSub);
    end;
  end;
end;

procedure TfmManNot_NFE.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManNot_NFE.EdCodProExit(Sender: TObject);
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

            FatPe2DesPe2.Value := copy(Trim(quSQL.FieldbyName('DscPro').AsString), 1, 40);

            FatPe2DesPe2.Value := Trim(FatPe2DesPe2.Value) + fReplicate(' ', 40 - Length(Trim(FatPe2DesPe2.Value))) + ' ' +
              quSQL.FieldbyName('RefPro').AsString;

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
              fmsgErro('Item Informado n�o Encontrado na Empresa.', EdCodPro);

          end
          else
            fmsgErro('Item Informado n�o Encontrado.', EdCodPro);
        end;

      end
      else
        fmsgErro('Item Informado n�o Encontrado.', EdCodPro);
    end;
  end;
end;

procedure TfmManNot_NFE.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManNot_NFE.EdCodProKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref'

end;

procedure TfmManNot_NFE.EdCodProMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref'

end;

procedure TfmManNot_NFE.EdQtpPe2Exit(Sender: TObject);
var
  saida: boolean;
  TabPrc: integer;
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

          if FatPe2.State = dsInsert then
          begin

            with quSql, SQL do
            begin

              Close;
              Text := ' Select EstIte.Vb1Ite,' +
                '        EstIte.Vb2Ite,' +
                '        EstIte.Vb3Ite,' +
                '        EstIte.Vb4Ite,' +
                '        EstIte.Vb5Ite From EstIte ' +
                ' Where EstIte.CodEmp = :CodEmp' +
                '   and EstIte.CodClp = :CodClp' +
                '   and EstIte.CodGru = :CodGru' +
                '   and EstIte.CodSub = :CodSub' +
                '   and EstIte.CodPro = :CodPro';

              with Params do
              begin

                Params[0].AsInteger := FatPe2CodEit.Value;
                Params[1].AsString := FatPe2CodClp.Value;
                Params[2].AsString := FatPe2CodGru.Value;
                Params[3].AsString := FatPe2CodSub.Value;
                Params[4].AsString := FatPe2CodPro.Value;

              end;

              Open;
              First;

            end;

            try

              fmPsqTab := TfmPsqTab.Create(Self);

              with fmPsqTab.StrTab do
              begin

                Cells[0, 0] := 'TABELA 01';
                Cells[1, 0] := PreString(FormatFloat('###,###,##0.0000', quSql.FieldbyName('Vb1Ite').AsFloat), 26);

                Cells[0, 1] := 'TABELA 02';
                Cells[1, 1] := PreString(FormatFloat('###,###,##0.0000', quSql.FieldbyName('Vb2Ite').AsFloat), 26);

                Cells[0, 2] := 'TABELA 03';
                Cells[1, 2] := PreString(FormatFloat('###,###,##0.0000', quSql.FieldbyName('Vb3Ite').AsFloat), 26);

                Cells[0, 3] := 'TABELA 04';
                Cells[1, 3] := PreString(FormatFloat('###,###,##0.0000', quSql.FieldbyName('Vb4Ite').AsFloat), 26);

                Cells[0, 4] := 'TABELA 05';
                Cells[1, 4] := PreString(FormatFloat('###,###,##0.0000', quSql.FieldbyName('Vb5Ite').AsFloat), 26);

              end;

              fmPsqTab.ShowModal;

              TabPrc := fmPsqTab.TabPrc;

            finally

              FreeAndNil(fmPsqTab);

            end;

            if TabPrc > 0 then
            begin

              FatPe2VluPe2.Value := quSQL.FieldbyName('Vb' + Trim(IntToStr(TabPrc)) + 'Ite').AsFloat;

              FatPe2VlqPe2.Value := FatPe2VluPe2.Value;

              AntVluPe2 := FatPe2VluPe2.Value;

              FatPe2TotPe2.Value := fRound(FatPe2VlqPe2.Value * FatPe2QtpPe2.Value, 2);

              if EdVluPe2.Enabled then
                EdVluPe2.SetFocus
              else
              begin

                if FatPe2VluPe2.Value = 0 then
                  fmsgErro('Item sem Pre�o �nitario Informado.', EdQtpPe2);

              end;

            end
            else
              EdQtpPe2.SetFocus;
          end
          else
            EdVluPe2.SetFocus;
        end
        else
          fmsgErro('Campo de Preenchimento Obrigatorio.', EdQtpPe2);
      end;
    end;
  end;
end;

procedure TfmManNot_NFE.EdVluPe2Exit(Sender: TObject);
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

procedure TfmManNot_NFE.Panel3Exit(Sender: TObject);
var
  NroPe2: integer;
begin
  inherited;
  if FatPe2.State <> dsBrowse then
  begin

    if FatPe2QtpPe2.Value = 0 then
      fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdQtpPe2);

    if FatPe2VluPe2.Value = 0 then
    begin

      if EdVluPe2.Enabled then
        fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdVluPe2)
      else
        fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.', EdQtpPe2);

    end;

    if FatPe2.State = dsInsert then
    begin

      with FatPe2 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alteracoes}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
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

        fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alteracoes}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
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
        FatPe2SeqFat.Value, NroPe2]), [LoPartialKey]);

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

procedure TfmManNot_NFE.Panel2Exit(Sender: TObject);
var
  NroPe2: integer;
begin
  inherited;
  if FatPe2.State <> dsBrowse then
  begin

    NroPe2 := FatPe2NroPe2.Value;

    with FatPe2 do
    begin

      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
      ;

      try

        ApplyUpdates; {Tenta aplicar as alteracoes}
        ;

        fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}
        ;

      except

        fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
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
      FatPe2SeqFat.Value, NroPe2]), [LoPartialKey]);

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

procedure TfmManNot_NFE.EdDesPe2Exit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then
    fmManNot_NFE.Panel2.OnExit(Sender);
end;

procedure TfmManNot_NFE.grPe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'D-Descri��o/Obs F4-Estoque'

end;

procedure TfmManNot_NFE.grPe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then
    pnEstoque.Visible := False;

  LbText.Caption := 'D-Descri��o/Obs F4-Estoque'

end;

procedure TfmManNot_NFE.grPe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroPe2: integer;
begin
  inherited;
  if key = 68 then
  begin // D - Mudar Descri��o/Observa��es Sobre o Item //
    //Flg colocado para atender necessidade de clientes (Comwatts e LDF e KR3)
    if fmManGdb.BuscaSimples('FATPAR', 'N_ALT_FAT', ' 1 = 1 ') <> '*' then
    begin
      if FatPe2CodEmp.Value > 0 then
      begin

        pnDesPe2.Visible := False;
        pnObsPe2.Visible := False;

        EdDesPe2.Enabled := True;
        EdObsPe2.Enabled := True;

        FatPe2.Edit;

        EdDesPe2.SetFocus;

      end;
    end;
  end;

  if key = 13 then
  begin // Tecla - ENTER //
    //Flg colocado para atender necessidade de clientes (Comwatts e LDF e KR3)
    if fmManGdb.BuscaSimples('FATPAR', 'N_ALT_FAT', ' 1 = 1 ') <> '*' then
    begin
      if FatPe2CodEmp.Value > 0 then
      begin

        FatPe2.Edit;

        EdQtpPe2.Enabled := True;
        EdVluPe2.Enabled := True;
        EdIpiPe2.Enabled := True;
        EdIcmPe2.Enabled := True;

        EdQtpPe2.SetFocus;

      end;
    end;
  end;

  if key = 40 then
  begin // Tecla - Seta para Baixo //
    //N�o pode perder integridade com Libera��o
   //if FatPe2NroPe2.Value = FatPedQtiFat.Value then FatPe2.Append;

  end;

  if key = 46 then
  begin // Tecla - DEL //
    (* //N�o pode perder integridade com Libera��o
     if Trim(FatPe2CodClp.Value) <> '' then begin

           NroPe2 := FatPe2NroPe2.Value;

           FatPe2.Delete;

           with FatPe2 do begin

                 fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

                 try

                    ApplyUpdates; {Tenta aplicar as alteracoes};

                    fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o};

                 except

                    fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro};

                    if FatPe2.State <> dsBrowse then FatPe2.CancelUpdates;

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
              FatPe2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;NroPe2', VarArrayOf([FatPe2CodEmp.Value, FatPe2DteRes.Value, FatPe2NumRes.Value, FatPe2SeqLib.Value, FatPe2SeqFat.Value, NroPe2]), [LoPartialKey])
           else
              begin

                 if FatPedQtiFat.Value = 0 then
                    FatPe2.Append
                 else
                    FatPe2.Last;

              end;
        end; *)
  end;
end;

procedure TfmManNot_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then
  begin

    if key = 114 then
    begin // F3 - Descri��o //

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
    begin // F5 - Refer�ncia //

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
    begin // F6 - Inteligente/Descri��o //

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
    begin {F7 - Inteligente/Refer�ncia}

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
          ' EstPro.ClfSai,' +
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
          ' EstPro.CodAnt,' +
          ' EstPro.QtdVol, ' +
          ' EstPro.CODNCM ' +
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

          fmManNt1_NFE := TfmManNt1_NFE.Create(Self);

          fmManNt1_NFE.ShowModal;

        finally

          FreeAndNil(fmManNt1_NFE);

        end;

        if Finalizar = 'S' then
          close;

      end;
    end;
  end;
end;

procedure TfmManNot_NFE.EdQtpPe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  sEntr := 'N';

  if not pnEstoque.Visible then
    pnEstoque.Visible := True;

  LbText.Caption := 'F4-Estoque'

end;

procedure TfmManNot_NFE.EdQtpPe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;

  sEntr := 'N';

  if not pnEstoque.Visible then
    pnEstoque.Visible := True;

  LbText.Caption := 'F4-Estoque'

end;

procedure TfmManNot_NFE.FormKeyPress(Sender: TObject; var Key: Char);
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

          if FatParVAL_DESCONTO.AsFloat > 0 then
          begin

            EdDscNot.Value := FatParVAL_DESCONTO.AsFloat;

            if fatped.state = dsBrowse then
              Fatped.Edit;

            FatPedDSCNOT.AsFloat := FatParVAL_DESCONTO.AsFloat;  
            EdDscNot.ReadOnly := True;
          end
          else
          begin
            EdDscNot.ReadOnly := False;
          end;

          EdDscNot.Font.Style := [];

          EdDscNot.SetFocus;

        end;
      end;
    end;
  end;
end;

procedure TfmManNot_NFE.pnDscNotExit(Sender: TObject);
begin
  inherited;

  if FatPed.State <> dsBrowse then
  begin

    with FatPed do
    begin

      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
      ;

      try

        ApplyUpdates; {Tenta aplicar as alteracoes}
        ;

        fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}
        ;

      except

        fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
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

procedure TfmManNot_NFE.DsPe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if FatPe2.State = dsBrowse then
    AntVluPe2 := FatPe2VluPe2.Value;

  pnDesPe2.Caption := FatPe2DesPe2.Value;
  pnObsPe2.Caption := FatPe2ObsPe2.Value;

  pnNumRes.Caption := IntToStr(FatPedNumRes.Value);

  pnBasIcm.Caption := FormatFloat('###,###,##0.00', FatPedBasIcm.AsFloat);
  pnTotIcm.Caption := FormatFloat('###,###,##0.00', FatPedTotIcm.AsFloat);
  pnBasSub.Caption := FormatFloat('###,###,##0.00', FatPedBasSub.AsFloat);
  pnTotSub.Caption := FormatFloat('###,###,##0.00', FatPedTotSub.AsFloat);
  pnTotFat.Caption := FormatFloat('###,###,##0.00', FatPedTotFat.AsFloat);
  pnTotFrt.Caption := FormatFloat('###,###,##0.00', FatPedTotFrt.AsFloat);
  pnTotSeg.Caption := FormatFloat('###,###,##0.00', FatPedTotSeg.AsFloat);
  pnTotDes.Caption := FormatFloat('###,###,##0.00', FatPedTotOUTDESP.AsFloat);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00', FatPedTotIpi.AsFloat);
  pnTotGer.Caption := FormatFloat('###,###,##0.00', FatPedTotGer.AsFloat);

  if FatPe2.State = dsInsert then
    pnNroPe2.Caption := FNumZeros(IntToStr(FatPe2NroPe2.Value), 4) + '/' + FNumZeros(IntToStr(FatPedQtiFat.Value + 1), 4)
  else
    pnNroPe2.Caption := FNumZeros(IntToStr(FatPe2NroPe2.Value), 4) + '/' + FNumZeros(IntToStr(FatPedQtiFat.Value), 4);

end;

procedure TfmManNot_NFE.FatPedNewRecord(DataSet: TDataSet);
begin
  inherited;

  FatPedOBSFAT.AsString := fmManLno_NFE.PedLibNUMRES.AsString;
end;

procedure TfmManNot_NFE.FatPedDESNATGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := Trim(Text);
end;

procedure TfmManNot_NFE.Button1Click(Sender: TObject);
begin
  inherited;
   try
      fmLote := TfmLote.Create(Self);

      fmLote.fatPedLote.Active := False;
      fmLote.fatPedLote.Params.ParamByName('CODEMP').AsInteger  := FatPe2CODEMP.AsInteger;
      fmLote.fatPedLote.Params.ParamByName('DTERES').AsDate := FatPe2DTERES.AsDateTime;
      fmLote.fatPedLote.Params.ParamByName('NUMRES').AsInteger  := FatPe2NUMRES.AsInteger;
      fmLote.fatPedLote.Params.ParamByName('TIPO_TABELA').AsString  := 'FATPED';
      fmLote.ITEM :=  FatPe2DESPE2.AsString;

      fmLote.fatPedLote.Params.ParamByName('CODCLP').AsInteger  := FatPe2CODCLP.AsInteger;
      fmLote.fatPedLote.Params.ParamByName('CODGRU').AsString   := FatPe2CODGRU.AsString;
      fmLote.fatPedLote.Params.ParamByName('CODSUB').AsString   := FatPe2CODSUB.AsString;
      fmLote.fatPedLote.Params.ParamByName('CODPRO').AsString   := FatPe2CODPRO.AsString;
      fmLote.fatPedLote.Active := True;

      fmLote.carregaVariaveis;
      fmLote.Visible := False;
      fmLote.ShowModal;
   finally
      FreeAndNil(fmLote);
   end;
end;

end.

