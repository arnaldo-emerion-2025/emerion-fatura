unit PsqHol;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqHol = class(TForm)
    FinHol: TwwQuery;
    DsHol: TwwDataSource;
    PaintBox: TPaintBox;
    grHol1: TdxDBColorEdit;
    grHol: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    quSql: TwwQuery;
    FinHolID_FINHOL: TIntegerField;
    FinHolNOMHOL: TStringField;
    FinHolFLGINT: TStringField;
    procedure grHolDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    Id_FinHol : integer;
    NomHol : string;
  end;

var
  fmPsqHol: TfmPsqHol;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmPsqHol.grHolDblClick(Sender: TObject);
begin

  Id_FinHol := FinHolId_FinHol.Value;
  
  NomHol := FinHolNomHol.Value;

  Close;

end;

procedure TfmPsqHol.EdPesquisaChange(Sender: TObject);
begin
  FinHol.Locate('NOMHOL',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqHol.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_FinHol := FinHolId_FinHol.Value;
     
     NomHol := FinHolNomHol.Value;

     Close;

  end;

  if key = 33 then FinHol.MoveBy(-10); {Page Up}
  if key = 34 then FinHol.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinHol.Last;  {End}
     if key = 36 then FinHol.First; {Home}

     if key = 40 then FinHol.Next; {Para Baixo}
     if key = 38 then FinHol.Prior; {Para Cima}

  end;
end;

procedure TfmPsqHol.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
