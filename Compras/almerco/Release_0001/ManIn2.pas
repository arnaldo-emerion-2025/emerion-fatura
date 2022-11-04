unit ManIn2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, dxDBColorCurrencyEdit,
  dxDBColorEdit, dxDBColorDateEdit, dxDBColorPickEdit;

type
  TfmManIn2 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label11: TLabel;
    Label22: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    bcontinuar: TBitBtn;
    EdNroADI: TdxDBColorEdit;
    EdFabADI: TdxDBColorEdit;
    EdDscADI: TdxDBColorCurrencyEdit;
    EdSeqADI: TdxDBColorEdit;
    Label4: TLabel;
    EdTotLiq: TdxDBColorCurrencyEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure EdNroADIKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
  public
    sContinuar : string;
    {Public declarations}
  end;

var
  fmManIn2 : TfmManIn2;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManRo1;

{$R *.DFM}

procedure TfmManIn2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

procedure TfmManIn2.FormShow(Sender: TObject);
begin
  inherited;
  EdNroADI.SetFocus;
end;

procedure TfmManIn2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManIn2.bcontinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  if fmManRo1.CmpNf2NroADI.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdNroADI);
  if fmManRo1.CmpNf2SeqADI.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdSeqADI);

  if Trim(fmManRo1.CmpNf2FabADI.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdFabADI);

  sContinuar := 'S';

  Close;

end;

procedure TfmManIn2.EdNroADIKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManIn2.FormCreate(Sender: TObject);
begin
  inherited;
  sContinuar := 'N';
end;

end.
