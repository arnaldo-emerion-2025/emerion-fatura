unit PsqTmo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqTmo = class(TForm)
    FinTmo: TwwQuery;
    DsTmo: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grTmo: ThGrid;
    FinTmoCODTMO: TIntegerField;
    FinTmoNOMTMO: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grTmoDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomTmo : string;
    CodTmo : integer;
  end;

var
  fmPsqTmo: TfmPsqTmo;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTmo.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodTmo := FinTmoCodTmo.Value;
     NomTmo := FinTmoNomTmo.Value;

     Close;

  end;

  if key = 33 then FinTmo.MoveBy(-10); {Page Up}
  if key = 34 then FinTmo.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinTmo.Last;  {End}
     if key = 36 then FinTmo.First; {Home}

     if key = 40 then FinTmo.Next; {Para Baixo}
     if key = 38 then FinTmo.Prior; {Para Cima}

  end;
end;

procedure TfmPsqTmo.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqTmo.EdpesquisaChange(Sender: TObject);
begin
  FinTmo.Locate('NomTmo',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqTmo.grTmoDblClick(Sender: TObject);
begin

  CodTmo := FinTmoCodTmo.Value;
  NomTmo := FinTmoNomTmo.Value;

  Close;

end;

procedure TfmPsqTmo.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
