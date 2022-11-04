unit PsqObs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, DBColorRichEdit,
  dxDBColorEdit;

type
  TfmPsqObs = class(TForm)
    EstPro: TwwQuery;
    EstProOBSPRO: TMemoField;
    DsPro: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    dxDBEdit1: TdxDBColorEdit;
    Label1: TLabel;
    Panel1: TPanel;
    EdObsPro: TDBColorRichEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqObs: TfmPsqObs;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqObs.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqObs.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqObs.FormShow(Sender: TObject);
begin
  inherited;
  EdObsPro.SetFocus;
end;

end.
