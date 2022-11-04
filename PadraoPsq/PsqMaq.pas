unit PsqMaq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, FShowPadrao, dxColorEdit, dxDBColorEdit;

type
  TfmPsqMaq = class(TfmShowPadrao)
    PcpMaq: TwwQuery;
    DsMaq: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grMaq: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    PcpMaqNOMMAQ: TStringField;
    PcpMaqCODMAQ: TStringField;
    procedure grMaqDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodMaq,NomMaq : string;
  end;

var
  fmPsqMaq: TfmPsqMaq;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqMaq.grMaqDblClick(Sender: TObject);
begin

  CodMaq := PcpMaqCodMaq.Value;
  NomMaq := PcpMaqNomMaq.Value;

  Close;

end;

procedure TfmPsqMaq.EdPesquisaChange(Sender: TObject);
begin
  PcpMaq.Locate('NOMMAQ',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqMaq.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodMaq := PcpMaqCodMaq.Value;
     NomMaq := PcpMaqNomMaq.Value;

     Close;

  end;

  if key = 33 then PcpMaq.MoveBy(-10); {Page Up}
  if key = 34 then PcpMaq.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then PcpMaq.Last;  {End}
     if key = 36 then PcpMaq.First; {Home}

     if key = 40 then PcpMaq.Next; {Para Baixo}
     if key = 38 then PcpMaq.Prior; {Para Cima}

  end;
end;

procedure TfmPsqMaq.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
