unit PsqMcr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqMcr = class(TForm)
    FinMcr: TwwQuery;
    DsMcr: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grMcr: ThGrid;
    FinMcrCODMCR: TIntegerField;
    FinMcrNOMMCR: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grMcrDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomMcr : string;
    CodMcr : integer;
  end;

var
  fmPsqMcr: TfmPsqMcr;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqMcr.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodMcr := FinMcrCodMcr.Value;
     NomMcr := FinMcrNomMcr.Value;

     Close;

  end;

  if key = 33 then FinMcr.MoveBy(-10); {Page Up}
  if key = 34 then FinMcr.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinMcr.Last;  {End}
     if key = 36 then FinMcr.First; {Home}

     if key = 40 then FinMcr.Next; {Para Baixo}
     if key = 38 then FinMcr.Prior; {Para Cima}

  end;
end;

procedure TfmPsqMcr.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqMcr.EdpesquisaChange(Sender: TObject);
begin
  FinMcr.Locate('NomMcr',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqMcr.grMcrDblClick(Sender: TObject);
begin

  CodMcr := FinMcrCodMcr.Value;
  NomMcr := FinMcrNomMcr.Value;

  Close;

end;

procedure TfmPsqMcr.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
