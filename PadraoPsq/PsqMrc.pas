unit PsqMrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqMrc = class(TForm)
    EstMrc: TwwQuery;
    DsMrc: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grMrc: ThGrid;
    EstMrcCODMRC: TIntegerField;
    EstMrcNOMMRC: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grMrcDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomMrc : string;
    CodMrc : integer;
  end;

var
  fmPsqMrc: TfmPsqMrc;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqMrc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodMrc := EstMrcCodMrc.Value;
     NomMrc := EstMrcNomMrc.Value;

     Close;

  end;

  if key = 33 then EstMrc.MoveBy(-10); {Page Up}
  if key = 34 then EstMrc.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstMrc.Last;  {End}
     if key = 36 then EstMrc.First; {Home}

     if key = 40 then EstMrc.Next; {Para Baixo}
     if key = 38 then EstMrc.Prior; {Para Cima}

  end;
end;

procedure TfmPsqMrc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqMrc.EdpesquisaChange(Sender: TObject);
begin
  EstMrc.Locate('NomMrc',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqMrc.grMrcDblClick(Sender: TObject);
begin

  CodMrc := EstMrcCodMrc.Value;
  NomMrc := EstMrcNomMrc.Value;

  Close;

end;

procedure TfmPsqMrc.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
