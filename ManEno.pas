unit ManEno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppDB, ppBands, ppClass, ppStrtch, ppMemo,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, dxColorEdit, dxColorDateEdit, dxDBColorEdit, dxDBColorPickEdit,
  dxDBColorDateEdit, dxDBColorCurrencyEdit;

type
  TfmManEno = class(TfmPadrao)
    FatDev: TwwQuery;
    FatDv2: TwwQuery;
    DsDv2: TwwDataSource;
    DsDev: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteEn1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteEn2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqCli: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    rgOrdem: TRadioGroup;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grDev: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    grDv2: ThGrid;
    quSql: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    pnApeCli: TPanel;
    pnApeVen: TPanel;
    Label13: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    bIncluir: TSpeedButton;
    bEditar: TSpeedButton;
    bImprimir: TSpeedButton;
    bExcluir: TSpeedButton;
    pnSitDev: TPanel;
    UpDev: TUpdateSQL;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
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
    FatDevICMFRT: TFloatField;
    FatDevBSICMF: TFloatField;
    FatDevBAICMF: TFloatField;
    FatDevTOICMF: TFloatField;
    FatDevICMSEG: TFloatField;
    FatDevBSICMS: TFloatField;
    FatDevBAICMS: TFloatField;
    FatDevTOICMS: TFloatField;
    FatDevICMDES: TFloatField;
    FatDevBSICMD: TFloatField;
    FatDevBAICMD: TFloatField;
    FatDevTOICMD: TFloatField;
    FatDevIPIFRT: TFloatField;
    FatDevBSIPIF: TFloatField;
    FatDevBAIPIF: TFloatField;
    FatDevTOIPIF: TFloatField;
    FatDevIPISEG: TFloatField;
    FatDevBSIPIS: TFloatField;
    FatDevBAIPIS: TFloatField;
    FatDevTOIPIS: TFloatField;
    FatDevIPIDES: TFloatField;
    FatDevBSIPID: TFloatField;
    FatDevBAIPID: TFloatField;
    FatDevTOIPID: TFloatField;
    FatDevTOTGER: TFloatField;
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
    FatDevSITDEV: TStringField;
    FatDevCODCLI: TIntegerField;
    FatDevNOMCLI: TStringField;
    FatDevCODVEN: TIntegerField;
    FatDevAPEVEN: TStringField;
    FatDevNOMVEN: TStringField;
    FatDevLOGUSU: TStringField;
    FatDevDSCPFA: TStringField;
    FatDevUFERES: TStringField;
    FatDevHRERES: TStringField;
    FatDevAPECLI: TStringField;
    FatDv2CODEMP: TIntegerField;
    FatDv2DTERES: TDateTimeField;
    FatDv2NUMRES: TIntegerField;
    FatDv2SEQLIB: TIntegerField;
    FatDv2SEQFAT: TIntegerField;
    FatDv2SEQDEV: TIntegerField;
    FatDv2SEQDV2: TIntegerField;
    FatDv2CODEIT: TIntegerField;
    FatDv2CODCLP: TStringField;
    FatDv2CODGRU: TStringField;
    FatDv2CODSUB: TStringField;
    FatDv2CODPRO: TStringField;
    FatDv2CODTAM: TStringField;
    FatDv2CODCOR: TStringField;
    FatDv2DESDV2: TStringField;
    FatDv2OBSDV2: TStringField;
    FatDv2CODST1: TStringField;
    FatDv2CODST2: TStringField;
    FatDv2CODUND: TStringField;
    FatDv2REFDV2: TStringField;
    FatDv2LIQDV2: TFloatField;
    FatDv2BRTDV2: TFloatField;
    FatDv2LINDV2: TIntegerField;
    FatDv2VLUDV2: TFloatField;
    FatDv2VCHDV2: TFloatField;
    FatDv2VREDV2: TFloatField;
    FatDv2VCPDV2: TFloatField;
    FatDv2VPRDV2: TFloatField;
    FatDv2DSRDV2: TFloatField;
    FatDv2VDRDV2: TFloatField;
    FatDv2VLQDV2: TFloatField;
    FatDv2IPIDV2: TFloatField;
    FatDv2CLSIPI: TStringField;
    FatDv2ICMDV2: TFloatField;
    FatDv2BASIPI: TFloatField;
    FatDv2TOTIPI: TFloatField;
    FatDv2BASICM: TFloatField;
    FatDv2TOTICM: TFloatField;
    FatDv2BASSUB: TFloatField;
    FatDv2TOTSUB: TFloatField;
    FatDv2TOTDV2: TFloatField;
    FatDv2TOTGE2: TFloatField;
    FatDv2TOTLIQ: TFloatField;
    FatDv2TOTBRT: TFloatField;
    FatDv2TOTDSR: TFloatField;
    FatDv2TOTPIS: TFloatField;
    FatDv2TOTCOF: TFloatField;
    FatDv2CODSTR: TStringField;
    FatDv2TIPSTR: TStringField;
    FatDv2REGIPI: TStringField;
    FatDv2TIPIPI: TStringField;
    FatDv2TRBIPI: TStringField;
    FatDv2REDIPI: TFloatField;
    FatDv2BSCIPI: TFloatField;
    FatDv2REGICM: TStringField;
    FatDv2TIPICM: TStringField;
    FatDv2TRBICM: TStringField;
    FatDv2REDICM: TFloatField;
    FatDv2BSCICM: TFloatField;
    FatDv2INCREV: TFloatField;
    FatDv2INCFIN: TFloatField;
    FatDv2FLASEQ: TStringField;
    FatDv2NRONFS: TIntegerField;
    FatDv2SEQNFS: TIntegerField;
    FatDv2NRODV2: TIntegerField;
    FatDv2CODVWA: TStringField;
    FatDv2FLGREQ: TStringField;
    FatDv2FLGDUP: TStringField;
    FatDv2QTDDV2: TFloatField;
    FatDv2ULTQTD: TFloatField;
    FatDv2SLDDV2: TFloatField;
    FatDevQTDDEV: TIntegerField;
    FatDv2QTPDV2: TFloatField;
    FatDv2SEQPE2: TIntegerField;
    FatDv2NROPE2: TIntegerField;
    FatDevBASCOM: TFloatField;
    FatDevTOTCOM: TFloatField;
    FatDv2BASCOM: TFloatField;
    FatDv2TOTCOM: TFloatField;
    FatDv2SEQRE2: TIntegerField;
    FatDevFLGDIF: TStringField;
    FatDevFLGATU: TStringField;
    FatDevFLGDEV: TStringField;
    FatDv2SEQNFD: TIntegerField;
    FatDv2SEQDV3: TIntegerField;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    FatDv2QTDRMA: TFloatField;
    FatDv2NUMNFS: TIntegerField;
    FatDv2TOTGER: TFloatField;
    FatDv2APECLI: TStringField;
    FatDv2APEVEN: TStringField;
    FatDv2OBSMDV: TMemoField;
    FatDevMODPFA: TStringField;
    FatDevFLGNFS: TStringField;
    FatDevHRCDEV: TStringField;
    FatDevDTCDEV: TDateTimeField;
    FatDevUSUCFT: TIntegerField;
    FatDevOBSCFT: TMemoField;
    Label8: TLabel;
    EdPsqNumNfs: TdxColorEdit;
    Label11: TLabel;
    Panel1: TPanel;
    pnFlgDif: TPanel;
    Label1: TLabel;
    EdPsqNfsCli: TdxColorEdit;
    pnDadosNota: TPanel;
    Label15: TLabel;
    Label12: TLabel;
    EdCodCfo: TdxDBColorEdit;
    EdFlgSin: TdxDBCheckEdit;
    FatDevFLGSIN: TStringField;
    Label14: TLabel;
    EdFlgFsc: TdxDBColorPickEdit;
    FatDevFLGFSC: TStringField;
    EdDteDev: TdxDBColorDateEdit;
    Label19: TLabel;
    pnImpostos: TPanel;
    Label21: TLabel;
    EdIcmDv2: TdxDBColorCurrencyEdit;
    UpDv2: TUpdateSQL;
    FatDevSERNOT: TStringField;
    Label24: TLabel;
    EdSerNot: TdxDBColorEdit;
    FatDevMODDEV: TStringField;
    FatDevOB1DEV: TStringField;
    FatDevOB2DEV: TStringField;
    FatDevOB3DEV: TStringField;
    FatDevOB4DEV: TStringField;
    FatDevOB5DEV: TStringField;
    FatDevOB6DEV: TStringField;
    FatDevOB7DEV: TStringField;
    FatDevOB8DEV: TStringField;
    ppHeaderBand1: TppHeaderBand;
    ppLabel22: TppLabel;
    ppLabel1: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel2: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    TppDetailBand1: TppDetailBand;
    ppDesDv2: TppDBText;
    ppUltQtd: TppDBText;
    ppVlqDv2: TppDBText;
    ppTotGe2: TppDBText;
    ppQtdRMA: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel9: TppLabel;
    ppTotGer: TppDBText;
    ppLabel10: TppLabel;
    ppObsMdv: TppDBMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppApeVen: TppDBText;
    ppApeCli: TppDBText;
    ppNumRes: TppDBText;
    ppNomEmp: TppDBText;
    ppLabel5: TppLabel;
    ppDteRes: TppDBText;
    ppLabel8: TppLabel;
    ppNumNfs: TppDBText;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    Label23: TLabel;
    EdNfscli: TdxDBColorEdit;
    FatDv2CODTXF: TStringField;
    FatDv2APEEMP: TStringField;
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
    FatDv2VPFDV2: TFloatField;
    FatDv2CODCFO: TStringField;
    FatDv2TRBSUB: TStringField;
    FatDv2ICMSUB: TFloatField;
    FatDv2MRGSUB: TFloatField;
    FatDv2BASESB: TFloatField;
    FatDv2VPFANT: TFloatField;
    FatDv2CODITE: TStringField;
    ppDBText1: TppDBText;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqNumResExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPsqNumNfsExit(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure pnDadosNotaExit(Sender: TObject);
    procedure grDevKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnImpostosExit(Sender: TObject);
    procedure EdPsqNfsCliExit(Sender: TObject);
    procedure grDv2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsDevDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes: TDateTime;
    sBase, sFiltro, sOrdem, Permissao, psaida: string;
    CodEmp, NumRes, SeqLib, SeqFat, SeqDev, SeqDv2: integer;
  end;

var
  Linha: integer;
  fmManEno: TfmManEno;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbacesso, Bbmensag, ManGDB, PsqEmp, PsqCli,
  PsqVen, ManPri, AuxPsq, ManEn1, FPreview, ManCdv;

{$R *.DFM}

procedure TfmManEno.FormCreate(Sender: TObject);
begin
  inherited;

  psaida := 'Nao';

  EdPsqDteEn1.Date := Date;
  EdPsqDteEn2.Date := Date;

  FatDev.Close;
  FatDev.Params[0].AsDateTime := EdPsqDteEn1.Date;
  FatDev.Open;

  sBase := ' Select FatDev.*,' +
    '        PedRes.CodCli,' +
    '        FinCli.NomCli,' +
    '        FinCli.ApeCli,' +
    '        PedRes.CodVen,' +
    '        FinVen.ApeVen,' +
    '        FinVen.NomVen,' +
    '        GerUsu.LogUsu,' +
    '        EstPfa.DscPfa,' +
    '        PedRes.UfeRes,' +
    '        PedRes.HreRes' +
    ' From FatDev INNER JOIN FatPed ON (FatDev.CodEmp = FatPed.CodEmp)' +
    '                              AND (FatDev.DteRes = FatPed.DteRes)' +
    '                              AND (FatDev.NumRes = FatPed.NumRes)' +
    '                              AND (FatDev.SeqLib = FatPed.SeqLib)' +
    '                              AND (FatDev.SeqFat = FatPed.SeqFat)' +
    '              LEFT JOIN PedLib ON (FatPed.CodEmp = PedLib.CodEmp)' +
    '                              AND (FatPed.DteRes = PedLib.DteRes)' +
    '                              AND (FatPed.NumRes = PedLib.NumRes)' +
    '                              AND (FatPed.SeqLib = PedLib.SeqLib)' +
    '              LEFT JOIN PedRes ON (PedLib.CodEmp = PedRes.CodEmp)' +
    '                              AND (PedLib.DteRes = PedRes.DteRes)' +
    '                              AND (PedLib.NumRes = PedRes.NumRes)' +
    '              LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)' +
    '              LEFT JOIN FinVen ON (PedRes.CodVen = FinVen.CodVen)' +
    '              LEFT JOIN EstPfa ON (PedRes.CodPfa = EstPfa.CodPfa)' +
    '                              AND (PedRes.TipPfa = EstPfa.TipPfa)' +
    '              LEFT JOIN GerUsu ON (FatDev.CodUsu = GerUsu.CodUsu)';

end;

procedure TfmManEno.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

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

  sFiltro := '';

  case rgOrdem.Itemindex of
    0: sOrdem := ' Order by FatDev.CodCli,FatDev.NumRes';
    1: sOrdem := ' Order by FatDev.CodVen,FatDev.NumRes';
    2: sOrdem := ' Order by FatDev.DteDev,FatDev.NumRes';
    3: sOrdem := ' Order by FatDev.NumRes';
    4: sOrdem := ' Order by FatDev.NumNfs';
  end;

  if Trim(EdPsqNumRes.Text) <> '' then
    sFiltro := sFiltro + ' Where FatDev.NumRes = ''' + EdPsqNumRes.Text + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and FatDev.CodEmp = ''' + EdPsqCodEmp.Text + ''''
    else
      sFiltro := ' Where FatDev.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  end;

  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.CodCli = ''' + EdPsqCodCli.Text + ''''
    else
      sFiltro := ' Where PedRes.CodCli = ''' + EdPsqCodCli.Text + '''';

  end;

  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and PedRes.CodVen = ''' + EdPsqCodVen.Text + ''''
    else
      sFiltro := ' Where PedRes.CodVen = ''' + EdPsqCodVen.Text + '''';

  end;

  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and FatDev.NroNfs = ''' + EdPsqNroNfs.Text + ''''
    else
      sFiltro := ' Where FatDev.NroNfs = ''' + EdPsqNroNfs.Text + '''';

  end;

  if Trim(EdPsqNfsCli.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and FatDev.NfsCli = ' + QuotedStr(EdPsqNfsCli.Text)
    else
      sFiltro := ' Where FatDev.NfsCli = ' + QuotedStr(EdPsqNfsCli.Text);

  end;

  if Trim(EdPsqNumNfs.Text) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and FatDev.NumNfs = ''' + EdPsqNumNfs.Text + ''''
    else
      sFiltro := ' Where FatDev.NumNfs = ''' + EdPsqNumNfs.Text + '''';

  end;

  if Trim(fLimpaStr(EdPsqDteEn1.Text)) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteEn1.Date) + ''''
    else
      sFiltro := ' Where FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteEn1.Date) + '''';

  end;

  if Trim(fLimpaStr(EdPsqDteEn2.Text)) <> '' then
  begin

    if pos('Where', sFiltro) > 0 then
      sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteEn2.Date) + ''''
    else
      sFiltro := ' Where FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteEn2.Date) + '''';

  end;

  with FatDev, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;

  grDev.SetFocus;

end;

procedure TfmManEno.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim(EdPsqCodEmp.Text) <> '' then
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
      Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('ApeEmp').AsString) <> '' then
        EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
      else
      begin

        EdPsqApeEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfmManEno.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomCli From FinCli Where CodCli = ''' + EdPsqCodCli.Text + '''';
      Open;

      EdPsqNomCli.Text := quSql.FieldByName('NomCli').AsString;
    end;

  end
  else
    EdPsqNomCli.Text := '';
end;

procedure TfmManEno.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
      EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManEno.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;

    EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmManEno.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqCli := TfmPsqCli.Create(Self);

      fmPsqCli.ShowModal;

      if fmPsqCli.CodCli > 0 then
      begin

        EdPsqNomCli.Text := fmPsqCli.NomCli;
        EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);

      end;

    finally

      FreeAndNil(fmPsqCli);

    end;
  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'C';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodCli > 0 then
      begin

        EdPsqNomCli.Text := fmAuxPsq.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmManEno.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomVen From FinVen Where CodVen = ''' + EdPsqCodVen.Text + '''';
      Open;

      EdPsqNomVen.Text := quSql.FieldByName('NomVen').AsString;
    end;

  end
  else
    EdPsqNomVen.Text := '';
end;

procedure TfmManEno.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqVen := TfmPsqVen.Create(Self);

      fmPsqVen.ShowModal;

      if fmPsqVen.CodVen > 0 then
      begin

        EdPsqNomVen.Text := fmPsqVen.NomVen;
        EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

      end;

    finally

      FreeAndNil(fmPsqVen);

    end;
  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'V';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodVen > 0 then
      begin

        EdPsqNomVen.Text := fmAuxPsq.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmManEno.BbPsqCliClick(Sender: TObject);
begin

  try

    fmPsqCli := TfmPsqCli.Create(Self);

    fmPsqCli.ShowModal;

    if fmPsqCli.CodCli > 0 then
    begin

      EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);
      EdPsqNomCli.Text := fmPsqCli.NomCli;

    end;

  finally

    FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmManEno.BbPsqVenClick(Sender: TObject);
begin

  try

    fmPsqVen := TfmPsqVen.Create(Self);

    fmPsqVen.ShowModal;

    if fmPsqVen.CodVen > 0 then
    begin

      EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);
      EdPsqNomVen.Text := fmPsqVen.NomVen;

    end;

  finally

    FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmManEno.EdPsqNumResExit(Sender: TObject);
begin
  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    EdPsqNumNfs.Clear;
    EdPsqNroNfs.Clear;
    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;

    EdPsqDteEn1.Clear;
    EdPsqDteEn2.Clear;

  end;
end;

procedure TfmManEno.FormShow(Sender: TObject);
begin
  inherited;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
    Permissao := fAcesso('FAT02040101')
  else
    Permissao := 'SSSSS';

  if copy(Permissao, 1, 1) = 'N' then
    bIncluir.Enabled := False;
  if copy(Permissao, 2, 1) = 'N' then
    bEditar.Enabled := False;
  if copy(Permissao, 3, 1) = 'N' then
    bExcluir.Enabled := False;

  EdPsqNumRes.SetFocus;

end;

procedure TfmManEno.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEno.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEno := nil;
end;

procedure TfmManEno.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManEno.bEditarClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if copy(Permissao, 2, 1) = 'S' then
    begin

      Found := -1;

      for i := 0 to Screen.FormCount - 1 do
      begin

        if Screen.Forms[i] is TfmManEn1 then
          Found := i;

      end;

      if Found >= 0 then
      begin

        fmManEn1.WindowState := wsNormal;
        fmManEn1.BringToFront;

      end
      else
      begin

        if FatDevCodEmp.Value > 0 then
        begin

          if FatDevSitDev.Value = 'Concluido' then
          begin

            FatDev.Edit;

            FatDevSitDev.Value := 'Processo de Alteracao';

            with FatDev do
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

                if FatDev.State <> dsBrowse then
                  FatDev.CancelUpdates;

                grDev.SetFocus;

                raise;

              end;

              CommitUpdates; {sucesso!, limpa o cache...}

            end;
          end;

          CodEmp := FatDevCodEmp.Value;
          DteRes := FatDevDteRes.Value;
          NumRes := FatDevNumRes.Value;
          SeqLib := FatDevSeqLib.Value;
          SeqFat := FatDevSeqFat.Value;
          SeqDev := FatDevSeqDev.Value;

          fmManEn1 := TfmManEn1.Create(Self);
          fmManEn1.Show;

        end;
      end;

    end
    else
      fMsgErro('Usuario Não Possui Acesso a Opcão.', nil);

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManEno.bIncluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if copy(Permissao, 1, 1) = 'S' then
    begin

      Found := -1;

      for i := 0 to Screen.FormCount - 1 do
      begin

        if Screen.Forms[i] is TfmManEn1 then
          Found := i;

      end;

      if Found >= 0 then
      begin

        fmManEn1.WindowState := wsNormal;
        fmManEn1.BringToFront;

      end
      else
      begin

        CodEmp := 0;
        NumRes := 0;
        SeqLib := 0;
        SeqFat := 0;
        SeqDev := 0;

        fmManEn1 := TfmManEn1.Create(Self);
        fmManEn1.Show;

      end;

    end
    else
      fMsgErro('Usuario Não Possui Acesso a Opcão.', nil);

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManEno.bExcluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if copy(Permissao, 3, 1) = 'S' then
    begin

      Found := -1;

      for i := 0 to Screen.FormCount - 1 do
      begin

        if Screen.Forms[i] is TfmManEn1 then
          Found := i;

      end;

      if Found >= 0 then
      begin

        fmManEn1.WindowState := wsNormal;
        fmManEn1.BringToFront;

      end
      else
      begin

        if FatDevNumRes.Value > 0 then
        begin

          if FatDevSitDev.Value <> 'Devolvido' then
          begin

            if fMsg('Confirma a Exclusão do Processo de Devolução ?', 'O') then
            begin

              FatDev.Delete;

              with FatDev do
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

                  if FatDev.State <> dsBrowse then
                    FatDev.CancelUpdates;

                  grDev.SetFocus;

                  raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

              end;

              FatDev.Close;
              FatDev.Open;

              grDev.SetFocus;

            end;

          end
          else
          begin

            if FatDevSitDev.Value <> 'Cancelado' then
            begin

              try

                fmManCdv := TfmManCdv.Create(Self);

                fmManCdv.ShowModal;

              finally

                FreeAndNil(fmManCdv);

              end;

            end
            else
              fmsgErro('Operação não Pode ser Realizada. Devolução já Cancelada.', nil);

          end;
        end;
      end;

    end
    else
      fMsgErro('Usuario Não Possui Acesso a Opcão.', nil);

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManEno.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
  begin

    if pnImpostos.Visible then
    begin

      psaida := 'Sim';

      if FatDv2.State <> dsBrowse then
        FatDv2.CancelUpdates;

      pnImpostos.Visible := False;

      psaida := 'Nao';

    end
    else
    begin

      if pnDadosNota.Visible then
      begin

        psaida := 'Sim';

        if FatDev.State <> dsBrowse then
          FatDev.CancelUpdates;

        pnDadosNota.Visible := False;

        psaida := 'Nao';

      end
      else
        close;

    end;
  end;

  if key = 114 then
    bEditar.OnClick(Sender);

  if key = 115 then
    bIncluir.OnClick(Sender);

  if key = 116 then
    bImprimir.OnClick(Sender);

  if key = 117 then
    bExcluir.OnClick(Sender);

end;

procedure TfmManEno.bImprimirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManEn1 then
      Found := i;

  end;

  if Found >= 0 then
  begin

    fmManEn1.WindowState := wsNormal;
    fmManEn1.BringToFront;

  end
  else
  begin

    if FatDv2CodEmp.Value > 0 then
    begin

      try

        ppReport.DeviceType := 'Screen';
        fmPreview := TfmPreview.Create(fmManEno);
        fmPreview.ppViewer.Report := ppReport;
        ppReport.PrintToDevices;
        fmPreview.ShowModal;

        if Assigned(ppReport.AfterPrint) then
          ppReport.AfterPrint(Sender);

      finally

        FreeAndNil(fmPreview);

      end;
    end;
  end;
end;

procedure TfmManEno.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManEn1 then
      Found := i;

  end;

  if Found >= 0 then
    fmsgErro('Existem Devoluções em Andamento. Por Favor Feche o Formulario.', nil)
  else
    Action := CaFree;

end;

procedure TfmManEno.EdPsqNumNfsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNumNfs.Text) <> '' then
  begin

    EdPsqNumRes.Clear;
    EdPsqNroNfs.Clear;
    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;

    EdPsqDteEn1.Clear;
    EdPsqDteEn2.Clear;

  end;
end;

procedure TfmManEno.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    EdPsqNumNfs.Clear;
    EdPsqNfsCli.Clear;
    EdPsqNumRes.Clear;
    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;

    EdPsqDteEn1.Clear;
    EdPsqDteEn2.Clear;

  end;
end;

procedure TfmManEno.pnDadosNotaExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then
  begin

    if fMsg('Confirma Alteração da CFOP ?', 'S') then
    begin

      CodEmp := FatDevCodEmp.Value;
      DteRes := FatDevDteRes.Value;
      NumRes := FatDevNumRes.Value;
      SeqLib := FatDevSeqLib.Value;
      SeqFat := FatDevSeqFat.Value;
      SeqDev := FatDevSeqDev.Value;

      with FatDev do
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

          if FatDev.State = dsBrowse then
            FatDev.Edit;

          EdFlgSin.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatDev.Close;
      FatDev.Open;

      FatDev.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqDev', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib, SeqFat, SeqDev]), [loPartialKey]);

      pnDadosNota.Visible := False;

      grDev.SetFocus;

    end
    else
      EdFlgSin.SetFocus;

  end;
end;

procedure TfmManEno.grDevKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then
  begin

    if not pnDadosNota.Visible then
    begin

      if FatDevCodEmp.Value > 0 then
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

        if not pnDadosNota.Visible then
        begin

          if GFlgAce = 'Nao' then
          begin

            pnDadosNota.Visible := True;

            FatDev.Edit;

            EdFlgSin.SetFocus;

          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManEno.pnImpostosExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then
  begin

    if fMsg('Confirma Alteração da Aliquota de ICMS ?', 'S') then
    begin

      CodEmp := FatDv2CodEmp.Value;
      DteRes := FatDv2DteRes.Value;
      NumRes := FatDv2NumRes.Value;
      SeqLib := FatDv2SeqLib.Value;
      SeqFat := FatDv2SeqFat.Value;
      SeqDev := FatDv2SeqDev.Value;
      SeqDv2 := FatDv2SeqDv2.Value;

      with FatDv2 do
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

          if FatDv2.State = dsBrowse then
            FatDv2.Edit;

          EdIcmDv2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatDv2.Close;
      FatDv2.Open;

      FatDv2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqDev;SeqDv2', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib, SeqFat, SeqDev, SeqDv2]), [loPartialKey]);

      FatDv2.Next;

      pnImpostos.Visible := False;

      grDv2.SetFocus;

    end
    else
      EdIcmDv2.SetFocus;
  end;
end;

procedure TfmManEno.EdPsqNfsCliExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNfsCli.Text) <> '' then
  begin

    EdPsqNumNfs.Clear;
    EdPsqNroNfs.Clear;
    EdPsqNumRes.Clear;
    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;

    EdPsqDteEn1.Clear;
    EdPsqDteEn2.Clear;

  end;
end;

procedure TfmManEno.grDv2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then
  begin

    if not pnImpostos.Visible then
    begin

      if not pnDadosNota.Visible then
      begin

        if FatDv2CodEmp.Value > 0 then
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

          if not pnImpostos.Visible then
          begin

            if GFlgAce = 'Nao' then
            begin

              pnImpostos.Visible := True;

              FatDv2.Edit;

              EdIcmDv2.SetFocus;

            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManEno.DsDevDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if FatDevFlgDif.Value = 'Sim' then
    pnFlgDif.Color := clRed
  else
    pnFlgDif.Color := clLime;

  pnApeCli.Caption := ' ' + FatDevApeCli.Value;
  pnApeVen.Caption := ' ' + FatDevlogUsu.Value;

  pnSitDev.Caption := FatDevSitDev.Value;

end;

end.
