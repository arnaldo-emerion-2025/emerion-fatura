unit PsqCon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqCon = class(TForm)
    LojCon: TwwQuery;
    DsCon: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grCon: ThGrid;
    Panel2: TPanel;
    rgBusca: TRadioGroup;
    LojConNOMCON: TStringField;
    LojConSIGUFE: TStringField;
    LojConID_LOJCON: TIntegerField;
    LojConCGCCON: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grConDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    Id_LojCon : integer;
    NomCon,SigUfe,CgcCon : string;
  end;

var
  fmPsqCon: TfmPsqCon;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCon.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     Id_LojCon := LojConId_LojCon.Value;

     NomCon := LojConNomCon.Value;
     SigUfe := LojConSigUfe.Value;
     CgcCon := LojConCgcCon.Value;

     Close;

  end;

  if key = 33 then LojCon.MoveBy(-10); {Page Up}
  if key = 34 then LojCon.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then LojCon.Last;  {End}
     if key = 36 then LojCon.First; {Home}

     if key = 40 then LojCon.Next;  {Para Baixo}
     if key = 38 then LojCon.Prior; {Para Cima}

  end;
end;

procedure TfmPsqCon.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCon.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then LojCon.Locate('NomCon',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then LojCon.Locate('CgcCon',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqCon.grConDblClick(Sender: TObject);
begin

  Id_LojCon := LojConId_LojCon.Value;

  NomCon := LojConNomCon.Value;
  SigUfe := LojConSigUfe.Value;
  CgcCon := LojConCgcCon.Value;

  Close;

end;

procedure TfmPsqCon.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
