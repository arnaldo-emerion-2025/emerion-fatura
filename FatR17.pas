unit FatR17;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxTL, dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, dxColorPickEdit,
  dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmFatR17 = class(TfmPadrao)
    FatR16: TwwQuery;
    DsR16: TwwDataSource;
    PaintBox: TPaintBox;
    Label28: TLabel;
    EdPsqDteFt1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDteFt2: TdxColorDateEdit;
    Label26: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
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
    grR16: TdxDBGrid;
    bImprimir: TBitBtn;
    Label3: TLabel;
    grR16NRONFS: TdxDBGridMaskColumn;
    grR16APECLI: TdxDBGridMaskColumn;
    grR16TOTGER: TdxDBGridMaskColumn;
    grR16TOTIPI: TdxDBGridMaskColumn;
    grR16DTEFAT: TdxDBGridColumn;
    grR16TOTFAT: TdxDBGridColumn;
    Label4: TLabel;
    Label9: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    grR16MODPFA: TdxDBGridColumn;
    Label6: TLabel;
    EdPsqTipOpe: TdxColorPickEdit;
    Label20: TLabel;
    Label7: TLabel;
    EdPsqCodCli: TdxColorEdit;
    bPsqCli: TSpeedButton;
    EdPsqNomCli: TdxColorEdit;
    Label8: TLabel;
    Label12: TLabel;
    EdPsqCodFor: TdxColorEdit;
    bPsqFor: TSpeedButton;
    EdPsqNomFor: TdxColorEdit;
    FatR16SEQARQ: TStringField;
    FatR16NRONFS: TIntegerField;
    FatR16APECLI: TStringField;
    FatR16TOTFAT: TFloatField;
    FatR16TOTGER: TFloatField;
    FatR16TOTICM: TFloatField;
    FatR16TOTIPI: TFloatField;
    FatR16TOTPIS: TFloatField;
    FatR16TOTCOF: TFloatField;
    FatR16MODPFA: TStringField;
    FatR16DTEFAT: TDateTimeField;
    FatR16CODUSU: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bImprimirClick(Sender: TObject);
    procedure grR16ReloadGroupList(Sender: TObject);
    procedure HTMLClick(Sender: TObject);
    procedure ExcelClick(Sender: TObject);
    procedure XMLClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure bPsqCliClick(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bPsqForClick(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    sFiltro, SeqArq: string;
  end;

var
  fmFatR17: TfmFatR17;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
  AuxPsq, ManGDB, ManPri, AuxIni;

{$R *.DFM}

procedure TfmFatR17.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfmFatR17.FormCreate(Sender: TObject);
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

procedure TfmFatR17.bbPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR16 Where FatR16.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  if Trim(EdPsqCodFor.Text) = '' then
  begin

    if (Trim(EdPsqTipOpe.Text) = '') or (Trim(EdPsqTipOpe.Text) = 'Saida') then
    begin

      sFiltro := ' and ( FatPed.SitFat = ''' + 'Faturado' + ''' or FatPed.SitFat = ''' + 'Devolvido' + '''  ) and FatPed.FlgImp = ''' + 'Sim' + '''';

      if Trim(EdPsqCodEmp.Text) <> '' then
        sFiltro := sFiltro + ' and FatPed.CodEmp = ''' + EdPsqCodEmp.Text + '''';
      if Trim(EdPsqUfeRes.Text) <> '' then
        sFiltro := sFiltro + ' and FatPed.UfeFat = ''' + EdPsqUfeRes.Text + '''';
      if Trim(EdPsqModPfa.Text) <> '' then
        sFiltro := sFiltro + ' and FatPed.ModPfa = ''' + EdPsqModPfa.Text + '''';
      if Trim(EdPsqCodCli.Text) <> '' then
        sFiltro := sFiltro + ' and FatPed.CodCli = ''' + EdPsqCodCli.Text + '''';

      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatPed.DteFat >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatPed.DteFat <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

      sFiltro := sFiltro + ' and FatPe2.CodPro LIKE ' + QuotedStr('9%') + ' and FatPe2.TrbIpi = ' + QuotedStr('Sim');

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,ModPfa,DteFat,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof)' +
          ' Select ''' + SeqArq + ''',' +
          '        FatPed.NroNfs,' +
          '        FinCli.NomCli,' +
          '        FatPed.ModPfa,' +
          '        FatPed.DteFat,' +
          '        Sum(FatPe2.TotPe2),' +
          '        Sum(FatPe2.TotGe2),' +
          '        Sum(FatPe2.TotIcm),' +
          '        Sum(FatPe2.TotIpi),' +
          '        Sum(FatPe2.TotPis),' +
          '        Sum(FatPe2.Totcof)' +
          ' From FatPe2,FatPed,FinCli' +
          ' Where FatPe2.CodEmp = FatPed.CodEmp' +
          '   and FatPe2.DteRes = FatPed.DteRes' +
          '   and FatPe2.NumRes = FatPed.NumRes' +
          '   and FatPe2.SeqLib = FatPed.SeqLib' +
          '   and FatPe2.SeqFat = FatPed.SeqFat' +
          '   and FatPed.CodCli = FinCli.CodCli' + sFiltro +
          ' Group by FatPed.NroNfs,FinCli.NomCli,FatPed.ModPfa,FatPed.DteFat';
        ExecSQL;

      end;

      sFiltro := ' and LojFat.SitFat = ' + QuotedStr('Faturado');

      if Trim(EdPsqCodEmp.Text) <> '' then
        sFiltro := sFiltro + ' and LojFat.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
      if Trim(EdPsqUfeRes.Text) <> '' then
        sFiltro := sFiltro + ' and LojFat.UfeFat = ' + QuotedStr(EdPsqUfeRes.Text);
      if Trim(EdPsqModPfa.Text) <> '' then
        sFiltro := sFiltro + ' and LojPed.ModPfa = ' + QuotedStr(EdPsqModPfa.Text);
      if Trim(EdPsqCodCli.Text) <> '' then
        sFiltro := sFiltro + ' and LojPed.CodCli = ' + QuotedStr(EdPsqCodCli.Text);

      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and LojFat.DteFat >= ' + QuotedStr(fDateToSQL(EdPsqDteFt1.Date));
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and LojFat.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDteFt2.Date));

      sFiltro := sFiltro + ' and LojFa2.CodPro LIKE ' + QuotedStr('9%') + ' and LojFa2.TrbIpi = ' + QuotedStr('Sim');

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,ModPfa,DteFat,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof)' +
          ' Select ''' + SeqArq + ''',' +
          '        LojFat.NroNfs,' +
          '        FinCli.NomCli,' +
          '        LojPed.ModPfa,' +
          '        LojFat.DteFat,' +
          '        Sum(LojFa2.TotPe2),' +
          '        Sum(LojFa2.TotGe2),' +
          '        Sum(LojFa2.TotIcm),' +
          '        Sum(LojFa2.TotIpi),' +
          '        Sum(LojFa2.TotPis),' +
          '        Sum(LojFa2.Totcof)' +
          ' From LojFa2,LojFat,LojPed,FinCli' +
          ' Where LojFa2.CodEmp = LojFat.CodEmp' +
          '   and LojFa2.DtePed = LojFat.DtePed' +
          '   and LojFa2.NumPed = LojFat.NumPed' +
          '   and LojFat.CodEmp = LojPed.CodEmp' +
          '   and LojFat.DtePed = LojPed.DtePed' +
          '   and LojFat.NumPed = LojPed.NumPed' +
          '   and LojFat.CodCli = FinCli.CodCli' + sFiltro +
          ' Group by LojFat.NroNfs,FinCli.NomCli,LojPed.ModPfa,LojFat.DteFat';
        ExecSQL;

      end;
    end;
  end;

  if Trim(EdPsqCodFor.Text) = '' then
  begin

    sFiltro := ' and FatGer.SitGer = ''' + 'Faturado' + ''' and FatGer.FlgImp = ''' + 'Sim' + '''';

    if Trim(EdPsqCodEmp.Text) <> '' then
      sFiltro := sFiltro + ' and FatGer.CodEmp = ''' + EdPsqCodEmp.Text + '''';
    if Trim(EdPsqUfeRes.Text) <> '' then
      sFiltro := sFiltro + ' and FatGer.UfeGer = ''' + EdPsqUfeRes.Text + '''';
    if Trim(EdPsqModPfa.Text) <> '' then
      sFiltro := sFiltro + ' and EstPfa.ModPfa = ''' + EdPsqModPfa.Text + '''';
    if Trim(EdPsqTipOpe.Text) <> '' then
      sFiltro := sFiltro + ' and FatGer.TipPfa = ''' + EdPsqTipOpe.Text + '''';
    if Trim(EdPsqCodCli.Text) <> '' then
      sFiltro := sFiltro + ' and FatGer.CodCli = ''' + EdPsqCodCli.Text + '''';

    if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
      sFiltro := sFiltro + ' and FatGer.DteFat >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
    if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
      sFiltro := sFiltro + ' and FatGer.DteFat <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

    sFiltro := sFiltro + ' and FatGe2.CodPro LIKE ' + QuotedStr('9%') + ' and FatGe2.TrbIpi = ' + QuotedStr('Sim');

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,ModPfa,DteFat,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof)' +
        ' Select ''' + SeqArq + ''',' +
        '        FatGer.NroNfs,' +
        '        FinCli.NomCli,' +
        '        EstPfa.ModPfa,' +
        '        FatGer.DteFat,' +
        '        Sum(FatGe2.TotIte),' +
        '        Sum(FatGe2.TotGe2),' +
        '        Sum(FatGe2.TotIcm),' +
        '        Sum(FatGe2.TotIpi),' +
        '        Sum(FatGe2.TotPis),' +
        '        Sum(FatGe2.Totcof)' +
        ' From FatGe2,FatGer,FinCli,EstPfa' +
        ' Where FatGe2.CodEmp = FatGer.CodEmp' +
        '   and FatGe2.DteGer = FatGer.DteGer' +
        '   and FatGe2.NumGer = FatGer.NumGer' +
        '   and FatGer.CodCli = FinCli.CodCli' +
        '   and FatGer.CodPfa = EstPfa.CodPfa' +
        '   and FatGer.TipPfa = EstPfa.TipPfa' + sFiltro +
        ' Group by FatGer.NroNfs,FinCli.NomCli,EstPfa.ModPfa,FatGer.DteFat';
      ExecSQL;

    end;

    sFiltro := ' and FatDCl.SitGer = ''' + 'Faturado' + '''';

    if Trim(EdPsqCodEmp.Text) <> '' then
      sFiltro := sFiltro + ' and FatDCl.CodEmp = ''' + EdPsqCodEmp.Text + '''';
    if Trim(EdPsqUfeRes.Text) <> '' then
      sFiltro := sFiltro + ' and FatDCl.UfeGer = ''' + EdPsqUfeRes.Text + '''';
    if Trim(EdPsqModPfa.Text) <> '' then
      sFiltro := sFiltro + ' and EstPfa.ModPfa = ''' + EdPsqModPfa.Text + '''';
    if Trim(EdPsqTipOpe.Text) <> '' then
      sFiltro := sFiltro + ' and FatDCl.TipPfa = ''' + EdPsqTipOpe.Text + '''';
    if Trim(EdPsqCodCli.Text) <> '' then
      sFiltro := sFiltro + ' and FatDCl.CodCli = ''' + EdPsqCodCli.Text + '''';

    if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
      sFiltro := sFiltro + ' and FatDCl.DteFat >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
    if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
      sFiltro := sFiltro + ' and FatDCl.DteFat <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

    sFiltro := sFiltro + ' and FatDc2.CodPro LIKE ' + QuotedStr('9%') + ' and FatDc2.TrbIpi = ' + QuotedStr('Sim');

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,ModPfa,DteFat,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof)' +
        ' Select ''' + SeqArq + ''',' +
        '        FatDCl.NroNfs,' +
        '        FinCli.NomCli,' +
        '        EstPfa.ModPfa,' +
        '        FatDCl.DteFat,' +
        '        Sum(FatDC2.TotIte),' +
        '        Sum(FatDC2.TotGe2),' +
        '        Sum(FatDC2.TotIcm),' +
        '        Sum(FatDC2.TotIpi),' +
        '        Sum(FatDC2.TotPis),' +
        '        Sum(FatDC2.Totcof)' +
        ' From FatDc2,FatDcl,FinCli,EstPfa' +
        ' Where FatDc2.CodEmp = FatDcl.CodEmp' +
        '   and FatDc2.DteGer = FatDcl.DteGer' +
        '   and FatDc2.NumGer = FatDcl.NumGer' +
        '   and FatDcl.CodCli = FinCli.CodCli' +
        '   and FatDcl.CodPfa = EstPfa.CodPfa' +
        '   and FatDcl.TipPfa = EstPfa.TipPfa' + sFiltro +
        ' Group by FatDcl.NroNfs,FinCli.NomCli,EstPfa.ModPfa,FatDcl.DteFat';
      ExecSQL;

    end;
  end;

  if (Trim(EdPsqTipOpe.Text) = '') or (Trim(EdPsqTipOpe.Text) = 'Entrada') then
  begin

    if Trim(EdPsqCodFor.Text) = '' then
    begin

      sFiltro := ' and FatDev.SitDev = ''' + 'Devolvido' + ''' and FatDev.NroNfs > ''' + '0' + ''' and FatDev.FlgFsc = ''' + 'Nao' + ''' and FatDev.FlgImp = '''
        + 'Sim' + '''';

      if Trim(EdPsqCodEmp.Text) <> '' then
        sFiltro := sFiltro + ' and FatDev.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
      if Trim(EdPsqUfeRes.Text) <> '' then
        sFiltro := sFiltro + ' and FatDev.UfeGer = ' + QuotedStr(EdPsqUfeRes.Text);
      if Trim(EdPsqModPfa.Text) <> '' then
        sFiltro := sFiltro + ' and FatDev.ModPfa = ' + QuotedStr(EdPsqModPfa.Text);
      if Trim(EdPsqCodCli.Text) <> '' then
        sFiltro := sFiltro + ' and FatDev.CodCli = ' + QuotedStr(EdPsqCodCli.Text);

      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

      sFiltro := sFiltro + ' and FatDv2.CodPro LIKE ' + QuotedStr('9%') + ' and FatDv2.TrbIpi = ' + QuotedStr('Sim');

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,ModPfa,DteFat,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof)' +
          ' Select ''' + SeqArq + ''',' +
          '        FatDev.NroNfs,' +
          '        FinCli.NomCli,' +
          '        FatDev.ModDev,' +
          '        FatDev.DteDev,' +
          '        Sum(FatDv2.TotDv2),' +
          '        Sum(FatDv2.TotGe2),' +
          '        Sum(FatDv2.TotIcm),' +
          '        Sum(FatDv2.TotIpi),' +
          '        Sum(FatDv2.TotPis),' +
          '        Sum(FatDv2.Totcof)' +
          ' From FatDv2,FatDev,FinCli' +
          ' Where FatDv2.CodEmp = FatDev.CodEmp' +
          '   and FatDv2.DteRes = FatDev.DteRes' +
          '   and FatDv2.NumRes = FatDev.NumRes' +
          '   and FatDv2.SeqLib = FatDev.SeqLib' +
          '   and FatDv2.SeqFat = FatDev.SeqFat' +
          '   and FatDv2.SeqDev = FatDev.SeqDev' +
          '   and FatDev.CodCli = FinCli.CodCli' + sFiltro +
          ' Group by FatDev.NroNfs,FinCli.NomCli,FatDev.ModDev,FatDev.DteDev';
        ExecSQL;

      end;

      sFiltro := ' and FatDev.SitDev = ''' + 'Devolvido' + ''' and FatDev.FlgFsc = ''' + 'Sim' + '''';

      if Trim(EdPsqCodEmp.Text) <> '' then
        sFiltro := sFiltro + ' and FatDev.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
      if Trim(EdPsqUfeRes.Text) <> '' then
        sFiltro := sFiltro + ' and FatDev.UfeGer = ' + QuotedStr(EdPsqUfeRes.Text);
      if Trim(EdPsqModPfa.Text) <> '' then
        sFiltro := sFiltro + ' and FatDev.ModPfa = ' + QuotedStr(EdPsqModPfa.Text);
      if Trim(EdPsqCodCli.Text) <> '' then
        sFiltro := sFiltro + ' and FatDev.CodCli = ' + QuotedStr(EdPsqCodCli.Text);

      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

      sFiltro := sFiltro + ' and FatDv2.CodPro LIKE ' + QuotedStr('9%') + ' and FatDv2.TrbIpi = ' + QuotedStr('Sim');

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof,ModPfa,DteFat)' +
          ' Select ''' + SeqArq + ''',' +
          '        FatDev.NfsCli,' +
          '        FinCli.NomCli,' +
          '        FatDev.ModDev,' +
          '        FatDev.DteDev,' +
          '        Sum(FatDv2.TotDv2),' +
          '        Sum(FatDv2.TotGe2),' +
          '        Sum(FatDv2.TotIcm),' +
          '        Sum(FatDv2.TotIpi),' +
          '        Sum(FatDv2.TotPis),' +
          '        Sum(FatDv2.Totcof)' +
          ' From FatDv2,FatDev,FinCli' +
          ' Where FatDv2.CodEmp = FatDev.CodEmp' +
          '   and FatDv2.DteRes = FatDev.DteRes' +
          '   and FatDv2.NumRes = FatDev.NumRes' +
          '   and FatDv2.SeqLib = FatDev.SeqLib' +
          '   and FatDv2.SeqFat = FatDev.SeqFat' +
          '   and FatDv2.SeqDev = FatDev.SeqDev' +
          '   and FatDev.CodCli = FinCli.CodCli' + sFiltro +
          ' Group by FatDev.NfsCli,FinCli.NomCli,FatDev.ModDev,FatDev.DteDev';
        ExecSQL;

      end;
    end;

    if Trim(EdPsqCodCli.Text) = '' then
    begin

      sFiltro := ' and CmpEnt.SitEnt = ' + QuotedStr('Concluida') + ' and ( CmpEnt.CodTip = ' + QuotedStr('1') + ' or CmpEnt.CodTip = ' + QuotedStr('2') +
        ' )';

      if Trim(EdPsqCodEmp.Text) <> '' then
        sFiltro := sFiltro + ' and CmpEnt.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
      if Trim(EdPsqUfeRes.Text) <> '' then
        sFiltro := sFiltro + ' and CmpEnt.UfeEnt = ' + QuotedStr(EdPsqUfeRes.Text);
      if Trim(EdPsqModPfa.Text) <> '' then
        sFiltro := sFiltro + ' and CmpEnt.ModPfa = ' + QuotedStr(EdPsqModPfa.Text);
      if Trim(EdPsqCodFor.Text) <> '' then
        sFiltro := sFiltro + ' and CmpEnt.CodFor = ' + QuotedStr(EdPsqCodFor.Text);

      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpEnt.DteOpe >= ' + QuotedStr(fDateToSQL(EdPsqDteFt1.Date));
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpEnt.DteOpe <= ' + QuotedStr(fDateToSQL(EdPsqDteFt2.Date));

      sFiltro := sFiltro + ' and CmpEn2.CodPro LIKE ' + QuotedStr('9%') + ' and CmpEn2.TrbIpi = ' + QuotedStr('Sim');

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,ModPfa,DteFat,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof)' +
          ' Select ' + QuotedStr(SeqArq) + ',' +
          '        CmpEnt.NumDoc,' +
          '        FinFor.NomFor,' +
          '        CmpEnt.ModPfa,' +
          '        CmpEnt.DteOpe,' +
          '        Sum(CmpEn2.TotEn2),' +
          '        Sum(CmpEn2.TotGe2),' +
          '        Sum(CmpEn2.TotIcm),' +
          '        Sum(CmpEn2.TotIpi),' + QuotedStr('0') + ',' + QuotedStr('0') +
          ' From CmpEn2,CmpEnt,FinFor' +
          ' Where CmpEn2.CodEmp = CmpEnt.CodEmp' +
          '   and CmpEn2.DteEnt = CmpEnt.DteEnt' +
          '   and CmpEn2.NumEnt = CmpEnt.NumEnt' +
          '   and CmpEnt.CodFor = FinFor.CodFor' + sFiltro +
          ' Group by CmpEnt.NumDoc,FinFor.NomFor,CmpEnt.ModPfa,CmpEnt.DteOpe';
        ExecSQL;

      end;
    end;
  end;

  if Trim(EdPsqCodCli.Text) = '' then
  begin

    if (Trim(EdPsqTipOpe.Text) = '') or (Trim(EdPsqTipOpe.Text) = 'Saida') then
    begin

      sFiltro := ' and ( CmpNfs.SitNfs = ''' + 'Concluido' + ''' or CmpNfs.SitNfs = ''' + 'Recebido' + ''' or CmpNfs.SitNfs = ''' + 'Recebido Parcialmente' +
        ''' or CmpNfs.SitNfs = ''' + 'Saldo Nao Atendido' + ''' )' +
        ' and   CmpNfs.NroNfs > 0' +
        ' and   CmpNfs.FlgImp = ''' + 'Sim' + '''';

      if Trim(EdPsqCodEmp.Text) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
      if Trim(EdPsqUfeRes.Text) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.UfeNfs = ' + QuotedStr(EdPsqUfeRes.Text);
      if Trim(EdPsqModPfa.Text) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.ModPfa = ' + QuotedStr(EdPsqModPfa.Text);
      if Trim(EdPsqCodFor.Text) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.CodFor = ' + QuotedStr(EdPsqCodFor.Text);

      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.DteFat >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.DteFat <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

      sFiltro := sFiltro + ' and CmpNf2.CodPro LIKE ' + QuotedStr('9%') + ' and CmpNf2.TrbIpi = ' + QuotedStr('Sim');

      with quSQL, SQL do
      begin

        Close;
        Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,ModPfa,DteFat,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof)' +
          ' Select ''' + SeqArq + ''',' +
          '        CmpNfs.NroNfs,' +
          '        FinFor.NomFor,' +
          '        CmpNfs.ModPfa,' +
          '        CmpNfs.DteFat,' +
          '        Sum(CmpNf2.TotIte),' +
          '        Sum(CmpNf2.TotNf2),' +
          '        Sum(CmpNf2.TotIcm),' +
          '        Sum(CmpNf2.TotIpi),' +
          '        Sum(CmpNf2.TotPis),' +
          '        Sum(CmpNf2.Totcof)' +
          ' From CmpNf2,CmpNfs,FinFor' +
          ' Where CmpNf2.CodEmp = CmpNfs.CodEmp' +
          '   and CmpNf2.DteNfs = CmpNfs.DteNfs' +
          '   and CmpNf2.SeqNfs = CmpNfs.SeqNfs' +
          '   and CmpNfs.CodFor = FinFor.CodFor' + sFiltro +
          ' Group by CmpNfs.NroNfs,FinFor.NomFor,CmpNfs.ModPfa,CmpNfs.DteFat';
        ExecSQL;

      end;
    end;
  end;

  with FatR16, SQL do
  begin

    Close;
    Text := ' Select * From FatR16 Where SeqArq = ''' + SeqArq + ''' and FatR16.TotIpi > 0 Order by FatR16.DteFat,FatR16.NroNfs';
    Open;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR16 Where FatR16.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  grR16.FullExpand;

  grR16.SetFocus;

end;

procedure TfmFatR17.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmFatR17.bPsqEmpClick(Sender: TObject);
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

procedure TfmFatR17.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmFatR17.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then
    bImprimir.OnClick(Sender);
end;

procedure TfmFatR17.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqUfeRes.SetFocus;
end;

procedure TfmFatR17.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmFatR17.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmFatR17.bImprimirClick(Sender: TObject);
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
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Fornecedor : ' + EdPsqCodFor.Text + ' - ' + EdPsqNomFor.Text);
  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no Periodo de : ' + EdPsqDteFt1.Text + ' a ' + EdPsqDteFt2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmFatR17.grR16ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmFatR17.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação Analitica de Notas com Tributação de IPI.htm', grR16.SaveToHTML);
end;

procedure TfmFatR17.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação Analitica de Notas com Tributação de IPI.xls', grR16.SaveToXLS);
end;

procedure TfmFatR17.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação Analitica de Notas com Tributação de IPI.xml', grR16.SaveToXML);
end;

procedure TfmFatR17.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR16 Where FatR16.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmFatR17.FormDestroy(Sender: TObject);
begin
  inherited;
  fmFatR17 := nil;
end;

procedure TfmFatR17.bPsqCliClick(Sender: TObject);
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

procedure TfmFatR17.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmFatR17.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
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

procedure TfmFatR17.EdPsqCodForExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodFor.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomFor From FinFor Where FinFor.CodFor = ''' + EdPsqCodFor.Text + '''';
      Open;

      EdPsqNomFor.Text := FieldByName('NomFor').AsString;

    end;

  end
  else
    EdPsqNomFor.Text := '';
end;

procedure TfmFatR17.EdPsqCodForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'F';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodFor > 0 then
      begin

        EdPsqNomFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;
  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'F';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodFor > 0 then
      begin

        EdPsqNomFor.Text := fmAuxPsq.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmFatR17.bPsqForClick(Sender: TObject);
begin
  inherited;
  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'F';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodFor > 0 then
    begin

      EdPsqNomFor.Text := fmAuxIni.NomFor;
      EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;
end;

end.
