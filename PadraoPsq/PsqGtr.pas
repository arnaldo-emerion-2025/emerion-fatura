unit PsqGtr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqGtr = class(TForm)
    FinGtr: TwwQuery;
    DsGtr: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grGtr: ThGrid;
    FinGtrCODGTR: TIntegerField;
    FinGtrNOMGTR: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grGtrDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomGtr : string;
    CodGtr : integer;
  end;

var
  fmPsqGtr: TfmPsqGtr;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqGtr.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodGtr := FinGtrCodGtr.Value;
     NomGtr := FinGtrNomGtr.Value;

     Close;

  end;

  if key = 33 then FinGtr.MoveBy(-10); {Page Up}
  if key = 34 then FinGtr.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinGtr.Last;  {End}
     if key = 36 then FinGtr.First; {Home}

     if key = 40 then FinGtr.Next; {Para Baixo}
     if key = 38 then FinGtr.Prior; {Para Cima}

  end;
end;

procedure TfmPsqGtr.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqGtr.EdpesquisaChange(Sender: TObject);
begin
  FinGtr.Locate('NomGtr',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqGtr.grGtrDblClick(Sender: TObject);
begin

  CodGtr := FinGtrCodGtr.Value;
  NomGtr := FinGtrNomGtr.Value;

  Close;

end;

procedure TfmPsqGtr.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
