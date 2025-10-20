unit ManC01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, dxDBColorCurrencyEdit,
  dxDBColorDateEdit, dxDBColorEdit, dxDBColorPickEdit;

type
  TfmManC01 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label11: TLabel;
    Label22: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    bcontinuar: TBitBtn;
    EdDteCom: TdxDBColorDateEdit;
    EdSeqCom: TdxDBMaskEdit;
    EdNfsCom: TdxDBColorEdit;
    EdUfeCom: TdxDBColorPickEdit;
    Label3: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure EdNfsComKeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
  public
    sContinuar: string;
    {Public declarations}
  end;

var
  fmManC01: TfmManC01;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManNge_NFE2;

{$R *.DFM}

procedure TfmManC01.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    Close;
end;

procedure TfmManC01.FormShow(Sender: TObject);
begin
  inherited;

  sContinuar := 'N';

  EdSeqCom.SetFocus;

end;

procedure TfmManC01.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManC01.bcontinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  if Trim(fmManNge_nfe2.FatGerSeqCom.Value) = '' then
  begin
    if fmManNge_nfe2.FatGerDteCom.Value = 0 then
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdDteCom);
    if fmManNge_nfe2.FatGerNfsCom.Value = 0 then
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdNfsCom);
    if Trim(fmManNge_nfe2.FatGerUfeCom.Value) = '' then
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdUfeCom);
  end
  else
  begin
    if Length(Trim(fmManNge_nfe2.FatGerSeqCom.Value)) < 44 then
      fmsgErro('Chave de acesso informada esta incompleta.', EdSeqCom);
  end;

  fmManNge_nfe2.VCufecom := EdUfeCom.Text;
  fmManNge_nfe2.VCDteCOm := EdDteCom.Text;
  fmManNge_nfe2.VCNFSCom := EdNfsCom.Text;
  fmManNge_nfe2.VCSeqCom := EdSeqCom.Text;
  sContinuar := 'S';
  close;

end;

procedure TfmManC01.EdNfsComKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

end.
