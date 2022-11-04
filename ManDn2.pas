unit ManDn2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdbdatetimepicker, Mask, DBCtrls, hEdits, Buttons,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, AlignEdit, Db, DBTables,
  Wwquery, FShowPadrao, dxDBColorMemo, dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManDn2 = class(TfmShowPadrao)
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
    EdQtdVol: TdxDBColorCurrencyEdit;
    EdUfeTra: TdxDBColorEdit;
    EdBaiTra: TdxDBColorEdit;
    EdTenTra: TdxDBColorEdit;
    EdCgcTra: TdxDBColorEdit;
    EdNomTra: TdxDBColorEdit;
    EdEndTra: TdxDBColorEdit;
    EdCepTra: TdxDBColorEdit;
    EdEspDev: TdxDBColorEdit;
    Label39: TLabel;
    Label3: TLabel;
    Label41: TLabel;
    Label40: TLabel;
    EdMarDev: TdxDBColorEdit;
    EdNroDev: TdxDBColorEdit;
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
    procedure EdCgcTraExit(Sender: TObject);
    procedure EdCgeCliExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCgeCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCgeCliMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure bRetornarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcontinuarClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManDn2: TfmManDn2;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, ManGDB, ManDn1, ManIdn, ManDn3;

{$R *.DFM}

procedure TfmManDn2.FormCreate(Sender: TObject);
begin
  inherited;
  fmManDn1.FatDev.Edit;
end;

procedure TfmManDn2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManDn2.FormShow(Sender: TObject);
begin
  inherited;

  fmManDn1.FatDev.Edit;

  if TrimLeft(TrimRight(fmManDn1.FatDevCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmManDn1.FatDevCgeCli.Value))) > 11 then
      fmManDn1.FatDevCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManDn1.FatDevCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManDn1.FatDevCgeCli.EditMask := '';

  if TrimLeft(TrimRight(fmManDn1.FatDevCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmManDn1.FatDevCgcTra.Value)) <> '' then
      fmManDn1.FatDevCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManDn1.FatDevCgcTra.EditMask := '';

  end
  else
    fmManDn1.FatDevCgcTra.EditMask := '';

  EdDesNat.SetFocus;

end;

procedure TfmManDn2.EdCgeCliMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if fmManDn1.FatDevCgcCli.EditMask <> '' then
    fmManDn1.FatDevCgcCli.EditMask := '';
end;

procedure TfmManDn2.EdCgeCliKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if fmManDn1.FatDevCgcCli.EditMask <> '' then
    fmManDn1.FatDevCgcCli.EditMask := '';
end;

procedure TfmManDn2.EdCgeCliExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManDn1.FatDevCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmManDn1.FatDevCgeCli.Value))) > 11 then
      fmManDn1.FatDevCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManDn1.FatDevCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManDn1.FatDevCgeCli.EditMask := '';
end;

procedure TfmManDn2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDn2.EdCgcTraExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManDn1.FatDevCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmManDn1.FatDevCgcTra.Value)) <> '' then
      fmManDn1.FatDevCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManDn1.FatDevCgcTra.EditMask := '';

  end
  else
    fmManDn1.FatDevCgcTra.EditMask := '';
end;

procedure TfmManDn2.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManDn2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManDn1.FatDev.State <> dsBrowse then
    fmManDn1.FatDev.CancelUpdates;
end;

procedure TfmManDn2.bcontinuarClick(Sender: TObject);
begin

  with fmManDn1.FatDev do
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

      if fmManDn1.FatDev.State = dsBrowse then
        fmManDn1.FatDev.Edit;

      fmManDn1.FatDev.Edit;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManDn1.FatDev.Close;
  fmManDn1.FatDev.Open;

  fmManDn1.pnBasIcm.Caption := FormatFloat('###,###,##0.00', fmManDn1.FatDevBasIcm.Value);
  fmManDn1.pnTotIcm.Caption := FormatFloat('###,###,##0.00', fmManDn1.FatDevTotIcm.Value);
  fmManDn1.pnBasSub.Caption := FormatFloat('###,###,##0.00', fmManDn1.FatDevBasSub.Value);
  fmManDn1.pnTotSub.Caption := FormatFloat('###,###,##0.00', fmManDn1.FatDevTotSub.Value);
  fmManDn1.pnTotFat.Caption := FormatFloat('###,###,##0.00', fmManDn1.FatDevTotDev.Value);
  fmManDn1.pnTotFrt.Caption := FormatFloat('###,###,##0.00', fmManDn1.FatDevTotFrt.Value);
  fmManDn1.pnTotSeg.Caption := FormatFloat('###,###,##0.00', fmManDn1.FatDevTotSeg.Value);
  fmManDn1.pnTotDes.Caption := FormatFloat('###,###,##0.00', fmManDn1.FatDevTotDes.Value);
  fmManDn1.pnTotIpi.Caption := FormatFloat('###,###,##0.00', fmManDn1.FatDevTotIpi.Value);
  fmManDn1.pnTotGer.Caption := FormatFloat('###,###,##0.00', fmManDn1.FatDevTotGer.Value);

  try

    fmManDn3 := TfmManDn3.Create(Self);

    fmManDn3.ShowModal;

  finally

    FreeAndNil(fmManDn3);

  end;

  if fmManDn1.Finalizar = 'S' then
    Close
  else
  begin

    fmManDn1.FatDev.Edit;

    EdDesNat.SetFocus;

  end;
end;

end.
