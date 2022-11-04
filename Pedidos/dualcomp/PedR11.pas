unit PedR11;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit,
  dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR11 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label26: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    ImageList1: TImageList;
    grRes: TdxDBGrid;
    bImprimir: TBitBtn;
    PedResCODVEN: TIntegerField;
    PedResTOTPED: TFloatField;
    PedResTOTLIB: TFloatField;
    PedResCREDITO: TFloatField;
    PedResQTDCLI: TIntegerField;
    PedResQTDCMP: TIntegerField;
    PedResQTDPED: TIntegerField;
    grResNOMVEN: TdxDBGridMaskColumn;
    grResTOTPED: TdxDBGridMaskColumn;
    grResQTDPED: TdxDBGridMaskColumn;
    grResTOTLIB: TdxDBGridMaskColumn;
    grResCREDITO: TdxDBGridMaskColumn;
    grResQTDCLI: TdxDBGridMaskColumn;
    grResQTDCMP: TdxDBGridMaskColumn;
    PedResNOMVEN: TStringField;
    grResCODVEN: TdxDBGridColumn;
    Label20: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    EdPsqCodGve: TdxColorEdit;
    EdPsqCodCve: TdxColorEdit;
    bPsqCve: TSpeedButton;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    EdPsqNomCve: TdxColorEdit;
    procedure FormShow(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grResReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure bPsqCveClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
  end;

var
  fmPedR11: TfmPedR11;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
     AuxPsq, ManGDB, ManPri, PsqGve, PsqCve;

{$R *.DFM}

procedure TfmPedR11.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR11.bbPesquisaClick(Sender: TObject);
var
sFiltro1,sFiltro2,sFiltro3 : string;
begin

  ActiveControl := nil;

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

  sFiltro1 := '';
  sFiltro2 := '';
  sFiltro3 := '';

  if Trim( EdPsqCodVen.Text ) <> '' then sFiltro1 := ' Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  
  if Trim( EdPsqCodGve.Text ) <> '' then begin

     if pos('Where',sFiltro1) > 0 then
        sFiltro1 := sFiltro1 + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text)
     else
        sFiltro1 := ' Where FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);

  end;

  if Trim( EdPsqCodCve.Text ) <> '' then begin

     if pos('Where',sFiltro1) > 0 then
        sFiltro1 := sFiltro1 + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text)
     else
        sFiltro1 := ' Where FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
        
  end;
  
  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then begin

     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then

        sFiltro3 := ' Where ( Exists(Select * From FatPed Where CodEmp = PedLib.CodEmp'+
                    '                                       and DteRes = PedLib.DteRes'+
                    '                                       and NumRes = PedLib.NumRes'+
                    '                                       and SeqLib = PedLib.SeqLib'+
                    '                                       and DteFat >= '''+ fDateToSQL(EdPsqDteRes1.Date) +''''+
                    '                                       and DteFat <= '''+ fDateToSQL(EdPsqDteRes2.Date) +''''+
                    '                                       and SitFat = '''+ 'Faturado' +''') or '+
                    '         Exists(Select * From FatOrc Where CodEmp = PedLib.CodEmp'+
                    '                                       and DteRes = PedLib.DteRes'+
                    '                                       and NumRes = PedLib.NumRes'+
                    '                                       and SeqLib = PedLib.SeqLib'+
                    '                                       and DteOrc >= '''+ fDateToSQL(EdPsqDteRes1.Date) +''''+
                    '                                       and DteOrc <= '''+ fDateToSQL(EdPsqDteRes2.Date) +''''+
                    '                                       and SitOrc = '''+ 'Faturado' +'''))'


     else

        sFiltro3 := ' Where ( Exists(Select * From FatPed Where CodEmp = PedLib.CodEmp'+
                    '                                       and DteRes = PedLib.DteRes'+
                    '                                       and NumRes = PedLib.NumRes'+
                    '                                       and SeqLib = PedLib.SeqLib'+
                    '                                       and DteFat >= '''+ fDateToSQL(EdPsqDteRes1.Date) +''''+
                    '                                       and SitFat = '''+ 'Faturado' +''') or '+
                    '         Exists(Select * From FatOrc Where CodEmp = PedLib.CodEmp'+
                    '                                       and DteRes = PedLib.DteRes'+
                    '                                       and NumRes = PedLib.NumRes'+
                    '                                       and SeqLib = PedLib.SeqLib'+
                    '                                       and DteOrc >= '''+ fDateToSQL(EdPsqDteRes1.Date) +''''+
                    '                                       and SitOrc = '''+ 'Faturado' +'''))';

     end
  else
     begin

     if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then begin

        sFiltro3 := ' Where ( Exists(Select * From FatPed Where CodEmp = PedLib.CodEmp'+
                    '                                       and DteRes = PedLib.DteRes'+
                    '                                       and NumRes = PedLib.NumRes'+
                    '                                       and SeqLib = PedLib.SeqLib'+
                    '                                       and DteFat <= '''+ fDateToSQL(EdPsqDteRes2.Date) +''''+
                    '                                       and SitFat = '''+ 'Faturado' +''') or '+
                    '         Exists(Select * From FatOrc Where CodEmp = PedLib.CodEmp'+
                    '                                       and DteRes = PedLib.DteRes'+
                    '                                       and NumRes = PedLib.NumRes'+
                    '                                       and SeqLib = PedLib.SeqLib'+
                    '                                       and DteOrc <= '''+ fDateToSQL(EdPsqDteRes2.Date) +''''+
                    '                                       and SitOrc = '''+ 'Faturado' +'''))';

     end;
  end;

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
     sFiltro2 := ' and PedRes.DteRes >= '''+ fDateToSQL(EdPsqDteRes1.Date) +'''';

  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
     sFiltro2 := sFiltro2 + ' and PedRes.DteRes <= '''+ fDateToSQL(EdPsqDteRes2.Date) +'''';

  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     sFiltro2 := sFiltro2 + ' and PedRes.CodEmp = '''+ EdPsqCodEmp.Text +'''';

     if pos('Where',sFiltro3) > 0 then
        sFiltro3 := sFiltro3 + ' and PedLib.CodEmp = '''+ EdPsqCodEmp.Text +''''
     else
        sFiltro3 := ' Where PedLib.CodEmp = '''+ EdPsqCodEmp.Text +''''
        
  end;
     
  if GFlgAce = 'Sim' then begin
  
     sFiltro2 := sFiltro2 + ' and PedRes.CodTip = 1 and not PedRes.FlgDif = '+QuotedStr('Sim');

     if pos('Where',sFiltro3) > 0 then
        sFiltro3 := sFiltro3 + ' and PedLib.CodTip = 1 and not PedLib.FlgDif = '+QuotedStr('Sim')
     else
        sFiltro3 := ' Where PedLib.CodTip = 1 and not PedRes.FlgDif = '+QuotedStr('Sim');

  end;

  if Trim( sFiltro3 ) <> '' then
     sFiltro3 := sFiltro3 + ' and '
  else
     sFiltro3 := ' Where ';

  with PedRes,SQL do begin

       Close;
       Text := ' Select CodVen,'+
               '        ApeVen as NomVen,'+
               '       (Select Round(Sum(BasCom),2) From PedRes Where CodVen = FinVen.CodVen'+
               '                                                  and PedRes.IntFin = '''+ 'Sim' +''''+ sFiltro2 +
               '                                                  and Exists(Select * From EstPfa Where CodPfa = PedRes.CodPfa'+
               '                                                                                    and TipPfa = PedRes.TipPfa'+
               '                                                                                    and ModPfa = '''+ 'Vendas' +''')) as TotPed,'+
               '       (Select Round(Sum(BasCom),2) From PedLib '+ sFiltro3 +
               '                                                   Exists( Select * From PedRes Where CodEmp = PedLib.CodEmp'+
               '                                                                                  and DteRes = PedLib.DteRes'+
               '                                                                                  and NumRes = PedLib.NumRes'+
               '                                                                                  and CodVen = FinVen.CodVen'+
               '                                                                                  and PedRes.IntFin = '''+ 'Sim' +''''+
               '                                                                                  and Exists(Select * From EstPfa Where CodPfa = PedRes.CodPfa'+
               '                                                                                                                    and TipPfa = PedRes.TipPfa'+
               '                                                                                                                    and ModPfa = '''+ 'Vendas' + '''))) as TotLib,'+
               '       (Select Round(Sum(TotCom),2) From PedLib '+ sFiltro3 +
               '                                                   Exists( Select * From PedRes Where CodEmp = PedLib.CodEmp'+
               '                                                                                  and DteRes = PedLib.DteRes'+
               '                                                                                  and NumRes = PedLib.NumRes'+
               '                                                                                  and CodVen = FinVen.CodVen'+
               '                                                                                  and PedRes.IntFin = '''+ 'Sim' +''''+
               '                                                                                  and Exists(Select * From EstPfa Where CodPfa = PedRes.CodPfa'+
               '                                                                                                                    and TipPfa = PedRes.TipPfa'+
               '                                                                                                                    and ModPfa = '''+ 'Vendas' + '''))) as Credito,'+
               '       (Select Count(*) From FinCli Where CodVen = FinVen.CodVen) as QtdCli,'+
               '       (Select Count(*) From FinCli Where CodVen = FinVen.CodVen'+
               '                                      and Exists( Select * From PedRes Where CodVen = FinCli.CodVen'+
               '                                                                         and CodCli = FinCli.CodCli'+
               '                                                                         and PedRes.IntFin = '''+ 'Sim' +''''+ sFiltro2 +
               '                                                                         and Exists(Select * From EstPfa Where CodPfa = PedRes.CodPfa'+
               '                                                                                                           and TipPfa = PedRes.TipPfa'+
               '                                                                                                           and ModPfa = '''+ 'Vendas' + '''))) as QtdCmp,'+
               '       (Select Count(*) From PedRes Where CodVen = FinVen.CodVen'+
               '                                      and PedRes.IntFin = '''+ 'Sim' +''''+ sFiltro2 +
               '                                      and Exists(Select * From EstPfa Where CodPfa = PedRes.CodPfa'+
               '                                                                        and TipPfa = PedRes.TipPfa'+
               '                                                                        and ModPfa = '''+ 'Vendas' + ''')) as QtdPed'+
               ' From FinVen ' + sFiltro1 + ' Order by CodVen';
       Open;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmPedR11.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select ApeEmp From GerEmp Where CodEmp = '''+EdPsqCodEmp.Text+'''';
          Open;

          EdPsqApeEmp.Text := quSql.FieldByName('ApeEmp').AsString;

     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmPedR11.BbPsqEmpClick(Sender: TObject);
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

procedure TfmPedR11.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

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
end;

procedure TfmPedR11.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomVen From FinVen Where CodVen = '''+EdPsqCodVen.Text+'''';
          Open;

          EdPsqNomVen.Text := quSql.FieldByName('NomVen').AsString;
     end;

     end
  else
     EdPsqNomVen.Text := '';
end;

procedure TfmPedR11.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqVen := TfmPsqVen.Create(Self);

        fmPsqVen.ShowModal;

        if fmPsqVen.CodVen > 0 then begin

           EdPsqNomVen.Text := fmPsqVen.NomVen;
           EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

        end;

     finally

        FreeAndNil(fmPsqVen);

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

procedure TfmPedR11.BbPsqVenClick(Sender: TObject);
begin

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

procedure TfmPedR11.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR11.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmPedR11.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR11.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : '+ EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdPsqCodCve.Text + ' - ' + EdPsqNomCve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : '+ EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitidos Em : '+ EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR11.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR11.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Fechamento de Comissões (Sintetico).htm', grRes.SaveToHTML);
end;

procedure TfmPedR11.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Fechamento de Comissões (Sintetico).xls', grRes.SaveToXLS);
end;

procedure TfmPedR11.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Fechamento de Comissões (Sintetico).xml', grRes.SaveToXML);
end;

procedure TfmPedR11.bPsqGveClick(Sender: TObject);
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

procedure TfmPedR11.bPsqCveClick(Sender: TObject);
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

procedure TfmPedR11.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR11.EdPsqCodGveExit(Sender: TObject);
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

procedure TfmPedR11.EdPsqCodCveExit(Sender: TObject);
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

procedure TfmPedR11.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR11.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR11 := nil;
end;

end.

