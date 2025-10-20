unit PsqMst;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqMst = class(TForm)
    FinMst: TwwQuery;
    DsMst: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grMst: ThGrid;
    FinMstCODMCR: TIntegerField;
    FinMstCODMRG: TIntegerField;
    FinMstCODSET: TIntegerField;
    FinMstCODMST: TIntegerField;
    FinMstNOMMST: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grMstDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomMst : string;
    CodMst : integer;
  end;

var
  fmPsqMst: TfmPsqMst;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqMst.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodMst := FinMstCodMst.Value;
     NomMst := FinMstNomMst.Value;

     Close;

  end;

  if key = 33 then FinMst.MoveBy(-10); {Page Up}
  if key = 34 then FinMst.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinMst.Last;  {End}
     if key = 36 then FinMst.First; {Home}

     if key = 40 then FinMst.Next; {Para Baixo}
     if key = 38 then FinMst.Prior; {Para Cima}

  end;
end;

procedure TfmPsqMst.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqMst.EdpesquisaChange(Sender: TObject);
begin
  FinMst.Locate('NomMst',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqMst.grMstDblClick(Sender: TObject);
begin

  CodMst := FinMstCodMst.Value;
  NomMst := FinMstNomMst.Value;

  Close;

end;

procedure TfmPsqMst.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
