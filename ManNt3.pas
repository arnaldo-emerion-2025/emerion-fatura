unit ManNt3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowpadrao, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManNt3 = class(TfmShowPadrao)
    FatPe3: TwwQuery;
    DsPe3: TwwDataSource;
    FinBan: TwwQuery;
    PaintBox: TPaintBox;
    Label10: TLabel;
    grPe3: ThGrid;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DsBan: TwwDataSource;
    FinBanCODBAN: TIntegerField;
    FinBanNOMBAN: TStringField;
    UpPe3: TUpdateSQL;
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
    EdPraPe3: TdxDBColorEdit;
    EdDtvPe3: TdxDBColorDateEdit;
    EdVlpPe3: TdxDBColorCurrencyEdit;
    EdCodBan: TdxDBColorEdit;
    Label6: TLabel;
    EdNomBan: TdxDBColorEdit;
    FatPe3CODEMP: TIntegerField;
    FatPe3DTERES: TDateTimeField;
    FatPe3NUMRES: TIntegerField;
    FatPe3SEQLIB: TIntegerField;
    FatPe3SEQFAT: TIntegerField;
    FatPe3SEQPE3: TIntegerField;
    FatPe3PRAPE3: TIntegerField;
    FatPe3DTVPE3: TDateTimeField;
    FatPe3CODBAN: TIntegerField;
    FatPe3VLPPE3: TFloatField;
    FatPe3NROPE3: TIntegerField;
    FatPe3FLGINT: TStringField;
    FatPe3NOMBAN: TStringField;
    pnObsCli: TPanel;
    procedure FormShow(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodBanExit(Sender: TObject);
    procedure EdPraPe3Exit(Sender: TObject);
    procedure grPe3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPraPe3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel1Exit(Sender: TObject);
    procedure EdDtvPe3Exit(Sender: TObject);
    procedure FatPe3NewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
    SeqObs : integer;
    pSaida,ObsCli : string;
  public
    {Public declarations}
  end;

var
  fmManNt3: TfmManNt3;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManNot, PsqBan,
     AuxPsq, ManNt4, ManImp, ObsCli;

{$R *.DFM}

procedure TfmManNt3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 119 then begin  // Observações Sobre o Cliente

     if fmManNot.FatParLerObs.Value = 'Sim' then begin

        if Trim( ObsCli ) <> '' then begin

           SeqObs := 1;

           try

              fmObsCli := TfmObsCli.Create(Self);

              fmObsCli.FinCli.Close;
              fmObsCli.FinCli.Params[0].AsInteger := fmManNot.FatPedCodCli.Value;
              fmObsCli.FinCli.Open;

              fmObsCli.ShowModal;

           finally

              FreeAndNil(fmObsCli);

           end;
        end;
     end;   
  end;
  
  if key = 27 then begin

     psaida := 'Sim';

     if FatPe3.State <> dsBrowse then FatPe3.CancelUpdates;

     if EdPraPe3.Enabled then begin

        EdPraPe3.Enabled := False;
        EdDtvPe3.Enabled := False;
        EdVlpPe3.Enabled := False;
        EdCodBan.Enabled := False;

        psaida := 'Nao';
        
        grPe3.SetFocus;

        end
     else
        begin

        psaida := 'Nao';

        bRetornar.OnClick(Sender);

     end;   
  end;

  if key = 123 then begin

     if grPe3.Focused then bContinuar.OnClick(Sender);

  end;
end;

procedure TfmManNt3.FormShow(Sender: TObject);
begin
  inherited;

  SeqObs := 0;
  
  if fmManNot.FatParLerObs.Value = 'Sim' then begin
  
     with quSQL,SQL do begin

          Close;
          Text := ' Select FinCli.ObsCli From FinCli Where FinCli.CodCli = '+ QuotedStr(IntToStr(fmManNot.FatPedCodCli.Value));
          Open;

          ObsCli := FieldbyName('ObsCli').AsString;
          
     end;

     if Trim( ObsCli ) <> '' then pnObsCli.Visible := True;

  end;

  EdTotGer.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedTotGer.Value);
  EdLanNot.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedLanNot.Value);
  EdSldNot.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedSldNot.Value);

  FatPe3.Close;
  FatPe3.Params[0].AsInteger  := fmManNot.FatPedCodEmp.Value;
  FatPe3.Params[1].AsDateTime := fmManNot.FatPedDteRes.Value;
  FatPe3.Params[2].AsInteger  := fmManNot.FatPedNumRes.Value;
  FatPe3.Params[3].AsInteger  := fmManNot.FatPedSeqLib.Value;
  FatPe3.Params[4].AsInteger  := fmManNot.FatPedSeqFat.Value;
  FatPe3.Open;

  if fmManNot.FatPedQtpNot.Value > 0 then
     grPe3.SetFocus
  else
     begin

     FatPe3.Append;

     EdPraPe3.SetFocus;

  end;
end;

procedure TfmManNt3.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNt3.bContinuarClick(Sender: TObject);
begin

  ActiveControl := nil;
  
  if fmManNot.FatParLerObs.Value = 'Sim' then begin

     if Trim( ObsCli ) <> '' then begin

        if SeqObs = 0 then fmsgErro('Por favor leia as observações sobre o cliente antes de prosseguir.',Nil);

     end;
  end;

  if fmManNot.FatPedLanNot.Value <> fmManNot.FatPedTotGer.Value then begin

     if fmManNot.FatPedLanNot.Value < fmManNot.FatPedTotGer.Value then
        fmsgErro('Total de vencimentos informados é menor que o total a ser lançado.',Nil)
     else
        fmsgErro('Total de vencimentos informados é maior que o total a ser lançado.',Nil);

     end
  else
     begin

     if fmManNot.FatPedTotDup.Value = 0 then begin

        if fMsg('Imprime documento fiscal ?','S') then begin

           try

              fmManImp := TfmManImp.Create(Self);
              fmManImp.ShowModal;

           finally

              FreeAndNil(fmManImp);

           end;
        end;

        end
     else
        begin

        try

           fmManNt4 := TfmManNt4.Create(Self);
           fmManNt4.ShowModal;

        finally

           FreeAndNil(fmManNt4);

        end;
     end;

     if fmManNot.Finalizar = 'S' then
        Close
     else
        grPe3.SetFocus;

  end;
end;

procedure TfmManNt3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNt3.EdPraPe3Exit(Sender: TObject);
begin
  if psaida = 'Nao' then begin
  
     if (Tecla <> 'ESC') and (Tecla <> 'UP') and (Tecla <> 'MouseUP') then begin

        FatPe3DtvPe3.Value := fmManNot.FatPedDteFat.Value + FatPe3PraPe3.Value;

        EdDtvPe3.Text := DateToStr(FatPe3DtvPe3.Value);

        end
     else
        begin

        if (Tecla = 'UP') then begin

           if fmManNot.FatPedQtpNot.Value > 0 then begin

              EdPraPe3.Enabled := False;
              EdDtvPe3.Enabled := False;
              EdVlpPe3.Enabled := False;
              EdCodBan.Enabled := False;

              if FatPe3.State <> dsBrowse then
                 FatPe3.CancelUpdates
              else
                 begin

                 if not FatPe3.Bof then FatPe3.Prior;

              end;

              grPe3.Enabled := True;

              grPe3.SetFocus;

              end
           else
              EdPraPe3.SetFocus;
        end;
     end;
  end;   
end;

procedure TfmManNt3.EdCodBanExit(Sender: TObject);
begin
  inherited;
  if (not EdCodBan.Focused) then begin

     FinBan.Close;
     FinBan.Params[0].AsInteger := FatPe3CodBan.Value;
     FinBan.Open;

     if FinBanCodBan.Value = 0 then fmsgErro('Banco Informado não Encontrado',EdCodBan);

  end;
end;

procedure TfmManNt3.grPe3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
SeqPe3 : integer;
begin
  if key = 13 then begin {Tecla - ENTER}

     FatPe3.Edit;
     
     EdPraPe3.Enabled := True;
     EdDtvPe3.Enabled := True;
     EdVlpPe3.Enabled := True;
     EdCodBan.Enabled := True;

     EdPraPe3.SetFocus;

  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if FatPe3NroPe3.Value = fmManNot.FatPedQtpNot.Value then FatPe3.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if FatPe3CodEmp.Value > 0 then begin

        SeqPe3 := FatPe3SeqPe3.Value;

        FatPe3.Delete;

        with FatPe3 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if FatPe3.State <> dsBrowse then FatPe3.CancelUpdates;

                grPe3.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        FatPe3.Close;
        FatPe3.Open;

        fmManNot.FatPed.Close;
        fmManNot.FatPed.Open;

        EdTotGer.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedTotGer.Value);
        EdLanNot.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedLanNot.Value);
        EdSldNot.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedSldNot.Value);

        if SeqPe3 < fmManNot.FatPedQtpNot.Value then
           FatPe3.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqPe3',VarArrayOf([FatPe3CodEmp.Value,FatPe3DteRes.Value,FatPe3NumRes.Value,FatPe3SeqLib.Value,FatPe3SeqFat.Value,SeqPe3]),[LoPartialKey])
        else
           begin

           if fmManNot.FatPedQtpNot.Value = 0 then
              FatPe3.Append
           else
              FatPe3.Last;

        end;
     end;
  end;
end;

procedure TfmManNt3.EdCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqBan := TfmPsqBan.Create(Self);

        fmPsqBan.ShowModal;

        if fmPsqBan.CodBan > 0 then begin

           if FatPe3.State = dsBrowse then begin

              if FatPe3CodEmp.Value > 0 then
                 FatPe3.Edit
              else
                 FatPe3.Append;

           end;

           FatPe3CodBan.Value := fmPsqBan.CodBan;

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

           if FatPe3.State = dsBrowse then begin

              if FatPe3CodEmp.Value > 0 then
                 FatPe3.Edit
              else
                 FatPe3.Append;

           end;

           FatPe3CodBan.Value := fmAuxPsq.CodBan;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManNt3.EdPraPe3KeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManNt3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if FatPe3.State <> dsBrowse then FatPe3.CancelUpdates;
end;

procedure TfmManNt3.Panel1Exit(Sender: TObject);
var
SeqPe3 : integer;
begin
  if psaida = 'Nao' then begin

     if FatPe3.State <> dsBrowse then begin

        FinBan.Close;
        FinBan.Params[0].AsInteger := FatPe3CodBan.Value;
        FinBan.Open;

        if FinBanCodBan.Value = 0 then fmsgErro('Banco Informado não Encontrado',EdCodBan);

        if FatPe3VlpPe3.Value = 0 then fmsgErro('Valor da Parcela para o Vencimento não Informado',EdVlpPe3);

        if FatPe3DtvPe3.Value < fmManNot.FatPedDteFat.Value then fmsgErro('Data de Vencimento Informada Inferior a Data de Faturamento.',EdDtvPe3);

        if FatPe3.State = dsInsert then begin

           with FatPe3 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if FatPe3.State = dsBrowse then FatPe3.Edit;

                   EdPraPe3.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           FatPe3.Close;
           FatPe3.Open;

           fmManNot.FatPed.Close;
           fmManNot.FatPed.Open;

           EdTotGer.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedTotGer.Value);
           EdLanNot.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedLanNot.Value);
           EdSldNot.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedSldNot.Value);

           FatPe3.Append;

           EdPraPe3.SetFocus;

           end
        else
           begin

           SeqPe3 := FatPe3SeqPe3.Value;

           with FatPe3 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if FatPe3.State = dsBrowse then FatPe3.Edit;

                   EdPraPe3.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           FatPe3.Close;
           FatPe3.Open;

           fmManNot.FatPed.Close;
           fmManNot.FatPed.Open;

           FatPe3.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqPe3',VarArrayOf([fmManNot.FatPedCodEmp.Value,fmManNot.FatPedDteRes.Value,fmManNot.FatPedNumRes.Value,fmManNot.FatPedSeqLib.Value,fmManNot.FatPedSeqFat.Value,SeqPe3]),[LoPartialKey]);

           EdTotGer.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedTotGer.Value);
           EdLanNot.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedLanNot.Value);
           EdSldNot.Text := FormatFloat('###,###,##0.00',fmManNot.FatPedSldNot.Value);

           EdPraPe3.Enabled := False;
           EdDtvPe3.Enabled := False;
           EdVlpPe3.Enabled := False;
           EdCodBan.Enabled := False;

           grPe3.SetFocus;

        end;

        end
     else
        begin

        EdPraPe3.Enabled := False;
        EdDtvPe3.Enabled := False;
        EdVlpPe3.Enabled := False;
        EdCodBan.Enabled := False;

        grPe3.SetFocus;

     end;
  end;   
end;

procedure TfmManNt3.EdDtvPe3Exit(Sender: TObject);
begin
  if psaida = 'Nao' then begin

     if FatPe3DtvPe3.Value >= fmManNot.FatPedDteFat.Value then begin

        if FatPe3DtvPe3.Value > fmManNot.FatPedDteFat.Value then
           FatPe3PraPe3.Value := StrToInt(FloatToStr(FatPe3DtvPe3.Value - fmManNot.FatPedDteFat.Value))
        else
           FatPe3PraPe3.Value := 0;

        if FatPe3PraPe3.Value > 0 then
           EdPraPe3.Text := IntToStr(FatPe3PraPe3.Value)
        else
           EdPraPe3.Text := '0';

        end
     else
        fmsgErro('Data de Vencimento Inferior a Data de Emissao do Faturamento.',EdDtvPe3);
  end;      
end;

procedure TfmManNt3.FatPe3NewRecord(DataSet: TDataSet);
begin

  FatPe3.DisableControls;

  FatPe3PraPe3.Value := 0;
  FatPe3VlpPe3.Value := 0;
  FatPe3FlgInt.Value := ' ';
  FatPe3CodBan.Value := 888;
  FatPe3DtvPe3.Value := fmManNot.FatPedDteFat.Value;
  FatPe3CodEmp.Value := fmManNot.FatPedCodEmp.Value;
  FatPe3DteRes.Value := fmManNot.FatPedDteRes.Value;
  FatPe3NumRes.Value := fmManNot.FatPedNumRes.Value;
  FatPe3SeqLib.Value := fmManNot.FatPedSeqLib.Value;
  FatPe3SeqFat.Value := fmManNot.FatPedSeqFat.Value;
  FatPe3SeqPe3.Value := fmManNot.FatPedStpNot.Value + 1;
  FatPe3NroPe3.Value := fmManNot.FatPedQtpNot.Value + 1;

  FatPe3.EnableControls;

  EdPraPe3.Text := '0';

  EdCodBan.Text := '888';

  EdDtvPe3.Text := DateToStr(FatPe3DtvPe3.Value);

  EdPraPe3.Enabled := True;
  EdDtvPe3.Enabled := True;
  EdVlpPe3.Enabled := True;
  EdCodBan.Enabled := True;

  EdPraPe3.SetFocus;

end;

procedure TfmManNt3.FormCreate(Sender: TObject);
begin
  inherited;
  psaida := 'Nao';
end;

end.
