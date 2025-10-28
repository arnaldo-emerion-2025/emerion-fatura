unit ManGer_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxDBColorCurrencyEdit, dxColorPickEdit,
  dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit, dxDBColorEdit;

type
  TfmManGer_NFE = class(TfmPadrao)
    FatGer: TwwQuery;
    DsGer: TwwDataSource;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteGr1: TdxColorDateEdit;
    EdPsqNumGer: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteGr2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotGr1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotGr2: TdxColorCurrencyEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqCli: TSpeedButton;
    BbPsqVen: TSpeedButton;
    BbPsqPfa: TSpeedButton;
    EdPsqNomPfa: TdxColorEdit;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqNomEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    Label1: TLabel;
    EdPsqUfeGer: TdxColorPickEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grGer: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    quSql: TwwQuery;
    bExcluir: TSpeedButton;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    pnHreGer: TPanel;
    pnCodCli: TPanel;
    FatGe2: TwwQuery;
    UpGer: TUpdateSQL;
    pnSitGer: TPanel;
    rgStatus: TRadioGroup;
    FatGe2DESGE2: TStringField;
    FatGe2QTPGE2: TFloatField;
    FatGe2VLUGE2: TFloatField;
    FatGe2ICMGE2: TFloatField;
    FatGe2IPIGE2: TFloatField;
    grGe2: ThGrid;
    DsGe2: TwwDataSource;
    FatGerNUMGER: TIntegerField;
    FatGerCODVEN: TIntegerField;
    FatGerCODPFA: TStringField;
    FatGerNRONFS: TIntegerField;
    FatGerTOTGER: TFloatField;
    FatGerNOMCLI: TStringField;
    pnTipPfa: TPanel;
    rgTipo: TRadioGroup;
    dbRes: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label11: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    FatGe2TOTITE: TFloatField;
    FatGerDTEFAT: TDateTimeField;
    FatGerCODEMP: TIntegerField;
    FatGerDTEGER: TDateTimeField;
    FatGerCODCLI: TIntegerField;
    FatGerTIPPFA: TStringField;
    FatGerSITGER: TStringField;
    FatGerOBCGER: TMemoField;
    FatGerATUEST: TStringField;
    FatGerINTFIN: TStringField;
    FatGerDTCGER: TDateTimeField;
    FatGerUSCGER: TIntegerField;
    FatGerHRCGER: TStringField;
    FatGerTENCLI: TStringField;
    FatGerENDCLI: TStringField;
    FatGerNUMCLI: TStringField;
    FatGerBAICLI: TStringField;
    FatGerCIDCLI: TStringField;
    FatGerUFECLI: TStringField;
    FatGerHREFAT: TStringField;
    FatGerUFEGER: TStringField;
    FatGerDSCREG: TFloatField;
    FatGerPERPIS: TFloatField;
    FatGerPERCOF: TFloatField;
    FatGerCODFIL: TIntegerField;
    FatGerQTDNFS: TIntegerField;
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
    FatGerREFCLI: TStringField;
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
    FatGerLANEST: TStringField;
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
    FatGerNROCOL: TStringField;
    FatGerFLGNFS: TStringField;
    FatGerFLGENV: TStringField;
    FatGe2CODEMP: TIntegerField;
    FatGe2DTEGER: TDateTimeField;
    FatGe2NUMGER: TIntegerField;
    FatGe2SEQGE2: TIntegerField;
    FatGe2CODGRU: TStringField;
    FatGe2CODSUB: TStringField;
    FatGe2CODPRO: TStringField;
    FatGe2NROGE2: TIntegerField;
    FatGe2CODITE: TStringField;
    pnImpostos: TPanel;
    Label14: TLabel;
    EdIcmGe2: TdxDBColorCurrencyEdit;
    UpGe2: TUpdateSQL;
    pnDadosNota: TPanel;
    Label15: TLabel;
    EdCodCfo: TdxDBColorEdit;
    Label13: TLabel;
    EdFlgSin: TdxDBCheckEdit;
    FatGerFLGSIN: TStringField;
    FatGerQTISER: TIntegerField;
    FatGerSEQSER: TIntegerField;
    FatGerBASISS: TFloatField;
    FatGerTOTISS: TFloatField;
    FatGerBASIS1: TFloatField;
    FatGerTOTIS1: TFloatField;
    FatGerTOTSER: TFloatField;
    FatGerTOTSE1: TFloatField;
    FatGerFLGIMP: TStringField;
    rgImpresso: TRadioGroup;
    pnSitImp: TPanel;
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
    FatGerID_FATDEV: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqPfaClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqNumGerExit(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqNumGerKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FatGe2CODITEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure grGe2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnImpostosExit(Sender: TObject);
    procedure pnDadosNotaExit(Sender: TObject);
    procedure grGerKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsGerDataChange(Sender: TObject; Field: TField);
    procedure bEditarClick(Sender: TObject);
    procedure FatGerAfterScroll(DataSet: TDataSet);
  private
    {Private declarations}
  public
    {Public declarations}
    DteGer: TDateTime;
    CodEmp, NumGer, SeqGe2: integer;
    sBase, sFiltro, sOrdem, pSaida: string;
    Cancelar: boolean;
  end;

var
  fmManGer_NFE: TfmManGer_NFE;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqCli, PsqVen,
  PsqPfa, ManPri, AuxPsq, ManSge_NFE, ManCno, ManNge_NFE2;

{$R *.DFM}

procedure TfmManGer_NFE.FormCreate(Sender: TObject);
begin
  inherited;
  cancelar := false;
  FatGer.Close;
  FatGer.Params[0].AsDateTime := Date;
  FatGer.Open;

  sBase := ' Select FatGer.*,' +
    '        FinCli.NomCli' +
    ' From FatGer,FinCli' +
    ' Where FatGer.CodCli = FinCli.CodCli';

  psaida := 'Nao';

end;

procedure TfmManGer_NFE.bbPesquisaClick(Sender: TObject);
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
    0: sOrdem := ' Order by FatGer.CodCli,FatGer.NroNfs';
    1: sOrdem := ' Order by FatGer.CodVen,FatGer.NroNfs';
    2: sOrdem := ' Order by FatGer.DteFat,FatGer.NroNfs';
    3: sOrdem := ' Order by FatGer.NroNfs';
    4: sOrdem := ' Order by FatGer.CodPfa,FatGer.TipPfa,FatGer.NroNfs';
  end;

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and FatGer.SitGer = ''' + 'Nao Concluido' + '''';
    1: sFiltro := sFiltro + ' and FatGer.SitGer = ''' + 'Faturado' + '''';
    2: sFiltro := sFiltro + ' and FatGer.SitGer = ''' + 'Cancelado' + '''';
  end;

  case rgImpresso.Itemindex of
    0: sFiltro := sFiltro + ' and FatGer.FlgImp = ''' + 'Sim' + '''';
    1: sFiltro := sFiltro + ' and FatGer.FlgImp = ''' + 'Nao' + '''';
  end;

  if Trim(EdPsqNroNfs.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.NroNfs = ''' + EdPsqNroNfs.Text + '''';
  if Trim(EdPsqNumGer.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.NumGer = ''' + EdPsqNumGer.Text + '''';
  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.CodCli = ''' + EdPsqCodCli.Text + '''';
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.CodVen = ''' + EdPsqCodVen.Text + '''';
  if Trim(EdPsqCodPfa.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.CodPfa = ''' + EdPsqCodPfa.Text + '''';
  if Trim(EdPsqUfeGer.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.UfeGer = ''' + EdPsqUfeGer.Text + '''';

  if Trim(fLimpaStr(EdPsqDteGr1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteFat >= ''' + fDateToSQL(EdPsqDteGr1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteGr2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteFat <= ''' + fDateToSQL(EdPsqDteGr2.Date) + '''';

  if EdPsqTotGr1.Value > 0 then
    sFiltro := sFiltro + ' and FatGer.TotGer >= ''' + fConvertValor(EdPsqTotGr1.Text) + '''';
  if EdPsqTotGr2.Value > 0 then
    sFiltro := sFiltro + ' and FatGer.TotGer <= ''' + fConvertValor(EdPsqTotGr2.Text) + '''';

  with FatGer, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;

  grGer.SetFocus;

  FatGe2.Active := False;
  FatGe2.Params.ParamByName('CODEMP').AsInteger  := FatGer.FieldByName('CODEMP').AsInteger;
  FatGe2.Params.ParamByName('DTEGER').AsDateTime := FatGer.FieldByName('DTEGER').AsDateTime;
  FatGe2.Params.ParamByName('NUMGER').AsInteger  := FatGer.FieldByName('NUMGER').AsInteger;
  FatGe2.Active := True;

end;

procedure TfmManGer_NFE.EdPsqCodEmpExit(Sender: TObject);
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
      Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('NomEmp').AsString) <> '' then
        EdPsqNomEmp.Text := FieldByName('NomEmp').AsString
      else
      begin

        EdPsqNomEmp.Text := '';

        fmsgErro('Empresa Informada n�o Encontrada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqNomEmp.Text := '';
end;

procedure TfmManGer_NFE.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmManGer_NFE.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
      EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManGer_NFE.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;

    EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmManGer_NFE.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManGer_NFE.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManGer_NFE.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManGer_NFE.BbPsqCliClick(Sender: TObject);
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

procedure TfmManGer_NFE.BbPsqVenClick(Sender: TObject);
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

procedure TfmManGer_NFE.EdPsqNumGerExit(Sender: TObject);
begin
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqNomEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;
    EdPsqCodPfa.Clear;
    EdPsqNomPfa.Clear;
    EdPsqUfeGer.Clear;

    EdPsqDteGr1.Clear;
    EdPsqDteGr2.Clear;

    EdPsqTotGr1.Value := 0;
    EdPsqTotGr2.Value := 0;

  end;
end;

procedure TfmManGer_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
  begin

    if pnImpostos.Visible then
    begin

      psaida := 'Sim';

      if FatGe2.State <> dsBrowse then
        FatGe2.CancelUpdates;

      pnImpostos.Visible := False;

      psaida := 'Nao';

    end
    else
    begin

      if pnDadosNota.Visible then
      begin

        psaida := 'Sim';

        if FatGer.State <> dsBrowse then
          FatGer.CancelUpdates;

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

procedure TfmManGer_NFE.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNroNfs.SetFocus;

end;

procedure TfmManGer_NFE.BbPsqPfaClick(Sender: TObject);
begin
  inherited;

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
        ' Order by EstPfa.DscPfa';
      Open;

    end;

    fmPsqPfa.ShowModal;

    if Trim(fmPsqPfa.CodPfa) <> '' then
    begin

      EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
      EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

    end;

  finally

    FreeAndNil(fmPsqPfa);

  end;
end;

procedure TfmManGer_NFE.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

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
          ' Where EstPfa.ModPfa <> :ModPfa' +
          ' Order by EstPfa.DscPfa';

        with Params do
        begin

          Params[0].AsString := 'Vendas';

        end;

        Open;

      end;

      fmPsqPfa.ShowModal;

      if Trim(fmPsqPfa.CodPfa) <> '' then
      begin

        EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
        EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

      end;

    finally

      FreeAndNil(fmPsqPfa);

    end;
  end;
end;

procedure TfmManGer_NFE.EdPsqNumGerKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManGer_NFE.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodPfa.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select DscPfa From EstPfa' +
        ' Where TipPfa = ''' + 'Saida' + '''' +
        '   and CodPfa = ''' + EdPsqCodPfa.Text + '''';
      Open;

      EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;

    end;

  end
  else
    EdPsqNomPfa.Text := '';
end;

procedure TfmManGer_NFE.bIncluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    Found := -1;

    for i := 0 to Screen.FormCount - 1 do
    begin

      if Screen.Forms[i] is TfmManNge_NFE2 then
        Found := i;

    end;

    if Found >= 0 then
    begin
      fmManNge_NFE2.WindowState := wsNormal;
      fmManNge_NFE2.BringToFront;

    end
    else
    begin

      sFiltro := ' and FatGer.CodEmp = :CodEmp' +
        ' and FatGer.DteGer = :DteGer' +
        ' and FatGer.NumGer = :NumGer';

      with FatGer, SQL do
      begin

        Close;
        Text := sBase + sFiltro;

        with Params do
        begin

          Params[0].AsInteger := 0;
          Params[1].AsDateTime := Date;
          Params[2].AsInteger := 0;

        end;

        Open;

      end;

      CodEmp := 0;
      NumGer := 0;

      //if debughook = 1 then
      //begin
      fmManNge_NFE2 := TfmManNge_NFE2.Create(Self);
      fmManNge_NFE2.Show;
      //end
      //else
      //begin

      //  fmManNge_NFE := TfmManNge_NFE.Create(Self);
      //  fmManNge_NFE.Show;
      //end;

    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManGer_NFE.bExcluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if FatGerNumGer.Value > 0 then
  begin

    if Trim(FatGerSitGer.Value) = 'Nao Concluido' then
    begin

      if fMsg('Confirma a Exclus�o da Nota Fiscal ?', 'O') then
      begin
        FatGer.Delete;
        with FatGer do
        begin
          fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
          try
            ApplyUpdates; {Tenta aplicar as altera��es}
            fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
          except
            fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
            if FatGer.State <> dsBrowse then
              FatGer.CancelUpdates;
            grGer.SetFocus;
            raise;
          end;
          CommitUpdates; {sucesso!, limpa o cache...}
        end;

        FatGer.Close;
        FatGer.Open;

        grGer.SetFocus;

      end;
    end
    else
    begin
      fMsgErro('Nota j� concluida. Utiliza a op��o de cancelamento de Notas.', nil);
    end;
  end;
end;

procedure TfmManGer_NFE.bImprimirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManNge_NFE2 then
      Found := i;

  end;

  if Found >= 0 then
  begin

    fmManNge_NFE2.WindowState := wsNormal;
    fmManNge_NFE2.BringToFront;

  end
  else
  begin

    CodEmp := FatGerCodEmp.Value;
    DteGer := FatGerDteGer.Value;
    NumGer := FatGerNumGer.Value;

    sFiltro := ' and FatGer.CodEmp = :CodEmp' +
      ' and FatGer.DteGer = :DteGer' +
      ' and FatGer.NumGer = :NumGer';

    with FatGer, SQL do
    begin

      Close;
      Text := sBase + sFiltro;

      with Params do
      begin

        Params[0].AsInteger := CodEmp;
        Params[1].AsDateTime := DteGer;
        Params[2].AsInteger := NumGer;

      end;

      Open;

    end;

    if FatGerCodEmp.Value > 0 then
    begin

      if FatGerSitGer.Value <> 'Nao Concluido' then
      begin

        try

          fmManSge_NFE := TfmManSge_NFE.Create(Self);

          fmManSge_NFE.ShowModal;

        finally

          FreeAndNil(fmManSge_NFE);

        end;

      end
      else
      begin

        if FatGerSitGer.Value = 'Nao Concluido' then
          fMsg('Opera��o n�o Pode ser Realizada. Nota n�o Emitida', 'E')

        else if FatGerSitGer.Value = 'Cancelado' then
          fMsg('Opera��o n�o Pode ser Realizada. Nota j� Cancelada', 'E');

      end;
    end;
  end;
end;

procedure TfmManGer_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManGer_NFE := nil;
end;

procedure TfmManGer_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManNge_NFE2 then
      Found := i;

  end;

  if Found >= 0 then
    fmsgErro('Existem Emiss�es de Nota em Andamento. Por Favor Feche o Formulario.', nil)
  else
    Action := CaFree;

end;

procedure TfmManGer_NFE.FatGe2CODITEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Trim(FatGe2CodGru.Value) <> '' then
    Text := FatGe2CodGru.Value + '.' + FatGe2CodSub.Value + '.' + FatGe2CodPro.Value;
end;

procedure TfmManGer_NFE.grGe2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then
  begin

    if not pnImpostos.Visible then
    begin

      if FatGe2CodEmp.Value > 0 then
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

            FatGe2.Edit;

            EdIcmGe2.SetFocus;

          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManGer_NFE.pnImpostosExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then
  begin

    if fMsg('Confirma Altera��o da Aliquota de ICMS ?', 'S') then
    begin

      CodEmp := FatGe2CodEmp.Value;
      DteGer := FatGe2DteGer.Value;
      NumGer := FatGe2NumGer.Value;
      SeqGe2 := FatGe2SeqGe2.Value;

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

          if FatGe2.State = dsBrowse then
            FatGe2.Edit;

          EdIcmGe2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatGe2.Close;
      FatGe2.Open;

      FatGe2.Locate('CodEmp;DteGer;NumGer;SeqGe2', VarArrayOf([CodEmp, DteGer, NumGer, SeqGe2]), [loPartialKey]);

      FatGe2.Next;

      pnImpostos.Visible := False;

      grGe2.SetFocus;

    end
    else
      EdIcmGe2.SetFocus;
  end;
end;

procedure TfmManGer_NFE.pnDadosNotaExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then
  begin

    if fMsg('Confirma Altera��es ?', 'S') then
    begin

      CodEmp := FatGerCodEmp.Value;
      DteGer := FatGerDteGer.Value;
      NumGer := FatGerNumGer.Value;

      with FatGer do
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

          if FatGer.State = dsBrowse then
            FatGer.Edit;

          EdFlgSin.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatGer.Close;
      FatGer.Open;

      FatGer.Locate('CodEmp;DteGer;NumGer', VarArrayOf([CodEmp, DteGer, NumGer]), [loPartialKey]);

      pnDadosNota.Visible := False;

      grGer.SetFocus;

    end
    else
      EdFlgSin.SetFocus;

  end;
end;

procedure TfmManGer_NFE.grGerKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then
  begin

    if not pnImpostos.Visible then
    begin

      if not pnDadosNota.Visible then
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

          if not pnDadosNota.Visible then
          begin

            if GFlgAce = 'Nao' then
            begin

              pnDadosNota.Visible := True;

              FatGer.Edit;

              EdFlgSin.SetFocus;

            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManGer_NFE.DsGerDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if FatGerCodCli.Value > 0 then
    pnCodCli.Caption := ' C�digo do Cliente : ' + FNumZeros(IntToStr(FatGerCodCli.Value), 7)
  else
    pnCodCli.Caption := ' C�digo do Cliente : ';

  pnSitGer.Caption := FatGerSitGer.Value;
  pnTipPfa.Caption := FatGerTipPfa.Value;

  pnHreGer.Caption := ' ' + FatGerHreFat.Value;

  pnSitImp.Caption := ' Impress�o Confirmada (Sim/Nao) : ' + FatGerFlgImp.Value;

end;

procedure TfmManGer_NFE.bEditarClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    Found := -1;

    for i := 0 to Screen.FormCount - 1 do
    begin

      if Screen.Forms[i] is TfmManNge_NFE2 then
        Found := i;

    end;

    if Found >= 0 then
    begin
      fmManNge_NFE2.WindowState := wsNormal;
      fmManNge_NFE2.BringToFront;
    end
    else
    begin

      CodEmp := FatGerCodEmp.Value;
      DteGer := FatGerDteGer.Value;
      NumGer := FatGerNumGer.Value;

      sFiltro := ' and FatGer.CodEmp = :CodEmp' +
        ' and FatGer.DteGer = :DteGer' +
        ' and FatGer.NumGer = :NumGer';

      with FatGer, SQL do
      begin

        Close;
        Text := sBase + sFiltro;

        with Params do
        begin

          Params[0].AsInteger := CodEmp;
          Params[1].AsDateTime := DteGer;
          Params[2].AsInteger := NumGer;

        end;

        Open;

      end;

      if FatGerCodEmp.Value > 0 then
      begin

        with quSQL, SQL do
        begin

          Close;
          Text := ' Select SitGer From FatGer' +
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

        end;

        CodEmp := FatGerCodEmp.Value;
        DteGer := FatGerDteGer.Value;
        NumGer := FatGerNumGer.Value;

        //if debughook = 1 then
        //begin
        fmManNge_NFE2 := TfmManNge_NFE2.Create(Self);
        fmManNge_NFE2.Show;
        //end
        //else
        //begin

        //  fmManNge_NFE := TfmManNge_NFE.Create(Self);
        //  fmManNge_NFE.Show;
        //end;

      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);

end;

procedure TfmManGer_NFE.FatGerAfterScroll(DataSet: TDataSet);
begin
  inherited;
  FatGe2.Active := False;
  FatGe2.Params.ParamByName('CODEMP').AsInteger  := FatGer.FieldByName('CODEMP').AsInteger;
  FatGe2.Params.ParamByName('DTEGER').AsDateTime := FatGer.FieldByName('DTEGER').AsDateTime;
  FatGe2.Params.ParamByName('NUMGER').AsInteger  := FatGer.FieldByName('NUMGER').AsInteger;
  FatGe2.Active := True;
end;

end.

