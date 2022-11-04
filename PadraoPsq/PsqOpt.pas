unit PsqOpt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, FShowPadrao, dxColorEdit, dxDBColorEdit;

type
  TfmPsqOpt = class(TfmShowPadrao)
    CmpOpe: TwwQuery;
    DsOpe: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grOpe: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    CmpOpeCODOPE: TIntegerField;
    CmpOpeNOMOPE: TStringField;
    procedure grOpeDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodOpe : integer;
    NomOpe : string;
  end;

var
  fmPsqOpt: TfmPsqOpt;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqOpt.grOpeDblClick(Sender: TObject);
begin

  CodOpe := CmpOpeCodOpe.Value;
  NomOpe := CmpOpeNomOpe.Value;

  Close;

end;

procedure TfmPsqOpt.EdPesquisaChange(Sender: TObject);
begin
  CmpOpe.Locate('NOMOPE',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqOpt.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodOpe := CmpOpeCodOpe.Value;
     NomOpe := CmpOpeNomOpe.Value;

     Close;

  end;

  if key = 33 then CmpOpe.MoveBy(-10); {Page Up}
  if key = 34 then CmpOpe.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then CmpOpe.Last;  {End}
     if key = 36 then CmpOpe.First; {Home}

     if key = 40 then CmpOpe.Next; {Para Baixo}
     if key = 38 then CmpOpe.Prior; {Para Cima}

  end;
end;

procedure TfmPsqOpt.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
