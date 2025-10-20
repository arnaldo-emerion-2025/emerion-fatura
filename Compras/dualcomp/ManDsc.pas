unit ManDsc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  FShowPadrao, dxDBColorCurrencyEdit;

type
  TfmManDsc = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label33: TLabel;
    Label17: TLabel;
    BbSair: TBitBtn;
    EdVdsPe2: TdxDBColorCurrencyEdit;
    EdDscPe2: TdxDBColorCurrencyEdit;
    procedure BbSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdDscPe2Exit(Sender: TObject);
    procedure EdVdsPe2Exit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManDsc: TfmManDsc;

implementation

uses dxDemoUtils, Bbmensag, Bbfuncao, ManGDB, ManPed;

{$R *.DFM}

procedure TfmManDsc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDsc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

procedure TfmManDsc.BbSairClick(Sender: TObject);
begin

  ActiveControl := nil;

  close;

end;

procedure TfmManDsc.EdDscPe2Exit(Sender: TObject);
begin
  if fmManPed.CmpPe2.State <> dsBrowse then begin

     if fmManPed.CmpPe2DscPe2.Value <> fmManPed.AntDscPe2 then begin

        if fmManPed.CmpPe2DscPe2.Value > 0 then
           fmManPed.CmpPe2VdsPe2.Value := fRound((fmManPed.CmpPe2VlqPe2.Value * fmManPed.CmpPe2DscPe2.Value)/100,4)
        else
           begin

           fmManPed.CmpPe2DscPe2.Value := 0;
           fmManPed.CmpPe2VdsPe2.Value := 0;

        end;

        fmManPed.AntDscPe2 := fmManPed.CmpPe2DscPe2.Value;
        fmManPed.AntVdsPe2 := fmManPed.CmpPe2VdsPe2.Value;

        fmManPed.CmpPe2VlqPe2.Value := fmManPed.CmpPe2VluPe2.Value;

        if fmManPed.CmpPe2DscPe2.Value > 0 then begin

           fmManPed.CmpPe2VdsPe2.Value := fRound((fmManPed.CmpPe2DscPe2.Value * fmManPed.CmpPe2VlqPe2.Value)/100,4);

           fmManPed.CmpPe2VlqPe2.Value := fRound(fmManPed.CmpPe2VlqPe2.Value - fmManPed.CmpPe2VdsPe2.Value,4);

        end;

        if fmManPed.CmpPe2PacPe2.Value > 0 then begin

           fmManPed.CmpPe2VacPe2.Value := fRound((fmManPed.CmpPe2PacPe2.Value * fmManPed.CmpPe2VlqPe2.Value)/100,4);

           fmManPed.CmpPe2VlqPe2.Value := fRound(fmManPed.CmpPe2VlqPe2.Value + fmManPed.CmpPe2VacPe2.Value,4);

        end;

        fmManPed.CmpPe2TotPe2.Value := fRound(fmManPed.CmpPe2VlqPe2.Value * fmManPed.CmpPe2QtpPe2.Value,2);

     end;
  end;
end;

procedure TfmManDsc.EdVdsPe2Exit(Sender: TObject);
begin
  if fmManPed.CmpPe2.State <> dsBrowse then begin

     if fmManPed.CmpPe2VdsPe2.Value <> fmManPed.AntVdsPe2 then begin

        fmManPed.CmpPe2DscPe2.Value := fRound((fmManPed.CmpPe2VdsPe2.Value * 100)/fmManPed.CmpPe2VluPe2.Value,2);

        fmManPed.AntVdsPe2 := fmManPed.CmpPe2VdsPe2.Value;
        fmManPed.AntDscPe2 := fmManPed.CmpPe2DscPe2.Value;

        fmManPed.CmpPe2VlqPe2.Value := fmManPed.CmpPe2VluPe2.Value;

        fmManPed.CmpPe2VlqPe2.Value := fmManPed.CmpPe2VluPe2.Value;

        fmManPed.CmpPe2VlqPe2.Value := fRound(fmManPed.CmpPe2VlqPe2.Value - fmManPed.CmpPe2VdsPe2.Value,4);

        if fmManPed.CmpPe2PacPe2.Value > 0 then begin

           fmManPed.CmpPe2VacPe2.Value := fRound((fmManPed.CmpPe2PacPe2.Value * fmManPed.CmpPe2VlqPe2.Value)/100,4);

           fmManPed.CmpPe2VlqPe2.Value := fRound(fmManPed.CmpPe2VlqPe2.Value + fmManPed.CmpPe2VacPe2.Value,4);

        end;

        fmManPed.CmpPe2TotPe2.Value := fRound(fmManPed.CmpPe2VlqPe2.Value * fmManPed.CmpPe2QtpPe2.Value,2);

     end;
  end;
end;

procedure TfmManDsc.FormShow(Sender: TObject);
begin
  inherited;
  EdDscPe2.SetFocus;
end;

end.
