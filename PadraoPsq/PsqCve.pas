unit PsqCve;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqCve = class(TForm)
    FinCve: TwwQuery;
    DsCve: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grCve: ThGrid;
    FinCveCODCVE: TIntegerField;
    FinCveNOMCVE: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grCveDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCve : string;
    CodCve : integer;
  end;

var
  fmPsqCve: TfmPsqCve;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCve.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodCve := FinCveCodCve.Value;
     NomCve := FinCveNomCve.Value;

     Close;

  end;

  if key = 33 then FinCve.MoveBy(-10); {Page Up}
  if key = 34 then FinCve.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCve.Last;  {End}
     if key = 36 then FinCve.First; {Home}

     if key = 40 then FinCve.Next; {Para Baixo}
     if key = 38 then FinCve.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCve.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCve.EdpesquisaChange(Sender: TObject);
begin
  FinCve.Locate('NomCve',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCve.grCveDblClick(Sender: TObject);
begin

  CodCve := FinCveCodCve.Value;
  NomCve := FinCveNomCve.Value;

  Close;

end;

procedure TfmPsqCve.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
