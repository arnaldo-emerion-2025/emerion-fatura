unit PsqHr5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqHr5 = class(TfmShowPadrao)
    PedFin: TwwQuery;
    DsFin: TwwDataSource;
    PaintBox: TPaintBox;
    GerUsu: TwwQuery;
    DsUsu: TwwDataSource;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    EdCodUsu: TdxDBColorEdit;
    EdDteFin: TdxDBColorEdit;
    EdHreFin: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    Label1: TLabel;
    EdOb5Fin: TdxDBColorEdit;
    EdOb4Fin: TdxDBColorEdit;
    EdOb3Fin: TdxDBColorEdit;
    EdOb2Fin: TdxDBColorEdit;
    EdOb1Fin: TdxDBColorEdit;
    PedFinDTEFIN: TDateTimeField;
    PedFinHREFIN: TStringField;
    PedFinOB1FIN: TStringField;
    PedFinOB2FIN: TStringField;
    PedFinOB3FIN: TStringField;
    PedFinOB4FIN: TStringField;
    PedFinOB5FIN: TStringField;
    PedFinCODUSU: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqHr5: TfmPsqHr5;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqHr5.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqHr5.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
