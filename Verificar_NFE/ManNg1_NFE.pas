unit ManNg1_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, wwdbdatetimepicker, Mask, DBCtrls, hEdits, Buttons,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, AlignEdit, Db, DBTables,
  Wwquery, FShowPadrao, dxDBColorMemo, dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManNg1_NFE = class(TfmShowPadrao)
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
    EdEspGer: TdxDBColorEdit;
    Label39: TLabel;
    Label3: TLabel;
    Label41: TLabel;
    Label40: TLabel;
    EdMarGer: TdxDBColorEdit;
    EdNroGer: TdxDBColorEdit;
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
    EdBaeCli: TdxDBColorEdit;
    EdCgeCli: TdxDBColorEdit;
    EdTeeCli: TdxDBColorEdit;
    EdEneCli: TdxDBColorEdit;
    Label62: TLabel;
    Label59: TLabel;
    EdCieCli: TdxDBColorEdit;
    EdIneCli: TdxDBColorEdit;
    Label60: TLabel;
    EdUfeCli: TdxDBColorEdit;
    Label4: TLabel;
    EdCeeCli: TdxDBColorEdit;
    EdNreCli: TdxDBColorEdit;
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
    EdRfeCli: TdxDBColorEdit;
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
    procedure sbTraCieClick(Sender: TObject);
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
    {Public declarations}
  end;

var
  fmManNg1_NFE: TfmManNg1_NFE;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB, ManNge_NFE, ManNg2_NFE, AuxIni,
     AuxPsq;

{$R *.DFM}

procedure TfmManNg1_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  fmManNge_NFE.Finalizar := 'N';
  
  fmManNge_NFE.FatGer.Edit;

end;

procedure TfmManNg1_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManNg1_NFE.bcontinuarClick(Sender: TObject);
begin

  ActiveControl := nil;

  fmManNge_NFE.FatGerCodCf1.Value := Trim(fmManNge_NFE.FatGerCodCf1.Value);
  fmManNge_NFE.FatGerCodCf2.Value := Trim(fmManNge_NFE.FatGerCodCf2.Value);
  fmManNge_NFE.FatGerDesNat.Value := Trim(fmManNge_NFE.FatGerDesNat.Value);
  fmManNge_NFE.FatGerInsSub.Value := Trim(fmManNge_NFE.FatGerInsSub.Value);
  fmManNge_NFE.FatGerNomTra.Value := Trim(fmManNge_NFE.FatGerNomTra.Value);
  fmManNge_NFE.FatGerCgcTra.Value := Trim(fmManNge_NFE.FatGerCgcTra.Value);
  fmManNge_NFE.FatGerInsTra.Value := Trim(fmManNge_NFE.FatGerInsTra.Value);
  fmManNge_NFE.FatGerTenTra.Value := Trim(fmManNge_NFE.FatGerTenTra.Value);
  fmManNge_NFE.FatGerEndTra.Value := Trim(fmManNge_NFE.FatGerEndTra.Value);
  fmManNge_NFE.FatGerRefTra.Value := Trim(fmManNge_NFE.FatGerRefTra.Value);
  fmManNge_NFE.FatGerNumTra.Value := Trim(fmManNge_NFE.FatGerNumTra.Value);
  fmManNge_NFE.FatGerBaiTra.Value := Trim(fmManNge_NFE.FatGerBaiTra.Value);
  fmManNge_NFE.FatGerCidTra.Value := Trim(fmManNge_NFE.FatGerCidTra.Value);
  fmManNge_NFE.FatGerUfeTra.Value := Trim(fmManNge_NFE.FatGerUfeTra.Value);
  fmManNge_NFE.FatGerCepTra.Value := Trim(fmManNge_NFE.FatGerCepTra.Value);
  fmManNge_NFE.FatGerNroGer.Value := Trim(fmManNge_NFE.FatGerNroGer.Value);
  fmManNge_NFE.FatGerEspGer.Value := Trim(fmManNge_NFE.FatGerEspGer.Value);
  fmManNge_NFE.FatGerMarGer.Value := Trim(fmManNge_NFE.FatGerMarGer.Value);
  fmManNge_NFE.FatGerPlcTra.Value := Trim(fmManNge_NFE.FatGerPlcTra.Value);
  fmManNge_NFE.FatGerUfePlc.Value := Trim(fmManNge_NFE.FatGerUfePlc.Value);
  fmManNge_NFE.FatGerCefCli.Value := Trim(fmManNge_NFE.FatGerCefCli.Value);
  fmManNge_NFE.FatGerTefCli.Value := Trim(fmManNge_NFE.FatGerTefCli.Value);
  fmManNge_NFE.FatGerEnfCli.Value := Trim(fmManNge_NFE.FatGerEnfCli.Value);
  fmManNge_NFE.FatGerRffCli.Value := Trim(fmManNge_NFE.FatGerRffCli.Value);
  fmManNge_NFE.FatGerNrfCli.Value := Trim(fmManNge_NFE.FatGerNrfCli.Value);
  fmManNge_NFE.FatGerBafCli.Value := Trim(fmManNge_NFE.FatGerBafCli.Value);
  fmManNge_NFE.FatGerCifCli.Value := Trim(fmManNge_NFE.FatGerCifCli.Value);
  fmManNge_NFE.FatGerUffCli.Value := Trim(fmManNge_NFE.FatGerUffCli.Value);
  fmManNge_NFE.FatGerCepCli.Value := Trim(fmManNge_NFE.FatGerCepCli.Value);
  fmManNge_NFE.FatGerTenCli.Value := Trim(fmManNge_NFE.FatGerTenCli.Value);
  fmManNge_NFE.FatGerEndCli.Value := Trim(fmManNge_NFE.FatGerEndCli.Value);
  fmManNge_NFE.FatGerRefCli.Value := Trim(fmManNge_NFE.FatGerRefCli.Value);
  fmManNge_NFE.FatGerNumCli.Value := Trim(fmManNge_NFE.FatGerNumCli.Value);
  fmManNge_NFE.FatGerBaiCli.Value := Trim(fmManNge_NFE.FatGerBaiCli.Value);
  fmManNge_NFE.FatGerCidCli.Value := Trim(fmManNge_NFE.FatGerCidCli.Value);
  fmManNge_NFE.FatGerUfeCli.Value := Trim(fmManNge_NFE.FatGerUfeCli.Value);
  fmManNge_NFE.FatGerCgeCli.Value := Trim(fmManNge_NFE.FatGerCgeCli.Value);
  fmManNge_NFE.FatGerIneCli.Value := Trim(fmManNge_NFE.FatGerIneCli.Value);

  if fmManNge_NFE.FatGerCodTra.Value > 0 then
     fmManNge_NFE.FatGerTraSda.Value := fmManNge_NFE.FatGerCodTra.Value;

  if (Trim(fmManNge_NFE.FatGerTenTra.Value) <> '') or
     (Trim(fmManNge_NFE.FatGerEndTra.Value) <> '') or
     (Trim(fmManNge_NFE.FatGerRefTra.Value) <> '') or
     (Trim(fmManNge_NFE.FatGerBaiTra.Value) <> '') or
     (Trim(fmManNge_NFE.FatGerCidTra.Value) <> '') or
     (Trim(fmManNge_NFE.FatGerUfeTra.Value) <> '') or
     (Trim(fmManNge_NFE.FatGerCepTra.Value) <> '') then begin

     if Trim(fmManNge_NFE.FatGerUfeTra.Value) = '' then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdUfeTra);
        
     if fmManNge_NFE.FatGerId_TraUfe.Value = 0 then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdUfeTra);

     if fmManNge_NFE.FatGerId_TraCie.Value = 0 then
        fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_TraCie);

  end;

  if fmManNge_NFE.FatGerId_FinUff.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdUffCli);

  if fmManNge_NFE.FatGerId_FinCif.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinCif);

  if fmManNge_NFE.FatGerId_FinUfe.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinUfe);

  if fmManNge_NFE.FatGerId_FinCie.Value = 0 then
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdId_FinCie);

  with fmManNge_NFE.FatGer do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManNge_NFE.FatGer.State = dsBrowse then fmManNge_NFE.FatGer.Edit;

          EdDesNat.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  fmManNge_NFE.FatGer.Close;                
  fmManNge_NFE.FatGer.Open;

  fmManNge_NFE.pnBasIc1.Caption := FormatFloat('###,###,##0.00',fmManNge_NFE.FatGerBasIc1.Value);
  fmManNge_NFE.pnTotIc1.Caption := FormatFloat('###,###,##0.00',fmManNge_NFE.FatGerTotIc1.Value);
  fmManNge_NFE.pnBasSu1.Caption := FormatFloat('###,###,##0.00',fmManNge_NFE.FatGerBasSu1.Value);
  fmManNge_NFE.pnTotSu1.Caption := FormatFloat('###,###,##0.00',fmManNge_NFE.FatGerTotSu1.Value);
  fmManNge_NFE.pnTotIt1.Caption := FormatFloat('###,###,##0.00',fmManNge_NFE.FatGerTotIt1.Value);
  fmManNge_NFE.pnTotFrt.Caption := FormatFloat('###,###,##0.00',fmManNge_NFE.FatGerTotFrt.Value);
  fmManNge_NFE.pnTotSeg.Caption := FormatFloat('###,###,##0.00',fmManNge_NFE.FatGerTotSeg.Value);
  fmManNge_NFE.pnTotDes.Caption := FormatFloat('###,###,##0.00',fmManNge_NFE.FatGerTotDes.Value);
  fmManNge_NFE.pnTotIp1.Caption := FormatFloat('###,###,##0.00',fmManNge_NFE.FatGerTotIp1.Value);
  fmManNge_NFE.pnTotGe1.Caption := FormatFloat('###,###,##0.00',fmManNge_NFE.FatGerTotGe1.Value);

  try

     fmManNg2_NFE := TfmManNg2_NFE.Create(Self);
     fmManNg2_NFE.ShowModal;

  finally

     FreeAndNil(fmManNg2_NFE);

  end;

  if fmManNge_NFE.Finalizar = 'S' then
     Close
  else
     begin

     fmManNge_NFE.FatGer.Edit;

     EdDesNat.SetFocus;

  end;
end;

procedure TfmManNg1_NFE.FormShow(Sender: TObject);
begin
  inherited;

  CodTra_Ant := fmManNge_NFE.FatGerCodTra.Value;
  UfeTra_Ant := fmManNge_NFE.FatGerUfeTra.Value;
  UffCli_Ant := fmManNge_NFE.FatGerUffCli.Value;
  UfeCli_Ant := fmManNge_NFE.FatGerUfeCli.Value;

  Id_TraCie_Ant := fmManNge_NFE.FatGerId_TraCie.Value;
  Id_FinCif_Ant := fmManNge_NFE.FatGerId_FinCif.Value;
  Id_FinCie_Ant := fmManNge_NFE.FatGerId_FinCie.Value;

  if Trim(fmManNge_NFE.FatGerUfeTra.Value) <> '' then begin

     if fmManNge_NFE.FatGerId_TraUfe.Value = 0 then begin

        with fmManNge_NFE.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManNge_NFE.FatGerUfeTra.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManNge_NFE.FatGerId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManNge_NFE.FatGerId_TraUfe.Clear;

        end;
     end;
  end;

  if Trim(fmManNge_NFE.FatGerUffCli.Value) <> '' then begin

     if fmManNge_NFE.FatGerId_FinUff.Value = 0 then begin

        with fmManNge_NFE.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManNge_NFE.FatGerUffCli.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManNge_NFE.FatGerId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManNge_NFE.FatGerId_FinUff.Clear;

        end;
     end;
  end;

  if Trim(fmManNge_NFE.FatGerUfeCli.Value) <> '' then begin

     if fmManNge_NFE.FatGerId_FinUfe.Value = 0 then begin

        with fmManNge_NFE.quSQL,SQL do begin

             Close;
             Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManNge_NFE.FatGerUfeCli.Value);
             Open;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then
                fmManNge_NFE.FatGerId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
             else
                fmManNge_NFE.FatGerId_FinUfe.Clear;

        end;
     end;
  end;

  if fmManNge_NFE.FatGerId_TraUfe.Value > 0 then pnId_TraUfe.Caption := IntToStr(fmManNge_NFE.FatGerId_TraUfe.Value);
  if fmManNge_NFE.FatGerId_FinUff.Value > 0 then pnId_FinUff.Caption := IntToStr(fmManNge_NFE.FatGerId_FinUff.Value);
  if fmManNge_NFE.FatGerId_FinUfe.Value > 0 then pnId_FinUfe.Caption := IntToStr(fmManNge_NFE.FatGerId_FinUfe.Value);

  if Id_TraCie_Ant > 0 then begin

     with fmManNge_NFE.quSQL,SQL do begin

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

     with fmManNge_NFE.quSQL,SQL do begin

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

     with fmManNge_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinCie.NomCie,'+
                  '        FinCie.SigNfe '+
                  ' From FinCie'+
                  ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie_Ant));
          Open;

          pnNomCie.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

     end;
  end;

  fmManNge_NFE.FatGer.Edit;

  if fmManNge_NFE.FatGerInfBrt.Value = 0 then fmManNge_NFE.FatGerInfBrt.Value := fmManNge_NFE.FatGerTotBrt.Value;
  if fmManNge_NFE.FatGerInfLiq.Value = 0 then fmManNge_NFE.FatGerInfLiq.Value := fmManNge_NFE.FatGerTotLiq.Value;

  with fmManNge_NFE.quSQL,SQL do begin

       Close;
       Text := ' Select FatGe2.CodCfo,'+
               '        Count(*) as QtdReg'+
               ' From FatGe2'+
               ' Where FatGe2.CodEmp = '+ QuotedStr(IntToStr(fmManNge_NFE.FatGerCodEmp.Value)) +
               '   and FatGe2.DteGer = '+ QuotedStr(fDateToSQL(fmManNge_NFE.FatGerDteGer.Value)) +
               '   and FatGe2.NumGer = '+ QuotedStr(IntToStr(fmManNge_NFE.FatGerNumGer.Value)) +
               ' Group by FatGe2.CodCfo'+
               ' Order by Count(*) Desc';
       Open;
       First;

  end;

  if Trim(fmManNge_NFE.quSQL.FieldbyName('CodCfo').AsString) <> '' then begin
  
     fmManNge_NFE.FatGerCodCf1.Value := Trim(fmManNge_NFE.quSQL.FieldbyName('CodCfo').AsString);

     if not fmManNge_NFE.quSQL.EOF then begin

        fmManNge_NFE.quSQL.Next;

        if Trim(fmManNge_NFE.quSQL.FieldbyName('CodCfo').AsString) <> '' then begin

           if Trim(fmManNge_NFE.quSQL.FieldbyName('CodCfo').AsString) <> fmManNge_NFE.FatGerCodCf1.Value then
              fmManNge_NFE.FatGerCodCf2.Value := Trim(fmManNge_NFE.quSQL.FieldbyName('CodCfo').AsString);
           
           if not fmManNge_NFE.quSQL.EOF then begin
              
              fmManNge_NFE.quSQL.Next;

              if Trim(fmManNge_NFE.quSQL.FieldbyName('CodCfo').AsString) <> '' then begin

                 if Trim(fmManNge_NFE.quSQL.FieldbyName('CodCfo').AsString) <> fmManNge_NFE.FatGerCodCf1.Value then begin

                    if Trim(fmManNge_NFE.quSQL.FieldbyName('CodCfo').AsString) <> fmManNge_NFE.FatGerCodCf2.Value then
                       fmManNge_NFE.FatGerCodCf2.Value := Trim(fmManNge_NFE.FatGerCodCf2.Value)+'/'+Trim(fmManNge_NFE.quSQL.FieldbyName('CodCfo').AsString);

                 end;   
              end;
           end;   
        end;
     end;
  end;

  fmManNge_NFE.quSQL.Close;

  if TrimLeft(TrimRight(fmManNge_NFE.FatGerCgeCli.Value)) <> '' then begin

     if Length(TrimLeft(TrimRight(fmManNge_NFE.FatGerCgeCli.Value))) > 11 then
        fmManNge_NFE.FatGerCgeCli.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManNge_NFE.FatGerCgeCli.EditMask := '!999.999.999\-99;0;';

     end
  else
     fmManNge_NFE.FatGerCgeCli.EditMask := '';

  if TrimLeft(TrimRight(fmManNge_NFE.FatGerCgcTra.Value)) <> '' then begin

     if TrimLeft(TrimRight(fmManNge_NFE.FatGerCgcTra.Value)) <> '' then
        fmManNge_NFE.FatGerCgcTra.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManNge_NFE.FatGerCgcTra.EditMask := '';

     end
  else
     fmManNge_NFE.FatGerCgcTra.EditMask := '';

  EdDesNat.SetFocus;

end;

procedure TfmManNg1_NFE.EdCgeCliExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManNge_NFE.FatGerCgeCli.Value)) <> '' then begin

     if Length(TrimLeft(TrimRight(fmManNge_NFE.FatGerCgeCli.Value))) > 11 then
        fmManNge_NFE.FatGerCgeCli.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManNge_NFE.FatGerCgeCli.EditMask := '!999.999.999\-99;0;';

     end
  else
     fmManNge_NFE.FatGerCgeCli.EditMask := '';
end;

procedure TfmManNg1_NFE.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNg1_NFE.EdCgcTraExit(Sender: TObject);
begin
  if TrimLeft(TrimRight(fmManNge_NFE.FatGerCgcTra.Value)) <> '' then begin

     if TrimLeft(TrimRight(fmManNge_NFE.FatGerCgcTra.Value)) <> '' then
        fmManNge_NFE.FatGerCgcTra.EditMask := '!99.999.999/9999\-99;0;'
     else
        fmManNge_NFE.FatGerCgcTra.EditMask := '';

     end
  else
     fmManNge_NFE.FatGerCgcTra.EditMask := '';
end;

procedure TfmManNg1_NFE.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManNg1_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManNge_NFE.FatGer.State <> dsBrowse then fmManNge_NFE.FatGer.CancelUpdates;
end;

procedure TfmManNg1_NFE.EdCgeCliEnter(Sender: TObject);
begin
  inherited;
  if fmManNge_NFE.FatGerCgeCli.EditMask <> '' then fmManNge_NFE.FatGerCgeCli.EditMask := '';
end;

procedure TfmManNg1_NFE.EdCodTraExit(Sender: TObject);
begin
  inherited;
  if fmManNge_NFE.FatGerCodTra.Value <> CodTra_Ant then begin

     CodTra_Ant := fmManNge_NFE.FatGerCodTra.Value;
     
     if fmManNge_NFE.FatGerCodTra.Value > 0 then begin

        with fmManNge_NFE.quSQL,SQL do begin

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

             fmManNge_NFE.FatGerNomTra.Value := Trim(FieldbyName('NomTra').AsString);
             fmManNge_NFE.FatGerCgcTra.Value := Trim(FieldbyName('CgcTra').AsString);
             fmManNge_NFE.FatGerInsTra.Value := Trim(FieldbyName('InsTra').AsString);
             fmManNge_NFE.FatGerTenTra.Value := Trim(FieldbyName('TenTra').AsString);
             fmManNge_NFE.FatGerEndTra.Value := Trim(FieldbyName('EndTra').AsString);
             fmManNge_NFE.FatGerRefTra.Value := Trim(FieldbyName('RefTra').AsString);
             fmManNge_NFE.FatGerBaiTra.Value := Trim(FieldbyName('BaiTra').AsString);
             fmManNge_NFE.FatGerCidTra.Value := Trim(FieldbyName('CidTra').AsString);
             fmManNge_NFE.FatGerUfeTra.Value := Trim(FieldbyName('SigUfe').AsString);
             fmManNge_NFE.FatGerCepTra.Value := Trim(FieldbyName('CepTra').AsString);

             UfeTra_Ant := fmManNge_NFE.FatGerUfeTra.Value;

             if FieldbyName('Id_FinUfe').AsInteger > 0 then begin

                fmManNge_NFE.FatGerId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger;

                pnId_TraUfe.Caption := IntToStr(fmManNge_NFE.FatGerId_TraUfe.Value);

             end;   

             if FieldbyName('Id_FinCie').AsInteger > 0 then begin

                fmManNge_NFE.FatGerId_TraCie.Value := FieldbyName('Id_FinCie').AsInteger;

                Id_TraCie_Ant := fmManNge_NFE.FatGerId_TraCie.Value;

                with fmManNge_NFE.quSQL,SQL do begin

                     Close;
                     Text := ' Select FinCie.NomCie,'+
                             '        FinCie.SigNfe '+
                             ' From FinCie'+
                             ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_TraCie_Ant));
                     Open;

                     pnNomCia.Caption := Trim(FieldbyName('NomCie').AsString)+' IBGE: '+Trim(FieldbyName('SigNFE').AsString);

                end;
             end;

             EdNomTra.Text := fmManNge_NFE.FatGerNomTra.Value;
             EdCgcTra.Text := fmManNge_NFE.FatGerCgcTra.Value;
             EdInsTra.Text := fmManNge_NFE.FatGerInsTra.Value;
             EdTenTra.Text := fmManNge_NFE.FatGerTenTra.Value;
             EdEndTra.Text := fmManNge_NFE.FatGerEndTra.Value;
             EdNumTra.Text := fmManNge_NFE.FatGerNumTra.Value;
             EdRefTra.Text := fmManNge_NFE.FatGerRefTra.Value;
             EdBaiTra.Text := fmManNge_NFE.FatGerBaiTra.Value;
             EdCidTra.Text := fmManNge_NFE.FatGerCidTra.Value;
             EdUfeTra.Text := fmManNge_NFE.FatGerUfeTra.Value;
             EdCepTra.Text := fmManNge_NFE.FatGerCepTra.Value;

             if fmManNge_NFE.FatGerId_TraCie.Value > 0 then
                EdId_TraCie.Text := IntToStr(fmManNge_NFE.FatGerId_TraCie.Value);

        end;

        end
     else
        begin

        fmManNge_NFE.FatGerNomTra.Clear;
        fmManNge_NFE.FatGerCgcTra.Clear;
        fmManNge_NFE.FatGerInsTra.Clear;
        fmManNge_NFE.FatGerTenTra.Clear;
        fmManNge_NFE.FatGerEndTra.Clear;
        fmManNge_NFE.FatGerRefTra.Clear;
        fmManNge_NFE.FatGerBaiTra.Clear;
        fmManNge_NFE.FatGerCidTra.Clear;
        fmManNge_NFE.FatGerUfeTra.Clear;
        fmManNge_NFE.FatGerCepTra.Clear;

        Id_TraCie_Ant := fmManNge_NFE.FatGerId_TraCie.Value;
        
        pnId_TraUfe.Caption := '';

        pnNomCia.Caption := '';

     end;
  end;
end;

procedure TfmManNg1_NFE.EdCodTraKeyDown(Sender: TObject; var Key: Word;
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
           
           fmManNge_NFE.FatGerCodTra.Value := fmAuxIni.CodTra;

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

           fmManNge_NFE.FatGerCodTra.Value := fmAuxPsq.CodTra;

           EdCodTra.Text := IntToStr(fmAuxPsq.CodTra);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CodTra > 0 then EdCodTra.OnExit(Sender);

  end;
end;

procedure TfmManNg1_NFE.EdCodTraKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManNg1_NFE.EdCodTraEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F1-Iniciais F2-Inteligente';
end;

procedure TfmManNg1_NFE.EdDesNatEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := '';
end;

procedure TfmManNg1_NFE.EdUfeTraExit(Sender: TObject);
begin
  inherited;
  if fmManNge_NFE.FatGerUfeTra.Value <> UfeTra_Ant then begin

     UfeTra_Ant := fmManNge_NFE.FatGerUfeTra.Value;

     fmManNge_NFE.FatGerId_TraCie.Clear;

     with fmManNge_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManNge_NFE.FatGerUfeTra.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManNge_NFE.FatGerId_TraUfe.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManNge_NFE.FatGerId_TraUfe.Clear;

     end;

     if fmManNge_NFE.FatGerId_TraUfe.Value > 0 then pnId_TraUfe.Caption := IntToStr(fmManNge_NFE.FatGerId_TraUfe.Value);

  end;
end;

procedure TfmManNg1_NFE.EdId_TraCieExit(Sender: TObject);
begin
  inherited;
  if fmManNge_NFE.FatGerId_TraCie.Value <> Id_TraCie_Ant then begin

     Id_TraCie_Ant := fmManNge_NFE.FatGerId_TraCie.Value;

     with fmManNge_NFE.quSQL,SQL do begin

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

procedure TfmManNg1_NFE.EdId_TraCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManNge_NFE.FatGerId_TraUfe.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManNge_NFE.FatGerId_TraUfe.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManNge_NFE.FatGerId_TraCie.Value := fmAuxIni.Id_FinCie;

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

     if fmManNge_NFE.FatGerId_TraUfe.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManNge_NFE.FatGerId_TraUfe.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManNge_NFE.FatGerId_TraCie.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManNg1_NFE.EdId_FinCifExit(Sender: TObject);
begin
  inherited;
  if fmManNge_NFE.FatGerId_FinCif.Value <> Id_FinCif_Ant then begin

     Id_FinCif_Ant := fmManNge_NFE.FatGerId_FinCif.Value;

     with fmManNge_NFE.quSQL,SQL do begin

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

procedure TfmManNg1_NFE.EdId_FinCifKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManNge_NFE.FatGerId_FinUff.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManNge_NFE.FatGerId_FinUff.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManNge_NFE.FatGerId_FinCif.Value := fmAuxIni.Id_FinCie;

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

     if fmManNge_NFE.FatGerId_FinUff.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManNge_NFE.FatGerId_FinUff.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManNge_NFE.FatGerId_FinCif.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManNg1_NFE.EdId_FinCieExit(Sender: TObject);
begin
  inherited;
  if fmManNge_NFE.FatGerId_FinCie.Value <> Id_FinCie_Ant then begin

     Id_FinCie_Ant := fmManNge_NFE.FatGerId_FinCie.Value;

     with fmManNge_NFE.quSQL,SQL do begin

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

procedure TfmManNg1_NFE.EdId_FinCieKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManNge_NFE.FatGerId_FinUfe.Value > 0 then begin

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.TipoPesq := 'Municipios';

           fmAuxIni.Id_FinUfe := fmManNge_NFE.FatGerId_FinUfe.Value;

           fmAuxIni.ShowModal;

           if fmAuxIni.Id_FinCie > 0 then begin

              fmManNge_NFE.FatGerId_FinCie.Value := fmAuxIni.Id_FinCie;

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

     if fmManNge_NFE.FatGerId_FinUfe.Value > 0 then begin

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.TipoPesq := 'Municipios';

           fmAuxPsq.Id_FinUfe := fmManNge_NFE.FatGerId_FinUfe.Value;

           fmAuxPsq.ShowModal;

           if fmAuxPsq.Id_FinCie > 0 then begin

              fmManNge_NFE.FatGerId_FinCie.Value := fmAuxPsq.Id_FinCie;

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

procedure TfmManNg1_NFE.EdUffCliExit(Sender: TObject);
begin
  inherited;
  if fmManNge_NFE.FatGerUffCli.Value <> UffCli_Ant then begin

     UffCli_Ant := fmManNge_NFE.FatGerUffCli.Value;

     fmManNge_NFE.FatGerId_FinCif.Clear;

     with fmManNge_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManNge_NFE.FatGerUffCli.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManNge_NFE.FatGerId_FinUff.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManNge_NFE.FatGerId_FinUff.Clear;

     end;

     if fmManNge_NFE.FatGerId_FinUff.Value > 0 then pnId_FinUff.Caption := IntToStr(fmManNge_NFE.FatGerId_FinUff.Value);

  end;
end;

procedure TfmManNg1_NFE.EdUfeCliExit(Sender: TObject);
begin
  inherited;
  if fmManNge_NFE.FatGerUfeCli.Value <> UfeCli_Ant then begin

     UfeCli_Ant := fmManNge_NFE.FatGerUfeCli.Value;

     fmManNge_NFE.FatGerId_FinCie.Clear;

     with fmManNge_NFE.quSQL,SQL do begin

          Close;
          Text := ' Select FinUfe.Id_FinUfe From FinUfe Where FinUfe.SigUfe = '+ QuotedStr(fmManNge_NFE.FatGerUfeCli.Value);
          Open;

          if FieldbyName('Id_FinUfe').AsInteger > 0 then
             fmManNge_NFE.FatGerId_FinUfe.Value := FieldbyName('Id_FinUfe').AsInteger
          else
             fmManNge_NFE.FatGerId_FinUfe.Clear;

     end;

     if fmManNge_NFE.FatGerId_FinUfe.Value > 0 then pnId_FinUfe.Caption := IntToStr(fmManNge_NFE.FatGerId_FinUfe.Value);

  end;
end;

procedure TfmManNg1_NFE.sbPsqCifClick(Sender: TObject);
begin
  inherited;
  if fmManNge_NFE.FatGerId_FinUff.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManNge_NFE.FatGerId_FinUff.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManNge_NFE.FatGerId_FinCif.Value := fmAuxIni.Id_FinCie;

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

procedure TfmManNg1_NFE.sbPsqCieClick(Sender: TObject);
begin
  inherited;
  if fmManNge_NFE.FatGerId_FinUfe.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManNge_NFE.FatGerId_FinUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManNge_NFE.FatGerId_FinCie.Value := fmAuxIni.Id_FinCie;

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

procedure TfmManNg1_NFE.sbTraCieClick(Sender: TObject);
begin
  inherited;
  if fmManNge_NFE.FatGerId_TraUfe.Value > 0 then begin

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Municipios';

        fmAuxIni.Id_FinUfe := fmManNge_NFE.FatGerId_TraUfe.Value;

        fmAuxIni.ShowModal;

        if fmAuxIni.Id_FinCie > 0 then begin

           fmManNge_NFE.FatGerId_TraCie.Value := fmAuxIni.Id_FinCie;

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

end.
