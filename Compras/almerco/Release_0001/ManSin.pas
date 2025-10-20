unit ManSin;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, ppBands, ppClass,
  ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppDB, ppComm, ppRelatv, ppDBPipe, dxDBColorDateEdit,
  dxDBColorCurrencyEdit, dxDBColorEdit, dxDBColorPickEdit;

type
  TfmManSin = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label11: TLabel;
    Bevel2: TBevel;
    Label22: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    EdTotEnc: TdxDBColorCurrencyEdit;
    EdTotSuc: TdxDBColorCurrencyEdit;
    EdBasSuc: TdxDBColorCurrencyEdit;
    EdTotIcc: TdxDBColorCurrencyEdit;
    EdBasIcc: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdTotGec: TdxDBColorCurrencyEdit;
    EdTotIpc: TdxDBColorCurrencyEdit;
    EdTotSeg: TdxDBColorCurrencyEdit;
    EdTotFrt: TdxDBColorCurrencyEdit;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    Label4: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    EdFlgOco: TdxDBColorEdit;
    dxDBEdit1: TdxDBColorEdit;
    dxDBEdit2: TdxDBColorEdit;
    dxDBEdit3: TdxDBColorEdit;
    dxDBEdit4: TdxDBColorEdit;
    dxDBEdit5: TdxDBColorEdit;
    dxDBEdit6: TdxDBColorEdit;
    dxDBEdit8: TdxDBColorEdit;
    dxDBEdit9: TdxDBColorEdit;
    pnFlgOco06: TPanel;
    pnFlgOco07: TPanel;
    pnFlgOco10: TPanel;
    pnFlgoco11: TPanel;
    Label21: TLabel;
    Bevel1: TBevel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    EdCodFor: TdxDBColorEdit;
    EdCodPfa: TdxDBColorEdit;
    bpsqPfa: TSpeedButton;
    bpsqFor: TSpeedButton;
    pnNomFor: TPanel;
    EdNomFor: TdxDBColorEdit;
    pnNomPfa: TPanel;
    EdNomPfa: TdxDBEdit;
    Label27: TLabel;
    EdNumDoc: TdxDBColorEdit;
    Label28: TLabel;
    Label44: TLabel;
    EdDteOpe: TdxDBColorDateEdit;
    Label36: TLabel;
    EdDteDoc: TdxDBColorDateEdit;
    Label37: TLabel;
    EdDteCre: TdxDBColorDateEdit;
    pnFlgOco05: TPanel;
    pnFlgOco04: TPanel;
    pnFlgOco03: TPanel;
    pnFlgOco02: TPanel;
    pnFlgOco01: TPanel;
    Label52: TLabel;
    Label31: TLabel;
    EdCodTip: TdxDBColorCurrencyEdit;
    Label32: TLabel;
    EdCodCfo: TdxDBColorEdit;
    Label33: TLabel;
    Label34: TLabel;
    EdUfeEnt: TdxDBColorEdit;
    Label35: TLabel;
    EdSerNot: TdxDBColorEdit;
    Label38: TLabel;
    Label49: TLabel;
    Label39: TLabel;
    EdTotDes: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    EdModPfa: TdxDBColorPickEdit;
    Label18: TLabel;
    Label29: TLabel;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bretornarClick(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure EdBasIccExit(Sender: TObject);
    procedure EdTotIccExit(Sender: TObject);
    procedure EdBasSucExit(Sender: TObject);
    procedure EdTotSucChange(Sender: TObject);
    procedure EdTotEncExit(Sender: TObject);
    procedure EdTotIpcExit(Sender: TObject);
    procedure EdTotGecExit(Sender: TObject);
    procedure bpsqForClick(Sender: TObject);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodForKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodForExit(Sender: TObject);
    procedure bpsqPfaClick(Sender: TObject);
    procedure EdCodPfaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodPfaExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  DifEnt   : real;
  TotDif   : real;
  fmManSin : TfmManSin;

implementation

uses dxDemoUtils, Bbgeral, AuxIni, AuxPsq, PsqPfa, Bbfuncao, BbMensag,
     ManEpe, ManGDB, ManEn7;

{$R *.DFM}

procedure TfmManSin.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManSin.FormShow(Sender: TObject);
begin
  inherited;

  with fmManEpe.quSQL,SQL do begin

       Close;
       Text := ' Select CmpPar.DifEnt From CmpPar';
       Open;

       DifEnt := FieldbyName('DifEnt').AsFloat;

  end;

  fmManEpe.CmpEnt.Edit;

  if fmManEpe.CmpEntBasIcc.Value <> fmManEpe.CmpEntBasIcm.Value then begin

     if fmManEpe.CmpEntBasIcc.Value > fmManEpe.CmpEntBasIcm.Value then
        TotDif := fRound(fmManEpe.CmpEntBasIcc.Value - fmManEpe.CmpEntBasIcm.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntBasIcm.Value - fmManEpe.CmpEntBasIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco01.Color := clRed
     else
        pnFlgOco01.Color := clLime;

  end;

  if fmManEpe.CmpEntTotIcc.Value <> fmManEpe.CmpEntTotIcm.Value then begin

     if fmManEpe.CmpEntTotIcc.Value > fmManEpe.CmpEntTotIcm.Value then
        TotDif := fRound(fmManEpe.CmpEntTotIcc.Value - fmManEpe.CmpEntTotIcm.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntTotIcm.Value - fmManEpe.CmpEntTotIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco02.Color := clRed
     else
        pnFlgOco02.Color := clLime;

  end;

  if fmManEpe.CmpEntBasSuc.Value <> fmManEpe.CmpEntBasSub.Value then begin

     if fmManEpe.CmpEntBasSuc.Value > fmManEpe.CmpEntBasSub.Value then
        TotDif := fRound(fmManEpe.CmpEntBasSuc.Value - fmManEpe.CmpEntBasSub.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntBasSub.Value - fmManEpe.CmpEntBasSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco03.Color := clRed
     else
        pnFlgOco03.Color := clLime;

  end;

  if fmManEpe.CmpEntTotSuc.Value <> fmManEpe.CmpEntTotSub.Value then begin

     if fmManEpe.CmpEntTotSuc.Value > fmManEpe.CmpEntTotSub.Value then
        TotDif := fRound(fmManEpe.CmpEntTotSuc.Value - fmManEpe.CmpEntTotSub.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntTotSub.Value - fmManEpe.CmpEntTotSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco04.Color := clRed
     else
        pnFlgOco04.Color := clLime;

  end;

  if fmManEpe.CmpEntTotEnc.Value <> fmManEpe.CmpEntTotEnt.Value then begin

     if fmManEpe.CmpEntTotEnc.Value > fmManEpe.CmpEntTotEnt.Value then
        TotDif := fRound(fmManEpe.CmpEntTotEnc.Value - fmManEpe.CmpEntTotEnt.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntTotEnt.Value - fmManEpe.CmpEntTotEnc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco05.Color := clRed
     else
        pnFlgOco05.Color := clLime;

  end;

  if fmManEpe.CmpEntModPfa.Value = 'Importacao' then begin

     fmManEpe.CmpEntTotIpc.Value := fmManEpe.CmpEntTotIpi.Value;

     EdTotIpc.Value := fmManEpe.CmpEntTotIpi.Value;

     EdTotIpc.Enabled := False;
     
     EdTotIpc.Font.Style := [fsBold];
     
     pnFlgOco10.Color := clLime;         

     end
  else
     begin

     if fmManEpe.CmpEntTotIpc.Value <> fmManEpe.CmpEntTotIpi.Value then begin

        if fmManEpe.CmpEntTotIpc.Value > fmManEpe.CmpEntTotIpi.Value then
           TotDif := fRound(fmManEpe.CmpEntTotIpc.Value - fmManEpe.CmpEntTotIpi.Value,2)
        else
           TotDif := fRound(fmManEpe.CmpEntTotIpi.Value - fmManEpe.CmpEntTotIpc.Value,2);

        if TotDif > DifEnt then
           pnFlgOco10.Color := clRed
        else
           pnFlgOco10.Color := clLime;

     end;
  end;   

  if fmManEpe.CmpEntTotGec.Value <> fmManEpe.CmpEntTotGer.Value then begin

     if fmManEpe.CmpEntTotGec.Value > fmManEpe.CmpEntTotGer.Value then
        TotDif := fRound(fmManEpe.CmpEntTotGec.Value - fmManEpe.CmpEntTotGer.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntTotGer.Value - fmManEpe.CmpEntTotGec.Value,2);

     if TotDif > DifEnt then
        pnFlgOco11.Color := clRed
     else
        pnFlgOco11.Color := clLime;

  end;

  with fmManEpe.quSQL,SQL do begin

       Close;
       Text := ' Select FinFor.NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(fmManEpe.CmpEntCodFor.Value));
       Open;

       pnNomFor.Caption := FieldbyName('NomFor').AsString;

  end;

  with fmManEpe.quSQL,SQL do begin

       Close;
       Text := ' Select EstPfa.DscPfa'+
               ' From EstPfa'+
               ' Where EstPfa.TipPfa = '+ QuotedStr('Entrada')+
               '   and EstPfa.CodPfa = '+ QuotedStr(fmManEpe.CmpEntCodPfa.Value);
       Open;

       pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

  end;

  EdUfeEnt.SetFocus;

end;

procedure TfmManSin.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManEpe.CmpEnt.State <> dsBrowse then fmManEpe.CmpEnt.CancelUpdates;
end;

procedure TfmManSin.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSin.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManSin.bcontinuarClick(Sender: TObject);
begin

  ActiveControl := nil;
  
  fmManEpe.CmpEntFlgAtu.Value := '*';

  with fmManEpe.CmpEnt do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManEpe.CmpEnt.State = dsBrowse then fmManEpe.CmpEnt.Edit;

          EdUfeEnt.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  close;

end;

procedure TfmManSin.EdBasIccExit(Sender: TObject);
begin
  if fmManEpe.CmpEntBasIcc.Value <> fmManEpe.CmpEntBasIcm.Value then begin

     if fmManEpe.CmpEntBasIcc.Value > fmManEpe.CmpEntBasIcm.Value then
        TotDif := fRound(fmManEpe.CmpEntBasIcc.Value - fmManEpe.CmpEntBasIcm.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntBasIcm.Value - fmManEpe.CmpEntBasIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco01.Color := clRed
     else
        pnFlgOco01.Color := clLime;

     end
  else
     pnFlgOco01.Color := clLime;
end;

procedure TfmManSin.EdTotIccExit(Sender: TObject);
begin
  if fmManEpe.CmpEntTotIcc.Value <> fmManEpe.CmpEntTotIcm.Value then begin

     if fmManEpe.CmpEntTotIcc.Value > fmManEpe.CmpEntTotIcm.Value then
        TotDif := fRound(fmManEpe.CmpEntTotIcc.Value - fmManEpe.CmpEntTotIcm.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntTotIcm.Value - fmManEpe.CmpEntTotIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco02.Color := clRed
     else
        pnFlgOco02.Color := clLime;

     end
  else
     pnFlgOco02.Color := clLime;
end;

procedure TfmManSin.EdBasSucExit(Sender: TObject);
begin
  if fmManEpe.CmpEntBasSuc.Value <> fmManEpe.CmpEntBasSub.Value then begin

     if fmManEpe.CmpEntBasSuc.Value > fmManEpe.CmpEntBasSub.Value then
        TotDif := fRound(fmManEpe.CmpEntBasSuc.Value - fmManEpe.CmpEntBasSub.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntBasSub.Value - fmManEpe.CmpEntBasSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco03.Color := clRed
     else
        pnFlgOco03.Color := clLime;

     end
  else
     pnFlgOco03.Color := clLime;
end;

procedure TfmManSin.EdTotSucChange(Sender: TObject);
begin
  if fmManEpe.CmpEntTotSuc.Value <> fmManEpe.CmpEntTotSub.Value then begin

     if fmManEpe.CmpEntTotSuc.Value > fmManEpe.CmpEntTotSub.Value then
        TotDif := fRound(fmManEpe.CmpEntTotSuc.Value - fmManEpe.CmpEntTotSub.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntTotSub.Value - fmManEpe.CmpEntTotSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco04.Color := clRed
     else
        pnFlgOco04.Color := clLime;

     end
  else
     pnFlgOco04.Color := clLime;
end;

procedure TfmManSin.EdTotEncExit(Sender: TObject);
begin
  if fmManEpe.CmpEntTotEnc.Value <> fmManEpe.CmpEntTotEnt.Value then begin

     if fmManEpe.CmpEntTotEnc.Value > fmManEpe.CmpEntTotEnt.Value then
        TotDif := fRound(fmManEpe.CmpEntTotEnc.Value - fmManEpe.CmpEntTotEnt.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntTotEnt.Value - fmManEpe.CmpEntTotEnc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco05.Color := clRed
     else
        pnFlgOco05.Color := clLime;

     end
  else
     pnFlgOco05.Color := clLime;
end;

procedure TfmManSin.EdTotIpcExit(Sender: TObject);
begin
  if fmManEpe.CmpEntTotIpc.Value <> fmManEpe.CmpEntTotIpi.Value then begin

     if fmManEpe.CmpEntTotIpc.Value > fmManEpe.CmpEntTotIpi.Value then
        TotDif := fRound(fmManEpe.CmpEntTotIpc.Value - fmManEpe.CmpEntTotIpi.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntTotIpi.Value - fmManEpe.CmpEntTotIpc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco10.Color := clRed
     else
        pnFlgOco10.Color := clLime;

     end
  else
     pnFlgOco10.Color := clLime;
end;

procedure TfmManSin.EdTotGecExit(Sender: TObject);
begin
  if fmManEpe.CmpEntTotGec.Value <> fmManEpe.CmpEntTotGer.Value then begin

     if fmManEpe.CmpEntTotGec.Value > fmManEpe.CmpEntTotGer.Value then
        TotDif := fRound(fmManEpe.CmpEntTotGec.Value - fmManEpe.CmpEntTotGer.Value,2)
     else
        TotDif := fRound(fmManEpe.CmpEntTotGer.Value - fmManEpe.CmpEntTotGec.Value,2);

     if TotDif > DifEnt then
        pnFlgOco11.Color := clRed
     else
        pnFlgOco11.Color := clLime;

     end
  else
     pnFlgOco11.Color := clLime;
end;

procedure TfmManSin.bpsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        fmManEpe.CmpEntCodFor.Value := fmAuxIni.CodFor;
        fmManEpe.CmpEntUfeEnt.Value := fmAuxIni.SigUfe;
        fmManEpe.CmpEntConPlc.Value := fmAuxIni.ConPlc;
        fmManEpe.CmpEntSubPlc.Value := fmAuxIni.SubPlc;

        EdCodFor.Text := IntToStr(fmManEpe.CmpEntCodFor.Value);

        pnNomFor.Caption := fmAuxIni.NomFor;

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if fmManEpe.CmpEntCodFor.Value > 0 then EdNumDoc.SetFocus;

end;

procedure TfmManSin.EdCodForKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           fmManEpe.CmpEntCodFor.Value := fmAuxIni.CodFor;
           fmManEpe.CmpEntUfeEnt.Value := fmAuxIni.SigUfe;
           fmManEpe.CmpEntConPlc.Value := fmAuxIni.ConPlc;
           fmManEpe.CmpEntSubPlc.Value := fmAuxIni.SubPlc;

           EdCodFor.Text := IntToStr(fmManEpe.CmpEntCodFor.Value);

           pnNomFor.Caption := fmAuxIni.NomFor;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if fmManEpe.CmpEntCodFor.Value > 0 then EdNumDoc.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           fmManEpe.CmpEntCodFor.Value := fmAuxPsq.CodFor;
           fmManEpe.CmpEntUfeEnt.Value := fmAuxPsq.SigUfe;
           fmManEpe.CmpEntConPlc.Value := fmAuxPsq.ConPlc;
           fmManEpe.CmpEntSubPlc.Value := fmAuxPsq.SubPlc;

           EdCodFor.Text := IntToStr(fmManEpe.CmpEntCodFor.Value);

           pnNomFor.Caption := fmAuxPsq.NomFor;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if fmManEpe.CmpEntCodFor.Value > 0 then EdNumDoc.SetFocus;

  end;
end;

procedure TfmManSin.EdCodForKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManSin.EdCodForExit(Sender: TObject);
begin
  inherited;
  if fmManEpe.CmpEntCodFor.Value > 0 then begin

     with fmManEpe.quSql,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor,'+
                  '        FinFor.ConPlc,'+
                  '        FinFor.SubPlc,'+
                  '        FinFor.SigUfe '+
                  ' From FinFor'+
                  ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(fmManEpe.CmpEntCodFor.Value));
          Open;

     end;

     if Trim(fmManEpe.quSql.FieldbyName('NomFor').AsString) <> '' then begin

        pnNomFor.Caption := fmManEpe.quSQL.FieldbyName('NomFor').AsString;

        fmManEpe.CmpEntUfeEnt.Value := fmManEpe.quSQL.FieldbyName('SigUfe').AsString;
        fmManEpe.CmpEntConPlc.Value := fmManEpe.quSQL.FieldbyName('ConPlc').AsInteger;
        fmManEpe.CmpEntSubPlc.Value := fmManEpe.quSQL.FieldbyName('SubPlc').AsInteger;

        end
     else
        begin

        pnNomFor.Caption := '';

        fmsgErro('Fornecedor Informado não Encontrado.',EdCodFor);

     end;

     end
  else
     begin

     pnNomFor.Caption := '';

     fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdCodFor);

  end;
end;

procedure TfmManSin.bpsqPfaClick(Sender: TObject);
var
  LocPfa : string;
begin
  inherited;

  if fmManEpe.CmpEntUfeEnt.Value = 'EX' then
     LocPfa := 'Importacao ou Exportacao'
  else
     begin

     if fmManEpe.CmpEntUfeEnt.Value <> GUfeEmp then
        LocPfa := 'Outros Estados'
     else
        LocPfa := 'Mesmo Estado'

  end;

  try

     fmPsqPfa := TfmPsqPfa.Create(Self);

     with fmPsqPfa.EstPfa,SQL do begin

          Close;
          Text := ' Select EstPfa.CodPfa,'+
                  '        EstPfa.TipPfa,'+
                  '        EstPfa.DscPfa,'+
                  '        EstPfa.DsrPfa,'+
                  '        EstPfa.CodCf1,'+
                  '        EstPfa.CodCf2,'+
                  '        EstPfa.IntFin,'+
                  '        EstPfa.AtuEst,'+
                  '        EstPfa.ConSum,'+
                  '        EstPfa.ModPfa '+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  '   and EstPfa.LocPfa = :LocPfa'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString := 'Entrada';
               Params[1].AsString := LocPfa;

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        fmManEpe.CmpEntCodPfa.Value := fmPsqPfa.CodPfa;

        EdCodPfa.Text := fmManEpe.CmpEntCodPfa.Value;

        pnNomPfa.Caption := fmPsqPfa.NomPfa;

     end;

  finally   

     FreeAndNil(fmPsqPfa);

  end;

  if Trim( fmManEpe.CmpEntCodPfa.Value ) <> '' then EdDteOpe.SetFocus;

end;

procedure TfmManSin.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  LocPfa : string;
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if fmManEpe.CmpEntUfeEnt.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if fmManEpe.CmpEntUfeEnt.Value <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     try

        fmPsqPfa := TfmPsqPfa.Create(Self);

        with fmPsqPfa.EstPfa,SQL do begin

             Close;
             Text := ' Select EstPfa.CodPfa,'+
                     '        EstPfa.TipPfa,'+
                     '        EstPfa.DscPfa,'+
                     '        EstPfa.DsrPfa,'+
                     '        EstPfa.CodCf1,'+
                     '        EstPfa.CodCf2,'+
                     '        EstPfa.IntFin,'+
                     '        EstPfa.AtuEst,'+
                     '        EstPfa.ConSum,'+
                     '        EstPfa.ModPfa '+
                     ' From EstPfa'+
                     ' Where EstPfa.TipPfa = :TipPfa'+
                     '   and EstPfa.LocPfa = :LocPfa'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString := 'Entrada';
                  Params[1].AsString := LocPfa;

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           fmManEpe.CmpEntCodPfa.Value := fmPsqPfa.CodPfa;

           EdCodPfa.Text := fmManEpe.CmpEntCodPfa.Value;

           pnNomPfa.Caption := fmPsqPfa.NomPfa;

        end;

     finally

        FreeAndNil(fmPsqPfa);

     end;

     if Trim( fmManEpe.CmpEntCodPfa.Value ) <> '' then EdDteOpe.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     if fmManEpe.CmpEntUfeEnt.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if fmManEpe.CmpEntUfeEnt.Value <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'P';

        fmAuxPsq.LocPfa := LocPfa;
        fmAuxPsq.TipPfa := 'Entrada';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodPfa ) <> '' then begin

           fmManEpe.CmpEntCodPfa.Value := fmAuxPsq.CodPfa;

           EdCodPfa.Text := fmManEpe.CmpEntCodPfa.Value;

           pnNomPfa.Caption := fmAuxPsq.NomPfa;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( fmManEpe.CmpEntCodPfa.Value ) <> '' then EdDteOpe.SetFocus;

  end;
end;

procedure TfmManSin.EdCodPfaExit(Sender: TObject);
var
  LocPfa : string;
begin
  inherited;

  if Trim( fmManEpe.CmpEntCodPfa.Value ) <> '' then begin

     if fmManEpe.CmpEntUfeEnt.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if fmManEpe.CmpEntUfeEnt.Value <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     with fmManEpe.quSql,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa,'+
                  '        EstPfa.CodCf1 '+
                  ' From EstPfa '+
                  ' Where EstPfa.TipPfa = '+ QuotedStr(fmManEpe.CmpEntTipPfa.Value) +
                  '   and EstPfa.CodPfa = '+ QuotedStr(fmManEpe.CmpEntCodPfa.Value) +
                  '   and EstPfa.LocPfa = '+ QuotedStr(LocPfa);
          Open;

     end;

     if Trim( fmManEpe.quSql.FieldbyName('DscPfa').AsString ) <> '' then begin

        fmManEpe.CmpEntCodCfo.Value := fmManEpe.quSql.FieldbyName('CodCf1').AsString;

        pnNomPfa.Caption := fmManEpe.quSql.FieldbyName('DscPfa').AsString;

        end
     else
        begin

        pnNomPfa.Caption := '';

        fmsgErro('Padrão de Faturamento Informado não Encontrado.',EdCodPfa);

     end;

     end
  else
     begin

     pnNomPfa.Caption := '';

     fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodPfa);

  end;
end;

procedure TfmManSin.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #20 then begin

     if (GUsu_Id = 1) or (GUsu_Id = 999) then begin

        try

           fmManEn7 := TfmManEn7.Create(Self);

           fmManEn7.CmpEnt.Close;
           fmManEn7.CmpEnt.Params[0].AsInteger := fmManEpe.CmpEntId_CmpEnt.Value;
           fmManEn7.CmpEnt.Open;

           fmManEn7.ShowModal;

        finally

           FreeAndNil(fmManEn7);

        end;
     end;
  end;
end;

end.
