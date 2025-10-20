unit ManEn8;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, wwdblook, DBCtrls,
  ComCtrls, wwriched, Buttons, dxfOutlookBar, dxfColorButton, dxBar, dxEditor, 
  dxfPictureButton, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr,
  FShowPadrao, dxDBColorEdit, dxDBColorCurrencyEdit;

type
  TfmManEn8 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label11: TLabel;
    Bevel2: TBevel;
    EdTotEnc: TdxDBColorCurrencyEdit;
    EdBasSuc: TdxDBColorCurrencyEdit;
    EdTotIcc: TdxDBColorCurrencyEdit;
    EdBasIcc: TdxDBColorCurrencyEdit;
    Label21: TLabel;
    EdCodPro: TdxDBColorEdit;
    Label23: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    Label24: TLabel;
    Label54: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    dxDBColorEdit2: TdxDBColorEdit;
    Label1: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    dxDBColorEdit3: TdxDBColorEdit;
    Label3: TLabel;
    dxDBColorEdit4: TdxDBColorEdit;
    Label4: TLabel;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    Label17: TLabel;
    Label5: TLabel;
    Label19: TLabel;
    dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit3: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit4: TdxDBColorCurrencyEdit;
    dxDBColorCurrencyEdit5: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    EdIcmSub: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    EdMrgSub: TdxDBColorCurrencyEdit;
    Label9: TLabel;
    EdBaseSb: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    EdBasSub: TdxDBColorCurrencyEdit;
    Label12: TLabel;
    EdTotSub: TdxDBColorCurrencyEdit;
    Label13: TLabel;
    Bevel3: TBevel;
    Label14: TLabel;
    EdCodStr: TdxDBColorEdit;
    Label15: TLabel;
    Label16: TLabel;
    EdTotIcm: TdxDBColorCurrencyEdit;
    EdBasIcm: TdxDBColorCurrencyEdit;
    Label18: TLabel;
    Label20: TLabel;
    EdTotIpi: TdxDBColorCurrencyEdit;
    EdBasIpi: TdxDBColorCurrencyEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bretornarClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManEn8 : TfmManEn8;

implementation

uses dxDemoUtils, ManEnt;

{$R *.DFM}

procedure TfmManEn8.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmManEn8.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn8.bretornarClick(Sender: TObject);
begin
  close;
end;

end.
