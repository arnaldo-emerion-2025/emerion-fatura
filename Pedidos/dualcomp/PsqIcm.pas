unit PsqIcm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Fpadrao, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  FShowPadrao;

type
  TfmPsqIcm = class(TfmShowPadrao)
    GerIcm: TwwQuery;
    DsIcm: TwwDataSource;
    GerIcmSIGUFE: TStringField;
    GerIcmPERICM: TFloatField;
    PaintBox: TPaintBox;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    grRe2: ThGrid;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Label21: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure grRe2DblClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    {Private declarations}
  public
    Icms: real;
    ret: string;
    {Public declarations}
  end;

var
  fmPsqIcm: TfmPsqIcm;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqIcm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    Close;

  if key = 13 then
  begin

    Icms := GerIcmPerIcm.Value;

    ret := 'N';

    Close;

  end;
end;

procedure TfmPsqIcm.grRe2DblClick(Sender: TObject);
begin

  Icms := GerIcmPerIcm.Value;

  ret := 'N';

  Close;

end;

procedure TfmPsqIcm.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqIcm.FormCreate(Sender: TObject);
begin
  inherited;
  ret := 'S';
end;

end.
