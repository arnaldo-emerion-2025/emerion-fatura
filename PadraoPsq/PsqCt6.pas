unit PsqCt6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit, dxDBColorEdit;

type
  TfmPsqCt6 = class(TForm)
    FinCt6: TwwQuery;
    DsFinCt6: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    grFinCt61: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grFinCt6: ThGrid;
    FinCt6ID_FINCTB: TIntegerField;
    FinCt6NOMCTB: TStringField;
    FinCt6ID_FINCT2: TIntegerField;
    FinCt6NOMCT2: TStringField;
    Label2: TLabel;
    EdNomCtb: TEdit;
    dxDBEdit5: TdxDBColorEdit;
    Label1: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    EdNomCt2: TEdit;
    FinCt6ID_FINCT3: TIntegerField;
    FinCt6NOMCT3: TStringField;
    Label3: TLabel;
    dxDBColorEdit2: TdxDBColorEdit;
    EdNomCt3: TEdit;
    FinCt6ID_FINCT4: TIntegerField;
    FinCt6NOMCT4: TStringField;
    Label4: TLabel;
    dxDBColorEdit3: TdxDBColorEdit;
    EdNomCt4: TEdit;
    FinCt6ID_FINCT5: TIntegerField;
    FinCt6NOMCT5: TStringField;
    Label5: TLabel;
    dxDBColorEdit4: TdxDBColorEdit;
    EdNomCt5: TEdit;
    FinCt6ID_FINCT6: TIntegerField;
    FinCt6NOMCT6: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grFinCt6DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsFinCt6DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCtb : string;
    NomCt2 : string;
    NomCt3 : string;
    NomCt4 : string;
    NomCt5 : string;
    NomCt6 : string;
    Id_FinCtb : integer;
    Id_FinCt2 : integer;
    Id_FinCt3 : integer;
    Id_FinCt4 : integer;
    Id_FinCt5 : integer;
    Id_FinCt6 : integer;
  end;

var
  fmPsqCt6: TfmPsqCt6;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCt6.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_FinCtb := FinCt6Id_FinCtb.Value;
     Id_FinCt2 := FinCt6Id_FinCt2.Value;
     Id_FinCt3 := FinCt6Id_FinCt3.Value;
     Id_FinCt4 := FinCt6Id_FinCt4.Value;
     Id_FinCt5 := FinCt6Id_FinCt5.Value;
     Id_FinCt6 := FinCt6Id_FinCt6.Value;

     NomCtb := FinCt6NomCtb.Value;
     NomCt2 := FinCt6NomCt2.Value;
     NomCt3 := FinCt6NomCt3.Value;
     NomCt4 := FinCt6NomCt4.Value;
     NomCt5 := FinCt6NomCt5.Value;
     NomCt6 := FinCt6NomCt6.Value;

     Close;

  end;

  if key = 33 then FinCt6.MoveBy(-10); {Page Up}
  if key = 34 then FinCt6.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCt6.Last;  {End}
     if key = 36 then FinCt6.First; {Home}

     if key = 40 then FinCt6.Next; {Para Baixo}
     if key = 38 then FinCt6.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCt6.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCt6.EdpesquisaChange(Sender: TObject);
begin
  FinCt6.Locate('NomCt6',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCt6.grFinCt6DblClick(Sender: TObject);
begin

  Id_FinCtb := FinCt6Id_FinCtb.Value;
  Id_FinCt2 := FinCt6Id_FinCt2.Value;
  Id_FinCt3 := FinCt6Id_FinCt3.Value;
  Id_FinCt4 := FinCt6Id_FinCt4.Value;
  Id_FinCt5 := FinCt6Id_FinCt5.Value;
  Id_FinCt6 := FinCt6Id_FinCt6.Value;

  NomCtb := FinCt6NomCtb.Value;
  NomCt2 := FinCt6NomCt2.Value;
  NomCt3 := FinCt6NomCt3.Value;
  NomCt4 := FinCt6NomCt4.Value;
  NomCt5 := FinCt6NomCt5.Value;
  NomCt6 := FinCt6NomCt6.Value;

  Close;

end;

procedure TfmPsqCt6.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

procedure TfmPsqCt6.DsFinCt6DataChange(Sender: TObject; Field: TField);
begin
  EdNomCtb.Text := FinCt6NomCtb.Value;
  EdNomCt2.Text := FinCt6NomCt2.Value;
  EdNomCt3.Text := FinCt6NomCt3.Value;
  EdNomCt4.Text := FinCt6NomCt4.Value;
  EdNomCt5.Text := FinCt6NomCt5.Value;
end;

end.
