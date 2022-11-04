unit PsqVen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqVen = class(TForm)
    FinVen: TwwQuery;
    DsVen: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    FinVenNOMVEN: TStringField;
    FinVenCODVEN: TIntegerField;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grVen: ThGrid;
    rgBusca: TRadioGroup;
    Panel2: TPanel;
    FinVenAPEVEN: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grVenDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomVen : string;
    CodVen : integer;
  end;

var
  fmPsqVen: TfmPsqVen;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqVen.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodVen := FinVenCodVen.Value;
     NomVen := FinVenApeVen.Value;

     Close;

  end;

  if key = 33 then FinVen.MoveBy(-10); {Page Up}
  if key = 34 then FinVen.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinVen.Last;  {End}
     if key = 36 then FinVen.First; {Home}

     if key = 40 then FinVen.Next; {Para Baixo}
     if key = 38 then FinVen.Prior; {Para Cima}

  end;
end;

procedure TfmPsqVen.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqVen.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then FinVen.Locate('NomVen',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then FinVen.Locate('ApeVen',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqVen.grVenDblClick(Sender: TObject);
begin

  CodVen := FinVenCodVen.Value;
  NomVen := FinVenApeVen.Value;

  Close;

end;

procedure TfmPsqVen.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
