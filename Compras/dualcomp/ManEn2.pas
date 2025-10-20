unit ManEn2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, wwdbdatetimepicker, ComCtrls, wwriched, Buttons,
  dxfOutlookBar, dxfColorButton, dxBar, dxfPictureButton, dxCntner, dxEditor,
  dxExEdtr, dxEdLib, dxDBELib, dxDBEdtr, FShowPadrao, ppBands, ppClass,
  ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport,
  ppDB, ppComm, ppRelatv, ppDBPipe, dxDBColorEdit, dxDBColorCurrencyEdit;

type
  TfmManEn2 = class(TfmShowPadrao)
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
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    EdTotGec: TdxDBColorCurrencyEdit;
    EdTotIpc: TdxDBColorCurrencyEdit;
    EdTotDes: TdxDBColorCurrencyEdit;
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
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    EdFlgOco: TdxDBColorEdit;
    pnFlgOco01: TPanel;
    dxDBEdit1: TdxDBColorEdit;
    pnFlgOco02: TPanel;
    dxDBEdit2: TdxDBColorEdit;
    pnFlgOco03: TPanel;
    dxDBEdit3: TdxDBColorEdit;
    pnFlgOco04: TPanel;
    dxDBEdit4: TdxDBColorEdit;
    pnFlgOco05: TPanel;
    dxDBEdit5: TdxDBColorEdit;
    dxDBEdit6: TdxDBColorEdit;
    dxDBEdit7: TdxDBColorEdit;
    dxDBEdit8: TdxDBColorEdit;
    dxDBEdit9: TdxDBColorEdit;
    pnFlgOco06: TPanel;
    pnFlgOco07: TPanel;
    pnFlgOco08: TPanel;
    pnFlgOco10: TPanel;
    pnFlgoco11: TPanel;
    DsReport: TppDBPipeline;
    DsReportppField1: TppField;
    DsReportppField2: TppField;
    DsReportppField3: TppField;
    DsReportppField4: TppField;
    DsReportppField5: TppField;
    DsReportppField6: TppField;
    DsReportppField7: TppField;
    DsReportppField8: TppField;
    DsReportppField9: TppField;
    DsReportppField10: TppField;
    DsReportppField11: TppField;
    DsReportppField12: TppField;
    DsReportppField13: TppField;
    DsReportppField14: TppField;
    DsReportppField15: TppField;
    DsReportppField16: TppField;
    DsReportppField17: TppField;
    DsReportppField18: TppField;
    DsReportppField19: TppField;
    DsReportppField20: TppField;
    DsReportppField21: TppField;
    DsReportppField22: TppField;
    DsReportppField23: TppField;
    DsReportppField24: TppField;
    DsReportppField25: TppField;
    DsReportppField26: TppField;
    DsReportppField27: TppField;
    DsReportppField28: TppField;
    DsReportppField29: TppField;
    DsReportppField30: TppField;
    DsReportppField31: TppField;
    DsReportppField32: TppField;
    DsReportppField33: TppField;
    DsReportppField34: TppField;
    DsReportppField35: TppField;
    DsReportppField36: TppField;
    DsReportppField37: TppField;
    DsReportppField38: TppField;
    DsReportppField39: TppField;
    DsReportppField40: TppField;
    DsReportppField41: TppField;
    DsReportppField42: TppField;
    DsReportppField43: TppField;
    DsReportppField44: TppField;
    DsReportppField45: TppField;
    DsReportppField46: TppField;
    DsReportppField47: TppField;
    DsReportppField48: TppField;
    DsReportppField49: TppField;
    DsReportppField50: TppField;
    DsReportppField51: TppField;
    DsReportppField52: TppField;
    DsReportppField53: TppField;
    DsReportppField54: TppField;
    DsReportppField55: TppField;
    DsReportppField56: TppField;
    DsReportppField57: TppField;
    DsReportppField58: TppField;
    DsReportppField59: TppField;
    DsReportppField60: TppField;
    DsReportppField61: TppField;
    DsReportppField62: TppField;
    DsReportppField63: TppField;
    DsReportppField64: TppField;
    DsReportppField65: TppField;
    DsReportppField66: TppField;
    DsReportppField67: TppField;
    DsReportppField68: TppField;
    DsReportppField69: TppField;
    DsReportppField70: TppField;
    DsReportppField71: TppField;
    DsReportppField72: TppField;
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
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bretornarClick(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure EdBasIccExit(Sender: TObject);
    procedure EdTotIccExit(Sender: TObject);
    procedure EdBasSucExit(Sender: TObject);
    procedure EdTotEncExit(Sender: TObject);
    procedure EdTotIpcExit(Sender: TObject);
    procedure EdTotGecExit(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReportBeforePrint(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdTotSucExit(Sender: TObject);
  private
    {Private declarations}
    sEnt : string;
  public
    {Public declarations}
  end;

var
  TotDif   : real;
  DifEnt   : real;  
  fmManEn2 : TfmManEn2;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManEnt, ManEn3, ManGDB,
  ManEn4, Fpreview, ManEn7, ManPrc;

{$R *.DFM}

procedure TfmManEn2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManEn2.FormShow(Sender: TObject);
begin
  inherited;
  
  with fmManEnt.quSQL,SQL do begin

       Close;
       Text := ' Select * From CmpPar';
       Open;

       DifEnt := FieldbyName('DifEnt').AsFloat;

  end;

  fmManEnt.CmpEnt.Edit;

  if fmManEnt.CmpEntBasIcc.Value <> fmManEnt.CmpEntBasIcm.Value then begin

     if fmManEnt.CmpEntBasIcc.Value > fmManEnt.CmpEntBasIcm.Value then
        TotDif := fRound(fmManEnt.CmpEntBasIcc.Value - fmManEnt.CmpEntBasIcm.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntBasIcm.Value - fmManEnt.CmpEntBasIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco01.Color := clRed
     else
        pnFlgOco01.Color := clLime;

  end;

  if fmManEnt.CmpEntTotIcc.Value <> fmManEnt.CmpEntTotIcm.Value then begin

     if fmManEnt.CmpEntTotIcc.Value > fmManEnt.CmpEntTotIcm.Value then
        TotDif := fRound(fmManEnt.CmpEntTotIcc.Value - fmManEnt.CmpEntTotIcm.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotIcm.Value - fmManEnt.CmpEntTotIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco02.Color := clRed
     else
        pnFlgOco02.Color := clLime;

  end;

  if fmManEnt.CmpEntBasSuc.Value <> fmManEnt.CmpEntBasSub.Value then begin

     if fmManEnt.CmpEntBasSuc.Value > fmManEnt.CmpEntBasSub.Value then
        TotDif := fRound(fmManEnt.CmpEntBasSuc.Value - fmManEnt.CmpEntBasSub.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntBasSub.Value - fmManEnt.CmpEntBasSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco03.Color := clRed
     else
        pnFlgOco03.Color := clLime;

  end;

  if fmManEnt.CmpEntTotSuc.Value <> fmManEnt.CmpEntTotSub.Value then begin

     if fmManEnt.CmpEntTotSuc.Value > fmManEnt.CmpEntTotSub.Value then
        TotDif := fRound(fmManEnt.CmpEntTotSuc.Value - fmManEnt.CmpEntTotSub.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotSub.Value - fmManEnt.CmpEntTotSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco04.Color := clRed
     else
        pnFlgOco04.Color := clLime;

  end;

  if fmManEnt.CmpEntTotEnc.Value <> fmManEnt.CmpEntTotEnt.Value then begin

     if fmManEnt.CmpEntTotEnc.Value > fmManEnt.CmpEntTotEnt.Value then
        TotDif := fRound(fmManEnt.CmpEntTotEnc.Value - fmManEnt.CmpEntTotEnt.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotEnt.Value - fmManEnt.CmpEntTotEnc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco05.Color := clRed
     else
        pnFlgOco05.Color := clLime;

  end;

  if fmManEnt.CmpEntModPfa.Value = 'Importacao' then begin

     fmManEnt.CmpEntTotIpc.Value := fmManEnt.CmpEntTotIpi.Value;

     EdTotIpc.Value := fmManEnt.CmpEntTotIpi.Value;

     EdTotIpc.Enabled := False;
     
     EdTotIpc.Font.Style := [fsBold];
     
     pnFlgOco10.Color := clLime;         

     end
  else
     begin

     if fmManEnt.CmpEntTotIpc.Value <> fmManEnt.CmpEntTotIpi.Value then begin

        if fmManEnt.CmpEntTotIpc.Value > fmManEnt.CmpEntTotIpi.Value then
           TotDif := fRound(fmManEnt.CmpEntTotIpc.Value - fmManEnt.CmpEntTotIpi.Value,2)
        else
           TotDif := fRound(fmManEnt.CmpEntTotIpi.Value - fmManEnt.CmpEntTotIpc.Value,2);

        if TotDif > DifEnt then
           pnFlgOco10.Color := clRed
        else
           pnFlgOco10.Color := clLime;

     end;
  end;   

  if fmManEnt.CmpEntTotGec.Value <> fmManEnt.CmpEntTotGer.Value then begin

     if fmManEnt.CmpEntTotGec.Value > fmManEnt.CmpEntTotGer.Value then
        TotDif := fRound(fmManEnt.CmpEntTotGec.Value - fmManEnt.CmpEntTotGer.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotGer.Value - fmManEnt.CmpEntTotGec.Value,2);

     if TotDif > DifEnt then
        pnFlgOco11.Color := clRed
     else
        pnFlgOco11.Color := clLime;

  end;

  EdBasIcc.SetFocus;

end;

procedure TfmManEn2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManEnt.CmpEnt.State <> dsBrowse then fmManEnt.CmpEnt.CancelUpdates;
end;

procedure TfmManEn2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn2.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManEn2.bcontinuarClick(Sender: TObject);
var
sContinuar : string;
begin

  if fmManEnt.CmpEntBasIcm.Value > 0 then begin

     if fmManEnt.CmpEntBasIcc.Value = 0 then fmsgErro('Valor da Base de Calculo de ICMS para Entrada não Informado.',EdBasIcc);

  end;

  if fmManEnt.CmpEntTotIcm.Value > 0 then begin

     if fmManEnt.CmpEntTotIcc.Value = 0 then fmsgErro('Valor de ICMS para Entrada não Informado.',EdTotIcc);

  end;

  if fmManEnt.CmpEntBasSub.Value > 0 then begin

     if fmManEnt.CmpEntBasSuc.Value = 0 then fmsgErro('Valor da Base de Calculo de ICMS de Substituição Tributaria para a Entrada não Informado.',EdBasSuc);

  end;

  if fmManEnt.CmpEntTotSub.Value > 0 then begin

     if fmManEnt.CmpEntTotSuc.Value = 0 then fmsgErro('Valor do ICMS de Substituição Tributaria para a Entrada não Informado.',EdTotSuc);

  end;

  if fmManEnt.CmpEntTotEnt.Value > 0 then begin

     if fmManEnt.CmpEntTotEnc.Value = 0 then fmsgErro('Valor Total dos Produtos para a Entrada não Informado.',EdTotEnc);

  end;

  if fmManEnt.CmpEntTotIpi.Value > 0 then begin

     if fmManEnt.CmpEntTotIpc.Value = 0 then fmsgErro('Valor Total dos IPI para a Entrada não Informado.',EdTotIpc);

  end;

  if fmManEnt.CmpEntTotGer.Value > 0 then begin

     if fmManEnt.CmpEntTotGec.Value = 0 then fmsgErro('Valor Total da Nota para a Entrada não Informado.',EdTotGec);

  end;

  if (pnFlgOco01.Color = clLime) and
     (pnFlgOco02.Color = clLime) and
     (pnFlgOco03.Color = clLime) and
     (pnFlgOco04.Color = clLime) and
     (pnFlgOco05.Color = clLime) and
     (pnFlgOco10.Color = clLime) and
     (pnFlgOco11.Color = clLime) then begin

     with fmManEnt.CmpEnt do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if fmManEnt.CmpEnt.State = dsBrowse then fmManEnt.CmpEnt.Edit;

             EdBasIcc.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     fmManEnt.CmpEnt.Close;
     fmManEnt.CmpEnt.Open;

     fmManEnt.CmpEn2.Close;
     fmManEnt.CmpEn2.Open;

     fmManEnt.pnTotEnt.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotEnt.Value);

     if fmManEnt.CmpEntAtuEst.Value = 'Sim' then begin

        fmManEnt.CmpEnt.Edit;

        fmManEnt.CmpEntLanCst.Value := 'Sim';

        with fmManEnt.CmpEnt do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if fmManEnt.CmpEnt.State = dsBrowse then fmManEnt.CmpEnt.Edit;

                EdBasIcc.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        try

           fmManPrc := TfmManPrc.Create(Self);

           fmManPrc.CmpAen.Close;
           fmManPrc.CmpAen.Params[0].AsInteger  := fmManEnt.CmpEntCodEmp.Value;
           fmManPrc.CmpAen.Params[1].AsDateTime := fmManEnt.CmpEntDteEnt.Value;
           fmManPrc.CmpAen.Params[2].AsInteger  := fmManEnt.CmpEntNumEnt.Value;
           fmManPrc.CmpAen.Open;

           fmManPrc.ShowModal;

           fmManEnt.Finalizar := fmManPrc.Finalizar;

        finally

           FreeAndNil(fmManPrc);

        end;

        if fmManEnt.Finalizar = 'S' then
           fmManEnt.Finalizar := 'N'
        else
           begin

           fmManEnt.CmpEnt.Edit;

           EdBasIcc.SetFocus;

           exit;
           
        end;
     end;

     if fmManEnt.CmpEntIntFin.Value = 'Sim' then begin

        try

           fmManEn3 := TfmManEn3.Create(Self);

           fmManEn3.ShowModal;

        finally

           FreeAndNil(fmManEn3);

        end;

        if fmManEnt.Finalizar = 'S' then
           Close
        else
           begin

           fmManEnt.CmpEnt.Edit;

           EdBasIcc.SetFocus;

        end;

        end
     else
        begin

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

                      if fmManEnt.CmpEnt.State = dsBrowse then fmManEnt.CmpEnt.Edit;

                      fmManEnt.Finalizar := 'N';

                      EdBasIcc.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              fmManEnt.Finalizar := 'S';

              if fMsg('Confirma Impressão do Romaneio de Entrada ?','S') then begin

                 try

                    ppReport.DeviceType := 'Screen';
                    fmPreview := TfmPreview.Create(fmManEn2);
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

     end
  else
     begin

     fmsg('Existem Valores Informados Incorretos.','E');

     if pnFlgOco01.Color = clRed then EdBasIcc.SetFocus;
     if pnFlgOco02.Color = clRed then EdTotIcc.SetFocus;
     if pnFlgOco03.Color = clRed then EdBasSuc.SetFocus;
     if pnFlgOco04.Color = clRed then EdTotSuc.SetFocus;
     if pnFlgOco05.Color = clRed then EdTotEnc.SetFocus;
     if pnFlgOco10.Color = clRed then EdTotIpc.SetFocus;
     if pnFlgOco11.Color = clRed then EdTotGec.SetFocus;

  end;
end;

procedure TfmManEn2.EdBasIccExit(Sender: TObject);
begin
  if fmManEnt.CmpEntBasIcc.Value <> fmManEnt.CmpEntBasIcm.Value then begin

     if fmManEnt.CmpEntBasIcc.Value > fmManEnt.CmpEntBasIcm.Value then
        TotDif := fRound(fmManEnt.CmpEntBasIcc.Value - fmManEnt.CmpEntBasIcm.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntBasIcm.Value - fmManEnt.CmpEntBasIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco01.Color := clRed
     else
        pnFlgOco01.Color := clLime;

     end
  else
     pnFlgOco01.Color := clLime;
end;

procedure TfmManEn2.EdTotIccExit(Sender: TObject);
begin
  if fmManEnt.CmpEntTotIcc.Value <> fmManEnt.CmpEntTotIcm.Value then begin

     if fmManEnt.CmpEntTotIcc.Value > fmManEnt.CmpEntTotIcm.Value then
        TotDif := fRound(fmManEnt.CmpEntTotIcc.Value - fmManEnt.CmpEntTotIcm.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotIcm.Value - fmManEnt.CmpEntTotIcc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco02.Color := clRed
     else
        pnFlgOco02.Color := clLime;

     end
  else
     pnFlgOco02.Color := clLime;
end;

procedure TfmManEn2.EdBasSucExit(Sender: TObject);
begin
  if fmManEnt.CmpEntBasSuc.Value <> fmManEnt.CmpEntBasSub.Value then begin

     if fmManEnt.CmpEntBasSuc.Value > fmManEnt.CmpEntBasSub.Value then
        TotDif := fRound(fmManEnt.CmpEntBasSuc.Value - fmManEnt.CmpEntBasSub.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntBasSub.Value - fmManEnt.CmpEntBasSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco03.Color := clRed
     else
        pnFlgOco03.Color := clLime;

     end
  else
     pnFlgOco03.Color := clLime;
end;

procedure TfmManEn2.EdTotEncExit(Sender: TObject);
begin
  if fmManEnt.CmpEntTotEnc.Value <> fmManEnt.CmpEntTotEnt.Value then begin

     if fmManEnt.CmpEntTotEnc.Value > fmManEnt.CmpEntTotEnt.Value then
        TotDif := fRound(fmManEnt.CmpEntTotEnc.Value - fmManEnt.CmpEntTotEnt.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotEnt.Value - fmManEnt.CmpEntTotEnc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco05.Color := clRed
     else
        pnFlgOco05.Color := clLime;

     end
  else
     pnFlgOco05.Color := clLime;
end;

procedure TfmManEn2.EdTotIpcExit(Sender: TObject);
begin
  if fmManEnt.CmpEntTotIpc.Value <> fmManEnt.CmpEntTotIpi.Value then begin

     if fmManEnt.CmpEntTotIpc.Value > fmManEnt.CmpEntTotIpi.Value then
        TotDif := fRound(fmManEnt.CmpEntTotIpc.Value - fmManEnt.CmpEntTotIpi.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotIpi.Value - fmManEnt.CmpEntTotIpc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco10.Color := clRed
     else
        pnFlgOco10.Color := clLime;

     end
  else
     pnFlgOco10.Color := clLime;
end;

procedure TfmManEn2.EdTotGecExit(Sender: TObject);
begin
  if fmManEnt.CmpEntTotGec.Value <> fmManEnt.CmpEntTotGer.Value then begin

     if fmManEnt.CmpEntTotGec.Value > fmManEnt.CmpEntTotGer.Value then
        TotDif := fRound(fmManEnt.CmpEntTotGec.Value - fmManEnt.CmpEntTotGer.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotGer.Value - fmManEnt.CmpEntTotGec.Value,2);

     if TotDif > DifEnt then
        pnFlgOco11.Color := clRed
     else
        pnFlgOco11.Color := clLime;

     end
  else
     pnFlgOco11.Color := clLime;
end;

procedure TfmManEn2.ppHeaderBand3BeforePrint(Sender: TObject);
begin
  inherited;

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

procedure TfmManEn2.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;

  ppTotEnc.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotEnc.Value);
  ppTotIcc.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotIcc.Value);
  ppTotIpc.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotIpc.Value);
  ppTotAcc.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotAcc.Value);
  ppTotSeg.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotSeg.Value);
  ppTotFrt.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotFrt.Value);
  ppTotDes.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotDes.Value);
  ppTotDcc.Caption := FormatFloat('###,###,##0.00',fmManEnt.CmpEntTotDcc.Value);
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

procedure TfmManEn2.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;

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

procedure TfmManEn2.ppReportBeforePrint(Sender: TObject);
begin
  inherited;
  sEnt := '';
end;

procedure TfmManEn2.dbReportBeforePrint(Sender: TObject);
begin
  inherited;

  ppMemo1.Lines.Clear;
  ppMemo1.Lines.Add(fmManEnt.CmpEn2DesEn2.Value);

  ppMemo1.Lines.Add(fmManEnt.CmpEn2CodClp.Value+ '-' +fmManEnt.CmpEn2CodGru.Value+ '.' +fmManEnt.CmpEn2CodSub.Value+ '.' +fmManEnt.CmpEn2CodPro.Value);

  if Trim( fmManEnt.CmpEn2ObsEn2.Value ) <> '' then ppMemo1.Lines.Add(fmManEnt.CmpEn2ObsEn2.Value);
  if Trim( fmManEnt.CmpEn2ClsIpi.Value ) <> '' then ppMemo1.Lines.Add(fmManEnt.CmpEn2ClsIpi.Value);

end;

procedure TfmManEn2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #20 then begin

     try

        fmManEn7 := TfmManEn7.Create(Self);

        fmManEn7.CmpEnt.Close;
        fmManEn7.CmpEnt.Params[0].AsInteger  := fmManEnt.CmpEntCodEmp.Value;
        fmManEn7.CmpEnt.Params[1].AsDateTime := fmManEnt.CmpEntDteEnt.Value;
        fmManEn7.CmpEnt.Params[2].AsInteger  := fmManEnt.CmpEntNumEnt.Value;
        fmManEn7.CmpEnt.Open;

        fmManEn7.ShowModal;

     finally

        FreeAndNil(fmManEn7);

     end;
  end;
end;

procedure TfmManEn2.EdTotSucExit(Sender: TObject);
begin
  inherited;
  if fmManEnt.CmpEntTotSuc.Value <> fmManEnt.CmpEntTotSub.Value then begin

     if fmManEnt.CmpEntTotSuc.Value > fmManEnt.CmpEntTotSub.Value then
        TotDif := fRound(fmManEnt.CmpEntTotSuc.Value - fmManEnt.CmpEntTotSub.Value,2)
     else
        TotDif := fRound(fmManEnt.CmpEntTotSub.Value - fmManEnt.CmpEntTotSuc.Value,2);

     if TotDif > DifEnt then
        pnFlgOco04.Color := clRed
     else
        pnFlgOco04.Color := clLime;

     end
  else
     pnFlgOco04.Color := clLime;
end;

end.
