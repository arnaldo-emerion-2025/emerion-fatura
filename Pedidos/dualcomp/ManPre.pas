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
    PedRe3CODEMP: TIntegerField;
    PedRe3NUMRES: TIntegerField;
    PedRe3SEQRE3: TIntegerField;
    PedRe3PRARE3: TIntegerField;
    PedRe3VLPRE3: TFloatField;
    pnTit: TdxDBEdit;
    grTit: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    UpRe3: TUpdateSQL;
    grPro: TdxDBGraphicEdit;
    quSQL: TwwQuery;
    PedRe3DTERES: TDateTimeField;
    PedRe3NRORE3: TIntegerField;
    Label1: TLabel;
    Label3: TLabel;
    lbPrazoMedio: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes : TDateTime;
    CodEmp,NumRes : integer;
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

  PedRe3.Close;
  PedRe3.Params[0].AsInteger  := CodEmp;
  PedRe3.Params[1].AsDateTime := DteRes;
  PedRe3.Params[2].AsInteger  := NumRes;
  PedRe3.Open;
  PedRe3.First;

  PrazoMedio := 0;
  QtdParcela := 0;
  
  while not PedRe3.EOF do begin

        PrazoMedio := PrazoMedio + PedRe3PraRe3.Value;

        Inc(QtdParcela);
              
        PedRe3.Next;
        
  end;

  lbPrazoMedio.Caption := FloatToStr((PrazoMedio/QtdParcela))+' (Dias)';

  PedRe3.First;
  
end;

procedure TfmManPre.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
