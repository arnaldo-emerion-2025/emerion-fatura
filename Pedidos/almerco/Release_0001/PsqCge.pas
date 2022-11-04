unit PsqCge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqCge = class(TfmShowPadrao)
    PedGer: TwwQuery;
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
    EdUsuDel: TdxDBColorEdit;
    EdDteCpe: TdxDBColorEdit;
    EdHreCpe: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    Label1: TLabel;
    EdOb3Del: TdxDBColorEdit;
    EdOb2Del: TdxDBColorEdit;
    EdOb1Del: TdxDBColorEdit;
    PedGerDTEDEL: TDateTimeField;
    PedGerHREDEL: TStringField;
    PedGerOB1DEL: TStringField;
    PedGerOB2DEL: TStringField;
    PedGerOB3DEL: TStringField;
    PedGerUSUDEL: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqCge: TfmPsqCge;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCge.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqCge.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCge.FormShow(Sender: TObject);
begin
  inherited;
  GerUsu.Close;
  GerUsu.Params[0].AsInteger := PedGerUsuDel.Value;
  GerUsu.Open;  
end;

end.
