unit PsqTra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqTra = class(TForm)
    FinTra: TwwQuery;
    DsTra: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grTra: ThGrid;
    FinTraCODTRA: TIntegerField;
    FinTraNOMTRA: TStringField;
    FinTraAPETRA: TStringField;
    FinTraCGCTRA: TStringField;
    Panel2: TPanel;
    rgBusca: TRadioGroup;
    FinTraSIGUFE: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grTraDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodTra : integer;
    NomTra,UfeTra : string;
  end;

var
  fmPsqTra: TfmPsqTra;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTra.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodTra := FinTraCodTra.Value;
     NomTra := FinTraNomTra.Value;
     UfeTra := FinTraSigUfe.Value;

     Close;

  end;

  if key = 33 then FinTra.MoveBy(-10); {Page Up}
  if key = 34 then FinTra.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinTra.Last;  {End}
     if key = 36 then FinTra.First; {Home}

     if key = 40 then FinTra.Next; {Para Baixo}
     if key = 38 then FinTra.Prior; {Para Cima}

  end;
end;

procedure TfmPsqTra.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqTra.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then FinTra.Locate('NomTra',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then FinTra.Locate('ApeTra',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 2 then FinTra.Locate('CgcTra',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqTra.grTraDblClick(Sender: TObject);
begin

  CodTra := FinTraCodTra.Value;
  NomTra := FinTraNomTra.Value;
  UfeTra := FinTraSigUfe.Value;

  Close;

end;

procedure TfmPsqTra.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
