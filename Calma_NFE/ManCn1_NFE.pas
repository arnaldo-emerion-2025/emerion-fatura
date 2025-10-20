unit ManCn1_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdbdatetimepicker, Mask, DBCtrls, hEdits, Buttons,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, AlignEdit, Db, DBTables,
  Wwquery, FShowPadrao, dxDBColorMemo, dxDBColorCurrencyEdit, dxDBColorEdit,
  dxDBColorPickEdit;

type
  TfmManCn1_NFE = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label54: TLabel;
    EdDesNat: TdxDBColorEdit;
    Label51: TLabel;
    EdInsSub: TdxDBColorEdit;
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
    edLocEmb: TdxDBColorEdit;
    Label19: TLabel;
    EdUfEMB: TdxDBColorPickEdit;
    Label89: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure EdCgcTraExit(Sender: TObject);
    procedure EdCgeCliExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
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
    {Private declarations}
  public
    Finalizar: string;
    {Public declarations}
  end;

var
  fmManCn1_NFE: TfmManCn1_NFE;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB, ManLn7_NFE, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmManCn1_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  Finalizar := 'N';

  fmManLn7_NFE.FatPed.Edit;

end;

procedure TfmManCn1_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManCn1_NFE.bcontinuarClick(Sender: TObject);
var
  Id_EstPis: integer;
  Id_EstCof: integer;
begin

  ActiveControl := nil;

  fmManLn7_NFE.FatPedCodCf1.AsString := Trim(fmManLn7_NFE.FatPedCodCf1.AsString);
  fmManLn7_NFE.FatPedCodCf2.AsString := Trim(fmManLn7_NFE.FatPedCodCf2.AsString);
  fmManLn7_NFE.FatPedDesNat.AsString := Trim(fmManLn7_NFE.FatPedDesNat.AsString);
  fmManLn7_NFE.FatPedInsSub.AsString := Trim(fmManLn7_NFE.FatPedInsSub.AsString);
  fmManLn7_NFE.FatPedNomTra.AsString := Trim(fmManLn7_NFE.FatPedNomTra.AsString);
  fmManLn7_NFE.FatPedCgcTra.AsString := Trim(fmManLn7_NFE.FatPedCgcTra.AsString);
  fmManLn7_NFE.FatPedInsTra.AsString := Trim(fmManLn7_NFE.FatPedInsTra.AsString);
  fmManLn7_NFE.FatPedTenTra.AsString := Trim(fmManLn7_NFE.FatPedTenTra.AsString);
  fmManLn7_NFE.FatPedEndTra.AsString := Trim(fmManLn7_NFE.FatPedEndTra.AsString);
  fmManLn7_NFE.FatPedRefTra.AsString := Trim(fmManLn7_NFE.FatPedRefTra.AsString);
  fmManLn7_NFE.FatPedNumTra.AsString := Trim(fmManLn7_NFE.FatPedNumTra.AsString);
  fmManLn7_NFE.FatPedBaiTra.AsString := Trim(fmManLn7_NFE.FatPedBaiTra.AsString);
  fmManLn7_NFE.FatPedCidTra.AsString := Trim(fmManLn7_NFE.FatPedCidTra.AsString);
  fmManLn7_NFE.FatPedUfeTra.AsString := Trim(fmManLn7_NFE.FatPedUfeTra.AsString);
  fmManLn7_NFE.FatPedCepTra.AsString := Trim(fmManLn7_NFE.FatPedCepTra.AsString);
  fmManLn7_NFE.FatPedNroFat.AsString := Trim(fmManLn7_NFE.FatPedNroFat.AsString);
  fmManLn7_NFE.FatPedPlcTra.AsString := Trim(fmManLn7_NFE.FatPedPlcTra.AsString);
  fmManLn7_NFE.FatPedUfePlc.AsString := Trim(fmManLn7_NFE.FatPedUfePlc.AsString);
  fmManLn7_NFE.FatPedTefCli.AsString := Trim(fmManLn7_NFE.FatPedTefCli.AsString);
  fmManLn7_NFE.FatPedEnfCli.AsString := Trim(fmManLn7_NFE.FatPedEnfCli.AsString);
  fmManLn7_NFE.FatPedRffCli.AsString := Trim(fmManLn7_NFE.FatPedRffCli.AsString);
  fmManLn7_NFE.FatPedNrfCli.AsString := Trim(fmManLn7_NFE.FatPedNrfCli.AsString);
  fmManLn7_NFE.FatPedBafCli.AsString := Trim(fmManLn7_NFE.FatPedBafCli.AsString);
  fmManLn7_NFE.FatPedCifCli.AsString := Trim(fmManLn7_NFE.FatPedCifCli.AsString);
  fmManLn7_NFE.FatPedUffCli.AsString := Trim(fmManLn7_NFE.FatPedUffCli.AsString);
  fmManLn7_NFE.FatPedCefCli.AsString := Trim(fmManLn7_NFE.FatPedCefCli.AsString);
  fmManLn7_NFE.FatPedTenCli.AsString := Trim(fmManLn7_NFE.FatPedTenCli.AsString);
  fmManLn7_NFE.FatPedEndCli.AsString := Trim(fmManLn7_NFE.FatPedEndCli.AsString);
  fmManLn7_NFE.FatPedRefCli.AsString := Trim(fmManLn7_NFE.FatPedRefCli.AsString);
  fmManLn7_NFE.FatPedNumCli.AsString := Trim(fmManLn7_NFE.FatPedNumCli.AsString);
  fmManLn7_NFE.FatPedCgeCli.AsString := Trim(fmManLn7_NFE.FatPedCgeCli.AsString);
  fmManLn7_NFE.FatPedIneCli.AsString := Trim(fmManLn7_NFE.FatPedIneCli.AsString);
  fmManLn7_NFE.FatPedBaiCli.AsString := Trim(fmManLn7_NFE.FatPedBaiCli.AsString);
  fmManLn7_NFE.FatPedCidCli.AsString := Trim(fmManLn7_NFE.FatPedCidCli.AsString);
  fmManLn7_NFE.FatPedUfeCli.AsString := Trim(fmManLn7_NFE.FatPedUfeCli.AsString);
  fmManLn7_NFE.FatPedCepCli.AsString := Trim(fmManLn7_NFE.FatPedCepCli.AsString);

  if fmManLn7_NFE.FatPedCodTra.AsInteger > 0 then
    fmManLn7_NFE.FatPedTraSda.AsInteger := fmManLn7_NFE.FatPedCodTra.AsInteger;


  if (Trim(fmManLn7_NFE.FatPedTenTra.AsString) <> '') or
     (Trim(fmManLn7_NFE.FatPedEndTra.AsString) <> '') or
     (Trim(fmManLn7_NFE.FatPedRefTra.AsString) <> '') or
     (Trim(fmManLn7_NFE.FatPedBaiTra.AsString) <> '') or
     (Trim(fmManLn7_NFE.FatPedCidTra.AsString) <> '') or
     (Trim(fmManLn7_NFE.FatPedUfeTra.AsString) <> '') or
     (Trim(fmManLn7_NFE.FatPedCepTra.AsString) <> '') then
  begin

    if Trim(fmManLn7_NFE.FatPedUfeTra.AsString) = '' then
      fmsgErro('Campo de preenchimento obrigatório não informado. UF Transportadora.', EdUfeTra);

    if fmManLn7_NFE.FatPedId_TraUfe.AsInteger = 0 then
      fmsgErro('Campo de preenchimento obrigatório não informado. Cód. UF Transportadora.' , EdUfeTra);

    if fmManLn7_NFE.FatPedId_TraCie.AsInteger = 0 then
      fmsgErro('Campo de preenchimento obrigatório não informado.  Municipio Transportadora.', EdId_TraCie);

  end;

  if Trim(fmManLn7_NFE.FatPedBafCli.AsString) = '' then
    fmsgErro('Campo de preenchimento obrigatório não informado. Bairro do faturamento.', EdBafCli);

  if Trim(fmManLn7_NFE.FatPedCifCli.AsString) = '' then
    fmsgErro('Campo de preenchimento obrigatório não informado. Município do faturamento.', EdCifCli);

  if Trim(fmManLn7_NFE.FatPedNrfCli.AsString) = '' then
    fmsgErro('Campo de preenchimento obrigatório não informado. Nro do endereço do faturamento.', EdNrfCli);

  if fmManLn7_NFE.FatPedId_FinUff.AsInteger = 0 then
    fmsgErro('Campo de preenchimento obrigatório não informado. Cód. UF do faturamento.', EdUffCli);

  if fmManLn7_NFE.FatPedId_FinCif.AsInteger = 0 then
    fmsgErro('Campo de preenchimento obrigatório não informado. Cód. Município do faturamento.', EdId_FinCif);

  if Trim(fmManLn7_NFE.FatPedCepCli.AsString) <> '' then
  begin

    if Trim(fmManLn7_NFE.FatPedBaiCli.AsString) = '' then
      fmsgErro('Campo de preenchimento obrigatório não informado. Bairro de entrega.', EdBaiCli);

    if Trim(fmManLn7_NFE.FatPedCidCli.AsString) = '' then
      fmsgErro('Campo de preenchimento obrigatório não informado. Município de entrega.', EdCidCli);

    if Trim(fmManLn7_NFE.FatPedNumCli.AsString) = '' then
      fmsgErro('Campo de preenchimento obrigatório não informado. Nro do endereço de entrega.', EdNumCli);

    if fmManLn7_NFE.FatPedId_FinUfe.AsInteger = 0 then
      fmsgErro('Campo de preenchimento obrigatório não informado. Cód. UF de entrega.', EdId_FinUfe);

    if fmManLn7_NFE.FatPedId_FinCie.AsInteger = 0 then
      fmsgErro('Campo de preenchimento obrigatório não informado. Cód. munucipio de entrega.', EdId_FinCie);
  end
  else
  begin
     if MessageBox(handle,'Deseja realemnte emitir sem endereço de entrega.','Valida Entrega',MB_YESNO+MB_ICONEXCLAMATION) = IDNO then
     begin
       fmsgErro('Campo de preenchimento obrigatório não informado. CEP de entrega.', EdCepCli);
       abort;
     end;
  end;

  with fmManLn7_NFE.FatPed do
  begin

    fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

    try

      ApplyUpdates; {Tenta aplicar as alterações}

      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

    except
      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

      if fmManLn7_NFE.FatPed.State = dsBrowse then
        fmManLn7_NFE.FatPed.Edit;

      EdDesNat.SetFocus;

      raise;
    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManLn7_NFE.FatPed.Close;
  fmManLn7_NFE.FatPed.Open;

  Finalizar := 'S';

  Close;

end;

procedure TfmManCn1_NFE.FormShow(Sender: TObject);
begin
  inherited;

  CodTra_Ant := fmManLn7_NFE.FatPedCodTra.AsInteger;
  UfeTra_Ant := fmManLn7_NFE.FatPedUfeTra.AsString;
  UffCli_Ant := fmManLn7_NFE.FatPedUffCli.AsString;
  UfeCli_Ant := fmManLn7_NFE.FatPedUfeCli.AsString;

  Id_TraCie_Ant := fmManLn7_NFE.FatPedId_TraCie.AsInteger;
  Id_FinCif_Ant := fmManLn7_NFE.FatPedId_FinCif.AsInteger;
  Id_FinCie_Ant := fmManLn7_NFE.FatPedId_FinCie.AsInteger;

  if fmManLn7_NFE.FatPedCodCf1.AsString[1] = '7' then
  begin
    edUfEmb.Enabled := True;
    edLocEmb.Enabled := True;
  end
  else
  begin
    edUfEmb.Enabled := False;
    edLocEmb.Enabled := False;
  end;

  if Trim(fmManLn7_NFE.FatPedUfeTra.AsString) <> '' then
  begin

    if fmManLn7_NFE.FatPedId_TraUfe.AsInteger = 0 then
    begin

      with fmManLn7_NFE.quSQL, SQL do
      begin

        Close;
        Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManLn7_NFE.FatPedUfeTra.AsString);
        Open;

        if FieldbyName('Id_FinUfe').AsInteger > 0 then
          fmManLn7_NFE.FatPedId_TraUfe.AsInteger := FieldbyName('Id_FinUfe').AsInteger
        else
          fmManLn7_NFE.FatPedId_TraUfe.Clear;

      end;
    end;

    if fmManLn7_NFE.FatPedId_TraUfe.Value > 0 then
    begin

      if Trim(fmManLn7_NFE.FatPedCidTra.AsString) <> '' then
      begin

        if fmManLn7_NFE.FatPedId_TraCie.AsInteger = 0 then
        begin

          with fmManLn7_NFE.quSQL, SQL do
          begin

            Close;
            Text := ' Select FinCie.Id_FinCie ' +
              ' From FinCie ' +
              ' Where FinCie.Id_FinUfe = ' + QuotedStr(IntToStr(fmManLn7_NFE.FatPedId_TraUfe.AsInteger)) +
              '   and FinCie.NomCie = ' + QuotedStr(fmManLn7_NFE.FatPedCidTra.AsString);
            Open;

            if FieldbyName('Id_FinCie').AsInteger > 0 then
              fmManLn7_NFE.FatPedId_TraCie.Value := FieldbyName('Id_FinCie').AsInteger
            else
              fmManLn7_NFE.FatPedId_TraCie.Clear;

          end;
        end;
      end;
    end;
  end;

  if Trim(fmManLn7_NFE.FatPedUffCli.Value) <> '' then
  begin

    if fmManLn7_NFE.FatPedId_FinUff.Value = 0 then
    begin

      with fmManLn7_NFE.quSQL, SQL do
      begin

        Close;
        Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManLn7_NFE.FatPedUffCli.Value);
        Open;

        if FieldbyName('Id_FinUfe').AsInteger > 0 then
          fmManLn7_NFE.FatPedId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
        else
          fmManLn7_NFE.FatPedId_FinUff.Clear;

      end;
    end;

    if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then
    begin

      if Trim(fmManLn7_NFE.FatPedCifCli.Value) <> '' then
      begin

        if fmManLn7_NFE.FatPedId_FinCif.Value = 0 then
        begin

          with fmManLn7_NFE.quSQL, SQL do
          begin

            Close;
            Text := ' Select FinCie.Id_FinCie' +
              ' From FinCie' +
              ' Where FinCie.Id_FinUfe = ' + QuotedStr(IntToStr(fmManLn7_NFE.FatPedId_FinUff.Value)) +
              '   and FinCie.NomCie = ' + QuotedStr(fmManLn7_NFE.FatPedCifCli.Value);
            Open;

            if FieldbyName('Id_FinCie').AsInteger > 0 then
              fmManLn7_NFE.FatPedId_FinCif.Value := FieldbyName('Id_FinCie').AsInteger
            else
              fmManLn7_NFE.FatPedId_FinCif.Clear;

          end;
        end;
      end;
    end;
  end;

  if Trim(fmManLn7_NFE.FatPedUfeCli.Value) <> '' then
  begin

    if fmManLn7_NFE.FatPedId_FinUfe.Value = 0 then
    begin

      with fmManLn7_NFE.quSQL, SQL do
      begin

        Close;
        Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManLn7_NFE.FatPedUfeCli.Value);
        Open;

        if FieldbyName('Id_FinUfe').AsInteger > 0 then
          fmManLn7_NFE.FatPedId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
        else
          fmManLn7_NFE.FatPedId_FinUfe.Clear;

      end;
    end;

    if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then
    begin

      if Trim(fmManLn7_NFE.FatPedCidCli.Value) <> '' then
      begin

        if fmManLn7_NFE.FatPedId_FinCie.Value = 0 then
        begin

          with fmManLn7_NFE.quSQL, SQL do
          begin

            Close;
            Text := ' Select FinCie.Id_FinCie' +
              ' From FinCie' +
              ' Where FinCie.Id_FinUfe = ' + QuotedStr(IntToStr(fmManLn7_NFE.FatPedId_FinUfe.Value)) +
              '   and FinCie.NomCie = ' + QuotedStr(fmManLn7_NFE.FatPedCidCli.Value);
            Open;

            if FieldbyName('Id_FinCie').AsInteger > 0 then
              fmManLn7_NFE.FatPedId_FinCie.Value := FieldbyName('Id_FinCie').AsInteger
            else
              fmManLn7_NFE.FatPedId_FinCie.Clear;

          end;
        end;
      end;
    end;
  end;

  if fmManLn7_NFE.FatPedId_TraUfe.Value > 0 then
    pnId_TraUfe.Caption := IntToStr(fmManLn7_NFE.FatPedId_TraUfe.Value);
  if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then
    pnId_FinUff.Caption := IntToStr(fmManLn7_NFE.FatPedId_FinUff.Value);
  if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then
    pnId_FinUfe.Caption := IntToStr(fmManLn7_NFE.FatPedId_FinUfe.Value);

  if Id_TraCie_Ant > 0 then
  begin

    with fmManLn7_NFE.quSQL, SQL do
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

    with fmManLn7_NFE.quSQL, SQL do
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

    with fmManLn7_NFE.quSQL, SQL do
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

  fmManLn7_NFE.FatPed.Edit;

  if TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgeCli.Value))) > 11 then
      fmManLn7_NFE.FatPedCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManLn7_NFE.FatPedCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManLn7_NFE.FatPedCgeCli.EditMask := '';

  if TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgcTra.Value)) <> '' then
      fmManLn7_NFE.FatPedCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManLn7_NFE.FatPedCgcTra.EditMask := '';

  end
  else
    fmManLn7_NFE.FatPedCgcTra.EditMask := '';

  EdDesNat.SetFocus;

end;

procedure TfmManCn1_NFE.EdCgeCliExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgeCli.Value))) > 11 then
      fmManLn7_NFE.FatPedCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManLn7_NFE.FatPedCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmManLn7_NFE.FatPedCgeCli.EditMask := '';
end;

procedure TfmManCn1_NFE.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCn1_NFE.EdCgcTraExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgcTra.Value)) <> '' then
      fmManLn7_NFE.FatPedCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmManLn7_NFE.FatPedCgcTra.EditMask := '';

  end
  else
    fmManLn7_NFE.FatPedCgcTra.EditMask := '';
end;

procedure TfmManCn1_NFE.bRetornarClick(Sender: TObject);
begin
  Finalizar := 'N';
  close;
end;

procedure TfmManCn1_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManLn7_NFE.FatPed.State <> dsBrowse then
    fmManLn7_NFE.FatPed.CancelUpdates;
end;

procedure TfmManCn1_NFE.EdCgeCliEnter(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedCgeCli.EditMask <> '' then
    fmManLn7_NFE.FatPedCgeCli.EditMask := '';
end;

procedure TfmManCn1_NFE.EdCodTraExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedCodTra.Value <> CodTra_Ant then
  begin

    CodTra_Ant := fmManLn7_NFE.FatPedCodTra.Value;

    if fmManLn7_NFE.FatPedCodTra.Value > 0 then
    begin

      with fmManLn7_NFE.quSQL, SQL do
      begin

        Close;
        Text := ' Select FinTra.NomTra,' +
          '        FinTra.CgcTra,' +
          '        FinTra.InsTra,' +
          '        FinTra.CepTra,' +
          '        FinTra.TenTra,' +
          '        FinTra.EndTra,' +
          '        FinTra.NumTra,' +
          '        FinTra.RefTra,' +
          '        FinTra.BaiTra,' +
          '        FinTra.CidTra,' +
          '        FinTra.SigUfe ' +
          ' From FinTra' +
          ' Where FinTra.CodTra = ' + QuotedStr(IntToStr(CodTra_Ant));
        Open;

        fmManLn7_NFE.FatPedNomTra.AsString := Trim(FieldbyName('NomTra').AsString);
        fmManLn7_NFE.FatPedCgcTra.AsString := Trim(FieldbyName('CgcTra').AsString);
        fmManLn7_NFE.FatPedInsTra.AsString := Trim(FieldbyName('InsTra').AsString);
        fmManLn7_NFE.FatPedTenTra.AsString := Trim(FieldbyName('TenTra').AsString);
        fmManLn7_NFE.FatPedEndTra.AsString := Trim(FieldbyName('EndTra').AsString);
        fmManLn7_NFE.FatPedNumTra.AsString := Trim(FieldbyName('NumTra').AsString);
        fmManLn7_NFE.FatPedRefTra.AsString := Trim(FieldbyName('RefTra').AsString);
        fmManLn7_NFE.FatPedBaiTra.AsString := Trim(FieldbyName('BaiTra').AsString);
        fmManLn7_NFE.FatPedCidTra.AsString := Trim(FieldbyName('CidTra').AsString);
        fmManLn7_NFE.FatPedUfeTra.AsString := Trim(FieldbyName('SigUfe').AsString);
        fmManLn7_NFE.FatPedCepTra.AsString := Trim(FieldbyName('CepTra').AsString);

      end;

    end
    else
    begin

      fmManLn7_NFE.FatPedNomTra.Clear;
      fmManLn7_NFE.FatPedCgcTra.Clear;
      fmManLn7_NFE.FatPedInsTra.Clear;
      fmManLn7_NFE.FatPedTenTra.Clear;
      fmManLn7_NFE.FatPedEndTra.Clear;
      fmManLn7_NFE.FatPedRefTra.Clear;
      fmManLn7_NFE.FatPedBaiTra.Clear;
      fmManLn7_NFE.FatPedCidTra.Clear;
      fmManLn7_NFE.FatPedUfeTra.Clear;
      fmManLn7_NFE.FatPedCepTra.Clear;

    end;
  end;
end;

procedure TfmManCn1_NFE.EdCodTraKeyDown(Sender: TObject; var Key: Word;
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

        fmManLn7_NFE.FatPedCodTra.Value := fmAuxIni.CodTra;

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

        fmManLn7_NFE.FatPedCodTra.Value := fmAuxPsq.CodTra;

        EdCodTra.Text := IntToStr(fmAuxPsq.CodTra);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if CodTra > 0 then
      EdCodTra.OnExit(Sender);

  end;
end;

procedure TfmManCn1_NFE.EdCodTraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManCn1_NFE.EdCodTraEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManCn1_NFE.EdDesNatEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := '';
end;

procedure TfmManCn1_NFE.EdUfeTraExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedUfeTra.Value <> UfeTra_Ant then
  begin

    UfeTra_Ant := fmManLn7_NFE.FatPedUfeTra.Value;

    fmManLn7_NFE.FatPedId_TraCie.Clear;

    with fmManLn7_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManLn7_NFE.FatPedUfeTra.Value);
      Open;

      if FieldbyName('Id_FinUfe').AsInteger > 0 then
        fmManLn7_NFE.FatPedId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
      else
        fmManLn7_NFE.FatPedId_TraUfe.Clear;

    end;

    if fmManLn7_NFE.FatPedId_TraUfe.Value > 0 then
      pnId_TraUfe.Caption := IntToStr(fmManLn7_NFE.FatPedId_TraUfe.Value);

  end;
end;

procedure TfmManCn1_NFE.EdId_TraCieExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedId_TraCie.Value <> Id_TraCie_Ant then
  begin

    Id_TraCie_Ant := fmManLn7_NFE.FatPedId_TraCie.Value;

    with fmManLn7_NFE.quSQL, SQL do
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

procedure TfmManCn1_NFE.EdId_TraCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if fmManLn7_NFE.FatPedId_TraUfe.Value > 0 then
    begin

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManLn7_NFE.FatPedId_TraUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then
        begin

          fmManLn7_NFE.FatPedId_TraCie.Value := fmAuxIni.Id_FinCie;

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

    if fmManLn7_NFE.FatPedId_TraUfe.Value > 0 then
    begin

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Municipios';

        fmAuxPsq.Id_FinUfe := fmManLn7_NFE.FatPedId_TraUfe.Value;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_FinCie > 0 then
        begin

          fmManLn7_NFE.FatPedId_TraCie.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManCn1_NFE.EdId_FinCifExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedId_FinCif.Value <> Id_FinCif_Ant then
  begin

    Id_FinCif_Ant := fmManLn7_NFE.FatPedId_FinCif.Value;

    with fmManLn7_NFE.quSQL, SQL do
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

procedure TfmManCn1_NFE.EdId_FinCifKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then
    begin

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUff.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then
        begin

          fmManLn7_NFE.FatPedId_FinCif.Value := fmAuxIni.Id_FinCie;

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

    if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then
    begin

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Municipios';

        fmAuxPsq.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUff.Value;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_FinCie > 0 then
        begin

          fmManLn7_NFE.FatPedId_FinCif.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManCn1_NFE.EdId_FinCieExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedId_FinCie.Value <> Id_FinCie_Ant then
  begin

    Id_FinCie_Ant := fmManLn7_NFE.FatPedId_FinCie.Value;

    with fmManLn7_NFE.quSQL, SQL do
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

procedure TfmManCn1_NFE.EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then
    begin

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then
        begin

          fmManLn7_NFE.FatPedId_FinCie.Value := fmAuxIni.Id_FinCie;

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

    if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then
    begin

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Municipios';

        fmAuxPsq.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUfe.Value;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_FinCie > 0 then
        begin

          fmManLn7_NFE.FatPedId_FinCie.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManCn1_NFE.EdUffCliExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedUffCli.Value <> UffCli_Ant then
  begin

    UffCli_Ant := fmManLn7_NFE.FatPedUffCli.Value;

    fmManLn7_NFE.FatPedId_FinCif.Clear;

    with fmManLn7_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManLn7_NFE.FatPedUffCli.Value);
      Open;

      if FieldbyName('Id_FinUfe').AsInteger > 0 then
        fmManLn7_NFE.FatPedId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
      else
        fmManLn7_NFE.FatPedId_FinUff.Clear;

    end;

    if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then
      pnId_FinUff.Caption := IntToStr(fmManLn7_NFE.FatPedId_FinUff.Value);

  end;
end;

procedure TfmManCn1_NFE.EdUfeCliExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedUfeCli.Value <> UfeCli_Ant then
  begin

    UfeCli_Ant := fmManLn7_NFE.FatPedUfeCli.Value;

    fmManLn7_NFE.FatPedId_FinCie.Clear;

    with fmManLn7_NFE.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmManLn7_NFE.FatPedUfeCli.Value);
      Open;

      if FieldbyName('Id_FinUfe').AsInteger > 0 then
        fmManLn7_NFE.FatPedId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
      else
        fmManLn7_NFE.FatPedId_FinUfe.Clear;

    end;

    if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then
      pnId_FinUfe.Caption := IntToStr(fmManLn7_NFE.FatPedId_FinUfe.Value);

  end;
end;

procedure TfmManCn1_NFE.sbPsqCifClick(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then
  begin

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Municipios';

      fmAuxIni.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUff.Value;

      fmAuxIni.ShowModal;

      if fmAuxIni.Id_FinCie > 0 then
      begin

        fmManLn7_NFE.FatPedId_FinCif.Value := fmAuxIni.Id_FinCie;

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

procedure TfmManCn1_NFE.sbPsqCieClick(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then
  begin

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Municipios';

      fmAuxIni.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUfe.Value;

      fmAuxIni.ShowModal;

      if fmAuxIni.Id_FinCie > 0 then
      begin

        fmManLn7_NFE.FatPedId_FinCie.Value := fmAuxIni.Id_FinCie;

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
