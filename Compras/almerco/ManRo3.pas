unit ManRo3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdbdatetimepicker, Mask, DBCtrls, hEdits, Buttons,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, AlignEdit, Db, DBTables,
  Wwquery, FShowPadrao, dxDBColorMemo, dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManRo3 = class(TfmShowPadrao)
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
    EdEspNfs: TdxDBColorEdit;
    Label39: TLabel;
    Label3: TLabel;
    Label41: TLabel;
    Label40: TLabel;
    EdMarNfs: TdxDBColorEdit;
    EdNumNfs: TdxDBColorEdit;
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
    {Public declarations}
  end;

var
  fmManRo3: TfmManRo3;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB, ManRo2, ManRo4, AuxIni,
     AuxPsq;

{$R *.DFM}

procedure TfmManRo3.FormCreate(Sender: TObject);
begin
  inherited;

  fmManRo2.Finalizar := 'N';
  
  fmManRo2.CmpNfs.Edit;

end;

procedure TfmManRo3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManRo3.bcontinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  fmManRo2.CmpNfsCodCf1.Value := Trim(fmManRo2.CmpNfsCodCf1.Value);
  fmManRo2.CmpNfsCodCf2.Value := Trim(fmManRo2.CmpNfsCodCf2.Value);
  fmManRo2.CmpNfsDesNat.Value := Trim(fmManRo2.CmpNfsDesNat.Value);
  fmManRo2.CmpNfsInsSub.Value := Trim(fmManRo2.CmpNfsInsSub.Value);
  fmManRo2.CmpNfsNomTra.Value := Trim(fmManRo2.CmpNfsNomTra.Value);
  fmManRo2.CmpNfsCgcTra.Value := Trim(fmManRo2.CmpNfsCgcTra.Value);
  fmManRo2.CmpNfsInsTra.Value := Trim(fmManRo2.CmpNfsInsTra.Value);
  fmManRo2.CmpNfsTenTra.Value := Trim(fmManRo2.CmpNfsTenTra.Value);
  fmManRo2.CmpNfsEndTra.Value := Trim(fmManRo2.CmpNfsEndTra.Value);
  fmManRo2.CmpNfsRefTra.Value := Trim(fmManRo2.CmpNfsRefTra.Value);
  fmManRo2.CmpNfsNumTra.Value := Trim(fmManRo2.CmpNfsNumTra.Value);
  fmManRo2.CmpNfsBaiTra.Value := Trim(fmManRo2.CmpNfsBaiTra.Value);
  fmManRo2.CmpNfsCidTra.Value := Trim(fmManRo2.CmpNfsCidTra.Value);
  fmManRo2.CmpNfsUfeTra.Value := Trim(fmManRo2.CmpNfsUfeTra.Value);
  fmManRo2.CmpNfsCepTra.Value := Trim(fmManRo2.CmpNfsCepTra.Value);
  fmManRo2.CmpNfsNumNfs.Value := Trim(fmManRo2.CmpNfsNumNfs.Value);
  fmManRo2.CmpNfsPlcTra.Value := Trim(fmManRo2.CmpNfsPlcTra.Value);
  fmManRo2.CmpNfsUfePlc.Value := Trim(fmManRo2.CmpNfsUfePlc.Value);
  fmManRo2.CmpNfsTefFor.Value := Trim(fmManRo2.CmpNfsTefFor.Value);
  fmManRo2.CmpNfsEnfFor.Value := Trim(fmManRo2.CmpNfsEnfFor.Value);
  fmManRo2.CmpNfsRffFor.Value := Trim(fmManRo2.CmpNfsRffFor.Value);
  fmManRo2.CmpNfsNrfFor.Value := Trim(fmManRo2.CmpNfsNrfFor.Value);
  fmManRo2.CmpNfsBafFor.Value := Trim(fmManRo2.CmpNfsBafFor.Value);
  fmManRo2.CmpNfsCifFor.Value := Trim(fmManRo2.CmpNfsCifFor.Value);
  fmManRo2.CmpNfsUffFor.Value := Trim(fmManRo2.CmpNfsUffFor.Value);
  fmManRo2.CmpNfsCefFor.Value := Trim(fmManRo2.CmpNfsCefFor.Value);
  fmManRo2.CmpNfsTenFor.Value := Trim(fmManRo2.CmpNfsTenFor.Value);
  fmManRo2.CmpNfsEndFor.Value := Trim(fmManRo2.CmpNfsEndFor.Value);
  fmManRo2.CmpNfsRefFor.Value := Trim(fmManRo2.CmpNfsRefFor.Value);
  fmManRo2.CmpNfsNumFor.Value := Trim(fmManRo2.CmpNfsNumFor.Value);
  fmManRo2.CmpNfsCgeFor.Value := Trim(fmManRo2.CmpNfsCgeFor.Value);
  fmManRo2.CmpNfsIneFor.Value := Trim(fmManRo2.CmpNfsIneFor.Value);
  fmManRo2.CmpNfsBaiFor.Value := Trim(fmManRo2.CmpNfsBaiFor.Value);
  fmManRo2.CmpNfsCidFor.Value := Trim(fmManRo2.CmpNfsCidFor.Value);
  fmManRo2.CmpNfsUfeFor.Value := Trim(fmManRo2.CmpNfsUfeFor.Value);
  fmManRo2.CmpNfsCepFor.Value := Trim(fmManRo2.CmpNfsCepFor.Value);

  if (Trim(fmManRo2.CmpNfsTenTra.Value) <> '') or
     (Trim(fmManRo2.CmpNfsEndTra.Value) <> '') or
     (Trim(fmManRo2.CmpNfsRefTra.Value) <> '') or
     (Trim(fmManRo2.CmpNfsBaiTra.Value) <> '') or
     (Trim(fmManRo2.CmpNfsCidTra.Value) <> '') or
     (Trim(fmManRo2.CmpNfsUfeTra.Value) <> '') or
     (Trim(fmManRo2.CmpNfsCepTra.Value) <> '') then begin

     if Trim(fmManRo2.CmpNfsUfeTra.Value) = '' then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdUfeTra);
        
     if fmManRo2.CmpNfsId_TraUfe.Value = 0 then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdUfeTra);

     if fmManRo2.CmpNfsId_TraCie.Value = 0 then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_TraCie);

  end;

  if fmManRo2.CmpNfsId_FinUff.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdUffCli);

  if fmManRo2.CmpNfsId_FinCif.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinCif);

  if fmManRo2.CmpNfsId_FinUfe.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinUfe);

  if fmManRo2.CmpNfsId_FinCie.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinCie);

  with fmManRo2.CmpNfs do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManRo2.CmpNfs.State = dsBrowse then fmManRo2.CmpNfs.Edit;

          EdDesNat.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManRo2.CmpNfs.Close;                
  fmManRo2.CmpNfs.Open;

  fmManRo2.pnBasIc1.Caption := FormatFloat('###,###,##0.00',fmManRo2.CmpNfsBasIc1.Value);
  fmManRo2.pnTotIc1.Caption := FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotIc1.Value);
  fmManRo2.pnBasSu1.Caption := FormatFloat('###,###,##0.00',fmManRo2.CmpNfsBasSu1.Value);
  fmManRo2.pnTotSu1.Caption := FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotSu1.Value);
  fmManRo2.pnTotIt1.Caption := FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotIt1.Value);
  fmManRo2.pnTotFrt.Caption := FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotFrt.Value);
  fmManRo2.pnTotSeg.Caption := FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotSeg.Value);
  fmManRo2.pnTotDes.Caption := FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotDes.Value);
  fmManRo2.pnTotIp1.Caption := FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotIp1.Value);
  fmManRo2.pnTotGe1.Caption := FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotGe1.Value);

  try

     fmManRo4 := TfmManRo4.Create(Self);
     fmManRo4.ShowModal;

  finally

     FreeAndNil(fmManRo4);

  end;

  if fmManRo2.Finalizar = 'S' then
     Close
  else
     begin

     fmManRo2.CmpNfs.Edit;

     EdDesNat.SetFocus;

  end;
end;

procedure TfmManRo3.FormShow(Sender: TObject);
begin
  inherited;

  CodTra_Ant := fmManRo2.CmpNfsCodTra.Value;
  UfeTra_Ant := fmManRo2.CmpNfsUfeTra.Value;
  UffFor_Ant := fmManRo2.CmpNfsUffFor.Value;
  UfeFor_Ant := fmManRo2.CmpNfsUfeFor.Value;

  Id_TraCie_Ant := fmManRo2.CmpNfsId_TraCie.Value;
  Id_FinCif_Ant := fmManRo2.CmpNfsId_FinCif.Value;
  Id_FinCie_Ant := fmManRo2.CmpNfsId_FinCie.Value;

  if Trim(fmManRo2.CmpNfsUfeTra.Value) <> '' then begin

     if fmManRo2.CmpNfsId_TraUfe.Value = 0 then begin

        with fmManRo2.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo2.CmpNfsUfeTra.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManRo2.CmpNfsId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManRo2.CmpNfsId_TraUfe.Clear;

        end;
     end;
  end;

  if Trim(fmManRo2.CmpNfsUffFor.Value) <> '' then begin

     if fmManRo2.CmpNfsId_FinUff.Value = 0 then begin

        with fmManRo2.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo2.CmpNfsUffFor.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManRo2.CmpNfsId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManRo2.CmpNfsId_FinUff.Clear;

        end;
     end;
  end;

  if Trim(fmManRo2.CmpNfsUfeFor.Value) <> '' then begin

     if fmManRo2.CmpNfsId_FinUfe.Value = 0 then begin

        with fmManRo2.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo2.CmpNfsUfeFor.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManRo2.CmpNfsId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManRo2.CmpNfsId_FinUfe.Clear;

        end;
     end;
  end;

  if fmManRo2.CmpNfsId_TraUfe.Value > 0 then pnId_TraUfe.Caption := IntToStr(fmManRo2.CmpNfsId_TraUfe.Value);
  if fmManRo2.CmpNfsId_FinUff.Value > 0 then pnId_FinUff.Caption := IntToStr(fmManRo2.CmpNfsId_FinUff.Value);
  if fmManRo2.CmpNfsId_FinUfe.Value > 0 then pnId_FinUfe.Caption := IntToStr(fmManRo2.CmpNfsId_FinUfe.Value);

  if Id_TraCie_Ant > 0 then begin

     with fmManRo2.quSQL,SQL do begin

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

     with fmManRo2.quSQL,SQL do begin

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

     with fmManRo2.quSQL,SQL do begin

          Close;
          Text := ' Select FinCie.NomCie,'+
                  '        FinCie.SigNfe '+
                  ' From FinCie'+
                  ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie_Ant));
          Open;

          pnNomCie.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

     end;
  end;

  fmManRo2.CmpNfs.Edit;

  if fmManRo2.CmpNfsInfBrt.Value = 0 then fmManRo2.CmpNfsInfBrt.Value := fmManRo2.CmpNfsTotBrt.Value;
  if fmManRo2.CmpNfsInfLiq.Value = 0 then fmManRo2.CmpNfsInfLiq.Value := fmManRo2.CmpNfsTotLiq.Value;

  with fmManRo2.quSQL,SQL do begin

       Close;
       Text := ' Select CmpNf2.CodCfo,'+
               '        Count(*) as QtdReg'+
               ' From CmpNf2'+
               ' Where CmpNf2.Id_CmpNfs = '+ QuotedStr(IntToStr(fmManRo2.CmpNfsId_CmpNfs.Value)) +
               ' Group by CmpNf2.CodCfo'+
               ' Order by Count(*) Desc';
       Open;
       First;

  end;

  if Trim(fmManRo2.quSQL.FieldbyName('CodCfo').AsString) <> '' then begin
  
     fmManRo2.CmpNfsCodCf1.Value := Trim(fmManRo2.quSQL.FieldbyName('CodCfo').AsString);

     if not fmManRo2.quSQL.EOF then begin

        fmManRo2.quSQL.Next;

        if Trim(fmManRo2.quSQL.FieldbyName('CodCfo').AsString) <> '' then begin

           if Trim(fmManRo2.quSQL.FieldbyName('CodCfo').AsString) <> fmManRo2.CmpNfsCodCf1.Value then
              fmManRo2.CmpNfsCodCf2.Value := Trim(fmManRo2.quSQL.FieldbyName('CodCfo').AsString);
           
           if not fmManRo2.quSQL.EOF then begin
              
              fmManRo2.quSQL.Next;

              if Trim(fmManRo2.quSQL.FieldbyName('CodCfo').AsString) <> '' then begin

                 if Trim(fmManRo2.quSQL.FieldbyName('CodCfo').AsString) <> fmManRo2.CmpNfsCodCf1.Value then begin

                    if Trim(fmManRo2.quSQL.FieldbyName('CodCfo').AsString) <> fmManRo2.CmpNfsCodCf2.Value then
                       fmManRo2.CmpNfsCodCf2.Value := Trim(fmManRo2.CmpNfsCodCf2.Value)+'/'+Trim(fmManRo2.quSQL.FieldbyName('CodCfo').AsString);

                 end;   
              end;
           end;   
        end;
     end;
  end;

  fmManRo2.quSQL.Close;

  if TrimLeft(TrimRight(fmManRo2.CmpNfsCgeFor.Value)) <> '' then begin

     if Length(TrimLeft(TrimRight(fmManRo2.CmpNfsCgeFor.Value))) > 11 then
        fmManRo2.CmpNfsCgeFor.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManRo2.CmpNfsCgeFor.EditMask := '!999.999.999\-99;0;';

     end
  else
     fmManRo2.CmpNfsCgeFor.EditMask := '';

  if TrimLeft(TrimRight(fmManRo2.CmpNfsCgcTra.Value)) <> '' then begin

     if TrimLeft(TrimRight(fmManRo2.CmpNfsCgcTra.Value)) <> '' then
        fmManRo2.CmpNfsCgcTra.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManRo2.CmpNfsCgcTra.EditMask := '';

     end
  else
     fmManRo2.CmpNfsCgcTra.EditMask := '';

  EdDesNat.SetFocus;

end;

procedure TfmManRo3.EdCgeCliExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManRo2.CmpNfsCgeFor.Value)) <> '' then begin

     if Length(TrimLeft(TrimRight(fmManRo2.CmpNfsCgeFor.Value))) > 11 then
        fmManRo2.CmpNfsCgeFor.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManRo2.CmpNfsCgeFor.EditMask := '!999.999.999\-99;0;';

     end
  else
     fmManRo2.CmpNfsCgeFor.EditMask := '';
end;

procedure TfmManRo3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManRo3.EdCgcTraExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManRo2.CmpNfsCgcTra.Value)) <> '' then begin

     if TrimLeft(TrimRight(fmManRo2.CmpNfsCgcTra.Value)) <> '' then
        fmManRo2.CmpNfsCgcTra.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManRo2.CmpNfsCgcTra.EditMask := '';

     end
  else
     fmManRo2.CmpNfsCgcTra.EditMask := '';
end;

procedure TfmManRo3.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManRo3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManRo2.CmpNfs.State <> dsBrowse then fmManRo2.CmpNfs.CancelUpdates;
end;

procedure TfmManRo3.EdCgeCliEnter(Sender: TObject);
begin
  inherited;
  if fmManRo2.CmpNfsCgeFor.EditMask <> '' then fmManRo2.CmpNfsCgeFor.EditMask := '';
end;

procedure TfmManRo3.EdCodTraExit(Sender: TObject);
begin
  inherited;
  if fmManRo2.CmpNfsCodTra.Value <> CodTra_Ant then begin

     CodTra_Ant := fmManRo2.CmpNfsCodTra.Value;
     
     if fmManRo2.CmpNfsCodTra.Value > 0 then begin

        with fmManRo2.quSQL,SQL do begin

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

             fmManRo2.CmpNfsNomTra.Value := Trim(FieldbyName('NomTra').AsString);
             fmManRo2.CmpNfsCgcTra.Value := Trim(FieldbyName('CgcTra').AsString);
             fmManRo2.CmpNfsInsTra.Value := Trim(FieldbyName('InsTra').AsString);
             fmManRo2.CmpNfsTenTra.Value := Trim(FieldbyName('TenTra').AsString);
             fmManRo2.CmpNfsEndTra.Value := Trim(FieldbyName('EndTra').AsString);
             fmManRo2.CmpNfsNumTra.Value := Trim(FieldbyName('NumTra').AsString);
             fmManRo2.CmpNfsRefTra.Value := Trim(FieldbyName('RefTra').AsString);
             fmManRo2.CmpNfsBaiTra.Value := Trim(FieldbyName('BaiTra').AsString);
             fmManRo2.CmpNfsCidTra.Value := Trim(FieldbyName('CidTra').AsString);
             fmManRo2.CmpNfsUfeTra.Value := Trim(FieldbyName('SigUfe').AsString);
             fmManRo2.CmpNfsCepTra.Value := Trim(FieldbyName('CepTra').AsString);

             UfeTra_Ant := fmManRo2.CmpNfsUfeTra.Value;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then begin

                fmManRo2.CmpNfsId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger;

                pnId_TraUfe.Caption := IntToStr(fmManRo2.CmpNfsId_TraUfe.Value);

             end;   

             if FieldbyName('Id_FinCie').AsInteger > 0 then begin

                fmManRo2.CmpNfsId_TraCie.Value := FieldbyName('Id_FinCie').AsInteger;

                Id_TraCie_Ant := fmManRo2.CmpNfsId_TraCie.Value;

                with fmManRo2.quSQL,SQL do begin

                     Close;
                     Text := ' Select FinCie.NomCie,'+
                             '        FinCie.SigNfe '+
                             ' From FinCie'+
                             ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_TraCie_Ant));
                     Open;

                     pnNomCia.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

                end;
             end;

             EdNomTra.Text := fmManRo2.CmpNfsNomTra.Value;
             EdCgcTra.Text := fmManRo2.CmpNfsCgcTra.Value;
             EdInsTra.Text := fmManRo2.CmpNfsInsTra.Value;
             EdTenTra.Text := fmManRo2.CmpNfsTenTra.Value;
             EdEndTra.Text := fmManRo2.CmpNfsEndTra.Value;
             EdNumTra.Text := fmManRo2.CmpNfsNumTra.Value;
             EdRefTra.Text := fmManRo2.CmpNfsRefTra.Value;
             EdBaiTra.Text := fmManRo2.CmpNfsBaiTra.Value;
             EdCidTra.Text := fmManRo2.CmpNfsCidTra.Value;
             EdUfeTra.Text := fmManRo2.CmpNfsUfeTra.Value;
             EdCepTra.Text := fmManRo2.CmpNfsCepTra.Value;

             if fmManRo2.CmpNfsId_TraCie.Value > 0 then
                EdId_TraCie.Text := IntToStr(fmManRo2.CmpNfsId_TraCie.Value);

        end;

        end
     else
        begin

        fmManRo2.CmpNfsNomTra.Clear;
        fmManRo2.CmpNfsCgcTra.Clear;
        fmManRo2.CmpNfsInsTra.Clear;
        fmManRo2.CmpNfsTenTra.Clear;
        fmManRo2.CmpNfsEndTra.Clear;
        fmManRo2.CmpNfsRefTra.Clear;
        fmManRo2.CmpNfsBaiTra.Clear;
        fmManRo2.CmpNfsCidTra.Clear;
        fmManRo2.CmpNfsUfeTra.Clear;
        fmManRo2.CmpNfsCepTra.Clear;

        Id_TraCie_Ant := fmManRo2.CmpNfsId_TraCie.Value;
        
        pnId_TraUfe.Caption := '';

        pnNomCia.Caption := '';

     end;
  end;
end;

procedure TfmManRo3.EdCodTraKeyDown(Sender: TObject; var Key: Word;
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
           
           fmManRo2.CmpNfsCodTra.Value := fmAuxIni.CodTra;

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

           fmManRo2.CmpNfsCodTra.Value := fmAuxPsq.CodTra;

           EdCodTra.Text := IntToStr(fmAuxPsq.CodTra);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CodTra > 0 then EdCodTra.OnExit(Sender);

  end;
end;

procedure TfmManRo3.EdCodTraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManRo3.EdCodTraEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManRo3.EdDesNatEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := '';
end;

procedure TfmManRo3.EdUfeTraExit(Sender: TObject);
begin
  inherited;
  if fmManRo2.CmpNfsUfeTra.Value <> UfeTra_Ant then begin

     UfeTra_Ant := fmManRo2.CmpNfsUfeTra.Value;

     fmManRo2.CmpNfsId_TraCie.Clear;

     with fmManRo2.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo2.CmpNfsUfeTra.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManRo2.CmpNfsId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManRo2.CmpNfsId_TraUfe.Clear;

     end;

     if fmManRo2.CmpNfsId_TraUfe.Value > 0 then pnId_TraUfe.Caption := IntToStr(fmManRo2.CmpNfsId_TraUfe.Value);

  end;
end;

procedure TfmManRo3.EdId_TraCieExit(Sender: TObject);
begin
  inherited;
  if fmManRo2.CmpNfsId_TraCie.Value <> Id_TraCie_Ant then begin

     Id_TraCie_Ant := fmManRo2.CmpNfsId_TraCie.Value;

     with fmManRo2.quSQL,SQL do begin

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

procedure TfmManRo3.EdId_TraCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManRo2.CmpNfsId_TraUfe.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManRo2.CmpNfsId_TraUfe.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManRo2.CmpNfsId_TraCie.Value := fmAuxIni.Id_FinCie;

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

     if fmManRo2.CmpNfsId_TraUfe.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManRo2.CmpNfsId_TraUfe.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManRo2.CmpNfsId_TraCie.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManRo3.EdId_FinCifExit(Sender: TObject);
begin
  inherited;
  if fmManRo2.CmpNfsId_FinCif.Value <> Id_FinCif_Ant then begin

     Id_FinCif_Ant := fmManRo2.CmpNfsId_FinCif.Value;

     with fmManRo2.quSQL,SQL do begin

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

procedure TfmManRo3.EdId_FinCifKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManRo2.CmpNfsId_FinUff.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManRo2.CmpNfsId_FinUff.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManRo2.CmpNfsId_FinCif.Value := fmAuxIni.Id_FinCie;

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

     if fmManRo2.CmpNfsId_FinUff.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManRo2.CmpNfsId_FinUff.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManRo2.CmpNfsId_FinCif.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManRo3.EdId_FinCieExit(Sender: TObject);
begin
  inherited;
  if fmManRo2.CmpNfsId_FinCie.Value <> Id_FinCie_Ant then begin

     Id_FinCie_Ant := fmManRo2.CmpNfsId_FinCie.Value;

     with fmManRo2.quSQL,SQL do begin

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

procedure TfmManRo3.EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManRo2.CmpNfsId_FinUfe.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManRo2.CmpNfsId_FinUfe.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManRo2.CmpNfsId_FinCie.Value := fmAuxIni.Id_FinCie;

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

     if fmManRo2.CmpNfsId_FinUfe.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManRo2.CmpNfsId_FinUfe.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManRo2.CmpNfsId_FinCie.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManRo3.EdUffCliExit(Sender: TObject);
begin
  inherited;
  if fmManRo2.CmpNfsUffFor.Value <> UffFor_Ant then begin

     UffFor_Ant := fmManRo2.CmpNfsUffFor.Value;

     fmManRo2.CmpNfsId_FinCif.Clear;

     with fmManRo2.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo2.CmpNfsUffFor.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManRo2.CmpNfsId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManRo2.CmpNfsId_FinUff.Clear;

     end;

     if fmManRo2.CmpNfsId_FinUff.Value > 0 then pnId_FinUff.Caption := IntToStr(fmManRo2.CmpNfsId_FinUff.Value);

  end;
end;

procedure TfmManRo3.EdUfeCliExit(Sender: TObject);
begin
  inherited;
  if fmManRo2.CmpNfsUfeFor.Value <> UfeFor_Ant then begin

     UfeFor_Ant := fmManRo2.CmpNfsUfeFor.Value;

     fmManRo2.CmpNfsId_FinCie.Clear;

     with fmManRo2.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManRo2.CmpNfsUfeFor.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManRo2.CmpNfsId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManRo2.CmpNfsId_FinUfe.Clear;

     end;

     if fmManRo2.CmpNfsId_FinUfe.Value > 0 then pnId_FinUfe.Caption := IntToStr(fmManRo2.CmpNfsId_FinUfe.Value);

  end;
end;

procedure TfmManRo3.sbTraCieClick(Sender: TObject);
begin
  inherited;
  if fmManRo2.CmpNfsId_TraUfe.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManRo2.CmpNfsId_TraUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManRo2.CmpNfsId_TraCie.Value := fmAuxIni.Id_FinCie;

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

procedure TfmManRo3.sbPsqCifClick(Sender: TObject);
begin
  inherited;
  if fmManRo2.CmpNfsId_FinUff.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManRo2.CmpNfsId_FinUff.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManRo2.CmpNfsId_FinCif.Value := fmAuxIni.Id_FinCie;

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

procedure TfmManRo3.sbPsqCieClick(Sender: TObject);
begin
  inherited;
  if fmManRo2.CmpNfsId_FinUfe.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManRo2.CmpNfsId_FinUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManRo2.CmpNfsId_FinCie.Value := fmAuxIni.Id_FinCie;

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
