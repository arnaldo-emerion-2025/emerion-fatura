unit ManPri;

interface

uses
  Forms, Windows, Messages, wwstorep, Db, DBTables, Menus, Classes, Controls,
  SysUtils, ExtCtrls, WinProcs, ComCtrls, Wwintl, Wwquery, Graphics, ShellApi,
  Dialogs, FileCtrl, jpeg, StdCtrls, ImgList, uObjectMDIImage;                                  

type
  TfmManPri = class(TForm)
    sbMain: TStatusBar;
    mmMenu: TMainMenu;
    wwIntl1: TwwIntl;
    Log: TwwQuery;
    EST01: TMenuItem;
    EST0106: TMenuItem;
    EST0107: TMenuItem;
    ABE0109: TMenuItem;
    N2: TMenuItem;
    EST0105: TMenuItem;
    N3: TMenuItem;
    EST0103: TMenuItem;
    EST0102: TMenuItem;
    Timer1: TTimer;
    EST03: TMenuItem;
    EST0306: TMenuItem;
    EST0303: TMenuItem;
    EST030302: TMenuItem;
    EST030301: TMenuItem;
    EST0301: TMenuItem;
    quSql: TwwQuery;
    ABE06: TMenuItem;
    EST0101: TMenuItem;
    EST010101: TMenuItem;
    EST010102: TMenuItem;
    ImageList1: TImageList;
    N1: TMenuItem;
    EST02: TMenuItem;
    StoredProc: TStoredProc;
    EST0302: TMenuItem;
    EST0201: TMenuItem;
    EST0202: TMenuItem;
    EST010103: TMenuItem;
    EST04: TMenuItem;
    EST0401: TMenuItem;
    EST0403: TMenuItem;
    N4: TMenuItem;
    StoredPrc1: TStoredProc;
    N6: TMenuItem;
    EST0108: TMenuItem;
    EST0406: TMenuItem;
    EST040601: TMenuItem;
    EST0104: TMenuItem;
    N8: TMenuItem;
    EST040603: TMenuItem;
    EST040602: TMenuItem;
    EST0110: TMenuItem;
    N9: TMenuItem;
    EST0307: TMenuItem;
    EST030701: TMenuItem;
    N10: TMenuItem;
    EST040604: TMenuItem;
    N11: TMenuItem;
    EST040605: TMenuItem;
    N5: TMenuItem;
    EST040606: TMenuItem;
    N7: TMenuItem;
    EST0308: TMenuItem;
    EST0309: TMenuItem;
    N12: TMenuItem;
    EST010104: TMenuItem;
    EST0109: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    EST040607: TMenuItem;
    EST030702: TMenuItem;
    N15: TMenuItem;
    EST0310: TMenuItem;
    N16: TMenuItem;
    EST040608: TMenuItem;
    N17: TMenuItem;
    EST010105: TMenuItem;
    N18: TMenuItem;
    EST0407: TMenuItem;
    EST0311: TMenuItem;
    N20: TMenuItem;
    PopMenu: TPopupMenu;
    mmPsqUsuario: TMenuItem;
    smManTSe: TMenuItem;
    smLogin: TMenuItem;
    smLicenciamento: TMenuItem;
    procedure CriarForm(frmClass: TFormClass; out Obj);
    procedure ShowHint(Sender: Tobject);
    procedure FormCreate(Sender: TObject);
    procedure ProcErro(Sender: TObject; E: Exception);
    procedure OpArquivos(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure mmPsqUsuarioClick(Sender: TObject);
    procedure AppIdle(Sender: TObject; var Done: Boolean);
    procedure Timer1Timer(Sender: TObject);
    procedure smManTSeClick(Sender: TObject);
    procedure smLoginClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ProcessaMsg(var Msg: TMsg; var Handled: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ABE0109Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure smLicenciamentoClick(Sender: TObject);
  private
  public
    sCancelar : string;
    vMDIImage : TMDIImage;
  end;

var
  fmManPri: TfmManPri;

implementation

uses Bbgeral, Bbacesso, Bbmensag, Bbfuncao, Bberro, ManGDB, ManPro, ManCor,
     ManTip, ManUnd, EstR02, EstR04, EstR03, EstR05, ManGru, ManIpi, ManIcm,
     VerUsu, ManTUs, ManTSe, ManLog, ManDef, SadReg, EstR01, ManSda, ManEnf,
     ManStr, ManAce, ManPar, ManCom, ManImp, ManMrc, ManEns, ManSds, ManCat,
     EstR06, ManPrc, ManApr, ManCba, EstR08, EstR09, ManTxf, ManEmb, ManRef,
     EstR10, EstR11, ManTrf, ManUfe, ManEnv, EstR12, ManLic, ManAut;

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

procedure TfmManPri.AppIdle(Sender: TObject; var Done: Boolean);
begin
  Timer1.Enabled := True;
end;

procedure TfmManPri.FormCreate(Sender: TObject);
begin

  GModAce := 'EST';

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

  with quSQL,SQL do begin

       Close;
       Text := ' Select LanCba From EstPar';
       Open;

       if FieldbyName('LanCba').AsString <> 'Sim' then begin

          N5.Visible := False;

          EST040606.Visible := False;

       end;
  end;
end;

{*************************************************************************
* Rotina: Emissão de Mensagens na Linha de Status
*************************************************************************}
procedure TfmManPri.ShowHint(Sender: Tobject);
begin
  SbMain.Panels[0].Text := Application.Hint;
end;

procedure TfmManPri.mmPsqUsuarioClick(Sender: TObject);
begin

  try

     fmManTUs := TfmManTUs.Create(Self);

     fmManTUs.ShowModal;

  finally

     FreeAndNil(fmManTUs);

  end;

  try

     fmManDef := TFmManDef.Create(Self);

     fmManDef.Show;
     fmManDef.Refresh;

  finally

     FreeAndNil(fmManDef);

  end;

  if Trim( GApeEmp ) <> '' then
     fmManPri.Caption := 'Emerion Estoque - ' + GApeEmp + GApeAce
  else
     fmManPri.Caption := 'Emerion Estoque' + GApeAce;

  if GUsu_Id > 0 then
     fmManPri.sbMain.Panels[1].Text := ' Usuario : ' + GUsu_Nm
  else
     fmManPri.sbMain.Panels[1].Text := ' Usuario : ';

  fmManPri.sbMain.Panels[2].Text := DateToStr(Date);

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
  
  if sNome = 'EST010101' then CriarForm(TfmManIpi, fmManIpi);
  if sNome = 'EST010102' then CriarForm(TfmManIcm, fmManIcm);
  if sNome = 'EST010103' then CriarForm(TfmManStr, fmManStr);
  if sNome = 'EST010104' then CriarForm(TfmManTxf, fmManTxf);
  if sNome = 'EST010105' then CriarForm(TfmManUfe, fmManUfe);

  if sNome = 'EST0109' then CriarForm(TfmManEmb, fmManEmb);
  if sNome = 'EST0102' then CriarForm(TfmManUnd, fmManUnd);
  if sNome = 'EST0103' then CriarForm(TfmManTip, fmManTip);
  if sNome = 'EST0104' then CriarForm(TfmManMrc, fmManMrc);
  if sNome = 'EST0105' then CriarForm(TfmManCor, fmManCor);
  if sNome = 'EST0106' then CriarForm(TfmManGru, fmManGru);
  if sNome = 'EST0107' then CriarForm(TfmManPro, fmManPro);
  if sNome = 'EST0108' then CriarForm(TfmManCom, fmManCom);
  if sNome = 'EST0110' then CriarForm(TfmManCat, fmManCat);
  if sNome = 'EST0201' then CriarForm(TfmManSda, fmManSda);
  if sNome = 'EST0202' then CriarForm(TfmManEnf, fmManEnf);

  if sNome = 'EST0301' then CriarForm(TfmEstR02, fmEstR02);
  if sNome = 'EST0302' then CriarForm(TfmEstR01, fmEstR01);
  if sNome = 'EST0311' then CriarForm(TfmEstR12, fmEstR12);

  if sNome = 'EST030301' then CriarForm(TfmEstR04, fmEstR04);
  if sNome = 'EST030302' then CriarForm(TfmEstR03, fmEstR03);

  if sNome = 'EST0306' then CriarForm(TfmEstR05, fmEstR05);

  if sNome = 'EST030701' then CriarForm(TfmEstR06, fmEstR06);
  if sNome = 'EST030702' then CriarForm(TfmEstR10, fmEstR10);

  if sNome = 'EST0308' then CriarForm(TfmEstR08, fmEstR08);
  if sNome = 'EST0309' then CriarForm(TfmEstR09, fmEstR09);
  if sNome = 'EST0310' then CriarForm(TfmEstR11, fmEstR11);

  if sNome = 'EST0401' then CriarForm(TfmManAce, fmManAce);
  if sNome = 'EST0403' then CriarForm(TfmManPar, fmManPar);
  if sNome = 'EST0407' then CriarForm(TfmManEnv, fmManEnv);

  if sNome = 'EST040601' then CriarForm(TfmManImp, fmManImp);
  if sNome = 'EST040602' then CriarForm(TfmManSds, fmManSds);
  if sNome = 'EST040603' then CriarForm(TfmManEns, fmManEns);
  if sNome = 'EST040604' then CriarForm(TfmManPrc, fmManPrc);
  if sNome = 'EST040605' then CriarForm(TfmManApr, fmManApr);
  if sNome = 'EST040606' then CriarForm(TfmManCba, fmManCba);
  if sNome = 'EST040607' then CriarForm(TfmManRef, fmManRef);  
  if sNome = 'EST040608' then CriarForm(TfmManTrf, fmManTrf);

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
           fmManPri.Caption := ' Emerion Estoque - ' + GApeEmp + GApeAce
        else
           fmManPri.Caption := ' Emerion Estoque' + GApeAce;

        if GUsu_Id > 0 then
           fmManPri.sbMain.Panels[1].Text := ' Usuario : ' + GUsu_Nm
        else
           fmManPri.sbMain.Panels[1].Text := ' Usuario : ';

     end;
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

procedure TfmManPri.ABE0109Click(Sender: TObject);
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

procedure TfmManPri.smLicenciamentoClick(Sender: TObject);
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
