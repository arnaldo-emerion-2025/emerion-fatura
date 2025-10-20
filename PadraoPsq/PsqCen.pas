unit PsqCen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqCen = class(TForm)
    FinCen: TwwQuery;
    DsCen: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    FinCenCODCEN: TIntegerField;
    FinCenNOMCEN: TStringField;
    grCen: ThGrid;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grCenDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCen : string;
    CodCen : integer;
  end;

var
  fmPsqCen: TfmPsqCen;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCen.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodCen := FinCenCodCen.Value;
     NomCen := FinCenNomCen.Value;

     Close;

  end;

  if key = 33 then FinCen.MoveBy(-10); {Page Up}
  if key = 34 then FinCen.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCen.Last;  {End}
     if key = 36 then FinCen.First; {Home}

     if key = 40 then FinCen.Next; {Para Baixo}
     if key = 38 then FinCen.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCen.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCen.EdpesquisaChange(Sender: TObject);
begin
  FinCen.Locate('NomCen',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCen.grCenDblClick(Sender: TObject);
begin

  CodCen := FinCenCodCen.Value;
  NomCen := FinCenNomCen.Value;

  Close;

end;

procedure TfmPsqCen.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
