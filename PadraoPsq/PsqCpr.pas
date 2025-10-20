unit PsqCpr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqCpr = class(TForm)
    EstCat: TwwQuery;
    DsCat: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grCat: ThGrid;
    EstCatCODCAT: TIntegerField;
    EstCatNOMCAT: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grCatDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCat : string;
    CodCat : integer;
  end;

var
  fmPsqCpr: TfmPsqCpr;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCpr.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodCat := EstCatCodCat.Value;
     NomCat := EstCatNomCat.Value;

     Close;

  end;

  if key = 33 then EstCat.MoveBy(-10); {Page Up}
  if key = 34 then EstCat.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstCat.Last;  {End}
     if key = 36 then EstCat.First; {Home}

     if key = 40 then EstCat.Next; {Para Baixo}
     if key = 38 then EstCat.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCpr.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCpr.EdpesquisaChange(Sender: TObject);
begin
  EstCat.Locate('NomCat',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCpr.grCatDblClick(Sender: TObject);
begin

  CodCat := EstCatCodCat.Value;
  NomCat := EstCatNomCat.Value;

  Close;

end;

procedure TfmPsqCpr.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
