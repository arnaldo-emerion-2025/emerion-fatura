unit ManEn3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, dxCntner, dxEditor, dxExEdtr, dxDBEdtr, dxDBELib,
  dxEdLib, AlignEdit, ppMemo, ppBands, ppClass, ppStrtch, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe,
  FShowPadrao, dxDBColorDateEdit, dxDBColorCurrencyEdit, dxDBColorEdit;

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
    CmpEn3CODEMP: TIntegerField;
    CmpEn3NUMENT: TIntegerField;
    CmpEn3SEQEN3: TIntegerField;
    CmpEn3DTVEN3: TDateTimeField;
    CmpEn3PRAEN3: TIntegerField;
    CmpEn3VLPEN3: TFloatField;
    CmpEn3DTEENT: TDateTimeField;
    CmpEn3NROEN3: TIntegerField;
    CmpEn3FLGINT: TStringField;
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
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppApeEmp: TppLabel;
    ppNomEmp: TppLabel;
    ppEndEmp: TppLabel;
    ppRefEmp: TppLabel;
    ppTitulo: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppImagem: TppImage;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel63: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine2: TppLine;
    ppLabel36: TppLabel;
    ppLine8: TppLine;
    ppLabel38: TppLabel;
    ppLine9: TppLine;
    ppLabel39: TppLabel;
    ppLabel15: TppLabel;
    ppLine6: TppLine;
    ppLabel6: TppLabel;
    ppLabel2: TppLabel;
    ppLabel8: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel25: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    p1FonFor: TppLabel;
    p1BaiFor: TppLabel;
    p1EndFor: TppLabel;
    p1CodFor: TppLabel;
    ppLabel9: TppLabel;
    p1NomFor: TppLabel;
    ppLabel26: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel27: TppLabel;
    p1CidFor: TppLabel;
    p1FaxFor: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    p1SigUfe: TppLabel;
    ppLabel5: TppLabel;
    ppLabel11: TppLabel;
    p1CodPfa: TppLabel;
    ppLabel40: TppLabel;
    p1NomPfa: TppLabel;
    dbReport: TppDetailBand;
    ppQtpEn2: TppDBText;
    ppCodUnd: TppDBText;
    ppVlqEn2: TppDBText;
    ppMemo1: TppMemo;
    ppIcmPe2: TppDBText;
    ppIpiPe2: TppDBText;
    ppPacPe2: TppDBText;
    ppTotGe2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel3: TppLabel;
    ppTexto2: TppMemo;
    ppTexto3: TppMemo;
    ppTexto1: TppMemo;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppTotEnc: TppLabel;
    ppTotIcc: TppLabel;
    ppTotIpc: TppLabel;
    ppTotAcc: TppLabel;
    ppTotSeg: TppLabel;
    ppTotFrt: TppLabel;
    ppTotDes: TppLabel;
    ppTotDcc: TppLabel;
    ppTotGec: TppLabel;
    ppLabel37: TppLabel;
    ppLabel50: TppLabel;
    ppLabel53: TppLabel;
    ppLabel56: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel57: TppLabel;
    ppLabel54: TppLabel;
    ppLabel51: TppLabel;
    ppLabel48: TppLabel;
    ppVdoFsc: TppLabel;
    ppVcoFor: TppLabel;
    ppVcoEmp: TppLabel;
    ppTotfor: TppLabel;
    ppDesFor: TppLabel;
    CmpEn3FLGFRT: TStringField;
    CmpEn3CODFOR: TIntegerField;
    CmpEn3FLGATU: TStringField;
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
    CmpEn3CONPLC: TIntegerField;
    CmpEn3SUBPLC: TIntegerField;
    quSql: TwwQuery;
    ppLabel49: TppLabel;
    ppLabel52: TppLabel;
    ppTotPis: TppLabel;
    ppLabel58: TppLabel;
    ppLabel61: TppLabel;
    ppTotCof: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CmpEn3NewRecord(DataSet: TDataSet);
    procedure EdPraEn3Exit(Sender: TObject);
    procedure grEn3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPraEn3KeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DsEn3DataChange(Sender: TObject; Field: TField);
    procedure Panel1Exit(Sender: TObject);
    procedure EdDtvEn3Exit(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReportBeforePrint(Sender: TObject);
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
  sEnt     : string;
  fmManEn3 : TfmManEn3;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManEnt, ManEn4,
     Fpreview, AuxIni, AuxPsq;

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
  
  if fmManEnt.CmpEntNumOen.Value > 0 then begin

     with fmManEnt.quSQL,SQL do begin

          Close;
          Text := ' Select TotGec From CmpEnt'+
                  ' Where CmpEnt.CodEmp = :CodEmp'+
                  '   and CmpEnt.DteEnt = :DteEnt'+
                  '   and CmpEnt.NumEnt = :NumEnt';

          with Params do begin

               Params[0].AsInteger  := fmManEnt.CmpEntEmpOen.Value;
               Params[1].AsDateTime := fmManEnt.CmpEntDteOen.Value;
               Params[2].AsInteger  := fmManEnt.CmpEntNumOen.Value;

          end;

          Open;

          TotGec := FieldbyName('TotGec').AsFloat;

     end;
  end;

  TotGec := fRound(fmManEnt.CmpEntTotGec.Value - TotGec,2);
  
  pnTotGer.Text := FormatFloat('###,###,##0.00',TotGec);

  CmpEn3.Close;
  CmpEn3.Params[0].AsInteger  := fmManEnt.CmpEntCodEmp.Value;
  CmpEn3.Params[1].AsDateTime := fmManEnt.CmpEntDteEnt.Value;
  CmpEn3.Params[2].AsInteger  := fmManEnt.CmpEntNumEnt.Value;
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

  if fmManEnt.CmpEntFlgOco.Value = '*' then begin

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

        if fMsg('Confirma Impressão do Romaneio de Entrada ?','S') then begin

           try

              ppReport.DeviceType := 'Screen';
              fmPreview := TfmPreview.Create(fmManEn3);
              fmPreview.ppViewer.Report := ppReport;
              ppReport.PrintToDevices;
              fmPreview.ShowModal;

              if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

           finally

              FreeAndNil(fmPreview);

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

procedure TfmManEn3.FormDestroy(Sender: TObject);
begin
  inherited;
  Screen.OnActiveControlChange := nil;
end;

procedure TfmManEn3.CmpEn3NewRecord(DataSet: TDataSet);
begin

  CmpEn3.DisableControls;

  CmpEn3PraEn3.Value := 0;
  CmpEn3VlpEn3.Value := 0;
  CmpEn3FlgInt.Value := ' ';
  CmpEn3FlgAtu.Value := ' ';
  CmpEn3FlgFrt.Value := 'Nao';    
  CmpEn3DtvEn3.Value := fmManEnt.CmpEntDteDoc.Value;
  CmpEn3CodEmp.Value := fmManEnt.CmpEntCodEmp.Value;
  CmpEn3DteEnt.Value := fmManEnt.CmpEntDteEnt.Value;
  CmpEn3NumEnt.Value := fmManEnt.CmpEntNumEnt.Value;
  CmpEn3NumDoc.Value := fmManEnt.CmpEntNumDoc.Value;
  CmpEn3DteDoc.Value := fmManEnt.CmpEntDteDoc.Value;
  CmpEn3CodFor.Value := fmManEnt.CmpEntCodFor.Value;      
  CmpEn3SeqEn3.Value := fmManEnt.CmpEntQtlEnt.Value + 1;
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
Saida : Boolean;
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

  if key = 40 then begin {Tecla - Seta para Baixo}

     if CmpEn3NroEn3.Value = fmManEnt.CmpEntQtpEnt.Value then CmpEn3.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if CmpEn3CodEmp.Value > 0 then begin

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
           CmpEn3.Locate('CodEmp;DteEnt;NumEnt;NroEn3',VarArrayOf([CmpEn3CodEmp.Value,CmpEn3DteEnt.Value,CmpEn3NumEnt.Value,NroEn3]),[LoPartialKey])
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

        CmpEn3.Locate('CodEmp;DteEnt;NumEnt;NroEn3',VarArrayOf([CmpEn3CodEmp.Value,CmpEn3DteEnt.Value,CmpEn3NumEnt.Value,NroEn3]),[LoPartialKey]);

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

procedure TfmManEn3.ppHeaderBand3BeforePrint(Sender: TObject);
begin

  if FileExists('C:\Emerion\Print.bmp') then
     ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     ppImagem.Picture.Bitmap.FreeImage;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;

  ppTitulo.Caption := 'Entrada de Compras No. '+ fNumZeros(IntToStr(fmManEnt.CmpEn2NumEnt.Value),7)+ ' - ' + FormatDateTime('dd/mm/yyyy',fmManEnt.CmpEn2DteEnt.Value);

  p1CodFor.Caption := IntToStr( fmManEnt.CmpEntCodFor.Value );
  p1NomFor.Caption := fmManEnt.CmpEntNomFor.Value;
  p1BaiFor.Caption := fmManEnt.CmpEntBaiFor.Value;
  p1CidFor.Caption := fmManEnt.CmpEntCidFor.Value;
  p1SigUfe.Caption := fmManEnt.CmpEntSigUfe.Value;
  p1CodPfa.Caption := fmManEnt.CmpEntCodPfa.Value;
  p1NomPfa.Caption := fmManEnt.CmpEntDscPfa.Value;

  if Trim( fmManEnt.CmpEntTenFor.Value ) <> '' then
     p1EndFor.Caption := Trim( fmManEnt.CmpEntTenFor.Value ) + ' ' + Trim( fmManEnt.CmpEntEndFor.Value )
  else
     p1EndFor.Caption := Trim( fmManEnt.CmpEntEndFor.Value );

  if Trim( fmManEnt.CmpEntNumFor.Value ) <> '' then
     p1EndFor.Caption := p1EndFor.Caption + ', '  + Trim( fmManEnt.CmpEntNumFor.Value ) + ' - ' + Trim ( fmManEnt.CmpEntBaiFor.Value )
  else
     p1EndFor.Caption := p1EndFor.Caption + ' - ' + Trim( fmManEnt.CmpEntBaiFor.Value );

  if Trim( fmManEnt.CmpEntPrtFor.Value ) <> '' then
     p1FonFor.Caption := '( ' + fmManEnt.CmpEntPrtFor.Value  + ' ) ' + fmManEnt.CmpEntFonFor.Value
  else
     p1FonFor.Caption := fmManEnt.CmpEntFonFor.Value;

  if Trim( fmManEnt.CmpEntPrfFor.Value ) <> '' then
     p1FaxFor.Caption := '( '+ fmManEnt.CmpEntPrfFor.Value  +' ) ' + fmManEnt.CmpEntFaxFor.Value
  else
     p1FaxFor.Caption := fmManEnt.CmpEntFaxFor.Value;

end;

procedure TfmManEn3.dbReportBeforePrint(Sender: TObject);
begin

  ppMemo1.Lines.Clear;
  ppMemo1.Lines.Add(fmManEnt.CmpEn2DesEn2.Value);

  ppMemo1.Lines.Add(fmManEnt.CmpEn2CodClp.Value+ '-' +fmManEnt.CmpEn2CodGru.Value+ '.' +fmManEnt.CmpEn2CodSub.Value+ '.' +fmManEnt.CmpEn2CodPro.Value);

  if Trim( fmManEnt.CmpEn2ObsEn2.Value ) <> '' then ppMemo1.Lines.Add(fmManEnt.CmpEn2ObsEn2.Value);
  if Trim( fmManEnt.CmpEn2ClsIpi.Value ) <> '' then ppMemo1.Lines.Add(fmManEnt.CmpEn2ClsIpi.Value);

end;

procedure TfmManEn3.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin

  ppTotEnc.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotEnc.Value);
  ppTotIcc.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotIcc.Value);
  ppTotIpc.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotIpc.Value);
  ppTotAcc.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotAcc.Value);
  ppTotSeg.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotSeg.Value);
  ppTotFrt.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotFrt.Value);
  ppTotDes.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotDes.Value);
  ppTotDcc.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotDcc.Value);
  ppTotPis.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotPic.Value);
  ppTotCof.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotCoc.Value);
  ppTotGec.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotGec.Value);

  if fmManEnt.CmpEntModPfa.Value = 'Importacao' then begin

     ppVdoFsc.Visible := True;
     ppVcoFor.Visible := True;
     ppVcoEmp.Visible := True;
     ppTotFor.Visible := True;
     ppDesFor.Visible := True;

     ppLabel37.Visible := True;
     ppLabel48.Visible := True;
     ppLabel50.Visible := True;
     ppLabel51.Visible := True;
     ppLabel53.Visible := True;
     ppLabel54.Visible := True;
     ppLabel56.Visible := True;
     ppLabel57.Visible := True;
     ppLabel59.Visible := True;
     ppLabel60.Visible := True;

     ppVdoFsc.Caption := FormatFloat('###,###,##0.0000',fmManEnt.CmpEntVdoFsc.Value);
     ppVcoFor.Caption := FormatFloat('###,###,##0.0000',fmManEnt.CmpEntVcoFor.Value);
     ppVcoEmp.Caption := FormatFloat('###,###,##0.0000',fmManEnt.CmpEntVcoEmp.Value);

     ppTotFor.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotFor.Value);
     ppTotDes.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotDes.Value);

     end
  else
     begin

     ppLabel37.Visible := False;
     ppLabel48.Visible := False;
     ppLabel50.Visible := False;
     ppLabel51.Visible := False;
     ppLabel53.Visible := False;
     ppLabel54.Visible := False;
     ppLabel56.Visible := False;
     ppLabel57.Visible := False;
     ppLabel59.Visible := False;
     ppLabel60.Visible := False;

     ppVdoFsc.Visible := False;
     ppVcoFor.Visible := False;
     ppVcoEmp.Visible := False;
     ppTotFor.Visible := False;
     ppDesFor.Visible := False;

  end;
end;

procedure TfmManEn3.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  if Trim( sEnt ) = '' then begin

     sEnt := 'S';

     ppTexto1.Lines.Clear;
     ppTexto2.Lines.Clear;
     ppTexto3.Lines.Clear;

     with fmManEnt.quSQL,SQL do begin

          Close;
          Text := ' Select * From CmpEn3'+
                  ' Where CmpEn3.CodEmp = :CodEmp'+
                  '   and CmpEn3.DteEnt = :DteEnt'+
                  '   and CmpEn3.NumEnt = :NumEnt';

          with Params do begin

               Params[0].AsInteger  := fmManEnt.CmpEntCodEmp.Value;
               Params[1].AsDateTime := fmManEnt.CmpEntDteEnt.Value;
               Params[2].AsInteger  := fmManEnt.CmpEntNumEnt.Value;

          end;

          Open;
          First;

     end;

     while not fmManEnt.quSQL.EOF do begin

           ppTexto1.Lines.Add(FloatToStr(fmManEnt.quSQL.FieldbyName('NumDoc').AsFloat));
           ppTexto2.Lines.Add(FormatDateTime('dd/mm/yyy',fmManEnt.quSQL.FieldbyName('DtvEn3').AsDateTime));
           ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',fmManEnt.quSQL.FieldbyName('VlpEn3').AsFloat));

           fmManEnt.quSQL.Next;

     end;
  end;
end;

procedure TfmManEn3.ppReportBeforePrint(Sender: TObject);
begin
  sEnt := '';
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
             Text := ' Select * From FinFor Where FinFor.CodFor = '''+ IntToStr(CmpEn3CodFor.Value) +'''';
             Open;

        end;

        if quSql.FieldbyName('CodFor').AsInteger = CmpEn3CodFor.Value then begin

           CmpEn3ConPlc.Value := quSQL.FieldbyName('ConPlc').AsInteger;
           CmpEn3SubPlc.Value := quSQL.FieldbyName('SubPlc').AsInteger;

           with quSQL,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg From FinSub'+
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
           fmsgErro('Fornecedor Informado não Encontrado',EdCodFor);

        end
     else
        fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodFor);
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
