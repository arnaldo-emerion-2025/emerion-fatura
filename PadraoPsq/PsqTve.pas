unit PsqTve;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqTve = class(TForm)
    FinTve: TwwQuery;
    DsTve: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grTve: ThGrid;
    FinTveCODTVE: TIntegerField;
    FinTveNOMTVE: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grTveDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomTve : string;
    CodTve : integer;
  end;

var
  fmPsqTve: TfmPsqTve;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTve.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodTve := FinTveCodTve.Value;
     NomTve := FinTveNomTve.Value;

     Close;

  end;

  if key = 33 then FinTve.MoveBy(-10); {Page Up}
  if key = 34 then FinTve.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinTve.Last;  {End}
     if key = 36 then FinTve.First; {Home}

     if key = 40 then FinTve.Next; {Para Baixo}
     if key = 38 then FinTve.Prior; {Para Cima}

  end;
end;

procedure TfmPsqTve.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqTve.EdpesquisaChange(Sender: TObject);
begin
  FinTve.Locate('NomTve',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqTve.grTveDblClick(Sender: TObject);
begin

  CodTve := FinTveCodTve.Value;
  NomTve := FinTveNomTve.Value;

  Close;

end;

procedure TfmPsqTve.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
