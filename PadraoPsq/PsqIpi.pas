unit PsqIpi;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqIpi = class(TForm)
    EstIpi: TwwQuery;
    DsIpi: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grIpi: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstIpiCODIPI: TStringField;
    EstIpiTIPIPI: TStringField;
    EstIpiNOMIPI: TStringField;
    EstIpiPERIPI: TFloatField;
    EstIpiCLSIPI: TStringField;
    procedure grIpiDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodIpi,NomIpi : string;
    PerIpi : real;
  end;

var
  fmPsqIpi: TfmPsqIpi;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqIpi.grIpiDblClick(Sender: TObject);
begin

  CodIpi := EstIpiCodIpi.Value;
  NomIpi := EstIpiNomIpi.Value;
  PerIpi := EstIpiPerIpi.Value;

  Close;

end;

procedure TfmPsqIpi.EdPesquisaChange(Sender: TObject);
begin
  EstIpi.Locate('CLSIPI',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqIpi.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodIpi := EstIpiCodIpi.Value;
     NomIpi := EstIpiNomIpi.Value;
     PerIpi := EstIpiPerIpi.Value;

     Close;

  end;

  if key = 33 then EstIpi.MoveBy(-10); {Page Up}
  if key = 34 then EstIpi.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstIpi.Last;  {End}
     if key = 36 then EstIpi.First; {Home}

     if key = 40 then EstIpi.Next; {Para Baixo}
     if key = 38 then EstIpi.Prior; {Para Cima}

  end;
end;

procedure TfmPsqIpi.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
