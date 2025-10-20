unit PsqCt5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit, dxDBColorEdit;

type
  TfmPsqCt5 = class(TForm)
    FinCt5: TwwQuery;
    DsFinCt5: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    grFinCt51: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grFinCt5: ThGrid;
    FinCt5ID_FINCTB: TIntegerField;
    FinCt5NOMCTB: TStringField;
    FinCt5ID_FINCT2: TIntegerField;
    FinCt5NOMCT2: TStringField;
    Label2: TLabel;
    EdNomCtb: TEdit;
    dxDBEdit5: TdxDBColorEdit;
    Label1: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    EdNomCt2: TEdit;
    FinCt5ID_FINCT3: TIntegerField;
    FinCt5NOMCT3: TStringField;
    Label3: TLabel;
    dxDBColorEdit2: TdxDBColorEdit;
    EdNomCt3: TEdit;
    FinCt5ID_FINCT4: TIntegerField;
    FinCt5NOMCT4: TStringField;
    Label4: TLabel;
    dxDBColorEdit3: TdxDBColorEdit;
    EdNomCt4: TEdit;
    FinCt5ID_FINCT5: TIntegerField;
    FinCt5NOMCT5: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grFinCt5DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsFinCt5DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCtb : string;
    NomCt2 : string;
    NomCt3 : string;
    NomCt4 : string;
    NomCt5 : string;
    Id_FinCtb : integer;
    Id_FinCt2 : integer;
    Id_FinCt3 : integer;
    Id_FinCt4 : integer;
    Id_FinCt5 : integer;
  end;

var
  fmPsqCt5: TfmPsqCt5;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCt5.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_FinCtb := FinCt5Id_FinCtb.Value;
     Id_FinCt2 := FinCt5Id_FinCt2.Value;
     Id_FinCt3 := FinCt5Id_FinCt3.Value;
     Id_FinCt4 := FinCt5Id_FinCt4.Value;
     Id_FinCt5 := FinCt5Id_FinCt5.Value;

     NomCtb := FinCt5NomCtb.Value;
     NomCt2 := FinCt5NomCt2.Value;
     NomCt3 := FinCt5NomCt3.Value;
     NomCt4 := FinCt5NomCt4.Value;
     NomCt5 := FinCt5NomCt5.Value;

     Close;

  end;

  if key = 33 then FinCt5.MoveBy(-10); {Page Up}
  if key = 34 then FinCt5.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCt5.Last;  {End}
     if key = 36 then FinCt5.First; {Home}

     if key = 40 then FinCt5.Next; {Para Baixo}
     if key = 38 then FinCt5.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCt5.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCt5.EdpesquisaChange(Sender: TObject);
begin
  FinCt5.Locate('NomCt5',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCt5.grFinCt5DblClick(Sender: TObject);
begin

  Id_FinCtb := FinCt5Id_FinCtb.Value;
  Id_FinCt2 := FinCt5Id_FinCt2.Value;
  Id_FinCt3 := FinCt5Id_FinCt3.Value;
  Id_FinCt4 := FinCt5Id_FinCt4.Value;
  Id_FinCt5 := FinCt5Id_FinCt5.Value;

  NomCtb := FinCt5NomCtb.Value;
  NomCt2 := FinCt5NomCt2.Value;
  NomCt3 := FinCt5NomCt3.Value;
  NomCt4 := FinCt5NomCt4.Value;
  NomCt5 := FinCt5NomCt5.Value;

  Close;

end;

procedure TfmPsqCt5.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

procedure TfmPsqCt5.DsFinCt5DataChange(Sender: TObject; Field: TField);
begin
  EdNomCtb.Text := FinCt5NomCtb.Value;
  EdNomCt2.Text := FinCt5NomCt2.Value;
  EdNomCt3.Text := FinCt5NomCt3.Value;
  EdNomCt4.Text := FinCt5NomCt4.Value;
end;

end.
