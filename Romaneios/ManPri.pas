unit ManPri;

interface

uses
  Forms, Windows, Messages, wwstorep, Db, DBTables, Menus, Classes, Controls,
  SysUtils, ExtCtrls, WinProcs, ComCtrls, Wwintl, Wwquery, Graphics, ShellApi,
  Dialogs, FileCtrl, StdCtrls, ImgList, ToolWin, uObjectMDIImage;

type
  TfmManPri = class(TForm)
    sbMain: TStatusBar;
    mmMenu: TMainMenu;
    wwIntl1: TwwIntl;
    Log: TwwQuery;
    Timer1: TTimer;
    quSql: TwwQuery;
    ImageList1: TImageList;
    PopMenu: TPopupMenu;
    mmPsqUsuario: TMenuItem;
    smManTSe: TMenuItem;
    smLogin: TMenuItem;
    StoredProc: TStoredProc;
    ABE04: TMenuItem;
    ROM02: TMenuItem;
    ROM0201: TMenuItem;
    ROM01: TMenuItem;
    N17: TMenuItem;
    ROM0101: TMenuItem;
    ROM0102: TMenuItem;
    ROM0103: TMenuItem;
    ROM0105: TMenuItem;
    N1: TMenuItem;
    ABE0106: TMenuItem;
    N2: TMenuItem;
    ROM0104: TMenuItem;
    N4: TMenuItem;
    ROM0106: TMenuItem;
    ROM010601: TMenuItem;
    ROM010602: TMenuItem;
    Licenciamento1: TMenuItem;
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
  private
  public
    sCancelar : string;
    vMDIImage : TMDIImage;
  end;

var
  fmManPri: TfmManPri;

implementation

uses Bbgeral, Bbacesso, Bbmensag, Bbfuncao, Bberro, ManGDB, ManInf, VerUsu,
     ManTSe, ManTUs, ManLog, SadReg, ManDef, ManAce, ManLpe, ManLp2, ManLp3,
     ManLp4, ManDep, RomR01, RomR02, ManLic, ManAut;

{$R *.DFM}

procedure TfmManPri.ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
begin
  case Msg.Message of
       WM_LBUTTONDOWN, WM_RBUTTONDOWN, WM_KEYDOWN: Timer1.Enabled := False;
  end;

  if Msg.message = WM_KEYDOWN then begin

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

  GModAce := 'ROM';

  sCancelar := 'F';

  with quSql,SQL do begin

       Close;
       Text := ' Select * From GerPar';
       Open;

       GTmpLog := quSql.FieldbyName('TmpLog').AsInteger;

  end;

  Timer1.Interval := GTmpLog * 60000;

  try

     VMDIImage := TMDIImage.Create(Self);

     if FileExists('c:\emerion\fundo.jpg') then begin

        VMDIImage.Image := 'c:\emerion\fundo.jpg';

        VMDIImage.active := True;

        end
     else
        begin

        if FileExists('c:\emerion\fundo.bmp') then begin

           VMDIImage.Image := 'c:\emerion\fundo.bmp';

           VMDIImage.active := True;

        end;
     end;

  except

     if Assigned(vMDIImage) then FreeAndNil(vMDIImage);

  end;

  //Formato de Datas
  ShortDateFormat := 'dd/MM/yyyy';
  LongDateFormat  := 'dd/MM/yyyy';

  //Formato de Horas
  ShortTimeFormat := 'hh:mm:ss';
  LongTimeFormat  := 'hh:mm:ss';

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
  fProcErro(Sender,E);
end;

{*************************************************************************
* Rotina: Form de conexão com o banco de dados
*************************************************************************}
procedure TfmManPri.FormShow(Sender: TObject);
begin
  inherited;

  fmManPri.sbMain.Panels[2].Text := DateToStr(Date);

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
sNome : string;
begin

  sNome := TMenuItem(Sender).Name;

  if Trim( fAcesso(sNome) ) = '' then fmsgErro('Usuario não Possui Acesso a Opção',Nil);

  PopMenu.AutoPopup := False;

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

  if sNome = 'ROM0101' then CriarForm(TfmManLpe, fmManLpe);
  if sNome = 'ROM0102' then CriarForm(TfmManLp2, fmManLp2);
  if sNome = 'ROM0103' then CriarForm(TfmManLp3, fmManLp3);
  if sNome = 'ROM0104' then CriarForm(TfmManDep, fmManDep);
  if sNome = 'ROM0105' then CriarForm(TfmManLp4, fmManLp4);

  if sNome = 'ROM010601' then CriarForm(TfmRomR01, fmRomR01);
  if sNome = 'ROM010602' then CriarForm(TfmRomR02, fmRomR02);

  if sNome = 'ROM0201' then CriarForm(TfmManAce, fmManAce);
  
end;

procedure TfmManPri.Timer1Timer(Sender: TObject);
begin
  if (GUsu_Id > 0) and (GVerUsuario = 0) then begin

     try

        fmVerUsu := TfmVerUsu.Create(Self);
        fmVerUsu.ShowModal;

     finally

        FreeAndNil(fmVerUsu);

     end;
  end;
end;

procedure TfmManPri.smModLogClick(Sender: TObject);
begin
  if (GUsu_Id > 0) and (GVerUsuario = 0) then begin

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
  ret,sequenc : string;
  DteSer : TDateTime;
  Dia : string;
  Mes : string;
  Ano : string;
begin

  if not PopMenu.AutoPopup then PopMenu.AutoPopup := True;

  if sCancelar = 'F' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select * From GerPar';
          Open;

          GParLib := FieldbyName('ParLib').AsString;
          
     end;

     if Trim( GParLib ) <> '' then begin

        GParLib := copy(GParLib,01,42)+copy(GParLib,44,42);
     
        fmManGDB.dbMain.StartTransaction;

        with StoredProc do begin

             ParamByName('SEQARQ').AsString := GParLib;
             Close;
             Prepare;
             ExecProc;
             Unprepare;

             if ParamByName('RETORNO').Value <> null then begin

                ret := UpperCase(ParamByName('RETORNO').Value);

                fmManGDB.dbMain.Commit;

                end
             else
                fmManGDB.dbMain.Rollback;
        end;

        end
     else
        ret := 'NAO';

     if (ret = 'NAO') and (quSql.FieldbyName('FlgSeq').AsString = 'Nao') then begin

        sequenc := fLimpaStr(FormatDateTime('yyyy/mm/dd',Date)+FormatDateTime('HH:mm:ss',Time));

        sequenc := fEnCripto(fCriaSeq(sequenc),'C');

        with quSQL,SQL do begin

             Close;
             Text := ' Update GerPar Set IdePar = '''+ sequenc + ''',' +
                     '                   FlgSeq = '''+ 'Sim'   + ''',' +
                     '                   FlgTrg = '''+ '*'     + ''',' +
                     '                   ParLib = null';
             ExecSQL;

        end;
     end;

     GLibAce := 'Nao';
     
     with quSQL,SQL do begin

          Close;
          Text := ' Select * From GerPar';
          Open;

          GParLib := FieldbyName('ParLib').AsString;

     end;

     if Trim( GParLib ) = '' then begin

        try

           fmSadReg := TfmSadReg.Create(Self);
           fmSadReg.ShowModal;

        finally

           FreeAndNil(fmSadReg);

        end;
     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select * From GerPar';
          Open;

          GParLib := FieldbyName('ParLib').AsString;

     end;

     if Trim( GParLib ) <> '' then begin

        Sequenc := fEnCripto(quSQL.FieldbyName('ParLib').AsString,'D');

        if copy(Sequenc,43,01) = 'L' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select Cast('+ QuotedStr('Today') +' as Date) as DteSer From rdb$database';
                Open;

                DteSer := StrToDate(FieldbyName('DteSer').AsString);

           end;

           Dia := fNumZeros(FloatToStr(StrToInt(copy(Sequenc,11,01)+copy(Sequenc,22,01)+copy(Sequenc,33,01))/8),2);
           Mes := fNumZeros(FloatToStr(StrToInt(copy(Sequenc,42,01)+copy(Sequenc,54,01))/8),2);
           Ano := fNumZeros(FloatToStr(StrToInt(copy(Sequenc,13,01)+copy(Sequenc,09,02)+copy(Sequenc,01,02))/3),4);

           if DteSer > StrToDate(Dia+'/'+Mes+'/'+Ano) then begin

              Sequenc := fEnCripto(copy(Sequenc,1,42)+'N'+copy(Sequenc,44,11),'C');

              with quSQL,SQL do begin

                   Close;
                   Text := ' Update GerPar Set Flgtrg = '+ QuotedStr('*') + ',' +
                           '                   ParLib = '+ QuotedStr(Sequenc);
                   ExecSQL;

              end;

              fmsg(GMensagem,'I');

              end
           else
              GLibAce := 'Sim';

           end
        else
           fmsg(GMensagem,'I');

        end
     else
        fmsg(GMensagem,'I');

     try

        fmManLog := TfmManLog.Create(Self);
        fmManLog.ShowModal;

        sCancelar := fmManLog.Cancelar;

     finally

        FreeAndNil(fmManLog);

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select * From GerPar';
          Open;

     end;

     if Trim(quSQL.FieldbyName('ParLib').AsString) = '' then
        PopMenu.Items[3].Visible := False
     else
        begin
        
        if GUsu_Id <> 999 then begin

           if UpperCase(Trim(GLibAce)) = 'SIM' then PopMenu.Items[3].Visible := False

        end;
     end;

     if sCancelar = 'N' then begin

        try

           fmManDef := TFmManDef.Create(Self);

           fmManDef.Show;
           fmManDef.Refresh;

        finally

           FreeAndNil(fmManDef);

        end;

        if Trim( GApeEmp ) <> '' then
           fmManPri.Caption := 'Emerion Romaneios - ' + GApeEmp + GApeAce
        else
           fmManPri.Caption := 'Emerion Romaneios' + GApeAce;

        if GEmp_Id > 0 then
           fmManPri.sbMain.Panels[1].Text := ' Usuario : ' + GUsu_Nm
        else
           fmManPri.sbMain.Panels[1].Text := ' Usuario : ';

     end;
  end;
end;

procedure TfmManPri.mmPsqUsuarioClick(Sender: TObject);
begin

  try

     fmManTUs := TfmManTUs.Create(Self);
     fmManTUs.ShowModal;

  finally

     FreeAndNil(fmManTUs);

  end;

  if gFlgAce = 'Sim' then begin

     MessageDlg('Aplicativo em Construção.', mtInformation, [mbOK], 0);

     Application.Terminate;

  end;

  try

     fmManDef := TFmManDef.Create(Self);

     fmManDef.Show;
     fmManDef.Refresh;

  finally

     FreeAndNil(fmManDef);

  end;

  if Trim( GApeEmp ) <> '' then
     fmManPri.Caption := 'Emerion Romaneios - ' + GApeEmp + GApeAce
  else
     fmManPri.Caption := 'Emerion Romaneios' + GApeAce;

  if GEmp_Id > 0 then
     fmManPri.sbMain.Panels[1].Text := ' Usuario : ' + GUsu_Nm
  else
     fmManPri.sbMain.Panels[1].Text := ' Usuario : ';

  fmManPri.sbMain.Panels[2].Text := DateToStr(Date);

end;

procedure TfmManPri.smManTSeClick(Sender: TObject);
begin
  if (GUsu_Id > 0) and (GVerUsuario = 0) then begin

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

  try

     fmVerUsu := TfmVerUsu.Create(Self);
     fmVerUsu.ShowModal;

  finally

     FreeAndNil(fmVerUsu);

  end;
end;

procedure TfmManPri.FormClose(Sender: TObject; var Action: TCloseAction);
var
i,j : integer;
FormChild : string;
begin

  j := 0;

  for i := 0 to Screen.FormCount - 1 do begin

      FormChild := Trim(Screen.Forms[i].Name);

      if Trim(FormChild) <> '' then begin

         if UpperCase(FormChild) <> 'FMMANPRI' then Inc(j);

      end;
  end;

  if j > 0 then
     fmsgErro('Existe(m) '+IntToStr(j)+' Formulario(s) Aberto(s). Por Favor Feche-os.',Nil)
  else
     begin

     if Assigned(vMDIImage) then FreeAndNil(vMDIImage);

     Action := CaFree;

  end;
end;

procedure TfmManPri.ABE0106Click(Sender: TObject);
begin
  close;
end;

procedure TfmManPri.FormDestroy(Sender: TObject);
begin
  fmManPri := nil;
end;

procedure TfmManPri.CriarForm(frmClass: TFormClass; out Obj);
var
Found,i : Integer;
begin

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is FrmClass then Found := i;

  end;

  if Found >= 0 then begin

     TForm(Obj).WindowState := wsNormal;
     TForm(Obj).BringToFront;

     end
  else
     begin

     TForm(Obj) := FrmClass.Create(Self);
     TForm(Obj).Show;

  end;
end;

procedure TfmManPri.Licenciamento1Click(Sender: TObject);
var
  i,j : integer;
  FormChild : string;
begin
  if GUsu_Id = 999 then begin

     try

       fmManLic := TfmManLic.Create(Self);
       fmManLic.ShowModal;

     finally

       FreeAndNil(fmManLic);

     end;

     end
  else
     begin

     if UpperCase(Trim(GLibAce)) = 'NAO' then begin

        j := 0;

        for i := 0 to Screen.FormCount - 1 do begin

            FormChild := Trim(Screen.Forms[i].Name);

            if Trim(FormChild) <> '' then begin

               if UpperCase(FormChild) <> 'FMMANPRI' then Inc(j);

            end;
        end;

        if j > 0 then
           fmsgErro('Existe(m) '+IntToStr(j)+' Formulario(s) Aberto(s). Por Favor Feche-os.',Nil)
        else
           begin

           try

             fmManAut := TfmManAut.Create(Self);
             fmManAut.ShowModal;

           finally

             FreeAndNil(fmManAut);

           end;
        end;

        if GUsu_Id <> 999 then begin

           if UpperCase(Trim(GLibAce)) = 'SIM' then PopMenu.Items[3].Visible := False;

        end;
     end;
  end;
end;

end.
