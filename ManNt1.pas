unit ManNt1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdbdatetimepicker, Mask, DBCtrls, hEdits, Buttons,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, AlignEdit, Db, DBTables,
  Wwquery, FShowPadrao, dxDBColorMemo, dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManNt1 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label10: TLabel;
    Bevel1: TBevel;
    EdFlgSai: TdxDBColorEdit;
    Label52: TLabel;
    EdFlgEnt: TdxDBColorEdit;
    Label53: TLabel;
    Label1: TLabel;
    EdCodCf1: TdxDBColorEdit;
    Label2: TLabel;
    EdCodCf2: TdxDBColorEdit;
    Label54: TLabel;
    EdDesNat: TdxDBColorEdit;
    Label51: TLabel;
    EdInsSub: TdxDBColorEdit;
    Label8: TLabel;
    Bevel2: TBevel;
    Label47: TLabel;
    EdTotFrt: TdxDBColorCurrencyEdit;
    Label48: TLabel;
    EdTotSeg: TdxDBColorCurrencyEdit;
    Label49: TLabel;
    EdTotDes: TdxDBColorCurrencyEdit;
    Label9: TLabel;
    Bevel3: TBevel;
    Label31: TLabel;
    Label36: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label38: TLabel;
    EdAltVol: TdxDBColorCurrencyEdit;
    EdUfeTra: TdxDBColorEdit;
    EdBaiTra: TdxDBColorEdit;
    EdTenTra: TdxDBColorEdit;
    EdCgcTra: TdxDBColorEdit;
    EdNomTra: TdxDBColorEdit;
    EdEndTra: TdxDBColorEdit;
    EdCepTra: TdxDBColorEdit;
    EdEspFat: TdxDBColorEdit;
    Label39: TLabel;
    Label3: TLabel;
    Label41: TLabel;
    Label40: TLabel;
    EdMarFat: TdxDBColorEdit;
    EdNroFat: TdxDBColorEdit;
    Label37: TLabel;
    EdInsTra: TdxDBColorEdit;
    Label34: TLabel;
    Label44: TLabel;
    Label42: TLabel;
    EdInfBrt: TdxDBColorCurrencyEdit;
    EdPlcTra: TdxDBColorEdit;
    EdCidTra: TdxDBColorEdit;
    Label7: TLabel;
    EdNumTra: TdxDBColorEdit;
    Label56: TLabel;
    EdTipFrt: TdxDBColorEdit;
    EdInfLiq: TdxDBColorCurrencyEdit;
    EdUfePlc: TdxDBColorEdit;
    Label5: TLabel;
    Label43: TLabel;
    Label11: TLabel;
    Bevel4: TBevel;
    Label57: TLabel;
    Label61: TLabel;
    Label58: TLabel;
    EdBaiCli: TdxDBColorEdit;
    EdCgeCli: TdxDBColorEdit;
    EdTenCli: TdxDBColorEdit;
    EdEndCli: TdxDBColorEdit;
    Label62: TLabel;
    Label59: TLabel;
    EdCidCli: TdxDBColorEdit;
    EdIneCli: TdxDBColorEdit;
    Label60: TLabel;
    EdUfeCli: TdxDBColorEdit;
    Label4: TLabel;
    EdCepCli: TdxDBColorEdit;
    EdNumCli: TdxDBColorEdit;
    Label6: TLabel;
    bcontinuar: TBitBtn;
    bretornar: TBitBtn;
    Label12: TLabel;
    EdNomEnt: TdxDBColorEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure EdCgcTraExit(Sender: TObject);
    procedure EdCgeCliExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCgeCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCgeCliMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure bRetornarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManNt1: TfmManNt1;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManNot, ManNt2;

{$R *.DFM}

procedure TfmManNt1.FormCreate(Sender: TObject);
begin
  inherited;
  fmManNot.FatPed.Edit;
end;

procedure TfmManNt1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManNt1.bcontinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  fmManNot.FatPedCodCf1.Value := Trim(EdCodCf1.Text);
  fmManNot.FatPedCodCf2.Value := Trim(EdCodCf2.Text);
  fmManNot.FatPedDesNat.Value := Trim(EdDesNat.Text);
  fmManNot.FatPedInsSub.Value := Trim(EdInsSub.Text);
  fmManNot.FatPedNomTra.Value := Trim(EdNomTra.Text);
  fmManNot.FatPedCgcTra.Value := Trim(EdCgcTra.Text);
  fmManNot.FatPedInsTra.Value := Trim(EdInsTra.Text);
  fmManNot.FatPedTenTra.Value := Trim(EdTenTra.Text);
  fmManNot.FatPedEndTra.Value := Trim(EdEndTra.Text);
  fmManNot.FatPedNumTra.Value := Trim(EdNumTra.Text);
  fmManNot.FatPedBaiTra.Value := Trim(EdBaiTra.Text);
  fmManNot.FatPedCidTra.Value := Trim(EdCidTra.Text);
  fmManNot.FatPedUfeTra.Value := Trim(EdUfeTra.Text);
  fmManNot.FatPedCepTra.Value := Trim(EdCepTra.Text);
  fmManNot.FatPedNroFat.Value := Trim(EdNroFat.Text);
  fmManNot.FatPedPlcTra.Value := Trim(EdPlcTra.Text);
  fmManNot.FatPedUfePlc.Value := Trim(EdUfePlc.Text);
  fmManNot.FatPedNomEnt.Value := Trim(EdNomEnt.Text);
  fmManNot.FatPedTenCli.Value := Trim(EdTenCli.Text);
  fmManNot.FatPedEndCli.Value := Trim(EdEndCli.Text);
  fmManNot.FatPedNumCli.Value := Trim(EdNumCli.Text);
  fmManNot.FatPedCgeCli.Value := Trim(EdCgeCli.Text);
  fmManNot.FatPedIneCli.Value := Trim(EdIneCli.Text);
  fmManNot.FatPedBaiCli.Value := Trim(EdBaiCli.Text);
  fmManNot.FatPedCidCli.Value := Trim(EdCidCli.Text);
  fmManNot.FatPedUfeCli.Value := Trim(EdUfeCli.Text);
  fmManNot.FatPedCepCli.Value := Trim(EdCepCli.Text);

  with fmManNot.FatPed do
  begin

    fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
    ;

    try

      ApplyUpdates; {Tenta aplicar as alterações}
      ;

      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
      ;

    except

      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
      ;

      if fmManNot.FatPed.State = dsBrowse then
        fmManNot.FatPed.Edit;

      EdDesNat.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManNot.FatPed.Close;
  fmManNot.FatPed.Open;

  fmManNot.pnBasIcm.Caption := FormatFloat('###,###,##0.00', fmManNot.FatPedBasIcm.Value);
  fmManNot.pnTotIcm.Caption := FormatFloat('###,###,##0.00', fmManNot.FatPedTotIcm.Value);
  fmManNot.pnBasSub.Caption := FormatFloat('###,###,##0.00', fmManNot.FatPedBasSub.Value);
  fmManNot.pnTotSub.Caption := FormatFloat('###,###,##0.00', fmManNot.FatPedTotSub.Value);
  fmManNot.pnTotFat.Caption := FormatFloat('###,###,##0.00', fmManNot.FatPedTotFat.Value);
  fmManNot.pnTotFrt.Caption := FormatFloat('###,###,##0.00', fmManNot.FatPedTotFrt.Value);
  fmManNot.pnTotSeg.Caption := FormatFloat('###,###,##0.00', fmManNot.FatPedTotSeg.Value);
  fmManNot.pnTotDes.Caption := FormatFloat('###,###,##0.00', fmManNot.FatPedTotDes.Value);
  fmManNot.pnTotIpi.Caption := FormatFloat('###,###,##0.00', fmManNot.FatPedTotIpi.Value);
  fmManNot.pnTotGer.Caption := FormatFloat('###,###,##0.00', fmManNot.FatPedTotGer.Value);

  try

    fmManNt2 := TfmManNt2.Create(Self);

    fmManNt2.ShowModal;

  finally

    FreeAndNil(fmManNt2);

  end;

  if fmManNot.Finalizar = 'S' then
    Close
  else
  begin

    fmManNot.FatPed.Edit;

    EdDesNat.SetFocus;

  end;
end;

procedure TfmManNt1.FormShow(Sender: TObject);
var
  ObsFat: string;
begin
  inherited;

  fmManNot.FatPed.Edit;

  if fmManNot.FatPedInfBrt.AsFloat = 0 then
    fmManNot.FatPedInfBrt.AsFloat := fmManNot.FatPedTotBrt.AsFloat;
  if fmManNot.FatPedInfLiq.AsFloat = 0 then
    fmManNot.FatPedInfLiq.AsFloat := fmManNot.FatPedTotLiq.AsFloat;
  if fmManNot.FatPedAltVol.AsFloat = 0 then
    fmManNot.FatPedAltVol.AsFloat := fmManNot.FatPedTotVol.AsFloat;

  with fmManNot.quSQL, SQL do
  begin

    Close;
    Text := ' Select FatPe2.CodCfo,' +
      '        Count(*) as QtdReg' +
      ' From FatPe2' +
      ' Where FatPe2.CodEmp = ' + QuotedStr(IntToStr(fmManNot.FatPe2CodEmp.AsInteger)) +
      '   and FatPe2.DteRes = ' + QuotedStr(fDateToSQL(fmManNot.FatPe2DteRes.AsDateTime)) +
      '   and FatPe2.NumRes = ' + QuotedStr(IntToStr(fmManNot.FatPe2NumRes.AsInteger)) +
      '   and FatPe2.SeqLib = ' + QuotedStr(IntToStr(fmManNot.FatPe2SeqLib.AsInteger)) +
      '   and FatPe2.SeqFat = ' + QuotedStr(IntToStr(fmManNot.FatPe2SeqFat.AsInteger)) +
      ' Group by FatPe2.CodCfo' +
      ' Order by Count(*) Desc';
    Open;
    First;

  end;

  fmManNot.FatPedCodCf1.Value := Trim(fmManNot.quSQL.FieldbyName('CodCfo').AsString);

  if not fmManNot.quSQL.EOF then
  begin

    fmManNot.quSQL.Next;

    if Trim(fmManNot.quSQL.FieldbyName('CodCfo').AsString) <> fmManNot.FatPedCodCf1.Value then
      fmManNot.FatPedCodCf2.Value := Trim(fmManNot.quSQL.FieldbyName('CodCfo').AsString);

  end;

  fmManNot.quSQL.Close;

  if TrimLeft(TrimRight(fmManNot.FatPedCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmManNot.FatPedCgeCli.Value))) > 11 then
      fmManNot.FatPedCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNot.FatPedCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManNot.FatPedCgeCli.EditMask := '';

  if TrimLeft(TrimRight(fmManNot.FatPedCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmManNot.FatPedCgcTra.Value)) <> '' then
      fmManNot.FatPedCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNot.FatPedCgcTra.EditMask := '';

  end
  else
    fmManNot.FatPedCgcTra.EditMask := '';

  ObsFat := fmManNot.FatPedObsFat.Value;

  if pos('##TOTICM##', ObsFat) > 0 then
    ObsFat := copy(ObsFat, 1, (pos('##TOTICM##', ObsFat) - 1)) +

    PreString(FormatFloat('###,###,##0.00', fmManNot.FatPedTotIcm.Value), 15) + ' ' +

    copy(ObsFat, (pos('##TOTICM##', ObsFat) + 11), Length(Trim(ObsFat)));

  fmManNot.FatPedObsFat.Value := ObsFat;

  EdDesNat.SetFocus;

end;

procedure TfmManNt1.EdCgeCliMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if fmManNot.FatPedCgcCli.EditMask <> '' then
    fmManNot.FatPedCgcCli.EditMask := '';
end;

procedure TfmManNt1.EdCgeCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if fmManNot.FatPedCgcCli.EditMask <> '' then
    fmManNot.FatPedCgcCli.EditMask := '';
end;

procedure TfmManNt1.EdCgeCliExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManNot.FatPedCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmManNot.FatPedCgeCli.Value))) > 11 then
      fmManNot.FatPedCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNot.FatPedCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManNot.FatPedCgeCli.EditMask := '';
end;

procedure TfmManNt1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNt1.EdCgcTraExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManNot.FatPedCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmManNot.FatPedCgcTra.Value)) <> '' then
      fmManNot.FatPedCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNot.FatPedCgcTra.EditMask := '';

  end
  else
    fmManNot.FatPedCgcTra.EditMask := '';
end;

procedure TfmManNt1.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNt1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManNot.FatPed.State <> dsBrowse then
    fmManNot.FatPed.CancelUpdates;
end;

end.
