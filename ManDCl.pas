unit ManDCl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxDBColorCurrencyEdit, dxColorPickEdit,
  dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit, dxDBColorEdit,
  dxDBColorDateEdit;

type
  TfmManDCl = class(TfmPadrao)
    FatDCl: TwwQuery;
    DsDCl: TwwDataSource;
    PaintBox: TPaintBox;
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
    EdPsqApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    Label1: TLabel;
    EdPsqUfeGer: TdxColorPickEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grDCl: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    quSql: TwwQuery;
    bExcluir: TSpeedButton;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    pnHreGer: TPanel;
    pnCodCli: TPanel;
    FatDC2: TwwQuery;
    UpDCl: TUpdateSQL;
    pnSitGer: TPanel;
    rgStatus: TRadioGroup;
    FatDC2DESGE2: TStringField;
    FatDC2QTPGE2: TFloatField;
    FatDC2VLUGE2: TFloatField;
    FatDC2ICMGE2: TFloatField;
    FatDC2IPIGE2: TFloatField;
    grDC2: ThGrid;
    DsDC2: TwwDataSource;
    FatDClNUMGER: TIntegerField;
    FatDClCODVEN: TIntegerField;
    FatDClCODPFA: TStringField;
    FatDClNRONFS: TIntegerField;
    FatDClTOTGER: TFloatField;
    FatDClNOMCLI: TStringField;
    pnTipPfa: TPanel;
    rgTipo: TRadioGroup;
    dbRes: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label11: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    FatDC2TOTITE: TFloatField;
    FatDClDTEFAT: TDateTimeField;
    FatDClCODEMP: TIntegerField;
    FatDClDTEGER: TDateTimeField;
    FatDClCODCLI: TIntegerField;
    FatDClTIPPFA: TStringField;
    FatDClSITGER: TStringField;
    FatDClOBCGER: TMemoField;
    FatDClATUEST: TStringField;
    FatDClINTFIN: TStringField;
    FatDClDTCGER: TDateTimeField;
    FatDClUSCGER: TIntegerField;
    FatDClHRCGER: TStringField;
    FatDClTENCLI: TStringField;
    FatDClENDCLI: TStringField;
    FatDClNUMCLI: TStringField;
    FatDClBAICLI: TStringField;
    FatDClCIDCLI: TStringField;
    FatDClUFECLI: TStringField;
    FatDClHREFAT: TStringField;
    FatDClUFEGER: TStringField;
    FatDClDSCREG: TFloatField;
    FatDClPERPIS: TFloatField;
    FatDClPERCOF: TFloatField;
    FatDClCODFIL: TIntegerField;
    FatDClQTDNFS: TIntegerField;
    FatDClNROSUF: TStringField;
    FatDClFLGAVI: TStringField;
    FatDClCGCCLI: TStringField;
    FatDClINSCLI: TStringField;
    FatDClCODCF1: TStringField;
    FatDClCODCF2: TStringField;
    FatDClFRTGER: TStringField;
    FatDClFLGENT: TStringField;
    FatDClFLGSAI: TStringField;
    FatDClDESNAT: TStringField;
    FatDClINSSUB: TStringField;
    FatDClTIPFRT: TStringField;
    FatDClMARGER: TStringField;
    FatDClNROGER: TStringField;
    FatDClESPGER: TStringField;
    FatDClNOMTRA: TStringField;
    FatDClCGCTRA: TStringField;
    FatDClINSTRA: TStringField;
    FatDClCEPTRA: TStringField;
    FatDClTENTRA: TStringField;
    FatDClENDTRA: TStringField;
    FatDClREFTRA: TStringField;
    FatDClNUMTRA: TStringField;
    FatDClBAITRA: TStringField;
    FatDClCIDTRA: TStringField;
    FatDClUFETRA: TStringField;
    FatDClPLCTRA: TStringField;
    FatDClPRTTRA: TStringField;
    FatDClFONTRA: TStringField;
    FatDClUFEPLC: TStringField;
    FatDClCEPCLI: TStringField;
    FatDClREFCLI: TStringField;
    FatDClINECLI: TStringField;
    FatDClCGECLI: TStringField;
    FatDClTXFIPI: TStringField;
    FatDClTXFICM: TStringField;
    FatDClOBSGER: TStringField;
    FatDClSEQITE: TIntegerField;
    FatDClQTIGER: TIntegerField;
    FatDClLINGER: TIntegerField;
    FatDClQTPGER: TIntegerField;
    FatDClSTPGER: TIntegerField;
    FatDClQTDVOL: TIntegerField;
    FatDClALTVOL: TIntegerField;
    FatDClINFLIQ: TFloatField;
    FatDClTOTLIQ: TFloatField;
    FatDClINFBRT: TFloatField;
    FatDClTOTBRT: TFloatField;
    FatDClBASIPI: TFloatField;
    FatDClTOTIPI: TFloatField;
    FatDClBASICM: TFloatField;
    FatDClTOTICM: TFloatField;
    FatDClBASSUB: TFloatField;
    FatDClTOTSUB: TFloatField;
    FatDClTOTITE: TFloatField;
    FatDClTOTPIS: TFloatField;
    FatDClTOTCOF: TFloatField;
    FatDClTOTFRT: TFloatField;
    FatDClTOTSEG: TFloatField;
    FatDClTOTDES: TFloatField;
    FatDClICMFRT: TFloatField;
    FatDClBSICMF: TFloatField;
    FatDClBAICMF: TFloatField;
    FatDClTOICMF: TFloatField;
    FatDClICMSEG: TFloatField;
    FatDClBSICMS: TFloatField;
    FatDClBAICMS: TFloatField;
    FatDClTOICMS: TFloatField;
    FatDClICMDES: TFloatField;
    FatDClBSICMD: TFloatField;
    FatDClBAICMD: TFloatField;
    FatDClTOICMD: TFloatField;
    FatDClIPIFRT: TFloatField;
    FatDClBSIPIF: TFloatField;
    FatDClBAIPIF: TFloatField;
    FatDClTOIPIF: TFloatField;
    FatDClIPISEG: TFloatField;
    FatDClBSIPIS: TFloatField;
    FatDClBAIPIS: TFloatField;
    FatDClTOIPIS: TFloatField;
    FatDClIPIDES: TFloatField;
    FatDClBSIPID: TFloatField;
    FatDClBAIPID: TFloatField;
    FatDClTOIPID: TFloatField;
    FatDClLANGER: TFloatField;
    FatDClSLDGER: TFloatField;
    FatDClTOTDSR: TFloatField;
    FatDClBASIP1: TFloatField;
    FatDClTOTIP1: TFloatField;
    FatDClBASIC1: TFloatField;
    FatDClTOTIC1: TFloatField;
    FatDClBASSU1: TFloatField;
    FatDClTOTSU1: TFloatField;
    FatDClTOTIT1: TFloatField;
    FatDClTOTGE1: TFloatField;
    FatDClCODUSU: TIntegerField;
    FatDClLANEST: TStringField;
    FatDClCONSUM: TStringField;
    FatDClFLGCTB: TStringField;
    FatDClCODIPI: TStringField;
    FatDClTIPIPI: TStringField;
    FatDClTRBIPI: TStringField;
    FatDClREDIPI: TFloatField;
    FatDClBSCIPI: TFloatField;
    FatDClCODICM: TStringField;
    FatDClTIPICM: TStringField;
    FatDClTRBICM: TStringField;
    FatDClREDICM: TFloatField;
    FatDClBSCICM: TFloatField;
    FatDClINCREV: TFloatField;
    FatDClINCFIN: TFloatField;
    FatDClFLGATU: TStringField;
    FatDClDTEATU: TDateTimeField;
    FatDClHREATU: TStringField;
    FatDClUSUATU: TIntegerField;
    FatDClTRASDA: TIntegerField;
    FatDClDTESDA: TDateTimeField;
    FatDClHRESDA: TStringField;
    FatDClUSUSDA: TIntegerField;
    FatDClOBSSDA: TStringField;
    FatDClCODVEI: TIntegerField;
    FatDClDTEENT: TDateTimeField;
    FatDClHREENT: TStringField;
    FatDClUSUENT: TIntegerField;
    FatDClOBSENT: TStringField;
    FatDClDESREG: TStringField;
    FatDClSEQGER: TStringField;
    FatDClNROCOL: TStringField;
    FatDClFLGNFS: TStringField;
    FatDClFLGENV: TStringField;
    FatDC2CODEMP: TIntegerField;
    FatDC2DTEGER: TDateTimeField;
    FatDC2NUMGER: TIntegerField;
    FatDC2SEQGE2: TIntegerField;
    FatDC2CODGRU: TStringField;
    FatDC2CODSUB: TStringField;
    FatDC2CODPRO: TStringField;
    FatDC2NROGE2: TIntegerField;
    FatDC2CODITE: TStringField;
    pnImpostos: TPanel;
    Label14: TLabel;
    EdIcmGe2: TdxDBColorCurrencyEdit;
    UpDC2: TUpdateSQL;
    pnDadosNota: TPanel;
    Label15: TLabel;
    EdCodCfo: TdxDBColorEdit;
    Label13: TLabel;
    EdFlgSin: TdxDBCheckEdit;
    FatDClFLGSIN: TStringField;
    FatDClQTISER: TIntegerField;
    FatDClSEQSER: TIntegerField;
    FatDClBASISS: TFloatField;
    FatDClTOTISS: TFloatField;
    FatDClBASIS1: TFloatField;
    FatDClTOTIS1: TFloatField;
    FatDClTOTSER: TFloatField;
    FatDClTOTSE1: TFloatField;
    Label23: TLabel;
    EdDteFat: TdxDBColorDateEdit;
    FatDClSERNOT: TStringField;
    Label24: TLabel;
    EdSerNot: TdxDBColorEdit;
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
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumGerKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FatDC2CODITEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure grDC2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnImpostosExit(Sender: TObject);
    procedure pnDadosNotaExit(Sender: TObject);
    procedure grDClKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsDClDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    DteGer: TDateTime;
    CodEmp, NumGer, SeqGe2: integer;
    sBase, sFiltro, sOrdem, pSaida: string;
  end;

var
  fmManDCl: TfmManDCl;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqCli, PsqVen,
  PsqPfa, ManPri, AuxPsq, ManDc2, ManCDc;

{$R *.DFM}

procedure TfmManDCl.FormCreate(Sender: TObject);
begin
  inherited;

  FatDCl.Close;
  FatDCl.Params[0].AsDateTime := Date;
  FatDCl.Open;

  sBase := ' Select FatDCl.*,' +
    '        FinCli.NomCli' +
    ' From FatDCl,FinCli' +
    ' Where FatDCl.CodCli = FinCli.CodCli';

  psaida := 'Nao';

end;

procedure TfmManDCl.bbPesquisaClick(Sender: TObject);
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
    0: sOrdem := ' Order by FatDCl.CodCli,FatDCl.NroNfs';
    1: sOrdem := ' Order by FatDCl.CodVen,FatDCl.NroNfs';
    2: sOrdem := ' Order by FatDCl.DteFat,FatDCl.NroNfs';
    3: sOrdem := ' Order by FatDCl.NroNfs';
    4: sOrdem := ' Order by FatDCl.CodPfa,FatDCl.TipPfa,FatDCl.NroNfs';
  end;

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and FatDCl.SitGer = ''' + 'Nao Concluido' + '''';
    1: sFiltro := sFiltro + ' and FatDCl.SitGer = ''' + 'Faturado' + '''';
    2: sFiltro := sFiltro + ' and FatDCl.SitGer = ''' + 'Cancelado' + '''';
  end;

  if Trim(EdPsqNroNfs.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.NroNfs = ''' + EdPsqNroNfs.Text + '''';
  if Trim(EdPsqNumGer.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.NumGer = ''' + EdPsqNumGer.Text + '''';
  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.CodCli = ''' + EdPsqCodCli.Text + '''';
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.CodVen = ''' + EdPsqCodVen.Text + '''';
  if Trim(EdPsqCodPfa.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.CodPfa = ''' + EdPsqCodPfa.Text + '''';
  if Trim(EdPsqUfeGer.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.UfeGer = ''' + EdPsqUfeGer.Text + '''';

  if Trim(fLimpaStr(EdPsqDteGr1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat >= ''' + fDateToSQL(EdPsqDteGr1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteGr2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat <= ''' + fDateToSQL(EdPsqDteGr2.Date) + '''';

  if EdPsqTotGr1.Value > 0 then
    sFiltro := sFiltro + ' and FatDCl.TotGer >= ''' + fConvertValor(EdPsqTotGr1.Text) + '''';
  if EdPsqTotGr2.Value > 0 then
    sFiltro := sFiltro + ' and FatDCl.TotGer <= ''' + fConvertValor(EdPsqTotGr2.Text) + '''';

  with FatDCl, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;

  grDCl.SetFocus;

end;

procedure TfmManDCl.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManDCl.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmManDCl.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManDCl.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManDCl.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManDCl.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManDCl.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManDCl.BbPsqCliClick(Sender: TObject);
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

procedure TfmManDCl.BbPsqVenClick(Sender: TObject);
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

procedure TfmManDCl.EdPsqNumGerExit(Sender: TObject);
begin
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
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

procedure TfmManDCl.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
  begin

    if pnImpostos.Visible then
    begin

      psaida := 'Sim';

      if FatDC2.State <> dsBrowse then
        FatDC2.CancelUpdates;

      pnImpostos.Visible := False;

      psaida := 'Nao';

    end
    else
    begin

      if pnDadosNota.Visible then
      begin

        psaida := 'Sim';

        if FatDCl.State <> dsBrowse then
          FatDCl.CancelUpdates;

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

  if key = 117 then
    bExcluir.OnClick(Sender);

end;

procedure TfmManDCl.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNroNfs.SetFocus;
end;

procedure TfmManDCl.BbPsqPfaClick(Sender: TObject);
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
        ' Order by DscPfa';
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

procedure TfmManDCl.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManDCl.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDCl.EdPsqNumGerKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManDCl.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodPfa.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select DscPfa From EstPfa' +
        ' Where TipPfa = ''' + 'Saida' + '''' +
        '   and CodPfa = ''' + EdPsqCodPfa.Text + '''' +
        '   and Exists (Select * From PedPve Where CodPfa = EstPfa.CodPfa' +
        '                                      and TipPfa = EstPfa.TipPfa' +
        '                                      and CodVen = :CodVen)';

      with Params do
      begin

        if Trim(EdPsqCodVen.Text) <> '' then
          Params[0].AsInteger := StrToInt(EdPsqCodVen.Text)
        else
          Params[0].AsInteger := 0;

      end;

      Open;

      EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;

    end;

  end
  else
    EdPsqNomPfa.Text := '';
end;

procedure TfmManDCl.bEditarClick(Sender: TObject);
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

      if Screen.Forms[i] is TfmManDC2 then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManDC2.WindowState := wsNormal;
      fmManDC2.BringToFront;

    end
    else
    begin

      CodEmp := FatDClCodEmp.Value;
      DteGer := FatDClDteGer.Value;
      NumGer := FatDClNumGer.Value;

      sFiltro := ' and FatDCl.CodEmp = :CodEmp' +
        ' and FatDCl.DteGer = :DteGer' +
        ' and FatDCl.NumGer = :NumGer';

      with FatDCl, SQL do
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

      if FatDClCodEmp.Value > 0 then
      begin

        with quSQL, SQL do
        begin

          Close;
          Text := ' Select SitGer From FatDCl' +
            ' Where CodEmp = :CodEmp' +
            '   and DteGer = :DteGer' +
            '   and NumGer = :NumGer';

          with Params do
          begin

            Params[0].AsInteger := FatDClCodEmp.Value;
            Params[1].AsDateTime := FatDClDteGer.Value;
            Params[2].AsInteger := FatDClNumGer.Value;

          end;

          Open;

        end;

        CodEmp := FatDClCodEmp.Value;
        DteGer := FatDClDteGer.Value;
        NumGer := FatDClNumGer.Value;

        fmManDC2 := TfmManDC2.Create(Self);
        fmManDC2.Show;

      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManDCl.bIncluirClick(Sender: TObject);
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

      if Screen.Forms[i] is TfmManDC2 then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManDC2.WindowState := wsNormal;
      fmManDC2.BringToFront;

    end
    else
    begin

      sFiltro := ' and FatDCl.CodEmp = :CodEmp' +
        ' and FatDCl.DteGer = :DteGer' +
        ' and FatDCl.NumGer = :NumGer';

      with FatDCl, SQL do
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

      fmManDC2 := TfmManDC2.Create(Self);
      fmManDC2.Show;

    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManDCl.bExcluirClick(Sender: TObject);
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

      if Screen.Forms[i] is TfmManDC2 then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManDC2.WindowState := wsNormal;
      fmManDC2.BringToFront;

    end
    else
    begin

      CodEmp := FatDClCodEmp.Value;
      DteGer := FatDClDteGer.Value;
      NumGer := FatDClNumGer.Value;

      sFiltro := ' and FatDCl.CodEmp = :CodEmp' +
        ' and FatDCl.DteGer = :DteGer' +
        ' and FatDCl.NumGer = :NumGer';

      with FatDCl, SQL do
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

      if FatDClNumGer.Value > 0 then
      begin

        if Trim(FatDClSitGer.Value) = 'Nao Concluido' then
        begin

          if fMsg('Confirma a Exclusão da Nota Fiscal ?', 'O') then
          begin

            FatDCl.Delete;

            with FatDCl do
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

                if FatDCl.State <> dsBrowse then
                  FatDCl.CancelUpdates;

                grDCl.SetFocus;

                raise;

              end;

              CommitUpdates; {sucesso!, limpa o cache...}

            end;

            FatDCl.Close;
            FatDCl.Open;

            grDCl.SetFocus;

          end;

        end
        else
        begin

          if Trim(FatDClSitGer.Value) = 'Faturado' then
          begin

            if fMsg('Confirma o Cancelamento da Nota Fiscal ?', 'O') then
            begin

              try

                fmManCDc := TfmManCDc.Create(Self);

                fmManCDc.ShowModal;

              finally

                FreeAndNil(fmManCDc);

              end;

              CodEmp := FatDClCodEmp.Value;
              DteGer := FatDClDteGer.Value;
              NumGer := FatDClNumGer.Value;

              FatDCl.Close;
              FatDCl.Open;

              FatDCl.Locate('CodEmp;DteGer;NumGer', VarArrayOf([CodEmp, DteGer, NumGer]), [LoPartialKey]);

            end;

          end
          else
          begin

            if FatDClSitGer.Value = 'Cancelado' then
              fMsg('Operação não Pode ser Realizada. Nota já Cancelada', 'E');

          end;
        end;
      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManDCl.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManDCl := nil;
end;

procedure TfmManDCl.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManDC2 then
      Found := i;

  end;

  if Found >= 0 then
    fmsgErro('Existem Emissões de Nota em Andamento. Por Favor Feche o Formulario.', nil)
  else
    Action := CaFree;

end;

procedure TfmManDCl.FatDC2CODITEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Trim(FatDC2CodGru.Value) <> '' then
    Text := FatDC2CodGru.Value + '.' + FatDC2CodSub.Value + '.' + FatDC2CodPro.Value;
end;

procedure TfmManDCl.grDC2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then
  begin

    if not pnImpostos.Visible then
    begin

      if FatDC2CodEmp.Value > 0 then
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

            FatDC2.Edit;

            EdIcmGe2.SetFocus;

          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManDCl.pnImpostosExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then
  begin

    if fMsg('Confirma Alteração da Aliquota de ICMS ?', 'S') then
    begin

      CodEmp := FatDC2CodEmp.Value;
      DteGer := FatDC2DteGer.Value;
      NumGer := FatDC2NumGer.Value;
      SeqGe2 := FatDC2SeqGe2.Value;

      with FatDC2 do
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

          if FatDC2.State = dsBrowse then
            FatDC2.Edit;

          EdIcmGe2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatDC2.Close;
      FatDC2.Open;

      FatDC2.Locate('CodEmp;DteGer;NumGer;SeqGe2', VarArrayOf([CodEmp, DteGer, NumGer, SeqGe2]), [loPartialKey]);

      FatDC2.Next;

      pnImpostos.Visible := False;

      grDC2.SetFocus;

    end
    else
      EdIcmGe2.SetFocus;
  end;
end;

procedure TfmManDCl.pnDadosNotaExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then
  begin

    if fMsg('Confirma Alterações ?', 'S') then
    begin

      CodEmp := FatDClCodEmp.Value;
      DteGer := FatDClDteGer.Value;
      NumGer := FatDClNumGer.Value;

      with FatDCl do
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

          if FatDCl.State = dsBrowse then
            FatDCl.Edit;

          EdFlgSin.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatDCl.Close;
      FatDCl.Open;

      FatDCl.Locate('CodEmp;DteGer;NumGer', VarArrayOf([CodEmp, DteGer, NumGer]), [loPartialKey]);

      FatDCl.Next;

      pnDadosNota.Visible := False;

      grDCl.SetFocus;

    end
    else
      EdFlgSin.SetFocus;

  end;
end;

procedure TfmManDCl.grDClKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then
  begin

    if not pnImpostos.Visible then
    begin

      if not pnDadosNota.Visible then
      begin

        if FatDClCodEmp.Value > 0 then
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

              FatDCl.Edit;

              EdFlgSin.SetFocus;

            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManDCl.DsDClDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if FatDClCodCli.Value > 0 then
    pnCodCli.Caption := ' Código do Cliente : ' + FNumZeros(IntToStr(FatDClCodCli.Value), 7)
  else
    pnCodCli.Caption := ' Código do Cliente : ';

  pnSitGer.Caption := FatDClSitGer.Value;
  pnTipPfa.Caption := FatDClTipPfa.Value;

  pnHreGer.Caption := ' ' + FatDClHreFat.Value;

end;

end.
