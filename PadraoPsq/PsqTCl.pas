unit PsqTCl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqTCl = class(TForm)
    FinTCL: TwwQuery;
    DsTCl: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grTCl: ThGrid;
    FinTCLCODTCL: TIntegerField;
    FinTCLNOMTCL: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grTClDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomTCl : string;
    CodTCl : integer;
  end;

var
  fmPsqTCl: TfmPsqTCl;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTCl.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodTCl := FinTClCodTCl.Value;
     NomTCl := FinTClNomTCl.Value;

     Close;

  end;

  if key = 33 then FinTCl.MoveBy(-10); {Page Up}
  if key = 34 then FinTCl.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinTCl.Last;  {End}
     if key = 36 then FinTCl.First; {Home}

     if key = 40 then FinTCl.Next; {Para Baixo}
     if key = 38 then FinTCl.Prior; {Para Cima}

  end;
end;

procedure TfmPsqTCl.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqTCl.EdpesquisaChange(Sender: TObject);
begin
  FinTCl.Locate('NomTCl',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqTCl.grTClDblClick(Sender: TObject);
begin

  CodTCl := FinTClCodTCl.Value;
  NomTCl := FinTClNomTCl.Value;

  Close;

end;

procedure TfmPsqTCl.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
