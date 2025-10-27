unit ManLn8_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorPickEdit, dxColorCurrencyEdit, dxColorEdit,
  dxColorDateEdit, dxfProgressBar, INIFILES, IdComponent, IdTCPConnection,
  IdTCPClient, IdMessageClient, IdSMTP, IdBaseComponent, IdMessage, clipbrd;

type
  TfmManLn8_NFE = class(TfmPadrao)
    FatPed: TwwQuery;
    FatPe2: TwwQuery;
    DsFatPe2: TwwDataSource;
    DsFatPed: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label28: TLabel;
    EdPsqDteFat1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteFat2: TdxColorDateEdit;
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
    EdPsqApeVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label1: TLabel;
    EdPsqUfeFat: TdxColorPickEdit;
    grFatPed: ThGrid;
    quSql: TwwQuery;
    FatPedDTEFAT: TDateTimeField;
    FatPedNRONFS: TIntegerField;
    FatPedTOTGER: TFloatField;
    FatPedCODPFA: TStringField;
    FatPedCODCLI: TIntegerField;
    Label13: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    grFatPed1: TdxDBGraphicEdit;
    grFatPe21: TdxDBGraphicEdit;
    grFatPe2: ThGrid;
    FatPe2DESPE2: TStringField;
    FatPe2QTPPE2: TFloatField;
    FatPe2VLUPE2: TFloatField;
    FatPe2IPIPE2: TFloatField;
    FatPe2ICMPE2: TFloatField;
    FatPe2TOTPE2: TFloatField;
    FatPe2TOTIPI: TFloatField;
    FatPe2CODCFO: TStringField;
    FatPe2CLSIPI: TStringField;
    FatPe2CODUND: TStringField;
    FatPe2CODSIT: TStringField;
    pnProNfe: TPanel;
    pnRecNfe: TPanel;
    pnDteNfe: TPanel;
    pnHreNfe: TPanel;
    pnSitFat: TPanel;
    UpFatPed: TUpdateSQL;
    pnMensag: TPanel;
    bRecuperar: TBitBtn;
    bconsultar: TBitBtn;
    BitBtn1: TBitBtn;
    pnRetNfe: TLabel;
    pnSitImp: TPanel;
    FatPedRETNFE: TStringField;
    FatPedDTECNE: TDateTimeField;
    FatPedHRECNE: TStringField;
    FatPedFLGATU: TStringField;
    FatPedSITFAT: TStringField;
    FatPedIMPNFE: TStringField;
    SaveDialog: TSaveDialog;
    FatPedRECNFE: TStringField;
    FatPedPRONFE: TStringField;
    FatPedPRCNFE: TStringField;
    FatPedDTCNFE: TDateTimeField;
    FatPedHRCNFE: TStringField;
    FatPedCODEMP: TIntegerField;
    FatPedSEQNFE: TStringField;
    FatPedDTEPNF: TDateTimeField;
    FatPedHREPNF: TStringField;
    quSQL1: TwwQuery;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    FatPe2CODITE: TStringField;
    FatPedCODCF1: TStringField;
    FatPedBASICM: TFloatField;
    FatPedTOTICM: TFloatField;
    FatPedBASSUB: TFloatField;
    FatPedTOTSUB: TFloatField;
    FatPedBASIPI: TFloatField;
    FatPedTOTIPI: TFloatField;
    FatPedTOTFAT: TFloatField;
    FatPedTENCLI: TStringField;
    FatPedENDCLI: TStringField;
    FatPedNUMCLI: TStringField;
    FatPedREFCLI: TStringField;
    FatPedBAICLI: TStringField;
    FatPedCIDCLI: TStringField;
    FatPedUFECLI: TStringField;
    FatPedCGCCLI: TStringField;
    FatPedINSCLI: TStringField;
    FatPedNOMCLI: TStringField;
    FatPedEM1CLI: TStringField;
    FatPe2NCMPE2: TStringField;
    pn_erro: TPanel;
    memo_erro: TMemo;
    bt_erro: TButton;
    Memo1: TMemo;
    CorpoMail: TMemo;
    Button1: TButton;
    BitBtn2: TBitBtn;
    FatPedARQNFE: TBlobField;
    FatPedARQNFECANC: TBlobField;
    Button2: TButton;
    Button3: TButton;
    FatPedPROTDPEC: TStringField;
    FatPedID_FATPED: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqPfaClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqNumResExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure DsFatPedDataChange(Sender: TObject; Field: TField);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bRecuperarClick(Sender: TObject);
    procedure bconsultarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FatPe2NCMPE2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure bt_erroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    CodEmp: integer;
    DteRes: TDateTime;
    NumRes: integer;
    SeqLib: integer;
    SeqFat: integer;
    eAssunto, eAnexo, ePDF, ePara, eUsuario, eSenha, eHost, EProtocolo: string;
    eAutomatico, ei, eposicao, ehomologacao, ePorta: integer;
    ecorpo: string;
    {Private declarations}

    procedure ImprimeDanfe;
    procedure ImprimeDanfeServico;
  public
    {Public declarations}
    sBase, sFiltro, sOrdem: string;
    procedure ReemprimeServico;
  end;

var
  fmManLn8_NFE: TfmManLn8_NFE;

implementation

uses dxDemoUtils, FileCtrl, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp,
  PsqPfa, ManPri, AuxPsq, AuxIni, ManE01_NFE;

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

procedure TfmManLn8_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDteFat1.Date := Date;
  EdPsqDteFat2.Date := Date;

  FatPed.Close;
  FatPed.Params[0].AsDateTime := EdPsqDteFat1.Date;
  FatPed.Open;

  sBase := ' Select FatPed.CodEmp,' +
    ' FatPed.DteRes,' +
    ' FatPed.NumRes,' +
    ' FatPed.SeqLib,' +
    ' FatPed.SeqFat,' +
    ' FatPed.DteFat,' +
    ' FatPed.NroNfs,' +
    ' FatPed.CodCli,' +
    ' FatPed.CodPfa,' +
    ' FatPed.CodCf1,' +
    ' FatPed.TenCli,' +
    ' FatPed.EndCli,' +
    ' FatPed.NumCli,' +
    ' FatPed.RefCli,' +
    ' FatPed.BaiCli,' +
    ' FatPed.CidCli,' +
    ' FatPed.UfeCli,' +
    ' FatPed.BasIcm,' +
    ' FatPed.TotIcm,' +
    ' FatPed.BasSub,' +
    ' FatPed.TotSub,' +
    ' FatPed.BasIpi,' +
    ' FatPed.TotIpi,' +
    ' FatPed.TotFat,' +
    ' FatPed.TotGer,' +
    ' FatPed.ImpNfe,' +
    ' FatPed.SeqNfe,' +
    ' FatPed.RecNfe,' +
    ' FatPed.ProNfe,' +
    ' FatPed.PrcNfe,' +
    ' FatPed.DtePnf,' +
    ' FatPed.HrePnf,' +
    ' FatPed.DtcNfe,' +
    ' FatPed.HrcNfe,' +
    ' FatPed.RetNfe,' +
    ' FatPed.DteCne,' +
    ' FatPed.HreCne,' +
    ' FatPed.FlgAtu,' +
    ' FatPed.SitFat,' +
    ' FatPEd.ID_FATPED,' +
    ' FinCli.NomCli,' +
    ' FinCli.CgcCli,' +
    ' FinCli.InsCli,' +
    ' FinCli.Em1Cli,' +
    ' FatPed.ArqNFe, FatPed.ARQNFECANC,FatPed.PROTDPEC ' +
    ' From FatPed,FinCli' +
    ' Where FatPed.CodCli = FinCli.CodCli';

end;

procedure TfmManLn8_NFE.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  sFiltro := ' and not FatPed.SitFat = ' + QuotedStr('Nao Concluido') + ' and FatPed.EnvNfe = ' + QuotedStr('Sim');

  sOrdem := ' Order by FatPed.NroNfs';

  if Trim(EdPsqNumRes.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.NumRes = ' + QuotedStr(EdPsqNumRes.Text);
  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodCli = ' + QuotedStr(EdPsqCodCli.Text);
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodVen = ' + QuotedStr(EdPsqCodVen.Text);
  if Trim(EdPsqCodPfa.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodPfa = ' + QuotedStr(EdPsqCodPfa.Text);
  if Trim(EdPsqUfeFat.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.UfeFat = ' + QuotedStr(EdPsqUfeFat.Text);
  if Trim(EdPsqNroNfs.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.NroNfs = ' + QuotedStr(EdPsqNroNfs.Text);

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteRes >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteRes <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));
  if Trim(fLimpaStr(EdPsqDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat >= ' + QuotedStr(fDateToSQL(EdPsqDteFat1.Date));
  if Trim(fLimpaStr(EdPsqDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDteFat2.Date));

  with FatPed, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;

    if debughook > 0 then
       Clipboard.AsText := Text;

    Open;

  end;

  grFatPed.SetFocus;

end;

procedure TfmManLn8_NFE.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

      if GFlgAce = 'Sim' then
        Text := Text + ' and GerEmp.CodFil > ' + QuotedStr('0');

      Open;

      EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString;

    end;

    if Trim(quSQL.FieldbyName('ApeEmp').AsString) = '' then
      fmsgErro('Empresa informada não localizada.', EdPsqCodEmp);

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfmManLn8_NFE.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmManLn8_NFE.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManLn8_NFE.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
  end;
end;

procedure TfmManLn8_NFE.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn8_NFE.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select FinVen.ApeVen From FinVen Where FinVen.CodVen = ' + QuotedStr(EdPsqCodVen.Text);
      Open;

      EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

    end;

  end
  else
    EdPsqApeVen.Text := '';
end;

procedure TfmManLn8_NFE.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManLn8_NFE.BbPsqCliClick(Sender: TObject);
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

procedure TfmManLn8_NFE.BbPsqVenClick(Sender: TObject);
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

procedure TfmManLn8_NFE.EdPsqNumResExit(Sender: TObject);
begin
  if Trim(EdPsqNumRes.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqApeVen.Clear;
    EdPsqCodPfa.Clear;
    EdPsqNomPfa.Clear;
    EdPsqUfeFat.Clear;

    EdPsqDteRes1.Clear;
    EdPsqDteRes2.Clear;
    EdPsqDteFat1.Clear;
    EdPsqDteFat2.Clear;

  end;
end;

procedure TfmManLn8_NFE.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNroNfs.SetFocus;
end;

procedure TfmManLn8_NFE.BbPsqPfaClick(Sender: TObject);
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
        '        EstPfa.ModPfa ' +
        ' From EstPfa' +
        ' Where EstPfa.TipPfa = :TipPfa' +
        '   and EstPfa.ModPfa = :ModPfa' +
        ' Order by EstPfa.DscPfa';

      with Params do
      begin

        Params[0].AsString := 'Saida';
        Params[1].AsString := 'Vendas';

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

procedure TfmManLn8_NFE.DsFatPedDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnRetNfe.Caption := Trim(FatPedRetNfe.Value);
  pnSitFat.Caption := Trim(FatPedSitFat.Value);

  if Trim(FatPedPrcNfe.Value) <> '' then
  begin

    pnProNfe.Caption := ' No. do protocolo: ' + Trim(FatPedPrcNfe.Value);

    pnDteNfe.Caption := ' Processado em: ' + FormatDateTime('dd/mm/yyyy', FatPedDtcNfe.Value);

    pnHreNfe.Caption := ' Horário: ' + FatPedHrcNfe.Value;

  end
  else
  begin

    pnProNfe.Caption := ' No. do protocolo: ' + Trim(FatPedProNfe.Value);

    if FatPedDtePNF.Value > 0 then
      pnDteNfe.Caption := ' Processado em: ' + FormatDateTime('dd/mm/yyyy', FatPedDtePNF.Value)
    else
      pnDteNfe.Caption := ' Processado em: ';

    pnHreNfe.Caption := ' Horário: ' + FatPedHrePNF.Value;

  end;

  pnRecNfe.Caption := ' No. do recibo: ' + Trim(FatPedRecNfe.Value);

  if FatPedImpNfe.Value = 'Sim' then
  begin

    pnSitImp.Color := clRed;

    pnSitImp.Caption := 'Impressão confirmada';

  end
  else
  begin

    pnSitImp.Color := clLime;

    pnSitImp.Caption := 'Impressão não confirmada';

  end;
end;

procedure TfmManLn8_NFE.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
          '        EstPfa.ModPfa ' +
          ' From EstPfa' +
          ' Where EstPfa.TipPfa = :TipPfa' +
          '   and EstPfa.ModPfa = :ModPfa' +
          ' Order by EstPfa.DscPfa';

        with Params do
        begin

          Params[0].AsString := 'Saida';
          Params[1].AsString := 'Vendas';

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

procedure TfmManLn8_NFE.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLn8_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLn8_NFE := nil;
end;

procedure TfmManLn8_NFE.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManLn8_NFE.EdPsqCodPfaExit(Sender: TObject);
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

procedure TfmManLn8_NFE.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodCli.Clear;
    EdPsqNomCli.Clear;
    EdPsqCodVen.Clear;
    EdPsqApeVen.Clear;
    EdPsqCodPfa.Clear;
    EdPsqNomPfa.Clear;
    EdPsqUfeFat.Clear;
    EdPsqNumRes.Clear;

    EdPsqDteRes1.Clear;
    EdPsqDteRes2.Clear;
    EdPsqDteFat1.Clear;
    EdPsqDteFat2.Clear;

  end;
end;

procedure TfmManLn8_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLn8_NFE.bRecuperarClick(Sender: TObject);
var
  UfeEmp: string;
  ArqRe1: string;
  ArqRe2: string;
  ArqRs1: string;
  ArqRs2: string;
  FlgRej: string;
  LinArq: string;
  EmaCli: string;
  MSGNFE: string;
  SeqEnc: integer;
  SeqLin: integer;
  SeqRet: Boolean;
  Handle: LongInt;
  ArqEnv: TextFile;
  ArqRet: TStringList;
  IniFile: string;
  Ini: TIniFile;
  Snumeronf, sAssunto: string;
  vaux: string;
  VCAMINHOPDF, VCGeraisCaminhoArquivoLeitura, VCGeraisCaminhoArquivoRetorno, vchave: string;
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
    VCaminhoPDF := Ini.ReadString('Geral', 'PathDANFE', '');
  finally
    Ini.Free;
  end;

  if FatPedCodEmp.Value > 0 then
  begin

    CodEmp := FatPedCodEmp.Value;
    DteRes := FatPedDteRes.Value;
    NumRes := FatPedNumRes.Value;
    SeqLib := FatPedSeqLib.Value;
    SeqFat := FatPedSeqFat.Value;

    with FatPed, SQL do
    begin

      Close;
      Text := sBase +
        ' and FatPed.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
        ' and FatPed.DteRes = ' + QuotedStr(fDateToSQL(DteRes)) +
        ' and FatPed.NumRes = ' + QuotedStr(IntToStr(NumRes)) +
        ' and FatPed.SeqLib = ' + QuotedStr(IntToStr(SeqLib)) +
        ' and FatPed.SeqFat = ' + QuotedStr(IntToStr(SeqFat));
      Open;

    end;

    if FatPedCodEmp.Value > 0 then
    begin

      if fMsg('Recupera o arquivo enviado para o cliente ?', 'O') then
      begin

        savedialog.InitialDir := VCGeraisCaminhoArquivoRetorno;
        SaveDialog.FileName := FatPednronfs.asstring + ' - NF-e- ' + FatPedSEQNFE.AsString + '.xml';

        with quSQL, SQL do
        begin

          Close;
          Text := ' Select FatPed.ArqNfe' +
            ' From FatPed' +
            ' Where FatPed.CodEmp = ' + QuotedStr(IntToStr(FatPedCodEmp.Value)) +
            '   and FatPed.DteRes = ' + QuotedStr(fDateToSQL(FatPedDteRes.Value)) +
            '   and FatPed.NumRes = ' + QuotedStr(IntToStr(FatPedNumRes.Value)) +
            '   and FatPed.SeqLib = ' + QuotedStr(IntToStr(FatPedSeqLib.Value)) +
            '   and FatPed.SeqFat = ' + QuotedStr(IntToStr(FatPedSeqFat.Value));
          Open;
          vaux := VCGeraisCaminhoArquivoRetorno + '\' + FatPedNRONFS.asstring + ' - NF-e- ' + FatPedSEQNFE.asstring + '.xml';

          if FieldbyName('ArqNFE').AsString <> null then
          begin

            if SaveDialog.Execute then
            begin
              TBlobField(FieldByName('ARQNFE')).SaveToFile(SaveDialog.FileName);
              vaux := SaveDialog.filename;
            end
            else
              vaux := VCGeraisCaminhoArquivoRetorno + '\' + FatPedNRONFS.asstring + ' - NF-e- ' + FatPedSEQNFE.asstring + '.xml';

          end;
        end;
      end
      else
        vaux := VCGeraisCaminhoArquivoRetorno + '\' + FatPedNRONFS.asstring + ' - NF-e- ' + FatPedSEQNFE.asstring + '.xml';

      if fMsg('Deseja enviar arquivo XML da DANFE por e-mail para o cliente ?', 'O') then
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
          ePara := inputbox('E-mail do XML', 'Digite o endereço de e-mail do destinatário', FatPedEm1Cli.Value);

        sNumeroNF := copy(fNumZeros(IntToStr(FatPedNroNfs.Value), 9), 1, 3) + '.' +
          copy(fNumZeros(IntToStr(FatPedNroNfs.Value), 9), 4, 3) + '.' +
          copy(fNumZeros(IntToStr(FatPedNroNfs.Value), 9), 7, 3);
        eAssunto := 'NF-e: ' + sNumeroNF + ' ' + UpperCase(Trim(FatPedNOMCLI.AsString));

        FindReplace('#PROTOCOLO#', eProtocolo, corpomail);
        FindReplace('#SERIE#', '1', corpomail);
        FindReplace('#EMITENTE#', trim(FatPedNOMCLI.AsString), corpomail);
        FindReplace('#NUMERONOTA#', SNumeroNF, corpomail);

        eanexo := VCGeraisCaminhoArquivoRetorno + '\' + fatpednronfs.asstring + ' - NF-e- ' + fatpedseqnfe.asstring + '.xml';
        ePDF := VCaminhoPDF + '\' + fatpedseqnfe.asstring + '.pdf';

        if not FileExists(epdf) then
        ePDF := VCaminhoPDF + '\' + fatpedseqnfe.asstring + '-nfe.pdf';

        button1.Click;
        //    end;//mandando e-mail
////============================== Mandando E-mail Para o Cliente ==== ////

      end;
    end;
  end;
end;

procedure TfmManLn8_NFE.bconsultarClick(Sender: TObject);
var
  UfeEmp: string;
  ArqRe1: string;
  ArqRe2: string;
  ArqRs1: string;
  ArqRs2: string;
  FlgRej: string;
  LinArq: string;
  MSGNFE: string;
  DTECNE: string;
  HRECNE: string;
  SeqEnc: integer;
  SeqLin: integer;
  SeqRet: Boolean;
  Handle: LongInt;
  ArqEnv: TextFile;
  ArqRet: TStringList;
  IniFile: string;
  Ini: TIniFile;
  Ok: Boolean;
  VCGeraisCaminhoArquivoLeitura, VCGeraisCaminhoArquivoRetorno, vaux, vchave: string;
  vnumnota, i: integer;
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
  if not FileExists(inifile) then
  begin
    showmessage('Erro. Não foi possível localizar o arquivo de configuração da NF-e.');
    sysutils.abort;
  end;

  Ini := TIniFile.Create(IniFile);
  try
    VCGeraisCaminhoArquivoLeitura := Ini.ReadString('Geral', 'PathLeitura', '');
    VCGeraisCaminhoArquivoRetorno := Ini.ReadString('Geral', 'PathRetorno', '');
  finally
    Ini.Free;
  end;

  if FatPedCodEmp.Value > 0 then
  begin
    CodEmp := FatPedCodEmp.Value;
    DteRes := FatPedDteRes.Value;
    NumRes := FatPedNumRes.Value;
    SeqLib := FatPedSeqLib.Value;
    SeqFat := FatPedSeqFat.Value;

    with FatPed, SQL do
    begin

      Close;
      Text := sBase +
        ' and FatPed.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
        ' and FatPed.DteRes = ' + QuotedStr(fDateToSQL(DteRes)) +
        ' and FatPed.NumRes = ' + QuotedStr(IntToStr(NumRes)) +
        ' and FatPed.SeqLib = ' + QuotedStr(IntToStr(SeqLib)) +
        ' and FatPed.SeqFat = ' + QuotedStr(IntToStr(SeqFat));
      Open;

    end;

    if FatPedCodEmp.Value > 0 then
    begin
      if fMsg('Confirma consulta ?', 'O') then
      begin


        vchave := fatpedseqnfe.asstring;
        AssignFile(TDANFE, VCGeraisCaminhoArquivoLeitura + '\CSNOTA' + FatPedNRONFS.asstring + '.txt');
        Rewrite(TDANFE);
        WriteLn(TDANFE, VCGeraisCaminhoArquivoRetorno + '\' + FatPedNRONFS.asstring + ' - NF-e- ' + Vchave + '.xml');
        CloseFile(TDANFE);

       // if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
          Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe CONSULTA ' + inttostr(vnumnota), SW_NORMAL);
        //else
        //  AbreNfe(PChar('DANFE'), pChar(vnumnota));

        if FileExists(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' + FatPedNRONFS.asstring + '.txt') then
        begin
          Application.ProcessMessages;
          ArqRet := TStringList.Create;
          ArqRet.LoadFromFile(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' + FatPedNRONFS.asstring + '.txt');
          i := 1;
          repeat
            i := i + 1;
          until not FileExists(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' + FatPedNRONFS.asstring + '.EP' + inttostr(i));
          FreeAndNil(ArqRet);
          pn_erro.visible := true;
          pn_erro.bringtofront;
          memo_erro.Font.Color := clBlack;
          memo_erro.Lines.Clear;
          memo_erro.Lines.LoadFromFile(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' + FatPedNRONFS.asstring + '.txt');
          MoveFile(pchar(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' + FatPedNRONFS.asstring + '.txt'), pchar(VCGeraisCaminhoArquivoRetorno + '\LogErro-CS' +
            FatPedNRONFS.asstring + '.EP' + inttostr(i)));
        end
        else if FileExists(VCGeraisCaminhoArquivoRetorno + '\' + FatPedNRONFS.asstring + ' Consulta - NF-e- ' + FatPedNRONFS.asstring + '.TXT') then
        begin
          pn_erro.visible := true;
          pn_erro.bringtofront;
          memo_erro.Font.Color := clBlack;
          memo_erro.Lines.Clear;
          memo_erro.Lines.LoadFromFile(VCGeraisCaminhoArquivoRetorno + '\' + FatPedNRONFS.asstring + ' Consulta - NF-e- ' + FatPedNRONFS.asstring + '.TXT');
        end; // Apagar no Sefaz

      end; // codemp
    end; //confirma
  end;
  fmManPri.Enabled := True;
  fmManLn8_NFE.Enabled := True;
  pnMensag.Visible := False;
end;

procedure TfmManLn8_NFE.BitBtn1Click(Sender: TObject);
begin

  if fmManGDB.BuscaSimples('FATPAR', 'ENVIO_SERVICO', ' 1=1 ') <> 'S' then
  begin
    ImprimeDanfe;
  end
  else
  begin
    ImprimeDanfeServico;
  end;
end;

procedure TfmManLn8_NFE.FatPe2NCMPE2GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := Trim(FatPe2ClsIpi.Value);
end;

procedure TfmManLn8_NFE.bt_erroClick(Sender: TObject);
begin
  inherited;
  memo_erro.Font.Color := clWhite;
  pn_erro.visible := False;
  fmManLn8_NFE.Enabled := True;
  pnMensag.Visible := False;
end;

procedure TfmManLn8_NFE.Button1Click(Sender: TObject);
var
  xAnexo, I         : Integer;
  newtext           : tidtext;
  p                 : TidMessageParts;
  emailContabilidade: String;

  arq: TIniFile;
  tipoEmail: String;
begin
  //idmessage1.clear;

  try
     arq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini');
     tipoEmail := arq.ReadString('E-mail','tipo_email','ANTIGO');
     eUsuario := arq.ReadString('E-mail', 'usuario', '');
  finally
     arq.Free;
  end;

  if(UpperCase(tipoEmail) = 'NOVO') then
     begin
        if FileExists(epdf) then
        begin
           //fmManPri.EnviaEmailNovo(ePara, VarArrayOf([eAnexo]));
           //fmManPri.EnviaEmailNovo(ePara, VarArrayOf([ePDF]));

           SendMailMAPI(eAssunto, corpomail.lines.text, eAnexo, eUsuario, eUsuario, ePara,
           IfThen(Trim(emailContabilidade) <> '',emailContabilidade + ';','') + ePara);

           SendMailMAPI(eAssunto, corpomail.lines.text, ePDF, eUsuario, eUsuario, ePara,
           IfThen(Trim(emailContabilidade) <> '',emailContabilidade + ';','') + ePara);
          //fmManPri.enviaEmail(true,PAnsiChar(eAssunto),PansiChar(CorpoMail.Lines.Text),PansiChar(ePara),VarArrayOf([eAnexo,epdf]));
        end
        else
        begin
           //fmManPri.EnviaEmailNovo(ePara, VarArrayOf([eAnexo]));
           SendMailMAPI(eAssunto, corpomail.lines.text, eAnexo, eUsuario, eUsuario, ePara,
           IfThen(Trim(emailContabilidade) <> '',emailContabilidade + ';','') + ePara);
          //fmManPri.enviaEmail(true,PAnsiChar(eAssunto),PansiChar(CorpoMail.Lines.Text),PansiChar(ePara),VarArrayOf([eAnexo]));
        end;
     end
  else
     begin
        emailContabilidade := fmManGDB.BuscaSimples('FATPAR','EMAIL_CONTABILIDADE',' 1 = 1');
        if FileExists(epdf) then
        begin
          SendMailMAPIMultAnexos(eAssunto, corpomail.lines.text, eUsuario, eUsuario, ePara,
          IfThen(Trim(emailContabilidade) <> '',emailContabilidade + ';','') + ePara,
          VarArrayOf([eAnexo, epdf]));
        end
        else
        begin
          SendMailMAPIMultAnexos(eAssunto, corpomail.lines.text, eUsuario, eUsuario, ePara,
          IfThen(Trim(emailContabilidade) <> '',emailContabilidade + ';','') + ePara,
          VarArrayOf([eAnexo]));
        end;
     end;

  {try
    IdSMTP1.Send(IdMessage1);
    Application.MessageBox('Email enviado com sucesso!', 'Confirmação', MB_ICONINFORMATION + MB_OK);
  except
    on E: Exception do
    begin
      Showmessage('Não foi possível enviar o e-mail para o cliente. ' + E.Message);
    end;
  end;
  IdSMTP1.Disconnect;}
  corpomail.Lines.text := memo1.lines.text;

end;

procedure TfmManLn8_NFE.BitBtn2Click(Sender: TObject);
var
  strAux: string;
begin
  inherited;
  strAux := '\ECCe.exe ' + IfThen(trim(ParamStr(1)) <> '', ParamStr(1), 'DEFAULT@') + ' ' + FatPedSEQNFE.AsString + ' FP ' + IntToStr(GUsu_Id);
  Executa(ExtractFilePath(Application.exename) + strAux, SW_NORMAL);
end;

procedure TfmManLn8_NFE.Button2Click(Sender: TObject);
var
  Vnumnota, IniFile, CaminhoLeitura, CaminhoRetorno, chaveN, vchave: string;
  ini: Tinifile;
  TDAnfe: TextFile;
  ArqRet: TStringList;
begin
  inherited;
  //Chamando o NFeEmerion

  if not FileExists(ExtractFilePath(application.exename) + 'NFeEmerion2.ini') then
  begin
    if MessageBox(Handle, 'Arquivo de configuração para envio de NFe não encontrado. Deseja continuar?', 'Enviando Nfe', MB_YESNO + MB_ICONQUESTION) = IDNO
      then
    begin
      Abort;
    end;
  end;

  IniFile := ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini';
  if not FileExists(inifile) then
  begin
    showmessage('Erro. Não foi possível localizar o arquivo de configuração da NF-e.');
    sysutils.abort;
  end;

  ini := TIniFile.create(IniFile);
  try
    CaminhoLeitura := ini.ReadString('Geral', 'PathLeitura', '');
    CaminhoRetorno := ini.ReadString('Geral', 'PathRetorno', '');
  finally
    ini.free;
  end;

  if FatPedCodEmp.Value > 0 then
  begin
    CodEmp := FatPedCodEmp.Value;
    DteRes := FatPedDteRes.Value;
    NumRes := FatPedNumRes.Value;
    SeqLib := FatPedSeqLib.Value;
    SeqFat := FatPedSeqFat.Value;
    with FatPed, SQL do
    begin
      Close;
      Text := sBase +
        ' and FatPed.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
        ' and FatPed.DteRes = ' + QuotedStr(fDateToSQL(DteRes)) +
        ' and FatPed.NumRes = ' + QuotedStr(IntToStr(NumRes)) +
        ' and FatPed.SeqLib = ' + QuotedStr(IntToStr(SeqLib)) +
        ' and FatPed.SeqFat = ' + QuotedStr(IntToStr(SeqFat));
      Open;
      vnumnota := FatPedNRONFS.AsString;
      chaven := FatPedSEQNFE.AsString;
    end;

    if FatPedCodEmp.Value > 0 then
    begin
      AssignFile(TDANFE, CaminhoLeitura + '\' + 'CONSULTA' + VNumNota + '.txt');
      Rewrite(TDANFE);
      WriteLn(TDANFE, CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chaveN + '.xml');
      CloseFile(TDANFE);

     // if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
        Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe DANFE ' + vnumnota, SW_NORMAL);
     // else
      //  AbreNfe(PChar('CONSULTA'), pChar(vnumnota));

      vchave := fatpedseqnfe.asstring;
      AssignFile(TDANFE, CaminhoLeitura + '\CSNOTA' + FatPedNRONFS.asstring + '.txt');
      Rewrite(TDANFE);
      WriteLn(TDANFE, CaminhoRetorno + '\' + FatPedNRONFS.asstring + ' - NF-e- ' + Vchave + '.xml');
      CloseFile(TDANFE);

    end;
  end;

end;

procedure TfmManLn8_NFE.Button3Click(Sender: TObject);
begin
  inherited;
  SendMailMAPI('Teste de Gerenciador de Email', 'Função gerenciador de email.', 'C:\Users\Sergio\Desktop\Retorno\CB240501.RET',
    'Sidnei', 'sidnei@emerion.com.br', 'Sergio', 'sergio@emerion.com.br');
end;

procedure TfmManLn8_NFE.ReemprimeServico;
begin
  {if not fmmangdb.CliSocket.Active then
  begin
    fmmangdb.ConectaServico;
  end;
  fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'FATURA||FATPED_IMPRIME||' + FatPedID_FATPED.AsString + '||' );}
end;

procedure TfmManLn8_NFE.ImprimeDanfe;
var
  Vnumnota, IniFile, CaminhoLeitura, CaminhoRetorno, chaveN: string;
  ini: Tinifile;
  TDAnfe: TextFile;
begin
  inherited;
  //Chamando o NFeEmerion

  if fmManGDB.BuscaSimples('FATPAR', 'ENVIO_SERVICO', ' 1=1 ') <> 'S' then
  begin
    //Envio normal para Sefaz

    if not FileExists(ExtractFilePath(application.exename) + 'NFeEmerion2.ini') then
    begin
      if MessageBox(Handle, 'Arquivo de configuração para envio de NFe não encontrado. Deseja continuar?', 'Enviando Nfe', MB_YESNO + MB_ICONQUESTION) = IDNO
        then
      begin
        Abort;
      end;
    end;

    IniFile := ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini';
    if not FileExists(inifile) then
    begin
      showmessage('Erro. Não foi possível localizar o arquivo de configuração da NF-e.');
      sysutils.abort;
    end;

    ini := TIniFile.create(IniFile);
    try
      CaminhoLeitura := ini.ReadString('Geral', 'PathLeitura', '');
      CaminhoRetorno := ini.ReadString('Geral', 'PathRetorno', '');
    finally
      ini.free;
    end;

    if FatPedCodEmp.Value > 0 then
    begin
      CodEmp := FatPedCodEmp.Value;
      DteRes := FatPedDteRes.Value;
      NumRes := FatPedNumRes.Value;
      SeqLib := FatPedSeqLib.Value;
      SeqFat := FatPedSeqFat.Value;
      with FatPed, SQL do
      begin
        Close;
        Text := sBase +
          ' and FatPed.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
          ' and FatPed.DteRes = ' + QuotedStr(fDateToSQL(DteRes)) +
          ' and FatPed.NumRes = ' + QuotedStr(IntToStr(NumRes)) +
          ' and FatPed.SeqLib = ' + QuotedStr(IntToStr(SeqLib)) +
          ' and FatPed.SeqFat = ' + QuotedStr(IntToStr(SeqFat));
        Open;
        vnumnota := FatPedNRONFS.AsString;
        chaven := FatPedSEQNFE.AsString;
      end;

      if FatPedCodEmp.Value > 0 then
      begin

        if fMsg('Confirma impressão da DANFE ?', 'O') then
        begin

          AssignFile(TDANFE, CaminhoLeitura + '\' + 'DANFE' + VNumNota + '.txt');
          Rewrite(TDANFE);
          WriteLn(TDANFE, CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chaveN + '.xml');

          if trim(FatPedPROTDPEC.AsString) <> '' then
            WriteLn(TDANFE, trim(FatPedPROTDPEC.AsString));

          CloseFile(TDANFE);

          //if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
            Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe DANFE ' + vnumnota, SW_NORMAL);
          //else
          //  AbreNfe(PChar('DANFE'), pChar(vnumnota));

          if FatPedImpNFe.Value <> 'Sim' then
          begin
            if fMsg('DANFE impressa corretamente ?', 'O') then
            begin
              FatPed.Edit;
              FatPedFlgAtu.Value := 'F';
              FatPedImpNFe.Value := 'Sim';
              //FatPedDATA_IMPRESSAO.AsDateTime := now();

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
                  FatPed.Close;
                  FatPed.Open;
                  grFatPed.SetFocus;
                  raise;
                end;
                CommitUpdates; {sucesso!, limpa o cache...}
              end;
            end;
          end;
        end;
      end;
    end;
  end
  else
  begin
    ReemprimeServico;
  end;

end;

procedure TfmManLn8_NFE.ImprimeDanfeServico;
begin
  fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'EFATURA||FATPED_IMPRIME||' + FatPedID_FATPED.AsString + '||');
end;

end.
