unit FatR14;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorEdit,
  dxColorDateEdit;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmFatR14 = class(TfmPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label26: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
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
    ImageList1: TImageList;
    grRes: TdxDBGrid;
    bImprimir: TBitBtn;
    PedResUFERES: TStringField;
    PedResNOMUFE: TStringField;
    PedResTOTFAT: TFloatField;
    PedResTOTICM: TFloatField;
    PedResTOTDEV: TFloatField;
    PedResTOTDIC: TFloatField;
    grResNOMUFE: TdxDBGridMaskColumn;
    grResTOTFAT: TdxDBGridMaskColumn;
    grResTOTICM: TdxDBGridMaskColumn;
    grResTOTDEV: TdxDBGridMaskColumn;
    grResTOTDIC: TdxDBGridMaskColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grResReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq: string;
  end;

var
  fmFatR14: TfmFatR14;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
  AuxPsq, ManGDB, ManPri, PsqGve, PsqCve;

{$R *.DFM}

procedure TfmFatR14.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfmFatR14.FormCreate(Sender: TObject);
begin
  inherited;

  Randomize;
  SeqArq := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4) +
    copy(TimeToStr(Time), 1, 2) +
    copy(TimeToStr(Time), 4, 2) +
    copy(TimeToStr(Time), 7, 2) +
    FNumZeros(Trim(IntToStr(GUsu_Id)), 3) +
    FNumZeros(Trim(IntToStr(Random(50000))), 5);

end;

procedure TfmFatR14.bbPesquisaClick(Sender: TObject);
var
  sFiltro: string;
begin

  ActiveControl := nil;

  ActiveControl := nil;

  sFiltro := ' Where PedRes.ModPfa = ''' + 'Vendas' + ''' and PedRes.IntFin = ''' + 'Sim' + '''';

  sFiltro := sFiltro + ' and PedLib.SitLib <> ''' + 'Nao Concluido' + ''' and PedLib.SitLib <> ''' + 'Concluido' + ''' and PedLib.SitLib <> ''' + 'Faturando' +
    '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR15 Where SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR15' +
      ' Select ''' + SeqArq + ''',' +
      '        PedRes.UfeRes,' +
      '        GerUfe.NomUfe,' +
      '        Round(Sum(PedLib.TotLib - PedLib.TotDsr),2),' +
      '        Round(Sum(FatPed.TotIcm),2),''' + '0' + ''',''' + '0' + '''' +
      ' From FatPed LEFT JOIN PedLib ON (FatPed.CodEmp = PedLib.CodEmp)' +
      '                             AND (FatPed.DteRes = PedLib.DteRes)' +
      '                             AND (FatPed.NumRes = PedLib.NumRes)' +
      '                             AND (FatPed.SeqLib = PedLib.SeqLib)' +
      '             LEFT JOIN PedRes ON (PedLib.CodEmp = PedRes.CodEmp)' +
      '                             AND (PedLib.DteRes = PedRes.DteRes)' +
      '                             AND (PedLib.NumRes = PedRes.NumRes)' +
      '             LEFT JOIN GerUfe ON (PedRes.UfeRes = GerUfe.SigUfe)' + sFiltro + ' Group by PedRes.UfeRes,GerUfe.NomUfe';
    ExecSQL;

  end;

  sFiltro := ' Where PedRes.ModPfa = ''' + 'Vendas' + ''' and PedRes.IntFin = ''' + 'Sim' + '''';

  sFiltro := sFiltro + ' and PedLib.SitLib <> ''' + 'Nao Concluido' + ''' and PedLib.SitLib <> ''' + 'Concluido' + ''' and PedLib.SitLib <> ''' + 'Faturando' +
    '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatOrc.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteFat <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR15' +
      ' Select ''' + SeqArq + ''',' +
      '        PedRes.UfeRes,' +
      '        GerUfe.NomUfe,' +
      '        Round(Sum(PedLib.TotLib - PedLib.TotDsr),2),''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' +
      ' From FatOrc LEFT JOIN PedLib ON (FatOrc.CodEmp = PedLib.CodEmp)' +
      '                             AND (FatOrc.DteRes = PedLib.DteRes)' +
      '                             AND (FatOrc.NumRes = PedLib.NumRes)' +
      '                             AND (FatOrc.SeqLib = PedLib.SeqLib)' +
      '             LEFT JOIN PedRes ON (PedLib.CodEmp = PedRes.CodEmp)' +
      '                             AND (PedLib.DteRes = PedRes.DteRes)' +
      '                             AND (PedLib.NumRes = PedRes.NumRes)' +
      '             LEFT JOIN GerUfe ON (PedRes.UfeRes = GerUfe.SigUfe)' + sFiltro + ' Group by PedRes.UfeRes,GerUfe.NomUfe';
    ExecSQL;

  end;

  sFiltro := ' Where PedRes.ModPfa = ''' + 'Vendas' + ''' and PedRes.IntFin = ''' + 'Sim' + ''' and PedLib.SitLib = ''' + 'Cancelado' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteDel >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteDel <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR15' +
      ' Select ''' + SeqArq + ''',' +
      '        PedRes.UfeRes,' +
      '        GerUfe.NomUfe,''' + '0' + ''',''' + '0' + ''',' +
      '        Round(Sum(PedLib.TotLib - PedLib.TotDsr),2),' +
      '        Round(Sum(FatPed.TotIcm),2)' +
      ' From FatPed LEFT JOIN PedLib ON (FatPed.CodEmp = PedLib.CodEmp)' +
      '                             AND (FatPed.DteRes = PedLib.DteRes)' +
      '                             AND (FatPed.NumRes = PedLib.NumRes)' +
      '                             AND (FatPed.SeqLib = PedLib.SeqLib)' +
      '             LEFT JOIN PedRes ON (PedLib.CodEmp = PedRes.CodEmp)' +
      '                             AND (PedLib.DteRes = PedRes.DteRes)' +
      '                             AND (PedLib.NumRes = PedRes.NumRes)' +
      '             LEFT JOIN GerUfe ON (PedRes.UfeRes = GerUfe.SigUfe)' + sFiltro + ' Group by PedRes.UfeRes,GerUfe.NomUfe';
    ExecSQL;

  end;

  sFiltro := ' Where PedRes.ModPfa = ''' + 'Vendas' + ''' and PedRes.IntFin = ''' + 'Sim' + ''' and PedLib.SitLib = ''' + 'Cancelado' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatOrc.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteDel >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and PedLib.DteDel <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR15' +
      ' Select ''' + SeqArq + ''',' +
      '        PedRes.UfeRes,' +
      '        GerUfe.NomUfe,''' + '0' + ''',''' + '0' + ''',' +
      '        Round(Sum(PedLib.TotLib - PedLib.TotDsr),2),''' + '0' + '''' +
      ' From FatOrc LEFT JOIN PedLib ON (FatOrc.CodEmp = PedLib.CodEmp)' +
      '                             AND (FatOrc.DteRes = PedLib.DteRes)' +
      '                             AND (FatOrc.NumRes = PedLib.NumRes)' +
      '                             AND (FatOrc.SeqLib = PedLib.SeqLib)' +
      '             LEFT JOIN PedRes ON (PedLib.CodEmp = PedRes.CodEmp)' +
      '                             AND (PedLib.DteRes = PedRes.DteRes)' +
      '                             AND (PedLib.NumRes = PedRes.NumRes)' +
      '             LEFT JOIN GerUfe ON (PedRes.UfeRes = GerUfe.SigUfe)' + sFiltro + ' Group by PedRes.UfeRes,GerUfe.NomUfe';
    ExecSQL;

  end;

  sFiltro := ' Where FatDev.SitDev = ''' + 'Devolvido' + ''' and FatDev.FlgDif = ''' + 'Nao' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR15' +
      ' Select ''' + SeqArq + ''',' +
      '        PedRes.UfeRes,' +
      '        GerUfe.NomUfe,''' + '0' + ''',''' + '0' + ''',' +
      '        Round(Sum(FatDev.TotGer),2),' +
      '        Round(Sum(FatDev.TotIcm),2)' +
      ' From FatDev LEFT JOIN PedLib ON (FatDev.CodEmp = PedLib.CodEmp)' +
      '                             AND (FatDev.DteRes = PedLib.DteRes)' +
      '                             AND (FatDev.NumRes = PedLib.NumRes)' +
      '                             AND (FatDev.SeqLib = PedLib.SeqLib)' +
      '             LEFT JOIN PedRes ON (PedLib.CodEmp = PedRes.CodEmp)' +
      '                             AND (PedLib.DteRes = PedRes.DteRes)' +
      '                             AND (PedLib.NumRes = PedRes.NumRes)' +
      '             LEFT JOIN GerUfe ON (PedRes.UfeRes = GerUfe.SigUfe)' + sFiltro + ' Group by PedRes.UfeRes,GerUfe.NomUfe';
    ExecSQL;

  end;

  sFiltro := ' Where FatDep.SitDep = ''' + 'Concluido' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDep.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDep.DteDep >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDep.DteDep <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR15' +
      ' Select ''' + SeqArq + ''',' +
      '        PedRes.UfeRes,' +
      '        GerUfe.NomUfe,''' + '0' + ''',''' + '0' + ''',' +
      '        Round(Sum(FatDep.TotGer),2),''' + '0' + '''' +
      ' From FatDep LEFT JOIN PedLib ON (FatDep.CodEmp = PedLib.CodEmp)' +
      '                             AND (FatDep.DteRes = PedLib.DteRes)' +
      '                             AND (FatDep.NumRes = PedLib.NumRes)' +
      '                             AND (FatDep.SeqLib = PedLib.SeqLib)' +
      '             LEFT JOIN PedRes ON (PedLib.CodEmp = PedRes.CodEmp)' +
      '                             AND (PedLib.DteRes = PedRes.DteRes)' +
      '                             AND (PedLib.NumRes = PedRes.NumRes)' +
      '             LEFT JOIN GerUfe ON (PedRes.UfeRes = GerUfe.SigUfe)' + sFiltro + ' Group by PedRes.UfeRes,GerUfe.NomUfe';
    ExecSQL;

  end;

  with PedRes, SQL do
  begin

    Close;
    Text := ' Select UfeRes,' +
      '        NomUfe,' +
      '        Round(Sum(TotFat),2) as TotFat,' +
      '        Round(Sum(TotIcm),2) as TotIcm,' +
      '        Round(Sum(TotDev),2) as TotDev,' +
      '        Round(Sum(TotDic),2) as TotDic' +
      ' From FatR15 Where SeqArq = ''' + SeqArq + '''' +
      ' Group by UfeRes,NomUfe' +
      ' Order by UfeRes';
    Open;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR15 Where SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  grRes.FullExpand;

  grRes.SetFocus;

end;

procedure TfmFatR14.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmFatR14.BbPsqEmpClick(Sender: TObject);
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

procedure TfmFatR14.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

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

    EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmFatR14.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then
    bImprimir.OnClick(Sender);
end;

procedure TfmFatR14.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmFatR14.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmFatR14.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : ' + EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no Periodo de : ' + EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmFatR14.grResReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmFatR14.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Fechamento de Comissões (Sintetico).htm', grRes.SaveToHTML);
end;

procedure TfmFatR14.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Fechamento de Comissões (Sintetico).xls', grRes.SaveToXLS);
end;

procedure TfmFatR14.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Fechamento de Comissões (Sintetico).xml', grRes.SaveToXML);
end;

procedure TfmFatR14.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmFatR14.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmFatR14.FormDestroy(Sender: TObject);
begin
  inherited;
  fmFatR14 := nil;
end;

end.
