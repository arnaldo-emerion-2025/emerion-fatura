unit PsqRej;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqRej = class(TfmShowPadrao)
    PedRej: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    GerUsu: TwwQuery;
    DsUsu: TwwDataSource;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    PedRejDTEREJ: TDateTimeField;
    PedRejHREREJ: TStringField;
    PedRejCODUSU: TIntegerField;
    PedRejOB1REJ: TStringField;
    PedRejOB2REJ: TStringField;
    PedRejOB3REJ: TStringField;
    PedRejOB4REJ: TStringField;
    PedRejOB5REJ: TStringField;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    EdUsuRej: TdxDBColorEdit;
    EdDteRej: TdxDBColorEdit;
    EdHreRej: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    Label1: TLabel;
    EdOb5Rej: TdxDBColorEdit;
    EdOb4Rej: TdxDBColorEdit;
    EdOb3Rej: TdxDBColorEdit;
    EdOb2Rej: TdxDBColorEdit;
    EdOb1Rej: TdxDBColorEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqRej: TfmPsqRej;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqRej.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqRej.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqRej.FormShow(Sender: TObject);
begin
  inherited;

  GerUsu.Close;
  GerUsu.Params[0].AsInteger := PedRejCodUsu.Value;
  GerUsu.Open;
  
end;

end.
