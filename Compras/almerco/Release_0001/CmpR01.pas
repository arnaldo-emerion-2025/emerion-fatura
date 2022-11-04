unit CmpR01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmCmpR01 = class(TfmPadrao)
    CmpPfo: TwwQuery;
    DsPfo: TwwDataSource;
    PaintBox: TPaintBox;
    Label26: TLabel;
    EdPsqCodFor: TdxColorEdit;
    bPsqFor: TSpeedButton;
    EdPsqNomFor: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grPfo: TdxDBGrid;
    bImprimir: TBitBtn;
    CmpPfoCODFOR: TIntegerField;
    CmpPfoCODPFO: TStringField;
    CmpPfoVALPFO: TFloatField;
    CmpPfoDSCPRO: TStringField;
    CmpPfoCODITE: TStringField;
    CmpPfoNOMFOR: TStringField;
    grPfoCODPFO: TdxDBGridMaskColumn;
    grPfoVALPFO: TdxDBGridMaskColumn;
    grPfoDSCPRO: TdxDBGridMaskColumn;
    grPfoCODITE: TdxDBGridMaskColumn;
    grPfoNOMFOR: TdxDBGridMaskColumn;
    CmpPfoVALFIN: TFloatField;
    grPfoVALFIN: TdxDBGridColumn;
    CmpPfoIDEPRO: TStringField;
    grPfoIDEPRO: TdxDBGridColumn;
    CmpPfoVARPFO: TFloatField;
    grPfoVARPFO: TdxDBGridColumn;
    CmpPfoJURPFO: TFloatField;
    CmpPfoACRPFO: TFloatField;
    CmpPfoMARKUP: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grPfoReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodForKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase,sFiltro : string;
  end;

var
  fmCmpR01: TfmCmpR01;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
     AuxPsq, ManPri, PsqRep, AuxIni;

{$R *.DFM}

procedure TfmCmpR01.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmCmpR01.FormCreate(Sender: TObject);
begin
  inherited;

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

  sBase := ' Select CmpPfo.*,'+
           '        EstPro.DscPro,'+
           '        EstPro.IdePro,'+           
           '        CmpPfo.CodClp || _UNICODE_FSS '+ QuotedStr('-') +' || CmpPfo.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || CmpPfo.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || CmpPfo.CodPro as CodIte,'+
           '        TextoOcor(IntStrZeros(CmpPfo.CodFor,7),'+ QuotedStr('-') +',FinFor.NomFor,'+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +','+ QuotedStr('') +') as NomFor'+
           ' From CmpPfo LEFT JOIN FinFor ON (CmpPfo.CodFor = FinFor.CodFor)'+
           '             LEFT JOIN EstPro ON (CmpPfo.CodClp = EstPro.CodClp '+
           '                             AND  CmpPfo.CodGru = EstPro.CodGru '+
           '                             AND  CmpPfo.CodSub = EstPro.CodSub '+
           '                             AND  CmpPfo.CodPro = EstPro.CodPro)';

end;

procedure TfmCmpR01.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  sFiltro := '';

  if Trim( EdPsqCodFor.Text ) <> '' then sFiltro := sFiltro + ' Where CmpPfo.CodFor = '+ QuotedStr(EdPsqCodFor.Text);

  with CmpPfo,SQL do begin

       Close;
       Text := sBase + sFiltro;
       Open;

  end;

  grPfo.FullExpand;

  CmpPfo.First;

  grPfo.SetFocus;

end;

procedure TfmCmpR01.EdPsqCodForExit(Sender: TObject);
begin
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(EdPsqCodFor.Text);
          Open;

          EdPsqNomFor.Text := FieldByName('NomFor').AsString;

     end;

     end
  else
     EdPsqNomFor.Text := '';     
end;

procedure TfmCmpR01.bPsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdPsqNomFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmCmpR01.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmCmpR01.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodFor.SetFocus;
end;

procedure TfmCmpR01.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmCmpR01.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  if Trim( EdPsqCodFor.Text ) <> '' then begin

     dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
     dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Fornecedor : '+ EdPsqCodFor.Text + ' - ' + EdPsqNomFor.Text);
     dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  end;
  
  dxComponentPrinterLink1.Preview;

end;

procedure TfmCmpR01.grPfoReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmCmpR01.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de preços de fornecedores.htm', grPfo.SaveToHTML);
end;

procedure TfmCmpR01.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de preços de fornecedores.xls', grPfo.SaveToXLS);
end;

procedure TfmCmpR01.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de preços de fornecedores.xml', grPfo.SaveToXML);
end;

procedure TfmCmpR01.EdPsqCodForKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmCmpR01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmCmpR01.FormDestroy(Sender: TObject);
begin
  inherited;
  fmCmpR01 := nil;
end;

end.

