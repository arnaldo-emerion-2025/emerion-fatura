unit ManNg3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, FShowPadrao, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManNg3 = class(TfmShowPadrao)
    FatGe3: TwwQuery;
    DsGe3: TwwDataSource;
    FinBan: TwwQuery;
    PaintBox: TPaintBox;
    Bevel1: TBevel;
    Label10: TLabel;
    grGe3: ThGrid;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DsBan: TwwDataSource;
    FinBanCODBAN: TIntegerField;
    FinBanNOMBAN: TStringField;
    UpGe3: TUpdateSQL;
    grPro: TdxDBGraphicEdit;
    quSQL: TwwQuery;
    EdTotGer: TAlignEdit;
    dbTotGer: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    bRetornar: TSpeedButton;
    bContinuar: TSpeedButton;
    Label4: TLabel;
    dbLanNot: TdxDBColorCurrencyEdit;
    EdLanGer: TAlignEdit;
    Label5: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    dbSldGer: TdxDBColorCurrencyEdit;
    EdSldGer: TAlignEdit;
    Label12: TLabel;
    Label13: TLabel;
    Panel1: TPanel;
    EdPraGe3: TdxDBColorEdit;
    EdDtvGe3: TdxDBColorDateEdit;
    EdVlpGe3: TdxDBColorCurrencyEdit;
    EdCodBan: TdxDBColorEdit;
    Label6: TLabel;
    EdNomBan: TdxDBColorEdit;
    FatGe3CODEMP: TIntegerField;
    FatGe3DTEGER: TDateTimeField;
    FatGe3NUMGER: TIntegerField;
    FatGe3SEQGE3: TIntegerField;
    FatGe3PRAGE3: TIntegerField;
    FatGe3DTVGE3: TDateTimeField;
    FatGe3CODBAN: TIntegerField;
    FatGe3VLPGE3: TFloatField;
    FatGe3NOMBAN: TStringField;
    FatGe3NROGE3: TIntegerField;
    FatGe3FLGINT: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodBanExit(Sender: TObject);
    procedure EdPraGe3Exit(Sender: TObject);
    procedure grGe3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPraGe3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel1Exit(Sender: TObject);
    procedure EdDtvGe3Exit(Sender: TObject);
    procedure FatGe3NewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    {Private declarations}
    psaida: string;
  public
    {Public declarations}
  end;

var
  fmManNg3: TfmManNg3;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManNge, PsqBan, AuxPsq,
  ManIng;

{$R *.DFM}

procedure TfmManNg3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
  begin

    psaida := 'Sim';

    if FatGe3.State <> dsBrowse then
      FatGe3.CancelUpdates;

    if EdPraGe3.Enabled then
    begin

      EdPraGe3.Enabled := False;
      EdDtvGe3.Enabled := False;
      EdVlpGe3.Enabled := False;
      EdCodBan.Enabled := False;

      psaida := 'Nao';

      grGe3.SetFocus;

    end
    else
    begin

      psaida := 'Nao';

      bRetornar.OnClick(Sender);

    end;
  end;

  if key = 123 then
  begin

    if grGe3.Focused then
      bContinuar.OnClick(Sender);

  end;
end;

procedure TfmManNg3.FormShow(Sender: TObject);
begin
  inherited;

  EdTotGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerTotGe1.Value);
  EdLanGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerLanGer.Value);
  EdSldGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerSldGer.Value);

  FatGe3.Close;
  FatGe3.Params[0].AsInteger := fmManNge.FatGerCodEmp.Value;
  FatGe3.Params[1].AsDateTime := fmManNge.FatGerDteGer.Value;
  FatGe3.Params[2].AsInteger := fmManNge.FatGerNumGer.Value;
  FatGe3.Open;

  if fmManNge.FatGerQtpGer.Value > 0 then
    grGe3.SetFocus
  else
  begin

    FatGe3.Append;

    EdPraGe3.SetFocus;

  end;
end;

procedure TfmManNg3.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNg3.bContinuarClick(Sender: TObject);
var
  sCont: string;
begin

  sCont := 'Nao';

  if fmManNge.FatGerIntFin.Value = 'Sim' then
  begin

    if fmManNge.FatGerLanGer.Value <> fmManNge.FatGerTotGe1.Value then
    begin

      if fmManNge.FatGerLanGer.Value < fmManNge.FatGerTotGe1.Value then
        fmsgErro('Total de Vencimentos Informados é Menor que o Valor a ser Lançado.', nil)
      else
        fmsgErro('Total de Vencimentos Informados é Maior que o Total a ser Lançado.', nil);

    end
    else
      sCont := 'Sim';

  end
  else
    sCont := 'Sim';

  if sCont = 'Sim' then
  begin

    if fMsg('Confirmar Documento Fiscal ?', 'S') then
    begin

      try

        fmManIng := TfmManIng.Create(Self);

        fmManIng.ShowModal;

      finally

        FreeAndNil(fmManIng);

      end;
    end;

    if fmManNge.Finalizar = 'S' then
      Close
    else
      grGe3.SetFocus;

  end;
end;

procedure TfmManNg3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNg3.EdPraGe3Exit(Sender: TObject);
begin
  if psaida = 'Nao' then
  begin

    if (Tecla <> 'ESC') and (Tecla <> 'UP') and (Tecla <> 'MouseUP') then
    begin

      if FatGe3.State <> dsBrowse then
        FatGe3DtvGe3.Value := fmManNge.FatGerDteGer.Value + FatGe3PraGe3.Value;

      EdDtvGe3.Text := DateToStr(FatGe3DtvGe3.Value);

    end
    else
    begin

      if (Tecla = 'UP') then
      begin

        if fmManNge.FatGerQtpGer.Value > 0 then
        begin

          EdPraGe3.Enabled := False;
          EdDtvGe3.Enabled := False;
          EdVlpGe3.Enabled := False;
          EdCodBan.Enabled := False;

          if FatGe3.State <> dsBrowse then
            FatGe3.CancelUpdates
          else
          begin

            if not FatGe3.Bof then
              FatGe3.Prior;

          end;

          grGe3.SetFocus;

        end
        else
          EdPraGe3.SetFocus;
      end;
    end;
  end;
end;

procedure TfmManNg3.EdCodBanExit(Sender: TObject);
begin
  inherited;
  if (not EdCodBan.Focused) then
  begin

    FinBan.Close;
    FinBan.Params[0].AsInteger := FatGe3CodBan.Value;
    FinBan.Open;

    if FinBanCodBan.Value = 0 then
      fmsgErro('Banco Informado não Encontrado', EdCodBan);

  end;
end;

procedure TfmManNg3.grGe3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  SeqGe3: integer;
begin
  if key = 13 then
  begin {Tecla - ENTER}

    FatGe3.Edit;

    EdPraGe3.Enabled := True;
    EdDtvGe3.Enabled := True;
    EdVlpGe3.Enabled := True;
    EdCodBan.Enabled := True;

    EdPraGe3.SetFocus;

  end;

  if key = 40 then
  begin {Tecla - Seta para Baixo}

    if FatGe3NroGe3.Value = fmManNge.FatGerQtpGer.Value then
      FatGe3.Append;

  end;

  if key = 46 then
  begin {Tecla - DEL}

    if FatGe3CodEmp.Value > 0 then
    begin

      SeqGe3 := FatGe3SeqGe3.Value;

      FatGe3.Delete;

      with FatGe3 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alterações}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
          ;

          if FatGe3.State <> dsBrowse then
            FatGe3.CancelUpdates;

          grGe3.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatGe3.Close;
      FatGe3.Open;

      fmManNge.FatGer.Close;
      fmManNge.FatGer.Open;

      EdTotGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerTotGe1.Value);
      EdLanGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerLanGer.Value);
      EdSldGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerSldGer.Value);

      if SeqGe3 < fmManNge.FatGerQtpGer.Value then
        FatGe3.Locate('CodEmp;DteGer;NumGer;SeqGe3', VarArrayOf([FatGe3CodEmp.Value, FatGe3DteGer.Value, FatGe3NumGer.Value, SeqGe3]), [LoPartialKey])
      else
      begin

        if fmManNge.FatGerQtpGer.Value = 0 then
          FatGe3.Append
        else
          FatGe3.Last;

      end;
    end;
  end;
end;

procedure TfmManNg3.EdCodBanKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqBan := TfmPsqBan.Create(Self);

      fmPsqBan.ShowModal;

      if fmPsqBan.CodBan > 0 then
      begin

        if FatGe3.State = dsBrowse then
        begin

          if FatGe3CodEmp.Value > 0 then
            FatGe3.Edit
          else
            FatGe3.Append;

        end;

        FatGe3CodBan.Value := fmPsqBan.CodBan;

      end;

    finally

      FreeAndNil(fmPsqBan);

    end;
  end;

  if key = 113 then
  begin {F2 - Busca Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'B';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodBan > 0 then
      begin

        if FatGe3.State = dsBrowse then
        begin

          if FatGe3CodEmp.Value > 0 then
            FatGe3.Edit
          else
            FatGe3.Append;

        end;

        FatGe3CodBan.Value := fmAuxPsq.CodBan;

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmManNg3.EdPraGe3KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManNg3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if FatGe3.State <> dsBrowse then
    FatGe3.CancelUpdates;
end;

procedure TfmManNg3.Panel1Exit(Sender: TObject);
var
  SeqGe3: integer;
begin
  if FatGe3.State <> dsBrowse then
  begin

    FinBan.Close;
    FinBan.Params[0].AsInteger := FatGe3CodBan.Value;
    FinBan.Open;

    if FinBanCodBan.Value = 0 then
      fmsgErro('Banco Informado não Encontrado', EdCodBan);

    if FatGe3VlpGe3.Value = 0 then
      fmsgErro('Valor da Parcela para o Vencimento não Informado', EdVlpGe3);

    if FatGe3DtvGe3.Value < fmManNge.FatGerDteGer.Value then
      fmsgErro('Data de Vencimento Informada Inferior a Data de Faturamento.', EdDtvGe3);

    if FatGe3.State = dsInsert then
    begin

      with FatGe3 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alterações}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
          ;

          if FatGe3.State = dsBrowse then
            FatGe3.Edit;

          EdPraGe3.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatGe3.Close;
      FatGe3.Open;

      fmManNge.FatGer.Close;
      fmManNge.FatGer.Open;

      EdTotGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerTotGe1.Value);
      EdLanGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerLanGer.Value);
      EdSldGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerSldGer.Value);

      FatGe3.Append;

      EdPraGe3.SetFocus;

    end
    else
    begin

      SeqGe3 := FatGe3SeqGe3.Value;

      with FatGe3 do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alterações}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
          ;

          if FatGe3.State = dsBrowse then
            FatGe3.Edit;

          EdPraGe3.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatGe3.Close;
      FatGe3.Open;

      fmManNge.FatGer.Close;
      fmManNge.FatGer.Open;

      FatGe3.Locate('CodEmp;DteGer;NumGer;SeqGe3', VarArrayOf([fmManNge.FatGerCodEmp.Value, fmManNge.FatGerDteGer.Value, fmManNge.FatGerNumGer.Value, SeqGe3]),
        [LoPartialKey]);

      EdTotGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerTotGe1.Value);
      EdLanGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerLanGer.Value);
      EdSldGer.Text := FormatFloat('###,###,##0.00', fmManNge.FatGerSldGer.Value);

      EdPraGe3.Enabled := False;
      EdDtvGe3.Enabled := False;
      EdVlpGe3.Enabled := False;
      EdCodBan.Enabled := False;

      grGe3.SetFocus;

    end;

  end
  else
  begin

    EdPraGe3.Enabled := False;
    EdDtvGe3.Enabled := False;
    EdVlpGe3.Enabled := False;
    EdCodBan.Enabled := False;

    grGe3.SetFocus;

  end;
end;

procedure TfmManNg3.EdDtvGe3Exit(Sender: TObject);
begin
  if psaida = 'Nao' then
  begin

    if FatGe3DtvGe3.Value >= fmManNge.FatGerDteGer.Value then
    begin

      if FatGe3DtvGe3.Value > fmManNge.FatGerDteGer.Value then
        FatGe3PraGe3.Value := StrToInt(FloatToStr(FatGe3DtvGe3.Value - fmManNge.FatGerDteGer.Value))
      else
        FatGe3PraGe3.Value := 0;

      if FatGe3PraGe3.Value > 0 then
        EdPraGe3.Text := IntToStr(FatGe3PraGe3.Value)
      else
        EdPraGe3.Text := '0';

    end
    else
      fmsgErro('Data de Vencimento Inferior a Data de Emissao do Faturamento.', EdDtvGe3);

  end;
end;

procedure TfmManNg3.FatGe3NewRecord(DataSet: TDataSet);
begin

  FatGe3.DisableControls;

  FatGe3PraGe3.Value := 0;
  FatGe3VlpGe3.Value := 0;
  FatGe3CodBan.Value := 888;
  FatGe3DtvGe3.Value := fmManNge.FatGerDteGer.Value;
  FatGe3CodEmp.Value := fmManNge.FatGerCodEmp.Value;
  FatGe3DteGer.Value := fmManNge.FatGerDteGer.Value;
  FatGe3NumGer.Value := fmManNge.FatGerNumGer.Value;
  FatGe3SeqGe3.Value := fmManNge.FatGerQtpGer.Value + 1;
  FatGe3NroGe3.Value := fmManNge.FatGerStpGer.Value + 1;

  FatGe3.EnableControls;

  EdPraGe3.Text := '0';

  EdCodBan.Text := '888';

  EdDtvGe3.Text := DateToStr(FatGe3DtvGe3.Value);

  EdPraGe3.Enabled := True;
  EdDtvGe3.Enabled := True;
  EdVlpGe3.Enabled := True;
  EdCodBan.Enabled := True;

  EdPraGe3.SetFocus;

end;

procedure TfmManNg3.FormCreate(Sender: TObject);
begin
  inherited;
  psaida := 'Nao';
end;

end.
