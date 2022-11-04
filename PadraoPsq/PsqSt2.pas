unit PsqSt2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqSt2 = class(TForm)
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    grSt2: ThGrid;
    EstSt2: TwwQuery;
    DsSt2: TwwDataSource;
    EstSt2CODST2: TStringField;
    EstSt2NOMST2: TStringField;
    procedure grSt2DblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodSt2,NomSt2 : string;
  end;

var
  fmPsqSt2: TfmPsqSt2;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqSt2.grSt2DblClick(Sender: TObject);
begin

  CodSt2 := EstSt2CodSt2.Value;
  NomSt2 := EstSt2NomSt2.Value;

  Close;

end;

procedure TfmPsqSt2.EdPesquisaChange(Sender: TObject);
begin
  EstSt2.Locate('NOMSt2',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqSt2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  
  if key = 27 then close;

  if key = 13 then begin

     CodSt2 := EstSt2CodSt2.Value;
     NomSt2 := EstSt2NomSt2.Value;

     Close;

  end;

  if key = 33 then EstSt2.MoveBy(-10); {Page Up}
  if key = 34 then EstSt2.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstSt2.Last;  {End}
     if key = 36 then EstSt2.First; {Home}

     if key = 40 then EstSt2.Next; {Para Baixo}
     if key = 38 then EstSt2.Prior; {Para Cima}

  end;
end;

procedure TfmPsqSt2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
