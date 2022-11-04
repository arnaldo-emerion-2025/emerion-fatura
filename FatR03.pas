unit FatR03;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorPickEdit,
  dxColorEdit, dxColorDateEdit, clipbrd;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmFatR03 = class(TfmPadrao)
    FatPed: TwwQuery;
    DsFat: TwwDataSource;
    Label28: TLabel;
    EdPsqDteFt1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteFt2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqCli: TSpeedButton;
    bPsqVen: TSpeedButton;
    EdPsqNomVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bbPesquisa: TBitBtn;
    Label1: TLabel;
    EdPsqUfeRes: TdxColorPickEdit;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label11: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    ImageList1: TImageList;
    grFat: TdxDBGrid;
    bImprimir: TBitBtn;
    Label3: TLabel;
    FatPedNRONFS: TIntegerField;
    FatPedAPECLI: TStringField;
    FatPedNUMRES: TIntegerField;
    FatPedCODVEN: TIntegerField;
    FatPedTOTGER: TFloatField;
    FatPedTOTICM: TFloatField;
    FatPedTOTIPI: TFloatField;
    grFatNRONFS: TdxDBGridMaskColumn;
    grFatAPECLI: TdxDBGridMaskColumn;
    grFatNUMRES: TdxDBGridMaskColumn;
    grFatCODVEN: TdxDBGridMaskColumn;
    grFatTOTGER: TdxDBGridMaskColumn;
    grFatTOTICM: TdxDBGridMaskColumn;
    grFatTOTIPI: TdxDBGridMaskColumn;
    FatPedLOGUSU: TStringField;
    grFatLOGUSU: TdxDBGridColumn;
    grFatOBSCFT: TdxDBGridMemoColumn;
    FatPedDTCFAT: TDateTimeField;
    FatPedDTEFAT: TDateTimeField;
    grFatDTEFAT: TdxDBGridColumn;
    grFatDTCFAT: TdxDBGridColumn;
    Label4: TLabel;
    Label12: TLabel;
    EdPsqDtcFt1: TdxColorDateEdit;
    Label13: TLabel;
    EdPsqDtcFt2: TdxColorDateEdit;
    Label9: TLabel;
    Label14: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    rgTipo: TRadioGroup;
    FatPedTOTLIB: TFloatField;
    grFatTOTLIB: TdxDBGridColumn;
    FatPedOBSCFT: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure bPsqVenClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure grFatReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
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
  fmFatR03: TfmFatR03;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
  AuxPsq, ManGDB, ManPri;

{$R *.DFM}

procedure TfmFatR03.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfmFatR03.FormCreate(Sender: TObject);
begin
  inherited;

  sDate := copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) +
    copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4);

end;

procedure TfmFatR03.bbPesquisaClick(Sender: TObject);
var
  imptip: string;
begin

  if fmmanpri.nfe then
    imptip := 'ENVNFE'
  else
    imptip := 'FLGIMP';

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

  sOrdem := ' Order by FatPed.NroNfs';

  sFiltro := ' and FatPed.SitFat = ' + QuotedStr('Cancelado');
  // +_BR+ ''' and FatPed.' + imptip + ' = ''' + 'Sim' + ''''+_BR;

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodEmp = ''' + EdPsqCodEmp.Text + ''''+_BR;
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodCli = ''' + EdPsqCodCli.Text + ''''+_BR;
  if Trim(EdPsqCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodVen = ''' + EdPsqCodVen.Text + ''''+_BR;
  if Trim(EdPsqUfeRes.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.UfeFat = ''' + EdPsqUfeRes.Text + ''''+_BR;
  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.ModPfa = ''' + EdPsqModPfa.Text + ''''+_BR;

  if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat >= ''' + fDateToSQL(EdPsqDteFt1.Date) + ''''+_BR;
  if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat <= ''' + fDateToSQL(EdPsqDteFt2.Date) + ''''+_BR;
  if Trim(fLimpaStr(EdPsqDtcFt1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DtcFat >= ''' + fDateToSQL(EdPsqDtcFt1.Date) + ''''+_BR;
  if Trim(fLimpaStr(EdPsqDtcFt2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DtcFat <= ''' + fDateToSQL(EdPsqDtcFt2.Date) + ''''+_BR;

  case rgTipo.Itemindex of
    0: sFiltro := sFiltro + ' and FatPed.IntFin = ''' + 'Sim' + ''''+_BR;
    1: sFiltro := sFiltro + ' and FatPed.IntFin = ''' + 'Nao' + ''''+_BR;
  end;

  with FatPed, SQL do
  begin

    Close;
    Text := ' Select FatPed.NroNfs,' + _BR+
      ' FinCli.ApeCli,' +_BR+
      ' FatPed.NumRes,' +_BR+
      ' FatPed.CodVen,' +_BR+
      ' FatPed.TotLib,' +_BR+
      ' FatPed.TotGer,' +_BR+
      ' FatPed.TotIcm,' +_BR+
      ' FatPed.TotIpi,' +_BR+
      ' (textoocor(FATPED.OB1CAN,FATPED.OB2CAN,FATPED.OB3CAN,FATPED.OB4CAN,FATPED.Ob5CAN, "",""))as ObsCft,' +_BR+
      ' GerUsu.LogUsu,' +_BR+
      ' FatPed.DtcFat,' +_BR+
      ' FatPed.DteFat' +_BR+
      ' From FatPed,FinCli,GerUsu' +_BR+
      ' Where FatPed.CodCli = FinCli.CodCli' +_BR+
      '   and FatPed.UsuCft = GerUsu.CodUsu' +_BR+ sFiltro + sOrdem;

    if debughook > 0 then
    Clipboard.astext := text;

    Open;

  end;

  grFat.FullExpand;

  grFat.SetFocus;

end;

procedure TfmFatR03.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmFatR03.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmFatR03.bPsqEmpClick(Sender: TObject);
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

procedure TfmFatR03.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmFatR03.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqCli := TfmPsqCli.Create(Self);

      fmPsqCli.ShowModal;

      if fmPsqCli.CodCli > 0 then
      begin

        EdPsqNomCli.Text := fmPsqCli.NomCli;
        EdPsqCodCli.Text := IntToStr(fmPsqCli.CodCli);

      end;

    finally

      FreeAndNil(fmPsqCli);

    end;
  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'C';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodCli > 0 then
      begin

        EdPsqNomCli.Text := fmAuxPsq.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmFatR03.EdPsqCodVenExit(Sender: TObject);
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

procedure TfmFatR03.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

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

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'V';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodVen > 0 then
      begin

        EdPsqNomVen.Text := fmAuxPsq.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmFatR03.bPsqCliClick(Sender: TObject);
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

procedure TfmFatR03.bPsqVenClick(Sender: TObject);
begin

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

procedure TfmFatR03.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then
    bImprimir.OnClick(Sender);
end;

procedure TfmFatR03.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqUfeRes.SetFocus;
end;

procedure TfmFatR03.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmFatR03.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GApeEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRazEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GEndEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(GRefEmp);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Estado de : ' + EdPsqUfeRes.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : ' + EdPsqCodEmp.Text + ' - ' + EdPsqApeEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : ' + EdPsqCodCli.Text + ' - ' + EdPsqNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : ' + EdPsqCodVen.Text + ' - ' + EdPsqNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no Periodo de : ' + EdPsqDteFt1.Text + ' a ' + EdPsqDteFt2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmFatR03.grFatReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmFatR03.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'FatR01' + sDate + '.htm', grFat.SaveToHTML);
end;

procedure TfmFatR03.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'FatR01' + sDate + '.xls', grFat.SaveToXLS);
end;

procedure TfmFatR03.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'FATR01' + sDate + '.xml', grFat.SaveToXML);
end;

procedure TfmFatR03.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmFatR03.FormDestroy(Sender: TObject);
begin
  inherited;
  fmFatR03 := nil;
end;

end.
