unit PsqCro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqCro = class(TfmShowPadrao)
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
    EdObcNf1: TdxDBColorEdit;
    EdObcNf2: TdxDBColorEdit;
    EdObcNf3: TdxDBColorEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    EdUscNfs: TdxDBColorEdit;
    EdDtcNfs: TdxDBColorEdit;
    EdHrcNfs: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    Label1: TLabel;
    CmpNfsDTCNFS: TDateTimeField;
    CmpNfsHRCNFS: TStringField;
    CmpNfsUSCNFS: TIntegerField;
    CmpNfsOBCNF1: TStringField;
    CmpNfsOBCNF2: TStringField;
    CmpNfsOBCNF3: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqCro: TfmPsqCro;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCro.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqCro.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCro.FormShow(Sender: TObject);
begin
  inherited;
  
  GerUsu.Close;
  GerUsu.Params[0].AsInteger := CmpNfsUscNfs.Value;
  GerUsu.Open;

end;

end.
