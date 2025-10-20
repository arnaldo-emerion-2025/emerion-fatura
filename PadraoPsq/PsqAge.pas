unit PsqAge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqAge = class(TForm)
    CmpAge: TwwQuery;
    DsAge: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grAge: ThGrid;
    Panel2: TPanel;
    rgBusca: TRadioGroup;
    CmpAgeNOMAGE: TStringField;
    CmpAgeAPEAGE: TStringField;
    CmpAgeCODAGE: TIntegerField;
    CmpAgeCGCAGE: TStringField;
    CmpAgeSIGUFE: TStringField;
    CmpAgeCGCCPF: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grAgeDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomAge,SigUfe : string;
    CodAge : integer;
  end;

var
  fmPsqAge: TfmPsqAge;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqAge.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodAge := CmpAgeCodAge.Value;
     NomAge := CmpAgeApeAge.Value;
     SigUfe := CmpAgeSigUfe.Value;

     Close;

  end;

  if key = 33 then CmpAge.MoveBy(-10); {Page Up}
  if key = 34 then CmpAge.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then CmpAge.Last;  {End}
     if key = 36 then CmpAge.First; {Home}

     if key = 40 then CmpAge.Next; {Para Baixo}
     if key = 38 then CmpAge.Prior; {Para Cima}

  end;
end;

procedure TfmPsqAge.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqAge.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then CmpAge.Locate('NomAge',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then CmpAge.Locate('ApeAge',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 2 then CmpAge.Locate('CgcAge',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqAge.grAgeDblClick(Sender: TObject);
begin

  CodAge := CmpAgeCodAge.Value;
  NomAge := CmpAgeApeAge.Value;
  SigUfe := CmpAgeSigUfe.Value;

  Close;

end;

procedure TfmPsqAge.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
