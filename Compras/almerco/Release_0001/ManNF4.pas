unit ManNF4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdbdatetimepicker, Mask, DBCtrls, hEdits, Buttons,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, AlignEdit, Db, DBTables,
  Wwquery, FShowPadrao, dxDBColorMemo, dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManNF4 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
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
    EdBaiFor: TdxDBColorEdit;
    EdCgeFor: TdxDBColorEdit;
    EdTenFor: TdxDBColorEdit;
    EdEndFor: TdxDBColorEdit;
    Label62: TLabel;
    Label59: TLabel;
    EdCidFor: TdxDBColorEdit;
    EdIneFor: TdxDBColorEdit;
    Label60: TLabel;
    EdUfeFor: TdxDBColorEdit;
    Label4: TLabel;
    EdCepFor: TdxDBColorEdit;
    EdNumFor: TdxDBColorEdit;
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
    EdRefFor: TdxDBColorEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdBafFor: TdxDBColorEdit;
    EdRffFor: TdxDBColorEdit;
    EdTefFor: TdxDBColorEdit;
    EdEnfFor: TdxDBColorEdit;
    Label18: TLabel;
    EdCifFor: TdxDBColorEdit;
    Label20: TLabel;
    EdUffFor: TdxDBColorEdit;
    Label21: TLabel;
    EdCefFor: TdxDBColorEdit;
    EdNrfFor: TdxDBColorEdit;
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
    procedure EdCgeForExit(Sender: TObject);
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
    procedure EdUffForExit(Sender: TObject);
    procedure EdUfeForExit(Sender: TObject);
    procedure sbTraCieClick(Sender: TObject);
    procedure sbPsqCifClick(Sender: TObject);
    procedure sbPsqCieClick(Sender: TObject);
  private
    CodTra_Ant : integer;
    UfeTra_Ant : string;
    UffFor_Ant : string;
    UfeFor_Ant : string;
    Id_TraCie_Ant : integer;
    Id_FinCif_Ant : integer;
    Id_FinCie_Ant : integer;
    {Private declarations}
  public
    Finalizar : string;
    {Public declarations}
  end;

var
  fmManNF4: TfmManNF4;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB, ManRo6, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmManNF4.FormCreate(Sender: TObject);
begin
  inherited;

  Finalizar := 'N';

  fmManRo6.CmpNfs.Edit;

end;

procedure TfmManNF4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManNF4.bcontinuarClick(Sender: TObject);
var
  Id_EstPis : integer;
  Id_EstCof : integer;
begin

  ActiveControl := nil;

  fmManRo6.CmpNfsCodCf1.Value := Trim(fmManRo6.CmpNfsCodCf1.Value);
  fmManRo6.CmpNfsCodCf2.Value := Trim(fmManRo6.CmpNfsCodCf2.Value);
  fmManRo6.CmpNfsDesNat.Value := Trim(fmManRo6.CmpNfsDesNat.Value);
  fmManRo6.CmpNfsInsSub.Value := Trim(fmManRo6.CmpNfsInsSub.Value);
  fmManRo6.CmpNfsNomTra.Value := Trim(fmManRo6.CmpNfsNomTra.Value);
  fmManRo6.CmpNfsCgcTra.Value := Trim(fmManRo6.CmpNfsCgcTra.Value);
  fmManRo6.CmpNfsInsTra.Value := Trim(fmManRo6.CmpNfsInsTra.Value);
  fmManRo6.CmpNfsTenTra.Value := Trim(fmManRo6.CmpNfsTenTra.Value);
  fmManRo6.CmpNfsEndTra.Value := Trim(fmManRo6.CmpNfsEndTra.Value);
  fmManRo6.CmpNfsRefTra.Value := Trim(fmManRo6.CmpNfsRefTra.Value);
  fmManRo6.CmpNfsNumTra.Value := Trim(fmManRo6.CmpNfsNumTra.Value);
  fmManRo6.CmpNfsBaiTra.Value := Trim(fmManRo6.CmpNfsBaiTra.Value);
  fmManRo6.CmpNfsCidTra.Value := Trim(fmManRo6.CmpNfsCidTra.Value);
  fmManRo6.CmpNfsUfeTra.Value := Trim(fmManRo6.CmpNfsUfeTra.Value);
  fmManRo6.CmpNfsCepTra.Value := Trim(fmManRo6.CmpNfsCepTra.Value);
  fmManRo6.CmpNfsNumNfs.Value := Trim(fmManRo6.CmpNfsNumNfs.Value);
  fmManRo6.CmpNfsPlcTra.Value := Trim(fmManRo6.CmpNfsPlcTra.Value);
  fmManRo6.CmpNfsUfePlc.Value := Trim(fmManRo6.CmpNfsUfePlc.Value);
  fmManRo6.CmpNfsTefFor.Value := Trim(fmManRo6.CmpNfsTefFor.Value);
  fmManRo6.CmpNfsEnfFor.Value := Trim(fmManRo6.CmpNfsEnfFor.Value);
  fmManRo6.CmpNfsRffFor.Value := Trim(fmManRo6.CmpNfsRffFor.Value);
  fmManRo6.CmpNfsNrfFor.Value := Trim(fmManRo6.CmpNfsNrfFor.Value);
  fmManRo6.CmpNfsBafFor.Value := Trim(fmManRo6.CmpNfsBafFor.Value);
  fmManRo6.CmpNfsCifFor.Value := Trim(fmManRo6.CmpNfsCifFor.Value);
  fmManRo6.CmpNfsUffFor.Value := Trim(fmManRo6.CmpNfsUffFor.Value);
  fmManRo6.CmpNfsCefFor.Value := Trim(fmManRo6.CmpNfsCefFor.Value);
  fmManRo6.CmpNfsTenFor.Value := Trim(fmManRo6.CmpNfsTenFor.Value);
  fmManRo6.CmpNfsEndFor.Value := Trim(fmManRo6.CmpNfsEndFor.Value);
  fmManRo6.CmpNfsRefFor.Value := Trim(fmManRo6.CmpNfsRefFor.Value);
  fmManRo6.CmpNfsNumFor.Value := Trim(fmManRo6.CmpNfsNumFor.Value);
  fmManRo6.CmpNfsCgeFor.Value := Trim(fmManRo6.CmpNfsCgeFor.Value);
  fmManRo6.CmpNfsIneFor.Value := Trim(fmManRo6.CmpNfsIneFor.Value);
  fmManRo6.CmpNfsBaiFor.Value := Trim(fmManRo6.CmpNfsBaiFor.Value);
  fmManRo6.CmpNfsCidFor.Value := Trim(fmManRo6.CmpNfsCidFor.Value);
  fmManRo6.CmpNfsUfeFor.Value := Trim(fmManRo6.CmpNfsUfeFor.Value);
  fmManRo6.CmpNfsCepFor.Value := Trim(fmManRo6.CmpNfsCepFor.Value);

  if (Trim(fmManRo6.CmpNfsNfePis.Value) = '') or
     (Trim(fmManRo6.CmpNfsNfeCof.Value) = '') or (fmManRo6.CmpNfsId_EstSip.Value = 0) then begin

     with fmManRo6.quSQL,SQL do begin

          Close;
          Text := ' Select EstPfa.Id_EstPis,'+
                  '        EstPfa.Id_EstCof,'+
                  '        EstPfa.Id_EstSip '+
                  ' From EstPfa'+
                  ' Where EstPfa.CodPfa = '+ QuotedStr(fmManRo6.CmpNfsCodPfa.Value)+
                  '   and EstPfa.TipPfa = '+ QuotedStr(fmManRo6.CmpNfsTipPfa.Value);
          Open;

          Id_EstPis := FieldbyName('Id_EstPis').AsInteger;
          Id_EstCof := FieldbyName('Id_EstCof').AsInteger;

          if FieldbyName('Id_EstSip').AsInteger > 0 then
             fmManRo6.CmpNfsId_EstSip.Value := FieldbyName('Id_EstSip').AsInteger;

     end;

     if fmManRo6.CmpNfsId_EstSip.Value > 0 then begin

        if Id_EstPis > 0 then begin

           with fmManRo6.quSQL,SQL do begin

                Close;
                Text := ' Select EstPis.SigNfe From EstPis Where EstPis.Id_EstPis = '+ QuotedStr(IntToStr(Id_EstPis));
                Open;

                fmManRo6.CmpNfsNfePis.Value := FieldbyName('SigNfe').AsString;

           end;

           if Id_EstCof > 0 then begin

              with fmManRo6.quSQL,SQL do begin

                   Close;
                   Text := ' Select EstCof.SigNfe From EstCof Where EstCof.Id_EstCof = '+ QuotedStr(IntToStr(Id_EstCof));
                   Open;

                   fmManRo6.CmpNfsNfeCof.Value := FieldbyName('SigNfe').AsString;

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

  if (Trim(fmManRo6.CmpNfsTenTra.Value) <> '') or
     (Trim(fmManRo6.CmpNfsEndTra.Value) <> '') or
     (Trim(fmManRo6.CmpNfsRefTra.Value) <> '') or
     (Trim(fmManRo6.CmpNfsBaiTra.Value) <> '') or
     (Trim(fmManRo6.CmpNfsCidTra.Value) <> '') or
     (Trim(fmManRo6.CmpNfsUfeTra.Value) <> '') or
     (Trim(fmManRo6.CmpNfsCepTra.Value) <> '') then begin

     if Trim(fmManRo6.CmpNfsUfeTra.Value) = '' then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdUfeTra);

     if fmManRo6.CmpNfsId_TraUfe.Value = 0 then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdUfeTra);

     if fmManRo6.CmpNfsId_TraCie.Value = 0 then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_TraCie);

  end;

  if Trim(fmManRo6.CmpNfsBafFor.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdBafFor);

  if Trim(fmManRo6.CmpNfsCifFor.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdCifFor);

  if Trim(fmManRo6.CmpNfsNrfFor.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdNrfFor);

  if fmManRo6.CmpNfsId_FinUff.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdUffFor);

  if fmManRo6.CmpNfsId_FinCif.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinCif);

  if Trim(fmManRo6.CmpNfsBaiFor.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdBaiFor);

  if Trim(fmManRo6.CmpNfsCidFor.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdCidFor);

  if Trim(fmManRo6.CmpNfsNumFor.Value) = '' then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdNumFor);

  if fmManRo6.CmpNfsId_FinUfe.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinUfe);

  if fmManRo6.CmpNfsId_FinCie.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinCie);

  with fmManRo6.CmpNfs do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManRo6.CmpNfs.State = dsBrowse then fmManRo6.CmpNfs.Edit;

          EdDesNat.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManRo6.CmpNfs.Close;
  fmManRo6.CmpNfs.Open;

  Finalizar := 'S';

  Close;
  
end;

procedure TfmManNF4.FormShow(Sender: TObject);
begin
  inherited;

  CodTra_Ant := fmManRo6.CmpNfsCodTra.Value;
  UfeTra_Ant := fmManRo6.CmpNfsUfeTra.Value;
  UffFor_Ant := fmManRo6.CmpNfsUffFor.Value;
  UfeFor_Ant := fmManRo6.CmpNfsUfeFor.Value;

  Id_TraCie_Ant := fmManRo6.CmpNfsId_TraCie.Value;
  Id_FinCif_Ant := fmManRo6.CmpNfsId_FinCif.Value;
  Id_FinCie_Ant := fmManRo6.CmpNfsId_FinCie.Value;

  if Trim(fmManRo6.CmpNfsUfeTra.Value) <> '' then begin

     if fmManRo6.CmpNfsId_TraUfe.Value = 0 then begin

        with fmManRo6.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo6.CmpNfsUfeTra.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManRo6.CmpNfsId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManRo6.CmpNfsId_TraUfe.Clear;

        end;
     end;
  end;

  if Trim(fmManRo6.CmpNfsUffFor.Value) <> '' then begin

     if fmManRo6.CmpNfsId_FinUff.Value = 0 then begin

        with fmManRo6.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo6.CmpNfsUffFor.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManRo6.CmpNfsId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManRo6.CmpNfsId_FinUff.Clear;

        end;
     end;
  end;

  if Trim(fmManRo6.CmpNfsUfeFor.Value) <> '' then begin

     if fmManRo6.CmpNfsId_FinUfe.Value = 0 then begin

        with fmManRo6.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo6.CmpNfsUfeFor.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManRo6.CmpNfsId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManRo6.CmpNfsId_FinUfe.Clear;

        end;
     end;
  end;

  if fmManRo6.CmpNfsId_TraUfe.Value > 0 then pnId_TraUfe.Caption := IntToStr(fmManRo6.CmpNfsId_TraUfe.Value);
  if fmManRo6.CmpNfsId_FinUff.Value > 0 then pnId_FinUff.Caption := IntToStr(fmManRo6.CmpNfsId_FinUff.Value);
  if fmManRo6.CmpNfsId_FinUfe.Value > 0 then pnId_FinUfe.Caption := IntToStr(fmManRo6.CmpNfsId_FinUfe.Value);

  if Id_TraCie_Ant > 0 then begin

     with fmManRo6.quSQL,SQL do begin

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

     with fmManRo6.quSQL,SQL do begin

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

     with fmManRo6.quSQL,SQL do begin

          Close;
          Text := ' Select FinCie.NomCie,'+
                  '        FinCie.SigNfe '+
                  ' From FinCie'+
                  ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie_Ant));
          Open;

          pnNomCie.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

     end;
  end;

  fmManRo6.CmpNfs.Edit;

  if TrimLeft(TrimRight(fmManRo6.CmpNfsCgeFor.Value)) <> '' then begin

     if Length(TrimLeft(TrimRight(fmManRo6.CmpNfsCgeFor.Value))) > 11 then
        fmManRo6.CmpNfsCgeFor.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManRo6.CmpNfsCgeFor.EditMask := '!999.999.999\-99;0;';

     end
  else
     fmManRo6.CmpNfsCgeFor.EditMask := '';

  if TrimLeft(TrimRight(fmManRo6.CmpNfsCgcTra.Value)) <> '' then begin

     if TrimLeft(TrimRight(fmManRo6.CmpNfsCgcTra.Value)) <> '' then
        fmManRo6.CmpNfsCgcTra.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManRo6.CmpNfsCgcTra.EditMask := '';

     end
  else
     fmManRo6.CmpNfsCgcTra.EditMask := '';

  EdDesNat.SetFocus;

end;

procedure TfmManNF4.EdCgeForExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManRo6.CmpNfsCgeFor.Value)) <> '' then begin

     if Length(TrimLeft(TrimRight(fmManRo6.CmpNfsCgeFor.Value))) > 11 then
        fmManRo6.CmpNfsCgeFor.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManRo6.CmpNfsCgeFor.EditMask := '!999.999.999\-99;0;';

     end
  else
     fmManRo6.CmpNfsCgeFor.EditMask := '';
end;

procedure TfmManNF4.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNF4.EdCgcTraExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManRo6.CmpNfsCgcTra.Value)) <> '' then begin

     if TrimLeft(TrimRight(fmManRo6.CmpNfsCgcTra.Value)) <> '' then
        fmManRo6.CmpNfsCgcTra.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManRo6.CmpNfsCgcTra.EditMask := '';

     end
  else
     fmManRo6.CmpNfsCgcTra.EditMask := '';
end;

procedure TfmManNF4.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNF4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManRo6.CmpNfs.State <> dsBrowse then fmManRo6.CmpNfs.CancelUpdates;
end;

procedure TfmManNF4.EdCgeCliEnter(Sender: TObject);
begin
  inherited;
  if fmManRo6.CmpNfsCgeFor.EditMask <> '' then fmManRo6.CmpNfsCgeFor.EditMask := '';
end;

procedure TfmManNF4.EdCodTraExit(Sender: TObject);
begin
  inherited;
  if fmManRo6.CmpNfsCodTra.Value <> CodTra_Ant then begin

     CodTra_Ant := fmManRo6.CmpNfsCodTra.Value;
     
     if fmManRo6.CmpNfsCodTra.Value > 0 then begin

        with fmManRo6.quSQL,SQL do begin

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
                     '        FinTra.SigUfe,'+
                     '        FinTra.Id_FinUfe,'+
                     '        FinTra.Id_FinCie '+
                     ' From FinTra'+
                     ' Where FinTra.CodTra = '+ QuotedStr(IntToStr(CodTra_Ant));
             Open;

             fmManRo6.CmpNfsNomTra.Value := Trim(FieldbyName('NomTra').AsString);
             fmManRo6.CmpNfsCgcTra.Value := Trim(FieldbyName('CgcTra').AsString);
             fmManRo6.CmpNfsInsTra.Value := Trim(FieldbyName('InsTra').AsString);
             fmManRo6.CmpNfsTenTra.Value := Trim(FieldbyName('TenTra').AsString);
             fmManRo6.CmpNfsEndTra.Value := Trim(FieldbyName('EndTra').AsString);
             fmManRo6.CmpNfsNumTra.Value := Trim(FieldbyName('NumTra').AsString);
             fmManRo6.CmpNfsRefTra.Value := Trim(FieldbyName('RefTra').AsString);
             fmManRo6.CmpNfsBaiTra.Value := Trim(FieldbyName('BaiTra').AsString);
             fmManRo6.CmpNfsCidTra.Value := Trim(FieldbyName('CidTra').AsString);
             fmManRo6.CmpNfsUfeTra.Value := Trim(FieldbyName('SigUfe').AsString);
             fmManRo6.CmpNfsCepTra.Value := Trim(FieldbyName('CepTra').AsString);

             UfeTra_Ant := fmManRo6.CmpNfsUfeTra.Value;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then begin

                fmManRo6.CmpNfsId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger;

                pnId_TraUfe.Caption := IntToStr(fmManRo6.CmpNfsId_TraUfe.Value);

             end;   

             if FieldbyName('Id_FinCie').AsInteger > 0 then begin

                fmManRo6.CmpNfsId_TraCie.Value := FieldbyName('Id_FinCie').AsInteger;

                Id_TraCie_Ant := fmManRo6.CmpNfsId_TraCie.Value;

                with fmManRo6.quSQL,SQL do begin

                     Close;
                     Text := ' Select FinCie.NomCie,'+
                             '        FinCie.SigNfe '+
                             ' From FinCie'+
                             ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_TraCie_Ant));
                     Open;

                     pnNomCia.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

                end;
             end;

             EdNomTra.Text := fmManRo6.CmpNfsNomTra.Value;
             EdCgcTra.Text := fmManRo6.CmpNfsCgcTra.Value;
             EdInsTra.Text := fmManRo6.CmpNfsInsTra.Value;
             EdTenTra.Text := fmManRo6.CmpNfsTenTra.Value;
             EdEndTra.Text := fmManRo6.CmpNfsEndTra.Value;
             EdNumTra.Text := fmManRo6.CmpNfsNumTra.Value;
             EdRefTra.Text := fmManRo6.CmpNfsRefTra.Value;
             EdBaiTra.Text := fmManRo6.CmpNfsBaiTra.Value;
             EdCidTra.Text := fmManRo6.CmpNfsCidTra.Value;
             EdUfeTra.Text := fmManRo6.CmpNfsUfeTra.Value;
             EdCepTra.Text := fmManRo6.CmpNfsCepTra.Value;

             if fmManRo6.CmpNfsId_TraCie.Value > 0 then
                EdId_TraCie.Text := IntToStr(fmManRo6.CmpNfsId_TraCie.Value);

        end;

        end
     else
        begin

        fmManRo6.CmpNfsNomTra.Clear;
        fmManRo6.CmpNfsCgcTra.Clear;
        fmManRo6.CmpNfsInsTra.Clear;
        fmManRo6.CmpNfsTenTra.Clear;
        fmManRo6.CmpNfsEndTra.Clear;
        fmManRo6.CmpNfsNumTra.Clear;
        fmManRo6.CmpNfsRefTra.Clear;
        fmManRo6.CmpNfsBaiTra.Clear;
        fmManRo6.CmpNfsCidTra.Clear;
        fmManRo6.CmpNfsUfeTra.Clear;
        fmManRo6.CmpNfsCepTra.Clear;

        Id_TraCie_Ant := fmManRo6.CmpNfsId_TraCie.Value;

        pnId_TraUfe.Caption := '';

        pnNomCia.Caption := '';

     end;
  end;
end;

procedure TfmManNF4.EdCodTraKeyDown(Sender: TObject; var Key: Word;
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
           
           fmManRo6.CmpNfsCodTra.Value := fmAuxIni.CodTra;

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

           fmManRo6.CmpNfsCodTra.Value := fmAuxPsq.CodTra;

           EdCodTra.Text := IntToStr(fmAuxPsq.CodTra);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CodTra > 0 then EdCodTra.OnExit(Sender);

  end;
end;

procedure TfmManNF4.EdCodTraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManNF4.EdCodTraEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManNF4.EdDesNatEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := '';
end;

procedure TfmManNF4.EdUfeTraExit(Sender: TObject);
begin
  inherited;
  if fmManRo6.CmpNfsUfeTra.Value <> UfeTra_Ant then begin

     UfeTra_Ant := fmManRo6.CmpNfsUfeTra.Value;

     fmManRo6.CmpNfsId_TraCie.Clear;

     with fmManRo6.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo6.CmpNfsUfeTra.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManRo6.CmpNfsId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManRo6.CmpNfsId_TraUfe.Clear;

     end;

     if fmManRo6.CmpNfsId_TraUfe.Value > 0 then pnId_TraUfe.Caption := IntToStr(fmManRo6.CmpNfsId_TraUfe.Value);
     
  end;
end;

procedure TfmManNF4.EdId_TraCieExit(Sender: TObject);
begin
  inherited;
  if fmManRo6.CmpNfsId_TraCie.Value <> Id_TraCie_Ant then begin

     Id_TraCie_Ant := fmManRo6.CmpNfsId_TraCie.Value;

     with fmManRo6.quSQL,SQL do begin

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

procedure TfmManNF4.EdId_TraCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManRo6.CmpNfsId_TraUfe.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManRo6.CmpNfsId_TraUfe.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManRo6.CmpNfsId_TraCie.Value := fmAuxIni.Id_FinCie;

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

     if fmManRo6.CmpNfsId_TraUfe.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManRo6.CmpNfsId_TraUfe.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManRo6.CmpNfsId_TraCie.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManNF4.EdId_FinCifExit(Sender: TObject);
begin
  inherited;
  if fmManRo6.CmpNfsId_FinCif.Value <> Id_FinCif_Ant then begin

     Id_FinCif_Ant := fmManRo6.CmpNfsId_FinCif.Value;

     with fmManRo6.quSQL,SQL do begin

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

procedure TfmManNF4.EdId_FinCifKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManRo6.CmpNfsId_FinUff.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManRo6.CmpNfsId_FinUff.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManRo6.CmpNfsId_FinCif.Value := fmAuxIni.Id_FinCie;

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

     if fmManRo6.CmpNfsId_FinUff.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManRo6.CmpNfsId_FinUff.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManRo6.CmpNfsId_FinCif.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManNF4.EdId_FinCieExit(Sender: TObject);
begin
  inherited;
  if fmManRo6.CmpNfsId_FinCie.Value <> Id_FinCie_Ant then begin

     Id_FinCie_Ant := fmManRo6.CmpNfsId_FinCie.Value;

     with fmManRo6.quSQL,SQL do begin

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

procedure TfmManNF4.EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManRo6.CmpNfsId_FinUfe.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManRo6.CmpNfsId_FinUfe.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManRo6.CmpNfsId_FinCie.Value := fmAuxIni.Id_FinCie;

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

     if fmManRo6.CmpNfsId_FinUfe.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManRo6.CmpNfsId_FinUfe.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManRo6.CmpNfsId_FinCie.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManNF4.EdUffForExit(Sender: TObject);
begin
  inherited;
  if fmManRo6.CmpNfsUffFor.Value <> UffFor_Ant then begin

     UffFor_Ant := fmManRo6.CmpNfsUffFor.Value;

     fmManRo6.CmpNfsId_FinCif.Clear;

     with fmManRo6.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo6.CmpNfsUffFor.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManRo6.CmpNfsId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManRo6.CmpNfsId_FinUff.Clear;

     end;

     if fmManRo6.CmpNfsId_FinUff.Value > 0 then pnId_FinUff.Caption := IntToStr(fmManRo6.CmpNfsId_FinUff.Value);
     
  end;
end;

procedure TfmManNF4.EdUfeForExit(Sender: TObject);
begin
  inherited;
  if fmManRo6.CmpNfsUfeFor.Value <> UfeFor_Ant then begin

     UfeFor_Ant := fmManRo6.CmpNfsUfeFor.Value;

     fmManRo6.CmpNfsId_FinCie.Clear;

     with fmManRo6.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo6.CmpNfsUfeFor.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManRo6.CmpNfsId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManRo6.CmpNfsId_FinUfe.Clear;

     end;

     if fmManRo6.CmpNfsId_FinUfe.Value > 0 then pnId_FinUfe.Caption := IntToStr(fmManRo6.CmpNfsId_FinUfe.Value);

  end;
end;

procedure TfmManNF4.sbTraCieClick(Sender: TObject);
begin
  inherited;
  if fmManRo6.CmpNfsId_TraUfe.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManRo6.CmpNfsId_TraUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManRo6.CmpNfsId_TraCie.Value := fmAuxIni.Id_FinCie;

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

procedure TfmManNF4.sbPsqCifClick(Sender: TObject);
begin
  inherited;
  if fmManRo6.CmpNfsId_FinUff.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManRo6.CmpNfsId_FinUff.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManRo6.CmpNfsId_FinCif.Value := fmAuxIni.Id_FinCie;

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

procedure TfmManNF4.sbPsqCieClick(Sender: TObject);
begin
  inherited;
  if fmManRo6.CmpNfsId_FinUfe.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManRo6.CmpNfsId_FinUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManRo6.CmpNfsId_FinCie.Value := fmAuxIni.Id_FinCie;

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
