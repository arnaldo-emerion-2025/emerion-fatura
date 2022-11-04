unit PsqFro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqFro = class(TfmShowPadrao)
    CmpNfs: TwwQuery;
    DsNfs: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    dxDBEdit1: TdxDBColorEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    EdUsfNfs: TdxDBColorEdit;
    GerUsu: TwwQuery;
    DsUsu: TwwDataSource;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    Panel1: TPanel;
    EdObfNfs: TDBColorRichEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    CmpNfsOBFNFS: TMemoField;
    CmpNfsUSFNFS: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqFro: TfmPsqFro;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqFro.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

procedure TfmPsqFro.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqFro.FormShow(Sender: TObject);
begin
  inherited;

  GerUsu.Close;
  GerUsu.Params[0].AsInteger := CmpNfsUsfNfs.Value;
  GerUsu.Open;

  EdObfNfs.SetFocus;

end;

end.
