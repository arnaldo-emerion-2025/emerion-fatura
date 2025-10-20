unit ManRo8;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, dxDBColorCurrencyEdit;

type
  TfmManRo8 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    Label47: TLabel;
    EdTotCof: TdxDBColorCurrencyEdit;
    Label48: TLabel;
    EdTotImp: TdxDBColorCurrencyEdit;
    Label4: TLabel;
    EdTotPis: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    EdTotIte: TdxDBColorCurrencyEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bretornarClick(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManRo8: TfmManRo8;

implementation

uses dxDemoUtils, Bbgeral, BbMensag, ManRo1, ManRo5;

{$R *.DFM}

procedure TfmManRo8.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManRo8.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManRo8.bcontinuarClick(Sender: TObject);
begin

  try

     fmManRo5 := TfmManRo5.Create(Self);
     fmManRo5.ShowModal;

  finally

     FreeAndNil(fmManRo5);

  end;

  if fmManRo1.Finalizar = 'S' then
     Close
  else
     bContinuar.SetFocus;

end;

procedure TfmManRo8.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManRo8.FormShow(Sender: TObject);
begin
  inherited;
  bContinuar.SetFocus;
end;

end.
