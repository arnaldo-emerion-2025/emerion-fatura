unit ManIn1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, dxDBColorCurrencyEdit,
  dxDBColorEdit, dxDBColorDateEdit, dxDBColorPickEdit;

type
  TfmManIn1 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label11: TLabel;
    Label22: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    bcontinuar: TBitBtn;
    Label5: TLabel;
    EdNroPDI: TdxDBColorEdit;
    EdDtePDI: TdxDBColorDateEdit;
    EdLocPDI: TdxDBColorEdit;
    EdUfePDI: TdxDBColorPickEdit;
    EdExpPDI: TdxDBColorEdit;
    Label6: TLabel;
    EdDteAdu: TdxDBColorDateEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure EdNroPDIKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    sContinuar : string;
    {Public declarations}
  end;

var
  fmManIn1 : TfmManIn1;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManRo1;

{$R *.DFM}

procedure TfmManIn1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

procedure TfmManIn1.FormShow(Sender: TObject);
begin
  inherited;
  EdNroPDI.SetFocus;
end;

procedure TfmManIn1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManIn1.bcontinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  if Trim(fmManRo1.CmpNfsNroPDI.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdNroPDI);

  if fmManRo1.CmpNfsDtePDI.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdDtePDI);

  if Trim(fmManRo1.CmpNfsLocPDI.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdLocPDI);
  if Trim(fmManRo1.CmpNfsUfePDI.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdUfePDI);

  if fmManRo1.CmpNfsDteAdu.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdDteAdu);

  if Trim(fmManRo1.CmpNfsExpPDI.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdExpPDI);

  sContinuar := 'S';

  Close;

end;

procedure TfmManIn1.EdNroPDIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManIn1.FormCreate(Sender: TObject);
begin
  inherited;
  sContinuar := 'N';
end;

end.
