unit FatR16;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, dxTL,
  dxDBCtrl, dxDBGrid, dxDBTLCl, dxGrClms, ppBands, ppClass, ppCtrls, ppStrtch,
  ppMemo, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv,
  ppDBPipe, dxColorPickEdit, dxColorEdit, dxColorDateEdit, clipbrd;

type
  TSaveMethod = procedure(const FileName: string; ASaveAll: Boolean) of object;

  TfmFatR16 = class(TfmPadrao)
    FatR13: TwwQuery;
    DsR13: TwwDataSource;
    PaintBox: TPaintBox;
    Label17: TLabel;
    EdPsqDteres1: TdxColorDateEdit;
    Label18: TLabel;
    EdPsqDteres2: TdxColorDateEdit;
    Label26: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    quSql: TwwQuery;
    Label5: TLabel;
    Label9: TLabel;
    bImprimir: TBitBtn;
    FatR13DTEMOV: TDateTimeField;
    FatR13TOTVEN: TFloatField;
    FatR13TOTDIC: TFloatField;
    FatR13TOTDIP: TFloatField;
    FatR13TOTCMP: TFloatField;
    FatR13TOTCIC: TFloatField;
    FatR13TOTCIP: TFloatField;
    FatR13TOTDEV: TFloatField;
    FatR13TDEICM: TFloatField;
    FatR13TDEIPI: TFloatField;
    FatR13SLDMOV: TFloatField;
    dbReport: TppDBPipeline;
    ppReport: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel22: TppLabel;
    ppLabel6: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel7: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppFiltro1: TppMemo;
    ppFiltro2: TppMemo;
    ppDetailBand1: TppDetailBand;
    ppDteMov: TppDBText;
    ppTotVen: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppTotDic: TppDBText;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppTotCmp: TppDBText;
    ppTotCic: TppDBText;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppSldIcm: TppLabel;
    ppLabel10: TppLabel;
    ppTotGer1: TppDBCalc;
    ppTotGer2: TppDBCalc;
    ppTotGer3: TppDBCalc;
    ppTotGer4: TppDBCalc;
    FatR13SEQARQ: TStringField;
    ppSldMov: TppDBText;
    Label12: TLabel;
    Label14: TLabel;
    EdPsqModPfa: TdxColorPickEdit;
    ppFooterBand1: TppFooterBand;
    ppApeEmp: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure ppReportBeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ppFooterBand1BeforePrint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    SeqArq: string;
  end;

var
  sGeral: string;
  fmFatR16: TfmFatR16;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, PsqEmp, PsqCli, PsqVen, PsqPfa,
  AuxPsq, ManGDB, ManPri, PsqGve, PsqCve, FPreview;

{$R *.DFM}

procedure TfmFatR16.FormCreate(Sender: TObject);
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

procedure TfmFatR16.bSelecionarClick(Sender: TObject);
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

  sFiltro := ' Where ( FatPed.SitFat = ''' + 'Faturado' + ''' or FatPed.SitFat = ''' + 'Devolvido' + '''  ) and FatPed.ENVNFE = ''' + 'Sim' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and FatPed.ModPfa = ''' + EdPsqModPfa.Text + '''';

  sFiltro := sFiltro + ' and FatPe2.CodPro LIKE ' + QuotedStr('9%') + ' and FatPe2.TrbIpi = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR13 Where SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR13(SeqArq,DteMov,TotVen,TotDic,TotDip,TotCmp,TotCic,TotCip,TotDev,TdeIcm,TdeIpi,SldMov)' +
      ' Select ''' + SeqArq + ''',' +
      '        FatPed.DteFat,' +
      '        Round(Sum(FatPe2.TotGe2),2),' +
      '        Round(Sum(FatPe2.TotIpi),2),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' +
        '0' + '''' +
      ' From FatPe2 LEFT JOIN FatPed ON (FatPe2.CodEmp = FatPed.CodEmp)' +
      '                             AND (FatPe2.DteRes = FatPed.DteRes)' +
      '                             AND (FatPe2.NumRes = FatPed.NumRes)' +
      '                             AND (FatPe2.SeqLib = FatPed.SeqLib)' +
      '                             AND (FatPe2.SeqFat = FatPed.SeqFat)' + sFiltro + ' Group by FatPed.DteFat';
    ExecSQL;

  end;

  sFiltro := ' and LojFat.SitFat = ' + QuotedStr('Faturado');

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and LojFat.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and LojFat.DteFat >= ' + QuotedStr(fDateToSQL(EdPsqDteRes1.Date));
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and LojFat.DteFat <= ' + QuotedStr(fDateToSQL(EdPsqDteRes2.Date));

  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and LojFat.ModPfa = ' + QuotedStr(EdPsqModPfa.Text);

  sFiltro := sFiltro + ' and LojFa2.CodPro LIKE ' + QuotedStr('9%') + ' and LojFa2.TrbIpi = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR13(SeqArq,DteMov,TotVen,TotDic,TotDip,TotCmp,TotCic,TotCip,TotDev,TdeIcm,TdeIpi,SldMov)' +
      ' Select ''' + SeqArq + ''',' +
      '        LojFat.DteFat,' +
      '        Round(Sum(LojFa2.TotGe2),2),' +
      '        Round(Sum(LojFa2.TotIpi),2),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' +
        '0' + '''' +
      ' From LojFa2,LojFat,LojPed' +
      ' Where LojFa2.CodEmp = LojFat.CodEmp' +
      '   and LojFa2.DtePed = LojFat.DtePed' +
      '   and LojFa2.NumPed = LojFat.NumPed' +
      '   and LojFat.CodEmp = LojPed.CodEmp' +
      '   and LojFat.DtePed = LojPed.DtePed' +
      '   and LojFat.NumPed = LojPed.NumPed' + sFiltro + ' Group by LojFat.DteFat';
    ExecSQL;

  end;

  sFiltro := ' and FatGer.SitGer = ''' + 'Faturado' + ''' and FatGer.TipPfa = ''' + 'Saida' + ''' and FatGer.ENVNFE = ''' + 'Sim' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteFat >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteFat <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and EstPfa.ModPfa = ''' + EdPsqModPfa.Text + '''';

  sFiltro := sFiltro + ' and FatGe2.CodPro LIKE ' + QuotedStr('9%') + ' and FatGe2.TrbIpi = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR13(SeqArq,DteMov,TotVen,TotDic,TotDip,TotCmp,TotCic,TotCip,TotDev,TdeIcm,TdeIpi,SldMov)' +
      ' Select ''' + SeqArq + ''',' +
      '        FatGer.DteFat,' +
      '        Round(Sum(FatGe2.TotGe2),2),' +
      '        Round(Sum(FatGe2.TotIpi),2),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' +
        '0' + '''' +
      ' From FatGe2,FatGer,EstPfa' +
      ' Where FatGe2.CodEmp = FatGer.CodEmp' +
      '   and FatGe2.DteGer = FatGer.DteGer' +
      '   and FatGe2.NumGer = FatGer.NumGer' +
      '   and FatGer.CodPfa = EstPfa.CodPfa' +
      '   and FatGer.TipPfa = EstPfa.TipPfa' + sFiltro +
      ' Group by FatGer.DteFat';
    ExecSQL;

  end;

  sFiltro := ' and FatDCl.SitGer = ''' + 'Faturado' + ''' and FatDCl.TipPfa = ''' + 'Saida' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and EstPfa.ModPfa = ''' + EdPsqModPfa.Text + '''';

  sFiltro := sFiltro + ' and FatDc2.CodPro LIKE ' + QuotedStr('9%') + ' and FatDc2.TrbIpi = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR13(SeqArq,DteMov,TotVen,TotDic,TotDip,TotCmp,TotCic,TotCip,TotDev,TdeIcm,TdeIpi,SldMov)' +
      ' Select ''' + SeqArq + ''',' +
      '        FatDCl.DteFat,' +
      '        Round(Sum(FatDC2.TotGe2),2),' +
      '        Round(Sum(FatDC2.TotIpi),2),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' +
        '0' + '''' +
      ' From FatDc2,FatDCl,EstPfa' +
      ' Where FatDc2.CodEmp = FatDcl.CodEmp' +
      '   and FatDc2.DteGer = FatDcl.DteGer' +
      '   and FatDc2.NumGer = FatDcl.NumGer' +
      '   and FatDCl.CodPfa = EstPfa.CodPfa' +
      '   and FatDCl.TipPfa = EstPfa.TipPfa' + sFiltro +
      ' Group by FatDCl.DteFat';
    ExecSQL;

  end;

  sFiltro := ' and ( CmpNfs.SitNfs = ''' + 'Concluido' + ''' or CmpNfs.SitNfs = ''' + 'Recebido' + ''' or CmpNfs.SitNfs = ''' + 'Recebido Parcialmente' +
    ''' or CmpNfs.SitNfs = ''' + 'Saldo Nao Atendido' + ''' )' +
    ' and   CmpNfs.NroNfs > ''' + '0' + '''' +
    ' and   CmpNfs.ENVNFE = ''' + 'Sim' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.DteFat >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.DteFat <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.ModPfa = ''' + EdPsqModPfa.Text + '''';

  sFiltro := sFiltro + ' and CmpNf2.CodPro LIKE ' + QuotedStr('9%') + ' and CmpNf2.TrbIpi = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR13(SeqArq,DteMov,TotVen,TotDic,TotDip,TotCmp,TotCic,TotCip,TotDev,TdeIcm,TdeIpi,SldMov)' +
      ' Select ''' + SeqArq + ''',' +
      '        CmpNfs.DteFat,' +
      '        Round(Sum(CmpNf2.TotNf2),2),' +
      '        Round(Sum(CmpNf2.TotIpi),2),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' +
        '0' + '''' +
      ' From CmpNf2,CmpNfs' +
      ' Where CmpNf2.CodEmp = CmpNfs.CodEmp' +
      '   and CmpNf2.DteNfs = CmpNfs.DteNfs' +
      '   and CmpNf2.SeqNfs = CmpNfs.SeqNfs' + sFiltro +
      ' Group by CmpNfs.DteFat';
    ExecSQL;

  end;

  sFiltro := ' and FatDev.SitDev = ''' + 'Devolvido' + ''' and FatDev.NroNfs > ''' + '0' + ''' and FatDev.FlgFsc = ''' + 'Nao' + ''' and FatDev.ENVNFE = ''' +
    'Sim' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.ModPfa = ''' + EdPsqModPfa.Text + '''';

  sFiltro := sFiltro + ' and FatDv2.CodPro LIKE ' + QuotedStr('9%') + ' and FatDv2.TrbIpi = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR13(SeqArq,DteMov,TotVen,TotDic,TotDip,TotCmp,TotCic,TotCip,TotDev,TdeIcm,TdeIpi,SldMov)' +
      ' Select ''' + SeqArq + ''',' +
      '        FatDev.DteDev,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' +
      '        Round(Sum(FatDv2.TotGe2),2),' +
      '        Round(Sum(FatDv2.TotIpi),2),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' +
      ' From FatDv2,FatDev' +
      ' Where FatDv2.CodEmp = FatDev.CodEmp' +
      '   and FatDv2.DteRes = FatDev.DteRes' +
      '   and FatDv2.NumRes = FatDev.NumRes' +
      '   and FatDv2.SeqLib = FatDev.SeqLib' +
      '   and FatDv2.SeqFat = FatDev.SeqFat' +
      '   and FatDv2.SeqDev = FatDev.SeqDev' + sFiltro +
      ' Group by FatDev.DteDev';
    ExecSQL;

  end;

  sFiltro := ' and FatDev.SitDev = ''' + 'Devolvido' + ''' and FatDev.FlgFsc = ''' + 'Sim' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and FatDev.ModPfa = ''' + EdPsqModPfa.Text + '''';

  sFiltro := sFiltro + ' and FatDv2.CodPro LIKE ' + QuotedStr('9%') + ' and FatDv2.TrbIpi = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR13(SeqArq,DteMov,TotVen,TotDic,TotDip,TotCmp,TotCic,TotCip,TotDev,TdeIcm,TdeIpi,SldMov)' +
      ' Select ''' + SeqArq + ''',' +
      '        FatDev.DteDev,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' +
      '        Round(Sum(FatDv2.TotGe2),2),' +
      '        Round(Sum(FatDv2.TotIpi),2),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' +
      ' From FatDv2,FatDev' +
      ' Where FatDv2.CodEmp = FatDev.CodEmp' +
      '   and FatDv2.DteRes = FatDev.DteRes' +
      '   and FatDv2.NumRes = FatDev.NumRes' +
      '   and FatDv2.SeqLib = FatDev.SeqLib' +
      '   and FatDv2.SeqFat = FatDev.SeqFat' +
      '   and FatDv2.SeqDev = FatDev.SeqDev' + sFiltro +
      ' Group by FatDev.DteDev';
    ExecSQL;

  end;

  sFiltro := ' and FatGer.SitGer = ''' + 'Faturado' + ''' and FatGer.TipPfa = ''' + 'Entrada' + ''' and FatGer.ENVNFE = ''' + 'Sim' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatGer.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteFat >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteFat <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and EstPfa.ModPfa = ''' + EdPsqModPfa.Text + '''';

  sFiltro := sFiltro + ' and FatGe2.CodPro LIKE ' + QuotedStr('9%') + ' and FatGe2.TrbIpi = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR13(SeqArq,DteMov,TotVen,TotDic,TotDip,TotCmp,TotCic,TotCip,TotDev,TdeIcm,TdeIpi,SldMov)' +
      ' Select ''' + SeqArq + ''',' +
      '        FatGer.DteFat,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' +
      '        Round(Sum(FatGe2.TotGe2),2),' +
      '        Round(Sum(FatGe2.TotIpi),2),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' +
      ' From FatGe2,FatGer,EstPfa' +
      ' Where FatGe2.CodEmp = FatGer.CodEmp' +
      '   and FatGe2.DteGer = FatGer.DteGer' +
      '   and FatGe2.NumGer = FatGer.NumGer' +
      '   and FatGer.CodPfa = EstPfa.CodPfa' +
      '   and FatGer.TipPfa = EstPfa.TipPfa' + sFiltro +
      ' Group by FatGer.DteFat';
    ExecSQL;

  end;

  sFiltro := ' and FatDCl.SitGer = ''' + 'Faturado' + ''' and FatDCl.TipPfa = ''' + 'Entrada' + '''';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and FatDCl.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and EstPfa.ModPfa = ''' + EdPsqModPfa.Text + '''';

  sFiltro := sFiltro + ' and FatDc2.CodPro LIKE ' + QuotedStr('9%') + ' and FatDc2.TrbIpi = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR13(SeqArq,DteMov,TotVen,TotDic,TotDip,TotCmp,TotCic,TotCip,TotDev,TdeIcm,TdeIpi,SldMov)' +
      ' Select ''' + SeqArq + ''',' +
      '        FatDCl.DteFat,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' +
      '        Round(Sum(FatDC2.TotGe2),2),' +
      '        Round(Sum(FatDC2.TotIpi),2),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' +
      ' From FatDc2,FatDCl,EstPfa' +
      ' Where FatDc2.CodEmp = FatDcl.CodEmp' +
      '   and FatDc2.DteGer = FatDcl.DteGer' +
      '   and FatDc2.NumGer = FatDcl.NumGer' +
      '   and FatDCl.CodPfa = EstPfa.CodPfa' +
      '   and FatDCl.TipPfa = EstPfa.TipPfa' + sFiltro +
      ' Group by FatDCl.DteFat';
    ExecSQL;

  end;

  sFiltro := ' and CmpEnt.SitEnt = ' + QuotedStr('Concluida') + ' and not CmpEnt.CodTip = 3';

  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and CmpEnt.CodEmp = ''' + EdPsqCodEmp.Text + '''';

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpEnt.DteOpe >= ''' + fDateToSQL(EdPsqDteRes1.Date) + '''';
  if Trim(fLimpaStr(EdPsqDteRes2.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpEnt.DteOpe <= ''' + fDateToSQL(EdPsqDteRes2.Date) + '''';

  if Trim(EdPsqModPfa.Text) <> '' then
    sFiltro := sFiltro + ' and CmpEnt.ModPfa = ''' + EdPsqModPfa.Text + '''';

  sFiltro := sFiltro + ' and CmpEn2.CodPro LIKE ' + QuotedStr('9%') + ' and CmpEn2.TrbIpi = ' + QuotedStr('Sim');

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR13(SeqArq,DteMov,TotVen,TotDic,TotDip,TotCmp,TotCic,TotCip,TotDev,TdeIcm,TdeIpi,SldMov)' +
      ' Select ''' + SeqArq + ''',' +
      '        CmpEnt.DteOpe,''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',' +
      '        Round(Sum(CmpEn2.TotGe2),2),' +
      '        Round(Sum(CmpEn2.TotIpi),2),''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + ''',''' + '0' + '''' +
      ' From CmpEn2,CmpEnt' +
      ' Where CmpEn2.CodEmp = CmpEnt.CodEmp' +
      '   and CmpEn2.DteEnt = CmpEnt.DteEnt' +
      '   and CmpEn2.NumEnt = CmpEnt.NumEnt' + sFiltro +
      ' Group by CmpEnt.DteOpe';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR14 Where SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatR14' +
      ' Select SeqArq,''' + '1' + ''',' +
      '        DteMov,' +
      '        Round(Sum(TOTVEN),2) as TOTVEN,' +
      '        Round(Sum(TOTDIC),2) as TOTDIC,' +
      '        Round(Sum(TOTDIP),2) as TOTDIP,' +
      '        Round(Sum(TOTCMP),2) as TOTCMP,' +
      '        Round(Sum(TOTCIC),2) as TOTCIC,' +
      '        Round(Sum(TOTCIP),2) as TOTCIP,' +
      '        Round(Sum(TOTDEV),2) as TOTDEV,' +
      '        Round(Sum(TDEICM),2) as TDEICM,' +
      '        Round(Sum(TDEIPI),2) as TDEIPI,' +
      '        Round(Sum(SLDMOV),2) as SLDMOV' +
      ' From FatR13 Where FatR13.SeqArq = ''' + SeqArq + '''' +
      ' Group by FatR13.SeqArq,FatR13.DteMov';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR13 Where SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with FatR13, SQL do
  begin

    Close;
    Text := ' Select * From FatR14 Where SeqArq = ''' + SeqArq + '''';
    Open;
    ;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatR14 Where SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  if FatR13DteMov.Value > 0 then
  begin

    bImprimir.Enabled := True;

    bImprimir.SetFocus;

  end
  else
  begin

    bImprimir.Enabled := False;

    bSelecionar.SetFocus;

  end;
end;

procedure TfmFatR16.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmFatR16.BbPsqEmpClick(Sender: TObject);
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

procedure TfmFatR16.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmFatR16.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmFatR16.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmFatR16.bImprimirClick(Sender: TObject);
begin
  inherited;
  if FatR13DteMov.Value > 0 then
  begin

    try

      ppReport.DeviceType := 'Screen';
      fmPreview := TfmPreview.Create(fmFatR16);
      fmPreview.ppViewer.Report := ppReport;
      ppReport.PrintToDevices;
      fmPreview.ShowModal;

      if Assigned(ppReport.AfterPrint) then
        ppReport.AfterPrint(Sender);

    finally

      FreeAndNil(fmPreview);

    end;
  end;
end;

procedure TfmFatR16.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmFatR16.ppReportBeforePrint(Sender: TObject);
begin
  inherited;

  sGeral := ' ';

end;

procedure TfmFatR16.ppDetailBand1BeforePrint(Sender: TObject);
begin
  inherited;

  if FatR13SldMov.Value > 0 then
    ppLabel9.Caption := 'Crédito'
  else
    ppLabel9.Caption := 'Débito';

end;

procedure TfmFatR16.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;
  if Trim(sGeral) = '' then
  begin

    sGeral := 'S';

    ppSldIcm.Caption := FormatFloat('###,###,##0.00', FatR13SldMov.Value);

    if FatR13SldMov.Value > 0 then
      ppLabel10.Caption := 'Crédito'
    else
      ppLabel10.Caption := 'Débito';

  end;
end;

procedure TfmFatR16.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;

  ppFiltro1.Lines.Clear;
  ppFiltro2.Lines.Clear;

  ppFiltro1.Lines.Add(' ');
  ppFiltro2.Lines.Add(' ');

  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    ppFiltro1.Lines.Add('Empresa');
    ppFiltro2.Lines.Add(fNumZeros(EdPsqCodEmp.Text, 3) + ' - ' + EdPsqApeEmp.Text);

  end;

  if Trim(fLimpaStr(EdPsqDteRes1.Text)) <> '' then
  begin

    ppFiltro1.Lines.Add('Faturados no Periodo de');
    ppFiltro2.Lines.Add(FormatDateTime('dd/mm/yyyy', EdPsqDteRes1.Date) + ' a ' + FormatDateTime('dd/mm/yyyy', EdPsqDteRes2.Date));

  end;

  ppFiltro1.Lines.Add(' ');
  ppFiltro2.Lines.Add(' ');

end;

procedure TfmFatR16.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmFatR16.FormDestroy(Sender: TObject);
begin
  inherited;
  fmFatR16 := nil;
end;

procedure TfmFatR16.ppFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;
  ppApeEmp.Caption := GApeEmp;
end;

end.
