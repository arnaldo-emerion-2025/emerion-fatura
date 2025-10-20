unit PedR05;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorPickEdit,
  dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR05 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label9: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grRes: TdxDBGrid;
    bImprimir: TBitBtn;
    Label26: TLabel;
    Label22: TLabel;
    Label3: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label19: TLabel;
    Label8: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodGCl: TdxColorEdit;
    EdPsqCodCCl: TdxColorEdit;
    bPsqCCl: TSpeedButton;
    bPsqGru: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomGCl: TdxColorEdit;
    EdPsqNomCCl: TdxColorEdit;
    PedResCODCLI: TIntegerField;
    PedResNOMCLI: TStringField;
    PedResTOTPED: TFloatField;
    PedResMARKUP: TFloatField;
    grResCODCLI: TdxDBGridMaskColumn;
    grResNOMCLI: TdxDBGridMaskColumn;
    grResTOTPED: TdxDBGridMaskColumn;
    grResQTDPED: TdxDBGridMaskColumn;
    grResMARKUP: TdxDBGridMaskColumn;
    Label7: TLabel;
    Label11: TLabel;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdPsqNomCli: TdxColorEdit;
    PedResQTDPED: TIntegerField;
    PedResSEQARQ: TStringField;
    PedResTOTCST: TFloatField;
    grResTOTCST: TdxDBGridColumn;
    Label12: TLabel;
    Label13: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    Label14: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqCodGve: TdxColorEdit;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    Colunas1: TMenuItem;
    rgTipo: TRadioGroup;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grResReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure bPsqGruClick(Sender: TObject);
    procedure EdPsqCodGClExit(Sender: TObject);
    procedure bPsqCClClick(Sender: TObject);
    procedure EdPsqCodCClExit(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Colunas1Click(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq : string;
  end;

var
  fmPedR05: TfmPedR05;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqEmp, PsqVen,
     PsqAtd, PsqGCl, PsqCCl, PsqCli, PsqGve, ManCol;

{$R *.DFM}

procedure TfmPedR05.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR05.FormCreate(Sender: TObject);
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

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);
  
end;

procedure TfmPedR05.bSelecionarClick(Sender: TObject);
var
sFiltro : string;
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

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR05 Where PedR05.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From LojR01 Where LojR01.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  if (rgTipo.ItemIndex = 1) or (rgTipo.ItemIndex = 2) then begin

     sFiltro := ' and ( ( PedLib.SitLib = '''+ 'Faturado' +''' )';

     sFiltro := sFiltro + ' or ( PedLib.SitLib = '''+ 'Devolvido' +''' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDev) )';
     sFiltro := sFiltro + ' or ( PedLib.SitLib = '''+ 'Cancelado' +''' and not MonthOfYear(PedLib.DteFat) = MonthOfYear(PedLib.DteDel) )';

     sFiltro := sFiltro + ' )';

     if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.ModPfa = '''+ EdPsqModPfa.Text +'''';

     if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and PedLib.DteFat <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';

     if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodEmp = '''+ EdPsqCodEmp.Text +'''';
     if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodCli = '''+ EdPsqCodCli.Text +'''';
     if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and PedLib.CodVen = '''+ EdPsqCodVen.Text +'''';
     if Trim( EdPsqCodGCl.Text ) <> '' then sFiltro := sFiltro + ' and FinCli.CodGCl = '''+ EdPsqCodGCl.Text +'''';
     if Trim( EdPsqCodCCl.Text ) <> '' then sFiltro := sFiltro + ' and FinCli.CodCCl = '''+ EdPsqCodCCl.Text +'''';
     if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '''+ EdPsqCodGve.Text +'''';

     if GFlgAce = 'Sim' then sFiltro := sFiltro + ' and PedLib.PedTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim');

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into LojR01(SeqArq,CodCli,NomCli,TotPed,BasCom,CodVen)'+
                  ' Select '''+ SeqArq +''','+
                  '        PedLib.CodCli,'+
                  '        FinCli.NomCli,'+
                  '        Round(Sum(PedLib.TotLib - (PedLib.TotDsr - PedLib.TotIpc)),2) as TotLib,'+
                  '        Round(Sum(PedLib.TotCst),4) as TotCst,'+
                  '        Count(*) as QtdPed'+
                  ' From PedLib,FinCli,FinVen'+
                  ' Where PedLib.CodCli = FinCli.CodCli'+
                  '   and PedLib.CodVen = FinVen.CodVen'+ sFiltro +
                  ' Group by PedLib.CodCli,FinCli.NomCli';
          ExecSQL;

     end;
  end;

  if (rgTipo.ItemIndex = 0) or (rgTipo.ItemIndex = 2) then begin

     sFiltro := ' and LojPed.SitPed = '+ QuotedStr('Recebida') +' and LojPed.FlgVal = '+QuotedStr('Nao');

     if Trim( EdPsqModPfa.Text ) <> '' then sFiltro := sFiltro + ' and LojPed.ModPfa = '''+ EdPsqModPfa.Text +'''';

     if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then sFiltro := sFiltro + ' and LojPed.DteMov >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';
     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then sFiltro := sFiltro + ' and LojPed.DteMov <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';

     if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and LojPed.CodEmp = '''+ EdPsqCodEmp.Text +'''';
     if Trim( EdPsqCodCli.Text ) <> '' then sFiltro := sFiltro + ' and LojPed.CodCli = '''+ EdPsqCodCli.Text +'''';
     if Trim( EdPsqCodVen.Text ) <> '' then sFiltro := sFiltro + ' and LojPed.CodVen = '''+ EdPsqCodVen.Text +'''';
     if Trim( EdPsqCodGCl.Text ) <> '' then sFiltro := sFiltro + ' and FinCli.CodGCl = '''+ EdPsqCodGCl.Text +'''';
     if Trim( EdPsqCodCCl.Text ) <> '' then sFiltro := sFiltro + ' and FinCli.CodCCl = '''+ EdPsqCodCCl.Text +'''';
     if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '''+ EdPsqCodGve.Text +'''';

     with quSQL,SQL do begin

          Close;
          Text := ' Insert Into LojR01(SeqArq,CodCli,NomCli,TotPed,BasCom,CodVen)'+
                  ' Select '''+ SeqArq +''','+
                  '        LojPed.CodCli,'+
                  '        FinCli.NomCli,'+
                  '        Round(Sum(LojPed.TotPed),2) as TotLib,'+
                  '        Round(Sum(LojPed.TotCst),4) as TotCst,'+
                  '        Count(*) as QtdPed'+
                  ' From LojPed,FinCli,FinVen'+
                  ' Where LojPed.CodCli = FinCli.CodCli'+
                  '   and LojPed.CodVen = FinVen.CodVen'+ sFiltro +
                  ' Group by LojPed.CodCli,FinCli.NomCli';
          ExecSQL;

     end;  
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Insert Into PedR05(SeqArq,CodCli,NomCli,TotPed,TotCst,QtdPed)'+
               ' Select LojR01.SeqArq,'+
               '        LojR01.CodCli,'+
               '        LojR01.NomCli,'+
               '        Sum(LojR01.TotPed),'+
               '        Sum(LojR01.BasCom),'+
               '        Sum(LojR01.CodVen)'+
               ' From LojR01'+
               ' Where LojR01.SeqArq = '''+ SeqArq +''''+
               ' Group by LojR01.SeqArq,LojR01.CodCli,LojR01.NomCli';  
       ExecSQL;

  end;

  with PedRes,SQL do begin

       Close;
       Text := ' Select * From PedR05 Where PedR05.SeqArq = '''+ SeqArq +'''';
       Open;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR05 Where PedR05.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From LojR01 Where LojR01.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR05.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR05.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR05.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR05.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo de Vendedores : '+ EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);  
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdPsqCodGCl.Text + ' - ' + EdPsqNomGCl.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdPsqCodCCl.Text + ' - ' + EdPsqNomCCl.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitidos no Periodo de : '+ EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR05.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR05.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Curva ABC de Clientes.htm', grRes.SaveToHTML);
end;

procedure TfmPedR05.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Curva ABC de Clientes.xls', grRes.SaveToXLS);
end;

procedure TfmPedR05.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Curva ABC de Clientes.xml', grRes.SaveToXML);
end;

procedure TfmPedR05.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR05.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

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

procedure TfmPedR05.EdPsqCodEmpExit(Sender: TObject);
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

             EdPsqApeEmp.Text := '';
             
             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmPedR05.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqVen := TfmPsqVen.Create(Self);

     fmPsqVen.ShowModal;

     if fmPsqVen.CodVen > 0 then begin

        EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);
        EdPsqNomVen.Text := fmPsqVen.NomVen;

     end;

  finally

     FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmPedR05.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select ApeVen From FinVen'+
                  ' Where CodVen = '''+ EdPsqCodVen.Text +'''';
          Open;

          EdPsqNomVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmPedR05.bPsqGruClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGCl := TfmPsqGCl.Create(Self);

     fmPsqGCl.ShowModal;

     if fmPsqGCl.CodGCl > 0 then begin

        EdPsqCodGCl.Text := IntToStr(fmPsqGCl.CodGCl);
        EdPsqNomGCl.Text := fmPsqGCl.NomGCl;

     end;

  finally

     FreeAndNil(fmPsqGCl);

  end;
end;

procedure TfmPedR05.EdPsqCodGClExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGCl.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomGCl From FinGCl'+
                  ' Where CodGCl = '''+ EdPsqCodGCl.Text +'''';
          Open;

          EdPsqNomGCl.Text := FieldByName('NomGCl').AsString;

     end;

     end
  else
     EdPsqNomGCl.Text := '';
end;

procedure TfmPedR05.bPsqCClClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCCl := TfmPsqCCl.Create(Self);

     fmPsqCCl.ShowModal;

     if fmPsqCCl.CodCCl > 0 then begin

        EdPsqCodCCl.Text := IntToStr(fmPsqCCl.CodCCl);
        EdPsqNomCCl.Text := fmPsqCCl.NomCCl;

     end;

  finally

     FreeAndNil(fmPsqCCl);

  end;
end;

procedure TfmPedR05.EdPsqCodCClExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCCl.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCCl From FinCCl'+
                  ' Where CodCCl = '''+ EdPsqCodCCl.Text +'''';
          Open;

          EdPsqNomCCl.Text := FieldByName('NomCCl').AsString;

     end;

     end
  else
     EdPsqNomCCl.Text := '';
end;

procedure TfmPedR05.bPsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCli := TfmPsqCli.Create(Self);

     fmPsqCli.ShowModal;

     if fmPsqCli.CodCli > 0 then begin

        EdPsqNomCli.Text := fmPsqCli.NomCli;
        EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);

     end;

  finally

     FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmPedR05.EdPsqCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select NomCli From FinCli Where CodCli = '''+EdPsqCodCli.Text+'''';
          Open;

          EdPsqNomCli.Text := FieldByName('NomCli').AsString;

     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmPedR05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  
  with quSQL,SQL do begin

       Close;
       Text := ' Delete From PedR05 Where PedR05.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Delete From LojR01 Where LojR01.SeqArq = '''+ SeqArq +'''';
       ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmPedR05.EdPsqCodGveExit(Sender: TObject);
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

procedure TfmPedR05.bPsqGveClick(Sender: TObject);
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

procedure TfmPedR05.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR05 := nil;
end;

procedure TfmPedR05.Colunas1Click(Sender: TObject);
begin
  inherited;

  try

     fmManCol := TfmManCol.Create(Self);

     fmManCol.Synchronize(fmPedR05.grRes);

     fmManCol.ShowModal;

  finally

     FreeAndNil(fmManCol);

  end;
end;

end.

