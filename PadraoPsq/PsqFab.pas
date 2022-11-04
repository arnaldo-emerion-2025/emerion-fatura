unit PsqFab;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqFab = class(TForm)
    VwaFab: TwwQuery;
    DsFab: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grFab: ThGrid;
    VwaFabCODFAB: TStringField;
    VwaFabAPECLI: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grFabDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodFab, NomCli : string;
  end;

var
  fmPsqFab: TfmPsqFab;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqFab.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodFab := VwaFabCodFab.Value;
     NomCli := VwaFabApeCli.Value;

     Close;

  end;

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then VwaFab.Last;  {End}
     if key = 36 then VwaFab.First; {Home}

     if key = 40 then VwaFab.Next; {Para Baixo}
     if key = 38 then VwaFab.Prior; {Para Cima}

  end;
end;

procedure TfmPsqFab.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqFab.EdpesquisaChange(Sender: TObject);
begin
  VwaFab.Locate('ApeCli',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqFab.grFabDblClick(Sender: TObject);
begin

  CodFab := VwaFabCodFab.Value;
  NomCli := VwaFabApeCli.Value;

  Close;

end;

procedure TfmPsqFab.FormShow(Sender: TObject);
begin
  EdPesquisa.SetFocus;
end;

end.
