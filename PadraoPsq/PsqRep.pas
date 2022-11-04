unit PsqRep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqRep = class(TForm)
    FinRep: TwwQuery;
    DsRep: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grRep: ThGrid;
    rgBusca: TRadioGroup;
    Panel2: TPanel;
    FinRepNOMREP: TStringField;
    FinRepAPEREP: TStringField;
    FinRepCODREP: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grRepDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomRep : string;
    CodRep : integer;
  end;

var
  fmPsqRep: TfmPsqRep;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqRep.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodRep := FinRepCodRep.Value;
     NomRep := FinRepNomRep.Value;

     Close;

  end;

  if key = 33 then FinRep.MoveBy(-10); {Page Up}
  if key = 34 then FinRep.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinRep.Last;  {End}
     if key = 36 then FinRep.First; {Home}

     if key = 40 then FinRep.Next; {Para Baixo}
     if key = 38 then FinRep.Prior; {Para Cima}

  end;
end;

procedure TfmPsqRep.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqRep.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then FinRep.Locate('NomRep',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then FinRep.Locate('ApeRep',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqRep.grRepDblClick(Sender: TObject);
begin

  CodRep := FinRepCodRep.Value;
  NomRep := FinRepNomRep.Value;

  Close;

end;

procedure TfmPsqRep.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
