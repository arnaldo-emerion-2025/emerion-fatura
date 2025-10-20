unit ManEp1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, dxDBColorCurrencyEdit;

type
  TfmManEp1 = class(TfmShowPadrao)
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
    EdQtdVol: TdxDBColorCurrencyEdit;
    Label6: TLabel;
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
  fmManEp1: TfmManEp1;

implementation

uses dxDemoUtils, Bbgeral, BbMensag, ManEpe, ManEp2, ManGDB;

{$R *.DFM}

procedure TfmManEp1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManEp1.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManEp1.bcontinuarClick(Sender: TObject);
begin

  with fmManEpe.FatOrc do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManEpe.FatOrc.State = dsBrowse then fmManEpe.FatOrc.Edit;

          EdTotFrt.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManEpe.FatOrc.Close;
  fmManEpe.FatOrc.Open;

  fmManEpe.pnTotOrc.Caption := FormatFloat('###,###,##0.00',fmManEpe.FatOrcTotOrc.Value);
  fmManEpe.pnTotGer.Caption := FormatFloat('###,###,##0.00',fmManEpe.FatOrcTotGer.Value);

  try

     fmManEp2 := TfmManEp2.Create(Self);

     fmManEp2.ShowModal;

  finally

     FreeAndNil(fmManEp2);

  end;

  if fmManEpe.Finalizar = 'S' then
     Close
  else
     begin

     fmManEpe.FatOrc.Edit;

     EdTotFrt.SetFocus;

  end;
end;

procedure TfmManEp1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEp1.FormShow(Sender: TObject);
begin
  inherited;
  
  fmManEpe.FatOrc.Edit;

  EdTotFrt.SetFocus;

end;

procedure TfmManEp1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManEpe.FatOrc.State <> dsBrowse then fmManEpe.FatOrc.CancelUpdates;
end;

end.
