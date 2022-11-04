unit ManNt4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManNt4 = class(TfmShowPadrao)
    FinBan: TwwQuery;
    PaintBox: TPaintBox;
    Label10: TLabel;
    dbPro: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DsBan: TwwDataSource;
    FinBanCODBAN: TIntegerField;
    FinBanNOMBAN: TStringField;
    grPro: TdxDBGraphicEdit;
    quSQL: TwwQuery;
    EdTotDup: TAlignEdit;
    dbTotDup: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    bRetornar: TSpeedButton;
    bContinuar: TSpeedButton;
    Label4: TLabel;
    dbLanDup: TdxDBColorCurrencyEdit;
    EdLanDup: TAlignEdit;
    Label5: TLabel;
    Label9: TLabel;
    dbSldDup: TdxDBColorCurrencyEdit;
    EdSldDup: TAlignEdit;
    grPe4: ThGrid;
    FatPe4: TwwQuery;
    DsPe4: TwwDataSource;
    UpPe4: TUpdateSQL;
    Panel1: TPanel;
    EdPraPe4: TdxDBColorEdit;
    EdDtvPe4: TdxDBColorDateEdit;
    EdVlpPe4: TdxDBColorCurrencyEdit;
    EdCodBan: TdxDBColorEdit;
    Label6: TLabel;
    EdNomBan: TdxDBColorEdit;
    FatPe4CODEMP: TIntegerField;
    FatPe4DTERES: TDateTimeField;
    FatPe4NUMRES: TIntegerField;
    FatPe4SEQLIB: TIntegerField;
    FatPe4SEQFAT: TIntegerField;
    FatPe4SEQPE4: TIntegerField;
    FatPe4PRAPE4: TIntegerField;
    FatPe4DTVPE4: TDateTimeField;
    FatPe4CODBAN: TIntegerField;
    FatPe4VLPPE4: TFloatField;
    FatPe4NROPE4: TIntegerField;
    FatPe4FLGINT: TStringField;
    FatPe4NOMBAN: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPraPe4Exit(Sender: TObject);
    procedure grPe4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPraPe4KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCodBanExit(Sender: TObject);
    procedure EdDtvPe4Exit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FatPe4NewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
    pSaida : string;
  public
    {Public declarations}
  end;

var
  fmManNt4: TfmManNt4;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManNot, PsqBan, AuxPsq,
     ManImp;

{$R *.DFM}

procedure TfmManNt4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     psaida := 'Sim';

     if FatPe4.State <> dsBrowse then FatPe4.CancelUpdates;

     if EdPraPe4.Enabled then begin

        EdPraPe4.Enabled := False;
        EdDtvPe4.Enabled := False;
        EdVlpPe4.Enabled := False;
        EdCodBan.Enabled := False;

        psaida := 'Nao';
        
        grPe4.SetFocus;

        end
     else
        begin

        psaida := 'Nao';

        bRetornar.OnClick(Sender);

     end;   
  end;

  if key = 123 then begin

     if grPe4.Focused then bContinuar.OnClick(Sender);

  end;
end;

procedure TfmManNt4.FormShow(Sender: TObject);
begin
  inherited;
  
  EdTotDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedTotDup.Value);
  EdLanDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedLanDup.Value);
  EdSldDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedSldDup.Value);

  FatPe4.Close;
  FatPe4.Params[0].AsInteger  := fmManNot.FatPedCodEmp.Value;
  FatPe4.Params[1].AsDateTime := fmManNot.FatPedDteRes.Value;
  FatPe4.Params[2].AsInteger  := fmManNot.FatPedNumRes.Value;
  FatPe4.Params[3].AsInteger  := fmManNot.FatPedSeqLib.Value;
  FatPe4.Params[4].AsInteger  := fmManNot.FatPedSeqFat.Value;
  FatPe4.Open;

  if fmManNot.FatPedQtpDup.Value > 0 then
     grPe4.SetFocus
  else
     begin

     FatPe4.Append;

     EdPraPe4.SetFocus;

  end;
end;

procedure TfmManNt4.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNt4.bContinuarClick(Sender: TObject);
begin

  if FatPe4.State <> dsBrowse then FatPe4.CancelUpdates;

  if fmManNot.FatPedLanDup.Value <> fmManNot.FatPedTotDup.Value then begin

     if fmManNot.FatPedLanDup.Value < fmManNot.FatPedTotDup.Value then
        fmsgErro('Total de Boletos é Menor que o Valor a ser Lançado.',Nil)
     else
        fmsgErro('Total de Boletos é Maior que o Total a ser Lançado.',Nil);

     end
  else
     begin

     if FatPe4.State <> dsBrowse then FatPe4.CancelUpdates;

     if fMsg('Imprime Documento Fiscal ?','S') then begin

        try

           fmManImp := TfmManImp.Create(Self);

           fmManImp.ShowModal;

        finally

           FreeAndNil(fmManImp);

        end;

        if fmManNot.Finalizar = 'S' then
           Close
        else
           grPe4.SetFocus;

     end;
  end;
end;

procedure TfmManNt4.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNt4.EdPraPe4Exit(Sender: TObject);
begin
  if psaida = 'Nao' then begin

     if (Tecla <> 'ESC') and (Tecla <> 'UP') and (Tecla <> 'MouseUP') then begin

        FatPe4DtvPe4.Value := fmManNot.FatPedDteFat.Value + FatPe4PraPe4.Value;

        EdDtvPe4.Text := DateToStr(FatPe4DtvPe4.Value);

        if FatPe4PraPe4.Value = 0 then begin

           if not EdDtvPe4.Enabled then EdDtvPe4.Enabled := True;

           EdDtvPe4.SetFocus;

           end
        else
           EdVlpPe4.SetFocus;

        end
     else
        begin

        if (Tecla = 'UP') then begin

           if fmManNot.FatPedQtpDup.Value > 0 then begin

              EdPraPe4.Enabled := False;
              EdDtvPe4.Enabled := False;
              EdVlpPe4.Enabled := False;
              EdCodBan.Enabled := False;

              if FatPe4.State <> dsBrowse then
                 FatPe4.CancelUpdates
              else
                 begin

                 if not FatPe4.Bof then FatPe4.Prior;

              end;

              grPe4.Enabled := True;

              grPe4.SetFocus;

              end
           else
              EdPraPe4.SetFocus;
        end;
     end;
  end;   
end;

procedure TfmManNt4.grPe4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
SeqPe4 : integer;
begin
  if key = 13 then begin {Tecla - ENTER}

     FatPe4.Edit;
     
     EdPraPe4.Enabled := True;
     EdDtvPe4.Enabled := True;
     EdVlpPe4.Enabled := True;
     EdCodBan.Enabled := True;

     EdPraPe4.SetFocus;

  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if FatPe4NroPe4.Value = fmManNot.FatPedQtpDup.Value then FatPe4.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if FatPe4CodEmp.Value > 0 then begin

        SeqPe4 := FatPe4SeqPe4.Value;

        FatPe4.Delete;

        with FatPe4 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if FatPe4.State <> dsBrowse then FatPe4.CancelUpdates;

                grPe4.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        FatPe4.Close;
        FatPe4.Open;

        fmManNot.FatPed.Close;
        fmManNot.FatPed.Open;

        EdTotDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedTotDup.Value);
        EdLanDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedLanDup.Value);
        EdSldDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedSldDup.Value);

        if SeqPe4 < fmManNot.FatPedQtpDup.Value then
           FatPe4.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqPe4',VarArrayOf([FatPe4CodEmp.Value,FatPe4DteRes.Value,FatPe4NumRes.Value,FatPe4SeqLib.Value,FatPe4SeqFat.Value,SeqPe4]),[LoPartialKey])
        else
           begin

           if fmManNot.FatPedQtpDup.Value = 0 then
              FatPe4.Append
           else
              FatPe4.Last;

        end;
     end;
  end;
end;

procedure TfmManNt4.EdCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqBan := TfmPsqBan.Create(Self);

        fmPsqBan.ShowModal;

        if fmPsqBan.CodBan > 0 then begin

           if FatPe4.State = dsBrowse then begin

              if FatPe4CodEmp.Value > 0 then
                 FatPe4.Edit
              else
                 FatPe4.Append;

           end;

           FatPe4CodBan.Value := fmPsqBan.CodBan;

        end;

     finally

        FreeAndNil(fmPsqBan);

     end;
  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'B';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodBan > 0 then begin

           if FatPe4.State = dsBrowse then begin

              if FatPe4CodEmp.Value > 0 then
                 FatPe4.Edit
              else
                 FatPe4.Append;

           end;

           FatPe4CodBan.Value := fmAuxPsq.CodBan;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManNt4.EdPraPe4KeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManNt4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if FatPe4.State <> dsBrowse then FatPe4.CancelUpdates;
end;

procedure TfmManNt4.EdCodBanExit(Sender: TObject);
begin
  if (not EdCodBan.Focused) then begin

     FinBan.Close;
     FinBan.Params[0].AsInteger := FatPe4CodBan.Value;
     FinBan.Open;

     if FinBanCodBan.Value = 0 then fmsgErro('Banco Informado não Encontrado',EdCodBan);

  end;
end;

procedure TfmManNt4.EdDtvPe4Exit(Sender: TObject);
begin
  if psaida = 'Nao' then begin

     if FatPe4.State <> dsBrowse then begin

        if FatPe4DtvPe4.Value >= fmManNot.FatPedDteFat.Value then begin

           if FatPe4DtvPe4.Value > fmManNot.FatPedDteFat.Value then
              FatPe4PraPe4.Value := StrToInt(FloatToStr(FatPe4DtvPe4.Value - fmManNot.FatPedDteFat.Value))
           else
              FatPe4PraPe4.Value := 0;

           if FatPe4PraPe4.Value > 0 then
              EdPraPe4.Text := IntToStr(FatPe4PraPe4.Value)
           else
              EdPraPe4.Text := '0';

           end
        else
           fmsgErro('Data de Vencimento Inferior a Data de Emissao do Faturamento.',EdDtvPe4);
     end;
  end;   
end;

procedure TfmManNt4.Panel1Exit(Sender: TObject);
var
SeqPe4 : integer;
begin
  if psaida = 'Nao' then begin

     if FatPe4.State <> dsBrowse then begin

        FinBan.Close;
        FinBan.Params[0].AsInteger := FatPe4CodBan.Value;
        FinBan.Open;

        if FinBanCodBan.Value = 0 then fmsgErro('Banco Informado não Encontrado',EdCodBan);

        if FatPe4DtvPe4.Value < fmManNot.FatPedDteFat.Value then fmsgErro('Data de Vencimento Informada Inferior a Data de Faturamento.',EdDtvPe4);

        if FatPe4.State = dsInsert then begin

           with FatPe4 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if FatPe4.State = dsBrowse then FatPe4.Edit;

                   EdPraPe4.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           FatPe4.Close;
           FatPe4.Open;

           fmManNot.FatPed.Close;
           fmManNot.FatPed.Open;

           EdTotDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedTotDup.Value);
           EdLanDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedLanDup.Value);
           EdSldDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedSldDup.Value);

           FatPe4.Append;

           EdPraPe4.SetFocus;

           end
        else
           begin

           SeqPe4 := FatPe4SeqPe4.Value;

           with FatPe4 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if FatPe4.State = dsBrowse then FatPe4.Edit;

                   EdPraPe4.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           fmManNot.FatPed.Close;
           fmManNot.FatPed.Open;

           FatPe4.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqPe4',VarArrayOf([fmManNot.FatPedCodEmp.Value,fmManNot.FatPedDteRes.Value,fmManNot.FatPedNumRes.Value,fmManNot.FatPedSeqLib.Value,fmManNot.FatPedSeqFat.Value,SeqPe4]),[LoPartialKey]);

           EdTotDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedTotDup.Value);
           EdLanDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedLanDup.Value);
           EdSldDup.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedSldDup.Value);

           if FatPe4NroPe4.Value = fmManNot.FatPedQtpNot.Value then
              FatPe4.Append
           else
              begin

              EdPraPe4.Enabled := False;
              EdDtvPe4.Enabled := False;
              EdVlpPe4.Enabled := False;
              EdCodBan.Enabled := False;

              grPe4.SetFocus;

           end;
        end;

        end
     else
        begin

        EdPraPe4.Enabled := False;
        EdDtvPe4.Enabled := False;
        EdVlpPe4.Enabled := False;
        EdCodBan.Enabled := False;

        grPe4.SetFocus;

     end;
  end;   
end;

procedure TfmManNt4.FatPe4NewRecord(DataSet: TDataSet);
begin

  FatPe4.DisableControls;

  FatPe4PraPe4.Value := 0;
  FatPe4VlpPe4.Value := 0;
  FatPe4FlgInt.Value := ' ';
  FatPe4CodBan.Value := 888;
  FatPe4DtvPe4.Value := fmManNot.FatPedDteFat.Value;
  FatPe4CodEmp.Value := fmManNot.FatPedCodEmp.Value;
  FatPe4DteRes.Value := fmManNot.FatPedDteRes.Value;
  FatPe4NumRes.Value := fmManNot.FatPedNumRes.Value;
  FatPe4SeqLib.Value := fmManNot.FatPedSeqLib.Value;
  FatPe4SeqFat.Value := fmManNot.FatPedSeqFat.Value;
  FatPe4SeqPe4.Value := fmManNot.FatPedStpDup.Value + 1;
  FatPe4NroPe4.Value := fmManNot.FatPedQtpDup.Value + 1;

  FatPe4.EnableControls;

  EdPraPe4.Text := '0';

  EdCodBan.Text := '888';

  EdDtvPe4.Text := DateToStr(FatPe4DtvPe4.Value);

  EdPraPe4.Enabled := True;
  EdDtvPe4.Enabled := True;
  EdVlpPe4.Enabled := True;
  EdCodBan.Enabled := True;

  EdPraPe4.SetFocus;
  
end;

procedure TfmManNt4.FormCreate(Sender: TObject);
begin
  inherited;
  psaida := 'Nao';
end;

end.
