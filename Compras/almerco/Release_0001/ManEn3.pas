unit ManEn3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,          
  FShowpadrao, ppBands, ppClass, ppStrtch, ppMemo, ppCtrls, ppVar,
  ppPrnabl, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe,
  dxEdLib, dxDBColorDateEdit, AlignEdit, dxDBColorCurrencyEdit,
  dxDBColorEdit;

type
  TfmManEn3 = class(TfmShowPadrao)
    CmpEn3: TwwQuery;
    DsEn3: TwwDataSource;
    PaintBox: TPaintBox;
    Bevel1: TBevel;
    Label10: TLabel;
    grEn3: ThGrid;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    UpPe3: TUpdateSQL;
    grPro: TdxDBGraphicEdit;
    Label8: TLabel;
    bRetornar: TSpeedButton;
    bContinuar: TSpeedButton;
    EdTotGer: TdxDBColorCurrencyEdit;
    pnTotGer: TAlignEdit;
    CmpEn3DTVEN3: TDateTimeField;
    CmpEn3PRAEN3: TIntegerField;
    CmpEn3VLPEN3: TFloatField;
    Label3: TLabel;
    EdLanEnt: TdxDBColorCurrencyEdit;
    pnLanEnt: TAlignEdit;
    Label4: TLabel;
    EdSldEnt: TdxDBColorCurrencyEdit;
    pnSldEnt: TAlignEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    EdPraEn3: TdxDBColorEdit;
    EdDtvEn3: TdxDBColorDateEdit;
    EdVlpEn3: TdxDBColorCurrencyEdit;
    CmpEn3FLGFRT: TStringField;
    CmpEn3CODFOR: TIntegerField;
    CmpEn3DTEDOC: TDateTimeField;
    CmpEn3NUMDOC: TIntegerField;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EdNumDoc: TdxDBColorEdit;
    EdCodFor: TdxDBColorEdit;
    EdFlgFrt: TdxDBCheckEdit;
    EdDteDoc: TdxDBColorDateEdit;
    quSql: TwwQuery;
    CmpEn3ID_CMPEN3: TIntegerField;
    CmpEn3ID_CMPENT: TIntegerField;
    CmpEn3CONPLC: TIntegerField;
    CmpEn3SUBPLC: TIntegerField;
    CmpEn3FLGINT: TStringField;
    CmpEn3FLGATU: TStringField;
    CmpEn3NROEN3: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure CmpEn3NewRecord(DataSet: TDataSet);
    procedure EdPraEn3Exit(Sender: TObject);
    procedure grEn3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPraEn3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DsEn3DataChange(Sender: TObject; Field: TField);
    procedure Panel1Exit(Sender: TObject);
    procedure EdDtvEn3Exit(Sender: TObject);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodForExit(Sender: TObject);
    procedure EdNumDocExit(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManEn3 : TfmManEn3;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManEnt, ManEn4,
     AuxIni, AuxPsq, ManE05;

{$R *.DFM}

procedure TfmManEn3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then begin

     if CmpEn3.State <> dsBrowse then CmpEn3.CancelUpdates;

     if EdPraEn3.Enabled then begin

        EdNumDoc.Enabled := False;
        EdPraEn3.Enabled := False;
        EdDtvEn3.Enabled := False;
        EdVlpEn3.Enabled := False;
        EdFlgFrt.Enabled := False;
        EdCodFor.Enabled := False;
        EdDteDoc.Enabled := False;

        EdNumDoc.Font.Style := [fsBold];
        EdPraEn3.Font.Style := [fsBold];
        EdDtvEn3.Font.Style := [fsBold];
        EdVlpEn3.Font.Style := [fsBold];
        EdFlgFrt.Font.Style := [fsBold];
        EdCodFor.Font.Style := [fsBold];
        EdDteDoc.Font.Style := [fsBold];
        
        grEn3.SetFocus;

        end
     else
        bRetornar.OnClick(Sender);
  end;

  if key = 123 then begin

     if grEn3.Focused then bContinuar.OnClick(Sender);

  end;
end;

procedure TfmManEn3.FormShow(Sender: TObject);
var
  TotGec : real;
begin
  inherited;
  
  TotGec := 0;
  
  if fmManEnt.CmpEntId_CmpOen.Value > 0 then begin

     with fmManEnt.quSQL,SQL do begin

          Close;
          Text := ' Select TotGec From CmpEnt Where CmpEnt.Id_CmpEnt = '+ QuotedStr(IntToStr(fmManEnt.CmpEntId_CmpOen.Value));
          Open;

          TotGec := FieldbyName('TotGec').AsFloat;

     end;
  end;

  TotGec := fRound(fmManEnt.CmpEntTotGec.Value - TotGec,2);
  
  pnTotGer.Text := FormatFloat('###,###,##0.00',TotGec);

  CmpEn3.Close;
  CmpEn3.Params[0].AsInteger := fmManEnt.CmpEntId_CmpEnt.Value;
  CmpEn3.Open;

  CmpEn3.Append;

  EdNumDoc.SetFocus;

end;

procedure TfmManEn3.bRetornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManEn3.bContinuarClick(Sender: TObject);
var
  sContinuar : string;
begin

  if CmpEn3.State <> dsBrowse then CmpEn3.CancelUpdates;

  sContinuar := 'N';

  if fmManEnt.CmpEntFlgOco.Value = 'Sim' then begin

     try

        fmManEn4 := TfmManEn4.Create(Self);
        fmManEn4.ShowModal;

        sContinuar := fmManEn4.sContinuar;

     finally   

        FreeAndNil(fmManEn4);

     end;

     end
  else
     sContinuar := 'S';

  if sContinuar = 'S' then begin
  
     if fMsg('Confirma Entrada ?','S') then begin

        fmManEnt.CmpEnt.Edit;

        fmManEnt.CmpEntSitEnt.Value := 'Concluida';

        with fmManEnt.CmpEnt do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if fmManEnt.CmpEnt.State <> dsBrowse then fmManEnt.CmpEnt.CancelUpdates;

                fmManEnt.Finalizar := 'N';

                grEn3.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManEnt.Finalizar := 'S';

        if fMsg('Confirma impressão da via de controle ?','S') then begin

           try

              fmManE05 := TfmManE05.Create(Self);

              fmManE05.CmpEnt.Close;
              fmManE05.CmpEnt.Params[0].AsInteger := fmManEnt.CmpEntId_CmpEnt.Value;
              fmManE05.CmpEnt.Open;

              fmManE05.RLReport1.PreviewModal;

           finally

              FreeAndNil(fmManE05);

           end;
        end;

        close;

     end;
  end;
end;

procedure TfmManEn3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn3.CmpEn3NewRecord(DataSet: TDataSet);
begin

  CmpEn3.DisableControls;

  CmpEn3Id_CmpEn3.Value := -1;
  CmpEn3Id_CmpEnt.Value := fmManEnt.CmpEntId_CmpEnt.Value;

  CmpEn3PraEn3.Value := 0;
  CmpEn3VlpEn3.Value := 0;
  CmpEn3FlgAtu.Value := ' ';
  CmpEn3FlgInt.Value := 'Nao';
  CmpEn3FlgFrt.Value := 'Nao';
  CmpEn3DtvEn3.Value := fmManEnt.CmpEntDteDoc.Value;
  CmpEn3NumDoc.Value := fmManEnt.CmpEntNumDoc.Value;
  CmpEn3DteDoc.Value := fmManEnt.CmpEntDteDoc.Value;
  CmpEn3CodFor.Value := fmManEnt.CmpEntCodFor.Value;
  CmpEn3ConPlc.Value := fmManEnt.CmpEntConPlc.Value;
  CmpEn3SubPlc.Value := fmManEnt.CmpEntSubPlc.Value;
  CmpEn3NroEn3.Value := fmManEnt.CmpEntQtpEnt.Value + 1;

  CmpEn3.EnableControls;

  EdVlpEn3.Value := 0;

  EdDteDoc.Date := fmManEnt.CmpEntDteDoc.Value;

  EdNumDoc.Text := IntToStr(fmManEnt.CmpEntNumDoc.Value);
  EdCodFor.Text := IntToStr(fmManEnt.CmpEntCodFor.Value);

  EdNumDoc.Enabled := True;
  EdPraEn3.Enabled := True;
  EdDtvEn3.Enabled := True;
  EdVlpEn3.Enabled := True;
  EdFlgFrt.Enabled := True;
  EdCodFor.Enabled := True;
  EdDteDoc.Enabled := True;

  EdNumDoc.Font.Style := [];
  EdPraEn3.Font.Style := [];
  EdDtvEn3.Font.Style := [];
  EdVlpEn3.Font.Style := [];
  EdFlgFrt.Font.Style := [];
  EdCodFor.Font.Style := [];
  EdDteDoc.Font.Style := [];

  EdNumDoc.SetFocus;

end;

procedure TfmManEn3.EdPraEn3Exit(Sender: TObject);
var
  saida : Boolean;
begin
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not grEn3.Focused then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEn3.State <> dsBrowse then begin

           CmpEn3DtvEn3.Value := fmManEnt.CmpEntDteDoc.Value + CmpEn3PraEn3.Value;

           EdDtvEn3.SetFocus;

        end;

     end;
  end;
end;

procedure TfmManEn3.grEn3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroEn3 : integer;
begin
  if key = 13 then begin {Tecla - ENTER}

     if CmpEn3Id_CmpEn3.Value > 0 then begin
     
        EdNumDoc.Enabled := True;
        EdPraEn3.Enabled := True;
        EdDtvEn3.Enabled := True;
        EdVlpEn3.Enabled := True;
        EdFlgFrt.Enabled := True;
        EdCodFor.Enabled := True;
        EdDteDoc.Enabled := True;

        EdNumDoc.Font.Style := [];
        EdPraEn3.Font.Style := [];
        EdDtvEn3.Font.Style := [];
        EdVlpEn3.Font.Style := [];
        EdFlgFrt.Font.Style := [];
        EdCodFor.Font.Style := [];
        EdDteDoc.Font.Style := [];

        CmpEn3.Edit;

        EdVlpEn3.Value := CmpEn3VlpEn3.Value;

        EdDteDoc.Date := CmpEn3DteDoc.Value;

        EdNumDoc.Text := IntToStr(CmpEn3NumDoc.Value);
        EdCodFor.Text := IntToStr(CmpEn3CodFor.Value);

        EdNumDoc.SetFocus;
        
     end;
  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if CmpEn3NroEn3.Value = fmManEnt.CmpEntQtpEnt.Value then CmpEn3.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if CmpEn3Id_CmpEn3.Value > 0 then begin

        NroEn3 := CmpEn3NroEn3.Value;

        CmpEn3.Delete;

        with CmpEn3 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpEn3.State <> dsBrowse then CmpEn3.CancelUpdates;

                grEn3.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        CmpEn3.Close;
        CmpEn3.Open;

        fmManEnt.CmpEnt.Close;
        fmManEnt.CmpEnt.Open;

        if NroEn3 < fmManEnt.CmpEntQtpEnt.Value then
           CmpEn3.Locate('Id_CmpEnt;NroEn3',VarArrayOf([CmpEn3Id_CmpEnt.Value,NroEn3]),[LoPartialKey])
        else
           begin

           if fmManEnt.CmpEntQtpEnt.Value = 0 then
              CmpEn3.Append
           else
              CmpEn3.Last;

        end;
     end;
  end;
end;

procedure TfmManEn3.EdPraEn3KeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManEn3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if CmpEn3.State <> dsBrowse then CmpEn3.CancelUpdates;
end;

procedure TfmManEn3.DsEn3DataChange(Sender: TObject; Field: TField);
begin

  pnLanEnt.Text := FormatFloat('###,###,##0.00',fmManEnt.CmpEntLanEnt.Value);
  pnSldEnt.Text := FormatFloat('###,###,##0.00',fmManEnt.CmpEntSldEnt.Value);

end;

procedure TfmManEn3.Panel1Exit(Sender: TObject);
var
  NroEn3 : integer;
begin
  if CmpEn3.State <> dsBrowse then begin

     if CmpEn3CodFor.Value = 0 then fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdCodFor);

     if CmpEn3NumDoc.Value = 0 then fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdNumDoc);

     if CmpEn3DtvEn3.Value = 0 then fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdDtvEn3);

     if CmpEn3VlpEn3.Value = 0 then fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdVlpEn3);

     if CmpEn3DteDoc.Value = 0 then fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdDteDoc);

     if CmpEn3.State = dsInsert then begin

        with CmpEn3 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpEn3.State <> dsBrowse then CmpEn3.Edit;

                EdNumDoc.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        CmpEn3.Close;
        CmpEn3.Open;

        fmManEnt.CmpEnt.Close;
        fmManEnt.CmpEnt.Open;

        CmpEn3.Append;

        EdNumDoc.SetFocus;

        end
     else
        begin

        NroEn3 := CmpEn3NroEn3.Value;

        with CmpEn3 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpEn3.State = dsBrowse then CmpEn3.Edit;

                EdNumDoc.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        CmpEn3.Close;
        CmpEn3.Open;

        fmManEnt.CmpEnt.Close;
        fmManEnt.CmpEnt.Open;

        CmpEn3.Locate('Id_CmpEnt;NroEn3',VarArrayOf([CmpEn3Id_CmpEnt.Value,NroEn3]),[LoPartialKey]);

        CmpEn3.Next;

        EdNumDoc.Enabled := False;
        EdPraEn3.Enabled := False;
        EdDtvEn3.Enabled := False;
        EdVlpEn3.Enabled := False;
        EdFlgFrt.Enabled := False;
        EdCodFor.Enabled := False;
        EdDteDoc.Enabled := False;

        EdNumDoc.Font.Style := [fsBold];
        EdPraEn3.Font.Style := [fsBold];
        EdDtvEn3.Font.Style := [fsBold];
        EdVlpEn3.Font.Style := [fsBold];
        EdFlgFrt.Font.Style := [fsBold];
        EdCodFor.Font.Style := [fsBold];
        EdDteDoc.Font.Style := [fsBold];

        grEn3.SetFocus;

     end;

     end
  else
     begin

     EdNumDoc.Enabled := False;
     EdPraEn3.Enabled := False;
     EdDtvEn3.Enabled := False;
     EdVlpEn3.Enabled := False;
     EdFlgFrt.Enabled := False;
     EdCodFor.Enabled := False;
     EdDteDoc.Enabled := False;

     EdNumDoc.Font.Style := [fsBold];
     EdPraEn3.Font.Style := [fsBold];
     EdDtvEn3.Font.Style := [fsBold];
     EdVlpEn3.Font.Style := [fsBold];     
     EdFlgFrt.Font.Style := [fsBold];
     EdCodFor.Font.Style := [fsBold];
     EdDteDoc.Font.Style := [fsBold];

     grEn3.SetFocus;

  end;
end;

procedure TfmManEn3.EdDtvEn3Exit(Sender: TObject);
var
  saida : boolean;
begin
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not EdPraEn3.Focused then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEn3.State <> dsBrowse then begin

           if CmpEn3DtvEn3.Value >= fmManEnt.CmpEntDteDoc.Value then
              CmpEn3PraEn3.Value := StrToInt(FloatToStr(CmpEn3DtvEn3.Value - fmManEnt.CmpEntDteDoc.Value))
           else
              fmsgErro('Data de Vencimento Inferior da Data do Documento de Entrada Informada.',EdDtvEn3);

        end;
     end;
  end;         
end;

procedure TfmManEn3.EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           CmpEn3CodFor.Value := fmAuxIni.CodFor;
           CmpEn3ConPlc.Value := fmAuxIni.ConPlc;
           CmpEn3SubPlc.Value := fmAuxIni.SubPlc;

           EdCodFor.Text := IntToStr(CmpEn3CodFor.Value);

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if CmpEn3CodFor.Value > 0 then EdDteDoc.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           CmpEn3CodFor.Value := fmAuxPsq.CodFor;
           CmpEn3ConPlc.Value := fmAuxPsq.ConPlc;
           CmpEn3SubPlc.Value := fmAuxPsq.SubPlc;

           EdCodFor.Text := IntToStr(CmpEn3CodFor.Value);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if CmpEn3CodFor.Value > 0 then EdDteDoc.SetFocus;

  end;
end;

procedure TfmManEn3.EdCodForExit(Sender: TObject);
begin
  inherited;
  if CmpEn3.State <> dsBrowse then begin

     if CmpEn3CodFor.Value > 0 then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select FinFor.NomFor,'+
                     '        FinFor.ConPlc,'+
                     '        FinFor.SubPlc '+
                     ' From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpEn3CodFor.Value));
             Open;

        end;

        if Trim(quSql.FieldbyName('NomFor').AsString) <> '' then begin

           CmpEn3ConPlc.Value := quSQL.FieldbyName('ConPlc').AsInteger;
           CmpEn3SubPlc.Value := quSQL.FieldbyName('SubPlc').AsInteger;

           with quSQL,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg'+
                        ' From FinSub'+
                        ' Where FinSub.ConPlc = :ConPlc'+
                        '   and FinSub.SubPlc = :SubPlc';

                with Params do begin

                     Params[0].AsInteger := CmpEn3ConPlc.Value;
                     Params[1].AsInteger := CmpEn3SubPlc.Value;

                end;

                Open;

                if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Conta e Sub-Conta do Plano de Contas Informada para o Fornecedor não Encontrada',EdCodFor);

           end;

           end
        else
           fmsgErro('Fornecedor Informado não Encontrado.',EdCodFor);

        end
     else
        fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdCodFor);
  end;
end;

procedure TfmManEn3.EdNumDocExit(Sender: TObject);
begin
  if (Tecla = 'UP') then begin

     if fmManEnt.CmpEntQtpEnt.Value > 0 then begin

        EdNumDoc.Enabled := False;
        EdPraEn3.Enabled := False;
        EdDtvEn3.Enabled := False;
        EdVlpEn3.Enabled := False;
        EdFlgFrt.Enabled := False;
        EdCodFor.Enabled := False;
        EdDteDoc.Enabled := False;

        EdNumDoc.Font.Style := [fsBold];
        EdPraEn3.Font.Style := [fsBold];
        EdDtvEn3.Font.Style := [fsBold];
        EdVlpEn3.Font.Style := [fsBold];
        EdFlgFrt.Font.Style := [fsBold];
        EdCodFor.Font.Style := [fsBold];
        EdDteDoc.Font.Style := [fsBold];

        if CmpEn3.State <> dsBrowse then
           CmpEn3.CancelUpdates
        else
           begin

           if not CmpEn3.Bof then CmpEn3.Prior;

        end;

        grEn3.SetFocus;

        end
     else
        EdNumDoc.SetFocus;
  end;
end;

end.
