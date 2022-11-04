unit PsqCtb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqCtb = class(TForm)
    FinCtb: TwwQuery;
    DsFinCtb: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    grFinCtb1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grFinCtb: ThGrid;
    FinCtbID_FINCTB: TIntegerField;
    FinCtbNOMCTB: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grFinCtbDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCtb : string;
    Id_FinCtb : integer;
  end;

var
  fmPsqCtb: TfmPsqCtb;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCtb.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_FinCtb := FinCtbId_FinCtb.Value;

     NomCtb := FinCtbNomCtb.Value;

     Close;

  end;

  if key = 33 then FinCtb.MoveBy(-10); {Page Up}
  if key = 34 then FinCtb.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCtb.Last;  {End}
     if key = 36 then FinCtb.First; {Home}

     if key = 40 then FinCtb.Next; {Para Baixo}
     if key = 38 then FinCtb.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCtb.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCtb.EdpesquisaChange(Sender: TObject);
begin
  FinCtb.Locate('NomCtb',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCtb.grFinCtbDblClick(Sender: TObject);
begin

  Id_FinCtb := FinCtbId_FinCtb.Value;

  NomCtb := FinCtbNomCtb.Value;

  Close;

end;

procedure TfmPsqCtb.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
