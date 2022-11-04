unit PsqCt3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit, dxDBColorEdit;

type
  TfmPsqCt3 = class(TForm)
    FinCt3: TwwQuery;
    DsFinCt3: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    grFinCt31: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grFinCt3: ThGrid;
    FinCt3ID_FINCTB: TIntegerField;
    FinCt3NOMCTB: TStringField;
    FinCt3ID_FINCT2: TIntegerField;
    FinCt3NOMCT2: TStringField;
    Label2: TLabel;
    EdNomCtb: TEdit;
    dxDBEdit5: TdxDBColorEdit;
    Label1: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    EdNomCt2: TEdit;
    FinCt3ID_FINCT3: TIntegerField;
    FinCt3NOMCT3: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grFinCt3DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsFinCt3DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCtb : string;
    NomCt2 : string;
    NomCt3 : string;
    Id_FinCtb : integer;
    Id_FinCt2 : integer;
    Id_FinCt3 : integer;
  end;

var
  fmPsqCt3: TfmPsqCt3;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCt3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_FinCtb := FinCt3Id_FinCtb.Value;
     Id_FinCt2 := FinCt3Id_FinCt2.Value;
     Id_FinCt3 := FinCt3Id_FinCt3.Value;

     NomCtb := FinCt3NomCtb.Value;
     NomCt2 := FinCt3NomCt2.Value;
     NomCt3 := FinCt3NomCt3.Value;

     Close;

  end;

  if key = 33 then FinCt3.MoveBy(-10); {Page Up}
  if key = 34 then FinCt3.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCt3.Last;  {End}
     if key = 36 then FinCt3.First; {Home}

     if key = 40 then FinCt3.Next; {Para Baixo}
     if key = 38 then FinCt3.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCt3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCt3.EdpesquisaChange(Sender: TObject);
begin
  FinCt3.Locate('NomCt3',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCt3.grFinCt3DblClick(Sender: TObject);
begin

  Id_FinCtb := FinCt3Id_FinCtb.Value;
  Id_FinCt2 := FinCt3Id_FinCt2.Value;
  Id_FinCt3 := FinCt3Id_FinCt3.Value;

  NomCtb := FinCt3NomCtb.Value;
  NomCt2 := FinCt3NomCt2.Value;
  NomCt3 := FinCt3NomCt3.Value;

  Close;

end;

procedure TfmPsqCt3.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

procedure TfmPsqCt3.DsFinCt3DataChange(Sender: TObject; Field: TField);
begin
  EdNomCtb.Text := FinCt3NomCtb.Value;
  EdNomCt2.Text := FinCt3NomCt2.Value;
end;

end.
