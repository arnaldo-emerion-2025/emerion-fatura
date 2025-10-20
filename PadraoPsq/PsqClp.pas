unit PsqClp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqClp = class(TForm)
    EstClp: TwwQuery;
    DsClp: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grClp: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstClpCODCLP: TStringField;
    EstClpNOMCLP: TStringField;
    procedure grClpDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodClp,NomClp : string;
  end;

var
  fmPsqClp: TfmPsqClp;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqClp.grClpDblClick(Sender: TObject);
begin

  CodClp := EstClpCodClp.Value;
  NomClp := EstClpNomClp.Value;

  Close;

end;

procedure TfmPsqClp.EdPesquisaChange(Sender: TObject);
begin
  EstClp.Locate('NOMCLP',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqClp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodClp := EstClpCodClp.Value;
     NomClp := EstClpNomClp.Value;

     Close;

  end;

  if key = 33 then EstClp.MoveBy(-10); {Page Up}
  if key = 34 then EstClp.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstClp.Last;  {End}
     if key = 36 then EstClp.First; {Home}

     if key = 40 then EstClp.Next; {Para Baixo}
     if key = 38 then EstClp.Prior; {Para Cima}

  end;
end;

procedure TfmPsqClp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
