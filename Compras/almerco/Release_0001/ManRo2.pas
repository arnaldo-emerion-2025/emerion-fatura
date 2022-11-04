unit ManRo2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxDBColorDateEdit, dxDBColorEdit;

type
  TfmManRo2 = class(TfmPadrao)
    PaintBox: TPaintBox;
    CmpNfs: TwwQuery;
    CmpNf2: TwwQuery;
    UpNfs: TUpdateSQL;
    UpNf2: TUpdateSQL;
    DsNf2: TDataSource;
    DsNfs: TDataSource;
    quSql: TwwQuery;
    grPe21: TdxDBGraphicEdit;
    grLabel1: TdxDBGraphicEdit;
    LbText: TLabel;
    Label8: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Label29: TLabel;
    pnId_CmpNfs: TPanel;
    EdId_CmpNfs: TdxDBColorEdit;
    Label1: TLabel;
    EdCodEmp: TdxDBColorEdit;
    pnApeEmp: TPanel;
    EdApeEmp: TdxDBColorEdit;
    Label2: TLabel;
    EdDteFat: TdxDBColorDateEdit;
    Label4: TLabel;
    Label16: TLabel;
    pnUfeNfs: TPanel;
    EdUfeNfs: TdxDBColorEdit;
    Label12: TLabel;
    EdFrtNfs: TdxDBColorPickEdit;
    Label5: TLabel;
    EdCodPfa: TdxDBColorEdit;
    pnNomPfa: TPanel;
    EdNomPfa: TdxDBColorEdit;
    EdCodFor: TdxDBColorEdit;
    bpsqFor: TSpeedButton;
    EdNomCli: TdxDBColorEdit;
    pnNomFor: TPanel;
    bpsqEmp: TSpeedButton;
    bpsqPfa: TSpeedButton;
    CmpNf2CODCLP: TStringField;
    CmpNf2CODGRU: TStringField;
    CmpNf2CODSUB: TStringField;
    CmpNf2CODPRO: TStringField;
    Panel4: TPanel;
    EdBasIc1: TdxDBColorCurrencyEdit;
    pnBasIc1: TPanel;
    Label28: TLabel;
    pnTotFrt: TPanel;
    EdTotFrt: TdxDBColorCurrencyEdit;
    Label38: TLabel;
    EdTotIc1: TdxDBColorCurrencyEdit;
    pnTotIc1: TPanel;
    Label33: TLabel;
    EdTotSeg: TdxDBColorCurrencyEdit;
    pnTotSeg: TPanel;
    Label39: TLabel;
    EdBasSu1: TdxDBColorCurrencyEdit;
    pnBasSu1: TPanel;
    Label34: TLabel;
    EdTotDes: TdxDBColorCurrencyEdit;
    pnTotDes: TPanel;
    Label40: TLabel;
    EdTotSu1: TdxDBColorCurrencyEdit;
    pnTotSu1: TPanel;
    Label35: TLabel;
    EdTotIp1: TdxDBColorCurrencyEdit;
    pnTotIp1: TPanel;
    Label41: TLabel;
    EdTotIt1: TdxDBColorCurrencyEdit;
    pnTotIt1: TPanel;
    Label36: TLabel;
    EdTotGe1: TdxDBColorCurrencyEdit;
    pnTotGe1: TPanel;
    Label42: TLabel;
    CmpNfsCODEMP: TIntegerField;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsHREFAT: TStringField;
    CmpNfsUFENFS: TStringField;
    CmpNfsCODPFA: TStringField;
    CmpNfsTIPPFA: TStringField;
    CmpNfsMODPFA: TStringField;
    CmpNfsCODFOR: TIntegerField;
    CmpNfsPERPIS: TFloatField;
    CmpNfsPERCOF: TFloatField;
    CmpNfsCODFIL: TIntegerField;
    CmpNfsQTDNFS: TIntegerField;
    CmpNfsNRONFS: TIntegerField;
    CmpNfsCGCFOR: TStringField;
    CmpNfsINSFOR: TStringField;
    CmpNfsCODCF1: TStringField;
    CmpNfsCODCF2: TStringField;
    CmpNfsFRTNFS: TStringField;
    CmpNfsFLGENT: TStringField;
    CmpNfsFLGSAI: TStringField;
    CmpNfsDESNAT: TStringField;
    CmpNfsINSSUB: TStringField;
    CmpNfsTIPFRT: TStringField;
    CmpNfsMARNFS: TStringField;
    CmpNfsNUMNFS: TStringField;
    CmpNfsESPNFS: TStringField;
    CmpNfsNOMTRA: TStringField;
    CmpNfsCGCTRA: TStringField;
    CmpNfsINSTRA: TStringField;
    CmpNfsCEPTRA: TStringField;
    CmpNfsTENTRA: TStringField;
    CmpNfsENDTRA: TStringField;
    CmpNfsREFTRA: TStringField;
    CmpNfsNUMTRA: TStringField;
    CmpNfsBAITRA: TStringField;
    CmpNfsCIDTRA: TStringField;
    CmpNfsUFETRA: TStringField;
    CmpNfsPLCTRA: TStringField;
    CmpNfsPRTTRA: TStringField;
    CmpNfsFONTRA: TStringField;
    CmpNfsUFEPLC: TStringField;
    CmpNfsCEPFOR: TStringField;
    CmpNfsTENFOR: TStringField;
    CmpNfsENDFOR: TStringField;
    CmpNfsREFFOR: TStringField;
    CmpNfsNUMFOR: TStringField;
    CmpNfsBAIFOR: TStringField;
    CmpNfsCIDFOR: TStringField;
    CmpNfsUFEFOR: TStringField;
    CmpNfsQTINFS: TIntegerField;
    CmpNfsLINNFS: TIntegerField;
    CmpNfsQTDVOL: TIntegerField;
    CmpNfsALTVOL: TIntegerField;
    CmpNfsINFLIQ: TFloatField;
    CmpNfsTOTLIQ: TFloatField;
    CmpNfsINFBRT: TFloatField;
    CmpNfsTOTBRT: TFloatField;
    CmpNfsBASIPI: TFloatField;
    CmpNfsTOTIPI: TFloatField;
    CmpNfsBASICM: TFloatField;
    CmpNfsTOTICM: TFloatField;
    CmpNfsBASSUB: TFloatField;
    CmpNfsTOTSUB: TFloatField;
    CmpNfsTOTITE: TFloatField;
    CmpNfsTOTGER: TFloatField;
    CmpNfsTOTPIS: TFloatField;
    CmpNfsTOTCOF: TFloatField;
    CmpNfsTOTFRT: TFloatField;
    CmpNfsTOTSEG: TFloatField;
    CmpNfsTOTDES: TFloatField;
    CmpNfsBSICMF: TFloatField;
    CmpNfsBAICMF: TFloatField;
    CmpNfsTOICMF: TFloatField;
    CmpNfsBSICMS: TFloatField;
    CmpNfsBAICMS: TFloatField;
    CmpNfsTOICMS: TFloatField;
    CmpNfsBSICMD: TFloatField;
    CmpNfsBAICMD: TFloatField;
    CmpNfsTOICMD: TFloatField;
    CmpNfsBSIPIF: TFloatField;
    CmpNfsBAIPIF: TFloatField;
    CmpNfsTOIPIF: TFloatField;
    CmpNfsBSIPIS: TFloatField;
    CmpNfsBAIPIS: TFloatField;
    CmpNfsTOIPIS: TFloatField;
    CmpNfsBSIPID: TFloatField;
    CmpNfsBAIPID: TFloatField;
    CmpNfsTOIPID: TFloatField;
    CmpNfsBASIP1: TFloatField;
    CmpNfsTOTIP1: TFloatField;
    CmpNfsBASIC1: TFloatField;
    CmpNfsTOTIC1: TFloatField;
    CmpNfsBASSU1: TFloatField;
    CmpNfsTOTSU1: TFloatField;
    CmpNfsTOTIT1: TFloatField;
    CmpNfsTOTGE1: TFloatField;
    CmpNfsCODUSU: TIntegerField;
    CmpNfsHRCNFS: TStringField;
    CmpNfsDTCNFS: TDateTimeField;
    CmpNfsUSCNFS: TIntegerField;
    CmpNfsATUEST: TStringField;
    CmpNfsLANEST: TStringField;
    CmpNfsINTFIN: TStringField;
    CmpNfsCONSUM: TStringField;
    CmpNfsFLGCTB: TStringField;
    CmpNfsCODIPI: TStringField;
    CmpNfsTIPIPI: TStringField;
    CmpNfsTRBIPI: TStringField;
    CmpNfsREDIPI: TFloatField;
    CmpNfsBSCIPI: TFloatField;
    CmpNfsCODICM: TStringField;
    CmpNfsTIPICM: TStringField;
    CmpNfsTRBICM: TStringField;
    CmpNfsREDICM: TFloatField;
    CmpNfsBSCICM: TFloatField;
    CmpNfsINCREV: TFloatField;
    CmpNfsINCFIN: TFloatField;
    CmpNfsNROCOL: TStringField;
    CmpNfsSITNFS: TStringField;
    CmpNfsFLGATU: TStringField;
    CmpNf2CODEIT: TIntegerField;
    CmpNf2CODTAM: TStringField;
    CmpNf2CODCOR: TStringField;
    CmpNf2DESNF2: TStringField;
    CmpNf2OBSNF2: TStringField;
    CmpNf2CODST1: TStringField;
    CmpNf2CODST2: TStringField;
    CmpNf2CODUND: TStringField;
    CmpNf2REFNF2: TStringField;
    CmpNf2LIQNF2: TFloatField;
    CmpNf2BRTNF2: TFloatField;
    CmpNf2LINNF2: TIntegerField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2QTDNF2: TFloatField;
    CmpNf2SLDNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2CLSIPI: TStringField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2BASIPI: TFloatField;
    CmpNf2TOTIPI: TFloatField;
    CmpNf2BASICM: TFloatField;
    CmpNf2TOTICM: TFloatField;
    CmpNf2BASSUB: TFloatField;
    CmpNf2TOTSUB: TFloatField;
    CmpNf2TOTITE: TFloatField;
    CmpNf2TOTNF2: TFloatField;
    CmpNf2TOTLIQ: TFloatField;
    CmpNf2TOTBRT: TFloatField;
    CmpNf2TOTPIS: TFloatField;
    CmpNf2TOTCOF: TFloatField;
    CmpNf2CODSTR: TStringField;
    CmpNf2TIPSTR: TStringField;
    CmpNf2REGIPI: TStringField;
    CmpNf2TIPIPI: TStringField;
    CmpNf2TRBIPI: TStringField;
    CmpNf2REDIPI: TFloatField;
    CmpNf2BSCIPI: TFloatField;
    CmpNf2REGICM: TStringField;
    CmpNf2TIPICM: TStringField;
    CmpNf2TRBICM: TStringField;
    CmpNf2REDICM: TFloatField;
    CmpNf2BSCICM: TFloatField;
    CmpNf2INCREV: TFloatField;
    CmpNf2INCFIN: TFloatField;
    CmpNf2NRONFS: TIntegerField;
    CmpNf2NRONF2: TIntegerField;
    CmpNf2FLGATU: TStringField;
    Label52: TLabel;
    EdCodTip: TdxDBColorCurrencyEdit;
    CmpNfsCODTIP: TIntegerField;
    CmpNfsFLGENV: TStringField;
    CmpNfsFLGSIN: TStringField;
    CmpNfsOB1NFS: TStringField;
    CmpNfsOB2NFS: TStringField;
    CmpNfsOB3NFS: TStringField;
    CmpNfsOB4NFS: TStringField;
    CmpNfsOB5NFS: TStringField;
    CmpNfsOB6NFS: TStringField;
    CmpNfsOB7NFS: TStringField;
    CmpNfsOB8NFS: TStringField;
    CmpNf2FLGENT: TStringField;
    CmpNf2QTINFE: TIntegerField;
    CmpNf2CODTXF: TStringField;
    CmpNfsNOMENT: TStringField;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsDTFNFS: TDateTimeField;
    CmpNfsHRFNFS: TStringField;
    CmpNfsUSFNFS: TIntegerField;
    CmpNfsTRBPIS: TStringField;
    CmpNfsTRBCOF: TStringField;
    CmpNfsSEQNFS: TStringField;
    CmpNf2ID_CMPNF2: TIntegerField;
    CmpNf2ID_CMPNFS: TIntegerField;
    CmpNf2QTNNF2: TFloatField;
    CmpNf2CODCFO: TStringField;
    CmpNf2TRBSUB: TStringField;
    CmpNf2ICMSUB: TFloatField;
    CmpNf2MRGSUB: TFloatField;
    CmpNf2BASESB: TFloatField;
    CmpNfsFLGIMP: TStringField;
    CmpNfsOBCNF1: TStringField;
    CmpNfsOBCNF2: TStringField;
    CmpNfsOBCNF3: TStringField;
    CmpNfsOBFNF1: TStringField;
    CmpNfsOBFNF2: TStringField;
    CmpNfsOBFNF3: TStringField;
    CmpNfsQTDNOT: TIntegerField;
    CmpNfsNRONOT: TIntegerField;
    CmpNfsSERNOT: TStringField;
    CmpNfsSERSEL: TStringField;
    CmpNfsFLGSEG: TStringField;
    CmpNfsSEQINI: TIntegerField;
    CmpNfsSEQFIN: TIntegerField;
    CmpNfsCODTRA: TIntegerField;
    CmpNf2ID_CMPNFG: TIntegerField;
    CmpNf2ID_CMPNF3: TIntegerField;
    CmpNf2NRONOT: TIntegerField;
    CmpNfsTXFIPI: TStringField;
    CmpNfsTXFICM: TStringField;
    CmpNfsFLGNFS: TStringField;
    grLabel2: TPanel;
    Label32: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label24: TLabel;
    Label27: TLabel;
    Label50: TLabel;
    Label3: TLabel;
    grNf2: ThGrid;
    Panel3: TPanel;
    Label44: TLabel;
    Label43: TLabel;
    EdNroNf2: TdxDBColorCurrencyEdit;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpNf2: TdxDBColorCurrencyEdit;
    EdVluNf2: TdxDBColorCurrencyEdit;
    EdIpiNf2: TdxDBColorCurrencyEdit;
    EdIcmNf2: TdxDBColorCurrencyEdit;
    EdCodSt1: TdxDBColorEdit;
    EdCodSt2: TdxDBColorEdit;
    EdTotNf2: TdxDBColorCurrencyEdit;
    EdCodCfo: TdxDBColorEdit;
    EdClsIpi: TdxDBColorEdit;
    EdCodUnd: TdxDBColorEdit;
    EdCodClp: TdxDBColorEdit;
    pnNroNf2: TPanel;
    EdObsNf2: TdxDBColorEdit;
    pnObsNf2: TPanel;
    EdDesNf2: TdxDBColorEdit;
    pnDesNf2: TPanel;
    CmpNfsVALTMO: TFloatField;
    CmpNfsID_CMPPED: TIntegerField;
    CmpNfsOB1OPE: TStringField;
    CmpNfsOB2OPE: TStringField;
    CmpNfsOB3OPE: TStringField;
    CmpNfsOB4OPE: TStringField;
    CmpNfsOB5OPE: TStringField;
    CmpNfsCEFFOR: TStringField;
    CmpNfsTEFFOR: TStringField;
    CmpNfsENFFOR: TStringField;
    CmpNfsRFFFOR: TStringField;
    CmpNfsNRFFOR: TStringField;
    CmpNfsBAFFOR: TStringField;
    CmpNfsCIFFOR: TStringField;
    CmpNfsID_FINUFF: TIntegerField;
    CmpNfsID_FINCIF: TIntegerField;
    CmpNfsID_TRAUFE: TIntegerField;
    CmpNfsID_TRACIE: TIntegerField;
    CmpNfsID_FINUFE: TIntegerField;
    CmpNfsID_FINCIE: TIntegerField;
    CmpNfsNFEPIS: TStringField;
    CmpNfsNFECOF: TStringField;
    CmpNfsFLGNFE: TStringField;
    CmpNfsENVNFE: TStringField;
    CmpNfsSEQNFE: TStringField;
    CmpNfsDTENFE: TDateTimeField;
    CmpNfsRECNFE: TStringField;
    CmpNfsPRONFE: TStringField;
    CmpNfsLOTNFE: TIntegerField;
    CmpNfsDTEPNF: TDateTimeField;
    CmpNfsHREPNF: TStringField;
    CmpNfsDOPNFE: TDateTimeField;
    CmpNfsHRENFE: TStringField;
    CmpNfsUSUNFE: TIntegerField;
    CmpNfsIMPNFE: TStringField;
    CmpNfsRETNFE: TStringField;
    CmpNfsDTECNE: TDateTimeField;
    CmpNfsHRECNE: TStringField;
    CmpNfsARQNFE: TBlobField;
    CmpNfsDTCNFE: TDateTimeField;
    CmpNfsHRCNFE: TStringField;
    CmpNfsPRCNFE: TStringField;
    CmpNfsUFFFOR: TStringField;
    CmpNf2VALNF2: TFloatField;
    CmpNf2FLGINT: TStringField;
    CmpNf2PRODEP: TStringField;
    CmpNf2TOTFRT: TFloatField;
    CmpNf2TOTSEG: TFloatField;
    CmpNf2TOTDES: TFloatField;
    CmpNf2BAICMF: TFloatField;
    CmpNf2TOICMF: TFloatField;
    CmpNf2BAICMS: TFloatField;
    CmpNf2TOICMS: TFloatField;
    CmpNf2BAICMD: TFloatField;
    CmpNf2TOICMD: TFloatField;
    CmpNf2BAIPIF: TFloatField;
    CmpNf2TOIPIF: TFloatField;
    CmpNf2BAIPIS: TFloatField;
    CmpNf2TOIPIS: TFloatField;
    CmpNf2BAIPID: TFloatField;
    CmpNf2TOIPID: TFloatField;
    CmpNfsCGEFOR: TStringField;
    CmpNfsINEFOR: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure grNf2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Panel4Exit(Sender: TObject);
    procedure DsNf2DataChange(Sender: TObject; Field: TField);
    procedure EdDteFatEnter(Sender: TObject);
    procedure grNf2Enter(Sender: TObject);
    procedure EdDteFatExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure EdCodCfoKeyPress(Sender: TObject; var Key: Char);
  private
    sEnc : string;
  public
    qticms : integer;
    AntVluNf2 : real;
    DteNfs : TDateTime;
    CodEmp,SeqNfs : integer;
    psaida,Finalizar : string;
  end;

var
  fmManRo2: TfmManRo2;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManLro, ManRo3;

{$R *.DFM}

procedure TfmManRo2.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  Finalizar := 'N';
  
end;

procedure TfmManRo2.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManRo2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManRo2 := Nil;
end;

procedure TfmManRo2.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManRo2.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManRo2.Panel1Exit(Sender: TObject);
begin
  inherited;

  if CmpNfsDteFat.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdDteFat);

  with CmpNfs do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if CmpNfs.State = dsBrowse then CmpNfs.Edit;

          EdDteFat.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  bPsqEmp.Enabled := False;
  bPsqFor.Enabled := False;
  bPsqPfa.Enabled := False;

  EdCodTip.Enabled := False;
  EdCodEmp.Enabled := False;
  EdDteFat.Enabled := False;
  EdCodFor.Enabled := False;
  EdFrtNfs.Enabled := False;
  EdCodPfa.Enabled := False;

  EdCodTip.Font.Style := [fsBold];
  EdCodEmp.Font.Style := [fsBold];
  EdDteFat.Font.Style := [fsBold];
  EdCodFor.Font.Style := [fsBold];
  EdFrtNfs.Font.Style := [fsBold];
  EdCodPfa.Font.Style := [fsBold];

  grNf2.SetFocus;

end;

procedure TfmManRo2.grNf2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 116 then begin

     if CmpNf2Id_CmpNf2.Value > 0 then begin

        pnBasIc1.Visible := False;
        pnTotIc1.Visible := False;
        pnBasSu1.Visible := False;
        pnTotSu1.Visible := False;
        pnTotIt1.Visible := False;
        pnTotFrt.Visible := False;
        pnTotSeg.Visible := False;
        pnTotDes.Visible := False;
        pnTotIp1.Visible := False;
        pnTotGe1.Visible := False;

        EdBasIc1.Enabled := True;
        EdTotIc1.Enabled := True;
        EdBasSu1.Enabled := True;
        EdTotSu1.Enabled := True;
        EdTotIt1.Enabled := True;
        EdTotFrt.Enabled := True;
        EdTotSeg.Enabled := True;
        EdTotDes.Enabled := True;
        EdTotIp1.Enabled := True;
        EdTotGe1.Enabled := True;

        EdBasIc1.Font.Style := [];
        EdTotIc1.Font.Style := [];
        EdBasSu1.Font.Style := [];
        EdTotSu1.Font.Style := [];
        EdTotIt1.Font.Style := [];
        EdTotFrt.Font.Style := [];
        EdTotSeg.Font.Style := [];
        EdTotDes.Font.Style := [];
        EdTotIp1.Font.Style := [];
        EdTotGe1.Font.Style := [];

        EdBasIc1.Value := CmpNfsBasIc1.Value;
        EdTotIc1.Value := CmpNfsTotIc1.Value;
        EdBasSu1.Value := CmpNfsBasSu1.Value;
        EdTotSu1.Value := CmpNfsTotSu1.Value;
        EdTotIt1.Value := CmpNfsTotIt1.Value;
        EdTotFrt.Value := CmpNfsTotFrt.Value;
        EdTotSeg.Value := CmpNfsTotSeg.Value;
        EdTotDes.Value := CmpNfsTotDes.Value;
        EdTotIp1.Value := CmpNfsTotIp1.Value;
        EdTotGe1.Value := CmpNfsTotGe1.Value;

        CmpNfs.Edit;

        EdBasIc1.SetFocus;

     end;
  end;
end;

procedure TfmManRo2.FormShow(Sender: TObject);
begin
  inherited;

  CmpNfs.Close;
  CmpNfs.Params[0].AsInteger := fmManLro.Id_CmpNfs;
  CmpNfs.Open;

  if Trim(CmpNfsSitNfs.Value) <> 'Aguardando Emissao de Nota Fiscal' then
     sEnc := 'S'
  else
     begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

          if GFlgAce = 'Sim' then Text := Text + ' and CodFil > '+ QuotedStr('0');

          with Params do begin

               Params[0].AsInteger := CmpNfsCodEmp.Value;

          end;

          Open;

          pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select DscPfa From EstPfa Where EstPfa.CodPfa = '+ QuotedStr(CmpNfsCodPfa.Value) +' and EstPfa.TipPfa = '+ QuotedStr(CmpNfsTipPfa.Value);
          Open;

          pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomFor From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpNfsCodFor.Value));
          Open;

          pnNomFor.Caption := FieldbyName('NomFor').AsString;

     end;

     pnUfeNfs.Caption := CmpNfsUfeNfs.Value;

     CmpNfs.Edit;

     bPsqEmp.Enabled := False;
     bPsqFor.Enabled := False;
     bPsqPfa.Enabled := False;

     EdDteFat.Enabled := True;
     EdFrtNfs.Enabled := True;

     EdDteFat.Font.Style := [];
     EdFrtNfs.Font.Style := [];

     EdDteFat.SetFocus;
     
  end;
end;

procedure TfmManRo2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja Realmente Abandonar a Emissao da Nota ?','O') then begin

        if CmpNf2.State <> dsBrowse then CmpNf2.CancelUpdates;

        if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

        fmManLro.CmpNfs.Close;
        fmManLro.CmpNfs.Open;

        fmManLro.CmpNf2.Close;
        fmManLro.CmpNf2.Open;

        Action := CaFree;

        end
     else
        Abort;

     end
  else
     begin

     fmManLro.CmpNfs.Close;
     fmManLro.CmpNfs.Open;

     fmManLro.CmpNf2.Close;
     fmManLro.CmpNf2.Open;

     Action := CaFree;

  end;
end;

procedure TfmManRo2.Panel4Exit(Sender: TObject);
begin
  inherited;
  if CmpNfs.State <> dsBrowse then begin

     with CmpNfs do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if CmpNfs.State = dsBrowse then CmpNfs.Edit;

             EdBasIc1.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     CmpNfs.Close;
     CmpNfs.Open;

     pnBasIc1.Caption := FormatFloat('###,###,##0.00',CmpNfsBasIc1.Value);
     pnTotIc1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIc1.Value);
     pnBasSu1.Caption := FormatFloat('###,###,##0.00',CmpNfsBasSu1.Value);
     pnTotSu1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotSu1.Value);
     pnTotIt1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIt1.Value);
     pnTotFrt.Caption := FormatFloat('###,###,##0.00',CmpNfsTotFrt.Value);
     pnTotSeg.Caption := FormatFloat('###,###,##0.00',CmpNfsTotSeg.Value);
     pnTotDes.Caption := FormatFloat('###,###,##0.00',CmpNfsTotDes.Value);
     pnTotIp1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIp1.Value);
     pnTotGe1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotGe1.Value);

     EdBasIc1.Enabled := False;
     EdTotIc1.Enabled := False;
     EdBasSu1.Enabled := False;
     EdTotSu1.Enabled := False;
     EdTotIt1.Enabled := False;
     EdTotFrt.Enabled := False;
     EdTotSeg.Enabled := False;
     EdTotDes.Enabled := False;
     EdTotIp1.Enabled := False;
     EdTotGe1.Enabled := False;

     EdBasIc1.Font.Style := [fsBold];
     EdTotIc1.Font.Style := [fsBold];
     EdBasSu1.Font.Style := [fsBold];
     EdTotSu1.Font.Style := [fsBold];
     EdTotIt1.Font.Style := [fsBold];
     EdTotFrt.Font.Style := [fsBold];
     EdTotSeg.Font.Style := [fsBold];
     EdTotDes.Font.Style := [fsBold];
     EdTotIp1.Font.Style := [fsBold];
     EdTotGe1.Font.Style := [fsBold];

     pnBasIc1.Visible := True;
     pnTotIc1.Visible := True;
     pnBasSu1.Visible := True;
     pnTotSu1.Visible := True;
     pnTotIt1.Visible := True;
     pnTotFrt.Visible := True;
     pnTotSeg.Visible := True;
     pnTotDes.Visible := True;
     pnTotIp1.Visible := True;
     pnTotGe1.Visible := True;

     grNf2.SetFocus;

     end
  else
     begin

     EdBasIc1.Enabled := False;
     EdTotIc1.Enabled := False;
     EdBasSu1.Enabled := False;
     EdTotSu1.Enabled := False;
     EdTotIt1.Enabled := False;
     EdTotFrt.Enabled := False;
     EdTotSeg.Enabled := False;
     EdTotDes.Enabled := False;
     EdTotIp1.Enabled := False;
     EdTotGe1.Enabled := False;

     EdBasIc1.Font.Style := [fsBold];
     EdTotIc1.Font.Style := [fsBold];
     EdBasSu1.Font.Style := [fsBold];
     EdTotSu1.Font.Style := [fsBold];
     EdTotIt1.Font.Style := [fsBold];
     EdTotFrt.Font.Style := [fsBold];
     EdTotSeg.Font.Style := [fsBold];
     EdTotDes.Font.Style := [fsBold];
     EdTotIp1.Font.Style := [fsBold];
     EdTotGe1.Font.Style := [fsBold];

     pnBasIc1.Visible := True;
     pnTotIc1.Visible := True;
     pnBasSu1.Visible := True;
     pnTotSu1.Visible := True;
     pnTotIt1.Visible := True;
     pnTotFrt.Visible := True;
     pnTotSeg.Visible := True;
     pnTotDes.Visible := True;
     pnTotIp1.Visible := True;
     pnTotGe1.Visible := True;

     grNf2.SetFocus;

  end;
end;

procedure TfmManRo2.DsNf2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  
  if CmpNf2.State = dsBrowse then AntVluNf2 := CmpNf2VluNf2.Value;

  pnDesNf2.Caption := CmpNf2DesNf2.Value;
  pnObsNf2.Caption := CmpNf2ObsNf2.Value;

  pnId_CmpNfs.Caption := IntToStr(CmpNfsId_CmpNfs.Value);

  pnBasIc1.Caption := FormatFloat('###,###,##0.00',CmpNfsBasIc1.Value);
  pnTotIc1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIc1.Value);
  pnBasSu1.Caption := FormatFloat('###,###,##0.00',CmpNfsBasSu1.Value);
  pnTotSu1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotSu1.Value);
  pnTotIt1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIt1.Value);
  pnTotFrt.Caption := FormatFloat('###,###,##0.00',CmpNfsTotFrt.Value);
  pnTotSeg.Caption := FormatFloat('###,###,##0.00',CmpNfsTotSeg.Value);
  pnTotDes.Caption := FormatFloat('###,###,##0.00',CmpNfsTotDes.Value);
  pnTotIp1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotIp1.Value);
  pnTotGe1.Caption := FormatFloat('###,###,##0.00',CmpNfsTotGe1.Value);

  if CmpNf2.State = dsInsert then
     pnNroNf2.Caption := FNumZeros(IntToStr(CmpNf2NroNf2.Value),4)+'/'+FNumZeros(IntToStr(CmpNfsQtiNfs.Value + 1),4)
  else
     pnNroNf2.Caption := FNumZeros(IntToStr(CmpNf2NroNf2.Value),4)+'/'+FNumZeros(IntToStr(CmpNfsQtiNfs.Value),4);

end;

procedure TfmManRo2.EdDteFatEnter(Sender: TObject);
begin
  inherited;
  LbText.Caption := ' ';
end;

procedure TfmManRo2.grNf2Enter(Sender: TObject);
begin
  inherited;
  LbText.Caption := 'F5-Alterar Dados da Nota';
end;

procedure TfmManRo2.EdDteFatExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then EdDteFat.SetFocus;
end;

procedure TfmManRo2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if EdBasIc1.Enabled then begin

        if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

        EdBasIc1.Enabled := False;
        EdTotIc1.Enabled := False;
        EdBasSu1.Enabled := False;
        EdTotSu1.Enabled := False;
        EdTotIt1.Enabled := False;
        EdTotFrt.Enabled := False;
        EdTotSeg.Enabled := False;
        EdTotDes.Enabled := False;
        EdTotIp1.Enabled := False;
        EdTotGe1.Enabled := False;

        EdBasIc1.Font.Style := [fsBold];
        EdTotIc1.Font.Style := [fsBold];
        EdBasSu1.Font.Style := [fsBold];
        EdTotSu1.Font.Style := [fsBold];
        EdTotIt1.Font.Style := [fsBold];
        EdTotFrt.Font.Style := [fsBold];
        EdTotSeg.Font.Style := [fsBold];
        EdTotDes.Font.Style := [fsBold];
        EdTotIp1.Font.Style := [fsBold];
        EdTotGe1.Font.Style := [fsBold];

        pnBasIc1.Visible := True;
        pnTotIc1.Visible := True;
        pnBasSu1.Visible := True;
        pnTotSu1.Visible := True;
        pnTotIt1.Visible := True;
        pnTotFrt.Visible := True;
        pnTotSeg.Visible := True;
        pnTotDes.Visible := True;
        pnTotIp1.Visible := True;
        pnTotGe1.Visible := True;

        grNf2.SetFocus;

        end
     else
        begin

        if grNf2.Focused then
           Close
        else
           begin

           if CmpNfs.State <> dsBrowse then Close;

        end;
     end;
  end;

  if key = 123 then begin {F12-Finalizar Pedido}

     if CmpNfsQtiNfs.Value > 0 then begin

        if grNf2.Focused then begin

           try

              fmManRo3 := TfmManRo3.Create(Self);
              fmManRo3.ShowModal;

           finally

              FreeAndNil(fmManRo3);

           end;

           if Finalizar = 'S' then
              Close
           else
              grNf2.SetFocus;

        end;
     end;
  end;
end;

procedure TfmManRo2.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if Trim(CmpNfsSitNfs.Value) = 'Concluido' then fMsg('Operação não Pode ser Realizada. Romaneio Concluido.','E')

     else if Trim(CmpNfsSitNfs.Value) = 'Nao Concluido' then fMsg('Operação não Pode ser Realizada. Romaneio não Concluido.','E')

     else if Trim(CmpNfsSitNfs.Value) = 'Recebido' then fMsg('Operação não Pode ser Realizada. Romaneio com Recebimentos já Realizados.','E')

     else if Trim(CmpNfsSitNfs.Value) = 'Recebido Parcialmente' then fMsg('Operação não Pode ser Realizada. Romaneio com Recebimentos já Realizados.','E')

     else if Trim(CmpNfsSitNfs.Value) = 'Saldo Nao Atendido' then fMsg('Operação não Pode ser Realizada. Romaneio com Saldo não Atendido.','E')

     else if Trim(CmpNfsSitNfs.Value) = 'Cancelado' then fMsg('Operação não Pode ser Realizada. Romaneio Cancelado.','E')

     else if Trim(CmpNfsSitNfs.Value) = 'Processo de Alteracao' then fMsg('Operação não Pode ser Realizada. Romaneio em Processo de Alteração.','E');

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManRo2.EdCodCfoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not ( key in [ '0'..'9' ] )) and (not ( key in ['.'] )) then key := #0;
end;

end.
