unit ManAt4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, RDprint, dxCntner, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxEdLib, AlignEdit, FShowPadrao, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManAt4 = class(TfmShowPadrao)
    PedCt3: TwwQuery;
    DsCt3: TwwDataSource;
    PaintBox: TPaintBox;
    Bevel1: TBevel;
    Label10: TLabel;
    grCt3: ThGrid;
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
    PedCt3ID_PEDCT3: TIntegerField;
    PedCt3ID_PEDCTA: TIntegerField;
    PedCt3PRACT3: TIntegerField;
    PedCt3VLPCT3: TFloatField;
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
  fmManAt4 : TfmManAt4;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManAt2, PsqCnd, ManGDB,
     ManE02, ManE03, ImpF03;

{$R *.DFM}

procedure TfmManAt4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 112 then bPesquisar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManAt4.FormShow(Sender: TObject);
begin
  inherited;
  
  EdTotGer.Text := FormatFloat('###,###,##0.00',fmManAt2.PedCtaTotGer.Value);

  if fmManAt2.PedCtaId_PedCnd.Value > 0 then begin

     with fmManAt2.quSQL,SQL do begin

          Close;    
          Text := ' Select PedCnd.NomCnd From PedCnd Where PedCnd.Id_PedCnd = '+ QuotedStr(IntToStr(fmManAt2.PedCtaId_PedCnd.Value));
          Open;

          pnNomCnd.Caption := Trim(FieldbyName('NomCnd').AsString);
          
     end;

     end
  else
     pnNomCnd.Caption := '';
     
  PedCt3.Close;
  PedCt3.Params[0].AsInteger := fmManAt2.PedCtaId_PedCta.Value;
  PedCt3.Open;

end;

procedure TfmManAt4.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManAt4.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManAt4.bContinuarClick(Sender: TObject);
var
  Id_PedCt2 : integer;
begin
  if fMsg('Confirma informações ?','O') then begin

     Id_PedCt2 := fmManAt2.PedCt2Id_PedCt2.Value;
     
     fmManAt2.PedCta.Edit;
     
     fmManAt2.PedCtaSitCta.Value := 'Concluida';

     with fmManAt2.PedCta do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             fmManAt2.Finalizar := 'N';

             if fmManAt2.PedCta.State <> dsBrowse then fmManAt2.PedCta.CancelUpdates;

             grCt3.SetFocus;

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

  end;
end;

procedure TfmManAt4.bPesquisarClick(Sender: TObject);
var
  Id_PedCt2 : integer;
begin

  Id_PedCt2 := fmManAt2.PedCt2Id_PedCt2.Value;
  
  try

     fmPsqCnd := TfmPsqCnd.Create(Self);

     with fmPsqCnd.PedCnd,SQL do begin

          Close;
          Text := ' Select * From PedCnd'+
                  ' Where :ValIni >= PedCnd.ValIni'+
                  '   and :ValFin <= PedCnd.ValFin'+
                  ' Order By PedCnd.NomCnd';

          with Params do begin

               Params[0].AsFloat := fRound(fmManAt2.PedCtaTotGer.Value,2);
               Params[1].AsFloat := fRound(fmManAt2.PedCtaTotGer.Value,2);

          end;

          Open;

     end;

     fmPsqCnd.ShowModal;

     if fmPsqCnd.Id_PedCnd > 0 then begin

        if fmManAt2.PedCtaId_PedCnd.Value <> fmPsqCnd.Id_PedCnd then begin

           fmManAt2.PedCta.Edit;

           fmManAt2.PedCtaId_PedCnd.Value := fmPsqCnd.Id_PedCnd;

           with fmManAt2.PedCta do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if fmManAt2.PedCta.State <> dsBrowse then fmManAt2.PedCta.CancelUpdates;

                   grCt3.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedCt3.Close;
           PedCt3.Open;

           fmManAt2.PedCta.Close;
           fmManAt2.PedCta.Open;

           fmManAt2.PedCt2.Close;
           fmManAt2.PedCt2.Open;

           fmManAt2.PedCt2.Locate('Id_PedCt2',Id_PedCt2,[LoPartialKey]);

           pnNomCnd.Caption := fmPsqCnd.NomCnd;

           EdTotGer.Text := FormatFloat('###,###,##0.00',fmManAt2.PedCtaTotGer.Value);

        end;
     end;

  finally

     FreeAndNil(fmPsqCnd);

  end;
end;

end.
