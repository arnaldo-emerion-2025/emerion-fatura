unit PsqHr3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqHr3 = class(TfmShowPadrao)
    PedCon: TwwQuery;
    DsCom: TwwDataSource;
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
    EdDteCon: TdxDBColorEdit;
    EdHreCon: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    Label1: TLabel;
    EdOb5Con: TdxDBColorEdit;
    EdOb4Con: TdxDBColorEdit;
    EdOb3Con: TdxDBColorEdit;
    EdOb2Con: TdxDBColorEdit;
    EdOb1Con: TdxDBColorEdit;
    PedConDTECON: TDateTimeField;
    PedConHRECON: TStringField;
    PedConOB1CON: TStringField;
    PedConOB2CON: TStringField;
    PedConOB3CON: TStringField;
    PedConOB4CON: TStringField;
    PedConOB5CON: TStringField;
    PedConCODUSU: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqHr3: TfmPsqHr3;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqHr3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqHr3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
