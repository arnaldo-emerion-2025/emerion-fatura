unit ManRp5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  AlignEdit, FShowPadrao, dxDBColorCurrencyEdit, dxColorEdit;

type
  TfmManPCl = class(TfmShowPadrao)
    FinPCl: TwwQuery;
    DsPCl: TwwDataSource;
    grPCl1: TdxDBGraphicEdit;
    PaintBox: TPaintBox;
    grPCl: ThGrid;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    UpPCl: TUpdateSQL;
    Label28: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Panel3: TPanel;
    pnTotCre: TAlignEdit;
    Panel4: TPanel;
    pnLanCre: TAlignEdit;
    Panel5: TPanel;
    pnSldCre: TAlignEdit;
    dxDBCurrencyEdit10: TdxDBColorCurrencyEdit;
    dxDBCurrencyEdit9: TdxDBColorCurrencyEdit;
    dxDBCurrencyEdit12: TdxDBColorCurrencyEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Panel2: TPanel;
    EdUsaCde: TdxDBColorCurrencyEdit;
    Label9: TLabel;
    Label10: TLabel;
    FinPClID_FINCDE: TIntegerField;
    FinPClNOMCLI: TStringField;
    FinPClVALCDE: TFloatField;
    FinPClUSACDE: TFloatField;
    FinPClSLDCDE: TFloatField;
    FinPClFLGCDE: TStringField;
    FinPClOBSCDE: TStringField;
    EdNomCli: TdxColorEdit;
    FinPClSEQPMO: TStringField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grPClKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure EdNomCliChange(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPCl: TfmManPCl;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPg1, ManPcp;

{$R *.DFM}

procedure TfmManPCl.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if FinPCl.State <> dsBrowse then FinPCl.CancelUpdates;

     if EdUsaCde.Focused then begin

        EdUsaCde.Enabled := False;

        grPCl.SetFocus;

        end
     else
        close;
        
  end;

  if key = 123 then begin

     if FinPCl.State = dsBrowse then begin

        if fmManPg1.FinPmoSldCre.Value = 0 then begin

           if fMsg('Confirma o pagamento da parcela ?','O') then begin

              fmManPg1.FinPmo.Edit;

              fmManPg1.FinPmoSitPmo.Value := 'Pago';

              with fmManPg1.FinPmo do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if fmManPg1.FinPmo.State <> dsBrowse then fmManPg1.FinPmo.CancelUpdates;

                      grPCl.SetFocus;
                      
                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              fmManPCp.Finalizar := 'S';

              Close;

           end;

           end
        else
           begin

           if fmManPg1.FinPmoTotCre.Value > fmManPg1.FinPmoLanCre.Value then
              fmsgErro('Créditos lançados acima do valor a utilizar para o pagamento.',Nil)
           else
              fmsgErro('Créditos lançados menor que o valor a utilizar para o pagamento.',Nil);

        end;
     end;
  end;
end;

procedure TfmManPCl.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPCl.grPClKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  SeqPTo, Id_FinCde : integer;
begin
  if key = 13 then begin {Tecla - ENTER}

     if FinPClValCde.Value > 0 then begin

        EdUsaCde.Enabled := True;

        EdUsaCde.SetFocus;

     end;
  end;

  if Key = 32 then begin

     if FinPClValCde.Value > 0 then begin

        Id_FinCde := FinPClId_FinCde.Value;

        if FinPClSldCde.Value > 0 then begin

           SeqPTo := fmManPg1.FinPToSeqPTo.Value;

           FinPCl.Edit;

           FinPClFlgCde.Value := 'Sim';

           FinPClUsaCde.Value := FinPClValCde.Value;

           with FinPCl do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if FinPCl.State <> dsBrowse then FinPCl.CancelUpdates;

                   fmManPg1.FinPmo.Close;
                   fmManPg1.FinPmo.Open;

                   fmManPg1.FinPto.Close;
                   fmManPg1.FinPto.Open;

                   fmManPg1.FinPTo.Locate('SeqPmo;SeqPTo',VarArrayOf([fmManPg1.FinPToSeqPmo.Value,SeqPTo]), [loPartialKey]);

                   FinPCl.Close;
                   FinPCl.Open;

                   FinPCl.Locate('Id_FinCde',Id_FinCde,[LoPartialKey]);

                   grPCl.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           FinPCl.Close;
           FinPCl.Open;

           fmManPg1.FinPmo.Close;
           fmManPg1.FinPmo.Open;

           fmManPg1.FinPto.Close;
           fmManPg1.FinPto.Open;

           fmManPg1.FinPTo.Locate('SeqPmo;SeqPTo',VarArrayOf([fmManPg1.FinPToSeqPmo.Value,SeqPTo]), [loPartialKey]);

           pnTotCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoTotCre.Value);
           pnLanCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoLanCre.Value);
           pnSldCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoSldCre.Value);

           FinPCl.Locate('Id_FinCde',Id_FinCde,[LoPartialKey]);

           end
        else
           begin

           SeqPTo := fmManPg1.FinPToSeqPTo.Value;

           FinPCl.Edit;

           FinPClUsaCde.Value := 0;

           FinPClFlgCde.Value := 'Nao';

           with FinPCl do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if FinPCl.State <> dsBrowse then FinPCl.CancelUpdates;

                   FinPCl.Close;
                   FinPCl.Open;

                   fmManPg1.FinPmo.Close;
                   fmManPg1.FinPmo.Open;

                   fmManPg1.FinPto.Close;
                   fmManPg1.FinPto.Open;

                   fmManPg1.FinPTo.Locate('SeqPmo;SeqPTo',VarArrayOf([fmManPg1.FinPToSeqPmo.Value,SeqPTo]), [loPartialKey]);

                   FinPCl.Locate('Id_FinCde',Id_FinCde,[LoPartialKey]);

                   grPCl.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           FinPCl.Close;
           FinPCl.Open;

           fmManPg1.FinPmo.Close;
           fmManPg1.FinPmo.Open;

           fmManPg1.FinPto.Close;
           fmManPg1.FinPto.Open;

           fmManPg1.FinPTo.Locate('SeqPmo;SeqPTo',VarArrayOf([fmManPg1.FinPToSeqPmo.Value,SeqPTo]), [loPartialKey]);

           pnTotCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoTotCre.Value);
           pnLanCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoLanCre.Value);
           pnSldCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoSldCre.Value);

           FinPCl.Locate('Id_FinCde',Id_FinCde,[LoPartialKey]);

        end;
     end;
  end;
end;

procedure TfmManPCl.FormShow(Sender: TObject);
begin
  inherited;

  pnTotCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoTotCre.Value);
  pnLanCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoLanCre.Value);
  pnSldCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoSldCre.Value);

  grPCl.SetFocus;

end;

procedure TfmManPCl.Panel2Exit(Sender: TObject);
var
  SeqPto,Id_FinCde : integer;
begin
  if FinPCl.State <> dsBrowse then begin

     Id_FinCde := FinPClId_FinCde.Value;

     SeqPTo := fmManPg1.FinPToSeqPTo.Value;

     if FinPClUsaCde.Value > 0 then FinPClFlgCde.Value := 'Sim';

     with FinPCl do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if FinPCl.State = dsBrowse then FinPCl.Edit;

             EdUsaCde.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     FinPCl.Close;
     FinPCl.Open;

     fmManPg1.FinPmo.Close;
     fmManPg1.FinPmo.Open;

     fmManPg1.FinPto.Close;
     fmManPg1.FinPto.Open;

     fmManPg1.FinPTo.Locate('SeqPmo;SeqPTo',VarArrayOf([fmManPg1.FinPToSeqPmo.Value,SeqPTo]), [loPartialKey]);

     pnTotCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoTotCre.Value);
     pnLanCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoLanCre.Value);
     pnSldCre.Text := FormatFloat('###,###,##0.00',fmManPg1.FinPmoSldCre.Value);

     FinPCl.Locate('Id_FinCde',Id_FinCde,[LoPartialKey]);

     EdUsaCde.Enabled := False;

     grPCl.SetFocus;

     end
  else
     begin

     EdUsaCde.Enabled := False;

     grPCl.SetFocus;

  end;
end;

procedure TfmManPCl.EdNomCliChange(Sender: TObject);
begin
  inherited;
  FinPCl.Locate('NOMCLI',EdNomCli.Text,[LoPartialKey]);
end;

end.
