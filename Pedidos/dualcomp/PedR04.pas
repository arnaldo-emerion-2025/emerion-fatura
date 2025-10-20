unit PedR04;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR04 = class(TfmPadrao)
    FinVen: TwwQuery;
    DsVen: TwwDataSource;
    PaintBox: TPaintBox;
    bbPesquisa: TBitBtn;
    quSql: TwwQuery;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grVen: TdxDBGrid;
    bImprimir: TBitBtn;
    Label20: TLabel;
    Label1: TLabel;
    EdPsqCodGve: TdxColorEdit;
    EdPsqCodCve: TdxColorEdit;
    bPsqCve: TSpeedButton;
    bPsqGve: TSpeedButton;
    EdPsqNomGve: TdxColorEdit;
    EdPsqNomCve: TdxColorEdit;
    FinVenCODVEN: TIntegerField;
    FinVenNOMVEN: TStringField;
    FinVenAPEVEN: TStringField;
    FinVenCGCCPF: TStringField;
    FinVenENDERECO: TStringField;
    FinVenTELEFONE: TStringField;
    grVenCODVEN: TdxDBGridMaskColumn;
    grVenNOMVEN: TdxDBGridMaskColumn;
    grVenAPEVEN: TdxDBGridMaskColumn;
    grVenCGCCPF: TdxDBGridMaskColumn;
    grVenENDERECO: TdxDBGridMaskColumn;
    grVenTELEFONE: TdxDBGridMaskColumn;
    FinVenCEPVEN: TStringField;
    grVenCEPVEN: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grVenReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure bPsqCveClick(Sender: TObject);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure EdPsqCodGveKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase : string;
  end;

var
  fmPedR04: TfmPedR04;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
     AuxPsq, ManGDB, ManPri, PsqGve, PsqCve;

{$R *.DFM}

procedure TfmPedR04.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR04.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select CodVen,NomVen,ApeVen,CepVen,'+
           '        FormatCgcCpf(CgcVen) as CgcCpf,'+
           '        Endereco(TenVen,EndVen,NumVen,RefVen,BaiVen,CidVen,SigUfe) as Endereco,'+
           '        TextoOcor('''+ '(' +''',PrfVen,'''+ ')' +''','''+ ' ' +''',FonVen,'''+ '' +''','''+ '' +''') as Telefone'+
           ' From FinVen';

end;

procedure TfmPedR04.bbPesquisaClick(Sender: TObject);
var
sFiltro : string;
begin

  ActiveControl := nil;

  sFiltro := '';

  if Trim( EdPsqCodGve.Text ) <> '' then sFiltro := ' Where CodGve = '''+ EdPsqCodGve.Text + '''';

  if Trim( EdPsqCodCve.Text ) <> '' then begin

     if pos('Where',sFiltro) = 0 then
        sFiltro := ' Where CodCve = '''+ EdPsqCodCve.Text + ''''
     else
        sFiltro := sFiltro + ' and CodCve = '''+ EdPsqCodCve.Text + '''';

  end; 

  with FinVen,SQL do begin

       Close;
       Text := sBase + sFiltro + ' Order by CodVen';
       Open;
       
  end;

  grVen.FullExpand;

  grVen.SetFocus;

end;

procedure TfmPedR04.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR04.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodGve.SetFocus;
end;

procedure TfmPedR04.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR04.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : '+ EdPsqCodGve.Text + ' - ' + EdPsqNomGve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : '+ EdPsqCodCve.Text + ' - ' + EdPsqNomCve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR04.grVenReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR04.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação simplificada de vendedores.htm', grVen.SaveToHTML);
end;

procedure TfmPedR04.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação simplificada de vendedores.xls', grVen.SaveToXLS);
end;

procedure TfmPedR04.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação simplificada de vendedores.xml', grVen.SaveToXML);
end;

procedure TfmPedR04.bPsqGveClick(Sender: TObject);
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

procedure TfmPedR04.bPsqCveClick(Sender: TObject);
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

procedure TfmPedR04.EdPsqCodGveExit(Sender: TObject);
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

procedure TfmPedR04.EdPsqCodCveExit(Sender: TObject);
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

procedure TfmPedR04.EdPsqCodGveKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR04.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR04.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR04 := nil;
end;

end.

