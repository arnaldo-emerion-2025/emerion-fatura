unit PsqMre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqMre = class(TForm)
    FinMod: TwwQuery;
    DsMod: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grMod: ThGrid;
    FinModCODMOD: TIntegerField;
    FinModNOMMOD: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grModDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomMod : string;
    CodMod : integer;
  end;

var
  fmPsqMre: TfmPsqMre;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqMre.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodMod := FinModCodMod.Value;
     NomMod := FinModNomMod.Value;

     Close;

  end;

  if key = 33 then FinMod.MoveBy(-10); {Page Up}
  if key = 34 then FinMod.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinMod.Last;  {End}
     if key = 36 then FinMod.First; {Home}

     if key = 40 then FinMod.Next; {Para Baixo}
     if key = 38 then FinMod.Prior; {Para Cima}

  end;
end;

procedure TfmPsqMre.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqMre.EdpesquisaChange(Sender: TObject);
begin
  FinMod.Locate('NomMod',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqMre.grModDblClick(Sender: TObject);
begin

  CodMod := FinModCodMod.Value;
  NomMod := FinModNomMod.Value;

  Close;

end;

procedure TfmPsqMre.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
