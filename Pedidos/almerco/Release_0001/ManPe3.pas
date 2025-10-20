unit ManPe3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, RDprint, dxCntner, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxEdLib, AlignEdit, FShowPadrao, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManPe3 = class(TfmShowPadrao)
    PedRe3: TwwQuery;
    DsRe3: TwwDataSource;
    PaintBox: TPaintBox;
    Bevel1: TBevel;
    Label10: TLabel;
    grRe3: ThGrid;
    pnTit: TdxDBColorEdit;
    grTit: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    grPro: TdxDBGraphicEdit;
    EdTotGer: TAlignEdit;
    pnTotGer: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    bRetornar: TSpeedButton;
    bContinuar: TSpeedButton;
    bPesquisar: TSpeedButton;
    Label4: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    dxDBCurrencyEdit1: TdxDBColorCurrencyEdit;
    pnNomCnd: TPanel;
    PedRe3ID_PEDRE3: TIntegerField;
    PedRe3ID_PEDRES: TIntegerField;
    PedRe3PRARE3: TIntegerField;
    PedRe3VLPRE3: TFloatField;
    PedRe3FLGAPR: TStringField;
    PedRe3FLGATU: TStringField;
    PedRe3NRORE3: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure bPesquisarClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPe3: TfmManPe3;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManPed, PsqCnd, ManGDB,
     ManE04, ManE05, ImpF02;

{$R *.DFM}

procedure TfmManPe3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 112 then bPesquisar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManPe3.FormShow(Sender: TObject);
begin
  inherited;

  EdTotGer.Text := FormatFloat('###,###,##0.00',fmManPed.PedResTotGer.Value);

  if fmManPed.PedResId_PedCnd.Value > 0 then begin

     with fmManPed.quSQL,SQL do begin

          Close;
          Text := ' Select PedCnd.NomCnd From PedCnd Where PedCnd.Id_PedCnd = '+ QuotedStr(IntToStr(fmManPed.PedResId_PedCnd.Value));
          Open;

          pnNomCnd.Caption := Trim(FieldbyName('NomCnd').AsString);

     end;

     end
  else
     pnNomCnd.Caption := '';

  PedRe3.Close;
  PedRe3.Params[0].AsInteger := fmManPed.PedResId_PedRes.Value;
  PedRe3.Open;

end;

procedure TfmManPe3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe3.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManPe3.bContinuarClick(Sender: TObject);
var
  Id_PedRe2 : integer;
begin
  if fMsg('Confirma informações ?','O') then begin

     Id_PedRe2 := fmManPed.PedRe2Id_PedRe2.Value;

     fmManPed.PedRes.Edit;

     fmManPed.PedResSitRes.Value := 'Aguardando Separacao de Estoque';

     with fmManPed.PedRes do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             fmManPed.Finalizar := 'N';

             if fmManPed.PedRes.State <> dsBrowse then fmManPed.PedRes.CancelUpdates;

             grRe3.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     fmManPed.PedRes.Close;
     fmManPed.PedRes.Open;

     fmManPed.PedRe2.Close;
     fmManPed.PedRe2.Open;

     fmManPed.PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

     fmManPed.Finalizar := 'S';

     if fMsg('Confirma impressão do pedido ?','O') then begin

        try

           fmManE04 := TfmManE04.Create(Self);

           fmManE04.PedRes.Close;
           fmManE04.PedRes.Params[0].AsInteger := fmManPed.PedResId_PedRes.Value;
           fmManE04.PedRes.Open;

           fmManE04.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManE04);

        end;
     end;

     if fMsg('Imprime via de separação do pedido ?','O') then begin

        fmManPed.PedRes.Edit;

        fmManPed.PedResFlgAtu.Value := 'E';

        if Trim(fmManPed.PedResCodEan.Value) = '' then fmManPed.PedResCodEan.Value := fGeraCB2(fNumZeros(IntToStr(fmManPed.PedResId_PedRes.Value),12));

        fmManPed.PedResFlgEst.Value := 'Sim';

        with fmManPed.PedRes do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if fmManPed.PedRes.State <> dsBrowse then fmManPed.PedRes.CancelUpdates;

                grRe3.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManPed.PedRes.Close;
        fmManPed.PedRes.Open;

        try

           fmManE05 := TfmManE05.Create(Self);

           fmManE05.PedRes.Close;
           fmManE05.PedRes.Params[0].AsInteger := fmManPed.PedResId_PedRes.Value;
           fmManE05.PedRes.Open;

           fmManE05.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManE05);

        end;
     end;
     
     if fmManPed.PedParFlgCot.Value = 'Sim' then begin

        if fmManPed.PedResQtiRe4.Value > 0 then begin

           if fMsg('Confirma impressão da via de cotação para os fornecedores ?','O') then begin

              try

                 fmImpF02 := TfmImpF02.Create(Self);

                 fmImpF02.Id_PedRes := fmManPed.PedResId_PedRes.Value;

                 fmImpF02.PedRe4.Close;
                 fmImpF02.PedRe4.Params[0].AsInteger := fmManPed.PedResId_PedRes.Value;
                 fmImpF02.PedRe4.Open;

                 fmImpF02.ShowModal;

              finally

                 FreeAndNil(fmImpF02);

              end;
           end;
        end;     
     end;

     Close;

  end;
end;

procedure TfmManPe3.bPesquisarClick(Sender: TObject);
var
  Id_PedRe2 : integer;
begin

  Id_PedRe2 := fmManPed.PedRe2Id_PedRe2.Value;

  try

     fmPsqCnd := TfmPsqCnd.Create(Self);

     with fmPsqCnd.PedCnd,SQL do begin

          Close;
          Text := ' Select * From PedCnd'+
                  ' Where :ValIni >= PedCnd.ValIni'+
                  '   and :ValFin <= PedCnd.ValFin'+
                  ' Order By PedCnd.NomCnd';

          with Params do begin

               Params[0].AsFloat := fRound(fmManPed.PedResTotGer.Value,2);
               Params[1].AsFloat := fRound(fmManPed.PedResTotGer.Value,2);

          end;

          Open;

     end;

     fmPsqCnd.ShowModal;

     if fmPsqCnd.Id_PedCnd > 0 then begin

        if fmManPed.PedResId_PedCnd.Value <> fmPsqCnd.Id_PedCnd then begin

           fmManPed.PedRes.Edit;

           fmManPed.PedResId_PedCnd.Value := fmPsqCnd.Id_PedCnd;

           with fmManPed.PedRes do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if fmManPed.PedRes.State <> dsBrowse then fmManPed.PedRes.CancelUpdates;

                   grRe3.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedRe3.Close;
           PedRe3.Open;

           fmManPed.PedRes.Close;
           fmManPed.PedRes.Open;

           fmManPed.PedRe2.Close;
           fmManPed.PedRe2.Open;

           fmManPed.PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

           pnNomCnd.Caption := fmPsqCnd.NomCnd;

           EdTotGer.Text := FormatFloat('###,###,##0.00',fmManPed.PedResTotGer.Value);

        end;
     end;

  finally

     FreeAndNil(fmPsqCnd);

  end;
end;

end.
