unit PsqCot;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao, dxDBColorEdit, dxDBColorCurrencyEdit,
  dxDBColorDateEdit, Menus, dxDBEdtr, dxDBColorLookupEdit, Buttons;

type
  TfmPsqCot = class(TfmShowPadrao)
    PedGr4: TwwQuery;
    DsGr4: TwwDataSource;
    PedGr4ID_PEDGR4: TIntegerField;
    PedGr4ID_PEDGR2: TIntegerField;
    PedGr4QTPGR4: TFloatField;
    PedGr4DTEENT: TDateTimeField;
    PedGr4QTDMIN: TFloatField;
    PedGr4VLUGR4: TFloatField;
    PedGr4DS1GR4: TFloatField;
    PedGr4DS2GR4: TFloatField;
    PedGr4DS3GR4: TFloatField;
    PedGr4DS4GR4: TFloatField;
    PedGr4DS5GR4: TFloatField;
    PedGr4PERIPI: TFloatField;
    PedGr4PERICM: TFloatField;
    PedGr4VALFIN: TFloatField;
    PedGr4PERMVA: TFloatField;
    PedGr4TOTICM: TFloatField;
    PedGr4TOTSUB: TFloatField;
    PedGr4NOMCON: TStringField;
    PedGr4APEFOR: TStringField;
    PedGr4ID_CMPPFO: TIntegerField;
    PedGr4ULTCMP: TFloatField;
    PedGr4ULTQTD: TFloatField;
    PedGr4DULCMP: TDateTimeField;
    Panel2: TPanel;
    Label28: TLabel;
    Label17: TLabel;
    Label21: TLabel;
    EdJurGr4: TdxDBColorCurrencyEdit;
    EdDs1Gr4: TdxDBColorCurrencyEdit;
    Label32: TLabel;
    EdDs2Gr4: TdxDBColorCurrencyEdit;
    Label33: TLabel;
    EdDs3Gr4: TdxDBColorCurrencyEdit;
    Label35: TLabel;
    EdDs4Gr4: TdxDBColorCurrencyEdit;
    Label36: TLabel;
    EdVluGr4: TdxDBColorCurrencyEdit;
    Label14: TLabel;
    Label38: TLabel;
    EdPerIcm: TdxDBColorCurrencyEdit;
    EdPerIpi: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    Label42: TLabel;
    EdPerMva: TdxDBColorCurrencyEdit;
    Label37: TLabel;
    EdAcrGr4: TdxDBColorCurrencyEdit;
    Label19: TLabel;
    EdObsGr4: TdxDBColorEdit;
    Label27: TLabel;
    Label18: TLabel;
    EdValFin: TdxDBColorCurrencyEdit;
    EdQtpGr4: TdxDBColorCurrencyEdit;
    Label3: TLabel;
    EdQtdMin: TdxDBColorCurrencyEdit;
    Label4: TLabel;
    EdNomCon: TdxDBColorEdit;
    PedGr4JURGR4: TFloatField;
    PedGr4ACRGR4: TFloatField;
    PedGr4MARKUP: TFloatField;
    PedGr4OBSGR4: TStringField;
    UpGr4: TUpdateSQL;
    PaintBox: TPaintBox;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label12: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    dxDBEdit28: TdxDBColorEdit;
    grGr4: ThGrid;
    PaintBox1: TPaintBox;
    PedGr4PRAENT: TIntegerField;
    EdPraEnt: TdxDBColorCurrencyEdit;
    Label22: TLabel;
    EdDteEnt: TdxDBColorDateEdit;
    EdDs5Gr4: TdxDBColorCurrencyEdit;
    Label23: TLabel;
    PedGr4QTDREQ: TFloatField;
    Label25: TLabel;
    EdFlgCst: TdxDBCheckEdit;
    Label29: TLabel;
    PedGr4QTAREQ: TFloatField;
    PedGr4QTNREQ: TFloatField;
    PedGr4SLDREQ: TFloatField;
    PedGr4FLGCST: TStringField;
    PedGr4FLGATU: TStringField;
    PedGr4DTEATU: TDateTimeField;
    PedGr4HREATU: TStringField;
    PedGr4CODUSU: TIntegerField;
    pnTexto: TLabel;
    PedGr4FLGCOT: TStringField;
    Label31: TLabel;
    EdQtdReq: TdxDBColorCurrencyEdit;
    pnQtdCot: TLabel;
    PopupMenu1: TPopupMenu;
    IncluirNovo1: TMenuItem;
    ExcluirAmbiente1: TMenuItem;
    PedGr4CODFOR: TIntegerField;
    PedGr4FLGINT: TStringField;
    PedGr4NROGR4: TIntegerField;
    PedGr4CODPFO: TStringField;
    FinFor: TQuery;
    FinForAPEFOR: TStringField;
    FinForCODFOR: TIntegerField;
    DsFinFor: TwwDataSource;
    Label24: TLabel;
    EdCodFor: TdxDBColorEdit;
    bPsqFor: TSpeedButton;
    CbApeFor: TdxDBColorLookupEdit;
    quSql: TwwQuery;
    procedure incluir;
    procedure excluir;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdVluGr4Exit(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure EdNomConEnter(Sender: TObject);
    procedure EdPraEntExit(Sender: TObject);
    procedure grGr4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grGr4Enter(Sender: TObject);
    procedure DsGr4DataChange(Sender: TObject; Field: TField);
    procedure IncluirNovo1Click(Sender: TObject);
    procedure ExcluirAmbiente1Click(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure EdCodForKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodForEnter(Sender: TObject);
    procedure EdCodForExit(Sender: TObject);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure PedGr4NewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    pSaida : string;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqCot: TfmPsqCot;

implementation

uses Bbfuncao, ManGDB, dxDemoUtils, Bbgeral, Bbmensag, ManGc1, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmPsqCot.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if PedGr4.State <> dsBrowse then begin

        if EdCodFor.Enabled then begin

           pSaida := 'Nao';

           bPsqFor.Enabled := False;

           EdCodFor.Enabled := False;

           pSaida := 'Sim';

        end;

        PedGr4.CancelUpdates;

        grGr4.SetFocus;

        end
     else
        close;

  end;      
end;

procedure TfmPsqCot.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCot.FormShow(Sender: TObject);
begin
  inherited;
  grGr4.SetFocus;
end;

procedure TfmPsqCot.EdVluGr4Exit(Sender: TObject);
begin
  inherited;

  PedGr4ValFin.Value := PedGr4VluGr4.Value;

  if PedGr4VluGr4.Value > 0 then begin

     PedGr4TotIcm.Value := 0;
     PedGr4TotSub.Value := 0;

     if PedGr4Ds1Gr4.Value > 0 then PedGr4ValFin.Value := fRound(PedGr4ValFin.Value - ((PedGr4ValFin.Value * PedGr4Ds1Gr4.Value)/100),4);
     if PedGr4Ds2Gr4.Value > 0 then PedGr4ValFin.Value := fRound(PedGr4ValFin.Value - ((PedGr4ValFin.Value * PedGr4Ds2Gr4.Value)/100),4);
     if PedGr4Ds3Gr4.Value > 0 then PedGr4ValFin.Value := fRound(PedGr4ValFin.Value - ((PedGr4ValFin.Value * PedGr4Ds3Gr4.Value)/100),4);
     if PedGr4Ds4Gr4.Value > 0 then PedGr4ValFin.Value := fRound(PedGr4ValFin.Value - ((PedGr4ValFin.Value * PedGr4Ds4Gr4.Value)/100),4);

     if PedGr4JurGr4.Value > 0 then PedGr4ValFin.Value := fRound(PedGr4ValFin.Value + ((PedGr4ValFin.Value * PedGr4JurGr4.Value)/100),4);
     if PedGr4AcrGr4.Value > 0 then PedGr4ValFin.Value := fRound(PedGr4ValFin.Value + ((PedGr4ValFin.Value * PedGr4AcrGr4.Value)/100),4);

     if PedGr4PerIcm.Value > 0 then PedGr4TotIcm.Value := fRound((PedGr4ValFin.Value * PedGr4PerIcm.Value)/100,4);

     if PedGr4PerIpi.Value > 0 then PedGr4ValFin.Value := fRound(PedGr4ValFin.Value + ((PedGr4ValFin.Value * PedGr4PerIpi.Value)/100),4);

     if PedGr4PerMva.Value > 0 then begin

        PedGr4TotSub.Value := fRound(PedGr4ValFin.Value + ((PedGr4ValFin.Value * PedGr4PerMva.Value)/100),4);

        PedGr4TotSub.Value := fRound(((PedGr4TotSub.Value * PedGr4PerIcm.Value)/100) - PedGr4TotIcm.Value,4);

        PedGr4ValFin.Value := fRound(PedGr4ValFin.Value + PedGr4TotSub.Value,4);

     end
  end;
end;

procedure TfmPsqCot.Panel2Exit(Sender: TObject);
var
  Id_PedGr2,Id_PedGr4 : integer;
begin
  inherited;
  if pSaida = 'Sim' then begin
  
     if PedGr4.State <> dsBrowse then begin

        if PedGr4QtpGr4.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdQtpGr4);
        if PedGr4VluGr4.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdVluGr4);

        Id_PedGr4 := PedGr4Id_PedGr4.Value;

        Id_PedGr2 := fmManGc1.PedGr2Id_PedGr2.Value;

        if PedGr4.State = dsInsert then begin

           if Trim(PedGr4CodPfo.Value) = '' then
              PedGr4CodPfo.Value := fmManGc1.PedGr2CodClp.Value+ '-' +
                                    fmManGc1.PedGr2CodGru.Value+ '.' +
                                    fmManGc1.PedGr2CodSub.Value+ '.' +
                                    fmManGc1.PedGr2CodPro.Value;

           with PedGr4 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedGr4.State = dsBrowse then PedGr4.Edit;

                   EdCodFor.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedGr4.Close;
           PedGr4.Open;

           fmManGc1.PedGer.Close;
           fmManGc1.PedGer.Open;

           fmManGc1.PedGr2.Close;
           fmManGc1.PedGr2.Open;

           fmManGc1.PedGr2.Locate('Id_PedGr2',Id_PedGr2,[LoPartialKey]);

           PedGr4.Append;

           EdCodFor.SetFocus;

           end
        else
           begin

           Id_PedGr4 := PedGr4Id_PedGr4.Value;

           with PedGr4 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedGr4.State <> dsBrowse then PedGr4.CancelUpdates;

                   if EdCodFor.Enabled then
                      EdCodFor.SetFocus
                   else
                      EdNomCon.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedGr4.Close;
           PedGr4.Open;

           fmManGc1.PedGer.Close;
           fmManGc1.PedGer.Open;

           fmManGc1.PedGr2.Close;
           fmManGc1.PedGr2.Open;

           fmManGc1.PedGr2.Locate('Id_PedGr2',Id_PedGr2,[LoPartialKey]);

           PedGr4.Locate('Id_PedGr4',Id_PedGr4,[LoPartialKey]);

           if PedGr4NroGr4.Value = fmManGc1.PedGr2QtiGr4.Value then
              PedGr4.Append
           else
              begin

              PedGr4.Next;

              EdCodFor.Enabled := False;

              grGr4.SetFocus;

           end;
        end;
     end;
  end;   
end;

procedure TfmPsqCot.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmPsqCot.EdNomConEnter(Sender: TObject);
begin
  inherited;

  pnTexto.Caption := '';

  if PedGr4.State = dsBrowse then PedGr4.Edit;

end;

procedure TfmPsqCot.EdPraEntExit(Sender: TObject);
begin
  inherited;
  PedGr4DteEnt.Value := fmManGc1.PedGerDteGer.Value + PedGr4PraEnt.Value;
end;

procedure TfmPsqCot.grGr4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  Id_PedGr2,Id_PedGr4 : integer;
begin
  inherited;
  if key = 32 then begin

     if PedGr4Id_PedGr4.Value > 0 then begin

        Id_PedGr2 := fmManGc1.PedGr2Id_PedGr2.Value;
        
        Id_PedGr4 := PedGr4Id_PedGr4.Value;
     
        PedGr4.Edit;

        if PedGr4FlgCot.Value = 'Nao' then
           PedGr4FlgCot.Value := 'Sim'
        else
           PedGr4FlgCot.Value := 'Nao';

        with PedGr4 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedGr4.State <> dsBrowse then PedGr4.CancelUpdates;

                grGr4.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedGr4.Close;
        PedGr4.Open;

        fmManGc1.PedGer.Close;
        fmManGc1.PedGer.Open;

        fmManGc1.PedGr2.Close;
        fmManGc1.PedGr2.Open;

        fmManGc1.PedGr2.Locate('Id_PedGr2',Id_PedGr2,[LoPartialKey]);

        PedGr4.Locate('Id_PedGr4',Id_PedGr4,[LoPartialKey]);

     end;
  end;

  if key = 40 then begin // Tecla - Seta para Baixo //

     if PedGr4NroGr4.Value = fmManGc1.PedGr2QtiGr4.Value then incluir;

  end;

  if key = 46 then excluir // Tecla - DEL //

end;

procedure TfmPsqCot.grGr4Enter(Sender: TObject);
begin
  inherited;
  pnTexto.Caption := 'Barra de espaço-Confirmar envio de cotação para o fornecedor ENTER-Alterar informações da Cotação';
end;

procedure TfmPsqCot.DsGr4DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if FinFor.Params[0].AsInteger <> PedGr4CodFor.Value then begin

     FinFor.Close;
     FinFor.Params[0].AsInteger := PedGr4CodFor.Value;
     FinFor.Open;

  end;

  if PedGr4FlgCot.Value = 'Sim' then begin

     if not EdNomCon.Enabled then begin

        EdNomCon.Enabled := True;
        EdQtpGr4.Enabled := True;
        EdQtdMin.Enabled := True;
        EdPraEnt.Enabled := True;
        EdVluGr4.Enabled := True;
        EdDs1Gr4.Enabled := True;
        EdDs2Gr4.Enabled := True;
        EdDs3Gr4.Enabled := True;
        EdDs4Gr4.Enabled := True;
        EdDs5Gr4.Enabled := True;
        EdJurGr4.Enabled := True;
        EdAcrGr4.Enabled := True;
        EdPerIcm.Enabled := True;
        EdPerIpi.Enabled := True;
        EdPerMva.Enabled := True;
        EdObsGr4.Enabled := True;
        EdFlgCst.Enabled := True;
        EdQtdReq.Enabled := True;

     end;
     
     end
  else
     begin

     if EdNomCon.Enabled then begin

        EdNomCon.Enabled := False;
        EdQtpGr4.Enabled := False;
        EdQtdMin.Enabled := False;
        EdPraEnt.Enabled := False;
        EdVluGr4.Enabled := False;
        EdDs1Gr4.Enabled := False;
        EdDs2Gr4.Enabled := False;
        EdDs3Gr4.Enabled := False;
        EdDs4Gr4.Enabled := False;
        EdDs5Gr4.Enabled := False;
        EdJurGr4.Enabled := False;
        EdAcrGr4.Enabled := False;
        EdPerIcm.Enabled := False;
        EdPerIpi.Enabled := False;
        EdPerMva.Enabled := False;
        EdObsGr4.Enabled := False;
        EdFlgCst.Enabled := False;
        EdQtdReq.Enabled := False;

     end;
  end;
end;

procedure TfmPsqCot.IncluirNovo1Click(Sender: TObject);
begin
  inherited;
  incluir;
end;

procedure TfmPsqCot.ExcluirAmbiente1Click(Sender: TObject);
begin
  inherited;
  excluir;
end;

procedure TfmPsqCot.incluir;
begin
  PedGr4.Append;
end;

procedure TfmPsqCot.excluir;
var
  NroGr4,Id_PedGr2 : integer;
begin
  if PedGr4Id_PedGr4.Value > 0 then begin

     if PedGr4FlgInt.Value = 'Nao' then begin

        NroGr4 := PedGr4NroGr4.Value;

        Id_PedGr2 := fmManGc1.PedGr2Id_PedGr2.Value;

        PedGr4.Delete;

        with PedGr4 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedGr4.State <> dsBrowse then PedGr4.CancelUpdates;

                PedGr4.Close;
                PedGr4.Open;

                fmManGc1.PedGer.Close;
                fmManGc1.PedGer.Open;

                fmManGc1.PedGr2.Close;
                fmManGc1.PedGr2.Open;

                fmManGc1.PedGr2.Locate('Id_PedGr2',Id_PedGr2,[LoPartialKey]);

                PedGr4.Locate('Id_PedGr2;NroGr4',VarArrayOf([fmManGc1.PedGr2Id_PedGr2.Value,NroGr4]),[LoPartialKey]);

                grGr4.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedGr4.Close;
        PedGr4.Open;

        fmManGc1.PedGer.Close;
        fmManGc1.PedGer.Open;

        fmManGc1.PedGr2.Close;
        fmManGc1.PedGr2.Open;

        fmManGc1.PedGr2.Locate('Id_PedGr2',Id_PedGr2,[LoPartialKey]);

        if NroGr4 < fmManGc1.PedGr2QtiGr4.Value then
           PedGr4.Locate('Id_PedGr2;NroGr4',VarArrayOf([fmManGc1.PedGr2Id_PedGr2.Value,NroGr4]),[LoPartialKey])
        else
           begin

           if fmManGc1.PedGr2QtiGr4.Value = 0 then
              PedGr4.Append
           else
              PedGr4.Last;

        end;

        end
     else
        fmsgErro('Operação não pode ser realizada. Lançamento realizado pelo sistema.',Nil);

  end;
end;

procedure TfmPsqCot.bPsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        PedGr4CodFor.Value := fmAuxIni.CodFor;

        EdCodFor.Text := IntToStr(PedGr4CodFor.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if PedGr4CodFor.Value > 0 then EdNomCon.SetFocus;

end;

procedure TfmPsqCot.EdCodForKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmPsqCot.EdCodForEnter(Sender: TObject);
begin
  inherited;
  pnTexto.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmPsqCot.EdCodForExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not grGr4.Focused then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedGr4.State <> dsBrowse then begin

           if PedGr4CodFor.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinFor.CodFor,'+
                           '        FinFor.ApeFor '+
                           ' From FinFor'+
                           ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(PedGr4CodFor.Value));
                   Open;

              end;

              if quSql.FieldbyName('CodFor').AsInteger <> PedGr4CodFor.Value then
                 fmsgErro('Fornecedor Informado não localizado.',EdCodFor);

              end
           else
              fmsgErro('Campo de preenchimento obrigátorio não informado.',EdCodFor);

        end;
     end;

     end
  else
     begin

     if Tecla = 'UP' then begin

        if fmManGc1.PedGr2QtiGr4.Value > 0 then begin

           bPsqFor.Enabled := False;

           EdCodFor.Enabled := False;

           if PedGr4.State <> dsBrowse then
              PedGr4.CancelUpdates
           else
              begin

              if not PedGr4.BOF then PedGr4.Prior;

           end;

           grGr4.SetFocus;

           end
        else
           EdCodFor.SetFocus;

     end;
  end;
end;

procedure TfmPsqCot.EdCodForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           PedGr4CodFor.Value := fmAuxIni.CodFor;

           EdCodFor.Text := IntToStr(PedGr4CodFor.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if PedGr4CodFor.Value > 0 then EdNomCon.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           PedGr4CodFor.Value := fmAuxPsq.CodFor;

           EdCodFor.Text := IntToStr(PedGr4CodFor.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedGr4CodFor.Value > 0 then EdNomCon.SetFocus;

  end;
end;

procedure TfmPsqCot.PedGr4NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedGr4.Disablecontrols;

  PedGr4Id_PedGr4.Value := 1;

  PedGr4Id_PedGr2.Value := fmManGc1.PedGr2Id_PedGr2.Value;

  PedGr4QtpGr4.Value := 0;
  PedGr4PraEnt.Value := 0;
  PedGr4QtdMin.Value := 0;
  PedGr4VluGr4.Value := 0;
  PedGr4Ds1Gr4.Value := 0;
  PedGr4Ds2Gr4.Value := 0;
  PedGr4Ds3Gr4.Value := 0;
  PedGr4Ds4Gr4.Value := 0;
  PedGr4Ds5Gr4.Value := 0;
  PedGr4JurGr4.Value := 0;
  PedGr4AcrGr4.Value := 0;
  PedGr4PerIpi.Value := 0;
  PedGr4PerIcm.Value := 0;
  PedGr4PerMva.Value := 0;
  PedGr4TotIcm.Value := 0;
  PedGr4TotSub.Value := 0;
  PedGr4Markup.Value := 0;
  PedGr4ValFin.Value := 0;
  PedGr4FlgAtu.Value := ' ';
  PedGr4FlgInt.Value := 'Nao';
  PedGr4FlgCst.Value := 'Nao';
  PedGr4FlgCot.Value := 'Sim';
  PedGr4CodUsu.Value := GUsu_Id;
  PedGr4DteEnt.Value := fmManGc1.PedGerDteGer.Value;
  PedGr4NroGr4.Value := fmManGc1.PedGr2QtiGr4.Value + 1;

  PedGr4.Enablecontrols;

  bPsqFor.Enabled := True;

  EdCodFor.Enabled := True;
  EdNomCon.Enabled := True;
  EdQtpGr4.Enabled := True;
  EdQtdMin.Enabled := True;
  EdPraEnt.Enabled := True;
  EdVluGr4.Enabled := True;
  EdDs1Gr4.Enabled := True;
  EdDs2Gr4.Enabled := True;
  EdDs3Gr4.Enabled := True;
  EdDs4Gr4.Enabled := True;
  EdDs5Gr4.Enabled := True;
  EdJurGr4.Enabled := True;
  EdAcrGr4.Enabled := True;
  EdPerIcm.Enabled := True;
  EdPerIpi.Enabled := True;
  EdPerMva.Enabled := True;
  EdObsGr4.Enabled := True;
  EdFlgCst.Enabled := True;

  EdCodFor.SetFocus;

end;

procedure TfmPsqCot.FormCreate(Sender: TObject);
begin
  inherited;
  pSaida := 'Sim';
end;

end.
