unit PsqUnd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqUnd = class(TForm)
    EstUnd: TwwQuery;
    DsUnd: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grUnd: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstUndCODUND: TStringField;
    EstUndNOMUND: TStringField;
    procedure grUndDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodUnd,NomUnd : string;
  end;

var
  fmPsqUnd: TfmPsqUnd;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqUnd.grUndDblClick(Sender: TObject);
begin

  CodUnd := EstUndCodUnd.Value;
  NomUnd := EstUndNomUnd.Value;

  Close;

end;

procedure TfmPsqUnd.EdPesquisaChange(Sender: TObject);
begin
  EstUnd.Locate('NOMUND',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqUnd.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodUnd := EstUndCodUnd.Value;
     NomUnd := EstUndNomUnd.Value;

     Close;

  end;

  if key = 33 then EstUnd.MoveBy(-10); {Page Up}
  if key = 34 then EstUnd.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstUnd.Last;  {End}
     if key = 36 then EstUnd.First; {Home}

     if key = 40 then EstUnd.Next; {Para Baixo}
     if key = 38 then EstUnd.Prior; {Para Cima}

  end;
end;

procedure TfmPsqUnd.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
