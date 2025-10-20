unit ManPe6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, ppBands, ppClass, ppStrtch, ppMemo, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe,
  FShowPadrao, dxDBColorDateEdit, dxDBColorEdit, dxDBColorCurrencyEdit;

type
  TfmManPe6 = class(TfmShowPadrao)
    CmpPe5: TwwQuery;
    DsPe5: TwwDataSource;
    FinFor: TwwQuery;
    PaintBox: TPaintBox;
    Bevel1: TBevel;
    Label10: TLabel;
    grPe5: ThGrid;
    dxDBEdit29: TdxDBColorEdit;
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
    bRetornar: TSpeedButton;
    bContinuar: TSpeedButton;
    Label4: TLabel;
    dbLanNot: TdxDBColorCurrencyEdit;
    EdLanNot: TAlignEdit;
    Label5: TLabel;
    Label9: TLabel;
    dbSldNot: TdxDBColorCurrencyEdit;
    EdSldNot: TAlignEdit;
    Panel1: TPanel;
    EdDtvPe5: TdxDBColorDateEdit;
    EdValPe5: TdxDBColorCurrencyEdit;
    EdCodFor: TdxDBColorEdit;
    EdApeFor: TdxDBColorEdit;
    CmpPe5CODFOR: TIntegerField;
    CmpPe5DTVPE5: TDateTimeField;
    CmpPe5VALPE5: TFloatField;
    CmpPe5NROPE5: TIntegerField;
    FinForCODFOR: TIntegerField;
    FinForAPEFOR: TStringField;
    CmpPe5APEFOR: TStringField;
    CmpPe5FLGPAG: TStringField;
    CmpPe5PRAPE5: TIntegerField;
    EdPraPe5: TdxDBColorEdit;
    Label6: TLabel;
    CmpPe5ID_CMPPE5: TIntegerField;
    CmpPe5ID_CMPPED: TIntegerField;
    CmpPe5FLGATU: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
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
    procedure bContinuarClick(Sender: TObject);
    procedure DsPe5DataChange(Sender: TObject; Field: TField);
    procedure EdPraPe5Exit(Sender: TObject);
    procedure EdPraPe5KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
    pSaida : string;
  public
    {Public declarations}
  end;

var
  fmManPe6: TfmManPe6;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManPed, AuxIni, AuxPsq,
     ManPe3, ManE01, ManE02;

{$R *.DFM}

procedure TfmManPe6.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     pSaida := 'Sim';

     if CmpPe5.State <> dsBrowse then CmpPe5.CancelUpdates;

     if EdPraPe5.Enabled then begin

        EdPraPe5.Enabled := False;     
        EdDtvPe5.Enabled := False;
        EdValPe5.Enabled := False;
        EdCodFor.Enabled := False;

        pSaida := 'Nao';
        
        grPe5.SetFocus;

        end
     else
        begin

        pSaida := 'Nao';

        bRetornar.OnClick(Sender);

     end;   
  end;

  if key = 123 then begin

     if grPe5.Focused then bContinuar.OnClick(Sender);

  end;
end;

procedure TfmManPe6.FormShow(Sender: TObject);
begin
  inherited;
  
  EdTotGer.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);
  EdLanNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedLanGer.Value);
  EdSldNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedSldGer.Value);

  CmpPe5.Close;
  CmpPe5.Params[0].AsInteger := fmManPed.CmpPedId_CmpPed.Value;
  CmpPe5.Open;

  FinFor.Close;
  FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
  FinFor.Open;
  
  if fmManPed.CmpPedQtpPed.Value > 0 then
     grPe5.SetFocus
  else
     begin

     CmpPe5.Append;

     EdPraPe5.SetFocus;

  end;
end;

procedure TfmManPe6.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManPe6.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe6.FormDestroy(Sender: TObject);
begin
  inherited;
  Screen.OnActiveControlChange := nil;
end;

procedure TfmManPe6.EdCodForExit(Sender: TObject);
begin
  inherited;
  if pSaida = 'Nao' then begin

     if not EdCodFor.Focused then begin

        if CmpPe5CodFor.Value = 0 then fmsgErro('Fornecedor Informado não Encontrado.',EdCodFor);

     end;
  end;
end;

procedure TfmManPe6.grPe5KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroPe5 : integer;
begin
  if key = 13 then begin {Tecla - ENTER}

     if CmpPe5Id_CmpPe5.Value > 0 then begin

        CmpPe5.Edit;

        EdPraPe5.Enabled := True;
        EdDtvPe5.Enabled := True;
        EdValPe5.Enabled := True;
        EdCodFor.Enabled := True;

        EdPraPe5.SetFocus;

     end;
  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if CmpPe5NroPe5.Value = fmManPed.CmpPedQtpPed.Value then begin

        if fmManPed.CmpPedSldGer.Value > 0 then CmpPe5.Append;

     end;
  end;

  if key = 46 then begin {Tecla - DEL}

     if CmpPe5Id_CmpPe5.Value > 0 then begin

        NroPe5 := CmpPe5NroPe5.Value;

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

        fmManPed.CmpPed.Close;
        fmManPed.CmpPed.Open;

        EdTotGer.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);
        EdLanNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedLanGer.Value);
        EdSldNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedSldGer.Value);

        if NroPe5 < fmManPed.CmpPedQtpPed.Value then
           CmpPe5.Locate('Id_CmpPed;NroPe5',VarArrayOf([CmpPe5Id_CmpPed.Value,NroPe5]),[LoPartialKey])
        else
           begin

           if fmManPed.CmpPedQtpPed.Value = 0 then
              CmpPe5.Append
           else
              CmpPe5.Last;

        end;
     end;
  end;
end;

procedure TfmManPe6.EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManPe6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if CmpPe5.State <> dsBrowse then CmpPe5.CancelUpdates;
end;

procedure TfmManPe6.Panel1Exit(Sender: TObject);
var
  NroPe5 : integer;
begin
  if pSaida = 'Nao' then begin
  
     if CmpPe5.State <> dsBrowse then begin

        if CmpPe5DtvPe5.Value > fmManPed.CmpPedDpePed.Value then
           CmpPe5PraPe5.Value := StrToInt(FloatToStr(CmpPe5DtvPe5.Value - fmManPed.CmpPedDpePed.Value))
        else
           CmpPe5PraPe5.Value := 0;

        if CmpPe5CodFor.Value = 0 then fmsgErro('Fornecedor Informado não Encontrado.',EdCodFor);

        try

           if CmpPe5.State = dsInsert then begin

              with CmpPe5 do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if CmpPe5.State <> dsBrowse then CmpPe5.Edit;

                      EdPraPe5.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              CmpPe5.Close;
              CmpPe5.Open;

              fmManPed.CmpPed.Close;
              fmManPed.CmpPed.Open;

              EdTotGer.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);
              EdLanNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedLanGer.Value);
              EdSldNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedSldGer.Value);

              CmpPe5.Append;

              EdPraPe5.SetFocus;

              end
           else
              begin

              NroPe5 := CmpPe5NroPe5.Value;

              with CmpPe5 do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if CmpPe5.State = dsBrowse then CmpPe5.Edit;

                      EdPraPe5.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              CmpPe5.Close;
              CmpPe5.Open;

              fmManPed.CmpPed.Close;
              fmManPed.CmpPed.Open;

              EdTotGer.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);
              EdLanNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedLanGer.Value);
              EdSldNot.Text := FormatFloat('###,###,##0.00',fmManPed.CmpPedSldGer.Value);

              CmpPe5.Locate('Id_CmpPed;NroPe5',VarArrayOf([fmManPed.CmpPedId_CmpPed.Value,NroPe5]),[LoPartialKey]);

              if CmpPe5NroPe5.Value = fmManPed.CmpPedQtpPed.Value then
                 CmpPe5.Append
              else
                 begin

                 CmpPe5.Next;

                 EdPraPe5.Enabled := False;
                 EdDtvPe5.Enabled := False;
                 EdValPe5.Enabled := False;
                 EdCodFor.Enabled := False;

                 grPe5.SetFocus;

              end;
           end;

        except

           CmpPe5.Edit;

           EdPraPe5.SetFocus;

        end;

        end
     else
        begin

        EdPraPe5.Enabled := False;
        EdDtvPe5.Enabled := False;
        EdValPe5.Enabled := False;
        EdCodFor.Enabled := False;

        grPe5.SetFocus;

     end;
  end;   
end;

procedure TfmManPe6.EdDtvPe5Exit(Sender: TObject);
begin
  if pSaida = 'Nao' then begin
  
     if CmpPe5.State <> dsBrowse then begin
  
        if CmpPe5DtvPe5.Value > fmManPed.CmpPedDpePed.Value then
           CmpPe5PraPe5.Value := StrToInt(FloatToStr(CmpPe5DtvPe5.Value - fmManPed.CmpPedDpePed.Value))
        else
           CmpPe5PraPe5.Value := 0;

     end;
  
     if CmpPe5PraPe5.Value > 0 then
        EdPraPe5.Text := IntToStr(CmpPe5PraPe5.Value)
     else
        EdPraPe5.Text := '0';

  end;      
end;

procedure TfmManPe6.CmpPe5NewRecord(DataSet: TDataSet);
begin

  CmpPe5.DisableControls;

  CmpPe5Id_CmpPe5.Value := 0;
  CmpPe5Id_CmpPed.Value := fmManPed.CmpPedId_CmpPed.Value;

  CmpPe5PraPe5.Value := 0;
  CmpPe5FlgAtu.Value := ' ';
  CmpPe5FlgPag.Value := 'Nao';
  CmpPe5ValPe5.Value := fmManPed.CmpPedSldGer.Value;
  CmpPe5CodFor.Value := fmManPed.CmpPedCodFor.Value;
  CmpPe5DtvPe5.Value := fmManPed.CmpPedDpePed.Value;
  CmpPe5NroPe5.Value := fmManPed.CmpPedQtpPed.Value + 1;

  CmpPe5.EnableControls;

  FinFor.Close;
  FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
  FinFor.Open;

  EdPraPe5.Text := '0';

  EdDtvPe5.Text := DateToStr(CmpPe5DtvPe5.Value);

  EdValPe5.Value := CmpPe5ValPe5.Value;
  
  EdPraPe5.Enabled := True;
  EdDtvPe5.Enabled := True;
  EdValPe5.Enabled := True;
  EdCodFor.Enabled := True;

  EdPraPe5.SetFocus;

end;

procedure TfmManPe6.bContinuarClick(Sender: TObject);
var
  sContinuar : string;
begin

  ActiveControl := nil;

  sContinuar := 'N';

  if fmManPed.CmpPedFlgOco.Value = 'Sim' then begin

     try

        fmManPe3 := TfmManPe3.Create(Self);
        fmManPe3.ShowModal;

        sContinuar := fmManPe3.sContinuar;

     finally

        FreeAndNil(fmManPe3);

     end;

     end
  else
     sContinuar := 'S';

  if sContinuar = 'S' then begin

     if fMsg('Confirma Pedido de Compra ?','O') then begin

        fmManPed.CmpPed.Edit;

        if (Trim(fmManPed.CmpPedSitPed.Value) = 'Rejeitado') or
           (Trim(fmManPed.CmpPedSitPed.Value) = 'Nao Concluido') or
           (Trim(fmManPed.CmpPedSitPed.Value) = 'Processo de Alteracao') then
           fmManPed.CmpPedSitPed.Value := 'Concluido'
        else
           fmManPed.CmpPedFlgAtu.Value := '*';

        with fmManPed.CmpPed do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                fmManPed.Finalizar := 'N';

                if fmManPed.CmpPed.State <> dsBrowse then fmManPed.CmpPed.CancelUpdates;

                fmManPed.CmpPed.Edit;

                grPe5.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManPed.CmpPed.Close;
        fmManPed.CmpPed.Open;

        fmManPed.CmpPe2.Close;
        fmManPed.CmpPe2.Open;

        fmManPed.Finalizar := 'S';

        if fMsg('Confirma a Impressão da via Interna do Pedido de Compra ?','O') then begin

           try

              fmManE01 := TfmManE01.Create(Self);

              fmManE01.CmpPed.Close;
              fmManE01.CmpPed.Params[0].AsInteger := fmManPed.CmpPedId_CmpPed.Value;
              fmManE01.CmpPed.Open;

              fmManE01.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE01);

           end;
        end;

        if fMsg('Confirma a Impressão da via Fornecedor do Pedido de Compra ?','O') then begin

           try

              fmManE02 := TfmManE02.Create(Self);

              fmManE02.CmpPed.Close;
              fmManE02.CmpPed.Params[0].AsInteger := fmManPed.CmpPedId_CmpPed.Value;
              fmManE02.CmpPed.Open;

              fmManE02.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE02);

           end;
        end;

        Close;

     end;
  end;
end;

procedure TfmManPe6.DsPe5DataChange(Sender: TObject; Field: TField);
begin
  if grPe5.Focused then begin

     if FinFor.Params[0].AsInteger <> CmpPe5CodFor.Value then begin

        FinFor.Close;
        FinFor.Params[0].AsInteger := CmpPe5CodFor.Value;
        FinFor.Open;

     end;
  end;
end;

procedure TfmManPe6.EdPraPe5Exit(Sender: TObject);
var
  Saida : Boolean;
begin
  if pSaida = 'Nao' then begin

     if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

        if not grPe5.Focused then
           saida := True
        else
           saida := False;

        if saida then begin

           if CmpPe5.State <> dsBrowse then
              CmpPe5DtvPe5.Value := fmManPed.CmpPedDpePed.Value + CmpPe5PraPe5.Value;

        end;
     
        end
     else
        begin

        if (Tecla = 'UP') then begin

           if fmManPed.CmpPedQtpPed.Value > 0 then begin

              EdPraPe5.Enabled := False;
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
              EdPraPe5.SetFocus;

        end;
     end;
  end;   
end;

procedure TfmManPe6.EdPraPe5KeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPe6.FormCreate(Sender: TObject);
begin
  inherited;
  pSaida := 'Nao';
end;

end.
