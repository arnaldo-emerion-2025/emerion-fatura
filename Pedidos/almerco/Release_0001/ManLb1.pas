unit ManLb1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, dxDBColorCurrencyEdit;

type
  TfmManLb1 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    Label8: TLabel;
    Label47: TLabel;
    EdInfBrt: TdxDBColorCurrencyEdit;
    Bevel2: TBevel;
    Label4: TLabel;
    EdInfLiq: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    EdQtdVol: TdxDBColorCurrencyEdit;
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
  fmManLb1: TfmManLb1;

implementation

uses dxDemoUtils, Bbgeral, BbMensag, ManLib, ManGDB, ManE08;

{$R *.DFM}

procedure TfmManLb1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManLb1.bretornarClick(Sender: TObject);
begin

  fmManLib.PedLib.Close;
  fmManLib.PedLib.Open;

  close;
  
end;

procedure TfmManLb1.bcontinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  if fMsg('Confirma a liberação do pedido para faturamento ?','O') then begin

     fmManLib.Finalizar := 'S';

     fmManLib.PedLibSitLib.Value := 'Concluido';
     
     with fmManLib.PedLib do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if fmManLib.PedLib.State = dsBrowse then fmManLib.PedLib.Edit;

             fmManLib.Finalizar := 'N';
             
             EdQtdVol.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     fmManLib.PedLib.Close;
     fmManLib.PedLib.Open;

     if fMsg('Confirma impressão do pedido separado ?','O') then begin

        try

           fmManE08 := TfmManE08.Create(Self);

           fmManE08.PedLib.Close;
           fmManE08.PedLib.Params[0].AsInteger := fmManLib.PedLibId_PedLib.Value;
           fmManE08.PedLib.Open;

           fmManE08.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManE08);

        end;
     end;

     Close;
     
  end;
end;

procedure TfmManLb1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLb1.FormShow(Sender: TObject);
begin
  inherited;
  
  fmManLib.PedLib.Edit;

  EdQtdVol.SetFocus;

end;

procedure TfmManLb1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManLib.PedLib.State <> dsBrowse then fmManLib.PedLib.CancelUpdates;
end;

end.
