unit PsqMlc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqMlc = class(TForm)
    CmpMlc: TwwQuery;
    DsCmpMlc: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grMlc: ThGrid;
    CmpMlcID_CMPMLC: TIntegerField;
    CmpMlcNOMMLC: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grMlcDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomMlc : string;
    Id_CmpMlc : integer;
  end;

var
  fmPsqMlc: TfmPsqMlc;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqMlc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_CmpMlc := CmpMlcId_CmpMlc.Value;

     NomMlc := CmpMlcNomMlc.Value;

     Close;

  end;

  if key = 33 then CmpMlc.MoveBy(-10); {Page Up}
  if key = 34 then CmpMlc.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then CmpMlc.Last;  {End}
     if key = 36 then CmpMlc.First; {Home}

     if key = 40 then CmpMlc.Next; {Para Baixo}
     if key = 38 then CmpMlc.Prior; {Para Cima}

  end;
end;

procedure TfmPsqMlc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqMlc.EdpesquisaChange(Sender: TObject);
begin
  CmpMlc.Locate('NomMlc',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqMlc.grMlcDblClick(Sender: TObject);
begin

  Id_CmpMlc := CmpMlcId_CmpMlc.Value;

  NomMlc := CmpMlcNomMlc.Value;

  Close;

end;

procedure TfmPsqMlc.FormShow(Sender: TObject);
begin
  EdPesquisa.SetFocus;
end;

end.
