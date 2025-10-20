unit ManDn1_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManDn1_NFE = class(TfmPadrao)
    PaintBox: TPaintBox;
    FatDev: TwwQuery;
    DsFatDev: TDataSource;
    quSql: TwwQuery;
    LbText: TLabel;
    Label22: TLabel;
    UpFatDev: TUpdateSQL;
    Label44: TLabel;
    pnNroDv2: TPanel;
    EdSeqDv2: TdxDBColorCurrencyEdit;
    EdTotFrt: TdxDBColorCurrencyEdit;
    EdBasIcm: TdxDBColorCurrencyEdit;
    EdTotIcm: TdxDBColorCurrencyEdit;
    EdTotSeg: TdxDBColorCurrencyEdit;
    EdTotDes: TdxDBColorCurrencyEdit;
    EdBasSub: TdxDBColorCurrencyEdit;
    EdTotSub: TdxDBColorCurrencyEdit;
    EdTotIpi: TdxDBColorCurrencyEdit;
    EdTotGer: TdxDBColorCurrencyEdit;
    EdTotFat: TdxDBColorCurrencyEdit;
    Label20: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label21: TLabel;
    Label34: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label42: TLabel;
    pnBasIcm: TPanel;
    pnTotFrt: TPanel;
    pnTotSeg: TPanel;
    pnTotIcm: TPanel;
    pnBasSub: TPanel;
    pnTotDes: TPanel;
    pnTotIpi: TPanel;
    pnTotSub: TPanel;
    pnTotFat: TPanel;
    pnTotGer: TPanel;
    Panel1: TPanel;
    EdNumNfs: TdxDBColorEdit;
    EdNumRes: TdxDBColorEdit;
    EdCodCli: TdxDBColorEdit;
    EdCodEmp: TdxDBColorEdit;
    EdCodVen: TdxDBColorEdit;
    EdApeEmp: TdxDBColorEdit;
    pnApeEmp: TPanel;
    EdNomCli: TdxDBColorEdit;
    pnNomCli: TPanel;
    pnUfeDev: TPanel;
    EdUfeDev: TdxDBColorEdit;
    EdApeVen: TdxDBColorEdit;
    pnApeVen: TPanel;
    EdCodPfa: TdxDBColorEdit;
    EdDscPfa: TdxDBColorEdit;
    pnDscPfa: TPanel;
    EdDteDev: TdxDBColorDateEdit;
    pnNumRes: TPanel;
    pnCodEmp: TPanel;
    pnCodCli: TPanel;
    pnCodVen: TPanel;
    PaintBox1: TPaintBox;
    Label5: TLabel;
    Label13: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label29: TLabel;
    Label2: TLabel;
    Label54: TLabel;
    FatDevCODEMP: TIntegerField;
    FatDevDTERES: TDateTimeField;
    FatDevNUMRES: TIntegerField;
    FatDevSEQLIB: TIntegerField;
    FatDevSEQFAT: TIntegerField;
    FatDevSEQDEV: TIntegerField;
    FatDevNUMNFS: TIntegerField;
    FatDevDTEDEV: TDateTimeField;
    FatDevHREDEV: TStringField;
    FatDevUFEDEV: TStringField;
    FatDevCODPFA: TStringField;
    FatDevTIPPFA: TStringField;
    FatDevDSCREG: TFloatField;
    FatDevPERPIS: TFloatField;
    FatDevPERCOF: TFloatField;
    FatDevCODFIL: TIntegerField;
    FatDevQTDNFS: TIntegerField;
    FatDevNRONFS: TIntegerField;
    FatDevNROSUF: TStringField;
    FatDevFLGAVI: TStringField;
    FatDevCGCCLI: TStringField;
    FatDevINSCLI: TStringField;
    FatDevCODCF1: TStringField;
    FatDevCODCF2: TStringField;
    FatDevFRTDEV: TStringField;
    FatDevFLGENT: TStringField;
    FatDevFLGSAI: TStringField;
    FatDevDESNAT: TStringField;
    FatDevINSSUB: TStringField;
    FatDevTIPFRT: TStringField;
    FatDevMARDEV: TStringField;
    FatDevNRODEV: TStringField;
    FatDevESPDEV: TStringField;
    FatDevNOMTRA: TStringField;
    FatDevCGCTRA: TStringField;
    FatDevINSTRA: TStringField;
    FatDevCEPTRA: TStringField;
    FatDevTENTRA: TStringField;
    FatDevENDTRA: TStringField;
    FatDevREFTRA: TStringField;
    FatDevNUMTRA: TStringField;
    FatDevBAITRA: TStringField;
    FatDevCIDTRA: TStringField;
    FatDevUFETRA: TStringField;
    FatDevPLCTRA: TStringField;
    FatDevUFEPLC: TStringField;
    FatDevCEPCLI: TStringField;
    FatDevTENCLI: TStringField;
    FatDevENDCLI: TStringField;
    FatDevREFCLI: TStringField;
    FatDevNUMCLI: TStringField;
    FatDevBAICLI: TStringField;
    FatDevCIDCLI: TStringField;
    FatDevUFECLI: TStringField;
    FatDevINECLI: TStringField;
    FatDevCGECLI: TStringField;
    FatDevTXFIPI: TStringField;
    FatDevTXFICM: TStringField;
    FatDevOBSDEV: TStringField;
    FatDevQTDDEV: TIntegerField;
    FatDevSEQITE: TIntegerField;
    FatDevQTIDEV: TIntegerField;
    FatDevLINDEV: TIntegerField;
    FatDevQTDVOL: TIntegerField;
    FatDevINFLIQ: TFloatField;
    FatDevTOTLIQ: TFloatField;
    FatDevINFBRT: TFloatField;
    FatDevTOTBRT: TFloatField;
    FatDevBASIPI: TFloatField;
    FatDevTOTIPI: TFloatField;
    FatDevBASICM: TFloatField;
    FatDevTOTICM: TFloatField;
    FatDevBASSUB: TFloatField;
    FatDevTOTSUB: TFloatField;
    FatDevTOTDEV: TFloatField;
    FatDevTOTPIS: TFloatField;
    FatDevTOTCOF: TFloatField;
    FatDevTOTFRT: TFloatField;
    FatDevTOTSEG: TFloatField;
    FatDevTOTDES: TFloatField;
    FatDevBSICMF: TFloatField;
    FatDevBAICMF: TFloatField;
    FatDevTOICMF: TFloatField;
    FatDevBSICMS: TFloatField;
    FatDevBAICMS: TFloatField;
    FatDevTOICMS: TFloatField;
    FatDevBSICMD: TFloatField;
    FatDevBAICMD: TFloatField;
    FatDevTOICMD: TFloatField;
    FatDevBSIPIF: TFloatField;
    FatDevBAIPIF: TFloatField;
    FatDevTOIPIF: TFloatField;
    FatDevBSIPIS: TFloatField;
    FatDevBAIPIS: TFloatField;
    FatDevTOIPIS: TFloatField;
    FatDevBSIPID: TFloatField;
    FatDevBAIPID: TFloatField;
    FatDevTOIPID: TFloatField;
    FatDevTOTGER: TFloatField;
    FatDevBASCOM: TFloatField;
    FatDevTOTCOM: TFloatField;
    FatDevTOTDSR: TFloatField;
    FatDevDESREG: TStringField;
    FatDevCODUSU: TIntegerField;
    FatDevATUEST: TStringField;
    FatDevLANEST: TStringField;
    FatDevINTFIN: TStringField;
    FatDevCONSUM: TStringField;
    FatDevFLGCTB: TStringField;
    FatDevCODIPI: TStringField;
    FatDevTIPIPI: TStringField;
    FatDevTRBIPI: TStringField;
    FatDevREDIPI: TFloatField;
    FatDevBSCIPI: TFloatField;
    FatDevCODICM: TStringField;
    FatDevTIPICM: TStringField;
    FatDevTRBICM: TStringField;
    FatDevREDICM: TFloatField;
    FatDevBSCICM: TFloatField;
    FatDevINCREV: TFloatField;
    FatDevINCFIN: TFloatField;
    FatDevOBSMDV: TMemoField;
    FatDevSEQREG: TStringField;
    FatDevFLGDIF: TStringField;
    FatDevFLGDEV: TStringField;
    FatDevFLGATU: TStringField;
    FatDevSITDEV: TStringField;
    FatDevCODCLI: TIntegerField;
    FatDevCODVEN: TIntegerField;
    FatDevMODPFA: TStringField;
    FatDevFLGNFS: TStringField;
    FatDevHRCDEV: TStringField;
    FatDevDTCDEV: TDateTimeField;
    FatDevUSUCFT: TIntegerField;
    FatDevOBSCFT: TMemoField;
    FatDevFLGSIN: TStringField;
    FatDevFLGFSC: TStringField;
    FatDevSERNOT: TStringField;
    FatDevMODDEV: TStringField;
    FatDevOB1DEV: TStringField;
    FatDevOB2DEV: TStringField;
    FatDevOB3DEV: TStringField;
    FatDevOB4DEV: TStringField;
    FatDevOB5DEV: TStringField;
    FatDevOB6DEV: TStringField;
    FatDevOB7DEV: TStringField;
    FatDevOB8DEV: TStringField;
    FatDevFLGIMP: TStringField;
    FatDevNOMENT: TStringField;
    FatDevQTDDSE: TIntegerField;
    FatDevSEQDSE: TIntegerField;
    FatDevTOTDSE: TFloatField;
    FatDevBASISS: TFloatField;
    FatDevTOTISS: TFloatField;
    grLabel1: TdxDBGraphicEdit;
    grFatDv21: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label25: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label27: TLabel;
    Label50: TLabel;
    Panel3: TPanel;
    EdCodIte: TdxDBColorEdit;
    EdUltQtd: TdxDBColorCurrencyEdit;
    EdVlqDv2: TdxDBColorCurrencyEdit;
    EdTotDv2: TdxDBColorCurrencyEdit;
    EdIcmDv2: TdxDBColorCurrencyEdit;
    EdCodSt1: TdxDBColorEdit;
    EdCodSt2: TdxDBColorEdit;
    EdTipDv2: TdxDBColorCurrencyEdit;
    EdCodCfo: TdxDBColorEdit;
    EdClsIpi: TdxDBColorEdit;
    FatDevTOTFAT: TFloatField;
    FatDevFLGTOT: TStringField;
    FatDevCODTCL: TIntegerField;
    FatDevFLGENV: TStringField;
    FatDevNFSCLI: TIntegerField;
    FatDevCEFCLI: TStringField;
    FatDevTEFCLI: TStringField;
    FatDevENFCLI: TStringField;
    FatDevRFFCLI: TStringField;
    FatDevNRFCLI: TStringField;
    FatDevBAFCLI: TStringField;
    FatDevCIFCLI: TStringField;
    FatDevUFFCLI: TStringField;
    FatDevID_FINUFF: TIntegerField;
    FatDevID_FINCIF: TIntegerField;
    FatDevID_TRAUFE: TIntegerField;
    FatDevID_TRACIE: TIntegerField;
    FatDevID_FINUFE: TIntegerField;
    FatDevID_FINCIE: TIntegerField;
    FatDevID_ESTSIP: TIntegerField;
    FatDevTRBPIS: TStringField;
    FatDevNFEPIS: TStringField;
    FatDevTRBCOF: TStringField;
    FatDevNFECOF: TStringField;
    FatDevFLGNOT: TStringField;
    FatDevFLGNFE: TStringField;
    FatDevENVNFE: TStringField;
    FatDevSEQNFE: TStringField;
    FatDevDTENFE: TDateTimeField;
    FatDevRECNFE: TStringField;
    FatDevPRONFE: TStringField;
    FatDevLOTNFE: TIntegerField;
    FatDevDTEPNF: TDateTimeField;
    FatDevHREPNF: TStringField;
    FatDevDOPNFE: TDateTimeField;
    FatDevHRENFE: TStringField;
    FatDevUSUNFE: TIntegerField;
    FatDevIMPNFE: TStringField;
    FatDevRETNFE: TStringField;
    FatDevDTCNFE: TDateTimeField;
    FatDevHRCNFE: TStringField;
    FatDevPRCNFE: TStringField;
    FatDevDTECNE: TDateTimeField;
    FatDevHRECNE: TStringField;
    FatDevARQNFE: TBlobField;
    FatDevCODTRA: TIntegerField;
    FatDv2: TwwQuery;
    DsFatDv2: TDataSource;
    grFatDv2: ThGrid;
    FatDv2CODCFO: TStringField;
    FatDv2CLSIPI: TStringField;
    FatDv2CODST1: TStringField;
    FatDv2CODST2: TStringField;
    FatDv2ULTQTD: TFloatField;
    FatDv2VLQDV2: TFloatField;
    FatDv2IPIDV2: TFloatField;
    FatDv2ICMDV2: TFloatField;
    FatDv2TOTIPI: TFloatField;
    FatDv2TOTDV2: TFloatField;
    FatDv2NCMDV2: TStringField;
    EdDesPe2: TdxDBColorEdit;
    pnDesDv2: TPanel;
    FatDv2CODITE: TStringField;
    Label6: TLabel;
    FatDv2CODUND: TStringField;
    EdCodUnd: TdxDBColorEdit;
    EdIpiDv2: TdxDBColorCurrencyEdit;
    FatDv2DESDV2: TStringField;
    FatDv2NRODV2: TIntegerField;
    Label12: TLabel;
    FatDevICMFRT: TFloatField;
    FatDevICMSEG: TFloatField;
    FatDevICMDES: TFloatField;
    FatDevIPIFRT: TFloatField;
    FatDevIPISEG: TFloatField;
    FatDevIPIDES: TFloatField;
    FatDevBASCAT: TFloatField;
    FatDevTOTCAT: TFloatField;
    FatDevNFSCLI_1: TIntegerField;
    FatDevID_FATDEV: TIntegerField;
    FatDevDTEFAT: TDateTimeField;
    FatDevFLGEMI: TStringField;
    FatDevALTVOL: TIntegerField;
    FatDevNFETH: TSmallintField;
    FatDevARQNFECANC: TBlobField;
    FatDevNFETHCANC: TSmallintField;
    FatDevDTECAN: TDateTimeField;
    FatDevHRECAN: TStringField;
    FatDevUSUCAN: TIntegerField;
    FatDevOB1CAN: TStringField;
    FatDevOB2CAN: TStringField;
    FatDevOB3CAN: TStringField;
    FatDevOB4CAN: TStringField;
    FatDevOB5CAN: TStringField;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdNumNfsKeyPress(Sender: TObject; var Key: Char);
    procedure Panel1Exit(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FatDv2NCMDV2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure EdDteDevEnter(Sender: TObject);
    procedure DsFatDv2DataChange(Sender: TObject; Field: TField);
    procedure EdCodPfaExit(Sender: TObject);
  private
  public
    DteRes: TDateTime;
    sEnc, Finalizar: string;
    CodEmp, NumRes, SeqLib, SeqFat, SeqDev: integer;
  end;

var
  fmManDn1_NFE: TfmManDn1_NFE;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEst, ManDno_NFE, ManDn2_NFE;

{$R *.DFM}

procedure TfmManDn1_NFE.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then
  begin

    if Trim(FatDevSitDev.Value) = 'Devolvido' then
      fMsg('Operação não pode ser realizada. Devolução já concluida.', 'E');

    Finalizar := 'S';

    Close;

  end;
end;

procedure TfmManDn1_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then
  begin

    if fMsg('Deseja realmente abandonar a operação ?', 'O') then
    begin

      if FatDevCodEmp.Value > 0 then
      begin

        if Trim(FatDevSitDev.Value) = 'Faturando' then
        begin

          FatDev.Edit;

          FatDevSitDev.Value := 'Concluido';

          with FatDev do
          begin

            fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
            ;

            try

              ApplyUpdates; {Tenta aplicar as alterações}
              ;

              fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
              ;

            except

              fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
              ;

              if FatDev.State <> dsBrowse then
                FatDev.CancelUpdates;

              FatDev.Close;
              FatDev.Open;

              Abort;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;
        end;
      end;

      fmManDno_NFE.FatDev.Close;
      fmManDno_NFE.FatDev.Open;

      Action := CaFree;

    end
    else
      Abort;

  end
  else
  begin

    fmManDno_NFE.FatDev.Close;
    fmManDno_NFE.FatDev.Open;

    Action := CaFree;

  end;
end;

procedure TfmManDn1_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  Top := 0;
  Left := 0;
  FatDev.Active := True;
  FatDv2.Active := True;

  sEnc := 'N';

  Finalizar := 'N';

end;

procedure TfmManDn1_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManDn1_NFE := nil;
end;

procedure TfmManDn1_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
  begin

    if FatDev.State <> dsBrowse then
    begin

      FatDev.CancelUpdates;

      Close;

    end
    else
      Close;

  end;

  if key = 123 then
  begin {F12-Finalizar Pedido}

    if FatDevTotDev.Value > 0 then
    begin

      if grFatDv2.Focused then
      begin

        try

          fmManDn2_NFE := TfmManDn2_NFE.Create(Self);
          fmManDn2_NFE.ShowModal;

        finally

          FreeAndNil(fmManDn2_NFE);

        end;

        if Finalizar = 'S' then
          close;

      end;
    end;
  end;
end;

procedure TfmManDn1_NFE.EdNumNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManDn1_NFE.Panel1Exit(Sender: TObject);
begin
  inherited;
  if FatDev.State <> dsBrowse then
  begin

    if FatDevDteDev.Value = 0 then
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdDteDev);

    with FatDev do
    begin

      fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
      ;

      try

        ApplyUpdates; {Tenta aplicar as alterações}
        ;

        fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
        ;

      except

        fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
        ;

        if FatDev.State = dsBrowse then
          FatDev.Edit;

        EdDteDev.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    EdDteDev.Enabled := False;

    EdDteDev.Font.Style := [fsBold];

    grFatDv2.SetFocus;

  end;
end;

procedure TfmManDn1_NFE.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDn1_NFE.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManDn1_NFE.FormShow(Sender: TObject);
begin
  inherited;

  FatDev.Close;
  FatDev.Params[0].AsInteger := fmManDno_NFE.CodEmp;
  FatDev.Params[1].AsDateTime := fmManDno_NFE.DteRes;
  FatDev.Params[2].AsInteger := fmManDno_NFE.NumRes;
  FatDev.Params[3].AsInteger := fmManDno_NFE.SeqLib;
  FatDev.Params[4].AsInteger := fmManDno_NFE.SeqFat;
  FatDev.Params[5].AsInteger := fmManDno_NFE.SeqDev;
  FatDev.Open;

  FatDv2.Close;
  FatDv2.Open;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(IntToStr(FatDevCodEmp.Value));
    Open;

    pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = ' + QuotedStr(IntToStr(FatDevCodVen.Value));
    Open;

    pnApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select EstPfa.DscPfa From EstPfa Where EstPfa.CodPfa = ' + QuotedStr(FatDevCodPfa.Value) + ' and EstPfa.TipPfa = ' +
      QuotedStr(FatDevTipPfa.Value);
    Open;

    pnDscPfa.Caption := FieldbyName('DscPfa').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = ' + QuotedStr(IntToStr(FatDevCodCli.Value));
    Open;

    pnNomCli.Caption := FieldbyName('NomCli').AsString;

  end;

  pnUfeDev.Caption := FatDevUfeDev.Value;
  pnNumRes.Caption := IntToStr(FatDevNumRes.Value);
  pnCodEmp.Caption := IntToStr(FatDevCodEmp.Value);
  pnCodCli.Caption := IntToStr(FatDevCodCli.Value);
  pnCodVen.Caption := IntToStr(FatDevCodVen.Value);

  if (Trim(FatDevSitDev.Value) <> 'Nao Concluido') and (Trim(FatDevSitDev.Value) <> 'Faturando') then
    sEnc := 'S'
  else
  begin

    FatDev.Edit;

    EdDteDev.Enabled := True;

    EdDteDev.Font.Style := [];

    EdDteDev.Date := FatDevDteDev.Value;

    EdDteDev.SetFocus;

  end;
end;

procedure TfmManDn1_NFE.FatDv2NCMDV2GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := Trim(FatDv2ClsIpi.Value);
end;

procedure TfmManDn1_NFE.EdDteDevEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := '';
end;

procedure TfmManDn1_NFE.DsFatDv2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnDesDv2.Caption := FatDv2DesDv2.Value;

  pnBasIcm.Caption := FormatFloat('###,###,##0.00', FatDevBasIcm.Value);
  pnTotIcm.Caption := FormatFloat('###,###,##0.00', FatDevTotIcm.Value);
  pnBasSub.Caption := FormatFloat('###,###,##0.00', FatDevBasSub.Value);
  pnTotSub.Caption := FormatFloat('###,###,##0.00', FatDevTotSub.Value);
  pnTotFat.Caption := FormatFloat('###,###,##0.00', FatDevTotDev.Value);
  pnTotFrt.Caption := FormatFloat('###,###,##0.00', FatDevTotFrt.Value);
  pnTotSeg.Caption := FormatFloat('###,###,##0.00', FatDevTotSeg.Value);
  pnTotDes.Caption := FormatFloat('###,###,##0.00', FatDevTotDes.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00', FatDevTotIpi.Value);
  pnTotGer.Caption := FormatFloat('###,###,##0.00', FatDevTotGer.Value);

  pnNroDv2.Caption := FNumZeros(IntToStr(FatDv2NroDv2.Value), 3) + '/' + FNumZeros(IntToStr(FatDevQtiDev.Value), 3);

end;

procedure TfmManDn1_NFE.EdCodPfaExit(Sender: TObject);
var
  LocPfa, vcodicm: string;
begin
  inherited;
  if FatDEVUfeDEV.Value = 'EX' then
    LocPfa := 'Importacao ou Exportacao'
  else
  begin

    if FatDEVUfeDEV.Value <> GUfeEmp then
      LocPfa := 'Outros Estados'
    else
      LocPfa := 'Mesmo Estado'

  end;

  with quSql, SQL do
  begin

    Close;
    Text := ' Select DscPfa, modpfa, ATUEST, INTFIN, codicm From EstPfa ' +
      ' Where TipPfa = :TipPfa' +
      '   and CodPfa = :CodPfa' +
      '   and LocPfa = :LocPfa';

    with Params do
    begin

      Params[0].AsString := FatDEVTipPfa.Value;
      Params[1].AsString := FatDEVCodPfa.Value;
      Params[2].AsString := LocPfa;

    end;

    Open;
    FatDEVMODPFA.Value := quSql.FieldbyName('MODPfa').AsString;
    FatDEVLANEST.Value := quSql.FieldbyName('atuest').AsString;
    FatDEVINTFIN.Value := quSql.FieldbyName('intfin').AsString;
    vcodicm := '';
    VCODICM := quSql.FieldbyName('CODICM').AsString;

    if ((vcodicm = '') or (vcodicm = '0')) then
      fmsgErro('Padrão de Faturamento Informado Sem regra de ICMS', EdCodPfa);

  end;

end;

end.
