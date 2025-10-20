unit ManMkp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao;

type
  TfmManMkp = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label1: TLabel;
    Label3: TLabel;
    lbTotGer: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    lbTotCst: TLabel;
    lbMarkup: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManMkp: TfmManMkp;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB;

{$R *.DFM}

procedure TfmManMkp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;  
end;

procedure TfmManMkp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
