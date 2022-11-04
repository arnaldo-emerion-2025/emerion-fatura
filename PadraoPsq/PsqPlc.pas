unit PsqPlc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqPlc = class(TForm)
    FinPlc: TwwQuery;
    DsCCl: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grPlc: ThGrid;
    FinPlcCONPLC: TIntegerField;
    FinPlcNOMPLC: TStringField;
    FinPlcCODCEN: TIntegerField;
    FinPlcCODAGC: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grPlcDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomPlc : string;
    ConPlc : integer;
  end;

var
  fmPsqPlc: TfmPsqPlc;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqPlc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     ConPlc := FinPlcConPlc.Value;
     NomPlc := FinPlcNomPlc.Value;

     Close;

  end;

  if key = 33 then FinPlc.MoveBy(-10); {Page Up}
  if key = 34 then FinPlc.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinPlc.Last;  {End}
     if key = 36 then FinPlc.First; {Home}

     if key = 40 then FinPlc.Next; {Para Baixo}
     if key = 38 then FinPlc.Prior; {Para Cima}

  end;
end;

procedure TfmPsqPlc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqPlc.EdpesquisaChange(Sender: TObject);
begin
  FinPlc.Locate('NomPlc',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqPlc.grPlcDblClick(Sender: TObject);
begin

  ConPlc := FinPlcConPlc.Value;
  NomPlc := FinPlcNomPlc.Value;

  Close;

end;

procedure TfmPsqPlc.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
