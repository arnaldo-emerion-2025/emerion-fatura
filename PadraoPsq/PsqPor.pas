unit PsqPor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqPor = class(TForm)
    CmpPor: TwwQuery;
    DsPor: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grPor: ThGrid;
    Panel2: TPanel;
    rgBusca: TRadioGroup;
    CmpPorNOMPOR: TStringField;
    CmpPorAPEPOR: TStringField;
    CmpPorCODPOR: TIntegerField;
    CmpPorCGCPOR: TStringField;
    CmpPorSIGUFE: TStringField;
    CmpPorCGCCPF: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grPorDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomPor,SigUfe : string;
    CodPor : integer;
  end;

var
  fmPsqPor: TfmPsqPor;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqPor.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodPor := CmpPorCodPor.Value;
     NomPor := CmpPorApePor.Value;
     SigUfe := CmpPorSigUfe.Value;

     Close;

  end;

  if key = 33 then CmpPor.MoveBy(-10); {Page Up}
  if key = 34 then CmpPor.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then CmpPor.Last;  {End}
     if key = 36 then CmpPor.First; {Home}

     if key = 40 then CmpPor.Next; {Para Baixo}
     if key = 38 then CmpPor.Prior; {Para Cima}

  end;
end;

procedure TfmPsqPor.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqPor.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then CmpPor.Locate('NomPor',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then CmpPor.Locate('ApePor',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 2 then CmpPor.Locate('CgcPor',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqPor.grPorDblClick(Sender: TObject);
begin

  CodPor := CmpPorCodPor.Value;
  NomPor := CmpPorApePor.Value;
  SigUfe := CmpPorSigUfe.Value;

  Close;

end;

procedure TfmPsqPor.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
