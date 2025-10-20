unit PsqEco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqEco = class(TForm)
    EstQte: TwwQuery;
    DsQte: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grQte: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstQteNOMCOR: TStringField;
    EstQteCODCOR: TStringField;
    EstQteQTDQTE: TFloatField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EstQteQTRQTE: TFloatField;
    EstQteQTDATU: TFloatField;
    procedure grQteDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodCor,NomCor : string;
  end;

var
  fmPsqEco: TfmPsqEco;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqEco.grQteDblClick(Sender: TObject);
begin

  CodCor := EstQteCodCor.Value;
  NomCor := EstQteNomCor.Value;

  Close;

end;

procedure TfmPsqEco.EdPesquisaChange(Sender: TObject);
begin
  EstQte.Locate('NOMCOR',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqEco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodCor := EstQteCodCor.Value;
     NomCor := EstQteNomCor.Value;

     Close;

  end;

  if key = 33 then EstQte.MoveBy(-10); {Page Up}
  if key = 34 then EstQte.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstQte.Last;  {End}
     if key = 36 then EstQte.First; {Home}

     if key = 40 then EstQte.Next; {Para Baixo}
     if key = 38 then EstQte.Prior; {Para Cima}

  end;
end;

procedure TfmPsqEco.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
