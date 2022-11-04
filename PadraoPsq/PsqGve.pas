unit PsqGve;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqGve = class(TForm)
    FinGve: TwwQuery;
    DsGve: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grGve: ThGrid;
    FinGveCODGVE: TIntegerField;
    FinGveNOMGVE: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grGveDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomGve : string;
    CodGve : integer;
  end;

var
  fmPsqGve: TfmPsqGve;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqGve.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodGve := FinGveCodGve.Value;
     NomGve := FinGveNomGve.Value;

     Close;

  end;

  if key = 33 then FinGve.MoveBy(-10); {Page Up}
  if key = 34 then FinGve.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinGve.Last;  {End}
     if key = 36 then FinGve.First; {Home}

     if key = 40 then FinGve.Next; {Para Baixo}
     if key = 38 then FinGve.Prior; {Para Cima}

  end;
end;

procedure TfmPsqGve.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqGve.EdpesquisaChange(Sender: TObject);
begin
  FinGve.Locate('NomGve',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqGve.grGveDblClick(Sender: TObject);
begin

  CodGve := FinGveCodGve.Value;
  NomGve := FinGveNomGve.Value;

  Close;

end;

procedure TfmPsqGve.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
