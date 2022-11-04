unit PsqPai;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqPai = class(TForm)
    FinPai: TwwQuery;
    DsFinPai: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grFinPai: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    FinPaiID_FINPAI: TIntegerField;
    FinPaiNOMPAI: TStringField;
    procedure grFinPaiDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    Id_FinPai : integer;
    NomPai : string;
  end;

var
  fmPsqPai: TfmPsqPai;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqPai.grFinPaiDblClick(Sender: TObject);
begin

  Id_FinPai := FinPaiId_FinPai.Value;
  
  NomPai := FinPaiNomPai.Value;

  Close;

end;

procedure TfmPsqPai.EdPesquisaChange(Sender: TObject);
begin
  FinPai.Locate('NOMPAI',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqPai.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_FinPai := FinPaiId_FinPai.Value;

     NomPai := FinPaiNomPai.Value;

     Close;

  end;

  if key = 33 then FinPai.MoveBy(-10); {Page Up}
  if key = 34 then FinPai.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinPai.Last;  {End}
     if key = 36 then FinPai.First; {Home}

     if key = 40 then FinPai.Next; {Para Baixo}
     if key = 38 then FinPai.Prior; {Para Cima}

  end;
end;

procedure TfmPsqPai.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
