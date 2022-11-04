unit ManLn2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxDBColorEdit, dxDBColorCurrencyEdit,
  dxColorPickEdit, dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit;

type
  TfmManLn2 = class(TfmPadrao)
    FatPed: TwwQuery;
    FatPe2: TwwQuery;
    DsPe2: TwwDataSource;
    DsPed: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label28: TLabel;
    EdPsqDtfRes1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDtfRes2: TdxColorDateEdit;
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
    EdPsqNomEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    rgOrdem: TRadioGroup;
    Label1: TLabel;
    EdPsqUfeFat: TdxColorPickEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    grPed: ThGrid;
    grPe2: ThGrid;
    quSql: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    pnHreFat: TPanel;
    pnNomCli: TPanel;
    bImprimir: TBitBtn;
    FatPedNUMRES: TIntegerField;
    FatPedDTEFAT: TDateTimeField;
    FatPedNRONFS: TIntegerField;
    FatPedTOTIPI: TFloatField;
    FatPedTOTFAT: TFloatField;
    FatPedTOTGER: TFloatField;
    FatPedCODVEN: TIntegerField;
    FatPedCODPFA: TStringField;
    FatPedCODCLI: TIntegerField;
    FatPe2DESPE2: TStringField;
    FatPe2QTPPE2: TFloatField;
    FatPe2VLQPE2: TFloatField;
    FatPe2ICMPE2: TFloatField;
    FatPe2TOTPE2: TFloatField;
    pnApeVen: TPanel;
    Label13: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    dbRes: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    FatPe2CODEMP: TIntegerField;
    FatPe2DTERES: TDateTimeField;
    FatPe2NUMRES: TIntegerField;
    FatPe2SEQLIB: TIntegerField;
    FatPe2SEQFAT: TIntegerField;
    FatPe2CODGRU: TStringField;
    FatPe2CODSUB: TStringField;
    FatPe2CODPRO: TStringField;
    FatPe2CODITE: TStringField;
    FatPedCODEMP: TIntegerField;
    FatPedDTERES: TDateTimeField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
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
    FatPedBASICM: TFloatField;
    FatPedTOTICM: TFloatField;
    FatPedBASSUB: TFloatField;
    FatPedTOTSUB: TFloatField;
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
    FatPedQTISER: TIntegerField;
    FatPedSEQSER: TIntegerField;
    FatPedBASISS: TFloatField;
    FatPedTOTISS: TFloatField;
    FatPedTOTSER: TFloatField;
    FatPedTIPPFA: TStringField;
    FatPedNOMCLI: TStringField;
    FatPedAPEVEN: TStringField;
    FatPe2SEQPE2: TIntegerField;
    pnImpostos: TPanel;
    Label14: TLabel;
    EdIcmPe2: TdxDBColorCurrencyEdit;
    pnDadosNota: TPanel;
    Label15: TLabel;
    EdCodCfo: TdxDBColorEdit;
    UpFat: TUpdateSQL;
    UpPe2: TUpdateSQL;
    FatPedFLGFEC: TStringField;
    EdUfeFat: TdxDBColorEdit;
    Label23: TLabel;
    FatPedFLGSIN: TStringField;
    FatPedMODPFA: TStringField;
    Label24: TLabel;
    EdFlgSin: TdxDBCheckEdit;
    pnSitFat: TPanel;
    rgStatus: TRadioGroup;
    pnSitImp: TPanel;
    FatPedFLGIMP: TStringField;
    FatPedNOMENT: TStringField;
    FatPedOB1FAT: TMemoField;
    FatPedOB2FAT: TMemoField;
    FatPedOB3FAT: TMemoField;
    FatPedOB4FAT: TMemoField;
    FatPedOB5FAT: TMemoField;
    FatPedOB6FAT: TMemoField;
    FatPedOB7FAT: TMemoField;
    FatPedOB8FAT: TMemoField;
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
    procedure bImprimirClick(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FatPe2CODITEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure grPe2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnImpostosExit(Sender: TObject);
    procedure grPedKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnDadosNotaExit(Sender: TObject);
    procedure DsPedDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes: TDateTime;
    sBase, sFiltro, sOrdem, psaida: string;
    CodEmp, NumRes, SeqLib, SeqFat, SeqPe2: integer;
  end;

var
  fmManLn2: TfmManLn2;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqCli, PsqVen,
  PsqPfa, ManPri, AuxPsq, ManSeg;

{$R *.DFM}

procedure TfmManLn2.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDtfRes1.Date := Date;
  EdPsqDtfRes2.Date := Date;

  psaida := 'Nao';

  FatPed.Close;
  FatPed.Params[0].AsDateTime := EdPsqDtfRes1.Date;
  FatPed.Open;

  sBase := ' Select FatPed.*,' +
    '        FinCli.NomCli,' +
    '        FinVen.ApeVen' +
    ' From FatPed,FinCli,FinVen' +
    ' Where FatPed.CodCli = FinCli.CodCli' +
    '   and FatPed.CodVen = FinVen.CodVen';

end;

procedure TfmManLn2.bSelecionarClick(Sender: TObject);
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
    0: sOrdem := ' Order by FatPed.CodCli,FatPed.NroNfs';
    1: sOrdem := ' Order by FatPed.CodVen,FatPed.NroNfs';
    2: sOrdem := ' Order by FatPed.DteFat,FatPed.NroNfs';
    3: sOrdem := ' Order by FatPed.NroNfs';
  end;

  case rgStatus.Itemindex of
    0: sFiltro := ' and FatPed.FlgImp = ''' + 'Sim' + '''';
    1: sFiltro := ' and FatPed.FlgImp = ''' + 'Nao' + '''';
  end;

  if Trim(EdPsqNumRes.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.NumRes = ''' + EdPsqNumRes.Text + '''';
  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodCli = ''' + EdPsqCodCli.Text + '''';
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodVen = ''' + EdPsqCodVen.Text + '''';
  if Trim(EdPsqUfeFat.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.UfeFat = ''' + EdPsqUfeFat.Text + '''';
  if Trim(EdPsqNroNfs.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.NroNfs = ''' + EdPsqNroNfs.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteRes >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteRes <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';
  if Trim(fLimpaStr(EdPsqDtfRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat >= ''' + fDateToSQL(EdPsqDtfRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDtfRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat <= ''' + fDateToSQL(EdPsqDtfRes2.Date) + '''';

  with FatPed, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;

  grPed.SetFocus;

end;

procedure TfmManLn2.EdPsqCodEmpExit(Sender: TObject);
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

        fmsgErro('Empresa Informada não Encontrada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqNomEmp.Text := '';
end;

procedure TfmManLn2.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmManLn2.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManLn2.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn2.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn2.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManLn2.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn2.BbPsqCliClick(Sender: TObject);
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

procedure TfmManLn2.BbPsqVenClick(Sender: TObject);
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

procedure TfmManLn2.EdPsqNumResExit(Sender: TObject);
begin
  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqNomEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;
    EdPsqUfeFat.Clear;

    EdPsqDteRes1.Clear;
    EdPsqDteRes2.Clear;
    EdPsqDtfRes1.Clear;
    EdPsqDtfRes2.Clear;

  end;
end;

procedure TfmManLn2.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumRes.SetFocus;
end;

procedure TfmManLn2.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLn2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLn2 := nil;
end;

procedure TfmManLn2.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManLn2.bImprimirClick(Sender: TObject);
begin
  inherited;

  CodEmp := FatPedCodEmp.Value;
  DteRes := FatPedDteRes.Value;
  NumRes := FatPedNumRes.Value;
  SeqLib := FatPedSeqLib.Value;
  SeqFat := FatPedSeqFat.Value;

  sFiltro := ' and FatPed.CodEmp = :CodEmp' +
    ' and FatPed.DteRes = :DteRes' +
    ' and FatPed.NumRes = :NumRes' +
    ' and FatPed.SeqLib = :SeqLib' +
    ' and FatPed.SeqFat = :SeqFat';

  with FatPed, SQL do
  begin

    Close;
    Text := sBase + sFiltro;

    with Params do
    begin

      Params[0].AsInteger := CodEmp;
      Params[1].AsDateTime := DteRes;
      Params[2].AsInteger := NumRes;
      Params[3].AsInteger := SeqLib;
      Params[4].AsInteger := SeqFat;

    end;

    Open;

  end;

  if FatPedCodEmp.Value > 0 then
  begin

    try

      fmManSeg := TfmManSeg.Create(Self);
      fmManSeg.ShowModal;

    finally

      FreeAndNil(fmManSeg);

    end;
  end;
end;

procedure TfmManLn2.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqNomEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqNomVen.Clear;
    EdPsqUfeFat.Clear;
    EdPsqNumRes.Clear;

    EdPsqDtfRes1.Clear;
    EdPsqDtfRes2.Clear;
    EdPsqDteRes1.Clear;
    EdPsqDteRes2.Clear;

  end;
end;

procedure TfmManLn2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLn2.FatPe2CODITEGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Trim(FatPe2CodGru.Value) <> '' then
    Text := FatPe2CodGru.Value + '.' + FatPe2CodSub.Value + '.' + FatPe2CodPro.Value;
end;

procedure TfmManLn2.grPe2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then
  begin

    if not pnImpostos.Visible then
    begin

      if not pnDadosNota.Visible then
      begin

        if FatPe2CodEmp.Value > 0 then
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

              FatPe2.Edit;

              EdIcmPe2.SetFocus;

            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManLn2.pnImpostosExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then
  begin

    if fMsg('Confirma Alteração da Aliquota de ICMS ?', 'S') then
    begin

      CodEmp := FatPe2CodEmp.Value;
      DteRes := FatPe2DteRes.Value;
      NumRes := FatPe2NumRes.Value;
      SeqLib := FatPe2SeqLib.Value;
      SeqFat := FatPe2SeqFat.Value;
      SeqPe2 := FatPe2SeqPe2.Value;

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

          EdIcmPe2.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatPe2.Close;
      FatPe2.Open;

      FatPe2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqPe2', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib, SeqFat, SeqPe2]), [loPartialKey]);

      FatPe2.Next;

      pnImpostos.Visible := False;

      grPe2.SetFocus;

    end
    else
      EdIcmPe2.SetFocus;
  end;
end;

procedure TfmManLn2.grPedKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then
  begin

    if not pnImpostos.Visible then
    begin

      if not pnDadosNota.Visible then
      begin

        if FatPedCodEmp.Value > 0 then
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

              FatPed.Edit;

              EdFlgSin.SetFocus;

            end;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManLn2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 27 then
  begin

    if pnImpostos.Visible then
    begin

      psaida := 'Sim';

      if FatPe2.State <> dsBrowse then
        FatPe2.CancelUpdates;

      pnImpostos.Visible := False;

      psaida := 'Nao';

    end
    else
    begin

      if pnDadosNota.Visible then
      begin

        psaida := 'Sim';

        if FatPed.State <> dsBrowse then
          FatPed.CancelUpdates;

        pnDadosNota.Visible := False;

        psaida := 'Nao';

      end
      else
        close;

    end;
  end;
end;

procedure TfmManLn2.pnDadosNotaExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then
  begin

    if fMsg('Confirma Alteração da CFOP ?', 'S') then
    begin

      CodEmp := FatPedCodEmp.Value;
      DteRes := FatPedDteRes.Value;
      NumRes := FatPedNumRes.Value;
      SeqLib := FatPedSeqLib.Value;
      SeqFat := FatPedSeqFat.Value;

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

          EdCodCfo.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatPed.Close;
      FatPed.Open;

      FatPed.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib, SeqFat]), [loPartialKey]);

      pnDadosNota.Visible := False;

      grPed.SetFocus;

    end
    else
      EdFlgSin.SetFocus;

  end;
end;

procedure TfmManLn2.DsPedDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnNomCli.Caption := ' Cliente : ' + FatPedNomCli.Value;

  pnApeVen.Caption := ' Vendedor : ' + FatPedApeVen.Value;

  pnHreFat.Caption := FatPedHreFat.Value;
  pnSitFat.Caption := FatPedSitFat.Value;

  pnSitImp.Caption := ' Impressão Confirmada (Sim/Nao) : ' + FatPedFlgImp.Value;

end;

end.
