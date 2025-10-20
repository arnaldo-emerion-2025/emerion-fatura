unit PsqTco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqTco = class(TForm)
    CobTco: TwwQuery;
    DsTco: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grTco: ThGrid;
    CobTcoCODBAN: TIntegerField;
    CobTcoCODTCO: TStringField;
    CobTcoNOMTCO: TStringField;
    CobTcoCODAGB: TStringField;
    CobTcoCODCNB: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grTcoDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodTco,NomTco : string;
  end;

var
  fmPsqTco: TfmPsqTco;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodTco := CobTcoCodTco.Value;
     NomTco := CobTcoNomTco.Value;

     Close;

  end;

  if key = 33 then CobTco.MoveBy(-10); {Page Up}
  if key = 34 then CobTco.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then CobTco.Last;  {End}
     if key = 36 then CobTco.First; {Home}

     if key = 40 then CobTco.Next; {Para Baixo}
     if key = 38 then CobTco.Prior; {Para Cima}

  end;
end;

procedure TfmPsqTco.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqTco.EdpesquisaChange(Sender: TObject);
begin
  CobTco.Locate('NomTco',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqTco.grTcoDblClick(Sender: TObject);
begin

  CodTco := CobTcoCodTco.Value;
  NomTco := CobTcoNomTco.Value;

  Close;

end;

procedure TfmPsqTco.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
