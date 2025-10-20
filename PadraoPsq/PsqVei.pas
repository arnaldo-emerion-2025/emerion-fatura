unit PsqVei;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqVei = class(TForm)
    ExpVei: TwwQuery;
    DsVei: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grVei: ThGrid;
    ExpVeiCODVEI: TIntegerField;
    ExpVeiMODVEI: TStringField;
    ExpVeiMARVEI: TStringField;
    ExpVeiPLCVEI: TStringField;
    ExpVeiUFEVEI: TStringField;
    ExpVeiMAXCUB: TFloatField;
    ExpVeiMAXPES: TFloatField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grVeiDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    ModVei : string;
    MarVei : string;
    PlcVei : string;
    UfeVei : string;
    CodVei : integer;
  end;

var
  fmPsqVei: TfmPsqVei;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqVei.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodVei := ExpVeiCodVei.Value;  
     ModVei := ExpVeiModVei.Value;
     MarVei := ExpVeiMarVei.Value;
     PlcVei := ExpVeiPlcVei.Value;
     UfeVei := ExpVeiUfeVei.Value;

     Close;

  end;

  if key = 33 then ExpVei.MoveBy(-10); {Page Up}
  if key = 34 then ExpVei.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then ExpVei.Last;  {End}
     if key = 36 then ExpVei.First; {Home}

     if key = 40 then ExpVei.Next; {Para Baixo}
     if key = 38 then ExpVei.Prior; {Para Cima}

  end;
end;

procedure TfmPsqVei.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqVei.EdpesquisaChange(Sender: TObject);
begin
  ExpVei.Locate('MODVEI',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqVei.grVeiDblClick(Sender: TObject);
begin

  CodVei := ExpVeiCodVei.Value;  
  ModVei := ExpVeiModVei.Value;
  MarVei := ExpVeiMarVei.Value;
  PlcVei := ExpVeiPlcVei.Value;
  UfeVei := ExpVeiUfeVei.Value;

  Close;

end;

procedure TfmPsqVei.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
