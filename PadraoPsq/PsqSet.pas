unit PsqSet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqSet = class(TForm)
    FinSet: TwwQuery;
    DsSet: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grSet: ThGrid;
    FinSetCODMCR: TIntegerField;
    FinSetCODMRG: TIntegerField;
    FinSetCODSET: TIntegerField;
    FinSetNOMSET: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grSetDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomSet : string;
    CodSet : integer;
  end;

var
  fmPsqSet: TfmPsqSet;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqSet.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  
  if key = 27 then close;

  if key = 13 then begin

     CodSet := FinSetCodSet.Value;
     NomSet := FinSetNomSet.Value;

     Close;

  end;

  if key = 33 then FinSet.MoveBy(-10); {Page Up}
  if key = 34 then FinSet.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinSet.Last;  {End}
     if key = 36 then FinSet.First; {Home}

     if key = 40 then FinSet.Next; {Para Baixo}
     if key = 38 then FinSet.Prior; {Para Cima}

  end;
end;

procedure TfmPsqSet.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqSet.EdpesquisaChange(Sender: TObject);
begin
  FinSet.Locate('NomSet',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqSet.grSetDblClick(Sender: TObject);
begin

  CodSet := FinSetCodSet.Value;
  NomSet := FinSetNomSet.Value;

  Close;

end;

procedure TfmPsqSet.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
