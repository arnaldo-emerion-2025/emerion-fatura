unit ManPfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppStrtch, ppMemo, ppBands, ppClass, ppCtrls,
  ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB,
  ppDBPipe, ppRptExp, Psock, NMsmtp, SakEmail, dxfProgressBar, OleServer,
  Outlook8, dxDBGrid, dxTL, dxDBCtrl, dxDBTLCl, dxGrClms,
  dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: string; ASaveAll: Boolean) of object;

  TfmManPfo = class(TfmPadrao)
    CmpPed: TwwQuery;
    CmpPe2: TwwQuery;
    DsPe2: TwwDataSource;
    DsPed: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDtePed1: TdxColorDateEdit;
    EdPsqNumPed: TdxColorEdit;
    Label18: TLabel;
    EdPsqDtePed2: TdxColorDateEdit;
    Label28: TLabel;
    EdPsqDtrPed1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDtrPed2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotPed1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotPed2: TdxColorCurrencyEdit;
    Label26: TLabel;
    Label20: TLabel;
    EdPsqCodFor: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqFor: TSpeedButton;
    EdPsqApeFor: TdxColorEdit;
    EdPsqNomEmp: TdxColorEdit;
    bPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grPed: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    grPe2: ThGrid;
    rgStatus: TRadioGroup;
    quSQL1: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    pnCodFor: TPanel;
    Label7: TLabel;
    Label13: TLabel;
    EdPsqDpePed1: TdxColorDateEdit;
    Label14: TLabel;
    EdPsqDpePed2: TdxColorDateEdit;
    pnHrePed: TPanel;
    pnSitPed: TPanel;
    CmpPedDTEPED: TDateTimeField;
    CmpPedNUMPED: TIntegerField;
    CmpPedHREPED: TStringField;
    CmpPedDPEPED: TDateTimeField;
    CmpPedQTIPED: TIntegerField;
    CmpPedTOTPED: TFloatField;
    CmpPedTOTGER: TFloatField;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    bExcluir: TSpeedButton;
    CmpPe2QTPPE2: TFloatField;
    CmpPe2VLQPE2: TFloatField;
    CmpPe2ICMPE2: TFloatField;
    CmpPe2TOTPE2: TFloatField;
    UpPed: TUpdateSQL;
    DsReport: TppDBPipeline;
    p1Report: TppReport;
    CmpPe2QTRPE2: TFloatField;
    bFinalizar: TSpeedButton;
    CmpPe2QTNPE2: TFloatField;
    p2Report: TppReport;
    grPe21: TdxDBGrid;
    DESPE2: TdxDBGridMaskColumn;
    QTPPE2: TdxDBGridMaskColumn;
    VLQPE2: TdxDBGridMaskColumn;
    CODUND: TdxDBGridMaskColumn;
    VALVEN: TdxDBGridMaskColumn;
    TOTREN: TdxDBGridMaskColumn;
    CODPFO: TdxDBGridMaskColumn;
    CODITE: TdxDBGridMaskColumn;
    TOTPE2: TdxDBGridColumn;
    SaveDialog: TSaveDialog;
    CLSIPI: TdxDBGridColumn;
    CmpR08: TwwQuery;
    CmpR08SEQARQ: TStringField;
    CmpR08CODEMP: TIntegerField;
    CmpR08DTEPED: TDateTimeField;
    CmpR08NUMPED: TIntegerField;
    CmpR08SEQPE2: TIntegerField;
    CmpR08LANEST: TStringField;
    CmpR08CODCLP: TStringField;
    CmpR08CODGRU: TStringField;
    CmpR08CODSUB: TStringField;
    CmpR08CODPRO: TStringField;
    CmpR08DESPE2: TStringField;
    CmpR08CLSIPI: TStringField;
    CmpR08QTPPE2: TFloatField;
    CmpR08VLQPE2: TFloatField;
    CmpR08CODUND: TStringField;
    CmpR08VALVEN: TFloatField;
    CmpR08TOTPE2: TFloatField;
    CmpR08TOTREN: TFloatField;
    CmpR08DULCMP: TDateTimeField;
    CmpR08QTDCMP: TFloatField;
    CmpR08QTDITE: TFloatField;
    DsR08: TwwDataSource;
    CmpR08CODFIL: TIntegerField;
    CmpR08CODPFO: TStringField;
    CmpR08CODANT: TStringField;
    CmpR08CODITE: TStringField;
    DULCMP: TdxDBGridColumn;
    QTDCMP: TdxDBGridColumn;
    QTDITE: TdxDBGridColumn;
    ppHeaderBand3: TppHeaderBand;
    ppApeEmp: TppLabel;
    ppNomEmp: TppLabel;
    ppEndEmp: TppLabel;
    ppRefEmp: TppLabel;
    ppTitulo: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppImagem: TppImage;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel8: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel63: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppCgcEmp: TppLabel;
    ppLabel37: TppLabel;
    ppInsEmp: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLabel12: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine5: TppLine;
    ppLine2: TppLine;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel39: TppLabel;
    ppLabel15: TppLabel;
    ppLine6: TppLine;
    ppLabel40: TppLabel;
    ppLine13: TppLine;
    ppLine10: TppLine;
    ppLabel42: TppLabel;
    p1CodFor: TppLabel;
    p1NomFor: TppLabel;
    p1EndFor: TppLabel;
    p1BaiFor: TppLabel;
    p1FonFor: TppLabel;
    p1NomCon: TppLabel;
    p1NomUsu: TppLabel;
    p1FaxFor: TppLabel;
    p1CidFor: TppLabel;
    p1SigUfe: TppLabel;
    dbReport: TppDetailBand;
    ppQtpPe2: TppDBText;
    ppCodUnd: TppDBText;
    ppVlqPe2: TppDBText;
    ppTotGe2: TppDBText;
    p1Memo: TppMemo;
    ppIcmPe2: TppDBText;
    ppIpiPe2: TppDBText;
    ppPacPe2: TppDBText;
    p1ValVen: TppDBText;
    p1TotRen: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine7: TppLine;
    ppLabel35: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel22: TppLabel;
    ppLabel20: TppLabel;
    ppLabel18: TppLabel;
    ppLabel34: TppLabel;
    ppLabel16: TppLabel;
    p1TotPed: TppLabel;
    p1ObsCnd: TppLabel;
    p1DpePed: TppLabel;
    p1PrePed: TppLabel;
    p1NomVen: TppLabel;
    p1ObsPed: TppMemo;
    ppHeaderBand1: TppHeaderBand;
    p2ApeEmp: TppLabel;
    p2NomEmp: TppLabel;
    p2EndEmp: TppLabel;
    p2RefEmp: TppLabel;
    p2Titulo: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel50: TppLabel;
    ppLabel56: TppLabel;
    ppLine16: TppLine;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    p2Imagem: TppImage;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel74: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel75: TppLabel;
    p2CgcEmp: TppLabel;
    ppLabel77: TppLabel;
    p2InsEmp: TppLabel;
    ppLine21: TppLine;
    ppLabel79: TppLabel;
    ppLine22: TppLine;
    ppLabel80: TppLabel;
    ppLine23: TppLine;
    ppLabel81: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    p2CodFor: TppLabel;
    p2EndFor: TppLabel;
    p2BaiFor: TppLabel;
    p2FonFor: TppLabel;
    p2NomCon: TppLabel;
    p2NomUsu: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    p2FaxFor: TppLabel;
    p2CidFor: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    p2SigUfe: TppLabel;
    p2NomFor: TppLabel;
    ppLabel86: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    p2Memo: TppMemo;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine30: TppLine;
    ppLabel87: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel97: TppLabel;
    p2ObsCnd: TppLabel;
    p2DpePed: TppLabel;
    p2NomVen: TppLabel;
    p2ObsPed: TppMemo;
    p2PrePed: TppLabel;
    ppLabel68: TppLabel;
    p2TotPed: TppLabel;
    CmpR08QTAITE: TFloatField;
    QTAITE: TdxDBGridColumn;
    ppLabel41: TppLabel;
    p1TotAcc: TppLabel;
    ppLabel65: TppLabel;
    p1TotGer: TppLabel;
    ppLabel64: TppLabel;
    p2TotAcc: TppLabel;
    ppLabel67: TppLabel;
    p2TotGer: TppLabel;
    pnTotRen: TPanel;
    pnTotMka: TPanel;
    CmpR08IDEPRO: TStringField;
    IDEPRO: TdxDBGridColumn;
    CmpR08IPIPE2: TFloatField;
    CmpR08IMPPE2: TFloatField;
    IPIPE2: TdxDBGridColumn;
    IMPPE2: TdxDBGridColumn;
    CmpR08LIQPE2: TFloatField;
    CmpR08BRTPE2: TFloatField;
    CmpR08CUBPE2: TFloatField;
    CmpR08CXAPE2: TFloatField;
    LIQPE2: TdxDBGridColumn;
    BRTPE2: TdxDBGridColumn;
    CUBPE2: TdxDBGridColumn;
    CXAPE2: TdxDBGridColumn;
    CmpR08QTDEMB: TFloatField;
    QTDEMB: TdxDBGridColumn;
    OBSNCM: TdxDBGridColumn;
    CmpR08DESIMP: TMemoField;
    CmpR08OBSNCM: TStringField;
    CmpPe2CODEMP: TIntegerField;
    CmpPe2DTEPED: TDateTimeField;
    CmpPe2NUMPED: TIntegerField;
    CmpPe2SEQPE2: TIntegerField;
    CmpPe2CODCLP: TStringField;
    CmpPe2CODGRU: TStringField;
    CmpPe2CODSUB: TStringField;
    CmpPe2CODPRO: TStringField;
    CmpPe2DESPE2: TStringField;
    CmpPe2TOTREN: TFloatField;
    CmpPe2NROPE2: TIntegerField;
    CmpPe2DSCPRO: TStringField;
    CmpPe2CODPFO: TStringField;
    CmpPe2OBSPE2: TStringField;
    CmpPe2OBSPE3: TStringField;
    CmpPedCODEMP: TIntegerField;
    CmpPedPREPED: TIntegerField;
    CmpPedCODFOR: TIntegerField;
    CmpPedNOMCON: TStringField;
    CmpPedNOMVEN: TStringField;
    CmpPedOBSCND: TStringField;
    CmpPedTOTACC: TFloatField;
    CmpPedTOTREN: TFloatField;
    CmpPedOBSPED: TStringField;
    CmpPedSITPED: TStringField;
    CmpPedLOGUSU: TStringField;
    CmpR08CBAEM1: TStringField;
    CmpR08QTDEM1: TFloatField;
    CmpR08CBAEM2: TStringField;
    CmpR08QTDEM2: TFloatField;
    CmpR08CBAEM3: TStringField;
    CmpR08QTDEM3: TFloatField;
    CmpR08CBAEM4: TStringField;
    CmpR08QTDEM4: TFloatField;
    CBAEM1: TdxDBGridColumn;
    QTDEM1: TdxDBGridColumn;
    CBAEM2: TdxDBGridColumn;
    QTDEM2: TdxDBGridColumn;
    CBAEM3: TdxDBGridColumn;
    QTDEM3: TdxDBGridColumn;
    pnNumRes: TPanel;
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PedRe2: TwwQuery;
    DsRe2: TwwDataSource;
    UpRes: TUpdateSQL;
    UpRe2: TUpdateSQL;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    PedResEMPPED: TIntegerField;
    PedResDTEPED: TDateTimeField;
    PedResNUMPED: TIntegerField;
    PedResCODTIP: TIntegerField;
    PedResPRFRES: TIntegerField;
    PedResFLGGER: TStringField;
    PedResLIBSLD: TStringField;
    PedResFLGIMP: TStringField;
    PedResPEDANT: TStringField;
    PedResFLGREQ: TStringField;
    PedResCODCLI: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResUFERES: TStringField;
    PedResTIPPFA: TStringField;
    PedResSITRES: TStringField;
    PedResHRERES: TStringField;
    PedResDTFRES: TDateTimeField;
    PedResOBSRES: TStringField;
    CmpPedNUMRES: TIntegerField;
    pnSequenc: TPanel;
    ProgressBar: TdxfProgressBar;
    quSQL: TwwQuery;
    PedRe2CODEMP: TIntegerField;
    PedRe2DTERES: TDateTimeField;
    PedRe2NUMRES: TIntegerField;
    PedRe2SEQRE2: TIntegerField;
    PedRe2NRORE2: TIntegerField;
    PedRe2CODEIT: TIntegerField;
    PedRe2CODCLP: TStringField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2CODTAM: TStringField;
    PedRe2CODCOR: TStringField;
    PedRe2DSCRE2: TFloatField;
    PedRe2OBSRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2VLURE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2IPIRE2: TFloatField;
    PedRe2ICMRE2: TFloatField;
    PedRe2FLASEQ: TStringField;
    PedRe2FLGRES: TStringField;
    PedRe2FLGREQ: TStringField;
    PedRe2EMPPED: TIntegerField;
    PedRe2DTEPED: TDateTimeField;
    PedRe2NUMPED: TIntegerField;
    PedRe2SEQPE2: TIntegerField;
    PedRe2FLGDUP: TStringField;
    PedRe2CODUND: TStringField;
    PedRe2CODST1: TStringField;
    PedRe2CODST2: TStringField;
    PedRe2REGIPI: TStringField;
    PedRe2TIPIPI: TStringField;
    PedRe2REGICM: TStringField;
    PedRe2TIPICM: TStringField;
    CmpPe2FLGDUP: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2DSPRE2: TFloatField;
    PedRe2PACRE2: TFloatField;
    PedRe2VDSRE2: TFloatField;
    PedRe2VDPRE2: TFloatField;
    PedRe2VACRE2: TFloatField;
    PedResLANEST: TStringField;
    PedResCODFIL: TIntegerField;
    CmpPedEMPRES: TIntegerField;
    CmpPedDTERES: TDateTimeField;
    CmpPedUFEPED: TStringField;
    PedRe2TABPRC: TIntegerField;
    lbSequenc: TLabel;
    CmpPedAPEFOR: TStringField;
    CmpPe2CODUND: TStringField;
    CmpPe2PACPE2: TFloatField;
    CmpPe2TOTGE2: TFloatField;
    CmpPe2VALVEN: TFloatField;
    CmpPe2IPIPE2: TFloatField;
    CmpPedCONPLC: TIntegerField;
    CmpPedSUBPLC: TIntegerField;
    Label1: TLabel;
    Label8: TLabel;
    EdPsqNumRes: TdxColorEdit;
    CmpR08QTRITE: TFloatField;
    QTRITE: TdxDBGridColumn;
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
    PedRe2TRBIPI: TStringField;
    PedRe2REDIPI: TFloatField;
    PedRe2BSCIPI: TFloatField;
    PedRe2TRBICM: TStringField;
    PedRe2REDICM: TFloatField;
    PedRe2BSCICM: TFloatField;
    PedRe2INCREV: TFloatField;
    PedRe2INCFIN: TFloatField;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    ImageList1: TImageList;
    CmpPedMODPFA: TStringField;
    LojPed: TwwQuery;
    DsLojPed: TwwDataSource;
    LojPedCODEMP: TIntegerField;
    LojPedDTEPED: TDateTimeField;
    LojPedNUMPED: TIntegerField;
    LojPedEMPRES: TIntegerField;
    LojPedDTERES: TDateTimeField;
    LojPedNUMRES: TIntegerField;
    LojPedCODTIP: TIntegerField;
    LojPedFLGIMP: TStringField;
    LojPedFLGREQ: TStringField;
    LojPedCODCLI: TIntegerField;
    LojPedLANEST: TStringField;
    LojPedCODFIL: TIntegerField;
    LojPedCODVEN: TIntegerField;
    LojPedCODPFA: TStringField;
    LojPedUFEPED: TStringField;
    LojPedTIPPFA: TStringField;
    LojPedHREPED: TStringField;
    LojPedSITPED: TStringField;
    UpLojPed: TUpdateSQL;
    LojPe2: TwwQuery;
    DsLojPe2: TwwDataSource;
    UpLojPe2: TUpdateSQL;
    LojPe2CODEMP: TIntegerField;
    LojPe2DTEPED: TDateTimeField;
    LojPe2NUMPED: TIntegerField;
    LojPe2SEQPE2: TIntegerField;
    LojPe2CODEIT: TIntegerField;
    LojPe2CODCLP: TStringField;
    LojPe2CODGRU: TStringField;
    LojPe2CODSUB: TStringField;
    LojPe2CODPRO: TStringField;
    LojPe2CODTAM: TStringField;
    LojPe2CODCOR: TStringField;
    LojPe2DESPE2: TStringField;
    LojPe2OBSPE2: TStringField;
    LojPe2QTPPE2: TFloatField;
    LojPe2TABPRC: TIntegerField;
    LojPe2VLUPE2: TFloatField;
    LojPe2VLQPE2: TFloatField;
    LojPe2IPIPE2: TFloatField;
    LojPe2ICMPE2: TFloatField;
    LojPe2FLASEQ: TStringField;
    LojPe2FLGRES: TStringField;
    LojPe2FLGREQ: TStringField;
    LojPe2EMPRES: TIntegerField;
    LojPe2DTERES: TDateTimeField;
    LojPe2NUMRES: TIntegerField;
    LojPe2SEQRE2: TIntegerField;
    LojPe2FLGDUP: TStringField;
    LojPe2CODUND: TStringField;
    LojPe2CODST1: TStringField;
    LojPe2CODST2: TStringField;
    LojPe2DSCPE2: TFloatField;
    LojPe2VDSPE2: TFloatField;
    LojPe2DSPPE2: TFloatField;
    LojPe2VDPPE2: TFloatField;
    LojPe2PACPE2: TFloatField;
    LojPe2VACPE2: TFloatField;
    LojPe2NROPE2: TIntegerField;
    CmpR08DESIM2: TMemoField;
    CmpR08DSCIMP: TStringField;
    CmpR08DSRIMP: TStringField;
    OBSNC2: TdxDBGridColumn;
    DSCIMP: TdxDBGridColumn;
    DSRIMP: TdxDBGridColumn;
    CmpR08OBSNC2: TStringField;
    procedure EnviarPedidos(CodOpe: integer);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqForClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqNumPedExit(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure DsPedDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumPedKeyPress(Sender: TObject; var Key: Char);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure bFinalizarClick(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
    procedure DsPe2DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CmpR08OBSNCMGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure FormDestroy(Sender: TObject);
    procedure CmpPe2DSCPROGetText(Sender: TField; var Text: String; DisplayText: Boolean);
    procedure EdPsqNumResExit(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure CmpR08OBSNC2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    DtePed : TDateTime;
    CodEmp,NumPed,SeqEn2 : integer;
    SeqArq,sBase,sFiltro,sOrdem : string;
  end;

var
  Pf1Req   : string;
  Pf2Req   : string;
  FlgReq   : string;
  Fo1Req   : Integer;
  Fo2Req   : Integer;
  EmpReq   : Integer;
  Em1Req   : Integer;
  Em2Req   : Integer;
  CliReq   : Integer;
  Cl1Req   : Integer;
  Cl2Req   : Integer;
  VenReq   : Integer;
  Ve1Req   : Integer;
  Ve2Req   : Integer;
  fmManPfo : TfmManPfo;

implementation

uses ShellApi, Fpreview, dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB,
     PsqEmp, AuxIni, PsqPfa, ManPri, AuxPsq, ManPed, ManFpe, PsqMfp, RelPfo,
     ManPra, PsqHre;

{$R *.DFM}

procedure TfmManPfo.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmManPfo.FormCreate(Sender: TObject);
begin
  inherited;

  CmpPed.Close;
  CmpPed.Params[0].AsDateTime := Date;
  CmpPed.Open;

  sBase := ' Select CmpPed.CodEmp,'+
           '        CmpPed.DtePed,'+
           '        CmpPed.NumPed,'+
           '        CmpPed.HrePed,'+
           '        CmpPed.PrePed,'+
           '        CmpPed.DpePed,'+
           '        CmpPed.UfePed,'+           
           '        CmpPed.CodFor,'+
           '        CmpPed.ConPlc,'+
           '        CmpPed.SubPlc,'+
           '        CmpPed.NomCon,'+
           '        CmpPed.NomVen,'+
           '        CmpPed.ObsCnd,'+
           '        CmpPed.QtiPed,'+
           '        CmpPed.TotPed,'+
           '        CmpPed.TotAcc,'+
           '        CmpPed.TotGer,'+
           '        CmpPed.TotRen,'+
           '        CmpPed.ObsPed,'+
           '        CmpPed.EmpRes,'+
           '        CmpPed.DteRes,'+
           '        CmpPed.NumRes,'+
           '        CmpPed.ModPfa,'+           
           '        CmpPed.SitPed,'+
           '        FinFor.ApeFor,'+
           '        GerUsu.LogUsu'+
           ' From CmpPed,FinFor,GerUsu,GerEmp'+
           ' Where CmpPed.CodFor = FinFor.CodFor'+
           '   and CmpPed.CodUsu = GerUsu.CodUsu'+
           '   and CmpPed.CodEmp = GerEmp.CodEmp';

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmManPfo.bPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

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
  
  sFiltro := '';

  case rgOrdem.Itemindex of
       0: sOrdem := ' Order by FinFor.ApeFor,CmpPed.CodEmp,CmpPed.NumPed';
       1: sOrdem := ' Order by CmpPed.DtePed,CmpPed.CodEmp,CmpPed.NumPed';
       2: sOrdem := ' Order by CmpPed.DpePed,CmpPed.CodEmp,CmpPed.NumPed';
  end;

  case rgStatus.Itemindex of
       0: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Nao Concluido');
       1: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Concluido');
       2: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Processo de Alteracao');
       3: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Recebido Parcialmente');
       4: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Recebido');
       5: sFiltro := sFiltro + ' and CmpPed.SitPed = '+ QuotedStr('Saldo Nao Atendido');
  end;

  if Trim( EdPsqNumPed.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.NumPed = '+ QuotedStr(EdPsqNumPed.Text);
  if Trim( EdPsqNumRes.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.NumRes = '+ QuotedStr(EdPsqNumRes.Text);
  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodFor.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.CodFor = '+ QuotedStr(EdPsqCodFor.Text);

  if Trim(fLimpaStr(EdPsqDtePed1.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DtePed >= '+ QuotedStr(fDateToSQL(EdPsqDtePed1.Date));
  if Trim(fLimpaStr(EdPsqDtePed2.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DtePed <= '+ QuotedStr(fDateToSQL(EdPsqDtePed2.Date));
  if Trim(fLimpaStr(EdPsqDpePed1.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DpePed >= '+ QuotedStr(fDateToSQL(EdPsqDpePed1.Date));
  if Trim(fLimpaStr(EdPsqDpePed2.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DpePed <= '+ QuotedStr(fDateToSQL(EdPsqDpePed2.Date));

  if EdPsqTotPed1.Value > 0 then sFiltro := sFiltro + ' and CmpPed.TotGer >= '+ QuotedStr(fConvertValor(EdPsqTotPed1.Text));
  if EdPsqTotPed2.Value > 0 then sFiltro := sFiltro + ' and CmpPed.TotGer <= '+ QuotedStr(fConvertValor(EdPsqTotPed2.Text));

  if GFlgAce = 'Sim' then begin

     if GEmpLog > 0 then
        sFiltro := sFiltro + ' and CmpPed.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
     else
        sFiltro := sFiltro + ' and GerEmp.CodFil > 0';
  
  end;

  with CmpPed,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grPed.SetFocus;

end;

procedure TfmManPfo.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

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
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdPsqNomEmp.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdPsqNomEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqNomEmp.Text := '';
end;

procedure TfmManPfo.EdPsqCodForExit(Sender: TObject);
begin
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinFor.ApeFor From FinFor Where FinFor.CodFor = '+ QuotedStr(EdPsqCodFor.Text);
          Open;

          EdPsqApeFor.Text := FieldByName('ApeFor').AsString;

     end;

     end
  else
     EdPsqApeFor.Text := '';
end;

procedure TfmManPfo.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManPfo.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;
  end;
end;

procedure TfmManPfo.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           EdPsqApeFor.Text := fmAuxIni.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           EdPsqApeFor.Text := fmAuxPsq.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManPfo.BbPsqForClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdPsqApeFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManPfo.EdPsqNumPedExit(Sender: TObject);
begin
  if Trim( EdPsqNumPed.Text ) <> '' then begin

     EdPsqNumRes.Clear;  
     EdPsqCodEmp.Clear;
     EdPsqNomEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqApeFor.Clear;

     EdPsqDtePed1.Clear;
     EdPsqDtePed2.Clear;
     EdPsqDtrPed1.Clear;
     EdPsqDtrPed2.Clear;
     EdPsqDpePed1.Clear;
     EdPsqDpePed2.Clear;

     EdPsqTotPed1.Value := 0;
     EdPsqTotPed2.Value := 0;

  end;
end;

procedure TfmManPfo.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

  if key = 118 then bFinalizar.OnClick(Sender);

  if key = 121 then begin

     if CmpPedSitPed.Value = 'Saldo Nao Atendido' then begin

        try

           fmPsqMfp := TfmPsqMfp.Create(Self);

           fmPsqMfp.CmpPed.Close;
           fmPsqMfp.CmpPed.Params[0].AsInteger  := CmpPedCodEmp.Value;
           fmPsqMfp.CmpPed.Params[1].AsDateTime := CmpPedDtePed.Value;
           fmPsqMfp.CmpPed.Params[2].AsInteger  := CmpPedNumPed.Value;
           fmPsqMfp.CmpPed.Open;

           fmPsqMfp.ShowModal;

        finally

           FreeAndNil(fmPsqMfp);

        end;
     end;
  end;
end;

procedure TfmManPfo.FormShow(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From CmpPar';
       Open;

       FlgReq := FieldbyName('FlgReq').AsString;
       Pf1Req := FieldbyName('Pf1Req').AsString;
       Pf2Req := FieldbyName('Pf2Req').AsString;
       Em1Req := FieldbyName('Em1Req').AsInteger;
       Em2Req := FieldbyName('Em2Req').AsInteger;
       Cl1Req := FieldbyName('Cl1Req').AsInteger;
       Cl2Req := FieldbyName('Cl2Req').AsInteger;
       Ve1Req := FieldbyName('Ve1Req').AsInteger;
       Ve2Req := FieldbyName('Ve2Req').AsInteger;
       Fo1Req := FieldbyName('Fo1Req').AsInteger;
       Fo2Req := FieldbyName('Fo2Req').AsInteger;

  end;

  EdPsqNumPed.SetFocus;

end;

procedure TfmManPfo.DsPedDataChange(Sender: TObject; Field: TField);
var
sText : string;
begin
  inherited;

  if Trim(CmpPedLogUsu.Value) <> '' then
     grPed.Hint := ' Responsavel pela Emissão do Pedido : ' + CmpPedLogUsu.Value
  else
     grPed.Hint := '';

  if CmpPedNumRes.Value > 0 then
     pnNumRes.Caption := ' Requisição Eletronica No. '+IntToStr(CmpPedNumRes.Value)
  else
     pnNumRes.Caption := ' Requisição Eletronica No.';
     
  pnTotRen.Caption := FormatFloat('##0.00',CmpPedTotRen.Value)+' %';

  if CmpPedCodFor.Value > 0 then
     pnCodFor.Caption := ' Código do Fornecedor : ' + FNumZeros(IntToStr(CmpPedCodFor.Value),7)
  else
     pnCodFor.Caption := ' Código do Fornecedor : ';

  pnHrePed.Caption := ' '+CmpPedHrePed.Value;

  pnSitPed.Caption := CmpPedSitPed.Value;

  if CmpPedSitPed.Value = 'Saldo Nao Atendido' then sText := 'F10 -';

  if Trim( sText ) <> '' then
     pnSitPed.Caption := sText + ' ' + CmpPedSitPed.Value
  else
     pnSitPed.Caption := CmpPedSitPed.Value;

end;

procedure TfmManPfo.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPfo.EdPsqNumPedKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPfo.bEditarClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpPedNumPed.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManPed then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um Pedido em Andamento.','E');

           fmManPed.WindowState := wsNormal;
           fmManPed.BringToFront;

           end
        else
           begin

           CodEmp := CmpPedCodEmp.Value;
           DtePed := CmpPedDtePed.Value;
           NumPed := CmpPedNumPed.Value;

           sFiltro := ' and CmpPed.CodEmp = '+ QuotedStr(IntToStr(CmpPedCodEmp.Value)) +
                      ' and CmpPed.DtePed = '+ QuotedStr(fDateToSQL(CmpPedDtePed.Value)) +
                      ' and CmpPed.NumPed = '+ QuotedStr(IntToStr(CmpPedNumPed.Value)) ;

           with CmpPed,SQL do begin

                Close;
                Text := sBase + sFiltro + sOrdem;
                Open;

           end;

           if Trim(CmpPedSitPed.Value) = 'Concluido' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg'+
                           ' From CmpPe3'+
                           ' Where CmpPe3.CodEmp = :CodEmp'+
                           '   and CmpPe3.DtePed = :DtePed'+
                           '   and CmpPe3.NumPed = :NumPed'+
                           '   and Exists(Select * From CmpEnt Where CmpEnt.CodEmp = CmpPe3.EmpEnt '+
                           '                                     and CmpEnt.DteEnt = CmpPe3.DteEnt '+
                           '                                     and CmpEnt.NumEnt = CmpPe3.NumEnt '+
                           '                                     and CmpEnt.SitEnt = '+ QuotedStr('Nao Concluida') +' )';

                   with Params do begin

                        Params[0].AsInteger  := CmpPedCodEmp.Value;
                        Params[1].AsDateTime := CmpPedDtePed.Value;
                        Params[2].AsInteger  := CmpPedNumPed.Value;

                   end;

                   Open;

              end;

              if quSQL.FieldbyName('QtdReg').AsInteger = 0 then begin

                 CmpPed.Edit;

                 CmpPedSitPed.Value := 'Processo de Alteracao';

                 with CmpPed do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if CmpPed.State <> dsBrowse then CmpPed.CancelUpdates;

                         EdPsqNumPed.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;

                 end
              else
                 fMsgErro('Operação não Pode ser Realizada. Pedido com Processo de Entrada em Andamento.',Nil);

           end;

           CodEmp := CmpPedCodEmp.Value;
           DtePed := CmpPedDtePed.Value;
           NumPed := CmpPedNumPed.Value;

           fmManPed := TfmManPed.Create(Self);
           fmManPed.Show;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPfo.bIncluirClick(Sender: TObject);
var
i     : Integer;
Found : integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManPed then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe um Pedido em Andamento.','E');

        fmManPed.WindowState := wsNormal;
        fmManPed.BringToFront;

        end
     else
        begin

        CodEmp := 0;
        DtePed := Date;
        NumPed := 0;

        sFiltro := ' and CmpPed.CodEmp = :CodEmp'+
                   ' and CmpPed.DtePed = :DtePed'+
                   ' and CmpPed.NumPed = :NumPed';

        with CmpPed,SQL do begin

             Close;
             Text := sBase + sFiltro + sOrdem;

             with Params do begin

                  Params[0].AsInteger  := CodEmp;
                  Params[1].AsDateTime := DtePed;
                  Params[2].AsInteger  := NumPed;

             end;

             Open;

        end;

        fmManPed := TfmManPed.Create(Self);
        fmManPed.Show;

     end;

     end
  else
     fmsgErro(GMensagem,Nil);     
end;

procedure TfmManPfo.bExcluirClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpPedNumPed.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManPed then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um Pedido em Andamento.','E');

           fmManPed.WindowState := wsNormal;
           fmManPed.BringToFront;

           end
        else
           begin

           if CmpPedSitPed.Value <> 'Processo de Alteracao' then begin

              if (Trim( CmpPedSitPed.Value ) = 'Nao Concluido') or (Trim( CmpPedSitPed.Value ) = 'Concluido') then begin

                 if fMsg('Confirma a Exclusão do Pedido ?','S') then begin

                    CmpPed.Delete;

                    with CmpPed do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            if CmpPed.State <> dsBrowse then CmpPed.CancelUpdates;

                            grPed.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    CmpPed.Close;
                    CmpPed.Open;

                    grPed.SetFocus;

                 end;

                 end
              else
                 begin

                 if (CmpPedSitPed.Value = 'Recebido') or (CmpPedSitPed.Value = 'Recebido Parcialmente') then fMsg('Operação não Pode ser Realizada. Pedido com Recebimentos Realizados.','E');

              end;

              end
           else
              begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as Reg From CmpPe2'+
                           ' Where CmpPe2.CodEmp = :CodEmp'+
                           '   and CmpPe2.DtePed = :DtePed'+
                           '   and CmpPe2.NumPed = :NumPed'+
                           '   and CmpPe2.QtrPe2 > '+ QuotedStr('0');

                   with Params do begin

                        Params[0].AsInteger  := CmpPedCodEmp.Value;
                        Params[1].AsDateTime := CmpPedDtePed.Value;
                        Params[2].AsInteger  := CmpPedNumPed.Value;

                   end;

                   Open;

              end;

              if quSQL.FieldbyName('Reg').AsInteger = 0 then begin

                 if fMsg('Confirma a Exclusão do Pedido ?','S') then begin

                    CmpPed.Delete;

                    with CmpPed do begin

                         fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                         try

                            ApplyUpdates; {Tenta aplicar as alterações};

                            fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                         except

                            fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                            if CmpPed.State <> dsBrowse then CmpPed.CancelUpdates;

                            grPed.SetFocus;

                            raise;

                         end;

                         CommitUpdates; {sucesso!, limpa o cache...}

                    end;

                    CmpPed.Close;
                    CmpPed.Open;

                    grPed.SetFocus;

                 end;

                 end
              else
                 fmsgErro('já Existem Recebimentos Realizados para o Pedido de Compra.',Nil);
           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPfo.bImprimirClick(Sender: TObject);
var
i      : Integer;
Found  : Integer;
NumRes : Integer;
PfaReq : string;
SeqRes : string;
begin
  inherited;
  if CmpPedNumPed.Value > 0 then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManPed then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe um Pedido em Andamento.','E');

        fmManPed.WindowState := wsNormal;
        fmManPed.BringToFront;

        end
     else
        begin

        CodEmp := CmpPedCodEmp.Value;
        DtePed := CmpPedDtePed.Value;
        NumPed := CmpPedNumPed.Value;

        sFiltro := ' and CmpPed.CodEmp = '+ QuotedStr(IntToStr(CmpPedCodEmp.Value))+
                   ' and CmpPed.DtePed = '+ QuotedStr(fDateToSQL(CmpPedDtePed.Value))+
                   ' and CmpPed.NumPed = '+ QuotedStr(IntToStr(CmpPedNumPed.Value));

        with CmpPed,SQL do begin

             Close;
             Text := sBase + sFiltro + sOrdem;
             Open;

        end;

        if CmpPe2CodEmp.Value > 0 then begin

           if fMsg('Confirma a Impressão da via Interna do Pedido de Compra ?','O') then begin

              try

                 p1Report.DeviceType := 'Screen';
                 fmPreview := TfmPreview.Create(fmManPfo);
                 fmPreview.ppViewer.Report := p1Report;
                 p1Report.PrintToDevices;
                 fmPreview.ShowModal;

                 if Assigned(p1Report.AfterPrint) then p1Report.AfterPrint(Sender);

              finally

                 FreeAndNil(fmPreview);

              end;
           end;

           if fMsg('Confirma a Impressão da via Fornecedor do Pedido de Compra ?','O') then begin

              try

                 fmRelPfo := TfmRelPfo.Create(Self);

                 fmRelPfo.CmpPed.Close;
                 fmRelPfo.CmpPed.Params[0].AsInteger  := CmpPedCodEmp.Value;
                 fmRelPfo.CmpPed.Params[1].AsDateTime := CmpPedDtePed.Value;
                 fmRelPfo.CmpPed.Params[2].AsInteger  := CmpPedNumPed.Value;
                 fmRelPfo.CmpPed.Open;

                 fmRelPfo.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmRelPfo);

              end;
           end;

           if CmpPedSitPed.Value = 'Concluido' then begin
           
              if Trim( FlgReq ) = 'Sim' then begin

                 if (Fo1Req = CmpPedCodFor.Value) or (Fo2Req = CmpPedCodFor.Value) then begin

                    if Fo1Req = CmpPedCodFor.Value then begin

                       PfaReq := Pf1Req;
                       EmpReq := Em1Req;
                       CliReq := Cl1Req;
                       VenReq := Ve1Req;

                       end
                    else
                       begin

                       PfaReq := Pf2Req;
                       EmpReq := Em2Req;
                       CliReq := Cl2Req;
                       VenReq := Ve2Req;

                    end;

                    if EmpReq > 0 then begin

                       if CmpPedNumRes.Value = 0 then begin

                          if fMsg('Gerar Requisição de Compra na Unidade de Destino ?','O') then begin

                             if Fo1Req = CmpPedCodFor.Value then begin

                                with fmManGDB.dbEmerion1 do begin

                                     try
                                        Connected := True;
                                     except
                                        Connected := False;
                                     end;

                                end;

                                quSQL1.DatabaseName := 'Emerion_01';
                                PedRes.DatabaseName := 'Emerion_01';
                                PedRe2.DatabaseName := 'Emerion_01';
                                LojPed.DatabaseName := 'Emerion_01';
                                LojPe2.DatabaseName := 'Emerion_01';

                                end
                             else
                                begin

                                with fmManGDB.dbEmerion2 do begin

                                     try
                                        Connected := True;
                                     except
                                        Connected := False;
                                     end;

                                end;

                                quSQL1.DatabaseName := 'Emerion_02';
                                PedRes.DatabaseName := 'Emerion_02';
                                PedRe2.DatabaseName := 'Emerion_02';
                                LojPed.DatabaseName := 'Emerion_02';
                                LojPe2.DatabaseName := 'Emerion_02';

                             end;

                             if (fmManGDB.dbEmerion1.Connected) or (fmManGDB.dbEmerion2.Connected) then begin

                                pnSequenc.Visible := True;
                                lbSequenc.Visible := True;

                                CmpPe2.First;

                                ProgressBar.Max      := CmpPe2.RecordCount + 1;
                                ProgressBar.Min      := 0;
                                ProgressBar.Position := 0;

                                PedRes.Close;
                                PedRes.Params[0].AsInteger  := CmpPedCodEmp.Value;
                                PedRes.Params[1].AsDateTime := CmpPedDtePed.Value;
                                PedRes.Params[2].AsInteger  := CmpPedNumPed.Value;
                                PedRes.Open;

                                ProgressBar.StepBy(1);

                                Refresh;

                                if PedResCodEmp.Value = 0 then begin

                                   Randomize;
                                   SeqRes := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                                             copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                                             copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                                             copy(TimeToStr(Time),1,2)+
                                             copy(TimeToStr(Time),4,2)+
                                             copy(TimeToStr(Time),7,2)+
                                             FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                                             FNumZeros(Trim( IntToStr(Random(50000)) ),5);

                                   PedRes.Insert;

                                   PedResCodTip.Value := 1;
                                   PedResNumRes.Value := 0;
                                   PedResPrfRes.Value := CmpPedPrePed.Value;
                                   PedResDteRes.Value := Date;
                                   PedResDtfRes.Value := CmpPedDpePed.Value;
                                   PedResFlgGer.Value := 'Nao';
                                   PedResLibSld.Value := 'Nao';
                                   PedResFlgImp.Value := 'Nao';
                                   PedResPedAnt.Value := 'Nao';
                                   PedResFlgReq.Value := 'Nao';
                                   PedResCodEmp.Value := EmpReq;
                                   PedResCodCli.Value := CliReq;
                                   PedResCodVen.Value := VenReq;
                                   PedResCodPfa.Value := PfaReq;
                                   PedResTipPfa.Value := 'Saida';
                                   PedResSitRes.Value := 'Nao Concluido';
                                   PedResHreRes.Value := TimeToStr(Time);
                                   PedResUfeRes.Value := CmpPedUfePed.Value;
                                   PedResEmpPed.Value := CmpPedCodEmp.Value;
                                   PedResDtePed.Value := CmpPedDtePed.Value;
                                   PedResNumPed.Value := CmpPedNumPed.Value;
                                   PedResObsRes.Value := CmpPedObsPed.Value;

                                   with PedRes do begin

                                        {Inicia a Transação}
                                        if fmManGDB.dbEmerion1.Connected then
                                           fmManGDB.dbEmerion1.StartTransaction
                                        else
                                           fmManGDB.dbEmerion2.StartTransaction;

                                        try

                                           ApplyUpdates; {Tenta aplicar as alterações};

                                           {confirma todas as alterações fechando a transação}
                                           if fmManGDB.dbEmerion1.Connected then
                                              fmManGDB.dbEmerion1.Commit
                                           else
                                              fmManGDB.dbEmerion2.Commit;

                                        except

                                           {desfaz as alterações se acontecer um erro}
                                           if fmManGDB.dbEmerion1.Connected then
                                              fmManGDB.dbEmerion1.Rollback
                                           else
                                              fmManGDB.dbEmerion2.Rollback;

                                           if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                                           pnSequenc.Visible := False;

                                           PedRes.Close;
                                           PedRe2.Close;

                                           fmManGDB.dbEmerion1.Connected := False;
                                           fmManGDB.dbEmerion2.Connected := False;

                                           EdPsqNumPed.SetFocus;

                                           raise;

                                        end;

                                        CommitUpdates; {sucesso!, limpa o cache...}

                                   end;

                                   PedRes.Close;
                                   PedRes.Params[0].AsInteger  := CmpPedCodEmp.Value;
                                   PedRes.Params[1].AsDateTime := CmpPedDtePed.Value;
                                   PedRes.Params[2].AsInteger  := CmpPedNumPed.Value;
                                   PedRes.Open;

                                end;

                                if PedResEmpPed.Value > 0 then begin

                                   while not CmpPe2.EOF do begin

                                         Refresh;

                                         PedRe2.Close;
                                         PedRe2.Params[0].AsInteger  := CmpPe2CodEmp.Value;
                                         PedRe2.Params[1].AsDateTime := CmpPe2DtePed.Value;
                                         PedRe2.Params[2].AsInteger  := CmpPe2NumPed.Value;
                                         PedRe2.Params[3].AsInteger  := CmpPe2SeqPe2.Value;
                                         PedRe2.Open;

                                         if PedRe2CodEmp.Value = 0 then begin

                                            with quSQL1,SQL do begin

                                                 Close;
                                                 Text := ' Select Count(*) as QtdReg From PedRe2'+
                                                         ' Where PedRe2.CodEmp = :CodEmp'+
                                                         '   and PedRe2.DteRes = :DteRes'+
                                                         '   and PedRe2.NumRes = :NumRes'+
                                                         '   and PedRe2.CodClp = :CodClp'+
                                                         '   and PedRe2.CodGru = :CodGru'+
                                                         '   and PedRe2.CodSub = :CodSub'+
                                                         '   and PedRe2.CodPro = :CodPro';

                                                 with Params do begin

                                                      Params[0].AsInteger  := PedResCodEmp.Value;
                                                      Params[1].AsDateTime := PedResDteRes.Value;
                                                      Params[2].AsInteger  := PedResNumRes.Value;
                                                      Params[3].AsString   := CmpPe2CodClp.Value;
                                                      Params[4].AsString   := CmpPe2CodGru.Value;
                                                      Params[5].AsString   := CmpPe2CodSub.Value;
                                                      Params[6].AsString   := CmpPe2CodPro.Value;

                                                 end;

                                                 Open;

                                            end;

                                            if quSQL1.FieldbyName('QtdReg').AsInteger = 0 then begin

                                               PedRe2.Insert;

                                               PedRe2NroRe2.Value := 1;
                                               PedRe2SeqRe2.Value := 1;
                                               PedRe2TabPrc.Value := 3;
                                               PedRe2IpiRe2.Value := 0;
                                               PedRe2IcmRe2.Value := 0;
                                               PedRe2PacRe2.Value := 0;
                                               PedRe2VacRe2.Value := 0;
                                               PedRe2DscRe2.Value := 0;
                                               PedRe2VdsRe2.Value := 0;
                                               PedRe2DspRe2.Value := 0;
                                               PedRe2VdpRe2.Value := 0;
                                               PedRe2FlaSeq.Value := '';
                                               PedRe2CodTam.Value := 'UN';
                                               PedRe2CodCor.Value := 'UN';
                                               PedRe2FlgRes.Value := 'Nao';
                                               PedRe2FlgReq.Value := 'Nao';
                                               PedRe2CodEit.Value := PedResCodEmp.Value;
                                               PedRe2CodEmp.Value := PedResCodEmp.Value;
                                               PedRe2DteRes.Value := PedResDteRes.Value;
                                               PedRe2NumRes.Value := PedResNumRes.Value;
                                               PedRe2EmpPed.Value := CmpPe2CodEmp.Value;
                                               PedRe2DtePed.Value := CmpPe2DtePed.Value;
                                               PedRe2NumPed.Value := CmpPe2NumPed.Value;
                                               PedRe2SeqPe2.Value := CmpPe2SeqPe2.Value;
                                               PedRe2CodClp.Value := CmpPe2CodClp.Value;
                                               PedRe2CodGru.Value := CmpPe2CodGru.Value;
                                               PedRe2CodSub.Value := CmpPe2CodSub.Value;
                                               PedRe2CodPro.Value := CmpPe2CodPro.Value;
                                               PedRe2QtpRe2.Value := CmpPe2QtpPe2.Value;
                                               PedRe2FlgDup.Value := CmpPe2FlgDup.Value;

                                               PedRe2ObsRe2.Value := 'PEDIDO DE COMPRA NO. '+IntToStr(CmpPedNumPed.Value);

                                               with quSQL1,SQL do begin

                                                    Close;
                                                    Text := ' Select EstPro.DscPro,'+
                                                            '        EstPro.SaiIcm,'+
                                                            '        EstPro.SaiIpi,'+
                                                            '        EstPro.CodUns,'+
                                                            '        EstPro.CodSt1,'+
                                                            '        EstPro.CodSt2,'+
                                                            '        EstPro.DscPro,'+
                                                            '        EstPro.IpiSai,'+
                                                            '        EstPro.IpiTsd,'+
                                                            '        EstPro.IcmSai,'+
                                                            '        EstPro.IcmTsd From EstPro'+
                                                            ' Where EstPro.CodClp = :CodClp'+
                                                            '   and EstPro.CodGru = :CodGru'+
                                                            '   and EstPro.CodSub = :CodSub'+
                                                            '   and EstPro.CodPro = :CodPro';

                                                    with Params do begin

                                                         Params[0].AsString := CmpPe2CodClp.Value;
                                                         Params[1].AsString := CmpPe2CodGru.Value;
                                                         Params[2].AsString := CmpPe2CodSub.Value;
                                                         Params[3].AsString := CmpPe2CodPro.Value;

                                                    end;

                                                    Open;

                                                    PedRe2IcmRe2.Value := FieldbyName('SaiIcm').AsFloat;
                                                    PedRe2IpiRe2.Value := FieldbyName('SaiIpi').AsFloat;
                                                    PedRe2CodUnd.Value := FieldbyName('CodUns').AsString;
                                                    PedRe2CodSt1.Value := FieldbyName('CodSt1').AsString;
                                                    PedRe2CodSt2.Value := FieldbyName('CodSt2').AsString;
                                                    PedRe2DesRe2.Value := FieldbyName('DscPro').AsString;

                                                    if Trim( FieldbyName('IpiSai').AsString ) <> '' then begin

                                                       PedRe2RegIpi.Value := FieldbyName('IpiSai').AsString;
                                                       PedRe2TipIpi.Value := FieldbyName('IpiTsd').AsString;

                                                    end;

                                                    if Trim( FieldbyName('IcmSai').AsString ) <> '' then begin

                                                       PedRe2RegIcm.Value := FieldbyName('IcmSai').AsString;
                                                       PedRe2TipIcm.Value := FieldbyName('IcmTsd').AsString;

                                                    end;
                                               end;

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

                                                  with quSQL1,SQL do begin

                                                       Close;
                                                       Text := ' Select TrbIpi From EstIpi'+
                                                               ' Where EstIpi.CodIpi = '+ QuotedStr(PedRe2RegIpi.Value)+
                                                               '   and EstIpi.TipIpi = '+ QuotedStr(PedRe2TipIpi.Value);
                                                       Open;

                                                       PedRe2TrbIpi.Value := FieldbyName('TrbIpi').AsString;

                                                  end;
                                               end;

                                               if PedResLanEst.Value = 'Sim' then begin

                                                  if PedResCodFil.Value > 0 then
                                                     CodEmp := PedResCodFil.Value
                                                  else
                                                     CodEmp := PedResCodEmp.Value;

                                                  end
                                               else
                                                  CodEmp := PedResCodEmp.Value;

                                               with quSQL1,SQL do begin

                                                    Close;
                                                    Text := ' Select EstIte.VpfIte'+
                                                            ' From EstIte'+
                                                            ' Where EstIte.CodEmp = :CodEmp'+
                                                            '   and EstIte.CodClp = :CodClp'+
                                                            '   and EstIte.CodGru = :CodGru'+
                                                            '   and EstIte.CodSub = :CodSub'+
                                                            '   and EstIte.CodPro = :CodPro';

                                                    with Params do begin

                                                         Params[0].AsInteger := CodEmp;
                                                         Params[1].AsString  := PedRe2CodClp.Value;
                                                         Params[2].AsString  := PedRe2CodGru.Value;
                                                         Params[3].AsString  := PedRe2CodSub.Value;
                                                         Params[4].AsString  := PedRe2CodPro.Value;

                                                    end;

                                                    Open;

                                               end;

                                               PedRe2VluRe2.Value := quSQL1.FieldbyName('VpfIte').AsFloat;

                                               PedRe2VlqRe2.Value := PedRe2VluRe2.Value;

                                               with PedRe2 do begin

                                                    {Inicia a Transação}
                                                    if fmManGDB.dbEmerion1.Connected then
                                                       fmManGDB.dbEmerion1.StartTransaction
                                                    else
                                                       fmManGDB.dbEmerion2.StartTransaction;

                                                    try

                                                       ApplyUpdates; {Tenta aplicar as alterações};

                                                       {confirma todas as alterações fechando a transação}
                                                       if fmManGDB.dbEmerion1.Connected then
                                                          fmManGDB.dbEmerion1.Commit
                                                       else
                                                          fmManGDB.dbEmerion2.Commit;

                                                    except

                                                       {desfaz as alterações se acontecer um erro}
                                                       if fmManGDB.dbEmerion1.Connected then
                                                          fmManGDB.dbEmerion1.Rollback
                                                       else
                                                          fmManGDB.dbEmerion2.Rollback;

                                                       if PedRe2.State <> dsBrowse then PedRe2.CancelUpdates;

                                                       pnSequenc.Visible := False;

                                                       PedRes.Close;
                                                       PedRe2.Close;

                                                       fmManGDB.dbEmerion1.Connected := False;
                                                       fmManGDB.dbEmerion2.Connected := False;

                                                       EdPsqNumPed.SetFocus;

                                                       raise;

                                                    end;

                                                    CommitUpdates; {sucesso!, limpa o cache...}

                                               end;
                                            end;
                                         end;

                                         CmpPe2.Next;

                                         ProgressBar.StepBy(1);

                                   end;

                                   PedRes.Edit;

                                   PedResSitRes.Value := 'Aguardando Separacao de Estoque';

                                   with PedRes do begin

                                        {Inicia a Transação}
                                        if fmManGDB.dbEmerion1.Connected then
                                           fmManGDB.dbEmerion1.StartTransaction
                                        else
                                           fmManGDB.dbEmerion2.StartTransaction;

                                        try

                                           ApplyUpdates; {Tenta aplicar as alterações};

                                           {confirma todas as alterações fechando a transação}
                                           if fmManGDB.dbEmerion1.Connected then
                                              fmManGDB.dbEmerion1.Commit
                                           else
                                              fmManGDB.dbEmerion2.Commit;

                                        except

                                           {desfaz as alterações se acontecer um erro}
                                           if fmManGDB.dbEmerion1.Connected then
                                              fmManGDB.dbEmerion1.Rollback
                                           else
                                              fmManGDB.dbEmerion2.Rollback;

                                           if PedRes.State <> dsBrowse then PedRes.CancelUpdates;

                                           pnSequenc.Visible := False;

                                           PedRes.Close;
                                           PedRe2.Close;

                                           fmManGDB.dbEmerion1.Connected := False;
                                           fmManGDB.dbEmerion2.Connected := False;

                                           EdPsqNumPed.SetFocus;

                                           raise;

                                        end;

                                        CommitUpdates; {sucesso!, limpa o cache...}

                                   end;

                                   NumRes := PedResNumRes.Value;

                                   CmpPed.Edit;

                                   CmpPedEmpRes.Value := PedResCodEmp.Value;
                                   CmpPedDteRes.Value := PedResDteRes.Value;
                                   CmpPedNumRes.Value := PedResNumRes.Value;

                                   with CmpPed do begin

                                        fmManGDB.dbMain.StartTransaction;

                                        try

                                           ApplyUpdates; {Tenta aplicar as alterações};

                                           fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                        except

                                           fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                           if CmpPed.State <> dsBrowse then CmpPed.CancelUpdates;

                                           pnSequenc.Visible := False;

                                           PedRes.Close;
                                           PedRe2.Close;

                                           fmManGDB.dbEmerion1.Connected := False;
                                           fmManGDB.dbEmerion2.Connected := False;

                                           EdPsqNumPed.SetFocus;

                                           raise;

                                        end;

                                        CommitUpdates; {sucesso!, limpa o cache...}

                                   end;

                                   PedRes.Close;
                                   PedRe2.Close;

                                   fmManGDB.dbEmerion1.Connected := False;
                                   fmManGDB.dbEmerion2.Connected := False;

                                   pnSequenc.Visible := False;

                                   fMsg('Requisição Gerada com Sucesso. Requisição No. '+ IntToStr(NumRes) +'.','I');


                                   end
                                else
                                   begin

                                   pnSequenc.Visible := False;

                                   fmsgErro('Requisição não Encontrada na Unidade de Destino. Por Favor Verificar.',Nil);

                                end;

                                end
                             else
                                fmsgErro('Falha na Comunicação com a Empresa Destino. Favor Verificar.',Nil);

                          end;
                       end;
                    end;
                 end;
              end;
           end;   
        end;
     end;
  end;
end;

procedure TfmManPfo.ppHeaderBand3BeforePrint(Sender: TObject);
var
EndFor,FonFor,FaxFor : string;
begin
  inherited;

  if FileExists('C:\Emerion\Print.bmp') then
     ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     ppImagem.Picture.Bitmap.FreeImage;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;
  ppCgcEmp.Caption := GCgcEmp;
  ppInsEmp.Caption := GInsEmp;

  ppTitulo.Caption := 'Pedido de Compra No. '+ fNumZeros(IntToStr(CmpPe2NumPed.Value),7)+ ' - ' + FormatDateTime('dd/mm/yyyy',CmpPe2DtePed.Value)+ ' ( Interna ) ';

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinFor.EndFor,'+
               '        FinFor.NumFor,'+
               '        FinFor.BaiFor,'+
               '        FinFor.CidFor,'+
               '        FinFor.SigUfe,'+
               '        FinFor.PrtFor,'+
               '        FinFor.FonFor,'+
               '        FinFor.PrfFor,'+
               '        FinFor.FaxFor From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpPedCodFor.Value));
       Open;

       EndFor := FieldbyName('EndFor').AsString;

       if Trim( FieldbyName('NumFor').AsString ) <> '' then
          EndFor := EndFor +  ','  + Trim( FieldbyName('NumFor').AsString ) + ' - '+ Trim ( FieldbyName('BaiFor').AsString )
       else
          EndFor := EndFor + ' - ' + Trim( FieldbyName('BaiFor').AsString );

       if Trim( FieldbyName('PrtFor').AsString ) <> '' then
          FonFor := '( '+ Trim(FieldbyName('PrtFor').AsString)+' ) '+FieldbyName('FonFor').AsString
       else
          FonFor := FieldbyName('FonFor').AsString;

       if Trim( FieldbyName('PrfFor').AsString ) <> '' then
          FonFor := '( '+ Trim(FieldbyName('PrfFor').AsString)+' ) '+FieldbyName('FaxFor').AsString
       else
          FonFor := FieldbyName('FaxFor').AsString;

       p1EndFor.Caption := EndFor;
       p1FonFor.Caption := FonFor;
       p1FaxFor.Caption := FaxFor;
       p1BaiFor.Caption := FieldbyName('BaiFor').AsString;
       p1CidFor.Caption := FieldbyName('CidFor').AsString;
       p1SigUfe.Caption := FieldbyName('SigUfe').AsString;

  end;

  p1CodFor.Caption := IntToStr( CmpPedCodFor.Value );
  p1NomFor.Caption := CmpPedApeFor.Value;
  p1NomCon.Caption := CmpPedNomCon.Value;
  p1NomUsu.Caption := CmpPedLogUsu.Value;

end;

procedure TfmManPfo.dbReportBeforePrint(Sender: TObject);
begin
  inherited;

  p1Memo.Lines.Clear;
  p1Memo.Lines.Add(CmpPe2DesPe2.Value);

  if Trim( CmpPe2CodPfo.Value ) <> '' then
     p1Memo.Lines.Add(CmpPe2CodGru.Value+ '.' +CmpPe2CodSub.Value+ '.' +CmpPe2CodPro.Value+ ' - ' +CmpPe2CodPfo.Value)
  else
     p1Memo.Lines.Add(CmpPe2CodGru.Value+ '.' +CmpPe2CodSub.Value+ '.' +CmpPe2CodPro.Value);

  if Trim( CmpPe2ObsPe2.Value ) <> '' then p1Memo.Lines.Add(CmpPe2ObsPe2.Value);
  if Trim( CmpPe2ObsPe3.Value ) <> '' then p1Memo.Lines.Add(CmpPe2ObsPe3.Value);

end;

procedure TfmManPfo.bFinalizarClick(Sender: TObject);
var
DtePed : TDateTime;
CodEmp : Integer;
NumPed : Integer;
i      : Integer;
Found  : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpPedCodEmp.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManPed then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe um Pedido em Andamento.','E');

           fmManPed.WindowState := wsNormal;
           fmManPed.BringToFront;

           end
        else
           begin  
  
           if CmpPedSitPed.Value <> 'Saldo Nao Atendido' then begin

              try

                 fmManFpe := TfmManFpe.Create(Self);

                 fmManFpe.CmpPed.Close;
                 fmManFpe.CmpPed.Params[0].AsInteger  := CmpPedCodEmp.Value;
                 fmManFpe.CmpPed.Params[1].AsDateTime := CmpPedDtePed.Value;
                 fmManFpe.CmpPed.Params[2].AsInteger  := CmpPedNumPed.Value;
                 fmManFpe.CmpPed.Open;

                 fmManFpe.ShowModal;

              finally

                 FreeAndNil(fmManFpe);

              end;

              CodEmp := CmpPedCodEmp.Value;
              DtePed := CmpPedDtePed.Value;
              NumPed := CmpPedNumPed.Value;

              CmpPed.Close;
              CmpPed.Open;

              CmpPed.Locate('CodEmp;DtePed;NumPed',VarArrayOf([CodEmp,DtePed,NumPed]),[LoPartialKey]);

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPfo.ppHeaderBand1BeforePrint(Sender: TObject);
var
EndFor,FonFor,FaxFor : string;
begin
  inherited;

  if FileExists('C:\Emerion\Print.bmp') then
     p2Imagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     p2Imagem.Picture.Bitmap.FreeImage;

  p2ApeEmp.Caption := GApeEmp;
  p2NomEmp.Caption := GRazEmp;
  p2EndEmp.Caption := GEndEmp;
  p2RefEmp.Caption := GRefEmp;
  p2CgcEmp.Caption := GCgcEmp;
  p2InsEmp.Caption := GInsEmp;

  p2Titulo.Caption := 'Pedido de Compra No. '+ fNumZeros(IntToStr(CmpPe2NumPed.Value),7)+ ' - ' + FormatDateTime('dd/mm/yyyy',CmpPe2DtePed.Value)+ ' ( Fornecedor ) ';

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinFor.EndFor,'+
               '        FinFor.NumFor,'+
               '        FinFor.BaiFor,'+
               '        FinFor.CidFor,'+
               '        FinFor.SigUfe,'+
               '        FinFor.PrtFor,'+
               '        FinFor.FonFor,'+
               '        FinFor.PrfFor,'+
               '        FinFor.FaxFor From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpPedCodFor.Value));
       Open;

       EndFor := FieldbyName('EndFor').AsString;

       if Trim( FieldbyName('NumFor').AsString ) <> '' then
          EndFor := EndFor +  ','  + Trim( FieldbyName('NumFor').AsString ) + ' - '+ Trim ( FieldbyName('BaiFor').AsString )
       else
          EndFor := EndFor + ' - ' + Trim( FieldbyName('BaiFor').AsString );

       if Trim( FieldbyName('PrtFor').AsString ) <> '' then
          FonFor := '( '+ Trim(FieldbyName('PrtFor').AsString)+' ) '+FieldbyName('FonFor').AsString
       else
          FonFor := FieldbyName('FonFor').AsString;

       if Trim( FieldbyName('PrfFor').AsString ) <> '' then
          FonFor := '( '+ Trim(FieldbyName('PrfFor').AsString)+' ) '+FieldbyName('FaxFor').AsString
       else
          FonFor := FieldbyName('FaxFor').AsString;

       p2EndFor.Caption := EndFor;
       p2FonFor.Caption := FonFor;
       p2FaxFor.Caption := FaxFor;
       p2BaiFor.Caption := FieldbyName('BaiFor').AsString;
       p2CidFor.Caption := FieldbyName('CidFor').AsString;
       p2SigUfe.Caption := FieldbyName('SigUfe').AsString;

  end;

  p2CodFor.Caption := IntToStr( CmpPedCodFor.Value );
  p2NomFor.Caption := CmpPedApeFor.Value;
  p2NomCon.Caption := CmpPedNomCon.Value;
  p2NomUsu.Caption := CmpPedLogUsu.Value;

end;

procedure TfmManPfo.ppDetailBand1BeforePrint(Sender: TObject);
begin
  inherited;

  p2Memo.Lines.Clear;
  p2Memo.Lines.Add(CmpPe2DesPe2.Value);

  if Trim( CmpPe2CodPfo.Value ) <> '' then
     p2Memo.Lines.Add(CmpPe2CodClp.Value+ '-' +CmpPe2CodGru.Value+ '.' +CmpPe2CodSub.Value+ '.' +CmpPe2CodPro.Value+ ' - ' +CmpPe2CodPfo.Value)
  else
     p2Memo.Lines.Add(CmpPe2CodClp.Value+ '-' +CmpPe2CodGru.Value+ '.' +CmpPe2CodSub.Value+ '.' +CmpPe2CodPro.Value);

  if Trim( CmpPe2ObsPe2.Value ) <> '' then p2Memo.Lines.Add(CmpPe2ObsPe2.Value);

end;

procedure TfmManPfo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #16 then begin {Ctrl+P - Historico da Requisição}

     if CmpPedNumRes.Value > 0 then begin

        if (Fo1Req = CmpPedCodFor.Value) or (Fo2Req = CmpPedCodFor.Value) then begin

           try

              fmPsqHre := TfmPsqHre.Create(Self);

              fmPsqHre.PedLog.Close;

              if Fo1Req = CmpPedCodFor.Value then
                 fmPsqHre.PedLog.DatabaseName := 'Emerion_01'
              else
                 fmPsqHre.PedLog.DatabaseName := 'Emerion_02';

              fmPsqHre.PedLog.Close;
              fmPsqHre.PedLog.Params[0].AsInteger  := CmpPedEmpRes.Value;
              fmPsqHre.PedLog.Params[1].AsDateTime := CmpPedDteRes.Value;
              fmPsqHre.PedLog.Params[2].AsInteger  := CmpPedNumRes.Value;
              fmPsqHre.PedLog.Open;

              fmPsqHre.ShowModal;

           finally

              FreeAndNil(fmPsqHre);

           end;
        end;
     end;   
  end;

  if key = #6 then begin {Vencimentos Ctrl+F}

     CodEmp := CmpPedCodEmp.Value;
     DtePed := CmpPedDtePed.Value;
     NumPed := CmpPedNumPed.Value;

     sFiltro := ' and CmpPed.CodEmp = '+ QuotedStr(IntToStr(CmpPedCodEmp.Value))+
                ' and CmpPed.DtePed = '+ QuotedStr(fDateToSQL(CmpPedDtePed.Value))+
                ' and CmpPed.NumPed = '+ QuotedStr(IntToStr(CmpPedNumPed.Value));

     with CmpPed,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;

     if CmpPedCodEmp.Value > 0 then begin

        try

           fmManPra := TfmManPra.Create(Self);

           fmManPra.CmpPed.Close;
           fmManPra.CmpPed.Params[0].AsInteger  := CmpPedCodEmp.Value;
           fmManPra.CmpPed.Params[1].AsDateTime := CmpPedDtePed.Value;
           fmManPra.CmpPed.Params[2].AsInteger  := CmpPedNumPed.Value;
           fmManPra.CmpPed.Open;

           fmManPra.CmpPe5.Close;
           fmManPra.CmpPe5.Params[0].AsInteger  := CmpPedCodEmp.Value;
           fmManPra.CmpPe5.Params[1].AsDateTime := CmpPedDtePed.Value;
           fmManPra.CmpPe5.Params[2].AsInteger  := CmpPedNumPed.Value;
           fmManPra.CmpPe5.Open;

           fmManPra.ShowModal;

        finally

           FreeAndNil(fmManPra);

        end;

        CmpPed.Close;
        CmpPed.Open;

     end;
  end;
end;

procedure TfmManPfo.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;

  p1TotPed.Caption := FormatFloat('###,###,##0.00',CmpPedTotPed.Value);
  p1TotAcc.Caption := FormatFloat('###,###,##0.00',CmpPedTotAcc.Value);
  p1TotGer.Caption := FormatFloat('###,###,##0.00',CmpPedTotGer.Value);

  p1ObsCnd.Caption := CmpPedObsCnd.Value;

  p1DpePed.Caption := FormatDatetime('dd/mm/yyyy',CmpPedDpePed.Value);

  if CmpPedPrePed.Value > 0 then
     p1PrePed.Caption := IntToStr( CmpPedPrePed.Value )
  else
     p1PrePed.Caption := '0';

  p1NomVen.Caption := CmpPedNomVen.Value;

  p1ObsPed.Lines.Clear;

  p1ObsPed.Lines.Add( CmpPedObsPed.Value );

end;

procedure TfmManPfo.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  inherited;

  p2TotPed.Caption := FormatFloat('###,###,##0.00',CmpPedTotPed.Value);
  p2TotAcc.Caption := FormatFloat('###,###,##0.00',CmpPedTotAcc.Value);
  p2TotGer.Caption := FormatFloat('###,###,##0.00',CmpPedTotGer.Value);

  p2ObsCnd.Caption := CmpPedObsCnd.Value;

  p2DpePed.Caption := FormatDatetime('dd/mm/yyyy',CmpPedDpePed.Value);

  if CmpPedPrePed.Value > 0 then
     p2PrePed.Caption := IntToStr( CmpPedPrePed.Value )
  else
     p2PrePed.Caption := '0';

  p2NomVen.Caption := CmpPedNomVen.Value;

  p2ObsPed.Lines.Clear;

  p2ObsPed.Lines.Add( CmpPedObsPed.Value );

end;

procedure TfmManPfo.DsPe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnTotMka.Caption := 'Markup do Item '+FormatFloat('##0.00',CmpPe2TotRen.Value)+' %';
end;

procedure TfmManPfo.FormClose(Sender: TObject; var Action: TCloseAction);
var
i     : Integer;
Found : integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManPed then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem Pedidos em Andamento. Por Favor Feche o Formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManPfo.CmpR08OBSNCMGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := CmpR08DesImp.Value;
end;

procedure TfmManPfo.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPfo := nil;
end;

procedure TfmManPfo.CmpPe2DSCPROGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Trim( CmpPe2CodClp.Value ) <> '' then Text := CmpPe2CodGru.Value+ '.' +CmpPe2CodSub.Value+ '.' +CmpPe2CodPro.Value+ ' - ' +CmpPe2DesPe2.Value;
end;

procedure TfmManPfo.EdPsqNumResExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNumRes.Text ) <> '' then begin

     EdPsqNumPed.Clear;  
     EdPsqCodEmp.Clear;
     EdPsqNomEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqApeFor.Clear;

     EdPsqDtePed1.Clear;
     EdPsqDtePed2.Clear;
     EdPsqDtrPed1.Clear;
     EdPsqDtrPed2.Clear;
     EdPsqDpePed1.Clear;
     EdPsqDpePed2.Clear;

     EdPsqTotPed1.Value := 0;
     EdPsqTotPed2.Value := 0;

  end;
end;

procedure TfmManPfo.EnviarPedidos(CodOpe: integer);
begin
   if CmpPe2CodEmp.Value > 0 then begin

      if Trim(CmpPedModPfa.Value) <> 'Importacao' then begin

        grPe21.ColumnByFieldName('OBSNCM').Visible := False;
        grPe21.ColumnByFieldName('IDEPRO').Visible := False;
        grPe21.ColumnByFieldName('VALVEN').Visible := False;
        grPe21.ColumnByFieldName('TOTREN').Visible := False;
        grPe21.ColumnByFieldName('DULCMP').Visible := False;
        grPe21.ColumnByFieldName('QTDCMP').Visible := False;
        grPe21.ColumnByFieldName('QTDITE').Visible := False;
        grPe21.ColumnByFieldName('QTAITE').Visible := False;
        grPe21.ColumnByFieldName('QTRITE').Visible := False;
        grPe21.ColumnByFieldName('IMPPE2').Visible := False;
        grPe21.ColumnByFieldName('QTDEMB').Visible := False;
        grPe21.ColumnByFieldName('LIQPE2').Visible := False;
        grPe21.ColumnByFieldName('BRTPE2').Visible := False;
        grPe21.ColumnByFieldName('CUBPE2').Visible := False;
        grPe21.ColumnByFieldName('CXAPE2').Visible := False;
        grPe21.ColumnByFieldName('CBAEM1').Visible := False;
        grPe21.ColumnByFieldName('QTDEM1').Visible := False;                                                                                                
        grPe21.ColumnByFieldName('CBAEM2').Visible := False;
        grPe21.ColumnByFieldName('QTDEM2').Visible := False;
        grPe21.ColumnByFieldName('CBAEM3').Visible := False;
        grPe21.ColumnByFieldName('QTDEM3').Visible := False;                                                                                                

      end;
      
      with quSQL,SQL do begin

          Close;
          Text := ' Delete From CmpR08 Where SeqArq = '+ QuotedStr(SeqArq);
          ExecSQL;

      end;

      with quSQL,SQL do begin

          Close;
          Text := ' Insert Into CmpR08(SeqArq,CodEmp,CodFil,DtePed,NumPed,SeqPe2,LanEst,CodClp,CodGru,CodSub,CodPro,DesPe2,ClsIpi,CodPfo,QtpPe2,VlqPe2,CodUnd,ValVen,TotPe2,TotRen,IpiPe2,ImpPe2,LiqPe2,BrtPe2,CubPe2,CxaPe2)'+
                  ' Select '+ QuotedStr(SeqArq) + ',' +
                  '        CmpPe2.CodEmp,'+
                  '        CmpPed.CodFil,'+
                  '        CmpPe2.DtePed,'+
                  '        CmpPe2.NumPed,'+
                  '        CmpPe2.SeqPe2,'+
                  '        CmpPed.LanEst,'+
                  '        CmpPe2.CodClp,'+
                  '        CmpPe2.CodGru,'+
                  '        CmpPe2.CodSub,'+
                  '        CmpPe2.CodPro,'+
                  '        CmpPe2.DesPe2,'+
                  '        CmpPe2.ClsIpi,'+
                  '        CmpPe2.CodPfo,'+
                  '        CmpPe2.QtpPe2,'+
                  '        CmpPe2.VlqPe2,'+
                  '        CmpPe2.CodUnd,'+
                  '        CmpPe2.ValVen,'+
                  '        CmpPe2.TotPe2,'+
                  '        CmpPe2.TotRen,'+
                  '        CmpPe2.IpiPe2,'+
                  '        CmpPe2.ImpPe2,'+
                  '        CmpPe2.LiqPe2,'+
                  '        CmpPe2.BrtPe2,'+
                  '        CmpPe2.CubPe2,'+
                  '        CmpPe2.CxaPe2'+
                  ' From CmpPe2,CmpPed'+
                  ' Where CmpPe2.CodEmp = CmpPed.CodEmp'+
                  '   and CmpPe2.DtePed = CmpPed.DtePed'+
                  '   and CmpPe2.NumPed = CmpPed.NumPed'+
                  '   and CmpPe2.CodEmp = :CodEmp'+
                  '   and CmpPe2.DtePed = :DtePed'+
                  '   and CmpPe2.NumPed = :NumPed';

          with Params do begin

               Params[0].AsInteger  := CmpPedCodEmp.Value;
               Params[1].AsDateTime := CmpPedDtePed.Value;
               Params[2].AsInteger  := CmpPedNumPed.Value;

          end;

          ExecSQL;

      end;

      with CmpR08,SQL do begin

          Close;
          Text := ' Select CmpR08.*,'+
                  '        EstPro.IdePro,'+
                  '        EstPro.QtdEmb,'+
                  '        EstPro.DesImp,'+
                  '        EstPro.DesIm2,'+
                  '        EstPro.DscImp,'+
                  '        EstPro.DsrImp,'+
                  '        CmpR08.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || CmpR08.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || CmpR08.CodPro as CodIte'+
                  ' From CmpR08 LEFT JOIN EstPro ON (CmpR08.CodClp = EstPro.CodClp)'+
                  '                             AND (CmpR08.CodGru = EstPro.CodGru)'+
                  '                             AND (CmpR08.CodSub = EstPro.CodSub)'+
                  '                             AND (CmpR08.CodPro = EstPro.CodPro)'+
                  ' Where CmpR08.SeqArq = '+ QuotedStr(SeqArq) +
                  ' Order by CmpR08.SeqPe2';
          Open;

      end;

      with quSQL,SQL do begin

          Close;
          Text := ' Delete From CmpR08 Where SeqArq = '+ QuotedStr(SeqArq);
          ExecSQL;

      end;

      grPe21.FullExpand;

      if CodOpe = 1 then
         Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Itens do Pedido de Compra No. '+ fNumZeros(IntToStr(CmpPe2NumPed.Value),5) +'.htm', grPe21.SaveToHTML);

      if CodOpe = 2 then
         Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Itens do Pedido de Compra No. '+ fNumZeros(IntToStr(CmpPe2NumPed.Value),5) +'.xls', grPe21.SaveToXLS);

      if CodOpe = 3 then
         Save('xml', 'XML File (*.xml)|*.xml', 'Itens do Pedido de Compra No. '+ fNumZeros(IntToStr(CmpPe2NumPed.Value),5) +'.xml', grPe21.SaveToXML);

   end;
end;

procedure TfmManPfo.HTMLClick(Sender: TObject);
begin
  inherited;
  EnviarPedidos(1);
end;

procedure TfmManPfo.ExcelClick(Sender: TObject);
begin
  inherited;
  EnviarPedidos(2);
end;

procedure TfmManPfo.XMLClick(Sender: TObject);
begin
  inherited;
  EnviarPedidos(3);
end;

procedure TfmManPfo.CmpR08OBSNC2GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := CmpR08DesIm2.Value;
end;

end.
