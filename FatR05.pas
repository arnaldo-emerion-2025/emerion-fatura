unit FatR05;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorDateEdit,
  dxColorEdit, dxColorPickEdit;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmFatR05 = class(TfmPadrao)
    FatGer: TwwQuery;
    DsGer: TwwDataSource;
    PaintBox: TPaintBox;
    bbPesquisa: TBitBtn;
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
    ImageList1: TImageList;
    grGer: TdxDBGrid;
    bImprimir: TBitBtn;
    FatGerNRONFS: TIntegerField;
    FatGerAPECLI: TStringField;
    FatGerCODVEN: TIntegerField;
    FatGerTOTGER: TFloatField;
    FatGerTOTICM: TFloatField;
    FatGerTOTIPI: TFloatField;
    grGerNRONFS: TdxDBGridMaskColumn;
    grGerAPECLI: TdxDBGridMaskColumn;
    grGerCODVEN: TdxDBGridMaskColumn;
    grGerTOTGER: TdxDBGridMaskColumn;
    grGerTOTICM: TdxDBGridMaskColumn;
    grGerTOTIPI: TdxDBGridMaskColumn;
    FatGerLOGUSU: TStringField;
    grGerLOGUSU: TdxDBGridColumn;
    grGerOBCGER: TdxDBGridMemoColumn;
    grGerDTEGER: TdxDBGridColumn;
    grGerDTCGER: TdxDBGridColumn;
    Label1: TLabel;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label21: TLabel;
    Label17: TLabel;
    Label9: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label3: TLabel;
    EdPsqUfeGer: TdxColorPickEdit;
    EdPsqCodEmp: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqDteGr1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteGr2: TdxColorDateEdit;
    EdPsqNomPfa: TdxColorEdit;
    BbPsqPfa: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    BbPsqCli: TSpeedButton;
    BbPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    Label4: TLabel;
    EdPsqTipPfa: TdxColorPickEdit;
    Label11: TLabel;
    Label12: TLabel;
    EdPsqDtcGr1: TdxColorDateEdit;
    Label13: TLabel;
    EdPsqDtcGr2: TdxColorDateEdit;
    FatGerDTCGER: TDateTimeField;
    FatGerDTEGER: TDateTimeField;
    FatGerOBCGER: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grGerReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqPfaClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    sDate, sFiltro, sOrdem: string;
  end;

var
  fmFatR05: TfmFatR05;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
  AuxPsq, ManGDB, ManPri;

{$R *.DFM}

procedure TfmFatR05.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfmFatR05.FormCreate(Sender: TObject);
begin
  inherited;

  sDate := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4);

end;

procedure TfmFatR05.bbPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

  sOrdem := ' Order by FatGer.NroNfs';

  sFiltro := ' Where FatGer.SitGer = ''' + 'Cancelado' + ''' and FatGer.FlgImp = ''' + 'Sim' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.CodCli = ''' + EdPsqCodCli.Text + '''';
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.CodVen = ''' + EdPsqCodVen.Text + '''';
  if Trim(EdPsqUfeGer.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.UfeGer = ''' + EdPsqUfeGer.Text + '''';

  if Trim(EdPsqCodPfa.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.TipPfa = ''' + EdPsqTipPfa.Text + '''' +
      ' and FatGer.CodPfa = ''' + EdPsqCodPfa.Text + '''';

  if Trim(fLimpaStr(EdPsqDteGr1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteGer >= ''' + fDateToSQL(EdPsqDteGr1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteGr2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteGer <= ''' + fDateToSQL(EdPsqDteGr2.Date) + '''';

  if Trim(fLimpaStr(EdPsqDtcGr1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DtcGer >= ''' + fDateToSQL(EdPsqDtcGr1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDtcGr2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DtcGer <= ''' + fDateToSQL(EdPsqDtcGr2.Date) + '''';

  with FatGer, SQL do
  begin

    Close;
    Text := ' Select NroNfs,' +
      '        ApeCli,' +
      '        CodVen,' +
      '        TotGe1 as TotGer,' +
      '        TotIc1 as TotIcm,' +
      '        TotIp1 as TotIpi,' +
      '        (textoocor(OB1CAN, OB2CAN, OB3CAN, OB4CAN, Ob5CAN, "",""))as ObcGer,' +
      '        LogUsu,' +
      '        DtcGer,' +
      '        DteGer' +
      ' From FatGer LEFT JOIN FinCli ON (FatGer.CodCli = FinCli.CodCli)' +
      '             LEFT JOIN GerUsu ON (FatGer.UsCGer = GerUsu.CodUsu)' + sFiltro + sOrdem;
    Open;

  end;

  grGer.FullExpand;

  grGer.SetFocus;

end;

procedure TfmFatR05.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then
    bImprimir.OnClick(Sender);
end;

procedure TfmFatR05.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqUfeGer.SetFocus;
end;

procedure TfmFatR05.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmFatR05.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Estado de : ' + EdPsqUfeGer.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo de Nota Emitida : ' + EdPsqTipPfa.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : ' + EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : ' + EdPsqCodCli.Text + ' - ' + EdPsqNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : ' + EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Padrão de Faturamento : ' + EdPsqCodPfa.Text + ' - ' + EdPsqNomPfa.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Emitidas no Periodo de : ' + EdPsqDteGr1.Text + ' a ' + EdPsqDteGr2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Canceladas no Periodo de : ' + EdPsqDtcGr1.Text + ' a ' + EdPsqDtcGr2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmFatR05.grGerReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmFatR05.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'FatR05' + sDate + '.htm', grGer.SaveToHTML);
end;

procedure TfmFatR05.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'FatR05' + sDate + '.xls', grGer.SaveToXLS);
end;

procedure TfmFatR05.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'FATR05' + sDate + '.xml', grGer.SaveToXML);
end;

procedure TfmFatR05.BbPsqEmpClick(Sender: TObject);
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

procedure TfmFatR05.BbPsqCliClick(Sender: TObject);
begin
  inherited;

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

procedure TfmFatR05.BbPsqVenClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqVen := TfmPsqVen.Create(Self);

    fmPsqVen.ShowModal;

    if fmPsqVen.CodVen > 0 then
    begin

      EdPsqNomVen.Text := fmPsqVen.NomVen;
      EdPsqCodVen.Text := IntToStr(fmPsqVen.CodVen);

    end;

  finally

    FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmFatR05.BbPsqPfaClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqPfa := TfmPsqPfa.Create(Self);

    with fmPsqPfa.EstPfa, SQL do
    begin

      Close;
      Text := ' Select EstPfa.CodPfa,' +
        '        EstPfa.TipPfa,' +
        '        EstPfa.DscPfa,' +
        '        EstPfa.DsrPfa,' +
        '        EstPfa.CodCf1,' +
        '        EstPfa.CodCf2,' +
        '        EstPfa.IntFin,' +
        '        EstPfa.AtuEst,' +
        '        EstPfa.ConSum,' +
        '        EstPfa.ModPfa' +
        ' From EstPfa' +
        ' Order by EstPfa.DscPfa';
      Open;

    end;

    fmPsqPfa.ShowModal;

    if Trim(fmPsqPfa.CodPfa) <> '' then
    begin

      EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
      EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

    end;

  finally

    FreeAndNil(fmPsqPfa);

  end;
end;

procedure TfmFatR05.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmFatR05.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
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

procedure TfmFatR05.EdPsqCodCliExit(Sender: TObject);
begin
  inherited;
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

procedure TfmFatR05.EdPsqCodVenExit(Sender: TObject);
begin
  inherited;
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

procedure TfmFatR05.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodPfa.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select DscPfa From EstPfa' +
        ' Where TipPfa = ''' + EdPsqTipPfa.Text + '''' +
        '   and CodPfa = ''' + EdPsqCodPfa.Text + '''';
      Open;

      EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;

    end;

  end
  else
    EdPsqNomPfa.Text := '';
end;

procedure TfmFatR05.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmFatR05.FormDestroy(Sender: TObject);
begin
  inherited;
  fmFatR05 := nil;
end;

end.
