unit PsqCom;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxDBColorEdit;

type
  TfmPsqCom = class(TForm)
    FinCom: TwwQuery;
    DsCom: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grCom: ThGrid;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    FinComCODCOM: TStringField;
    FinComPERCOM: TFloatField;
    procedure grComDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodCom : string;
    PerCom : real;
  end;

var
  fmPsqCom: TfmPsqCom;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCom.grComDblClick(Sender: TObject);
begin

  CodCom := FinComCodCom.Value;
  PerCom := FinComPerCom.Value;

  Close;

end;

procedure TfmPsqCom.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 33 then FinCom.MoveBy(-10); {Page Up}
  if key = 34 then FinCom.MoveBy(10);  {Page Down}

  if key = 13 then begin

     CodCom := FinComCodCom.Value;
     PerCom := FinComPerCom.Value;

     Close;

  end;
end;

procedure TfmPsqCom.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
