unit PsqCpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqCpe = class(TfmShowPadrao)
    PedCpe: TwwQuery;
    DsCpe: TwwDataSource;
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
    EdDteCpe: TdxDBColorEdit;
    EdHreCpe: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    Label1: TLabel;
    EdOb5Cpe: TdxDBColorEdit;
    EdOb4Cpe: TdxDBColorEdit;
    EdOb3Cpe: TdxDBColorEdit;
    EdOb2Cpe: TdxDBColorEdit;
    EdOb1Cpe: TdxDBColorEdit;
    PedCpeDTECPE: TDateTimeField;
    PedCpeHRECPE: TStringField;
    PedCpeOB1CPE: TStringField;
    PedCpeOB2CPE: TStringField;
    PedCpeOB3CPE: TStringField;
    PedCpeOB4CPE: TStringField;
    PedCpeOB5CPE: TStringField;
    PedCpeCODUSU: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqCpe: TfmPsqCpe;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqCpe.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCpe.FormShow(Sender: TObject);
begin
  inherited;
  GerUsu.Close;
  GerUsu.Params[0].AsInteger := PedCpeCodUsu.Value;
  GerUsu.Open;  
end;

end.
