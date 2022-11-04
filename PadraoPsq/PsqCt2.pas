unit PsqCt2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit, dxDBColorEdit;

type
  TfmPsqCt2 = class(TForm)
    FinCt2: TwwQuery;
    DsFinCt2: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    grFinCtb1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grFinCtb: ThGrid;
    FinCt2ID_FINCTB: TIntegerField;
    FinCt2NOMCTB: TStringField;
    FinCt2ID_FINCT2: TIntegerField;
    FinCt2NOMCT2: TStringField;
    Label2: TLabel;
    EdNomCtb: TEdit;
    dxDBEdit5: TdxDBColorEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grFinCtbDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsFinCt2DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCtb : string;
    NomCt2 : string;
    Id_FinCtb : integer;
    Id_FinCt2 : integer;
  end;

var
  fmPsqCt2: TfmPsqCt2;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCt2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_FinCtb := FinCt2Id_FinCtb.Value;
     Id_FinCt2 := FinCt2Id_FinCt2.Value;

     NomCtb := FinCt2NomCtb.Value;
     NomCt2 := FinCt2NomCt2.Value;

     Close;

  end;

  if key = 33 then FinCt2.MoveBy(-10); {Page Up}
  if key = 34 then FinCt2.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinCt2.Last;  {End}
     if key = 36 then FinCt2.First; {Home}

     if key = 40 then FinCt2.Next; {Para Baixo}
     if key = 38 then FinCt2.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCt2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCt2.EdpesquisaChange(Sender: TObject);
begin
  FinCt2.Locate('NomCt2',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCt2.grFinCtbDblClick(Sender: TObject);
begin

  Id_FinCtb := FinCt2Id_FinCtb.Value;
  Id_FinCt2 := FinCt2Id_FinCt2.Value;

  NomCtb := FinCt2NomCtb.Value;
  NomCt2 := FinCt2NomCt2.Value;

  Close;

end;

procedure TfmPsqCt2.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

procedure TfmPsqCt2.DsFinCt2DataChange(Sender: TObject; Field: TField);
begin
  EdNomCtb.Text := FinCt2NomCtb.Value;
end;

end.
