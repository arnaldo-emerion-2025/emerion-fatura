unit ManGc2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManGc2 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Bevel1: TBevel;
    Label10: TLabel;
    EdOb8Ger: TdxDBColorEdit;
    EdOb7Ger: TdxDBColorEdit;
    EdOb6Ger: TdxDBColorEdit;
    EdOb5Ger: TdxDBColorEdit;
    EdOb4Ger: TdxDBColorEdit;
    EdOb3Ger: TdxDBColorEdit;
    EdOb2Ger: TdxDBColorEdit;
    EdOb1Ger: TdxDBColorEdit;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManGc2: TfmManGc2;

implementation

uses dxDemoUtils, BbMensag, ManGDB, ManGc1, ManE01, ImpF01;

{$R *.DFM}

procedure TfmManGc2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManGc2.FormShow(Sender: TObject);
begin
  inherited;

  fmManGc1.PedGer.Edit;

  EdOb1Ger.Text := fmManGc1.PedGerOb1Ger.Value;
  EdOb2Ger.Text := fmManGc1.PedGerOb2Ger.Value;
  EdOb3Ger.Text := fmManGc1.PedGerOb3Ger.Value;
  EdOb4Ger.Text := fmManGc1.PedGerOb4Ger.Value;
  EdOb5Ger.Text := fmManGc1.PedGerOb5Ger.Value;
  EdOb6Ger.Text := fmManGc1.PedGerOb6Ger.Value;
  EdOb7Ger.Text := fmManGc1.PedGerOb7Ger.Value;
  EdOb8Ger.Text := fmManGc1.PedGerOb8Ger.Value;

  EdOb1Ger.SetFocus;

end;

procedure TfmManGc2.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManGc2.bContinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  fmManGc1.PedGerOb1Ger.Value := Trim(fmManGc1.PedGerOb1Ger.Value);
  fmManGc1.PedGerOb2Ger.Value := Trim(fmManGc1.PedGerOb2Ger.Value);
  fmManGc1.PedGerOb3Ger.Value := Trim(fmManGc1.PedGerOb3Ger.Value);
  fmManGc1.PedGerOb4Ger.Value := Trim(fmManGc1.PedGerOb4Ger.Value);
  fmManGc1.PedGerOb5Ger.Value := Trim(fmManGc1.PedGerOb5Ger.Value);
  fmManGc1.PedGerOb6Ger.Value := Trim(fmManGc1.PedGerOb6Ger.Value);
  fmManGc1.PedGerOb7Ger.Value := Trim(fmManGc1.PedGerOb7Ger.Value);
  fmManGc1.PedGerOb8Ger.Value := Trim(fmManGc1.PedGerOb8Ger.Value);

  if fMsg('Confirma informações ?','O') then begin

     fmManGc1.PedGerSitGer.Value := 'Concluido';

     with fmManGc1.PedGer do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             fmManGc1.Finalizar := 'N';

             if fmManGc1.PedGer.State = dsBrowse then fmManGc1.PedGer.Edit;

             EdOb1Ger.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     fmManGc1.Finalizar := 'S';

     fmManGc1.PedGer.Close;
     fmManGc1.PedGer.Open;

     if fMsg('Confirma impressão da via de controle ?','O') then begin

        try

           fmManE01 := TfmManE01.Create(Self);

           fmManE01.PedGer.Close;
           fmManE01.PedGer.Params[0].AsInteger := fmManGc1.PedGerId_PedGer.Value;
           fmManE01.PedGer.Open;

           fmManE01.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManE01);

        end;
     end;

     if fmManGc1.PedParFlgCot.Value = 'Sim' then begin

        if fmManGc1.PedGerQtiGr4.Value > 0 then begin

           if fMsg('Confirma impressão da via de cotação para os fornecedores ?','O') then begin

              try

                 fmImpF01 := TfmImpF01.Create(Self);

                 fmImpF01.Id_PedGer := fmManGc1.PedGerId_PedGer.Value;

                 fmImpF01.PedGr4.Close;
                 fmImpF01.PedGr4.Params[0].AsInteger := fmManGc1.PedGerId_PedGer.Value;
                 fmImpF01.PedGr4.Open;

                 fmImpF01.ShowModal;

              finally

                 FreeAndNil(fmImpF01);

              end;
           end;
        end;
     end;
     
     Close;

  end;
end;

procedure TfmManGc2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManGc2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManGc1.PedGer.State <> dsBrowse then fmManGc1.PedGer.CancelUpdates;
end;

end.
