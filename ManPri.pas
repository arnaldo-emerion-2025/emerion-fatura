unit ManPri;                                             

interface

uses
  Forms, Windows, Messages, wwstorep, Db, DBTables, Menus, Classes, Controls,
  SysUtils, ExtCtrls, WinProcs, ComCtrls, Wwintl, Wwquery, Graphics, ShellApi,
  Dialogs, FileCtrl, StdCtrls, ImgList, ToolWin, uObjectMDIImage, CAPICOM_TLB,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, Buttons, Bbfuncao;

type

  TfmManPri = class(TForm)
    sbMain: TStatusBar;
    mmMenu: TMainMenu;
    wwIntl1: TwwIntl;
    Log: TwwQuery;
    FAT01: TMenuItem;
    ABE0106: TMenuItem;
    Timer1: TTimer;
    quSql: TwwQuery;
    ImageList1: TImageList;
    PopMenu: TPopupMenu;
    mmPsqUsuario: TMenuItem;
    smManTSe: TMenuItem;
    smLogin: TMenuItem;
    StoredProc: TStoredProc;
    ABE05: TMenuItem;
    FAT0105: TMenuItem;
    FAT03: TMenuItem;
    FAT0303: TMenuItem;
    FAT0301: TMenuItem;
    N5: TMenuItem;
    N8: TMenuItem;
    FAT0102: TMenuItem;
    FAT0103: TMenuItem;
    FAT0104: TMenuItem;
    N9: TMenuItem;
    FAT02: TMenuItem;
    FAT0202: TMenuItem;
    FAT0201: TMenuItem;
    FAT0203: TMenuItem;
    FAT020101: TMenuItem;
    FAT020102: TMenuItem;
    FAT020103: TMenuItem;
    N19: TMenuItem;
    FAT020104: TMenuItem;
    FAT02030101: TMenuItem;
    FAT02030102: TMenuItem;
    FAT020301: TMenuItem;
    N12: TMenuItem;
    FAT020302: TMenuItem;
    FAT02030201: TMenuItem;
    FAT02030202: TMenuItem;
    N4: TMenuItem;
    N6: TMenuItem;
    FAT0204: TMenuItem;
    FAT020401: TMenuItem;
    N7: TMenuItem;
    FAT020402: TMenuItem;
    N11: TMenuItem;
    FAT020403: TMenuItem;
    FAT02040101: TMenuItem;
    FAT02040102: TMenuItem;
    FAT02040103: TMenuItem;
    N10: TMenuItem;
    FAT020303: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    FAT020404: TMenuItem;
    N16: TMenuItem;
    FAT02030103: TMenuItem;
    FAT020305: TMenuItem;
    N18: TMenuItem;
    FAT020306: TMenuItem;
    FAT02030601: TMenuItem;
    FAT02030602: TMenuItem;
    N20: TMenuItem;
    FAT020307: TMenuItem;
    N21: TMenuItem;
    FAT020308: TMenuItem;
    FAT02030801: TMenuItem;
    FAT02030802: TMenuItem;
    N22: TMenuItem;
    FAT020309: TMenuItem;
    N13: TMenuItem;
    N23: TMenuItem;
    FAT020310: TMenuItem;
    FAT0306: TMenuItem;
    FAT030601: TMenuItem;
    N3: TMenuItem;
    FAT0307: TMenuItem;
    FAT02040104: TMenuItem;
    FAT02030803: TMenuItem;
    N17: TMenuItem;
    FAT02030804: TMenuItem;
    N25: TMenuItem;
    FAT0308: TMenuItem;
    FAT0205: TMenuItem;
    FAT020505: TMenuItem;
    FAT02050504: TMenuItem;
    FAT02050503: TMenuItem;
    FAT02050502: TMenuItem;
    FAT02050501: TMenuItem;
    N2: TMenuItem;
    FAT020504: TMenuItem;
    N26: TMenuItem;
    FAT020503: TMenuItem;
    FAT020502: TMenuItem;
    N27: TMenuItem;
    FAT020501: TMenuItem;
    Licenciamento1: TMenuItem;
    FAT030602: TMenuItem;
    N28: TMenuItem;
    FATCRIACAO_NFE: TMenuItem;
    FATENVIO_NFE: TMenuItem;
    FATREIMPRIMIR_NFE: TMenuItem;
    FAT020201: TMenuItem;
    N30: TMenuItem;
    FATOCRIACAO_NFE: TMenuItem;
    FATOENVIO_NFE: TMenuItem;
    FATOREIMPRIMIR_NFE: TMenuItem;
    N31: TMenuItem;
    N32: TMenuItem;
    FATDITENS_NFE: TMenuItem;
    FATDCRIACAO_NFE: TMenuItem;
    FATDENVIO_NFE: TMenuItem;
    FATDREIMPRIMIR_NFE: TMenuItem;
    N24: TMenuItem;
    CONTROLE_NFE: TMenuItem;
    FATRMASEFAZ: TMenuItem;
    FAT0206: TMenuItem;
    FAT0309: TMenuItem;
    Regras1: TMenuItem;
    FAT0107: TMenuItem;
    FAT02030603: TMenuItem;
    procedure CriarForm(frmClass: TFormClass; out Obj);
    procedure ShowHint(Sender: Tobject);
    procedure FormCreate(Sender: TObject);
    procedure ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
    procedure ProcErro(Sender: TObject; E: Exception);
    procedure OpArquivos(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AppIdle(Sender: TObject; var Done: Boolean);
    procedure smModLogClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure mmPsqUsuarioClick(Sender: TObject);
    procedure smManTSeClick(Sender: TObject);
    procedure smLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ABE0106Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Licenciamento1Click(Sender: TObject);
    procedure EditarNfeClick(Sender: TObject);

  private
    ObjFocusColor: TFocusColor;

    procedure ComboBox_AutoWidth(const theComboBox: TCombobox);
    procedure verificarValidadeCertificado();

  public
    sCancelar: string;
    vMDIImage: TMDIImage;
    nfe: boolean;
    Emerion_01, Emerion_02, Emerion01, Emerion02: Boolean;
    pEmpCli: string;

    function ValidaEMail(const EMailIn: PChar): Boolean;
    procedure RetornoSocket(StrComando: string);
    procedure EscutaServidor(strTexto: string);

    function enviaEmail(mostrarDialog: Boolean; assunto, corpo, destinatario: PAnsiChar; anexos: Variant;
                    copia: TStringList = nil): Boolean;

  end;

  //procedure AbreNfe(Tipo: ShortString; NroNfs: ShortString); StdCall; external 'NFeEmerion2.dll';
  function enviarEmail(mostrarDialog: Boolean; assunto, corpo, destinatario: PAnsiChar; anexos: Variant;
                    copia: TStringList = nil): Boolean; StdCall; External 'sendMail.dll';

var
  fmManPri: TfmManPri;
  //rt: TReadingThread = nil;

implementation

uses Bbgeral, Bbacesso, Bbmensag, Bberro, ManGDB, ManInf, VerUsu,
  ManTSe, ManTUs, ManLog, SadReg, ManDef, ManIpi, ManIcm, ManTxf,
  ManLno, ManLn2, ManLn3, ManLn5, ManGer, FatR02, FatR03, FatR04, FatR05,
  ManAce, ManPar, ManEno, ManDno, ManCre, ManObs, ManEne, FatR06, FatR09,
  FatR10, FatR01, FatR11, ManDep, FatR12, ManLn6, FatR13, FatR14, ManRom,
  FatR15, ManSda, ManSin, ManDCl, FatR16, FatR17, ManUfc, ManLro, ManLr2,
  ManLr3, CmpR15, CmpR16, CmpR12, CmpR18, ManLic, ManAut, ManEnt, ManNfp,
  ManLno_NFE, ManLn7_NFE, ManLn8_NFE, ManGer_NFE, ManGr1_NFE, ManGr2_NFE,
  ManEno_NFE, ManDno_NFE, ManEn3_NFE, ManEn4_NFE, ManPfa_GERAL,
  Controle_NFE, ManLnRMA_NFE, ManRes, ManLn7, ManEditNfe, MsgUser, ManStr2,
  uPerfilDevolucao;

{$R *.DFM}

function TFMmanpri.ValidaEMail(const EMailIn: PChar): Boolean;
const
  CaraEsp: array[1..40] of string[1] =
  ('!', '#', '$', '%', '¨', '&', '*',
    '(', ')', '+', '=', '§', '¬', '¢', '¹', '²',
    '³', '£', '´', '`', 'ç', 'Ç', ',', ';', ':',
    '<', '>', '~', '^', '?', '/', '', '|', '[', ']', '{', '}',
    'º', 'ª', '°');
var
  i, cont: integer;
  EMail: ShortString;
begin
  EMail := EMailIn;
  Result := True;
  cont := 0;
  if EMail <> '' then
    if (Pos('@', EMail) <> 0) and (Pos('.', EMail) <> 0) then // existe @ .
    begin
      if (Pos('@', EMail) = 1) or (Pos('@', EMail) = Length(EMail)) or (Pos('.', EMail) = 1) or (Pos('.', EMail) = Length(EMail)) or (Pos(' ', EMail) <> 0)
        then
        Result := False
      else {// @ seguido de . e vice-versa} if (abs(Pos('@', EMail) - Pos('.', EMail)) = 1) then
        Result := False
      else
      begin
        for i := 1 to 40 do // se existe Caracter Especial
          if Pos(CaraEsp[i], EMail) <> 0 then
            Result := False;
        for i := 1 to length(EMail) do
        begin // se existe apenas 1 @
          if EMail[i] = '@' then
            cont := cont + 1; // . seguidos de .
          if (EMail[i] = '.') and (EMail[i + 1] = '.') then
            Result := false;
        end;
        // . no f, 2ou+ @, . no i, - no i, _ no i
        if (cont >= 2) or (EMail[length(EMail)] = '.')
        or (EMail[1] = '.') or (EMail[1] = '_')
          or (EMail[1] = '-') then
          Result := false;
        // @ seguido de COM e vice-versa
        if (abs(Pos('@', EMail) - Pos('com', EMail)) = 1) then
          Result := False;
        // @ seguido de - e vice-versa
        if (abs(Pos('@', EMail) - Pos('-', EMail)) = 1) then
          Result := False;
        // @ seguido de _ e vice-versa
        if (abs(Pos('@', EMail) - Pos('_', EMail)) = 1) then
          Result := False;
      end;
    end
    else
      Result := False;
end;

procedure TfmManPri.ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
begin
  case Msg.Message of
    WM_LBUTTONDOWN, WM_RBUTTONDOWN, WM_KEYDOWN: Timer1.Enabled := False;
  end;

  if Msg.message = WM_KEYDOWN then
  begin

    case Msg.wParam of

      VK_LBUTTON: Tecla := 'MOUSE';
      VK_RBUTTON: Tecla := 'MOUSE';
      VK_MBUTTON: Tecla := 'MOUSE';
      VK_ESCAPE: Tecla := 'ESC';
      VK_TAB: Tecla := 'TAB';
      VK_LEFT: Tecla := 'LEFT';
      VK_UP: Tecla := 'UP';
      VK_RIGHT: Tecla := 'RIGHT';
      VK_DOWN: Tecla := 'DOWN';
      VK_RETURN: Tecla := 'ENTER';
    end;
  end;
end;

{*************************************************************************
* Rotina: setup da aplicação
*************************************************************************}

procedure TfmManPri.FormCreate(Sender: TObject);
begin

  {qusql.Active := false;
  qusql.sql.text := 'SELECT count(*)as conta FROM RDB$RELATIONS WHERE rdb$System_flag = 0 and RDB$Relation_NAme = ' + quotedstr('EXECUTAVEIS') + ' order by 1';
  qusql.Open;

  if qusql.fieldbyname('Conta').asinteger > 0 then
     begin
        qusql.Active := false;
        qusql.sql.text := 'SELECT VERSAO FROM EXECUTAVEIS WHERE EXECUTAVEL = ' + QuotedStr(UpperCase(ExtractFileName(Application.ExeName)));
        qusql.Open;
        if qusql.FieldByName('VERSAO').Text <> fmverusu.VersaoExe then
           begin
              showmessage('Sua maquina está desatualizada. Aguarde 10 min se o problema persistir entre em contato com a Emerion');
              Application.Terminate;
           end;
        qusql.Active := false;
     end;}

  ObjFocusColor := TFocusColor.Create(Self);
  fmManGdb.CheckExecutavelAtu;

  //Rolando
  self.Width := 800;
  self.Height := 590;
  self.top := 0;
  self.Left := 0;
  //
  GModAce := 'FAT';

  sCancelar := 'F';

  with quSql, SQL do
  begin

    Close;
    Text := ' Select * From GerPar';
    Open;

    GTmpLog := quSql.FieldbyName('TmpLog').AsInteger;

  end;

  Timer1.Interval := GTmpLog * 60000;

  {try

    VMDIImage := TMDIImage.Create(Self);

    if FileExists('c:\emerion\fundo.jpg') then
    begin

      VMDIImage.Image := 'c:\emerion\fundo.jpg';

      VMDIImage.active := True;

    end
    else
    begin

      if FileExists('c:\emerion\fundo.bmp') then
      begin

        VMDIImage.Image := 'c:\emerion\fundo.bmp';

        VMDIImage.active := True;

      end;
    end;

  except

    if Assigned(vMDIImage) then
      FreeAndNil(vMDIImage);

  end;}

  //Formato de Datas
  ShortDateFormat := 'dd/MM/yyyy';
  LongDateFormat := 'dd/MM/yyyy';

  //Formato de Horas
  ShortTimeFormat := 'hh:mm:ss';
  LongTimeFormat := 'hh:mm:ss';

  DecimalSeparator := ',';
  ThousandSeparator := '.';

  {Tratamento de erros}
  Application.OnException := procErro;

  {Tratamento de Mensagens}
  Application.OnHint := ShowHint;

  Application.OnMessage := ProcessaMsg;

  Application.OnIdle := AppIdle;
end;

procedure TfmManPri.AppIdle(Sender: TObject; var Done: Boolean);
begin
  Timer1.Enabled := True;
end;

{*************************************************************************
* Rotina: processamento de erros
*************************************************************************}

procedure TfmManPri.ProcErro(Sender: TObject; E: Exception);
begin
  fProcErro(Sender, E);
end;

{*************************************************************************
* Rotina: Form de conexão com o banco de dados
*************************************************************************}

procedure TfmManPri.FormShow(Sender: TObject);
begin
  inherited;
  fmManPri.sbMain.Panels[2].Text := DateToStr(Date);
  sbMain.Panels[4].Text := 'Caminho do Banco: ' + FmManGdb.retornaCaminho('ISADE');

  SbMain.Panels[3].Text := 'Gerado: ' + FormatdateTime('dd/mm/yyyy hh:MM:ss', FileDateToDateTime(FileAge(Application.ExeName)));

end;

{*************************************************************************
* Rotina: Emissão de Mensagens na Linha de Status
*************************************************************************}

procedure TfmManPri.ShowHint(Sender: Tobject);
begin
  SbMain.Panels[0].Text := Application.Hint;
end;

{*************************************************************************
* Rotina: Cadastros
*************************************************************************}

procedure TfmManPri.OpArquivos(Sender: TObject);
var
  sNome: string;
begin

  sNome := TMenuItem(Sender).Name;

  if Trim(fAcesso(sNome)) = '' then
    fmsgErro('Usuario não Possui Acesso a Opção', nil);

  PopMenu.AutoPopup := False;

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

  //Rolando 23/03/2010
  if sNome = 'FATCRIACAO_NFE' then
    CriarForm(TfmManLno_NFE, fmManLno_NFE);
  if sNome = 'FATENVIO_NFE' then
    CriarForm(TfmManLn7_NFE, fmManLn7_NFE);
  if sNome = 'FATREIMPRIMIR_NFE' then
    CriarForm(TfmManLn8_NFE, fmManLn8_NFE);
  if sNome = 'FATOCRIACAO_NFE' then
    CriarForm(TfmManGer_NFE, fmManGer_NFE);
  if sNome = 'FATOENVIO_NFE' then
    CriarForm(TfmManGr1_NFE, fmManGr1_NFE);
  if sNome = 'FATOREIMPRIMIR_NFE' then
    CriarForm(TfmManGr2_NFE, fmManGr2_NFE);
  if sNome = 'FATDITENS_NFE' then
    CriarForm(TfmManEno_NFE, fmManEno_NFE);
  if sNome = 'FATDCRIACAO_NFE' then
    CriarForm(TfmManDno_NFE, fmManDno_NFE);
  if sNome = 'FATDENVIO_NFE' then
    CriarForm(TfmManEn3_NFE, fmManEn3_NFE);
  if sNome = 'FATDREIMPRIMIR_NFE' then
    CriarForm(TfmManEn4_NFE, fmManEn4_NFE);

  if sNome = 'CONTROLE_NFE' then
    CriarForm(TfmControle_NFE, fmControle_NFE);

  //Thiago
  if sNome = 'FATRMASEFAZ' then
    CriarForm(TfmManLNRMA_NFE, fmManLNRMA_NFE);
  //

  if sNome = 'FAT0102' then
    CriarForm(TfmManIpi, fmManIpi);
  if sNome = 'FAT0103' then
    CriarForm(TfmManIcm, fmManIcm);
  if sNome = 'FAT0104' then
    CriarForm(TfmManTxf, fmManTxf);
  if sNome = 'FAT0105' then
    CriarForm(TfmManPfa_GERAL, fmManPfa_GERAL);

  if sNome = 'FAT0107' then
    CriarForm(TfmManStr2, fmManStr2);

  if sNome = 'FAT020101' then
    CriarForm(TfmManLno, fmManLno);
  if sNome = 'FAT020102' then
    CriarForm(TfmManLn2, fmManLn2);
  if sNome = 'FAT020103' then
    CriarForm(TfmManLn3, fmManLn3);
  if sNome = 'FAT020104' then
    CriarForm(TfmManLn5, fmManLn5);

  if sNome = 'FAT020201' then
    CriarForm(TfmManGer, fmManGer);

  if sNome = 'FAT02030101' then
    CriarForm(TfmFatR02, fmFatR02);
  if sNome = 'FAT02030102' then
    CriarForm(TfmFatR03, fmFatR03);
  if sNome = 'FAT02030103' then
    CriarForm(TfmFatR09, fmFatR09);
  if sNome = 'FAT02030201' then
    CriarForm(TfmFatR04, fmFatR04);
  if sNome = 'FAT02030202' then
    CriarForm(TfmFatR05, fmFatR05);

  if sNome = 'FAT020303' then
    CriarForm(TfmFatR06, fmFatR06);
  if sNome = 'FAT020305' then
    CriarForm(TfmFatR10, fmFatR10);

  if sNome = 'FAT02030601' then
    CriarForm(TfmFatR11, fmFatR11);
  if sNome = 'FAT02030602' then
    CriarForm(TfmFatR01, fmFatR01);
  if sNome = 'FAT02030603' then
    CriarForm(TfrmPerfilDevolucao, frmPerfilDevolucao);

  if sNome = 'FAT020307' then
    CriarForm(TfmFatR12, fmFatR12);

  if sNome = 'FAT0206' then
    CriarForm(TfmManRes, fmManRes);

  if sNome = 'FAT02030801' then
    CriarForm(TfmFatR13, fmFatR13);
  if sNome = 'FAT02030803' then
    CriarForm(TfmFatR16, fmFatR16);
  if sNome = 'FAT02030802' then
    CriarForm(TfmFatR14, fmFatR14);
  if sNome = 'FAT02030804' then
    CriarForm(TfmFatR17, fmFatR17);

  if sNome = 'FAT020309' then
    CriarForm(TfmManLn6, fmManLn6);
  if sNome = 'FAT020310' then
    CriarForm(TfmFatR15, fmFatR15);

  if sNome = 'FAT02040101' then
    CriarForm(TfmManEno, fmManEno);
  if sNome = 'FAT02040102' then
    CriarForm(TfmManDno, fmManDno);
  if sNome = 'FAT02040103' then
    CriarForm(TfmManEne, fmManEne);
  if sNome = 'FAT02040104' then
    CriarForm(TfmManDCl, fmManDCl);

  if sNome = 'FAT020402' then
    CriarForm(TfmManCre, fmManCre);
  if sNome = 'FAT020403' then
    CriarForm(TfmManObs, fmManObs);
  if sNome = 'FAT020404' then
    CriarForm(TfmManDep, fmManDep);

  if sNome = 'FAT020501' then
    CriarForm(TfmManRom, fmManRom);
  if sNome = 'FAT020502' then
    CriarForm(TfmManLro, fmManLro);
  if sNome = 'FAT020503' then
    CriarForm(TfmManLr2, fmManLr2);
  if sNome = 'FAT020504' then
    CriarForm(TfmManLr3, fmManLr3);

  if sNome = 'FAT02050501' then
    CriarForm(TfmCmpR15, fmCmpR15);
  if sNome = 'FAT02050502' then
    CriarForm(TfmCmpR16, fmCmpR16);
  if sNome = 'FAT02050503' then
    CriarForm(TfmCmpR12, fmCmpR12);
  if sNome = 'FAT02050504' then
    CriarForm(TfmCmpR18, fmCmpR18);

  if sNome = 'FAT0301' then
    CriarForm(TfmManAce, fmManAce);
  if sNome = 'FAT0303' then
    CriarForm(TfmManPar, fmManPar);

  if sNome = 'FAT030601' then
    CriarForm(TfmManSda, fmManSda);
  if sNome = 'FAT030602' then
    CriarForm(TfmManEnt, fmManEnt);

  if sNome = 'FAT0307' then
    CriarForm(TfmManSin, fmManSin);
  if sNome = 'FAT0308' then
    CriarForm(TfmManNfp, fmManNfp);
  if sNome = 'FAT0309' then
    CriarForm(TfmManLn7, fmManLn7);

end;

procedure TfmManPri.Timer1Timer(Sender: TObject);
begin
  if (GUsu_Id > 0) and (GVerUsuario = 0) then
  begin

    if not Assigned(fmVerUsu) then
    begin

      try

        fmVerUsu := TfmVerUsu.Create(Self);

        fmVerUsu.ShowModal;

      finally

        FreeAndNil(fmVerUsu);

      end;
    end;
  end;
end;

procedure TfmManPri.smModLogClick(Sender: TObject);
begin
  if (GUsu_Id > 0) and (GVerUsuario = 0) then
  begin

    try

      fmManTSe := TfmManTSe.Create(Self);

      fmManTSe.ShowModal;

    finally

      FreeAndNil(fmManTSe);

    end;
  end;
end;

procedure TfmManPri.FormActivate(Sender: TObject);
var
  ret, sequenc: string;
  DteSer: TDateTime;
  Dia: string;
  Mes: string;
  Ano: string;
begin

  if not PopMenu.AutoPopup then
    PopMenu.AutoPopup := True;

  if sCancelar = 'F' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select * From GerPar';
      Open;

      GParLib := FieldbyName('ParLib').AsString;

    end;

    if Trim(GParLib) <> '' then
    begin

      GParLib := copy(GParLib, 01, 42) + copy(GParLib, 44, 42);

      fmManGDB.dbMain.StartTransaction;

      with StoredProc do
      begin

        ParamByName('SEQARQ').AsString := GParLib;
        Close;
        Prepare;
        ExecProc;
        Unprepare;

        if ParamByName('RETORNO').Value <> null then
        begin

          ret := UpperCase(ParamByName('RETORNO').Value);

          fmManGDB.dbMain.Commit;

        end
        else
          fmManGDB.dbMain.Rollback;
      end;

    end
    else
      ret := 'NAO';

    if (ret = 'NAO') and (quSql.FieldbyName('FlgSeq').AsString = 'Nao') then
    begin

      sequenc := fLimpaStr(FormatDateTime('yyyy/mm/dd', Date) + FormatDateTime('HH:mm:ss', Time));

      sequenc := fEnCripto(fCriaSeq(sequenc), 'C');

      with quSQL, SQL do
      begin

        try
          Close;
          Text := ' Update GerPar Set IdePar = ''' + sequenc + ''',' +
            ' FlgSeq = ''' + 'Sim' + ''',' +
            ' FlgTrg = ''' + '*' + ''',' +
            ' ParLib = null';
          ExecSQL;
        except
        end;
      end;
    end;

    GLibAce := 'Nao';

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select * From GerPar';
      Open;

      GParLib := FieldbyName('ParLib').AsString;

    end;

    if Trim(GParLib) = '' then
    begin

      try

        fmSadReg := TfmSadReg.Create(Self);

        fmSadReg.ShowModal;

      finally

        FreeAndNil(fmSadReg);

      end;
    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select * From GerPar';
      Open;

      GParLib := FieldbyName('ParLib').AsString;

    end;

    if Trim(GParLib) <> '' then
    begin

      Sequenc := fEnCripto(quSQL.FieldbyName('ParLib').AsString, 'D');

      if copy(Sequenc, 43, 01) = 'L' then
      begin

        with quSQL, SQL do
        begin

          Close;
          Text := ' Select Cast(' + QuotedStr('Today') + ' as Date) as DteSer From rdb$database';
          Open;

          DteSer := StrToDate(FieldbyName('DteSer').AsString);

        end;

        Dia := fNumZeros(FloatToStr(StrToInt(copy(Sequenc, 11, 01) + copy(Sequenc, 22, 01) + copy(Sequenc, 33, 01)) / 8), 2);
        Mes := fNumZeros(FloatToStr(StrToInt(copy(Sequenc, 42, 01) + copy(Sequenc, 54, 01)) / 8), 2);
        Ano := fNumZeros(FloatToStr(StrToInt(copy(Sequenc, 13, 01) + copy(Sequenc, 09, 02) + copy(Sequenc, 01, 02)) / 3), 4);

        if DteSer > StrToDate(Dia + '/' + Mes + '/' + Ano) then
        begin

          Sequenc := fEnCripto(copy(Sequenc, 1, 42) + 'N' + copy(Sequenc, 44, 11), 'C');

          with quSQL, SQL do
          begin

            Close;
            Text := ' Update GerPar Set Flgtrg = ' + QuotedStr('*') + ',' +
              '                   ParLib = ' + QuotedStr(Sequenc);
            ExecSQL;

          end;

          fmsg(GMensagem_0001, 'I');

        end
        else
          GLibAce := 'Sim';

      end
      else
        fmsg(GMensagem_0001, 'I');

    end
    else
      fmsg(GMensagem_0001, 'I');

    try

      fmManLog := TfmManLog.Create(Self);
      fmManLog.ShowModal;

      sCancelar := fmManLog.Cancelar;

    finally

      FreeAndNil(fmManLog);

    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select * From GerPar';
      Open;

    end;

    //fmmangdb.TimeSocket.Enabled := quSQL.FieldByName('CONECTSOCKET').AsString = 'S';

    if Trim(quSQL.FieldbyName('ParLib').AsString) = '' then
      PopMenu.Items[3].Visible := False
    else
    begin

      if GUsu_Id <> 999 then
      begin

        if UpperCase(Trim(GLibAce)) = 'SIM' then
          PopMenu.Items[3].Visible := False

      end;
    end;

    if sCancelar = 'N' then
    begin

      try

        fmManDef := TFmManDef.Create(Self);

        fmManDef.Show;
        fmManDef.Refresh;

      finally

        FreeAndNil(fmManDef);

      end;

      if Trim(GApeEmp) <> '' then
        fmManPri.Caption := 'Emerion Faturamento - ' + GApeEmp + GApeAce
      else
        fmManPri.Caption := 'Emerion Faturamento' + GApeAce;

      if GEmp_Id > 0 then
        fmManPri.sbMain.Panels[1].Text := ' Usuario : ' + GUsu_Nm
      else
        fmManPri.sbMain.Panels[1].Text := ' Usuario : ';

    end;
  end;

  with quSql, SQL do
  begin

    Close;
    Text := ' Select * From GerEmp where codemp = ' + inttostr(GEmp_Id);
    Open;

    if quSql.FieldbyName('FLGNFE').AsString = 'Sim' then
    begin
      nfe := true;
      FAT020101.Visible := False;
      FAT020102.Visible := False;
      N28.Visible := False;

      FAT020101.Enabled := False;
      FAT020102.Enabled := False;
      N28.Enabled := False;

      FAT020201.Visible := False;
      N30.Visible := False;

      FAT02040101.Visible := False;
      FAT02040102.Visible := False;
      FAT02040103.Visible := False;
      N31.Visible := True;

      FATDITENS_NFE.Visible := True;
      //FATDCRIACAO_NFE.Visible := True;
      //FATDENVIO_NFE.Visible := True;
      //FATDREIMPRIMIR_NFE.Visible := True;

      FATOCRIACAO_NFE.Visible := True;
      FATOENVIO_NFE.Visible := True;
      FATOREIMPRIMIR_NFE.Visible := True;

      FATCRIACAO_NFE.Visible := True;
      FATENVIO_NFE.Visible := True;
      FATREIMPRIMIR_NFE.Visible := True;
      N19.Visible := True;

      FATCRIACAO_NFE.Enabled := True;
      FATENVIO_NFE.Enabled := True;
      FATREIMPRIMIR_NFE.Enabled := True;
      N19.Enabled := True;

    end
    else
    begin
      nfe := False;
      FAT020101.Visible := True;
      FAT020102.Visible := True;
      N28.Visible := True;

      FAT020101.Enabled := True;
      FAT020102.Enabled := True;
      N28.Enabled := True;

      FAT020201.Visible := True;
      N30.Visible := True;

      FAT02040101.Visible := True;
      FAT02040102.Visible := True;
      FAT02040103.Visible := True;
      N31.Visible := True;

      FATDITENS_NFE.Visible := False;
      FATDCRIACAO_NFE.Visible := False;
      FATDENVIO_NFE.Visible := False;
      FATDREIMPRIMIR_NFE.Visible := False;

      FATOCRIACAO_NFE.Visible := False;
      FATOENVIO_NFE.Visible := False;
      FATOREIMPRIMIR_NFE.Visible := False;

      FATCRIACAO_NFE.Visible := False;
      FATENVIO_NFE.Visible := False;
      FATREIMPRIMIR_NFE.Visible := False;
      N19.Visible := False;

      FATCRIACAO_NFE.Enabled := False;
      FATENVIO_NFE.Enabled := False;
      FATREIMPRIMIR_NFE.Enabled := False;
      N19.Enabled := False;
    end;
  end;

  Application.ProcessMessages;

  //verificarValidadeCertificado;
  pEmpCli := inttostr(GEmp_Id) + '||' + inttostr(GUsu_Id) + '||'; //parametro padrão para envio de NFE

end;

procedure TfmManPri.mmPsqUsuarioClick(Sender: TObject);
begin

  try

    fmManLog := TfmManLog.Create(Self);

    fmManLog.ShowModal;

  finally

    FreeAndNil(fmManLog);

  end;

  try

    fmManDef := TFmManDef.Create(Self);

    fmManDef.Show;
    fmManDef.Refresh;

  finally

    FreeAndNil(fmManDef);

  end;

  if Trim(GApeEmp) <> '' then
    fmManPri.Caption := 'Emerion Faturamento - ' + GApeEmp + GApeAce
  else
    fmManPri.Caption := 'Emerion Faturamento' + GApeAce;

  if GEmp_Id > 0 then
    fmManPri.sbMain.Panels[1].Text := ' Usuario : ' + GUsu_Nm
  else
    fmManPri.sbMain.Panels[1].Text := ' Usuario : ';

  fmManPri.sbMain.Panels[2].Text := DateToStr(Date);

end;

procedure TfmManPri.smManTSeClick(Sender: TObject);
begin
  if (GUsu_Id > 0) and (GVerUsuario = 0) then
  begin

    try

      fmManTSe := TfmManTSe.Create(Self);
      fmManTSe.ShowModal;

    finally

      FreeAndNil(fmManTSe);

    end;
  end;
end;

procedure TfmManPri.smLoginClick(Sender: TObject);
begin
  if not Assigned(fmVerUsu) then
  begin

    try

      fmVerUsu := TfmVerUsu.Create(Self);
      fmVerUsu.ShowModal;

    finally

      FreeAndNil(fmVerUsu);

    end;
  end;
end;

procedure TfmManPri.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i, j: integer;
  FormChild: string;
begin

  j := 0;

  for i := 0 to Screen.FormCount - 1 do
  begin

    FormChild := Trim(Screen.Forms[i].Name);

    if Trim(FormChild) <> '' then
    begin

      if UpperCase(FormChild) <> 'FMMANPRI' then
        Inc(j);

    end;
  end;

  if j > 0 then
    fmsgErro('Existe(m) ' + IntToStr(j) + ' Formulario(s) Aberto(s). Por Favor Feche-os.', nil)
  else
  begin

    if Assigned(vMDIImage) then
      FreeAndNil(vMDIImage);

    Action := CaFree;

  end;
end;

procedure TfmManPri.ABE0106Click(Sender: TObject);
begin
  close;
end;

procedure TfmManPri.CriarForm(frmClass: TFormClass; out Obj);
var
  Found, i: Integer;
begin

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is FrmClass then
      Found := i;

  end;

  if Found >= 0 then
  begin

    TForm(Obj).WindowState := wsNormal;
    Tform(obj).position := poMainFormCenter;
    TForm(Obj).BringToFront;

  end
  else
  begin

    TForm(Obj) := FrmClass.Create(Self);
    Tform(obj).position := poMainFormCenter;
    TForm(Obj).Show;

  end;
end;

procedure TfmManPri.FormDestroy(Sender: TObject);
begin
  FreeAndNil(ObjFocusColor);
  fmManPri := nil;
end;

procedure TfmManPri.Licenciamento1Click(Sender: TObject);
var
  i, j: integer;
  FormChild: string;
begin
  if GUsu_Id = 999 then
  begin

    try

      fmManLic := TfmManLic.Create(Self);
      fmManLic.ShowModal;

    finally

      FreeAndNil(fmManLic);

    end;

  end
  else
  begin

    if UpperCase(Trim(GLibAce)) = 'NAO' then
    begin

      j := 0;

      for i := 0 to Screen.FormCount - 1 do
      begin

        FormChild := Trim(Screen.Forms[i].Name);

        if Trim(FormChild) <> '' then
        begin

          if UpperCase(FormChild) <> 'FMMANPRI' then
            Inc(j);

        end;
      end;

      if j > 0 then
        fmsgErro('Existe(m) ' + IntToStr(j) + ' Formulario(s) Aberto(s). Por Favor Feche-os.', nil)
      else
      begin

        try

          fmManAut := TfmManAut.Create(Self);
          fmManAut.ShowModal;

        finally

          FreeAndNil(fmManAut);

        end;
      end;

      if GUsu_Id <> 999 then
      begin

        if UpperCase(Trim(GLibAce)) = 'SIM' then
          PopMenu.Items[3].Visible := False;

      end;
    end;
  end;
end;

procedure TfmManPri.EditarNfeClick(Sender: TObject);
begin
  {try
     FrmEditNfe := TFrmEditNfe.Create(Self);
     FrmEditNfe.ShowModal;
  finally
     FreeAndNil(FrmEditNfe);
  end;  }
end;

procedure TfmManPri.ComboBox_AutoWidth(const theComboBox: TCombobox);
const
  HORIZONTAL_PADDING = 4;
var
  itemsFullWidth: integer;
  idx: integer;
  itemWidth: integer;
begin
  //CTRL+C CTRL+V da NET

  itemsFullWidth := 0;

  // get the max needed with of the items in dropdown state
  for idx := 0 to -1 + theComboBox.Items.Count do
  begin
    itemWidth := theComboBox.Canvas.TextWidth(theComboBox.Items[idx]);
    Inc(itemWidth, 2 * HORIZONTAL_PADDING);
    if (itemWidth > itemsFullWidth) then
      itemsFullWidth := itemWidth;
  end;

  // set the width of drop down if needed
  if (itemsFullWidth > theComboBox.Width) then
  begin
    //check if there would be a scroll bar
    if theComboBox.DropDownCount < theComboBox.Items.Count then
      itemsFullWidth := itemsFullWidth + GetSystemMetrics(SM_CXVSCROLL);

    SendMessage(theComboBox.Handle, CB_SETDROPPEDWIDTH, itemsFullWidth, 0);
  end;
end;

/////////////////////////////////////////////////////////////////////////////////////
//procedure que verifica a data de validade dos certificados instalados na máquina //
//se o certificado vencer dentro de 15 dias, um alerta é exibido                   //
/////////////////////////////////////////////////////////////////////////////////////

procedure TfmManPri.verificarValidadeCertificado;
var
  store: TStore;
  cert: TCertificate;
  certs: TCertificates;
  ov: OleVariant;
  i: integer;
  msg: string;
begin
  try
    store := TStore.Create(self);

    store.Open(CAPICOM_CURRENT_USER_STORE, 'MY', CAPICOM_STORE_OPEN_MAXIMUM_ALLOWED);

    certs := TCertificates.Create(self);
    certs.ConnectTo(store.Certificates as ICertificates2);

    cert := TCertificate.Create(self);

    for i := 1 to certs.Count do
    begin

      ov := (certs.Item[i]);
      cert.ConnectTo(IDispatch(ov) as ICertificate2);

      if (DaysBetween(cert.ValidToDate, date) <= 15) then
      begin
        msg := 'O Certificado ' + cert.GetInfo(CAPICOM_CERT_INFO_SUBJECT_SIMPLE_NAME) + #13 +
          'Vence/Venceu em: ' + FormatDateTime('dd/mm/yyy', cert.ValidToDate) + #13 + #13 +
          'Providencie um certificado do tipo A1';
        Application.MessageBox(pChar(msg), 'Atenção', mb_ok + MB_ICONWARNING);
      end;
    end;

    store.Close;

  finally;
    cert.Free;
    certs.Free;
    store.Free;
  end;

end;

procedure TfmManPri.RetornoSocket(StrComando: string);
begin
  ///fmManLn7_NFE.batualizar.Click;

      //application.FindComponent

      {if btnAtualiza <> nil then
        btnAtualiza.click; }
  EscutaServidor(strComando);

end;

procedure TfmManPri.EscutaServidor(strTexto: string);
var
  lnConex: string;
  strExecuta, strComando, strParam1, strParam2, strParam3: string;
begin
  strComando := '';
  strParam1 := '';
  strParam2 := '';
  strParam3 := '';

  // ServerSocket1.Socket.ActiveConnections

  lnConex := strTexto;

  if trim(lnConex) <> '' then
  begin

    strComando := (copy(lnConex, 1, pos('||', lnConex) - 1));
    delete(lnConex, 1, pos('||', lnConex) + 1);

    strExecuta := copy(lnConex, 1, pos('||', lnConex) - 1);
    delete(lnConex, 1, pos('||', lnConex) + 1);

    //Parametro1
    if trim(lnConex) <> '' then
    begin
      strParam1 := (copy(lnConex, 1, pos('||', lnConex) - 1));
      delete(lnConex, 1, pos('||', lnConex) + 1);
    end;
    //Parametro2
    if trim(lnConex) <> '' then
    begin
      strParam2 := (copy(lnConex, 1, pos('||', lnConex) - 1));
      delete(lnConex, 1, pos('||', lnConex) + 1);
    end;

    //Parametro3
    if trim(lnConex) <> '' then
    begin
      strParam3 := (copy(lnConex, 1, pos('||', lnConex) - 1));
      delete(lnConex, 1, pos('||', lnConex) + 1);
    end;

    if strExecuta = 'DANFE' then
    begin
      ShellExecute(0, nil, pchar(ExtractFileName(strExecuta)), nil, pChar(strExecuta), SW_NORMAL);
    end;

    if strExecuta = 'FATPED_ENVIO' then
    begin
      if fmManLn7_NFE <> nil then
        fmManLn7_NFE.batualizar.Click;
    end;

    if strExecuta = 'FATGER_ENVIO' then
    begin
      if fmManGr1_NFE <> nil then
        fmManGr1_NFE.batualizar.Click;
    end;

    if strExecuta = 'FATDEV_ENVIO' then
    begin
      if fmManEn3_NFE <> nil then
        fmManEn3_NFE.batualizar.Click;
    end;

    if strExecuta = 'FATPED_DENEGADA' then
    begin
      showmessage('Não programada Denegada');
    end;

    if strExecuta = 'ERRO' then
    begin
      showmessage(strParam1);
    end;

    if strExecuta = 'AVISO' then
    begin
      showmessage(strParam1);
    end;

    if strExecuta = 'AVISOB' then
    begin

    end;

    if strExecuta = 'CONEXAO' then
    begin
      //MsgMsnAlerta('Aviso',strParam1);
      //MSGTEMP('Aviso',strParam1);
    end;

  end;
end;

function TfmManPri.enviaEmail(mostrarDialog: Boolean; assunto, corpo,
  destinatario: PAnsiChar; anexos: Variant; copia: TStringList): Boolean;
begin
    if copia <> nil then
      enviarEmail(mostrarDialog, assunto,corpo,destinatario,anexos,copia)
    else
       enviarEmail(mostrarDialog, assunto,corpo,destinatario,anexos);
end;

end.

