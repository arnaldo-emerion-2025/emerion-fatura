unit PsqFin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqFin = class(TfmShowPadrao)
    PedAte: TwwQuery;
    DsPedAte: TwwDataSource;
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
    EdUsuFin: TdxDBColorEdit;
    EdDteFin: TdxDBColorEdit;
    EdHreFin: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    Label1: TLabel;
    EdOb5Fin: TdxDBColorEdit;
    EdOb4Fin: TdxDBColorEdit;
    EdOb3Fin: TdxDBColorEdit;
    EdOb2Fin: TdxDBColorEdit;
    EdOb1Fin: TdxDBColorEdit;
    PedAteDTEFIN: TDateTimeField;
    PedAteHREFIN: TStringField;
    PedAteOB1FIN: TStringField;
    PedAteOB2FIN: TStringField;
    PedAteOB3FIN: TStringField;
    PedAteOB4FIN: TStringField;
    PedAteOB5FIN: TStringField;
    PedAteUSUFIN: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqFin: TfmPsqFin;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqFin.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqFin.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
