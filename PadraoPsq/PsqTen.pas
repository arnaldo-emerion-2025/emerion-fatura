unit PsqTen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqTen = class(TForm)
    CmpTen: TwwQuery;
    DsTen: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grTen: ThGrid;
    CmpTenCODTEN: TIntegerField;
    CmpTenNOMTEN: TStringField;
    CmpTenFLGINT: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grTenDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomTen : string;
    CodTen : integer;
  end;

var
  fmPsqTen: TfmPsqTen;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTen.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodTen := CmpTenCodTen.Value;
     NomTen := CmpTenNomTen.Value;

     Close;

  end;

  if key = 33 then CmpTen.MoveBy(-10); {Page Up}
  if key = 34 then CmpTen.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then CmpTen.Last;  {End}
     if key = 36 then CmpTen.First; {Home}

     if key = 40 then CmpTen.Next; {Para Baixo}
     if key = 38 then CmpTen.Prior; {Para Cima}

  end;
end;

procedure TfmPsqTen.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqTen.EdpesquisaChange(Sender: TObject);
begin
  CmpTen.Locate('NomTen',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqTen.grTenDblClick(Sender: TObject);
begin

  CodTen := CmpTenCodTen.Value;
  NomTen := CmpTenNomTen.Value;

  Close;

end;

procedure TfmPsqTen.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
