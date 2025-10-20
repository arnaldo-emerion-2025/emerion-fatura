unit PsqIcm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqIcm = class(TForm)
    EstIcm: TwwQuery;
    DsIcm: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grIcm: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstIcmCODICM: TStringField;
    EstIcmTIPICM: TStringField;
    EstIcmNOMICM: TStringField;
    EstIcmPERICM: TFloatField;
    procedure grIcmDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodIcm,NomIcm : string;
    PerIcm : real;
  end;

var
  fmPsqIcm: TfmPsqIcm;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqIcm.grIcmDblClick(Sender: TObject);
begin

  CodIcm := EstIcmCodIcm.Value;
  NomIcm := EstIcmNomIcm.Value;
  PerIcm := EstIcmPerIcm.Value;

  Close;

end;

procedure TfmPsqIcm.EdPesquisaChange(Sender: TObject);
begin
  EstIcm.Locate('NOMICM',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqIcm.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodIcm := EstIcmCodIcm.Value;
     NomIcm := EstIcmNomIcm.Value;
     PerIcm := EstIcmPerIcm.Value;

     Close;

  end;

  if key = 33 then EstIcm.MoveBy(-10); {Page Up}
  if key = 34 then EstIcm.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstIcm.Last;  {End}
     if key = 36 then EstIcm.First; {Home}

     if key = 40 then EstIcm.Next; {Para Baixo}
     if key = 38 then EstIcm.Prior; {Para Cima}

  end;
end;

procedure TfmPsqIcm.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
