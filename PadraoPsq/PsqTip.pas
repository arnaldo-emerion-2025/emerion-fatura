unit PsqTip;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqTip = class(TForm)
    EstTip: TwwQuery;
    DsTip: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grTip: ThGrid;
    EstTipCODTIP: TIntegerField;
    EstTipNOMTIP: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grTipDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomTip : string;
    CodTip : integer;
  end;

var
  fmPsqTip: TfmPsqTip;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTip.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodTip := EstTipCodTip.Value;
     NomTip := EstTipNomTip.Value;

     Close;

  end;

  if key = 33 then EstTip.MoveBy(-10); {Page Up}
  if key = 34 then EstTip.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstTip.Last;  {End}
     if key = 36 then EstTip.First; {Home}

     if key = 40 then EstTip.Next; {Para Baixo}
     if key = 38 then EstTip.Prior; {Para Cima}

  end;
end;

procedure TfmPsqTip.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqTip.EdpesquisaChange(Sender: TObject);
begin
  EstTip.Locate('NomTip',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqTip.grTipDblClick(Sender: TObject);
begin

  CodTip := EstTipCodTip.Value;
  NomTip := EstTipNomTip.Value;

  Close;

end;

procedure TfmPsqTip.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
