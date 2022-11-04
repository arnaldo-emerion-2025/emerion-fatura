unit PsqGCl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqGCl = class(TForm)
    FinGCl: TwwQuery;
    DsGCl: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grGCl: ThGrid;
    FinGClCODGCL: TIntegerField;
    FinGClNOMGCL: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grGClDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomGCl : string;
    CodGCl : integer;
  end;

var
  fmPsqGCl: TfmPsqGCl;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqGCl.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodGCl := FinGClCodGCl.Value;
     NomGCl := FinGClNomGCl.Value;

     Close;

  end;

  if key = 33 then FinGCl.MoveBy(-10); {Page Up}
  if key = 34 then FinGCl.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinGCl.Last;  {End}
     if key = 36 then FinGCl.First; {Home}

     if key = 40 then FinGCl.Next; {Para Baixo}
     if key = 38 then FinGCl.Prior; {Para Cima}

  end;
end;

procedure TfmPsqGCl.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqGCl.EdpesquisaChange(Sender: TObject);
begin
  FinGCl.Locate('NomGCl',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqGCl.grGClDblClick(Sender: TObject);
begin

  CodGCl := FinGClCodGCl.Value;
  NomGCl := FinGClNomGCl.Value;

  Close;

end;

procedure TfmPsqGCl.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
