unit PsqCt4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit, dxDBColorEdit;

type
  TfmPsqCt4 = class(TForm)
    FinCt4: TwwQuery;
    DsFinCt4: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    grFinCt41: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grFinCt4: ThGrid;
    FinCt4ID_FINCTB: TIntegerField;
    FinCt4NOMCTB: TStringField;
    FinCt4ID_FINCT2: TIntegerField;
    FinCt4NOMCT2: TStringField;
    Label2: TLabel;
    EdNomCtb: TEdit;
    dxDBEdit5: TdxDBColorEdit;
    Label1: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    EdNomCt2: TEdit;
    FinCt4ID_FINCT3: TIntegerField;
    FinCt4NOMCT3: TStringField;
    Label3: TLabel;
    dxDBColorEdit2: TdxDBColorEdit;
    EdNomCt3: TEdit;
    FinCt4ID_FINCT4: TIntegerField;
    FinCt4NOMCT4: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grFinCt4DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsFinCt4DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCtb : string;
    NomCt2 : string;
    NomCt3 : string;
    NomCt4 : string;
    Id_FinCtb : integer;
    Id_FinCt2 : integer;
    Id_FinCt3 : integer;
    Id_FinCt4 : integer;
  end;

var
  fmPsqCt4: TfmPsqCt4;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCt4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_FinCtb := FinCt4Id_FinCtb.Value;
     Id_FinCt2 := FinCt4Id_FinCt2.Value;
     Id_FinCt3 := FinCt4Id_FinCt3.Value;
     Id_FinCt4 := FinCt4Id_FinCt4.Value;

     NomCtb := FinCt4NomCtb.Value;
     NomCt2 := FinCt4NomCt2.Value;
     NomCt3 := FinCt4NomCt3.Value;
     NomCt4 := FinCt4NomCt4.Value;

     Close;

  end;

  if key = 33 then FinCt4.MoveBy(-10); {Page Up}
  if key = 34 then FinCt4.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCt4.Last;  {End}
     if key = 36 then FinCt4.First; {Home}

     if key = 40 then FinCt4.Next; {Para Baixo}
     if key = 38 then FinCt4.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCt4.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCt4.EdpesquisaChange(Sender: TObject);
begin
  FinCt4.Locate('NomCt4',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCt4.grFinCt4DblClick(Sender: TObject);
begin

  Id_FinCtb := FinCt4Id_FinCtb.Value;
  Id_FinCt2 := FinCt4Id_FinCt2.Value;
  Id_FinCt3 := FinCt4Id_FinCt3.Value;
  Id_FinCt4 := FinCt4Id_FinCt4.Value;

  NomCtb := FinCt4NomCtb.Value;
  NomCt2 := FinCt4NomCt2.Value;
  NomCt3 := FinCt4NomCt3.Value;
  NomCt4 := FinCt4NomCt4.Value;

  Close;

end;

procedure TfmPsqCt4.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

procedure TfmPsqCt4.DsFinCt4DataChange(Sender: TObject; Field: TField);
begin
  EdNomCtb.Text := FinCt4NomCtb.Value;
  EdNomCt2.Text := FinCt4NomCt2.Value;
  EdNomCt3.Text := FinCt4NomCt3.Value;
end;

end.
