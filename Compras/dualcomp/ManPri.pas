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
    Log: TwwQuery;
    CMP01: TMenuItem;
    CMP0101: TMenuItem;
    CMP0105: TMenuItem;
    N2: TMenuItem;
    ABE0107: TMenuItem;
    Timer1: TTimer;
    quSql: TwwQuery;
    N1: TMenuItem;
    ImageList1: TImageList;
    PopMenu: TPopupMenu;
    mmPsqUsuario: TMenuItem;
    smManTSe: TMenuItem;
    smLogin: TMenuItem;
    StoredProc: TStoredProc;
    CMP02: TMenuItem;
    ABE05: TMenuItem;
    CMP0202: TMenuItem;
    CMP0201: TMenuItem;
    N5: TMenuItem;
    CMP0103: TMenuItem;
    CMP0104: TMenuItem;
    CMP0102: TMenuItem;
    CMP03: TMenuItem;
    CMP0303: TMenuItem;
    CMP0301: TMenuItem;
    N4: TMenuItem;
    CMP010302: TMenuItem;
    CMP010502: TMenuItem;
    CMP010301: TMenuItem;
    N8: TMenuItem;
    CMP010303: TMenuItem;
    CMP010501: TMenuItem;
    CMP010504: TMenuItem;
    CMP010503: TMenuItem;
    CMP020204: TMenuItem;
    CMP020201: TMenuItem;
    CMP020202: TMenuItem;
    CMP020208: TMenuItem;
    CMP02020801: TMenuItem;
    CMP02020802: TMenuItem;
    N3: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    CMP0106: TMenuItem;
    CMP020210: TMenuItem;
    N12: TMenuItem;
    CMP010505: TMenuItem;
    N13: TMenuItem;
    CMP020211: TMenuItem;
    N14: TMenuItem;
    CMP020212: TMenuItem;
    N15: TMenuItem;
    CMP0204: TMenuItem;
    CMP020401: TMenuItem;
    N17: TMenuItem;
    CMP020402: TMenuItem;
    CMP02040201: TMenuItem;
    CMP010506: TMenuItem;
    CMP02040202: TMenuItem;
    CMP02040203: TMenuItem;
    N6: TMenuItem;
    CMP010507: TMenuItem;
    CMP02040204: TMenuItem;
    CMP010304: TMenuItem;
    N7: TMenuItem;
    CMP01030401: TMenuItem;
    CMP010305: TMenuItem;
    N11: TMenuItem;
    CMP0205: TMenuItem;
    N16: TMenuItem;
    CMP010508: TMenuItem;
    N18: TMenuItem;
    CMP020403: TMenuItem;
    CMP020404: TMenuItem;
    N19: TMenuItem;
    CMP020405: TMenuItem;
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
    procedure ABE0107Click(Sender: TObject);
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

uses Bbgeral, Bbacesso, Bbmensag, Bbfuncao, Bberro, ManGDB, VerUsu, ManTSe,
     ManTUs, ManLog, ManFor, ManPfa, ManDef, SadReg, ManPfo, ManPro, ManPar,
     ManAce, ManEpe, ManPco, CmpR01, ManApr, CmpR02, CmpR03, CmpR04, PsqEs2,
     CmpR10, EstR06, CmpR07, CmpR08, CmpR14, CmpR11, ManEnt, CmpR05, ManRom,
     CmpR12, EstR04, EstR03, CmpR13, CmpR15, CmpR16, CmpR17, CmpR18, ManGFo,
     ManAco, ManCen, CmpR20, ManLro, ManLr2, ManLr3, ManLic, ManAut;

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
          VK_DELETE: Tecla := 'DEL';
     end;
  end;
end;

{*************************************************************************
* Rotina: setup da aplicação
*************************************************************************}
procedure TfmManPri.FormCreate(Sender: TObject);
begin
  inherited;
  
  GModAce := 'CMP';
  
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
  
  if sNome = 'CMP0101' then CriarForm(TfmManPfo, fmManPfo);
  if sNome = 'CMP0102' then CriarForm(TfmManPro, fmManPro);

  if sNome = 'CMP010301' then CriarForm(TfmManFor, fmManFor);
  if sNome = 'CMP010302' then CriarForm(TfmManPco, fmManPco);
  if sNome = 'CMP010303' then CriarForm(TfmManApr, fmManApr);
  if sNome = 'CMP010305' then CriarForm(TfmManAco, fmManAco);
  
  if sNome = 'CMP01030401' then CriarForm(TfmManGFo, fmManGFo);

  if sNome = 'CMP0104' then CriarForm(TfmManPfa, fmManPfa);

  if sNome = 'CMP010501' then CriarForm(TfmCmpR02, fmCmpR02);
  if sNome = 'CMP010502' then CriarForm(TfmCmpR01, fmCmpR01);

  if sNome = 'CMP0106' then begin

     try

        fmPsqEs2 := TfmPsqEs2.Create(Self);

        fmPsqEs2.sEntr := 'N';

        fmPsqEs2.sCodClp := '1';

        fmPsqEs2.ShowModal;

     finally

        FreeAndNil(fmPsqEs2);

     end;

     PopMenu.AutoPopup := True;

  end;

  if sNome = 'CMP010503' then CriarForm(TfmCmpR04, fmCmpR04);
  if sNome = 'CMP010504' then CriarForm(TfmCmpR03, fmCmpR03);
  if sNome = 'CMP010505' then CriarForm(TfmEstR06, fmEstR06);
  if sNome = 'CMP010506' then CriarForm(TfmCmpR13, fmCmpR13);
  if sNome = 'CMP010507' then CriarForm(TfmCmpR17, fmCmpR17);
  if sNome = 'CMP010508' then CriarForm(TfmCmpR20, fmCmpR20);

  if sNome = 'CMP0201' then CriarForm(TfmManEpe, fmManEpe);

  if sNome = 'CMP020201' then CriarForm(TfmCmpR05, fmCmpR05);
  if sNome = 'CMP020202' then CriarForm(TfmCmpR08, fmCmpR08);
  if sNome = 'CMP020204' then CriarForm(TfmCmpR07, fmCmpR07);

  if sNome = 'CMP02020801' then CriarForm(TfmEstR04, fmEstR04);
  if sNome = 'CMP02020802' then CriarForm(TfmEstR03, fmEstR03);

  if sNome = 'CMP020210' then CriarForm(TfmCmpR10, fmCmpR10);
  if sNome = 'CMP020211' then CriarForm(TfmCmpR14, fmCmpR14);
  if sNome = 'CMP020212' then CriarForm(TfmCmpR11, fmCmpR11);

  if sNome = 'CMP020401' then CriarForm(TfmManRom, fmManRom);
  if sNome = 'CMP020403' then CriarForm(TfmManLro, fmManLro);
  if sNome = 'CMP020404' then CriarForm(TfmManLr2, fmManLr2);
  if sNome = 'CMP020405' then CriarForm(TfmManLr3, fmManLr3);

  if sNome = 'CMP02040201' then CriarForm(TfmCmpR12, fmCmpR12);
  if sNome = 'CMP02040202' then CriarForm(TfmCmpR15, fmCmpR15);
  if sNome = 'CMP02040203' then CriarForm(TfmCmpR16, fmCmpR16);
  if sNome = 'CMP02040204' then CriarForm(TfmCmpR18, fmCmpR18);

  if sNome = 'CMP0205' then CriarForm(TfmManCen, fmManCen);

  if sNome = 'CMP0301' then CriarForm(TfmManAce, fmManAce);
  if sNome = 'CMP0303' then CriarForm(TfmManPar, fmManPar);
  
end;

procedure TfmManPri.Timer1Timer(Sender: TObject);
begin
  if (GUsu_Id > 0) and (GVerUsuario = 0) then begin

     if not Assigned(fmVerUsu) then begin
     
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
  if (GUsu_Id > 0) and (GVerUsuario = 0) then begin

     if not Assigned(fmManTSe) then begin

        try

           fmManTSe := TfmManTSe.Create(Self);

           fmManTSe.ShowModal;

        finally

           FreeAndNil(fmManTSe);

        end;
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
  inherited;

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

              fmsg(GMensagem_0001,'I');

              end
           else
              GLibAce := 'Sim';

           end
        else
           fmsg(GMensagem_0001,'I');

        end
     else
        fmsg(GMensagem_0001,'I');

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

     if GFlgAce = 'Sim' then mmMenu.Items[1].Items[2].Delete(0);
     if GFlgAce = 'Sim' then mmMenu.Items[1].Items[2].Delete(11);

     if sCancelar = 'N' then begin

        try

           fmManDef := TFmManDef.Create(Self);

           fmManDef.Show;
           fmManDef.Refresh;

        finally

           FreeAndNil(fmManDef);

        end;

        if Trim( GApeEmp ) <> '' then
           fmManPri.Caption := 'Emerion Compras - ' + GApeEmp
        else
           fmManPri.Caption := 'Emerion Compras';

        if GUsu_Id > 0 then
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

  if GFlgAce = 'Sim' then mmMenu.Items[1].Items[2].Delete(0);
  if GFlgAce = 'Sim' then mmMenu.Items[1].Items[2].Delete(11);

  try

     fmManDef := TFmManDef.Create(Self);

     fmManDef.Show;
     fmManDef.Refresh;

  finally

     FreeAndNil(fmManDef);

  end;

  if Trim( GApeEmp ) <> '' then
     fmManPri.Caption := 'Emerion Compras - ' + GApeEmp
  else
     fmManPri.Caption := 'Emerion Compras';

  if GUsu_Id > 0 then
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

procedure TfmManPri.ABE0107Click(Sender: TObject);
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
