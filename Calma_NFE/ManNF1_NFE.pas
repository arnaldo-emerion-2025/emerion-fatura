unit ManNF1_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdbdatetimepicker, Mask, DBCtrls, hEdits, Buttons,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, AlignEdit, Db, DBTables,
  Wwquery, FShowPadrao, dxDBColorMemo, dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManNF1_NFE = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    EdFlgSai: TdxDBColorEdit;
    Label52: TLabel;
    EdFlgEnt: TdxDBColorEdit;
    Label53: TLabel;
    Label1: TLabel;
    EdCodCf1: TdxDBColorEdit;
    Label2: TLabel;
    EdCodCf2: TdxDBColorEdit;
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
    EdEspDev: TdxDBColorEdit;
    Label39: TLabel;
    Label3: TLabel;
    Label41: TLabel;
    Label40: TLabel;
    EdMarDev: TdxDBColorEdit;
    EdNroDev: TdxDBColorEdit;
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
  fmManNF1_NFE: TfmManNF1_NFE;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB, ManEn3_NFE, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmManNF1_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  Finalizar := 'N';

  fmManEn3_NFE.FatDev.Edit;

end;

procedure TfmManNF1_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bRetornar.OnClick(Sender);

  if key = 123 then
    bContinuar.OnClick(Sender);

end;

procedure TfmManNF1_NFE.bcontinuarClick(Sender: TObject);
var
  Id_EstPis: integer;
  Id_EstCof: integer;
begin

  ActiveControl := nil;

  fmmanen3_nfe.FatDevCodCf1.Value := Trim(fmmanen3_nfe.FatDevCodCf1.Value);
  fmmanen3_nfe.FatDevCodCf2.Value := Trim(fmmanen3_nfe.FatDevCodCf2.Value);
  fmmanen3_nfe.FatDevDesNat.Value := Trim(fmmanen3_nfe.FatDevDesNat.Value);
  fmmanen3_nfe.FatDevInsSub.Value := Trim(fmmanen3_nfe.FatDevInsSub.Value);
  fmmanen3_nfe.FatDevNomTra.Value := Trim(fmmanen3_nfe.FatDevNomTra.Value);
  fmmanen3_nfe.FatDevCgcTra.Value := Trim(fmmanen3_nfe.FatDevCgcTra.Value);
  fmmanen3_nfe.FatDevInsTra.Value := Trim(fmmanen3_nfe.FatDevInsTra.Value);
  fmmanen3_nfe.FatDevTenTra.Value := Trim(fmmanen3_nfe.FatDevTenTra.Value);
  fmmanen3_nfe.FatDevEndTra.Value := Trim(fmmanen3_nfe.FatDevEndTra.Value);
  fmmanen3_nfe.FatDevRefTra.Value := Trim(fmmanen3_nfe.FatDevRefTra.Value);
  fmmanen3_nfe.FatDevNumTra.Value := Trim(fmmanen3_nfe.FatDevNumTra.Value);
  fmmanen3_nfe.FatDevBaiTra.Value := Trim(fmmanen3_nfe.FatDevBaiTra.Value);
  fmmanen3_nfe.FatDevCidTra.Value := Trim(fmmanen3_nfe.FatDevCidTra.Value);
  fmmanen3_nfe.FatDevUfeTra.Value := Trim(fmmanen3_nfe.FatDevUfeTra.Value);
  fmmanen3_nfe.FatDevCepTra.Value := Trim(fmmanen3_nfe.FatDevCepTra.Value);
  fmmanen3_nfe.FatDevNroDev.Value := Trim(fmmanen3_nfe.FatDevNroDev.Value);
  fmmanen3_nfe.FatDevEspDev.Value := Trim(fmmanen3_nfe.FatDevEspDev.Value);
  fmmanen3_nfe.FatDevMarDev.Value := Trim(fmmanen3_nfe.FatDevMarDev.Value);
  fmmanen3_nfe.FatDevPlcTra.Value := Trim(fmmanen3_nfe.FatDevPlcTra.Value);
  fmmanen3_nfe.FatDevUfePlc.Value := Trim(fmmanen3_nfe.FatDevUfePlc.Value);
  fmmanen3_nfe.FatDevTefCli.Value := Trim(fmmanen3_nfe.FatDevTefCli.Value);
  fmmanen3_nfe.FatDevEnfCli.Value := Trim(fmmanen3_nfe.FatDevEnfCli.Value);
  fmmanen3_nfe.FatDevRffCli.Value := Trim(fmmanen3_nfe.FatDevRffCli.Value);
  fmmanen3_nfe.FatDevNrfCli.Value := Trim(fmmanen3_nfe.FatDevNrfCli.Value);
  fmmanen3_nfe.FatDevBafCli.Value := Trim(fmmanen3_nfe.FatDevBafCli.Value);
  fmmanen3_nfe.FatDevCifCli.Value := Trim(fmmanen3_nfe.FatDevCifCli.Value);
  fmmanen3_nfe.FatDevUffCli.Value := Trim(fmmanen3_nfe.FatDevUffCli.Value);
  fmmanen3_nfe.FatDevCefCli.Value := Trim(fmmanen3_nfe.FatDevCefCli.Value);
  fmmanen3_nfe.FatDevTenCli.Value := Trim(fmmanen3_nfe.FatDevTenCli.Value);
  fmmanen3_nfe.FatDevEndCli.Value := Trim(fmmanen3_nfe.FatDevEndCli.Value);
  fmmanen3_nfe.FatDevRefCli.Value := Trim(fmmanen3_nfe.FatDevRefCli.Value);
  fmmanen3_nfe.FatDevNumCli.Value := Trim(fmmanen3_nfe.FatDevNumCli.Value);
  fmmanen3_nfe.FatDevCgeCli.Value := Trim(fmmanen3_nfe.FatDevCgeCli.Value);
  fmmanen3_nfe.FatDevIneCli.Value := Trim(fmmanen3_nfe.FatDevIneCli.Value);
  fmmanen3_nfe.FatDevBaiCli.Value := Trim(fmmanen3_nfe.FatDevBaiCli.Value);
  fmmanen3_nfe.FatDevCidCli.Value := Trim(fmmanen3_nfe.FatDevCidCli.Value);
  fmmanen3_nfe.FatDevUfeCli.Value := Trim(fmmanen3_nfe.FatDevUfeCli.Value);
  fmmanen3_nfe.FatDevCepCli.Value := Trim(fmmanen3_nfe.FatDevCepCli.Value);

  if (Trim(fmmanen3_nfe.FatDevNfePis.Value) = '') or
    (Trim(fmmanen3_nfe.FatDevNfeCof.Value) = '') or (fmmanen3_nfe.FatDevId_EstSip.Value = 0) then
  begin

    with fmmanen3_nfe.quSQL, SQL do
    begin

      Close;
      Text := ' Select EstPfa.Id_EstPis,' +
        '        EstPfa.Id_EstCof,' +
        '        EstPfa.Id_EstSip ' +
        ' From EstPfa' +
        ' Where EstPfa.CodPfa = ' + QuotedStr(fmmanen3_nfe.FatDevCodPfa.Value) +
        '   and EstPfa.TipPfa = ' + QuotedStr(fmmanen3_nfe.FatDevTipPfa.Value);
      Open;

      Id_EstPis := FieldbyName('Id_EstPis').AsInteger;
      Id_EstCof := FieldbyName('Id_EstCof').AsInteger;

      if FieldbyName('Id_EstSip').AsInteger > 0 then
        fmmanen3_nfe.FatDevId_EstSip.Value := FieldbyName('Id_EstSip').AsInteger;

    end;

    {if fmmanen3_nfe.FatDevId_EstSip.Value > 0 then
    begin

      if Id_EstPis > 0 then
      begin

        with fmmanen3_nfe.quSQL, SQL do
        begin

          Close;
          Text := ' Select EstPis.SigNfe From EstPis Where EstPis.Id_EstPis = ' + QuotedStr(IntToStr(Id_EstPis));
          Open;

          fmmanen3_nfe.FatDevNfePis.Value := FieldbyName('SigNfe').AsString;

        end;

        if Id_EstCof > 0 then
        begin

          with fmmanen3_nfe.quSQL, SQL do
          begin

            Close;
            Text := ' Select EstCof.SigNfe From EstCof Where EstCof.Id_EstCof = ' + QuotedStr(IntToStr(Id_EstCof));
            Open;

            fmmanen3_nfe.FatDevNfeCof.Value := FieldbyName('SigNfe').AsString;

          end;

        end
        else
          fmsgErro('Situação tributaria do COFINS não informado no padrão de faturamento utilizado.', nil);

      end
      else
        fmsgErro('Situação tributaria do PIS não informado no padrão de faturamento utilizado.', nil);

    end
    else
      fmsgErro('Situação tributaria do IPI não informado no padrão de faturamento utilizado.', nil);}

  end;

  if (Trim(fmmanen3_nfe.FatDevTenTra.Value) <> '') or
    (Trim(fmmanen3_nfe.FatDevEndTra.Value) <> '') or
    (Trim(fmmanen3_nfe.FatDevRefTra.Value) <> '') or
    (Trim(fmmanen3_nfe.FatDevBaiTra.Value) <> '') or
    (Trim(fmmanen3_nfe.FatDevCidTra.Value) <> '') or
    (Trim(fmmanen3_nfe.FatDevUfeTra.Value) <> '') or
    (Trim(fmmanen3_nfe.FatDevCepTra.Value) <> '') then
  begin

    if Trim(fmmanen3_nfe.FatDevUfeTra.Value) = '' then
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdUfeTra);

    if fmmanen3_nfe.FatDevId_TraUfe.Value = 0 then
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdUfeTra);

    if fmmanen3_nfe.FatDevId_TraCie.Value = 0 then
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdId_TraCie);

  end;

  if Trim(fmmanen3_nfe.FatDevBafCli.Value) = '' then
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdBafCli);

  if Trim(fmmanen3_nfe.FatDevCifCli.Value) = '' then
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdCifCli);

  if Trim(fmmanen3_nfe.FatDevNrfCli.Value) = '' then
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdNrfCli);

  if fmmanen3_nfe.FatDevId_FinUff.Value = 0 then
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdUffCli);

  if fmmanen3_nfe.FatDevId_FinCif.Value = 0 then
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdId_FinCif);

  if Trim(fmmanen3_nfe.FatDevBaiCli.Value) = '' then
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdBaiCli);

  if Trim(fmmanen3_nfe.FatDevCidCli.Value) = '' then
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdCidCli);

  if Trim(fmmanen3_nfe.FatDevNumCli.Value) = '' then
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdNumCli);

  if fmmanen3_nfe.FatDevId_FinUfe.Value = 0 then
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdId_FinUfe);

  if fmmanen3_nfe.FatDevId_FinCie.Value = 0 then
    fmsgErro('Campo de preenchimento obrigatório não informado.', EdId_FinCie);

  with fmmanen3_nfe.FatDev do
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

      if fmmanen3_nfe.FatDev.State = dsBrowse then
        fmmanen3_nfe.FatDev.Edit;

      EdDesNat.SetFocus;

      raise;

    end;

    CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmmanen3_nfe.FatDev.Close;
  fmmanen3_nfe.FatDev.Open;

  Finalizar := 'S';

  Close;

end;

procedure TfmManNF1_NFE.FormShow(Sender: TObject);
begin
  inherited;

  CodTra_Ant := fmmanen3_nfe.FatDevCodTra.Value;
  UfeTra_Ant := fmmanen3_nfe.FatDevUfeTra.Value;
  UffCli_Ant := fmmanen3_nfe.FatDevUffCli.Value;
  UfeCli_Ant := fmmanen3_nfe.FatDevUfeCli.Value;

  Id_TraCie_Ant := fmmanen3_nfe.FatDevId_TraCie.Value;
  Id_FinCif_Ant := fmmanen3_nfe.FatDevId_FinCif.Value;
  Id_FinCie_Ant := fmmanen3_nfe.FatDevId_FinCie.Value;

  if Trim(fmmanen3_nfe.FatDevUfeTra.Value) <> '' then
  begin

    if fmmanen3_nfe.FatDevId_TraUfe.Value = 0 then
    begin

      with fmmanen3_nfe.quSQL, SQL do
      begin

        Close;
        Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmmanen3_nfe.FatDevUfeTra.Value);
        Open;

        if FieldbyName('Id_FinUfe').AsInteger > 0 then
          fmmanen3_nfe.FatDevId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
        else
          fmmanen3_nfe.FatDevId_TraUfe.Clear;

      end;
    end;

    if fmmanen3_nfe.FatDevId_TraUfe.Value > 0 then
    begin

      if Trim(fmmanen3_nfe.FatDevCidTra.Value) <> '' then
      begin

        if fmmanen3_nfe.FatDevId_TraCie.Value = 0 then
        begin

          with fmmanen3_nfe.quSQL, SQL do
          begin

            Close;
            Text := ' Select FinCie.Id_FinCie' +
              ' From FinCie' +
              ' Where FinCie.Id_FinUfe = ' + QuotedStr(IntToStr(fmmanen3_nfe.FatDevId_TraUfe.Value)) +
              '   and FinCie.NomCie = ' + QuotedStr(fmmanen3_nfe.FatDevCidTra.Value);
            Open;

            if FieldbyName('Id_FinCie').AsInteger > 0 then
              fmmanen3_nfe.FatDevId_TraCie.Value := FieldbyName('Id_FinCie').AsInteger
            else
              fmmanen3_nfe.FatDevId_TraCie.Clear;

          end;
        end;
      end;
    end;
  end;

  if Trim(fmmanen3_nfe.FatDevUffCli.Value) <> '' then
  begin

    if fmmanen3_nfe.FatDevId_FinUff.Value = 0 then
    begin

      with fmmanen3_nfe.quSQL, SQL do
      begin

        Close;
        Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmmanen3_nfe.FatDevUffCli.Value);
        Open;

        if FieldbyName('Id_FinUfe').AsInteger > 0 then
          fmmanen3_nfe.FatDevId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
        else
          fmmanen3_nfe.FatDevId_FinUff.Clear;

      end;
    end;

    if fmmanen3_nfe.FatDevId_FinUff.Value > 0 then
    begin

      if Trim(fmmanen3_nfe.FatDevCifCli.Value) <> '' then
      begin

        if fmmanen3_nfe.FatDevId_FinCif.Value = 0 then
        begin

          with fmmanen3_nfe.quSQL, SQL do
          begin

            Close;
            Text := ' Select FinCie.Id_FinCie' +
              ' From FinCie' +
              ' Where FinCie.Id_FinUfe = ' + QuotedStr(IntToStr(fmmanen3_nfe.FatDevId_FinUff.Value)) +
              '   and FinCie.NomCie = ' + QuotedStr(fmmanen3_nfe.FatDevCifCli.Value);
            Open;

            if FieldbyName('Id_FinCie').AsInteger > 0 then
              fmmanen3_nfe.FatDevId_FinCif.Value := FieldbyName('Id_FinCie').AsInteger
            else
              fmmanen3_nfe.FatDevId_FinCif.Clear;

          end;
        end;
      end;
    end;
  end;

  if Trim(fmmanen3_nfe.FatDevUfeCli.Value) <> '' then
  begin

    if fmmanen3_nfe.FatDevId_FinUfe.Value = 0 then
    begin

      with fmmanen3_nfe.quSQL, SQL do
      begin

        Close;
        Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmmanen3_nfe.FatDevUfeCli.Value);
        Open;

        if FieldbyName('Id_FinUfe').AsInteger > 0 then
          fmmanen3_nfe.FatDevId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
        else
          fmmanen3_nfe.FatDevId_FinUfe.Clear;

      end;
    end;

    if fmmanen3_nfe.FatDevId_FinUfe.Value > 0 then
    begin

      if Trim(fmmanen3_nfe.FatDevCidCli.Value) <> '' then
      begin

        if fmmanen3_nfe.FatDevId_FinCie.Value = 0 then
        begin

          with fmmanen3_nfe.quSQL, SQL do
          begin

            Close;
            Text := ' Select FinCie.Id_FinCie' +
              ' From FinCie' +
              ' Where FinCie.Id_FinUfe = ' + QuotedStr(IntToStr(fmmanen3_nfe.FatDevId_FinUfe.Value)) +
              '   and FinCie.NomCie = ' + QuotedStr(fmmanen3_nfe.FatDevCidCli.Value);
            Open;

            if FieldbyName('Id_FinCie').AsInteger > 0 then
              fmmanen3_nfe.FatDevId_FinCie.Value := FieldbyName('Id_FinCie').AsInteger
            else
              fmmanen3_nfe.FatDevId_FinCie.Clear;

          end;
        end;
      end;
    end;
  end;

  if fmmanen3_nfe.FatDevId_TraUfe.Value > 0 then
    pnId_TraUfe.Caption := IntToStr(fmmanen3_nfe.FatDevId_TraUfe.Value);
  if fmmanen3_nfe.FatDevId_FinUff.Value > 0 then
    pnId_FinUff.Caption := IntToStr(fmmanen3_nfe.FatDevId_FinUff.Value);
  if fmmanen3_nfe.FatDevId_FinUfe.Value > 0 then
    pnId_FinUfe.Caption := IntToStr(fmmanen3_nfe.FatDevId_FinUfe.Value);

  if Id_TraCie_Ant > 0 then
  begin

    with fmmanen3_nfe.quSQL, SQL do
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

    with fmmanen3_nfe.quSQL, SQL do
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

    with fmmanen3_nfe.quSQL, SQL do
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

  fmmanen3_nfe.FatDev.Edit;

  if TrimLeft(TrimRight(fmmanen3_nfe.FatDevCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmmanen3_nfe.FatDevCgeCli.Value))) > 11 then
      fmmanen3_nfe.FatDevCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmmanen3_nfe.FatDevCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmmanen3_nfe.FatDevCgeCli.EditMask := '';

  if TrimLeft(TrimRight(fmmanen3_nfe.FatDevCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmmanen3_nfe.FatDevCgcTra.Value)) <> '' then
      fmmanen3_nfe.FatDevCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmmanen3_nfe.FatDevCgcTra.EditMask := '';

  end
  else
    fmmanen3_nfe.FatDevCgcTra.EditMask := '';

  EdDesNat.SetFocus;

end;

procedure TfmManNF1_NFE.EdCgeCliExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmmanen3_nfe.FatDevCgeCli.Value)) <> '' then
  begin

    if Length(TrimLeft(TrimRight(fmmanen3_nfe.FatDevCgeCli.Value))) > 11 then
      fmmanen3_nfe.FatDevCgeCli.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmmanen3_nfe.FatDevCgeCli.EditMask := '!999.999.999\-99;0;';

  end
  else
    fmmanen3_nfe.FatDevCgeCli.EditMask := '';
end;

procedure TfmManNF1_NFE.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNF1_NFE.EdCgcTraExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmmanen3_nfe.FatDevCgcTra.Value)) <> '' then
  begin

    if TrimLeft(TrimRight(fmmanen3_nfe.FatDevCgcTra.Value)) <> '' then
      fmmanen3_nfe.FatDevCgcTra.EditMask := '!99.999.999/9999\-99;0;'
    else
      fmmanen3_nfe.FatDevCgcTra.EditMask := '';

  end
  else
    fmmanen3_nfe.FatDevCgcTra.EditMask := '';
end;

procedure TfmManNF1_NFE.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNF1_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmmanen3_nfe.FatDev.State <> dsBrowse then
    fmmanen3_nfe.FatDev.CancelUpdates;
end;

procedure TfmManNF1_NFE.EdCgeCliEnter(Sender: TObject);
begin
  inherited;
  if fmmanen3_nfe.FatDevCgeCli.EditMask <> '' then
    fmmanen3_nfe.FatDevCgeCli.EditMask := '';
end;

procedure TfmManNF1_NFE.EdCodTraExit(Sender: TObject);
begin
  inherited;
  if fmmanen3_nfe.FatDevCodTra.Value <> CodTra_Ant then
  begin

    CodTra_Ant := fmmanen3_nfe.FatDevCodTra.Value;

    if fmmanen3_nfe.FatDevCodTra.Value > 0 then
    begin

      with fmmanen3_nfe.quSQL, SQL do
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
          '        FinTra.SigUfe,' +
          '        FinTra.Id_FinUfe,' +
          '        FinTra.Id_FinCie ' +
          ' From FinTra' +
          ' Where FinTra.CodTra = ' + QuotedStr(IntToStr(CodTra_Ant));
        Open;

        fmmanen3_nfe.FatDevNomTra.Value := Trim(FieldbyName('NomTra').AsString);
        fmmanen3_nfe.FatDevCgcTra.Value := Trim(FieldbyName('CgcTra').AsString);
        fmmanen3_nfe.FatDevInsTra.Value := Trim(FieldbyName('InsTra').AsString);
        fmmanen3_nfe.FatDevTenTra.Value := Trim(FieldbyName('TenTra').AsString);
        fmmanen3_nfe.FatDevEndTra.Value := Trim(FieldbyName('EndTra').AsString);
        fmmanen3_nfe.FatDevRefTra.Value := Trim(FieldbyName('RefTra').AsString);
        fmmanen3_nfe.FatDevBaiTra.Value := Trim(FieldbyName('BaiTra').AsString);
        fmmanen3_nfe.FatDevCidTra.Value := Trim(FieldbyName('CidTra').AsString);
        fmmanen3_nfe.FatDevUfeTra.Value := Trim(FieldbyName('SigUfe').AsString);
        fmmanen3_nfe.FatDevCepTra.Value := Trim(FieldbyName('CepTra').AsString);

        UfeTra_Ant := fmmanen3_nfe.FatDevUfeTra.Value;

        if FieldbyName('Id_FinUfe').AsInteger > 0 then
        begin

          fmmanen3_nfe.FatDevId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger;

          pnId_TraUfe.Caption := IntToStr(fmmanen3_nfe.FatDevId_TraUfe.Value);

        end;

        if FieldbyName('Id_FinCie').AsInteger > 0 then
        begin

          fmmanen3_nfe.FatDevId_TraCie.Value := FieldbyName('Id_FinCie').AsInteger;

          Id_TraCie_Ant := fmmanen3_nfe.FatDevId_TraCie.Value;

          with fmmanen3_nfe.quSQL, SQL do
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

        EdNomTra.Text := fmmanen3_nfe.FatDevNomTra.Value;
        EdCgcTra.Text := fmmanen3_nfe.FatDevCgcTra.Value;
        EdInsTra.Text := fmmanen3_nfe.FatDevInsTra.Value;
        EdTenTra.Text := fmmanen3_nfe.FatDevTenTra.Value;
        EdEndTra.Text := fmmanen3_nfe.FatDevEndTra.Value;
        EdNumTra.Text := fmmanen3_nfe.FatDevNumTra.Value;
        EdRefTra.Text := fmmanen3_nfe.FatDevRefTra.Value;
        EdBaiTra.Text := fmmanen3_nfe.FatDevBaiTra.Value;
        EdCidTra.Text := fmmanen3_nfe.FatDevCidTra.Value;
        EdUfeTra.Text := fmmanen3_nfe.FatDevUfeTra.Value;
        EdCepTra.Text := fmmanen3_nfe.FatDevCepTra.Value;

        if fmmanen3_nfe.FatDevId_TraCie.Value > 0 then
          EdId_TraCie.Text := IntToStr(fmmanen3_nfe.FatDevId_TraCie.Value);

      end;

    end
    else
    begin

      fmmanen3_nfe.FatDevNomTra.Clear;
      fmmanen3_nfe.FatDevCgcTra.Clear;
      fmmanen3_nfe.FatDevInsTra.Clear;
      fmmanen3_nfe.FatDevTenTra.Clear;
      fmmanen3_nfe.FatDevEndTra.Clear;
      fmmanen3_nfe.FatDevRefTra.Clear;
      fmmanen3_nfe.FatDevBaiTra.Clear;
      fmmanen3_nfe.FatDevCidTra.Clear;
      fmmanen3_nfe.FatDevUfeTra.Clear;
      fmmanen3_nfe.FatDevCepTra.Clear;

    end;
  end;
end;

procedure TfmManNF1_NFE.EdCodTraKeyDown(Sender: TObject; var Key: Word;
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

        fmmanen3_nfe.FatDevCodTra.Value := fmAuxIni.CodTra;

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

        fmmanen3_nfe.FatDevCodTra.Value := fmAuxPsq.CodTra;

        EdCodTra.Text := IntToStr(fmAuxPsq.CodTra);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;

    if CodTra > 0 then
      EdCodTra.OnExit(Sender);

  end;
end;

procedure TfmManNF1_NFE.EdCodTraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManNF1_NFE.EdCodTraEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManNF1_NFE.EdDesNatEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := '';
end;

procedure TfmManNF1_NFE.EdUfeTraExit(Sender: TObject);
begin
  inherited;
  if fmmanen3_nfe.FatDevUfeTra.Value <> UfeTra_Ant then
  begin

    UfeTra_Ant := fmmanen3_nfe.FatDevUfeTra.Value;

    fmmanen3_nfe.FatDevId_TraCie.Clear;

    with fmmanen3_nfe.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmmanen3_nfe.FatDevUfeTra.Value);
      Open;

      if FieldbyName('Id_FinUfe').AsInteger > 0 then
        fmmanen3_nfe.FatDevId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
      else
        fmmanen3_nfe.FatDevId_TraUfe.Clear;

    end;

    if fmmanen3_nfe.FatDevId_TraUfe.Value > 0 then
      pnId_TraUfe.Caption := IntToStr(fmmanen3_nfe.FatDevId_TraUfe.Value);

  end;
end;

procedure TfmManNF1_NFE.EdId_TraCieExit(Sender: TObject);
begin
  inherited;
  if fmmanen3_nfe.FatDevId_TraCie.Value <> Id_TraCie_Ant then
  begin

    Id_TraCie_Ant := fmmanen3_nfe.FatDevId_TraCie.Value;

    with fmmanen3_nfe.quSQL, SQL do
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

procedure TfmManNF1_NFE.EdId_TraCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if fmmanen3_nfe.FatDevId_TraUfe.Value > 0 then
    begin

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmmanen3_nfe.FatDevId_TraUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then
        begin

          fmmanen3_nfe.FatDevId_TraCie.Value := fmAuxIni.Id_FinCie;

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

    if fmmanen3_nfe.FatDevId_TraUfe.Value > 0 then
    begin

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Municipios';

        fmAuxPsq.Id_FinUfe := fmmanen3_nfe.FatDevId_TraUfe.Value;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_FinCie > 0 then
        begin

          fmmanen3_nfe.FatDevId_TraCie.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManNF1_NFE.EdId_FinCifExit(Sender: TObject);
begin
  inherited;
  if fmmanen3_nfe.FatDevId_FinCif.Value <> Id_FinCif_Ant then
  begin

    Id_FinCif_Ant := fmmanen3_nfe.FatDevId_FinCif.Value;

    with fmmanen3_nfe.quSQL, SQL do
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

procedure TfmManNF1_NFE.EdId_FinCifKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if fmmanen3_nfe.FatDevId_FinUff.Value > 0 then
    begin

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmmanen3_nfe.FatDevId_FinUff.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then
        begin

          fmmanen3_nfe.FatDevId_FinCif.Value := fmAuxIni.Id_FinCie;

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

    if fmmanen3_nfe.FatDevId_FinUff.Value > 0 then
    begin

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Municipios';

        fmAuxPsq.Id_FinUfe := fmmanen3_nfe.FatDevId_FinUff.Value;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_FinCie > 0 then
        begin

          fmmanen3_nfe.FatDevId_FinCif.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManNF1_NFE.EdId_FinCieExit(Sender: TObject);
begin
  inherited;
  if fmmanen3_nfe.FatDevId_FinCie.Value <> Id_FinCie_Ant then
  begin

    Id_FinCie_Ant := fmmanen3_nfe.FatDevId_FinCie.Value;

    with fmmanen3_nfe.quSQL, SQL do
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

procedure TfmManNF1_NFE.EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    if fmmanen3_nfe.FatDevId_FinUfe.Value > 0 then
    begin

      try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmmanen3_nfe.FatDevId_FinUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then
        begin

          fmmanen3_nfe.FatDevId_FinCie.Value := fmAuxIni.Id_FinCie;

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

    if fmmanen3_nfe.FatDevId_FinUfe.Value > 0 then
    begin

      try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Municipios';

        fmAuxPsq.Id_FinUfe := fmmanen3_nfe.FatDevId_FinUfe.Value;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.Id_FinCie > 0 then
        begin

          fmmanen3_nfe.FatDevId_FinCie.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManNF1_NFE.EdUffCliExit(Sender: TObject);
begin
  inherited;
  if fmmanen3_nfe.FatDevUffCli.Value <> UffCli_Ant then
  begin

    UffCli_Ant := fmmanen3_nfe.FatDevUffCli.Value;

    fmmanen3_nfe.FatDevId_FinCif.Clear;

    with fmmanen3_nfe.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmmanen3_nfe.FatDevUffCli.Value);
      Open;

      if FieldbyName('Id_FinUfe').AsInteger > 0 then
        fmmanen3_nfe.FatDevId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
      else
        fmmanen3_nfe.FatDevId_FinUff.Clear;

    end;

    if fmmanen3_nfe.FatDevId_FinUff.Value > 0 then
      pnId_FinUff.Caption := IntToStr(fmmanen3_nfe.FatDevId_FinUff.Value);

  end;
end;

procedure TfmManNF1_NFE.EdUfeCliExit(Sender: TObject);
begin
  inherited;
  if fmmanen3_nfe.FatDevUfeCli.Value <> UfeCli_Ant then
  begin

    UfeCli_Ant := fmmanen3_nfe.FatDevUfeCli.Value;

    fmmanen3_nfe.FatDevId_FinCie.Clear;

    with fmmanen3_nfe.quSQL, SQL do
    begin

      Close;
      Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = ' + QuotedStr(fmmanen3_nfe.FatDevUfeCli.Value);
      Open;

      if FieldbyName('Id_FinUfe').AsInteger > 0 then
        fmmanen3_nfe.FatDevId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
      else
        fmmanen3_nfe.FatDevId_FinUfe.Clear;

    end;

    if fmmanen3_nfe.FatDevId_FinUfe.Value > 0 then
      pnId_FinUfe.Caption := IntToStr(fmmanen3_nfe.FatDevId_FinUfe.Value);

  end;
end;

procedure TfmManNF1_NFE.sbPsqCifClick(Sender: TObject);
begin
  inherited;
  if fmmanen3_nfe.FatDevId_FinUff.Value > 0 then
  begin

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Municipios';

      fmAuxIni.Id_FinUfe := fmmanen3_nfe.FatDevId_FinUff.Value;

      fmAuxIni.ShowModal;

      if fmAuxIni.Id_FinCie > 0 then
      begin

        fmmanen3_nfe.FatDevId_FinCif.Value := fmAuxIni.Id_FinCie;

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

procedure TfmManNF1_NFE.sbPsqCieClick(Sender: TObject);
begin
  inherited;
  if fmmanen3_nfe.FatDevId_FinUfe.Value > 0 then
  begin

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'Municipios';

      fmAuxIni.Id_FinUfe := fmmanen3_nfe.FatDevId_FinUfe.Value;

      fmAuxIni.ShowModal;

      if fmAuxIni.Id_FinCie > 0 then
      begin

        fmmanen3_nfe.FatDevId_FinCie.Value := fmAuxIni.Id_FinCie;

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

