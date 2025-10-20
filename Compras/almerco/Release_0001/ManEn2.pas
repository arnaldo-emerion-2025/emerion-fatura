unit ManEn2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, ppBands, ppClass,
  ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppDB, ppComm, ppRelatv, ppDBPipe, dxDBColorEdit, dxDBColorCurrencyEdit;

type
  TfmManEn2 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label11: TLabel;
    Bevel2: TBevel;
    Label22: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    EdTotEnc: TdxDBColorCurrencyEdit;
    EdTotSuc: TdxDBColorCurrencyEdit;
    EdBasSuc: TdxDBColorCurrencyEdit;
    EdTotIcc: TdxDBColorCurrencyEdit;
    EdBasIcc: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdTotGec: TdxDBColorCurrencyEdit;
    EdTotIpc: TdxDBColorCurrencyEdit;
    EdTotDes: TdxDBColorCurrencyEdit;
    EdTotSeg: TdxDBColorCurrencyEdit;
    EdTotFrt: TdxDBColorCurrencyEdit;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    Label4: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    EdFlgOco: TdxDBColorEdit;
    pnFlgOco01: TPanel;
    dxDBEdit1: TdxDBColorEdit;
    pnFlgOco02: TPanel;
    dxDBEdit2: TdxDBColorEdit;
    pnFlgOco03: TPanel;
    dxDBEdit3: TdxDBColorEdit;
    pnFlgOco04: TPanel;
    dxDBEdit4: TdxDBColorEdit;
    pnFlgOco05: TPanel;
    dxDBEdit5: TdxDBColorEdit;
    dxDBEdit6: TdxDBColorEdit;
    dxDBEdit7: TdxDBColorEdit;
    dxDBEdit8: TdxDBColorEdit;
    dxDBEdit9: TdxDBColorEdit;
    pnFlgOco06: TPanel;
    pnFlgOco07: TPanel;
    pnFlgOco08: TPanel;
    pnFlgOco10: TPanel;
    pnFlgoco11: TPanel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bretornarClick(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure EdBasIccExit(Sender: TObject);
    procedure EdTotIccExit(Sender: TObject);
    procedure EdBasSucExit(Sender: TObject);
    procedure EdTotEncExit(Sender: TObject);
    procedure EdTotIpcExit(Sender: TObject);
    procedure EdTotGecExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdTotSucExit(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  TotDif   : real;
  DifEnt   : real;  
  fmManEn2 : TfmManEn2;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManEnt, ManEn3, ManGDB,
     ManEn4, Fpreview, ManEn7, ManPrc, ManE05;

{$R *.DFM}

procedure TfmManEn2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManEn2.FormShow(Sender: TObject);
begin
  inherited;
  
  with fmManEnt.quSQL,SQL do begin

       Close;
       Text := ' Select * From CmpPar';
       Open;

       DifEnt := FieldbyName('DifEnt').AsFloat;

  end;

  fmManEnt.CmpEnt.Edit;

  if fmManEnt.CmpEntBasIcc.Value <> fmManEnt.CmpEntBasIcm.Value then begin

     if fmManEnt.CmpEntBasIcc.Value > fmManEnt.CmpEntBasIcm.Value then
        TotDif := fRound(fmManEnt.CmpEntBasIcc.Value - fmManEnt.CmpEntBasIcm.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntBasIcm.Value - fmManEnt.CmpEntBasIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco01.Color := clRed
     else
        pnFlgOco01.Color := clLime;

  end;

  if fmManEnt.CmpEntTotIcc.Value <> fmManEnt.CmpEntTotIcm.Value then begin

     if fmManEnt.CmpEntTotIcc.Value > fmManEnt.CmpEntTotIcm.Value then
        TotDif := fRound(fmManEnt.CmpEntTotIcc.Value - fmManEnt.CmpEntTotIcm.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotIcm.Value - fmManEnt.CmpEntTotIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco02.Color := clRed
     else
        pnFlgOco02.Color := clLime;

  end;

  if fmManEnt.CmpEntBasSuc.Value <> fmManEnt.CmpEntBasSub.Value then begin

     if fmManEnt.CmpEntBasSuc.Value > fmManEnt.CmpEntBasSub.Value then
        TotDif := fRound(fmManEnt.CmpEntBasSuc.Value - fmManEnt.CmpEntBasSub.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntBasSub.Value - fmManEnt.CmpEntBasSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco03.Color := clRed
     else
        pnFlgOco03.Color := clLime;

  end;

  if fmManEnt.CmpEntTotSuc.Value <> fmManEnt.CmpEntTotSub.Value then begin

     if fmManEnt.CmpEntTotSuc.Value > fmManEnt.CmpEntTotSub.Value then
        TotDif := fRound(fmManEnt.CmpEntTotSuc.Value - fmManEnt.CmpEntTotSub.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotSub.Value - fmManEnt.CmpEntTotSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco04.Color := clRed
     else
        pnFlgOco04.Color := clLime;

  end;

  if fmManEnt.CmpEntTotEnc.Value <> fmManEnt.CmpEntTotEnt.Value then begin

     if fmManEnt.CmpEntTotEnc.Value > fmManEnt.CmpEntTotEnt.Value then
        TotDif := fRound(fmManEnt.CmpEntTotEnc.Value - fmManEnt.CmpEntTotEnt.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotEnt.Value - fmManEnt.CmpEntTotEnc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco05.Color := clRed
     else
        pnFlgOco05.Color := clLime;

  end;

  if fmManEnt.CmpEntModPfa.Value = 'Importacao' then begin

     fmManEnt.CmpEntTotIpc.Value := fmManEnt.CmpEntTotIpi.Value;

     EdTotIpc.Value := fmManEnt.CmpEntTotIpi.Value;

     EdTotIpc.Enabled := False;
     
     EdTotIpc.Font.Style := [fsBold];
     
     pnFlgOco10.Color := clLime;

     end
  else
     begin

     if fmManEnt.CmpEntTotIpc.Value <> fmManEnt.CmpEntTotIpi.Value then begin

        if fmManEnt.CmpEntTotIpc.Value > fmManEnt.CmpEntTotIpi.Value then
           TotDif := fRound(fmManEnt.CmpEntTotIpc.Value - fmManEnt.CmpEntTotIpi.Value,2)
        else
           TotDif := fRound(fmManEnt.CmpEntTotIpi.Value - fmManEnt.CmpEntTotIpc.Value,2);

        if TotDif > DifEnt then
           pnFlgOco10.Color := clRed
        else
           pnFlgOco10.Color := clLime;

     end;
  end;

  if fmManEnt.CmpEntTotGec.Value <> fmManEnt.CmpEntTotGer.Value then begin

     if fmManEnt.CmpEntTotGec.Value > fmManEnt.CmpEntTotGer.Value then
        TotDif := fRound(fmManEnt.CmpEntTotGec.Value - fmManEnt.CmpEntTotGer.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotGer.Value - fmManEnt.CmpEntTotGec.Value,2);

     if TotDif > DifEnt then
        pnFlgOco11.Color := clRed
     else
        pnFlgOco11.Color := clLime;

  end;

  EdBasIcc.SetFocus;

end;

procedure TfmManEn2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManEnt.CmpEnt.State <> dsBrowse then fmManEnt.CmpEnt.CancelUpdates;
end;

procedure TfmManEn2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn2.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManEn2.bcontinuarClick(Sender: TObject);
var
  sContinuar : string;
begin

  ActiveControl := nil;

  if fmManEnt.CmpEntBasIcm.Value > 0 then begin

     if fmManEnt.CmpEntBasIcc.Value = 0 then fmsgErro('Valor da Base de Calculo de ICMS para Entrada não Informado.',EdBasIcc);

  end;

  if fmManEnt.CmpEntTotIcm.Value > 0 then begin

     if fmManEnt.CmpEntTotIcc.Value = 0 then fmsgErro('Valor de ICMS para Entrada não Informado.',EdTotIcc);

  end;

  if fmManEnt.CmpEntBasSub.Value > 0 then begin

     if fmManEnt.CmpEntBasSuc.Value = 0 then fmsgErro('Valor da Base de Calculo de ICMS de Substituição Tributaria para a Entrada não Informado.',EdBasSuc);

  end;

  if fmManEnt.CmpEntTotSub.Value > 0 then begin

     if fmManEnt.CmpEntTotSuc.Value = 0 then fmsgErro('Valor do ICMS de Substituição Tributaria para a Entrada não Informado.',EdTotSuc);

  end;

  if fmManEnt.CmpEntTotEnt.Value > 0 then begin

     if fmManEnt.CmpEntTotEnc.Value = 0 then fmsgErro('Valor Total dos Produtos para a Entrada não Informado.',EdTotEnc);

  end;

  if fmManEnt.CmpEntTotIpi.Value > 0 then begin

     if fmManEnt.CmpEntTotIpc.Value = 0 then fmsgErro('Valor Total dos IPI para a Entrada não Informado.',EdTotIpc);

  end;

  if fmManEnt.CmpEntTotGer.Value > 0 then begin

     if fmManEnt.CmpEntTotGec.Value = 0 then fmsgErro('Valor Total da Nota para a Entrada não Informado.',EdTotGec);

  end;

  if (pnFlgOco01.Color = clLime) and
     (pnFlgOco02.Color = clLime) and
     (pnFlgOco03.Color = clLime) and
     (pnFlgOco04.Color = clLime) and
     (pnFlgOco05.Color = clLime) and
     (pnFlgOco10.Color = clLime) and
     (pnFlgOco11.Color = clLime) then begin

     with fmManEnt.CmpEnt do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if fmManEnt.CmpEnt.State = dsBrowse then fmManEnt.CmpEnt.Edit;

             EdBasIcc.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     fmManEnt.CmpEnt.Close;
     fmManEnt.CmpEnt.Open;

     fmManEnt.CmpEn2.Close;
     fmManEnt.CmpEn2.Open;

     fmManEnt.pnTotEnt.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotEnt.Value);

     if fmManEnt.CmpEntAtuEst.Value = 'Sim' then begin

        fmManEnt.CmpEnt.Edit;

        fmManEnt.CmpEntLanCst.Value := 'Sim';

        with fmManEnt.CmpEnt do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if fmManEnt.CmpEnt.State = dsBrowse then fmManEnt.CmpEnt.Edit;

                EdBasIcc.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManEnt.CmpEnt.Close;
        fmManEnt.CmpEnt.Open;

        try

           fmManPrc := TfmManPrc.Create(Self);

           fmManPrc.CmpAen.Close;
           fmManPrc.CmpAen.Params[0].AsInteger := fmManEnt.CmpEntId_CmpEnt.Value;
           fmManPrc.CmpAen.Open;

           fmManPrc.ShowModal;

           fmManEnt.Finalizar := fmManPrc.Finalizar;

        finally

           FreeAndNil(fmManPrc);

        end;

        if fmManEnt.Finalizar = 'S' then
           fmManEnt.Finalizar := 'N'
        else
           begin

           fmManEnt.CmpEnt.Edit;

           EdBasIcc.SetFocus;

           exit;
           
        end;
     end;

     if fmManEnt.CmpEntIntFin.Value = 'Sim' then begin

        try

           fmManEn3 := TfmManEn3.Create(Self);
           fmManEn3.ShowModal;

        finally

           FreeAndNil(fmManEn3);

        end;

        if fmManEnt.Finalizar = 'S' then
           Close
        else
           begin

           fmManEnt.CmpEnt.Edit;

           EdBasIcc.SetFocus;

        end;

        end
     else
        begin

        sContinuar := 'N';

        if fmManEnt.CmpEntFlgOco.Value = 'Sim' then begin

           try

              fmManEn4 := TfmManEn4.Create(Self);
              fmManEn4.ShowModal;

              sContinuar := fmManEn4.sContinuar;

           finally

              FreeAndNil(fmManEn4);

           end;

           end
        else
           sContinuar := 'S';

        if sContinuar = 'S' then begin

           if fMsg('Confirma Entrada ?','S') then begin

              fmManEnt.CmpEnt.Edit;

              fmManEnt.CmpEntSitEnt.Value := 'Concluida';

              with fmManEnt.CmpEnt do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if fmManEnt.CmpEnt.State = dsBrowse then fmManEnt.CmpEnt.Edit;

                      fmManEnt.Finalizar := 'N';

                      EdBasIcc.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              fmManEnt.Finalizar := 'S';

              if fMsg('Confirma impressão da via de controle ?','S') then begin

                 try

                    fmManE05 := TfmManE05.Create(Self);

                    fmManE05.CmpEnt.Close;
                    fmManE05.CmpEnt.Params[0].AsInteger := fmManEnt.CmpEntId_CmpEnt.Value;
                    fmManE05.CmpEnt.Open;

                    fmManE05.RLReport1.PreviewModal;

                 finally

                    FreeAndNil(fmManE05);

                 end;
              end;

              close;

           end;
        end;
     end;

     end
  else
     begin

     fmsg('Existem Valores Informados Incorretos.','E');

     if pnFlgOco01.Color = clRed then EdBasIcc.SetFocus;
     if pnFlgOco02.Color = clRed then EdTotIcc.SetFocus;
     if pnFlgOco03.Color = clRed then EdBasSuc.SetFocus;
     if pnFlgOco04.Color = clRed then EdTotSuc.SetFocus;
     if pnFlgOco05.Color = clRed then EdTotEnc.SetFocus;
     if pnFlgOco10.Color = clRed then EdTotIpc.SetFocus;
     if pnFlgOco11.Color = clRed then EdTotGec.SetFocus;

  end;
end;

procedure TfmManEn2.EdBasIccExit(Sender: TObject);
begin
  if fmManEnt.CmpEntBasIcc.Value <> fmManEnt.CmpEntBasIcm.Value then begin

     if fmManEnt.CmpEntBasIcc.Value > fmManEnt.CmpEntBasIcm.Value then
        TotDif := fRound(fmManEnt.CmpEntBasIcc.Value - fmManEnt.CmpEntBasIcm.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntBasIcm.Value - fmManEnt.CmpEntBasIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco01.Color := clRed
     else
        pnFlgOco01.Color := clLime;

     end
  else
     pnFlgOco01.Color := clLime;
end;

procedure TfmManEn2.EdTotIccExit(Sender: TObject);
begin
  if fmManEnt.CmpEntTotIcc.Value <> fmManEnt.CmpEntTotIcm.Value then begin

     if fmManEnt.CmpEntTotIcc.Value > fmManEnt.CmpEntTotIcm.Value then
        TotDif := fRound(fmManEnt.CmpEntTotIcc.Value - fmManEnt.CmpEntTotIcm.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotIcm.Value - fmManEnt.CmpEntTotIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco02.Color := clRed
     else
        pnFlgOco02.Color := clLime;

     end
  else
     pnFlgOco02.Color := clLime;
end;

procedure TfmManEn2.EdBasSucExit(Sender: TObject);
begin
  if fmManEnt.CmpEntBasSuc.Value <> fmManEnt.CmpEntBasSub.Value then begin

     if fmManEnt.CmpEntBasSuc.Value > fmManEnt.CmpEntBasSub.Value then
        TotDif := fRound(fmManEnt.CmpEntBasSuc.Value - fmManEnt.CmpEntBasSub.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntBasSub.Value - fmManEnt.CmpEntBasSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco03.Color := clRed
     else
        pnFlgOco03.Color := clLime;

     end
  else
     pnFlgOco03.Color := clLime;
end;

procedure TfmManEn2.EdTotEncExit(Sender: TObject);
begin
  if fmManEnt.CmpEntTotEnc.Value <> fmManEnt.CmpEntTotEnt.Value then begin

     if fmManEnt.CmpEntTotEnc.Value > fmManEnt.CmpEntTotEnt.Value then
        TotDif := fRound(fmManEnt.CmpEntTotEnc.Value - fmManEnt.CmpEntTotEnt.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotEnt.Value - fmManEnt.CmpEntTotEnc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco05.Color := clRed
     else
        pnFlgOco05.Color := clLime;

     end
  else
     pnFlgOco05.Color := clLime;
end;

procedure TfmManEn2.EdTotIpcExit(Sender: TObject);
begin
  if fmManEnt.CmpEntTotIpc.Value <> fmManEnt.CmpEntTotIpi.Value then begin

     if fmManEnt.CmpEntTotIpc.Value > fmManEnt.CmpEntTotIpi.Value then
        TotDif := fRound(fmManEnt.CmpEntTotIpc.Value - fmManEnt.CmpEntTotIpi.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotIpi.Value - fmManEnt.CmpEntTotIpc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco10.Color := clRed
     else
        pnFlgOco10.Color := clLime;

     end
  else
     pnFlgOco10.Color := clLime;
end;

procedure TfmManEn2.EdTotGecExit(Sender: TObject);
begin
  if fmManEnt.CmpEntTotGec.Value <> fmManEnt.CmpEntTotGer.Value then begin

     if fmManEnt.CmpEntTotGec.Value > fmManEnt.CmpEntTotGer.Value then
        TotDif := fRound(fmManEnt.CmpEntTotGec.Value - fmManEnt.CmpEntTotGer.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotGer.Value - fmManEnt.CmpEntTotGec.Value,2);

     if TotDif > DifEnt then
        pnFlgOco11.Color := clRed
     else
        pnFlgOco11.Color := clLime;

     end
  else
     pnFlgOco11.Color := clLime;
end;

procedure TfmManEn2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #20 then begin  {Ctrl+T - Total de Impostas Calculados pelo Sistema}

     try

        fmManEn7 := TfmManEn7.Create(Self);

        fmManEn7.CmpEnt.Close;
        fmManEn7.CmpEnt.Params[0].AsInteger := fmManEnt.CmpEntId_CmpEnt.Value;
        fmManEn7.CmpEnt.Open;

        fmManEn7.ShowModal;

     finally

        FreeAndNil(fmManEn7);

     end;
  end;
end;

procedure TfmManEn2.EdTotSucExit(Sender: TObject);
begin
  inherited;
  if fmManEnt.CmpEntTotSuc.Value <> fmManEnt.CmpEntTotSub.Value then begin

     if fmManEnt.CmpEntTotSuc.Value > fmManEnt.CmpEntTotSub.Value then
        TotDif := fRound(fmManEnt.CmpEntTotSuc.Value - fmManEnt.CmpEntTotSub.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotSub.Value - fmManEnt.CmpEntTotSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco04.Color := clRed
     else
        pnFlgOco04.Color := clLime;

     end
  else
     pnFlgOco04.Color := clLime;
end;

end.
