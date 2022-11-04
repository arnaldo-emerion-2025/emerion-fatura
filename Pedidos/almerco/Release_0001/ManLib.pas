unit ManLib;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, RDprint, dxDBColorDateEdit, dxDBColorCurrencyEdit,
  dxDBColorEdit;

type
  TfmManLib = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label29: TLabel;
    PedLib: TwwQuery;
    PedLb2: TwwQuery;
    UpLb2: TUpdateSQL;
    DsLb2: TDataSource;
    DsLib: TDataSource;
    quSql: TwwQuery;
    EdDteRes: TdxDBColorDateEdit;
    Label1: TLabel;
    EdCodEmp: TdxDBColorEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    EdCodCli: TdxDBColorEdit;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EdCodVen: TdxDBColorEdit;
    Label16: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    EdCodPfa: TdxDBColorEdit;
    grPe21: TdxDBGraphicEdit;
    grLb2: ThGrid;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label37: TLabel;
    Label53: TLabel;
    Label68: TLabel;
    pnTotLib: TPanel;
    EdTotLib: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    Label32: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    EdNomCli: TdxDBColorEdit;
    pnNomCli: TPanel;
    EdNomVen: TdxDBColorEdit;
    EdDscPfa: TdxDBColorEdit;
    pnNomVen: TPanel;
    pnNomPfa: TPanel;
    EdApeEmp: TdxDBColorEdit;
    pnApeEmp: TPanel;
    EdCgcCli: TdxDBColorEdit;
    pnCgcCli: TPanel;
    EdUfeRes: TdxDBColorEdit;
    pnUfeRes: TPanel;
    Label12: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    pnId_PedRes: TPanel;
    EdId_PedRes: TdxDBColorEdit;
    PedLb2CODITE: TStringField;
    Label3: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    PedLb2QTPLB2: TFloatField;
    PedLb2QTSLB2: TFloatField;
    PedLb2ULTQTS: TFloatField;
    PedLb2SLDLB2: TFloatField;
    Label20: TLabel;
    Label21: TLabel;
    EdQtiLib: TdxDBColorCurrencyEdit;
    pnQtiLib: TPanel;
    Label22: TLabel;
    UpLib: TUpdateSQL;
    Panel1: TPanel;
    EdCodIte: TdxDBColorEdit;
    EdDesRe2: TdxDBColorEdit;
    EdQtpLb2: TdxDBColorCurrencyEdit;
    EdQtsLb2: TdxDBColorCurrencyEdit;
    EdUltQts: TdxDBColorCurrencyEdit;
    EdSldLb2: TdxDBColorCurrencyEdit;
    Label17: TLabel;
    EdQtdIte: TdxDBColorCurrencyEdit;
    pnQtdIte: TPanel;
    PedLibID_PEDLIB: TIntegerField;
    PedLibDTELIB: TDateTimeField;
    PedLibNROLIB: TIntegerField;
    PedLibQTILIB: TIntegerField;
    PedLibFLGLIB: TStringField;
    PedLibTOTLIB: TFloatField;
    PedLibSITLIB: TStringField;
    PedLibID_PEDRES: TIntegerField;
    PedLibUFERES: TStringField;
    PedLibCODCLI: TIntegerField;
    PedLibCODVEN: TIntegerField;
    PedLibCODATD: TIntegerField;
    PedLibCODPFA: TStringField;
    PedLibTIPPFA: TStringField;
    PedLb2ID_PEDLB2: TIntegerField;
    PedLb2DESRE2: TStringField;
    PedLibDTERES: TDateTimeField;
    PedLibCODEMP: TIntegerField;
    PedLibTOTFRT: TFloatField;
    PedLibQTDVOL: TIntegerField;
    PedLibTOTCUB: TFloatField;
    PedLibTOTLIQ: TFloatField;
    PedLibTOTBRT: TFloatField;
    Label52: TLabel;
    pnTotLiq: TPanel;
    EdTotLiq: TdxDBColorCurrencyEdit;
    Label69: TLabel;
    pnTotBrt: TPanel;
    Label71: TLabel;
    EdTotCub: TdxDBColorCurrencyEdit;
    EdTotBrt: TdxDBColorCurrencyEdit;
    pnTotCub: TPanel;
    PedLibINFLIQ: TFloatField;
    PedLibINFBRT: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grLb2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure DsLb2DataChange(Sender: TObject; Field: TField);
  private
  public
    sEnc,Finalizar : string;
  end;

var
  fmManLib: TfmManLib;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManLpe, ManLb1;

{$R *.DFM}

procedure TfmManLib.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  Finalizar := 'N';

end;

procedure TfmManLib.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLib.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Id_PedLb2 : integer;
begin
  inherited;
  if key = 32 then begin {Barra de Espaço}

     if PedLb2Id_PedLb2.Value > 0 then begin
     
        Id_PedLb2 := PedLb2Id_PedLb2.Value;

        PedLb2.Edit;

        if PedLb2SldLb2.Value > 0 then begin

           if PedLb2UltQts.Value > 0 then
              PedLb2UltQts.Value := fRound(PedLb2UltQts.Value + PedLb2SldLb2.Value,4)
           else
              PedLb2UltQts.Value := PedLb2SldLb2.Value;

           end
        else
           PedLb2UltQts.Value := 0;

        with PedLb2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedLb2.State <> dsBrowse then PedLb2.CancelUpdates;

                grLb2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedLb2.Close;
        PedLb2.Open;

        PedLib.Close;
        PedLib.Open;

        PedLb2.Locate('Id_PedLb2',Id_PedLb2,[LoPartialKey]);

        if not PedLb2.EOF then PedLb2.Next;

     end;
  end;

  if key = 117 then begin {F6 - Separar Tudo/Nao Separar}

     Id_PedLb2 := PedLb2Id_PedLb2.Value;

     if EdUltQts.Enabled then begin

        PedLb2.CancelUpdates;

        EdUltQts.Enabled := False;

        EdUltQts.Font.Style := [fsBold];

     end;
     
     PedLib.Edit;

     if PedLibFlgLib.Value = 'Sim' then
        PedLibFlgLib.Value := 'Nao'
     else
        PedLibFlgLib.Value := 'Sim';

     with PedLib do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if PedLib.State <> dsBrowse then PedLib.CancelUpdates;

             grLb2.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     PedLib.Close;
     PedLib.Open;

     PedLb2.Close;
     PedLb2.Open;

     PedLb2.Locate('Id_PedLb2',Id_PedLb2,[LoPartialKey]);

     grLb2.SetFocus;

  end;

  if key = 27 then begin

     if PedLb2.State <> dsBrowse then PedLb2.CancelUpdates;

     if EdUltQts.Enabled then begin

        EdUltQts.Enabled := False;

        EdUltQts.Font.Style := [fsBold];

        grLb2.SetFocus;

        end
     else
        Close;
  end;

  if key = 123 then begin {F12-Finalizar Liberação}

     if PedLibQtiLib.Value > 0 then begin

        if grLb2.Focused then begin

           try

              fmManLb1 := TfmManLb1.Create(Self);
              fmManLb1.ShowModal;

           finally

              FreeAndNil(fmManLb1);

           end;

           if Finalizar = 'S' then close;
           
        end;
     end;
  end;
end;

procedure TfmManLib.grLb2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin {Tecla - ENTER}

     if PedLb2Id_PedLb2.Value > 0 then begin

        PedLb2.Edit;
        
        EdUltQts.Enabled := True;

        EdUltQts.Font.Style := [];

        EdUltQts.SetFocus;

     end;
  end;
end;

procedure TfmManLib.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja realmente abandonar a liberação do pedido ?','O') then begin

        if Trim(PedLibSitLib.Value) = 'Nao Concluido' then begin

           PedLib.Delete;

           with PedLib do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedLib.State <> dsBrowse then PedLib.CancelUpdates;

                   grLb2.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           fmManLpe.PedRes.Close;
           fmManLpe.PedRes.Open;

           fmManLpe.PedLib.Close;
           fmManLpe.PedLib.Open;

           fmManLpe.CountRegistros;
           
        end;

        Action := CaFree;

        end
     else
        Abort;

     end
  else
     begin

     fmManLpe.PedRes.Close;
     fmManLpe.PedRes.Open;

     fmManLpe.PedLib.Close;
     fmManLpe.PedLib.Open;

     fmManLpe.CountRegistros;
     
     Action := CaFree;

  end;
end;

procedure TfmManLib.FormShow(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select PedPar.UsaDec From PedPar';
       Open;

       if FieldbyName('UsaDec').AsString = 'Nao' then begin

          PedLb2QtpLb2.DisplayFormat := '###,###,##0';
          PedLb2QtsLb2.DisplayFormat := '###,###,##0';
          PedLb2UltQts.DisplayFormat := '###,###,##0';
          PedLb2SldLb2.DisplayFormat := '###,###,##0';

          EdQtpLb2.DisplayFormat := '###,###,##0';
          EdQtsLb2.DisplayFormat := '###,###,##0';
          EdUltQts.DisplayFormat := '###,###,##0';
          EdSldLb2.DisplayFormat := '###,###,##0';

          EdQtpLb2.DecimalPlaces := 0;
          EdQtsLb2.DecimalPlaces := 0;
          EdUltQts.DecimalPlaces := 0;
          EdSldLb2.DecimalPlaces := 0;

       end;
  end;
  
  PedLib.Close;
  PedLib.Params[0].AsInteger := fmManLpe.Id_PedLib;
  PedLib.Open;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(PedLibCodEmp.Value));
       Open;

       pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinCli.NomCli,'+
               '        FinCli.CgcCli '+
               ' From FinCli'+
               ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedLibCodCli.Value));
       Open;

       pnNomCli.Caption := FieldbyName('NomCli').AsString;
       pnCgcCli.Caption := fFormatCgcCpf(FieldbyName('CgcCli').AsString);

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedLibCodVen.Value));
       Open;

       pnNomVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstPfa.DscPfa'+
               ' From EstPfa'+
               ' Where EstPfa.TipPfa = '+ QuotedStr(PedLibTipPfa.Value)+
               '   and EstPfa.CodPfa = '+ QuotedStr(PedLibCodPfa.Value);
       Open;

       pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

  end;

  pnUfeRes.Caption := PedLibUfeRes.Value;

  pnId_PedRes.Caption := IntToStr(PedLibId_PedRes.Value);

  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as QtdReg'+
               ' From PedRe2'+
               ' Where PedRe2.Id_PedRes = '+ QuotedStr(IntToStr(PedLibId_PedRes.Value)) +' and PedRe2.SldRe2 > '+ QuotedStr('0');
       Open;

       if FieldbyName('QtdReg').AsInteger > 0 then
          pnQtdIte.Caption := IntToStr( FieldbyName('QtdReg').AsInteger )
       else
          pnQtdIte.Caption := '0';

  end;

  if Trim(PedLibSitLib.Value) <> 'Nao Concluido' then sEnc := 'S';

end;

procedure TfmManLib.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if Trim(PedLibSitLib.Value) = 'Concluido' then
        fMsg('Operação não Pode ser Realizada. Liberação Aguardando Faturamento.','E')
     else
        begin

        if Trim(PedLibSitLib.Value) = 'Faturando' then
           fMsg('Operação não Pode ser Realizada. Liberação em Processo de Faturamento.','E')
        else
           begin

           if Trim(PedLibSitLib.Value) = 'Faturado' then fMsg('Operação não Pode ser Realizada. Liberação Faturada.','E');

        end;
     end;

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManLib.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLib := nil;
end;

procedure TfmManLib.Panel1Exit(Sender: TObject);
var
  Id_PedLb2 : integer;
begin
  inherited;
  if PedLb2.State <> dsBrowse then begin

     if PedLb2UltQts.Value <= fRound(PedLb2SldLb2.Value + PedLb2QtsLb2.Value,4) then begin

        Id_PedLb2 := PedLb2Id_PedLb2.Value;

        with PedLb2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedLb2.State = dsBrowse then PedLb2.Edit;

                EdUltQts.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedLib.Close;
        PedLib.Open;

        PedLb2.Close;
        PedLb2.Open;

        PedLb2.Locate('Id_PedLb2',Id_PedLb2,[LoPartialKey]);

        if not PedLb2.EOF then PedLb2.Next;

        EdUltQts.Enabled := False;

        EdUltQts.Font.Style := [fsBold];

        grLb2.SetFocus;

        end
     else
        fmsgErro('Quantidade informada maior que o saldo a liberar.',EdUltQts);

     end
  else
     begin

     EdUltQts.Enabled := False;

     EdUltQts.Font.Style := [fsBold];

     grLb2.SetFocus;

  end;
end;

procedure TfmManLib.DsLb2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnTotLib.Caption := FormatFloat('###,###,##0.00',PedLibTotLib.Value);

  pnTotCub.Caption := FormatFloat('###,###,##0.0000',PedLibTotCub.Value);
  pnTotLiq.Caption := FormatFloat('###,###,##0.0000',PedLibInfLiq.Value);
  pnTotBrt.Caption := FormatFloat('###,###,##0.0000',PedLibInfBrt.Value);

  if PedLibQtiLib.Value > 0 then
     pnQtiLib.Caption := IntToStr(PedLibQtiLib.Value)
  else
     pnQtiLib.Caption := '0';

end;

end.
