unit PsqFra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor;

type
  TfmPsqFra = class(TForm)
    PedFra: TwwQuery;
    DsFra: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxEdit;
    Label21: TLabel;
    Label28: TLabel;
    grFra: ThGrid;
    PedFraCODFRA: TIntegerField;
    PedFraNOMFRA: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grFraDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdpesquisaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdpesquisaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grFraKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grFraMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    {Private declarations}
  public
    {Public declarations}
    NomFra : string;
    CodFra : integer;
  end;

var
  fmPsqFra: TfmPsqFra;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqFra.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 27 then close;

  if key = 13 then begin

     CodFra := PedFraCodFra.Value;
     NomFra := PedFraNomFra.Value;

     Close;

  end;

  if key = 33 then PedFra.MoveBy(-10); {Page Up}
  if key = 34 then PedFra.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then PedFra.Last;  {End}
     if key = 36 then PedFra.First; {Home}

     if key = 40 then PedFra.Next; {Para Baixo}
     if key = 38 then PedFra.Prior; {Para Cima}

  end;
end;

procedure TfmPsqFra.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqFra.EdpesquisaChange(Sender: TObject);
begin
  PedFra.Locate('NomFra',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqFra.grFraDblClick(Sender: TObject);
begin

  CodFra := PedFraCodFra.Value;
  NomFra := PedFraNomFra.Value;

  Close;

end;

procedure TfmPsqFra.FormShow(Sender: TObject);
begin
  EdPesquisa.SetFocus;
end;

procedure TfmPsqFra.EdpesquisaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grFra.Color := $00FCF4ED;

  EdPesquisa.Color := clInfoBk;

end;

procedure TfmPsqFra.EdpesquisaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grFra.Color := $00FCF4ED;

  EdPesquisa.Color := clInfoBk;

end;

procedure TfmPsqFra.grFraKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grFra.Color := clInfoBk;

  EdPesquisa.Color := $00FCF4ED;

end;

procedure TfmPsqFra.grFraMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grFra.Color := clInfoBk;

  EdPesquisa.Color := $00FCF4ED;

end;

end.
