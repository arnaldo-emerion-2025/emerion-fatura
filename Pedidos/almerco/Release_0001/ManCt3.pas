unit ManCt3;

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
  TfmManCt3 = class(TfmShowPadrao)
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
  fmManCt3: TfmManCt3;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, BbMensag, ManGDB, ManCt2, ManCt4,
     ManE02, ManE03, ManCt5, ImpF03;

{$R *.DFM}

procedure TfmManCt3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManCt3.FormShow(Sender: TObject);
begin
  inherited;

  fmManCt2.PedCta.Edit;

  EdTipCon.Text := fmManCt2.PedCtaTipCon.Value;
  EdNomCon.Text := fmManCt2.PedCtaNomCon.Value;
  EdObsEnt.Text := fmManCt2.PedCtaObsEnt.Value;
  EdObsVal.Text := fmManCt2.PedCtaObsVal.Value;
  EdOb1Cta.Text := fmManCt2.PedCtaOb1Cta.Value;
  EdOb2Cta.Text := fmManCt2.PedCtaOb2Cta.Value;
  EdOb3Cta.Text := fmManCt2.PedCtaOb3Cta.Value;
  EdOb4Cta.Text := fmManCt2.PedCtaOb4Cta.Value;
  EdOb5Cta.Text := fmManCt2.PedCtaOb5Cta.Value;
  EdOb6Cta.Text := fmManCt2.PedCtaOb6Cta.Value;
  EdOb7Cta.Text := fmManCt2.PedCtaOb7Cta.Value;
  EdOb8Cta.Text := fmManCt2.PedCtaOb8Cta.Value;

  EdTipCon.SetFocus;

end;

procedure TfmManCt3.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCt3.bContinuarClick(Sender: TObject);
var
  Id_PedCt2 : integer;
begin

  ActiveControl := nil;

  fmManCt2.PedCtaTipCon.Value := Trim(fmManCt2.PedCtaTipCon.Value);
  fmManCt2.PedCtaNomCon.Value := Trim(fmManCt2.PedCtaNomCon.Value);
  fmManCt2.PedCtaObsEnt.Value := Trim(fmManCt2.PedCtaObsEnt.Value);
  fmManCt2.PedCtaObsVal.Value := Trim(fmManCt2.PedCtaObsVal.Value);
  fmManCt2.PedCtaOb1Cta.Value := Trim(fmManCt2.PedCtaOb1Cta.Value);
  fmManCt2.PedCtaOb2Cta.Value := Trim(fmManCt2.PedCtaOb2Cta.Value);
  fmManCt2.PedCtaOb3Cta.Value := Trim(fmManCt2.PedCtaOb3Cta.Value);
  fmManCt2.PedCtaOb4Cta.Value := Trim(fmManCt2.PedCtaOb4Cta.Value);
  fmManCt2.PedCtaOb5Cta.Value := Trim(fmManCt2.PedCtaOb5Cta.Value);
  fmManCt2.PedCtaOb6Cta.Value := Trim(fmManCt2.PedCtaOb6Cta.Value);
  fmManCt2.PedCtaOb7Cta.Value := Trim(fmManCt2.PedCtaOb7Cta.Value);
  fmManCt2.PedCtaOb8Cta.Value := Trim(fmManCt2.PedCtaOb8Cta.Value);

  with fmManCt2.PedCta do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          fmManCt2.Finalizar := 'N';

          if fmManCt2.PedCta.State = dsBrowse then fmManCt2.PedCta.Edit;

          EdTipCon.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  if fmManCt2.PedCtaIntFin.Value = 'Sim' then begin

     if Trim(fmManCt2.PedParTipPag.Value) = 'Lancamento manual' then begin

        try

           fmManCt5 := TfmManCt5.Create(Self);
           fmManCt5.ShowModal;

        finally

           FreeAndNil(fmManCt5);

        end;

        end
     else
        begin
        
        try

           fmManCt4 := TfmManCt4.Create(Self);
           fmManCt4.ShowModal;

        finally

           FreeAndNil(fmManCt4);

        end;
     end;

     if fmManCt2.Finalizar = 'S' then
        Close
     else
        begin

        fmManCt2.PedCta.Close;
        fmManCt2.PedCta.Open;

        fmManCt2.PedCta.Edit;

        EdTipCon.SetFocus;

     end;

     end
  else
     begin

     if fMsg('Confirma informações ?','O') then begin

        Id_PedCt2 := fmManCt2.PedCt2Id_PedCt2.Value;
     
        fmManCt2.PedCtaSitCta.Value := 'Concluida';

        with fmManCt2.PedCta do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                fmManCt2.Finalizar := 'N';

                if fmManCt2.PedCta.State = dsBrowse then fmManCt2.PedCta.Edit;

                EdTipCon.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManCt2.PedCta.Close;
        fmManCt2.PedCta.Open;

        fmManCt2.PedCt2.Close;
        fmManCt2.PedCt2.Open;

        fmManCt2.PedCt2.Locate('Id_PedCt2',Id_PedCt2,[LoPartialKey]);

        fmManCt2.Finalizar := 'S';

        if fMsg('Confirma impressão da via interna ?','O') then begin

           try

              fmManE02 := TfmManE02.Create(Self);

              fmManE02.PedCta.Close;
              fmManE02.PedCta.Params[0].AsInteger := fmManCt2.PedCtaId_PedCta.Value;
              fmManE02.PedCta.Open;

              fmManE02.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE02);

           end;
        end;

        if fMsg('Confirma impressão da via do cliente ?','O') then begin

           try

              fmManE03 := TfmManE03.Create(Self);

              fmManE03.PedCta.Close;
              fmManE03.PedCta.Params[0].AsInteger := fmManCt2.PedCtaId_PedCta.Value;
              fmManE03.PedCta.Open;

              fmManE03.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE03);

           end;
        end;

        if fmManCt2.PedParFlgCot.Value = 'Sim' then begin

           if fmManCt2.PedCtaQtiCt4.Value > 0 then begin

              if fMsg('Confirma impressão da via de cotação para os fornecedores ?','O') then begin

                 try

                    fmImpF03 := TfmImpF03.Create(Self);

                    fmImpF03.Id_PedCta := fmManCt2.PedCtaId_PedCta.Value;

                    fmImpF03.PedCt4.Close;
                    fmImpF03.PedCt4.Params[0].AsInteger := fmManCt2.PedCtaId_PedCta.Value;
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

procedure TfmManCt3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManCt2.PedCta.State <> dsBrowse then fmManCt2.PedCta.CancelUpdates;
end;

procedure TfmManCt3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.

