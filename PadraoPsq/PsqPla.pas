unit PsqPla;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqPla = class(TForm)
    FinPla: TwwQuery;
    DsPla: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grPla: ThGrid;
    FinPlaCODPLA: TIntegerField;
    FinPlaNOMPLA: TStringField;
    FinPlaFLGAVI: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grPlaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomPla : string;
    CodPla : integer;
  end;

var
  fmPsqPla: TfmPsqPla;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqPla.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodPla := FinPlaCodPla.Value;
     NomPla := FinPlaNomPla.Value;

     Close;

  end;

  if key = 33 then FinPla.MoveBy(-10); {Page Up}
  if key = 34 then FinPla.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinPla.Last;  {End}
     if key = 36 then FinPla.First; {Home}

     if key = 40 then FinPla.Next; {Para Baixo}
     if key = 38 then FinPla.Prior; {Para Cima}

  end;
end;

procedure TfmPsqPla.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqPla.EdpesquisaChange(Sender: TObject);
begin
  FinPla.Locate('NomPla',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqPla.grPlaDblClick(Sender: TObject);
begin

  CodPla := FinPlaCodPla.Value;
  NomPla := FinPlaNomPla.Value;

  Close;

end;

procedure TfmPsqPla.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
