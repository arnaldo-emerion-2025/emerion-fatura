unit ManLn3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxDBColorEdit, dxDBColorCurrencyEdit,
  dxColorPickEdit, dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit, Clipbrd;

type
  TfmManLn3 = class(TfmPadrao)
    FatPed: TwwQuery;
    FatPe4: TwwQuery;
    DsPe4: TwwDataSource;
    DsPed: TwwDataSource;
    Label16: TLabel;
    EdPsqId_PedRes: TdxColorEdit;
    Label28: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqCli: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqApeVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    grFat: ThGrid;
    grPe4: ThGrid;
    quSql: TwwQuery;
    pnHreFat: TPanel;
    pnNomCli: TPanel;
    Label13: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    grFat1: TdxDBGraphicEdit;
    grPe41: TdxDBGraphicEdit;
    UpFat: TUpdateSQL;
    pnSitFat: TPanel;
    FatPe4CODGRU: TStringField;
    FatPe4CODSUB: TStringField;
    FatPe4CODPRO: TStringField;
    FatPe4DESPE4: TStringField;
    FatPe4QTPPE4: TFloatField;
    FatPe4VLUPE4: TFloatField;
    FatPe4ICMPE4: TFloatField;
    FatPe4TOTPE4: TFloatField;
    FatPe4CODITE: TStringField;
    FatPe4IPIPE4: TFloatField;
    bCancelar: TBitBtn;
    Label23: TLabel;
    FatPedCODEMP: TIntegerField;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    FatPedNRONFS: TIntegerField;
    FatPedDTEFAT: TDateTimeField;
    FatPedHREFAT: TStringField;
    FatPedCODCLI: TIntegerField;
    FatPedCODCF1: TStringField;
    FatPedTOTFAT: TFloatField;
    FatPedTOTIPI: TFloatField;
    FatPedTOTGER: TFloatField;
    FatPedSITFAT: TStringField;
    FatPedSEQNFE: TStringField;
    FatPedARQNFECANC: TBlobField;
    FatPedNFETHCANC: TSmallintField;
    FatPedNOMCLI: TStringField;
    FatPedAPEVEN: TStringField;
    FatPedENVNFE: TStringField;
    FatPedTAB: TStringField;
    FP: TwwQuery;
    FG: TwwQuery;
    FD: TwwQuery;
    UP_FP: TUpdateSQL;
    UP_FG: TUpdateSQL;
    UP_FD: TUpdateSQL;
    FPCODEMP: TIntegerField;
    FPDTERES: TDateTimeField;
    FPNUMRES: TIntegerField;
    FPSEQLIB: TIntegerField;
    FPSEQFAT: TIntegerField;
    FPNRONFS: TIntegerField;
    FPDTECAN: TDateTimeField;
    FPHRECAN: TStringField;
    FPUSUCAN: TIntegerField;
    FPOB1CAN: TStringField;
    FPOB2CAN: TStringField;
    FPOB3CAN: TStringField;
    FPOB4CAN: TStringField;
    FPOB5CAN: TStringField;
    FPFLGNFE: TStringField;
    FPENVNFE: TStringField;
    FPSEQNFE: TStringField;
    FPPRONFE: TStringField;
    FPDTCNFE: TDateTimeField;
    FPHRCNFE: TStringField;
    FPPRCNFE: TStringField;
    FPATUEST: TStringField;
    FPINTFIN: TStringField;
    FPSITFAT: TStringField;
    FPSEQNFE_1: TStringField;
    FPRETNFE: TStringField;
    FPARQNFE: TBlobField;
    FPARQNFECANC: TBlobField;
    FPNFETHCANC: TSmallintField;
    SalvaXML: TOpenDialog;
    FGDTEGER: TDateTimeField;
    FGNUMGER: TIntegerField;
    FGCODEMP: TIntegerField;
    FGNRONFS: TIntegerField;
    FGDTECAN: TDateTimeField;
    FGHRECAN: TStringField;
    FGUSUCAN: TIntegerField;
    FGOB1CAN: TStringField;
    FGOB2CAN: TStringField;
    FGOB3CAN: TStringField;
    FGOB4CAN: TStringField;
    FGOB5CAN: TStringField;
    FGFLGNFE: TStringField;
    FGENVNFE: TStringField;
    FGSEQNFE: TStringField;
    FGPRONFE: TStringField;
    FGDTCNFE: TDateTimeField;
    FGHRCNFE: TStringField;
    FGPRCNFE: TStringField;
    FGATUEST: TStringField;
    FGINTFIN: TStringField;
    FGSITGER: TStringField;
    FGSEQNFE_1: TStringField;
    FGRETNFE: TStringField;
    FGARQNFE: TBlobField;
    FGARQNFECANC: TBlobField;
    FGNFETHCANC: TSmallintField;
    FDDTEDEV: TDateTimeField;
    FDNUMRES: TIntegerField;
    FDCODEMP: TIntegerField;
    FDNRONFS: TIntegerField;
    FDDTECAN: TDateTimeField;
    FDHRECAN: TStringField;
    FDUSUCAN: TIntegerField;
    FDOB1CAN: TStringField;
    FDOB2CAN: TStringField;
    FDOB3CAN: TStringField;
    FDOB4CAN: TStringField;
    FDOB5CAN: TStringField;
    FDFLGNFE: TStringField;
    FDENVNFE: TStringField;
    FDSEQNFE: TStringField;
    FDPRONFE: TStringField;
    FDDTCNFE: TDateTimeField;
    FDHRCNFE: TStringField;
    FDPRCNFE: TStringField;
    FDATUEST: TStringField;
    FDINTFIN: TStringField;
    FDSITDEV: TStringField;
    FDSEQNFE_1: TStringField;
    FDRETNFE: TStringField;
    FDARQNFE: TBlobField;
    FDARQNFECANC: TBlobField;
    FDNFETHCANC: TSmallintField;
    FatPedIDFAT: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqId_PedResExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsPedDataChange(Sender: TObject; Field: TField);
    procedure bCancelarClick(Sender: TObject);
    procedure FatPedAfterScroll(DataSet: TDataSet);
    procedure grFatKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    psaida: string;
    {Private declarations}
  public
    sBaseFP, sBaseFiltroFP, sFiltroFP, sOrdemFP: string;
    sBaseFG, sBaseFiltroFG, sFiltroFG: string;
    sBaseFD, sBaseFiltroFD, sFiltroFD: string;
    {Public declarations}
  end;

var
  fmManLn3: TfmManLn3;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, ManPri,
  AuxPsq, AuxIni, ManSeg, ManCno;

{$R *.DFM}

procedure TfmManLn3.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDteFat1.Date := Date;
  EdPsqDteFat2.Date := Date;

  psaida := 'Nao';

  //  FatPed.Close;
  //  FatPed.Params[0].AsDateTime := EdPsqDteFat1.Date;
  //  FatPed.Open;

  sBaseFP := ' Select ''FP'' TAB,' +
    ' FatPed.CODEMP, FatPed.DTERES, FatPed.NUMRES, FatPed.SEQLIB, FatPed.SEQFAT, ' +
    ' FatPed.NroNfs, FatPed.DteFat, FatPed.HreFat, FatPed.CodCli, cast(FatPEd.CodCf1 as varchar(15))as CodCf1, ' +
    ' FatPed.TotFat, FatPed.TotIpi, ' +
    ' FatPed.TotGer, cast(FatPed.SitFat as varchar(45))as SitFat, FatPed.SEQNFE, ' +
    ' FatPed.ARQNFE,FatPed.ARQNFECANC, FatPed.NFETHCANC, FinCli.NomCli, FinVen.ApeVen, Fatped.ENVNFE, Fatped.RETNFE, FatPed.id_fatped idFat  ' +
    ' From FatPed,FinCli,FinVen' +
    ' Where FatPed.CodCli = FinCli.CodCli' +
    '   and FatPed.CodVen = FinVen.CodVen';

  //thiago union para cancelar nota de complemento
  sBaseFiltroFP := '';
  //sBaseFiltroFP := ' and FatPed.SitFat = ' + QuotedStr('Faturado');

  SbaseFG := ' union all ' +
    '   Select ''FG'' TAB,FATPED.codemp, FATPED.dteger, FATPED.NUMGER, cast(1 as integer)as Seqlib, cast(1 as integer)as seqfat, ' +
    ' FATPED.NroNfs, FATPED.DteFat, FATPED.HreFat, FATPED.CodCli, cast(FATPED.CodCf1 as varchar(15))as CodCf1, ' +
    ' FATPED.TotGe1, FATPED.TotIpi, ' +
    ' FATPED.TotGer, cast(FATPED.SitGer as varchar(45))as SitFat, FATPED.SEQNFE, ' +
    ' FATPED.ARQNFE,FATPED.ARQNFECANC, FATPED.NFETHCANC, FC.NomCli, FV.ApeVen, FATPED.ENVNFE, FATPED.RETNFE, FATPED.numger idFat  ' +
    ' From FATGER FATPED,FinCli FC,FinVen FV ' +
    ' Where FATPED.CodCli = FC.CodCli ' +
    ' and FATPED.CodVen = fv.CODVEN ' +
    ' and FATPED.SitGer = ' + QuotedStr('Faturado');

  sBaseFD := ' Union all ' +
    '   Select ''FD'' TAB, FatPed.codemp, FatPed.DTEDEV, FatPed.NUMRES, cast(1 as integer)as Seqlib, ' +
    '  cast(1 as integer)as seqfat,  FatPed.NroNfs, FatPed.DteDEV, FatPed.HREDEV, ' +
    '  FatPed.CodCli, cast(FatPed.CodCf1 as varchar(15))as CodCf1,  FatPed.TotDEV, ' +
    '  FatPed.TotIpi, FatPed.TotGer, cast(' + QuotedStr('Devolucao') + ' as varchar(45))as SitFat, ' +
    '  FatPed.SEQNFE, FatPed.ARQNFE,FatPed.ARQNFECANC, FatPed.NFETHCANC, FC.NomCli, FV.ApeVen, Fatped.ENVNFE, Fatped.RETNFE, FatDev.id_fatdev idFat ' +
    'From FATDEV FatPed,FinCli FC,FinVen FV  ' +
    'Where FatPed.CodCli = FC.CodCli ' +
    '  and FC.CodVen = fv.CODVEN ' +
    '  and FatPed.SitDEV = ' + QuotedStr('Devolvido');

end;

procedure TfmManLn3.bSelecionarClick(Sender: TObject);
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

  sFiltroFP := sBaseFiltroFP;
  sFiltroFG := sBaseFiltroFG;
  sFiltroFD := '';

  sOrdemFP := ' Order by 2';

  if Trim(EdPsqId_PedRes.Text) <> '' then
  begin
    sFiltroFP := sFiltroFP + ' and FATPED.NUMRES = ' + QuotedStr(EdPsqId_PedRes.Text);
    sFiltroFD := sFiltroFD + ' and FATPED.NUMRES = ' + QuotedStr(EdPsqId_PedRes.Text);
    sFiltroFG := sFiltroFG + ' and 1 <> 1 ';
  end;

  if Trim(EdPsqCodEmp.Text) <> '' then
  begin
    sFiltroFP := sFiltroFP + ' and FatPed.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
    sFiltroFG := sFiltroFG + ' and FATPED.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
    sFiltroFD := sFiltroFd + ' and FatPed.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
  end;

  if Trim(EdPsqCodCli.Text) <> '' then
  begin
    sFiltroFP := sFiltroFP + ' and FatPed.CodCli = ' + QuotedStr(EdPsqCodCli.Text);
    sFiltroFG := sFiltroFG + ' and FATPED.CodCli = ' + QuotedStr(EdPsqCodCli.Text);
    sFiltroFd := sFiltroFd + ' and FatPed.CodCli = ' + QuotedStr(EdPsqCodCli.Text);
  end;

  if Trim(EdPsqCodVen.Text) <> '' then
  begin
    sFiltroFP := sFiltroFP + ' and FatPed.CodVen = ' + QuotedStr(EdPsqCodVen.Text);
    sFiltroFd := sFiltroFd + ' and FatPed.CodVen = ' + QuotedStr(EdPsqCodVen.Text);
  end;

  if Trim(EdPsqNroNfs.Text) <> '' then
  begin
    sFiltroFP := sFiltroFP + ' and FatPed.NroNfs = ' + QuotedStr(EdPsqNroNfs.Text);
    sFiltroFG := sFiltroFG + ' and FATPED.NroNfs = ' + QuotedStr(EdPsqNroNfs.Text);
    sFiltroFd := sFiltroFd + ' and FatPed.NroNfs = ' + QuotedStr(EdPsqNroNfs.Text);
  end;

  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then
  begin
    sFiltroFP := sFiltroFP + ' and FatPed.DteFat >= ' + QuotedStr(fDateToSQL(EdPsqDteFat1.Date));
    sFiltroFG := sFiltroFG + ' and FATPED.DteFat >= ' + QuotedStr(fDateToSQL(EdPsqDteFat1.Date));
    sFiltroFd := sFiltroFd + ' and FatPed.DteDEV >= ' + QuotedStr(fDateToSQL(EdPsqDteFat1.Date));
  end;

  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then
  begin
    sFiltroFP := sFiltroFP + ' and FatPed.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDteFat2.Date));
    sFiltroFG := sFiltroFG + ' and FATPED.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDteFat2.Date));
    sFiltroFd := sFiltroFd + ' and FatPed.DteDEV <= ' + QuotedStr(fDateToSQL(EdPsqDteFat2.Date));
  end;

  with FatPed, SQL do
  begin

    Close;
    Text := sBaseFP + sFiltroFP + sBaseFG + sFiltroFG + sBaseFD + sFiltroFD + sOrdemFP;
    Open;

  end;

  grFat.SetFocus;

end;

procedure TfmManLn3.EdPsqCodEmpExit(Sender: TObject);
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
      Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

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

        fmsgErro('Empresa Informada n�o localizada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfmManLn3.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = ' + QuotedStr(EdPsqCodCli.Text);
      Open;

      EdPsqNomCli.Text := quSql.FieldByName('NomCli').AsString;
    end;

  end
  else
    EdPsqNomCli.Text := '';
end;

procedure TfmManLn3.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqApeEmp.Text := fmPsqEmp.NomEmp;
      EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManLn3.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        EdPsqApeEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;

    EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmManLn3.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'C';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodCli > 0 then
      begin

        EdPsqNomCli.Text := fmAuxIni.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

      end;

    finally

      FreeAndNil(fmAuxIni);

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

procedure TfmManLn3.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = ' + QuotedStr(EdPsqCodVen.Text);
      Open;

      EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

    end;

  end
  else
    EdPsqApeVen.Text := '';
end;

procedure TfmManLn3.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'V';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodVen > 0 then
      begin

        EdPsqApeVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

      end;

    finally

      FreeAndNil(fmAuxIni);

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

        EdPsqApeVen.Text := fmAuxPsq.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmManLn3.BbPsqCliClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'C';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodCli > 0 then
    begin

      EdPsqNomCli.Text := fmAuxIni.NomCli;
      EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLn3.BbPsqVenClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'V';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodVen > 0 then
    begin

      EdPsqApeVen.Text := fmAuxIni.NomVen;
      EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLn3.EdPsqId_PedResExit(Sender: TObject);
begin
  if Trim(EdPsqId_PedRes.Text) <> '' then
  begin

    EdPsqNroNfs.Clear;
    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqApeVen.Clear;

    EdPsqDteFat1.Clear;
    EdPsqDteFat2.Clear;

  end;
end;

procedure TfmManLn3.FormShow(Sender: TObject);
begin
  inherited;
  bselecionar.click;
  EdPsqNroNfs.SetFocus;
end;

procedure TfmManLn3.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLn3 := nil;
end;

procedure TfmManLn3.EdPsqId_PedResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManLn3.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    EdPsqId_PedRes.Clear;

    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqApeVen.Clear;

    EdPsqDteFat1.Clear;
    EdPsqDteFat2.Clear;

  end;
end;

procedure TfmManLn3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLn3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

procedure TfmManLn3.DsPedDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnNomCli.Caption := ' Cliente: ' + FatPedNomCli.Value;

  pnHreFat.Caption := FatPedHreFat.Value;

  if FatPedEnvNfe.AsString = 'Sim' then
    pnSitFat.Caption := FatPedSitFat.AsString + ' Enviado SeFaz'
  else
    pnSitFat.Caption := FatPedSitFat.AsString;

end;

procedure TfmManLn3.bCancelarClick(Sender: TObject);
var
  sFiltro1, sFiltro2, Sfiltro3, strAux: string;
begin
  inherited;

  if FatPedENVNFE.asString <> 'Sim' then
  begin

    ActiveControl := nil;

    sFiltro1 := ' and FatPed.codemp = ' + QuotedStr(IntToStr(FatPedCODEMP.AsInteger));
    sFiltro1 := sfiltro1 + ' and FatPed.numres = ' + QuotedStr(IntToStr(FatPednumres.AsInteger));
    sFiltro1 := sfiltro1 + ' and FatPed.dteres = ' + QuotedStr(formatdatetime('mm/dd/yyyy', FatPedDTERES.AsDateTime));
    sFiltro1 := sfiltro1 + ' and FatPed.seqlib = ' + QuotedStr(IntToStr(FatPedSEQLIB.AsInteger));
    sFiltro1 := sfiltro1 + ' and FatPed.seqfat = ' + QuotedStr(IntToStr(FatPedSEQFAT.AsInteger));

    sFiltro2 := ' and FatPed.codemp = ' + QuotedStr(IntToStr(FatPedcodemp.AsInteger));
    sFiltro2 := sFiltro2 + ' and FatPed.dteger = ' + QuotedStr(formatdatetime('mm/dd/yyyy', FatPeddteres.AsDateTime));
    sFiltro2 := sFiltro2 + ' and FatPed.Numger = ' + QuotedStr(IntToStr(FatPednumres.AsInteger));

    sFiltro3 := ' and FatPed.codemp = ' + QuotedStr(IntToStr(FatPedcodemp.AsInteger));
    sFiltro3 := sFiltro3 + ' and FatPed.dtedev = ' + QuotedStr(formatdatetime('mm/dd/yyyy', FatPeddteres.AsDateTime));
    sFiltro3 := sFiltro3 + ' and FatPed.Numres = ' + QuotedStr(IntToStr(FatPednumres.AsInteger));

    with FatPed, SQL do
    begin

      Close;
      Text := sBaseFP + sBaseFiltroFP + sFiltro1 + sBaseFG + sBaseFiltroFG + sFiltro2 + SbaseFd + SFiltro3;
      Open;

    end;

    if FatPed.IsEmpty = false then
    begin

      try

        fmManCno := TfmManCno.Create(Self);
        fmManCno.Tab := FatpedTab.AsString;
        fmManCno.idFat := FatpedIdFat.AsInteger;

        if FatpedTab.AsString = 'FP' then
        begin
          fmManCno.FatPed.Close;
          fmManCno.FatPed.Params[0].AsInteger := FatPedCODEMP.AsInteger;
          fmManCno.FatPed.Params[1].AsDate := FatPedDTERES.AsDateTime;
          fmManCno.FatPed.Params[2].AsInteger := FatPedNUMRES.AsInteger;
          fmManCno.FatPed.Params[3].AsInteger := FatPedSEQLIB.AsInteger;
          fmManCno.FatPed.Params[4].AsInteger := FatPedSEQFAT.AsInteger;
          fmManCno.FatPed.Open;
        end;

        if FatpedTab.AsString = 'FG' then
        begin
          fmManCno.FatGer.Close;
          fmManCno.FatGer.Params[0].AsInteger := FatPedCODEMP.AsInteger;
          fmManCno.FatGer.Params[1].AsDATE := FatPedDTERES.AsDateTime;
          fmManCno.FatGer.Params[2].AsInteger := FatPedNUMRES.AsInteger;
          fmManCno.FatGer.Open;
        end;

        if FatpedTab.AsString = 'FD' then
        begin
          fmManCno.FatDEV.Close;
          fmManCno.FatDEV.Params[0].AsInteger := FatPedCODEMP.AsInteger;
          fmManCno.FatDEV.Params[1].AsDATE := FatPedDTERES.AsDateTime;
          fmManCno.FatDEV.Params[2].AsInteger := FatPedNUMRES.AsInteger;
          fmManCno.FatDEV.Params[3].AsInteger := FatPedNRONFS.AsInteger;
          fmManCno.FatDEV.Open;
        end;

        //Thiago
        if FatPedSITFAT.AsString = 'Complemento' then
        begin
          fmmancno.EdOb1Can.DataSource := fmmancno.dsfatger;
          fmmancno.EdOb2Can.DataSource := fmmancno.dsfatger;
          fmmancno.EdOb3Can.DataSource := fmmancno.dsfatger;
          fmmancno.EdOb4Can.DataSource := fmmancno.dsfatger;

        end
        else if FatPedSITFAT.AsString = 'Devolucao' then
        begin
          fmmancno.EdOb1Can.DataSource := fmmancno.DSFatDev;
          fmmancno.EdOb2Can.DataSource := fmmancno.DSFatDev;
          fmmancno.EdOb3Can.DataSource := fmmancno.DSFatDev;
          fmmancno.EdOb4Can.DataSource := fmmancno.DSFatDev;
        end
        else
        begin
          fmmancno.EdOb1Can.DataSource := fmmancno.dsfatped;
          fmmancno.EdOb2Can.DataSource := fmmancno.dsfatped;
          fmmancno.EdOb3Can.DataSource := fmmancno.dsfatped;
          fmmancno.EdOb4Can.DataSource := fmmancno.dsfatped;

        end;

        fmManCno.VNumNota := FatPedNRONFS.AsInteger;
        fmManCno.Vchave := FatPedSEQNFE.AsString;
        fmManCno.Tab := FatpedTab.AsString;
        //Thiago Fim
        fmManCno.ShowModal;

      finally

        FreeAndNil(fmManCno);

      end;
    end;
    FatPed.Close;
    FatPed.Open;

  end
  else
  begin
    if FatPedENVNFE.asString = 'Sim' then
    begin
      strAux := '\ECCe.exe ' + IfThen(trim(ParamStr(1)) <> '', ParamStr(1), 'DEFAULT@') + ' ' + FatPedSEQNFE.AsString + ' '
        + FatpedTab.AsString + ' ' + IntToStr(GUsu_Id) + ' CN PP';

      if debughook > 0 then
         Clipboard.astext := strAux;

      Executa(ExtractFilePath(Application.exename) + strAux, SW_NORMAL);
    end;
    FatPed.Close;
    FatPed.Open;
  end;

end;

procedure TfmManLn3.FatPedAfterScroll(DataSet: TDataSet);
begin
  inherited;
  if fatpedsitfat.Value <> 'Complemento' then
  begin
    FatPe4.Active := false;
    fatpe4.SQL.Text := 'Select FatPe4.CodGru, ' + #13 +
      ' FatPe4.CodSub, ' + #13 +
      ' FatPe4.CodPro, ' + #13 +
      ' FatPe4.DesPe2 as DesPe4, ' + #13 +
      ' FatPe4.QtpPe2 as QtpPe4, ' + #13 +
      ' FatPe4.VluPe2 as VluPe4, ' + #13 +
      ' FatPe4.IcmPe2 as IcmPe4, ' + #13 +
      ' FatPe4.IpiPe2 as IpiPe4, ' + #13 +
      ' FatPe4.TotPe2 as TotPe4, ' + #13 +
      ' FatPe4.CodClp || _UNICODE_FSS ' + QuotedStr('-') + ' || FatPe4.CodGru || _UNICODE_FSS ' + QuotedStr('.') + ' || FatPe4.CodSub || _UNICODE_FSS ' +
      QuotedStr('.') + ' || FatPe4.CodPro as CodIte ' + #13 +
      'From FATPE2 FatPe4 ' + #13 +
      'Where FatPe4.CODEMP = ' + FatPedCODEMP.AsString + ' and FatPe4.DTERES = ' + QuotedStr(Formatdatetime('mm/dd/yyyy', FatPedDTERES.value)) +
      ' and FatPe4.NUMRES = ' + FatPedNUMRES.AsString + ' ' + #13 +
      'Order by FatPe4.NroPe2';
    fatpe4.open;
  end
  else
  begin
    FatPe4.Active := false;
    fatpe4.SQL.Text := 'Select FatPe4.CodGru, ' + #13 +
      ' FatPe4.CodSub, ' + #13 +
      ' FatPe4.CodPro, ' + #13 +
      ' FatPe4.Desge2 as DesPe4, ' + #13 +
      ' FatPe4.Qtpge2 as QtpPe4, ' + #13 +
      ' FatPe4.Vluge2 as VluPe4, ' + #13 +
      ' FatPe4.Icmge2 as IcmPe4, ' + #13 +
      ' FatPe4.Ipige2 as IpiPe4, ' + #13 +
      ' FatPe4.Totge2 as TotPe4, ' + #13 +
      ' FatPe4.CodClp || _UNICODE_FSS ' + QuotedStr('-') + ' || FatPe4.CodGru || _UNICODE_FSS ' + QuotedStr('.') + ' || FatPe4.CodSub || _UNICODE_FSS ' +
      QuotedStr('.') + ' || FatPe4.CodPro as CodIte ' + #13 +
      'From FATGE2 FatPe4 ' + #13 +
      'Where FatPe4.CODEMP = ' + FatPedCODEMP.AsString + ' and FatPe4.DTEGER = ' + QuotedStr(Formatdatetime('mm/dd/yyyy', FatPedDTERES.value)) +
      ' and FatPe4.NUMGER = ' + FatPedNUMRES.AsString + ' ' + #13 +
      'Order by FatPe4.NroGe2';
    fatpe4.open;

  end;
end;

procedure TfmManLn3.grFatKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  strAux: string;

begin
  inherited;
  //inseri xml de envio de nfe
  if ((Shift = [ssShift, ssCtrl]) and ((Key = VK_SUBTRACT) or (Key = VK_ADD))) then
  begin
    if Trim(GUsu_Nm) = 'SUPORTE' then
    begin
      //Inclui xml de nfe sem restri��es uso exclusivo para o suporte.
      if SalvaXML.Execute then
      begin

        strAux := SalvaXML.FileName;

        if not FileExists(strAux) then
        begin
          showmessage('Arquivo invalido.');
          Abort;
        end;

        if FatpedTab.AsString = 'FP' then
        begin
          FP.Close;
          FP.Params[0].AsInteger := FatPedCODEMP.AsInteger;
          FP.Params[1].AsDateTime := FatPedDTERES.AsDateTime;
          FP.Params[2].AsInteger := FatPedNUMRES.AsInteger;
          FP.Params[3].AsInteger := FatPedSEQLIB.AsInteger;
          FP.Params[4].AsInteger := FatPedSEQFAT.AsInteger;
          FP.Open;

          FP.Edit;
          if Key = VK_ADD then
          begin
            FP.FieldByName('EnvNFe').AsString := 'Sim';
            TBlobField(FP.FieldByName('ArqNfe')).LoadFromFile(strAux)
          end
          else
            TBlobField(FP.FieldByName('ARQNFECANC')).LoadFromFile(strAux);
          FP.Post;

          with FP do
          begin
            fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}

            try
              ApplyUpdates; {Tenta aplicar as alteracoes}

              fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}

            except
              fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
       
              if FP.State <> dsBrowse then
                FP.CancelUpdates;

              FP.Close;

            end;
            CommitUpdates; {sucesso!, limpa o cache...}
          end;

          FP.Close;
          showmessage('Concluido');
        end
        else if FatpedTab.AsString = 'FG' then
        begin
          FG.Close;
          FG.Params[0].AsInteger := FatPedCODEMP.AsInteger;
          FG.Params[1].AsDateTime := FatPedDTERES.AsDateTime;
          FG.Params[2].AsInteger := FatPedNUMRES.AsInteger;
          FG.Open;

          FG.Edit;
          if Key = VK_ADD then
          begin
            FG.FieldByName('EnvNFe').AsString := 'Sim';
            TBlobField(FG.FieldByName('ArqNfe')).LoadFromFile(strAux)
          end
          else
            TBlobField(FG.FieldByName('ARQNFECANC')).LoadFromFile(strAux);
          FG.Post;

          with FG do
          begin
            fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}

            try
              ApplyUpdates; {Tenta aplicar as alteracoes}

              fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}

            except
              fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}

              if FG.State <> dsBrowse then
                FG.CancelUpdates;

              FG.Close;

            end;
            CommitUpdates; {sucesso!, limpa o cache...}
          end;

          FG.Close;
          showmessage('Concluido');
        end
        else if FatpedTab.AsString = 'FD' then
        begin
          FD.Close;
          FD.Params[0].AsInteger := FatPedCODEMP.AsInteger;
          FD.Params[1].AsDateTime := FatPedDTERES.AsDateTime;
          FD.Params[2].AsInteger := FatPedNUMRES.AsInteger;
          FD.Params[3].AsInteger := FatPedNRONFS.AsInteger;
          FD.Open;

          FD.Edit;
          if Key = VK_ADD then
          begin
            FD.FieldByName('EnvNFe').AsString := 'Sim';
            TBlobField(FD.FieldByName('ArqNfe')).LoadFromFile(strAux)
          end
          else
            TBlobField(FD.FieldByName('ARQNFECANC')).LoadFromFile(strAux);
          FD.Post;

          with FD do
          begin
            fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}

            try
              ApplyUpdates; {Tenta aplicar as alteracoes}

              fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}

            except
              fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}

              if FD.State <> dsBrowse then
                FD.CancelUpdates;

              FD.Close;

            end;
            CommitUpdates; {sucesso!, limpa o cache...}
          end;

          FD.Close;
          showmessage('Concluido');
        end;
      end;
    end;
  end;
end;

end.

