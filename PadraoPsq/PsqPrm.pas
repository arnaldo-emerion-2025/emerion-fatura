unit PsqPrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqPrm = class(TForm)
    PedPrm: TwwQuery;
    DsPrm: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grPrm: ThGrid;
    PedPrmCODPRM: TIntegerField;
    PedPrmNOMPRM: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grPrmDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomPrm : string;
    CodPrm : integer;
  end;

var
  fmPsqPrm: TfmPsqPrm;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqPrm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodPrm := PedPrmCodPrm.Value;
     NomPrm := PedPrmNomPrm.Value;

     Close;

  end;

  if key = 33 then PedPrm.MoveBy(-10); {Page Up}
  if key = 34 then PedPrm.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then PedPrm.Last;  {End}
     if key = 36 then PedPrm.First; {Home}

     if key = 40 then PedPrm.Next; {Para Baixo}
     if key = 38 then PedPrm.Prior; {Para Cima}

  end;
end;

procedure TfmPsqPrm.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqPrm.EdpesquisaChange(Sender: TObject);
begin
  PedPrm.Locate('NomPrm',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqPrm.grPrmDblClick(Sender: TObject);
begin

  CodPrm := PedPrmCodPrm.Value;
  NomPrm := PedPrmNomPrm.Value;

  Close;

end;

procedure TfmPsqPrm.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
