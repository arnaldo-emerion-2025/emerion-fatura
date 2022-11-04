unit ConCn1_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit, dxColorEdit;

type
  TfmConCn1_NFE = class(TfmShowPadrao)
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
    sContinuar : string;
    {Public declarations}
  end;

var
  fmConCn1_NFE: TfmConCn1_NFE;

implementation

uses dxDemoUtils, ManGDB, Bbmensag, ManCge_NFE;

{$R *.DFM}

procedure TfmConCn1_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmConCn1_NFE.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmConCn1_NFE.FormShow(Sender: TObject);
begin
  EdNroNfs.SetFocus;
end;

procedure TfmConCn1_NFE.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmConCn1_NFE.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  if Trim(EdNroNfs.Text) <> '' then begin

     if StrToInt(EdNroNfs.Text) = fmManCge_NFE.FatGerNroNfs.Value then begin

        sContinuar := 'S';

        Close;

        end
     else
        fmsgErro('No. de nota fiscal informado incorreto.',EdNroNfs);

     end
  else
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdNroNfs);
end;

procedure TfmConCn1_NFE.EdNroNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmConCn1_NFE.FormCreate(Sender: TObject);
begin
  inherited;
  sContinuar := 'N';
end;

end.
