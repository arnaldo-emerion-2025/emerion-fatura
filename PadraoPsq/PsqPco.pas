unit PsqPco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, dxDBColorEdit;

type
  TfmPsqPco = class(TForm)
    CmpPfo: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    Panel3: TPanel;
    Label1: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBEdit28: TdxDBColorEdit;
    grRes: ThGrid;
    Label28: TLabel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    CmpPfoCODFOR: TIntegerField;
    CmpPfoSEQPFO: TIntegerField;
    CmpPfoCODPFO: TStringField;
    CmpPfoCODCLP: TStringField;
    CmpPfoCODGRU: TStringField;
    CmpPfoCODSUB: TStringField;
    CmpPfoCODPRO: TStringField;
    CmpPfoVALPFO: TFloatField;
    CmpPfoDSCPFO: TFloatField;
    CmpPfoOBSPFO: TStringField;
    CmpPfoNROPFO: TIntegerField;
    CmpPfoFLGTRG: TStringField;
    CmpPfoPERIPI: TFloatField;
    CmpPfoVALFIN: TFloatField;
    CmpPfoAPEFOR: TStringField;
    Label3: TLabel;
    Label4: TLabel;
    Label19: TLabel;
    EdObsPfo: TdxDBColorEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqPco: TfmPsqPco;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqPco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqPco.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqPco.FormShow(Sender: TObject);
begin
  inherited;
  grRes.SetFocus;
end;

end.
