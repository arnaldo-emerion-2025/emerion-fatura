unit PsqTer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqTer = class(TForm)
    CmpTer: TwwQuery;
    DsTer: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grTer: ThGrid;
    Panel2: TPanel;
    rgBusca: TRadioGroup;
    CmpTerNOMTER: TStringField;
    CmpTerAPETER: TStringField;
    CmpTerCODTER: TIntegerField;
    CmpTerSIGUFE: TStringField;
    CmpTerCGCTER: TStringField;
    CmpTerCGCCPF: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grTerDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomTer,SigUfe : string;
    CodTer : integer;
  end;

var
  fmPsqTer: TfmPsqTer;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTer.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodTer := CmpTerCodTer.Value;
     NomTer := CmpTerApeTer.Value;
     SigUfe := CmpTerSigUfe.Value;

     Close;

  end;

  if key = 33 then CmpTer.MoveBy(-10); {Page Up}
  if key = 34 then CmpTer.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then CmpTer.Last;  {End}
     if key = 36 then CmpTer.First; {Home}

     if key = 40 then CmpTer.Next; {Para Baixo}
     if key = 38 then CmpTer.Prior; {Para Cima}

  end;
end;

procedure TfmPsqTer.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqTer.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then CmpTer.Locate('NomTer',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then CmpTer.Locate('ApeTer',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 2 then CmpTer.Locate('CgcTer',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqTer.grTerDblClick(Sender: TObject);
begin

  CodTer := CmpTerCodTer.Value;
  NomTer := CmpTerApeTer.Value;
  SigUfe := CmpTerSigUfe.Value;

  Close;

end;

procedure TfmPsqTer.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
