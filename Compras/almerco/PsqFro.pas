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
    GerUsu: TwwQuery;
    DsUsu: TwwDataSource;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    EdObfNf1: TdxDBColorEdit;
    EdObfNf2: TdxDBColorEdit;
    EdObfNf3: TdxDBColorEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    EdUsfNfs: TdxDBColorEdit;
    EdDtfNfs: TdxDBColorEdit;
    EdHrfNfs: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    Label1: TLabel;
    CmpNfsDTFNFS: TDateTimeField;
    CmpNfsHRFNFS: TStringField;
    CmpNfsUSFNFS: TIntegerField;
    CmpNfsOBFNF1: TStringField;
    CmpNfsOBFNF2: TStringField;
    CmpNfsOBFNF3: TStringField;
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
  if key = 27 then close;
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

end;

end.
