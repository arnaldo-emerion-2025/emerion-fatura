unit PsqTla;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqTla = class(TForm)
    FinTla: TwwQuery;
    DsTla: TwwDataSource;
    PaintBox: TPaintBox;
    grTla1: TdxDBColorEdit;
    grTla: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    quSql: TwwQuery;
    FinTlaID_FINTLA: TIntegerField;
    FinTlaNOMTLA: TStringField;
    procedure grTlaDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    Id_FinTla : integer;
    NomTla : string;
  end;

var
  fmPsqTla: TfmPsqTla;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmPsqTla.grTlaDblClick(Sender: TObject);
begin

  Id_FinTla := FinTlaId_FinTla.Value;
  
  NomTla := FinTlaNomTla.Value;

  Close;

end;

procedure TfmPsqTla.EdPesquisaChange(Sender: TObject);
begin
  FinTla.Locate('NOMTLA',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqTla.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_FinTla := FinTlaId_FinTla.Value;

     NomTla := FinTlaNomTla.Value;

     Close;

  end;

  if key = 33 then FinTla.MoveBy(-10); {Page Up}
  if key = 34 then FinTla.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinTla.Last;  {End}
     if key = 36 then FinTla.First; {Home}

     if key = 40 then FinTla.Next; {Para Baixo}
     if key = 38 then FinTla.Prior; {Para Cima}

  end;
end;

procedure TfmPsqTla.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
