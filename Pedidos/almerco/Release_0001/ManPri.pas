unit ManPri;

interface

uses
  Forms, Windows, Messages, wwstorep, Db, DBTables, Menus, Classes, Controls,
  SysUtils, ExtCtrls, WinProcs, ComCtrls, Wwintl, Wwquery, Graphics, ShellApi,
  Dialogs, FileCtrl, StdCtrls, ImgList, ToolWin, dxfLabel, uObjectMDIImage;

type
  TfmManPri = class(TForm)
    sbMain: TStatusBar;
    mmMenu: TMainMenu;
    wwIntl1: TwwIntl;
    PED01: TMenuItem;
    ABE0107: TMenuItem;
    Timer1: TTimer;
    quSql: TwwQuery;
    PED0101: TMenuItem;
    PopMenu: TPopupMenu;
    mmPsqUsuario: TMenuItem;
    smManTSe: TMenuItem;
    smLogin: TMenuItem;
    StoredProc: TStoredProc;
    PED04: TMenuItem;
    ABE06: TMenuItem;
    PED0106: TMenuItem;
    PED0102: TMenuItem;
    PED0103: TMenuItem;
    N4: TMenuItem;
    PED0402: TMenuItem;
    PED0208: TMenuItem;
    PED0211: TMenuItem;
    PED0401: TMenuItem;
    N6: TMenuItem;
    PED02: TMenuItem;
    PED03: TMenuItem;
    PED0203: TMenuItem;
    N9: TMenuItem;
    N12: TMenuItem;
    ImageList1: TImageList;
    PED0212: TMenuItem;
    N15: TMenuItem;
    PED0301: TMenuItem;
    PED0302: TMenuItem;
    N2: TMenuItem;
    PED0303: TMenuItem;
    PED030101: TMenuItem;
    N11: TMenuItem;
    PED030201: TMenuItem;
    PED030202: TMenuItem;
    PED030203: TMenuItem;
    N16: TMenuItem;
    PED030204: TMenuItem;
    PED030302: TMenuItem;
    PED0204: TMenuItem;
    PED0206: TMenuItem;
    N20: TMenuItem;
    N21: TMenuItem;
    PED030102: TMenuItem;
    N19: TMenuItem;
    PED0210: TMenuItem;
    PED030303: TMenuItem;
    N23: TMenuItem;
    PED030205: TMenuItem;
    N24: TMenuItem;
    PED030103: TMenuItem;
    PED030207: TMenuItem;
    PED030206: TMenuItem;
    N25: TMenuItem;
    PED030208: TMenuItem;
    N26: TMenuItem;
    PED0205: TMenuItem;
    N27: TMenuItem;
    PED030209: TMenuItem;
    N28: TMenuItem;
    PED0207: TMenuItem;
    N29: TMenuItem;
    PED030211: TMenuItem;
    PED0403: TMenuItem;
    quSQL1: TwwQuery;
    N1: TMenuItem;
    PED030104: TMenuItem;
    PED030210: TMenuItem;
    N3: TMenuItem;
    PED030105: TMenuItem;
    N5: TMenuItem;
    PED0404: TMenuItem;
    N10: TMenuItem;
    PED030212: TMenuItem;
    PED030213: TMenuItem;
    N13: TMenuItem;
    PED030106: TMenuItem;
    N14: TMenuItem;
    PED0202: TMenuItem;
    Licenciamento1: TMenuItem;
    N7: TMenuItem;
    PED0105: TMenuItem;
    PED0104: TMenuItem;
    PED0209: TMenuItem;
    N17: TMenuItem;
    PED0201: TMenuItem;
    N18: TMenuItem;
    N30: TMenuItem;
    PED0107: TMenuItem;
    N31: TMenuItem;
    PED0304: TMenuItem;
    PED030402: TMenuItem;
    N32: TMenuItem;
    PED030403: TMenuItem;
    PED030404: TMenuItem;
    PED030405: TMenuItem;
    N33: TMenuItem;
    PED030401: TMenuItem;
    PED030107: TMenuItem;
    PED030301: TMenuItem;
    PED03030102: TMenuItem;
    PED03030101: TMenuItem;
    PED03030201: TMenuItem;
    PED03030202: TMenuItem;
    PED03030301: TMenuItem;
    PED03030302: TMenuItem;
    N8: TMenuItem;
    PED0213: TMenuItem;
    PED0108: TMenuItem;
    N22: TMenuItem;
    PED0109: TMenuItem;
    N34: TMenuItem;
    PED030108: TMenuItem;
    N35: TMenuItem;
    PED030109: TMenuItem;
    N36: TMenuItem;
    PED0305: TMenuItem;
    PED030501: TMenuItem;
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
     ManTUs, ManLog, SadReg, ManDef, ManVen, ManTra, ManPar, ManLpe, ManAce,
     ManRes, ManPag, PedR01, PedR05, PedR06, PedR07, PedR09, PedR10, ManCta,
     ManCom, ManPrg, ManSep, PedR30, PedR14, PedR15, PedR16, CmpR14, PedR17,
     PedR18, PedR19, PedR20, PedR21, ManCon, ManSer, ManCli, PsqEs2, PedR22,
     PedR23, ManFin, PedR25, ManMkp, PedR12, PedR26, PedR28, PedR29, PedR31,
     ManGco, ManLic, ManAut, ManICl, ManCnd, ManSld, ManAte, ManMve, GCom01,
     PedR32, PedR33, PedR34, PedR35, PedR36, PedR37, ManFrt, ManFor, ManPrm,
     PedR38, PedR39, PedR40;

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

  GModAce := 'PED';

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

  with quSQL,SQL do begin

       Close;
       Text := ' Select PedPar.FlgCot From PedPar';
       Open;

       if FieldbyName('FlgCot').AsString <> 'Sim' then
          mmMenu.Items[0].Delete(2);

  end;
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
sNome  : string;
TotGer : real;
TotCst : real;
Markup : real;
DtInic : TDateTime;
DtFina : TDateTime;
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
  
  if sNome = 'PED0101' then CriarForm(TfmManCli, fmManCli);
  if sNome = 'PED0102' then CriarForm(TfmManVen, fmManVen);
  if sNome = 'PED0108' then CriarForm(TfmManFor, fmManFor);
  if sNome = 'PED0103' then CriarForm(TfmManTra, fmManTra);
  if sNome = 'PED0104' then CriarForm(TfmManCnd, fmManCnd);
  if sNome = 'PED0105' then CriarForm(TfmManICl, fmManICl);

  if sNome = 'PED0106' then begin

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

  if sNome = 'PED0107' then CriarForm(TfmManMve, fmManMve);
  if sNome = 'PED0109' then CriarForm(TfmManPrm, fmManPrm);
  
  if sNome = 'PED0201' then CriarForm(TfmManAte, fmManAte);
  if sNome = 'PED0202' then CriarForm(TfmManGco, fmManGco);
  if sNome = 'PED0203' then CriarForm(TfmManCta, fmManCta);
  if sNome = 'PED0204' then CriarForm(TfmManRes, fmManRes);
  if sNome = 'PED0205' then CriarForm(TfmManPrg, fmManPrg);
  if sNome = 'PED0206' then CriarForm(TfmManCom, fmManCom);
  if sNome = 'PED0207' then CriarForm(TfmManCon, fmManCon);
  if sNome = 'PED0208' then CriarForm(TfmManFin, fmManFin);
  if sNome = 'PED0209' then CriarForm(TfmManSld, fmManSld);
  if sNome = 'PED0210' then CriarForm(TfmManSep, fmManSep);
  if sNome = 'PED0211' then CriarForm(TfmManLpe, fmManLpe);
  if sNome = 'PED0212' then CriarForm(TfmManPag, fmManPag);
  if sNome = 'PED0213' then CriarForm(TfmManFrt, fmManFrt);

  if sNome = 'PED030101' then CriarForm(TfmPedR01, fmPedR01);
  if sNome = 'PED030102' then CriarForm(TfmPedR16, fmPedR16);
  if sNome = 'PED030103' then CriarForm(TfmCmpR14, fmCmpR14);
  if sNome = 'PED030104' then CriarForm(TfmPedR22, fmPedR22);
  if sNome = 'PED030105' then CriarForm(TfmPedR25, fmPedR25);
  if sNome = 'PED030106' then CriarForm(TfmPedR31, fmPedR31);
  if sNome = 'PED030107' then CriarForm(TfmPedR33, fmPedR33);
  if sNome = 'PED030108' then CriarForm(TfmPedR38, fmPedR38);
  if sNome = 'PED030109' then CriarForm(TfmPedR39, fmPedR39);

  if sNome = 'PED030201' then CriarForm(TfmPedR05, fmPedR05);
  if sNome = 'PED030202' then CriarForm(TfmPedR06, fmPedR06);
  if sNome = 'PED030203' then CriarForm(TfmPedR07, fmPedR07);
  if sNome = 'PED030204' then CriarForm(TfmPedR09, fmPedR09);
  if sNome = 'PED030205' then CriarForm(TfmPedR15, fmPedR15);
  if sNome = 'PED030206' then CriarForm(TfmPedR17, fmPedR17);
  if sNome = 'PED030207' then CriarForm(TfmPedR18, fmPedR18);
  if sNome = 'PED030208' then CriarForm(TfmPedR19, fmPedR19);                                               
  if sNome = 'PED030209' then CriarForm(TfmPedR20, fmPedR20);
  if sNome = 'PED030210' then CriarForm(TfmPedR23, fmPedR23);
  if sNome = 'PED030211' then CriarForm(TfmPedR21, fmPedR21);
  if sNome = 'PED030212' then CriarForm(TfmPedR28, fmPedR28);
  if sNome = 'PED030213' then CriarForm(TfmPedR29, fmPedR29);

  if sNome = 'PED03030101' then CriarForm(TfmPedR34, fmPedR34);
  if sNome = 'PED03030102' then CriarForm(TfmPedR26, fmPedR26);
  if sNome = 'PED03030201' then CriarForm(TfmPedR30, fmPedR30);
  if sNome = 'PED03030202' then CriarForm(TfmPedR10, fmPedR10);
  if sNome = 'PED03030301' then CriarForm(TfmPedR12, fmPedR12);
  if sNome = 'PED03030302' then CriarForm(TfmPedR14, fmPedR14);

  if sNome = 'PED030401' then CriarForm(TfmPedR32, fmPedR32);
  if sNome = 'PED030402' then CriarForm(TfmGCom01, fmGCom01);
  if sNome = 'PED030403' then CriarForm(TfmPedR35, fmPedR35);
  if sNome = 'PED030404' then CriarForm(TfmPedR36, fmPedR36);
  if sNome = 'PED030405' then CriarForm(TfmPedR37, fmPedR37);

  if sNome = 'PED030501' then CriarForm(TfmPedR40, fmPedR40);

  if sNome = 'PED0401' then CriarForm(TfmManAce, fmManAce);
  if sNome = 'PED0402' then CriarForm(TfmManPar, fmManPar);
  if sNome = 'PED0403' then CriarForm(TfmManSer, fmManSer);

  if sNome = 'PED0404' then begin

     if Trim(UpperCase(GLibAce)) = 'SIM' then begin

        DtInic := StrToDate('01/'+copy(DateToStr(Date),4,7));
        DtFina := Date;

        with quSQL,SQL do begin

             Close;
             Text := ' Select Sum(PedLib.TotLib - PedLib.TotDsr) as TotLib,'+
                     '        Sum(PedLib.TotCst) as TotCst '+
                     ' From PedLib,PedRes'+
                     ' Where PedLib.Id_PedRes = PedRes.Id_PedRes'+
                     '   and PedLib.DteFat >= '+ QuotedStr(fDateToSQL(DtInic))    +
                     '   and PedLib.DteFat <= '+ QuotedStr(fDateToSQL(DtFina))    +
                     '   and PedRes.IntFin  = '+ QuotedStr('Sim')                 +
                     '   and PedRes.ModPfa  = '+ QuotedStr('Vendas')              +
                     '   and ( ( PedLib.SitLib = '+ QuotedStr('Faturado')  +' ) ' +
                     '      or ( PedLib.SitLib = '+ QuotedStr('Devolvido') +' and MonthOfYear(PedLib.DteFat) <> MonthOfYear(PedLib.DteDev) )  ' +
                     '      or ( PedLib.SitLib = '+ QuotedStr('Cancelado') +' and MonthOfYear(PedLib.DteFat) <> MonthOfYear(PedLib.DteDel) ) )' ;
             Open;

             TotGer := FieldbyName('TotLib').AsFloat;
             TotCst := FieldbyName('TotCst').AsFloat;

        end;

        if TotCst > 0 then
           Markup := fRound(((TotGer - TotCst)* 100)/TotCst,2)
        else
           Markup := 0;

        try

           fmManMkp := TfmManMkp.Create(Self);

           fmManMkp.lbTotGer.Caption := FormatFloat('###,###,##0.00',TotGer);
           fmManMkp.lbTotCst.Caption := FormatFloat('###,###,##0.00',TotCst);
           fmManMkp.lbMarkup.Caption := FormatFloat('###,###,##0.00',Markup);

           fmManMkp.ShowModal;

        finally

           FreeAndNil(fmManMkp);

        end;

        end
     else
        fmsgErro(GMensagem_0001,Nil);
  end;
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

     if sCancelar = 'N' then begin

        try

           fmManDef := TFmManDef.Create(Self);

           fmManDef.Show;
           fmManDef.Refresh;

        finally

           FreeAndNil(fmManDef);

        end;
        
        if Trim( GUsu_Nm ) <> '' then
           fmManPri.Caption := 'Emerion Comercial - ' + GApeEmp
        else
           fmManPri.Caption := 'Emerion Comercial';

        if GEmp_Id > 0 then
           fmManPri.sbMain.Panels[1].Text := ' Usuário : ' + GUsu_Nm
        else
           fmManPri.sbMain.Panels[1].Text := ' Usuário : ';

        fmManPri.sbMain.Panels[2].Text := DateToStr(Date);

        if GCodVen_Id > 0 then begin

           if Trim( fAcesso('PED0201') ) <> '' then begin

              fmManRes := TfmManRes.Create(Self);
              fmManRes.Show;

           end;
        end;
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

  try

     fmManDef := TFmManDef.Create(Self);

     fmManDef.Show;
     fmManDef.Refresh;

  finally

     FreeAndNil(fmManDef);

  end;

  if Trim( GUsu_Nm ) <> '' then
     fmManPri.Caption := 'Emerion Comercial - ' + GApeEmp
  else
     fmManPri.Caption := 'Emerion Comercial';

  if GEmp_Id > 0 then
     fmManPri.sbMain.Panels[1].Text := ' Usuário : ' + GUsu_Nm
  else
     fmManPri.sbMain.Panels[1].Text := ' Usuário : ';

  fmManPri.sbMain.Panels[2].Text := DateToStr(Date);

  if GCodVen_Id > 0 then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select * From PedPar';
          Open;

          GFlgImp := FieldByName('FlgImp').AsString;

     end;

     if Trim( fAcesso('PED0201') ) <> '' then begin

        fmManRes := TfmManRes.Create(Self);
        fmManRes.Show;

     end;
  end;
end;

procedure TfmManPri.smManTSeClick(Sender: TObject);
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

procedure TfmManPri.smLoginClick(Sender: TObject);
begin    
  if not Assigned(fmVerUsu) then begin
  
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
