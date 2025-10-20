unit ManEn6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, dxDBColorCurrencyEdit;

type
  TfmManEn6 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label11: TLabel;
    Bevel2: TBevel;
    Label22: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdTotFor: TdxDBColorCurrencyEdit;
    EdVcoEmp: TdxDBColorCurrencyEdit;
    EdVcoFor: TdxDBColorCurrencyEdit;
    EdVdoFsc: TdxDBColorCurrencyEdit;
    bcontinuar: TBitBtn;
    Label4: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    EdDesFor: TdxDBColorCurrencyEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManEn6 : TfmManEn6;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManEnt, ManEn3;

{$R *.DFM}

procedure TfmManEn6.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

procedure TfmManEn6.FormShow(Sender: TObject);
begin
  inherited;
  EdVdoFsc.SetFocus;
end;

procedure TfmManEn6.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn6.bcontinuarClick(Sender: TObject);
begin

  fmManEnt.sContinuar := 'S';

  close;

end;

end.
