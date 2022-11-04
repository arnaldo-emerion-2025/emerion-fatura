unit FatR01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
  dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxColorEdit,
  dxColorDateEdit;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmFatR01 = class(TfmPadrao)
    FatCre: TwwQuery;
    DsCre: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteCr1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteCr2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqCli: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    FatCreCODEMP: TIntegerField;
    FatCreDTERES: TDateTimeField;
    FatCreNUMRES: TIntegerField;
    FatCreNUMNFS: TIntegerField;
    FatCreDTECRE: TDateTimeField;
    FatCreHRECRE: TStringField;
    FatCreOBSCRE: TMemoField;
    FatCreCODUSU: TIntegerField;
    FatCreNOMCLI: TStringField;
    FatCreNOMVEN: TStringField;
    FatCreLOGUSU: TStringField;
    FatCreTOTCRE: TFloatField;
    grCre: TdxDBGrid;
    FatCreMEDCOM: TFloatField;
    FatCreBASCOM: TFloatField;
    FatCreTOTCOM: TFloatField;
    grCreNUMRES: TdxDBGridMaskColumn;
    grCreDTECRE: TdxDBGridDateColumn;
    grCreLOGUSU: TdxDBGridMaskColumn;
    grCreTOTCRE: TdxDBGridMaskColumn;
    grCreNUMNFS: TdxDBGridMaskColumn;
    grCreDTERES: TdxDBGridDateColumn;
    grCreOBSCRE: TdxDBGridMemoColumn;
    grCreNOMCLI: TdxDBGridMaskColumn;
    grCreNOMVEN: TdxDBGridMaskColumn;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    ImageList1: TImageList;
    SaveDialog: TSaveDialog;
    bImprimir: TBitBtn;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    rgStatus: TRadioGroup;
    FatCreSITCRE: TStringField;
    grCreSITCRE: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure grCreReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    sBase: string;
  end;

var
  Linha: integer;
  fmFatR01: TfmFatR01;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqCli, PsqVen,
  ManPri;

{$R *.DFM}

procedure TfmFatR01.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
begin
  with SaveDialog do
  begin

    DefaultExt := ADefaultExt;

    Filter := AFilter;

    FileName := AFileName;

    if Execute then
      AMethod(FileName, True);

  end;
end;

procedure TfmFatR01.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select FatCre.CodEmp,' +
    '        FatCre.DteRes,' +
    '        FatCre.NumRes,' +
    '        FatCre.DteCre,' +
    '        FatCre.HreCre,' +
    '        FatCre.SitCre,' +
    '        TextoOcor(IntStrZeros(FatCre.CodCli,05),''' + '-' + ''',FinCli.ApeCli,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as NomCli,' +
    '        TextoOcor(IntStrZeros(FatCre.CodVen,05),''' + '-' + ''',FinVen.ApeVen,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as NomVen,' +
    '        TextoOcor(IntStrZeros(FatCre.CodUsu,03),''' + '-' + ''',GerUsu.LogUsu,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as LogUsu,' +
    '        FatCre.TotCre,' +
    '        FatCre.MedCom,' +
    '        FatCre.BasCom as BasCom,' +
    '        FatCre.TotCom as TotCom,' +
    '        FatCre.ObsCre,' +
    '        FatCre.NumNfs,' +
    '        FatCre.CodUsu' +
    ' From FatCre LEFT JOIN PedRes ON (FatCre.CodEmp = PedRes.CodEmp)' +
    '                             AND (FatCre.DteRes = PedRes.DteRes)' +
    '                             AND (FatCre.NumRes = PedRes.NumRes)' +
    '             LEFT JOIN FinCli ON (FatCre.CodCli = FinCli.CodCli)' +
    '             LEFT JOIN FinVen ON (FatCre.CodVen = FinVen.CodVen)' +
    '             LEFT JOIN GerUsu ON (FatCre.CodUsu = GerUsu.CodUsu)';

end;

procedure TfmFatR01.bSelecionarClick(Sender: TObject);
var
  sFiltro: string;
begin

  ActiveControl := nil;

  if GFlgAce <> 'Sim' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FLGDEL,SEQIMP from GerPar';
      Open;

      if Trim(FieldbyName('FLGDEL').AsString) = '*' then
      begin

        GFlgAce := 'Sim';

        if FieldbyName('SEQIMP').AsInteger > 0 then
          GEmpLog := FieldbyName('SEQIMP').AsInteger;

      end
      else
      begin

        GEmpLog := 0;
        GFlgAce := 'Nao';

      end;
    end;
  end;

  sFiltro := '';

  case rgStatus.ItemIndex of
    0: sFiltro := ' Where FatCre.SitCre = ''' + 'Diferido' + '''';
    1: sFiltro := ' Where FatCre.SitCre = ''' + 'Indeferido' + '''';
  end;

  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatCre.CodEmp = ''' + EdPsqCodEmp.Text + ''''
    else
      sFiltro := sFiltro + ' and FatCre.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  end;

  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatCre.CodCli = ''' + EdPsqCodCli.Text + ''''
    else
      sFiltro := sFiltro + ' and FatCre.CodCli = ''' + EdPsqCodCli.Text + '''';

  end;

  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatCre.CodVen = ''' + EdPsqCodVen.Text + ''''
    else
      sFiltro := sFiltro + ' and FatCre.CodVen = ''' + EdPsqCodVen.Text + '''';

  end;

  if Trim(fLimpaStr(EdPsqDteCr1.Text)) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatCre.DteCre >= ''' + fDateToSQL(EdPsqDteCr1.Date) + ''''
    else
      sFiltro := sFiltro + ' and FatCre.DteCre >= ''' + fDateToSQL(EdPsqDteCr1.Date) + '''';

  end;

  if Trim(fLimpaStr(EdPsqDteCr2.Text)) <> '' then
  begin

    if pos('Where', sFiltro) = 0 then
      sFiltro := ' Where FatCre.DteCre <= ''' + fDateToSQL(EdPsqDteCr2.Date) + ''''
    else
      sFiltro := sFiltro + ' and FatCre.DteCre <= ''' + fDateToSQL(EdPsqDteCr2.Date) + '''';

  end;

  with FatCre, SQL do
  begin

    Close;
    Text := sBase + sFiltro;
    Open;

  end;

  grCre.FullExpand;

  grCre.SetFocus;

end;

procedure TfmFatR01.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    if GFlgAce <> 'Sim' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select FLGDEL,SEQIMP from GerPar';
        Open;

        if Trim(FieldbyName('FLGDEL').AsString) = '*' then
        begin

          GFlgAce := 'Sim';

          if FieldbyName('SEQIMP').AsInteger > 0 then
            GEmpLog := FieldbyName('SEQIMP').AsInteger;

        end
        else
        begin

          GEmpLog := 0;
          GFlgAce := 'Nao';

        end;
      end;
    end;

    with quSql, SQL do
    begin

      Close;
      Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('ApeEmp').AsString) <> '' then
        EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
      else
      begin

        EdPsqApeEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfmFatR01.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim(EdPsqCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomCli From FinCli Where CodCli = ''' + EdPsqCodCli.Text + '''';
      Open;

      EdPsqNomCli.Text := quSql.FieldByName('NomCli').AsString;
    end;

  end
  else
    EdPsqNomCli.Text := '';
end;

procedure TfmFatR01.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
      EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmFatR01.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim(EdPsqCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomVen From FinVen Where CodVen = ''' + EdPsqCodVen.Text + '''';
      Open;

      EdPsqNomVen.Text := quSql.FieldByName('NomVen').AsString;
    end;

  end
  else
    EdPsqNomVen.Text := '';
end;

procedure TfmFatR01.BbPsqCliClick(Sender: TObject);
begin

  try

    fmPsqCli := TfmPsqCli.Create(Self);

    fmPsqCli.ShowModal;

    if fmPsqCli.CodCli > 0 then
    begin

      EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);
      EdPsqNomCli.Text := fmPsqCli.NomCli;

    end;

  finally

    FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmFatR01.BbPsqVenClick(Sender: TObject);
begin

  try

    fmPsqVen := TfmPsqVen.Create(Self);

    fmPsqVen.ShowModal;

    if fmPsqVen.CodVen > 0 then
    begin

      EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);
      EdPsqNomVen.Text := fmPsqVen.NomVen;

    end;

  finally

    FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmFatR01.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmFatR01.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmFatR01.FormDestroy(Sender: TObject);
begin
  inherited;
  fmFatR01 := nil;
end;

procedure TfmFatR01.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmFatR01.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    Close;
end;

procedure TfmFatR01.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : ' + EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : ' + EdPsqCodCli.Text + ' - ' + EdPsqNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : ' + EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Realizadas no Periodo de : ' + EdPsqDteCr1.Text + ' a ' + EdPsqDteCr2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmFatR01.grCreReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmFatR01.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de Devoluções por Acertos.htm', grCre.SaveToHTML);
end;

procedure TfmFatR01.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de Devoluções por Acertos.xls', grCre.SaveToXLS);
end;

procedure TfmFatR01.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de Devoluções por Acertos.xml', grCre.SaveToXML);
end;

procedure TfmFatR01.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

end.
