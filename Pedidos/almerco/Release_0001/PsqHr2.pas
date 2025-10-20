unit PsqHr2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqHr2 = class(TfmShowPadrao)
    PedCom: TwwQuery;
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
    EdDteCom: TdxDBColorEdit;
    EdHreCom: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    Label1: TLabel;
    EdOb5Com: TdxDBColorEdit;
    EdOb4Com: TdxDBColorEdit;
    EdOb3Com: TdxDBColorEdit;
    EdOb2Com: TdxDBColorEdit;
    EdOb1Com: TdxDBColorEdit;
    PedComDTECOM: TDateTimeField;
    PedComHRECOM: TStringField;
    PedComOB1COM: TStringField;
    PedComOB2COM: TStringField;
    PedComOB3COM: TStringField;
    PedComOB4COM: TStringField;
    PedComOB5COM: TStringField;
    PedComCODUSU: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqHr2: TfmPsqHr2;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqHr2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqHr2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
