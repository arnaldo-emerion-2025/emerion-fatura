unit PsqStr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqStr = class(TForm)
    EstStr: TwwQuery;
    DsStr: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grStr: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstStrCODSTR: TStringField;
    EstStrTIPSTR: TStringField;
    EstStrNOMSTR: TStringField;
    procedure grStrDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodStr,NomStr : string;
  end;

var
  fmPsqStr: TfmPsqStr;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqStr.grStrDblClick(Sender: TObject);
begin

  CodStr := EstStrCodStr.Value;
  NomStr := EstStrNomStr.Value;

  Close;

end;

procedure TfmPsqStr.EdPesquisaChange(Sender: TObject);
begin
  EstStr.Locate('NOMSTR',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqStr.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodStr := EstStrCodStr.Value;
     NomStr := EstStrNomStr.Value;

     Close;

  end;

  if key = 33 then EstStr.MoveBy(-10); {Page Up}
  if key = 34 then EstStr.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstStr.Last;  {End}
     if key = 36 then EstStr.First; {Home}

     if key = 40 then EstStr.Next; {Para Baixo}
     if key = 38 then EstStr.Prior; {Para Cima}

  end;
end;

procedure TfmPsqStr.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
