unit PsqFun;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, FShowPadrao, dxColorEdit, dxDBColorEdit;

type
  TfmPsqFun = class(TfmShowPadrao)
    PcpFun: TwwQuery;
    DsFun: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grFun: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    PcpFunNOMFUN: TStringField;
    PcpFunCODFUN: TIntegerField;
    procedure grFunDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodFun : integer;
    NomFun : string;
  end;

var
  fmPsqFun: TfmPsqFun;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqFun.grFunDblClick(Sender: TObject);
begin

  CodFun := PcpFunCodFun.Value;
  NomFun := PcpFunNomFun.Value;

  Close;

end;

procedure TfmPsqFun.EdPesquisaChange(Sender: TObject);
begin
  PcpFun.Locate('NOMFUN',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqFun.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodFun := PcpFunCodFun.Value;
     NomFun := PcpFunNomFun.Value;

     Close;

  end;

  if key = 33 then PcpFun.MoveBy(-10); {Page Up}
  if key = 34 then PcpFun.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then PcpFun.Last;  {End}
     if key = 36 then PcpFun.First; {Home}

     if key = 40 then PcpFun.Next; {Para Baixo}
     if key = 38 then PcpFun.Prior; {Para Cima}

  end;
end;

procedure TfmPsqFun.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
