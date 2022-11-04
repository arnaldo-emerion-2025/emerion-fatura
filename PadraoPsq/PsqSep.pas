unit PsqSep;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqSep = class(TForm)
    ExpSep: TwwQuery;
    DsSep: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    grSep: ThGrid;
    ExpSepCODSEP: TIntegerField;
    ExpSepNOMSEP: TStringField;
    ExpSepTIPSEP: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grSepDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomSep : string;
    CodSep : integer;
  end;

var
  fmPsqSep: TfmPsqSep;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqSep.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodSep := ExpSepCodSep.Value;
     NomSep := ExpSepNomSep.Value;

     Close;

  end;

  if key = 33 then ExpSep.MoveBy(-10); {Page Up}
  if key = 34 then ExpSep.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then ExpSep.Last;  {End}
     if key = 36 then ExpSep.First; {Home}

     if key = 40 then ExpSep.Next; {Para Baixo}
     if key = 38 then ExpSep.Prior; {Para Cima}

  end;
end;

procedure TfmPsqSep.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqSep.EdpesquisaChange(Sender: TObject);
begin
  ExpSep.Locate('NomSep',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqSep.grSepDblClick(Sender: TObject);
begin

  CodSep := ExpSepCodSep.Value;
  NomSep := ExpSepNomSep.Value;

  Close;

end;

procedure TfmPsqSep.FormShow(Sender: TObject);
begin
  inherited;

  if CodSep > 0 then ExpSep.Locate('CodSep',CodSep,[LoPartialKey]);
  
  EdPesquisa.SetFocus;

end;

end.
