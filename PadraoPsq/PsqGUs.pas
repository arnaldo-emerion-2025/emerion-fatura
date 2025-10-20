unit PsqGUs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqGUs = class(TForm)
    GerGUs: TwwQuery;
    DsGUs: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grGUs: ThGrid;
    GerGUsCODGUS: TIntegerField;
    GerGUsNOMGUS: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grGUsDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomGUs : string;
    CodGUs : integer;
  end;

var
  fmPsqGUs: TfmPsqGUs;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqGUs.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodGUs := GerGUsCodGUs.Value;
     NomGUs := GerGUsNomGUs.Value;

     Close;

  end;

  if key = 33 then GerGUs.MoveBy(-10); {Page Up}
  if key = 34 then GerGUs.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then GerGUs.Last;  {End}
     if key = 36 then GerGUs.First; {Home}

     if key = 40 then GerGUs.Next; {Para Baixo}
     if key = 38 then GerGUs.Prior; {Para Cima}

  end;
end;

procedure TfmPsqGUs.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqGUs.EdpesquisaChange(Sender: TObject);
begin
  GerGUs.Locate('NomGUs',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqGUs.grGUsDblClick(Sender: TObject);
begin

  CodGUs := GerGUsCodGUs.Value;
  NomGUs := GerGUsNomGUs.Value;

  Close;

end;

procedure TfmPsqGUs.FormShow(Sender: TObject);
begin
  EdPesquisa.SetFocus;
end;

end.
