unit PsqOcp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, FShowPadrao;

type
  TfmPsqOcp = class(TfmShowPadrao)
    CmpPe2: TwwQuery;
    DsPe2: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBEdit;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    CmpPe2CODEMP: TIntegerField;
    CmpPe2DTEPED: TDateTimeField;
    CmpPe2NUMPED: TIntegerField;
    CmpPe2SEQPE2: TIntegerField;
    CmpPe2VLQPE2: TFloatField;
    CmpPe2VLQITE: TFloatField;
    CmpPe2DSCPRO: TStringField;
    CmpPe2NROPE2: TIntegerField;
    grPe2: ThGrid;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqOcp: TfmPsqOcp;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqOcp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqOcp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqOcp.FormShow(Sender: TObject);
begin
  inherited;
  grPe2.SetFocus;
end;

end.
