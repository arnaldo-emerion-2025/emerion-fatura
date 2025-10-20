unit ManRo5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, dxDBColorPickEdit,
  dxDBColorMemo, dxDBColorLookupEdit, dxDBColorEdit, dxColorPickEdit;

type
  TfmManRo5 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    Label2: TLabel;
    EdOb1Ope: TdxDBColorEdit;
    EdOb2Ope: TdxDBColorEdit;
    EdOb3Ope: TdxDBColorEdit;
    EdOb4Ope: TdxDBColorEdit;
    EdOb5Ope: TdxDBColorEdit;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
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
  fmManRo5: TfmManRo5;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, Bbfuncao, BbMensag, ManRo1, ManGDB,
  ManE06;

{$R *.DFM}

procedure TfmManRo5.FormCreate(Sender: TObject);
begin
  inherited;
  fmManRo1.CmpNfs.Edit;
end;

procedure TfmManRo5.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManRo5.FormShow(Sender: TObject);
begin
  inherited;
  EdOb1Ope.SetFocus;
end;

procedure TfmManRo5.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManRo5.bContinuarClick(Sender: TObject);
var
  sText: string;
begin

  ActiveControl := nil;

  fmManRo1.CmpNfsOb1Ope.Value := Trim(fmManRo1.CmpNfsOb1Ope.Value);
  fmManRo1.CmpNfsOb2Ope.Value := Trim(fmManRo1.CmpNfsOb2Ope.Value);
  fmManRo1.CmpNfsOb3Ope.Value := Trim(fmManRo1.CmpNfsOb3Ope.Value);
  fmManRo1.CmpNfsOb4Ope.Value := Trim(fmManRo1.CmpNfsOb4Ope.Value);
  fmManRo1.CmpNfsOb5Ope.Value := Trim(fmManRo1.CmpNfsOb5Ope.Value);

  with fmManRo1.CmpNfs do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManRo1.CmpNfs.State = dsBrowse then fmManRo1.CmpNfs.Edit;

          EdOb1Ope.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  if fMsg('Confirma impressão da via de controle interno do romaneio ?','O') then begin

     try

        fmManE06 := TfmManE06.Create(Self);

        fmManE06.CmpNfs.Close;
        fmManE06.CmpNfs.Params[0].AsInteger := fmManRo1.CmpNfsId_CmpNfs.Value;
        fmManE06.CmpNfs.Open;

        fmManE06.RLReport1.PreviewModal;

     finally

        FreeAndNil(fmManE06);

     end;
  end;

  if (fmManRo1.CmpNfsCodTip.Value = 1) or (fmManRo1.CmpNfsCodTip.Value = 2) then begin

     if fMsg('Imprime documento fiscal ?','O') then begin

        fmManRo1.Finalizar := 'S';

        fmManRo1.CmpNfs.Edit;

        fmManRo1.CmpNfsSitNfs.Value := 'Aguardando Emissao de Nota Fiscal';

        with fmManRo1.CmpNfs do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                fmManRo1.Finalizar := 'N';

                if fmManRo1.CmpNfs.State = dsBrowse then fmManRo1.CmpNfs.Edit;

                EdOb1Ope.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManRo1.CmpNfs.Close;
        fmManRo1.CmpNfs.Open;

        fmManRo1.CmpNf2.Close;
        fmManRo1.CmpNf2.Open;

        close;
        
        end
     else
        begin

        fmManRo1.CmpNfs.Edit;

        EdOb1Ope.SetFocus;

     end;
        
     end
  else
     begin

     sText := '               Confirma Romaneio ?                '+#10+
              '                                                  '+#10+
              ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :'+#10+
              '                                                  ';

     if fmManRo1.CmpNfsAtuEst.Value = 'Sim' then sText := sText + #10 + ' . Baixas nos Estoques dos Itens Lançados;        ';

     sText := sText + #10 + '                                                  ';

     if fMsg(sText,'O') then begin

        fmManRo1.CmpNfs.Edit;

        fmManRo1.CmpNfsSitNfs.Value := 'Concluido';

        with fmManRo1.CmpNfs do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                fmManRo1.Finalizar := 'N';

                if fmManRo1.CmpNfs.State = dsBrowse then fmManRo1.CmpNfs.Edit;

                EdOb1Ope.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManRo1.CmpNfs.Close;
        fmManRo1.CmpNfs.Open;

        fmManRo1.Finalizar := 'S';

        if fMsg('Confirma impressão da via de controle interno do romaneio ?','O') then begin

           try

              fmManE06 := TfmManE06.Create(Self);

              fmManE06.CmpNfs.Close;
              fmManE06.CmpNfs.Params[0].AsInteger := fmManRo1.CmpNfsId_CmpNfs.Value;
              fmManE06.CmpNfs.Open;

              fmManE06.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE06);

           end;
        end;

        close;
        
        end
     else
        begin

        fmManRo1.CmpNfs.Edit;
        
        EdOb1Ope.SetFocus;

     end;   
  end;
end;

procedure TfmManRo5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManRo1.CmpNfs.State <> dsBrowse then fmManRo1.CmpNfs.CancelUpdates;
end;

procedure TfmManRo5.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.

