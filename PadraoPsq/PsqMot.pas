unit PsqMot;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqMot = class(TForm)
    ExpCon: TwwQuery;
    DsCon: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label21: TLabel;
    Label28: TLabel;
    grCon: ThGrid;
    rgBusca: TRadioGroup;
    Panel2: TPanel;
    ExpConNOMCON: TStringField;
    ExpConAPECON: TStringField;
    ExpConCODCON: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grConDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomCon : string;
    ApeCon : string;    
    CodCon : integer;
  end;

var
  fmPsqMot: TfmPsqMot;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqMot.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodCon := ExpConCodCon.Value;
     NomCon := ExpConNomCon.Value;
     ApeCon := ExpConApeCon.Value;     

     Close;

  end;

  if key = 33 then ExpCon.MoveBy(-10); {Page Up}
  if key = 34 then ExpCon.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then ExpCon.Last;  {End}
     if key = 36 then ExpCon.First; {Home}

     if key = 40 then ExpCon.Next; {Para Baixo}
     if key = 38 then ExpCon.Prior; {Para Cima}

  end;
end;

procedure TfmPsqMot.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqMot.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then ExpCon.Locate('NomCon',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then ExpCon.Locate('ApeCon',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqMot.grConDblClick(Sender: TObject);
begin

  CodCon := ExpConCodCon.Value;
  NomCon := ExpConNomCon.Value;
  ApeCon := ExpConApeCon.Value;

  Close;

end;

procedure TfmPsqMot.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
