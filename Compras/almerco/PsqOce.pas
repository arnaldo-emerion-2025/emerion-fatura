unit PsqOce;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, FShowPadrao;

type
  TfmPsqOce = class(TfmShowPadrao)
    CmpVal: TwwQuery;
    DsVal: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBEdit;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    grVal: ThGrid;
    CmpValNROEN2: TIntegerField;
    CmpValVLQEN2: TFloatField;
    CmpValVLQPED: TFloatField;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label2: TLabel;
    dxDBEdit1: TdxDBEdit;
    grQtd: ThGrid;
    CmpQtd: TwwQuery;
    IntegerField1: TIntegerField;
    DsQtd: TwwDataSource;
    CmpQtdQTPEN2: TFloatField;
    CmpQtdQTDPED: TFloatField;
    CmpValCODCLP: TStringField;
    CmpValCODGRU: TStringField;
    CmpValCODSUB: TStringField;
    CmpValCODPRO: TStringField;
    CmpValDESEN2: TStringField;
    CmpValCODITE: TStringField;
    CmpQtdCODCLP: TStringField;
    CmpQtdCODGRU: TStringField;
    CmpQtdCODSUB: TStringField;
    CmpQtdCODPRO: TStringField;
    CmpQtdDESEN2: TStringField;
    CmpQtdCODITE: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grValKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grValMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grQtdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grQtdMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CmpValCODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CmpQtdCODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqOce: TfmPsqOce;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqOce.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqOce.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqOce.FormShow(Sender: TObject);
begin
  inherited;
  grVal.SetFocus;
end;

procedure TfmPsqOce.grValKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grQtd.Color := $00FCF4ED;

  grVal.Color := clInfoBk;

end;

procedure TfmPsqOce.grValMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grQtd.Color := $00FCF4ED;

  grVal.Color := clInfoBk;

end;

procedure TfmPsqOce.grQtdKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grVal.Color := $00FCF4ED;

  grQtd.Color := clInfoBk;

end;

procedure TfmPsqOce.grQtdMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grVal.Color := $00FCF4ED;

  grQtd.Color := clInfoBk;

end;

procedure TfmPsqOce.CmpValCODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if CmpValNroEn2.Value > 0 then
     Text := CmpValCodClp.Value+'-'+CmpValCodGru.Value+'.'+CmpValCodSub.Value+'.'+CmpValCodPro.Value
  else
     Text := '';
end;

procedure TfmPsqOce.CmpQtdCODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Trim(CmpQtdCodClp.Value) <> '' then
     Text := CmpQtdCodClp.Value+'-'+CmpQtdCodGru.Value+'.'+CmpQtdCodSub.Value+'.'+CmpQtdCodPro.Value
  else
     Text := '';
end;

end.
