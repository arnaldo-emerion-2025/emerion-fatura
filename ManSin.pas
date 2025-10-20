unit ManSin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls, Db,
  Wwdatsrc, DBTables, Wwquery, dxExEdtr, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  dxDBEdtr, Buttons, dxfProgressBar, dxColorDateEdit, dxColorEdit, ClipBrd;

type
  TfmManSin = class(TfmPadrao)
    PaintBox: TPaintBox;
    grGSI: ThGrid;
    grPed1: TdxDBGraphicEdit;
    FATGSI: TwwQuery;
    DsGSI: TwwDataSource;
    Label7: TLabel;
    Bevel2: TBevel;
    bSelecionar: TBitBtn;
    Label11: TLabel;
    Bevel3: TBevel;
    bCriarTexto: TBitBtn;
    quSql: TwwQuery;
    SaveDialog: TSaveDialog;
    Label26: TLabel;
    Label3: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    Label17: TLabel;
    Label1: TLabel;
    EdDteFat1: TdxColorDateEdit;
    EdDteFat2: TdxColorDateEdit;
    Label2: TLabel;
    FATGSISEQARQ: TStringField;
    FATGSINRONFS: TIntegerField;
    FATGSIDTEFAT: TDateTimeField;
    FATGSIUFEFAT: TStringField;
    FATGSICODDES: TIntegerField;
    FATGSINOMDES: TStringField;
    FATGSICGCDES: TStringField;
    FATGSIINSDES: TStringField;
    FATGSITOTNOT: TFloatField;
    FATGSIBASICM: TFloatField;
    FATGSITOTICM: TFloatField;
    FATGSIPERICM: TFloatField;
    FATGSIFLGCAN: TStringField;
    FATGSITIPOPE: TStringField;
    FATGSICODCFO: TStringField;
    pnTipOpe: TPanel;
    pnCaption: TPanel;
    FATGSITOTISE: TFloatField;
    FATGSITOTOUT: TFloatField;
    FATGSITOTIPI: TFloatField;
    quSQL1: TwwQuery;
    Panel1: TPanel;
    FATGSITIPNOT: TStringField;
    pnTipNot: TPanel;
    FATGSITRBICM: TStringField;
    FATGSISERNOT: TStringField;
    pnTitulo: TPanel;
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqAnoFatKeyPress(Sender: TObject; var Key: Char);
    procedure bSelecionarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bCriarTextoClick(Sender: TObject);
    procedure DsGSIDataChange(Sender: TObject; Field: TField);
  private
    SeqArq: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManSin: TfmManSin;
const
  _BR = #13;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, ManGDB, PsqEmp, ManPri;

{$R *.DFM}

procedure TfmManSin.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSin.EdPsqAnoFatKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManSin.bSelecionarClick(Sender: TObject);
var
  sFiltro: string;
begin
  inherited;

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

  if Trim(EdPsqCodEmp.Text) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdPsqCodEmp);

  if Trim(fLimpaStr(EdDteFat1.Text)) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdDteFat1);
  if Trim(fLimpaStr(EdDteFat2.Text)) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdDteFat2);

  sFiltro := '';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatSin Where FatSin.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatSi2 Where FatSi2.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatGsi Where FatGsi.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  sFiltro := '';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  sFiltro := sFiltro + ' and   FatPed.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and   FatPed.FlgSin = ''' + 'Sim' + '''' +
    ' and   FatPed.FlgImp = ''' + 'Sim' + '''' +
    ' and ( FatPed.SitFat = ''' + 'Faturado' + ''' or FatPed.SitFat = ''' + 'Devolvido' + ''' )';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,SerNot,EmpRes,DteRes,NumRes,SeqLib,SeqFat,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'Vendas' + ''',''' + 'Nao' + ''',''' + '2' + ''',' +
      ' FatPed.CodEmp,' +
      ' FatPed.DteRes,' +
      ' FatPed.NumRes,' +
      ' FatPed.SeqLib,' +
      ' FatPed.SeqFat,' +
      ' FatPed.TrbIcm,' +
      ' FatPed.TipPfa,' +
      ' FatPed.DteFat,' +
      ' FatPed.UfeFat,' +
      ' FatPe2.CodCfo,' +
      ' FatPed.CodCli,' +
      ' FatPe2.NroNfs,' +
      ' FatPe2.IcmPe2,' +
      ' Sum(FatPe2.TotGe2),' +
      ' Sum(FatPe2.TotDsr),' +
      ' Sum(FatPe2.BasIcm),' +
      ' Sum(FatPe2.TotIcm)' +
      ' From FatPe2,FatPed' +
      ' Where FatPe2.CodEmp = FatPed.CodEmp' +
      '   and FatPe2.DteRes = FatPed.DteRes' +
      '   and FatPe2.NumRes = FatPed.NumRes' +
      '   and FatPe2.SeqLib = FatPed.SeqLib' +
      '   and FatPe2.SeqFat = FatPed.SeqFat' + sFiltro +
      ' Group by FatPed.CodEmp,FatPed.DteRes,FatPed.NumRes,FatPed.SeqLib,FatPed.SeqFat,FatPed.TrbIcm,FatPed.TipPfa,FatPed.DteFat,FatPed.UfeFat,FatPe2.CodCfo,FatPed.CodCli,FatPe2.NroNfs,FatPe2.IcmPe2';
    ExecSQL;

  end;

  sFiltro := ' and FatPed.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and FatPed.FlgSin = ''' + 'Sim' + '''' +
    ' and FatPed.SitFat = ''' + 'Cancelado' + '''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatPed.DteFat <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,SerNot,EmpRes,DteRes,NumRes,SeqLib,SeqFat,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'Vendas' + ''',''' + 'Sim' + ''',''' + '2' + ''',' +
      ' FatPed.CodEmp,' +
      ' FatPed.DteRes,' +
      ' FatPed.NumRes,' +
      ' FatPed.SeqLib,' +
      ' FatPed.SeqFat,' +
      ' FatPed.TrbIcm,' +
      ' FatPed.TipPfa,' +
      ' FatPed.DteFat,' +
      ' FatPed.UfeFat,' +
      ' RETSTRING(FatPe2.CodCfo,0,5),' +
      ' FatPed.CodCli,' +
      ' FatPe2.NroNfs,' +
      ' FatPe2.IcmPe2,' +
      ' Sum(FatPe2.TotGe2),' +
      ' Sum(FatPe2.TotDsr),' +
      ' Sum(FatPe2.BasIcm),' +
      ' Sum(FatPe2.TotIcm)' +
      ' From FatPe2,FatPed' +
      ' Where FatPe2.CodEmp = FatPed.CodEmp' +
      '   and FatPe2.DteRes = FatPed.DteRes' +
      '   and FatPe2.NumRes = FatPed.NumRes' +
      '   and FatPe2.SeqLib = FatPed.SeqLib' +
      '   and FatPe2.SeqFat = FatPed.SeqFat' + sFiltro +
      ' Group by FatPed.CodEmp,FatPed.DteRes,FatPed.NumRes,FatPed.SeqLib,FatPed.SeqFat,FatPed.TrbIcm,FatPed.TipPfa,FatPed.DteFat,FatPed.UfeFat,FatPe2.CodCfo,FatPed.CodCli,FatPe2.NroNfs,FatPe2.IcmPe2';
    ExecSQL;

  end;

  sFiltro := ' and FatGer.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and FatGer.FlgSin = ''' + 'Sim' + '''' +
    ' and FatGer.SitGer = ''' + 'Faturado' + '''' +
    ' and FatGer.FlgImp = ''' + 'Sim' + '''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteFat >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteFat <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,SerNot,EmpGer,DteGer,NumGer,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      + #13 +
      ' Select ''' + SeqArq + ''',''' + 'Generica' + ''',''' + 'Nao' + ''',''' + '2' + ''',' +
      ' FatGer.CodEmp,' + #13 +
      ' FatGer.DteGer,' + #13 +
      ' FatGer.NumGer,' + #13 +
      ' FatGer.TrbIcm,' + #13 +
      ' FatGer.TipPfa,' + #13 +
      ' FatGer.DteFat,' + #13 +
      ' FatGer.UfeGer,' + #13 +
      ' RETSTRING(FatGe2.CodCfo,0,5),' + #13 +
      ' FatGer.CodCli,' + #13 +
      ' FatGe2.NroNfs,' + #13 +
      ' FatGe2.IcmGe2,' + #13 +
      ' Sum(FatGe2.TotGe2),''' + '0' + ''',' + #13 +
      ' Sum(FatGe2.BasIcm),' + #13 +
      ' Sum(FatGe2.TotIcm)' + #13 +
      ' From FatGe2,FatGer' + #13 +
      ' Where FatGe2.CodEmp = FatGer.CodEmp' + #13 +
      '   and FatGe2.DteGer = FatGer.DteGer' + #13 +
      '   and FatGe2.NumGer = FatGer.NumGer' + sFiltro + #13 +
      ' Group by FatGer.CodEmp,FatGer.DteGer,FatGer.NumGer,FatGer.TrbIcm,FatGer.TipPfa,FatGer.DteFat,FatGer.UfeGer,FatGe2.CodCfo,FatGer.CodCli,FatGe2.NroNfs,FatGe2.IcmGe2';

    ExecSQL;

  end;

  sFiltro := ' and FatGer.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and FatGer.FlgSin = ''' + 'Sim' + '''' +
    ' and FatGer.SitGer = ''' + 'Cancelado' + '''' +
    ' and FatGer.FlgImp = ''' + 'Sim' + '''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteFat >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatGer.DteFat <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,SerNot,EmpGer,DteGer,NumGer,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'Generica' + ''',''' + 'Sim' + ''',''' + '2' + ''',' +
      ' FatGer.CodEmp,' +
      ' FatGer.DteGer,' +
      ' FatGer.NumGer,' +
      ' FatGer.TrbIcm,' +
      ' FatGer.TipPfa,' +
      ' FatGer.DteFat,' +
      ' FatGer.UfeGer,' +
      ' RETSTRING(FatGe2.CodCfo,0,5),' +
      ' FatGer.CodCli,' +
      ' FatGe2.NroNfs,' +
      ' FatGe2.IcmGe2,' +
      ' Sum(FatGe2.TotGe2),''' + '0' + ''',' +
      ' Sum(FatGe2.BasIcm),' +
      ' Sum(FatGe2.TotIcm)' +
      ' From FatGe2,FatGer' +
      ' Where FatGe2.CodEmp = FatGer.CodEmp' +
      '   and FatGe2.DteGer = FatGer.DteGer' +
      '   and FatGe2.NumGer = FatGer.NumGer' + sFiltro +
      ' Group by FatGer.CodEmp,FatGer.DteGer,FatGer.NumGer,FatGer.TrbIcm,FatGer.TipPfa,FatGer.DteFat,FatGer.UfeGer,FatGe2.CodCfo,FatGer.CodCli,FatGe2.NroNfs,FatGe2.IcmGe2';
    ExecSQL;

  end;

  sFiltro := ' and FatDCl.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and FatDCl.FlgSin = ''' + 'Sim' + '''' +
    ' and FatDCl.SitGer = ''' + 'Faturado' + '''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,EmpGer,DteGer,NumGer,SerNot,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'Nota Emitida pelo Cliente' + ''',''' + 'Nao' + ''',' +
      ' FatDCl.CodEmp,' +
      ' FatDCl.DteGer,' +
      ' FatDCl.NumGer,' +
      ' FatDCl.SerNot,' +
      ' FatDCl.TrbIcm,' +
      ' FatDCl.TipPfa,' +
      ' FatDCl.DteFat,' +
      ' FatDCl.UfeGer,' +
      ' RETSTRING(FatDCl.CodCf1,0,5),' +
      ' FatDCl.CodCli,' +
      ' FatDCl.NroNfs,' +
      ' FatDC2.IcmGe2,' +
      ' Sum(FatDC2.TotGe2),''' + '0' + ''',' +
      ' Sum(FatDC2.BasIcm),' +
      ' Sum(FatDC2.TotIcm)' +
      ' From FatDC2,FatDCl' +
      ' Where FatDC2.CodEmp = FatDCl.CodEmp' +
      '   and FatDC2.DteGer = FatDCl.DteGer' +
      '   and FatDC2.NumGer = FatDCl.NumGer' + sFiltro +
      ' Group by FatDCl.CodEmp,FatDCl.DteGer,FatDCl.NumGer,FatDCl.SerNot,FatDCl.TrbIcm,FatDCl.TipPfa,FatDCl.DteFat,FatDCl.UfeGer,FatDCl.CodCf1,FatDCl.CodCli,FatDCl.NroNfs,FatDC2.IcmGe2';
    ExecSQL;

  end;

  sFiltro := ' and FatDCl.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and FatDCl.FlgSin = ''' + 'Sim' + '''' +
    ' and FatDCl.SitGer = ''' + 'Cancelado' + '''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,EmpGer,DteGer,NumGer,SerNot,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'Nota Emitida pelo Cliente' + ''',''' + 'Sim' + ''',' +
      ' FatDCl.CodEmp,' +
      ' FatDCl.DteGer,' +
      ' FatDCl.NumGer,' +
      ' FatDCl.SerNot,' +
      ' FatDCl.TrbIcm,' +
      ' FatDCl.TipPfa,' +
      ' FatDCl.DteFat,' +
      ' FatDCl.UfeGer,' +
      ' RETSTRING(FatDCl.CodCf1,0,5),' +
      ' FatDCl.CodCli,' +
      ' FatDCl.NroNfs,' +
      ' FatDC2.IcmGe2,' +
      ' Sum(FatDC2.TotGe2),''' + '0' + ''',' +
      ' Sum(FatDC2.BasIcm),' +
      ' Sum(FatDC2.TotIcm)' +
      ' From FatDC2,FatDCl' +
      ' Where FatDC2.CodEmp = FatDCl.CodEmp' +
      '   and FatDC2.DteGer = FatDCl.DteGer' +
      '   and FatDC2.NumGer = FatDCl.NumGer' + sFiltro +
      ' Group by FatDCl.CodEmp,FatDCl.DteGer,FatDCl.NumGer,FatDCl.SerNot,FatDCl.TrbIcm,FatDCl.TipPfa,FatDCl.DteFat,FatDCl.UfeGer,FatDCl.CodCf1,FatDCl.CodCli,FatDCl.NroNfs,FatDC2.IcmGe2';
    ExecSQL;

  end;

  sFiltro := ' and   CmpNfs.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and   CmpNfs.FlgSin = ''' + 'Sim' + '''' +
    ' and   CmpNfs.TipPfa = ''' + 'Saida' + '''' +
    ' and ( CmpNfs.SitNfs = ''' + 'Concluido' + ''' or CmpNfs.SitNfs = ''' + 'Recebido' + ''' or CmpNfs.SitNfs = ''' + 'Recebido Parcialmente' +
      ''' or CmpNfs.SitNfs = ''' + 'Saldo Nao Atendido' + ''' )' +
    ' and   CmpNfs.NroNfs > 0' +
    ' and   CmpNfs.FlgImp = ''' + 'Sim' + '''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.DteFat >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.DteFat <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,SerNot,EmpNfs,DteNfs,SeqNfs,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'RMA' + ''',''' + 'Nao' + ''',''' + '2' + ''',' +
      ' CmpNfs.CodEmp,' +
      ' CmpNfs.DteNfs,' +
      ' CmpNfs.SeqNfs,' +
      ' CmpNfs.TrbIcm,' +
      ' CmpNfs.TipPfa,' +
      ' CmpNfs.DteFat,' +
      ' CmpNfs.UfeNfs,' +
      ' RETSTRING(CmpNfs.CodCf1,0,5),' +
      ' CmpNfs.CodFor,' +
      ' CmpNf2.NroNfs,' +
      ' CmpNf2.IcmNf2,' +
      ' Sum(CmpNf2.TotNf2),''' + '0' + ''',' +
      ' Sum(CmpNf2.BasIcm),' +
      ' Sum(CmpNf2.TotIcm)' +
      ' From CmpNf2,CmpNfs' +
      ' Where CmpNf2.CodEmp = CmpNfs.CodEmp' +
      '   and CmpNf2.DteNfs = CmpNfs.DteNfs' +
      '   and CmpNf2.SeqNfs = CmpNfs.SeqNfs' + sFiltro +
      ' Group by CmpNfs.CodEmp,CmpNfs.DteNfs,CmpNfs.SeqNfs,CmpNfs.TrbIcm,CmpNfs.TipPfa,CmpNfs.DteFat,CmpNfs.UfeNfs,CmpNfs.CodCf1,CmpNfs.CodFor,CmpNf2.NroNfs,CmpNf2.IcmNf2';
    ExecSQL;

  end;

  sFiltro := ' and CmpNfs.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and CmpNfs.FlgSin = ''' + 'Sim' + '''' +
    ' and CmpNfs.SitNfs = ''' + 'Cancelado' + '''' +
    ' and CmpNfs.TipPfa = ''' + 'Saida' + '''' +
    ' and CmpNfs.NroNfs > 0' +
    ' and CmpNfs.FlgImp = ''' + 'Sim' + '''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.DteFat >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.DteFat <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,SerNot,EmpNfs,DteNfs,SeqNfs,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'RMA' + ''',''' + 'Sim' + ''',''' + '2' + ''',' +
      ' CmpNfs.CodEmp,' +
      ' CmpNfs.DteNfs,' +
      ' CmpNfs.SeqNfs,' +
      ' CmpNfs.TrbIcm,' +
      ' CmpNfs.TipPfa,' +
      ' CmpNfs.DteFat,' +
      ' CmpNfs.UfeNfs,' +
      ' RETSTRING(CmpNfs.CodCf1,0,5),' +
      ' CmpNfs.CodFor,' +
      ' CmpNf2.NroNfs,' +
      ' CmpNf2.IcmNf2,' +
      ' Sum(CmpNf2.TotNf2),''' + '0' + ''',' +
      ' Sum(CmpNf2.BasIcm),' +
      ' Sum(CmpNf2.TotIcm)' +
      ' From CmpNf2,CmpNfs' +
      ' Where CmpNf2.CodEmp = CmpNfs.CodEmp' +
      '   and CmpNf2.DteNfs = CmpNfs.DteNfs' +
      '   and CmpNf2.SeqNfs = CmpNfs.SeqNfs' + sFiltro +
      ' Group by CmpNfs.CodEmp,CmpNfs.DteNfs,CmpNfs.SeqNfs,CmpNfs.TrbIcm,CmpNfs.TipPfa,CmpNfs.DteFat,CmpNfs.UfeNfs,CmpNfs.CodCf1,CmpNfs.CodFor,CmpNf2.NroNfs,CmpNf2.IcmNf2';
    ExecSQL;

  end;

  sFiltro := ' and CmpEnt.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text) +
    ' and CmpEnt.SitEnt = ' + QuotedStr('Concluida') +
    ' and CmpEnt.CodTip < ' + QuotedStr('3') +
    ' and CmpEnt.FlgSin = ' + QuotedStr('Sim');

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpEnt.DteOpe >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date));
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpEnt.DteOpe <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,EmpEnt,DteEnt,NumEnt,SerNot,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'Compras' + ''',''' + 'Nao' + ''',' +
      ' CmpEnt.CodEmp,' +
      ' CmpEnt.DteEnt,' +
      ' CmpEnt.NumEnt,' +
      ' CmpEnt.SerNot,' +
      ' CmpEnt.TrbIcm,' +
      ' CmpEnt.TipPfa,' +
      ' CmpEnt.DteOpe,' +
      ' CmpEnt.UfeEnt,' +
      ' CmpEn2.CodCfo,' +
      ' CmpEnt.CodFor,' +
      ' CmpEnt.NumDoc,' +
      ' CmpEn2.IcmEn2,' +
      ' Sum(CmpEn2.TotGe2),''' + '0' + ''',' +
      ' Sum(CmpEn2.BasIcm),' +
      ' Sum(CmpEn2.TotIcm)' +
      ' From CmpEn2,CmpEnt' +
      ' Where CmpEn2.CodEmp = CmpEnt.CodEmp' +
      '   and CmpEn2.DteEnt = CmpEnt.DteEnt' +
      '   and CmpEn2.NumEnt = CmpEnt.NumEnt' + sFiltro +
      ' Group by CmpEnt.CodEmp,CmpEnt.DteEnt,CmpEnt.NumEnt,CmpEnt.SerNot,CmpEnt.TrbIcm,CmpEnt.TipPfa,CmpEnt.DteOpe,CmpEnt.UfeEnt,CmpEn2.CodCfo,CmpEnt.CodFor,CmpEnt.NumDoc,CmpEn2.IcmEn2';
    ExecSQL;

  end;

  sFiltro := ' and FatDev.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and FatDev.FlgSin = ''' + 'Sim' + '''' +
    ' and FatDev.SitDev = ''' + 'Devolvido' + '''' +
    ' and FatDev.NroNfs > ''' + '0' + '''' +
    ' and FatDev.FlgFsc = ''' + 'Nao' + '''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,EmpRes,DteRes,NumRes,SeqLib,SeqFat,SeqDev,SerNot,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'Devolucoes 1' + ''',''' + 'Nao' + ''',' +
      ' FatDev.CodEmp,' +
      ' FatDev.DteRes,' +
      ' FatDev.NumRes,' +
      ' FatDev.SeqLib,' +
      ' FatDev.SeqFat,' +
      ' FatDev.SeqDev,' +
      ' FatDev.SerNot,' +
      ' FatDev.TrbIcm,' +
      ' FatDev.TipPfa,' +
      ' FatDev.DteDev,' +
      ' FatDev.UfeDev,' +
      ' FatDv2.CodCfo,' +
      ' FatDev.CodCli,' +
      ' FatDv2.NroNfs,' +
      ' FatDv2.IcmDv2,' +
      ' Sum(FatDv2.TotGe2),''' + '0' + ''',' +
      ' Sum(FatDv2.BasIcm),' +
      ' Sum(FatDv2.TotIcm)' +
      ' From FatDv2,FatDev' +
      ' Where FatDv2.CodEmp = FatDev.CodEmp' +
      '   and FatDv2.DteRes = FatDev.DteRes' +
      '   and FatDv2.NumRes = FatDev.NumRes' +
      '   and FatDv2.SeqLib = FatDev.SeqLib' +
      '   and FatDv2.SeqFat = FatDev.SeqFat' +
      '   and FatDv2.SeqDev = FatDev.SeqDev' + sFiltro +
      ' Group by FatDev.CodEmp,FatDev.DteRes,FatDev.NumRes,FatDev.SeqLib,FatDev.SeqFat,FatDev.SeqDev,FatDev.SerNot,FatDev.TrbIcm,FatDev.TipPfa,FatDev.DteDev,FatDev.UfeDev,FatDv2.CodCfo,FatDev.CodCli,FatDv2.NroNfs,FatDv2.IcmDv2';
    ExecSQL;

  end;

  sFiltro := ' and FatDev.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and FatDev.FlgSin = ''' + 'Sim' + '''' +
    ' and FatDev.SitDev = ''' + 'Cancelado' + '''' +
    ' and FatDev.NroNfs > ''' + '0' + '''' +
    ' and FatDev.FlgFsc = ''' + 'Nao' + '''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,EmpRes,DteRes,NumRes,SeqLib,SeqFat,SeqDev,SerNot,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'Devolucoes 1' + ''',''' + 'Sim' + ''',' +
      ' FatDev.CodEmp,' +
      ' FatDev.DteRes,' +
      ' FatDev.NumRes,' +
      ' FatDev.SeqLib,' +
      ' FatDev.SeqFat,' +
      ' FatDev.SeqDev,' +
      ' FatDev.SerNot,' +
      ' FatDev.TrbIcm,' +
      ' FatDev.TipPfa,' +
      ' FatDev.DteDev,' +
      ' FatDev.UfeDev,' +
      ' FatDv2.CodCfo,' +
      ' FatDev.CodCli,' +
      ' FatDv2.NroNfs,' +
      ' FatDv2.IcmDv2,' +
      ' Sum(FatDv2.TotGe2),''' + '0' + ''',' +
      ' Sum(FatDv2.BasIcm),' +
      ' Sum(FatDv2.TotIcm)' +
      ' From FatDv2,FatDev' +
      ' Where FatDv2.CodEmp = FatDev.CodEmp' +
      '   and FatDv2.DteRes = FatDev.DteRes' +
      '   and FatDv2.NumRes = FatDev.NumRes' +
      '   and FatDv2.SeqLib = FatDev.SeqLib' +
      '   and FatDv2.SeqFat = FatDev.SeqFat' +
      '   and FatDv2.SeqDev = FatDev.SeqDev' + sFiltro +
      ' Group by FatDev.CodEmp,FatDev.DteRes,FatDev.NumRes,FatDev.SeqLib,FatDev.SeqFat,FatDev.SeqDev,FatDev.SerNot,FatDev.TrbIcm,FatDev.TipPfa,FatDev.DteDev,FatDev.UfeDev,FatDv2.CodCfo,FatDev.CodCli,FatDv2.NroNfs,FatDv2.IcmDv2';
    ExecSQL;

  end;

  sFiltro := ' and FatDev.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and FatDev.FlgSin = ''' + 'Sim' + '''' +
    ' and FatDev.FlgFsc = ''' + 'Sim' + '''' +
    ' and FatDev.SitDev = ''' + 'Devolvido' + '''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,EmpRes,DteRes,NumRes,SeqLib,SeqFat,SeqDev,SerNot,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'Devolucoes 2' + ''',''' + 'Nao' + ''',' +
      ' FatDev.CodEmp,' +
      ' FatDev.DteRes,' +
      ' FatDev.NumRes,' +
      ' FatDev.SeqLib,' +
      ' FatDev.SeqFat,' +
      ' FatDev.SeqDev,' +
      ' FatDev.SerNot,' +
      ' FatDev.TrbIcm,' +
      ' FatDev.TipPfa,' +
      ' FatDev.DteDev,' +
      ' FatDev.UfeDev,' +
      ' FatDv2.CodCfo,' +
      ' FatDev.CodCli,' +
      ' FatDev.NfsCli,' +
      ' FatDv2.IcmDv2,' +
      ' Sum(FatDv2.TotGe2),''' + '0' + ''',' +
      ' Sum(FatDv2.BasIcm),' +
      ' Sum(FatDv2.TotIcm)' +
      ' From FatDv2,FatDev' +
      ' Where FatDv2.CodEmp = FatDev.CodEmp' +
      '   and FatDv2.DteRes = FatDev.DteRes' +
      '   and FatDv2.NumRes = FatDev.NumRes' +
      '   and FatDv2.SeqLib = FatDev.SeqLib' +
      '   and FatDv2.SeqFat = FatDev.SeqFat' +
      '   and FatDv2.SeqDev = FatDev.SeqDev' + sFiltro +
      ' Group by FatDev.CodEmp,FatDev.DteRes,FatDev.NumRes,FatDev.SeqLib,FatDev.SeqFat,FatDev.SeqDev,FatDev.SerNot,FatDev.TrbIcm,FatDev.TipPfa,FatDev.DteDev,FatDev.UfeDev,FatDv2.CodCfo,FatDev.CodCli,FatDev.NfsCli,FatDv2.IcmDv2';
    ExecSQL;

  end;

  sFiltro := ' and FatDev.CodEmp = ''' + EdPsqCodEmp.Text + '''' +
    ' and FatDev.FlgSin = ''' + 'Sim' + '''' +
    ' and FatDev.FlgFsc = ''' + 'Sim' + '''' +
    ' and FatDev.SitDev = ''' + 'Cancelado' + '''';

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ''' + fDateToSQL(EdDteFat1.Date) + '''';
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ''' + fDateToSQL(EdDteFat2.Date) + '''';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatSin (SeqArq,TipOpe,FlgCan,EmpRes,DteRes,NumRes,SeqLib,SeqFat,SeqDev,SerNot,TrbIcm,TipNot,DteFat,UfeFat,CodCfo,CodDes,NroNfs,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select ''' + SeqArq + ''',''' + 'Devolucoes 2' + ''',''' + 'Sim' + ''',' +
      ' FatDev.CodEmp,' +
      ' FatDev.DteRes,' +
      ' FatDev.NumRes,' +
      ' FatDev.SeqLib,' +
      ' FatDev.SeqFat,' +
      ' FatDev.SeqDev,' +
      ' FatDev.SerNot,' +
      ' FatDev.TrbIcm,' +
      ' FatDev.TipPfa,' +
      ' FatDev.DteDev,' +
      ' FatDev.UfeDev,' +
      ' FatDv2.CodCfo,' +
      ' FatDev.CodCli,' +
      ' FatDev.NfsCli,' +
      ' FatDv2.IcmDv2,' +
      ' Sum(FatDv2.TotGe2),''' + '0' + ''',' +
      ' Sum(FatDv2.BasIcm),' +
      ' Sum(FatDv2.TotIcm)' +
      ' From FatDv2,FatDev' +
      ' Where FatDv2.CodEmp = FatDev.CodEmp' +
      '   and FatDv2.DteRes = FatDev.DteRes' +
      '   and FatDv2.NumRes = FatDev.NumRes' +
      '   and FatDv2.SeqLib = FatDev.SeqLib' +
      '   and FatDv2.SeqFat = FatDev.SeqFat' +
      '   and FatDv2.SeqDev = FatDev.SeqDev' + sFiltro +
      ' Group by FatDev.CodEmp,FatDev.DteRes,FatDev.NumRes,FatDev.SeqLib,FatDev.SeqFat,FatDev.SeqDev,FatDev.SerNot,FatDev.TrbIcm,FatDev.TipPfa,FatDev.DteDev,FatDev.UfeDev,FatDv2.CodCfo,FatDev.CodCli,FatDev.NfsCli,FatDv2.IcmDv2';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatGsi(SeqArq,NroNfs,SerNot,TrbIcm,TipNot,CodCfo,DteFat,UfeFat,CodDes,NomDes,CgcDes,InsDes,FlgCan,TipOpe,PerIcm,TotNot,TotIse,BasIcm,TotIcm)'
      +
      ' Select SeqArq,' +
      ' NroNfs,' +
      ' SerNot,' +
      ' TrbIcm,' +
      ' TipNot,' +
      ' CodCfo,' +
      ' DteFat,' +
      ' UfeFat,' +
      ' CodDes,' +
      ' NomDes,' +
      ' CgcDes,' +
      ' InsDes,' +
      ' FlgCan,' +
      ' TipOpe,' +
      ' PerIcm,' +
      ' Sum(TotNot),' +
      ' Sum(TotIse),' +
      ' Sum(BasIcm),' +
      ' Sum(TotIcm)' +
      ' From FatSin Where FatSin.SeqArq = ''' + SeqArq + '''' +
      ' Group by SeqArq,NroNfs,SerNot,TrbIcm,TipNot,CodCfo,DteFat,UfeFat,CodDes,NomDes,CgcDes,InsDes,FlgCan,TipOpe,PerIcm';
    ExecSQL;

  end;

  with FatGSI, SQL do
  begin

    Close;
    Text := ' Select * From FatGsi' +
      ' Where FatGsi.SeqArq = ''' + SeqArq + '''' +
      ' Order by FatGsi.DteFat,FatGsi.NroNfs,FatGsi.PerIcm';
    Open;

  end;

  if FatGSINroNfs.Value > 0 then
    bCriarTexto.Enabled := True
  else
    fmsgErro('Informações para Envio não Encontradas.', EdPsqCodEmp);

  grGSI.SetFocus;

end;

procedure TfmManSin.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSin := nil;
end;

procedure TfmManSin.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmManSin.FormCreate(Sender: TObject);
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

procedure TfmManSin.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManSin.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
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

procedure TfmManSin.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManSin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatSin Where FatSin.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatGSI Where FatGSI.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatSi2 Where FatSi2.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatEnv Where FatEnv.SeqArq = ''' + SeqArq + '''';
    ExecSQL;

  end;

  Action := CaFree;

end;

procedure TfmManSin.bCriarTextoClick(Sender: TObject);
var
  ArqTexto: TextFile;
  Ant_NumNot: string;
  Ant_CgcNot: string;
  Ant_CodCfo: string;
  DataIni, DataFin: string;
  SeqLin, QtdReg1, QtdReg2, QtdReg3, QtdReg4, QtdReg5, TotReg, SeqIte, Controle: integer;
  VpfIte, QtdQte, TotGer, TotIpi, TotIse, BasIcm, TotIcm, IcmPe2, BasSub, TotOut, PerIcm: real;
  DteNot, UfeNot, NumNot, DatIni, DatFin, NomArq, CgcNot, InsNot, SitNot, Grupo, CepEmp, Fo2Emp, ApeEmp, CodPro, Emissor: string;
  Descr, Unid, Linha, sEncontrar, cgcEmp, InsEmp, FonEmp, EndEmp, BaiEmp, CidEmp, UfeEmp, NumEmp, CodCfo, ClfPro, CodUnd, SerNot: string;
  Contato, UND: string;
  wherefp, wherefg, whereFD, whereFC, whereCP, whereLJ, whereCE: string;
  quantidade: real;
  codemp: string;
begin
  inherited;
  codemp := trim(EdPsqCodEmp.Text);

  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if FatGSINroNfs.Value > 0 then
    begin

      if fMsg('Confirma Envio das Informações', 'S') then
      begin

        NomArq := 'DC' + copy(DateToStr(EdDteFat1.Date), 7, 4) + copy(DateToStr(EdDteFat2.Date), 4, 2) + '.TXT';

        DatIni := copy(DateToStr(EdDteFat1.Date), 7, 4) + copy(DateToStr(EdDteFat1.Date), 4, 2) + copy(DateToStr(EdDteFat1.Date), 1, 2);
        DatFin := copy(DateToStr(EdDteFat2.Date), 7, 4) + copy(DateToStr(EdDteFat2.Date), 4, 2) + copy(DateToStr(EdDteFat2.Date), 1, 2);

        DataIni := QuotedStr(formatdatetime('yyyy-mm-dd', EdDteFat1.Date));
        DataFin := QuotedStr(formatdatetime('yyyy-mm-dd', EdDteFat2.Date));

        whereFP := ' WHERE FP.codemp = ' + codemp + _BR +
          ' AND FP.nronfs > 0 AND FP.nronfs < 1000000 AND FP.dtefat >= ' + DataIni + ' and FP.dtefat <= ' + DataFin + ' ' + _BR +
          ' and FP.sitfat in (' + quotedstr('Faturado') + ',' + quotedstr('Cancelado') + ') ' +
          ' and ((FP.flgnfe = ' + quotedstr('Sim') + ' and FP.envnfe = ' + quotedstr('Sim') + ' and FP.impnfe = ' + quotedstr('Sim') + ') or (FP.flgnfe = ' +
            quotedstr('Nao') + ' and FP.envnfe = ' + quotedstr('Nao') + ' and FP.flgimp = ' + quotedstr('Sim') + ')) ' + _BR;

        whereFG := ' WHERE FG.codemp = ' + codemp + _BR +
          ' AND FG.nronfs > 0 AND FG.nronfs < 1000000  AND FG.dtefat BETWEEN ' + DataIni + ' and ' + DataFin + ' ' + _BR +
          ' and FG.sitger in (' + quotedstr('Faturado') + ',' + quotedstr('Cancelado') + ') ' +
          ' and ((FG.flgnfe = ' + quotedstr('Sim') + ' and FG.envnfe = ' + quotedstr('Sim') + ' and FG.impnfe = ' + quotedstr('Sim') + ') or (FG.flgnfe = ' +
            quotedstr('Nao') + ' and FG.envnfe = ' + quotedstr('Nao') + ' and FG.flgimp = ' + quotedstr('Sim') + ')) ' + _BR;

        whereFD := ' WHERE FD.codemp = ' + codemp + _BR +
          ' AND FD.nronfs > 0 AND FD.nronfs < 1000000  AND FD.dtedev BETWEEN ' + DataIni + ' and ' + DataFin + ' ' + _BR +
          ' and FD.sitdev in (' + quotedstr('Faturado') + ',' + quotedstr('Cancelado') + ') ' +
          ' and ((FD.flgnfe = ' + quotedstr('Sim') + ' and FD.envnfe = ' + quotedstr('Sim') + ' and FD.impnfe = ' + quotedstr('Sim') + ') or (FD.flgnfe = ' +
            quotedstr('Nao') + ' and FD.envnfe = ' + quotedstr('Nao') + ' and FD.flgimp = ' + quotedstr('Sim') + ')) ' + _BR;

        whereCP := ' WHERE CP.codemp = ' + codemp + _BR +
          ' AND CP.nronfs > 0 AND CP.nronfs < 1000000  AND CP.dtefat BETWEEN ' + DataIni + ' and ' + DataFin + ' ' +
          ' and CP.sitnfs in (' + quotedstr('Faturado') + ',' + quotedstr('Cancelado') + ') ' +
          ' and ((CP.flgnfe = ' + quotedstr('Sim') + ' and CP.envnfe = ' + quotedstr('Sim') + ' and CP.impnfe = ' + quotedstr('Sim') + ') or (CP.flgnfe = ' +
            quotedstr('Nao') + ' and CP.envnfe = ' + quotedstr('Nao') + ' and CP.flgimp = ' + quotedstr('Sim') + ')) ' + _BR;

        whereFC := ' WHERE FC.codemp = ' + codemp + _BR +
          ' AND FC.nronfs > 0 AND FC.nronfs < 1000000 AND FC.dteger BETWEEN ' + DataIni + ' and ' + DataFin + ' ' +
          ' and FC.sitger in (' + quotedstr('Faturado') + ',' + quotedstr('Cancelado') + ') ' + _BR;

        whereLJ := ' WHERE LJ.codemp = ' + codemp + _BR +
          ' AND LJ.nronfs > 0 AND LJ.nronfs < 1000000 AND LJ.dtefat BETWEEN ' + DataIni + ' and ' + DataFin + ' ' + _BR +
          ' and LJ.sitfat in (' + quotedstr('Faturado') + ',' + quotedstr('Cancelado') + ') ' +
          ' and ((LJ.flgnfe = ' + quotedstr('Sim') + ' and LJ.envnfe = ' + quotedstr('Sim') + ' and LJ.impnfe = ' + quotedstr('Sim') + ') or (LJ.flgnfe = ' +
            quotedstr('Nao') + ' and LJ.envnfe = ' + quotedstr('Nao') + ' and LJ.flgimp = ' + quotedstr('Sim') + ')) ' + _BR;

        whereCE := ' WHERE CE.codemp = ' + codemp
          + _BR + ' AND CE.numdoc > 0 AND CE.numdoc < 1000000 and CE.SitEnt =''Concluida''  AND CE.DteEnt BETWEEN ' + DataIni + ' and ' + DataFin;

        SaveDialog.FileName := NomArq;

        pnTitulo.Caption := 'Aguarde. Gerando Registros 50 para ' + SaveDialog.FileName;

        Application.ProcessMessages;

        if SaveDialog.Execute then
        begin

          with quSQL, SQL do
          begin

            close;
            Text := ' Select GerEmp.ApeEmp,' +
              '        GerEmp.CgcEmp,' +
              '        GerEmp.InsEmp,' +
              '        GerEmp.CepEmp,' +
              '        GerEmp.TenEmp,' +
              '        GerEmp.EndEmp,' +
              '        GerEmp.NumEmp,' +
              '        GerEmp.BaiEmp,' +
              '        GerEmp.CidEmp,' +
              '        GerEmp.SigUfe,' +
              '        GerEmp.PrtEmp,' +
              '        GerEmp.FonEmp, ' +
              '        GerEmp.Contato ' +
              ' From GerEmp' +
              ' Where GerEmp.CodEmp = ' + codemp;
            Open;

            CgcEmp := copy(Trim(FieldbyName('CgcEmp').AsString), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(FieldbyName('CgcEmp').AsString), 1, 14)));
            ApeEmp := copy(Trim(FieldbyName('ApeEmp').AsString), 1, 35) + fReplicate(' ', 35 - Length(copy(Trim(FieldbyName('ApeEmp').AsString), 1, 35)));
            CidEmp := copy(Trim(FieldbyName('CidEmp').AsString), 1, 30) + fReplicate(' ', 30 - Length(copy(Trim(FieldbyName('CidEmp').AsString), 1, 30)));
            UfeEmp := copy(Trim(FieldbyName('SigUfe').AsString), 1, 02) + fReplicate(' ', 02 - Length(copy(Trim(FieldbyName('SigUfe').AsString), 1, 35)));
            BaiEmp := copy(Trim(FieldbyName('BaiEmp').AsString), 1, 15) + fReplicate(' ', 15 - Length(copy(Trim(FieldbyName('BaiEmp').AsString), 1, 15)));
            CepEmp := copy(Trim(FieldbyName('CepEmp').AsString), 1, 08) + fReplicate(' ', 08 - Length(copy(Trim(FieldbyName('CepEmp').AsString), 1, 08)));
            Contato := FieldByName('Contato').AsString;

            NumEmp := fReplicate('0', 05 - Length(copy(fLimpaStr(Trim(FieldbyName('NumEmp').AsString)), 1, 05))) +
              copy(Trim(fLimpaStr(FieldbyName('NumEmp').AsString)), 1, 05);

            InsEmp := fLimpaStr(FieldbyName('InsEmp').AsString);

            InsEmp := copy(Trim(InsEmp), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(InsEmp), 1, 14)));

            if (Trim(FieldByName('Contato').AsString) <> '') then
            begin
              Contato := Contato + fReplicate(' ', 28 - length(Contato));
            end;

            if Trim(FieldbyName('PrtEmp').AsString) <> '' then
              FonEmp := fLimpaStr(IntToStr(StrToInt(Trim(FieldbyName('PrtEmp').AsString)))) + fLimpaStr(Trim(FieldbyName('FonEmp').AsString))
            else
              FonEmp := fLimpaStr(FieldbyName('FonEmp').AsString);

            FonEmp := fReplicate('0', 10 - Length(copy(Trim(FonEmp), 1, 35))) + copy(Trim(FonEmp), 1, 10);
            Fo2Emp := fReplicate('0', 12 - Length(copy(Trim(FonEmp), 1, 12))) + copy(Trim(FonEmp), 1, 12);

            if Trim(FieldbyName('TenEmp').AsString) <> '' then
              EndEmp := Trim(FieldbyName('TenEmp').AsString) + ' ' + Trim(FieldbyName('EndEmp').AsString)
            else
              EndEmp := Trim(FieldbyName('EndEmp').AsString);

            EndEmp := copy(Trim(EndEmp), 1, 34) + fReplicate(' ', 34 - Length(copy(Trim(EndEmp), 1, 34)));

          end;

          bSelecionar.Enabled := False;
          bCriarTexto.Enabled := False;

          pnCaption.Visible := True;

          AssignFile(ArqTexto, SaveDialog.FileName);

          Rewrite(ArqTexto);

          Writeln(ArqTexto, '10' + {001 a 002}
            CgcEmp + {003 a 016}
            InsEmp + {017 a 030}
            ApeEmp + {031 a 065}
            CidEmp + {066 0 095}
            UfeEmp + {096 a 097}
            FonEmp + {098 a 107}
            DatIni + {108 a 115}
            DatFin + {116 a 123}
            '3' + {124 a 124}
            '3' + {125 a 125}
            '1'); {126 a 126}

          Writeln(ArqTexto, '11' + {001 a 002}
            EndEmp + {003 a 036}
            NumEmp + {037 a 041}
            '                      ' + {042 a 063}
            BaiEmp + {064 0 078}
            CepEmp + {079 a 086}
            Contato + fReplicate(' ', 28 - Length(contato)) + {087 a 114}
            Fo2Emp); {115 a 126}

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select Count(*) as QtdReg From FatGSI Where FatGSI.SeqArq = ''' + SeqArq + '''';
            Open;

          end;

          //  ProgressBar.Max := quSQL.FieldbyName('QtdReg').AsInteger;
          //  ProgressBar.Min := 0;

          QtdReg1 := 0;
          QtdReg2 := 0;
          QtdReg3 := 0;
          QtdReg4 := 0;
          QtdReg5 := 0;

          TotReg := 2;

          //ProgressBar.Position := 0;

          FatGSI.First;

          with QuSql, SQL do
          begin

            Close;

            Text :=
              ' SELECT ' + quotedstr('FP') + ', FP.cgccli as CNPJ,FP.inscli as INSCRICAO,FP.dtefat as DATA,FP.ufecli as UF, ' + _BR +
              quotedstr('1') + ' as SERIE,FP.nronfs as NUMNOT,FP2.codcfo as CFOP,' + quotedstr('P') + ' as EMISSOR,FP.totfat as TOTAL, ' + _BR +
              ' SUM(FP2.basicm) as BASICM,SUM(FP2.toticm) as TOTICM,SUM(FP2.TotDsr) as TOTDSR,FP2.icmpe2 as ICM, ' + _BR +
              ' CASE FP.sitfat ' + _BR +
              ' WHEN ' + quotedstr('Cancelado') + ' then ' + quotedstr('S') + ' ' + _BR +
              ' ELSE  ' + quotedstr('N') + ' ' + _BR +
              ' END as SITNOT ' + _BR +
              ' FROM ' + _BR +
              ' fatped FP ' + _BR +
              ' INNER JOIN fatpe2 FP2 on ' + _BR +
              ' FP.CodEmp = FP2.CodEmp and FP.dteres = FP2.dteres and FP.NumRes = FP2.NumRes ' + _BR +
              ' and FP.SeqLib = FP2.SeqLib and FP.seqfat = FP2.seqfat ' + _BR +
              whereFP +
              ' GROUP BY FP.nronfs,FP2.icmpe2,FP2.codcfo,FP.dtefat, ' + _BR +
              ' FP.inscli,FP.cgccli,FP.ufecli,FP.sitfat, FP.totfat,FP2.seqlib,FP2.seqfat ' + _BR +

            ' union ' + _BR +

            ' SELECT ' + quotedstr('FG') + ',FG.cgccli as CNPJ,FG.inscli as INSCRICAO,FG.dtefat as DATA,FG.ufecli as UF, ' + _BR +
              quotedstr('1') + ' as SERIE,FG.nronfs as NUMNOT,FG2.codcfo as CFOP,' + quotedstr('P') + ' as EMISSOR,FG.totge1 as TOTAL, ' + _BR +
              ' SUM(FG2.basicm) as BASICM,SUM(FG2.toticm) as TOTICM,SUM(FG2.TotDsr) as TOTDSR,FG2.icmge2 as ICM, ' + _BR +
              ' CASE FG.sitger ' + _BR +
              ' WHEN ' + quotedstr('Cancelado') + ' then ' + quotedstr('S') + ' ' + _BR +
              ' ELSE  ' + quotedstr('N') + ' ' + _BR +
              ' END as SITNOT ' + _BR +
              ' FROM ' + _BR +
              ' fatger FG ' + _BR +
              ' INNER JOIN fatge2 FG2 on FG.CodEmp = FG2.CodEmp and FG.dteger = FG2.dteger and FG.NumGer = FG2.NumGer ' + _BR +
              whereFG +
              ' GROUP BY FG.nronfs,FG2.icmge2,FG2.codcfo,FG.dtefat, ' + _BR +
              ' FG.inscli,FG.cgccli,FG.ufecli,FG.sitger,FG.totge1 ' + _BR +

            ' union ' + _BR +

            ' SELECT ' + QuotedStr('CP') + ',CP.cgcfor as CNPJ,CP.insfor as INSCRICAO,CP.dtefat as DATA,CP.ufefor as UF, '
              + _BR + QuotedStr('1') + ' as SERIE, CP.nronfs as NUMNOT, CP2.codcfo as CFOP, '
              + _BR + ' CASE CP.sitnfs '
              + _BR + ' WHEN ' + QuotedStr('Devolucoes') + ' then ' + QuotedStr('P')
              + _BR + ' ELSE  ' + QuotedStr('P')
              + _BR + ' END as Emissor , '
              + _BR + '  CP.totger as TOTAL, '
              + _BR + ' SUM(CP2.basicm) as BASICM,SUM(CP2.toticm) as TOTICM,cast(SUM(CP2.totdes) as numeric (15,4)) as TOTDSR,CP2.icmnf2 as ICM, '
              + _BR + ' CASE CP.sitnfs '
              + _BR + ' WHEN ' + QuotedStr('Cancelado') + ' then ' + QuotedStr('S')
              + _BR + ' ELSE  ' + QuotedStr('N')
              + _BR + ' END as SITNOT '
              + _BR + ' FROM '
              + _BR + ' cmpnfs CP '
              + _BR + ' INNER JOIN cmpnf2 CP2 on CP.CodEmp = CP2.CodEmp and CP.dtenfs = CP2.dtenfs ' + whereCP
              + _BR + ' GROUP BY CP.nronfs,CP2.icmnf2,CP2.codcfo,CP.dtefat, '
              + _BR + ' CP.insfor,CP.cgcfor,CP.ufefor,CP.sitnfs,CP.totger '

            + _BR + ' union ' + _BR +

            ' SELECT ' + quotedstr('FC') + ',FC.cgccli as CNPJ,FC.inscli as INSCRICAO,FC.dteger as DATA,FC.ufecli as UF, ' + _BR +
              quotedstr('1') + ' as SERIE,FC.nronfs as NUMNOT,Cast(FC.codcf1 as CHAR(10)) as CFOP,' + quotedstr('P') + ' as EMISSOR,FC.TOTGE1 as TOTAL, ' + _BR
                +
              ' SUM(FC2.basicm) as BASICM,SUM(FC2.toticm) as TOTICM,SUM(FC2.TotDsr) as TOTDSR,FC2.icmge2 as ICM, ' + _BR +
              ' CASE FC.sitger ' + _BR +
              ' WHEN ' + quotedstr('Cancelado') + ' then ' + quotedstr('S') + ' ' + _BR +
              ' ELSE  ' + quotedstr('N') + ' ' + _BR +
              ' END as SITNOT ' + _BR +
              ' FROM ' + _BR +
              ' fatdcl FC ' + _BR +
              ' INNER JOIN fatdc2 FC2 on ' + _BR +
              ' FC.CodEmp = FC2.CodEmp and FC.dteger = FC2.dteger and FC.numger = FC2.numger ' + _BR +
              whereFC +
              ' GROUP BY FC.nronfs,FC2.icmge2,FC.codcf1,FC.dteger, ' + _BR +
              ' FC.inscli,FC.cgccli,FC.ufecli,FC.sitger, FC.TOTGE1 ' + _BR +

            ' UNION  '

            + _BR + ' SELECT ' + QuotedStr('CE') + ',FR.cgcfor as CNPJ,FR.insfor as INSCRICAO,CE.dteent as DATA,FR.sigufe as UF,'
              + _BR + QuotedStr('1') + ' as SERIE,CE.numdoc as NUMNOT,cast(CE.codcfo as CHAR(10)) as CFOP, '
              + _BR + QuotedStr('T') + ' as Emissor , '
              + _BR + ' Coalesce(CE.totger,0.00) as TOTAL, '
              + _BR +
                ' SUM(CE2.basicm) as BASICM,SUM(Coalesce(CE2.toticm,0.0)) as TOTICM,cast(SUM(Coalesce(CE2.totdes,0.0)) as numeric (15,4)) as TOTDSR, Coalesce(CE2.icmen2,0.00) as ICM, '
              + _BR + ' CASE CE.sitent '
              + _BR + ' WHEN ' + QuotedStr('Cancelado') + ' then  ' + QuotedStr('S')
              + _BR + ' ELSE  ' + QuotedStr('N')
              + _BR + ' END as SITNOT '
              + _BR + ' FROM '
              + _BR + ' CMPENT CE '
              + _BR + ' INNER JOIN CMPEN2 CE2 on CE.CodEmp = CE2.CodEmp and CE.nument = CE2.NumEnt and CE.DteEnt = CE2.DteEnt '
              + _BR + ' INNER join finfor FR on CE.codfor = Fr.codfor ' + whereCE
              + _BR + ' GROUP BY CE.numdoc,CE2.icmen2,CE.codcfo,CE.dteent, '
              + _BR + ' FR.insfor,FR.cgcfor,FR.sigufe,CE.sitent,CE.totger ' +

            ' union ' + _BR +

            ' SELECT DISTINCT ' + quotedstr('FD') + ',FD.cgccli as CNPJ,FD.inscli as INSCRICAO,FD.dteres as DATA,FD.ufecli as UF, ' + _BR +
              quotedstr('1') + ' as SERIE,FD.nronfs as NUMNOT,cast(FD.codcf1 as char(10)) as CFOP,' + quotedstr('P') + ' as EMISSOR,FD.totdev as TOTAL, ' + _BR
                +
              ' (FD.basicm) as BASICM,cast(FD.toticm as numeric(15,4)) as TOTICM,cast(FD.totdes as numeric(15,4)) as TOTDSR,FD.icmseg as ICM, ' + _BR +
              ' CASE FD.sitdev ' + _BR +
              ' WHEN ' + quotedstr('Cancelado') + ' then ' + quotedstr('S') + ' ' + _BR +
              ' ELSE  ' + quotedstr('N') + ' ' + _BR +
              ' END as SITNOT ' + _BR +
              ' FROM FatDev FD ' + _BR +
              ' INNER JOIN fatdv2 FD2 ON ' + _BR +
              ' FD.dteres = FD2.dteres ' + _BR +
              ' and FD.NumRes = FD2.NumRes ' + _BR +
              ' and FD.SeqLib = FD2.SeqLib ' + _BR +
              ' and FD.SeqFat = FD2.SeqFat ' + _BR +
              whereFD +
              ' union ' + _BR +

            ' SELECT distinct ' + QuotedStr('LJ') + ',LJ.cgccli as CNPJ,LJ.inscli as INSCRICAO,LJ.dtefat as DATA,LJ.ufecli as UF, '
              + _BR + QuotedStr('1') + ' as SERIE,LJ.nronfs as NUMNOT,LJ2.codcfo as CFOP,' + QuotedStr('P') + ' as EMISSOR,LJ.totfat as TOTAL, '
              + _BR + ' SUM(LJ2.basicm) as BASICM,SUM(LJ2.toticm) as TOTICM,SUM(LJ2.TotDsr) as TOTDSR,LJ2.icmpe2 as ICM, '
              + _BR + ' CASE LJ.sitfat '
              + _BR + ' WHEN ' + QuotedStr('Cancelado') + ' then ' + QuotedStr('S')
              + _BR + ' ELSE  ' + QuotedStr('N')
              + _BR + ' END as SITNOT '
              + _BR + ' FROM '
              + _BR + ' LojFat LJ '
              + _BR + ' INNER JOIN LojFa2 LJ2 on '
              + _BR + ' LJ.CodEmp = LJ2.CodEmp and LJ.dteped = LJ2.dteped and LJ.numped = LJ2.Numped '
              + _BR + whereLJ +
              ' GROUP BY LJ.nronfs,LJ2.icmpe2,LJ2.codcfo,LJ.dtefat, ' + _BR +
              ' LJ.inscli,LJ.cgccli,LJ.ufecli,LJ.sitfat, LJ.totfat,LJ2.seqpe2 ' + _BR +

            ' order by 4,7 ' + _BR;

            clipboard.astext := QuSql.SQL.text;
            Open;

            First;

          end;

          while not QuSql.EOF do
          begin

            InsNot := Trim(fLimpaStr(quSql.FieldByName('INSCRICAO').AsString));

            if Length(Trim(InsNot)) < 14 then
              InsNot := 'ISENTO'
            else
            begin
              InsNot := fLimpaStr(InsNot);
            end;

            SerNot := Trim(FATGSISERNOT.Value) + fReplicate(' ', 03 - Length(Trim(FATGSISERNOT.Value)));

            DteNot := DateToStr(quSql.FieldByName('DATA').Value);
            DteNot := copy(DteNot, 7, 4) + copy(DteNot, 4, 2) + copy(DteNot, 1, 2);

            Writeln(ArqTexto, '50' +
              fReplicate('0', 14 - Length(Trim(quSql.FieldByName('CNPJ').AsString))) + Trim(quSql.FieldByName('CNPJ').AsString) +
              InsNot + fReplicate(' ', 14 - Length(InsNot)) +
              DteNot +
              quSql.FieldByName('UF').AsString +
              '01' +
              quSql.FieldByName('SERIE').AsString + fReplicate(' ', 3 - Length(quSql.FieldByName('SERIE').AsString)) +
              FNumZeros(copy(Trim(quSql.FieldByName('NUMNOT').AsString), 1, 6), 6) +
              Copy(fLimpaStr(Trim(quSql.FieldByName('CFOP').AsString)), 1, 4) +
              quSql.FieldByName('EMISSOR').AsString +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSql.FieldByName('TOTAL').AsFloat)), 13) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSql.FieldByName('BASICM').AsFloat)), 13) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSql.FieldByName('TOTICM').AsFloat)), 13) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSql.FieldByName('TOTDSR').AsFloat)), 13) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', 0.00)), 13) +
              copy(FStrZeros(FLimpaStr(FormatFloat('###0.00', quSql.FieldByName('ICM').AsFloat)), 4), 1, 4) +
              quSql.FieldByName('SITNOT').AsString);

            QuSql.Next;
            //ProgressBar.StepBy(1);

            QtdReg1 := QtdReg1 + 1;

            Application.ProcessMessages;

          end;

          pnTitulo.Caption := 'Aguarde. Gerando Registros 51 para ' + SaveDialog.FileName;

          //ProgressBar.Position := 0;

          Ant_NumNot := '';
          Ant_CgcNot := '';
          Ant_CodCfo := '';

          FatGSI.First;

          with QuSql, SQL do
          begin
            close;

            text :=

            ' SELECT FP.cgccli as CNPJ,FP.inscli as INSCRICAO,FP.dtefat as DATA,FP.ufecli as UF, ' + _BR +
              quotedstr('1') + ' as SERIE, FP.nronfs as NUMNOT, Cast(FP2.codcfo as Char(15)) as CFOP, ' + quotedstr(' P ') + ' as EMISSOR, FP.totfat as TOTAL, '
                + _BR +
              ' SUM(FP2.totipi) as TOTIPI,Cast(SUM(FP2.totdsr) as numeric(15,2)) as TOTDSR,FP2.icmpe2 as ICM, ' + _BR +
              ' CASE FP.sitfat ' + _BR +
              ' WHEN  ' + quotedstr('Cancelado') + '  then  ' + quotedstr('S') + ' ' + _BR +
              ' ELSE  ' + quotedstr('N') + ' ' + _BR +
              ' END as SITNOT ' + _BR +
              ' FROM ' + _BR +
              ' FatPed FP ' + _BR +
              ' INNER JOIN FatPe2 FP2 ON FP.CodEmp = FP2.CodEmp and FP.dteres = FP2.dteres ' + _BR +
              ' and FP.NumRes = FP2.NumRes and FP.SeqLib = FP2.SeqLib and FP.seqfat = FP2.seqfat ' + _BR +
              wherefp +
              ' GROUP BY FP.nronfs,FP2.icmpe2,FP2.codcfo,FP.dtefat, ' + _BR +
              ' FP.inscli,FP.cgccli,FP.ufecli, FP.totfat, FP.sitfat ' + _BR +

            ' UNION ' + _BR +

            ' SELECT FG.cgccli as CNPJ,FG.inscli as INSCRICAO,FG.dtefat as DATA,FG.ufecli as UF, ' + _BR +
              quotedstr('1') + ' as SERIE, FG.nronfs as NUMNOT, cast(FG2.codcfo as char(15)) as CFOP, ' + quotedstr(' P ') + ' as EMISSOR, FG.TotGe1 as TOTAL, '
                + _BR +
              ' SUM(FG2.totipi) as TOTIPI,cast(SUM(FG2.totdsr) as numeric(15,2)) as TOTDSR,FG2.icmge2 as ICM, ' + _BR +
              ' CASE FG.SitGer ' + _BR +
              ' WHEN  ' + quotedstr('Cancelado') + '  then  ' + quotedstr('S') + ' ' + _BR +
              ' ELSE  ' + quotedstr('N') + ' ' + _BR +
              ' END as SITNOT ' + _BR +
              ' FROM ' + _BR +
              ' FatGer FG ' + _BR +
              ' INNER JOIN FatGe2 FG2 ON FG.CodEmp = FG2.CodEmp and FG.dteger = FG2.dteger ' + _BR +
              ' and FG.numger = FG2.NumGer  ' + _BR +
              wherefg +
              ' GROUP BY FG.nronfs,FG2.IcmGe2,FG2.codcfo,FG.dtefat, ' + _BR +
              ' FG.inscli,FG.cgccli,FG.ufecli, FG.totge1, FG.sitger ' + _BR +

            ' UNION ' + _BR +

            ' SELECT CP.cgcfor as CNPJ,CP.insfor as INSCRICAO,CP.dtenfs as DATA,CP.ufefor as UF, ' + _BR +
              quotedstr('1') + ' as SERIE, CP.nronfs as NUMNOT, cast(CP2.codcfo as char(15)) as CFOP, ' + quotedstr(' P ') + ' as EMISSOR, CP.totge1 as TOTAL, '
                + _BR +
              ' SUM(CP2.totipi) as TOTIPI,cast(SUM(CP2.totdes) as numeric(15,2)) as TOTDSR,CP2.icmnf2 as ICM, ' + _BR +
              ' CASE CP.SitNfs ' + _BR +
              ' WHEN  ' + quotedstr('Cancelado') + '  then  ' + quotedstr('S') + ' ' + _BR +
              ' ELSE  ' + quotedstr('N') + ' ' + _BR +
              ' END as SITNOT ' + _BR +
              ' FROM ' + _BR +
              ' CmpNfs CP ' + _BR +
              ' INNER JOIN cmpnf2 CP2 on CP.CodEmp = CP2.CodEmp and CP.dtenfs = CP2.dtenfs ' + _BR +
              whereCP +
              ' and ((CP.flgnfe = ' + quotedstr('Sim') + ' and CP.envnfe = ' + quotedstr('Sim') + ' and CP.impnfe = ' + quotedstr('Sim') + ') or (CP.flgnfe = '
                + quotedstr('Nao') + ' and CP.envnfe = ' + quotedstr('Nao') + ' and CP.flgimp = ' + quotedstr('Sim') + ')) ' + _BR +
              ' GROUP BY CP.nronfs,CP2.IcmNf2,CP2.codcfo,CP.DteNfs, ' + _BR +
              ' CP.InsFor,CP.CgcFor,CP.UfeFor,CP.totge1, CP.SitNfs ' + _BR +

            ' UNION ' + _BR +

            ' SELECT FC.cgccli as CNPJ,FC.inscli as INSCRICAO,FC.dteger as DATA,FC.ufecli as UF, ' + _BR +
              quotedstr('1') + ' as SERIE, FC.nronfs as NUMNOT, cast(FC.codcf1 as char(15)) as CFOP, ' + quotedstr(' P ') + ' as EMISSOR, FC.totge1 as TOTAL, '
                + _BR +
              ' SUM(FC2.totipi) as TOTIPI,cast(SUM(FC2.totdsr) as numeric(15,2)) as TOTDSR,FC2.icmge2 as ICM, ' + _BR +
              ' CASE FC.sitger ' + _BR +
              ' WHEN  ' + quotedstr('Cancelado') + '  then  ' + quotedstr('S') + ' ' + _BR +
              ' ELSE  ' + quotedstr('N') + ' ' + _BR +
              ' END as SITNOT ' + _BR +
              ' FROM ' + _BR +
              ' FatDcl FC ' + _BR +
              ' INNER JOIN FatDc2 FC2 on FC.CodEmp = FC2.CodEmp and FC.DteGer = FC2.dteger and FC.NumGer = FC2.NumGer ' + _BR +
              whereFC +
              ' GROUP BY FC.nronfs,FC2.IcmGe2,FC.CodCf1,FC.DteGer, ' + _BR +
              ' FC.InsCli,FC.CgcCli,FC.UfeCli,FC.totge1, FC.SitGer ' + _BR +

            ' UNION ' + _BR +

            ' SELECT DISTINCT FD.cgccli as CNPJ,FD.inscli as INSCRICAO,FD.dtedev as DATA,FD.ufecli as UF, ' + _BR +
              quotedstr('1') + ' as SERIE, FD.nronfs as NUMNOT, cast(FD.codcf1 as char(15)) as CFOP, ' + quotedstr(' P ') + ' as EMISSOR, FD.totdev as TOTAL, '
                + _BR +
              ' (FD.totipi) as TOTIPI,cast(FD.totdsr as numeric(15,2)) as TOTDSR,FD.icmseg as ICM, ' + _BR +
              ' CASE FD.SitDev ' + _BR +
              ' WHEN  ' + quotedstr('Cancelado') + '  then  ' + quotedstr('S') + ' ' + _BR +
              ' ELSE  ' + quotedstr('N') + ' ' + _BR +
              ' END as SITNOT ' + _BR +
              ' FROM ' + _BR +
              ' FatDev FD ' + _BR +
              ' INNER JOIN fatdv2 FD2 ON ' + _BR +
              ' FD.dteres = FD2.dteres ' + _BR +
              ' and FD.NumRes = FD2.NumRes ' + _BR +
              ' and FD.SeqLib = FD2.SeqLib ' + _BR +
              ' and FD.SeqFat = FD2.SeqFat ' + _BR +
              whereFD +
              ' UNION ' + _BR +

            ' SELECT LJ.cgccli as CNPJ,LJ.inscli as INSCRICAO,LJ.dteped as DATA,LJ.ufecli as UF, ' + _BR +
              quotedstr('1') + ' as SERIE, LJ.nronfs as NUMNOT, cast(LJ.codcf1 as char(15)) as CFOP, ' + quotedstr(' P ') + ' as EMISSOR, LJ.totFat as TOTAL, '
                + _BR +
              ' SUM(LJ2.totipi) as TOTIPI,cast(SUM(LJ2.totdsr) as numeric(15,2)) as TOTDSR,LJ2.icmpe2 as ICM, ' + _BR +
              ' CASE LJ.SitFat ' + _BR +
              ' WHEN  ' + quotedstr('Cancelado') + '  then  ' + quotedstr('S') + ' ' + _BR +
              ' ELSE  ' + quotedstr('N') + ' ' + _BR +
              ' END as SITNOT ' + _BR +
              ' FROM ' + _BR +
              ' LojFat LJ ' + _BR +
              ' INNER JOIN LojFa2 LJ2 ON LJ.CodEmp = LJ2.CodEmp and LJ.dteped = LJ2.dteped and LJ.numped = LJ2.Numped ' + _BR +
              wherelj +
              ' GROUP BY LJ.nronfs,LJ2.IcmPe2,LJ.CodCf1,LJ.DtePed, ' + _BR +
              ' LJ.InsCli,LJ.CgcCli,LJ.UfeCli,LJ.TotFat,LJ.SitFat ' + _BR;

            QtdReg2 := QtdReg2 + 1;

            Open;
            First;
          end;
          QtdReg2 := 0;
          while not quSql.EOF do
          begin

            //InsNot := Trim(fLimpaStr(quSql.FieldByName('INSCRICAO').AsString)) + fReplicate(' ', 14 - Length(fLImpaStr(quSql.FieldByName('INSCRICAO').AsString)));

            InsNot := Trim(fLimpaStr(quSql.FieldByName('INSCRICAO').AsString));

            if Length(Trim(InsNot)) < 14 then
              InsNot := 'ISENTO'
            else
            begin
              InsNot := fLimpaStr(InsNot);
            end;
            {f InsNot = '' then
               InsNot := 'ISENTO' + fReplicate(' ', 14 - Length('ISENTO'));}

            DteNot := DateToStr(quSql.FieldByName('DATA').Value);
            DteNot := copy(DteNot, 7, 4) + copy(DteNot, 4, 2) + copy(DteNot, 1, 2);

            Writeln(ArqTexto, '51' +
              fReplicate('0', 14 - Length(Trim(quSql.FieldByName('CNPJ').AsString))) + Trim(quSql.FieldByName('CNPJ').AsString) +
              InsNot + fReplicate(' ', 14 - Length(InsNot)) +
              DteNot +
              quSql.FieldByName('UF').AsString + fReplicate(' ', 2 - length(quSql.FieldByName('UF').AsString)) +
              quSql.FieldByName('SERIE').Value + fReplicate(' ', 3 - Length(quSql.FieldByName('SERIE').Value)) +
              FNumZeros(copy(Trim(quSql.FieldByName('NUMNOT').AsString), 1, 6), 6) +
              Copy(fLimpaStr(Trim(quSql.FieldByName('CFOP').AsString)), 1, 4) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSql.FieldByName('TOTAL').Value)), 13) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSql.FieldByName('TOTIPI').Value)), 13) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSql.FieldByName('TOTDSR').Value)), 13) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', 0.00)), 13) +
              fReplicate(' ', 20) +
              quSql.FieldByName('SITNOT').Value);

            Application.ProcessMessages;
            QuSql.Next;
            //ProgressBar.StepBy(1);
            QtdReg2 := QtdReg2 + 1;
          end;

          pnTitulo.Caption := 'Aguarde. Gerando Registros 54 para ' + SaveDialog.FileName;

          //ProgressBar.Position := 0;

          FATGSI.First;

          Ant_NumNot := '';
          Ant_CgcNot := '';
          Ant_CodCfo := '';
          SeqIte := 1;

          with QuSql, SQL do
          begin
            close;

            text :=
              ' SELECT FP.cgccli as CNPJ,' + quotedstr('1') + ' as SERIE,FP.nronfs as NUMNOT,Cast(FP2.codcfo as Char(15)) as CFOP,FP2.seqpe2 as SEQITEM, ' + _BR
                +
              ' FP2.codst1 || FP2.codst2 AS CST,FP2.CodClp || FP2.codgru || FP2.codsub || FP2.codpro as CODPRO, ' + _BR +
              ' FP2.qtppe2 as QUANTIDADE,FP2.totpe2 as TOTPRO,Coalesce(Cast(FP2.totdes as numeric(15,2)),0.0) as DESCONTO,FP2.basicm as BASICM, ' + _BR +
              ' FP2.bassub as BASSUB,FP2.totipi as TOTIPI,FP2.icmpe2 as ALICM ' + _BR +
              ' FROM FatPed FP ' + _BR +
              ' INNER JOIN FatPe2 FP2 ON ' + _BR +
              ' FP.CodEmp = FP2.CodEmp ' + _BR +
              ' and FP.dteres = FP2.dteres ' + _BR +
              ' and FP.NumRes = FP2.NumRes ' + _BR +
              ' and FP.SeqLib = FP2.SeqLib ' + _BR +
              ' and FP.seqfat = FP2.seqfat ' + _BR +
              wherefp +
              ' UNION ' + _BR +

            ' SELECT FG.cgccli as CNPJ,' + quotedstr('1') + ' as SERIE,FG.nronfs as NUMNOT,cast(FG2.codcfo as char(15)) as CFOP,FG2.seqge2 as SEQITEM, ' + _BR
              +
              ' FG2.codst1 || FG2.codst2 AS CST,FG2.CodClp || FG2.codgru || FG2.codsub || FG2.codpro as CODPRO, ' + _BR +
              ' FG2.qtpge2 as QUANTIDADE,FG2.totge2 as TOTPRO,Coalesce(cast(FG2.totdes as numeric(15,2)),0.0) as DESCONTO,FG2.basicm as BASICM, ' + _BR +
              ' FG2.bassub as BASSUB,FG2.totipi as TOTIPI,FG2.icmge2 as ALICM ' + _BR +
              ' FROM fatger FG ' + _BR +
              ' INNER JOIN FatGe2 FG2 ON FG.CodEmp = FG2.CodEmp and FG.dteger = FG2.dteger ' + _BR +
              ' and FG.numger = FG2.NumGer  ' + _BR +
              wherefg +

            ' UNION ' + _BR +

            ' SELECT CP.cgcfor as CNPJ,' + quotedstr('1') + ' as SERIE,CP.nronfs as NUMNOT,cast(CP2.codcfo as char(15)) as CFOP,CP2.seqnf2 as SEQITEM, ' + _BR
              +
              ' CP2.codst1 || CP2.codst2 AS CST,CP2.CodClp || CP2.codgru || CP2.codsub || CP2.codpro as CODPRO, ' + _BR +
              ' CP2.qtdnf2 as QUANTIDADE,CP2.totnf2 as TOTPRO,Coalesce(cast(CP2.totdes as numeric(15,2)),0.0) as DESCONTO,CP2.basicm as BASICM, ' + _BR +
              ' CP2.bassub as BASSUB,CP2.totipi as TOTIPI,CP2.icmnf2 as ALICM ' + _BR +
              ' FROM CmpNfs CP ' + _BR +
              ' INNER JOIN cmpnf2 CP2 on CP.CodEmp = CP2.CodEmp and CP.dtenfs = CP2.dtenfs and cp2.seqnfs = cp.seqnfs ' + _BR +
              wherecp +
              ' UNION ' + _BR +

            ' SELECT FC.cgccli as CNPJ,' + quotedstr('1') + ' as SERIE,FC.nronfs as NUMNOT,cast(FC.codcf1 as char(15)) as CFOP,FC2.seqge2 as SEQITEM, ' + _BR +
              ' FC2.codst1 || FC2.codst2 AS CST,FC2.CodClp || FC2.codgru || FC2.codsub || FC2.codpro as CODPRO, ' + _BR +
              ' FC2.qtdge2 as QUANTIDADE,FC2.totge2 as TOTPRO,Coalesce(cast(FC2.totdsr as numeric(15,2)),0.0) as DESCONTO,FC2.basicm as BASICM, ' + _BR +
              ' FC2.bassub as BASSUB,FC2.totipi as TOTIPI,FC2.icmge2 as ALICM ' + _BR +
              ' FROM FatDcl FC ' + _BR +
              ' INNER JOIN FatDc2 FC2 ON ' + _BR +
              ' FC.CodEmp = FC2.CodEmp and FC.DteGer = FC2.dteger and FC.NumGer = FC2.NumGer ' + _BR +
              wherefc +
              ' UNION ' + _BR +

            ' SELECT FD.cgccli as CNPJ,' + quotedstr('1') + ' as SERIE,FD.nronfs as NUMNOT,cast(FD.codcf1 as char(15)) as CFOP,FD2.seqdv2 as SEQITEM, ' + _BR +
              ' FD2.codSt1 || FD2.codst2 AS CST,FD2.CodClp || FD2.codgru || FD2.codsub || FD2.codpro as CODPRO, ' + _BR +
              ' FD2.qtddv2 as QUANTIDADE,FD2.totdv2 as TOTPRO,Coalesce(cast(FD2.totdes as numeric(15,2)),0.0) as DESCONTO,FD2.basicm as BASICM, ' + _BR +
              ' FD2.bassub as BASSUB,FD2.totipi as TOTIPI,FD2.icmdv2 as ALICM ' + _BR +
              ' FROM Fatdev FD ' + _BR +
              ' INNER JOIN fatdv2 FD2 ON ' + _BR +
              ' FD.CodEmp = FD2.CodEmp ' + _BR +
              ' and FD.dteres = FD2.dteres ' + _BR +
              ' and FD.NumRes = FD2.NumRes ' + _BR +
              ' and FD.SeqLib = FD2.SeqLib ' + _BR +
              ' and FD.SeqFat = FD2.SeqFat ' + _BR +
              whereFD +
              ' UNION ' + _BR +
              '  ' + _BR +
              ' SELECT LJ.cgccli as CNPJ,' + quotedstr('1') +
                ' as SERIE,LJ.nronfs as NUMNOT,cast(LJ2.codcfo as char(15)) as CFOP,Coalesce(LJ2.seqpe2,1) as SEQITEM, ' + _BR +
              ' LJ2.codst1 || LJ2.codst2 AS CST,LJ2.CodClp || LJ2.codgru || LJ2.codsub || LJ2.codpro as CODPRO, ' + _BR +
              ' LJ2.qtppe2 as QUANTIDADE,LJ2.totpe2 as TOTPRO,Coalesce(cast(LJ2.totdes as numeric(15,2)),0.0) as DESCONTO,LJ2.basicm as BASICM, ' + _BR +
              ' LJ2.bassub as BASSUB,LJ2.totipi as TOTIPI,LJ2.icmpe2 as ALICM ' + _BR +
              ' FROM LojFat LJ ' + _BR +
              ' INNER JOIN LojFa2 LJ2 ON ' + _BR +
              ' LJ.CodEmp = LJ2.CodEmp ' + _BR +
              ' and LJ.DtePed = LJ2.DtePed ' + _BR +
              ' and LJ.NumPed = LJ2.NumPed ' + _BR +
              whereLJ +

            ' UNION '
              + _BR + ' SELECT FR.cgcfor as CNPJ,' + QuotedStr('1') +
                ' as SERIE,CE.numdoc as NUMNOT,cast(CE.codcfo as char(15)) as CFOP,Coalesce(CE2.seqen2,1) as SEQITEM, '
              + _BR + ' CE2.codst1 || CE2.codst2 AS CST,CE2.CodClp || CE2.codgru || CE2.codsub || CE2.codpro as CODPRO, '
              + _BR +
                ' Coalesce(CE2.qtpen2,0.000) as QUANTIDADE,CE2.toten2 as TOTPRO, Coalesce(cast(CE2.totdes as numeric(15,2)), 0.00) as DESCONTO,Coalesce(CE2.basicm, 0.00) as BASICM, '
              + _BR + ' Coalesce(CE2.bassub,0.00) as BASSUB,Coalesce(CE2.totipi,0.00) as TOTIPI,Coalesce(CE2.icmen2,0.00) as ALICM '
              + _BR + ' FROM CmpEnt CE '
              + _BR + ' INNER JOIN CMPEN2 CE2 on CE.CodEmp = CE2.CodEmp and CE.nument = CE2.NumEnt and CE.DteEnt = CE2.DteEnt '
              + _BR + ' INNER JOIN FINFOR FR on CE.codfor = FR.codfor ' + whereCE
              + _BR + ' ORDER BY 3, 5';
            ClipBoard.AsText := QuSql.SQL.Text;

            open;

            First;
            Last;
            First;

          end;

          while not QuSql.EOF do
          begin
            CgcNot := FStrZeros(Trim(fLimpaStr(QuSql.FieldByName('CNPJ').AsString)), 14);
            CgcNot := fReplicate('0', 14 - Length(CgcNot)) + CgcNot;

            Writeln(ArqTexto, '54' +
              CgcNot +
              '01' +
              QuSql.FieldByName('SERIE').AsString + fReplicate(' ', 3 - Length(QuSql.FieldByname('SERIE').AsString)) +
              FNumZeros(copy(Trim(quSql.FieldByName('NUMNOT').AsString), 1, 6), 6) +
              Copy(fLimpaStr(QuSql.FieldByName('CFOP').AsString), 1, 4) +
              Trim(quSql.FieldByName('CST').AsString) + fReplicate(' ', 3 - Length(Trim(quSql.FieldByName('CST').AsString))) +
              fNumZeros(quSql.FieldByName('SEQITEM').AsString, 3) +
              Trim(quSql.FieldByName('CODPRO').AsString) + fReplicate(' ', 14 - Length(Trim(quSql.FieldByName('CODPRO').AsString))) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.000', quSQL.FieldbyName('QUANTIDADE').AsFloat)), 11) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', QuSql.FieldByName('TOTPRO').AsFloat)), 12) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('DESCONTO').AsFloat)), 12) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', QuSql.FieldByName('BASICM').AsFloat)), 12) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', QuSql.FieldByName('BASSUB').AsFloat)), 12) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TOTIPI').AsFloat)), 12) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('ALICM').AsFloat)), 4));

            Application.ProcessMessages;
            pnTitulo.Caption := 'Aguarde. Gerando Registros 54 para ' + inttostr(QtdReg3) + '/' + inttostr(QuSql.RecordCount);
            QuSql.Next;

            //if QtdReg3 = 27858 then
                //showMessage('FUDEOOOO');
                  //ProgressBar.StepBy(1);
            QtdReg3 := QtdReg3 + 1;

          end;

          pnTitulo.Caption := 'Aguarde. Gerando Registros 74 para ' + SaveDialog.FileName;
          Application.ProcessMessages;

          ///ProgressBar.Position := 0;

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select Count(*) as QtdReg From EstQte Where EstQte.CodEmp = ' + codemp;
            Open;

            //ProgressBar.Max := FieldbyName('QtdReg').AsInteger;

          end;

          with quSQL, SQL do
          begin

            Close;
            Text :=
              ' SELECT  ' + #13 +
              ' GEREMP.CGCEMP AS CNPJ, ' + #13 +
              ' ESTITE.CODCLP||ESTITE.codgru || ESTITE.codsub || ESTITE.codpro as CODPRO, ' + #13 +
              ' GerEmp.SigUfe as UF, ' + #13 +
              ' coalesce(estite.Vb1Ite,0.0) AS VALOR, ' + #13 +
              ' (SELECT FIRST 1 QTATUA ' + #13 +
              '   FROM ESTHIS ' + #13 +
              '   WHERE ESTHIS.CODEMP = ' + codemp + #13 +
              '    AND ESTHIS.CODCLP = ESTITE.CodClp ' + #13 +
              '    AND ESTHIS.CODGRU = ESTITE.CodGru ' + #13 +
              '    AND ESTHIS.CODSUB = ESTITE.CodSub ' + #13 +
              '    AND ESTHIS.CODPRO = ESTITE.CodPro ' + #13 +
              '    AND ESTHIS.DTEHIS <= ' + (DataFin) + #13 +
              '   ORDER BY ESTHIS.SEQDTE DESC) AS QUANTIDADE ' + #13 +
              ' FROM ESTITE ' + #13 +
              ' JOIN geremp ON geremp.codemp = estite.codemp ' + #13 +
              ' WHERE estite.codemp = 1 '; // + #13 +

            ClipBoard.AsText := QuSql.SQL.Text;
            Open;

            First;
            Last;
            First;

          end;

          quantidade := quSql.FieldByName('Valor').asFloat;

          if (quantidade < 0) then
            quantidade := 0;

          while not quSQL.EOF do
          begin

            Writeln(ArqTexto, '74' +
              DatFin +
              Trim(QuSql.FieldByName('CODPRO').AsString) + fReplicate(' ', 14 - Length(Trim(QuSql.FieldByName('CODPRO').AsString))) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.000', quantidade)), 13) +
              FStrZeros(FLimpaStr(FormatFloat('###,###,##0.00', QuSql.FieldByName('QUANTIDADE').AsFloat * QuSql.FieldByName('VALOR').AsFloat)), 13) +
              '1' +
              fReplicate('0', 14) +
              fReplicate(' ', 14) +
              QuSql.FieldByName('UF').AsString +
              fReplicate(' ', 45));

            Inc(QtdReg5);

            Application.ProcessMessages;
            pnTitulo.Caption := 'Aguarde. Gerando Registros 74 para ' + SaveDialog.FileName + #13 + #10 + inttostr(QtdReg3) + '/' +
              inttostr(QuSql.RecordCount);
            //ProgressBar.StepBy(1);

            quSQL.Next;
          end;

          pnTitulo.Caption := 'Aguarde. Gerando Registros 75 para ' + SaveDialog.FileName;

          with QuSql, SQL do
          begin
            Close;

            Text :=
              'select'
              + _BR + 'Pro.CodClp || Pro.CodGru || Pro.CodSub || Pro.CodPro as CODPRO,'
              + _BR + 'Pro.dscpro as DESCRICAO,'
              + _BR + 'Pro.CodUns as UNIDADE,'
              + _BR + 'Pro.codst1 || Pro.CodSt2 as SITTRIB,'
              + _BR + '(case coalesce(icms.pericm, '''')'
              + _BR + '   when '''' then icme.pericm'
              + _BR + '   else icms.pericm'
              + _BR + '   end) as ALICM,'
              + _BR + '(case coalesce(ipis.peripi, '''')'
              + _BR + '   when '''' then ipie.peripi'
              + _BR + '   else ipis.peripi'
              + _BR + '   end)as ALIPI,'
              + _BR + ' (case coalesce(icms.codicm, '''')'
              + _BR + '   when '''' then icms.codst1||icms.codst2'
              + _BR + '   else icme.codst1||icme.codst2'
              + _BR + '   end)as STICM,'
              + _BR + ' (case coalesce(ipis.clsipi, '''')'
              + _BR + '  when '''' then ipie.clsipi'
              + _BR + '  else ipis.clsipi'
              + _BR + '  end)as NCM'
              + _BR + 'from estpro pro'
              + _BR + 'left join esticm icms on'
              + _BR + ' pro.icmsai = icms.codicm and icms.tipicm = ''Saida'''
              + _BR + 'left join esticm icme on'
              + _BR + ' pro.icment = icme.codicm and icme.tipicm = ''Entrada'''
              + _BR + 'left join estipi ipis on'
              + _BR + ' pro.ipisai = ipis.codipi and ipis.tipipi = ''Saida'''
              + _BR + 'left join estipi ipie on'
              + _BR + ' pro.ipient = ipie.codipi and ipie.tipipi = ''Entrada''';
            clipboard.AsText := QuSql.SQL.Text;
            Open;

          end;

          UND := QuSql.FieldByName('UNIDADE').AsString;

          if (UND = '') then
            UND := 'UN';

          //ProgressBar.Position := 0;
          while not quSQL.EOF do
          begin

            ClfPro := copy(Trim(fLimpaStr(quSQL.FieldbyName('NCM').AsString)), 1, 8);

            Writeln(ArqTexto, '75' +
              DatIni +
              DatFin +
              Trim(QuSql.FieldByName('CODPRO').AsString) + fReplicate(' ', 14 - Length(Trim(QuSql.FieldByName('CODPRO').AsString))) +
              Trim(ClfPro) + fReplicate(' ', 08 - Length(Trim(ClfPro))) +

              Trim(Copy(QuSql.FieldByName('DESCRICAO').AsString, 0, 52)) +
              fReplicate(' ', 53 - Length(Trim(Copy(QuSql.FieldByName('DESCRICAO').AsString, 0, 52)))) +

              //fReplicate(' ', 53 - Length(Trim(Copy(QuSql.FieldByName('DESCRICAO').AsString, 0, 52))) +
              //Trim(Copy(quSQL.FieldbyName('DESCRICAO').AsString) 0, 52) + fReplicate(' ', 53 - Length(Copy(Trim(quSQL.FieldbyName('DESCRICAO').AsString), 0, 52))) +

              Trim(UND) + fReplicate(' ', 06 - Length(Trim(UND))) +

              FStrZeros(FLimpaStr(FormatFloat('0.00', quSQL.FieldbyName('ALIPI').AsFloat)), 5) +
              FStrZeros(FLimpaStr(FormatFloat('0.00', quSQL.FieldbyName('ALICM').AsFloat)), 4) +
              '000000' +
              '000000000000');

            Inc(QtdReg4);

            // Application.ProcessMessages;

            //ProgressBar.StepBy(1);

            quSQL.Next;

          end;

          //ProgressBar.Position := 0;

          TotReg := TotReg + QtdReg1 + QtdReg2 + QtdReg3 + QtdReg4 + QtdReg5 + 6;

          Writeln(ArqTexto, '90' + {001 a 002}
            CgcEmp + {003 a 016}
            InsEmp + {017 a 030}
            '50' + {031 a 032}
            FNumZeros(IntToStr(QtdReg1), 8) + {033 a 040}
            '                                                                                     ' + {041 a 125}
            '6'); {126 a 126}

          Writeln(ArqTexto, '90' + {001 a 002}
            CgcEmp + {003 a 016}
            InsEmp + {017 a 030}
            '51' + {031 a 032}
            FNumZeros(IntToStr(QtdReg2), 8) + {033 a 040}
            '                                                                                     ' + {041 a 125}
            '6'); {126 a 126}

          Writeln(ArqTexto, '90' + {001 a 002}
            CgcEmp + {003 a 016}
            InsEmp + {017 a 030}
            '54' + {031 a 032}
            FNumZeros(IntToStr(QtdReg3), 8) + {033 a 040}
            '                                                                                     ' + {041 a 125}
            '6'); {126 a 126}

          Writeln(ArqTexto, '90' + {001 a 002}
            CgcEmp + {003 a 016}
            InsEmp + {017 a 030}
            '75' + {031 a 032}
            FNumZeros(IntToStr(QtdReg4), 8) + {033 a 040}
            '                                                                                     ' + {041 a 125}
            '6'); {126 a 126}

          Writeln(ArqTexto, '90' + {001 a 002}
            CgcEmp + {003 a 016}
            InsEmp + {017 a 030}
            '74' + {031 a 032}
            FNumZeros(IntToStr(QtdReg5), 8) + {033 a 040}
            '                                                                                     ' + {041 a 125}
            '6'); {126 a 126}

          Writeln(ArqTexto, '90' + {001 a 002}
            CgcEmp + {003 a 016}
            InsEmp + {017 a 030}
            '99' + {031 a 032}
            FNumZeros(IntToStr(TotReg), 8) + {033 a 040}
            '                                                                                     ' + {041 a 125}
            '6'); {126 a 126}

          CloseFile(ArqTexto);

          //ProgressBar.Position := 0;

          pnCaption.Visible := False;

          fMsg('Arquivo Gerado com Sucesso'#10'Quantidade de Registros para Transmissão ' + TrimLeft(TrimRight(IntToStr(TotReg))), 'I');

          with quSQL, SQL do
          begin

            Close;
            Text := ' Delete From FatSin Where FatSin.SeqArq = ''' + SeqArq + '''';
            ExecSQL;

          end;

          with quSQL, SQL do
          begin

            Close;
            Text := ' Delete From FatSi2 Where FatSi2.SeqArq = ''' + SeqArq + '''';
            ExecSQL;

          end;

          with quSQL, SQL do
          begin

            Close;
            Text := ' Delete From FatGsi Where FatGsi.SeqArq = ''' + SeqArq + '''';
            ExecSQL;

          end;

          FATGSI.Close;
          FATGSI.Open;

          if FATGSITotNot.Value > 0 then
            bCriarTexto.Enabled := True
          else
            bCriarTexto.Enabled := False;

          bSelecionar.Enabled := True;

        end;
      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManSin.DsGSIDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnTipOpe.Caption := FatGSITipOpe.Value;
  pnTipNot.Caption := FatGSITipNot.Value;
end;

end.
