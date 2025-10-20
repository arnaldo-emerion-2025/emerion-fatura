unit PsqDes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqDes = class(TForm)
    CmpDes: TwwQuery;
    DsDes: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grDes: ThGrid;
    Panel2: TPanel;
    rgBusca: TRadioGroup;
    CmpDesNOMDES: TStringField;
    CmpDesAPEDES: TStringField;
    CmpDesCODDES: TIntegerField;
    CmpDesCGCDES: TStringField;
    CmpDesSIGUFE: TStringField;
    CmpDesCGCCPF: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grDesDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomDes,SigUfe : string;
    CodDes : integer;
  end;

var
  fmPsqDes: TfmPsqDes;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqDes.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodDes := CmpDesCodDes.Value;
     NomDes := CmpDesApeDes.Value;
     SigUfe := CmpDesSigUfe.Value;

     Close;

  end;

  if key = 33 then CmpDes.MoveBy(-10); {Page Up}
  if key = 34 then CmpDes.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then CmpDes.Last;  {End}
     if key = 36 then CmpDes.First; {Home}

     if key = 40 then CmpDes.Next; {Para Baixo}
     if key = 38 then CmpDes.Prior; {Para Cima}

  end;
end;

procedure TfmPsqDes.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqDes.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then CmpDes.Locate('NomDes',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then CmpDes.Locate('ApeDes',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 2 then CmpDes.Locate('CgcDes',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqDes.grDesDblClick(Sender: TObject);
begin

  CodDes := CmpDesCodDes.Value;
  NomDes := CmpDesApeDes.Value;
  SigUfe := CmpDesSigUfe.Value;

  Close;

end;

procedure TfmPsqDes.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
