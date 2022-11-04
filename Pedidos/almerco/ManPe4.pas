unit ManPe4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, RDprint, dxCntner, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxEdLib, AlignEdit, FShowPadrao,
  dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManPe4 = class(TfmShowPadrao)
    PedRe3: TwwQuery;
    DsRe3: TwwDataSource;
    PaintBox: TPaintBox;
    grRe3: ThGrid;
    PedRe3PRARE3: TIntegerField;
    PedRe3VLPRE3: TFloatField;
    pnTit: TdxDBColorEdit;
    grTit: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    UpRe3: TUpdateSQL;
    grPro: TdxDBGraphicEdit;
    quSQL: TwwQuery;
    Panel1: TPanel;
    EdPraRe3: TdxDBColorEdit;
    EdVlpRe3: TdxDBColorCurrencyEdit;
    PedRe3NRORE3: TIntegerField;
    Label9: TLabel;
    Label1: TLabel;
    PedRe3ID_PEDRE3: TIntegerField;
    PedRe3ID_PEDRES: TIntegerField;
    PedRe3FLGAPR: TStringField;
    PedRe3FLGATU: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure PedRe3NewRecord(DataSet: TDataSet);
    procedure EdPraRe3Exit(Sender: TObject);
    procedure grRe3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPraRe3KeyPress(Sender: TObject; var Key: Char);
    procedure bRetornar;
    procedure bContinuar;
    procedure Panel1Exit(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPe4: TfmManPe4;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManPed, PsqBan, AuxPsq,
     ManE04, ManE05, ImpF02;

{$R *.DFM}

procedure TfmManPe4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Id_PedRe2 : integer;
begin
  inherited;
  if key = 115 then begin {F4 - A Vista}

     Id_PedRe2 := fmManPed.PedRe2Id_PedRe2.Value;

     if PedRe3.State <> dsBrowse then PedRe3.CancelUpdates;

     if EdPraRe3.Enabled then begin

        EdPraRe3.Enabled := False;

        EdPraRe3.Font.Style := [fsBold];

        grRe3.SetFocus;

     end;
     
     fmManPed.PedRes.Edit;

     fmManPed.PedResFlgAvi.Value := 'Sim';

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

     grRe3.SetFocus;

  end;

  if key = 27 then begin

     if PedRe3.State <> dsBrowse then PedRe3.CancelUpdates;

     if EdPraRe3.Enabled then begin

        EdPraRe3.Enabled := False;

        EdPraRe3.Font.Style := [fsBold];

        grRe3.SetFocus;

        end
     else
        bRetornar;
  end;

  if key = 123 then begin

     if grRe3.Focused then bContinuar;

  end;
end;

procedure TfmManPe4.FormShow(Sender: TObject);
begin
  inherited;
  
  PedRe3.Close;
  PedRe3.Params[0].AsInteger := fmManPed.PedResId_PedRes.Value;
  PedRe3.Open;

  if fmManPed.PedResQtiRe3.Value = 0 then begin

     PedRe3.Append;

     EdPraRe3.SetFocus;

     end
  else
     grRe3.SetFocus;
     
end;

procedure TfmManPe4.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe4.PedRe3NewRecord(DataSet: TDataSet);
begin

  PedRe3.DisableControls;

  PedRe3Id_PedRes.Value := fmManPed.PedResId_PedRes.Value;
  
  PedRe3Id_PedRe3.Value := fmManPed.PedResSeqRe3.Value + 1;

  PedRe3PraRe3.Value := 0;
  PedRe3NroRe3.Value := fmManPed.PedResQtiRe3.Value + 1;

  PedRe3.EnableControls;

  EdPraRe3.Enabled := True;

  EdPraRe3.Font.Style := [];

  EdPraRe3.SetFocus;

end;

procedure TfmManPe4.EdPraRe3Exit(Sender: TObject);
begin
  inherited;
  if (Tecla = 'UP') then begin

     if fmManPed.PedResQtiRe3.Value > 0 then begin

        EdPraRe3.Enabled := False;

        EdPraRe3.Font.Style := [fsBold];

        if PedRe3.State <> dsBrowse then
           PedRe3.CancelUpdates
        else
           begin

           if not PedRe3.Bof then PedRe3.Prior;

        end;

        grRe3.SetFocus;

        end
     else
        EdPraRe3.SetFocus;

  end;
end;

procedure TfmManPe4.grRe3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroRe3    : integer;
  Id_PedRe2 : integer;
begin
  if key = 13 then begin {Tecla - ENTER}

     if PedRe3Id_PedRe3.Value > 0 then begin
     
        EdPraRe3.Enabled := True;

        EdPraRe3.Font.Style := [];

        EdPraRe3.SetFocus;

     end;
  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if PedRe3NroRe3.Value = fmManPed.PedResQtiRe3.Value then PedRe3.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if PedRe3Id_PedRe3.Value > 0 then begin

        Id_PedRe2 := fmManPed.PedRe2Id_PedRe2.Value;
        
        NroRe3 := PedRe3NroRe3.Value;

        PedRe3.Delete;

        with PedRe3 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedRe3.State <> dsBrowse then PedRe3.CancelUpdates;

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
        
        if NroRe3 < fmManPed.PedResQtiRe3.Value then
           PedRe3.Locate('Id_PedRes;NroRe3',VarArrayOf([PedRe3Id_PedRes.Value,NroRe3]),[LoPartialKey])
        else
           begin

           if fmManPed.PedResQtiRe3.Value = 0 then
              PedRe3.Append
           else
              PedRe3.Last;

        end;
     end;
  end;
end;

procedure TfmManPe4.EdPraRe3KeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPe4.bRetornar;
begin

  if PedRe3.State <> dsBrowse then PedRe3.CancelUpdates;

  close;

end;

procedure TfmManPe4.bContinuar;
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

procedure TfmManPe4.Panel1Exit(Sender: TObject);
var
  NroRe3    : integer;
  Id_PedRe2 : integer;
begin
  if PedRe3.State <> dsBrowse then begin

     Id_PedRe2 := fmManPed.PedRe2Id_PedRe2.Value;
     
     if PedRe3PraRe3.Value >= 0 then begin

        if PedRe3.State = dsInsert then begin

           with PedRe3 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedRe3.State = dsBrowse then PedRe3.Edit;

                   EdPraRe3.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedRe3.Close;
           PedRe3.Open;

           fmManPed.PedRes.Close;
           fmManPed.PedRes.Open;

           PedRe3.Append;

           EdPraRe3.SetFocus;

           end
        else
           begin

           NroRe3 := PedRe3NroRe3.Value;

           with PedRe3 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedRe3.State = dsBrowse then PedRe3.Edit;

                   EdPraRe3.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedRe3.Close;
           PedRe3.Open;

           PedRe3.Locate('Id_PedRes;NroRe3',VarArrayOf([PedRe3Id_PedRes.Value,NroRe3]),[LoPartialKey]);

           fmManPed.PedRes.Close;
           fmManPed.PedRes.Open;

           fmManPed.PedRe2.Close;
           fmManPed.PedRe2.Open;

           fmManPed.PedRe2.Locate('Id_PedRe2',Id_PedRe2,[LoPartialKey]);

           if PedRe3NroRe3.Value = fmManPed.PedResQtiRe3.Value then
              PedRe3.Append
           else
              begin

              EdPraRe3.Enabled := False;

              EdPraRe3.Font.Style := [fsBold];

              grRe3.SetFocus;

           end;
        end;

        end
     else
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPraRe3);
        
     end
  else
     begin

     EdPraRe3.Enabled := False;

     EdPraRe3.Font.Style := [fsBold];

     grRe3.SetFocus;

  end;
end;

end.
