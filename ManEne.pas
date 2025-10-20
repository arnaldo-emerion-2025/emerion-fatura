unit ManEne;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxColorPickEdit, dxColorCurrencyEdit,
  dxColorEdit, dxColorDateEdit, dxDBColorEdit, dxDBColorDateEdit;

type
  TfmManEne = class(TfmPadrao)
    FatDev: TwwQuery;
    FatDv2: TwwQuery;
    DsDv2: TwwDataSource;
    DsDev: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteDv1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteDv2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotDv1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotDv2: TdxColorCurrencyEdit;
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
    rgOrdem: TRadioGroup;
    Label1: TLabel;
    EdPsqUfeDev: TdxColorPickEdit;
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
    Label12: TLabel;
    pnHreDev: TPanel;
    pnApeVen: TPanel;
    Label13: TLabel;
    EdPsqNumNfs: TdxColorEdit;
    bSelecionar: TBitBtn;
    BitBtn1: TBitBtn;
    FatDevCODEMP: TIntegerField;
    FatDevDTERES: TDateTimeField;
    FatDevNUMRES: TIntegerField;
    FatDevSEQLIB: TIntegerField;
    FatDevSEQFAT: TIntegerField;
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
    FatDv2QTPDV2: TFloatField;
    FatDv2VLQDV2: TFloatField;
    FatDv2IPIDV2: TFloatField;
    FatDv2ICMDV2: TFloatField;
    FatDv2TOTIPI: TFloatField;
    FatDv2TOTDV2: TFloatField;
    FatDv2DSCPRO: TStringField;
    FatDevCLIENTE: TStringField;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    FatDevTEFCLI: TStringField;
    FatDevENFCLI: TStringField;
    FatDevNRFCLI: TStringField;
    FatDevBAFCLI: TStringField;
    FatDevCIFCLI: TStringField;
    FatDevUFFCLI: TStringField;
    FatDevCEFCLI: TStringField;
    FatDevSEQDEV: TIntegerField;
    FatDevQTDDEV: TIntegerField;
    FatDevBASCOM: TFloatField;
    FatDevTOTCOM: TFloatField;
    FatDevFLGDIF: TStringField;
    FatDevFLGDEV: TStringField;
    FatDevFLGATU: TStringField;
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
    FatDv2QTDDV2: TFloatField;
    FatDv2ULTQTD: TFloatField;
    FatDv2SLDDV2: TFloatField;
    FatDv2VLUDV2: TFloatField;
    FatDv2VCHDV2: TFloatField;
    FatDv2VREDV2: TFloatField;
    FatDv2VCPDV2: TFloatField;
    FatDv2VPRDV2: TFloatField;
    FatDv2DSRDV2: TFloatField;
    FatDv2VDRDV2: TFloatField;
    FatDv2CLSIPI: TStringField;
    FatDv2BASIPI: TFloatField;
    FatDv2BASICM: TFloatField;
    FatDv2TOTICM: TFloatField;
    FatDv2BASSUB: TFloatField;
    FatDv2TOTSUB: TFloatField;
    FatDv2TOTGE2: TFloatField;
    FatDv2TOTLIQ: TFloatField;
    FatDv2TOTBRT: TFloatField;
    FatDv2TOTDSR: TFloatField;
    FatDv2TOTPIS: TFloatField;
    FatDv2TOTCOF: TFloatField;
    FatDv2BASCOM: TFloatField;
    FatDv2TOTCOM: TFloatField;
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
    FatDv2SEQRE2: TIntegerField;
    FatDv2SEQPE2: TIntegerField;
    FatDv2NROPE2: TIntegerField;
    FatDv2CODVWA: TStringField;
    FatDv2FLGREQ: TStringField;
    FatDv2FLGDUP: TStringField;
    FatDv2NRODV2: TIntegerField;
    Label8: TLabel;
    Label11: TLabel;
    EdPsqNfsCli: TdxColorEdit;
    Label14: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    FatDv2SEQNFD: TIntegerField;
    FatDv2SEQDV3: TIntegerField;
    pnDadosNota: TPanel;
    Label15: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    EdCodCfo: TdxDBColorEdit;
    EdUfeFat: TdxDBColorEdit;
    EdFlgSin: TdxDBCheckEdit;
    Label21: TLabel;
    EdDteDev: TdxDBColorDateEdit;
    UpDev: TUpdateSQL;
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
    rgImpresso: TRadioGroup;
    pnSitImp: TPanel;
    FatDevNOMENT: TStringField;
    FatDevQTDDSE: TIntegerField;
    FatDevSEQDSE: TIntegerField;
    FatDevTOTDSE: TFloatField;
    FatDevBASISS: TFloatField;
    FatDevTOTISS: TFloatField;
    FatDevTOTFAT: TFloatField;
    FatDevFLGTOT: TStringField;
    FatDevAPEEMP: TStringField;
    FatDevCODTCL: TIntegerField;
    FatDevFLGENV: TStringField;
    FatDevNFSCLI: TIntegerField;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure BitBtn1Click(Sender: TObject);
    procedure EdPsqNumNfsExit(Sender: TObject);
    procedure EdPsqNfsCliExit(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure pnDadosNotaExit(Sender: TObject);
    procedure grDevKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsDevDataChange(Sender: TObject; Field: TField);
  private
    pSaida: string;
    DteRes: TDateTime;
    CodEmp, NumRes, SeqLib, SeqFat, SeqDev: Integer;
    {Private declarations}
  public
    {Public declarations}
    sBase, sFiltro, sOrdem: string;
  end;

var
  fmManEne: TfmManEne;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqCli, PsqVen,
  ManPri, AuxPsq, ManDn1, ManSdn;

{$R *.DFM}

procedure TfmManEne.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDteDv1.Date := Date;
  EdPsqDteDv2.Date := Date;

  FatDev.Close;
  FatDev.Params[0].AsDateTime := EdPsqDteDv1.Date;
  FatDev.Open;

  psaida := 'Nao';

  sBase := ' Select FatDev.*,' +
    '        GerEmp.ApeEmp,' +
    '        TextoOcor(IntStrZeros(FatDev.CodCli,7),''' + '-' + ''',FinCli.ApeCli,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as Cliente,' +
    '        FinCli.NomCli,' +
    '        FinCli.TefCli,' +
    '        FinCli.EnfCli,' +
    '        FinCli.NrfCli,' +
    '        FinCli.BafCli,' +
    '        FinCli.CifCli,' +
    '        FinCli.UffCli,' +
    '        FinCli.CefCli,' +
    '        FinVen.ApeVen,' +
    '        FinVen.NomVen' +
    ' From FatDev LEFT JOIN GerEmp ON (FatDev.CodEmp = GerEmp.CodEmp)' +
    '             LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)' +
    '             LEFT JOIN FinVen ON (FatDev.CodVen = FinVen.CodVen)';

end;

procedure TfmManEne.bSelecionarClick(Sender: TObject);
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

  sFiltro := ' Where FatDev.SitDev = ''' + 'Devolvido' + ''' and FatDev.NroNfs > ''' + '0' + '''';

  case rgImpresso.Itemindex of
    0: sFiltro := sFiltro + ' and FatDev.FlgImp = ''' + 'Sim' + '''';
    1: sFiltro := sFiltro + ' and FatDev.FlgImp = ''' + 'Nao' + '''';
  end;

  case rgOrdem.Itemindex of
    0: sOrdem := ' Order by FatDev.CodCli,FatDev.NroNfs';
    1: sOrdem := ' Order by FatDev.CodVen,FatDev.NroNfs';
    2: sOrdem := ' Order by FatDev.DteDev,FatDev.NroNfs';
    3: sOrdem := ' Order by FatDev.NroNfs';
  end;

  if Trim(EdPsqNumRes.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.NumRes = ''' + EdPsqNumRes.Text + '''';
  if Trim(EdPsqNumNfs.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.NumNfs = ''' + EdPsqNumNfs.Text + '''';
  if Trim(EdPsqNfsCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.NfsCli = ''' + EdPsqNfsCli.Text + '''';
  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodCli = ''' + EdPsqCodCli.Text + '''';
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodVen = ''' + EdPsqCodVen.Text + '''';
  if Trim(EdPsqUfeDev.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.UfeDev = ''' + EdPsqUfeDev.Text + '''';
  if Trim(EdPsqNroNfs.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.NroNfs = ''' + EdPsqNroNfs.Text + '''';

  if Trim(fLimpaStr(EdPsqDteDv1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteDv1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteDv2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteDv2.Date) + '''';

  if EdPsqTotDv1.Value > 0 then
    sFiltro := sFiltro + ' and FatDev.TotGer >= ''' + FloatToStr(EdPsqTotDv1.Value) + '''';
  if EdPsqTotDv2.Value > 0 then
    sFiltro := sFiltro + ' and FatDev.TotGer <= ''' + FloatToStr(EdPsqTotDv2.Value) + '''';

  with FatDev, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;

  grDev.SetFocus;

end;

procedure TfmManEne.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManEne.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmManEne.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManEne.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManEne.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManEne.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManEne.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManEne.BbPsqCliClick(Sender: TObject);
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

procedure TfmManEne.BbPsqVenClick(Sender: TObject);
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

procedure TfmManEne.EdPsqNumResExit(Sender: TObject);
begin
  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;
    EdPsqUfeDev.Clear;
    EdPsqNumNfs.Clear;
    EdPsqNroNfs.Clear;
    EdPsqNfsCli.Clear;

    EdPsqDteDv1.Clear;
    EdPsqDteDv2.Clear;

    EdPsqTotDv1.Value := 0;
    EdPsqTotDv2.Value := 0;

  end;
end;

procedure TfmManEne.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumRes.SetFocus;
end;

procedure TfmManEne.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEne.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEne := nil;
end;

procedure TfmManEne.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManEne.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
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

procedure TfmManEne.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if FatDevCodEmp.Value > 0 then
  begin

    if FatDevSitDev.Value = 'Devolvido' then
    begin

      if FatDevNroNfs.Value > 0 then
      begin

        try

          fmManSdn := TfmManSdn.Create(Self);

          fmManSdn.ShowModal;

        finally

          FreeAndNil(fmManSdn);

        end;

      end
      else
        fMsg('Operação não Pode ser Realizada. Devolução sem Emissão de Nota de Entrada.', 'E')

    end
    else
    begin

      if FatDevSitDev.Value = 'Em Aberto' then
        fMsg('Operação não Pode ser Realizada. Devolução não Confirmada.', 'E')

    end;
  end;
end;

procedure TfmManEne.EdPsqNumNfsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNumNfs.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;
    EdPsqUfeDev.Clear;
    EdPsqNumRes.Clear;
    EdPsqNfsCli.Clear;
    EdPsqNroNfs.Clear;

    EdPsqDteDv1.Clear;
    EdPsqDteDv2.Clear;

    EdPsqTotDv1.Value := 0;
    EdPsqTotDv2.Value := 0;

  end;
end;

procedure TfmManEne.EdPsqNfsCliExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNfsCli.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;
    EdPsqUfeDev.Clear;
    EdPsqNumRes.Clear;
    EdPsqNumNfs.Clear;
    EdPsqNroNfs.Clear;

    EdPsqDteDv1.Clear;
    EdPsqDteDv2.Clear;

    EdPsqTotDv1.Value := 0;
    EdPsqTotDv2.Value := 0;

  end;
end;

procedure TfmManEne.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;
    EdPsqUfeDev.Clear;
    EdPsqNumRes.Clear;
    EdPsqNumNfs.Clear;
    EdPsqNfsCli.Clear;

    EdPsqDteDv1.Clear;
    EdPsqDteDv2.Clear;

    EdPsqTotDv1.Value := 0;
    EdPsqTotDv2.Value := 0;

  end;
end;

procedure TfmManEne.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManEne.pnDadosNotaExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then
  begin

    if fMsg('Confirma Alterações ?', 'S') then
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

procedure TfmManEne.grDevKeyDown(Sender: TObject; var Key: Word;
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

procedure TfmManEne.DsDevDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnApeVen.Caption := ' ' + FatDevApeVen.Value;
  pnHreDev.Caption := ' ' + FatDevHreDev.Value;

  pnSitImp.Caption := ' Impressão Confirmada (Sim/Nao) : ' + FatDevFlgImp.Value;

end;

end.
