unit PsqTdo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqTdo = class(TForm)
    FinTdo: TwwQuery;
    DsTdo: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grTdo: ThGrid;
    FinTdoCODTDO: TIntegerField;
    FinTdoNOMTDO: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grTdoDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomTdo : string;
    CodTdo : integer;
  end;

var
  fmPsqTdo: TfmPsqTdo;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTdo.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodTdo := FinTdoCodTdo.Value;
     NomTdo := FinTdoNomTdo.Value;

     Close;

  end;

  if key = 33 then FinTdo.MoveBy(-10); {Page Up}
  if key = 34 then FinTdo.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinTdo.Last;  {End}
     if key = 36 then FinTdo.First; {Home}

     if key = 40 then FinTdo.Next; {Para Baixo}
     if key = 38 then FinTdo.Prior; {Para Cima}

  end;
end;

procedure TfmPsqTdo.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqTdo.EdpesquisaChange(Sender: TObject);
begin
  FinTdo.Locate('NomTdo',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqTdo.grTdoDblClick(Sender: TObject);
begin

  CodTdo := FinTdoCodTdo.Value;
  NomTdo := FinTdoNomTdo.Value;

  Close;

end;

procedure TfmPsqTdo.FormShow(Sender: TObject);
begin
  EdPesquisa.SetFocus;
end;

end.
