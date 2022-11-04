unit CmpR18;

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

  TfmCmpR18 = class(TfmPadrao)
    CmpR05: TwwQuery;
    DsR05: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    bPesquisa: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    quSql: TwwQuery;
    Label9: TLabel;
    SaveDialog: TSaveDialog;
    dxComponentPrinter: TdxComponentPrinter;
    dxComponentPrinterLink1: TdxDBGridReportLink;
    PopUpMenu: TPopupMenu;
    Exportarpara1: TMenuItem;
    HTML: TMenuItem;
    Excel: TMenuItem;
    XML: TMenuItem;
    grR05: TdxDBGrid;
    bImprimir: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    EdCodPro: TdxColorEdit;
    EdCodSub: TdxColorEdit;
    EdCodGru: TdxColorEdit;
    EdCodClp: TdxColorEdit;
    EdCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdNomEmp: TdxColorEdit;
    EdNomClp: TdxColorEdit;
    BbPsqClp: TSpeedButton;
    BbPsqGru: TSpeedButton;
    BbPsqSub: TSpeedButton;
    BbPsqPro: TSpeedButton;
    EdNomPro: TdxColorEdit;
    EdNomSub: TdxColorEdit;
    EdNomGru: TdxColorEdit;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EdCodCli: TdxColorEdit;
    EdCodVen: TdxColorEdit;
    BbPsqVen: TSpeedButton;
    BbPsqCli: TSpeedButton;
    EdNomCli: TdxColorEdit;
    EdNomVen: TdxColorEdit;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    EdCodMrc: TdxColorEdit;
    EdCodTip: TdxColorEdit;
    EdCodCat: TdxColorEdit;
    bPsqCat: TSpeedButton;
    bPsqTip: TSpeedButton;
    bPsqMrc: TSpeedButton;
    EdNomMrc: TdxColorEdit;
    EdNomTip: TdxColorEdit;
    EdNomCat: TdxColorEdit;
    Label16: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    CODPRO: TdxDBGridMaskColumn;
    DSCPRO: TdxDBGridMaskColumn;
    CmpR05SEQARQ: TStringField;
    CmpR05CODGRU: TStringField;
    CmpR05CODSUB: TStringField;
    CmpR05CODPRO: TStringField;
    CmpR05DSCPRO: TStringField;
    CmpR05MARCA: TStringField;
    MARCA: TdxDBGridColumn;
    CmpR05CODCLP: TStringField;
    CmpR05QTDDEV: TFloatField;
    CmpR05QTDRMA: TFloatField;
    CmpR05TOTDEV: TFloatField;
    QTDDEV: TdxDBGridColumn;
    QTDRMA: TdxDBGridColumn;
    TOTDEV: TdxDBGridColumn;
    CmpR05CODCLI: TIntegerField;
    CmpR05CLIENTE: TStringField;
    grR05CLIENTE: TdxDBGridColumn;
    CmpR05CODITE: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure grR05ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure BbPsqClpClick(Sender: TObject);
    procedure EdCodClpExit(Sender: TObject);
    procedure BbPsqGruClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure BbPsqSubClick(Sender: TObject);
    procedure EdCodSubExit(Sender: TObject);
    procedure BbPsqProClick(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure EdCodVenExit(Sender: TObject);
    procedure bPsqCatClick(Sender: TObject);
    procedure EdCodCatExit(Sender: TObject);
    procedure bPsqTipClick(Sender: TObject);
    procedure EdCodTipExit(Sender: TObject);
    procedure bPsqMrcClick(Sender: TObject);
    procedure EdCodMrcExit(Sender: TObject);
    procedure EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    SeqArq, sFiltro: string;
  end;

var
  fmCmpR18: TfmCmpR18;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqGru, PsqSub,
  PsqPro, PsqClp, PsqCli, PsqVen, AuxIni, AuxPsq, PsqRes, PsqCmp;

{$R *.DFM}

procedure TfmCmpR18.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfmCmpR18.FormCreate(Sender: TObject);
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

  SaveDialog.InitialDir := ExtractFilePath(Application.ExeName);

end;

procedure TfmCmpR18.bPesquisaClick(Sender: TObject);
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

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPsqDteRes1);

  if Trim(fLimpaStr(EdPsqDteRes2.Text)) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPsqDteRes2)
  else
  begin

    if EdPsqDteRes2.Date < EdPsqDteRes1.Date then
      fmsgErro('Periodo Final Inferior ao Periodo Inicial.', EdPsqDteRes2);

  end;

  sFiltro := ' and FatDev.SitDev = ''' + 'Devolvido' + ''' and FatDev.AtuEst = ''' + 'Sim' + ''' and FatDev.FlgDif = ''' + 'Nao' + '''';

  if Trim(EdCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodVen = ''' + EdCodVen.Text + '''';
  if Trim(EdCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodCli = ''' + EdCodCli.Text + '''';
  if Trim(EdCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDv2.CodEmp = ''' + EdCodEmp.Text + '''';
  if Trim(EdCodClp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDv2.CodClp = ''' + EdCodClp.Text + '''';
  if Trim(EdCodGru.Text) <> '' then
    sFiltro := sFiltro + ' and FatDv2.CodGru = ''' + EdCodGru.Text + '''';
  if Trim(EdCodSub.Text) <> '' then
    sFiltro := sFiltro + ' and FatDv2.CodSub = ''' + EdCodSub.Text + '''';
  if Trim(EdCodPro.Text) <> '' then
    sFiltro := sFiltro + ' and FatDv2.CodPro = ''' + EdCodPro.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From CmpR15 Where CmpR15.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From CmpR16 Where CmpR16.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into CmpR15(SeqArq,CodCli,CodClp,CodGru,CodSub,CodPro,QtdDev,QtdRma,TotDev)' +
      ' Select ''' + SeqArq + ''',' +
      '        FatDev.CodCli,' +
      '        FatDv2.CodClp,' +
      '        FatDv2.CodGru,' +
      '        FatDv2.CodSub,' +
      '        FatDv2.CodPro,' +
      '        Round(Sum(FatDv2.UltQtd),4),' +
      '        Round(Sum(FatDv2.QtdRma),4),' +
      '        Round(Sum(FatDv2.TotGe2),2)' +
      ' From FatDv2,FatDev' +
      ' Where FatDv2.CodEmp = FatDev.CodEmp' +
      '   and FatDv2.DteRes = FatDev.DteRes' +
      '   and FatDv2.NumRes = FatDev.NumRes' +
      '   and FatDv2.SeqLib = FatDev.SeqLib' +
      '   and FatDv2.SeqFat = FatDev.SeqFat' +
      '   and FatDv2.SeqDev = FatDev.SeqDev' + sFiltro + ' and FatDv2.UltQtd > 0' +
      ' Group by FatDev.CodCli,FatDv2.CodClp,FatDv2.CodGru,FatDv2.CodSub,FatDv2.CodPro';
    ExecSQL;

  end;

  sFiltro := ' and FatDep.SitDep = ''' + 'Concluido' + ''' and FatDep.AtuEst = ''' + 'Sim' + '''';

  if Trim(EdCodVen.Text) <> '' then
    sFiltro := sFiltro + ' and FatDep.CodVen = ''' + EdCodVen.Text + '''';
  if Trim(EdCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatDep.CodCli = ''' + EdCodCli.Text + '''';
  if Trim(EdCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDe2.CodEmp = ''' + EdCodEmp.Text + '''';
  if Trim(EdCodClp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDe2.CodClp = ''' + EdCodClp.Text + '''';
  if Trim(EdCodGru.Text) <> '' then
    sFiltro := sFiltro + ' and FatDe2.CodGru = ''' + EdCodGru.Text + '''';
  if Trim(EdCodSub.Text) <> '' then
    sFiltro := sFiltro + ' and FatDe2.CodSub = ''' + EdCodSub.Text + '''';
  if Trim(EdCodPro.Text) <> '' then
    sFiltro := sFiltro + ' and FatDe2.CodPro = ''' + EdCodPro.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDep.DteDep >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDep.DteDep <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into CmpR15(SeqArq,CodCli,CodClp,CodGru,CodSub,CodPro,QtdDev,QtdRma,TotDev)' +
      ' Select ''' + SeqArq + ''',' +
      '        FatDep.CodCli,' +
      '        FatDe2.CodClp,' +
      '        FatDe2.CodGru,' +
      '        FatDe2.CodSub,' +
      '        FatDe2.CodPro,' +
      '        Round(Sum(FatDe2.UltQts),4),' +
      '        Round(Sum(FatDe2.QtdRma),4),' +
      '        Round(Sum(FatDe2.TotGe2),2)' +
      ' From FatDe2,FatDep' +
      ' Where FatDe2.CodEmp = FatDep.CodEmp' +
      '   and FatDe2.DteRes = FatDep.DteRes' +
      '   and FatDe2.NumRes = FatDep.NumRes' +
      '   and FatDe2.SeqLib = FatDep.SeqLib' +
      '   and FatDe2.SeqDep = FatDep.SeqDep' + sFiltro + ' and FatDe2.UltQts > 0' +
      ' Group by FatDep.CodCli,FatDe2.CodClp,FatDe2.CodGru,FatDe2.CodSub,FatDe2.CodPro';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into CmpR16(SeqArq,CodCli,CodClp,CodGru,CodSub,CodPro,QtdDev,QtdRma,TotDev)' +
      ' Select CmpR15.SeqArq,' +
      '        CmpR15.CodCli,' +
      '        CmpR15.CodClp,' +
      '        CmpR15.CodGru,' +
      '        CmpR15.CodSub,' +
      '        CmpR15.CodPro,' +
      '        Round(Sum(CmpR15.QtdDev),4),' +
      '        Round(Sum(CmpR15.QtdRma),2),' +
      '        Round(Sum(CmpR15.TotDev),4)' +
      ' From CmpR15 LEFT JOIN EstPro ON (CmpR15.CodClp = EstPro.CodClp)' +
      '                             AND (CmpR15.CodGru = EstPro.CodGru)' +
      '                             AND (CmpR15.CodSub = EstPro.CodSub)' +
      '                             AND (CmpR15.CodPro = EstPro.CodPro)' +
      ' Where CmpR15.SeqArq = ''' + SeqArq + '''';

    if Trim(EdCodCat.Text) <> '' then
      Text := Text + ' and EstPro.CodCat = ''' + EdCodCat.Text + '''';
    if Trim(EdCodTip.Text) <> '' then
      Text := Text + ' and EstPro.CodTip = ''' + EdCodTip.Text + '''';
    if Trim(EdCodMrc.Text) <> '' then
      Text := Text + ' and EstPro.CodMrc = ''' + EdCodMrc.Text + '''';

    Text := Text + ' Group by CmpR15.SeqArq,CmpR15.CodCli,CmpR15.CodClp,CmpR15.CodGru,CmpR15.CodSub,CmpR15.CodPro';

    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From CmpR15 Where CmpR15.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with CmpR05, SQL do
  begin

    Close;
    Text := ' Select CmpR16.*,' +
      '        EstPro.DscPro,' +
      '        TextoOcor(IntStrZeros(EstPro.CodMrc,3),''' + '-' + ''',EstMrc.NomMrc,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as Marca,' +
      '        TextoOcor(IntStrZeros(Cmpr16.CodCli,5),''' + '-' + ''',FinCli.NomCli,''' + '' + ''',''' + '' + ''',''' + '' + ''',''' + '' + ''') as Cliente,' +
      '        CmpR16.CodClp || _UNICODE_FSS ''' + '-' + ''' || CmpR16.CodGru || _UNICODE_FSS ''' + '.' + ''' || CmpR16.CodSub || _UNICODE_FSS ''' + '.' +
        ''' || CmpR16.CodPro as CodIte' +
      ' From CmpR16 LEFT JOIN EstPro ON (CmpR16.CodClp = EstPro.CodClp ' +
      '                             AND  CmpR16.CodGru = EstPro.CodGru ' +
      '                             AND  CmpR16.CodSub = EstPro.CodSub ' +
      '                             AND  CmpR16.CodPro = EstPro.CodPro)' +
      '             LEFT JOIN EstMrc ON (EstPro.CodMrc = EstMrc.CodMrc)' +
      '             LEFT JOIN FinCli ON (CmpR16.CodCli = FinCli.CodCli)' +
      ' Where CmpR16.SeqArq = ''' + SeqArq + '''';
    Open;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From CmpR16 Where SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  grR05.FullExpand;

  grR05.SetFocus;

end;

procedure TfmCmpR18.FormShow(Sender: TObject);
begin
  inherited;

  EdCodClp.Text := '1';

  EdNomClp.Text := 'ACABADO';

  EdCodEmp.SetFocus;

end;

procedure TfmCmpR18.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmCmpR18.bImprimirClick(Sender: TObject);
begin
  inherited;

  ActiveControl := nil;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Clear;

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Empresa : ' + EdCodEmp.Text + ' - ' + EdNomEmp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Categoria : ' + EdCodCat.Text + ' - ' + EdNomCat.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Tipo : ' + EdCodTip.Text + ' - ' + EdNomTip.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Marca : ' + EdCodMrc.Text + ' - ' + EdNomMrc.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Classificação : ' + EdCodClp.Text + ' - ' + EdNomClp.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Grupo : ' + EdCodGru.Text + ' - ' + EdNomGru.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('SubGrupo : ' + EdCodSub.Text + ' - ' + EdNomSub.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Item : ' + EdCodPro.Text + ' - ' + EdNomPro.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cliente : ' + EdCodCli.Text + ' - ' + EdNomCli.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Vendedor : ' + EdCodVen.Text + ' - ' + EdNomVen.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Devoluções Realizadas no Periodo de : ' + EdPsqDteRes1.Text + ' a ' + EdPsqDteRes2.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.Preview;

end;

procedure TfmCmpR18.grR05ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmCmpR18.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Curva ABC de Itens.htm', grR05.SaveToHTML);
end;

procedure TfmCmpR18.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Curva ABC de Itens.xls', grR05.SaveToXLS);
end;

procedure TfmCmpR18.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Curva ABC de Itens.xml', grR05.SaveToXML);
end;

procedure TfmCmpR18.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdNomEmp.Text := fmPsqEmp.NomEmp;
      EdCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmCmpR18.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodEmp.Text) <> '' then
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
      Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('NomEmp').AsString) <> '' then
        EdNomEmp.Text := FieldByName('NomEmp').AsString
      else
      begin

        EdNomEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdCodEmp);

      end;
    end;

  end
  else
    EdNomEmp.Text := '';
end;

procedure TfmCmpR18.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmCmpR18.BbPsqClpClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);

    fmAuxIni.TipoPesq := 'Cls';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodClp) <> '' then
    begin

      EdCodClp.Text := fmAuxIni.CodClp;
      EdNomClp.Text := fmAuxIni.NomClp;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodClp.Text) <> '' then
    EdCodGru.SetFocus;

end;

procedure TfmCmpR18.EdCodClpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodClp.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomClp From EstClp ' +
        ' Where CodClp = ''' + EdCodClp.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomClp').AsString) <> '' then
      EdNomClp.Text := quSql.FieldByName('NomClp').AsString
    else
      fmsgErro('Classificação Informada não Encontrada.', EdCodClp);

  end
  else
    EdNomClp.Text := '';
end;

procedure TfmCmpR18.BbPsqGruClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);
    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;

    fmAuxIni.TipoPesq := 'G';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodGru) <> '' then
    begin

      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodGru.Text) <> '' then
    EdCodSub.SetFocus;

end;

procedure TfmCmpR18.EdCodGruExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodGru.Text) <> '' then
  begin

    EdCodGru.Text := FNumZeros(EdCodGru.Text, 3);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomGru From EstGru ' +
        ' Where CodGru = ''' + EdCodGru.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomGru').AsString) <> '' then
      EdNomGru.Text := quSql.FieldByName('NomGru').AsString
    else
      fmsgErro('Grupo Informado não Encontrado.', EdCodGru);

  end
  else
    EdNomGru.Text := '';
end;

procedure TfmCmpR18.BbPsqSubClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;
    if Trim(EdCodGru.Text) <> '' then
      fmAuxIni.CodGru := EdCodGru.Text;
    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);

    fmAuxIni.TipoPesq := 'S';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodSub) <> '' then
    begin

      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;
      EdCodSub.Text := fmAuxIni.CodSub;
      EdNomSub.Text := fmAuxIni.NomSub;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodSub.Text) <> '' then
    EdCodPro.SetFocus;

end;

procedure TfmCmpR18.EdCodSubExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodSub.Text) <> '' then
  begin

    EdCodSub.Text := FNumZeros(EdCodSub.Text, 4);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomSub From EstSub ' +
        ' Where CodGru = ''' + EdCodGru.Text + '''' +
        '   and CodSub = ''' + EdCodSub.Text + '''';
      Open;

    end;

    if Trim(quSQL.FieldbyName('NomSub').AsString) <> '' then
      EdNomSub.Text := quSql.FieldByName('NomSub').AsString
    else
      fmsgErro('SubGrupo Informado não Encontrado.', EdCodSub);

  end
  else
    EdNomSub.Text := '';
end;

procedure TfmCmpR18.BbPsqProClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
    if Trim(EdCodMrc.Text) <> '' then
      fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);
    if Trim(EdCodClp.Text) <> '' then
      fmAuxIni.CodClp := EdCodClp.Text;
    if Trim(EdCodGru.Text) <> '' then
      fmAuxIni.CodGru := EdCodGru.Text;
    if Trim(EdCodSub.Text) <> '' then
      fmAuxIni.CodGru := EdCodSub.Text;

    fmAuxIni.TipoPesq := 'I';

    fmAuxIni.ShowModal;

    if Trim(fmAuxIni.CodPro) <> '' then
    begin

      EdCodClp.Text := fmAuxIni.CodClp;
      EdNomClp.Text := fmAuxIni.NomClp;
      EdCodGru.Text := fmAuxIni.CodGru;
      EdNomGru.Text := fmAuxIni.NomGru;
      EdCodSub.Text := fmAuxIni.CodSub;
      EdNomSub.Text := fmAuxIni.NomSub;
      EdCodPro.Text := fmAuxIni.CodPro;
      EdNomPro.Text := fmAuxIni.DscPro;

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodPro.Text) <> '' then
    bPesquisa.SetFocus;

end;

procedure TfmCmpR18.EdCodProExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodPro.Text) <> '' then
  begin

    EdCodPro.Text := FNumStrZero(EdCodPro.Text);

    with quSql, SQL do
    begin

      Close;
      Text := ' Select DscPro From EstPro ' +
        ' Where CodClp = :CodClp' +
        '   and CodGru = :CodGru' +
        '   and CodSub = :CodSub' +
        '   and CodPro = :CodPro';

      with Params do
      begin

        Params[0].AsString := EdCodClp.Text;
        Params[1].AsString := EdCodGru.Text;
        Params[2].AsString := EdCodSub.Text;
        Params[3].AsString := EdCodPro.Text;

      end;

      Open;

    end;

    if Trim(quSQL.FieldbyName('DscPro').AsString) <> '' then
      EdNomPro.Text := quSql.FieldByName('DscPro').AsString
    else
      fmsgErro('Item Informado não Encontrado.', EdCodPro);

  end
  else
    EdNomPro.Text := '';
end;

procedure TfmCmpR18.BbPsqCliClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqCli := TfmPsqCli.Create(Self);

    fmPsqCli.ShowModal;

    if fmPsqCli.CodCli > 0 then
    begin

      EdCodCli.Text := IntToStr(fmPsqCli.CodCli);
      EdNomCli.Text := fmPsqCli.NomCli;

    end;

  finally

    FreeAndNil(fmPsqCli);

  end;
end;

procedure TfmCmpR18.EdCodCliExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodCli.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select NomCli From FinCli Where CodCli = ''' + EdCodCli.Text + '''';
      Open;

      EdNomCli.Text := quSql.FieldByName('NomCli').AsString;
    end;

  end
  else
    EdNomCli.Text := '';
end;

procedure TfmCmpR18.BbPsqVenClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqVen := TfmPsqVen.Create(Self);

    fmPsqVen.ShowModal;

    if fmPsqVen.CodVen > 0 then
    begin

      EdCodVen.Text := IntToStr(fmPsqVen.CodVen);
      EdNomVen.Text := fmPsqVen.NomVen;

    end;

  finally

    FreeAndNil(fmPsqVen);

  end;
end;

procedure TfmCmpR18.EdCodVenExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodVen.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := 'Select ApeVen From FinVen Where CodVen = ''' + EdCodVen.Text + '''';
      Open;

      EdNomVen.Text := quSql.FieldByName('ApeVen').AsString;

    end;

  end
  else
    EdNomVen.Text := '';
end;

procedure TfmCmpR18.bPsqCatClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'Categoria';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodCat > 0 then
    begin

      EdNomCat.Text := fmAuxIni.NomCat;
      EdCodCat.Text := IntToStr(fmAuxIni.CodCat);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodCat.Text) <> '' then
    EdCodTip.SetFocus;

end;

procedure TfmCmpR18.EdCodCatExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodCat.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomCat From EstCat Where CodCat = ''' + EdCodCat.Text + '''';
      Open;

      EdNomCat.Text := FieldByName('NomCat').AsString;

    end;

  end
  else
    EdNomCat.Text := '';
end;

procedure TfmCmpR18.bPsqTipClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);

    fmAuxIni.TipoPesq := 'Tipo';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodTip > 0 then
    begin

      EdNomTip.Text := fmAuxIni.NomTip;
      EdCodTip.Text := IntToStr(fmAuxIni.CodTip);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodTip.Text) <> '' then
    EdCodMrc.SetFocus;

end;

procedure TfmCmpR18.EdCodTipExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodTip.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomTip From EstTip Where CodTip = ''' + EdCodTip.Text + '''';
      Open;

      EdNomTip.Text := FieldByName('NomTip').AsString;

    end;

  end
  else
    EdNomTip.Text := '';
end;

procedure TfmCmpR18.bPsqMrcClick(Sender: TObject);
begin
  inherited;

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    if Trim(EdCodCat.Text) <> '' then
      fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
    if Trim(EdCodTip.Text) <> '' then
      fmAuxIni.CodTip := StrToInt(EdCodTip.Text);

    fmAuxIni.TipoPesq := 'Marca';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodMrc > 0 then
    begin

      EdNomMrc.Text := fmAuxIni.NomMrc;
      EdCodMrc.Text := IntToStr(fmAuxIni.CodMrc);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;

  if Trim(EdCodMrc.Text) <> '' then
    EdCodClp.SetFocus;

end;

procedure TfmCmpR18.EdCodMrcExit(Sender: TObject);
begin
  inherited;
  if Trim(EdCodMrc.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomMrc From EstMrc Where CodMrc = ''' + EdCodMrc.Text + '''';
      Open;

      EdNomMrc.Text := FieldByName('NomMrc').AsString;

    end;

  end
  else
    EdNomMrc.Text := '';
end;

procedure TfmCmpR18.EdCodCatKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Categoria';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodCat > 0 then
      begin

        EdNomCat.Text := fmAuxIni.NomCat;
        EdCodCat.Text := IntToStr(fmAuxIni.CodCat);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdCodCat.Text) <> '' then
      EdCodTip.SetFocus;

  end;
end;

procedure TfmCmpR18.EdCodTipKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      if Trim(EdCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdCodCat.Text);

      fmAuxIni.TipoPesq := 'Tipo';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodTip > 0 then
      begin

        EdNomTip.Text := fmAuxIni.NomTip;
        EdCodTip.Text := IntToStr(fmAuxIni.CodTip);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdCodTip.Text) <> '' then
      EdCodMrc.SetFocus;

  end;
end;

procedure TfmCmpR18.EdCodMrcKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      if Trim(EdCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxIni.CodTip := StrToInt(EdCodTip.Text);

      fmAuxIni.TipoPesq := 'Marca';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodMrc > 0 then
      begin

        EdNomMrc.Text := fmAuxIni.NomMrc;
        EdCodMrc.Text := IntToStr(fmAuxIni.CodMrc);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdCodMrc.Text) <> '' then
      EdCodClp.SetFocus;

  end;
end;

procedure TfmCmpR18.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqClp := TfmPsqClp.Create(Self);

      fmPsqClp.ShowModal;

      if Trim(fmPsqClp.CodClp) <> '' then
      begin

        EdCodClp.Text := fmPsqClp.CodClp;
        EdNomClp.Text := fmPsqClp.NomClp;

      end;

    finally

      FreeAndNil(fmPsqClp);

    end;

    if Trim(EdCodClp.Text) <> '' then
      EdCodGru.SetFocus;

  end;
end;

procedure TfmCmpR18.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := EdCodClp.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);

      fmAuxIni.TipoPesq := 'G';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdCodGru.Text) <> '' then
      EdCodSub.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := EdCodClp.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxPsq.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxPsq.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxPsq.CodMrc := StrToInt(EdCodMrc.Text);

      fmAuxPsq.TipoPesq := 'G';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxPsq.CodGru;
        EdNomGru.Text := fmAuxPsq.NomGru;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EdCodGru.Text) <> '' then
      EdCodSub.SetFocus;

  end;
end;

procedure TfmCmpR18.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := EdCodClp.Text;
      fmAuxIni.CodGru := EdCodGru.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);

      fmAuxIni.TipoPesq := 'S';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdCodSub.Text) <> '' then
      EdCodPro.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := EdCodClp.Text;
      fmAuxPsq.CodGru := EdCodGru.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxPsq.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxPsq.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxPsq.CodMrc := StrToInt(EdCodMrc.Text);

      fmAuxPsq.TipoPesq := 'S';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodGru) <> '' then
      begin

        EdCodGru.Text := fmAuxPsq.CodGru;
        EdNomGru.Text := fmAuxPsq.NomGru;
        EdCodSub.Text := fmAuxPsq.CodSub;
        EdNomSub.Text := fmAuxPsq.NomSub;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EdCodSub.Text) <> '' then
      EdCodPro.SetFocus;

  end;
end;

procedure TfmCmpR18.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.CodClp := EdCodClp.Text;
      fmAuxIni.CodGru := EdCodGru.Text;
      fmAuxIni.CodSub := EdCodSub.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxIni.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxIni.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxIni.CodMrc := StrToInt(EdCodMrc.Text);

      fmAuxIni.TipoPesq := 'I';

      fmAuxIni.ShowModal;

      if Trim(fmAuxIni.CodPro) <> '' then
      begin

        EdCodGru.Text := fmAuxIni.CodGru;
        EdNomGru.Text := fmAuxIni.NomGru;
        EdCodSub.Text := fmAuxIni.CodSub;
        EdNomSub.Text := fmAuxIni.NomSub;
        EdCodPro.Text := fmAuxIni.CodPro;
        EdNomPro.Text := fmAuxIni.DscPro;

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if Trim(EdCodPro.Text) <> '' then
      EdCodCli.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.CodClp := EdCodClp.Text;
      fmAuxPsq.CodGru := EdCodGru.Text;
      fmAuxPsq.CodSub := EdCodSub.Text;

      if Trim(EdCodCat.Text) <> '' then
        fmAuxPsq.CodCat := StrToInt(EdCodCat.Text);
      if Trim(EdCodTip.Text) <> '' then
        fmAuxPsq.CodTip := StrToInt(EdCodTip.Text);
      if Trim(EdCodMrc.Text) <> '' then
        fmAuxPsq.CodMrc := StrToInt(EdCodMrc.Text);

      fmAuxPsq.TipoPesq := 'I';

      fmAuxPsq.ShowModal;

      if Trim(fmAuxPsq.CodPro) <> '' then
      begin

        EdCodGru.Text := fmAuxPsq.CodGru;
        EdNomGru.Text := fmAuxPsq.NomGru;
        EdCodSub.Text := fmAuxPsq.CodSub;
        EdNomSub.Text := fmAuxPsq.NomSub;
        EdCodPro.Text := fmAuxPsq.CodPro;
        EdNomPro.Text := fmAuxPsq.DscPro;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if Trim(EdCodPro.Text) <> '' then
      EdCodCli.SetFocus;

  end;
end;

procedure TfmCmpR18.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'C';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodCli > 0 then
      begin

        EdNomCli.Text := fmAuxIni.NomCli;
        EdCodCli.Text := IntToStr(fmAuxIni.CodCli);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    EdCodCli.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'C';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodCli > 0 then
      begin

        EdNomCli.Text := fmAuxPsq.NomCli;
        EdCodCli.Text := IntToStr(fmAuxPsq.CodCli);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    EdCodCli.SetFocus;

  end;
end;

procedure TfmCmpR18.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqVen := TfmPsqVen.Create(Self);

      fmPsqVen.ShowModal;

      if fmPsqVen.CodVen > 0 then
      begin

        EdNomVen.Text := fmPsqVen.NomVen;
        EdCodVen.Text := IntToStr(fmPsqVen.CodVen);

      end;

    finally

      FreeAndNil(fmPsqVen);

    end;

    EdCodVen.SetFocus;

  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'V';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodVen > 0 then
      begin

        EdNomVen.Text := fmAuxPsq.NomVen;
        EdCodVen.Text := IntToStr(fmAuxPsq.CodVen);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    EdCodVen.SetFocus;

  end;
end;

procedure TfmCmpR18.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From CmpR15 Where CmpR15.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From CmpR16 Where CmpR16.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmCmpR18.FormDestroy(Sender: TObject);
begin
  inherited;
  fmCmpR18 := nil;
end;

end.
