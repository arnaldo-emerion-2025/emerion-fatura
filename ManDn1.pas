unit ManDn1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManDn1 = class(TfmPadrao)
    PaintBox: TPaintBox;
    FatDev: TwwQuery;
    FatDv2: TwwQuery;
    DsDv2: TDataSource;
    DsDev: TDataSource;
    quSql: TwwQuery;
    LbText: TLabel;
    Label22: TLabel;
    UpDev: TUpdateSQL;
    Label44: TLabel;
    Label43: TLabel;
    pnNroDv2: TPanel;
    EdSeqDv2: TdxDBColorCurrencyEdit;
    Shape4: TShape;
    Shape2: TShape;
    Shape1: TShape;
    Shape5: TShape;
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
    EdNomEmp: TdxDBColorEdit;
    pnNomEmp: TPanel;
    EdNomCli: TdxDBColorEdit;
    pnNomCli: TPanel;
    pnUfeDev: TPanel;
    EdUfeDev: TdxDBColorEdit;
    EdNomVen: TdxDBColorEdit;
    pnNomVen: TPanel;
    EdCodPfa: TdxDBColorEdit;
    EdNomPfa: TdxDBColorEdit;
    pnNomPfa: TPanel;
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
    Label17: TLabel;
    Label14: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label23: TLabel;
    FatDv2CODGRU: TStringField;
    FatDv2CODSUB: TStringField;
    FatDv2CODUND: TStringField;
    FatDv2QTPDV2: TFloatField;
    FatDv2VLQDV2: TFloatField;
    FatDv2IPIDV2: TFloatField;
    FatDv2ICMDV2: TFloatField;
    FatDv2TOTIPI: TFloatField;
    FatDv2TOTDV2: TFloatField;
    FatDv2CODSIT: TStringField;
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
    FatDevICMFRT: TFloatField;
    FatDevBSICMF: TFloatField;
    FatDevBAICMF: TFloatField;
    FatDevTOICMF: TFloatField;
    FatDevICMSEG: TFloatField;
    FatDevBSICMS: TFloatField;
    FatDevBAICMS: TFloatField;
    FatDevTOICMS: TFloatField;
    FatDevICMDES: TFloatField;
    FatDevBSICMD: TFloatField;
    FatDevBAICMD: TFloatField;
    FatDevTOICMD: TFloatField;
    FatDevIPIFRT: TFloatField;
    FatDevBSIPIF: TFloatField;
    FatDevBAIPIF: TFloatField;
    FatDevTOIPIF: TFloatField;
    FatDevIPISEG: TFloatField;
    FatDevBSIPIS: TFloatField;
    FatDevBAIPIS: TFloatField;
    FatDevTOIPIS: TFloatField;
    FatDevIPIDES: TFloatField;
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
    FatDv2CODEMP: TIntegerField;
    FatDv2DTERES: TDateTimeField;
    FatDv2NUMRES: TIntegerField;
    FatDv2SEQLIB: TIntegerField;
    FatDv2SEQFAT: TIntegerField;
    FatDv2SEQDEV: TIntegerField;
    FatDv2SEQDV2: TIntegerField;
    FatDv2CODEIT: TIntegerField;
    FatDv2CODCLP: TStringField;
    FatDv2CODPRO: TStringField;
    FatDv2CODTAM: TStringField;
    FatDv2CODCOR: TStringField;
    FatDv2DESDV2: TStringField;
    FatDv2OBSDV2: TStringField;
    FatDv2CODST1: TStringField;
    FatDv2CODST2: TStringField;
    FatDv2REFDV2: TStringField;
    FatDv2LIQDV2: TFloatField;
    FatDv2BRTDV2: TFloatField;
    FatDv2LINDV2: TIntegerField;
    FatDv2QTDDV2: TFloatField;
    FatDv2ULTQTD: TFloatField;
    FatDv2SLDDV2: TFloatField;
    FatDv2VLUDV2: TFloatField;
    FatDv2VCHDV2: TFloatField;
    FatDv2VREDV2: TFloatField;
    FatDv2VCPDV2: TFloatField;
    FatDv2VPRDV2: TFloatField;
    FatDv2DSRDV2: TFloatField;
    FatDv2VDRDV2: TFloatField;
    FatDv2CLSIPI: TStringField;
    FatDv2BASIPI: TFloatField;
    FatDv2BASICM: TFloatField;
    FatDv2TOTICM: TFloatField;
    FatDv2BASSUB: TFloatField;
    FatDv2TOTSUB: TFloatField;
    FatDv2TOTGE2: TFloatField;
    FatDv2TOTLIQ: TFloatField;
    FatDv2TOTBRT: TFloatField;
    FatDv2TOTDSR: TFloatField;
    FatDv2TOTPIS: TFloatField;
    FatDv2TOTCOF: TFloatField;
    FatDv2BASCOM: TFloatField;
    FatDv2TOTCOM: TFloatField;
    FatDv2CODSTR: TStringField;
    FatDv2TIPSTR: TStringField;
    FatDv2REGIPI: TStringField;
    FatDv2TIPIPI: TStringField;
    FatDv2TRBIPI: TStringField;
    FatDv2REDIPI: TFloatField;
    FatDv2BSCIPI: TFloatField;
    FatDv2REGICM: TStringField;
    FatDv2TIPICM: TStringField;
    FatDv2TRBICM: TStringField;
    FatDv2REDICM: TFloatField;
    FatDv2BSCICM: TFloatField;
    FatDv2INCREV: TFloatField;
    FatDv2INCFIN: TFloatField;
    FatDv2FLASEQ: TStringField;
    FatDv2NRONFS: TIntegerField;
    FatDv2SEQNFS: TIntegerField;
    FatDv2SEQRE2: TIntegerField;
    FatDv2SEQPE2: TIntegerField;
    FatDv2NROPE2: TIntegerField;
    FatDv2CODVWA: TStringField;
    FatDv2FLGREQ: TStringField;
    FatDv2FLGDUP: TStringField;
    FatDv2NRODV2: TIntegerField;
    FatDv2CODITE: TStringField;
    FatDv2SEQNFD: TIntegerField;
    FatDv2SEQDV3: TIntegerField;
    FatDv2QTDRMA: TFloatField;
    FatDv2CLAIPI: TStringField;
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
    FatDv2CODTXF: TStringField;
    FatDevFLGIMP: TStringField;
    FatDevNOMENT: TStringField;
    FatDevQTDDSE: TIntegerField;
    FatDevSEQDSE: TIntegerField;
    FatDevTOTDSE: TFloatField;
    FatDevBASISS: TFloatField;
    FatDevTOTISS: TFloatField;
    grLabel1: TdxDBGraphicEdit;
    FatDv2CODCFO: TStringField;
    FatDv2TRBSUB: TStringField;
    FatDv2ICMSUB: TFloatField;
    FatDv2MRGSUB: TFloatField;
    FatDv2BASESB: TFloatField;
    grPe21: TdxDBGraphicEdit;
    grDv2: ThGrid;
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
    Panel2: TPanel;
    EdDesPe2: TdxDBColorEdit;
    EdObsPe2: TdxDBColorEdit;
    pnObsDv2: TPanel;
    pnDesDv2: TPanel;
    Panel3: TPanel;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpDv2: TdxDBColorCurrencyEdit;
    EdVluDv2: TdxDBColorCurrencyEdit;
    EdIpiDv2: TdxDBColorCurrencyEdit;
    EdIcmDv2: TdxDBColorCurrencyEdit;
    EdCodSt1: TdxDBColorEdit;
    EdCodSt2: TdxDBColorEdit;
    EdTotDv2: TdxDBColorCurrencyEdit;
    EdCodCfo: TdxDBColorEdit;
    EdClsIpi: TdxDBColorEdit;
    FatDevTOTFAT: TFloatField;
    FatDevFLGTOT: TStringField;
    FatDevCODTCL: TIntegerField;
    FatDevFLGENV: TStringField;
    FatDevNFSCLI: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdNumNfsKeyPress(Sender: TObject; var Key: Char);
    procedure EdDteDevKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdDteDevMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure Panel1Exit(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsDv2DataChange(Sender: TObject; Field: TField);
  private
  public
    DteRes: TDateTime;
    sEnc, Finalizar: string;
    CodEmp, NumRes, SeqLib, SeqFat, SeqDev: integer;
  end;

var
  fmManDn1: TfmManDn1;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEst, ManDno, ManDn2;

{$R *.DFM}

procedure TfmManDn1.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then
  begin

    if FatDevSitDev.Value = 'Devolvido' then
      fMsg('Operação não Pode ser Realizada. Devolução já Realizada.', 'E');

    Finalizar := 'S';

    Close;

  end;
end;

procedure TfmManDn1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then
  begin

    if fMsg('Deseja Realmente Abandonar a Devolução ?', 'O') then
    begin

      if FatDevNumRes.Value > 0 then
      begin

        if FatDevSitDev.Value = 'Faturando' then
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

              Abort;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;
        end;
      end;

      CodEmp := fmManDno.FatDevCodEmp.Value;
      DteRes := fmManDno.FatDevDteRes.Value;
      NumRes := fmManDno.FatDevNumRes.Value;
      SeqLib := fmManDno.FatDevSeqLib.Value;
      SeqFat := fmManDno.FatDevSeqFat.Value;
      SeqDev := fmManDno.FatDevSeqDev.Value;

      fmManDno.FatDev.Close;
      fmManDno.FatDev.Open;

      if CodEmp > 0 then
        fmManDno.FatDev.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqDev', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib, SeqFat, SeqDev]), [loPartialKey]);

      Action := CaFree;

    end
    else
      Abort;

  end
  else
  begin

    CodEmp := fmManDno.FatDevCodEmp.Value;
    DteRes := fmManDno.FatDevDteRes.Value;
    NumRes := fmManDno.FatDevNumRes.Value;
    SeqLib := fmManDno.FatDevSeqLib.Value;
    SeqFat := fmManDno.FatDevSeqFat.Value;
    SeqDev := fmManDno.FatDevSeqDev.Value;

    fmManDno.FatDev.Close;
    fmManDno.FatDev.Open;

    if CodEmp > 0 then
      fmManDno.FatDev.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqDev', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib, SeqFat, SeqDev]), [loPartialKey]);

    Action := CaFree;

  end;
end;

procedure TfmManDn1.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  Finalizar := 'N';

end;

procedure TfmManDn1.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManDn1 := nil;
end;

procedure TfmManDn1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 115 then
  begin {F4 - Estoque}

    try

      fmPsqEst := TfmPsqEst.Create(Self);

      fmPsqEst.sEntr := 'N';

      fmPsqEst.sCodClp := '1';

      if (Trim(FatDv2CodGru.Value) <> '') or
        (Trim(FatDv2CodSub.Value) <> '') or
        (Trim(FatDv2CodPro.Value) <> '') then
      begin

        with fmPsqEst.EstPro, SQL do
        begin

          Close;
          Text := ' Select EstPro.CodClp,' +
            '        EstPro.CodGru,' +
            '        EstPro.CodSub,' +
            '        EstPro.CodPro,' +
            '        EstPro.DscPro,' +
            '        EstPro.RefPro,' +
            '        EstPro.LocPro,' +
            '        EstPro.CodUne,' +
            '        EstPro.CodUns,' +
            '        EstPro.QtePro,' +
            '        EstPro.QtsPro,' +
            '        EstPro.SaiIpi,' +
            '        EstPro.ClfSai,' +
            '        EstPro.SaiIcm,' +
            '        EstPro.SimPro,' +
            '        EstPro.CodSt1,' +
            '        EstPro.CodSt2,' +
            '        EstPro.QtdEmb,' +
            '        EstPro.ImgPro,' +
            '        EstPro.FlgPro,' +
            '        EstPro.CbaPro,' +
            '        EstPro.WebPro,' +
            '        EstPro.CodCat,' +
            '        EstPro.CodTip,' +
            '        EstPro.CodMrc,' +
            '        EstPro.NumPro,' +
            '        EstPro.CodAnt' +
            ' From EstPro' +
            ' Where EstPro.CodClp = ''' + '1' + '''' +
            '   and EstPro.FlbPro = ''' + ' ' + '''';

          if Trim(FatDv2CodGru.Value) <> '' then
            Text := Text + ' and EstPro.CodGru = ''' + FatDv2CodGru.Value + '''';
          if Trim(FatDv2CodSub.Value) <> '' then
            Text := Text + ' and EstPro.CodSub = ''' + FatDv2CodSub.Value + '''';
          if Trim(FatDv2CodPro.Value) <> '' then
            Text := Text + ' and EstPro.CodPro = ''' + FatDv2CodPro.Value + '''';

          Text := Text + ' Order by EstPro.DscPro';

          Open;

        end;
      end;

      fmPsqEst.ShowModal;

    finally

      FreeAndNil(fmPsqEst);

    end;
  end;

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

      if grDv2.Focused then
      begin

        try

          fmManDn2 := TfmManDn2.Create(Self);

          fmManDn2.ShowModal;

        finally

          FreeAndNil(fmManDn2);

        end;

        if Finalizar = 'S' then
          close;

      end;
    end;
  end;
end;

procedure TfmManDn1.EdNumNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManDn1.EdDteDevKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  LbText.Caption := 'F4-Estoque';
end;

procedure TfmManDn1.EdDteDevMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  LbText.Caption := 'F4-Estoque';
end;

procedure TfmManDn1.Panel1Exit(Sender: TObject);
begin
  inherited;
  if FatDev.State <> dsBrowse then
  begin

    if FatDevDteDev.Value = 0 then
      fmsgErro('Campo de Preenchimento Obrigatorio não Informado', EdDteDev);

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

    grDv2.SetFocus;

  end;
end;

procedure TfmManDn1.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDn1.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManDn1.FormShow(Sender: TObject);
begin
  inherited;

  FatDev.Close;
  FatDev.Params[0].AsInteger := fmManDno.CodEmp;
  FatDev.Params[1].AsDateTime := fmManDno.DteRes;
  FatDev.Params[2].AsInteger := fmManDno.NumRes;
  FatDev.Params[3].AsInteger := fmManDno.SeqLib;
  FatDev.Params[4].AsInteger := fmManDno.SeqFat;
  FatDev.Params[5].AsInteger := fmManDno.SeqDev;
  FatDev.Open;

  FatDv2.Close;
  FatDv2.Params[0].AsInteger := FatDevCodEmp.Value;
  FatDv2.Params[1].AsDateTime := FatDevDteRes.Value;
  FatDv2.Params[2].AsInteger := FatDevNumRes.Value;
  FatDv2.Params[3].AsInteger := FatDevSeqLib.Value;
  FatDv2.Params[4].AsInteger := FatDevSeqFat.Value;
  FatDv2.Params[5].AsInteger := FatDevSeqDev.Value;
  FatDv2.Open;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

    if GFlgAce = 'Sim' then
      Text := Text + ' and CodFil > ''' + '0' + '''';

    with Params do
    begin

      Params[0].AsInteger := FatDevCodEmp.Value;

    end;

    Open;

    pnNomEmp.Caption := FieldbyName('NomEmp').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select NomVen From FinVen Where FinVen.CodVen = :CodVen';

    with Params do
    begin

      Params[0].AsInteger := FatDevCodVen.Value;

    end;

    Open;

    pnNomVen.Caption := FieldbyName('NomVen').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select DscPfa From EstPfa' +
      ' Where EstPfa.TipPfa = :TipPfa' +
      '   and EstPfa.CodPfa = :CodPfa';

    with Params do
    begin

      Params[0].AsString := FatDevTipPfa.Value;
      Params[1].AsString := FatDevCodPfa.Value;

    end;

    Open;

    pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select NomCli From FinCli Where FinCli.CodCli = :CodCli';

    with Params do
    begin

      Params[0].AsInteger := FatDevCodCli.Value;

    end;

    Open;

    pnNomCli.Caption := FieldbyName('NomCli').AsString;

  end;

  pnUfeDev.Caption := FatDevUfeDev.Value;
  pnNumRes.Caption := IntToStr(FatDevNumRes.Value);
  pnCodEmp.Caption := IntToStr(FatDevCodEmp.Value);
  pnCodCli.Caption := IntToStr(FatDevCodCli.Value);
  pnCodVen.Caption := IntToStr(FatDevCodVen.Value);

  if (FatDevSitDev.Value <> 'Nao Concluido') and (FatDevSitDev.Value <> 'Faturando') then
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

procedure TfmManDn1.DsDv2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnDesDv2.Caption := FatDv2DesDv2.Value;
  pnObsDv2.Caption := FatDv2ObsDv2.Value;

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

  pnNroDv2.Caption := FNumZeros(IntToStr(FatDv2NroDv2.Value), 4) + '/' + FNumZeros(IntToStr(FatDevQtiDev.Value), 4);

end;

end.
