unit ManLnRMA_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxColorPickEdit, dxColorCurrencyEdit, dxColorEdit,
  dxColorDateEdit, dxDBELib, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxfProgressBar, dxDBColorEdit, inifiles, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdMessage;

type
  TfmManLnRMA_NFE = class(TfmPadrao)
    PaintBox: TPaintBox;
    grFatPed: ThGrid;
    quSql: TwwQuery;
    grFatPed1: TdxDBGraphicEdit;
    grFatPe21: TdxDBGraphicEdit;
    pnMensag: TPanel;
    Label2: TLabel;
    pnQtdReg1: TPanel;
    pnTotReg1: TPanel;
    Panel1: TPanel;
    EdPsqNroNfs: TdxColorEdit;
    batualizar: TBitBtn;
    Label1: TLabel;
    pnTotReg: TLabel;
    pnQtdReg: TPanel;
    pnCliente: TPanel;
    pnCodCli: TLabel;
    benviar: TSpeedButton;
    pnDesPe2: TPanel;
    Label3: TLabel;
    quSQL1: TwwQuery;
    Label4: TLabel;
    pnalterar: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdCodCfo: TdxDBColorEdit;
    EdClsIpi: TdxDBColorEdit;
    EdCodSt1: TdxDBColorEdit;
    EdCodSt2: TdxDBColorEdit;
    EdCodUnd: TdxDBColorEdit;

    Eddespe2: TdxDBColorEdit;
    Edobspe2: TdxDBColorEdit;
    pn_erro: TPanel;
    memo_erro: TMemo;
    bt_erro: TButton;
    Button1: TButton;
    CorpoMail: TMemo;
    Memo1: TMemo;
    DSCmpNFS: TDataSource;
    UpNfs: TUpdateSQL;
    CmpNfs: TwwQuery;
    CmpNf2: TwwQuery;
    CmpNf2CODCLP: TStringField;
    CmpNf2CODGRU: TStringField;
    CmpNf2CODSUB: TStringField;
    CmpNf2CODPRO: TStringField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2TOTITE: TFloatField;
    CmpNf2CODST1: TStringField;
    CmpNf2CODST2: TStringField;
    CmpNf2CODUND: TStringField;
    CmpNf2CODEMP: TIntegerField;
    CmpNf2DTENFS: TDateTimeField;
    CmpNf2SEQNFS: TIntegerField;
    CmpNf2SEQNF2: TIntegerField;
    CmpNf2CODEIT: TIntegerField;
    CmpNf2CODTAM: TStringField;
    CmpNf2CODCOR: TStringField;
    CmpNf2DESNF2: TStringField;
    CmpNf2OBSNF2: TStringField;
    CmpNf2REFNF2: TStringField;
    CmpNf2LIQNF2: TFloatField;
    CmpNf2BRTNF2: TFloatField;
    CmpNf2LINNF2: TIntegerField;
    CmpNf2QTDNF2: TFloatField;
    CmpNf2SLDNF2: TFloatField;
    CmpNf2CLSIPI: TStringField;
    CmpNf2SEQNFG: TIntegerField;
    CmpNf2SEQNF3: TIntegerField;
    CmpNf2BASIPI: TFloatField;
    CmpNf2TOTIPI: TFloatField;
    CmpNf2BASICM: TFloatField;
    CmpNf2TOTICM: TFloatField;
    CmpNf2BASSUB: TFloatField;
    CmpNf2TOTSUB: TFloatField;
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
    CmpNf2FLGENT: TStringField;
    CmpNf2QTINFE: TIntegerField;
    CmpNf2SEQNFE: TIntegerField;
    CmpNf2CODTXF: TStringField;
    UpNf2: TUpdateSQL;
    DSCMPNF2: TDataSource;
    UpFatArq: TUpdateSQL;
    FatArq: TwwQuery;
    FatArqCODEMP: TIntegerField;
    FatArqDTENFS: TDateTimeField;
    FatArqNUMNFS: TStringField;
    FatArqSEQNFS: TIntegerField;
    FatArqARQNFE: TBlobField;
    FatArqFLGATU: TStringField;
    FatArqID_CMPNFS: TIntegerField;
    FatArqNFETH: TIntegerField;
    FatArqSITNFS: TStringField;
    CmpNf2DESNC1: TStringField;
    CmpNf2DESNC2: TStringField;
    CmpNf2DESNC3: TStringField;
    CmpNf2DESNC4: TStringField;
    CmpNf2DESNC5: TStringField;
    CmpNf2DESNC6: TStringField;
    CmpNf2DESNC7: TStringField;
    CmpNf2DESNC8: TStringField;
    CmpNf2TRBSUB: TStringField;
    CmpNf2ICMSUB: TFloatField;
    CmpNf2MRGSUB: TFloatField;
    CmpNf2BASESB: TFloatField;
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
    CmpNf2CODCFO: TStringField;
    CmpNf2QTNNF2: TFloatField;
    CmpNf2NROADI: TIntegerField;
    CmpNf2SEQADI: TIntegerField;
    CmpNf2FABADI: TStringField;
    CmpNf2DSCADI: TFloatField;
    CmpNfsCODEMP: TIntegerField;
    CmpNfsDTENFS: TDateTimeField;
    CmpNfsSEQNFS: TIntegerField;
    CmpNfsCODTIP: TIntegerField;
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
    CmpNfsTXFIPI: TStringField;
    CmpNfsTXFICM: TStringField;
    CmpNfsOBSNFS: TStringField;
    CmpNfsSEQITE: TIntegerField;
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
    CmpNfsICMFRT: TFloatField;
    CmpNfsBSICMF: TFloatField;
    CmpNfsBAICMF: TFloatField;
    CmpNfsTOICMF: TFloatField;
    CmpNfsICMSEG: TFloatField;
    CmpNfsBSICMS: TFloatField;
    CmpNfsBAICMS: TFloatField;
    CmpNfsTOICMS: TFloatField;
    CmpNfsICMDES: TFloatField;
    CmpNfsBSICMD: TFloatField;
    CmpNfsBAICMD: TFloatField;
    CmpNfsTOICMD: TFloatField;
    CmpNfsIPIFRT: TFloatField;
    CmpNfsBSIPIF: TFloatField;
    CmpNfsBAIPIF: TFloatField;
    CmpNfsTOIPIF: TFloatField;
    CmpNfsIPISEG: TFloatField;
    CmpNfsBSIPIS: TFloatField;
    CmpNfsBAIPIS: TFloatField;
    CmpNfsTOIPIS: TFloatField;
    CmpNfsIPIDES: TFloatField;
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
    CmpNfsOBCNFS: TStringField;
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
    CmpNfsSEQOPE: TStringField;
    CmpNfsSITNFS: TStringField;
    CmpNfsFLGNFS: TStringField;
    CmpNfsFLGATU: TStringField;
    CmpNfsFLGENV: TStringField;
    CmpNfsQTDENT: TIntegerField;
    CmpNfsDESREG: TStringField;
    CmpNfsFLGSIN: TStringField;
    CmpNfsOB1NFS: TStringField;
    CmpNfsOB2NFS: TStringField;
    CmpNfsOB3NFS: TStringField;
    CmpNfsOB4NFS: TStringField;
    CmpNfsOB5NFS: TStringField;
    CmpNfsOB6NFS: TStringField;
    CmpNfsOB7NFS: TStringField;
    CmpNfsOB8NFS: TStringField;
    CmpNfsFLGIMP: TStringField;
    CmpNfsID_TRAUFE: TIntegerField;
    CmpNfsID_TRACIE: TIntegerField;
    CmpNfsID_FINUFF: TIntegerField;
    CmpNfsID_FINCIF: TIntegerField;
    CmpNfsID_FINUFE: TIntegerField;
    CmpNfsID_FINCIE: TIntegerField;
    CmpNfsCEFFOR: TStringField;
    CmpNfsTEFFOR: TStringField;
    CmpNfsENFFOR: TStringField;
    CmpNfsRFFFOR: TStringField;
    CmpNfsNRFFOR: TStringField;
    CmpNfsBAFFOR: TStringField;
    CmpNfsCIFFOR: TStringField;
    CmpNfsUFFFOR: TStringField;
    CmpNfsNFEPIS: TStringField;
    CmpNfsTRBPIS: TStringField;
    CmpNfsNFECOF: TStringField;
    CmpNfsTRBCOF: TStringField;
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
    CmpNfsDTCNFE: TDateTimeField;
    CmpNfsHRCNFE: TStringField;
    CmpNfsPRCNFE: TStringField;
    CmpNfsDTECNE: TDateTimeField;
    CmpNfsHRECNE: TStringField;
    CmpNfsARQNFE: TBlobField;
    CmpNfsCGEFOR: TStringField;
    CmpNfsINEFOR: TStringField;
    CmpNfsCODTRA: TIntegerField;
    CmpNfsDTECOM: TDateTimeField;
    CmpNfsHRECOM: TStringField;
    CmpNfsSEQCOM: TStringField;
    CmpNfsNFSCOM: TIntegerField;
    CmpNfsUFECOM: TStringField;
    CmpNfsID_ESTSIP: TIntegerField;
    CmpNfsNOMENT: TStringField;
    CmpNfsDTFNFS: TDateTimeField;
    CmpNfsHRFNFS: TStringField;
    CmpNfsUSFNFS: TIntegerField;
    CmpNfsOBFNFS: TStringField;
    CmpNfsCODTFO: TIntegerField;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsNROPDI: TStringField;
    CmpNfsDTEPDI: TDateTimeField;
    CmpNfsLOCPDI: TStringField;
    CmpNfsUFEPDI: TStringField;
    CmpNfsDTEADU: TDateTimeField;
    CmpNfsEXPPDI: TStringField;
    CmpNfsFLGUSA: TStringField;
    CmpNfsFLGEMI: TStringField;
    CmpNfsNFETH: TIntegerField;
    CmpNfsDTECAN: TDateTimeField;
    CmpNfsNFETHCANC: TIntegerField;
    CmpNfsARQNFECANC: TBlobField;
    CmpNfsHRECAN: TStringField;
    CmpNfsUSUCAN: TIntegerField;
    CmpNfsNOMFOR: TStringField;
    CmpNfsEMAFOR: TStringField;
    grFatPe2: ThGrid;
    IdSMTP1: TIdSMTP;
    IdMessage1: TIdMessage;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure benviarClick(Sender: TObject);
    procedure batualizarClick(Sender: TObject);
    procedure grFatPe2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pnalterarExit(Sender: TObject);
    procedure EdCodCfoKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodSt1Enter(Sender: TObject);
    procedure EdCodSt1Exit(Sender: TObject);
    procedure EdCodSt1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodSt2Exit(Sender: TObject);
    procedure EdCodSt2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodUndExit(Sender: TObject);
    procedure EdCodUndKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bt_erroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DSCmpNFSDataChange(Sender: TObject; Field: TField);
    procedure DSCMPNF2DataChange(Sender: TObject; Field: TField);
  private
    CodEmp: integer;
    DteRes: TDateTime;
    NumRes: integer;
    SeqLib: integer;
    SeqFat: integer;
    {Private declarations}
    Id_FatPed: integer;
    cDir: string;
    eAssunto, eAnexo, ePara, eUsuario, eSenha, eHost, EProtocolo, EPDF: string;
    eAutomatico, ei, eposicao, ehomologacao: integer;
    ecorpo: string;
  public
    {Public declarations}
    sBase, sFiltro, sOrdem: string;
  end;

var
  fmManLnRMA_NFE: TfmManLnRMA_NFE;
  sArqBackup: string;

implementation

uses dxDemoUtils, FileCtrl, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri,
  ManE01_NFE, ManCn1_NFE, PsqSt1, PsqSt2, PsqUnd, ManNF1R_NFE;

{$R *.DFM}

procedure FindReplace(const Enc, subs: string; var Texto: TMemo);
var
  ifr, Posicaofr: Integer;
  Linhafr: string;
begin
  for ifr := 0 to Texto.Lines.count - 1 do
  begin
    Linhafr := Texto.Lines[ifr];
    repeat
      Posicaofr := Pos(Enc, Linhafr);
      if Posicaofr > 0 then
      begin
        Delete(Linhafr, Posicaofr, Length(Enc));
        Insert(Subs, Linhafr, Posicaofr);
        Texto.Lines[ifr] := Linhafr;
      end;
    until Posicaofr = 0;
  end;
end;

function Executa(Arquivo: string; Estado: Integer): Integer;
var
  Programa: array[0..512] of char;
  CurDir: array[0..255] of char;
  WorkDir: string;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  StrPCopy(Programa, Arquivo);
  GetDir(0, WorkDir);
  StrPCopy(CurDir, WorkDir);
  FillChar(StartupInfo, Sizeof(StartupInfo), #0);
  StartupInfo.cb := sizeof(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Estado;
  if not CreateProcess(nil, Programa, nil, nil, false, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo) then
    Result := -1
  else
  begin
    WaitForSingleObject(ProcessInfo.hProcess, Infinite);
    //GetExitCodeProcess (ProcessInfo.hProcess, Result);
  end;
end; //Estado � o tipo de janela que aparecer�, que pode ser:

//SW_SHOWNORMA//L - Janela em modo normal

//SW_MAXIMIZE// - Janela maximizada

//SW_MINIMIZE// - Janela minimizada

//SW_HIDE //- Janela Escondida

procedure TfmManLnRMA_NFE.FormCreate(Sender: TObject);
begin
  inherited;
  //Rolando
  self.top := 0;
  self.Left := 0;
  sBase := ' Select CmpNfs.*, ' +
    ' FinFor.NomFor, ' +
    '            FinFor.EmaFor ' +
    '            From cmpnfs LEFT JOIN FinFOR ON (CmpNfs.CodFOR = FinFOr.CodFor) ' +
    ' Where FlgNFE = ' + QuotedStr('Sim') +
    '      and EnvNFE = ' + QuotedStr('Nao') +
    ' and SITNFS = ' + QuotedStr('Concluido');
  //           ' Order by NroNfs';

end;

procedure TfmManLnRMA_NFE.FormShow(Sender: TObject);
var
  ArqEnviado: TStringList;
  Nome_ArqIni: string;
  SeqLin: integer;
  Linha: string;
begin
  inherited;
  batualizar.Click;
end;

procedure TfmManLnRMA_NFE.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLnRMA_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLnRMA_NFE := nil;
end;

procedure TfmManLnRMA_NFE.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManLnRMA_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLnRMA_NFE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 27 then
  begin

    if pnalterar.Visible then
    begin

      if CmpNf2.State <> dsBrowse then
        CmpNf2.CancelUpdates;

      batualizar.Enabled := True;

      benviar.Enabled := True;

      pnalterar.Visible := False;

      grFatPe2.SetFocus;

    end
    else
      close;

  end;
end;

procedure TfmManLnRMA_NFE.benviarClick(Sender: TObject);
var
  IniFile, chave, CaminhoLeitura, CaminhoRetorno, CaminhoPDF, VNumNota, TLinha: string;
  TArquivo, TDANFE: TextFile;
  i: integer;
  ini: Tinifile;
  SeqEnc: integer;
  LinArq: string;
  NroReg: integer;
  SeqLin: integer;
  ArqRe1: string;
  ArqRe2: string;
  ArqRs1: string;
  ArqRs2: string;
  FlgRej: string;
  FlgArq: string;
  MSGNFE: string;
  MSGANT: string;
  RECNFE: string;
  PRONFE: string;
  DTENFE: string;
  HRENFE: string;
  DTEPNF: string;
  HREPNF: string;
  ArqEnv: TextFile;
  ArqRet: TStringList;
  SeqRet: Boolean;
  Handle: LongInt;
  ApeEmp: string;
  NomEmp: string;
  EndEmp: string;
  NumEmp: string;
  RefEmp: string;
  BaiEmp: string;
  CidEmp: string;
  UfeEmp: string;
  CepEmp: string;
  FonEmp: string;
  CgcEmp: string;
  CpfEmp: string;
  InsEmp: string;
  CgcTra: string;
  CpfTra: string;
  InsTra: string;
  ApeTra: string;
  NomTra: string;
  EndTra: string;
  NumTra: string;
  RefTra: string;
  BaiTra: string;
  CidTra: string;
  UfeTra: string;
  DesNat: string;
  EmaCli: string;
  CgcCli: string;
  CpfCli: string;
  InsCli: string;
  NomCli: string;
  EndCli: string;
  NumCli: string;
  RefCli: string;
  BaiCli: string;
  CidCli: string;
  UfeCli: string;
  CepCli: string;
  FonCli: string;
  CodPro: string;
  ClsIpi: string;
  DesPro: string;
  CodCfo: string;
  CodUnd: string;
  CodSt1: string;
  CodSt2: string;
  QtdPro: string;
  VluPro: string;
  TotPro: string;
  EspFat: string;
  MarFat: string;
  PesLiq: string;
  PesBrt: string;
  TipNCM: string;
  NroSuf: string;
  BasIcm: string;
  RedIcm: string;
  PerIcm: string;
  TotIcm: string;
  TrbPis: string;
  PerPis: string;
  BasPis: string;
  TotPis: string;
  TrbCof: string;
  PerCof: string;
  BasCof: string;
  TotCof: string;
  NroDoc: string;
  TrbIpi: string;
  BasIpi: string;
  PerIpi: string;
  TotIpi: string;
  TotDsr: string;
  BasSub: string;
  IcmSub: string;
  MrgSub: string;
  NfePis: string;
  NfeCof: string;
  TotSub: string;
  TotFrt: string;
  TotSeg: string;
  TotDes: string;
  TipFrt: string;
  ObsFat: string;
  TipCnd: string;
  NomArq: string;
  sNumeroNF: string;
  NroPais_Emp: string;
  NomPais_Emp: string;
  NroPais_Cli: string;
  NomPais_Cli: string;
  Finalizar: string;
  Id_EmpCie: string;
  Id_CliNfe: string;
  Id_EstSip: string;
  Id_FinPai: integer;
  Id_FinUfe: integer;
  Id_FinCie: integer;
  Id_CliUfe: integer;
  Id_CliCie: integer;
  Nome_ArqIni: string;
  linpro: string;
  id_CMPNFS: integer;
  chaven: string;
  cEAN, cEANTrib: string;
  nrofat, sText, cinserir, cdir, vchave, strAux: string;
  SN, ImpRef: boolean; //Simples Nacional
begin
  inherited;
  //Etapa 1 - Acertar dados
  pnMensag.visible := true;
  pnmensag.BringToFront;

  id_CMPNFS := CmpNfsID_CMPNFS.asinteger;
  CmpNfs.Active := false;
  cmpnfs.sql.text := 'Select CmpNfs.*, ' +
    ' FinFor.NomFor, ' +
    '            FinFor.EmaFor ' +
    ' From cmpnfs LEFT JOIN FinFOR ON (CmpNfs.CodFOR = FinFOr.CodFor) ' +
    ' Where id_CMPNFS = ' + QuotedStr(inttostr(ID_CMPNFS)) +
    ' And ENVNFE <> ' + QuotedStr('Sim') + 'Order by NroNfs ';
  cmpnfs.open;

  cmpnfs.Edit;
  //  CmpNfsNRONFS.Value := strtoint(EdPSqNroNfs.text);

        //Verificando se vai imprimir referencia.
  quSql.active := false;
  qusql.sql.text := 'Select IMPREF from FATPAR';
  quSql.active := true;
  if qusql.fieldbyname('IMPREF').asString = 'Sim' then
    IMPREF := True
  else
    Impref := false;

  //verificando se � simples nacional
  qusql.active := false;
  qusql.sql.text := 'Select GEREMP.TIPEMP from GEREMP where codemp = ' + QuotedStr(CMPNFSCODEMP.asstring);
  qusql.open;

  if (Trim(qusql.fieldbyname('TIPEMP').AsString) = 'Simples Nacional') then
    sn := true
  else
    sn := false;

  vnumnota := CmpNfsNRONFS.asString;
  cmpnfs.Post;
  Finalizar := 'N';
  if CmpNfsID_CMPNFS.Value > 0 then
  begin
    Id_CMPNFS := CMPNFSID_CMPNFS.Value;
    if CMPNFSID_CMPNFS.Value > 0 then
    begin
      if fMsg('Confirma envio para emiss�o da NFe ?', 'O') then
      begin
        try
          Finalizar := 'N';
          fmManNF1R_NFE := TfmManNF1R_NFE.Create(Self);
          fmManNF1R_NFE.ShowModal;
          Finalizar := fmManNF1R_NFE.Finalizar;
        finally
          FreeAndNil(fmManNF1R_NFE);
        end;
      end;
    end;
  end;
  if Finalizar = 'S' then
  begin
    with quSQL, SQL do
    begin
      Close;
      Text := ' Select GerEmp.ApeEmp,' +
        '        GerEmp.NomEmp,' +
        '        GerEmp.CgcEmp,' +
        '        GerEmp.InsEmp,' +
        '        GerEmp.CepEmp,' +
        '        GerEmp.TenEmp,' +
        '        GerEmp.EndEmp,' +
        '        GerEmp.NumEmp,' +
        '        GerEmp.RefEmp,' +
        '        GerEmp.BaiEmp,' +
        '        GerEmp.SigUfe,' +
        '        GerEmp.PrtEmp,' +
        '        GerEmp.FonEmp,' +
        '        GerEmp.Id_FinUfe,' +
        '        GerEmp.Id_FinCie,' +
        '        GerEmp.Id_FinPai ' +
        ' From GerEmp' +
        ' Where GerEmp.CodEmp = ' + QuotedStr(IntToStr(CmpNfsCODEMP.Value));
      Open;
      ApeEmp := fLimpaAcentos(FieldbyName('ApeEmp').AsString);
      NomEmp := fLimpaAcentos(FieldbyName('NomEmp').AsString);
      if FieldbyName('TenEmp').AsString <> '' then
        EndEmp := Trim(FieldbyName('TenEmp').AsString) + ' ' + FieldbyName('EndEmp').AsString
      else
        EndEmp := FieldbyName('EndEmp').AsString;
      EndEmp := fLimpaAcentos(EndEmp);
      NumEmp := fLimpaAcentos(FieldbyName('NumEmp').AsString);
      RefEmp := fLimpaAcentos(FieldbyName('RefEmp').AsString);
      BaiEmp := fLimpaAcentos(FieldbyName('BaiEmp').AsString);
      UfeEmp := fLimpaAcentos(FieldbyName('SigUfe').AsString);
      CepEmp := FieldbyName('CepEmp').AsString;
      if Length(Trim(FieldbyName('CgcEmp').AsString)) = 11 then
        CpfEmp := FieldbyName('CgcEmp').AsString
      else
        CgcEmp := FieldbyName('CgcEmp').AsString;
      Id_FinUfe := FieldbyName('Id_FinUfe').AsInteger;
      Id_FinCie := FieldbyName('Id_FinCie').AsInteger;
      if Trim(fLimpaStr(FieldbyName('PrtEmp').AsString)) <> '' then
        FonEmp := Trim(fLimpaStr(FieldbyName('PrtEmp').AsString)) + Trim(fLimpaStr(FieldbyName('FonEmp').AsString))
      else
        FonEmp := Trim(fLimpaStr(FieldbyName('FonEmp').AsString));
      InsEmp := fLimpaStr(FieldbyName('InsEmp').AsString);
      NomEmp := copy(Trim(NomEmp), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NomEmp), 1, 60)));
      ApeEmp := copy(Trim(ApeEmp), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(ApeEmp), 1, 60)));
      EndEmp := copy(Trim(EndEmp), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(EndEmp), 1, 60)));
      NumEmp := copy(Trim(NumEmp), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NumEmp), 1, 60)));
      RefEmp := copy(Trim(RefEmp), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(RefEmp), 1, 60)));
      BaiEmp := copy(Trim(BaiEmp), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(BaiEmp), 1, 60)));
      UfeEmp := copy(Trim(UfeEmp), 1, 02) + fReplicate(' ', 02 - Length(copy(Trim(UfeEmp), 1, 02)));
      InsEmp := copy(Trim(InsEmp), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(InsEmp), 1, 14)));
      CgcEmp := fReplicate('0', 14 - Length(copy(Trim(CgcEmp), 1, 14))) + copy(Trim(CgcEmp), 1, 14);
      CpfEmp := fReplicate('0', 14 - Length(copy(Trim(CpfEmp), 1, 14))) + copy(Trim(CpfEmp), 1, 14);
      CepEmp := fReplicate('0', 08 - Length(copy(Trim(CepEmp), 1, 08))) + copy(Trim(CepEmp), 1, 08);
      FonEmp := fReplicate('0', 10 - Length(copy(Trim(FonEmp), 1, 10))) + copy(Trim(FonEmp), 1, 10);
      Id_FinPai := FieldbyName('Id_FinPai').AsInteger;
    end;
  end;
  if Finalizar = 'S' then
    if not Id_FinUfe > 0 then
    begin
      Finalizar := 'N';
      fmManPri.Enabled := True;
      fmManLNRMA_NFE.Enabled := True;
      fmsgErro('C�digo da UF para emiss�o de NFe n�o informado no cadastro da empresa.', nil);
    end;
  if Finalizar = 'S' then
    if not Id_FinCie > 0 then
    begin
      Finalizar := 'N';
      fmManPri.Enabled := True;
      fmManLNRMA_NFE.Enabled := True;
      fmsgErro('C�digo de municipio para emiss�o de NFe n�o informado no cadastro da empresa.', nil);
    end;
  if Finalizar = 'S' then
    if not Id_FinPai > 0 then
    begin
      Finalizar := 'N';
      fmManPri.Enabled := True;
      fmManLNRMA_NFE.Enabled := True;
      fmsgErro('C�digo do pa�s para emiss�o de NFe n�o informado no cadastro da empresa.', nil);
    end;
  if Finalizar = 'S' then
  begin
    with quSQL, SQL do
    begin
      Close;
      Text := ' Select FinPai.NomPai From FinPai Where FinPai.Id_FinPai = ' + QuotedStr(IntToStr(Id_FinPai));
      Open;
      NomPais_Emp := fLimpaAcentos(FieldbyName('NomPai').AsString);
      NomPais_Emp := copy(Trim(NomPais_Emp), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NomPais_Emp), 1, 60)));
      NroPais_Emp := fNumZeros(IntToStr(Id_FinPai), 4);
    end;
    NfePis := fLimpaStr(Trim(CMPNFSNfePis.Value));
    NfeCof := fLimpaStr(Trim(CMPNFSNfeCof.Value));
    if CMPNFSId_EstSip.Value > 0 then
    begin

      with quSQL, SQL do
      begin
        Close;
        Text := ' Select EstSip.SigNfe' +
          ' From EstSip' +
          ' Where EstSip.Id_EstSip = ' + QuotedStr(IntToStr(CMPNFSId_EstSip.Value));
        Open;
        Id_EstSip := FieldbyName('SigNfe').AsString;
      end;
    end
    else
    begin
      if Trim(CMPNFSTipPfa.Value) = 'Saida' then
      begin
        if CMPNFSTotIpi.Value > 0 then
          Id_EstSip := '50'
        else
          Id_EstSip := '99';
      end
      else
        Id_EstSip := '49';
    end;
    with quSQL, SQL do
    begin
      Close;
      Text := ' Select Nomfor,' +
        '        Cgcfor,' +
        '        Insfor,' +
        '        ""as NroSuf,' +
        '        Ptrfor,' +
        '        Fonfor,' +
        '        EmAFOR,' +
        '        Id_FinPai' +
        ' From FinFor' +
        ' Where CodFor = ' + QuotedStr(IntToStr(CmpNfsCODFOR.Value));
      Open;
      NomCli := fLimpaAcentos(FieldbyName('NomFor').AsString);
      NroSuf := fLimpaAcentos(fLimpaStr(' '));
      EmaCli := Trim(FieldbyName('EmaFor').AsString);
      EmaCli := copy(EmaCli, 1, 60) + fReplicate(' ', 60 - Length(copy(EmaCli, 1, 60)));
      if Length(Trim(FieldbyName('CgcFor').AsString)) = 11 then
        CpfCli := FieldbyName('CgcFor').AsString
      else
        CgcCli := FieldbyName('CgcFor').AsString;
      InsCli := fLimpaStr(FieldbyName('InsFor').AsString);
      CgcCli := copy(Trim(CgcCli), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(CgcCli), 1, 14)));
      CpfCli := copy(Trim(CpfCli), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(CpfCli), 1, 14)));
      InsCli := copy(Trim(InsCli), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(InsCli), 1, 14)));
      if Trim(fLimpaStr(FieldbyName('Ptrfor').AsString)) <> '' then
        FonCli := Trim(fLimpaStr(FieldbyName('Ptrfor').AsString)) + Trim(fLimpaStr(FieldbyName('Fonfor').AsString))
      else
        FonCli := Trim(fLimpaStr(FieldbyName('FonFor').AsString));
      FonCli := fRemoverEspaco(FonCli);
      NomCli := copy(Trim(NomCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NomCli), 1, 60)));
      NroSuf := copy(Trim(NroSuf), 1, 09) + fReplicate(' ', 09 - Length(copy(Trim(NroSuf), 1, 09)));
      FonCli := fReplicate('0', 10 - Length(copy(Trim(FonCli), 1, 10))) + copy(Trim(FonCli), 1, 10);
      Id_FinPai := FieldbyName('Id_FinPai').AsInteger;
      if not Id_FinPai > 0 then
      begin
        Finalizar := 'N';
        fmManPri.Enabled := True;
        fmManLNRMA_NFE.Enabled := True;
        fmsgErro('C�digo do pa�s para emiss�o de NFe n�o informado no cadastro do Fornecedor.', nil);
      end
      else
        NroPais_Cli := fNumZeros(IntToStr(Id_FinPai), 4);
    end;
    Id_CliUfe := CMPNFSId_FinUff.Value;
    Id_CliCie := CMPNFSId_FinCif.Value;
    with quSQL, SQL do
    begin
      Close;
      Text := ' Select FinPai.NomPai From FinPai Where FinPai.Id_FinPai = ' + QuotedStr(IntToStr(Id_FinPai));
      Open;
      NomPais_Cli := fLimpaAcentos(FieldbyName('NomPai').AsString);
      NomPais_Cli := copy(Trim(NomPais_Cli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NomPais_Cli), 1, 60)));
    end;
    with quSQL, SQL do
    begin
      Close;
      Text := ' Select FinCie.NomCie,' +
        '        FinCie.SigNfe ' +
        ' From FinCie' +
        ' Where FinCie.Id_FinCie = ' + QuotedStr(IntToStr(Id_CliCie));
      Open;
      Id_CliNfe := IntToStr(Id_CliUfe) + FieldbyName('SigNfe').AsString;
      CidCli := fLimpaAcentos(FieldbyName('NomCie').AsString);
      CidCli := copy(Trim(CidCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(CidCli), 1, 60)));
    end;
  end;
  if Finalizar = 'S' then
  begin
    if Trim(CMPNFSSeqNFe.Value) = '' then
    begin
      CMPNFS.Edit;
      CMPNFSFlgAtu.Value := 'F';
      CMPNFSSeqNFe.Value := fMontaChaveAcessoNFe(Id_FinUfe, CmpNfsDTENFS.Value, CgcEmp, 55, 1, CMPNFSNroNfs.Value, 1);
      with CMPNFS do
      try
        fmManGDB.dbMain.StartTransaction; //Inicia a Transa��o
        ApplyUpdates; //Tenta aplicar as alteracoes
        fmManGDB.dbMain.Commit; //confirma todas as alteracoes fechando a transa��o
      except
        begin
          fmManGDB.dbMain.Rollback; //desfaz as alteracoes se acontecer um erro
          if CMPNFS.State <> dsBrowse then
            CMPNFS.CancelUpdates;
        end;
      end;
      CMPNFS.Close;
      CMPNFS.Open;
    end;
  end;

  // Etapa 2 - Verificando se o servi�o est� ativo
  flgrej := 'N';
  //Etapa 3 - Preparar os dados para o envio para o robo
  if FlgRej = 'N' then
  begin
    Application.ProcessMessages;
    fmManPri.Enabled := False;
    fmManLNRMA_NFE.Enabled := False;

    if not directoryExists(cDir + 'REQ') then
      CreateDir(cDir + 'REQ');
    if not directoryExists(cDir + 'RESP') then
      CreateDir(cDir + 'RESP');
    if not directoryExists(cDir + 'BACKUP') then
      CreateDir(cDir + 'BACKUP');
    if not directoryExists(cDir + 'BACKUP\NFE') then
      CreateDir(cDir + 'BACKUP\NFE');
    ArqRe1 := cDir + 'REQ\INTPOS.TMP'; //trabalho interno
    ArqRe2 := cDir + 'REQ\INTPOS.001'; //arquivo que o robo enxerga
    ArqRs1 := cDir + 'RESP\INTPOS.STS'; //trabalho interno
    ArqRs2 := cDir + 'RESP\INTPOS.001'; //arquivo que o robo envia
    DeleteFile(ArqRe1);
    DeleteFile(ArqRe2);
    DeleteFile(ArqRs1);
    DeleteFile(ArqRs2);
    AssignFile(ArqEnv, ArqRe1);
    Rewrite(ArqEnv);
    chave := CMPNFSSeqNFe.Value;

    Writeln(ArqEnv, 'EM0201' +
      UfeEmp +
      CMPNFSSeqNFe.Value +
      fNumZeros(IntToStr(CMPNFSLotNfe.Value), 9));

    with quSQL, SQL do
    begin
      Close;
      Text := ' Select FinCie.NomCie,' +
        '        FinCie.SigNfe ' +
        ' From FinCie' +
        ' Where FinCie.Id_FinCie = ' + QuotedStr(IntToStr(Id_FinCie));
      Open;
      Id_EmpCie := IntToStr(Id_FinUfe) + FieldbyName('SigNfe').AsString;
      CidEmp := fLimpaAcentos(FieldbyName('NomCie').AsString);
      CidEmp := copy(Trim(CidEmp), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(CidEmp), 1, 60)));
    end;

    DesNat := fLimpaAcentos(CMPNFSDesNat.Value);
    DesNat := copy(Trim(DesNat), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(DesNat), 1, 60)));
    TipCnd := '0';
    if CMPNFSIntFin.Value = 'Nao' then
      TipCnd := '2'
    else
      TipCnd := '1';

    Writeln(ArqEnv, 'EM0202' + // Uso interno do sistema
      IntToStr(Id_FinUfe) + // C�digo da UF do emitente do documento fiscal
      copy(CMPNFSSeqNFE.Value, 35, 09) + // C�digo n�merico que comp�e a chave de acesso
      DesNat + // Descri��o da natureza de opera��o
      TipCnd + // Indicador da forma de pagamento 0-Pagamento � vista 1-Pagamento � prazo 2-Outros
      '55' + // C�digo do Modelo do documento fiscal
      '1' + // S�rie do documento fiscal
      fNumZeros((vnumnota), 9) + // N�mero do documento fiscal
      copy(FormatDateTime('dd/mm/yyyy', CmpNfsDTENFS.Value), 7, 4) + '-' + // Data de emiss�o do documento fiscal
      copy(FormatDateTime('dd/mm/yyyy', CmpNfsDTENFS.Value), 4, 2) + '-' +
      copy(FormatDateTime('dd/mm/yyyy', CmpNfsDTENFS.Value), 1, 2) +
      '0000-00-00' + // Data de saida ou entrada da Mercadoria/Produto
      '1' + // Tipo do documento fiscal
      Id_EmpCie + // C�digo do Municipio de Ocorr�ncia do Fato Gerador
      '1' + // Formato de Impressao do DANFE
      '1' + // Forma de emiss�o da NF-e
      copy(CMPNFSSeqNFE.Value, 44, 1) + // Digito verificador da Chave de Acesso da NF-e
      '2' + // Identifica��o do Ambiente
      '1' + // Finalidade de emiss�o da NF-e
      '0' + // Processo de emiss�o da NF-e
      'EMERION FATURA      '); // Vers�o do processo de emiss�o da NF-e

    //    VNumNota:=CMPNFSNroNfs.AsString;

    Writeln(ArqEnv, 'EM0203' + // Uso interno do sistema
      CgcEmp + // CNPJ do emitente
      CpfEmp + // CPF do emitente
      NomEmp + // Raz�o social ou Nome do emitente
      ApeEmp + // Nome fantasia
      EndEmp + // Logradouro
      NumEmp + // N�mero
      RefEmp + // Complemento
      BaiEmp + // Bairro
      Id_EmpCie + // C�digo do municipio
      CidEmp + // Nome do municipio
      UfeEmp + // Sigla da UF
      CepEmp + // C�digo do CEP
      NroPais_Emp + // C�digo do Pa�s
      NomPais_Emp + // Nome do Pa�s
      FonEmp + // Telefone
      InsEmp + // IE
      copy(Trim(CMPNFSINSSUB.AsString), 1, 18) + fReplicate(' ', 18 - Length(copy(Trim(CMPNFSINSSUB.AsString), 1, 18))) + // IE do Substituto tribut�rio
      '               ' + // IM inscri��o municipal
      '       '); // CNAE Fiscal

    if CmpNfsTEFFOR.Value <> '' then
      EndCli := Trim(CmpNfsTEFFOR.Value) + ' ' + CmpNfsENFFOR.Value
    else
      EndCli := CmpNfsENFFOR.Value;
    EndCli := fLimpaAcentos(EndCli);
    NumCli := fLimpaAcentos(CmpNfsNRFFOR.Value);
    RefCli := fLimpaAcentos(CmpNfsRFFFOR.Value);
    BaiCli := fLimpaAcentos(CmpNfsBAFFOR.Value);
    UfeCli := fLimpaAcentos(CmpNfsUFEFOR.Value);
    CepCli := CMPNFSCeffor.Value;
    EndCli := copy(Trim(EndCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(EndCli), 1, 60)));
    NumCli := copy(Trim(NumCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NumCli), 1, 60)));
    RefCli := copy(Trim(RefCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(RefCli), 1, 60)));
    BaiCli := copy(Trim(BaiCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(BaiCli), 1, 60)));
    UfeCli := copy(Trim(UfeCli), 1, 02) + fReplicate(' ', 02 - Length(copy(Trim(UfeCli), 1, 02)));
    CepCli := fReplicate('0', 08 - Length(copy(Trim(CepCli), 1, 08))) + copy(Trim(CepCli), 1, 08);
    Writeln(ArqEnv, 'EM0204' + // Uso interno do sistema
      CgcCli + // CNPJ do destinatario
      CpfCli + // CPF do destinatario
      NomCli + // Raz�o social ou nome do destinatario
      EndCli + // Logradouro
      NumCli + // N�mero
      RefCli + // Complemento
      BaiCli + // Bairro
      Id_CliNfe + // C�digo do Municipio
      CidCli + // Nome do Municipio
      UfeCli + // Sigla da UF
      CepCli + // C�digo do Cep
      NroPais_Cli + // C�digo do Pa�s
      NomPais_Cli + // Nome do Pa�s
      FonCli + // Telefone
      InsCli + // IE
      NroSuf); // Inscri��o SUFRAMA

    if (Trim(CmpNfsCEPFOR.Value) <> Trim(CmpNfsCEFFOR.Value)) or (Trim(CmpNfsTENFOR.Value) <> Trim(CMPNFSTeffor.Value)) or (Trim(CMPNFSEndfor.Value) <>
      Trim(CMPNFSEnffor.Value)) or
      (Trim(CMPNFSRefFor.Value) <> Trim(CMPNFSRffFor.Value)) or (Trim(CMPNFSNumFor.Value) <> Trim(CMPNFSNrfFor.Value)) or (Trim(CMPNFSBaiFor.Value) <>
        Trim(CMPNFSBafFor.Value)) or
      (Trim(CMPNFSCidFor.Value) <> Trim(CMPNFSCifFor.Value)) or (Trim(CMPNFSUfeFor.Value) <> Trim(CMPNFSUffFor.Value)) then
    begin
      if Trim(CmpNfsCGEFOR.Value) <> '' then
        CgcCli := copy(Trim(CmpNfsCGEFOR.Value), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(CmpNfsCGEFOR.Value), 1, 14)));

      if CmpNfsTENFOR.Value <> '' then
        EndCli := Trim(CMPNFSTenfor.Value) + ' ' + CMPNFSEndfor.Value
      else
        EndCli := CMPNFSEndFor.Value;

      EndCli := fLimpaAcentos(EndCli);
      NumCli := fLimpaAcentos(CMPNFSNumFor.Value);
      RefCli := fLimpaAcentos(CMPNFSRefFor.Value);
      BaiCli := fLimpaAcentos(CMPNFSBaiFor.Value);
      UfeCli := fLimpaAcentos(CMPNFSUfeFor.Value);
      EndCli := copy(Trim(EndCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(EndCli), 1, 60)));
      NumCli := copy(Trim(NumCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NumCli), 1, 60)));
      RefCli := copy(Trim(RefCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(RefCli), 1, 60)));
      BaiCli := copy(Trim(BaiCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(BaiCli), 1, 60)));
      UfeCli := copy(Trim(UfeCli), 1, 02) + fReplicate(' ', 02 - Length(copy(Trim(UfeCli), 1, 02)));
      CepCli := fReplicate('0', 08 - Length(copy(Trim(CepCli), 1, 08))) + copy(Trim(CepCli), 1, 08);
      Id_FinUfe := CMPNFSId_FinUfe.Value;
      Id_FinCie := CMPNFSId_FinCie.Value;
      with quSQL, SQL do
      begin
        Close;
        Text := ' Select FinCie.NomCie,' +
          '        FinCie.SigNfe ' +
          ' From FinCie' +
          ' Where FinCie.Id_FinCie = ' + QuotedStr(IntToStr(Id_FinCie));
        Open;
        Id_CliNfe := IntToStr(Id_FinUfe) + FieldbyName('SigNfe').AsString;
        CidCli := fLimpaAcentos(FieldbyName('NomCie').AsString);
        CidCli := copy(Trim(CidCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(CidCli), 1, 60)));
      end;
      Writeln(ArqEnv, 'EM0205' + // Uso interno do sistema
        CgcCli + // CNPJ do destinatario
        EndCli + // Logradouro
        NumCli + // N�mero
        RefCli + // Complemento
        BaiCli + // Bairro
        Id_CliNfe + // C�digo do Municipio
        CidCli + // Nome do Municipio
        UfeCli); // Sigla da UF
    end;

    TrbPis := Trim(CMPNFSTrbPis.Value);
    TrbCof := Trim(CMPNFSTrbCof.Value);
    TrbPis := copy(Trim(TrbPis), 1, 03) + fReplicate(' ', 03 - Length(copy(Trim(TrbPis), 1, 03)));
    TrbCof := copy(Trim(TrbCof), 1, 03) + fReplicate(' ', 03 - Length(copy(Trim(TrbCof), 1, 03)));
    PerPis := fSubstDecimal(FormatFloat('##0.00', CMPNFSPerPis.Value), 05);
    PerCof := fSubstDecimal(FormatFloat('##0.00', CMPNFSPerCof.Value), 05);
    with quSQL, SQL do
    begin
      Close;
      Text := 'Select CmpNF2.*, ' +
        '    (Select CBAPRO from ESTPRO where CODGRU = CmpNF2.codgru and codsub = CmpNF2.codsub and codpro = CmpNF2.codpro)as cEANTRIB, ' +
        '    (Select CBAEMB from ESTPRO where CODGRU = CmpNF2.codgru and codsub = CmpNF2.codsub and codpro = CmpNF2.codpro)as cEAN, ' +
        '        Cast(' + quotedstr('0') + ' as Numeric(15,2))as TotFrt,' +
        '        Cast(' + quotedstr('0') + ' as Numeric(15,2))as TotSEG,' +
        '        Cast(' + quotedstr('0') + ' as Numeric(15,2))as TotDES ' +
        '  From CmpNf2 ' +
        '    Where CmpNf2.CodEmp = ' + QuotedStr(CmpNfsCODEMP.asstring) +
        '     and CmpNf2.DteNfs = ' + QuotedStr(formatdatetime('mm/dd/yyyy', CmpNfsDTENFS.value)) +
        '     and CmpNf2.SeqNfs = ' + QuotedStr(CmpNfsSEQNFS.asstring) +
        'Order by CmpNf2.NroNf2';
      Open;
      First;
    end;

    while not quSQL.EOF do
    begin
      //Verificando se vai imprimir o codigo ou a referencia
      if impref then
        codpro := quSQL.FieldbyName('REFNF2').AsString
      else
        CodPro := quSQL.FieldbyName('CodClp').AsString +
          quSQL.FieldbyName('CodGru').AsString +
          quSQL.FieldbyName('CodSub').AsString +
          quSQL.FieldbyName('CodPro').AsString;

      cEAN := quSQL.FieldbyName('cEAN').AsString;
      cEANTrib := quSQL.FieldbyName('cEANTrib').AsString;
      cEAN := copy(Trim(cEAN), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(cEAN), 1, 14)));
      cEANTrib := copy(Trim(cEANTrib), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(cEANTrib), 1, 14)));

      DesPro := AllTrim(fLimpaAcentos(quSQL.FieldbyName('DesNF2').AsString));
      DesPro := copy(DesPro, 1, 120);
      ClsIpi := Trim(fLimpaStr(quSQL.FieldbyName('ClsIpi').AsString));
      CodCfo := Trim(fLimpaStr(quSQL.FieldbyName('CodCfo').AsString));
      if Trim(ClsIpi) = '00000000' then
        ClsIpi := '';
      CodUnd := Trim(quSQL.FieldbyName('CodUnd').AsString);
      CodSt1 := Trim(quSQL.FieldbyName('CodSt1').AsString);
      CodSt2 := Trim(quSQL.FieldbyName('CodSt2').AsString);
      TrbIpi := Trim(quSQL.FieldbyName('TrbIpi').AsString);
      QtdPro := fSubstDecimal(FormatFloat('########0.0000', quSQL.FieldbyName('QtpNF2').AsFloat), 15);
      VluPro := fSubstDecimal(FormatFloat('########0.0000', quSQL.FieldbyName('VluNF2').AsFloat), 15);
      TotPro := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotITE').AsFloat), 15);
      BasIcm := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('BasIcm').AsFloat), 15);
      RedIcm := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('RedIcm').AsFloat), 15);
      PerIcm := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('IcmNF2').AsFloat), 05);
      TotIcm := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotIcm').AsFloat), 15);
      BasIpi := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('BasIpi').AsFloat), 15);
      PerIpi := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('IpiNF2').AsFloat), 05);
      TotIpi := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotIpi').AsFloat), 15);
      MrgSub := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('MrgSub').AsFloat), 05);
      IcmSub := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('IcmSub').AsFloat), 05);
      BasSub := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('BasSub').AsFloat), 15);
      TotSub := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotSub').AsFloat), 15);
      TotDsr := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotDES').AsFloat), 15);
      TotFrt := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotFrt').AsFloat), 15);
      TotSeg := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotSeg').AsFloat), 15);
      TotDes := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotDes').AsFloat), 15);
      BasPis := fSubstDecimal(FormatFloat('########0.00', (quSQL.FieldbyName('TotNF2').AsFloat - quSQL.FieldbyName('TotDES').AsFloat)), 15);
      BasCof := fSubstDecimal(FormatFloat('########0.00', (quSQL.FieldbyName('TotNF2').AsFloat - quSQL.FieldbyName('TotDES').AsFloat)), 15);
      TotPis := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotPis').AsFloat), 15);
      TotCof := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotCof').AsFloat), 15);
      TipNCM := '';
      CodPro := copy(Trim(CodPro), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(CodPro), 1, 60)));
      CodCfo := copy(Trim(CodCfo), 1, 04) + fReplicate(' ', 04 - Length(copy(Trim(CodCfo), 1, 04)));
      CodUnd := copy(Trim(CodUnd), 1, 06) + fReplicate(' ', 06 - Length(copy(Trim(CodUnd), 1, 06)));
      TrbIpi := copy(Trim(TrbIpi), 1, 03) + fReplicate(' ', 03 - Length(copy(Trim(TrbIpi), 1, 03)));
      CodSt1 := fReplicate('0', 01 - Length(copy(Trim(CodSt1), 1, 01))) + copy(Trim(CodSt1), 1, 01);
      //-------Simples nacional
      if sn then
        CodSt2 := fReplicate('0', 03 - Length(copy(Trim(CodSt2), 1, 03))) + copy(Trim(CodSt2), 1, 03)
      else
        CodSt2 := fReplicate('0', 02 - Length(copy(Trim(CodSt2), 1, 02))) + copy(Trim(CodSt2), 1, 02);
      ClsIpi := fReplicate('0', 08 - Length(copy(Trim(ClsIpi), 1, 08))) + copy(Trim(ClsIpi), 1, 08);
      DesPro := copy(Trim(DesPro), 1, 120) + fReplicate(' ', 120 - Length(copy(Trim(DesPro), 1, 120)));

      Writeln(ArqEnv, 'EM0206' + // Uso interno do sistema
        '00' + // Tipo de opera��o
        fNumZeros(IntToStr(quSQL.FieldbyName('NroNF2').AsInteger), 3) + // Nro. do item
        CodPro + // C�digo do Produto ou servi�o
        cEAN + // GTIN
        DesPro + // Descri��o do produto ou servi�o
        ClsIpi + // C�digo NCM
        '   ' + // EX_TIPI
        '  ' + // G�nero do produto ou servi�o
        CodCfo + // C�digo fiscal da opera��o
        CodUnd + // Unidade comercial
        QtdPro + // Quantidade comercial
        VluPro + // Valor unit�rio de comercializa��o
        TotPro + // Valor Total Bruto dos Produtos ou Servi�os
        cEANTRIB + // GTIN
        CodUnd + // Unidade Tributavel
        QtdPro + // Quantidade Tributavel
        VluPro + // Valor Unit�rio de tributa��o
        TotFrt + // Valor Total do Frete
        TotSeg + // Valor Total do Seguro
        TOTDES + // Valor de Outras Despesas
        TotDsr); // Valor do Desconto
      //========================== THIAGO OBS DO ITEM
      strAux := Trim(quSQL.FieldbyName('ObsNF2').AsString);

      // descricao de DI
      qusql1.Active := false;
      quSQL1.sql.Text := 'Select DESIMP from estpro where ' + #13 +
        ' CodCLP = ' + QuotedStr(qusql.fieldbyname('CODCLP').asstring) +
        ' and CODGRU = ' + QuotedStr(qusql.fieldbyname('CODGRU').asstring) +
        ' and CODSUB = ' + QuotedStr(qusql.fieldbyname('CODSUB').asstring) +
        ' and CODPRO = ' + QuotedStr(qusql.fieldbyname('CODPRO').asstring);

      quSQL1.Active := true;

      strAux := strAux + ' - ' + Trim(qusql1.fieldbyname('DESIMP').asstring);
      strAux := copy(Trim(strAux), 1, 500) + fReplicate(' ', 500 - Length(copy(Trim(strAux), 1, 500)));
      strAux := StringReplace(StringReplace(strAux, #13, ' ', [rfReplaceAll, rfIgnoreCase]), #10, '', [rfReplaceAll, rfIgnoreCase]);
      // descricao de DI
      Writeln(ArqENV, 'EM1206' + StrAux);

      //========================== THIAGO OBS DO ITEM

      Writeln(ArqEnv, 'EM0207' + // Uso interno do sistema
        '01' + // Tipo de opera��o
        fNumZeros(IntToStr(quSQL.FieldbyName('NroNF2').AsInteger), 3) + // Nro. do item
        CodSt1 + // Origem da mercadoria
        CodSt2 + // Grupo de CST
        '3' + // Modalidade de determina��o da BC do ICMS ST
        RedIcm + // Percential de redu��o de BC do ICMS
        BasIcm + // Valor da BC do ICMS
        PerIcm + // Aliquota do imposto
        TotIcm + // Valor do ICMS
        BasSub + // Valor da BC do ICMS ST
        IcmSub + // Aliquota do imposto do ICMS ST
        MrgSub + // Percentual da Margem de valor Adicionado do ICMS ST
        TotSub); // Valor do ICMS ST

      Writeln(ArqEnv, 'EM0208' + // Uso interno do sistema
        '01' + // Tipo de opera��o
        fNumZeros(IntToStr(quSQL.FieldbyName('NroNF2').AsInteger), 3) + // Nro. do item
        TrbIpi + // IPI tributado
        BasIpi + // Valor da BC do IPI
        PerIpi + // Aliquota do imposto
        TotIpi + // Valor do IPI
        Id_EstSip); // Situa��o tribut�ria do IPI

      Writeln(ArqEnv, 'EM0209' + // Uso interno do sistema
        '01' + // Tipo de opera��o
        fNumZeros(IntToStr(quSQL.FieldbyName('NroNF2').AsInteger), 3) + // Nro. do item
        NfePis + // Situa��o Tributaria do PIS
        TrbPis + // PIS tributado
        BasPis + // BC PIS
        PerPis + // Percentual do PIS
        TotPis + // Valor do PIS
        NfeCof + // Situa��o Tributaria do COFINS
        TrbCof + // COFINS tributado
        BasCof + // BC COFINS
        PerCof + // Percentual do COFINS
        TotCof); // Valor do COFINS
      Application.ProcessMessages;
      quSQL.Next;
    end;

    Writeln(ArqEnv, 'EM0210' + // Uso interno do sistema
      fSubstDecimal(FormatFloat('########0.00', CMPNFSBasIcm.Value), 15) + // Base de Calculo do ICMS
      fSubstDecimal(FormatFloat('########0.00', CMPNFSTotIcm.Value), 15) + // Valor Total do ICMS
      fSubstDecimal(FormatFloat('########0.00', CMPNFSBasSub.Value), 15) + // Base de Calculo do ICMS ST
      fSubstDecimal(FormatFloat('########0.00', CMPNFSTotSub.Value), 15) + // Valor Total do ICMS ST
      fSubstDecimal(FormatFloat('########0.00', CMPNFSTotITE.Value), 15) + // Valor Total dos produtos e servi�os
      fSubstDecimal(FormatFloat('########0.00', CMPNFSTotFrt.Value), 15) + // Valor Total do Frete
      fSubstDecimal(FormatFloat('########0.00', CMPNFSTotSeg.Value), 15) + // Valor Total do Seguro
      fSubstDecimal(FormatFloat('########0.00', CMPNFSTotDes.Value), 15) + // Valor Total do Desconto
      '           0.00' + // Valor Total do II
      fSubstDecimal(FormatFloat('########0.00', CMPNFSTotIpi.Value), 15) + // Valor Total do IPI
      fSubstDecimal(FormatFloat('########0.00', CMPNFSTotPis.Value), 15) + // Valor Total do PIS
      fSubstDecimal(FormatFloat('########0.00', CMPNFSTotCof.Value), 15) + // Valor Total do COFINS
      fSubstDecimal(FormatFloat('########0.00', CMPNFSTotDes.Value), 15) + // Outras Despesas Acess�rias
      fSubstDecimal(FormatFloat('########0.00', CMPNFSTotGer.Value), 15)); // Valor Total da NFe

    TipFrt := CMPNFSTipFrt.Value;

    if Length(Trim(CMPNFSCgcTra.Value)) = 11 then
      CpfTra := CMPNFSCgcTra.Value
    else
      CgcTra := CMPNFSCgcTra.Value;
    Id_FinUfe := CMPNFSId_TraUfe.Value;
    Id_FinCie := CMPNFSId_TraCie.Value;
    InsTra := fLimpaStr(CMPNFSInsTra.Value);
    NomTra := fLimpaAcentos(CMPNFSNomTra.Value);
    if Trim(CMPNFSTenTra.Value) <> '' then
      EndTra := Trim(CMPNFSTenTra.Value) + ' ' + CMPNFSEndTra.Value
    else
      EndTra := CMPNFSEndTra.Value;
    EndTra := fLimpaAcentos(EndTra);
    NumTra := fLimpaAcentos(CMPNFSNumTra.Value);
    RefTra := fLimpaAcentos(CMPNFSRefTra.Value);
    BaiTra := fLimpaAcentos(CMPNFSBaiTra.Value);
    UfeTra := fLimpaAcentos(CMPNFSUfeTra.Value);
    CgcTra := fReplicate('0', 14 - Length(copy(Trim(CgcTra), 1, 14))) + copy(Trim(CgcTra), 1, 14);
    CpfTra := fReplicate('0', 14 - Length(copy(Trim(CpfTra), 1, 14))) + copy(Trim(CpfTra), 1, 14);
    NomTra := copy(Trim(NomTra), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NomTra), 1, 60)));
    ApeTra := copy(Trim(ApeTra), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(ApeTra), 1, 60)));
    EndTra := copy(Trim(EndTra), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(EndTra), 1, 60)));
    NumTra := copy(Trim(NumTra), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NumTra), 1, 60)));
    RefTra := copy(Trim(RefTra), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(RefTra), 1, 60)));
    BaiTra := copy(Trim(BaiTra), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(BaiTra), 1, 60)));
    UfeTra := copy(Trim(UfeTra), 1, 02) + fReplicate(' ', 02 - Length(copy(Trim(UfeTra), 1, 02)));
    InsTra := copy(Trim(InsTra), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(InsTra), 1, 14)));

    with quSQL, SQL do
    begin
      Close;
      Text := ' Select FinCie.NomCie,' +
        '        FinCie.SigNfe ' +
        ' From FinCie' +
        ' Where FinCie.Id_FinCie = ' + QuotedStr(IntToStr(Id_FinCie));
      Open;
      CidTra := fLimpaAcentos(FieldbyName('NomCie').AsString);
      CidTra := copy(Trim(CidTra), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(CidTra), 1, 60)));
    end;

    PesLiq := fSubstDecimal(FormatFloat('########0.000', CMPNFSInfLiq.Value), 15);
    PesBrt := fSubstDecimal(FormatFloat('########0.000', CMPNFSInfBrt.Value), 15);
    EspFat := fLimpaAcentos(CMPNFSESPnfs.Value);
    MarFat := fLimpaAcentos(CMPNFSMARnfs.Value);
    MarFat := copy(Trim(MarFat), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(MarFat), 1, 60)));
    EspFat := copy(Trim(EspFat), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(EspFat), 1, 60)));
    nrofat := CMPNFSNUMNFS.AsString;
    NROFat := copy(Trim(NROFat), 1, 10) + fReplicate(' ', 10 - Length(copy(Trim(nroFat), 1, 60)));

    Writeln(ArqEnv, 'EM0211' + // Uso interno do sistema
      TipFrt + // Modalidade do Frete
      CgcTra + // CNPJ
      CpfTra + // CPF
      NomTra + // Raz�o social ou nome
      InsTra + // IE
      EndTra + // Endere�o completo
      CidTra + // Nome do Municipio
      UfeTra + // Sigla da UF
      fNumZeros(IntToStr(CMPNFSAltVol.Value), 15) + // Quantidade de volumes
      EspFat + // Especie dos volumes transportados
      MarFat + // Marca dos volumes transportados
      PesLiq + // Peso Liquido (em Kg)
      PesBrt +
      NROFAT
      ); // Peso Bruto (em Kg)

    if CMPNFSIntFin.Value = 'Sim' then
    begin
      NroDoc := fSubstDecimal(IntToStr(CMPNFSNroNfs.Value), 60);
      Writeln(ArqEnv, 'EM0212' + // Uso interno do sistema
        NroDoc + // N�mero da fatura
        fSubstDecimal(FormatFloat('########0.00', CMPNFSTotGer.Value), 15) + // Valor Original
        '           0.00' + // Valor do desconto
        fSubstDecimal(FormatFloat('########0.00', CMPNFSTotGer.Value), 15)); // Valor Original

    end;

    ObsFat := '';
    if Trim(fLimpaAcentos(CMPNFSOb1NFS.Value)) <> '' then
      ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb1NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb2NFS.Value)) <> '' then
      ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb2NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb3NFS.Value)) <> '' then
      ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb3NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb4NFS.Value)) <> '' then
      ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb4NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb5NFS.Value)) <> '' then
      ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb5NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb6NFS.Value)) <> '' then
      ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb6NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb7NFS.Value)) <> '' then
      ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb7NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb8NFS.Value)) <> '' then
      ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb8NFS.Value));
    ObsFat := copy(ObsFat, 1, 2000);
    ObsFat := copy(Trim(ObsFat), 1, 2000) + fReplicate(' ', 2000 - Length(copy(Trim(ObsFat), 1, 2000)));
    Writeln(ArqEnv, 'EM0214' + // Uso interno do sistema
      ObsFat); // Informa��es adicionais de interesse do Fisco
    CloseFile(ArqEnv);
  end;

  //Chamando o NFeEmerion

  if not FileExists(ExtractFilePath(application.exename) + 'NFeEmerion2.ini') then
  begin
    if MessageBox(Handle, 'Arquivo de configura��o para envio de NFe n�o encontrado. Deseja continuar?', 'Enviando Nfe', MB_YESNO + MB_ICONQUESTION) = IDNO
      then
    begin
      Abort;
    end;
  end;

  IniFile := ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini';
  if not FileExists(inifile) then
  begin
    showmessage('Erro. N�o foi poss�vel localizar o arquivo de configura��o da NF-e.');
    sysutils.abort;
  end;

  ini := TIniFile.create(IniFile);
  try
    CaminhoPDF := ini.ReadString('Geral', 'PathDANFE', '');
    CaminhoLeitura := ini.ReadString('Geral', 'PathLeitura', '');
    CaminhoRetorno := ini.ReadString('Geral', 'PathRetorno', '');
  finally
    ini.free;
  end;

  //VNumNota:=EdNroNfs.Text;
  CopyFile(Pchar(ArqRe1), Pchar(CaminhoLeitura + '\EVNOTA' + VNumNota + '.txt'), SeqRet);
  //-------Simples nacional

  ReescreveChaveEnviada(Chave);

  if sn then
  begin
    //if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
      Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe ENVIASN ' + vnumnota, SW_NORMAL);
//    else
  //    AbreNfe(PChar('ENVIASN'), pChar(vnumnota));
  end
  else
  begin
    //if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
      Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe ENVIA ' + vnumnota, SW_NORMAL);
//    else
  //    AbreNfe(PChar('ENVIA'), pChar(vnumnota));
  end;

  if Chave <> RecuperaChaveEnviando.Chave then
  begin
    Chave := RecuperaChaveEnviando.Chave;
  end;

  Application.BringToFront;
  fmManLNRMA_NFE.BringToFront;

  //   CaminhoRetorno:=ExtractFilePath(Application.exename)+'\NFE\Retorno';
//   CaminhoLeitura:=ExtractFilePath(Application.exename)+'\NFE\Leitura';

  if FileExists(CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + Chave + '.xml') then
  begin

    CMPNFS.edit;
    CMPNFSFLGATU.value := 'F';
    CMPNFSENVNFE.value := 'Sim';
    CMPNFSUSUNFE.Value := GUsu_Id;
    CMPNFSSITNFS.Value := 'Faturado';
    CMPNFSSeqNfe.Value := Chave;
    AssignFile(TArquivo, (CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + Chave + '.xml'));
    Reset(TArquivo);
    ReadLn(TArquivo, TLinha);
    repeat
      Application.ProcessMessages;
      if pos('<nProt>', TLinha) > 0 then
        CMPNFSPRONFE.Value := (copy(TLinha, pos('<nProt>', TLinha) + Length('<nProt>'), 15));

      if pos('<xMotivo>', TLinha) > 0 then
        CMPNFSRETNFE.Value := (copy(TLinha, pos('<xMotivo>', TLinha) + Length('<xMotivo>'), pos('</xMotivo>', TLinha) - (pos('<xMotivo>', TLinha) +
          Length('<xMotivo>'))));

      if pos('<dhRecbto>', TLinha) > 0 then
      begin
        CMPNFSDTEPNF.value := strtodate(copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 8, 2) + '/' + copy(TLinha, pos('<dhRecbto>', TLinha) +
          Length('<dhRecbto>') + 5, 2) +
          '/' + copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>'), 4));
        CMPNFSDTENFE.Value := strtodate(copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 8, 2) + '/' + copy(TLinha, pos('<dhRecbto>', TLinha) +
          Length('<dhRecbto>') + 5, 2) +
          '/' + copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>'), 4));
      end;

      if pos('<dhRecbto>', TLinha) > 0 then
        CMPNFSHREPNF.Value := (copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 11, 8));

      if pos('infNFe versao="4.00" Id="', TLinha) > 0 then
      begin
        CMPNFSSEQNFE.Value := (copy(TLinha, pos('infNFe versao="4.00" Id="NFe', TLinha) + Length('infNFe versao="4.00" Id="NFe'), 44));
        chaveN := (copy(TLinha, pos('infNFe versao="4.00" Id="NFe', TLinha) + Length('infNFe versao="4.00" Id="NFe'), 44));
      end;
      ReadLn(TArquivo, TLinha);
    until EOF(Tarquivo);
    CloseFile(TArquivo);
    movefile(pchar(CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave + '.xml'), pchar(CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chaven + '.xml'));
    chave := chaven;

    CMPNFS.Post;
    with CMPNFS do
    begin
      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
      ;
      try
        ApplyUpdates; {Tenta aplicar as alteracoes}
        ;
        Application.ProcessMessages;
        fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}
        ;
      except
        fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
        ;
        if CMPNFS.State <> dsBrowse then
          CMPNFS.CancelUpdates;
        CMPNFS.Close;
        CMPNFS.Open;
        raise;
      end;
      CommitUpdates; {sucesso!, limpa o cache...}
    end;

    FatArq.Active := false;
    fatarq.sql.text := 'Select CodEmp, ' + #13 +
      '      DteNFS, ' + #13 +
      '      NumNFS, ' + #13 +
      '       SeqNFS, ' + #13 +
      '       ArqNfe, ' + #13 +
      '       FlgAtu, ' + #13 +
      '       id_cmpnfs, ' + #13 +
      '       nfeth, ' + #13 +
      '       sitnfs ' + #13 +
      'From cmpnfs where id_cmpnfs = :id_cmpnfs';

    FatArq.Params[0].AsInteger := CMPNFSID_CMPNFS.Value;
    FatArq.Open;
    FatArq.Edit;
    FatArqFlgAtu.Value := 'F';
    TBlobField(FatArq.FieldByName('ArqNfe')).LoadFromFile(CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave + '.xml');
    FatArqNFETH.VALUE := 1;
    FatArqSITNFS.Value := 'Faturado';
    FatArq.Post;
    with fatarq do
    begin
      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
      ;
      try
        ApplyUpdates; {Tenta aplicar as alteracoes}
        ;
        Application.ProcessMessages;
        fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}
        ;
      except
        fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
        ;
        if CMPNFS.State <> dsBrowse then
          CMPNFS.CancelUpdates;
        cmpnfs.Close;
        CMPNFS.Open;
        raise;
      end;
    end;

    ini := TIniFile.create(IniFile);
    try
      ehost := ini.ReadString('E-mail', 'host', '');
      eusuario := ini.ReadString('E-mail', 'usuario', '');
      esenha := ini.ReadString('E-mail', 'senha', '');
      eAutomatico := ini.ReadInteger('E-mail', 'automatico', 0);
      ehomologacao := ini.ReadInteger('WebService', 'Ambiente', 1);
    finally
      ini.free;
    end;
    if eAutomatico = 1 then
    begin
      if ehomologacao = 1 then
        epara := 'fernanda@emerion.com.br'
      else
        ePara := CmpNfsEMAFOR.Value;

      sNumeroNF := copy(fNumZeros(IntToStr(CMPNFSNroNfs.Value), 9), 1, 3) + '.' +
        copy(fNumZeros(IntToStr(CMPNFSNroNfs.Value), 9), 4, 3) + '.' +
        copy(fNumZeros(IntToStr(CMPNFSNroNfs.Value), 9), 7, 3);
      eAssunto := 'NF-e: ' + sNumeroNF + ' ' + UpperCase(Trim(NomEmp));

      FindReplace('#PROTOCOLO#', eProtocolo, corpomail);
      FindReplace('#SERIE#', '1', corpomail);
      FindReplace('#EMITENTE#', trim(NomEmp), corpomail);
      FindReplace('#NUMERONOTA#', SNumeroNF, corpomail);

      eanexo := CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave + '.xml';
      EPDF := CaminhoPDF + '\' + chave + '-nfe.PDF';
      button1.Click;
      // Email Para a Transportadora
      if CMPNFSCODTRA.IsNull = false then
      begin
        quSql.Active := false;
        quSql.SQL.text := 'Select EMATRA from FINTRA where codtra = ' + QuotedStr(CMPNFSCODTRA.asstring);
        quSql.open;
        if fmManPri.ValidaEMail(pchar(quSql.FieldByName('EMATRA').AsString)) then
        begin
          if ehomologacao = 1 then
            epara := 'fernanda@emerion.com.br'
          else
            ePara := quSql.FieldByName('EMATRA').asstring;

          sNumeroNF := copy(fNumZeros(IntToStr(CMPNFSNroNfs.Value), 9), 1, 3) + '.' +
            copy(fNumZeros(IntToStr(CMPNFSNroNfs.Value), 9), 4, 3) + '.' +
            copy(fNumZeros(IntToStr(CMPNFSNroNfs.Value), 9), 7, 3);
          eAssunto := nomemp + ' NF-e: ' + sNumeroNF + ' ' + UpperCase(Trim(NomEmp));

          FindReplace('#PROTOCOLO#', eProtocolo, corpomail);
          FindReplace('#SERIE#', '1', corpomail);
          FindReplace('#EMITENTE#', trim(NomEmp), corpomail);
          FindReplace('#NUMERONOTA#', SNumeroNF, corpomail);

          eanexo := CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave + '.xml';
          EPDF := CaminhoPDF + '\' + chave + '-nfe.PDF';
          button1.Click;
        end;
      end; // Email Para a Transportadora

    end; //mandando e-mail
    ////============================== Mandando E-mail Para o Cliente ==== ////
      ///////=========================================================
    //Danfe

    if CMPNFSEnvNfe.Value = 'Sim' then
    begin
      if fMsg('Confirma impress�o do DANFE ?', 'O') then
      begin
        AssignFile(TDANFE, CaminhoLeitura + '\' + 'DANFE' + VNumNota + '.txt');
        Rewrite(TDANFE);
        WriteLn(TDANFE, CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chaveN + '.xml');
        CloseFile(TDANFE);

        //if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
          Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe DANFE ' + vnumnota, SW_NORMAL);
       // else
       //   AbreNfe(PChar('DANFE'), pChar(vnumnota));

        if CMPNFSImpNFe.Value = 'Nao' then
        begin
          if fMsg('DANFE impressa corretamente ?', 'O') then
          begin
            CMPNFS.Edit;
            CMPNFSFlgAtu.Value := 'F';
            CMPNFSImpNFe.Value := 'Sim';
            CMPNFSSITNFS.Value := 'Faturado';
            CmpNfsFLGIMP.Value := 'Sim';
            CmpNfs.Post;

            with CMPNFS do
            begin
              fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
              ;
              try
                ApplyUpdates; {Tenta aplicar as alteracoes}
                ;
                Application.ProcessMessages;
                fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}
                ;
              except
                fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
                ;
                if CMPNFS.State <> dsBrowse then
                  CMPNFS.CancelUpdates;
                CMPNFS.Close;
                CMPNFS.Open;
                raise;
              end;
              CommitUpdates; {sucesso!, limpa o cache...}
            end;
          end;
        end;
      end;
    end;
    //Rolando - Fim
////////=========================================================
    bAtualizar.Click;

  end
  else if FileExists(CaminhoRetorno + '\LogErro-' + VNumNota + '.txt') then
  begin
    pn_erro.visible := true;
    memo_erro.Font.Color := clBlack;
    memo_erro.Lines.Clear;
    memo_erro.Lines.LoadFromFile(CaminhoRetorno + '\LogErro-' + VNumNota + '.txt');
    i := 1;
    repeat
      i := i + 1;
    until not FileExists(CaminhoRetorno + '\LogErro-' + VNumNota + '.EP' + inttostr(i));

    MoveFile(pchar(CaminhoRetorno + '\LogErro-' + VNumNota + '.txt'), pchar(CaminhoRetorno + '\LogErro-' + VNumNota + '.EP' + inttostr(i)));
  end;
  fmManPri.Enabled := True;
  fmManLnRMA_NFE.Enabled := True;
  pnMensag.visible := false;
end;

procedure TfmManLnRMA_NFE.CountRegistros;
begin

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select Sum(FatPed.TotGer) as TotReg,' +
      '        Count(*) as QtdReg' +
      ' From FatPed LEFT JOIN FinCli ON (FatPed.CodCli = FinCli.CodCli)' +
      ' Where not FatPed.SitFat = ' + Quotedstr('Nao Concluido') +
      '   and FatPed.FlgNFE = ' + Quotedstr('Sim') +
      '   and FatPed.EnvNFE = ' + Quotedstr('Nao');

    if CodEmp > 0 then
      Text := Text + ' and FatPed.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
        ' and FatPed.DteRes = ' + QuotedStr(fDateToSQL(DteRes)) +
        ' and FatPed.NumRes = ' + QuotedStr(IntToStr(NumRes)) +
        ' and FatPed.SeqLib = ' + QuotedStr(IntToStr(SeqLib)) +
        ' and FatPed.SeqFat = ' + QuotedStr(IntToStr(SeqFat));

    Open;

    if FieldbyName('QtdReg').AsInteger > 0 then
    begin

      pnQtdReg.Caption := IntToStr(FieldbyName('QtdReg').AsInteger) + ' Nota(s)';

      pnTotReg.Caption := FormatFloat('###,###,##0.00', FieldbyName('TotReg').AsFloat) + ' ';

    end
    else
    begin

      pnQtdReg.Caption := '0 Nota(s)';

      pnTotReg.Caption := '0' + decimalseparator + '00 ';

    end;
  end;

  CodEmp := 0;
  NumRes := 0;
  SeqLib := 0;
  SeqFat := 0;

end;

procedure TfmManLnRMA_NFE.batualizarClick(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    with CmpNfs, SQL do
    begin

      Close;
      Text := sBase +
        ' and CmpNfs.nronfs = ' + QuotedStr(EdPsqnroNfs.Text) +
        ' Order by CmpNfs.DteNfs,CmpNfs.SeqNfs';
      Open;

    end;

  end
  else
  begin

    with CmpNfs, SQL do
    begin

      Close;
      Text := sBase +
        ' Order by CmpNfs.DteNfs,CmpNfs.SeqNfs';
      Open;

    end;
  end;

end;

procedure TfmManLnRMA_NFE.grFatPe2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NroPe2: integer;
  despe2, obspe2: string;
begin
  inherited;
  if key = 32 then
  begin

    label6.caption := CmpNf2CODCLP.AsString + '-' + CmpNf2CODGRU.AsString + '.' + CmpNf2CODsub.AsString + '.' + CmpNf2CODpro.AsString;
    label7.caption := formatfloat('0.00', CmpNf2QTPNF2.asfloat);
    label8.caption := formatfloat('0.00', CmpNf2TOTNF2.asfloat);
    label9.caption := formatfloat('0.00', CmpNf2ICMNF2.asfloat);
    label10.caption := formatfloat('0.00', CmpNf2IPINF2.asfloat);
    label11.caption := formatfloat('0.00', CmpNf2TOTIPI.asfloat);

    if not pnalterar.Visible then
    begin

      if CmpNf2CodEmp.Value > 0 then
      begin

        CodEmp := CmpNf2CodEmp.Value;
        DteRes := CmpNf2DteNFS.Value;
        NumRes := CmpNf2SEQNfS.Value;

        //Rolando 26/03/2010
        //despe2 := fatpe2despe2.value;
        //obspe2 := fatpe2obspe2.value;
        self.Eddespe2.Text := CmpNf2desnf2.value;
        self.Edobspe2.Text := CmpNf2obsnf2.value;
        //

        with CmpNfs, SQL do
        begin

          Close;
          Text := sBase + ' and CmpNfs.CodEmp = ' + QuotedStr(IntToStr(CodEmp)) +
            '   and CmpNfs.DteNFS = ' + QuotedStr(fDateToSQL(DteRes)) +
            '   and CmpNfs.SEQNFS = ' + QuotedStr(IntToStr(NumRes));
          Open;

        end;

        CountRegistros;

        if CMPNFSCodEmp.Value > 0 then
        begin

          CmpNf2.Locate('CodEmp;DteNFS;SEQNFS;SEQNF2', VarArrayOf([CmpNf2CodEmp.Value, CmpNf2DTENFS.Value, CmpNf2SEQNFS.Value, CmpNf2SEQNF2.Value]),
            [LoPartialKey]);

          bAtualizar.Enabled := False;

          benviar.Enabled := False;

          pnalterar.Visible := True;

          //Rolando 26/03/2010
          Eddespe2.Visible := true;
          edobspe2.Visible := true;

          CmpNf2.Edit;

          CmpNf2CodCfo.Value := Trim(CmpNf2CodCfo.Value);
          CmpNf2ClsIpi.Value := Trim(CmpNf2ClsIpi.Value);
          CmpNf2CodSt1.Value := Trim(CmpNf2CodSt1.Value);
          CmpNf2CodSt2.Value := Trim(CmpNf2CodSt2.Value);
          CmpNf2CodUnd.Value := Trim(CmpNf2CodUnd.Value);

          EdCodCfo.Text := Trim(CmpNf2CodCfo.Value);
          EdClsIpi.Text := Trim(CmpNf2ClsIpi.Value);
          EdCodSt1.Text := Trim(CmpNf2CodSt1.Value);
          EdCodSt2.Text := Trim(CmpNf2CodSt2.Value);
          EdCodUnd.Text := Trim(CmpNf2CodUnd.Value);

          //Rolando 26/03/2010
          eddespe2.Text := trim(CmpNf2desnf2.AsString);
          edobspe2.Text := trim(CmpNf2obsnf2.AsString);

          EdCodCfo.SetFocus;

        end;
      end;
    end;
  end;
end;

procedure TfmManLnRMA_NFE.pnalterarExit(Sender: TObject);
var
  NroPe2: integer;
begin
  inherited;
  if CmpNf2.State <> dsBrowse then
  begin

    CmpNf2CodCfo.Value := Trim(CmpNf2CodCfo.Value);
    CmpNf2ClsIpi.Value := Trim(CmpNf2ClsIpi.Value);

    if Trim(CmpNf2CodCfo.Value) = '' then
      fmsgErro('Campo de preenchimento obrigat�rio n�o informado.', EdCodCfo);
    if Trim(CmpNf2ClsIpi.Value) = '' then
      fmsgErro('Campo de preenchimento obrigat�rio n�o informado.', EdClsIpi);
    if Trim(CmpNf2CodSt1.Value) = '' then
      fmsgErro('Campo de preenchimento obrigat�rio n�o informado.', EdCodSt1);
    if Trim(CmpNf2CodSt2.Value) = '' then
      fmsgErro('Campo de preenchimento obrigat�rio n�o informado.', EdCodSt2);
    if Trim(CmpNf2CodUnd.Value) = '' then
      fmsgErro('Campo de preenchimento obrigat�rio n�o informado.', EdCodUnd);

    CmpNf2desnf2.Value := self.Eddespe2.Text;
    CmpNf2obsnf2.value := self.Edobspe2.Text;

    NroPe2 := CmpNf2Nronf2.Value;

    with CmpNf2 do
    begin

      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
      ;

      try

        ApplyUpdates; {Tenta aplicar as alteracoes}
        ;

        fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o}
        ;

      except

        fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro}
        ;

        if CmpNf2.State = dsBrowse then
          CmpNf2.Edit;

        EdCodCfo.SetFocus;

        raise;

      end;

      CommitUpdates; {sucesso!, limpa o cache...}

    end;

    CmpNf2.Close;
    CmpNf2.Open;

    CmpNfs.Close;
    CmpNfs.Open;

    CmpNf2.Locate('CodEmp;DteNFS;SEQNFS;SEQNF2', VarArrayOf([CmpNf2CodEmp.Value, CmpNf2DTENFS.Value, CmpNf2SEQNFS.Value, CmpNf2SEQNF2.Value]), [LoPartialKey]);

    if CmpNf2NroNF2.Value < CmpNfSQtiNFS.Value then
    begin

      CmpNf2.Next;

      CmpNf2.Edit;

      CmpNf2CodCfo.Value := Trim(CmpNf2CodCfo.Value);
      CmpNf2ClsIpi.Value := Trim(CmpNf2ClsIpi.Value);
      CmpNf2CodSt1.Value := Trim(CmpNf2CodSt1.Value);
      CmpNf2CodSt2.Value := Trim(CmpNf2CodSt2.Value);
      CmpNf2CodUnd.Value := Trim(CmpNf2CodUnd.Value);

      EdCodCfo.Text := Trim(CmpNf2CodCfo.Value);
      EdClsIpi.Text := Trim(CmpNf2ClsIpi.Value);
      EdCodSt1.Text := Trim(CmpNf2CodSt1.Value);
      EdCodSt2.Text := Trim(CmpNf2CodSt2.Value);
      EdCodUnd.Text := Trim(CmpNf2CodUnd.Value);

      EdCodCfo.SetFocus;

    end
    else
    begin

      batualizar.Enabled := True;

      benviar.Enabled := True;

      pnalterar.visible := False;

      //Rolando 26/3/10
      self.Eddespe2.Visible := false;
      self.Edobspe2.Visible := false;
    end;
  end;
end;

procedure TfmManLnRMA_NFE.EdCodCfoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not (key in ['0'..'9'])) and (not (key in ['.'])) then
    key := #0;
end;

procedure TfmManLnRMA_NFE.EdCodSt1Enter(Sender: TObject);
begin
  inherited;
  Label4.Caption := 'F1-Iniciais';
end;

procedure TfmManLnRMA_NFE.EdCodSt1Exit(Sender: TObject);
begin
  inherited;
  if Trim(CmpNf2CodSt1.Value) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select Count(*) as QtdReg From EstSt1 Where EstSt1.CodSt1 = ' + QuotedStr(CmpNf2CodSt1.Value);
      Open;

      if FieldbyName('QtdReg').AsInteger = 0 then
        fmsgErro('Situa��o tribut�ria informada n�o localizada.', EdCodSt1);

    end;
  end;
end;

procedure TfmManLnRMA_NFE.EdCodSt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqSt1 := TfmPsqSt1.Create(Self);
      fmPsqSt1.ShowModal;

      if Trim(fmPsqSt1.CodSt1) <> '' then
        cmpnf2CodSt1.Value := fmPsqSt1.CodSt1;

    finally

      FreeAndNil(fmPsqSt1);

    end;

    EdCodSt1.SetFocus;

  end;
end;

procedure TfmManLnRMA_NFE.EdCodSt2Exit(Sender: TObject);
begin
  inherited;
  if Trim(CmpNf2CodSt2.Value) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select Count(*) as QtdReg From EstSt2 Where EstSt2.CodSt2 = ' + QuotedStr(CmpNf2CodSt2.Value);
      Open;

      if FieldbyName('QtdReg').AsInteger = 0 then
        fmsgErro('Situa��o tribut�ria informada n�o localizada.', EdCodSt2);

    end;
  end;
end;

procedure TfmManLnRMA_NFE.EdCodSt2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqSt2 := TfmPsqSt2.Create(Self);
      fmPsqSt2.ShowModal;

      if Trim(fmPsqSt2.CodSt2) <> '' then
        CmpNf2CodSt2.Value := fmPsqSt2.CodSt2;

    finally

      FreeAndNil(fmPsqSt2);

    end;

    EdCodSt2.SetFocus;

  end;
end;

procedure TfmManLnRMA_NFE.EdCodUndExit(Sender: TObject);
begin
  inherited;
  if Trim(CmpNf2CodUnd.Value) <> '' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select Count(*) as QtdReg From EstUnd Where EstUnd.CodUnd = ' + QuotedStr(CmpNf2CodUnd.Value);
      Open;

      if FieldbyName('QtdReg').AsInteger = 0 then
        fmsgErro('Unidade de medida informada n�o localizada.', EdCodUnd);

    end;
  end;
end;

procedure TfmManLnRMA_NFE.EdCodUndKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqUnd := TfmPsqUnd.Create(Self);
      fmPsqUnd.ShowModal;

      if Trim(fmPsqUnd.CodUnd) <> '' then
        CmpNf2CodUnd.Value := fmPsqUnd.CodUnd;

    finally

      FreeAndNil(fmPsqUnd);

    end;

    EdCodUnd.SetFocus;

  end;
end;

procedure TfmManLnRMA_NFE.bt_erroClick(Sender: TObject);
begin
  inherited;
  memo_erro.Font.Color := clWhite;
  pn_erro.visible := False;
  fmManPri.Enabled := True;
  fmManLnRMA_NFE.Enabled := True;
  pnMensag.Visible := False;
end;

procedure TfmManLnRMA_NFE.Button1Click(Sender: TObject);
var
  xAnexo: Integer;
  newtext: tidtext;
  p: TidMessageParts;
begin
  idmessage1.clear;

  IdSMTP1.host := ehost;
  idsmtp1.Password := eSenha;
  idsmtp1.UserID := eUsuario;
  idmessage1.From.Address := eUsuario;
  IdMessage1.Recipients.EMailAddresses := ePara;
  IdMessage1.Priority := mpHigh;
  IdMessage1.Subject := eAssunto;
  IdMessage1.ContentType := 'text/html';
  IdMessage1.Body.text := corpomail.lines.text;
  IdMessage1.IsEncoded := True;
  IdMessage1.ReceiptRecipient.Text := IdMessage1.From.Text; // Auto Resposta
  TIdAttachment.create(idmessage1.MessageParts, TFileName(eAnexo));
  if FileExists(epdf) then
    TIdAttachment.create(idmessage1.MessageParts, TFileName(ePDF));

  IdSMTP1.Connect;
  try
    IdSMTP1.Send(IdMessage1);
    Application.MessageBox('Email enviado com sucesso!', 'Confirma��o', MB_ICONINFORMATION + MB_OK);
  except
    Showmessage('N�o foi poss�vel enviar o e-mail para o cliente.');
  end;
  IdSMTP1.Disconnect;
  corpomail.Lines.text := memo1.lines.text;

end;

procedure TfmManLnRMA_NFE.Button2Click(Sender: TObject);
begin
  inherited;
  FindReplace('NUMERONOTA', '1', corpomail);
end;

procedure TfmManLnRMA_NFE.DSCmpNFSDataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  pnCodCli.Caption := CmpNfsCODFOR.AsString;

end;

procedure TfmManLnRMA_NFE.DSCMPNF2DataChange(Sender: TObject;
  Field: TField);
begin
  inherited;
  pnDesPe2.Caption := CmpNf2DESNF2.AsString;
end;

end.
