unit PedR32;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorPickEdit,
  dxColorEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmPedR32 = class(TfmPadrao)
    PedMv2: TwwQuery;
    DsMv2: TwwDataSource;
    PaintBox: TPaintBox;
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
    grMv2: TdxDBGrid;
    bImprimir: TBitBtn;
    Label1: TLabel;
    Label4: TLabel;
    EdPsqAnoMve: TdxColorEdit;
    EdPsqMesMve: TdxColorPickEdit;
    MESANO: TdxDBGridColumn;
    VENDEDOR: TdxDBGridColumn;
    TOTMV2: TdxDBGridColumn;
    PedMv2MESANO: TStringField;
    PedMv2TOTMV2: TFloatField;
    PedMv2VENDEDOR: TStringField;
    Label47: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodGve: TdxColorEdit;
    EdPsqCodCve: TdxColorEdit;
    bPsqCve: TSpeedButton;
    bPsqGve: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqApeVen: TdxColorEdit;
    EdPsqNomGve: TdxColorEdit;
    EdPsqNomCve: TdxColorEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grMv2ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqAnoMveKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bPsqClpClick(Sender: TObject);
    procedure EdPsqCodCveExit(Sender: TObject);
    procedure bPsqCveClick(Sender: TObject);
    procedure bPsqGveClick(Sender: TObject);
    procedure EdPsqCodCveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodGveExit(Sender: TObject);
    procedure EdPsqCodGveKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase : string;
  end;

var
  fmPedR32: TfmPedR32;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, PsqCve, PsqGve,
     AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmPedR32.Save(ADefaultExt, AFilter, AFileName: String; AMethod: TSaveMethod);
begin
  with SaveDialog do begin

       DefaultExt := ADefaultExt;

       Filter := AFilter;

       FileName := AFileName;

       if Execute then AMethod(FileName, True);

  end;
end;

procedure TfmPedR32.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select TextoOcor(IntStrZeros(PedMve.NroMes,2),'''+ '-' +''',PedMve.MesMve,'''+ '/' +''',PedMve.AnoMve,'''+ '' +''','''+ '' +''') as MesAno,'+
           '        TextoOcor(IntStrZeros(FinVen.CodVen,5),'''+ '-' +''',FinVen.ApeVen,'''+ '' +''','''+ '' +''','''+ '' +''','''+ '' +''') as Vendedor,'+
           '        PedMv2.TotMv2'+
           ' From PedMv2,PedMve,FinVen'+
           ' Where PedMv2.Id_PedMve = PedMve.Id_PedMve and PedMv2.CodVen = FinVen.CodVen';

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmPedR32.bSelecionarClick(Sender: TObject);
var
sFiltro : string;
begin

  ActiveControl := nil;

  if Trim(EdPsqCodCve.Text) <> '' then sFiltro := sFiltro + ' and FinVen.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
  if Trim(EdPsqCodGve.Text) <> '' then sFiltro := sFiltro + ' and FinVen.CodGve = '+ QuotedStr(EdPsqCodGve.Text);
  if Trim(EdPsqCodVen.Text) <> '' then sFiltro := sFiltro + ' and PedMv2.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
  if Trim(EdPsqMesMve.Text) <> '' then sFiltro := sFiltro + ' and PedMve.MesMve = '+ QuotedStr(EdPsqMesMve.Text);
  if Trim(EdPsqAnoMve.Text) <> '' then sFiltro := sFiltro + ' and PedMve.AnoMve = '+ QuotedStr(EdPsqAnoMve.Text);

  with PedMv2,SQL do begin

       Close;
       Text := sBase + sFiltro;
       Open;

  end;

  grMv2.FullExpand;

  grMv2.SetFocus;

end;

procedure TfmPedR32.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then bImprimir.OnClick(Sender);
end;

procedure TfmPedR32.FormShow(Sender: TObject);
begin
  inherited;

  if GCodVen_Id > 0 then begin

     EdPsqApeVen.Text := GNomVen_Id;
     EdPsqCodVen.Text := IntToStr( GCodVen_Id );

     if (GGus_Id <> 1) and (GFlgGer <> 'Sim') then begin

        bPsqVen.Enabled := False;

        EdPsqCodVen.Enabled := False;

        EdPsqCodVen.Font.Style := [fsBold];

     end;
  end;

  EdPsqAnoMve.Text := fNumZeros(copy(FormatDateTime('dd/mm/yyyy',Date),7,4),4);

  EdPsqCodCve.SetFocus;
  
end;

procedure TfmPedR32.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPedR32.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria de Vendedores : '+ EdPsqCodCve.Text + ' - ' + EdPsqNomCve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Mês : '+ EdPsqMesMve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Ano : '+ EdPsqAnoMve.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.Preview;

end;

procedure TfmPedR32.grMv2ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmPedR32.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de Metas Definidas para Vendedores.htm', grMv2.SaveToHTML);
end;

procedure TfmPedR32.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de Metas Definidas para Vendedores.xls', grMv2.SaveToXLS);
end;

procedure TfmPedR32.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de Metas Definidas para Vendedores.xml', grMv2.SaveToXML);
end;

procedure TfmPedR32.EdPsqAnoMveKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPedR32.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := caFree;
end;

procedure TfmPedR32.FormDestroy(Sender: TObject);
begin
  inherited;
  fmPedR32 := nil;
end;

procedure TfmPedR32.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCve := TfmPsqCve.Create(Self);

     fmPsqCve.ShowModal;

     if fmPsqCve.CodCve > 0 then begin

        EdPsqNomCve.Text := fmPsqCve.NomCve;
        EdPsqCodCve.Text := IntToStr(fmPsqCve.CodCve);

     end;

  finally

     FreeAndNil(fmPsqCve);

  end;

  EdPsqCodCve.SetFocus;

end;

procedure TfmPedR32.EdPsqCodCveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodCve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomCve From FinCve Where FinCve.CodCve = '+ QuotedStr(EdPsqCodCve.Text);
          Open;

          EdPsqNomCve.Text := FieldByName('NomCve').AsString;

     end;

     end
  else
     EdPsqNomCve.Text := '';
end;

procedure TfmPedR32.bPsqCveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqCve := TfmPsqCve.Create(Self);
     fmPsqCve.ShowModal;

     if fmPsqCve.CodCve > 0 then begin

        EdPsqNomCve.Text := fmPsqCve.NomCve;
        EdPsqCodCve.Text := IntToStr(fmPsqCve.CodCve);

     end;

  finally

     FreeAndNil(fmPsqCve);

  end;
end;

procedure TfmPedR32.bPsqGveClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqGve := TfmPsqGve.Create(Self);
     fmPsqGve.ShowModal;

     if fmPsqGve.CodGve > 0 then begin

        EdPsqNomGve.Text := fmPsqGve.NomGve;
        EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);

     end;

  finally

     FreeAndNil(fmPsqGve);

  end;
end;

procedure TfmPedR32.EdPsqCodCveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqCve := TfmPsqCve.Create(Self);
        fmPsqCve.ShowModal;

        if fmPsqCve.CodCve > 0 then begin

           EdPsqNomCve.Text := fmPsqCve.NomCve;
           EdPsqCodCve.Text := IntToStr(fmPsqCve.CodCve);

        end;

     finally

        FreeAndNil(fmPsqCve);

     end;
  end;
end;

procedure TfmPedR32.EdPsqCodGveExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodGve.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinGve.NomGve From FinGve Where FinGve.CodGve = '''+ EdPsqCodGve.Text +'''';
          Open;

          EdPsqNomGve.Text := FieldByName('NomGve').AsString;

     end;

     end
  else
     EdPsqNomGve.Text := '';
end;

procedure TfmPedR32.EdPsqCodGveKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqGve := TfmPsqGve.Create(Self);
        fmPsqGve.ShowModal;

        if fmPsqGve.CodGve > 0 then begin

           EdPsqNomGve.Text := fmPsqGve.NomGve;
           EdPsqCodGve.Text := IntToStr(fmPsqGve.CodGve);

        end;

     finally

        FreeAndNil(fmPsqGve);

     end;
  end;
end;

procedure TfmPedR32.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '''+ EdPsqCodVen.Text +'''';
          Open;

          EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqApeVen.Text := '';
end;

procedure TfmPedR32.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxIni.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     EdPsqCodVen.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdPsqCodVen.SetFocus;

  end;
end;

end.

