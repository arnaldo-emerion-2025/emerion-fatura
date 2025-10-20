unit PsqSt1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqSt1 = class(TForm)
    EstSt1: TwwQuery;
    DsSt1: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grSt1: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstSt1CODST1: TStringField;
    EstSt1NOMST1: TStringField;
    procedure grSt1DblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodSt1,NomSt1 : string;
  end;

var
  fmPsqSt1: TfmPsqSt1;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqSt1.grSt1DblClick(Sender: TObject);
begin

  CodSt1 := EstSt1CodSt1.Value;
  NomSt1 := EstSt1NomSt1.Value;

  Close;

end;

procedure TfmPsqSt1.EdPesquisaChange(Sender: TObject);
begin
  EstSt1.Locate('NOMST1',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqSt1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodSt1 := EstSt1CodSt1.Value;
     NomSt1 := EstSt1NomSt1.Value;

     Close;

  end;

  if key = 33 then EstSt1.MoveBy(-10); {Page Up}
  if key = 34 then EstSt1.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstSt1.Last;  {End}
     if key = 36 then EstSt1.First; {Home}

     if key = 40 then EstSt1.Next; {Para Baixo}
     if key = 38 then EstSt1.Prior; {Para Cima}

  end;
end;

procedure TfmPsqSt1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
