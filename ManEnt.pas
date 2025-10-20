unit ManEnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls, Db,
  Wwdatsrc, DBTables, Wwquery, dxExEdtr, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  dxDBEdtr, Buttons, dxfProgressBar, dxColorDateEdit, dxColorEdit;

type
  TfmManEnt = class(TfmPadrao)
    PaintBox: TPaintBox;
    grRes: ThGrid;
    grPed1: TdxDBGraphicEdit;
    FatEnv: TwwQuery;
    DsRes: TwwDataSource;
    Label7: TLabel;
    Bevel2: TBevel;
    bbPesquisa: TBitBtn;
    Label11: TLabel;
    Bevel3: TBevel;
    bConfirma: TBitBtn;
    quSql: TwwQuery;
    SaveDialog: TSaveDialog;
    EdPsqApeArq: TdxColorEdit;
    Label2: TLabel;
    EdPsqTipArq: TdxColorEdit;
    rgStatus: TRadioGroup;
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
    Label8: TLabel;
    EdDteFat1: TdxColorDateEdit;
    Label1: TLabel;
    EdDteFat2: TdxColorDateEdit;
    FatEnvBASSUB: TFloatField;
    FatEnvTOTSUB: TFloatField;
    FatEnvFATDEV: TIntegerField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqAnoFatKeyPress(Sender: TObject; var Key: Char);
    procedure bConfirmaClick(Sender: TObject);
    procedure bbPesquisaClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    SeqArq: string;
  public
    { Public declarations }
  end;

var
  fmManEnt: TfmManEnt;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, ManGDB, PsqEmp;

{$R *.DFM}

procedure TfmManEnt.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEnt.EdPsqAnoFatKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManEnt.bConfirmaClick(Sender: TObject);
var
  Icm01: array[1..5] of string;
  Icm02: array[1..5] of string;
  Icm03: array[1..5] of string;
  Icm04: array[1..5] of string;
  Icm05: array[1..5] of string;
  NroNfs: real;
  ArqTexto: TextFile;
  i, r, QtdReg, QtdLin, QtdCount: integer;
  IsentoIpi, NomArq, Avista, Aprazo, FlgCtb, CgcCli, InsCli, NomCli, ClsIpi, CodCfo: string;
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

                if FatEnvModEnv.Value = 'Compras' then
                begin

                  with quSQL, SQL do
                  begin

                    Close;
                    Text := ' Select Sum(PraEn3) as QtdReg From CmpEn3' +
                      ' Where CmpEn3.CodEmp = :CodEmp' +
                      '   and CmpEn3.DteEnt = :DteEnt' +
                      '   and CmpEn3.NumEnt = :NumEnt';

                    with Params do
                    begin

                      Params[0].AsInteger := FatEnvEmpEnt.Value;
                      Params[1].AsDateTime := FatEnvDteEnt.Value;
                      Params[2].AsInteger := FatEnvNumEnt.Value;

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

              if FatEnvModEnv.Value = 'Compras' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select Count(*) as QtdReg From CmpEn2' +
                    ' Where CmpEn2.CodEmp = :CodEmp' +
                    '   and CmpEn2.DteEnt = :DteEnt' +
                    '   and CmpEn2.NumEnt = :NumEnt' +
                    '   and CmpEn2.CodGru = :CodGru';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpEnt.Value;
                    Params[1].AsDateTime := FatEnvDteEnt.Value;
                    Params[2].AsInteger := FatEnvNumEnt.Value;
                    Params[3].AsString := '999';

                  end;

                  Open;

                  QtdCount := FieldbyName('QtdReg').AsInteger;

                end;

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select CmpCic.PerIcm,' +
                    '        Sum(CmpCic.BasIcm) as BasIcm,' +
                    '        Sum(CmpCic.TotIcm) as TotIcm' +
                    ' From CmpCic' +
                    ' Where CmpCic.CodEmp = :CodEmp' +
                    '   and CmpCic.DteEnt = :DteEnt' +
                    '   and CmpCic.NumEnt = :NumEnt' +
                    '   and CmpCic.CodCfo = :CodCfo' +
                    ' Group by CmpCic.PerIcm';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpEnt.Value;
                    Params[1].AsDateTime := FatEnvDteEnt.Value;
                    Params[2].AsInteger := FatEnvNumEnt.Value;
                    Params[3].AsString := FatEnvCodCf1.Value;

                  end;

                  Open;
                  First;

                end;

                if quSql.RecordCount = 1 then
                begin

                  while not quSQL.EOF do
                  begin

                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('PerIcm').AsFloat)), 6);

                    if QtdCount = 0 then
                    begin

                      Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvBasIcm.Value)), 12);
                      Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotIcm.Value)), 12);
                      Icm04[i] := '000000000000';
                      Icm05[i] := '000000000000';

                    end
                    else
                    begin

                      Icm01[i] := '000000000000';
                      Icm03[i] := '000000000000';
                      Icm04[i] := '000000000000';
                      Icm05[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvBasIcm.Value)), 12);

                    end;

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

                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('PerIcm').AsFloat)), 6);

                    if QtdCount = 0 then
                    begin

                      Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIcm').AsFloat)), 12);
                      Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIcm').AsFloat)), 12);
                      Icm04[i] := '000000000000';
                      Icm05[i] := '000000000000';

                    end
                    else
                    begin

                      Icm01[i] := '000000000000';
                      Icm03[i] := '000000000000';
                      Icm04[i] := '000000000000';
                      Icm05[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIcm').AsFloat)), 12);

                    end;

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;
                end;
              end;

              if FatEnvModEnv.Value = 'Devolucoes 1' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select FatDv6.PerIcm,' +
                    '        Sum(FatDv6.BasIcm) as BasIcm,' +
                    '        Sum(FatDv6.TotIcm) as TotIcm' +
                    ' From FatDv6' +
                    ' Where FatDv6.CodEmp = :CodEmp' +
                    '   and FatDv6.DteRes = :DteRes' +
                    '   and FatDv6.NumRes = :NumRes' +
                    '   and FatDv6.SeqLib = :SeqLib' +
                    '   and FatDv6.SeqFat = :SeqFat' +
                    '   and FatDv6.SeqDev = :SeqDev' +
                    '   and FatDv6.CodCfo = :CodCfo' +
                    ' Group by FatDv6.PerIcm';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpRes.Value;
                    Params[1].AsDateTime := FatEnvDteRes.Value;
                    Params[2].AsInteger := FatEnvNumRes.Value;
                    Params[3].AsInteger := FatEnvLibRes.Value;
                    Params[4].AsInteger := FatEnvFatRes.Value;
                    Params[5].AsInteger := FatEnvFatDev.Value;
                    Params[6].AsString := FatEnvCodCf1.Value;

                  end;

                  Open;
                  First;

                end;

                if quSql.RecordCount = 1 then
                begin

                  while not quSQL.EOF do
                  begin

                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('PerIcm').AsFloat)), 6);

                    Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvBasIcm.Value)), 12);
                    Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotIcm.Value)), 12);
                    Icm04[i] := '000000000000';
                    Icm05[i] := '000000000000';

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

                    Icm02[i] := FNumZeros(FLimpaStr(FormatFloat('#0.0000', quSQL.FieldbyName('PerIcm').AsFloat)), 6);

                    Icm01[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIcm').AsFloat)), 12);
                    Icm03[i] := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIcm').AsFloat)), 12);
                    Icm04[i] := '000000000000';
                    Icm05[i] := '000000000000';

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

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;
                end;
              end;

              if FatEnvModEnv.Value = 'Devolucoes 2' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select FatDc2.IcmGe2,' +
                    '        Sum(FatDc2.BasIcm) as BasIcm,' +
                    '        Sum(FatDc2.TotIcm) as TotIcm' +
                    ' From FatDc2' +
                    ' Where FatDc2.CodEmp = :CodEmp' +
                    '   and FatDc2.DteGer = :DteGer' +
                    '   and FatDc2.NumGer = :NumGer' +
                    ' Group by FatDc2.IcmGe2';

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

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;
                end;
              end;

              if FatEnvModEnv.Value = 'Fornecedores' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select CmpNf4.PerIcm,' +
                    '        Sum(CmpNf4.BasIcm) as BasIcm,' +
                    '        Sum(CmpNf4.TotIcm) as TotIcm ' +
                    ' From CmpNf4' +
                    ' Where CmpNf4.CodEmp = :CodEmp' +
                    '   and CmpNf4.DteNfs = :DteNfs' +
                    '   and CmpNf4.SeqNfs = :SeqNfs' +
                    ' Group by CmpNf4.PerIcm';

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

                    i := i + 1;

                    quSQL.Next;

                    if i > 5 then
                      quSQL.Last;

                  end;
                end;
              end;

              if FatEnvBasIpi.Value <> FatEnvTotFat.Value then
              begin

                if FatEnvTotFat.Value - FatEnvBasIpi.Value > 5 then
                  IsentoIpi := FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', fRound(FatEnvTotFat.Value - FatEnvBasIpi.Value, 2))), 12)
                else
                  IsentoIpi := '000000000000';

              end
              else
                IsentoIpi := '000000000000';

              if Trim(FatEnvCodCf1.Value) = '1.152' then
                IsentoIpi := '000000000000';

              Writeln(ArqTexto, 'R1' +
                copy(FormatDateTime('dd/mm/yyyy', FatEnvDteFat.Value), 1, 2) +
                copy(FormatDateTime('dd/mm/yyyy', FatEnvDteFat.Value), 4, 2) +
                copy(FormatDateTime('dd/mm/yyyy', FatEnvDteFat.Value), 1, 2) +
                copy(FormatDateTime('dd/mm/yyyy', FatEnvDteFat.Value), 4, 2) +
                '  ' +
                'NFF' +
                '2  ' +
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
                '000000000000' +
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
                // FNumZeros(FLimpaStr(FormatFloat('###,###,##0.00', FatEnvTotDsr.Value)), 12) +
                // '000000000000' +
                fReplicate(' ', 50));

              Inc(QtdLin);

              if FatEnvModEnv.Value = 'Compras' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select CmpCip.ClsIpi,' +
                    '        Sum(CmpCip.BasIpi) as BasIpi,' +
                    '        Sum(CmpCip.TotIpi) as TotIpi' +
                    ' From CmpCip' +
                    ' Where CmpCip.CodEmp = :CodEmp' +
                    '   and CmpCip.DteEnt = :DteEnt' +
                    '   and CmpCip.NumEnt = :NumEnt' +
                    '   and CmpCip.CodCfo = :CodCfo' +
                    ' Group by CmpCip.ClsIpi';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpEnt.Value;
                    Params[1].AsDateTime := FatEnvDteEnt.Value;
                    Params[2].AsInteger := FatEnvNumEnt.Value;
                    Params[3].AsString := FatEnvCodCf1.Value;

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

              if FatEnvModEnv.Value = 'Devolucoes 1' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select FatDv5.ClsIpi,' +
                    '        Sum(FatDv5.BasIpi) as BasIpi,' +
                    '        Sum(FatDv5.TotIpi) as TotIpi' +
                    ' From FatDv5' +
                    ' Where FatDv5.CodEmp = :CodEmp' +
                    '   and FatDv5.DteRes = :DteRes' +
                    '   and FatDv5.NumRes = :NumRes' +
                    '   and FatDv5.SeqLib = :SeqLib' +
                    '   and FatDv5.SeqFat = :SeqFat' +
                    '   and FatDv5.SeqDev = :SeqDev' +
                    '   and FatDv5.CodCfo = :CodCfo' +
                    ' Group by FatDv5.ClsIpi';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpRes.Value;
                    Params[1].AsDateTime := FatEnvDteRes.Value;
                    Params[2].AsInteger := FatEnvNumRes.Value;
                    Params[3].AsInteger := FatEnvLibRes.Value;
                    Params[4].AsInteger := FatEnvFatRes.Value;
                    Params[5].AsInteger := FatEnvFatDev.Value;
                    Params[6].AsString := FatEnvCodCf1.Value;

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

              if FatEnvModEnv.Value = 'Devolucoes 2' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select FatDc2.ClsIpi,' +
                    '        Sum(FatDc2.BasIpi) as BasIpi,' +
                    '        Sum(FatDc2.TotIpi) as TotIpi' +
                    ' From FatDc2' +
                    ' Where FatDc2.CodEmp = :CodEmp' +
                    '   and FatDc2.DteGer = :DteGer' +
                    '   and FatDc2.NumGer = :NumGer' +
                    ' Group by FatDc2.ClsIpi';

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

              if FatEnvModEnv.Value = 'Fornecedores' then
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

              if FatEnvModEnv.Value = 'Compras' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Update CmpEnt Set FlgAtu = ' + QuotedStr('*') + ',' +
                    '                   FlgEnv = ' + QuotedStr('Sim') +
                    ' Where CmpEnt.CodEmp = :CodEmp' +
                    '   and CmpEnt.DteEnt = :DteEnt' +
                    '   and CmpEnt.NumEnt = :NumEnt';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpEnt.Value;
                    Params[1].AsDateTime := FatEnvDteEnt.Value;
                    Params[2].AsInteger := FatEnvNumEnt.Value;

                  end;

                  ExecSQL;

                end;
              end;

              if FatEnvModEnv.Value = 'Devolucoes 1' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Update FatDev Set FlgAtu = ' + QuotedStr('*') + ',' +
                    '                   FlgEnv = ' + QuotedStr('Sim') +
                    ' Where FatDev.CodEmp = :CodEmp' +
                    '   and FatDev.DteRes = :DteRes' +
                    '   and FatDev.NumRes = :NumRes' +
                    '   and FatDev.SeqLib = :SeqLib' +
                    '   and FatDev.SeqFat = :SeqFat' +
                    '   and FatDev.SeqDev = :SeqDev';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpRes.Value;
                    Params[1].AsDateTime := FatEnvDteRes.Value;
                    Params[2].AsInteger := FatEnvNumRes.Value;
                    Params[3].AsInteger := FatEnvLibRes.Value;
                    Params[4].AsInteger := FatEnvFatRes.Value;
                    Params[5].AsInteger := FatEnvFatDev.Value;

                  end;

                  ExecSQL;

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

              if FatEnvModEnv.Value = 'Devolucoes 2' then
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Update FatDcl Set FlgAtu = ' + QuotedStr('F') + ',' +
                    '                   FlgEnv = ' + QuotedStr('Sim') +
                    ' Where FatDcl.CodEmp = :CodEmp' +
                    '   and FatDcl.DteGer = :DteGer' +
                    '   and FatDcl.NumGer = :NumGer';

                  with Params do
                  begin

                    Params[0].AsInteger := FatEnvEmpGer.Value;
                    Params[1].AsDateTime := FatEnvDteGer.Value;
                    Params[2].AsInteger := FatEnvNumGer.Value;

                  end;

                  ExecSQL;

                end;
              end;

              if FatEnvModEnv.Value = 'Fornecedores' then
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

              FatEnv.Next;

              Inc(r);

              ProgressBar.Position := r;

            end;

            CloseFile(ArqTexto);

            fMsg('Arquivo ' + SaveDialog.FileName + '. Gerado com sucesso' + #10 + 'quantidade de registros para transmissão ' + Trim(IntToStr(QtdLin)), 'I');

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

procedure TfmManEnt.bbPesquisaClick(Sender: TObject);
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

  EdPsqTipArq.Text := '.E' + FNumZeros(copy(FormatDateTime('dd/mm/yyyy', EdDteFat2.Date), 4, 2), 2);

  sFiltro := '';

  with quSQL, SQL do
  begin

    Close;
    Text := ' Delete From FatEnv Where FatEnv.SeqArq = ' + QuotedStr(SeqArq);
    ExecSQL;

  end;

  sFiltro := ' and CmpEnt.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text) + ' and CmpEnt.SitEnt = ' + QuotedStr('Concluida') + ' and CmpEnt.CodTip >= ' +
    QuotedStr('1') + ' and CmpEnt.CodTip <= ' + QuotedStr('2');

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and CmpEnt.FlgEnv = ' + QuotedStr('Sim');
    1: sFiltro := sFiltro + ' and CmpEnt.FlgEnv = ' + QuotedStr('Nao');
  end;

  sFiltro := sFiltro + ' and CmpEnt.DteOpe >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date)) + ' and CmpEnt.DteOpe <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatEnv (SeqArq,CodEmp,NroNfs,DteFat,HreFat,UfeFat,CodCf1,CodCli,NomCli,InsCli,CgcCli,IntFin,TotFat,TotDsr,BasIpi,TotIpi,BasSub,TotSub,BasIcm,TotIcm,TotGer,EmpEnt,DteEnt,NumEnt,SitFat,ModEnv)'
      +
      ' Select ' + QuotedStr(SeqArq) + ',' +
      '        CmpEnt.CodEmp,' +
      '        CmpEnt.NumDoc,' +
      '        CmpEnt.DteOpe,' +
      '        CmpEnt.HreEnt,' +
      '        CmpEnt.UfeEnt,' +
      '        CmpCfo.CodCfo,' +
      '        CmpEnt.CodFor,' +
      '        FinFor.NomFor,' +
      '        FinFor.InsFor,' +
      '        FinFor.CgcFor,' +
      '        CmpEnt.IntFin,' +
      '        CmpCfo.TotEnt,' + QuotedStr('0') + ',' +
      '        CmpCfo.BasIpi,' +
      '        CmpCfo.TotIpi,' +
      '        CmpCfo.BasSub,' +
      '        CmpCfo.TotSub,' +
      '        CmpCfo.BasIcm,' +
      '        CmpCfo.TotIcm,' +
      '        CmpCfo.TotGer,' +
      '        CmpEnt.CodEmp,' +
      '        CmpEnt.DteEnt,' +
      '        CmpEnt.NumEnt,' +
      '        CmpEnt.SitEnt,' + QuotedStr('Compras') +
      ' From CmpEnt,CmpCfo,FinFor' +
      ' Where CmpEnt.CodEmp = CmpCfo.CodEmp' +
      '   and CmpEnt.DteEnt = CmpCfo.DteEnt' +
      '   and CmpEnt.NumEnt = CmpCfo.NumEnt' +
      '   and CmpEnt.CodFor = FinFor.CodFor' + sFiltro;
    ExecSQL;

  end;

  sFiltro := ' Where FatGer.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text) + ' and FatGer.SitGer = ' + QuotedStr('Faturado') + ' and FatGer.TipPfa = ' +
    QuotedStr('Entrada'); // +' and FatGer.FlgImp = '+ QuotedStr('Sim');

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and FatGer.FlgEnv = ' + QuotedStr('Sim');
    1: sFiltro := sFiltro + ' and FatGer.FlgEnv = ' + QuotedStr('Nao');
  end;

  sFiltro := sFiltro + ' and FatGer.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date)) + ' and FatGer.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatEnv (SeqArq,CodEmp,NroNfs,DteFat,HreFat,UfeFat,CodCf1,CodCli,NomCli,InsCli,CgcCli,IntFin,TotFat,TotDsr,BasIpi,TotIpi,BasSub,TotSub,BasIcm,TotIcm,TotGer,EmpGer,DteGer,NumGer,SitFat,ModEnv)'
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
      '        FatGer.BasSub,' +
      '        FatGer.TotSub,' +
      '        FatGer.BasIcm,' +
      '        FatGer.TotIcm,' +
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
    '   and CmpNfs.TipPfa = ' + QuotedStr('Entrada') +
    '   and CmpNfs.NroNfs > ' + QuotedStr('0'); //+'   and CmpNfs.FlgImp = '+ QuotedStr('Sim');

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
      '        CmpNfs.TotIte,' + QuotedStr('0') + ',' +
      '        CmpNfs.BasIpi,' +
      '        CmpNfs.TotIpi,' +
      '        CmpNfs.BasSub,' +
      '        CmpNfs.TotSub,' +
      '        CmpNfs.BasIcm,' +
      '        CmpNfs.TotIcm,' +
      '        CmpNfs.TotGer,' +
      '        CmpNfs.CodEmp,' +
      '        CmpNfs.DteNfs,' +
      '        CmpNfs.SeqNfs,' +
      '        CmpNfs.SitNfs,' + QuotedStr('Fornecedores') +
      ' From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor)' + sFiltro;
    ExecSQL;

  end;

  sFiltro := ' Where FatDev.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text) +
    '   and FatDev.FlgSin = ' + QuotedStr('Sim') +
    '   and FatDev.SitDev = ' + QuotedStr('Devolvido') +
    '   and FatDev.NroNfs > ' + QuotedStr('0') +
    '   and FatDev.FlgFsc = ' + QuotedStr('Nao');

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date));
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and FatDev.FlgEnv = ' + QuotedStr('Sim');
    1: sFiltro := sFiltro + ' and FatDev.FlgEnv = ' + QuotedStr('Nao');
  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatEnv (SeqArq,CodEmp,NroNfs,DteFat,HreFat,UfeFat,CodCf1,CodCli,NomCli,InsCli,CgcCli,IntFin,TotFat,TotDsr,BasIpi,TotIpi,BasIcm,TotIcm,BasSub,TotSub,TotGer,EmpRes,DteRes,NumRes,LibRes,FatRes,FatDev,SitFat,ModEnv)'
      +
      ' Select ' + QuotedStr(SeqArq) + ',' +
      '        FatDev.CodEmp,' +
      '        FatDev.NroNfs,' +
      '        FatDev.DteDev,' +
      '        FatDev.HreDev,' +
      '        FatDev.UfeDev,' +
      '        FatDev.CodCf1,' +
      '        FatDev.CodCli,' +
      '        FinCli.NomCli,' +
      '        FatDev.InsCli,' +
      '        FatDev.CgcCli,' +
      '        FatDev.IntFin,' +
      '        FatDev.TotDev,' +
      '        FatDev.TotDsr,' +
      '        FatDev.BasIpi,' +
      '        FatDev.TotIpi,' +
      '        FatDev.BasSub,' +
      '        FatDev.TotSub,' +
      '        FatDev.BasIcm,' +
      '        FatDev.TotIcm,' +
      '        FatDev.TotGer,' +
      '        FatDev.CodEmp,' +
      '        FatDev.DteRes,' +
      '        FatDev.NumRes,' +
      '        FatDev.SeqLib,' +
      '        FatDev.SeqFat,' +
      '        FatDev.SeqDev,' +
      '        FatDev.SitDev,' + QuotedStr('Devolucoes 1') +
      ' From FatDev LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)' + sFiltro;
    ExecSQL;

  end;

  sFiltro := ' Where FatDev.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text) +
    '   and FatDev.FlgSin = ' + QuotedStr('Sim') +
    '   and FatDev.SitDev = ' + QuotedStr('Devolvido') +
    '   and FatDev.FlgFsc = ' + QuotedStr('Sim');

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date));
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDev.DteDev <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and FatDev.FlgEnv = ' + QuotedStr('Sim');
    1: sFiltro := sFiltro + ' and FatDev.FlgEnv = ' + QuotedStr('Nao');
  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatEnv (SeqArq,CodEmp,NroNfs,DteFat,HreFat,UfeFat,CodCf1,CodCli,NomCli,InsCli,CgcCli,IntFin,TotFat,TotDsr,BasIpi,TotIpi,BasIcm,TotIcm,BasSub,TotSub,TotGer,EmpRes,DteRes,NumRes,LibRes,FatRes,FatDev,SitFat,ModEnv)'
      +
      ' Select ' + QuotedStr(SeqArq) + ',' +
      '        FatDev.CodEmp,' +
      '        FatDev.NfsCli,' +
      '        FatDev.DteDev,' +
      '        FatDev.HreDev,' +
      '        FatDev.UfeDev,' +
      '        FatDev.CodCf1,' +
      '        FatDev.CodCli,' +
      '        FinCli.NomCli,' +
      '        FatDev.InsCli,' +
      '        FatDev.CgcCli,' +
      '        FatDev.IntFin,' +
      '        FatDev.TotDev,' +
      '        FatDev.TotDsr,' +
      '        FatDev.BasIpi,' +
      '        FatDev.TotIpi,' +
      '        FatDev.BasSub,' +
      '        FatDev.TotSub,' +
      '        FatDev.BasIcm,' +
      '        FatDev.TotIcm,' +
      '        FatDev.TotGer,' +
      '        FatDev.CodEmp,' +
      '        FatDev.DteRes,' +
      '        FatDev.NumRes,' +
      '        FatDev.SeqLib,' +
      '        FatDev.SeqFat,' +
      '        FatDev.SeqDev,' +
      '        FatDev.SitDev,' + QuotedStr('Devolucoes 1') +
      ' From FatDev LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)' + sFiltro;
    ExecSQL;

  end;

  sFiltro := ' Where FatDCl.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text) +
    '   and FatDCl.FlgSin = ' + QuotedStr('Sim') +
    '   and FatDCl.SitGer = ' + QuotedStr('Faturado');

  if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date));
  if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
    sFiltro := sFiltro + ' and FatDCl.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

  case rgStatus.Itemindex of
    0: sFiltro := sFiltro + ' and FatDCl.FlgEnv = ' + QuotedStr('Sim');
    1: sFiltro := sFiltro + ' and FatDCl.FlgEnv = ' + QuotedStr('Nao');
  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Insert Into FatEnv (SeqArq,CodEmp,NroNfs,DteFat,HreFat,UfeFat,CodCf1,CodCli,NomCli,InsCli,CgcCli,IntFin,TotFat,TotDsr,BasIpi,TotIpi,BasSub,TotSub,BasIcm,TotIcm,TotGer,EmpGer,DteGer,NumGer,SitFat,ModEnv)'
      +
      ' Select ' + QuotedStr(SeqArq) + ',' +
      '        FatDCl.CodEmp,' +
      '        FatDCl.NroNfs,' +
      '        FatDCl.DteFat,' +
      '        FatDCl.HreFat,' +
      '        FatDCl.UfeGer,' +
      '        FatDCl.CodCf1,' +
      '        FatDCl.CodCli,' +
      '        FinCli.NomCli,' +
      '        FatDCl.InsCli,' +
      '        FatDCl.CgcCli,' +
      '        FatDCl.IntFin,' +
      '        FatDCl.TotIte,' +
      '        FatDCl.TotDsr,' +
      '        FatDCl.BasIpi,' +
      '        FatDCl.TotIpi,' +
      '        FatDCl.BasSub,' +
      '        FatDCl.TotSub,' +
      '        FatDCl.BasIcm,' +
      '        FatDCl.TotIcm,' +
      '        FatDCl.TotGer,' +
      '        FatDCl.CodEmp,' +
      '        FatDCl.DteGer,' +
      '        FatDCl.NumGer,' +
      '        FatDCl.SitGer,' + QuotedStr('Devolucoes 2') +
      ' From FatDCl LEFT JOIN FinCli ON (FatDCl.CodCli = FinCli.CodCli)' + sFiltro;
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

procedure TfmManEnt.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEnt := nil;
end;

procedure TfmManEnt.FormShow(Sender: TObject);
begin
  inherited;

  ProgressBar.Visible := False;

  EdPsqApeArq.Text := 'E' + copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) + copy(FormatDateTime('dd/mm/yyyy', Date), 4, 2) + copy(FormatDateTime('dd/mm/yyyy',
    Date), 9, 2);

  EdPsqCodEmp.SetFocus;

end;

procedure TfmManEnt.FormCreate(Sender: TObject);
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

procedure TfmManEnt.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManEnt.EdPsqCodEmpExit(Sender: TObject);
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

procedure TfmManEnt.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManEnt.FormClose(Sender: TObject; var Action: TCloseAction);
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
