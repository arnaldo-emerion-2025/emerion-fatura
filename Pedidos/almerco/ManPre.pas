unit ManPre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao;

type
  TfmManPre = class(TfmShowPadrao)
    PedRe3: TwwQuery;
    DsRe3: TwwDataSource;
    PaintBox: TPaintBox;
    grRe3: ThGrid;
    PedRe3PRARE3: TIntegerField;
    PedRe3VLPRE3: TFloatField;
    pnTit: TdxDBEdit;
    grTit: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    grPro: TdxDBGraphicEdit;
    Label1: TLabel;
    Label3: TLabel;
    lbPrazoMedio: TLabel;
    quSQL: TwwQuery;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPre: TfmManPre;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB;

{$R *.DFM}

procedure TfmManPre.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;
  
end;

procedure TfmManPre.FormShow(Sender: TObject);
var
  PrazoMedio : integer;
  QtdParcela : integer;
begin
  inherited;

  PrazoMedio := 0;
  QtdParcela := 0;

  while not PedRe3.EOF do begin

        PrazoMedio := PrazoMedio + PedRe3PraRe3.Value;

        Inc(QtdParcela);
              
        PedRe3.Next;
        
  end;

  if QtdParcela > 0 then lbPrazoMedio.Caption := FloatToStr((PrazoMedio/QtdParcela))+' (Dias)';

  PedRe3.First;
  
end;

procedure TfmManPre.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
