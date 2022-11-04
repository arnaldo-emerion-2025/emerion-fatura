unit PsqHr4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqHr4 = class(TfmShowPadrao)
    PedVen: TwwQuery;
    DsVen: TwwDataSource;
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
    EdDteVen: TdxDBColorEdit;
    EdHreVen: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    Label1: TLabel;
    EdOb5Ven: TdxDBColorEdit;
    EdOb4Ven: TdxDBColorEdit;
    EdOb3Ven: TdxDBColorEdit;
    EdOb2Ven: TdxDBColorEdit;
    EdOb1Ven: TdxDBColorEdit;
    PedVenDTEVEN: TDateTimeField;
    PedVenHREVEN: TStringField;
    PedVenOB1VEN: TStringField;
    PedVenOB2VEN: TStringField;
    PedVenOB3VEN: TStringField;
    PedVenOB4VEN: TStringField;
    PedVenOB5VEN: TStringField;
    PedVenCODUSU: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqHr4: TfmPsqHr4;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqHr4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqHr4.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
