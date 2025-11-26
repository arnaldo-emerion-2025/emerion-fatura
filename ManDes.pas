unit ManDes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, ppDB, ppDBPipe, ppBands, ppCtrls, ppVar, ppPrnabl,
  ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxDBColorCurrencyEdit, dxDBColorPickEdit, dxDBColorDateEdit,
  dxDBColorEdit;

type
  TfmManDes = class(TfmPadrao)
    PaintBox: TPaintBox;
    FatPed: TwwQuery;
    FatDes: TwwQuery;
    UpFat: TUpdateSQL;
    DsDes: TDataSource;
    DsFat: TDataSource;
    quSql: TwwQuery;
    grPe21: TdxDBGraphicEdit;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label8: TLabel;
    Label32: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Shape3: TShape;
    Label27: TLabel;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Label29: TLabel;
    Label9: TLabel;
    EdNumRes: TdxDBColorEdit;
    Label1: TLabel;
    Label46: TLabel;
    EdCodEmp: TdxDBColorEdit;
    pnApeEmp: TPanel;
    EdApeEmp: TdxDBColorEdit;
    Label2: TLabel;
    Label68: TLabel;
    EdDteFat: TdxDBColorDateEdit;
    Label4: TLabel;
    Label6: TLabel;
    EdCodCli: TdxDBColorEdit;
    pnNomCli: TPanel;
    EdNomCli: TdxDBColorEdit;
    Label16: TLabel;
    Label53: TLabel;
    pnUfeFat: TPanel;
    EdUfeFat: TdxDBColorEdit;
    Label13: TLabel;
    Label14: TLabel;
    EdCodVen: TdxDBColorEdit;
    pnApeVen: TPanel;
    EdApeVen: TdxDBColorEdit;
    Label12: TLabel;
    Label20: TLabel;
    EdFrtFat: TdxDBColorPickEdit;
    Panel3: TPanel;
    EdQtdVol: TdxDBColorCurrencyEdit;
    EdPesDes: TdxDBColorCurrencyEdit;
    EdNomCon: TdxDBColorEdit;
    EdCodUnd: TdxDBColorEdit;
    grDes: ThGrid;
    pnNumRes: TPanel;
    FatDesQTDVOL: TIntegerField;
    FatDesCODUND: TStringField;
    FatDesNOMCON: TStringField;
    FatDesPESDES: TFloatField;
    Label3: TLabel;
    Label5: TLabel;
    EdNroNFs: TdxDBColorEdit;
    pnNroNfs: TPanel;
    FatPedCODEMP: TIntegerField;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    FatPedDTEFAT: TDateTimeField;
    FatPedUFEFAT: TStringField;
    FatPedFRTFAT: TStringField;
    FatPedCODCLI: TIntegerField;
    FatPedCODVEN: TIntegerField;
    FatPedOBSDES: TStringField;
    FatPedAPEEMP: TStringField;
    FatPedAPEVEN: TStringField;
    FatPedNOMCLI: TStringField;
    FatPedOBSCLI: TMemoField;
    FatPedTEFCLI: TStringField;
    FatPedCEFCLI: TStringField;
    FatPedENFCLI: TStringField;
    FatPedRFFCLI: TStringField;
    FatPedNRFCLI: TStringField;
    FatPedBAFCLI: TStringField;
    FatPedCIFCLI: TStringField;
    FatPedUFFCLI: TStringField;
    UpDes: TUpdateSQL;
    FatDesCODEMP: TIntegerField;
    FatDesDTERES: TDateTimeField;
    FatDesNUMRES: TIntegerField;
    FatDesSEQLIB: TIntegerField;
    FatDesSEQFAT: TIntegerField;
    FatDesSEQDES: TIntegerField;
    FatDesNRODES: TIntegerField;
    FatPedNRONFS: TIntegerField;
    FatPedSEQDES: TIntegerField;
    FatPedQTIDES: TIntegerField;
    FatDesNRONFS: TIntegerField;
    FatDesDTEFAT: TDateTimeField;
    upFatGer: TUpdateSQL;
    upCmpNfs: TUpdateSQL;
    FatPedTIP: TStringField;
    FatDesPESLIQDES: TFloatField;
    EdPesliqDes: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FatDesNewRecord(DataSet: TDataSet);
    procedure PaintBox1Paint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel3Exit(Sender: TObject);
    procedure EdQtdVolExit(Sender: TObject);
    procedure EdCodUndKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grDesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FatPedAfterOpen(DataSet: TDataSet);
    procedure FatDesAfterOpen(DataSet: TDataSet);
    procedure EdPesliqDesKeyPress(Sender: TObject; var Key: Char);
  private
  public
    DteRes: TDateTime;
    Finalizar: string;
    CodEmp, NumRes, SeqLib, SeqFat: integer;
  end;

var
  fmManDes: TfmManDes;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManLn6, PsqUnd,
  ManDs1;

{$R *.DFM}

procedure TfmManDes.FormCreate(Sender: TObject);
begin
  inherited;
  Finalizar := 'N';
end;

procedure TfmManDes.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDes.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManDes := nil;
end;

procedure TfmManDes.FatDesNewRecord(DataSet: TDataSet);
begin
  inherited;

  FatDes.DisableControls;

  FatDesQtdVol.Value := 0;
  FatDesPesDes.Value := 0;
  FatDesPESLIQDES.Value := 0;
  FatDesCodEmp.Value := FatPedCodEmp.Value;
  FatDesDteRes.Value := FatPedDteRes.Value;
  FatDesNumRes.Value := FatPedNumRes.Value;
  FatDesSeqLib.Value := FatPedSeqLib.Value;
  FatDesSeqFat.Value := FatPedSeqFat.Value;
  FatDesSeqDes.Value := FatPedSeqDes.Value + 1;
  FatDesNroDes.Value := FatPedQtiDes.Value + 1;
  FatDesDTEFAT.Value := FatPedDteFat.Value;
  FatDesNRONFS.Value := FatPedNroNfs.Value;

  FatDes.EnableControls;

  EdQtdVol.Enabled := True;
  EdCodUnd.Enabled := True;
  EdNomCon.Enabled := True;
  EdPesDes.Enabled := True;
  EdPesliqDes.Enabled := True;

  EdQtdVol.SetFocus;

end;

procedure TfmManDes.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManDes.FormShow(Sender: TObject);
begin
  inherited;

  FatPed.Close;
  FatPed.ParamByName('CodEmp').AsInteger := fmManLn6.FatPedCODEMP.AsInteger;
  FatPed.ParamByName('dtefat').AsDateTime := fmManLn6.FatPedDTEFAT.AsDateTime;
  FatPed.ParamByName('NroNfs').AsInteger := fmManLn6.FatPedNroNfs.AsInteger;
  FatPed.ParamByName('Tip').AsString := fmManLn6.FatPedTip.AsString;
  FatPed.active := True;

  FatDes.Close;
  FatDes.ParamByName('CodEmp').AsInteger := FatPedCODEMP.AsInteger;
  FatDes.ParamByName('dtefat').AsDateTime := FatPedDTEFAT.AsDateTime;
  FatDes.ParamByName('NroNfs').AsInteger := FatPedNroNfs.AsInteger;
  FatDes.Open;

  pnApeEmp.Caption := FatPedApeEmp.Value;
  pnNomCli.Caption := FatPedNomCli.Value;
  pnUfeFat.Caption := FatPedUfeFat.Value;
  pnApeVen.Caption := FatPedApeVen.Value;
  pnNumRes.Caption := IntToStr(FatPedNumRes.Value);
  pnNroNfs.Caption := IntToStr(FatPedNroNfs.Value);

  if FatPedQtiDes.Value = 0 then
    FatDes.Append
  else
    grDes.SetFocus;

end;

procedure TfmManDes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then
  begin

    if fMsg('Deseja Realmente Abandonar a Emiss�o da Nota Fiscal ?', 'O') then
    begin

      CodEmp := fmManLn6.FatPedCodEmp.Value;
      DteRes := fmManLn6.FatPedDteRes.Value;
      NumRes := fmManLn6.FatPedNumRes.Value;
      SeqLib := fmManLn6.FatPedSeqLib.Value;
      SeqFat := fmManLn6.FatPedSeqFat.Value;

      fmManLn6.FatPed.Close;
      fmManLn6.FatPed.Open;

      fmManLn6.FatDes.Close;
      fmManLn6.FatDes.Open;

      if CodEmp > 0 then
        fmManLn6.FatPed.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib, SeqFat]), [loPartialKey]);

      Action := CaFree;

    end
    else
      Abort;

  end
  else
  begin

    CodEmp := fmManLn6.FatPedCodEmp.Value;
    DteRes := fmManLn6.FatPedDteRes.Value;
    NumRes := fmManLn6.FatPedNumRes.Value;
    SeqLib := fmManLn6.FatPedSeqLib.Value;
    SeqFat := fmManLn6.FatPedSeqFat.Value;

    fmManLn6.FatPed.Close;
    fmManLn6.FatPed.Open;

    fmManLn6.FatDes.Close;
    fmManLn6.FatDes.Open;

    if CodEmp > 0 then
      fmManLn6.FatPed.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib, SeqFat]), [loPartialKey]);

    Action := CaFree;

  end;
end;

procedure TfmManDes.Panel3Exit(Sender: TObject);
var
  NroDes: integer;
begin
  inherited;

  if FatDes.State <> dsBrowse then
  begin

    if Trim(FatDesCodUnd.Value) = '' then
      fmsgErro('Campo de Preenchimento Obrigatorio.', EdCodUnd);
    if Trim(FatDesNomCon.Value) = '' then
      fmsgErro('Campo de Preenchimento Obrigatorio.', EdNomCon);

    if FatDesQtdVol.Value = 0 then
      fmsgErro('Campo de Preenchimento Obrigatorio.', EdQtdVol);

    if FatDes.State = dsInsert then
    begin

      with FatDes do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alteracoes}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
          ;

          if FatDes.State = dsBrowse then
            FatDes.Edit;

          EdQtdVol.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatDes.Close;
      FatDes.Open;

      FatPed.Close;
      FatPed.Open;

      FatDes.Append;

      EdQtdVol.SetFocus;

    end
    else
    begin

      NroDes := FatDesNroDes.Value;

      with FatDes do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alteracoes}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
          ;

          if FatDes.State = dsBrowse then
            FatDes.Edit;

          EdQtdVol.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatDes.Close;
      FatDes.Open;

      FatPed.Close;
      FatPed.Open;

      FatDes.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;NroDes', VarArrayOf([FatDesCodEmp.Value, FatDesDteRes.Value, FatDesNumRes.Value, FatDesSeqLib.Value,
        FatDesSeqFat.Value, NroDes]), [LoPartialKey]);

    end;

  end
  else
  begin

    EdQtdVol.Enabled := False;
    EdCodUnd.Enabled := False;
    EdNomCon.Enabled := False;
    EdPesDes.Enabled := False;
    EdPesliqDes.Enabled := False;

    grDes.SetFocus;

  end;
end;

procedure TfmManDes.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
  begin

    if FatDes.State <> dsBrowse then
      FatDes.CancelUpdates;

    EdQtdVol.Enabled := False;
    EdCodUnd.Enabled := False;
    EdNomCon.Enabled := False;
    EdPesDes.Enabled := False;
    EdPesliqDes.Enabled := False;

    grDes.SetFocus;

  end;

  if key = 123 then
  begin // F12-Finalizar Pedido //

    if FatDes.RecordCount > 0 then
    begin

      if grDes.Focused then
      begin

        try
          if FatPedTip.AsString = 'FP' then
            FATPED.UpdateObject := UpFat
          else if FatPedTip.AsString = 'FG' then
            FatPed.UpdateObject := upFatGer
          else if FatPedTip.AsString = 'CN' then
            FatPed.UpdateObject := upCmpNfs;

          if FatPed.State <> dsEdit then
            FatPed.Edit;

          fmManDs1 := TfmManDs1.Create(Self);

          fmManDs1.ShowModal;

        finally

          FreeAndNil(fmManDs1);

        end;

        if Finalizar = 'S' then
          Close
        else
          grDes.SetFocus;

      end;
    end;
  end;
end;

procedure TfmManDes.EdQtdVolExit(Sender: TObject);
begin
  inherited;
  if (Tecla = 'UP') then
  begin

    if FatPed.RecordCount > 0 then
    begin

      EdQtdVol.Enabled := False;
      EdCodUnd.Enabled := False;
      EdNomCon.Enabled := False;
      EdPesDes.Enabled := False;
      EdPesliqDes.Enabled := False;

      if FatDes.State <> dsBrowse then
        FatDes.CancelUpdates
      else
      begin

        if not FatDes.Bof then
          FatDes.Prior;

      end;

      grDes.SetFocus;

    end
    else
      EdQtdVol.SetFocus;
  end;
end;

procedure TfmManDes.EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if TEdit(Sender).Name = 'EdCodUnd' then
    if key = 112 then
    begin {F1 - Iniciais}

      try

        fmPsqUnd := TfmPsqUnd.Create(Self);

        fmPsqUnd.ShowModal;

        if Trim(fmPsqUnd.CodUnd) <> '' then
        begin

          FatDesCodUnd.Value := fmPsqUnd.CodUnd;

          EdCodUnd.Text := FatDesCodUnd.Value;

        end;

      finally

        FreeAndNil(fmPsqUnd);

      end;

      if Trim(FatDesCodUnd.Value) <> '' then
        EdNomCon.SetFocus
      else
        EdCodUnd.SetFocus;

    end;

  if key = vk_up then
  begin // Tecla - Seta para Cima //

    FatDes.Cancel;
    if grDes.CanFocus then
      grDes.SetFocus;

  end;
end;

procedure TfmManDes.grDesKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroDes: integer;
begin
  inherited;
  if key = 13 then
  begin // Tecla - ENTER //

    if FatDesCodEmp.Value > 0 then
    begin

      FatDes.Edit;

      EdQtdVol.Enabled := True;
      EdCodUnd.Enabled := True;
      EdNomCon.Enabled := True;
      EdPesDes.Enabled := True;
      EdPesliqDes.Enabled := True;

      EdQtdVol.SetFocus;

    end;
  end;

  if key = 40 then // Tecla - Seta para Baixo //
  begin
    if FatDes.RecordCount = FatDesSeqDes.AsInteger then
      FatDes.Append;
  end;

  if key = 46 then
  begin // Tecla - DEL //

    if FatDesCodEmp.Value > 0 then
    begin

      NroDes := FatDesNroDes.Value;

      FatDes.Delete;

      with FatDes do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transacao}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alteracoes}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a Transacao}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
          ;

          if FatDes.State <> dsBrowse then
            FatDes.CancelUpdates;

          grDes.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      FatDes.Close;
      FatDes.Open;

      FatPed.Close;
      FatPed.Open;

      if FatDes.Eof then
        FatDes.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;NroDes', VarArrayOf([FatDesCodEmp.Value, FatDesDteRes.Value, FatDesNumRes.Value, FatDesSeqLib.Value,
          FatDesSeqFat.Value, NroDes]), [LoPartialKey])
      else
      begin

        if FatPedQtiDes.Value = 0 then
          FatDes.Append
        else
          FatDes.Last;

      end;
    end;
  end;
end;

procedure TfmManDes.FatPedAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FatPed.Last;
  FatPed.First;

end;

procedure TfmManDes.FatDesAfterOpen(DataSet: TDataSet);
begin
  inherited;
  FatDes.Last;
  FatDes.First;
end;

procedure TfmManDes.EdPesliqDesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #13 then
  begin
    FatDes.Append;
  end;
end;

end.
