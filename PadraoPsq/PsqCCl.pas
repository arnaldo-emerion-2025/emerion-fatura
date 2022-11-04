unit PsqCCl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqCCl = class(TForm)
    FinCCL: TwwQuery;
    DsCCl: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grCCl: ThGrid;
    FinCCLCODCCL: TIntegerField;
    FinCCLNOMCCL: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grCClDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCCl : string;
    CodCCl : integer;
  end;

var
  fmPsqCCl: TfmPsqCCl;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCCl.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodCCl := FinCClCodCCl.Value;
     NomCCl := FinCClNomCCl.Value;

     Close;

  end;

  if key = 33 then FinCCl.MoveBy(-10); {Page Up}
  if key = 34 then FinCCl.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCCl.Last;  {End}
     if key = 36 then FinCCl.First; {Home}

     if key = 40 then FinCCl.Next; {Para Baixo}
     if key = 38 then FinCCl.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCCl.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCCl.EdpesquisaChange(Sender: TObject);
begin
  FinCCl.Locate('NomCCl',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCCl.grCClDblClick(Sender: TObject);
begin

  CodCCl := FinCClCodCCl.Value;
  NomCCl := FinCClNomCCl.Value;

  Close;

end;

procedure TfmPsqCCl.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
