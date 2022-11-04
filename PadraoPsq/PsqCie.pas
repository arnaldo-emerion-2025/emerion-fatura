unit PsqCie;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqCie = class(TForm)
    FinCie: TwwQuery;
    DsFinCie: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    grCie1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grCie: ThGrid;
    FinCieID_FINCIE: TIntegerField;
    FinCieID_FINUFE: TIntegerField;
    FinCieNOMCIE: TStringField;
    FinCieSIGNFE: TStringField;
    FinCieSIGUFE: TStringField;
    FinCieNOMUFE: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grCieDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCie : string;
    SigNfe : string;
    Id_FinCie : integer;
  end;

var
  fmPsqCie: TfmPsqCie;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCie.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_FinCie := FinCieId_FinCie.Value;

     NomCie := FinCieNomCie.Value;
     SigNfe := FinCieSigNfe.Value;

     Close;

  end;

  if key = 33 then FinCie.MoveBy(-10); {Page Up}
  if key = 34 then FinCie.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCie.Last;  {End}
     if key = 36 then FinCie.First; {Home}

     if key = 40 then FinCie.Next; {Para Baixo}
     if key = 38 then FinCie.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCie.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCie.EdpesquisaChange(Sender: TObject);
begin
  FinCie.Locate('NomCie',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCie.grCieDblClick(Sender: TObject);
begin

  Id_FinCie := FinCieId_FinCie.Value;

  NomCie := FinCieNomCie.Value;
  SigNfe := FinCieSigNfe.Value;

  Close;

end;

procedure TfmPsqCie.FormShow(Sender: TObject);
begin
  EdPesquisa.SetFocus;
end;

end.
