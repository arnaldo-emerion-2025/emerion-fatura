unit PsqGru;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqGru = class(TForm)
    EstGru: TwwQuery;
    DsGru: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grPro: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    EstGruNOMGRU: TStringField;
    EstGruCODGRU: TStringField;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    procedure grProDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodGru,NomGru : string;
  end;

var
  fmPsqGru: TfmPsqGru;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqGru.grProDblClick(Sender: TObject);
begin

  CodGru := EstGruCodGru.Value;
  NomGru := EstGruNomGru.Value;

  Close;

end;

procedure TfmPsqGru.EdPesquisaChange(Sender: TObject);
begin
  EstGru.Locate('NOMGRU',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqGru.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodGru := EstGruCodGru.Value;
     NomGru := EstGruNomGru.Value;

     Close;

  end;

  if key = 33 then EstGru.MoveBy(-10); {Page Up}
  if key = 34 then EstGru.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstGru.Last;  {End}
     if key = 36 then EstGru.First; {Home}

     if key = 40 then EstGru.Next; {Para Baixo}
     if key = 38 then EstGru.Prior; {Para Cima}

  end;
end;

procedure TfmPsqGru.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
