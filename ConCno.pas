unit ConCno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit, dxColorEdit;

type
  TfmConCno = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    Label1: TLabel;
    EdNroNfs: TdxColorEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure EdNroNfsKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    sContinuar, sComplemento, Sdevolucao: string;
    intNroNfs: integer;
    {Public declarations}
  end;

var
  fmConCno: TfmConCno;

implementation

uses dxDemoUtils, ManGDB, ManCno, Bbmensag;

{$R *.DFM}

procedure TfmConCno.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmConCno.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmConCno.FormShow(Sender: TObject);
begin
  EdNroNfs.SetFocus;
end;

procedure TfmConCno.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmConCno.bConfirmarClick(Sender: TObject);
var
  sText, sReceber, sEstoque: string;
begin

  ActiveControl := nil;

  if Trim(EdNroNfs.Text) <> '' then
  begin
    if StrToInt(EdNroNfs.Text) = intnronfs then
    begin
      sContinuar := 'S';
      Close;
    end
    else
      fmsgErro('No. de nota fiscal informado incorreto.', EdNroNfs);
  end
  else
    fmsgErro('Campo de preenchimento obrigat�rio nao informado.', EdNroNfs);
end;

procedure TfmConCno.EdNroNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then key := #0;
end;

procedure TfmConCno.FormCreate(Sender: TObject);
begin
  inherited;
  sContinuar := 'N';
  sComplemento := 'N';
  Sdevolucao := 'N';

end;

end.

