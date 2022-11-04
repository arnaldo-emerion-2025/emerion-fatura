unit PsqAgm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor;

type
  TfmPsqAgm = class(TForm)
    PedAgm: TwwQuery;
    DsAgm: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxEdit;
    Label21: TLabel;
    Label28: TLabel;
    grAgm: ThGrid;
    PedAgmCODAGM: TIntegerField;
    PedAgmNOMAGM: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grAgmDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdpesquisaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdpesquisaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure grAgmKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grAgmMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    {Private declarations}
  public
    {Public declarations}
    NomAgm : string;
    CodAgm : integer;
  end;

var
  fmPsqAgm: TfmPsqAgm;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqAgm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 27 then close;

  if key = 13 then begin

     CodAgm := PedAgmCodAgm.Value;
     NomAgm := PedAgmNomAgm.Value;

     Close;

  end;

  if key = 33 then PedAgm.MoveBy(-10); {Page Up}
  if key = 34 then PedAgm.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then PedAgm.Last;  {End}
     if key = 36 then PedAgm.First; {Home}

     if key = 40 then PedAgm.Next; {Para Baixo}
     if key = 38 then PedAgm.Prior; {Para Cima}

  end;
end;

procedure TfmPsqAgm.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqAgm.EdpesquisaChange(Sender: TObject);
begin
  PedAgm.Locate('NOMAGM',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqAgm.grAgmDblClick(Sender: TObject);
begin

  CodAgm := PedAgmCodAgm.Value;
  NomAgm := PedAgmNomAgm.Value;

  Close;

end;

procedure TfmPsqAgm.FormShow(Sender: TObject);
begin
  EdPesquisa.SetFocus;
end;

procedure TfmPsqAgm.EdpesquisaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grAgm.Color := $00FCF4ED;

  EdPesquisa.Color := clInfoBk;

end;

procedure TfmPsqAgm.EdpesquisaMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grAgm.Color := $00FCF4ED;

  EdPesquisa.Color := clInfoBk;

end;

procedure TfmPsqAgm.grAgmKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grAgm.Color := clInfoBk;

  EdPesquisa.Color := $00FCF4ED;

end;

procedure TfmPsqAgm.grAgmMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grAgm.Color := clInfoBk;

  EdPesquisa.Color := $00FCF4ED;

end;

end.
