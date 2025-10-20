unit PsqCor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqCor = class(TForm)
    EstCor: TwwQuery;
    DsCor: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grClp: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstCorCODCOR: TStringField;
    EstCorNOMCOR: TStringField;
    procedure grClpDblClick(Sender: TObject);
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
  fmPsqCor: TfmPsqCor;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCor.grClpDblClick(Sender: TObject);
begin

  CodCor := EstCorCodCor.Value;
  NomCor := EstCorNomCor.Value;

  Close;

end;

procedure TfmPsqCor.EdPesquisaChange(Sender: TObject);
begin
  EstCor.Locate('NOMCOR',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCor.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodCor := EstCorCodCor.Value;
     NomCor := EstCorNomCor.Value;

     Close;

  end;

  if key = 33 then EstCor.MoveBy(-10); {Page Up}
  if key = 34 then EstCor.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstCor.Last;  {End}
     if key = 36 then EstCor.First; {Home}

     if key = 40 then EstCor.Next; {Para Baixo}
     if key = 38 then EstCor.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCor.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
