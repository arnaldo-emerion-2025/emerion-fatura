unit PsqUsu;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqUsu = class(TForm)
    GerUsu: TwwQuery;
    DsUsu: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grUsu: ThGrid;
    GerUsuLOGUSU: TStringField;
    GerUsuCODUSU: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grUsuDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    LogUsu : string;
    CodUsu : integer;
  end;

var
  fmPsqUsu: TfmPsqUsu;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqUsu.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodUsu := GerUsuCodUsu.Value;
     LogUsu := GerUsuLogUsu.Value;

     Close;

  end;

  if key = 33 then GerUsu.MoveBy(-10); {Page Up}
  if key = 34 then GerUsu.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then GerUsu.Last;  {End}
     if key = 36 then GerUsu.First; {Home}

     if key = 40 then GerUsu.Next; {Para Baixo}
     if key = 38 then GerUsu.Prior; {Para Cima}

  end;
end;

procedure TfmPsqUsu.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqUsu.EdpesquisaChange(Sender: TObject);
begin
  GerUsu.Locate('LogUsu',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqUsu.grUsuDblClick(Sender: TObject);
begin

  CodUsu := GerUsuCodUsu.Value;
  LogUsu := GerUsuLogUsu.Value;

  Close;

end;

procedure TfmPsqUsu.FormShow(Sender: TObject);
begin
  EdPesquisa.SetFocus;
end;

end.
