unit ManPe2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppStrtch, ppMemo, Psock, NMsmtp, dxfProgressBar,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManPe2 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label10: TLabel;
    EdNomVen: TdxDBColorEdit;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    Label2: TLabel;
    EdOb8Ped: TdxDBColorEdit;
    EdOb7Ped: TdxDBColorEdit;
    EdOb6Ped: TdxDBColorEdit;
    EdOb5Ped: TdxDBColorEdit;
    EdOb4Ped: TdxDBColorEdit;
    EdOb3Ped: TdxDBColorEdit;
    EdOb2Ped: TdxDBColorEdit;
    EdOb1Ped: TdxDBColorEdit;
    procedure FormShow(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPe2: TfmManPe2;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, BbMensag, Fpreview, ManGDB, ManPed,
     ManPe6, ManPe3, ManE01, ManE02;


{$R *.DFM}

procedure TfmManPe2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManPe2.FormShow(Sender: TObject);
begin
  inherited;

  fmManPed.CmpPed.Edit;

  EdNomVen.Text := fmManPed.CmpPedNomVen.Value;
  EdOb1Ped.Text := fmManPed.CmpPedOb1Ped.Value;
  EdOb2Ped.Text := fmManPed.CmpPedOb2Ped.Value;
  EdOb3Ped.Text := fmManPed.CmpPedOb3Ped.Value;
  EdOb4Ped.Text := fmManPed.CmpPedOb4Ped.Value;
  EdOb5Ped.Text := fmManPed.CmpPedOb5Ped.Value;
  EdOb6Ped.Text := fmManPed.CmpPedOb6Ped.Value;
  EdOb7Ped.Text := fmManPed.CmpPedOb7Ped.Value;
  EdOb8Ped.Text := fmManPed.CmpPedOb8Ped.Value;

  EdNomVen.SetFocus;

end;

procedure TfmManPe2.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManPe2.bContinuarClick(Sender: TObject);
var
  sContinuar : string;
begin

  ActiveControl := nil;
  
  fmManPed.CmpPedNomVen.Value := Trim(fmManPed.CmpPedNomVen.Value);
  fmManPed.CmpPedOb1Ped.Value := Trim(fmManPed.CmpPedOb1Ped.Value);
  fmManPed.CmpPedOb2Ped.Value := Trim(fmManPed.CmpPedOb2Ped.Value);
  fmManPed.CmpPedOb3Ped.Value := Trim(fmManPed.CmpPedOb3Ped.Value);
  fmManPed.CmpPedOb4Ped.Value := Trim(fmManPed.CmpPedOb4Ped.Value);
  fmManPed.CmpPedOb5Ped.Value := Trim(fmManPed.CmpPedOb5Ped.Value);
  fmManPed.CmpPedOb6Ped.Value := Trim(fmManPed.CmpPedOb6Ped.Value);
  fmManPed.CmpPedOb7Ped.Value := Trim(fmManPed.CmpPedOb7Ped.Value);
  fmManPed.CmpPedOb8Ped.Value := Trim(fmManPed.CmpPedOb8Ped.Value);

  if fmManPed.CmpPedIntFin.Value = 'Sim' then begin

     with fmManPed.CmpPed do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if fmManPed.CmpPed.State = dsBrowse then fmManPed.CmpPed.Edit;

             EdNomVen.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     try

        fmManPe6 := TfmManPe6.Create(Self);
        fmManPe6.ShowModal;

     finally

        FreeAndNil(fmManPe6);

     end;

     if fmManPed.Finalizar = 'S' then
        Close
     else
        begin

        fmManPed.CmpPed.Close;
        fmManPed.CmpPed.Open;
                        
        fmManPed.CmpPed.Edit;

        EdNomVen.SetFocus;

     end;

     end
  else
     begin

     sContinuar := 'N';

     if fmManPed.CmpPedFlgOco.Value = 'Sim' then begin

        try

           fmManPe3 := TfmManPe3.Create(Self);
           fmManPe3.ShowModal;

           sContinuar := fmManPe3.sContinuar;

        finally

           FreeAndNil(fmManPe3);

        end;

        end
     else
        sContinuar := 'S';

     if sContinuar = 'S' then begin

        if fMsg('Confirma Pedido de Compra ?','O') then begin

           fmManPed.CmpPed.Edit;

           if (Trim(fmManPed.CmpPedSitPed.Value) = 'Rejeitado') or
              (Trim(fmManPed.CmpPedSitPed.Value) = 'Nao Concluido') or
              (Trim(fmManPed.CmpPedSitPed.Value) = 'Processo de Alteracao') then
              fmManPed.CmpPedSitPed.Value := 'Concluido'
           else
              fmManPed.CmpPedFlgAtu.Value := '*';

           with fmManPed.CmpPed do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   fmManPed.Finalizar := 'N';

                   if fmManPed.CmpPed.State = dsBrowse then fmManPed.CmpPed.Edit;

                   EdNomVen.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           fmManPed.CmpPed.Close;
           fmManPed.CmpPed.Open;

           fmManPed.CmpPe2.Close;
           fmManPed.CmpPe2.Open;

           fmManPed.Finalizar := 'S';

           if fMsg('Confirma a Impressão da via Interna do Pedido de Compra ?','O') then begin

              try

                 fmManE01 := TfmManE01.Create(Self);

                 fmManE01.CmpPed.Close;
                 fmManE01.CmpPed.Params[0].AsInteger := fmManPed.CmpPedId_CmpPed.Value;
                 fmManE01.CmpPed.Open;

                 fmManE01.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmManE01);

              end;
           end;

           if fMsg('Confirma a Impressão da via Fornecedor do Pedido de Compra ?','O') then begin

              try

                 fmManE02 := TfmManE02.Create(Self);

                 fmManE02.CmpPed.Close;
                 fmManE02.CmpPed.Params[0].AsInteger := fmManPed.CmpPedId_CmpPed.Value;
                 fmManE02.CmpPed.Open;

                 fmManE02.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmManE02);

              end;
           end;

           Close;

        end;
     end;
  end;   
end;

procedure TfmManPe2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManPed.CmpPed.State <> dsBrowse then fmManPed.CmpPed.CancelUpdates;
end;

procedure TfmManPe2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.

