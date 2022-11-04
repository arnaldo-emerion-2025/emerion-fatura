unit PsqEmb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqEmb = class(TForm)
    EstEmb: TwwQuery;
    DsEmb: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grEmb: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstEmbCODEMB: TStringField;
    EstEmbNOMEMB: TStringField;
    procedure grEmbDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodEmb,NomEmb : string;
  end;

var
  fmPsqEmb: TfmPsqEmb;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqEmb.grEmbDblClick(Sender: TObject);
begin

  CodEmb := EstEmbCodEmb.Value;
  NomEmb := EstEmbNomEmb.Value;

  Close;

end;

procedure TfmPsqEmb.EdPesquisaChange(Sender: TObject);
begin
  EstEmb.Locate('NOMEMB',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqEmb.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodEmb := EstEmbCodEmb.Value;
     NomEmb := EstEmbNomEmb.Value;

     Close;

  end;

  if key = 33 then EstEmb.MoveBy(-10); {Page Up}
  if key = 34 then EstEmb.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstEmb.Last;  {End}
     if key = 36 then EstEmb.First; {Home}

     if key = 40 then EstEmb.Next; {Para Baixo}
     if key = 38 then EstEmb.Prior; {Para Cima}

  end;
end;

procedure TfmPsqEmb.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
