unit PsqMfp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqMfp = class(TfmShowPadrao)
    PedFpe: TwwQuery;
    DsFpe: TwwDataSource;
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
    Label4: TLabel;
    Label12: TLabel;
    EdCodUsu: TdxDBColorEdit;
    EdDteFpe: TdxDBColorEdit;
    EdHreFpe: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    Label1: TLabel;
    EdOb5Fpe: TdxDBColorEdit;
    EdOb4Fpe: TdxDBColorEdit;
    EdOb3Fpe: TdxDBColorEdit;
    EdOb2Fpe: TdxDBColorEdit;
    EdOb1Fpe: TdxDBColorEdit;
    PedFpeDTEFPE: TDateTimeField;
    PedFpeHREFPE: TStringField;
    PedFpeOB1FPE: TStringField;
    PedFpeOB2FPE: TStringField;
    PedFpeOB3FPE: TStringField;
    PedFpeOB4FPE: TStringField;
    PedFpeOB5FPE: TStringField;
    PedFpeCODUSU: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqMfp: TfmPsqMfp;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqMfp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqMfp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqMfp.FormShow(Sender: TObject);
begin
  inherited;
  GerUsu.Close;
  GerUsu.Params[0].AsInteger := PedFpeCodUsu.Value;
  GerUsu.Open;
end;

end.
