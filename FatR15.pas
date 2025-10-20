unit FatR15;

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

  TfmFatR15 = class(TfmPadrao)
    FatR16: TwwQuery;
    DsR16: TwwDataSource;
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
    grR16TOTICM: TdxDBGridMaskColumn;
    grR16TOTIPI: TdxDBGridMaskColumn;
    grR16TOTPIS: TdxDBGridMaskColumn;
    grR16TOTCOF: TdxDBGridMaskColumn;
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
    ckCanceladas: TCheckBox;
    ckDataCan: TCheckBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EdPsqDteNf1: TdxColorDateEdit;
    EdPsqDteNf2: TdxColorDateEdit;
    FatR16DTENFE: TDateTimeField;
    grR16DTENFE: TdxDBGridColumn;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
    procedure ckDataCanClick(Sender: TObject);
    procedure ckCanceladasClick(Sender: TObject);
  private
    {Private declarations}
    procedure Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
  public
    {Public declarations}
    sFiltro, SeqArq: string;
  end;

var
  fmFatR15: TfmFatR15;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
  AuxPsq, ManGDB, ManPri, AuxIni;

{$R *.DFM}

procedure TfmFatR15.Save(ADefaultExt, AFilter, AFileName: string; AMethod: TSaveMethod);
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

procedure TfmFatR15.FormCreate(Sender: TObject);
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

procedure TfmFatR15.bbPesquisaClick(Sender: TObject);
var
  imptip, filtroFinal: string;
begin

  {if fmmanpri.nfe then
    imptip := 'ENVNFE'
  else
    imptip := 'FLGIMP';}

  imptip := ' (ENVNFE = ''Sim'' or (flgnfe = ''Nao'' and FLGIMP = ''Sim''))';
  ActiveControl := nil;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR16 Where FatR16.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  if (Trim(EdPsqTipOpe.Text) = '') or (Trim(EdPsqTipOpe.Text) = 'Saida') then
  begin

    //sFiltro := ' and ( FatPed.SitFat = ''' + 'Faturado' + ''' or FatPed.SitFat = ''' + 'Devolvido' + '''  ) and FatPed.' + imptip + ' = ''' + 'Sim' + '''';
    if ckCanceladas.Checked then
      sFiltro := ' and ( FatPed.SitFat = ''Cancelado'' ) '
    else
      sFiltro := ' and ( FatPed.SitFat = ''Faturado'' or FatPed.SitFat = ''Devolvido''  ) and ' + imptip;

    if Trim(EdPsqCodEmp.Text) <> '' then
      sFiltro := sFiltro + ' and FatPed.CodEmp = ''' + EdPsqCodEmp.Text + '''';
    if Trim(EdPsqUfeRes.Text) <> '' then
      sFiltro := sFiltro + ' and FatPed.UfeFat = ''' + EdPsqUfeRes.Text + '''';

    if Trim(EdPsqModPfa.Text) <> '' then
    begin

      if Trim(EdPsqModPfa.Text) <> 'Nao Cadastrados' then
        sFiltro := sFiltro + ' and FatPed.ModPfa = ''' + EdPsqModPfa.Text + ''''
      else
        sFiltro := sFiltro + ' and FinCli.CodMcr = ''' + '1' + '''';

    end;

    if Trim(EdPsqCodCli.Text) <> '' then
      sFiltro := sFiltro + ' and FatPed.CodCli = ''' + EdPsqCodCli.Text + '''';

    if ckDataCan.Checked then
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatPed.DTECAN >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatPed.DTECAN <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';
    end
    else
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatPed.DteFat >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatPed.DteFat <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

      if Trim(fLimpaStr(EdPsqDteNf1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatPed.DteNfe >= ''' + fDateToSQL(EdPsqDteNf1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteNf2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatPed.DteNfe <= ''' + fDateToSQL(EdPsqDteNf2.Date) + '''';
    end;
    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof,ModPfa,DteFat,DteNfe)' +
        ' Select ''' + SeqArq + ''',' +
        '        FatPed.NroNfs,' +
        '        FinCli.NomCli,' +
        '        FatPed.TotFat,' +
        '        FatPed.TotGer,' +
        '        FatPed.TotIcm,' +
        '        FatPed.TotIpi,' +
        '        FatPed.TotPis,' +
        '        FatPed.Totcof,' +
        '        FatPed.ModPfa,' +
        '        FatPed.DteFat,' +
        '        FatPed.DteNfe'+
        ' From FatPed,PedLib,FinCli' +
        ' Where FatPed.CodEmp = PedLib.CodEmp' +
        '   and FatPed.DteRes = PedLib.DteRes' +
        '   and FatPed.NumRes = PedLib.NumRes' +
        '   and FatPed.SeqLib = PedLib.SeqLib' +
        '   and FatPed.CodCli = FinCli.CodCli' + sFiltro;
      //          clipboard.astext:=text;
      ExecSQL;

    end;

    if ckCanceladas.Checked then
      sFiltro := ' and LojFat.SitFat = ' + QuotedStr('Cancelado')
    else
      sFiltro := ' and LojFat.SitFat = ' + QuotedStr('Faturado');

    if Trim(EdPsqCodEmp.Text) <> '' then
      sFiltro := sFiltro + ' and LojFat.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
    if Trim(EdPsqUfeRes.Text) <> '' then
      sFiltro := sFiltro + ' and LojFat.UfeFat = ' + QuotedStr(EdPsqUfeRes.Text);

    if Trim(EdPsqModPfa.Text) <> '' then
    begin

      if Trim(EdPsqModPfa.Text) <> 'Nao Cadastrados' then
        sFiltro := sFiltro + ' and LojPed.ModPfa = ' + QuotedStr(EdPsqModPfa.Text)
      else
        sFiltro := sFiltro + ' and Exists(Select * From FinCli Where FinCli.CodCli = LojFat.CodCli and FinCli.CodMcr = ' + QuotedStr('1') + ')';

    end;

    if Trim(EdPsqCodCli.Text) <> '' then
      sFiltro := sFiltro + ' and LojPed.CodCli = ' + QuotedStr(EdPsqCodCli.Text);

    if ckDataCan.Checked then
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and LojFat.DTECAN >= ' + QuotedStr(fDateToSQL(EdPsqDteFt1.Date));
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and LojFat.DTECAN <= ' + QuotedStr(fDateToSQL(EdPsqDteFt2.Date));
    end
    else
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and LojFat.DteFat >= ' + QuotedStr(fDateToSQL(EdPsqDteFt1.Date));
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and LojFat.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDteFt2.Date));

      if Trim(fLimpaStr(EdPsqDteNf1.Text)) <> '' then
        sFiltro := sFiltro + ' and LojFat.DteNfe >= ' + QuotedStr(fDateToSQL(EdPsqDteNf1.Date));
      if Trim(fLimpaStr(EdPsqDteNf2.Text)) <> '' then
        sFiltro := sFiltro + ' and LojFat.DteNfe <= ' + QuotedStr(fDateToSQL(EdPsqDteNf2.Date));
    end;
    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof,ModPfa,DteFat,DteNfe)' +
        ' Select ''' + SeqArq + ''',' +
        '        LojFat.NroNfs,' +
        '        LojFat.NomCli,' +
        '        LojFat.TotFat,' +
        '        LojFat.TotGer,' +
        '        LojFat.TotIcm,' +
        '        LojFat.TotIpi,' +
        '        LojFat.TotPis,' +
        '        LojFat.Totcof,' +
        '        LojPed.ModPfa,' +
        '        LojFat.DteFat,' +
        '        LojFat.DteNfe'+
        ' From LojFat,LojPed' +
        ' Where LojFat.CodEmp = LojPed.CodEmp' +
        '   and LojFat.DtePed = LojPed.DtePed' +
        '   and LojFat.NumPed = LojPed.NumPed' + sFiltro;
      ExecSQL;

    end;
  end;

  //sFiltro := ' Where FatGer.SitGer = ''' + 'Faturado' + ''' and FatGer.' + imptip + ' = ''' + 'Sim' + '''';
  if ckCanceladas.Checked then
    sFiltro := ' Where FatGer.SitGer = ''Cancelado'' '
  else
    sFiltro := ' Where FatGer.SitGer = ''Faturado'' and ' + imptip;

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqUfeRes.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.UfeGer = ''' + EdPsqUfeRes.Text + '''';

  if Trim(EdPsqModPfa.Text) <> '' then
  begin

    if Trim(EdPsqModPfa.Text) <> 'Nao Cadastrados' then
      sFiltro := sFiltro + ' and EstPfa.ModPfa = ''' + EdPsqModPfa.Text + ''''
    else
      sFiltro := sFiltro + ' and FinCli.CodMcr = ''' + '1' + '''';

  end;

  if Trim(EdPsqTipOpe.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.TipPfa = ''' + EdPsqTipOpe.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.CodCli = ''' + EdPsqCodCli.Text + '''';

  if ckDataCan.Checked then
  begin
    if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
      sFiltro := sFiltro + ' and FatGer.DTECAN >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
    if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
      sFiltro := sFiltro + ' and FatGer.DTECAN <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';
  end
  else
  begin
    if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
      sFiltro := sFiltro + ' and FatGer.DteFat >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
    if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
      sFiltro := sFiltro + ' and FatGer.DteFat <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

    if Trim(fLimpaStr(EdPsqDteNf1.Text)) <> '' then
      sFiltro := sFiltro + ' and FatGer.DteNfe >= ''' + fDateToSQL(EdPsqDteNf1.Date) + '''';
    if Trim(fLimpaStr(EdPsqDteNf2.Text)) <> '' then
      sFiltro := sFiltro + ' and FatGer.DteNfe <= ''' + fDateToSQL(EdPsqDteNf2.Date) + '''';
  end;
  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof,ModPfa,DteFat,DteNfe)' +
      ' Select ''' + SeqArq + ''',' +
      '        FatGer.NroNfs,' +
      '        FinCli.NomCli,' +
      '        FatGer.TotIt1,' +
      '        FatGer.TotGe1,' +
      '        FatGer.TotIc1,' +
      '        FatGer.TotIp1,' +
      '        FatGer.TotPis,' +
      '        FatGer.Totcof,' +
      '        EstPfa.ModPfa,' +
      '        FatGer.DteFat,' +
      '        FatGer.DteNfe'+  
      ' From FatGer LEFT JOIN FinCli ON (FatGer.CodCli = FinCli.CodCli)' +
      '             LEFT JOIN EstPfa ON (FatGer.CodPfa = EstPfa.CodPfa)' +
      '                             AND (FatGer.TipPfa = EstPfa.TipPfa)' + sFiltro;
    ExecSQL;

  end;

  if ckCanceladas.Checked then
    sFiltro := ' Where FatDCl.SitGer = ''' + 'Cancelado' + ''''
  else
    sFiltro := ' Where FatDCl.SitGer = ''' + 'Faturado' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.CodEmp = ''' + EdPsqCodEmp.Text + '''';
  if Trim(EdPsqUfeRes.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.UfeGer = ''' + EdPsqUfeRes.Text + '''';

  if Trim(EdPsqModPfa.Text) <> '' then
  begin

    if Trim(EdPsqModPfa.Text) <> 'Nao Cadastrados' then
      sFiltro := sFiltro + ' and EstPfa.ModPfa = ''' + EdPsqModPfa.Text + ''''
    else
      sFiltro := sFiltro + ' and FinCli.CodMcr = ''' + '1' + '''';

  end;

  if Trim(EdPsqTipOpe.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.TipPfa = ''' + EdPsqTipOpe.Text + '''';
  if Trim(EdPsqCodCli.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.CodCli = ''' + EdPsqCodCli.Text + '''';

  if ckDataCan.Checked then
  begin
    if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
      sFiltro := sFiltro + ' and FatDCl.DteFat >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
    if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
      sFiltro := sFiltro + ' and FatDCl.DteFat <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';
  end
  else
  begin
    if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
      sFiltro := sFiltro + ' and FatDCl.DteFat >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
    if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
      sFiltro := sFiltro + ' and FatDCl.DteFat <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';
  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof,ModPfa,DteFat)' +
      ' Select ''' + SeqArq + ''',' +
      '        FatDCl.NroNfs,' +
      '        FinCli.NomCli,' +
      '        FatDCl.TotIt1,' +
      '        FatDCl.TotGe1,' +
      '        FatDCl.TotIc1,' +
      '        FatDCl.TotIp1,' +
      '        FatDCl.TotPis,' +
      '        FatDCl.Totcof,' +
      '        EstPfa.ModPfa,' +
      '        FatDCl.DteFat' +
      ' From FatDCl LEFT JOIN FinCli ON (FatDCl.CodCli = FinCli.CodCli)' +
      '             LEFT JOIN EstPfa ON (FatDCl.CodPfa = EstPfa.CodPfa)' +
      '                             AND (FatDCl.TipPfa = EstPfa.TipPfa)' + sFiltro;
    ExecSQL;

  end;

  if (Trim(EdPsqTipOpe.Text) = '') or (Trim(EdPsqTipOpe.Text) = 'Entrada') then
  begin

    //sFiltro := ' Where FatDev.SitDev = ''' + 'Devolvido' + ''' and FatDev.NroNfs > ''' + '0' + ''' and FatDev.FlgFsc = ''' + 'Nao' + ''' and FatDev.' + imptip + ' = ''' + 'Sim' + '''';
    if ckCanceladas.Checked then
      sFiltro := ' Where FatDev.SitDev = ''Cancelado'' '
    else
      sFiltro := ' Where FatDev.SitDev = ''Devolvido'' and FatDev.NroNfs > ''0'' and FatDev.FlgFsc = ''Nao'' and ' + imptip;

    if Trim(EdPsqCodEmp.Text) <> '' then
      sFiltro := sFiltro + ' and FatDev.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
    if Trim(EdPsqUfeRes.Text) <> '' then
      sFiltro := sFiltro + ' and FatDev.UfeGer = ' + QuotedStr(EdPsqUfeRes.Text);

    if Trim(EdPsqModPfa.Text) <> '' then
    begin

      if Trim(EdPsqModPfa.Text) <> 'Nao Cadastrados' then
        sFiltro := sFiltro + ' and FatDev.ModPfa = ' + QuotedStr(EdPsqModPfa.Text)
      else
        sFiltro := sFiltro + ' and FinCli.CodMcr = ' + QuotedStr('1');

    end;

    if Trim(EdPsqCodCli.Text) <> '' then
      sFiltro := sFiltro + ' and FatDev.CodCli = ' + QuotedStr(EdPsqCodCli.Text);

    if ckDataCan.Checked then
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DTECAN >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DTECAN <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';
    end
    else
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

      if Trim(fLimpaStr(EdPsqDteNf1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteNfe >= ''' + fDateToSQL(EdPsqDteNf1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteNf2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteNfe <= ''' + fDateToSQL(EdPsqDteNf2.Date) + '''';
    end;
    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof,ModPfa,DteFat,DteNfe)' +
        ' Select ''' + SeqArq + ''',' +
        '        FatDev.NroNfs,' +
        '        FinCli.NomCli,' +
        '        FatDev.TotDev,' +
        '        FatDev.TotGer,' +
        '        FatDev.TotIcm,' +
        '        FatDev.TotIpi,' +
        '        FatDev.TotPis,' +
        '        FatDev.Totcof,' +
        '        FatDev.ModDev,' +
        '        FatDev.DteDev,' +
        '        FatDev.DteNfe'+
        ' From FatDev LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)' + sFiltro;
      ExecSQL;

    end;

    if ckCanceladas.Checked then
      sFiltro := ' Where FatDev.SitDev = ''Cancelado'' '
    else
      sFiltro := ' Where FatDev.SitDev = ''' + 'Devolvido' + ''' and FatDev.FlgFsc = ''' + 'Sim' + '''';

    if Trim(EdPsqCodEmp.Text) <> '' then
      sFiltro := sFiltro + ' and FatDev.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
    if Trim(EdPsqUfeRes.Text) <> '' then
      sFiltro := sFiltro + ' and FatDev.UfeGer = ' + QuotedStr(EdPsqUfeRes.Text);

    if Trim(EdPsqModPfa.Text) <> '' then
    begin

      if Trim(EdPsqModPfa.Text) <> 'Nao Cadastrados' then
        sFiltro := sFiltro + ' and FatDev.ModPfa = ' + QuotedStr(EdPsqModPfa.Text)
      else
        sFiltro := sFiltro + ' and FinCli.CodMcr = ' + QuotedStr('1');

    end;

    if Trim(EdPsqCodCli.Text) <> '' then
      sFiltro := sFiltro + ' and FatDev.CodCli = ' + QuotedStr(EdPsqCodCli.Text);

    if ckDataCan.Checked then
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DTECAN >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DTECAN <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';
    end
    else
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

      if Trim(fLimpaStr(EdPsqDteNf1.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteNfe >= ''' + fDateToSQL(EdPsqDteNf1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteNf2.Text)) <> '' then
        sFiltro := sFiltro + ' and FatDev.DteNfe <= ''' + fDateToSQL(EdPsqDteNf2.Date) + '''';
    end;
    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof,ModPfa,DteFat,DteNfe)' +
        ' Select ''' + SeqArq + ''',' +
        '        FatDev.NroNfs,' +
        '        FinCli.NomCli,' +
        '        FatDev.TotDev,' +
        '        FatDev.TotGer,' +
        '        FatDev.TotIcm,' +
        '        FatDev.TotIpi,' +
        '        FatDev.TotPis,' +
        '        FatDev.Totcof,' +
        '        FatDev.ModDev,' +
        '        FatDev.DteDev,' +
        '        FatDev.DteNfe' + 
        ' From FatDev LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)' + sFiltro;
      ExecSQL;

    end;

    if ckCanceladas.Checked then
      sFiltro := ' Where CmpEnt.SitEnt = ' + QuotedStr('Cancelada') + ' and ( CmpEnt.CodTip = ' + QuotedStr('1') + ' or CmpEnt.CodTip = ' + QuotedStr('2') +
        ' )'
    else
      sFiltro := ' Where CmpEnt.SitEnt = ' + QuotedStr('Concluida') + ' and ( CmpEnt.CodTip = ' + QuotedStr('1') + ' or CmpEnt.CodTip = ' + QuotedStr('2') +
        ' )';

    if Trim(EdPsqCodEmp.Text) <> '' then
      sFiltro := sFiltro + ' and CmpEnt.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
    if Trim(EdPsqUfeRes.Text) <> '' then
      sFiltro := sFiltro + ' and CmpEnt.UfeEnt = ' + QuotedStr(EdPsqUfeRes.Text);

    if Trim(EdPsqModPfa.Text) <> '' then
    begin

      if Trim(EdPsqModPfa.Text) <> 'Nao Cadastrados' then
        sFiltro := sFiltro + ' and CmpEnt.ModPfa = ' + QuotedStr(EdPsqModPfa.Text);

    end;

    if Trim(EdPsqCodFor.Text) <> '' then
      sFiltro := sFiltro + ' and CmpEnt.CodFor = ' + QuotedStr(EdPsqCodFor.Text);

    if ckDataCan.Checked then
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpEnt.DteOpe >= ' + QuotedStr(fDateToSQL(EdPsqDteFt1.Date));
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpEnt.DteOpe <= ' + QuotedStr(fDateToSQL(EdPsqDteFt2.Date));
    end
    else
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpEnt.DteOpe >= ' + QuotedStr(fDateToSQL(EdPsqDteFt1.Date));
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpEnt.DteOpe <= ' + QuotedStr(fDateToSQL(EdPsqDteFt2.Date));
    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof,ModPfa,DteFat)' +
        ' Select ' + QuotedStr(SeqArq) + ',' +
        '        CmpEnt.NumDoc,' +
        '        FinFor.NomFor,' +
        '        CmpEnt.TotEnc,' +
        '        CmpEnt.TotGec,' +
        '        CmpEnt.TotIcc,' +
        '        CmpEnt.TotIpc,' + QuotedStr('0') + ',' + QuotedStr('0') + ',' +
        '        CmpEnt.ModPfa,' +
        '        CmpEnt.DteOpe' +
        ' From CmpEnt LEFT JOIN FinFor ON (CmpEnt.CodFor = FinFor.CodFor)' + sFiltro;
      ExecSQL;

    end;
  end;

  if (Trim(EdPsqTipOpe.Text) = '') or (Trim(EdPsqTipOpe.Text) = 'Saida') then
  begin

    if ckCanceladas.Checked then
      sFiltro := ' Where CmpNfs.SitNfs = ''Cancelado'' '
    else
      sFiltro := ' Where ( CmpNfs.SitNfs = ''Concluido'' or '
        + ' CmpNfs.SitNfs = ''Recebido'' or '
        + ' CmpNfs.SitNfs = ''Faturado'' or '
        + ' CmpNfs.SitNfs = ''Recebido Parcialmente'' or '
        + ' CmpNfs.SitNfs = ''Saldo Nao Atendido'' )'
        + '   and   CmpNfs.NroNfs > 0'
        + //'   and   CmpNfs.' + imptip + ' = ''' + 'Sim' + '''';
      '   and ' + imptip;

    if Trim(EdPsqCodEmp.Text) <> '' then
      sFiltro := sFiltro + ' and CmpNfs.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
    if Trim(EdPsqUfeRes.Text) <> '' then
      sFiltro := sFiltro + ' and CmpNfs.UfeNfs = ' + QuotedStr(EdPsqUfeRes.Text);

    if Trim(EdPsqModPfa.Text) <> '' then
    begin

      if Trim(EdPsqModPfa.Text) <> 'Nao Cadastrados' then
        sFiltro := sFiltro + ' and CmpNfs.ModPfa = ' + QuotedStr(EdPsqModPfa.Text);

    end;

    if Trim(EdPsqCodFor.Text) <> '' then
      sFiltro := sFiltro + ' and CmpNfs.CodFor = ' + QuotedStr(EdPsqCodFor.Text);

    if ckDataCan.Checked then
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.DTECAN >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.DTECAN <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';
    end
    else
    begin
      if Trim(fLimpaStr(EdPsqDteFt1.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.DteFat >= ''' + fDateToSQL(EdPsqDteFt1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteFt2.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.DteFat <= ''' + fDateToSQL(EdPsqDteFt2.Date) + '''';

      if Trim(fLimpaStr(EdPsqDteNf1.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.DteNfe >= ''' + fDateToSQL(EdPsqDteNf1.Date) + '''';
      if Trim(fLimpaStr(EdPsqDteNf2.Text)) <> '' then
        sFiltro := sFiltro + ' and CmpNfs.DteNfe <= ''' + fDateToSQL(EdPsqDteNf2.Date) + '''';
    end;

    with quSQL, SQL do
    begin

      Close;
      Text := ' Insert Into FatR16(SeqArq,NroNfs,ApeCli,TotFat,TotGer,TotIcm,TotIpi,TotPis,TotCof,ModPfa,DteFat,DteNfe)' +
        ' Select ''' + SeqArq + ''',' +
        '        CmpNfs.NroNfs,' +
        '        FinFor.NomFor,' +
        '        CmpNfs.TotIt1,' +
        '        CmpNfs.TotGe1,' +
        '        CmpNfs.TotIc1,' +
        '        CmpNfs.TotIp1,' +
        '        CmpNfs.TotPis,' +
        '        CmpNfs.Totcof,' +
        '        CmpNfs.ModPfa,' +
        '        CmpNfs.DteFat,' +
        '        CmpNfs.DteNfe' +
        ' From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor)' + sFiltro;
      ExecSQL;

    end;
  end;

  with FatR16, SQL do
  begin
    filtroFinal := '';
    if Trim(fLimpaStr(EdPsqDteNf1.Text)) <> '' then
      filtroFinal := filtroFinal + ' and DteNfe >= ''' + fDateToSQL(EdPsqDteNf1.Date) + '''';

    if Trim(fLimpaStr(EdPsqDteNf2.Text)) <> '' then
      filtroFinal := filtroFinal + ' and DteNfe <= ''' + fDateToSQL(EdPsqDteNf2.Date) + '''';

    Close;
    Text := ' Select * From FatR16 Where SeqArq = ' + QuotedStr(SeqArq) + filtroFinal + ' Order by FatR16.DteFat,FatR16.NroNfs';
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

procedure TfmFatR15.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmFatR15.bPsqEmpClick(Sender: TObject);
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

procedure TfmFatR15.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmFatR15.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then
    bImprimir.OnClick(Sender);
end;

procedure TfmFatR15.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqUfeRes.SetFocus;
end;

procedure TfmFatR15.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmFatR15.bImprimirClick(Sender: TObject);
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

  if ckDataCan.Checked then
    dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Cancelados no Periodo de : ' + EdPsqDteFt1.Text + ' a ' + EdPsqDteFt2.Text)
  else
    dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add('Faturados no Periodo de : ' + EdPsqDteFt1.Text + ' a ' + EdPsqDteFt2.Text);

  dxComponentPrinterLink1.PrinterPage.PageHeader.LeftTitle.Add(' ');

  dxComponentPrinterLink1.PrinterPage.PageFooter.LeftTitle.Add(GApeEmp);

  dxComponentPrinterLink1.Preview;

end;

procedure TfmFatR15.grR16ReloadGroupList(Sender: TObject);
begin
  inherited;
  (Sender as TdxDBGrid).FullExpand;
end;

procedure TfmFatR15.HTMLClick(Sender: TObject);
begin
  inherited;
  Save('htm', 'HTML File (*.htm; *.html)|*.htm', 'Relação de Notas Fiscais Emitidas (Global).htm', grR16.SaveToHTML);
end;

procedure TfmFatR15.ExcelClick(Sender: TObject);
begin
  inherited;
  Save('xls', 'Microsoft Excel 4.0 Worksheet (*.xls)|*.xls', 'Relação de Notas Fiscais Emitidas (Global).xls', grR16.SaveToXLS);
end;

procedure TfmFatR15.XMLClick(Sender: TObject);
begin
  inherited;
  Save('xml', 'XML File (*.xml)|*.xml', 'Relação de Notas Fiscais Emitidas (Global).xml', grR16.SaveToXML);
end;

procedure TfmFatR15.FormClose(Sender: TObject; var Action: TCloseAction);
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

procedure TfmFatR15.FormDestroy(Sender: TObject);
begin
  inherited;
  fmFatR15 := nil;
end;

procedure TfmFatR15.bPsqCliClick(Sender: TObject);
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

procedure TfmFatR15.EdPsqCodCliExit(Sender: TObject);
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

procedure TfmFatR15.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word;
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

procedure TfmFatR15.EdPsqCodForExit(Sender: TObject);
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

procedure TfmFatR15.EdPsqCodForKeyDown(Sender: TObject; var Key: Word;
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

procedure TfmFatR15.bPsqForClick(Sender: TObject);
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

procedure TfmFatR15.ckDataCanClick(Sender: TObject);
begin
  inherited;
  if ckDataCan.Checked then
    Label28.Caption := 'Canceladas no Periodo de'
  else
    Label28.Caption := 'Emitidas no Periodo de';
end;

procedure TfmFatR15.ckCanceladasClick(Sender: TObject);
begin
  inherited;
  ckDataCan.Enabled := ckCanceladas.Checked;

  if not ckDataCan.Enabled then
    ckDataCan.Checked := ckCanceladas.Checked;
end;

end.
