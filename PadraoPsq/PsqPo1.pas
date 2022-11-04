unit PsqPo1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqPo1 = class(TForm)
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
    CmpPorCGCPOR: TStringField;
    CmpPorSIGUFE: TStringField;
    CmpPorCGCCPF: TStringField;
    CmpPorID_CMPPOR: TIntegerField;
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
    Id_CmpPor : integer;
  end;

var
  fmPsqPo1: TfmPsqPo1;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqPo1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_CmpPor := CmpPorId_CmpPor.Value;
     
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

procedure TfmPsqPo1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqPo1.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then CmpPor.Locate('NomPor',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then CmpPor.Locate('ApePor',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 2 then CmpPor.Locate('CgcPor',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqPo1.grPorDblClick(Sender: TObject);
begin

  Id_CmpPor := CmpPorId_CmpPor.Value;
  
  NomPor := CmpPorApePor.Value;
  SigUfe := CmpPorSigUfe.Value;

  Close;

end;

procedure TfmPsqPo1.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
