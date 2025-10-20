unit ManDno;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, dxColorEdit;

type
  TfmManDno = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label2: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    Bevel3: TBevel;
    quSql: TwwQuery;
    bIncluir: TSpeedButton;
    UpDev: TUpdateSQL;
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    EdPsqNumNfs: TdxColorEdit;
    FatDev: TwwQuery;
    DsDev: TwwDataSource;
    grDev: ThGrid;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
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
    FatDevNOMCLI: TStringField;
    FatDevCODVEN: TIntegerField;
    FatDevAPEVEN: TStringField;
    FatDevNOMVEN: TStringField;
    FatDevLOGUSU: TStringField;
    FatDv2: TwwQuery;
    FatDv2DSCPRO: TStringField;
    FatDv2ULTQTD: TFloatField;
    FatDv2CODEMP: TIntegerField;
    FatDv2DTERES: TDateTimeField;
    FatDv2NUMRES: TIntegerField;
    FatDv2SEQLIB: TIntegerField;
    FatDv2SEQFAT: TIntegerField;
    FatDv2SEQDEV: TIntegerField;
    FatDv2SEQDV2: TIntegerField;
    FatDv2CODEIT: TIntegerField;
    FatDv2CODCLP: TStringField;
    FatDv2CODGRU: TStringField;
    FatDv2CODSUB: TStringField;
    FatDv2CODPRO: TStringField;
    FatDv2CODTAM: TStringField;
    FatDv2CODCOR: TStringField;
    FatDv2DESDV2: TStringField;
    FatDv2OBSDV2: TStringField;
    FatDv2CODST1: TStringField;
    FatDv2CODST2: TStringField;
    FatDv2CODUND: TStringField;
    FatDv2REFDV2: TStringField;
    FatDv2LIQDV2: TFloatField;
    FatDv2BRTDV2: TFloatField;
    FatDv2LINDV2: TIntegerField;
    FatDv2VLUDV2: TFloatField;
    FatDv2VCHDV2: TFloatField;
    FatDv2VREDV2: TFloatField;
    FatDv2VCPDV2: TFloatField;
    FatDv2VPRDV2: TFloatField;
    FatDv2DSRDV2: TFloatField;
    FatDv2VDRDV2: TFloatField;
    FatDv2VLQDV2: TFloatField;
    FatDv2IPIDV2: TFloatField;
    FatDv2CLSIPI: TStringField;
    FatDv2ICMDV2: TFloatField;
    FatDv2BASIPI: TFloatField;
    FatDv2TOTIPI: TFloatField;
    FatDv2BASICM: TFloatField;
    FatDv2TOTICM: TFloatField;
    FatDv2BASSUB: TFloatField;
    FatDv2TOTSUB: TFloatField;
    FatDv2TOTDV2: TFloatField;
    FatDv2TOTGE2: TFloatField;
    FatDv2TOTLIQ: TFloatField;
    FatDv2TOTBRT: TFloatField;
    FatDv2TOTDSR: TFloatField;
    FatDv2TOTPIS: TFloatField;
    FatDv2TOTCOF: TFloatField;
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
    FatDv2NRODV2: TIntegerField;
    FatDv2CODVWA: TStringField;
    FatDv2FLGREQ: TStringField;
    FatDv2FLGDUP: TStringField;
    FatDv2QTDDV2: TFloatField;
    FatDv2SLDDV2: TFloatField;
    FatDv2QTPDV2: TFloatField;
    FatDv2SEQPE2: TIntegerField;
    FatDv2NROPE2: TIntegerField;
    FatDv2BASCOM: TFloatField;
    FatDv2TOTCOM: TFloatField;
    FatDv2SEQRE2: TIntegerField;
    DsDv2: TwwDataSource;
    grDv2: ThGrid;
    FatDv2SEQNFD: TIntegerField;
    FatDv2SEQDV3: TIntegerField;
    FatDevMODPFA: TStringField;
    FatDevFLGNFS: TStringField;
    pnNomCli: TPanel;
    pnLogUsu: TPanel;
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
    FatDevTOTFAT: TFloatField;
    FatDevFLGTOT: TStringField;
    FatDevCODTCL: TIntegerField;
    FatDevFLGENV: TStringField;
    FatDevNFSCLI: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure EdPsqNumNfsChange(Sender: TObject);
    procedure EdPsqNumNfsKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsDevDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes: TDateTime;
    CodEmp, NumRes, SeqLib, SeqFat, SeqDev: integer;
  end;

var
  fmManDno: TfmManDno;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManDn1;

{$R *.DFM}

procedure TfmManDno.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    close;

  if key = 115 then
    bIncluir.OnClick(Sender);

end;

procedure TfmManDno.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumNfs.SetFocus;
end;

procedure TfmManDno.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManDno.bIncluirClick(Sender: TObject);
var
  i: Integer;
  Found: Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    Found := -1;

    for i := 0 to Screen.FormCount - 1 do
    begin

      if Screen.Forms[i] is TfmManDn1 then
        Found := i;

    end;

    if Found >= 0 then
    begin

      fmManDn1.WindowState := wsNormal;
      fmManDn1.BringToFront;

    end
    else
    begin

      if (FatDevSitDev.Value = 'Concluido') or (FatDevSitDev.Value = 'Faturando') then
      begin

        CodEmp := FatDevCodEmp.Value;
        DteRes := FatDevDteRes.Value;
        NumRes := FatDevNumRes.Value;
        SeqLib := FatDevSeqLib.Value;
        SeqFat := FatDevSeqFat.Value;
        SeqDev := FatDevSeqDev.Value;

        if FatDevSitDev.Value = 'Concluido' then
        begin

          FatDev.Edit;

          FatDevSitDev.Value := 'Faturando';

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

              grDev.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;

          FatDev.Close;
          FatDev.Open;

          FatDev.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqDev', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib, SeqFat, SeqDev]), [LoPartialKey]);

        end;

        fmManDn1 := TfmManDn1.Create(Self);
        fmManDn1.Show;

      end
      else
      begin

        if FatDevSitDev.Value = 'Nao Concluido' then
          fmsgErro('Operação não Pode ser Realizada. Entrada Aguardando Conclusão dos Itens a serem Devolvidos.', nil)

        else if FatDevSitDev.Value = 'Processo de Alteracao' then
          fmsgErro('Operação não Pode ser Realizada. Entrada em Processo de Alteração dos Itens Devolvidos.', nil)

      end;
    end;

  end
  else
    fmsgErro(GMensagem_0001, nil);
end;

procedure TfmManDno.EdPsqNumNfsChange(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNumNfs.Text) <> '' then
    FatDev.Locate('NumNfs', EdPsqNumNfs.Text, [LoPartialKey]);
end;

procedure TfmManDno.EdPsqNumNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManDno.SpeedButton1Click(Sender: TObject);
begin
  inherited;

  CodEmp := FatDevCodEmp.Value;
  DteRes := FatDevDteRes.Value;
  NumRes := FatDevNumRes.Value;
  SeqLib := FatDevSeqLib.Value;
  SeqFat := FatDevSeqFat.Value;
  SeqDev := FatDevSeqDev.Value;

  FatDev.Close;
  FatDev.Open;

  FatDev.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqDev', VarArrayOf([CodEmp, DteRes, NumRes, SeqLib, SeqFat, SeqDev]), [LoPartialKey]);

end;

procedure TfmManDno.FormClose(Sender: TObject; var Action: TCloseAction);
var
  i: Integer;
  Found: Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do
  begin

    if Screen.Forms[i] is TfmManDn1 then
      Found := i;

  end;

  if Found >= 0 then
    fmsgErro('Existem Emissões de Nota em Andamento. Por Favor Feche o Formulario.', nil)
  else
    Action := CaFree;

end;

procedure TfmManDno.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManDno := nil;
end;

procedure TfmManDno.DsDevDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnLogUsu.Caption := ' ' + FatDevLogUsu.Value;
  pnNomCli.Caption := ' ' + FatDevNomCli.Value;
end;

end.
