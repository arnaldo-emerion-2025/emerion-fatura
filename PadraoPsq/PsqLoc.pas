unit PsqLoc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqLoc = class(TForm)
    CepLoc: TwwQuery;
    DsLoc: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grLoc: ThGrid;
    CepLocCODLOC: TStringField;
    CepLocNOMLOC: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grLocDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodLoc, NomLoc : string;
  end;

var
  fmPsqLoc: TfmPsqLoc;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqLoc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodLoc := CepLocCodLoc.Value;
     NomLoc := CepLocNomLoc.Value;

     Close;

  end;

  if key = 33 then CepLoc.MoveBy(-10); {Page Up}
  if key = 34 then CepLoc.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then CepLoc.Last;  {End}
     if key = 36 then CepLoc.First; {Home}

     if key = 40 then CepLoc.Next; {Para Baixo}
     if key = 38 then CepLoc.Prior; {Para Cima}

  end;
end;

procedure TfmPsqLoc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqLoc.EdpesquisaChange(Sender: TObject);
begin
  CepLoc.Locate('NomLoc',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqLoc.grLocDblClick(Sender: TObject);
begin

  CodLoc := CepLocCodLoc.Value;
  NomLoc := CepLocNomLoc.Value;

  Close;

end;

procedure TfmPsqLoc.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
