unit ManAt3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppStrtch, ppMemo, Psock, NMsmtp, dxfProgressBar,
  dxDBColorMemo, dxDBColorEdit, dxDBColorPickEdit;

type
  TfmManAt3 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label10: TLabel;
    Label11: TLabel;
    EdObsEnt: TdxDBColorEdit;
    EdObsVal: TdxDBColorEdit;
    Label21: TLabel;
    Label22: TLabel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    EdNomCon: TdxDBColorEdit;
    Label5: TLabel;
    EdOb1Cta: TdxDBColorEdit;
    EdOb2Cta: TdxDBColorEdit;
    EdOb3Cta: TdxDBColorEdit;
    EdOb4Cta: TdxDBColorEdit;
    EdOb5Cta: TdxDBColorEdit;
    EdOb6Cta: TdxDBColorEdit;
    EdOb7Cta: TdxDBColorEdit;
    EdOb8Cta: TdxDBColorEdit;
    EdTipCon: TdxDBColorPickEdit;
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
  fmManAt3: TfmManAt3;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, BbMensag, ManGDB, ManAt2, ManAt4,
     ManE02, ManE03, ManAt5, ImpF03;

{$R *.DFM}

procedure TfmManAt3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManAt3.FormShow(Sender: TObject);
begin
  inherited;

  fmManAt2.PedCta.Edit;

  EdTipCon.Text := fmManAt2.PedCtaTipCon.Value;
  EdNomCon.Text := fmManAt2.PedCtaNomCon.Value;
  EdObsEnt.Text := fmManAt2.PedCtaObsEnt.Value;
  EdObsVal.Text := fmManAt2.PedCtaObsVal.Value;
  EdOb1Cta.Text := fmManAt2.PedCtaOb1Cta.Value;
  EdOb2Cta.Text := fmManAt2.PedCtaOb2Cta.Value;
  EdOb3Cta.Text := fmManAt2.PedCtaOb3Cta.Value;
  EdOb4Cta.Text := fmManAt2.PedCtaOb4Cta.Value;
  EdOb5Cta.Text := fmManAt2.PedCtaOb5Cta.Value;
  EdOb6Cta.Text := fmManAt2.PedCtaOb6Cta.Value;
  EdOb7Cta.Text := fmManAt2.PedCtaOb7Cta.Value;
  EdOb8Cta.Text := fmManAt2.PedCtaOb8Cta.Value;

  EdTipCon.SetFocus;

end;

procedure TfmManAt3.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManAt3.bContinuarClick(Sender: TObject);
var
  Id_PedCt2 : integer;
begin

  ActiveControl := nil;

  fmManAt2.PedCtaTipCon.Value := Trim(fmManAt2.PedCtaTipCon.Value);
  fmManAt2.PedCtaNomCon.Value := Trim(fmManAt2.PedCtaNomCon.Value);
  fmManAt2.PedCtaObsEnt.Value := Trim(fmManAt2.PedCtaObsEnt.Value);
  fmManAt2.PedCtaObsVal.Value := Trim(fmManAt2.PedCtaObsVal.Value);
  fmManAt2.PedCtaOb1Cta.Value := Trim(fmManAt2.PedCtaOb1Cta.Value);
  fmManAt2.PedCtaOb2Cta.Value := Trim(fmManAt2.PedCtaOb2Cta.Value);
  fmManAt2.PedCtaOb3Cta.Value := Trim(fmManAt2.PedCtaOb3Cta.Value);
  fmManAt2.PedCtaOb4Cta.Value := Trim(fmManAt2.PedCtaOb4Cta.Value);
  fmManAt2.PedCtaOb5Cta.Value := Trim(fmManAt2.PedCtaOb5Cta.Value);
  fmManAt2.PedCtaOb6Cta.Value := Trim(fmManAt2.PedCtaOb6Cta.Value);
  fmManAt2.PedCtaOb7Cta.Value := Trim(fmManAt2.PedCtaOb7Cta.Value);
  fmManAt2.PedCtaOb8Cta.Value := Trim(fmManAt2.PedCtaOb8Cta.Value);

  with fmManAt2.PedCta do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          fmManAt2.Finalizar := 'N';

          if fmManAt2.PedCta.State = dsBrowse then fmManAt2.PedCta.Edit;

          EdTipCon.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  if fmManAt2.PedCtaIntFin.Value = 'Sim' then begin

     if Trim(fmManAt2.PedParTipPag.Value) = 'Lancamento manual' then begin

        try

           fmManAt5 := TfmManAt5.Create(Self);
           fmManAt5.ShowModal;

        finally

           FreeAndNil(fmManAt5);

        end;

        end
     else
        begin
        
        try

           fmManAt4 := TfmManAt4.Create(Self);
           fmManAt4.ShowModal;

        finally

           FreeAndNil(fmManAt4);

        end;
     end;

     if fmManAt2.Finalizar = 'S' then
        Close
     else
        begin

        fmManAt2.PedCta.Close;
        fmManAt2.PedCta.Open;

        fmManAt2.PedCta.Edit;

        EdTipCon.SetFocus;

     end;

     end
  else
     begin

     if fMsg('Confirma informações ?','O') then begin

        Id_PedCt2 := fmManAt2.PedCt2Id_PedCt2.Value;
     
        fmManAt2.PedCtaSitCta.Value := 'Concluida';

        with fmManAt2.PedCta do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                fmManAt2.Finalizar := 'N';

                if fmManAt2.PedCta.State = dsBrowse then fmManAt2.PedCta.Edit;

                EdTipCon.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManAt2.PedCta.Close;
        fmManAt2.PedCta.Open;

        fmManAt2.PedCt2.Close;
        fmManAt2.PedCt2.Open;

        fmManAt2.PedCt2.Locate('Id_PedCt2',Id_PedCt2,[LoPartialKey]);

        fmManAt2.Finalizar := 'S';

        if fMsg('Confirma impressão da via interna da cotação ?','O') then begin

           try

              fmManE02 := TfmManE02.Create(Self);

              fmManE02.PedCta.Close;
              fmManE02.PedCta.Params[0].AsInteger := fmManAt2.PedCtaId_PedCta.Value;
              fmManE02.PedCta.Open;

              fmManE02.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE02);

           end;
        end;

        if fMsg('Confirma impressão da via do cliente da cotação ?','O') then begin

           try

              fmManE03 := TfmManE03.Create(Self);

              fmManE03.PedCta.Close;
              fmManE03.PedCta.Params[0].AsInteger := fmManAt2.PedCtaId_PedCta.Value;
              fmManE03.PedCta.Open;

              fmManE03.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE03);

           end;
        end;

        if fmManAt2.PedParFlgCot.Value = 'Sim' then begin

           if fmManAt2.PedCtaQtiCt4.Value > 0 then begin

              if fMsg('Confirma impressão da via de cotação para os fornecedores ?','O') then begin

                 try

                    fmImpF03 := TfmImpF03.Create(Self);

                    fmImpF03.Id_PedCta := fmManAt2.PedCtaId_PedCta.Value;

                    fmImpF03.PedCt4.Close;
                    fmImpF03.PedCt4.Params[0].AsInteger := fmManAt2.PedCtaId_PedCta.Value;
                    fmImpF03.PedCt4.Open;

                    fmImpF03.ShowModal;

                 finally

                    FreeAndNil(fmImpF03);

                 end;
              end;
           end;     
        end;

        Close;

        end
     else
        EdTipCon.SetFocus;
        
  end;
end;

procedure TfmManAt3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManAt2.PedCta.State <> dsBrowse then fmManAt2.PedCta.CancelUpdates;
end;

procedure TfmManAt3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.

