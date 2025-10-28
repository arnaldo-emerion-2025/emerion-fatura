unit ManEno_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppDB, ppBands, ppClass, ppStrtch, ppMemo,
  ppCtrls, ppVar, ppPrnabl, ppCache, ppProd, ppReport, ppComm, ppRelatv,
  ppDBPipe, dxColorEdit, dxColorDateEdit, dxDBColorEdit, dxDBColorPickEdit,
  dxDBColorDateEdit, dxDBColorCurrencyEdit;

type
  TfmManEno_NFE = class(TfmPadrao)
    FatDev: TwwQuery;
    FatDv2: TwwQuery;
    DsFatDv2: TwwDataSource;
    DsFatDev: TwwDataSource;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteDev1: TdxColorDateEdit;
    EdPsqNumRes: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteDev2: TdxColorDateEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    EdPsqCodVen: TdxColorEdit;
    EdPsqCodCli: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqCli: TSpeedButton;
    BbPsqVen: TSpeedButton;
    EdPsqApeVen: TdxColorEdit;
    EdPsqNomCli: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    grFatDev: ThGrid;
    grFatDv2: ThGrid;
    quSql: TwwQuery;
    pnApeCli: TPanel;
    pnApeVen: TPanel;
    Label13: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    bIncluir: TSpeedButton;
    bEditar: TSpeedButton;
    bImprimir: TSpeedButton;
    bExcluir: TSpeedButton;
    pnSitDev: TPanel;
    UpFatDev: TUpdateSQL;
    grFatDev1: TdxDBGraphicEdit;
    grFatDv21: TdxDBGraphicEdit;
    FatDevNUMRES: TIntegerField;
    FatDevNUMNFS: TIntegerField;
    FatDevDTEDEV: TDateTimeField;
    FatDevHREDEV: TStringField;
    FatDevNRONFS: TIntegerField;
    FatDevTOTDEV: TFloatField;
    FatDevCODCLI: TIntegerField;
    FatDevCODVEN: TIntegerField;
    FatDv2DESDV2: TStringField;
    FatDv2IPIDV2: TFloatField;
    FatDv2ICMDV2: TFloatField;
    FatDv2ULTQTD: TFloatField;
    DsReport: TppDBPipeline;
    ppReport: TppReport;
    FatDv2QTDRMA: TFloatField;
    Label8: TLabel;
    EdPsqNumNfs: TdxColorEdit;
    Panel1: TPanel;
    pnFlgDif: TPanel;
    Label1: TLabel;
    EdPsqNfsCli: TdxColorEdit;
    pnDadosNota: TPanel;
    Label15: TLabel;
    Label12: TLabel;
    EdCodCfo: TdxDBColorEdit;
    EdFlgSin: TdxDBCheckEdit;
    Label14: TLabel;
    EdFlgFsc: TdxDBColorPickEdit;
    EdDteDev: TdxDBColorDateEdit;
    Label19: TLabel;
    pnImpostos: TPanel;
    Label21: TLabel;
    EdIcmDv2: TdxDBColorCurrencyEdit;
    UpFatDv2: TUpdateSQL;
    Label24: TLabel;
    EdSerNot: TdxDBColorEdit;
    ppHeaderBand1: TppHeaderBand;
    ppLabel22: TppLabel;
    ppLabel1: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppLabel2: TppLabel;
    ppSystemVariable4: TppSystemVariable;
    TppDetailBand1: TppDetailBand;
    ppDesDv2: TppDBText;
    ppUltQtd: TppDBText;
    ppVlqDv2: TppDBText;
    ppTotGe2: TppDBText;
    ppQtdRMA: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel11: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppGroupFooterBand1: TppGroupFooterBand;
    Label23: TLabel;
    EdNfscli: TdxDBColorEdit;
    FatDevNFSCLI: TIntegerField;
    FatDv2CODITE: TStringField;
    ppDBText1: TppDBText;
    PaintBox: TPaintBox;
    FatDevCODEMP: TIntegerField;
    FatDevDTERES: TDateTimeField;
    FatDevSEQLIB: TIntegerField;
    FatDevSEQFAT: TIntegerField;
    FatDevSEQDEV: TIntegerField;
    FatDevFLGSIN: TStringField;
    FatDevFLGFSC: TStringField;
    FatDevCODCF1: TStringField;
    FatDevSERNOT: TStringField;
    FatDevSITDEV: TStringField;
    FatDevNOMCLI: TStringField;
    FatDevAPEVEN: TStringField;
    FatDv2FLASEQ: TStringField;
    FatDv2CODEMP: TIntegerField;
    FatDv2DTERES: TDateTimeField;
    FatDv2NUMRES: TIntegerField;
    FatDv2SEQLIB: TIntegerField;
    FatDv2SEQFAT: TIntegerField;
    FatDv2SEQDEV: TIntegerField;
    FatDv2SEQDV2: TIntegerField;
    ppApeEmp: TppLabel;
    ppNumRes: TppLabel;
    ppNomCli: TppLabel;
    ppApeVen: TppLabel;
    ppNroNfs: TppLabel;
    ppDteDev: TppLabel;
    ppTotDev: TppLabel;
    ppMemo1: TppMemo;
    FatDevFLGDIF: TStringField;
    FatDevOBSMDV: TMemoField;
    FatDv2VLQDV2: TFloatField;
    FatDv2TOTGE2: TFloatField;
    FatDevOBSCFT: TMemoField;
    FatDevUFEDEV: TStringField;
    FatDevCODPFA: TStringField;
    FatDevTIPPFA: TStringField;
    FatDevDSCREG: TFloatField;
    FatDevPERPIS: TFloatField;
    FatDevPERCOF: TFloatField;
    FatDevCODFIL: TIntegerField;
    FatDevQTDNFS: TIntegerField;
    FatDevNROSUF: TStringField;
    FatDevFLGAVI: TStringField;
    FatDevCGCCLI: TStringField;
    FatDevINSCLI: TStringField;
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
    FatDevSEQREG: TStringField;
    FatDevFLGDEV: TStringField;
    FatDevFLGATU: TStringField;
    FatDevMODPFA: TStringField;
    FatDevFLGNFS: TStringField;
    FatDevHRCDEV: TStringField;
    FatDevDTCDEV: TDateTimeField;
    FatDevUSUCFT: TIntegerField;
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
    FatDevARQNFE: TBlobField;
    FatDevBAFCLI: TStringField;
    FatDevCEFCLI: TStringField;
    FatDevCIFCLI: TStringField;
    FatDevCODTRA: TIntegerField;
    FatDevDOPNFE: TDateTimeField;
    FatDevDTCNFE: TDateTimeField;
    FatDevDTECNE: TDateTimeField;
    FatDevDTENFE: TDateTimeField;
    FatDevDTEPNF: TDateTimeField;
    FatDevENFCLI: TStringField;
    FatDevENVNFE: TStringField;
    FatDevFLGNFE: TStringField;
    FatDevFLGNOT: TStringField;
    FatDevHRCNFE: TStringField;
    FatDevHRECNE: TStringField;
    FatDevHRENFE: TStringField;
    FatDevHREPNF: TStringField;
    FatDevID_ESTSIP: TIntegerField;
    FatDevID_FINCIE: TIntegerField;
    FatDevID_FINCIF: TIntegerField;
    FatDevID_FINUFE: TIntegerField;
    FatDevID_FINUFF: TIntegerField;
    FatDevID_TRACIE: TIntegerField;
    FatDevID_TRAUFE: TIntegerField;
    FatDevIMPNFE: TStringField;
    FatDevLOTNFE: TIntegerField;
    FatDevNFECOF: TStringField;
    FatDevNFEPIS: TStringField;
    FatDevNRFCLI: TStringField;
    FatDevPRCNFE: TStringField;
    FatDevPRONFE: TStringField;
    FatDevRECNFE: TStringField;
    FatDevRETNFE: TStringField;
    FatDevRFFCLI: TStringField;
    FatDevSEQNFE: TStringField;
    FatDevTEFCLI: TStringField;
    FatDevTRBCOF: TStringField;
    FatDevTRBPIS: TStringField;
    FatDevUFFCLI: TStringField;
    FatDevUSUNFE: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqCliClick(Sender: TObject);
    procedure BbPsqVenClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqNumResExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodCliExit(Sender: TObject);
    procedure EdPsqCodVenExit(Sender: TObject);
    procedure EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPsqNumNfsExit(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure pnDadosNotaExit(Sender: TObject);
    procedure grFatDevKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnImpostosExit(Sender: TObject);
    procedure EdPsqNfsCliExit(Sender: TObject);
    procedure grFatDv2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsFatDevDataChange(Sender: TObject; Field: TField);
    procedure ppGroupHeaderBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes : TDateTime;
    sBase,sFiltro,sOrdem,Permissao,psaida : string;
    CodEmp,NumRes,SeqLib,SeqFat,SeqDev,SeqDv2 : integer;
  end;

var
  Linha : integer;
  fmManEno_NFE: TfmManEno_NFE;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbacesso, Bbmensag, ManGDB, PsqEmp,
     ManPri, AuxIni, AuxPsq, ManEn1_NFE, FPreview, ManCdv_NFE;

{$R *.DFM}

procedure TfmManEno_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  psaida := 'Nao';

  EdPsqDteDev1.Date := Date;
  EdPsqDteDev2.Date := Date;

  FatDev.Close;
  FatDev.Params[0].AsDateTime := EdPsqDteDev1.Date;
  FatDev.Open;

  sBase := ' Select FatDev.*,'+
           '        FinCli.NomCli,'+
           '        FinCli.ApeCli,'+
           '        FinVen.ApeVen '+
           ' From FatDev LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)'+
           '             LEFT JOIN FinVen ON (FatDev.CodVen = FinVen.CodVen)';

end;

procedure TfmManEno_NFE.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  if GFlgAce <> 'Sim' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FLGDEL,SEQIMP from GerPar';
          Open;

          if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

             GFlgAce := 'Sim';

             if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

             end
          else
             begin

             GEmpLog := 0;
             GFlgAce := 'Nao';

          end;
     end;
  end;
  
  sFiltro := '';

  sOrdem := ' Order by FatDev.DteDev,FatDev.CodEmp,FatDev.DteRes,FatDev.NumRes,FatDev.SeqLib,SeqFat,FatDev.SeqDev';

  if Trim( EdPsqNumRes.Text ) <> '' then sFiltro := sFiltro + ' Where FatDev.NumRes = '+ QuotedStr(EdPsqNumRes.Text);

  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FatDev.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text)
     else
        sFiltro := ' Where FatDev.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

  end;

  if Trim( EdPsqCodCli.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text)
     else
        sFiltro := ' Where PedRes.CodCli = '+ QuotedStr(EdPsqCodCli.Text);

  end;
  
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text)
     else
        sFiltro := ' Where PedRes.CodVen = '+ QuotedStr(EdPsqCodVen.Text);

  end;
  
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FatDev.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text)
     else
        sFiltro := ' Where FatDev.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text);

  end;

  if Trim( EdPsqNfsCli.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FatDev.NfsCli = '+ QuotedStr(EdPsqNfsCli.Text)
     else
        sFiltro := ' Where FatDev.NfsCli = '+ QuotedStr(EdPsqNfsCli.Text);

  end;      

  if Trim( EdPsqNumNfs.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FatDev.NumNfs = '+ QuotedStr(EdPsqNumNfs.Text)
     else
        sFiltro := ' Where FatDev.NumNfs = '+ QuotedStr(EdPsqNumNfs.Text);

  end;      

  if Trim(fLimpaStr(EdPsqDteDev1.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FatDev.DteDev >= '+ QuotedStr(fDateToSQL(EdPsqDteDev1.Date))
     else
        sFiltro := ' Where FatDev.DteDev >= '+ QuotedStr(fDateToSQL(EdPsqDteDev1.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteDev2.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and FatDev.DteDev <= '+ QuotedStr(fDateToSQL(EdPsqDteDev2.Date))
     else
        sFiltro := ' Where FatDev.DteDev <= '+ QuotedStr(fDateToSQL(EdPsqDteDev2.Date));

  end;
  
  with FatDev,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grFatDev.SetFocus;

end;

procedure TfmManEno_NFE.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if GFlgAce <> 'Sim' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FLGDEL,SEQIMP from GerPar';
             Open;

             if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

                GFlgAce := 'Sim';

                if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

                end
             else
                begin

                GEmpLog := 0;
                GFlgAce := 'Nao';

             end;
        end;
     end;
     
     with quSql,SQL do begin

          Close;
          Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('ApeEmp').AsString ) <> '' then
             EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
          else
             begin

             EdPsqApeEmp.Text := '';

             fmsgErro('Empresa Informada n�o Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqApeEmp.Text := '';
end;

procedure TfmManEno_NFE.EdPsqCodCliExit(Sender: TObject);
begin
  if Trim( EdPsqCodCli.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select FinCli.NomCli From FinCli Where FinCli.CodCli = '+ QuotedStr(EdPsqCodCli.Text);
          Open;

          EdPsqNomCli.Text := FieldByName('NomCli').AsString;
          
     end;

     end
  else
     EdPsqNomCli.Text := '';
end;

procedure TfmManEno_NFE.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManEno_NFE.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     EdPsqCodEmp.SetFocus;

  end;
end;

procedure TfmManEno_NFE.EdPsqCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxIni.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           EdPsqNomCli.Text := fmAuxPsq.NomCli;
           EdPsqCodCli.Text := IntToStr(fmAuxPsq.CodCli);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManEno_NFE.EdPsqCodVenExit(Sender: TObject);
begin
  if Trim( EdPsqCodVen.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(EdPsqCodVen.Text);
          Open;

          EdPsqApeVen.Text := FieldByName('ApeVen').AsString;

     end;

     end
  else
     EdPsqApeVen.Text := '';
end;

procedure TfmManEno_NFE.EdPsqCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxIni.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           EdPsqApeVen.Text := fmAuxPsq.NomVen;
           EdPsqCodVen.Text := IntToStr(fmAuxPsq.CodVen);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManEno_NFE.BbPsqCliClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        EdPsqNomCli.Text := fmAuxIni.NomCli;
        EdPsqCodCli.Text := IntToStr(fmAuxIni.CodCli);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManEno_NFE.BbPsqVenClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        EdPsqApeVen.Text := fmAuxIni.NomVen;
        EdPsqCodVen.Text := IntToStr(fmAuxIni.CodVen);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManEno_NFE.EdPsqNumResExit(Sender: TObject);
begin
  if Trim( EdPsqNumRes.Text ) <> '' then begin

     EdPsqNumNfs.Clear;
     EdPsqNroNfs.Clear;       
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqApeVen.Clear;

     EdPsqDteDev1.Clear;
     EdPsqDteDev2.Clear;

  end;
end;

procedure TfmManEno_NFE.FormShow(Sender: TObject);
begin
  inherited;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then
     Permissao := fAcesso('FAT02040101')
  else
     Permissao := 'SSSSS';

  if copy(Permissao,1,1) = 'N' then bIncluir.Enabled := False;
  if copy(Permissao,2,1) = 'N' then bEditar.Enabled := False;
  if copy(Permissao,3,1) = 'N' then bExcluir.Enabled := False;

  EdPsqNumNfs.SetFocus;

end;

procedure TfmManEno_NFE.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEno_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEno_NFE := Nil;
end;

procedure TfmManEno_NFE.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManEno_NFE.bEditarClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,2,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManEn1_NFE then Found := i;

        end;

        if Found >= 0 then begin

           fmManEn1_NFE.WindowState := wsNormal;
           fmManEn1_NFE.BringToFront;

           end
        else
           begin

           if FatDevCodEmp.Value > 0 then begin

              sFiltro := ' Where FatDev.CodEmp = '+ QuotedStr(IntToStr(FatDevCodEmp.Value)) +
                         '   and FatDev.DteRes = '+ QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
                         '   and FatDev.NumRes = '+ QuotedStr(IntToStr(FatDevNumRes.Value)) +
                         '   and FatDev.SeqLib = '+ QuotedStr(IntToStr(FatDevSeqLib.Value)) +
                         '   and FatDev.SeqFat = '+ QuotedStr(IntToStr(FatDevSeqFat.Value)) +
                         '   and FatDev.SeqDev = '+ QuotedStr(IntToStr(FatDevSeqDev.Value)) ;

              with FatDev,SQL do begin

                   Close;
                   Text := sBase + sFiltro;
                   Open;

              end;

              if Trim(FatDevSitDev.Value) = 'Concluido' then begin

                 FatDev.Edit;

                 FatDevSitDev.Value := 'Processo de Alteracao';

                 with FatDev do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

                      try

                         ApplyUpdates; {Tenta aplicar as alteracoes};

                         fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro};

                         if FatDev.State <> dsBrowse then FatDev.CancelUpdates;

                         FatDev.Close;
                         FatDev.Open;

                         grFatDev.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;
              end;

              CodEmp := FatDevCodEmp.Value;
              DteRes := FatDevDteRes.Value;
              NumRes := FatDevNumRes.Value;
              SeqLib := FatDevSeqLib.Value;
              SeqFat := FatDevSeqFat.Value;
              SeqDev := FatDevSeqDev.Value;

              fmManEn1_NFE := TfmManEn1_NFE.Create(Self);
              fmManEn1_NFE.Show;

           end;
        end;

        end
     else
        fMsgErro('Usu�rio n�o possui acesso a opc�o.',nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManEno_NFE.bIncluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,1,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManEn1_NFE then Found := i;

        end;

        if Found >= 0 then begin

           fmManEn1_NFE.WindowState := wsNormal;
           fmManEn1_NFE.BringToFront;

           end
        else
           begin

           CodEmp := 0;
           NumRes := 0;
           SeqLib := 0;
           SeqFat := 0;
           SeqDev := 0;

           fmManEn1_NFE := TfmManEn1_NFE.Create(Self);
           fmManEn1_NFE.Show;

        end;

        end
     else
        fMsgErro('Usu�rio n�o possui acesso a opc�o.',nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManEno_NFE.bExcluirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if copy(Permissao,3,1) = 'S' then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManEn1_NFE then Found := i;

        end;

        if Found >= 0 then begin

           fmManEn1_NFE.WindowState := wsNormal;
           fmManEn1_NFE.BringToFront;

           end
        else
           begin

           if FatDevCodEmp.Value > 0 then begin

              sFiltro := ' Where FatDev.CodEmp = '+ QuotedStr(IntToStr(FatDevCodEmp.Value)) +
                         '   and FatDev.DteRes = '+ QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
                         '   and FatDev.NumRes = '+ QuotedStr(IntToStr(FatDevNumRes.Value)) +
                         '   and FatDev.SeqLib = '+ QuotedStr(IntToStr(FatDevSeqLib.Value)) +
                         '   and FatDev.SeqFat = '+ QuotedStr(IntToStr(FatDevSeqFat.Value)) +
                         '   and FatDev.SeqDev = '+ QuotedStr(IntToStr(FatDevSeqDev.Value)) ;

              with FatDev,SQL do begin

                   Close;
                   Text := sBase + sFiltro;
                   Open;

              end;

              if FatDevCodEmp.Value > 0 then begin

                 if (Trim(FatDevSitDev.Value) <> 'Devolvido') and (Trim(FatDevSitDev.Value) <> 'Cancelado') then begin

                    if fMsg('Confirma a exclus�o do processo de devolu��o ?','O') then begin

                       FatDev.Delete;

                       with FatDev do begin

                            fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

                            try

                               ApplyUpdates; {Tenta aplicar as alteracoes};

                               fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o};

                            except

                               fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro};

                               if FatDev.State <> dsBrowse then FatDev.CancelUpdates;

                               FatDev.Close;
                               FatDev.Open;

                               grFatDev.SetFocus;

                               raise;

                            end;

                            CommitUpdates; {sucesso!, limpa o cache...}

                       end;

                       FatDev.Close;
                       FatDev.Open;

                       grFatDev.SetFocus;

                    end;

                    end
                 else
                    begin

                    if Trim(FatDevSitDev.Value) <> 'Cancelado' then begin

                       FatDev.Close;
                       FatDev.Open;

                       end
                    else
                       fmsgErro('Opera��o n�o pode ser realizada. Devolu��o j� cancelada.',Nil);

                 end;
              end;
           end;
        end;

        end
     else
        fMsgErro('Usu�rio n�o possui acesso a opc�o.',nil);

     end
  else
     fmsgErro(GMensagem_0001,Nil);
end;

procedure TfmManEno_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then begin

     if pnImpostos.Visible then begin

        psaida := 'Sim';

        if FatDv2.State <> dsBrowse then FatDv2.CancelUpdates;

        pnImpostos.Visible := False;

        psaida := 'Nao';

        end
     else
        begin

        if pnDadosNota.Visible then begin

           psaida := 'Sim';

           if FatDev.State <> dsBrowse then FatDev.CancelUpdates;

           pnDadosNota.Visible := False;

           psaida := 'Nao';

           end
        else
           close;

     end;
  end;

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

end;

procedure TfmManEno_NFE.bImprimirClick(Sender: TObject);
var
  i     : Integer;
  Found : Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManEn1_NFE then Found := i;

  end;

  if Found >= 0 then begin

     fmManEn1_NFE.WindowState := wsNormal;
     fmManEn1_NFE.BringToFront;

     end
  else
     begin

     if FatDevCodEmp.Value > 0 then begin

        sFiltro := ' Where FatDev.CodEmp = '+ QuotedStr(IntToStr(FatDevCodEmp.Value)) +
                   '   and FatDev.DteRes = '+ QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
                   '   and FatDev.NumRes = '+ QuotedStr(IntToStr(FatDevNumRes.Value)) +
                   '   and FatDev.SeqLib = '+ QuotedStr(IntToStr(FatDevSeqLib.Value)) +
                   '   and FatDev.SeqFat = '+ QuotedStr(IntToStr(FatDevSeqFat.Value)) +
                   '   and FatDev.SeqDev = '+ QuotedStr(IntToStr(FatDevSeqDev.Value)) ;

        with FatDev,SQL do begin

             Close;
             Text := sBase + sFiltro;
             Open;

        end;

        if FatDevCodEmp.Value > 0 then begin

           try

              ppReport.DeviceType := 'Screen';
              fmPreview := TfmPreview.Create(fmManEno_NFE);
              fmPreview.ppViewer.Report := ppReport;
              ppReport.PrintToDevices;
              fmPreview.ShowModal;

              if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

           finally

              FreeAndNil(fmPreview);

           end;
        end;
     end;
  end;
end;

procedure TfmManEno_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
var
i     : Integer;
Found : Integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManEn1_NFE then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem Devolu��es em Andamento. Por Favor Feche o Formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManEno_NFE.EdPsqNumNfsExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNumNfs.Text ) <> '' then begin

     EdPsqNumRes.Clear;
     EdPsqNroNfs.Clear;
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqApeVen.Clear;

     EdPsqDteDev1.Clear;
     EdPsqDteDev2.Clear;

  end;
end;

procedure TfmManEno_NFE.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     EdPsqNumNfs.Clear;
     EdPsqNfsCli.Clear;
     EdPsqNumRes.Clear;
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqApeVen.Clear;

     EdPsqDteDev1.Clear;
     EdPsqDteDev2.Clear;

  end;
end;

procedure TfmManEno_NFE.pnDadosNotaExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then begin

     if fMsg('Confirma Altera��o da CFOP ?','S') then begin

        CodEmp := FatDevCodEmp.Value;
        DteRes := FatDevDteRes.Value;
        NumRes := FatDevNumRes.Value;
        SeqLib := FatDevSeqLib.Value;
        SeqFat := FatDevSeqFat.Value;
        SeqDev := FatDevSeqDev.Value;

        with FatDev do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

             try

                ApplyUpdates; {Tenta aplicar as alteracoes};

                fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro};

                if FatDev.State = dsBrowse then FatDev.Edit;

                EdFlgSin.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        FatDev.Close;
        FatDev.Open;

        FatDev.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqDev',VarArrayOf([CodEmp,DteRes,NumRes,SeqLib,SeqFat,SeqDev]), [loPartialKey]);

        pnDadosNota.Visible := False;

        grFatDev.SetFocus;

        end
     else
        EdFlgSin.SetFocus;

  end;
end;

procedure TfmManEno_NFE.grFatDevKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then begin

     if not pnDadosNota.Visible then begin

        if FatDevCodEmp.Value > 0 then begin

           if GFlgAce <> 'Sim' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FLGDEL,SEQIMP from GerPar';
                   Open;

                   if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

                      GFlgAce := 'Sim';

                      if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

                      end
                   else
                      begin

                      GEmpLog := 0;
                      GFlgAce := 'Nao';

                   end;
              end;
           end;
           
           if not pnDadosNota.Visible then begin

              if GFlgAce = 'Nao' then begin

                 pnDadosNota.Visible := True;

                 FatDev.Edit;

                 EdFlgSin.SetFocus;

              end;
           end;
        end;
     end;
  end;
end;

procedure TfmManEno_NFE.pnImpostosExit(Sender: TObject);
begin
  inherited;
  if psaida = 'Nao' then begin

     if fMsg('Confirma Altera��o da Aliquota de ICMS ?','S') then begin

        CodEmp := FatDv2CodEmp.Value;
        DteRes := FatDv2DteRes.Value;
        NumRes := FatDv2NumRes.Value;
        SeqLib := FatDv2SeqLib.Value;
        SeqFat := FatDv2SeqFat.Value;
        SeqDev := FatDv2SeqDev.Value;
        SeqDv2 := FatDv2SeqDv2.Value;

        with FatDv2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

             try

                ApplyUpdates; {Tenta aplicar as alteracoes};

                fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro};

                if FatDv2.State = dsBrowse then FatDv2.Edit;

                EdIcmDv2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        FatDv2.Close;
        FatDv2.Open;

        FatDv2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqDev;SeqDv2',VarArrayOf([CodEmp,DteRes,NumRes,SeqLib,SeqFat,SeqDev,SeqDv2]), [loPartialKey]);

        FatDv2.Next;

        pnImpostos.Visible := False;

        grFatDv2.SetFocus;

        end
     else
        EdIcmDv2.SetFocus;
  end;
end;

procedure TfmManEno_NFE.EdPsqNfsCliExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNfsCli.Text ) <> '' then begin

     EdPsqNumNfs.Clear;
     EdPsqNroNfs.Clear;     
     EdPsqNumRes.Clear;
     EdPsqCodEmp.Clear;
     EdPsqApeEmp.Clear;
     EdPsqCodCli.Clear;
     EdPsqNomCli.Clear;
     EdPsqCodVen.Clear;
     EdPsqApeVen.Clear;

     EdPsqDteDev1.Clear;
     EdPsqDteDev2.Clear;

  end;
end;

procedure TfmManEno_NFE.grFatDv2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then begin

     if not pnImpostos.Visible then begin

        if not pnDadosNota.Visible then begin

           if FatDv2CodEmp.Value > 0 then begin

              if GFlgAce <> 'Sim' then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select FLGDEL,SEQIMP from GerPar';
                      Open;

                      if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

                         GFlgAce := 'Sim';

                         if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

                         end
                      else
                         begin

                         GEmpLog := 0;
                         GFlgAce := 'Nao';

                      end;
                 end;
              end;
              
              if not pnImpostos.Visible then begin

                 if GFlgAce = 'Nao' then begin

                    pnImpostos.Visible := True;

                    FatDv2.Edit;

                    EdIcmDv2.SetFocus;

                 end;
              end;
           end;
        end;
     end;      
  end;
end;

procedure TfmManEno_NFE.DsFatDevDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if FatDevFlgDif.Value = 'Sim' then
     pnFlgDif.Color := clRed
  else
     pnFlgDif.Color := clLime;

  pnApeCli.Caption := ' Cliente: ' + FatDevNomCli.Value;
  
  pnApeVen.Caption := ' Vendedor: ' + FatDevApeVen.Value;

  pnSitDev.Caption := Trim(FatDevSitDev.Value);

end;

procedure TfmManEno_NFE.ppGroupHeaderBand1BeforePrint(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(FatDevCodEmp.Value));
       Open;

       ppApeEmp.Caption := FieldbyName('ApeEmp').AsString;

  end;

  ppNumRes.Caption := IntToStr(FatDevNumRes.Value);

  ppDteDev.Caption := FormatDateTime('dd/mm/yyyy',FatDevDteDev.Value);

  ppNomCli.Caption := Trim(FatDevNomCli.Value);
  ppApeVen.Caption := Trim(FatDevApeVen.Value);

  if FatDevNroNfs.Value > 0 then
     ppNroNfs.Caption := IntToStr(FatDevNroNfs.Value)
  else
     ppNroNfs.Caption := '';

end;

procedure TfmManEno_NFE.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;

  ppTotDev.Caption := FormatFloat('###,###,##0.00',FatDevTotDev.Value);

  ppMemo1.Lines.Clear;

  ppMemo1.Lines.Add(FatDevObsMdv.Value);
  
end;

end.

