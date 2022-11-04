unit ManSda;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls, Db,
  Wwdatsrc, DBTables, Wwquery, dxExEdtr, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  dxDBEdtr, Buttons, dxfProgressBar, dxColorDateEdit, dxColorEdit;

type
  TfmManSda = class(TfmPadrao)
    PaintBox: TPaintBox;
    grRes: ThGrid;
    grPed1: TdxDBGraphicEdit;
    FatEnv: TwwQuery;
    DsRes: TwwDataSource;
    Label7: TLabel;
    Bevel2: TBevel;
    Label8: TLabel;
    bbPesquisa: TBitBtn;
    Label11: TLabel;
    Bevel3: TBevel;
    bConfirma: TBitBtn;
    quSql: TwwQuery;
    SaveDialog: TSaveDialog;
    EdPsqApeArq: TdxColorEdit;
    Label2: TLabel;
    EdPsqTipArq: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    ProgressBar: TdxfProgressBar;
    FatEnvSEQARQ: TStringField;
    FatEnvCODEMP: TIntegerField;
    FatEnvDTEFAT: TDateTimeField;
    FatEnvHREFAT: TStringField;
    FatEnvCODCLI: TIntegerField;
    FatEnvTOTFAT: TFloatField;
    FatEnvTOTIPI: TFloatField;
    FatEnvTOTICM: TFloatField;
    FatEnvTOTGER: TFloatField;
    FatEnvEMPRES: TIntegerField;
    FatEnvDTERES: TDateTimeField;
    FatEnvNUMRES: TIntegerField;
    FatEnvLIBRES: TIntegerField;
    FatEnvFATRES: TIntegerField;
    FatEnvEMPGER: TIntegerField;
    FatEnvNUMGER: TIntegerField;
    FatEnvSITFAT: TStringField;
    FatEnvMODENV: TStringField;
    FatEnvEMPNFS: TIntegerField;
    FatEnvSEQNFS: TIntegerField;
    FatEnvDTEGER: TDateTimeField;
    FatEnvDTENFS: TDateTimeField;
    FatEnvUFEFAT: TStringField;
    FatEnvCODCF1: TStringField;
    FatEnvNOMCLI: TStringField;
    FatEnvINSCLI: TStringField;
    FatEnvCGCCLI: TStringField;
    FatEnvINTFIN: TStringField;
    FatEnvTOTDSR: TFloatField;
    FatEnvBASIPI: TFloatField;
    FatEnvBASICM: TFloatField;
    FatEnvNRONFS: TFloatField;
    FatEnvEMPENT: TIntegerField;
    FatEnvDTEENT: TDateTimeField;
    FatEnvNUMENT: TIntegerField;
    Label26: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    EdPsqApeEmp: TdxColorEdit;
    rgStatus: TRadioGroup;
    EdDteFat1: TdxColorDateEdit;
    EdDteFat2: TdxColorDateEdit;
    Label1: TLabel;
    FatEnvBASSUB: TFloatField;
    FatEnvTOTSUB: TFloatField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqAnoFatKeyPress(Sender: TObject; var Key: Char);
    procedure bConfirmaClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    SeqArq: string;
  public
    { Public declarations }
  end;

var
  fmManSda: TfmManSda;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, ManGDB, PsqEmp;

{$R *.DFM}

procedure TfmManSda.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSda.EdPsqAnoFatKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManSda.bConfirmaClick(Sender: TObject);
var
  Icm01: array[1..5] of string;
  Icm02: array[1..5] of string;
  Icm03: array[1..5] of string;
  Icm04: array[1..5] of string;
  Icm05: array[1..5] of string;
  NroNfs: real;
  ArqTexto: TextFile;
  i, r, QtdReg, QtdLin: integer;
  OutrasIpi, NomArq, Avista, Aprazo, FlgCtb, CgcCli, InsCli, NomCli, ClsIpi, SerNot, SeqNot, CodCfo: string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    if FatEnvNroNfs.Value > 0 then
    begin

      NroNfs := FatEnvNroNfs.Value;

      if fMsg('Confirma Envio das Informações', 'S') then
      begin

        QtdLin := 0;

        fmManGDB.dbMain.StartTransaction;

        try

          NomArq := EdPsqApeArq.Text + EdPsqTipArq.Text;

          SaveDialog.FileName := NomArq;

          if SaveDialog.Execute then
          begin

            AssignFile(ArqTexto, SaveDialog.FileName);

            Rewrite(ArqTexto);

            with quSQL, SQL do
            begin

              Close;
              Text := ' Select Count(*) as QtdReg From FatEnv Where FatEnv.SeqArq = ' + QuotedStr(SeqArq);
              Open;

              QtdReg := FieldbyName('QtdReg').AsInteger;

            end;

            ProgressBar.Visible := True;

            ProgressBar.Max := QtdReg;
            ProgressBar.Min := 0;
            ProgressBar.Position := 0;

            FatEnv.First;

            r := 0;

            while not FatEnv.Eof do
            begin

              Application.ProcessMessages;

              NomCli := copy(FatEnvNomCli.Value, 1, 35);
              InsCli := copy(FLimpaStr(FatEnvInsCli.Value), 1, 16);
              CgcCli := copy(FLimpaStr(FatEnvCgcCli.Value), 1, 14);

              CodCfo := copy(Trim(FatEnvCodCf1.Value), 1, 5) + fReplicate(' ', 5 - Length(Trim(FatEnvCodCf1.Value)));

              AVista := '000000000000';
              APrazo := '000000000000';

              QtdReg := 0;

              if FatEnvIntFin.Value = 'Sim' then
              begin

                if FatEnvModEnv.Value = 'Vendas' then
                begin

                  with quSQL, SQL do
                  begin

                    Close;
                    Text := ' Select Sum(PraPe3) as QtdReg From FatPe3' +
                      ' Where FatPe3.CodEmp = :CodEmp' +
                      '   and FatPe3.DteRes = :DteRes' +
                      '   and FatPe3.NumRes = :NumRes' +
                      '   and FatPe3.SeqLib = :SeqLib' +
                      '   and FatPe3.SeqFat = :SeqFat';

                    with Params do
                    begin

                      Params[0].AsInteger := FatEnvEmpRes.Value;
                      Params[1].AsDateTime := FatEnvDteRes.Value;
                      Params[2].AsInteger := FatEnvNumRes.Value;
                      Params[3].AsInteger := FatEnvLibRes.Value;
                      Params[4].AsInteger := FatEnvFatRes.Value;

                    end;

                    Open;

                    QtdReg := FieldbyName('QtdReg').AsInteger;

                  end;
                end;

                if FatEnvModEnv.Value = 'Generica' then
                begin

                  with quSQL, SQL do
                  begin

                    Close;
                    Text := ' Select Sum(PraGe3) as QtdReg From FatGe3' +
                      ' Where FatGe3.CodEmp = :CodEmp' +
                      '   and FatGe3.DteGer = :DteGer' +
                      '   and FatGe3.NumGer = :NumGer';

                    with Params do
                    begin

                      Params[0].AsInteger := FatEnvEmpGer.Value;
                      Params[1].AsDateTime := FatEnvDteGer.Value;
                      Params[2].AsInteger := FatEnvNumGer.Value;

                    end;

                    Open;

                    QtdReg := FieldbyName('QtdReg').AsInteger;

                  end;
                end;
              end;

              if QtdReg = 0 then
                AVista := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotGer.Value)), 12)
              else
                APrazo := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotGer.Value)), 12);

              if FatEnvUfeFat.Value <> GUfeEmp then
              begin

                if Length(Trim(FatEnvCgcCli.Value)) > 11 then
                  FlgCtb := '0'
                else
                  FlgCtb := '1';

              end
              else
                FlgCtb := '0';

              for i := 1 to 5 do
              begin

                Icm01[i] := '000000000000';
                Icm02[i] := '000000';
                Icm03[i] := '000000000000';
                Icm04[i] := '000000000000';
                Icm05[i] := '000000000000';

              end;

              i := 1;

              if FatEnvModEnv.Value = 'Vendas' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select FatCic.PerIcm,' +
                    '        Sum(FatCic.BasIcm) as BasIcm,' +
                    '        Sum(FatCic.TotIcm) as TotIcm' +
                    ' From FatCic' +
                    ' Where FatCic.CodEmp = :CodEmp' +
                    '   and FatCic.DteRes = :DteRes' +
                    '   and FatCic.NumRes = :NumRes' +
                    '   and FatCic.SeqLib = :SeqLib' +
                    '   and FatCic.SeqFat = :SeqFat' +
                    '   and FatCic.CodCfo = :CodCfo' +
                    ' Group by FatCic.PerIcm';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpRes.Value;
                    Params[1].AsDateTime := FatEnvDteRes.Value;
                    Params[2].AsInteger := FatEnvNumRes.Value;
                    Params[3].AsInteger := FatEnvLibRes.Value;
                    Params[4].AsInteger := FatEnvFatRes.Value;
                    Params[5].AsString := FatEnvCodCf1.Value;

                  end;

                  Open;
                  First;

                end;

                if quSql.RecordCount = 1 then
                begin

                  while not quSQL.EOF do
                  begin

                    Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvBasIcm.Value)), 12);
                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('PerIcm').AsFloat)), 6);
                    Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotIcm.Value)), 12);

                    if FatEnvTotFat.Value <> FatEnvBasIcm.Value then
                      Icm04[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', fRound(FatEnvTotFat.Value - FatEnvBasIcm.Value, 2))), 12);

                    Icm04[i] := '000000000000';

                    if Trim(FatEnvCodCf1.Value) = '5.933' then
                      Icm04[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotFat.Value)), 12);
                    if Trim(FatEnvCodCf1.Value) = '5.915' then
                      Icm04[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotFat.Value)), 12);

                    if FatEnvTotDsr.Value > 0 then
                      Icm04[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotFat.Value)), 12);

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;

                end
                else
                begin

                  while not quSQL.EOF do
                  begin

                    Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIcm').AsFloat)), 12);
                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('PerIcm').AsFloat)), 6);
                    Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIcm').AsFloat)), 12);

                    if quSQL.FieldbyName('BasIcm').AsFloat <> FatEnvTotFat.Value then
                      Icm04[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', fRound(FatEnvTotFat.Value - quSQL.FieldbyName('BasIcm').AsFloat, 2))), 12);

                    Icm04[i] := '000000000000';

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;
                end;
              end;

              if FatEnvModEnv.Value = 'Loja' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select LojCic.PerIcm,' +
                    '        Sum(LojCic.BasIcm) as BasIcm,' +
                    '        Sum(LojCic.TotIcm) as TotIcm ' +
                    ' From LojCic' +
                    ' Where LojCic.CodEmp = :CodEmp' +
                    '   and LojCic.DtePed = :DtePed' +
                    '   and LojCic.NumPed = :NumPed' +
                    '   and LojCic.CodCfo = :CodCfo' +
                    ' Group by LojCic.PerIcm';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpNfs.Value;
                    Params[1].AsDateTime := FatEnvDteNfs.Value;
                    Params[2].AsInteger := FatEnvSeqNfs.Value;
                    Params[3].AsString := FatEnvCodCf1.Value;

                  end;

                  Open;
                  First;

                end;

                if quSql.RecordCount = 1 then
                begin

                  while not quSQL.EOF do
                  begin

                    Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvBasIcm.Value)), 12);
                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('PerIcm').AsFloat)), 6);
                    Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotIcm.Value)), 12);

                    if FatEnvBasIcm.Value <> FatEnvTotFat.Value then
                      Icm04[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', fRound(FatEnvTotFat.Value - FatEnvBasIcm.Value, 2))), 12);

                    Icm04[i] := '000000000000';

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;

                end
                else
                begin

                  while not quSQL.EOF do
                  begin

                    Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIcm').AsFloat)), 12);
                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('PerIcm').AsFloat)), 6);
                    Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIcm').AsFloat)), 12);

                    if quSQL.FieldbyName('BasIcm').AsFloat <> FatEnvTotFat.Value then
                      Icm04[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', fRound(FatEnvTotFat.Value - quSQL.FieldbyName('BasIcm').AsFloat, 2))), 12);

                    Icm04[i] := '000000000000';

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;
                end;
              end;

              if FatEnvModEnv.Value = 'Generica' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select FatGe2.IcmGe2,' +
                    '        Sum(FatGe2.BasIcm) as BasIcm,' +
                    '        Sum(FatGe2.TotIcm) as TotIcm' +
                    ' From FatGe2' +
                    ' Where FatGe2.CodEmp = :CodEmp' +
                    '   and FatGe2.DteGer = :DteGer' +
                    '   and FatGe2.NumGer = :NumGer' +
                    ' Group by FatGe2.IcmGe2';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpGer.Value;
                    Params[1].AsDateTime := FatEnvDteGer.Value;
                    Params[2].AsInteger := FatEnvNumGer.Value;

                  end;

                  Open;
                  First;

                end;

                if quSql.RecordCount = 1 then
                begin

                  while not quSQL.EOF do
                  begin

                    Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvBasIcm.Value)), 12);
                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('IcmGe2').AsFloat)), 6);
                    Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotIcm.Value)), 12);

                    if FatEnvBasIcm.Value <> FatEnvTotFat.Value then
                      Icm04[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', fRound(FatEnvTotFat.Value - FatEnvBasIcm.Value, 2))), 12);

                    Icm04[i] := '000000000000';

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;

                end
                else
                begin

                  while not quSQL.EOF do
                  begin

                    Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIcm').AsFloat)), 12);
                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('IcmGe2').AsFloat)), 6);
                    Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIcm').AsFloat)), 12);

                    if quSQL.FieldbyName('BasIcm').AsFloat <> FatEnvTotFat.Value then
                      Icm04[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', fRound(FatEnvTotFat.Value - quSQL.FieldbyName('BasIcm').AsFloat, 2))), 12);

                    Icm04[i] := '000000000000';

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;
                end;
              end;

              if FatEnvModEnv.Value = 'Fornecedor' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select PerIcm,' +
                    '        Sum(BasIcm) as BasIcm,' +
                    '        Sum(TotIcm) as TotIcm From CmpNf4' +
                    ' Where CmpNf4.CodEmp = :CodEmp' +
                    '   and CmpNf4.DteNfs = :DteNfs' +
                    '   and CmpNf4.SeqNfs = :SeqNfs' +
                    ' Group by PerIcm';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpNfs.Value;
                    Params[1].AsDateTime := FatEnvDteNfs.Value;
                    Params[2].AsInteger := FatEnvSeqNfs.Value;

                  end;

                  Open;
                  First;

                end;

                if quSql.RecordCount = 1 then
                begin

                  while not quSQL.EOF do
                  begin

                    Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvBasIcm.Value)), 12);
                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('PerIcm').AsFloat)), 6);
                    Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotIcm.Value)), 12);

                    if FatEnvBasIcm.Value <> FatEnvTotFat.Value then
                      Icm04[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', fRound(FatEnvTotFat.Value - FatEnvBasIcm.Value, 2))), 12);

                    Icm04[i] := '000000000000';

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;

                end
                else
                begin

                  while not quSQL.EOF do
                  begin

                    Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIcm').AsFloat)), 12);
                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('PerIcm').AsFloat)), 6);
                    Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIcm').AsFloat)), 12);

                    if quSQL.FieldbyName('BasIcm').AsFloat <> FatEnvTotFat.Value then
                      Icm04[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', fRound(FatEnvTotFat.Value - quSQL.FieldbyName('BasIcm').AsFloat, 2))), 12);

                    Icm04[i] := '000000000000';

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;
                end;
              end;

              if FatEnvBasIpi.Value <> FatEnvTotFat.Value then
              begin

                if FatEnvTotFat.Value - FatEnvBasIpi.Value > 1 then
                  OutrasIpi := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', fRound(FatEnvTotFat.Value - FatEnvBasIpi.Value, 2))), 12)
                else
                  OutrasIpi := '000000000000';

              end
              else
                OutrasIpi := '000000000000';

              if Trim(InsCli) = '' then
                InsCli := 'ISENTO';

              if FatEnvModEnv.Value = 'Loja' then
              begin

                SerNot := 'NF ';
                SeqNot := '3  ';

              end
              else
              begin

                SerNot := 'NFF';
                SeqNot := '2  ';

              end;

              Writeln(ArqTexto, 'R1' +
                copy(FormatDateTime('dd/mm/yyyy', FatEnvDteFat.Value), 1, 2) +
                copy(FormatDateTime('dd/mm/yyyy', FatEnvDteFat.Value), 4, 2) +
                copy(FormatDateTime('dd/mm/yyyy', FatEnvDteFat.Value), 1, 2) +
                copy(FormatDateTime('dd/mm/yyyy', FatEnvDteFat.Value), 4, 2) +
                '  ' +
                SerNot +
                SeqNot +
                FNumZeros(FloatToStr(FatEnvNroNfs.Value), 6) +
                FNumZeros(FloatToStr(FatEnvNroNfs.Value), 6) +
                CodCfo +
                FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotGer.Value)), 12) +
                Icm01[1] +
                Icm02[1] +
                Icm03[1] +
                Icm04[1] +
                Icm05[1] +
                Icm01[2] +
                Icm02[2] +
                Icm03[2] +
                Icm04[2] +
                Icm05[2] +
                Icm01[3] +
                Icm02[3] +
                Icm03[3] +
                Icm04[3] +
                Icm05[3] +
                Icm01[4] +
                Icm02[4] +
                Icm03[4] +
                Icm04[4] +
                Icm05[4] +
                Icm01[5] +
                Icm02[5] +
                Icm03[5] +
                Icm04[5] +
                Icm05[5] +
                FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvBasIpi.Value)), 12) +
                FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotIpi.Value)), 12) +
                '000000000000' +
                OutrasIpi +
                '000000000000' +
                '000000000000' +
                FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvBasSub.Value)), 12) +
                Avista +
                APrazo +
                '000000000000' +
                '0' +
                '00' +
                '00' +
                fReplicate(' ', 14) +
                Trim(CgcCli) + FReplicate(' ', 14 - Length(Trim(CgcCli))) +
                Trim(InsCli) + FReplicate(' ', 16 - Length(Trim(InsCli))) +
                Trim(NomCli) + FReplicate(' ', 35 - Length(Trim(NomCli))) +
                fReplicate(' ', 18) +
                Trim(FatEnvUfeFat.Value) + FReplicate(' ', 02 - Length(Trim(FatEnvUfeFat.Value))) +
                fReplicate(' ', 04) +
                //FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotDsr.Value)), 12) +
                //'000000000000' +
                fReplicate(' ', 50));

              Inc(QtdLin);

              if FatEnvModEnv.Value = 'Vendas' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select FatClf.ClsIpi,' +
                    '        Sum(FatClf.BasIpi) as BasIpi,' +
                    '        Sum(FatClf.TotIpi) as TotIpi' +
                    ' From FatClf' +
                    ' Where FatClf.CodEmp = :CodEmp' +
                    '   and FatClf.DteRes = :DteRes' +
                    '   and FatClf.NumRes = :NumRes' +
                    '   and FatClf.SeqLib = :SeqLib' +
                    '   and FatClf.SeqFat = :SeqFat' +
                    ' Group by FatClf.ClsIpi';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpRes.Value;
                    Params[1].AsDateTime := FatEnvDteRes.Value;
                    Params[2].AsInteger := FatEnvNumRes.Value;
                    Params[3].AsInteger := FatEnvLibRes.Value;
                    Params[4].AsInteger := FatEnvFatRes.Value;

                  end;

                  Open;
                  First;

                end;

                while not quSQL.EOF do
                begin

                  ClsIpi := copy(Trim(FLimpaStr(quSQL.FieldbyName('ClsIpi').AsString)), 1, 10);

                  Writeln(ArqTexto, 'R2' +
                    '        ' +
                    Trim(ClsIpi) + FReplicate(' ', 10 - Length(Trim(ClsIpi))) +
                    '                         ' +
                    FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIpi').AsFloat)), 12) +
                    FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIpi').AsFloat)), 12) +
                    '000000000000' +
                    '                                                  ');

                  Inc(QtdLin);

                  quSQL.Next;

                end;
              end;

              if FatEnvModEnv.Value = 'Loja' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select LojClf.ClsIpi,' +
                    '        Sum(LojClf.BasIpi) as BasIpi,' +
                    '        Sum(LojClf.TotIpi) as TotIpi' +
                    ' From LojClf' +
                    ' Where LojClf.CodEmp = :CodEmp' +
                    '   and LojClf.DtePed = :DtePed' +
                    '   and LojClf.NumPed = :NumPed' +
                    ' Group by LojClf.ClsIpi';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpNfs.Value;
                    Params[1].AsDateTime := FatEnvDteNfs.Value;
                    Params[2].AsInteger := FatEnvSeqNfs.Value;

                  end;

                  Open;
                  First;

                end;

                while not quSQL.EOF do
                begin

                  ClsIpi := copy(Trim(FLimpaStr(quSQL.FieldbyName('ClsIpi').AsString)), 1, 10);

                  Writeln(ArqTexto, 'R2' +
                    '        ' +
                    Trim(ClsIpi) + FReplicate(' ', 10 - Length(Trim(ClsIpi))) +
                    '                         ' +
                    FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIpi').AsFloat)), 12) +
                    FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIpi').AsFloat)), 12) +
                    '000000000000' +
                    '                                                  ');

                  Inc(QtdLin);

                  quSQL.Next;

                end;
              end;

              if FatEnvModEnv.Value = 'Generica' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select FatGe4.ClsIpi,' +
                    '        Sum(FatGe4.BasIpi) as BasIpi,' +
                    '        Sum(FatGe4.TotIpi) as TotIpi' +
                    ' From FatGe4' +
                    ' Where FatGe4.CodEmp = :CodEmp' +
                    '   and FatGe4.DteGer = :DteGer' +
                    '   and FatGe4.NumGer = :NumGer' +
                    ' Group by FatGe4.ClsIpi';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpGer.Value;
                    Params[1].AsDateTime := FatEnvDteGer.Value;
                    Params[2].AsInteger := FatEnvNumGer.Value;

                  end;

                  Open;
                  First;

                end;

                while not quSQL.EOF do
                begin

                  ClsIpi := copy(Trim(FLimpaStr(quSQL.FieldbyName('ClsIpi').AsString)), 1, 10);

                  Writeln(ArqTexto, 'R2' +
                    '        ' +
                    Trim(ClsIpi) + FReplicate(' ', 10 - Length(Trim(ClsIpi))) +
                    '                         ' +
                    FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIpi').AsFloat)), 12) +
                    FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIpi').AsFloat)), 12) +
                    '000000000000' +
                    '                                                  ');

                  Inc(QtdLin);

                  quSQL.Next;

                end;
              end;

              if FatEnvModEnv.Value = 'Devolucao' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select CmpNf3.ClsIpi,' +
                    '        Sum(CmpNf3.BasIpi) as BasIpi,' +
                    '        Sum(CmpNf3.TotIpi) as TotIpi' +
                    ' From CmpNf3' +
                    ' Where CmpNf3.CodEmp = :CodEmp' +
                    '   and CmpNf3.DteNfs = :DteNfs' +
                    '   and CmpNf3.SeqNfs = :SeqNfs' +
                    ' Group by CmpNf3.ClsIpi';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpNfs.Value;
                    Params[1].AsDateTime := FatEnvDteNfs.Value;
                    Params[2].AsInteger := FatEnvSeqNfs.Value;

                  end;

                  Open;
                  First;

                end;

                while not quSQL.EOF do
                begin

                  ClsIpi := copy(Trim(FLimpaStr(quSQL.FieldbyName('ClsIpi').AsString)), 1, 10);

                  Writeln(ArqTexto, 'R2' +
                    '        ' +
                    Trim(ClsIpi) + FReplicate(' ', 10 - Length(Trim(ClsIpi))) +
                    '                         ' +
                    FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIpi').AsFloat)), 12) +
                    FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIpi').AsFloat)), 12) +
                    '000000000000' +
                    '                                                  ');

                  Inc(QtdLin);

                  quSQL.Next;

                end;
              end;

              if FatEnvModEnv.Value = 'Generica' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Update FatGer Set FlgAtu = ' + QuotedStr('F') + ',' +
                    '                   FlgEnv = ' + QuotedStr('Sim') +
                    ' Where FatGer.CodEmp = :CodEmp' +
                    '   and FatGer.DteGer = :DteGer' +
                    '   and FatGer.NumGer = :NumGer';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpGer.Value;
                    Params[1].AsDateTime := FatEnvDteGer.Value;
                    Params[2].AsInteger := FatEnvNumGer.Value;

                  end;

                  ExecSQL;

                end;
              end;

              if FatEnvModEnv.Value = 'Devolucao' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Update CmpNfs Set FlgAtu = ' + QuotedStr('F') + ',' +
                    '                   FlgEnv = ' + QuotedStr('Sim') +
                    ' Where CmpNfs.CodEmp = :CodEmp' +
                    '   and CmpNfs.DteNfs = :DteNfs' +
                    '   and CmpNfs.SeqNfs = :SeqNfs';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpNfs.Value;
                    Params[1].AsDateTime := FatEnvDteNfs.Value;
                    Params[2].AsInteger := FatEnvSeqNfs.Value;

                  end;

                  ExecSQL;

                end;
              end;

              if FatEnvModEnv.Value = 'Vendas' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Update FatPed Set FlgAtu = ' + QuotedStr('F') + ',' +
                    '                   FlgEnv = ' + QuotedStr('Sim') +
                    ' Where FatPed.CodEmp = :CodEmp' +
                    '   and FatPed.DteRes = :DteRes' +
                    '   and FatPed.NumRes = :NumRes' +
                    '   and FatPed.SeqLib = :SeqLib' +
                    '   and FatPed.SeqFat = :SeqFat';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpRes.Value;
                    Params[1].AsDateTime := FatEnvDteRes.Value;
                    Params[2].AsInteger := FatEnvNumRes.Value;
                    Params[3].AsInteger := FatEnvLibRes.Value;
                    Params[4].AsInteger := FatEnvFatRes.Value;

                  end;

                  ExecSQL;

                end;
              end;

              if FatEnvModEnv.Value = 'Loja' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Update LojFat Set FlgAtu = ' + QuotedStr('*') + ',' +
                    '                   FlgEnv = ' + QuotedStr('Sim') +
                    ' Where LojFat.CodEmp = :CodEmp' +
                    '   and LojFat.DtePed = :DtePed' +
                    '   and LojFat.NumPed = :NumPed';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpNfs.Value;
                    Params[1].AsDateTime := FatEnvDteNfs.Value;
                    Params[2].AsInteger := FatEnvSeqNfs.Value;

                  end;

                  ExecSQL;

                end;
              end;

              FatEnv.Next;

              Inc(r);

              ProgressBar.Position := r;

            end;

            CloseFile(ArqTexto);

            fMsg('Arquivo ' + SaveDialog.FileName + '. Gerado com Sucesso' + #10 + 'Quantidade de Registros para Transmissão ' + Trim(IntToStr(QtdLin)), 'I');

            fmManGDB.dbMain.Commit;

            with quSQL, SQL do
            begin

              Close;
              Text := ' Delete From FatEnv Where FatEnv.SeqArq = ' + QuotedStr(SeqArq);
              ExecSQL;

            end;

            FatEnv.Close;
            FatEnv.Open;

            bConfirma.Enabled := False;

            ProgressBar.Visible := False;

            EdPsqCodEmp.SetFocus;

          end
          else
          begin

            ProgressBar.Visible := False;

            fmManGDB.dbMain.Rollback;

            EdPsqCodEmp.SetFocus;

          end;

        except

          ProgressBar.Visible := False;

          fmManGDB.dbMain.Rollback;

          FatEnv.Locate('NroNfs', VarArrayOf([NroNfs]), [loPartialKey]);

          grRes.SetFocus;

        end;
      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManSda.bbPesquisaClick(Sender: TObject);
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
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdPsqCodEmp);
  if Trim(EdPsqApeArq.Text) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdPsqApeArq);

  if Trim(fLimpaStr(EdDteFat1.Text)) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdDteFat1);
  if Trim(fLimpaStr(EdDteFat2.Text)) = '' then
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdDteFat2);

  EdPsqTipArq.Text := '.S' + FNumZeros(copy(FormatDateTime('dd/mm/yyyy', EdDteFat2.Date), 4, 2), 2);

  sFiltro := '';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatEnv Where FatEnv.SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  sFiltro := ' and FatPed.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text) + ' and FatPed.SitFat = ' + QuotedStr('Faturado');
    // +' and FatPed.FlgImp = '+ QuotedStr('Sim');

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and FatPed.FlgEnv = ' + QuotedStr('Sim');
    1: sFiltro := sFiltro + ' and FatPed.FlgEnv = ' + QuotedStr('Nao');
  end;

  sFiltro := sFiltro + ' and FatPed.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date)) + ' and FatPed.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatEnv (SeqArq,CodEmp,NroNfs,DteFat,HreFat,UfeFat,CodCf1,CodCli,NomCli,InsCli,CgcCli,IntFin,TotFat,TotDsr,BasIpi,TotIpi,BasIcm,TotIcm,BasSub,TotSub,TotGer,EmpRes,DteRes,NumRes,LibRes,FatRes,SitFat,ModEnv)'
      +
      ' Select ' + QuotedStr(SeqArq) + ',' +
      '        FatCfo.CodEmp,' +
      '        FatPed.NroNfs,' +
      '        FatPed.DteFat,' +
      '        FatPed.HreFat,' +
      '        FatPed.UfeFat,' +
      '        FatCfo.CodCfo,' +
      '        FatPed.CodCli,' +
      '        FinCli.NomCli,' +
      '        FatPed.InsCli,' +
      '        FatPed.CgcCli,' +
      '        FatPed.IntFin,' +
      '        FatCfo.TotFat,' +
      '        FatCfo.TotDsr,' +
      '        FatCfo.BasIpi,' +
      '        FatCfo.TotIpi,' +
      '        FatCfo.BasIcm,' +
      '        FatCfo.TotIcm,' +
      '        FatCfo.BasSub,' +
      '        FatCfo.TotSub,' +
      '        FatCfo.TotGer,' +
      '        FatCfo.CodEmp,' +
      '        FatCfo.DteRes,' +
      '        FatCfo.NumRes,' +
      '        FatCfo.SeqLib,' +
      '        FatCfo.SeqFat,' +
      '        FatPed.SitFat,' + QuotedStr('Vendas') +
      ' From FatCfo,FatPed,FinCli' +
      ' Where FatCfo.CodEmp = FatPed.CodEmp' +
      '   and FatCfo.DteRes = FatPed.DteRes' +
      '   and FatCfo.NumRes = FatPed.NumRes' +
      '   and FatCfo.SeqLib = FatPed.SeqLib' +
      '   and FatCfo.SeqFat = FatPed.SeqFat' +
      '   and FatPed.CodCli = FinCli.CodCli' + sFiltro;
    ExecSQL;

  end;

  sFiltro := ' Where FatGer.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text) + ' and FatGer.SitGer = ' + QuotedStr('Faturado') + ' and FatGer.TipPfa = ' +
    QuotedStr('Saida'); // +' and FatGer.FlgImp = '+ QuotedStr('Sim');

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and FatGer.FlgEnv = ' + QuotedStr('Sim');
    1: sFiltro := sFiltro + ' and FatGer.FlgEnv = ' + QuotedStr('Nao');
  end;

  sFiltro := sFiltro + ' and FatGer.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date)) + ' and FatGer.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatEnv (SeqArq,CodEmp,NroNfs,DteFat,HreFat,UfeFat,CodCf1,CodCli,NomCli,InsCli,CgcCli,IntFin,TotFat,TotDsr,BasIpi,TotIpi,BasIcm,TotIcm,BasSub,TotSub,TotGer,EmpGer,DteGer,NumGer,SitFat,ModEnv)'
      +
      ' Select ' + QuotedStr(SeqArq) + ',' +
      '        FatGer.CodEmp,' +
      '        FatGer.NroNfs,' +
      '        FatGer.DteFat,' +
      '        FatGer.HreFat,' +
      '        FatGer.UfeGer,' +
      '        FatGer.CodCf1,' +
      '        FatGer.CodCli,' +
      '        FinCli.NomCli,' +
      '        FatGer.InsCli,' +
      '        FatGer.CgcCli,' +
      '        FatGer.IntFin,' +
      '        FatGer.TotIte,' +
      '        FatGer.TotDsr,' +
      '        FatGer.BasIpi,' +
      '        FatGer.TotIpi,' +
      '        FatGer.BasIcm,' +
      '        FatGer.TotIcm,' +
      '        FatGer.BasSub,' +
      '        FatGer.TotSub,' +
      '        FatGer.TotGer,' +
      '        FatGer.CodEmp,' +
      '        FatGer.DteGer,' +
      '        FatGer.NumGer,' +
      '        FatGer.SitGer,' + QuotedStr('Generica') +
      ' From FatGer LEFT JOIN FinCli ON (FatGer.CodCli = FinCli.CodCli)' + sFiltro;
    ExecSQL;

  end;

  sFiltro := ' Where CmpNfs.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text) +
    '   and ( CmpNfs.SitNfs = ' + QuotedStr('Concluido') + ' or CmpNfs.SitNfs = ' + QuotedStr('Recebido') + ' or CmpNfs.SitNfs = ' +
      QuotedStr('Recebido Parcialmente') + ' or CmpNfs.SitNfs = ' + QuotedStr('Saldo Nao Atendido') + ' )' +
    '   and CmpNfs.TipPfa = ' + QuotedStr('Saida') +
    '   and CmpNfs.NroNfs > ' + QuotedStr('0');

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and CmpNfs.FlgEnv = ' + QuotedStr('Sim');
    1: sFiltro := sFiltro + ' and CmpNfs.FlgEnv = ' + QuotedStr('Nao');
  end;

  sFiltro := sFiltro + ' and CmpNfs.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date)) + ' and CmpNfs.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatEnv (SeqArq,CodEmp,NroNfs,DteFat,HreFat,UfeFat,CodCf1,CodCli,NomCli,InsCli,CgcCli,IntFin,TotFat,TotDsr,BasIpi,TotIpi,BasIcm,TotIcm,BasSub,TotSub,TotGer,EmpNfs,DteNfs,SeqNfs,SitFat,ModEnv)'
      +
      ' Select ' + QuotedStr(SeqArq) + ',' +
      '        CmpNfs.CodEmp,' +
      '        CmpNfs.NroNfs,' +
      '        CmpNfs.DteFat,' +
      '        CmpNfs.HreFat,' +
      '        CmpNfs.UfeNfs,' +
      '        CmpNfs.CodCf1,' +
      '        CmpNfs.CodFor,' +
      '        FinFor.NomFor,' +
      '        CmpNfs.InsFor,' +
      '        CmpNfs.CgcFor,' +
      '        CmpNfs.IntFin,' +
      '        CmpNfs.TotIt1,' + QuotedStr('0') + ',' +
      '        CmpNfs.BasIpi,' +
      '        CmpNfs.TotIp1,' +
      '        CmpNfs.BasIc1,' +
      '        CmpNfs.TotIc1,' +
      '        CmpNfs.BasSu1,' +
      '        CmpNfs.TotSu1,' +
      '        CmpNfs.TotGe1,' +
      '        CmpNfs.CodEmp,' +
      '        CmpNfs.DteNfs,' +
      '        CmpNfs.SeqNfs,' +
      '        CmpNfs.SitNfs,' + QuotedStr('Fornecedor') +
      ' From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor)' + sFiltro;
    ExecSQL;

  end;

  sFiltro := ' and LojFat.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text) + ' and LojFat.SitFat = ' + QuotedStr('Faturado') + ' and LojFat.TipPfa = ' +
    QuotedStr('Saida') + ' and LojFat.NroNfs > 0';

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and LojFat.FlgEnv = ' + QuotedStr('Sim');
    1: sFiltro := sFiltro + ' and LojFat.FlgEnv = ' + QuotedStr('Nao');
  end;

  sFiltro := sFiltro + ' and LojFat.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date)) + ' and LojFat.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatEnv (SeqArq,CodEmp,NroNfs,DteFat,HreFat,UfeFat,CodCf1,CodCli,NomCli,InsCli,CgcCli,IntFin,TotFat,TotDsr,BasIpi,TotIpi,BasIcm,TotIcm,BasSub,TotSub,TotGer,EmpNfs,DteNfs,SeqNfs,SitFat,ModEnv)'
      +
      ' Select ' + QuotedStr(SeqArq) + ',' +
      '        LojFat.CodEmp,' +
      '        LojFat.NroNfs,' +
      '        LojFat.DteFat,' +
      '        LojFat.HreFat,' +
      '        LojFat.UfeFat,' +
      '        LojCfo.CodCfo,' +
      '        LojFat.CodCli,' +
      '        LojFat.NomCli,' +
      '        LojFat.InsCli,' +
      '        LojFat.CgcCli,' + QuotedStr('Nao') + ',' +
      '        LojCfo.TotFat,' + QuotedStr('0') + ',' +
      '        LojCfo.BasIpi,' +
      '        LojCfo.TotIpi,' +
      '        LojCfo.BasIcm,' +
      '        LojCfo.TotIcm,' +
      '        LojCfo.BasSub,' +
      '        LojCfo.TotSub,' +
      '        LojCfo.TotGer,' +
      '        LojFat.CodEmp,' +
      '        LojFat.DtePed,' +
      '        LojFat.NumPed,' +
      '        LojFat.SitFat,' + QuotedStr('Loja') +
      ' From LojCfo,LojFat' +
      ' Where LojCfo.CodEmp = LojFat.CodEmp' +
      '   and LojCfo.DtePed = LojFat.DtePed' +
      '   and LojCfo.NumPed = LojFat.NumPed' + sFiltro;
    ExecSQL;

  end;

  with FatEnv, SQL do
  begin

    Close;
    Text := ' Select * From FatEnv' +
      ' Where FatEnv.SeqArq = ' + QuotedStr(SeqArq) +
      ' Order by FatEnv.DteFat,FatEnv.NroNfs';
    Open;

  end;

  if FatEnvNroNfs.Value > 0 then
    bConfirma.Enabled := True
  else
    fmsgErro('Informações para Envio não Encontradas.', EdPsqCodEmp);

  grRes.SetFocus;

end;

procedure TfmManSda.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManSda := nil;
end;

procedure TfmManSda.FormShow(Sender: TObject);
begin
  inherited;

  ProgressBar.Visible := False;

  EdPsqApeArq.Text := 'S' + copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) + copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) + copy(FormatDateTime('dd/mm/yyyy',
    Date), 9, 2);

  EdPsqCodEmp.SetFocus;

end;

procedure TfmManSda.FormCreate(Sender: TObject);
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

procedure TfmManSda.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManSda.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManSda.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManSda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatEnv Where FatEnv.SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  Action := CaFree;

end;

end.
