unit PsqAt2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqAt2 = class(TForm)
    FinAtd: TwwQuery;
    DsAtd: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grAtd: ThGrid;
    rgBusca: TRadioGroup;
    Panel2: TPanel;
    FinAtdNOMATD: TStringField;
    FinAtdAPEATD: TStringField;
    FinAtdCODATD: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grAtdDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomAtd : string;
    CodAtd : integer;
  end;

var
  fmPsqAt2: TfmPsqAt2;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqAt2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodAtd := FinAtdCodAtd.Value;
     NomAtd := FinAtdApeAtd.Value;

     Close;

  end;

  if key = 33 then FinAtd.MoveBy(-10); {Page Up}
  if key = 34 then FinAtd.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinAtd.Last;  {End}
     if key = 36 then FinAtd.First; {Home}

     if key = 40 then FinAtd.Next; {Para Baixo}
     if key = 38 then FinAtd.Prior; {Para Cima}

  end;
end;

procedure TfmPsqAt2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqAt2.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then FinAtd.Locate('NomAtd',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then FinAtd.Locate('ApeAtd',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqAt2.grAtdDblClick(Sender: TObject);
begin

  CodAtd := FinAtdCodAtd.Value;
  NomAtd := FinAtdApeAtd.Value;

  Close;

end;

procedure TfmPsqAt2.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
