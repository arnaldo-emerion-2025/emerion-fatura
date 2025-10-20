unit ManPe2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppStrtch, ppMemo, Psock, NMsmtp, dxfProgressBar,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManPe2 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label6: TLabel;
    Label10: TLabel;
    EdObsCnd: TdxDBColorEdit;
    EdNomVen: TdxDBColorEdit;
    Label12: TLabel;
    Label21: TLabel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    EdObsPed: TdxDBColorMemo;
    Label2: TLabel;
    Label3: TLabel;
    p1Report: TppReport;
    DsReport: TppDBPipeline;
    Label4: TLabel;
    p2Report: TppReport;
    ppHeaderBand3: TppHeaderBand;
    ppApeEmp: TppLabel;
    ppNomEmp: TppLabel;
    ppEndEmp: TppLabel;
    ppRefEmp: TppLabel;
    ppTitulo: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel9: TppLabel;
    ppImagem: TppImage;
    ppLabel2: TppLabel;
    ppLabel4: TppLabel;
    ppLabel8: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel63: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel11: TppLabel;
    ppCgcEmp: TppLabel;
    ppLabel37: TppLabel;
    ppInsEmp: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLabel12: TppLabel;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine5: TppLine;
    ppLine2: TppLine;
    ppLabel36: TppLabel;
    ppLabel38: TppLabel;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel39: TppLabel;
    ppLabel15: TppLabel;
    ppLine6: TppLine;
    ppLabel40: TppLabel;
    ppLine13: TppLine;
    ppLine10: TppLine;
    ppLabel42: TppLabel;
    p1CodFor: TppLabel;
    p1NomFor: TppLabel;
    p1EndFor: TppLabel;
    p1BaiFor: TppLabel;
    p1FonFor: TppLabel;
    p1NomCon: TppLabel;
    p1NomUsu: TppLabel;
    p1FaxFor: TppLabel;
    p1CidFor: TppLabel;
    p1SigUfe: TppLabel;
    dbReport: TppDetailBand;
    ppQtpPe2: TppDBText;
    ppCodUnd: TppDBText;
    ppVlqPe2: TppDBText;
    ppTotGe2: TppDBText;
    p1Memo: TppMemo;
    ppIcmPe2: TppDBText;
    ppIpiPe2: TppDBText;
    ppPacPe2: TppDBText;
    p1ValVen: TppDBText;
    p1TotRen: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLine7: TppLine;
    ppLabel35: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel17: TppLabel;
    ppLabel19: TppLabel;
    ppLabel21: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel22: TppLabel;
    ppLabel20: TppLabel;
    ppLabel18: TppLabel;
    ppLabel34: TppLabel;
    ppLabel16: TppLabel;
    p1TotPed: TppLabel;
    p1ObsCnd: TppLabel;
    p1DpePed: TppLabel;
    p1PrePed: TppLabel;
    p1NomVen: TppLabel;
    p1ObsPed: TppMemo;
    ppLabel41: TppLabel;
    p1TotAcc: TppLabel;
    ppLabel65: TppLabel;
    p1TotGer: TppLabel;
    ppHeaderBand1: TppHeaderBand;
    p2ApeEmp: TppLabel;
    p2NomEmp: TppLabel;
    p2EndEmp: TppLabel;
    p2RefEmp: TppLabel;
    p2Titulo: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel50: TppLabel;
    ppLabel56: TppLabel;
    ppLine16: TppLine;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    p2Imagem: TppImage;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLabel74: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    ppLabel75: TppLabel;
    p2CgcEmp: TppLabel;
    ppLabel77: TppLabel;
    p2InsEmp: TppLabel;
    ppLine21: TppLine;
    ppLabel79: TppLabel;
    ppLine22: TppLine;
    ppLabel80: TppLabel;
    ppLine23: TppLine;
    ppLabel81: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel47: TppLabel;
    ppLabel48: TppLabel;
    ppLabel49: TppLabel;
    ppLabel51: TppLabel;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    p2CodFor: TppLabel;
    p2EndFor: TppLabel;
    p2BaiFor: TppLabel;
    p2FonFor: TppLabel;
    p2NomCon: TppLabel;
    p2NomUsu: TppLabel;
    ppLabel70: TppLabel;
    ppLabel71: TppLabel;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    p2FaxFor: TppLabel;
    p2CidFor: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    p2SigUfe: TppLabel;
    p2NomFor: TppLabel;
    ppLabel86: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    p2Memo: TppMemo;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppLine30: TppLine;
    ppLabel87: TppLabel;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppLabel91: TppLabel;
    ppLabel92: TppLabel;
    ppLabel93: TppLabel;
    ppLabel94: TppLabel;
    ppLabel95: TppLabel;
    ppLabel97: TppLabel;
    p2ObsCnd: TppLabel;
    p2DpePed: TppLabel;
    p2NomVen: TppLabel;
    p2ObsPed: TppMemo;
    p2PrePed: TppLabel;
    ppLabel68: TppLabel;
    p2TotPed: TppLabel;
    ppLabel64: TppLabel;
    p2TotAcc: TppLabel;
    ppLabel67: TppLabel;
    p2TotGer: TppLabel;
    procedure FormShow(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure ppHeaderBand1BeforePrint(Sender: TObject);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppGroupFooterBand2BeforePrint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPe2: TfmManPe2;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, BbMensag, Fpreview, ManGDB, ManPed,
     ManPe3, ManPe6, RelPfo;


{$R *.DFM}

procedure TfmManPe2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManPe2.FormShow(Sender: TObject);
begin
  inherited;

  fmManPed.CmpPed.Edit;

  EdObsCnd.Text := fmManPed.CmpPedObsCnd.Value;
  EdNomVen.Text := fmManPed.CmpPedNomVen.Value;
  EdObsPed.Text := fmManPed.CmpPedObsPed.Value;

  EdObsCnd.SetFocus;
  
end;

procedure TfmManPe2.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManPe2.bContinuarClick(Sender: TObject);
var
NroPe2 : integer;
sContinuar : string;
begin

  NroPe2 := fmManPed.CmpPe2NroPe2.Value;

  fmManPed.CmpPedObsCnd.Value := EdObsCnd.Text;
  fmManPed.CmpPedNomVen.Value := EdNomVen.Text;
  fmManPed.CmpPedObsPed.Value := EdObsPed.Text;

  if fmManPed.CmpPedModPfa.Value = 'Importacao' then begin

     with fmManPed.CmpPed do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if fmManPed.CmpPed.State = dsBrowse then fmManPed.CmpPed.Edit;

             EdObsCnd.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     try

        fmManPe6 := TfmManPe6.Create(Self);

        fmManPe6.ShowModal;

     finally

        FreeAndNil(fmManPe6);

     end;

     if fmManPed.Finalizar = 'S' then
        Close
     else
        begin

        fmManPed.CmpPed.Edit;

        EdObsCnd.SetFocus;

     end;

     end
  else
     begin

     sContinuar := 'N';

     if fmManPed.CmpPedFlgOco.Value = '*' then begin

        try

           fmManPe3 := TfmManPe3.Create(Self);

           fmManPe3.ShowModal;

           sContinuar := fmManPe3.sContinuar;

        Finally

           FreeAndNil(fmManPe3);

        end;

        end
     else
        sContinuar := 'S';

     if sContinuar = 'S' then begin

        if fMsg('Confirma Pedido de Compra ?','O') then begin

           if (Trim(fmManPed.CmpPedSitPed.Value) = 'Nao Concluido') or (Trim(fmManPed.CmpPedSitPed.Value) = 'Processo de Alteracao') then
              fmManPed.CmpPedSitPed.Value := 'Concluido'
           else
              fmManPed.CmpPedFlgAtu.Value := '*';

           with fmManPed.CmpPed do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   fmManPed.Finalizar := 'N';

                   if fmManPed.CmpPed.State <> dsBrowse then fmManPed.CmpPed.CancelUpdates;

                   fmManPed.CmpPed.Edit;

                   EdObsCnd.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           fmManPed.CmpPed.Close;
           fmManPed.CmpPed.Open;

           fmManPed.CmpPe2.Close;
           fmManPed.CmpPe2.Open;

           fmManPed.CmpPe2.Locate('CodEmp;DtePed;NumPed;NroPe2',VarArrayOf([fmManPed.CmpPe2CodEmp.Value,fmManPed.CmpPe2DtePed.Value,fmManPed.CmpPedNumPed.Value,NroPe2]),[LoPartialKey]);

           fmManPed.Finalizar := 'S';

           if fMsg('Confirma a Impressão da via Interna do Pedido de Compra ?','O') then begin

              try

                 p1Report.DeviceType := 'Screen';
                 fmPreview := TfmPreview.Create(fmManPe2);
                 fmPreview.ppViewer.Report := p1Report;
                 p1Report.PrintToDevices;
                 fmPreview.ShowModal;

                 if Assigned(p1Report.AfterPrint) then p1Report.AfterPrint(Sender);

              finally

                 FreeAndNil(fmPreview);

              end;
           end;

           if fMsg('Confirma a Impressão da via Fornecedor do Pedido de Compra ?','O') then begin

              try

                 fmRelPfo := TfmRelPfo.Create(Self);

                 fmRelPfo.CmpPed.Close;
                 fmRelPfo.CmpPed.Params[0].AsInteger  := fmManPed.CmpPedCodEmp.Value;
                 fmRelPfo.CmpPed.Params[1].AsDateTime := fmManPed.CmpPedDtePed.Value;
                 fmRelPfo.CmpPed.Params[2].AsInteger  := fmManPed.CmpPedNumPed.Value;
                 fmRelPfo.CmpPed.Open;

                 fmRelPfo.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmRelPfo);

              end;
           end;

           Close;

        end;
     end;
   end;
end;

procedure TfmManPe2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManPed.CmpPed.State <> dsBrowse then fmManPed.CmpPed.CancelUpdates;
end;

procedure TfmManPe2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe2.FormDestroy(Sender: TObject);
begin
  inherited;
  Screen.OnActiveControlChange := nil;
end;

procedure TfmManPe2.ppHeaderBand3BeforePrint(Sender: TObject);
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
  ppCgcEmp.Caption := GCgcEmp;
  ppInsEmp.Caption := GInsEmp;

  ppTitulo.Caption := 'Pedido de Compra No. '+ fNumZeros(IntToStr(fmManPed.CmpPe2NumPed.Value),7)+ ' - ' + FormatDateTime('dd/mm/yyyy',fmManPed.CmpPe2DtePed.Value);

  p1CodFor.Caption := IntToStr( fmManPed.CmpPedCodFor.Value );
  p1NomFor.Caption := fmManPed.CmpPedNomFor.Value;
  p1EndFor.Caption := fmManPed.CmpPedEndFor.Value;
  p1BaiFor.Caption := fmManPed.CmpPedBaiFor.Value;
  p1CidFor.Caption := fmManPed.CmpPedCidFor.Value;
  p1SigUfe.Caption := fmManPed.CmpPedSigUfe.Value;
  p1FonFor.Caption := fmManPed.CmpPedFonFor.Value;
  p1FaxFor.Caption := fmManPed.CmpPedFaxFor.Value;
  p1NomCon.Caption := fmManPed.CmpPedNomCon.Value;
  p1NomUsu.Caption := fmManPed.CmpPedLogUsu.Value;

end;

procedure TfmManPe2.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;

  p1TotPed.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotPed.Value);
  p1TotAcc.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotAcc.Value);
  p1TotGer.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);

  p1ObsCnd.Caption := fmManPed.CmpPedObsCnd.Value;

  p1DpePed.Caption := FormatDatetime('dd/mm/yyyy',fmManPed.CmpPedDpePed.Value);

  if fmManPed.CmpPedPrePed.Value > 0 then
     p1PrePed.Caption := IntToStr( fmManPed.CmpPedPrePed.Value )
  else
     p1PrePed.Caption := '0';

  p1NomVen.Caption := fmManPed.CmpPedNomVen.Value;

  p1ObsPed.Lines.Clear;

  p1ObsPed.Lines.Add( fmManPed.CmpPedObsPed.Value );

end;

procedure TfmManPe2.dbReportBeforePrint(Sender: TObject);
begin

  p1Memo.Lines.Clear;
  p1Memo.Lines.Add(fmManPed.CmpPe2DesPe2.Value);

  if Trim( fmManPed.CmpPe2CodPfo.Value ) <> '' then
     p1Memo.Lines.Add(fmManPed.CmpPe2CodClp.Value+ '-' +fmManPed.CmpPe2CodGru.Value+ '.' +fmManPed.CmpPe2CodSub.Value+ '.' +fmManPed.CmpPe2CodPro.Value+ ' - ' +fmManPed.CmpPe2CodPfo.Value)
  else
     p1Memo.Lines.Add(fmManPed.CmpPe2CodClp.Value+ '-' +fmManPed.CmpPe2CodGru.Value+ '.' +fmManPed.CmpPe2CodSub.Value+ '.' +fmManPed.CmpPe2CodPro.Value);

  if Trim( fmManPed.CmpPe2ObsPe2.Value ) <> '' then p1Memo.Lines.Add(fmManPed.CmpPe2ObsPe2.Value);
  if Trim( fmManPed.CmpPe2ObsPe3.Value ) <> '' then p1Memo.Lines.Add(fmManPed.CmpPe2ObsPe3.Value);

end;

procedure TfmManPe2.ppHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;

  if FileExists('C:\Emerion\Print.bmp') then
     p2Imagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     p2Imagem.Picture.Bitmap.FreeImage;

  p2ApeEmp.Caption := GApeEmp;
  p2NomEmp.Caption := GRazEmp;
  p2EndEmp.Caption := GEndEmp;
  p2RefEmp.Caption := GRefEmp;
  p2CgcEmp.Caption := GCgcEmp;
  p2InsEmp.Caption := GInsEmp;

  p2Titulo.Caption := 'Pedido de Compra No. '+ fNumZeros(IntToStr(fmManPed.CmpPe2NumPed.Value),7)+ ' - ' + FormatDateTime('dd/mm/yyyy',fmManPed.CmpPe2DtePed.Value)+ ' ( Fornecedor ) ';

  p2CodFor.Caption := IntToStr( fmManPed.CmpPedCodFor.Value );
  p2NomFor.Caption := fmManPed.CmpPedNomFor.Value;
  p2EndFor.Caption := fmManPed.CmpPedEndFor.Value;
  p2BaiFor.Caption := fmManPed.CmpPedBaiFor.Value;
  p2CidFor.Caption := fmManPed.CmpPedCidFor.Value;
  p2SigUfe.Caption := fmManPed.CmpPedSigUfe.Value;
  p2FonFor.Caption := fmManPed.CmpPedFonFor.Value;
  p2FaxFor.Caption := fmManPed.CmpPedFaxFor.Value;
  p2NomCon.Caption := fmManPed.CmpPedNomCon.Value;
  p2NomUsu.Caption := fmManPed.CmpPedLogUsu.Value;

end;

procedure TfmManPe2.ppGroupFooterBand2BeforePrint(Sender: TObject);
begin
  inherited;

  p2TotPed.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotPed.Value);
  p2TotAcc.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotAcc.Value);
  p2TotGer.Caption := FormatFloat('###,###,##0.00',fmManPed.CmpPedTotGer.Value);

  p2ObsCnd.Caption := fmManPed.CmpPedObsCnd.Value;

  p2DpePed.Caption := FormatDatetime('dd/mm/yyyy',fmManPed.CmpPedDpePed.Value);

  if fmManPed.CmpPedPrePed.Value > 0 then
     p2PrePed.Caption := IntToStr( fmManPed.CmpPedPrePed.Value )
  else
     p2PrePed.Caption := '0';

  p2NomVen.Caption := fmManPed.CmpPedNomVen.Value;

  p2ObsPed.Lines.Clear;

  p2ObsPed.Lines.Add( fmManPed.CmpPedObsPed.Value );

end;

procedure TfmManPe2.ppDetailBand1BeforePrint(Sender: TObject);
begin
  inherited;

  p2Memo.Lines.Clear;
  p2Memo.Lines.Add(fmManPed.CmpPe2DesPe2.Value);

  if Trim( fmManPed.CmpPe2CodPfo.Value ) <> '' then
     p2Memo.Lines.Add(fmManPed.CmpPe2CodClp.Value+ '-' +fmManPed.CmpPe2CodGru.Value+ '.' +fmManPed.CmpPe2CodSub.Value+ '.' +fmManPed.CmpPe2CodPro.Value+ ' - ' +fmManPed.CmpPe2CodPfo.Value)
  else
     p2Memo.Lines.Add(fmManPed.CmpPe2CodClp.Value+ '-' +fmManPed.CmpPe2CodGru.Value+ '.' +fmManPed.CmpPe2CodSub.Value+ '.' +fmManPed.CmpPe2CodPro.Value);

  if Trim( fmManPed.CmpPe2ObsPe2.Value ) <> '' then p2Memo.Lines.Add(fmManPed.CmpPe2ObsPe2.Value);

end;

end.

