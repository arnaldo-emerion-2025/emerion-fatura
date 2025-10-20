unit PsqDte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxDBColorEdit;

type
  TfmPsqDte = class(TForm)
    FinCre: TwwQuery;
    DsCre: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grCre: ThGrid;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    FinCreDTECRE: TDateTimeField;
    procedure grCreDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    DteCre : TDateTime;
  end;

var
  fmPsqDte: TfmPsqDte;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqDte.grCreDblClick(Sender: TObject);
begin

  DteCre := FinCreDteCre.Value;

  Close;

end;

procedure TfmPsqDte.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     DteCre := FinCreDteCre.Value;

     Close;

  end;

  if key = 33 then FinCre.MoveBy(-10); {Page Up}
  if key = 34 then FinCre.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCre.Last;  {End}
     if key = 36 then FinCre.First; {Home}

     if key = 40 then FinCre.Next; {Para Baixo}
     if key = 38 then FinCre.Prior; {Para Cima}

  end;
end;

procedure TfmPsqDte.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
