unit ManEn1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, dxDBColorCurrencyEdit;

type
  TfmManEn1 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    Label8: TLabel;
    Label47: TLabel;
    EdTotFrt: TdxDBColorCurrencyEdit;
    Bevel2: TBevel;
    Label48: TLabel;
    EdTotSeg: TdxDBColorCurrencyEdit;
    Label49: TLabel;
    EdTotDes: TdxDBColorCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EdTotAcc: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    EdTotDcc: TdxDBColorCurrencyEdit;
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
  fmManEn1: TfmManEn1;

implementation

uses dxDemoUtils, Bbgeral, BbMensag, ManEnt, ManEn2, ManGDB;

{$R *.DFM}

procedure TfmManEn1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManEn1.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManEn1.bcontinuarClick(Sender: TObject);
begin

  ActiveControl := nil;
  
  with fmManEnt.CmpEnt do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManEnt.CmpEnt.State = dsBrowse then fmManEnt.CmpEnt.Edit;

          EdTotDcc.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManEnt.CmpEnt.Close;
  fmManEnt.CmpEnt.Open;

  fmManEnt.pnTotEnt.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotEnt.Value);
  fmManEnt.pnTotGer.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotGer.Value);

  try

     fmManEn2 := TfmManEn2.Create(Self);
     fmManEn2.ShowModal;

  finally

     FreeAndNil(fmManEn2);

  end;

  if fmManEnt.Finalizar = 'S' then
     Close
  else
     begin

     fmManEnt.CmpEnt.Edit;

     EdTotDcc.SetFocus;

  end;
end;

procedure TfmManEn1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn1.FormShow(Sender: TObject);
begin
  inherited;
  
  fmManEnt.CmpEnt.Edit;

  if fmManEnt.CmpEntModPfa.Value = 'Importacao' then begin

     EdTotDes.Enabled := False;

     EdTotDes.Font.Style := [fsBold];

  end;

  EdTotDcc.SetFocus;

end;

procedure TfmManEn1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManEnt.CmpEnt.State <> dsBrowse then fmManEnt.CmpEnt.CancelUpdates;
end;

end.
