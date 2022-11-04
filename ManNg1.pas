unit ManNg1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdbdatetimepicker, Mask, DBCtrls, hEdits, Buttons,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, AlignEdit, Db, DBTables,
  Wwquery, FShowPadrao, dxDBColorMemo, dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManNg1 = class(TfmShowPadrao)
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
    EdEspGer: TdxDBColorEdit;
    Label39: TLabel;
    Label3: TLabel;
    Label41: TLabel;
    Label40: TLabel;
    EdMarGer: TdxDBColorEdit;
    EdNroGer: TdxDBColorEdit;
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
  fmManNg1: TfmManNg1;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManNge, ManNg2;

{$R *.DFM}

procedure TfmManNg1.FormCreate(Sender: TObject);
begin
  inherited;
  fmManNge.FatGer.Edit;
end;

procedure TfmManNg1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManNg1.bcontinuarClick(Sender: TObject);
begin

  fmManNge.FatGerCodCf1.Value := Trim(EdCodCf1.Text);
  fmManNge.FatGerCodCf2.Value := Trim(EdCodCf2.Text);
  fmManNge.FatGerDesNat.Value := Trim(EdDesNat.Text);
  fmManNge.FatGerInsSub.Value := Trim(EdInsSub.Text);
  fmManNge.FatGerNomTra.Value := Trim(EdNomTra.Text);
  fmManNge.FatGerCgcTra.Value := Trim(EdCgcTra.Text);
  fmManNge.FatGerInsTra.Value := Trim(EdInsTra.Text);
  fmManNge.FatGerTenTra.Value := Trim(EdTenTra.Text);
  fmManNge.FatGerEndTra.Value := Trim(EdEndTra.Text);
  fmManNge.FatGerNumTra.Value := Trim(EdNumTra.Text);
  fmManNge.FatGerBaiTra.Value := Trim(EdBaiTra.Text);
  fmManNge.FatGerCidTra.Value := Trim(EdCidTra.Text);
  fmManNge.FatGerUfeTra.Value := Trim(EdUfeTra.Text);
  fmManNge.FatGerCepTra.Value := Trim(EdCepTra.Text);
  fmManNge.FatGerNroGer.Value := Trim(EdNroGer.Text);
  fmManNge.FatGerPlcTra.Value := Trim(EdPlcTra.Text);
  fmManNge.FatGerUfePlc.Value := Trim(EdUfePlc.Text);
  fmManNge.FatGerNomEnt.Value := Trim(EdNomEnt.Text);
  fmManNge.FatGerTenCli.Value := Trim(EdTenCli.Text);
  fmManNge.FatGerEndCli.Value := Trim(EdEndCli.Text);
  fmManNge.FatGerNumCli.Value := Trim(EdNumCli.Text);
  fmManNge.FatGerCgeCli.Value := Trim(EdCgeCli.Text);
  fmManNge.FatGerIneCli.Value := Trim(EdIneCli.Text);
  fmManNge.FatGerBaiCli.Value := Trim(EdBaiCli.Text);
  fmManNge.FatGerCidCli.Value := Trim(EdCidCli.Text);
  fmManNge.FatGerUfeCli.Value := Trim(EdUfeCli.Text);
  fmManNge.FatGerCepCli.Value := Trim(EdCepCli.Text);

  with fmManNge.FatGer do
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

      if fmManNge.FatGer.State = dsBrowse then
        fmManNge.FatGer.Edit;

      EdDesNat.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManNge.FatGer.Close;
  fmManNge.FatGer.Open;

  fmManNge.pnBasIc1.Caption := FormatFloat('###,###,##0.00', fmManNge.FatGerBasIc1.Value);
  fmManNge.pnTotIc1.Caption := FormatFloat('###,###,##0.00', fmManNge.FatGerTotIc1.Value);
  fmManNge.pnBasSu1.Caption := FormatFloat('###,###,##0.00', fmManNge.FatGerBasSu1.Value);
  fmManNge.pnTotSu1.Caption := FormatFloat('###,###,##0.00', fmManNge.FatGerTotSu1.Value);
  fmManNge.pnTotIt1.Caption := FormatFloat('###,###,##0.00', fmManNge.FatGerTotIt1.Value);
  fmManNge.pnTotFrt.Caption := FormatFloat('###,###,##0.00', fmManNge.FatGerTotFrt.Value);
  fmManNge.pnTotSeg.Caption := FormatFloat('###,###,##0.00', fmManNge.FatGerTotSeg.Value);
  fmManNge.pnTotDes.Caption := FormatFloat('###,###,##0.00', fmManNge.FatGerTotDes.Value);
  fmManNge.pnTotIp1.Caption := FormatFloat('###,###,##0.00', fmManNge.FatGerTotIp1.Value);
  fmManNge.pnTotGe1.Caption := FormatFloat('###,###,##0.00', fmManNge.FatGerTotGe1.Value);

  try

    fmManNg2 := TfmManNg2.Create(Self);

    fmManNg2.ShowModal;

  finally

    FreeAndNil(fmManNg2);

  end;

  if fmManNge.Finalizar = 'S' then
    Close
  else
  begin

    fmManNge.FatGer.Edit;

    EdDesNat.SetFocus;

  end;
end;

procedure TfmManNg1.FormShow(Sender: TObject);
begin
  inherited;

  fmManNge.FatGer.Edit;

  if fmManNge.FatGerInfBrt.Value = 0 then
    fmManNge.FatGerInfBrt.Value := fmManNge.FatGerTotBrt.Value;
  if fmManNge.FatGerInfLiq.Value = 0 then
    fmManNge.FatGerInfLiq.Value := fmManNge.FatGerTotLiq.Value;

  with fmManNge.quSQL, SQL do
  begin

    Close;
    Text := ' Select FatGe2.CodCfo,' +
      '        Count(*) as QtdReg' +
      ' From FatGe2' +
      ' Where FatGe2.CodEmp = ' + QuotedStr(IntToStr(fmManNge.FatGe2CodEmp.Value)) +
      '   and FatGe2.DteGer = ' + QuotedStr(fDateToSQL(fmManNge.FatGe2DteGer.Value)) +
      '   and FatGe2.NumGer = ' + QuotedStr(IntToStr(fmManNge.FatGe2NumGer.Value)) +
      ' Group by FatGe2.CodCfo' +
      ' Order by Count(*) Desc';
    Open;
    First;

  end;

  fmManNge.FatGerCodCf1.Value := Trim(fmManNge.quSQL.FieldbyName('CodCfo').AsString);

  if not fmManNge.quSQL.EOF then
  begin

    fmManNge.quSQL.Next;

    if Trim(fmManNge.quSQL.FieldbyName('CodCfo').AsString) <> fmManNge.FatGerCodCf1.Value then
      fmManNge.FatGerCodCf2.Value := Trim(fmManNge.quSQL.FieldbyName('CodCfo').AsString);

  end;

  fmManNge.quSQL.Close;

  if TrimLeft(TrimRight(fmManNge.FatGerCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmManNge.FatGerCgeCli.Value))) > 11 then
      fmManNge.FatGerCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNge.FatGerCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManNge.FatGerCgeCli.EditMask := '';

  if TrimLeft(TrimRight(fmManNge.FatGerCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmManNge.FatGerCgcTra.Value)) <> '' then
      fmManNge.FatGerCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNge.FatGerCgcTra.EditMask := '';

  end
  else
    fmManNge.FatGerCgcTra.EditMask := '';

  EdDesNat.SetFocus;

end;

procedure TfmManNg1.EdCgeCliMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if fmManNge.FatGerCgcCli.EditMask <> '' then
    fmManNge.FatGerCgcCli.EditMask := '';
end;

procedure TfmManNg1.EdCgeCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if fmManNge.FatGerCgcCli.EditMask <> '' then
    fmManNge.FatGerCgcCli.EditMask := '';
end;

procedure TfmManNg1.EdCgeCliExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManNge.FatGerCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmManNge.FatGerCgeCli.Value))) > 11 then
      fmManNge.FatGerCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNge.FatGerCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManNge.FatGerCgeCli.EditMask := '';
end;

procedure TfmManNg1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNg1.EdCgcTraExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManNge.FatGerCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmManNge.FatGerCgcTra.Value)) <> '' then
      fmManNge.FatGerCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNge.FatGerCgcTra.EditMask := '';

  end
  else
    fmManNge.FatGerCgcTra.EditMask := '';
end;

procedure TfmManNg1.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNg1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManNge.FatGer.State <> dsBrowse then
    fmManNge.FatGer.CancelUpdates;
end;

end.
