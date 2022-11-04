unit PsqHre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, StdCtrls, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, hGrid;

type
  TfmPsqHre = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    PedLog: TwwQuery;
    DsLog: TwwDataSource;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grLog: ThGrid;
    Label9: TLabel;
    PedLogDTELOG: TDateTimeField;
    PedLogHRELOG: TStringField;
    PedLogSITANT: TStringField;
    PedLogSITATU: TStringField;
    PedLogLOGUSU: TStringField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPsqHre: TfmPsqHre;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqHre.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqHre.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

end.

