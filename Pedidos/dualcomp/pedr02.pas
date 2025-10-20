unit PedR02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ImgList, dxColorEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR02 = class(TfmPadrao)
    PedPrm: TwwQuery;
    DsPrm: TwwDataSource;
    PaintBox: TPaintBox;
    EdPsqCodPrm: TdxColorEdit;
    bPsqPrm: TSpeedButton;
    EdPsqNomPrm: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grPrm: TdxDBGrid;
    bImprimir: TBitBtn;
    Label26: TLabel;
    PedPrmNOMPRM: TStringField;
    PedPrmDS1PR2: TFloatField;
    PedPrmDS2PR2: TFloatField;
    PedPrmDS3PR2: TFloatField;
    PedPrmDS4PR2: TFloatField;
    PedPrmDS5PR2: TFloatField;
    grPrmNOMPRM: TdxDBGridMaskColumn;
    grPrmDSCPRO: TdxDBGridMaskColumn;
    grPrmDS2PR2: TdxDBGridMaskColumn;
    grPrmDS3PR2: TdxDBGridMaskColumn;
    grPrmDS4PR2: TdxDBGridMaskColumn;
    grPrmDS5PR2: TdxDBGridMaskColumn;
    PedPrmDSCPRO: TStringField;
    PedPrmQT1PR2: TFloatField;
    PedPrmQT2PR2: TFloatField;
    PedPrmQT3PR2: TFloatField;
    PedPrmQT4PR2: TFloatField;
    PedPrmQT5PR2: TFloatField;
    grPrmDS1PR2: TdxDBGridColumn;
    grPrmQT1PR2: TdxDBGridColumn;
    grPrmQT2PR2: TdxDBGridColumn;
    grPrmQT3PR2: TdxDBGridColumn;
    grPrmQT4PR2: TdxDBGridColumn;
    grPrmQT5PR2: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqPrmClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodPrmExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grPrmReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodPrmKeyPress(Sender: TObject; var Key: Char);
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
  fmPedR02: TfmPedR02;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqPrm;

{$R *.DFM}

procedure TfmPedR02.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR02.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select TextoOcor(NOMPRM,'''+ 'PERIODO DE' +''',DATETOSTR(CAST(CAST(DTIPRM AS DATE) AS CHAR(12))),'''+ 'A' +''',DATETOSTR(CAST(CAST(DTFPRM AS DATE) AS CHAR(12))),'''+ '' +''','''+ '' +''') as NomPrm,'+
           '        TextoOcor(CODGRU,'''+ '.' +''',CODSUB,'''+ '.' +''',CODPRO,'''+ '-' +''',DSCPRO) as DscPro,'+
           '        Ds1Pr2,'+
           '        Qt1Pr2,'+
           '        Ds2Pr2,'+
           '        Qt2Pr2,'+
           '        Ds3Pr2,'+
           '        Qt3Pr2,'+
           '        Ds4Pr2,'+
           '        Qt4Pr2,'+
           '        Ds5Pr2,'+
           '        Qt5Pr2'+
           ' From PedPr2,PedPrm,EstPro'+
           ' Where PedPr2.CodPrm = PedPrm.CodPrm'+
           '   and PedPr2.CodClp = EstPro.CodClp'+
           '   and PedPr2.CodGru = EstPro.CodGru'+
           '   and PedPr2.CodSub = EstPro.CodSub'+
           '   and PedPr2.CodPro = EstPro.CodPro';

end;

procedure TfmPedR02.bSelecionarClick(Sender: TObject);
var
sFiltro : string;
begin

  ActiveControl := nil;

  if Trim( EdPsqCodPrm.Text ) <> '' then sFiltro := ' and PedPrm.CodPrm = '''+ EdPsqCodPrm.Text +'''';

  with PedPrm,SQL do begin

       Close;
       Text := sBase + sFiltro + ' Order by PedPr2.CodPrm,PedPr2.CodGru,PedPr2.CodSub';
       Open;

  end;

  grPrm.FullExpand;

  grPrm.SetFocus;

end;

procedure TfmPedR02.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR02.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodPrm.SetFocus;
end;

procedure TfmPedR02.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR02.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Promoção : '+ EdPsqCodPrm.Text + ' - ' + EdPsqNomPrm.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR02.grPrmReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR02.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de Itens em Promoção.htm', grPrm.SaveToHTML);
end;

procedure TfmPedR02.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de Itens em Promoção.xls', grPrm.SaveToXLS);
end;

procedure TfmPedR02.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de Itens em Promoção.xml', grPrm.SaveToXML);
end;

procedure TfmPedR02.EdPsqCodPrmKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR02.bPsqPrmClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqPrm := TfmPsqPrm.Create(Self);

     fmPsqPrm.ShowModal;

     if fmPsqPrm.CodPrm > 0 then begin

        EdPsqNomPrm.Text := fmPsqPrm.NomPrm;
        EdPsqCodPrm.Text := IntToStr(fmPsqPrm.CodPrm);

     end;

  finally

     FreeAndNil(fmPsqPrm);

  end;
end;

procedure TfmPedR02.EdPsqCodPrmExit(Sender: TObject);
begin
  if Trim( EdPsqCodPrm.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomPrm From PedPrm Where CodPrm = '''+ EdPsqCodPrm.Text +'''';
          Open;

          EdPsqNomPrm.Text := FieldByName('NomPrm').AsString;

     end;

     end
  else
     EdPsqNomPrm.Text := '';
end;

procedure TfmPedR02.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmPedR02.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR02 := nil;
end;

end.

