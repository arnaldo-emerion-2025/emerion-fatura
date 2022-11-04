unit ManPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManPed = class(TfmPadrao)
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
    EdUltQts: TdxDBColorCurrencyEdit;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label37: TLabel;
    Label53: TLabel;
    Label68: TLabel;
    Label8: TLabel;
    Label32: TLabel;
    Label15: TLabel;
    EdNomCli: TdxDBColorEdit;
    pnNomCli: TPanel;
    EdNomVen: TdxDBColorEdit;
    EdDscPfa: TdxDBColorEdit;
    pnNomVen: TPanel;
    pnNomPfa: TPanel;
    EdNomEmp: TdxDBColorEdit;
    pnNomEmp: TPanel;
    EdCgcCli: TdxDBColorEdit;
    pnCgcCli: TPanel;
    EdUfeRes: TdxDBColorEdit;
    pnUfeRes: TPanel;
    Label12: TLabel;
    pnNumRes: TPanel;
    EdNumRes: TdxDBColorEdit;
    Label3: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    EdDscPro: TdxDBColorEdit;
    EdVluLb2: TdxDBColorCurrencyEdit;
    EdVcsLb2: TdxDBColorCurrencyEdit;
    EdTotRen: TdxDBColorCurrencyEdit;
    Label22: TLabel;
    PedRes: TwwQuery;
    DsRes: TDataSource;
    PedLb2ULTQTS: TFloatField;
    PedLb2VLQLB2: TFloatField;
    PedLb2VCSLB2: TFloatField;
    PedLb2TOTREN: TFloatField;
    PedLb2DSCPRO: TStringField;
    pnCodCli: TPanel;
    pnTotLib: TPanel;
    Panel2: TPanel;
    pnTotCst: TPanel;
    pnTotRen: TPanel;
    Panel5: TPanel;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    PedResHRERES: TStringField;
    PedResCODCLI: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTIPPFA: TStringField;
    PedResCODTIP: TIntegerField;
    PedResPRFRES: TIntegerField;
    PedResDTFRES: TDateTimeField;
    PedResCODATD: TIntegerField;
    PedResCODFIL: TIntegerField;
    PedResCODTRA: TIntegerField;
    PedResFLGTAB: TStringField;
    PedResUFERES: TStringField;
    PedResCGCCLI: TStringField;
    PedResINSCLI: TStringField;
    PedResCEPCLI: TStringField;
    PedResTENCLI: TStringField;
    PedResENDCLI: TStringField;
    PedResREFCLI: TStringField;
    PedResNUMCLI: TStringField;
    PedResBAICLI: TStringField;
    PedResCIDCLI: TStringField;
    PedResUFECLI: TStringField;
    PedResINECLI: TStringField;
    PedResCGECLI: TStringField;
    PedResOBSRES: TStringField;
    PedResQTIRES: TIntegerField;
    PedResSEQITE: TIntegerField;
    PedResQTPRES: TIntegerField;
    PedResSEQPAR: TIntegerField;
    PedResLINRES: TIntegerField;
    PedResQTLRES: TIntegerField;
    PedResQTFRES: TIntegerField;
    PedResBASIPI: TFloatField;
    PedResTOTIPI: TFloatField;
    PedResBASICM: TFloatField;
    PedResTOTICM: TFloatField;
    PedResBASSUB: TFloatField;
    PedResTOTSUB: TFloatField;
    PedResTOTVEN: TFloatField;
    PedResTOTCST: TFloatField;
    PedResTOTRES: TFloatField;
    PedResTOTREN: TFloatField;
    PedResTOTGER: TFloatField;
    PedResTOTLIQ: TFloatField;
    PedResTOTBRT: TFloatField;
    PedResBASCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResDSCREG: TFloatField;
    PedResDSCCOM: TFloatField;
    PedResTOTDCO: TFloatField;
    PedResMEDDCO: TFloatField;
    PedResMEDACR: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResMEDPRM: TFloatField;
    PedResTOTDSC: TFloatField;
    PedResTOTDSR: TFloatField;
    PedResTOTDSP: TFloatField;
    PedResTOTACR: TFloatField;
    PedResDESREG: TStringField;
    PedResCODUSU: TIntegerField;
    PedResFLGPSQ: TStringField;
    PedResDTLPSQ: TDateTimeField;
    PedResFLGCTB: TStringField;
    PedResFLGAVI: TStringField;
    PedResFLGOCO: TStringField;
    PedResSEQRES: TStringField;
    PedResATUEST: TStringField;
    PedResINTFIN: TStringField;
    PedResCONSUM: TStringField;
    PedResCODIPI: TStringField;
    PedResTIPIPI: TStringField;
    PedResTRBIPI: TStringField;
    PedResREDIPI: TFloatField;
    PedResBSCIPI: TFloatField;
    PedResCODICM: TStringField;
    PedResTIPICM: TStringField;
    PedResTRBICM: TStringField;
    PedResREDICM: TFloatField;
    PedResBSCICM: TFloatField;
    PedResINCREV: TFloatField;
    PedResINCFIN: TFloatField;
    PedResFLGCOM: TStringField;
    PedResDTECOM: TDateTimeField;
    PedResHRECOM: TStringField;
    PedResOBSCOM: TMemoField;
    PedResUSUCOM: TIntegerField;
    PedResPEDANT: TStringField;
    PedResFLGFIN: TStringField;
    PedResDTEFIN: TDateTimeField;
    PedResHREFIN: TStringField;
    PedResOBSFIN: TMemoField;
    PedResUSUFIN: TIntegerField;
    PedResDTEREJ: TDateTimeField;
    PedResHREREJ: TStringField;
    PedResOBSREJ: TMemoField;
    PedResUSUREJ: TIntegerField;
    PedResTXFIPI: TStringField;
    PedResTXFICM: TStringField;
    PedResFLGSLD: TStringField;
    PedResFATRES: TFloatField;
    PedResFATGER: TFloatField;
    PedResDEVRES: TFloatField;
    PedResDEVGER: TFloatField;
    PedResSLDRES: TFloatField;
    PedResSLDGER: TFloatField;
    PedResMEDDSC: TFloatField;
    PedResFLGIMP: TStringField;
    PedResFLGGER: TStringField;
    PedResLIBSLD: TStringField;
    PedResDTEDEL: TDateTimeField;
    PedResHREDEL: TStringField;
    PedResOBSDEL: TMemoField;
    PedResUSUDEL: TIntegerField;
    PedResDTEFPE: TDateTimeField;
    PedResHREFPE: TStringField;
    PedResOBSFPE: TMemoField;
    PedResUSUFPE: TIntegerField;
    PedResFLGREQ: TStringField;
    PedResLANEST: TStringField;
    PedResFLGRES: TStringField;
    PedResSITRES: TStringField;
    PedResQTDIMP: TIntegerField;
    PedResEMPCTA: TIntegerField;
    PedResDTECTA: TDateTimeField;
    PedResNUMCTA: TIntegerField;
    PedResPRCCTA: TStringField;
    PedResMODPFA: TStringField;
    PedResMESRES: TStringField;
    PedResANORES: TIntegerField;
    PedResFLGPRO: TStringField;
    PedResPEDPRO: TStringField;
    PedResDTEPRO: TDateTimeField;
    PedResHREPRO: TStringField;
    PedResOBSPRO: TMemoField;
    PedResUSUPRO: TIntegerField;
    PedResCLITAB: TStringField;
    PedResCODTCL: TIntegerField;
    PedResCODGCL: TIntegerField;
    PedResFLGCON: TStringField;
    PedResDTECON: TDateTimeField;
    PedResHRECON: TStringField;
    PedResOBSCON: TMemoField;
    PedResUSUCON: TIntegerField;
    PedResTIPCOM: TStringField;
    PedResCODCOM: TStringField;
    PedResFLGSER: TStringField;
    PedResBASISS: TFloatField;
    PedResTOTISS: TFloatField;
    PedResMEDCAT: TFloatField;
    PedResBASCAT: TFloatField;
    PedResTOTCAT: TFloatField;
    PedResTIPCPA: TStringField;
    PedResEMPPED: TIntegerField;
    PedResDTEPED: TDateTimeField;
    PedResNUMPED: TIntegerField;
    PedResDSCPFA: TStringField;
    PedResNOMCLI: TStringField;
    PedResNOMVEN: TStringField;
    PedResNOMTIP: TStringField;
    PedResNOMEMP: TStringField;
    PedLibCODEMP: TIntegerField;
    PedLibDTERES: TDateTimeField;
    PedLibNUMRES: TIntegerField;
    PedLibSEQLIB: TIntegerField;
    PedLibDTELIB: TDateTimeField;
    PedLibHRELIB: TStringField;
    PedLibQTSLIB: TIntegerField;
    PedLibBASIPI: TFloatField;
    PedLibTOTIPI: TFloatField;
    PedLibBASICM: TFloatField;
    PedLibTOTICM: TFloatField;
    PedLibBASSUB: TFloatField;
    PedLibTOTSUB: TFloatField;
    PedLibTOTVEN: TFloatField;
    PedLibTOTCST: TFloatField;
    PedLibTOTLIB: TFloatField;
    PedLibTOTREN: TFloatField;
    PedLibTOTGER: TFloatField;
    PedLibTOTLIQ: TFloatField;
    PedLibTOTBRT: TFloatField;
    PedLibBASCOM: TFloatField;
    PedLibTOTCOM: TFloatField;
    PedLibDSCCOM: TFloatField;
    PedLibDSCREG: TFloatField;
    PedLibMEDDSC: TFloatField;
    PedLibMEDACR: TFloatField;
    PedLibMEDCOM: TFloatField;
    PedLibMEDPRM: TFloatField;
    PedLibMEDDCO: TFloatField;
    PedLibTOTDCO: TFloatField;
    PedLibTOTDSC: TFloatField;
    PedLibTOTDSR: TFloatField;
    PedLibTOTDSP: TFloatField;
    PedLibTOTACR: TFloatField;
    PedLibCODUSU: TIntegerField;
    PedLibFLGRES: TStringField;
    PedLibFLGLIB: TStringField;
    PedLibPEDANT: TStringField;
    PedLibFLGANT: TStringField;
    PedLibDTEANT: TDateTimeField;
    PedLibHREANT: TStringField;
    PedLibOBSANT: TMemoField;
    PedLibUSUANT: TIntegerField;
    PedLibDTEFAT: TDateTimeField;
    PedLibHREFAT: TStringField;
    PedLibUSUFAT: TIntegerField;
    PedLibNRONFS: TIntegerField;
    PedLibFLGREQ: TStringField;
    PedLibSITLIB: TStringField;
    PedLibPEDTIP: TIntegerField;
    PedLibDTEDEL: TDateTimeField;
    PedLibHREDEL: TStringField;
    PedLibOBSDEL: TMemoField;
    PedLibUSUDEL: TIntegerField;
    PedLibDTEDEV: TDateTimeField;
    PedLibHREDEV: TStringField;
    PedLibOBSDEV: TMemoField;
    PedLibUSUDEV: TIntegerField;
    PedLibFLGATU: TStringField;
    PedLibDTEATU: TDateTimeField;
    PedLibHREATU: TStringField;
    PedLibUSUATU: TIntegerField;
    PedLibTRASDA: TIntegerField;
    PedLibDTESDA: TDateTimeField;
    PedLibHRESDA: TStringField;
    PedLibUSUSDA: TIntegerField;
    PedLibOBSSDA: TStringField;
    PedLibCODVEI: TIntegerField;
    PedLibDTEENT: TDateTimeField;
    PedLibHREENT: TStringField;
    PedLibUSUENT: TIntegerField;
    PedLibOBSENT: TStringField;
    PedLibCODCLI: TIntegerField;
    PedLibCODVEN: TIntegerField;
    PedLibCODPFA: TStringField;
    PedLibTIPPFA: TStringField;
    PedLibCODFIL: TIntegerField;
    PedLibCODATD: TIntegerField;
    PedLibCODTRA: TIntegerField;
    PedLibMODPFA: TStringField;
    PedLibFLGTAB: TStringField;
    PedLibATUEST: TStringField;
    PedLibINTFIN: TStringField;
    PedLibMESLIB: TStringField;
    PedLibANOLIB: TIntegerField;
    PedLibLANEST: TStringField;
    PedLibUFELIB: TStringField;
    PedLibFLGSER: TStringField;
    PedLibVALTMO: TFloatField;
    PedLibBASISS: TFloatField;
    PedLibTOTISS: TFloatField;
    PedLibCODTCL: TIntegerField;
    PedLibMEDCAT: TFloatField;
    PedLibBASCAT: TFloatField;
    PedLibTOTCAT: TFloatField;
    PedLibTIPCPA: TStringField;
    PedLb2CODEMP: TIntegerField;
    PedLb2DTERES: TDateTimeField;
    PedLb2NUMRES: TIntegerField;
    PedLb2SEQLIB: TIntegerField;
    PedLb2SEQLB2: TIntegerField;
    PedLb2SEQRE2: TIntegerField;
    PedLb2CODEIT: TIntegerField;
    PedLb2CODCLP: TStringField;
    PedLb2CODGRU: TStringField;
    PedLb2CODSUB: TStringField;
    PedLb2CODPRO: TStringField;
    PedLb2CODTAM: TStringField;
    PedLb2CODCOR: TStringField;
    PedLb2DESLB2: TStringField;
    PedLb2OBSLB2: TStringField;
    PedLb2CODST1: TStringField;
    PedLb2CODST2: TStringField;
    PedLb2CODUND: TStringField;
    PedLb2REFLB2: TStringField;
    PedLb2CLSIPI: TStringField;
    PedLb2LIQLB2: TFloatField;
    PedLb2BRTLB2: TFloatField;
    PedLb2QTPLB2: TFloatField;
    PedLb2QTSLB2: TFloatField;
    PedLb2SLDLB2: TFloatField;
    PedLb2QTDLB2: TFloatField;
    PedLb2VLULB2: TFloatField;
    PedLb2VCHLB2: TFloatField;
    PedLb2VRELB2: TFloatField;
    PedLb2VCPLB2: TFloatField;
    PedLb2VPRLB2: TFloatField;
    PedLb2DSCLB2: TFloatField;
    PedLb2VDSLB2: TFloatField;
    PedLb2DSPLB2: TFloatField;
    PedLb2VDPLB2: TFloatField;
    PedLb2DSRLB2: TFloatField;
    PedLb2VDRLB2: TFloatField;
    PedLb2PACLB2: TFloatField;
    PedLb2VACLB2: TFloatField;
    PedLb2DSCCOM: TFloatField;
    PedLb2VDSCOM: TFloatField;
    PedLb2PCOLB2: TFloatField;
    PedLb2IPILB2: TFloatField;
    PedLb2ICMLB2: TFloatField;
    PedLb2TOTVEN: TFloatField;
    PedLb2TOTCST: TFloatField;
    PedLb2BASIPI: TFloatField;
    PedLb2TOTIPI: TFloatField;
    PedLb2BASICM: TFloatField;
    PedLb2TOTICM: TFloatField;
    PedLb2BASSUB: TFloatField;
    PedLb2TOTSUB: TFloatField;
    PedLb2TOTLB2: TFloatField;
    PedLb2TOTGE2: TFloatField;
    PedLb2TOTLIQ: TFloatField;
    PedLb2TOTBRT: TFloatField;
    PedLb2BASCOM: TFloatField;
    PedLb2TOTCOM: TFloatField;
    PedLb2TOTDSC: TFloatField;
    PedLb2TOTDSR: TFloatField;
    PedLb2TOTDSP: TFloatField;
    PedLb2TOTACR: TFloatField;
    PedLb2TOTDCO: TFloatField;
    PedLb2CODSTR: TStringField;
    PedLb2TIPSTR: TStringField;
    PedLb2REGIPI: TStringField;
    PedLb2TIPIPI: TStringField;
    PedLb2TRBIPI: TStringField;
    PedLb2REDIPI: TFloatField;
    PedLb2BSCIPI: TFloatField;
    PedLb2REGICM: TStringField;
    PedLb2TIPICM: TStringField;
    PedLb2TRBICM: TStringField;
    PedLb2REDICM: TFloatField;
    PedLb2BSCICM: TFloatField;
    PedLb2INCREV: TFloatField;
    PedLb2INCFIN: TFloatField;
    PedLb2FLGSEQ: TStringField;
    PedLb2FLGRES: TStringField;
    PedLb2FLGREQ: TStringField;
    PedLb2CODVWA: TStringField;
    PedLb2FLGDUP: TStringField;
    PedLb2NRORE2: TIntegerField;
    PedLb2VMELB2: TFloatField;
    PedLb2VPFLB2: TFloatField;
    PedLb2CSTCST: TFloatField;
    PedLb2VCHCST: TFloatField;
    PedLb2VRECST: TFloatField;
    PedLb2VCRCST: TFloatField;
    PedLb2VCPCST: TFloatField;
    PedLb2VPRCST: TFloatField;
    PedLb2VMECST: TFloatField;
    PedLb2VPFCST: TFloatField;
    PedLb2CSTLB2: TFloatField;
    PedLb2VCRLB2: TFloatField;
    PedLb2DSCPER: TFloatField;
    PedLb2CODPRM: TIntegerField;
    PedLb2SEQPR2: TIntegerField;
    PedLb2CODTIP: TIntegerField;
    PedLb2CODCAT: TIntegerField;
    PedLb2CODMRC: TIntegerField;
    PedLb2FLGSEP: TStringField;
    PedLb2MESLIB: TStringField;
    PedLb2ANOLIB: TIntegerField;
    PedLb2LANCST: TStringField;
    PedLb2QTDQTE: TFloatField;
    PedLb2VPFOUT: TFloatField;
    PedLb2OUTCST: TFloatField;
    PedLb2FLGSER: TStringField;
    PedLb2VALTMO: TFloatField;
    PedLb2BASISS: TFloatField;
    PedLb2TOTISS: TFloatField;
    PedLb2ISSLB2: TFloatField;
    PedLb2EMPENT: TIntegerField;
    PedLb2DTEENT: TDateTimeField;
    PedLb2NUMENT: TIntegerField;
    PedLb2SEQEN2: TIntegerField;
    PedLb2TIPCPA: TStringField;
    PedLb2MEDCAT: TFloatField;
    PedLb2BASCAT: TFloatField;
    PedLb2TOTCAT: TFloatField;
    PedLb2DIFDSC: TFloatField;
    PedLb2MARPRE: TFloatField;
    PedLb2MARPED: TFloatField;
    PedLb2LUCROL: TFloatField;
    PedLb2LUCROP: TFloatField;
    PedLb2TOTPER: TFloatField;
    PedLb2PCOATD: TFloatField;
    PedLb2CODTXF: TStringField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure DsLb2DataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grLb2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdVcsLb2Exit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
  public
    DteRes : TDateTime;
    CodEmp,NumRes,SeqLib : integer;
  end;

var
  fmManPed: TfmManPed;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManRes;

{$R *.DFM}

procedure TfmManPed.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPed.DsLb2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnTotLib.Caption := FormatFloat('###,###,##0.00',PedLibTotLib.Value)+ ' ' ;
  pnTotCst.Caption := FormatFloat('###,###,##0.00',PedLibTotCst.Value)+ ' ' ;
  pnTotRen.Caption := FormatFloat('###,###,##0.00',PedLibTotRen.Value)+' % ';

end;

procedure TfmManPed.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if PedLb2.State <> dsBrowse then PedLb2.CancelUpdates;

     if EdVcsLb2.Enabled then begin

        EdVcsLb2.Enabled := False;

        EdVcsLb2.Font.Style := [fsBold];

        grLb2.SetFocus;

        end
     else
        Close;
  end;
end;

procedure TfmManPed.grLb2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin {Tecla - ENTER}

     EdVcsLb2.Enabled := True;

     EdVcsLb2.SetFocus;

  end;
end;

procedure TfmManPed.EdVcsLb2Exit(Sender: TObject);
var
SeqLb2 : integer;
begin
  inherited;
  if (Tecla = 'TAB') or (Tecla = 'ENTER') or (Tecla = 'DOWN') then begin

     if PedLb2.State <> dsBrowse then begin

        if PedLb2VcsLb2.OldValue <> PedLb2VcsLb2.NewValue then begin

           SeqLb2 := PedLb2SeqLb2.Value;

           PedLb2FlgSeq.Value := 'T';

           with PedLb2 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedLb2.State = dsBrowse then PedLb2.Edit;

                   EdVcsLb2.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedLib.Close;
           PedLib.Open;

           PedLb2.Close;
           PedLb2.Open;

           PedLb2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqLb2',VarArrayOf([PedLibCodEmp.Value,PedLibDteRes.Value,PedLibNumRes.Value,PedLibSeqLib.Value,SeqLb2]),[LoPartialKey]);

           PedLb2.Next;

           end
        else
           PedLb2.CancelUpdates;

        EdVcsLb2.Enabled := False;

        grLb2.SetFocus;

        end
     else
        begin

        EdVcsLb2.Enabled := False;

        grLb2.SetFocus;

     end;

     end
  else
     begin

     if Tecla = 'UP' then begin

        EdVcsLb2.Enabled := False;

        grLb2.SetFocus;

        if PedLb2.State <> dsBrowse then
           PedLb2.CancelUpdates
        else
           begin

           if not PedLb2.Bof then PedLb2.Prior;

        end;

        grLb2.SetFocus;

        end
     else
        begin

        if EdVcsLb2.Enabled then EdVcsLb2.SetFocus;

     end;
  end;
end;

procedure TfmManPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fMsg('Deseja Realmente Abandonar o Pedido ?','O') then begin

     CodEmp := fmManRes.PedLibCodEmp.Value;
     DteRes := fmManRes.PedLibDteRes.Value;
     NumRes := fmManRes.PedLibNumRes.Value;
     SeqLib := fmManRes.PedLibSeqLib.Value;

     fmManRes.PedLib.Close;
     fmManRes.PedLib.Open;

     fmManRes.PedLb2.Close;
     fmManRes.PedLb2.Open;

     fmManRes.PedLib.Locate('CodEmp;DteRes;NumRes;SeqLib',VarArrayOf([CodEmp,DteRes,NumRes,SeqLib]), [loPartialKey]);

     Action := CaFree;
     
     end
  else
     Abort;
end;

procedure TfmManPed.FormShow(Sender: TObject);
begin
  inherited;

  if TrimLeft(TrimRight(PedResCgcCli.Value)) <> '' then begin

     if Length(TrimLeft(TrimRight(PedResCgcCli.Value))) <= 11 then

        pnCgcCli.Caption := copy(PedResCgcCli.Value,01,03)+ '.' +
                            copy(PedResCgcCli.Value,04,03)+ '.' +
                            copy(PedResCgcCli.Value,07,03)+ '-' +
                            copy(PedResCgcCli.Value,10,02)

     else

        pnCgcCli.Caption := copy(PedResCgcCli.Value,01,02)+ '.' +
                            copy(PedResCgcCli.Value,03,03)+ '.' +
                            copy(PedResCgcCli.Value,06,03)+ '/' +
                            copy(PedResCgcCli.Value,09,04)+ '-' +
                            copy(PedResCgcCli.Value,13,02);

     end
  else
     pnCgcCli.Caption := '';

  PedRes.Close;
  PedRes.Params[0].AsInteger  := fmManRes.CodEmp;
  PedRes.Params[1].AsDateTime := fmManRes.DteRes;
  PedRes.Params[2].AsInteger  := fmManRes.NumRes;
  PedRes.Open;

  PedLib.Close;
  PedLib.Params[0].AsInteger  := fmManRes.CodEmp;
  PedLib.Params[1].AsDateTime := fmManRes.DteRes;
  PedLib.Params[2].AsInteger  := fmManRes.NumRes;
  PedLib.Params[3].AsInteger  := fmManRes.SeqLib;
  PedLib.Open;

  PedLb2.Close;
  PedLb2.Params[0].AsInteger  := PedLibCodEmp.Value;
  PedLb2.Params[1].AsDateTime := PedLibDteRes.Value;
  PedLb2.Params[2].AsInteger  := PedLibNumRes.Value;
  PedLb2.Params[3].AsInteger  := PedLibSeqLib.Value;
  PedLb2.Open;

  pnNomEmp.Caption := PedResNomEmp.Value;
  pnNomCli.Caption := PedResNomCli.Value;
  pnUfeRes.Caption := PedResUfeRes.Value;
  pnNomVen.Caption := PedResNomVen.Value;
  pnNomPfa.Caption := PedResDscPfa.Value;
  pnNumRes.Caption := IntToStr(PedResNumRes.Value);

end;

procedure TfmManPed.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPed := Nil;
end;

end.
