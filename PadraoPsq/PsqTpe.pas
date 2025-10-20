unit PsqTpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor;

type
  TfmPsqTpe = class(TForm)
    PedTip: TwwQuery;
    DsTip: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Label21: TLabel;
    Label28: TLabel;
    grTip: ThGrid;
    PedTipNOMTIP: TStringField;
    PedTipID_PEDTIP: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure grTipDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure grTipKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grTipMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    {Private declarations}
  public
    {Public declarations}
    NomTip : string;
    Id_PedTip : integer;
  end;

var
  fmPsqTpe: TfmPsqTpe;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTpe.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqTpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_PedTip := PedTipId_PedTip.Value;
     
     NomTip := PedTipNomTip.Value;

     Close;

  end;
end;

procedure TfmPsqTpe.grTipDblClick(Sender: TObject);
begin

  Id_PedTip := PedTipId_PedTip.Value;
  
  NomTip := PedTipNomTip.Value;

  Close;

end;

procedure TfmPsqTpe.FormShow(Sender: TObject);
begin
  inherited;
  grTip.SetFocus;
end;

procedure TfmPsqTpe.grTipKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  grTip.Color := clInfoBk;
end;

procedure TfmPsqTpe.grTipMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  grTip.Color := clInfoBk;
end;

end.
