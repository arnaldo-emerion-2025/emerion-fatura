unit PsqImp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqImp = class(TForm)
    CmpImp: TwwQuery;
    DsImp: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grImp: ThGrid;
    Panel2: TPanel;
    rgBusca: TRadioGroup;
    CmpImpNOMIMP: TStringField;
    CmpImpAPEIMP: TStringField;
    CmpImpCODIMP: TIntegerField;
    CmpImpCGCIMP: TStringField;
    CmpImpCGCCPF: TStringField;
    CmpImpSIGUFE: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grImpDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomImp,SigUfe : string;
    CodImp : integer;
  end;

var
  fmPsqImp: TfmPsqImp;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqImp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodImp := CmpImpCodImp.Value;
     NomImp := CmpImpApeImp.Value;
     SigUfe := CmpImpSigUfe.Value;

     Close;

  end;

  if key = 33 then CmpImp.MoveBy(-10); {Page Up}
  if key = 34 then CmpImp.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then CmpImp.Last;  {End}
     if key = 36 then CmpImp.First; {Home}

     if key = 40 then CmpImp.Next; {Para Baixo}
     if key = 38 then CmpImp.Prior; {Para Cima}

  end;
end;

procedure TfmPsqImp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqImp.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then CmpImp.Locate('NomImp',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then CmpImp.Locate('ApeImp',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 2 then CmpImp.Locate('CgcImp',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqImp.grImpDblClick(Sender: TObject);
begin

  CodImp := CmpImpCodImp.Value;
  NomImp := CmpImpApeImp.Value;
  SigUfe := CmpImpSigUfe.Value;

  Close;

end;

procedure TfmPsqImp.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
