unit ManCc2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao;

type
  TfmManCc2 = class(TfmShowPadrao)
    PedLb2: TwwQuery;
    DsLb2: TwwDataSource;
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
    PedLb2CODEMP: TIntegerField;
    PedLb2CODGRU: TStringField;
    PedLb2CODSUB: TStringField;
    PedLb2CODPRO: TStringField;
    PedLb2BASCOM: TFloatField;
    PedLb2TOTCOM: TFloatField;
    PedLb2CODITE: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    PedLb2DESLB2: TStringField;
    PedLb2PCOLB2: TFloatField;
    PedLb2TOTPAG: TFloatField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure PedLb2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DsLb2DataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    TotCom : real;
  end;

var
  fmManCc2: TfmManCc2;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB;

{$R *.DFM}

procedure TfmManCc2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;  
end;

procedure TfmManCc2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCc2.PedLb2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Trim( PedLb2CodGru.Value ) <> '' then Text := PedLb2CodGru.Value+ '.' +PedLb2CodSub.Value+ '.' +PedLb2CodPro.Value;
end;

procedure TfmManCc2.DsLb2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  lbTotalComissao.Caption := FormatFloat('###,###,##0.00',PedLb2TotPag.Value);
end;

end.
