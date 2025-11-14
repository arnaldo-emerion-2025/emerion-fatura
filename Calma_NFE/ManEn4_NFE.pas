unit ManEn4_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppDB, ppBands, ppClass, ppStrtch, ppMemo,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, dxColorEdit, dxColorDateEdit, dxDBColorEdit, dxDBColorPickEdit,
  dxDBColorDateEdit, dxDBColorCurrencyEdit, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent, IdMessage, inifiles;

type
  TfmManEn4_NFE = class(TfmPadrao)
    FatDev: TwwQuery;
    DsFatDev: TwwDataSource;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteDev1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteDev2: TdxColorDateEdit;
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
    grFatDev: ThGrid;
    quSql: TwwQuery;
    Label13: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    grFatDev1: TdxDBGraphicEdit;
    grFatDv21: TdxDBGraphicEdit;
    FatDevNUMRES: TIntegerField;
    FatDevDTEDEV: TDateTimeField;
    FatDevNRONFS: TIntegerField;
    FatDevTOTDEV: TFloatField;
    FatDevCODCLI: TIntegerField;
    Label8: TLabel;
    EdPsqNumNfs: TdxColorEdit;
    Label1: TLabel;
    EdPsqNfsCli: TdxColorEdit;
    PaintBox: TPaintBox;
    FatDevCODEMP: TIntegerField;
    FatDevDTERES: TDateTimeField;
    FatDevSEQLIB: TIntegerField;
    FatDevSEQFAT: TIntegerField;
    FatDevSEQDEV: TIntegerField;
    FatDevSITDEV: TStringField;
    FatDevNOMCLI: TStringField;
    FatDevAPEVEN: TStringField;
    FatDv2: TwwQuery;
    FatDv2CODITE: TStringField;
    FatDv2CODCFO: TStringField;
    FatDv2NCMDV2: TStringField;
    FatDv2CODST1: TStringField;
    FatDv2CODST2: TStringField;
    FatDv2CODUND: TStringField;
    FatDv2ULTQTD: TFloatField;
    FatDv2VLQDV2: TFloatField;
    FatDv2TOTDV2: TFloatField;
    FatDv2ICMDV2: TFloatField;
    FatDv2IPIDV2: TFloatField;
    FatDv2TOTIPI: TFloatField;
    FatDv2CLSIPI: TStringField;
    FatDv2DESDV2: TStringField;
    FatDv2NRODV2: TIntegerField;
    DsFatDv2: TDataSource;
    grFatDv2: ThGrid;
    FatDv2OBSDV2: TStringField;
    pnDesDv2: TPanel;
    pnProNfe: TPanel;
    pnRecNfe: TPanel;
    pnDteNfe: TPanel;
    pnHreNfe: TPanel;
    pnMensag: TPanel;
    bRecuperar: TBitBtn;
    bconsultar: TBitBtn;
    BitBtn1: TBitBtn;
    pnRetNfe: TLabel;
    pnSitImp: TPanel;
    pnSitDev: TPanel;
    FatDevIMPNFE: TStringField;
    FatDevSEQNFE: TStringField;
    FatDevRECNFE: TStringField;
    FatDevPRONFE: TStringField;
    FatDevPRCNFE: TStringField;
    FatDevDTEPNF: TDateTimeField;
    FatDevHREPNF: TStringField;
    FatDevDTCNFE: TDateTimeField;
    FatDevHRCNFE: TStringField;
    FatDevRETNFE: TStringField;
    FatDevDTECNE: TDateTimeField;
    FatDevHRECNE: TStringField;
    FatDevFLGATU: TStringField;
    FatDevEM1CLI: TStringField;
    FatDevCGCCLI: TStringField;
    FatDevINSCLI: TStringField;
    UpFatDev: TUpdateSQL;
    SaveDialog: TSaveDialog;
    quSQL1: TwwQuery;
    Memo1: TMemo;
    CorpoMail: TMemo;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    Button1: TButton;
    pn_erro: TPanel;
    memo_erro: TMemo;
    bt_erro: TButton;
    BitBtn2: TBitBtn;
    FatDevID_FATDEV: TIntegerField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPsqNumNfsExit(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure EdPsqNfsCliExit(Sender: TObject);
    procedure DsFatDevDataChange(Sender: TObject; Field: TField);
    procedure FatDv2NCMDV2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure DsFatDv2DataChange(Sender: TObject; Field: TField);
    procedure bRecuperarClick(Sender: TObject);
    procedure bconsultarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bt_erroClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    {Private declarations}
    procedure ImprimeDanfe;
    procedure ImprimeDanfeServico;
  public
    eAssunto, eAnexo, ePara, eUsuario, eSenha, eHost, EProtocolo: string;
    eAutomatico, ei, eposicao, ehomologacao, ePorta: integer;
    ecorpo: string;
    {Public declarations}
    DteRes: TDateTime;
    sBase, sFiltro, sOrdem: string;
    CodEmp, NumRes, SeqLib, SeqFat, SeqDev: integer;
  end;

var
  fmManEn4_NFE: TfmManEn4_NFE;

implementation

uses dxDemoUtils, FileCtrl, Bbgeral, Bbfuncao, Bbacesso, Bbmensag, ManGDB,
  PsqEmp, ManPri, AuxIni, AuxPsq, ManE03_NFE;

{$R *.DFM}

procedure FindReplace(const Enc, subs: string; var Texto: TMemo);
var
  ifr, Posicaofr: Integer;
  Linhafr: string;
begin
  for ifr := 0 to Texto.Lines.count - 1 do
  begin
    Linhafr := Texto.Lines[ifr];
    repeat
      Posicaofr := Pos(Enc, Linhafr);
      if Posicaofr > 0 then
      begin
        Delete(Linhafr, Posicaofr, Length(Enc));
        Insert(Subs, Linhafr, Posicaofr);
        Texto.Lines[ifr] := Linhafr;
      end;
    until Posicaofr = 0;
  end;
end;

function Executa(Arquivo: string; Estado: Integer): Integer;
var
  Programa: array[0..512] of char;
  CurDir: array[0..255] of char;
  WorkDir: string;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  StrPCopy(Programa, Arquivo);
  GetDir(0, WorkDir);
  StrPCopy(CurDir, WorkDir);
  FillChar(StartupInfo, Sizeof(StartupInfo), #0);
  StartupInfo.cb := sizeof(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Estado;
  if not CreateProcess(nil, Programa, nil, nil, false, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo) then
    Result := -1
  else
  begin
    WaitForSingleObject(ProcessInfo.hProcess, Infinite);
    //GetExitCodeProcess (ProcessInfo.hProcess, Result);
  end;
end; //Estado é o tipo de janela que aparecerá, que pode ser:

procedure TfmManEn4_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDteDev1.Date := Date;
  EdPsqDteDev2.Date := Date;

  FatDev.Close;
  FatDev.Params[0].AsDateTime := EdPsqDteDev1.Date;
  FatDev.Open;

  sBase := ' Select FatDev.id_fatdev,' +
    ' FatDev.CodEmp,' +
    ' FatDev.DteRes,' +
    ' FatDev.NumRes,' +
    ' FatDev.SeqLib,' +
    ' FatDev.SeqFat,' +
    ' FatDev.SeqDev,' +
    ' FatDev.CodCli,' +
    ' FatDev.DteDev,' +
    ' FatDev.NroNfs,' +
    ' FatDev.TotDev,' +
    ' FatDev.ImpNfe,' +
    ' FatDev.SeqNfe,' +
    ' FatDev.RecNfe,' +
    ' FatDev.ProNfe,' +
    ' FatDev.PrcNfe,' +
    ' FatDev.DtePnf,' +
    ' FatDev.HrePnf,' +
    ' FatDev.DtcNfe,' +
    ' FatDev.HrcNfe,' +
    ' FatDev.RetNfe,' +
    ' FatDev.DteCne,' +
    ' FatDev.HreCne,' +
    ' FatDev.FlgAtu,' +
    ' FatDev.SitDev,' +
    ' FinCli.NomCli,' +
    ' FinCli.Em1Cli,' +
    ' FinCli.CgcCli,' +
    ' FinCli.InsCli,' +
    ' FinVen.ApeVen ' +
    ' From FatDev ' +
    ' LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)' +
    ' LEFT JOIN FinVen ON (FatDev.CodVen = FinVen.CodVen)' +
    ' Where FatDev.FlgNot = ' + QuotedStr('Sim') +
    '   and FatDev.FlgNfe = ' + QuotedStr('Sim') +
    '   and FatDev.EnvNfe = ' + QuotedStr('Sim');

end;

procedure TfmManEn4_NFE.bSelecionarClick(Sender: TObject);
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

  sFiltro := ' ';

  sOrdem := ' Order by FatDev.NroNfs';

  if Trim(EdPsqNumRes.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.NumRes = ' + QuotedStr(EdPsqNumRes.Text);
  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodCli = ' + QuotedStr(EdPsqCodCli.Text);
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodVen = ' + QuotedStr(EdPsqCodVen.Text);
  if Trim(EdPsqNroNfs.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.NroNfs = ' + QuotedStr(EdPsqNroNfs.Text);
  if Trim(EdPsqNfsCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.NfsCli = ' + QuotedStr(EdPsqNfsCli.Text);
  if Trim(EdPsqNumNfs.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.NumNfs = ' + QuotedStr(EdPsqNumNfs.Text);

  if Trim(fLimpaStr(EdPsqDteDev1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ' + QuotedStr(fDateToSQL(EdPsqDteDev1.Date));
  if Trim(fLimpaStr(EdPsqDteDev2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ' + QuotedStr(fDateToSQL(EdPsqDteDev2.Date));

  with FatDev, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    //clipBoard.AsText := FatDev.Sql.Text;
    Open;

  end;

  grFatDev.SetFocus;

end;

procedure TfmManEn4_NFE.EdPsqCodEmpExit(Sender: TObject);
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

        fmsgErro('Empresa informada não localizada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfmManEn4_NFE.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select FinCli.NomCli From FinCli Where FinCli.CodCli = ' + QuotedStr(EdPsqCodCli.Text);
      Open;

      EdPsqNomCli.Text := FieldByName('NomCli').AsString;

    end;

  end
  else
    EdPsqNomCli.Text := '';
end;

procedure TfmManEn4_NFE.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManEn4_NFE.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManEn4_NFE.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManEn4_NFE.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmManEn4_NFE.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManEn4_NFE.BbPsqCliClick(Sender: TObject);
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

procedure TfmManEn4_NFE.BbPsqVenClick(Sender: TObject);
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

procedure TfmManEn4_NFE.EdPsqNumResExit(Sender: TObject);
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
    EdPsqApeVen.Clear;

    EdPsqDteDev1.Clear;
    EdPsqDteDev2.Clear;

  end;
end;

procedure TfmManEn4_NFE.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumNfs.SetFocus;
end;

procedure TfmManEn4_NFE.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn4_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEn4_NFE := nil;
end;

procedure TfmManEn4_NFE.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManEn4_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

procedure TfmManEn4_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManEn4_NFE.EdPsqNumNfsExit(Sender: TObject);
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
    EdPsqApeVen.Clear;

    EdPsqDteDev1.Clear;
    EdPsqDteDev2.Clear;

  end;
end;

procedure TfmManEn4_NFE.EdPsqNroNfsExit(Sender: TObject);
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
    EdPsqApeVen.Clear;

    EdPsqDteDev1.Clear;
    EdPsqDteDev2.Clear;

  end;
end;

procedure TfmManEn4_NFE.EdPsqNfsCliExit(Sender: TObject);
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
    EdPsqApeVen.Clear;

    EdPsqDteDev1.Clear;
    EdPsqDteDev2.Clear;

  end;
end;

procedure TfmManEn4_NFE.DsFatDevDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnRetNfe.Caption := Trim(FatDevRetNfe.Value);

  if Trim(FatDevPrcNfe.Value) <> '' then
  begin

    pnProNfe.Caption := ' No. do protocolo: ' + Trim(FatDevPrcNfe.Value);

    pnDteNfe.Caption := ' Processado em: ' + FormatDateTime('dd/mm/yyyy', FatDevDtcNfe.Value);

    pnHreNfe.Caption := ' Horário: ' + FatDevHrcNfe.Value;

  end
  else
  begin

    pnProNfe.Caption := ' No. do protocolo: ' + Trim(FatDevProNfe.Value);

    if FatDevDtePNF.Value > 0 then
      pnDteNfe.Caption := ' Processado em: ' + FormatDateTime('dd/mm/yyyy', FatDevDtePNF.Value)
    else
      pnDteNfe.Caption := ' Processado em: ';

    pnHreNfe.Caption := ' Horário: ' + FatDevHrePNF.Value;

  end;

  pnRecNfe.Caption := ' No. do recibo: ' + Trim(FatDevRecNfe.Value);

  if FatDevImpNfe.Value = 'Sim' then
  begin

    pnSitImp.Color := clRed;

    pnSitImp.Caption := 'Impressão confirmada';

  end
  else
  begin

    pnSitImp.Color := clLime;

    pnSitImp.Caption := 'Impressão não confirmada';

  end;

  pnSitDev.Caption := Trim(FatDevSitDev.Value);

end;

procedure TfmManEn4_NFE.FatDv2NCMDV2GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := Trim(FatDv2ClsIpi.Value);
end;

procedure TfmManEn4_NFE.DsFatDv2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesDv2.Caption := ' ' + Trim(FatDv2DesDv2.Value) + ' ' + Trim(FatDv2ObsDv2.Value);
end;

procedure TfmManEn4_NFE.bRecuperarClick(Sender: TObject);
var
  Handle: LongInt;
  IniFile: string;
  Ini: TIniFile;
  Snumeronf: string;
  vaux: string;
  VCGeraisCaminhoArquivoLeitura, VCGeraisCaminhoArquivoRetorno: string;
begin
  inherited;

  if not FileExists(ExtractFilePath(application.exename) + 'NFeEmerion2.ini') then
  begin
    if MessageBox(Handle, 'Arquivo de configuração para envio de NFe não encontrado. Deseja continuar?', 'Enviando Nfe', MB_YESNO + MB_ICONQUESTION) = IDNO
      then
    begin
      Abort;
    end;
  end;

  IniFile := ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini';

  Ini := TIniFile.Create(IniFile);
  try
    VCGeraisCaminhoArquivoLeitura := Ini.ReadString('Geral', 'PathLeitura', '');
    VCGeraisCaminhoArquivoRetorno := Ini.ReadString('Geral', 'PathRetorno', '');
  finally
    Ini.Free;
  end;

  if FatDevCodEmp.Value > 0 then
  begin

    sFiltro := ' and FatDev.CodEmp = ' + QuotedStr(IntToStr(FatDevCodEmp.Value)) +
      ' and FatDev.DteRes = ' + QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
      ' and FatDev.NumRes = ' + QuotedStr(IntToStr(FatDevNumRes.Value)) +
      ' and FatDev.SeqLib = ' + QuotedStr(IntToStr(FatDevSeqLib.Value)) +
      ' and FatDev.SeqFat = ' + QuotedStr(IntToStr(FatDevSeqFat.Value)) +
      ' and FatDev.SeqDev = ' + QuotedStr(IntToStr(FatDevSeqDev.Value));

    with FatDev, SQL do
    begin

      Close;
      Text := sBase + sFiltro;
      Open;

    end;

    if FatDevCodEmp.Value > 0 then
    begin

      if fMsg('Recupera o arquivo enviado para o cliente ?', 'O') then
      begin

        savedialog.InitialDir := VCGeraisCaminhoArquivoRetorno;
        SaveDialog.FileName := Fatdevnronfs.asstring + ' - NF-e- ' + FatdevSEQNFE.AsString + '.xml';

        with quSQL, SQL do
        begin

          Close;
          Text := ' Select FatDev.ArqNfe' +
            ' From FatDev' +
            ' Where FatDev.CodEmp = ' + QuotedStr(IntToStr(FatDevCodEmp.Value)) +
            '   and FatDev.DteRes = ' + QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
            '   and FatDev.NumRes = ' + QuotedStr(IntToStr(FatDevNumRes.Value)) +
            '   and FatDev.SeqLib = ' + QuotedStr(IntToStr(FatDevSeqLib.Value)) +
            '   and FatDev.SeqFat = ' + QuotedStr(IntToStr(FatDevSeqFat.Value)) +
            '   and FatDev.SeqDev = ' + QuotedStr(IntToStr(FatDevSeqDev.Value));
          Open;
          vaux := VCGeraisCaminhoArquivoRetorno + '\' + FatdevNRONFS.asstring + ' - NF-e- ' + FatdevSEQNFE.asstring + '.xml';

          if FieldbyName('ArqNFE').AsString <> null then
          begin

            if SaveDialog.Execute then
            begin
              TBlobField(FieldByName('ARQNFE')).SaveToFile(SaveDialog.FileName);
              vaux := SaveDialog.filename;
            end
            else
              vaux := VCGeraisCaminhoArquivoRetorno + '\' + FatdevNRONFS.asstring + ' - NF-e- ' + FatdevSEQNFE.asstring + '.xml';

          end;
        end;
      end
      else
        vaux := VCGeraisCaminhoArquivoRetorno + '\' + FatdevNRONFS.asstring + ' - NF-e- ' + FatdevSEQNFE.asstring + '.xml';

      if fMsg('Deseja enviar arquivo magnético da DANFE por e-mail para o cliente ?', 'O') then
      begin
        ini := TIniFile.create(IniFile);
        try
          ehost := ini.ReadString('E-mail', 'host', '');
          eusuario := ini.ReadString('E-mail', 'usuario', '');
          esenha := ini.ReadString('E-mail', 'senha', '');
          eAutomatico := ini.ReadInteger('E-mail', 'automatico', 0);
          ehomologacao := ini.ReadInteger('WebService', 'Ambiente', 1);
          ePORta := ini.ReadInteger('E-mail', 'PortaSMTP', 25);
        finally
          ini.free;
        end;
        if ehomologacao = 1 then
          epara := inputbox('E-mail do XML', 'Digite o endereço de e-mail do destinatário', 'fernanda@emerion.com.br')
        else
          ePara := inputbox('E-mail do XML', 'Digite o endereço de e-mail do destinatário', FatDevEm1Cli.Value);

        sNumeroNF := copy(fNumZeros(IntToStr(FatdevNroNfs.Value), 9), 1, 3) + '.' +
          copy(fNumZeros(IntToStr(FatdevNroNfs.Value), 9), 4, 3) + '.' +
          copy(fNumZeros(IntToStr(FatdevNroNfs.Value), 9), 7, 3);
        eAssunto := 'NF-e: ' + sNumeroNF + ' ' + UpperCase(Trim(FatdevNOMCLI.AsString));

        FindReplace('#PROTOCOLO#', eProtocolo, corpomail);
        FindReplace('#SERIE#', '1', corpomail);
        FindReplace('#EMITENTE#', trim(FatdevNOMCLI.AsString), corpomail);
        FindReplace('#NUMERONOTA#', SNumeroNF, corpomail);

        eanexo := VCGeraisCaminhoArquivoRetorno + '\' + fatdevnronfs.asstring + ' - NF-e- ' + fatdevseqnfe.asstring + '.xml';
        button1.Click;
        //                end;//mandando e-mail
        ////============================== Mandando E-mail Para o Cliente ==== ////

      end;
    end;
  end;
end;

procedure TfmManEn4_NFE.bconsultarClick(Sender: TObject);
var
  UfeEmp: string;
  ArqRe1: string;
  Handle: LongInt;
  ArqEnv: TextFile;
  ArqRet: TStringList;
  IniFile: string;
  Ini: TIniFile;
  VCGeraisCaminhoArquivoLeitura, VCGeraisCaminhoArquivoRetorno, vaux, vchave: string;
  vnumnota, i: integer;

begin
  inherited;

  if not FileExists(ExtractFilePath(application.exename) + 'NFeEmerion2.ini') then
  begin
    if MessageBox(Handle, 'Arquivo de configuração para envio de NFe não encontrado. Deseja continuar?', 'Enviando Nfe', MB_YESNO + MB_ICONQUESTION) = IDNO
      then
    begin
      Abort;
    end;
  end;

  IniFile := ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini';

  Ini := TIniFile.Create(IniFile);
  try
    VCGeraisCaminhoArquivoLeitura := Ini.ReadString('Geral', 'PathLeitura', '');
    VCGeraisCaminhoArquivoRetorno := Ini.ReadString('Geral', 'PathRetorno', '');
  finally
    Ini.Free;
  end;

  if FatDevCodEmp.Value > 0 then
  begin

    sFiltro := ' and FatDev.CodEmp = ' + QuotedStr(IntToStr(FatDevCodEmp.Value)) +
      ' and FatDev.DteRes = ' + QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
      ' and FatDev.NumRes = ' + QuotedStr(IntToStr(FatDevNumRes.Value)) +
      ' and FatDev.SeqLib = ' + QuotedStr(IntToStr(FatDevSeqLib.Value)) +
      ' and FatDev.SeqFat = ' + QuotedStr(IntToStr(FatDevSeqFat.Value)) +
      ' and FatDev.SeqDev = ' + QuotedStr(IntToStr(FatDevSeqDev.Value));

    with FatDev, SQL do
    begin

      Close;
      Text := sBase + sFiltro;
      Open;

    end;

    if FatDevCodEmp.Value > 0 then
    begin

      if fMsg('Confirma consulta ?', 'O') then
      begin

        with quSQL, SQL do
        begin

          Close;
          Text := ' Select GerEmp.SigUfe' +
            ' From GerEmp' +
            ' Where GerEmp.CodEmp = ' + QuotedStr(IntToStr(FatDevCodEmp.Value));
          Open;

          UfeEmp := fLimpaAcentos(FieldbyName('SigUfe').AsString);

        end;

        Application.ProcessMessages;

        fmManPri.Enabled := False;
        fmManEN4_NFE.Enabled := False;
        pnMensag.Visible := True;
        pnMensag.Caption := 'Aguarde. Verificando status do serviço.';
        ArqRe1 := VCGeraisCaminhoArquivoLeitura + '\CSNOTA' + FatdevNRONFS.asstring + '.txt';
        DeleteFile(ArqRe1);
        AssignFile(ArqEnv, ArqRe1);
        Rewrite(ArqEnv);
        vchave := fatdevseqnfe.asstring;
        vnumnota := FatdevNRONFS.Value;
        vaux := VCGeraisCaminhoArquivoRetorno + '\' + FatdevNRONFS.asstring + ' - NF-e- ' + Vchave + '.xml';
        vaux := vaux + fReplicate(' ', 401 - length(vaux));
        Writeln(ArqEnv, 'EMC' +
          vaux);
        CloseFile(ArqEnv);
        Application.ProcessMessages;
        pnMensag.Caption := 'Aguarde. Consultando informações da nota.';
        //chamar o Nfemerion aqui

        //if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
          Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe CONSULTA ' + inttostr(vnumnota), SW_NORMAL);
        //else
        //  AbreNfe(PChar('CONSULTA'), pChar(vnumnota));

        if FileExists(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' + inttostr(VNumNota) + '.txt') then
        begin
          Application.ProcessMessages;
          ArqRet := TStringList.Create;
          ArqRet.LoadFromFile(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' + inttostr(VNumNota) + '.txt');
          i := 1;
          repeat
            i := i + 1;
          until not FileExists(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' + inttostr(VNumNota) + '.EP' + inttostr(i));
          FreeAndNil(ArqRet);
          pn_erro.visible := true;
          pn_erro.bringtofront;
          memo_erro.Font.Color := clBlack;
          memo_erro.Lines.Clear;
          memo_erro.Lines.LoadFromFile(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' + inttostr(VNumNota) + '.txt');
          MoveFile(pchar(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' + inttostr(VNumNota) + '.txt'), pchar(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' +
            inttostr(VNumNota) + '.EP' + inttostr(i)));
        end
        else if FileExists(VCGeraisCaminhoArquivoRetorno + '\' + IntToStr(vnumnota) + ' Consulta - NF-e- ' + inttostr(vnumnota) + '.TXT') then
        begin
          pn_erro.visible := true;
          pn_erro.bringtofront;
          memo_erro.Font.Color := clBlack;
          memo_erro.Lines.Clear;
          memo_erro.Lines.LoadFromFile(VCGeraisCaminhoArquivoRetorno + '\' + IntToStr(vnumnota) + ' Consulta - NF-e- ' + inttostr(vnumnota) + '.TXT');
        end; // Apagar no Sefaz

      end; // codemp
    end; //confirma
  end;
  fmManPri.Enabled := True;
  fmManEn4_NFE.Enabled := True;
  pnMensag.Visible := False;
end;

procedure TfmManEn4_NFE.BitBtn1Click(Sender: TObject);
var
  Vnumnota, IniFile, CaminhoLeitura, CaminhoRetorno, chaveN: string;
  ini: Tinifile;
  TDAnfe: TextFile;
begin
  inherited;

  if fmManGDB.BuscaSimples('FATPAR', 'ENVIO_SERVICO', ' 1=1 ') <> 'S' then
  begin
    ImprimeDanfe;
  end
  else
  begin
    ImprimeDanfeServico;
  end;

  if not FileExists(ExtractFilePath(application.exename) + 'NFeEmerion2.ini') then
  begin
    if MessageBox(Handle, 'Arquivo de configuração para envio de NFe não encontrado. Deseja continuar?', 'Enviando Nfe', MB_YESNO + MB_ICONQUESTION) = IDNO
      then
    begin
      Abort;
    end;
  end;

  IniFile := ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini';

  Ini := TIniFile.Create(IniFile);
  try
    CaminhoLeitura := Ini.ReadString('Geral', 'PathLeitura', '');
    CaminhoRetorno := Ini.ReadString('Geral', 'PathRetorno', '');
  finally
    Ini.Free;
  end;

  if FatDevCodEmp.Value > 0 then
  begin

    sFiltro := ' and FatDev.CodEmp = ' + QuotedStr(IntToStr(FatDevCodEmp.Value)) +
      ' and FatDev.DteRes = ' + QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
      ' and FatDev.NumRes = ' + QuotedStr(IntToStr(FatDevNumRes.Value)) +
      ' and FatDev.SeqLib = ' + QuotedStr(IntToStr(FatDevSeqLib.Value)) +
      ' and FatDev.SeqFat = ' + QuotedStr(IntToStr(FatDevSeqFat.Value)) +
      ' and FatDev.SeqDev = ' + QuotedStr(IntToStr(FatDevSeqDev.Value));

    with FatDev, SQL do
    begin

      Close;
      Text := sBase + sFiltro;
      Open;
      vnumnota := FatdevNRONFS.AsString;
      chaven := FatdevSEQNFE.AsString;

    end;

    if FatDevCodEmp.Value > 0 then
    begin
      AssignFile(TDANFE, CaminhoLeitura + '\' + 'DANFE' + VNumNota + '.txt');
      Rewrite(TDANFE);
      WriteLn(TDANFE, CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chaveN + '.xml');
      CloseFile(TDANFE);

     // if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
        Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe DANFE ' + vnumnota, SW_NORMAL);
     // else
     //   AbreNfe(PChar('DANFE'), pChar(vnumnota));

      if FatDevImpNFe.Value = 'Nao' then
      begin

        if fMsg('DANFE impressa corretamente ?', 'O') then
        begin

          FatDev.Edit;

          FatDevFlgAtu.Value := 'F';
          FatDevImpNFe.Value := 'Sim';

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

              FatDev.Close;
              FatDev.Open;

              grFatDev.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManEn4_NFE.Button1Click(Sender: TObject);
begin
  idmessage1.clear;

  IdSMTP1.host := ehost;
  idsmtp1.Password := eSenha;
  idsmtp1.UserID := eUsuario;
  idsmtp1.Port := eporta;
  idmessage1.From.Address := eUsuario;
  IdMessage1.Recipients.EMailAddresses := ePara;
  IdMessage1.Priority := mpHigh;
  IdMessage1.Subject := eAssunto;
  IdMessage1.ContentType := 'text/html';
  IdMessage1.Body.text := corpomail.lines.text;
  IdMessage1.IsEncoded := True;
  IdMessage1.ReceiptRecipient.Text := IdMessage1.From.Text; // Auto Resposta
  TIdAttachment.create(idmessage1.MessageParts, TFileName(eAnexo));
  IdSMTP1.Connect;
  try
    IdSMTP1.Send(IdMessage1);
    Application.MessageBox('Email enviado com sucesso!', 'Confirmação', MB_ICONINFORMATION + MB_OK);
  except
    Showmessage('Não foi possível enviar o e-mail para o cliente.');
  end;
  IdSMTP1.Disconnect;
  corpomail.Lines.text := memo1.lines.text;

end;

procedure TfmManEn4_NFE.bt_erroClick(Sender: TObject);
begin
  inherited;
  memo_erro.Font.Color := clWhite;
  pn_erro.visible := False;
  fmManEN4_NFE.Enabled := True;
  pnMensag.Visible := False;

end;

procedure TfmManEn4_NFE.BitBtn2Click(Sender: TObject);
var
  strAux: string;
begin
  inherited;
  strAux := '\ECCe.exe ' + IfThen(trim(ParamStr(1)) <> '', ParamStr(1), 'DEFAULT@') + ' ' + FatDEVSEQNFE.AsString + ' FD ' + IntToStr(GUsu_Id);
  Executa(ExtractFilePath(Application.exename) + strAux, SW_NORMAL);
end;

procedure TfmManEn4_NFE.ImprimeDanfe;
var
  Vnumnota, IniFile, CaminhoLeitura, CaminhoRetorno, chaveN: string;
  ini: Tinifile;
  TDAnfe: TextFile;
begin
  inherited;

  if not FileExists(ExtractFilePath(application.exename) + 'NFeEmerion2.ini') then
  begin
    if MessageBox(Handle, 'Arquivo de configuração para envio de NFe não encontrado. Deseja continuar?', 'Enviando Nfe', MB_YESNO + MB_ICONQUESTION) = IDNO
      then
    begin
      Abort;
    end;
  end;

  IniFile := ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini';

  Ini := TIniFile.Create(IniFile);
  try
    CaminhoLeitura := Ini.ReadString('Geral', 'PathLeitura', '');
    CaminhoRetorno := Ini.ReadString('Geral', 'PathRetorno', '');
  finally
    Ini.Free;
  end;

  if FatDevCodEmp.Value > 0 then
  begin

    sFiltro := ' and FatDev.CodEmp = ' + QuotedStr(IntToStr(FatDevCodEmp.Value)) +
      ' and FatDev.DteRes = ' + QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
      ' and FatDev.NumRes = ' + QuotedStr(IntToStr(FatDevNumRes.Value)) +
      ' and FatDev.SeqLib = ' + QuotedStr(IntToStr(FatDevSeqLib.Value)) +
      ' and FatDev.SeqFat = ' + QuotedStr(IntToStr(FatDevSeqFat.Value)) +
      ' and FatDev.SeqDev = ' + QuotedStr(IntToStr(FatDevSeqDev.Value));

    with FatDev, SQL do
    begin

      Close;
      Text := sBase + sFiltro;
      Open;
      vnumnota := FatdevNRONFS.AsString;
      chaven := FatdevSEQNFE.AsString;

    end;

    if FatDevCodEmp.Value > 0 then
    begin
      AssignFile(TDANFE, CaminhoLeitura + '\' + 'DANFE' + VNumNota + '.txt');
      Rewrite(TDANFE);
      WriteLn(TDANFE, CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chaveN + '.xml');
      CloseFile(TDANFE);

      //if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
        Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe DANFE ' + vnumnota, SW_NORMAL);
      //else
      //  AbreNfe(PChar('DANFE'), pChar(vnumnota));

      if FatDevImpNFe.Value = 'Nao' then
      begin

        if fMsg('DANFE impressa corretamente ?', 'O') then
        begin

          FatDev.Edit;

          FatDevFlgAtu.Value := 'F';
          FatDevImpNFe.Value := 'Sim';

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

              FatDev.Close;
              FatDev.Open;

              grFatDev.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;
        end;
      end;
    end;
  end;

end;

procedure TfmManEn4_NFE.ImprimeDanfeServico;
begin
  fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'EFATURA||FATDEV_IMPRIME||' + FatDevID_FATDEV.AsString + '||');
end;

end.
