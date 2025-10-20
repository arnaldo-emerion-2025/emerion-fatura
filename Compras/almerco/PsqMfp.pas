unit PsqMfp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit;

type
  TfmPsqMfp = class(TfmShowPadrao)
    CmpPed: TwwQuery;
    DsPed: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    dxDBEdit1: TdxDBColorEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    EdUsuRej: TdxDBColorEdit;
    GerUsu: TwwQuery;
    DsUsu: TwwDataSource;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    Panel1: TPanel;
    EdObsFpe: TDBRichEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    CmpPedID_CMPPED: TIntegerField;
    CmpPedDTEFPE: TDateTimeField;
    CmpPedHREFPE: TStringField;
    CmpPedOBSFPE: TMemoField;
    CmpPedUSUFPE: TIntegerField;
    CmpPedSITPED: TStringField;
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
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqMfp.FormShow(Sender: TObject);
begin
  inherited;
  
  GerUsu.Close;
  GerUsu.Params[0].AsInteger := CmpPedUsuFpe.Value;
  GerUsu.Open;

  EdObsFpe.SetFocus;

end;

end.
