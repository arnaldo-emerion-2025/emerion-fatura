unit ManPe5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, dxDBColorCurrencyEdit;

type
  TfmManPe5 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    Label8: TLabel;
    Bevel2: TBevel;
    Label4: TLabel;
    Label5: TLabel;
    EdTotAcc: TdxDBColorCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    EdTotAci: TdxDBColorCurrencyEdit;
    Label3: TLabel;
    Label6: TLabel;
    EdTotIpi: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    Label9: TLabel;
    EdTotImp: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    Label11: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bretornarClick(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPe5: TfmManPe5;

implementation

uses dxDemoUtils, Bbgeral, BbMensag, ManPed, ManPe1, ManGDB;

{$R *.DFM}

procedure TfmManPe5.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManPe5.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManPe5.bcontinuarClick(Sender: TObject);
begin

  with fmManPed.CmpPed do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManPed.CmpPed.State = dsBrowse then fmManPed.CmpPed.Edit;

          EdTotAcc.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManPed.CmpPed.Close;
  fmManPed.CmpPed.Open;

  fmManPed.pnTotPed.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotPed.Value);
  fmManPed.pnTotAcc.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotAcc.Value);
  fmManPed.pnTotGer.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);

  try

     fmManPe1 := TfmManPe1.Create(Self);

     fmManPe1.ShowModal;

  finally

     FreeAndNil(fmManPe1);

  end;

  if fmManPed.Finalizar = 'S' then
     Close
  else
     begin

     fmManPed.CmpPed.Edit;

     EdTotAcc.SetFocus;

  end;
end;

procedure TfmManPe5.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe5.FormShow(Sender: TObject);
begin
  inherited;
  
  fmManPed.CmpPed.Edit;

  EdTotAcc.SetFocus;

end;

procedure TfmManPe5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManPed.CmpPed.State <> dsBrowse then fmManPed.CmpPed.CancelUpdates;
end;

end.
