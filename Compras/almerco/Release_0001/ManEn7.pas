unit ManEn7;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, wwdblook, DBCtrls,
  ComCtrls, wwriched, Buttons, dxfOutlookBar, dxfColorButton, dxBar, dxEditor, 
  dxfPictureButton, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr,
  FShowPadrao, dxDBColorEdit, dxDBColorCurrencyEdit, Wwquery;

type
  TfmManEn7 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label11: TLabel;
    Bevel2: TBevel;
    Label22: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    EdTotEnc: TdxDBColorCurrencyEdit;
    EdTotSuc: TdxDBColorCurrencyEdit;
    EdBasSuc: TdxDBColorCurrencyEdit;
    EdTotIcc: TdxDBColorCurrencyEdit;
    EdBasIcc: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdTotGec: TdxDBColorCurrencyEdit;
    EdTotIpc: TdxDBColorCurrencyEdit;
    EdTotDes: TdxDBColorCurrencyEdit;
    EdTotSeg: TdxDBColorCurrencyEdit;
    EdTotFrt: TdxDBColorCurrencyEdit;
    Label4: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    CmpEnt: TwwQuery;
    CmpEntTOTIPI: TFloatField;
    CmpEntBASICM: TFloatField;
    CmpEntTOTICM: TFloatField;
    CmpEntBASSUB: TFloatField;
    CmpEntTOTSUB: TFloatField;
    CmpEntTOTENT: TFloatField;
    CmpEntTOTFRT: TFloatField;
    CmpEntTOTSEG: TFloatField;
    CmpEntTOTDES: TFloatField;
    CmpEntTOTGER: TFloatField;
    DsEnt: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bretornarClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManEn7 : TfmManEn7;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmManEn7.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmManEn7.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn7.bretornarClick(Sender: TObject);
begin
  close;
end;

end.
