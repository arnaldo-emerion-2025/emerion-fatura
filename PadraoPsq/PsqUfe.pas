unit PsqUfe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqUfe = class(TForm)
    GerUfe: TwwQuery;
    DsUfe: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grUfe: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    GerUfeSIGUFE: TStringField;
    GerUfeNOMUFE: TStringField;
    procedure grUfeDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    SigUfe, NomUfe: string;
  end;

var
  fmPsqUfe: TfmPsqUfe;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqUfe.grUfeDblClick(Sender: TObject);
begin

  SigUfe := GerUfeSigUfe.Value;
  NomUfe := GerUfeNomUfe.Value;

  Close;

end;

procedure TfmPsqUfe.EdPesquisaChange(Sender: TObject);
begin
  GerUfe.Locate('NOMUFE', EdPesquisa.Text, [LoPartialKey]);
end;

procedure TfmPsqUfe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then
    close;

  if key = 13 then
  begin

    SigUfe := GerUfeSigUfe.Value;
    NomUfe := GerUfeNomUfe.Value;

    Close;

  end;

  if key = 33 then
    GerUfe.MoveBy(-10); {Page Up}
  if key = 34 then
    GerUfe.MoveBy(10); {Page Down}

  if not (ActiveControl is ThGrid) then
  begin

    if key = 35 then
      GerUfe.Last; {End}
    if key = 36 then
      GerUfe.First; {Home}

    if key = 40 then
      GerUfe.Next; {Para Baixo}
    if key = 38 then
      GerUfe.Prior; {Para Cima}

  end;
end;

procedure TfmPsqUfe.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
