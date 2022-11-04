unit PsqMrg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqMrg = class(TForm)
    FinMrg: TwwQuery;
    DsMrg: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grMrg: ThGrid;
    FinMrgCODMCR: TIntegerField;
    FinMrgCODMRG: TIntegerField;
    FinMrgNOMMRG: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grMrgDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomMrg : string;
    CodMrg : integer;
  end;

var
  fmPsqMrg: TfmPsqMrg;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqMrg.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodMrg := FinMrgCodMrg.Value;
     NomMrg := FinMrgNomMrg.Value;

     Close;

  end;

  if key = 33 then FinMrg.MoveBy(-10); {Page Up}
  if key = 34 then FinMrg.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinMrg.Last;  {End}
     if key = 36 then FinMrg.First; {Home}

     if key = 40 then FinMrg.Next; {Para Baixo}
     if key = 38 then FinMrg.Prior; {Para Cima}

  end;
end;

procedure TfmPsqMrg.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqMrg.EdpesquisaChange(Sender: TObject);
begin
  FinMrg.Locate('NomMrg',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqMrg.grMrgDblClick(Sender: TObject);
begin

  CodMrg := FinMrgCodMrg.Value;
  NomMrg := FinMrgNomMrg.Value;

  Close;

end;

procedure TfmPsqMrg.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
