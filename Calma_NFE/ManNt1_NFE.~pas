unit ManNt1_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdbdatetimepicker, Mask, DBCtrls, hEdits, Buttons,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, AlignEdit, Db, DBTables,
  Wwquery, FShowPadrao, dxDBColorMemo, dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManNt1_NFE = class(TfmShowPadrao)
    Label54: TLabel;
    EdDesNat: TdxDBColorEdit;
    Label51: TLabel;
    EdInsSub: TdxDBColorEdit;
    Label8: TLabel;
    Label47: TLabel;
    EdTotFrt: TdxDBColorCurrencyEdit;
    Label48: TLabel;
    EdTotSeg: TdxDBColorCurrencyEdit;
    Label49: TLabel;
    EdTotDes: TdxDBColorCurrencyEdit;
    Label9: TLabel;
    Label36: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label35: TLabel;
    Label38: TLabel;
    EdAltVol: TdxDBColorCurrencyEdit;
    EdUfeTra: TdxDBColorEdit;
    EdBaiTra: TdxDBColorEdit;
    EdTenTra: TdxDBColorEdit;
    EdCgcTra: TdxDBColorEdit;
    EdNomTra: TdxDBColorEdit;
    EdEndTra: TdxDBColorEdit;
    EdCepTra: TdxDBColorEdit;
    EdEspFat: TdxDBColorEdit;
    Label39: TLabel;
    Label3: TLabel;
    Label41: TLabel;
    Label40: TLabel;
    EdMarFat: TdxDBColorEdit;
    EdNroFat: TdxDBColorEdit;
    Label37: TLabel;
    EdInsTra: TdxDBColorEdit;
    Label34: TLabel;
    Label44: TLabel;
    Label42: TLabel;
    EdInfBrt: TdxDBColorCurrencyEdit;
    EdPlcTra: TdxDBColorEdit;
    EdCidTra: TdxDBColorEdit;
    Label7: TLabel;
    EdNumTra: TdxDBColorEdit;
    Label56: TLabel;
    EdTipFrt: TdxDBColorEdit;
    EdInfLiq: TdxDBColorCurrencyEdit;
    EdUfePlc: TdxDBColorEdit;
    Label5: TLabel;
    Label43: TLabel;
    Label11: TLabel;
    Label57: TLabel;
    Label61: TLabel;
    Label58: TLabel;
    EdBaiCli: TdxDBColorEdit;
    EdCgeCli: TdxDBColorEdit;
    EdTenCli: TdxDBColorEdit;
    EdEndCli: TdxDBColorEdit;
    Label62: TLabel;
    Label59: TLabel;
    EdCidCli: TdxDBColorEdit;
    EdIneCli: TdxDBColorEdit;
    Label60: TLabel;
    EdUfeCli: TdxDBColorEdit;
    Label4: TLabel;
    EdCepCli: TdxDBColorEdit;
    EdNumCli: TdxDBColorEdit;
    Label6: TLabel;
    bcontinuar: TBitBtn;
    bretornar: TBitBtn;
    Label125: TLabel;
    EdId_FinUfe: TdxDBColorEdit;
    pnId_FinUfe: TPanel;
    Label126: TLabel;
    EdId_FinCie: TdxDBColorEdit;
    sbPsqCie: TSpeedButton;
    pnNomCie: TPanel;
    EdNomCie: TdxDBColorEdit;
    EdRefCli: TdxDBColorEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdBafCli: TdxDBColorEdit;
    EdRffCli: TdxDBColorEdit;
    EdTefCli: TdxDBColorEdit;
    EdEnfCli: TdxDBColorEdit;
    Label18: TLabel;
    EdCifCli: TdxDBColorEdit;
    Label20: TLabel;
    EdUffCli: TdxDBColorEdit;
    Label21: TLabel;
    EdCefCli: TdxDBColorEdit;
    EdNrfCli: TdxDBColorEdit;
    Label22: TLabel;
    Label23: TLabel;
    EdId_FinUff: TdxDBColorEdit;
    pnId_FinUff: TPanel;
    Label24: TLabel;
    EdId_FinCif: TdxDBColorEdit;
    sbPsqCif: TSpeedButton;
    pnNomCif: TPanel;
    EdNomCif: TdxDBColorEdit;
    Label10: TLabel;
    EdRefTra: TdxDBColorEdit;
    Label25: TLabel;
    EdId_TraUfe: TdxDBColorEdit;
    pnId_TraUfe: TPanel;
    Label26: TLabel;
    EdId_TraCie: TdxDBColorEdit;
    sbTraCie: TSpeedButton;
    EdNomCia: TdxDBColorEdit;
    pnNomCia: TPanel;
    Label17: TLabel;
    EdCodTra: TdxDBColorEdit;
    Label31: TLabel;
    LbText: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure EdCgcTraExit(Sender: TObject);
    procedure EdCgeCliExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bRetornarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdCgeCliEnter(Sender: TObject);
    procedure EdCodTraExit(Sender: TObject);
    procedure EdCodTraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodTraKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodTraEnter(Sender: TObject);
    procedure EdDesNatEnter(Sender: TObject);
    procedure EdUfeTraExit(Sender: TObject);
    procedure EdId_TraCieExit(Sender: TObject);
    procedure EdId_TraCieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdId_FinCifExit(Sender: TObject);
    procedure EdId_FinCifKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdId_FinCieExit(Sender: TObject);
    procedure EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdUffCliExit(Sender: TObject);
    procedure EdUfeCliExit(Sender: TObject);
    procedure sbTraCieClick(Sender: TObject);
    procedure sbPsqCifClick(Sender: TObject);
    procedure sbPsqCieClick(Sender: TObject);
  private
    CodTra_Ant: integer;
    UfeTra_Ant: string;
    UffCli_Ant: string;
    UfeCli_Ant: string;
    Id_TraCie_Ant: integer;
    Id_FinCif_Ant: integer;
    Id_FinCie_Ant: integer;
    frete: double;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManNt1_NFE: TfmManNt1_NFE;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB, ManNot_NFE, ManNt2_NFE, AuxIni,
  AuxPsq;

{$R *.DFM}

procedure TfmManNt1_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  fmManNot_NFE.Finalizar := 'N';

  fmManNot_NFE.FatPed.Edit;
  frete := EdTotFrt.Value;

  if fmManNot_NFE.FatPedAltVol.AsFloat <= 0 then
    fmManNot_NFE.FatPedAltVol.AsFloat := fmManNot_NFE.FatPedTotVol.AsFloat;

end;

procedure TfmManNt1_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManNt1_NFE.bcontinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  fmManNot_NFE.FatPedCodCf1.Value := Trim(fmManNot_NFE.FatPedCodCf1.Value);
  fmManNot_NFE.FatPedCodCf2.Value := Trim(fmManNot_NFE.FatPedCodCf2.Value);
  fmManNot_NFE.FatPedDesNat.Value := Trim(fmManNot_NFE.FatPedDesNat.Value);
  fmManNot_NFE.FatPedInsSub.Value := Trim(fmManNot_NFE.FatPedInsSub.Value);
  fmManNot_NFE.FatPedNomTra.Value := Trim(fmManNot_NFE.FatPedNomTra.Value);
  fmManNot_NFE.FatPedCgcTra.Value := Trim(fmManNot_NFE.FatPedCgcTra.Value);
  fmManNot_NFE.FatPedInsTra.Value := Trim(fmManNot_NFE.FatPedInsTra.Value);
  fmManNot_NFE.FatPedTenTra.Value := Trim(fmManNot_NFE.FatPedTenTra.Value);
  fmManNot_NFE.FatPedEndTra.Value := Trim(fmManNot_NFE.FatPedEndTra.Value);
  fmManNot_NFE.FatPedRefTra.Value := Trim(fmManNot_NFE.FatPedRefTra.Value);
  fmManNot_NFE.FatPedNumTra.Value := Trim(fmManNot_NFE.FatPedNumTra.Value);
  fmManNot_NFE.FatPedBaiTra.Value := Trim(fmManNot_NFE.FatPedBaiTra.Value);
  fmManNot_NFE.FatPedCidTra.Value := Trim(fmManNot_NFE.FatPedCidTra.Value);
  fmManNot_NFE.FatPedUfeTra.Value := Trim(fmManNot_NFE.FatPedUfeTra.Value);
  fmManNot_NFE.FatPedCepTra.Value := Trim(fmManNot_NFE.FatPedCepTra.Value);
  fmManNot_NFE.FatPedNroFat.Value := Trim(fmManNot_NFE.FatPedNroFat.Value);
  fmManNot_NFE.FatPedPlcTra.Value := Trim(fmManNot_NFE.FatPedPlcTra.Value);
  fmManNot_NFE.FatPedUfePlc.Value := Trim(fmManNot_NFE.FatPedUfePlc.Value);
  fmManNot_NFE.FatPedTefCli.Value := Trim(fmManNot_NFE.FatPedTefCli.Value);
  fmManNot_NFE.FatPedEnfCli.Value := Trim(fmManNot_NFE.FatPedEnfCli.Value);
  fmManNot_NFE.FatPedRffCli.Value := Trim(fmManNot_NFE.FatPedRffCli.Value);
  fmManNot_NFE.FatPedNrfCli.Value := Trim(fmManNot_NFE.FatPedNrfCli.Value);
  fmManNot_NFE.FatPedBafCli.Value := Trim(fmManNot_NFE.FatPedBafCli.Value);
  fmManNot_NFE.FatPedCifCli.Value := Trim(fmManNot_NFE.FatPedCifCli.Value);
  fmManNot_NFE.FatPedUffCli.Value := Trim(fmManNot_NFE.FatPedUffCli.Value);
  fmManNot_NFE.FatPedCefCli.Value := Trim(fmManNot_NFE.FatPedCefCli.Value);
  fmManNot_NFE.FatPedTenCli.Value := Trim(fmManNot_NFE.FatPedTenCli.Value);
  fmManNot_NFE.FatPedEndCli.Value := Trim(fmManNot_NFE.FatPedEndCli.Value);
  fmManNot_NFE.FatPedRefCli.Value := Trim(fmManNot_NFE.FatPedRefCli.Value);
  fmManNot_NFE.FatPedNumCli.Value := Trim(fmManNot_NFE.FatPedNumCli.Value);
  fmManNot_NFE.FatPedCgeCli.Value := Trim(fmManNot_NFE.FatPedCgeCli.Value);
  fmManNot_NFE.FatPedIneCli.Value := Trim(fmManNot_NFE.FatPedIneCli.Value);
  fmManNot_NFE.FatPedBaiCli.Value := Trim(fmManNot_NFE.FatPedBaiCli.Value);
  fmManNot_NFE.FatPedCidCli.Value := Trim(fmManNot_NFE.FatPedCidCli.Value);
  fmManNot_NFE.FatPedUfeCli.Value := Trim(fmManNot_NFE.FatPedUfeCli.Value);
  fmManNot_NFE.FatPedCepCli.Value := Trim(fmManNot_NFE.FatPedCepCli.Value);

  if fmManNot_NFE.FatPedCodTra.Value > 0 then
    fmManNot_NFE.FatPedTraSda.Value := fmManNot_NFE.FatPedCodTra.Value;

  if (Trim(fmManNot_NFE.FatPedTenTra.Value) <> '') or
    (Trim(fmManNot_NFE.FatPedEndTra.Value) <> '') or
    (Trim(fmManNot_NFE.FatPedRefTra.Value) <> '') or
    (Trim(fmManNot_NFE.FatPedBaiTra.Value) <> '') or
    (Trim(fmManNot_NFE.FatPedCidTra.Value) <> '') or
    (Trim(fmManNot_NFE.FatPedUfeTra.Value) <> '') or
    (Trim(fmManNot_NFE.FatPedCepTra.Value) <> '') then
  begin

    if Trim(fmManNot_NFE.FatPedUfeTra.Value) = '' then
      fmsgErro('UF da  não transportadora informado.', EdUfeTra);

    if fmManNot_NFE.FatPedId_TraUfe.Value = 0 then
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdUfeTra);

    if fmManNot_NFE.FatPedId_TraCie.Value = 0 then
      fmsgErro('Código do municipio do transportadora não informado.', EdId_TraCie);

  end;

  if fmManNot_NFE.FatPedId_FinUff.Value = 0 then
    fmsgErro('Código da UF do Faturamento não informado.', EdUffCli);

  if fmManNot_NFE.FatPedId_FinCif.Value = 0 then
    fmsgErro('Código do municipio de faturamento não informado.', EdId_FinCif);

  if trim(fmManNot_NFE.fatpedUFECLI.AsString) <> '' then
  begin
  if fmManNot_NFE.FatPedId_FinUfe.Value = 0 then
    fmsgErro('Código da UF de entrega não informado.', EdId_FinUfe);

  if fmManNot_NFE.FatPedId_FinCie.Value = 0 then
    fmsgErro('Código do municipio de entrega não informado.', EdId_FinCie);
  end;

  if ((frete > 0) and (EdTotFrt.value = 0)) then
  begin
    FMsgErro('O frete não pode ser alterado para 0', EdTotFrt);
  end;

  with fmManNot_NFE.FatPed do
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

      if fmManNot_NFE.FatPed.State = dsBrowse then
        fmManNot_NFE.FatPed.Edit;

      //EdDesNat.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManNot_NFE.FatPed.Close;
  fmManNot_NFE.FatPed.Open;

  fmManNot_NFE.pnBasIcm.Caption := FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedBasIcm.Value);
  fmManNot_NFE.pnTotIcm.Caption := FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotIcm.Value);
  fmManNot_NFE.pnBasSub.Caption := FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedBasSub.Value);
  fmManNot_NFE.pnTotSub.Caption := FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotSub.Value);
  fmManNot_NFE.pnTotFat.Caption := FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotFat.Value);
  fmManNot_NFE.pnTotFrt.Caption := FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotFrt.Value);
  fmManNot_NFE.pnTotSeg.Caption := FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotSeg.Value);
  fmManNot_NFE.pnTotDes.Caption := FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotDes.Value);
  fmManNot_NFE.pnTotIpi.Caption := FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotIpi.Value);
  fmManNot_NFE.pnTotGer.Caption := FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotGer.Value);

  try

    fmManNt2_NFE := TfmManNt2_NFE.Create(Self);
    fmManNt2_NFE.ShowModal;

  finally

    FreeAndNil(fmManNt2_NFE);

  end;

  if fmManNot_NFE.Finalizar = 'S' then
    Close
  else
  begin

    fmManNot_NFE.FatPed.Close;
    fmManNot_NFE.FatPed.Open;

    fmManNot_NFE.FatPed.Edit;

    //EdDesNat.SetFocus;

  end;
end;

procedure TfmManNt1_NFE.FormShow(Sender: TObject);
begin
  inherited;

  CodTra_Ant := fmManNot_NFE.FatPedCodTra.Value;
  UfeTra_Ant := fmManNot_NFE.FatPedUfeTra.Value;
  UffCli_Ant := fmManNot_NFE.FatPedUffCli.Value;
  UfeCli_Ant := fmManNot_NFE.FatPedUfeCli.Value;

  Id_TraCie_Ant := fmManNot_NFE.FatPedId_TraCie.Value;
  Id_FinCif_Ant := fmManNot_NFE.FatPedId_FinCif.Value;
  Id_FinCie_Ant := fmManNot_NFE.FatPedId_FinCie.Value;

  if Trim(fmManNot_NFE.FatPedUfeTra.Value) <> '' then
  begin

    if fmManNot_NFE.FatPedId_TraUfe.Value = 0 then
    begin

      with fmManNot_NFE.quSQL, SQL do
      begin

        Close;
        Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManNot_NFE.FatPedUfeTra.Value);
        Open;

        if FieldbyName('Id_FinUfe').AsInteger > 0 then
          fmManNot_NFE.FatPedId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
        else
          fmManNot_NFE.FatPedId_TraUfe.Clear;

      end;
    end;
  end;

  if Trim(fmManNot_NFE.FatPedUffCli.Value) <> '' then
  begin

    if fmManNot_NFE.FatPedId_FinUff.Value = 0 then
    begin

      with fmManNot_NFE.quSQL, SQL do
      begin

        Close;
        Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManNot_NFE.FatPedUffCli.Value);
        Open;

        if FieldbyName('Id_FinUfe').AsInteger > 0 then
          fmManNot_NFE.FatPedId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
        else
          fmManNot_NFE.FatPedId_FinUff.Clear;

      end;
    end;
  end;

  if Trim(fmManNot_NFE.FatPedUfeCli.Value) <> '' then
  begin

    if fmManNot_NFE.FatPedId_FinUfe.Value = 0 then
    begin

      with fmManNot_NFE.quSQL, SQL do
      begin

        Close;
        Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManNot_NFE.FatPedUfeCli.Value);
        Open;

        if FieldbyName('Id_FinUfe').AsInteger > 0 then
          fmManNot_NFE.FatPedId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
        else
          fmManNot_NFE.FatPedId_FinUfe.Clear;

      end;
    end;
  end;

  if fmManNot_NFE.FatPedId_TraUfe.Value > 0 then
    pnId_TraUfe.Caption := IntToStr(fmManNot_NFE.FatPedId_TraUfe.Value);
  if fmManNot_NFE.FatPedId_FinUff.Value > 0 then
    pnId_FinUff.Caption := IntToStr(fmManNot_NFE.FatPedId_FinUff.Value);
  if fmManNot_NFE.FatPedId_FinUfe.Value > 0 then
    pnId_FinUfe.Caption := IntToStr(fmManNot_NFE.FatPedId_FinUfe.Value);

  if Id_TraCie_Ant > 0 then
  begin

    with fmManNot_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinCie.NomCie,' +
        '        FinCie.SigNfe ' +
        ' From FinCie' +
        ' Where FinCie.Id_FinCie = ' + QuotedStr(IntToStr(Id_TraCie_Ant));
      Open;

      pnNomCia.Caption := Trim(FieldbyName('NomCie').AsString) + ' IBGE: ' + Trim(FieldbyName('SigNFE').AsString);

    end;
  end;

  if Id_FinCif_Ant > 0 then
  begin

    with fmManNot_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinCie.NomCie,' +
        '        FinCie.SigNfe ' +
        ' From FinCie' +
        ' Where FinCie.Id_FinCie = ' + QuotedStr(IntToStr(Id_FinCif_Ant));
      Open;

      pnNomCif.Caption := Trim(FieldbyName('NomCie').AsString) + ' IBGE: ' + Trim(FieldbyName('SigNFE').AsString);

    end;
  end;

  if Id_FinCie_Ant > 0 then
  begin

    with fmManNot_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinCie.NomCie,' +
        '        FinCie.SigNfe ' +
        ' From FinCie' +
        ' Where FinCie.Id_FinCie = ' + QuotedStr(IntToStr(Id_FinCie_Ant));
      Open;

      pnNomCie.Caption := Trim(FieldbyName('NomCie').AsString) + ' IBGE: ' + Trim(FieldbyName('SigNFE').AsString);

    end;
  end;

  fmManNot_NFE.FatPed.Edit;

  if fmManNot_NFE.FatPedInfBrt.Value = 0 then
    fmManNot_NFE.FatPedInfBrt.Value := fmManNot_NFE.FatPedTotBrt.Value;
  if fmManNot_NFE.FatPedInfLiq.Value = 0 then
    fmManNot_NFE.FatPedInfLiq.Value := fmManNot_NFE.FatPedTotLiq.Value;

  with fmManNot_NFE.quSQL, SQL do
  begin

    Close;
    Text := ' Select FatPe2.CodCfo,' +
      '        Count(*) as QtdReg' +
      ' From FatPe2' +
      ' Where FatPe2.CodEmp = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedCodEmp.Value)) +
      '   and FatPe2.DteRes = ' + QuotedStr(fDateToSQL(fmManNot_NFE.FatPedDteRes.Value)) +
      '   and FatPe2.NumRes = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedNumRes.Value)) +
      '   and FatPe2.SeqLib = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedSeqLib.Value)) +
      '   and FatPe2.SeqFat = ' + QuotedStr(IntToStr(fmManNot_NFE.FatPedSeqFat.Value)) +
      ' Group by FatPe2.CodCfo' +
      ' Order by Count(*) Desc';
    Open;
    First;

  end;

  if Trim(fmManNot_NFE.quSQL.FieldbyName('CodCfo').AsString) <> '' then
  begin

    fmManNot_NFE.FatPedCodCf1.Value := Trim(fmManNot_NFE.quSQL.FieldbyName('CodCfo').AsString);

    if not fmManNot_NFE.quSQL.EOF then
    begin

      fmManNot_NFE.quSQL.Next;

      if Trim(fmManNot_NFE.quSQL.FieldbyName('CodCfo').AsString) <> '' then
      begin

        if Trim(fmManNot_NFE.quSQL.FieldbyName('CodCfo').AsString) <> fmManNot_NFE.FatPedCodCf1.Value then
          fmManNot_NFE.FatPedCodCf2.Value := Trim(fmManNot_NFE.quSQL.FieldbyName('CodCfo').AsString);

        if not fmManNot_NFE.quSQL.EOF then
        begin

          fmManNot_NFE.quSQL.Next;

          if Trim(fmManNot_NFE.quSQL.FieldbyName('CodCfo').AsString) <> '' then
          begin

            if Trim(fmManNot_NFE.quSQL.FieldbyName('CodCfo').AsString) <> fmManNot_NFE.FatPedCodCf1.Value then
            begin

              if Trim(fmManNot_NFE.quSQL.FieldbyName('CodCfo').AsString) <> fmManNot_NFE.FatPedCodCf2.Value then
                fmManNot_NFE.FatPedCodCf2.Value := Trim(fmManNot_NFE.FatPedCodCf2.Value) + '/' + Trim(fmManNot_NFE.quSQL.FieldbyName('CodCfo').AsString);

            end;
          end;
        end;
      end;
    end;
  end;

  fmManNot_NFE.quSQL.Close;

  if fmManNot_NFE.FatPedUfeFat.Value <> 'SP' then
  begin

    if fmManNot_NFE.FatPedTotSub.Value > 0 then
      fmManNot_NFE.FatPedObsFat.Value := 'Total de ICMS Substituicao R$ ' +
        PreString(FormatFloat('###,###,##0.00', fmManNot_NFE.FatPedTotSub.Value), 10) +
        #13 + #10 +
        fmManNot_NFE.FatPedObsFat.Value
    else
      fmManNot_NFE.FatPedObsFat.Value := fmManNot_NFE.FatPedObsFat.Value;

  end
  else
    fmManNot_NFE.FatPedObsFat.Value := fmManNot_NFE.FatPedObsFat.Value;

  if TrimLeft(TrimRight(fmManNot_NFE.FatPedCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmManNot_NFE.FatPedCgeCli.Value))) > 11 then
      fmManNot_NFE.FatPedCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNot_NFE.FatPedCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManNot_NFE.FatPedCgeCli.EditMask := '';

  if TrimLeft(TrimRight(fmManNot_NFE.FatPedCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmManNot_NFE.FatPedCgcTra.Value)) <> '' then
      fmManNot_NFE.FatPedCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNot_NFE.FatPedCgcTra.EditMask := '';

  end
  else
    fmManNot_NFE.FatPedCgcTra.EditMask := '';

  //EdDesNat.SetFocus;

end;

procedure TfmManNt1_NFE.EdCgeCliExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManNot_NFE.FatPedCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmManNot_NFE.FatPedCgeCli.Value))) > 11 then
      fmManNot_NFE.FatPedCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNot_NFE.FatPedCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManNot_NFE.FatPedCgeCli.EditMask := '';
end;

procedure TfmManNt1_NFE.EdCgcTraExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManNot_NFE.FatPedCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmManNot_NFE.FatPedCgcTra.Value)) <> '' then
      fmManNot_NFE.FatPedCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManNot_NFE.FatPedCgcTra.EditMask := '';

  end
  else
    fmManNot_NFE.FatPedCgcTra.EditMask := '';
end;

procedure TfmManNt1_NFE.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNt1_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManNot_NFE.FatPed.State <> dsBrowse then
    fmManNot_NFE.FatPed.CancelUpdates;
end;

procedure TfmManNt1_NFE.EdCgeCliEnter(Sender: TObject);
begin
  inherited;
  if fmManNot_NFE.FatPedCgeCli.EditMask <> '' then
    fmManNot_NFE.FatPedCgeCli.EditMask := '';
end;

procedure TfmManNt1_NFE.EdCodTraExit(Sender: TObject);
begin
  inherited;
  if fmManNot_NFE.FatPedCodTra.Value <> CodTra_Ant then
  begin

    CodTra_Ant := fmManNot_NFE.FatPedCodTra.Value;

    if fmManNot_NFE.FatPedCodTra.Value > 0 then
    begin

      with fmManNot_NFE.quSQL, SQL do
      begin

        Close;
        Text := ' Select FinTra.NomTra,' +
          '  FinTra.CgcTra,' +
          '  FinTra.InsTra,' +
          '  FinTra.CepTra,' +
          '  FinTra.TenTra,' +
          '  FinTra.EndTra,' +
          '  FinTra.NumTra,' +
          '  FinTra.RefTra,' +
          '  FinTra.BaiTra,' +
          '  FinTra.CidTra,' +
          '  FinTra.SigUfe ' +
          ' From FinTra' +
          ' Where FinTra.CodTra = ' + QuotedStr(IntToStr(CodTra_Ant));
        Open;

        fmManNot_NFE.FatPedNomTra.AsString := Trim(FieldbyName('NomTra').AsString);
        fmManNot_NFE.FatPedCgcTra.AsString := Trim(FieldbyName('CgcTra').AsString);
        fmManNot_NFE.FatPedInsTra.AsString := Trim(FieldbyName('InsTra').AsString);
        fmManNot_NFE.FatPedTenTra.AsString := Trim(FieldbyName('TenTra').AsString);
        fmManNot_NFE.FatPedEndTra.AsString := Trim(FieldbyName('EndTra').AsString);
        fmManNot_NFE.FatPedRefTra.AsString := Trim(FieldbyName('RefTra').AsString);
        fmManNot_NFE.FatPedBaiTra.AsString := Trim(FieldbyName('BaiTra').AsString);
        fmManNot_NFE.FatPedCidTra.AsString := Trim(FieldbyName('CidTra').AsString);
        fmManNot_NFE.FatPedUfeTra.AsString := Trim(FieldbyName('SigUfe').AsString);
        fmManNot_NFE.FatPedCepTra.AsString := Trim(FieldbyName('CepTra').AsString);
        fmManNot_NFE.FatPedNUMTRA.AsString := Trim(FieldbyName('NUMTRA').AsString);

      end;

    end
    else
    begin

      fmManNot_NFE.FatPedNomTra.Clear;
      fmManNot_NFE.FatPedCgcTra.Clear;
      fmManNot_NFE.FatPedInsTra.Clear;
      fmManNot_NFE.FatPedTenTra.Clear;
      fmManNot_NFE.FatPedEndTra.Clear;
      fmManNot_NFE.FatPedRefTra.Clear;
      fmManNot_NFE.FatPedBaiTra.Clear;
      fmManNot_NFE.FatPedCidTra.Clear;
      fmManNot_NFE.FatPedUfeTra.Clear;
      fmManNot_NFE.FatPedCepTra.Clear;

    end;
  end;
end;

procedure TfmManNt1_NFE.EdCodTraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  CodTra: integer;
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'T';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodTra > 0 then
      begin

        CodTra := fmAuxIni.CodTra;

        fmManNot_NFE.FatPedCodTra.Value := fmAuxIni.CodTra;

        EdCodTra.Text := IntToStr(fmAuxIni.CodTra);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    if CodTra > 0 then
      EdCodTra.OnExit(Sender);

  end;

  if key = 113 then
  begin {F2 - Inteligente}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'T';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodTra > 0 then
      begin

        CodTra := fmAuxPsq.CodTra;

        fmManNot_NFE.FatPedCodTra.Value := fmAuxPsq.CodTra;

        EdCodTra.Text := IntToStr(fmAuxPsq.CodTra);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if CodTra > 0 then
      EdCodTra.OnExit(Sender);

  end;
end;

procedure TfmManNt1_NFE.EdCodTraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManNt1_NFE.EdCodTraEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManNt1_NFE.EdDesNatEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := '';

end;

procedure TfmManNt1_NFE.EdUfeTraExit(Sender: TObject);
begin
  inherited;
  if fmManNot_NFE.FatPedUfeTra.Value <> UfeTra_Ant then
  begin

    UfeTra_Ant := fmManNot_NFE.FatPedUfeTra.Value;

    fmManNot_NFE.FatPedId_TraCie.Clear;

    with fmManNot_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManNot_NFE.FatPedUfeTra.Value);
      Open;

      if FieldbyName('Id_FinUfe').AsInteger > 0 then
        fmManNot_NFE.FatPedId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
      else
        fmManNot_NFE.FatPedId_TraUfe.Clear;

    end;

    if fmManNot_NFE.FatPedId_TraUfe.Value > 0 then
      pnId_TraUfe.Caption := IntToStr(fmManNot_NFE.FatPedId_TraUfe.Value);

  end;
end;

procedure TfmManNt1_NFE.EdId_TraCieExit(Sender: TObject);
begin
  inherited;
  if fmManNot_NFE.FatPedId_TraCie.Value <> Id_TraCie_Ant then
  begin

    Id_TraCie_Ant := fmManNot_NFE.FatPedId_TraCie.Value;

    with fmManNot_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinCie.NomCie,' +
        '        FinCie.SigNfe ' +
        ' From FinCie' +
        ' Where FinCie.Id_FinCie = ' + QuotedStr(IntToStr(Id_TraCie_Ant));
      Open;

      pnNomCia.Caption := Trim(FieldbyName('NomCie').AsString) + ' IBGE: ' + Trim(FieldbyName('SigNFE').AsString);

    end;
  end;
end;

procedure TfmManNt1_NFE.EdId_TraCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if fmManNot_NFE.FatPedId_TraUfe.Value > 0 then
    begin

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManNot_NFE.FatPedId_TraUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then
        begin

          fmManNot_NFE.FatPedId_TraCie.Value := fmAuxIni.Id_FinCie;

          pnNomCia.Caption := Trim(fmAuxIni.NomCie) + ' IBGE: ' + Trim(fmAuxIni.SigNFE);

        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      EdId_TraCie.SetFocus;

    end
    else
      fmsgErro('Código para UF da NFe não informado.', EdId_TraCie);

  end;

  if key = 113 then
  begin {F2 - Inteligente}

    if fmManNot_NFE.FatPedId_TraUfe.Value > 0 then
    begin

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Municipios';

        fmAuxPsq.Id_FinUfe := fmManNot_NFE.FatPedId_TraUfe.Value;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_FinCie > 0 then
        begin

          fmManNot_NFE.FatPedId_TraCie.Value := fmAuxPsq.Id_FinCie;

          pnNomCia.Caption := Trim(fmAuxPsq.NomCie) + ' IBGE: ' + Trim(fmAuxPsq.SigNFE);

        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      EdId_TraCie.SetFocus;

    end
    else
      fmsgErro('Código para UF da NFe não informado.', EdId_TraCie);

  end;
end;

procedure TfmManNt1_NFE.EdId_FinCifExit(Sender: TObject);
begin
  inherited;
  if fmManNot_NFE.FatPedId_FinCif.Value <> Id_FinCif_Ant then
  begin

    Id_FinCif_Ant := fmManNot_NFE.FatPedId_FinCif.Value;

    with fmManNot_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinCie.NomCie,' +
        '        FinCie.SigNfe ' +
        ' From FinCie' +
        ' Where FinCie.Id_FinCie = ' + QuotedStr(IntToStr(Id_FinCif_Ant));
      Open;

      pnNomCif.Caption := Trim(FieldbyName('NomCie').AsString) + ' IBGE: ' + Trim(FieldbyName('SigNFE').AsString);

    end;
  end;
end;

procedure TfmManNt1_NFE.EdId_FinCifKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if fmManNot_NFE.FatPedId_FinUff.Value > 0 then
    begin

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManNot_NFE.FatPedId_FinUff.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then
        begin

          fmManNot_NFE.FatPedId_FinCif.Value := fmAuxIni.Id_FinCie;

          pnNomCif.Caption := Trim(fmAuxIni.NomCie) + ' IBGE: ' + Trim(fmAuxIni.SigNFE);

        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      EdId_FinCif.SetFocus;

    end
    else
      fmsgErro('Código para UF da NFe não informado.', EdId_FinCif);

  end;

  if key = 113 then
  begin {F2 - Inteligente}

    if fmManNot_NFE.FatPedId_FinUff.Value > 0 then
    begin

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Municipios';

        fmAuxPsq.Id_FinUfe := fmManNot_NFE.FatPedId_FinUff.Value;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_FinCie > 0 then
        begin

          fmManNot_NFE.FatPedId_FinCif.Value := fmAuxPsq.Id_FinCie;

          pnNomCif.Caption := Trim(fmAuxPsq.NomCie) + ' IBGE: ' + Trim(fmAuxPsq.SigNFE);

        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      EdId_FinCif.SetFocus;

    end
    else
      fmsgErro('Código para UF da NFe não informado.', EdId_FinCif);

  end;
end;

procedure TfmManNt1_NFE.EdId_FinCieExit(Sender: TObject);
begin
  inherited;
  if fmManNot_NFE.FatPedId_FinCie.Value <> Id_FinCie_Ant then
  begin

    Id_FinCie_Ant := fmManNot_NFE.FatPedId_FinCie.Value;

    with fmManNot_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinCie.NomCie,' +
        '        FinCie.SigNfe ' +
        ' From FinCie' +
        ' Where FinCie.Id_FinCie = ' + QuotedStr(IntToStr(Id_FinCie_Ant));
      Open;

      pnNomCie.Caption := Trim(FieldbyName('NomCie').AsString) + ' IBGE: ' + Trim(FieldbyName('SigNFE').AsString);

    end;
  end;
end;

procedure TfmManNt1_NFE.EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if fmManNot_NFE.FatPedId_FinUfe.Value > 0 then
    begin

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManNot_NFE.FatPedId_FinUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then
        begin

          fmManNot_NFE.FatPedId_FinCie.Value := fmAuxIni.Id_FinCie;

          pnNomCie.Caption := Trim(fmAuxIni.NomCie) + ' IBGE: ' + Trim(fmAuxIni.SigNFE);

        end;

      finally

        FreeAndNil(fmAuxIni);

      end;

      EdId_FinCie.SetFocus;

    end
    else
      fmsgErro('Código para UF da NFe não informado.', EdId_FinCie);

  end;

  if key = 113 then
  begin {F2 - Inteligente}

    if fmManNot_NFE.FatPedId_FinUfe.Value > 0 then
    begin

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Municipios';

        fmAuxPsq.Id_FinUfe := fmManNot_NFE.FatPedId_FinUfe.Value;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_FinCie > 0 then
        begin

          fmManNot_NFE.FatPedId_FinCie.Value := fmAuxPsq.Id_FinCie;

          pnNomCie.Caption := Trim(fmAuxPsq.NomCie) + ' IBGE: ' + Trim(fmAuxPsq.SigNFE);

        end;

      finally

        FreeAndNil(fmAuxPsq);

      end;

      EdId_FinCie.SetFocus;

    end
    else
      fmsgErro('Código para UF da NFe não informado.', EdId_FinCie);

  end;
end;

procedure TfmManNt1_NFE.EdUffCliExit(Sender: TObject);
begin
  inherited;
  if fmManNot_NFE.FatPedUffCli.Value <> UffCli_Ant then
  begin

    UffCli_Ant := fmManNot_NFE.FatPedUffCli.Value;

    fmManNot_NFE.FatPedId_FinCif.Clear;

    with fmManNot_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManNot_NFE.FatPedUffCli.Value);
      Open;

      if FieldbyName('Id_FinUfe').AsInteger > 0 then
        fmManNot_NFE.FatPedId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
      else
        fmManNot_NFE.FatPedId_FinUff.Clear;

    end;

    if fmManNot_NFE.FatPedId_FinUff.Value > 0 then
      pnId_FinUff.Caption := IntToStr(fmManNot_NFE.FatPedId_FinUff.Value);

  end;
end;

procedure TfmManNt1_NFE.EdUfeCliExit(Sender: TObject);
begin
  inherited;
  if fmManNot_NFE.FatPedUfeCli.Value <> UfeCli_Ant then
  begin

    UfeCli_Ant := fmManNot_NFE.FatPedUfeCli.Value;

    fmManNot_NFE.FatPedId_FinCie.Clear;

    with fmManNot_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManNot_NFE.FatPedUfeCli.Value);
      Open;

      if FieldbyName('Id_FinUfe').AsInteger > 0 then
        fmManNot_NFE.FatPedId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
      else
        fmManNot_NFE.FatPedId_FinUfe.Clear;

    end;

    if fmManNot_NFE.FatPedId_FinUfe.Value > 0 then
      pnId_FinUfe.Caption := IntToStr(fmManNot_NFE.FatPedId_FinUfe.Value);

  end;
end;

procedure TfmManNt1_NFE.sbTraCieClick(Sender: TObject);
begin
  inherited;
  if fmManNot_NFE.FatPedId_TraUfe.Value > 0 then
  begin

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Municipios';

      fmAuxIni.Id_FinUfe := fmManNot_NFE.FatPedId_TraUfe.Value;

      fmAuxIni.ShowModal;

      if fmAuxIni.Id_FinCie > 0 then
      begin

        fmManNot_NFE.FatPedId_TraCie.Value := fmAuxIni.Id_FinCie;

        pnNomCia.Caption := Trim(fmAuxIni.NomCie) + ' IBGE: ' + Trim(fmAuxIni.SigNFE);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    EdId_TraCie.SetFocus;

  end
  else
    fmsgErro('Código para UF da NFe não informado.', EdId_TraCie);
end;

procedure TfmManNt1_NFE.sbPsqCifClick(Sender: TObject);
begin
  inherited;
  if fmManNot_NFE.FatPedId_FinUff.Value > 0 then
  begin

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Municipios';

      fmAuxIni.Id_FinUfe := fmManNot_NFE.FatPedId_FinUff.Value;

      fmAuxIni.ShowModal;

      if fmAuxIni.Id_FinCie > 0 then
      begin

        fmManNot_NFE.FatPedId_FinCif.Value := fmAuxIni.Id_FinCie;

        pnNomCif.Caption := Trim(fmAuxIni.NomCie) + ' IBGE: ' + Trim(fmAuxIni.SigNFE);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    EdId_FinCif.SetFocus;

  end
  else
    fmsgErro('Código para UF da NFe não informado.', EdId_FinCif);
end;

procedure TfmManNt1_NFE.sbPsqCieClick(Sender: TObject);
begin
  inherited;
  if fmManNot_NFE.FatPedId_FinUfe.Value > 0 then
  begin

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Municipios';

      fmAuxIni.Id_FinUfe := fmManNot_NFE.FatPedId_FinUfe.Value;

      fmAuxIni.ShowModal;

      if fmAuxIni.Id_FinCie > 0 then
      begin

        fmManNot_NFE.FatPedId_FinCie.Value := fmAuxIni.Id_FinCie;

        pnNomCie.Caption := Trim(fmAuxIni.NomCie) + ' IBGE: ' + Trim(fmAuxIni.SigNFE);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;

    EdId_FinCie.SetFocus;

  end
  else
    fmsgErro('Código para UF da NFe não informado.', EdId_FinCie);
end;

end.
