unit PedR12;

interface

uses
  Fpadrao, SysUtils, Classes, Controls, Forms,
  StdCtrls, Buttons, Db, DBTables, Wwquery, ExtCtrls,
  Wwdbigrd, Wwdbgrid, hGrid, Wwdatsrc, Mask, hEdits, wwdbedit,
  Wwdotdot, Wwdbcomb, DBCtrls, AlignEdit, QuickRpt, ppDB, ppDBPipe,
  ppStrtch, ppMemo, ppBands, ppVar, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, dxCntner, dxEditor, dxEdLib,
  dxExEdtr, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxTL,
  dxDBCtrl, dxDBGrid, dxColorPickEdit, dxColorEdit, Menus, Dialogs;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;
  
  TfmPedR12 = class(TfmPadrao)
    FinCrp: TwwQuery;
    DsCrp: TwwDataSource;
    bImprime: TBitBtn;
    quSql: TwwQuery;
    bPesquisa: TBitBtn;
    PaintBox: TPaintBox;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    EdPsqNomVen: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqVen: TSpeedButton;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    grRes: TdxDBGrid;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    Label4: TLabel;
    Bevel2: TBevel;
    EdPsqMesLan: TdxColorPickEdit;
    EdPsqAnoLan: TdxColorEdit;
    FinCrpCODCLI: TIntegerField;
    FinCrpAPECLI: TStringField;
    FinCrpTOTL01: TFloatField;
    FinCrpTOTL02: TFloatField;
    FinCrpTOTL03: TFloatField;
    FinCrpTOTLAN: TFloatField;
    grResCODCLI: TdxDBGridColumn;
    grResAPECLI: TdxDBGridColumn;
    grResTOTL01: TdxDBGridColumn;
    grResTOTL02: TdxDBGridColumn;
    grResTOTL03: TdxDBGridColumn;
    grResTOTLAN: TdxDBGridColumn;
    rgStatus: TRadioGroup;
    Label20: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EdPsqCodGve: TdxColorEdit;
    EdPsqCodCve: TdxColorEdit;
    bPsqCve: TSpeedButton;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    EdPsqNomCve: TdxColorEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    rgTipo: TRadioGroup;
    SaveDialog: TSaveDialog;
    procedure BbCancClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bImprimeClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure bPsqCveClick(Sender: TObject);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sFiltro,SeqArq : string;
  end;

var
  fmPedR12 : TfmPedR12;

implementation

uses dxDemoUtils, ShellAPI, BbGeral, BbMensag, Bbfuncao, ManGDB, AuxIni,
     AuxPsq, PsqCve, PsqGve, PsqEmp;

{$R *.DFM}

procedure TfmPedR12.Save(ADefaultExt, AFilter, AFileName: String;
  AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR12.BbCancClick(Sender: TObject);
begin
  close;
end;

procedure TfmPedR12.FormCreate(Sender: TObject);
begin
  inherited;

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
            copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
            copy(TimeToStr(Time),1,2)+
            copy(TimeToStr(Time),4,2)+
            copy(TimeToStr(Time),7,2)+
            FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
            FNumZeros(Trim( IntToStr(Random(50000)) ),5);

end;

procedure TfmPedR12.FormShow(Sender: TObject);
begin
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR12.bPsqVenClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqNomVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmPedR12.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

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
     
     with quSql,SQL do begin

          Close;
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdPsqApeEmp.Clear;

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmPedR12.bPesquisaClick(Sender: TObject);
var
EdPsqDteLan1 : TDateTime;
EdPsqDteLan2 : TDateTime;
sFiltro1,sFiltro2,sFiltro3,sFiltro4,sFiltro5,sFiltro6 : string;
sFiltro1_Ant,sFiltro2_Ant : string;
begin

  ActiveControl := nil;

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
  
  if Trim( EdPsqAnoLan.Text )  = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. Ano',EdPsqAnoLan);

  if EdPsqMesLan.ItemIndex = 0 then begin

     EdPsqDteLan1 := StrToDate('01/01/'+EdPsqAnoLan.Text);
     EdPsqDteLan2 := StrToDate('01/04/'+EdPsqAnoLan.Text) - 1;

  end;

  if EdPsqMesLan.ItemIndex = 1 then begin

     EdPsqDteLan1 := StrToDate('01/04/'+EdPsqAnoLan.Text);
     EdPsqDteLan2 := StrToDate('01/07/'+EdPsqAnoLan.Text) - 1;

  end;

  if EdPsqMesLan.ItemIndex = 2 then begin

     EdPsqDteLan1 := StrToDate('01/07/'+EdPsqAnoLan.Text);
     EdPsqDteLan2 := StrToDate('01/10/'+EdPsqAnoLan.Text) - 1;

  end;

  if EdPsqMesLan.ItemIndex = 3 then begin

     EdPsqDteLan1 := StrToDate('01/10/'+EdPsqAnoLan.Text);
     EdPsqDteLan2 := StrToDate('31/12/'+EdPsqAnoLan.Text);

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FinR17 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FinR18 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR12 Where PedR12.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR13 Where PedR13.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  sFiltro1 := '';
  sFiltro2 := '';
  sFiltro3 := '';
  sFiltro4 := '';
  sFiltro5 := '';
  sFiltro6 := '';

  sFiltro1_Ant := '';
  sFiltro2_Ant := '';

  if (rgTipo.ItemIndex = 1) or (rgTipo.ItemIndex = 2) then begin
   
     if Trim( EdPsqCodEmp.Text ) <> '' then begin

        sFiltro2 := ' and PedRes.CodEmp = '''+ EdPsqCodEmp.Text +'''';
        sFiltro3 := ' and PedLib.CodEmp = '''+ EdPsqCodEmp.Text +'''';
        sFiltro4 := ' and PedLib.CodEmp = '''+ EdPsqCodEmp.Text +'''';
        sFiltro5 := ' and FatDev.CodEmp = '''+ EdPsqCodEmp.Text +'''';
        sFiltro6 := ' and FatDep.CodEmp = '''+ EdPsqCodEmp.Text +'''';

     end;

     sFiltro3 := sFiltro3 + ' and PedLib.DteFat >= '''+ fDateToSQL(EdPsqDteLan1) +'''';
     sFiltro3 := sFiltro3 + ' and PedLib.DteFat <= '''+ fDateToSQL(EdPsqDteLan2) +'''';
     sFiltro2 := sFiltro2 + ' and PedRes.DteRes >= '''+ fDateToSQL(EdPsqDteLan1) +'''';
     sFiltro2 := sFiltro2 + ' and PedRes.DteRes <= '''+ fDateToSQL(EdPsqDteLan2) +'''';
     sFiltro4 := sFiltro4 + ' and PedLib.DteDel >= '''+ fDateToSQL(EdPsqDteLan1) +'''';
     sFiltro4 := sFiltro4 + ' and PedLib.DteDel <= '''+ fDateToSQL(EdPsqDteLan2) +'''';
     sFiltro5 := sFiltro5 + ' and FatDev.DteDev >= '''+ fDateToSQL(EdPsqDteLan1) +'''';
     sFiltro5 := sFiltro5 + ' and FatDev.DteDev <= '''+ fDateToSQL(EdPsqDteLan2) +'''';
     sFiltro6 := sFiltro6 + ' and FatDep.DteDep >= '''+ fDateToSQL(EdPsqDteLan1) +'''';
     sFiltro6 := sFiltro6 + ' and FatDep.DteDep <= '''+ fDateToSQL(EdPsqDteLan2) +'''';

     if GFlgAce = 'Sim' then begin

        sFiltro3 := sFiltro3 + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');
        sFiltro2 := sFiltro2 + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = '+QuotedStr('Sim');
        sFiltro4 := sFiltro4 + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR12(SeqArq,DteRes,CodVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '''+ SeqArq +''','+
                  '        PedLib.DteFat,'+
                  '        PedLib.CodVen,'''+ '0' +''','+
                  '        Sum(PedLib.BasCom),'''+ '0' +''','''+ '0' +''','+
                  '        Sum(PedLib.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                  '        From PedLib'+
                  '        Where PedLib.SitLib = '''+ 'Faturado' +''''+
                  '          and PedLib.IntFin = '''+ 'Sim'      +''''+
                  '          and PedLib.ModPfa = '''+ 'Vendas'   +''''+ sFiltro1 + sFiltro3;

          Text := Text + ' group by PedLib.DteFat,PedLib.CodVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR12(SeqArq,DteRes,CodVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '''+ SeqArq +''','+
                  '        PedLib.DteFat,'+
                  '        PedLib.CodVen,'''+ '0' +''','+
                  '        Sum(PedLib.BasCom),'''+ '0' +''','''+ '0' +''','+
                  '        Sum(PedLib.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                  '        From PedLib'+
                  '        Where PedLib.SitLib = '''+ 'Devolvido' +''''+
                  '          and PedLib.IntFin = '''+ 'Sim'       +''''+
                  '          and PedLib.ModPfa = '''+ 'Vendas'    +''''+ sFiltro1 + sFiltro3;

          Text := Text + ' group by PedLib.DteFat,PedLib.CodVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR12(SeqArq,DteRes,CodVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '''+ SeqArq +''','+
                  '        PedLib.DteFat,'+
                  '        PedLib.CodVen,'''+ '0' +''','+
                  '        Sum(PedLib.BasCom),'''+ '0' +''','''+ '0' +''','+
                  '        Sum(PedLib.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                  '        From PedLib'+
                  '        Where PedLib.SitLib = '''+ 'Cancelado' +''''+
                  '          and PedLib.IntFin = '''+ 'Sim'       +''''+
                  '          and PedLib.ModPfa = '''+ 'Vendas'    +''''+ sFiltro1 + sFiltro3;

          Text := Text + ' group by PedLib.DteFat,PedLib.CodVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR12(SeqArq,DteRes,CodVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '''+ SeqArq +''','+
                  '        FatDev.DteDev,'+
                  '        FatDev.CodVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                  '        Sum(FatDev.BasCom),'''+ '0' +''','+
                  '        Sum(FatDev.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                  '        From FatDev'+
                  '        Where FatDev.SitDev = '''+ 'Devolvido' +''''+
                  '          and FatDev.IntFin = '''+ 'Sim'       +''''+
                  '          and FatDev.ModPfa = '''+ 'Vendas'    +''''+
                  '          and FatDev.FlgDif = '''+ 'Nao'       +''''+ sFiltro1 + sFiltro5;

          Text := Text + ' group by FatDev.DteDev,FatDev.CodVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR12(SeqArq,DteRes,CodVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '''+ SeqArq +''','+
                  '        FatDep.DteDep,'+
                  '        FatDep.CodVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                  '        Sum(FatDep.BasCom),'''+ '0' +''','+
                  '        Sum(FatDep.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                  '        From FatDep'+
                  '        Where FatDep.SitDep = '''+ 'Concluido' +''''+
                  '          and FatDep.IntFin = '''+ 'Sim'       +''''+
                  '          and FatDep.ModPfa = '''+ 'Vendas'    +''''+ sFiltro1 + sFiltro6;

          Text := Text + ' group by FatDep.DteDep,FatDep.CodVen';

          ExecSQL;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into PedR12(SeqArq,DteRes,CodVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                  ' Select '''+ SeqArq +''','+
                  '        PedLib.DteDel,'+
                  '        PedLib.CodVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                  '        Sum(PedLib.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                  '        Sum(PedLib.BasCom)'+
                  '        From PedLib'+
                  '        Where PedLib.SitLib = '''+ 'Cancelado' +''''+
                  '          and PedLib.IntFin = '''+ 'Sim'       +''''+
                  '          and PedLib.ModPfa = '''+ 'Vendas'    +''''+ sFiltro1 + sFiltro4 + ' group by PedLib.DteDel,PedLib.CodVen';
          ExecSQL;

     end;
  end;

  if (rgTipo.ItemIndex = 0) or (rgTipo.ItemIndex = 2) then begin
  
     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From rdb$relations'+
                  ' Where rdb$relations.rdb$relation_name = '+ QuotedStr('LOJPED');
          Open;

     end;

     if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

        sFiltro1_Ant := sFiltro1;
        sFiltro2_Ant := sFiltro2;
     
        (* Se o Banco de Dados possui FrenteLoja - Acrescenta-se a Comissão  *)
        (* do Modulo                                                         *)

        sFiltro1 := '';
        sFiltro2 := '';
        sFiltro3 := '';
        sFiltro4 := '';
        sFiltro5 := '';
        sFiltro6 := '';                

        if Trim( EdPsqCodEmp.Text ) <> '' then begin

           sFiltro2 := ' and LojPed.CodEmp = '''+ EdPsqCodEmp.Text +'''';
           sFiltro3 := ' and LojPed.CodEmp = '''+ EdPsqCodEmp.Text +'''';
           sFiltro4 := ' and LojPed.CodEmp = '''+ EdPsqCodEmp.Text +'''';
           sFiltro5 := ' and LojDev.CodEmp = '''+ EdPsqCodEmp.Text +'''';
           sFiltro6 := ' and LojGer.CodEmp = '''+ EdPsqCodEmp.Text +'''';

        end;

        sFiltro3 := sFiltro3 + ' and LojPed.DteMov >= '''+ fDateToSQL(EdPsqDteLan1) +'''';
        sFiltro3 := sFiltro3 + ' and LojPed.DteMov <= '''+ fDateToSQL(EdPsqDteLan2) +'''';
        sFiltro2 := sFiltro2 + ' and LojPed.DtePed >= '''+ fDateToSQL(EdPsqDteLan1) +'''';
        sFiltro2 := sFiltro2 + ' and LojPed.DtePed <= '''+ fDateToSQL(EdPsqDteLan2) +'''';
        sFiltro4 := sFiltro4 + ' and LojPed.DteMov >= '''+ fDateToSQL(EdPsqDteLan1) +'''';
        sFiltro4 := sFiltro4 + ' and LojPed.DteMov <= '''+ fDateToSQL(EdPsqDteLan2) +'''';
        sFiltro5 := sFiltro5 + ' and LojDev.DteDev >= '''+ fDateToSQL(EdPsqDteLan1) +'''';
        sFiltro5 := sFiltro5 + ' and LojDev.DteDev <= '''+ fDateToSQL(EdPsqDteLan2) +'''';
        sFiltro6 := sFiltro6 + ' and LojGer.DopGer >= '''+ fDateToSQL(EdPsqDteLan1) +'''';
        sFiltro6 := sFiltro6 + ' and LojGer.DopGer <= '''+ fDateToSQL(EdPsqDteLan2) +'''';

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR12(SeqArq,DteRes,CodVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojPed.DteMov,'+
                     '        LojPed.CodVen,'''+ '0' +''','+
                     '        Sum(LojPed.BasCom),'''+ '0' +''','''+ '0' +''','+
                     '        Sum(LojPed.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                     '        From LojPed'+
                     '        Where LojPed.SitPed = '''+ 'Recebida' +''''+
                     '          and LojPed.TipCpa = '''+ 'Vendedor' +''''+
                     '          and LojPed.FlgVal = '''+ 'Nao'      +''''+
                     '          and LojPed.ModPfa = '''+ 'Vendas'   +''''+ sFiltro1 + sFiltro3;

             Text := Text + ' group by LojPed.DteMov,LojPed.CodVen';

             ExecSQL;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR12(SeqArq,DteRes,CodVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojDev.DteDev,'+
                     '        LojDev.CodVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                     '        Sum(LojDev.BasCom),'''+ '0' +''','+
                     '        Sum(LojDev.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                     '        From LojDev,LojPed'+
                     '        Where LojDev.CodEmp = LojPed.CodEmp'+
                     '          and LojDev.DtePed = LojPed.DtePed'+
                     '          and LojDev.NumPed = LojPed.NumPed'+
                     '          and LojDev.SitDev = '''+ 'Concluida' +''''+
                     '          and LojDev.TipCpa = '''+ 'Vendedor'  +''''+
                     '          and LojPed.FlgVal = '''+ 'Nao'       +''''+
                     '          and LojDev.ModPfa = '''+ 'Vendas'    +''''+ sFiltro1 + sFiltro5;

             Text := Text + ' group by LojDev.DteDev,LojDev.CodVen';

             ExecSQL;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR12(SeqArq,DteRes,CodVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojGer.DopGer,'+
                     '        LojGer.CodVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                     '        Sum(LojGer.BasCom),'''+ '0' +''','+
                     '        Sum(LojGer.TotCom),'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''''+
                     '        From LojGer'+
                     '        Where LojGer.SitGer = '''+ 'Concluida' +''''+
                     '          and LojGer.ModPfa = '''+ 'Vendas'    +''''+ sFiltro1 + sFiltro6;

             Text := Text + ' group by LojGer.DopGer,LojGer.CodVen';

             ExecSQL;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Insert Into PedR12(SeqArq,DteRes,CodVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa)'+
                     ' Select '''+ SeqArq +''','+
                     '        LojPed.DteMov,'+
                     '        LojPed.CodVen,'''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','''+ '0' +''','+
                     '        Sum(LojPed.BasCom)'+
                     '        From LojPed'+
                     '        Where LojPed.SitPed = '''+ 'Cancelada' +''''+
                     '          and LojPed.ModPfa = '''+ 'Vendas'    +''''+
                     '          and LojPed.FlgVal = '''+ 'Nao'       +''''+
                     '          and LojPed.TipCpa = '''+ 'Vendedor'  +''''+ sFiltro1 + sFiltro4 + ' group by LojPed.DteMov,LojPed.CodVen';
             ExecSQL;

        end;
     end;
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR13(SeqArq,DteRes,CodVen,TotPed,TotFat,TotCan,TotDev,TotCre,TotDeb,QtdCli,QtdAti,QtdPed,TotCfa,TipOpe)'+
               ' Select PedR12.SeqArq,'+
               '        PedR12.DteRes,'+
               '        PedR12.CodVen,'+
               '        Sum(PedR12.TotPed) as TotPed,'+
               '        Sum(PedR12.TotFat) as TotFat,'+
               '        Sum(PedR12.TotCan) as TotCan,'+
               '        Sum(PedR12.TotDev) as TotDev,'+
               '        Sum(PedR12.TotCre) as TotCre,'+
               '        Sum(PedR12.TotDeb) as TotDeb,'+
               '        Sum(PedR12.QtdCli) as QtdCli,'+
               '        Sum(PedR12.QtdAti) as QtdAti,'+
               '        Sum(PedR12.QtdPed) as QtdPed,'+
               '        Sum(PedR12.TotCfa) as TotCfa,'''+ 'Trimestre' +''''+
               ' From PedR12 Where PedR12.SeqArq = '''+ SeqArq +'''';

       Text := Text + ' Group by PedR12.SeqArq,PedR12.DteRes,PedR12.CodVen';

       ExecSQL;

  end;

  with FinCrp,SQL do begin

       Close;
       Text := ' Select CodCli,'+
               '        ApeCli,'+
               '        TotL01,'+
               '        TotL02,'+
               '        TotL03,'+
               '        TotLan'+
               ' From FinR18 LEFT JOIN FinVen ON (FinR18.CodCli = FinVen.CodVen)'+
               ' Where FinR18.SeqArq = '''+ SeqArq +'''';

       case rgStatus.ItemIndex of
            0: Text := Text + ' and FinR18.TotLan <> '''+ '0' +'''';
            1: Text := Text + ' and FinR18.TotLan  = '''+ '0' +'''';
       end;

       if Trim( EdPsqCodVen.Text ) <> '' then Text := Text + ' and FinR18.CodCli = '''+ EdPsqCodVen.Text +'''';
       if Trim( EdPsqCodGve.Text ) <> '' then Text := Text + ' and FinVen.CodGve = '''+ EdPsqCodGve.Text +'''';
       if Trim( EdPsqCodCve.Text ) <> '' then Text := Text + ' and FinVen.CodCve = '''+ EdPsqCodCve.Text +'''';

       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FinR17 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FinR18 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR12 Where PedR12.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR13 Where PedR13.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  if FinCrpCodCli.Value > 0 then begin

     if EdPsqMesLan.ItemIndex = 0 then begin

        grRes.Columns[2].Caption := 'Jan'+ '/' +EdPsqAnoLan.Text;
        grRes.Columns[3].Caption := 'Fev'+ '/' +EdPsqAnoLan.Text;
        grRes.Columns[4].Caption := 'Mar'+ '/' +EdPsqAnoLan.Text;

     end;

     if EdPsqMesLan.ItemIndex = 1 then begin

        grRes.Columns[2].Caption := 'Abr'+ '/' +EdPsqAnoLan.Text;
        grRes.Columns[3].Caption := 'Mai'+ '/' +EdPsqAnoLan.Text;
        grRes.Columns[4].Caption := 'Jun'+ '/' +EdPsqAnoLan.Text;

     end;

     if EdPsqMesLan.ItemIndex = 2 then begin

        grRes.Columns[2].Caption := 'Jul'+ '/' +EdPsqAnoLan.Text;
        grRes.Columns[3].Caption := 'Ago'+ '/' +EdPsqAnoLan.Text;
        grRes.Columns[4].Caption := 'Set'+ '/' +EdPsqAnoLan.Text;

     end;

     if EdPsqMesLan.ItemIndex = 3 then begin

        grRes.Columns[2].Caption := 'Out'+ '/' +EdPsqAnoLan.Text;
        grRes.Columns[3].Caption := 'Nov'+ '/' +EdPsqAnoLan.Text;
        grRes.Columns[4].Caption := 'Dez'+ '/' +EdPsqAnoLan.Text;

     end;

     bImprime.Enabled := True;

     bImprime.SetFocus;

     end
  else
     begin

     bImprime.Enabled := False;

     bPesquisa.SetFocus;

  end;
end;

procedure TfmPedR12.bPsqEmpClick(Sender: TObject);
begin

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmPedR12.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR12.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR12.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FinR17 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From FinR18 Where SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR12 Where PedR12.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR13 Where PedR13.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmPedR12.bImprimeClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdPsqCodCve.Text + ' - ' + EdPsqNomCve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Trimestre/Ano : '+ EdPsqMesLan.Text + ' / ' + EdPsqAnoLan.Text);

  case rgStatus.Itemindex of
       0:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Com Movimentação');
       1:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Sem Movimentação');
       2:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Status : Todos');
  end;

  case rgTipo.Itemindex of
       0:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de Operação : Varejo');
       1:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de Operação : Atacado');
       2:dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de Operação : Todos');
  end;
  
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR12.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR12 := Nil;
end;

procedure TfmPedR12.HTMLClick(Sender: TObject);
begin
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Curva ABC de Comissão Trimestral de Vendedores.htm', grRes.SaveToHTML);
end;

procedure TfmPedR12.ExcelClick(Sender: TObject);
begin
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Curva ABC de Comissão Trimestral de Vendedores.xls', grRes.SaveToXLS);
end;

procedure TfmPedR12.XMLClick(Sender: TObject);
begin
  Save('xml', 'XML File (*.xml)|*.xml', 'Curva ABC de Comissão Trimestral de Vendedores.xml', grRes.SaveToXML);
end;

procedure TfmPedR12.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select ApeVen From FinVen Where CodVen = '''+EdPsqCodVen.Text+'''';
          Open;

          EdPsqNomVen.Text := quSql.FieldByName('ApeVen').AsString;
     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmPedR12.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqNomVen.Text := fmAuxIni.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqNomVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmPedR12.EdPsqCodCveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCve From FinCve Where CodCve = '''+EdPsqCodCve.Text+'''';
          Open;

          EdPsqNomCve.Text := FieldByName('NomCve').AsString;

     end;

     end
  else
     EdPsqNomCve.Text := '';
end;

procedure TfmPedR12.bPsqCveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCve := TfmPsqCve.Create(Self);

     fmPsqCve.ShowModal;

     if fmPsqCve.CodCve > 0 then begin

        EdPsqCodCve.Text := IntToStr(fmPsqCve.CodCve);
        EdPsqNomCve.Text := fmPsqCve.NomCve;

     end;

  finally

     FreeAndNil(fmPsqCve);

  end;
end;

procedure TfmPedR12.EdPsqCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomGve From FinGve Where CodGve = '''+EdPsqCodGve.Text+'''';
          Open;

          EdPsqNomGve.Text := FieldByName('NomGve').AsString;

     end;

     end
  else
     EdPsqNomGve.Text := '';
end;

procedure TfmPedR12.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGve := TfmPsqGve.Create(Self);

     fmPsqGve.ShowModal;

     if fmPsqGve.CodGve > 0 then begin

        EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);
        EdPsqNomGve.Text := fmPsqGve.NomGve;

     end;

  finally

     FreeAndNil(fmPsqGve);

  end;
end;

end.
