unit PsqAgc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqAgc = class(TForm)
    FinAgc: TwwQuery;
    DsAgc: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    FinAgcCODAGC: TIntegerField;
    FinAgcNOMAGC: TStringField;
    grAgc: ThGrid;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grAgcDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomAgc : string;
    CodAgc : integer;
  end;

var
  fmPsqAgc: TfmPsqAgc;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqAgc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodAgc := FinAgcCodAgc.Value;
     NomAgc := FinAgcNomAgc.Value;

     Close;

  end;

  if key = 33 then FinAgc.MoveBy(-10); {Page Up}
  if key = 34 then FinAgc.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinAgc.Last;  {End}
     if key = 36 then FinAgc.First; {Home}

     if key = 40 then FinAgc.Next; {Para Baixo}
     if key = 38 then FinAgc.Prior; {Para Cima}

  end;
end;

procedure TfmPsqAgc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqAgc.EdpesquisaChange(Sender: TObject);
begin
  FinAgc.Locate('NomAgc',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqAgc.grAgcDblClick(Sender: TObject);
begin

  CodAgc := FinAgcCodAgc.Value;
  NomAgc := FinAgcNomAgc.Value;

  Close;

end;

procedure TfmPsqAgc.FormShow(Sender: TObject);
begin
  EdPesquisa.SetFocus;
end;

end.
