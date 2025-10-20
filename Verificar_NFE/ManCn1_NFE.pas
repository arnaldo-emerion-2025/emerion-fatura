unit ManCn1_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdbdatetimepicker, Mask, DBCtrls, hEdits, Buttons,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, AlignEdit, Db, DBTables,
  Wwquery, FShowPadrao, dxDBColorMemo, dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManCn1_NFE = class(TfmShowPadrao)
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
    CodTra_Ant : integer;
    UfeTra_Ant : string;
    UffCli_Ant : string;
    UfeCli_Ant : string;
    Id_TraCie_Ant : integer;
    Id_FinCif_Ant : integer;
    Id_FinCie_Ant : integer;
    {Private declarations}
  public
    Finalizar : string;
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

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManCn1_NFE.bcontinuarClick(Sender: TObject);
var
  Id_EstPis : integer;
  Id_EstCof : integer;
begin

  ActiveControl := nil;

  fmManLn7_NFE.FatPedCodCf1.Value := Trim(fmManLn7_NFE.FatPedCodCf1.Value);
  fmManLn7_NFE.FatPedCodCf2.Value := Trim(fmManLn7_NFE.FatPedCodCf2.Value);
  fmManLn7_NFE.FatPedDesNat.Value := Trim(fmManLn7_NFE.FatPedDesNat.Value);
  fmManLn7_NFE.FatPedInsSub.Value := Trim(fmManLn7_NFE.FatPedInsSub.Value);
  fmManLn7_NFE.FatPedNomTra.Value := Trim(fmManLn7_NFE.FatPedNomTra.Value);
  fmManLn7_NFE.FatPedCgcTra.Value := Trim(fmManLn7_NFE.FatPedCgcTra.Value);
  fmManLn7_NFE.FatPedInsTra.Value := Trim(fmManLn7_NFE.FatPedInsTra.Value);
  fmManLn7_NFE.FatPedTenTra.Value := Trim(fmManLn7_NFE.FatPedTenTra.Value);
  fmManLn7_NFE.FatPedEndTra.Value := Trim(fmManLn7_NFE.FatPedEndTra.Value);
  fmManLn7_NFE.FatPedRefTra.Value := Trim(fmManLn7_NFE.FatPedRefTra.Value);
  fmManLn7_NFE.FatPedNumTra.Value := Trim(fmManLn7_NFE.FatPedNumTra.Value);
  fmManLn7_NFE.FatPedBaiTra.Value := Trim(fmManLn7_NFE.FatPedBaiTra.Value);
  fmManLn7_NFE.FatPedCidTra.Value := Trim(fmManLn7_NFE.FatPedCidTra.Value);
  fmManLn7_NFE.FatPedUfeTra.Value := Trim(fmManLn7_NFE.FatPedUfeTra.Value);
  fmManLn7_NFE.FatPedCepTra.Value := Trim(fmManLn7_NFE.FatPedCepTra.Value);
  fmManLn7_NFE.FatPedNroFat.Value := Trim(fmManLn7_NFE.FatPedNroFat.Value);
  fmManLn7_NFE.FatPedPlcTra.Value := Trim(fmManLn7_NFE.FatPedPlcTra.Value);
  fmManLn7_NFE.FatPedUfePlc.Value := Trim(fmManLn7_NFE.FatPedUfePlc.Value);
  fmManLn7_NFE.FatPedTefCli.Value := Trim(fmManLn7_NFE.FatPedTefCli.Value);
  fmManLn7_NFE.FatPedEnfCli.Value := Trim(fmManLn7_NFE.FatPedEnfCli.Value);
  fmManLn7_NFE.FatPedRffCli.Value := Trim(fmManLn7_NFE.FatPedRffCli.Value);
  fmManLn7_NFE.FatPedNrfCli.Value := Trim(fmManLn7_NFE.FatPedNrfCli.Value);
  fmManLn7_NFE.FatPedBafCli.Value := Trim(fmManLn7_NFE.FatPedBafCli.Value);
  fmManLn7_NFE.FatPedCifCli.Value := Trim(fmManLn7_NFE.FatPedCifCli.Value);
  fmManLn7_NFE.FatPedUffCli.Value := Trim(fmManLn7_NFE.FatPedUffCli.Value);
  fmManLn7_NFE.FatPedCefCli.Value := Trim(fmManLn7_NFE.FatPedCefCli.Value);
  fmManLn7_NFE.FatPedTenCli.Value := Trim(fmManLn7_NFE.FatPedTenCli.Value);
  fmManLn7_NFE.FatPedEndCli.Value := Trim(fmManLn7_NFE.FatPedEndCli.Value);
  fmManLn7_NFE.FatPedRefCli.Value := Trim(fmManLn7_NFE.FatPedRefCli.Value);
  fmManLn7_NFE.FatPedNumCli.Value := Trim(fmManLn7_NFE.FatPedNumCli.Value);
  fmManLn7_NFE.FatPedCgeCli.Value := Trim(fmManLn7_NFE.FatPedCgeCli.Value);
  fmManLn7_NFE.FatPedIneCli.Value := Trim(fmManLn7_NFE.FatPedIneCli.Value);
  fmManLn7_NFE.FatPedBaiCli.Value := Trim(fmManLn7_NFE.FatPedBaiCli.Value);
  fmManLn7_NFE.FatPedCidCli.Value := Trim(fmManLn7_NFE.FatPedCidCli.Value);
  fmManLn7_NFE.FatPedUfeCli.Value := Trim(fmManLn7_NFE.FatPedUfeCli.Value);
  fmManLn7_NFE.FatPedCepCli.Value := Trim(fmManLn7_NFE.FatPedCepCli.Value);

  if fmManLn7_NFE.FatPedCodTra.Value > 0 then
     fmManLn7_NFE.FatPedTraSda.Value := fmManLn7_NFE.FatPedCodTra.Value;

  if (Trim(fmManLn7_NFE.FatPedNfePis.Value) = '') or
     (Trim(fmManLn7_NFE.FatPedNfeCof.Value) = '') or (fmManLn7_NFE.FatPedId_EstSip.Value = 0) then begin

     with fmManLn7_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select EstPfa.Id_EstPis,'+
                  '        EstPfa.Id_EstCof,'+
                  '        EstPfa.Id_EstSip '+
                  ' From EstPfa'+
                  ' Where EstPfa.CodPfa = '+ QuotedStr(fmManLn7_NFE.FatPedCodPfa.Value)+
                  '   and EstPfa.TipPfa = '+ QuotedStr(fmManLn7_NFE.FatPedTipPfa.Value);
          Open;

          Id_EstPis := FieldbyName('Id_EstPis').AsInteger;
          Id_EstCof := FieldbyName('Id_EstCof').AsInteger;

          if FieldbyName('Id_EstSip').AsInteger > 0 then
             fmManLn7_NFE.FatPedId_EstSip.Value := FieldbyName('Id_EstSip').AsInteger;

     end;

     if fmManLn7_NFE.FatPedId_EstSip.Value > 0 then begin

        if Id_EstPis > 0 then begin

           with fmManLn7_NFE.quSQL,SQL do begin

                Close;
                Text := ' Select EstPis.SigNfe From EstPis Where EstPis.Id_EstPis = '+ QuotedStr(IntToStr(Id_EstPis));
                Open;

                fmManLn7_NFE.FatPedNfePis.Value := FieldbyName('SigNfe').AsString;

           end;

           if Id_EstCof > 0 then begin

              with fmManLn7_NFE.quSQL,SQL do begin

                   Close;
                   Text := ' Select EstCof.SigNfe From EstCof Where EstCof.Id_EstCof = '+ QuotedStr(IntToStr(Id_EstCof));
                   Open;

                   fmManLn7_NFE.FatPedNfeCof.Value := FieldbyName('SigNfe').AsString;

              end;

              end
           else
              fmsgErro('Situação tributaria do COFINS não informado no padrão de faturamento utilizado.',Nil);

           end
        else
           fmsgErro('Situação tributaria do PIS não informado no padrão de faturamento utilizado.',Nil);

        end
     else
        fmsgErro('Situação tributaria do IPI não informado no padrão de faturamento utilizado.',Nil);

  end;

  if (Trim(fmManLn7_NFE.FatPedTenTra.Value) <> '') or
     (Trim(fmManLn7_NFE.FatPedEndTra.Value) <> '') or
     (Trim(fmManLn7_NFE.FatPedRefTra.Value) <> '') or
     (Trim(fmManLn7_NFE.FatPedBaiTra.Value) <> '') or
     (Trim(fmManLn7_NFE.FatPedCidTra.Value) <> '') or
     (Trim(fmManLn7_NFE.FatPedUfeTra.Value) <> '') or
     (Trim(fmManLn7_NFE.FatPedCepTra.Value) <> '') then begin

     if Trim(fmManLn7_NFE.FatPedUfeTra.Value) = '' then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdUfeTra);

     if fmManLn7_NFE.FatPedId_TraUfe.Value = 0 then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdUfeTra);

     if fmManLn7_NFE.FatPedId_TraCie.Value = 0 then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_TraCie);

  end;

  if Trim(fmManLn7_NFE.FatPedBafCli.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdBafCli);

  if Trim(fmManLn7_NFE.FatPedCifCli.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdCifCli);

  if Trim(fmManLn7_NFE.FatPedNrfCli.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdNrfCli);

  if fmManLn7_NFE.FatPedId_FinUff.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdUffCli);

  if fmManLn7_NFE.FatPedId_FinCif.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinCif);

  if Trim(fmManLn7_NFE.FatPedBaiCli.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdBaiCli);

  if Trim(fmManLn7_NFE.FatPedCidCli.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdCidCli);

  if Trim(fmManLn7_NFE.FatPedNumCli.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdNumCli);

  if fmManLn7_NFE.FatPedId_FinUfe.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinUfe);

  if fmManLn7_NFE.FatPedId_FinCie.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinCie);

  with fmManLn7_NFE.FatPed do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManLn7_NFE.FatPed.State = dsBrowse then fmManLn7_NFE.FatPed.Edit;

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

  CodTra_Ant := fmManLn7_NFE.FatPedCodTra.Value;
  UfeTra_Ant := fmManLn7_NFE.FatPedUfeTra.Value;
  UffCli_Ant := fmManLn7_NFE.FatPedUffCli.Value;
  UfeCli_Ant := fmManLn7_NFE.FatPedUfeCli.Value;

  Id_TraCie_Ant := fmManLn7_NFE.FatPedId_TraCie.Value;
  Id_FinCif_Ant := fmManLn7_NFE.FatPedId_FinCif.Value;
  Id_FinCie_Ant := fmManLn7_NFE.FatPedId_FinCie.Value;

  if Trim(fmManLn7_NFE.FatPedUfeTra.Value) <> '' then begin

     if fmManLn7_NFE.FatPedId_TraUfe.Value = 0 then begin

        with fmManLn7_NFE.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManLn7_NFE.FatPedUfeTra.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManLn7_NFE.FatPedId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManLn7_NFE.FatPedId_TraUfe.Clear;

        end;
     end;

     if fmManLn7_NFE.FatPedId_TraUfe.Value > 0 then begin

        if Trim(fmManLn7_NFE.FatPedCidTra.Value) <> '' then begin

           if fmManLn7_NFE.FatPedId_TraCie.Value = 0 then begin

              with fmManLn7_NFE.quSQL,SQL do begin

                   Close;
                   Text := ' Select FinCie.Id_FinCie'+
                           ' From FinCie'+
                           ' Where FinCie.Id_FinUfe = '+ QuotedStr(IntToStr(fmManLn7_NFE.FatPedId_TraUfe.Value)) +
                           '   and FinCie.NomCie = '+ QuotedStr(fmManLn7_NFE.FatPedCidTra.Value) ;
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

  if Trim(fmManLn7_NFE.FatPedUffCli.Value) <> '' then begin

     if fmManLn7_NFE.FatPedId_FinUff.Value = 0 then begin

        with fmManLn7_NFE.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManLn7_NFE.FatPedUffCli.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManLn7_NFE.FatPedId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManLn7_NFE.FatPedId_FinUff.Clear;

        end;
     end;

     if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then begin

        if Trim(fmManLn7_NFE.FatPedCifCli.Value) <> '' then begin

           if fmManLn7_NFE.FatPedId_FinCif.Value = 0 then begin

              with fmManLn7_NFE.quSQL,SQL do begin

                   Close;
                   Text := ' Select FinCie.Id_FinCie'+
                           ' From FinCie'+
                           ' Where FinCie.Id_FinUfe = '+ QuotedStr(IntToStr(fmManLn7_NFE.FatPedId_FinUff.Value)) +
                           '   and FinCie.NomCie = '+ QuotedStr(fmManLn7_NFE.FatPedCifCli.Value) ;
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

  if Trim(fmManLn7_NFE.FatPedUfeCli.Value) <> '' then begin

     if fmManLn7_NFE.FatPedId_FinUfe.Value = 0 then begin

        with fmManLn7_NFE.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManLn7_NFE.FatPedUfeCli.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManLn7_NFE.FatPedId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManLn7_NFE.FatPedId_FinUfe.Clear;

        end;
     end;

     if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then begin

        if Trim(fmManLn7_NFE.FatPedCidCli.Value) <> '' then begin

           if fmManLn7_NFE.FatPedId_FinCie.Value = 0 then begin

              with fmManLn7_NFE.quSQL,SQL do begin

                   Close;
                   Text := ' Select FinCie.Id_FinCie'+
                           ' From FinCie'+
                           ' Where FinCie.Id_FinUfe = '+ QuotedStr(IntToStr(fmManLn7_NFE.FatPedId_FinUfe.Value)) +
                           '   and FinCie.NomCie = '+ QuotedStr(fmManLn7_NFE.FatPedCidCli.Value) ;
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

  if fmManLn7_NFE.FatPedId_TraUfe.Value > 0 then pnId_TraUfe.Caption := IntToStr(fmManLn7_NFE.FatPedId_TraUfe.Value);
  if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then pnId_FinUff.Caption := IntToStr(fmManLn7_NFE.FatPedId_FinUff.Value);
  if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then pnId_FinUfe.Caption := IntToStr(fmManLn7_NFE.FatPedId_FinUfe.Value);

  if Id_TraCie_Ant > 0 then begin

     with fmManLn7_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinCie.NomCie,'+
                  '        FinCie.SigNfe '+
                  ' From FinCie'+
                  ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_TraCie_Ant));
          Open;

          pnNomCia.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

     end;
  end;

  if Id_FinCif_Ant > 0 then begin

     with fmManLn7_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinCie.NomCie,'+
                  '        FinCie.SigNfe '+
                  ' From FinCie'+
                  ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCif_Ant));
          Open;

          pnNomCif.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

     end;
  end;

  if Id_FinCie_Ant > 0 then begin

     with fmManLn7_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinCie.NomCie,'+
                  '        FinCie.SigNfe '+
                  ' From FinCie'+
                  ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie_Ant));
          Open;

          pnNomCie.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

     end;
  end;

  fmManLn7_NFE.FatPed.Edit;

  if TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgeCli.Value)) <> '' then begin

     if Length(TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgeCli.Value))) > 11 then
        fmManLn7_NFE.FatPedCgeCli.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManLn7_NFE.FatPedCgeCli.EditMask := '!999.999.999\-99;0;';

     end
  else
     fmManLn7_NFE.FatPedCgeCli.EditMask := '';

  if TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgcTra.Value)) <> '' then begin

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
  if TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgeCli.Value)) <> '' then begin

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
  if TrimLeft(TrimRight(fmManLn7_NFE.FatPedCgcTra.Value)) <> '' then begin

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
  close;
end;

procedure TfmManCn1_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManLn7_NFE.FatPed.State <> dsBrowse then fmManLn7_NFE.FatPed.CancelUpdates;
end;

procedure TfmManCn1_NFE.EdCgeCliEnter(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedCgeCli.EditMask <> '' then fmManLn7_NFE.FatPedCgeCli.EditMask := '';
end;

procedure TfmManCn1_NFE.EdCodTraExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedCodTra.Value <> CodTra_Ant then begin

     CodTra_Ant := fmManLn7_NFE.FatPedCodTra.Value;
     
     if fmManLn7_NFE.FatPedCodTra.Value > 0 then begin

        with fmManLn7_NFE.quSQL,SQL do begin

             Close;
             Text := ' Select FinTra.NomTra,'+
                     '        FinTra.CgcTra,'+
                     '        FinTra.InsTra,'+                  
                     '        FinTra.CepTra,'+
                     '        FinTra.TenTra,'+
                     '        FinTra.EndTra,'+
                     '        FinTra.NumTra,'+
                     '        FinTra.RefTra,'+
                     '        FinTra.BaiTra,'+
                     '        FinTra.CidTra,'+
                     '        FinTra.SigUfe '+
                     ' From FinTra'+
                     ' Where FinTra.CodTra = '+ QuotedStr(IntToStr(CodTra_Ant));
             Open;

             fmManLn7_NFE.FatPedNomTra.Value := Trim(FieldbyName('NomTra').AsString);
             fmManLn7_NFE.FatPedCgcTra.Value := Trim(FieldbyName('CgcTra').AsString);
             fmManLn7_NFE.FatPedInsTra.Value := Trim(FieldbyName('InsTra').AsString);
             fmManLn7_NFE.FatPedTenTra.Value := Trim(FieldbyName('TenTra').AsString);
             fmManLn7_NFE.FatPedEndTra.Value := Trim(FieldbyName('EndTra').AsString);
             fmManLn7_NFE.FatPedRefTra.Value := Trim(FieldbyName('RefTra').AsString);
             fmManLn7_NFE.FatPedBaiTra.Value := Trim(FieldbyName('BaiTra').AsString);
             fmManLn7_NFE.FatPedCidTra.Value := Trim(FieldbyName('CidTra').AsString);
             fmManLn7_NFE.FatPedUfeTra.Value := Trim(FieldbyName('SigUfe').AsString);
             fmManLn7_NFE.FatPedCepTra.Value := Trim(FieldbyName('CepTra').AsString);

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
  CodTra : integer;
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'T';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodTra > 0 then begin

           CodTra := fmAuxIni.CodTra;
           
           fmManLn7_NFE.FatPedCodTra.Value := fmAuxIni.CodTra;

           EdCodTra.Text := IntToStr(fmAuxIni.CodTra);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if CodTra > 0 then EdCodTra.OnExit(Sender);

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'T';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodTra > 0 then begin

           CodTra := fmAuxPsq.CodTra;

           fmManLn7_NFE.FatPedCodTra.Value := fmAuxPsq.CodTra;

           EdCodTra.Text := IntToStr(fmAuxPsq.CodTra);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CodTra > 0 then EdCodTra.OnExit(Sender);

  end;
end;

procedure TfmManCn1_NFE.EdCodTraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
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
  if fmManLn7_NFE.FatPedUfeTra.Value <> UfeTra_Ant then begin

     UfeTra_Ant := fmManLn7_NFE.FatPedUfeTra.Value;

     fmManLn7_NFE.FatPedId_TraCie.Clear;

     with fmManLn7_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManLn7_NFE.FatPedUfeTra.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManLn7_NFE.FatPedId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManLn7_NFE.FatPedId_TraUfe.Clear;

     end;

     if fmManLn7_NFE.FatPedId_TraUfe.Value > 0 then pnId_TraUfe.Caption := IntToStr(fmManLn7_NFE.FatPedId_TraUfe.Value);
     
  end;
end;

procedure TfmManCn1_NFE.EdId_TraCieExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedId_TraCie.Value <> Id_TraCie_Ant then begin

     Id_TraCie_Ant := fmManLn7_NFE.FatPedId_TraCie.Value;

     with fmManLn7_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinCie.NomCie,'+
                  '        FinCie.SigNfe '+
                  ' From FinCie'+
                  ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_TraCie_Ant));
          Open;

          pnNomCia.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

     end;
  end;
end;

procedure TfmManCn1_NFE.EdId_TraCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManLn7_NFE.FatPedId_TraUfe.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManLn7_NFE.FatPedId_TraUfe.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManLn7_NFE.FatPedId_TraCie.Value := fmAuxIni.Id_FinCie;

              pnNomCia.Caption := Trim(fmAuxIni.NomCie)+' IBGE: '+Trim(fmAuxIni.SigNFE);

           end;

         finally

           FreeAndNil(fmAuxIni);

        end;

        EdId_TraCie.SetFocus;

        end
     else
        fmsgErro('Código para UF da NFe não informado.',EdId_TraCie);

  end;

  if key = 113 then begin {F2 - Inteligente}

     if fmManLn7_NFE.FatPedId_TraUfe.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManLn7_NFE.FatPedId_TraUfe.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManLn7_NFE.FatPedId_TraCie.Value := fmAuxPsq.Id_FinCie;

              pnNomCia.Caption := Trim(fmAuxPsq.NomCie)+' IBGE: '+Trim(fmAuxPsq.SigNFE);

            end;
            
        finally

           FreeAndNil(fmAuxPsq);

        end;

        EdId_TraCie.SetFocus;

        end
     else
        fmsgErro('Código para UF da NFe não informado.',EdId_TraCie);

  end;
end;

procedure TfmManCn1_NFE.EdId_FinCifExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedId_FinCif.Value <> Id_FinCif_Ant then begin

     Id_FinCif_Ant := fmManLn7_NFE.FatPedId_FinCif.Value;

     with fmManLn7_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinCie.NomCie,'+
                  '        FinCie.SigNfe '+
                  ' From FinCie'+
                  ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCif_Ant));
          Open;

          pnNomCif.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

     end;
  end;
end;

procedure TfmManCn1_NFE.EdId_FinCifKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUff.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManLn7_NFE.FatPedId_FinCif.Value := fmAuxIni.Id_FinCie;

              pnNomCif.Caption := Trim(fmAuxIni.NomCie)+' IBGE: '+Trim(fmAuxIni.SigNFE);

           end;

         finally

           FreeAndNil(fmAuxIni);

        end;

        EdId_FinCif.SetFocus;

        end
     else
        fmsgErro('Código para UF da NFe não informado.',EdId_FinCif);

  end;

  if key = 113 then begin {F2 - Inteligente}

     if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUff.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManLn7_NFE.FatPedId_FinCif.Value := fmAuxPsq.Id_FinCie;

              pnNomCif.Caption := Trim(fmAuxPsq.NomCie)+' IBGE: '+Trim(fmAuxPsq.SigNFE);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        EdId_FinCif.SetFocus;

        end
     else
        fmsgErro('Código para UF da NFe não informado.',EdId_FinCif);

  end;
end;

procedure TfmManCn1_NFE.EdId_FinCieExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedId_FinCie.Value <> Id_FinCie_Ant then begin

     Id_FinCie_Ant := fmManLn7_NFE.FatPedId_FinCie.Value;

     with fmManLn7_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinCie.NomCie,'+
                  '        FinCie.SigNfe '+
                  ' From FinCie'+
                  ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie_Ant));
          Open;

          pnNomCie.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

     end;
  end;
end;

procedure TfmManCn1_NFE.EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUfe.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManLn7_NFE.FatPedId_FinCie.Value := fmAuxIni.Id_FinCie;

              pnNomCie.Caption := Trim(fmAuxIni.NomCie)+' IBGE: '+Trim(fmAuxIni.SigNFE);

           end;

         finally

           FreeAndNil(fmAuxIni);

        end;

        EdId_FinCie.SetFocus;

        end
     else
        fmsgErro('Código para UF da NFe não informado.',EdId_FinCie);

  end;

  if key = 113 then begin {F2 - Inteligente}

     if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUfe.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManLn7_NFE.FatPedId_FinCie.Value := fmAuxPsq.Id_FinCie;

              pnNomCie.Caption := Trim(fmAuxPsq.NomCie)+' IBGE: '+Trim(fmAuxPsq.SigNFE);

           end;   

        finally

           FreeAndNil(fmAuxPsq);

        end;

        EdId_FinCie.SetFocus;

        end
     else
        fmsgErro('Código para UF da NFe não informado.',EdId_FinCie);

  end;
end;

procedure TfmManCn1_NFE.EdUffCliExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedUffCli.Value <> UffCli_Ant then begin

     UffCli_Ant := fmManLn7_NFE.FatPedUffCli.Value;

     fmManLn7_NFE.FatPedId_FinCif.Clear;

     with fmManLn7_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManLn7_NFE.FatPedUffCli.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManLn7_NFE.FatPedId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManLn7_NFE.FatPedId_FinUff.Clear;

     end;

     if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then pnId_FinUff.Caption := IntToStr(fmManLn7_NFE.FatPedId_FinUff.Value);
     
  end;
end;

procedure TfmManCn1_NFE.EdUfeCliExit(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedUfeCli.Value <> UfeCli_Ant then begin

     UfeCli_Ant := fmManLn7_NFE.FatPedUfeCli.Value;

     fmManLn7_NFE.FatPedId_FinCie.Clear;

     with fmManLn7_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManLn7_NFE.FatPedUfeCli.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManLn7_NFE.FatPedId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManLn7_NFE.FatPedId_FinUfe.Clear;

     end;

     if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then pnId_FinUfe.Caption := IntToStr(fmManLn7_NFE.FatPedId_FinUfe.Value);

  end;
end;

procedure TfmManCn1_NFE.sbPsqCifClick(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedId_FinUff.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUff.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManLn7_NFE.FatPedId_FinCif.Value := fmAuxIni.Id_FinCie;

           pnNomCif.Caption := Trim(fmAuxIni.NomCie)+' IBGE: '+Trim(fmAuxIni.SigNFE);

        end;

      finally

        FreeAndNil(fmAuxIni);

     end;

     EdId_FinCif.SetFocus;

     end
  else
     fmsgErro('Código para UF da NFe não informado.',EdId_FinCif);
end;

procedure TfmManCn1_NFE.sbPsqCieClick(Sender: TObject);
begin
  inherited;
  if fmManLn7_NFE.FatPedId_FinUfe.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManLn7_NFE.FatPedId_FinUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManLn7_NFE.FatPedId_FinCie.Value := fmAuxIni.Id_FinCie;

           pnNomCie.Caption := Trim(fmAuxIni.NomCie)+' IBGE: '+Trim(fmAuxIni.SigNFE);

        end;   

      finally

        FreeAndNil(fmAuxIni);

     end;

     EdId_FinCie.SetFocus;

     end
  else
     fmsgErro('Código para UF da NFe não informado.',EdId_FinCie);
end;

end.
