unit ManPra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, ppBands, ppClass, ppStrtch, ppMemo, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  FShowPadrao, dxDBColorMemo, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManPra = class(TfmShowPadrao)
    CmpPe5: TwwQuery;
    DsPe5: TwwDataSource;
    FinFor: TwwQuery;
    PaintBox: TPaintBox;
    Bevel1: TBevel;
    Label10: TLabel;
    grPe5: ThGrid;
    dbPanel3: TdxDBColorEdit;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DsFor: TwwDataSource;
    UpPe5: TUpdateSQL;
    grPro: TdxDBGraphicEdit;
    quSQL: TwwQuery;
    EdTotGer: TAlignEdit;
    dbTotGer: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    Label4: TLabel;
    dbLanNot: TdxDBColorCurrencyEdit;
    EdLanNot: TAlignEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    dbSldNot: TdxDBColorCurrencyEdit;
    EdSldNot: TAlignEdit;
    Label12: TLabel;
    Label13: TLabel;
    Panel1: TPanel;
    EdDtvPe5: TdxDBColorDateEdit;
    EdValPe5: TdxDBColorCurrencyEdit;
    EdCodFor: TdxDBColorEdit;
    EdApeFor: TdxDBColorEdit;
    CmpPe5CODEMP: TIntegerField;
    CmpPe5DTEPED: TDateTimeField;
    CmpPe5NUMPED: TIntegerField;
    CmpPe5SEQPE5: TIntegerField;
    CmpPe5CODFOR: TIntegerField;
    CmpPe5DTVPE5: TDateTimeField;
    CmpPe5VALPE5: TFloatField;
    CmpPe5NROPE5: TIntegerField;
    FinForCODFOR: TIntegerField;
    FinForAPEFOR: TStringField;
    CmpPe5APEFOR: TStringField;
    CmpPe5FLGPAG: TStringField;
    EdFlgPag: TdxDBCheckEdit;
    Label6: TLabel;
    CmpPe5FLGINT: TStringField;
    Label11: TLabel;
    CmpPed: TwwQuery;
    CmpPedCODEMP: TIntegerField;
    CmpPedDTEPED: TDateTimeField;
    CmpPedNUMPED: TIntegerField;
    CmpPedPREPED: TIntegerField;
    CmpPedDPEPED: TDateTimeField;
    DsPed: TDataSource;
    UpPed: TUpdateSQL;
    Label14: TLabel;
    Bevel2: TBevel;
    Label18: TLabel;
    Label19: TLabel;
    EdPrePed: TdxDBColorEdit;
    EdDpePed: TdxDBColorDateEdit;
    pnSemana: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdObsPed: TdxDBColorMemo;
    Label63: TLabel;
    Label62: TLabel;
    Label45: TLabel;
    Label61: TLabel;
    Label46: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label17: TLabel;
    dbTotCxa: TdxDBColorCurrencyEdit;
    pnTotCxa: TAlignEdit;
    dbTotLiq: TdxDBColorCurrencyEdit;
    pnTotLiq: TAlignEdit;
    dbTotCub: TdxDBColorCurrencyEdit;
    pnTotCub: TAlignEdit;
    dbTotBrt: TdxDBColorCurrencyEdit;
    pnTotBrt: TAlignEdit;
    Label20: TLabel;
    CmpPedOBSPED: TStringField;
    CmpPedTOTCXA: TFloatField;
    CmpPedTOTCUB: TFloatField;
    CmpPedTOTLIQ: TFloatField;
    CmpPedTOTBRT: TFloatField;
    CmpPedTOTGER: TFloatField;
    CmpPedLANGER: TFloatField;
    CmpPedSLDGER: TFloatField;
    CmpPedQTPPED: TIntegerField;
    CmpPedSQPPED: TIntegerField;
    Label23: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    EdCodFor1: TdxDBColorEdit;
    EdCodPfa: TdxDBColorEdit;
    bpsqPfa: TSpeedButton;
    bpsqFor: TSpeedButton;
    pnApeFor1: TPanel;
    pnNomPfa: TPanel;
    EdNomPfa: TdxDBColorEdit;
    EdApeFor1: TdxDBColorEdit;
    pnUfePed: TPanel;
    EdUfePed: TdxDBColorEdit;
    Label33: TLabel;
    Label53: TLabel;
    CmpPedCODFOR: TIntegerField;
    CmpPedCODPFA: TStringField;
    CmpPedTIPPFA: TStringField;
    CmpPedUFEPED: TStringField;
    CmpPedCONPLC: TIntegerField;
    CmpPedSUBPLC: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdCodForExit(Sender: TObject);
    procedure grPe5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel1Exit(Sender: TObject);
    procedure EdDtvPe5Exit(Sender: TObject);
    procedure CmpPe5NewRecord(DataSet: TDataSet);
    procedure DsPe5DataChange(Sender: TObject; Field: TField);
    procedure EdPrePedExit(Sender: TObject);
    procedure EdDpePedExit(Sender: TObject);
    procedure EdPrePedKeyPress(Sender: TObject; var Key: Char);
    procedure bpsqForClick(Sender: TObject);
    procedure EdCodFor1Exit(Sender: TObject);
    procedure EdCodFor1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodPfaExit(Sender: TObject);
    procedure EdCodPfaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bpsqPfaClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPra: TfmManPra;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, AuxIni, AuxPsq, PsqPfa;

{$R *.DFM}

procedure TfmManPra.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;  
  if key = 27 then begin

     with CmpPed do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if CmpPed.State = dsBrowse then CmpPed.Edit;

             grPe5.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     if CmpPe5.State <> dsBrowse then CmpPe5.CancelUpdates;

     if EdFlgPag.Enabled then begin

        EdFlgPag.Enabled := False;
        EdDtvPe5.Enabled := False;
        EdValPe5.Enabled := False;
        EdCodFor.Enabled := False;

        CmpPed.Edit;

        grPe5.SetFocus;

        end
     else
        close;

  end;
end;

procedure TfmManPra.FormShow(Sender: TObject);
begin
  inherited;
  
  pnTotCxa.Text := FormatFloat('###,###,##0.0000',CmpPedTotCxa.Value);
  pnTotCub.Text := FormatFloat('###,###,##0.0000',CmpPedTotCub.Value);
  pnTotLiq.Text := FormatFloat('###,###,##0.0000',CmpPedTotLiq.Value);
  pnTotBrt.Text := FormatFloat('###,###,##0.0000',CmpPedTotBrt.Value);

  EdTotGer.Text := FormatFloat('###,###,##0.00',CmpPedTotGer.Value);
  EdLanNot.Text := FormatFloat('###,###,##0.00',CmpPedLanGer.Value);
  EdSldNot.Text := FormatFloat('###,###,##0.00',CmpPedSldGer.Value);

  FinFor.Close;
  FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
  FinFor.Open;

  pnSemana.Caption := fDSemana(CmpPedDpePed.Value);

  with quSql,SQL do begin

       Close;
       Text := ' Select ApeFor,SigUfe From FinFor Where FinFor.CodFor = '''+ IntToStr( CmpPedCodFor.Value ) +'''';
       Open;

       pnUfePed.Caption  := FieldbyName('SigUfe').AsString;
       pnApeFor1.Caption := FieldbyName('ApeFor').AsString;

  end; 

  with quSQL,SQL do begin

       Close;
       Text := ' Select DscPfa From EstPfa'+
               ' Where EstPfa.TipPfa = :TipPfa'+
               '   and EstPfa.CodPfa = :CodPfa';

       with Params do begin

            Params[0].AsString := 'Entrada';
            Params[1].AsString := CmpPedCodPfa.Value;

       end;

       Open;

       pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

  end;

  CmpPed.Edit;

  EdCodFor1.SetFocus;

end;

procedure TfmManPra.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPra.FormDestroy(Sender: TObject);
begin
  inherited;
  Screen.OnActiveControlChange := nil;
end;

procedure TfmManPra.EdCodForExit(Sender: TObject);
begin
  inherited;
  if not EdCodFor.Focused then begin

     FinFor.Close;
     FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
     FinFor.Open;

     if FinForCodFor.Value = 0 then fmsgErro('Fornecedor Informado não Encontrado.',EdCodFor);

  end;
end;

procedure TfmManPra.grPe5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
SeqPe5 : integer;
begin
  if key = 13 then begin {Tecla - ENTER}

     CmpPe5.Edit;

     EdFlgPag.Enabled := True;
     EdDtvPe5.Enabled := True;
     EdValPe5.Enabled := True;
     EdCodFor.Enabled := True;

     EdFlgPag.SetFocus;

  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if CmpPe5NroPe5.Value = CmpPedQtpPed.Value then CmpPe5.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if CmpPe5CodEmp.Value > 0 then begin

        with CmpPe5 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpPe5.State <> dsBrowse then CmpPe5.CancelUpdates;

                grPe5.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        SeqPe5 := CmpPe5SeqPe5.Value;

        CmpPe5.Delete;

        with CmpPe5 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpPe5.State <> dsBrowse then CmpPe5.CancelUpdates;

                grPe5.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        CmpPe5.Close;
        CmpPe5.Open;

        CmpPed.Close;
        CmpPed.Open;

        CmpPed.Edit;

        EdTotGer.Text := FormatFloat('###,###,##0.00',CmpPedTotGer.Value);
        EdLanNot.Text := FormatFloat('###,###,##0.00',CmpPedLanGer.Value);
        EdSldNot.Text := FormatFloat('###,###,##0.00',CmpPedSldGer.Value);

        if SeqPe5 < CmpPedQtpPed.Value then
           CmpPe5.Locate('CodEmp;DtePed;NumPed;SeqPe5',VarArrayOf([CmpPe5CodEmp.Value,CmpPe5DtePed.Value,CmpPe5NumPed.Value,SeqPe5]),[LoPartialKey])
        else
           begin

           if CmpPedQtpPed.Value = 0 then
              CmpPe5.Append
           else
              CmpPe5.Last;

        end;
     end;
  end;
end;

procedure TfmManPra.EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then CmpPe5CodFor.Value := fmAuxIni.CodFor;

     finally

        FreeAndNil(fmAuxIni);

     end;

     FinFor.Close;
     FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
     FinFor.Open;

     EdCodFor.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then CmpPe5CodFor.Value := fmAuxPsq.CodFor;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     FinFor.Close;
     FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
     FinFor.Open;

     EdCodFor.SetFocus;

  end;
end;

procedure TfmManPra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if CmpPe5.State <> dsBrowse then CmpPe5.CancelUpdates;
end;

procedure TfmManPra.Panel1Exit(Sender: TObject);
var
SeqPe5 : integer;
begin
  if CmpPe5.State <> dsBrowse then begin

     FinFor.Close;
     FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
     FinFor.Open;

     if FinForCodFor.Value = 0 then fmsgErro('Fornecedor Informado não Encontrado.',EdCodFor);

     if CmpPe5ValPe5.Value = 0 then fmsgErro('Valor da Parcela para o Vencimento não Informado',EdValPe5);

     if CmpPe5.State = dsInsert then begin

        with CmpPed do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpPed.State = dsBrowse then CmpPed.Edit;

                EdFlgPag.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        with CmpPe5 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpPe5.State <> dsBrowse then CmpPe5.Edit;

                EdFlgPag.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        CmpPe5.Close;
        CmpPe5.Open;

        CmpPed.Close;
        CmpPed.Open;

        CmpPed.Edit;

        EdTotGer.Text := FormatFloat('###,###,##0.00',CmpPedTotGer.Value);
        EdLanNot.Text := FormatFloat('###,###,##0.00',CmpPedLanGer.Value);
        EdSldNot.Text := FormatFloat('###,###,##0.00',CmpPedSldGer.Value);

        CmpPe5.Append;

        EdFlgPag.SetFocus;

        end
     else
        begin

        SeqPe5 := CmpPe5SeqPe5.Value;

        with CmpPed do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpPed.State = dsBrowse then CmpPed.Edit;

                EdFlgPag.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        with CmpPe5 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpPe5.State = dsBrowse then CmpPe5.Edit;

                EdFlgPag.SetFocus;
                   
                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        CmpPe5.Close;
        CmpPe5.Open;

        CmpPed.Close;
        CmpPed.Open;

        CmpPed.Edit;

        EdTotGer.Text := FormatFloat('###,###,##0.00',CmpPedTotGer.Value);
        EdLanNot.Text := FormatFloat('###,###,##0.00',CmpPedLanGer.Value);
        EdSldNot.Text := FormatFloat('###,###,##0.00',CmpPedSldGer.Value);

        CmpPe5.Locate('CodEmp;DtePed;NumPed;SeqPe5',VarArrayOf([CmpPedCodEmp.Value,CmpPedDtePed.Value,CmpPedNumPed.Value,SeqPe5]),[LoPartialKey]);

        if CmpPe5NroPe5.Value = CmpPedQtpPed.Value then
           CmpPe5.Append
        else
           begin

           CmpPe5.Next;

           EdFlgPag.Enabled := False;
           EdDtvPe5.Enabled := False;
           EdValPe5.Enabled := False;
           EdCodFor.Enabled := False;

           grPe5.SetFocus;

        end;
     end;

     end
  else
     begin

     EdFlgPag.Enabled := False;
     EdDtvPe5.Enabled := False;
     EdValPe5.Enabled := False;
     EdCodFor.Enabled := False;

     grPe5.SetFocus;

  end;
end;

procedure TfmManPra.EdDtvPe5Exit(Sender: TObject);
begin
  if (Tecla = 'UP') then begin

     if CmpPedQtpPed.Value > 0 then begin

        EdFlgPag.Enabled := False;
        EdDtvPe5.Enabled := False;
        EdValPe5.Enabled := False;
        EdCodFor.Enabled := False;

        if CmpPe5.State <> dsBrowse then
           CmpPe5.CancelUpdates
        else
           begin

           if not CmpPe5.Bof then CmpPe5.Prior;

        end;

        grPe5.Enabled := True;

        grPe5.SetFocus;

        end
     else
        EdFlgPag.SetFocus;
  end;
end;

procedure TfmManPra.CmpPe5NewRecord(DataSet: TDataSet);
begin

  CmpPe5.DisableControls;

  CmpPe5ValPe5.Value := 0;
  CmpPe5FlgInt.Value := ' ';
  CmpPe5FlgPag.Value := 'Nao';
  CmpPe5DtvPe5.Value := CmpPedDpePed.Value;
  CmpPe5CodEmp.Value := CmpPedCodEmp.Value;
  CmpPe5DtePed.Value := CmpPedDtePed.Value;
  CmpPe5NumPed.Value := CmpPedNumPed.Value;
  CmpPe5SeqPe5.Value := CmpPedSqpPed.Value + 1;
  CmpPe5NroPe5.Value := CmpPedQtpPed.Value + 1;

  CmpPe5.EnableControls;

  FinFor.Close;
  FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
  FinFor.Open;

  EdDtvPe5.Text := DateToStr(CmpPe5DtvPe5.Value);

  EdFlgPag.Enabled := True;
  EdDtvPe5.Enabled := True;
  EdValPe5.Enabled := True;
  EdCodFor.Enabled := True;

  EdFlgPag.SetFocus;

end;

procedure TfmManPra.DsPe5DataChange(Sender: TObject; Field: TField);
begin
  if grPe5.Focused then begin

     if FinFor.Params[0].AsInteger <> CmpPe5CodFor.Value then begin

        FinFor.Close;
        FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
        FinFor.Open;

     end;
  end;
end;

procedure TfmManPra.EdPrePedExit(Sender: TObject);
begin

  CmpPedDpePed.Value := CmpPedDtePed.Value + CmpPedPrePed.Value;

  EdDpePed.Date := CmpPedDpePed.Value;

  pnSemana.Caption := fDSemana(CmpPedDpePed.Value);

end;

procedure TfmManPra.EdDpePedExit(Sender: TObject);
begin
  if CmpPedDpePed.Value >= CmpPedDtePed.Value then begin

     if CmpPedDpePed.Value > CmpPedDtePed.Value then
        CmpPedPrePed.Value := StrToInt(FloatToStr(CmpPedDpePed.Value - CmpPedDtePed.Value))
     else
        CmpPedPrePed.Value := 0;

     if CmpPedDpePed.Value > 0 then
        EdPrePed.Text := IntToStr(CmpPedPrePed.Value)
     else
        EdPrePed.Text := '0';

     pnSemana.Caption := fDSemana(CmpPedDpePed.Value);

     end
  else
     fmsgErro('Data Prevista para o Faturamento Inferior a Data de Emissao do Pedido.',EdDpePed);
end;

procedure TfmManPra.EdPrePedKeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPra.bpsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        CmpPedCodFor.Value := fmAuxIni.CodFor;
        CmpPedUfePed.Value := fmAuxIni.SigUfe;
        CmpPedConPlc.Value := fmAuxIni.ConPlc;
        CmpPedSubPlc.Value := fmAuxIni.SubPlc;

        EdCodFor1.Text := IntToStr(CmpPedCodFor.Value);

        pnApeFor1.Caption := fmAuxIni.NomFor;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodFor1.SetFocus;

end;

procedure TfmManPra.EdCodFor1Exit(Sender: TObject);
var
LocPfa : string;
begin
  inherited;
  if CmpPedCodFor.Value > 0 then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select * From FinFor Where FinFor.CodFor = '''+ IntToStr( CmpPedCodFor.Value ) +'''';
          Open;

     end;

     if quSql.FieldbyName('CodFor').AsInteger = CmpPedCodFor.Value then begin

        pnUfePed.Caption  := quSQL.FieldbyName('SigUfe').AsString;        
        pnApeFor1.Caption := quSQL.FieldbyName('ApeFor').AsString;

        CmpPedUfePed.Value := quSQL.FieldbyName('SigUfe').AsString;
        CmpPedConPlc.Value := quSQL.FieldbyName('ConPlc').AsInteger;
        CmpPedSubPlc.Value := quSQL.FieldbyName('SubPlc').AsInteger;

        if Trim( quSQL.FieldbyName('CodPfa').AsString ) <> '' then begin

           CmpPedCodPfa.Value := quSQL.FieldbyName('CodPfa').AsString;
           CmpPedTipPfa.Value := quSQL.FieldbyName('TipPfa').AsString;

           if CmpPedUfePed.Value = 'EX' then
              LocPfa := 'Importacao ou Exportacao'
           else
              begin

              if CmpPedUfePed.Value <> GUfeEmp then
                 LocPfa := 'Outros Estados'
              else
                 LocPfa := 'Mesmo Estado'

           end;

           with quSql,SQL do begin

                Close;
                Text := ' Select DscPfa From EstPfa '+
                        ' Where TipPfa = :TipPfa'+
                        '   and CodPfa = :CodPfa'+
                        '   and LocPfa = :LocPfa';

                with Params do begin

                     Params[0].AsString  := CmpPedTipPfa.Value;
                     Params[1].AsString  := CmpPedCodPfa.Value;
                     Params[2].AsString  := LocPfa;

                end;

                Open;

                pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

           end;
        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg From FinSub'+
                     ' Where FinSub.ConPlc = :ConPlc'+
                     '   and FinSub.SubPlc = :SubPlc';

             with Params do begin

                  Params[0].AsInteger := CmpPedConPlc.Value;
                  Params[1].AsInteger := CmpPedSubPlc.Value;

             end;

             Open;

             if quSql.FieldbyName('Reg').AsInteger = 0 then fmsgErro('Conta e Sub-Conta do Plano de Contas Informada para o Fornecedor não Encontrada',EdCodFor1);

        end;

        end
     else
        begin

        pnUfePed.Caption  := '';
        pnApeFor1.Caption := '';

        fmsgErro('Fornecedor Informado não Encontrado',EdCodFor1);

     end;

     end
  else
     begin

     pnUfePed.Caption  := '';
     pnApeFor1.Caption := '';

     fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodFor1);

  end;
end;

procedure TfmManPra.EdCodFor1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           CmpPedCodFor.Value := fmAuxIni.CodFor;
           CmpPedUfePed.Value := fmAuxIni.SigUfe;
           CmpPedConPlc.Value := fmAuxIni.ConPlc;
           CmpPedSubPlc.Value := fmAuxIni.SubPlc;

           EdCodFor1.Text := IntToStr(CmpPedCodFor.Value);

           pnApeFor1.Caption := fmAuxIni.NomFor;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
     
     if CmpPedCodFor.Value > 0 then EdPrePed.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);
        fmAuxPsq.TipoPesq := 'F';
        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           CmpPedCodFor.Value := fmAuxPsq.CodFor;
           CmpPedUfePed.Value := fmAuxPsq.SigUfe;
           CmpPedConPlc.Value := fmAuxPsq.ConPlc;
           CmpPedSubPlc.Value := fmAuxPsq.SubPlc;

           EdCodFor1.Text := IntToStr(CmpPedCodFor.Value);

           pnApeFor1.Caption := fmAuxPsq.NomFor;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CmpPedCodFor.Value > 0 then EdPrePed.SetFocus;

  end;
end;

procedure TfmManPra.EdCodPfaExit(Sender: TObject);
var
LocPfa : string;
begin
  inherited;
  if Trim( CmpPedCodPfa.Value ) <> '' then begin

     if CmpPedUfePed.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if CmpPedUfePed.Value <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPfa From EstPfa '+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  '   and EstPfa.CodPfa = :CodPfa'+
                  '   and EstPfa.LocPfa = :LocPfa'+
                  '   and ( EstPfa.ModPfa = '''+ 'Compras' +''' or EstPfa.ModPfa = '''+ 'Transferencias' +''')';

          with Params do begin

               Params[0].AsString := CmpPedTipPfa.Value;
               Params[1].AsString := CmpPedCodPfa.Value;
               Params[2].AsString := LocPfa;

          end;

          Open;

     end;

     if Trim( quSql.FieldbyName('DscPfa').AsString ) <> '' then
        pnNomPfa.Caption := quSql.FieldbyName('DscPfa').AsString
     else
        begin

        pnNomPfa.Caption := '';

        fmsgErro('Padrão de Faturamento Informado não Encontrado',EdCodPfa);

     end;

     end
  else
     begin

     pnNomPfa.Caption := '';

     fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodPfa);

  end;
end;

procedure TfmManPra.EdCodPfaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
LocPfa : string;
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if CmpPedUfePed.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if CmpPedUfePed.Value <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     try

        fmPsqPfa := TfmPsqPfa.Create(Self);

        with fmPsqPfa.EstPfa,SQL do begin

             Close;
             Text := ' Select EstPfa.CodPfa,'+
                     '        EstPfa.TipPfa,'+
                     '        EstPfa.DscPfa,'+
                     '        EstPfa.DsrPfa,'+
                     '        EstPfa.CodCf1,'+
                     '        EstPfa.CodCf2,'+
                     '        EstPfa.IntFin,'+
                     '        EstPfa.AtuEst,'+
                     '        EstPfa.ConSum,'+
                     '        EstPfa.ModPfa'+
                     ' From EstPfa'+
                     ' Where EstPfa.TipPfa = :TipPfa'+
                     '   and EstPfa.LocPfa = :LocPfa'+
                     '   and ( EstPfa.ModPfa = '''+ 'Compras' +''' or EstPfa.ModPfa = '''+ 'Transferencias' +''')'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString := 'Entrada';
                  Params[1].AsString := LocPfa;

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

            CmpPedCodPfa.Value := fmPsqPfa.CodPfa;

            pnNomPfa.Caption := fmPsqPfa.NomPfa;

            EdCodPfa.Text := CmpPedCodPfa.Value;

        end;

     finally

        FreeAndNil(fmPsqPfa);

     end;
     
     EdCodPfa.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     if CmpPedUfePed.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if CmpPedUfePed.Value <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'P';

        fmAuxPsq.LocPfa := LocPfa;
        fmAuxPsq.TipPfa := 'Entrada';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodPfa ) <> '' then begin

           CmpPedCodPfa.Value := fmAuxPsq.CodPfa;

           pnNomPfa.Caption := fmAuxPsq.NomPfa;

           EdCodPfa.Text := CmpPedCodPfa.Value;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdCodPfa.SetFocus;

  end;
end;

procedure TfmManPra.bpsqPfaClick(Sender: TObject);
var
LocPfa : string;
begin
  inherited;

  if CmpPedUfePed.Value = 'EX' then
     LocPfa := 'Importacao ou Exportacao'
  else
     begin

     if CmpPedUfePed.Value <> GUfeEmp then
        LocPfa := 'Outros Estados'
     else
        LocPfa := 'Mesmo Estado'

  end;

  try

     fmPsqPfa := TfmPsqPfa.Create(Self);

     with fmPsqPfa.EstPfa,SQL do begin

          Close;
          Text := ' Select EstPfa.CodPfa,'+
                  '        EstPfa.TipPfa,'+
                  '        EstPfa.DscPfa,'+
                  '        EstPfa.DsrPfa,'+
                  '        EstPfa.CodCf1,'+
                  '        EstPfa.CodCf2,'+
                  '        EstPfa.IntFin,'+
                  '        EstPfa.AtuEst,'+
                  '        EstPfa.ConSum,'+
                  '        EstPfa.ModPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  '   and EstPfa.LocPfa = :LocPfa'+
                  '   and ( EstPfa.ModPfa = '''+ 'Compras' +''' or EstPfa.ModPfa = '''+ 'Transferencias' +''')'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString := 'Entrada';
               Params[1].AsString := LocPfa;

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

         CmpPedCodPfa.Value := fmPsqPfa.CodPfa;

         pnNomPfa.Caption := fmPsqPfa.NomPfa;

         EdCodPfa.Text := CmpPedCodPfa.Value;

     end;

  finally

     FreeAndNil(fmPsqPfa);

  end;
  
  EdCodPfa.SetFocus;

end;

end.
