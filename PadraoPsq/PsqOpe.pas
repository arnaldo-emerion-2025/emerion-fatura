unit PsqOpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqOpe = class(TForm)
    EstOpe: TwwQuery;
    DsOpe: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grOpe: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstOpeCODOPE: TStringField;
    EstOpeNOMOPE: TStringField;
    EstOpeTIPOPE: TStringField;
    procedure grOpeDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodOpe,NomOpe : string;
  end;

var
  fmPsqOpe: TfmPsqOpe;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqOpe.grOpeDblClick(Sender: TObject);
begin

  CodOpe := EstOpeCodOpe.Value;
  NomOpe := EstOpeNomOpe.Value;

  Close;

end;

procedure TfmPsqOpe.EdPesquisaChange(Sender: TObject);
begin
  EstOpe.Locate('NOMOPE',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqOpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodOpe := EstOpeCodOpe.Value;
     NomOpe := EstOpeNomOpe.Value;

     Close;

  end;

  if key = 33 then EstOpe.MoveBy(-10); {Page Up}
  if key = 34 then EstOpe.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstOpe.Last;  {End}
     if key = 36 then EstOpe.First; {Home}

     if key = 40 then EstOpe.Next; {Para Baixo}
     if key = 38 then EstOpe.Prior; {Para Cima}

  end;
end;

procedure TfmPsqOpe.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
