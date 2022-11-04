unit ManCco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao;

type
  TfmManCco = class(TfmShowPadrao)
    PedRe2: TwwQuery;
    DsRe2: TwwDataSource;
    PaintBox: TPaintBox;
    grRe3: ThGrid;
    pnTit: TdxDBEdit;
    grTit: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    grPro: TdxDBGraphicEdit;
    Label1: TLabel;
    Label3: TLabel;
    lbTotalComissao: TLabel;
    PedRe2CODEMP: TIntegerField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2PCORE2: TFloatField;
    PedRe2BASCOM: TFloatField;
    PedRe2TOTCOM: TFloatField;
    PedRe2CODITE: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure PedRe2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    TotCom : real;
  end;

var
  fmManCco: TfmManCco;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB;

{$R *.DFM}

procedure TfmManCco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;  
end;

procedure TfmManCco.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCco.PedRe2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Trim( PedRe2CodGru.Value ) <> '' then Text := PedRe2CodGru.Value+ '.' +PedRe2CodSub.Value+ '.' +PedRe2CodPro.Value;
end;

procedure TfmManCco.FormShow(Sender: TObject);
begin
  inherited;
  lbTotalComissao.Caption := FormatFloat('###,###,##0.00',TotCom);
end;

end.
