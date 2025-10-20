unit ManLr2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppDB, ppDBPipe, ppBands, ppClass, ppStrtch,
  ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit, dxDBColorCurrencyEdit,
  dxDBColorEdit, inifiles;

type
  TfmManLr2 = class(TfmPadrao)
    DsNfs: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    EdPsqDteNfs1: TdxColorDateEdit;
    EdPsqSeqNfs: TdxColorEdit;
    Label18: TLabel;
    EdPsqDteNfs2: TdxColorDateEdit;
    Label25: TLabel;
    EdPsqTotGer1: TdxColorCurrencyEdit;
    Label19: TLabel;
    EdPsqTotGer2: TdxColorCurrencyEdit;
    Label26: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqCodFor: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    bPsqEmp: TSpeedButton;
    bPsqFor: TSpeedButton;
    bPsqPfa: TSpeedButton;
    EdPsqNomPfa: TdxColorEdit;
    EdPsqNomFor: TdxColorEdit;
    EdPsqApeEmp: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    grNfs: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    quSql: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label12: TLabel;
    CmpNf2: TwwQuery;
    pnSitNfs: TPanel;
    DsNf2: TwwDataSource;
    dbRes: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label11: TLabel;
    EdPsqNroNfs: TdxColorEdit;
    CmpNfsSEQNFS: TIntegerField;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsCODPFA: TStringField;
    CmpNfsNRONFS: TIntegerField;
    CmpNfsTOTGE1: TFloatField;
    CmpNfs: TwwQuery;
    CmpNf2DESNF2: TStringField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2QTDNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2TOTITE: TFloatField;
    pnSitImp: TPanel;
    CmpNf2QTNNF2: TFloatField;
    CmpNf2CODEMP: TIntegerField;
    CmpNf2DTENFS: TDateTimeField;
    CmpNf2SEQNFS: TIntegerField;
    CmpNf2SEQNF2: TIntegerField;
    CmpNf2CODCLP: TStringField;
    CmpNf2CODGRU: TStringField;
    CmpNf2CODSUB: TStringField;
    CmpNf2CODPRO: TStringField;
    CmpNf2NRONF2: TIntegerField;
    CmpNf2OBSNF2: TStringField;
    rgOrdem: TRadioGroup;
    rgImpresso: TRadioGroup;
    bImprimir: TBitBtn;
    CmpNf2CODITE: TStringField;
    grNf2: ThGrid;
    CmpNfsCODEMP: TIntegerField;
    CmpNfsDTENFS: TDateTimeField;
    CmpNfsHREFAT: TStringField;
    CmpNfsUFENFS: TStringField;
    CmpNfsTIPPFA: TStringField;
    CmpNfsMODPFA: TStringField;
    CmpNfsCODFOR: TIntegerField;
    CmpNfsPERPIS: TFloatField;
    CmpNfsPERCOF: TFloatField;
    CmpNfsCODFIL: TIntegerField;
    CmpNfsQTDNFS: TIntegerField;
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
    CmpNfsCODTIP: TIntegerField;
    CmpNfsDESREG: TStringField;
    CmpNfsFLGENV: TStringField;
    CmpNfsFLGIMP: TStringField;
    CmpNfsNOMENT: TStringField;
    CmpNfsFLGSIN: TStringField;
    CmpNfsOB1NFS: TStringField;
    CmpNfsOB2NFS: TStringField;
    CmpNfsOB3NFS: TStringField;
    CmpNfsOB4NFS: TStringField;
    CmpNfsOB5NFS: TStringField;
    CmpNfsOB6NFS: TStringField;
    CmpNfsOB7NFS: TStringField;
    CmpNfsOB8NFS: TStringField;
    CmpNfsHRFNFS: TStringField;
    CmpNfsDTFNFS: TDateTimeField;
    CmpNfsUSFNFS: TIntegerField;
    CmpNfsOBFNFS: TStringField;
    CmpNfsCODTFO: TIntegerField;
    CmpNfsAPEFOR: TStringField;
    CmpNfsFORNECEDOR: TStringField;
    UpNfs: TUpdateSQL;
    CmpNfsFLGNFE: TStringField;
    CmpNfsCEFFOR: TStringField;
    CmpNfsTEFFOR: TStringField;
    CmpNfsENFFOR: TStringField;
    CmpNfsRFFFOR: TStringField;
    CmpNfsNRFFOR: TStringField;
    CmpNfsBAFFOR: TStringField;
    CmpNfsCIFFOR: TStringField;
    CmpNfsUFFFOR: TStringField;
    CmpNfsID_FINUFF: TIntegerField;
    CmpNfsID_FINCIF: TIntegerField;
    CmpNfsID_FINUFE: TIntegerField;
    CmpNfsID_FINCIE: TIntegerField;
    CmpNfsID_TRAUFE: TIntegerField;
    CmpNfsID_TRACIE: TIntegerField;
    CmpNfsCGEFOR: TStringField;
    CmpNfsINEFOR: TStringField;
    CmpNfsID_ESTSIP: TIntegerField;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsTRBPIS: TStringField;
    CmpNfsNFEPIS: TStringField;
    CmpNfsTRBCOF: TStringField;
    CmpNfsNFECOF: TStringField;
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
    CmpNfsNROPDI: TStringField;
    CmpNfsDTEPDI: TDateTimeField;
    CmpNfsLOCPDI: TStringField;
    CmpNfsUFEPDI: TStringField;
    CmpNfsDTEADU: TDateTimeField;
    CmpNfsEXPPDI: TStringField;
    CmpNfsFLGUSA: TStringField;
    CmpNfsFLGEMI: TStringField;
    CmpNfsCODTRA: TIntegerField;
    CmpNfsNFETH: TIntegerField;
    quSQL1: TwwQuery;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure bPsqPfaClick(Sender: TObject);
    procedure bPsqEmpClick(Sender: TObject);
    procedure EdPsqSeqNfsExit(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqSeqNfsKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNroNfsExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure DsNfsDataChange(Sender: TObject; Field: TField);
    procedure bImprimirClick(Sender: TObject);
    procedure CmpNf2CODITEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CmpNfsFORNECEDORGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    {Private declarations}
    sBase, sFiltro, sOrdem: string;
    CodEmp: integer;
    DteNfs: TDateTime;
    SeqNfs: integer;
  public
    {Public declarations}
  end;

var
  fmManLr2: TfmManLr2;

implementation

uses dxDemoUtils, Bbgeral, Bbacesso, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqPfa,
  ManPri, AuxPsq, ManSro, AuxIni, ManE12_NFE;

{$R *.DFM}

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
end; //Estado é o tipo de janela que aparecerá, que pode ser:

procedure TfmManLr2.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDteNfs1.Date := Date;
  EdPsqDteNfs2.Date := Date;

  CmpNfs.Close;
  CmpNfs.Params[0].AsDateTime := Date;
  CmpNfs.Open;

  sBase := ' Select CmpNfs.*,' +
    '        FinFor.ApeFor' +
    ' From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor)';

end;

procedure TfmManLr2.bSelecionarClick(Sender: TObject);
begin

  ActiveControl := nil;

  if GFlgAce <> 'Sim' then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FLGDEL,SEQIMP from GerPar';
      Open;

      if Trim(FieldbyName('FLGDEL').AsString) = '*' then
      begin

        GFlgAce := 'Sim';

        if FieldbyName('SEQIMP').AsInteger > 0 then
          GEmpLog := FieldbyName('SEQIMP').AsInteger;

      end
      else
      begin

        GEmpLog := 0;
        GFlgAce := 'Nao';

      end;
    end;
  end;

  sFiltro := ' Where cmpnfs.envnfe = ' + QuotedStr('Sim') + ' and CmpNfs.NroNfs > ' + QuotedStr('0');

  case rgOrdem.Itemindex of
    0: sOrdem := ' Order by CmpNfs.CodFor,CmpNfs.NroNfs';
    1: sOrdem := ' Order by CmpNfs.DteFat,CmpNfs.NroNfs';
    2: sOrdem := ' Order by CmpNfs.NroNfs';
  end;

  case rgImpresso.Itemindex of
    0: sFiltro := sFiltro + ' and CmpNfs.FlgImp = ' + QuotedStr('Sim');
    1: sFiltro := sFiltro + ' and CmpNfs.FlgImp = ' + QuotedStr('Nao');
  end;

  if Trim(EdPsqSeqNfs.Text) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.SeqNfs = ' + QuotedStr(EdPsqSeqNfs.Text);
  if Trim(EdPsqNroNfs.Text) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.NroNfs = ' + QuotedStr(EdPsqNroNfs.Text);
  if Trim(EdPsqCodEmp.Text) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
  if Trim(EdPsqCodFor.Text) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.CodFor = ' + QuotedStr(EdPsqCodFor.Text);
  if Trim(EdPsqCodPfa.Text) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.CodPfa = ' + QuotedStr(EdPsqCodPfa.Text);

  if Trim(fLimpaStr(EdPsqDteNfs1.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.DteNfs >= ' + QuotedStr(fDateToSQL(EdPsqDteNfs1.Date));
  if Trim(fLimpaStr(EdPsqDteNfs2.Text)) <> '' then
    sFiltro := sFiltro + ' and CmpNfs.DteNfs <= ' + QuotedStr(fDateToSQL(EdPsqDteNfs2.Date));

  if EdPsqTotGer1.Value > 0 then
    sFiltro := sFiltro + ' and CmpNfs.TotGer >= ' + QuotedStr(fConvertValor(EdPsqTotGer1.Text));
  if EdPsqTotGer2.Value > 0 then
    sFiltro := sFiltro + ' and CmpNfs.TotGer <= ' + QuotedStr(fConvertValor(EdPsqTotGer2.Text));

  with CmpNfs, SQL do
  begin

    Close;
    Text := sBase + sFiltro + sOrdem;
    Open;

  end;

  grNfs.SetFocus;

end;

procedure TfmManLr2.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    if GFlgAce <> 'Sim' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select FLGDEL,SEQIMP from GerPar';
        Open;

        if Trim(FieldbyName('FLGDEL').AsString) = '*' then
        begin

          GFlgAce := 'Sim';

          if FieldbyName('SEQIMP').AsInteger > 0 then
            GEmpLog := FieldbyName('SEQIMP').AsInteger;

        end
        else
        begin

          GEmpLog := 0;
          GFlgAce := 'Nao';

        end;
      end;
    end;

    with quSql, SQL do
    begin

      Close;
      Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('ApeEmp').AsString) <> '' then
        EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
      else
      begin

        EdPsqApeEmp.Text := '';

        fmsgErro('Empresa Informada não Encontrada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfmManLr2.bPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
      EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManLr2.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        EdPsqApeEmp.Text := fmPsqEmp.ApeEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;
  end;
end;

procedure TfmManLr2.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmAuxIni := TfmAuxIni.Create(Self);

      fmAuxIni.TipoPesq := 'F';

      fmAuxIni.ShowModal;

      if fmAuxIni.CodFor > 0 then
      begin

        EdPsqNomFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

      end;

    finally

      FreeAndNil(fmAuxIni);

    end;
  end;

  if key = 113 then
  begin {F2 - Inteligente/Nome}

    try

      fmAuxPsq := TfmAuxPsq.Create(Self);

      fmAuxPsq.TipoPesq := 'F';

      fmAuxPsq.ShowModal;

      if fmAuxPsq.CodFor > 0 then
      begin

        EdPsqNomFor.Text := fmAuxPsq.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

      end;

    finally

      FreeAndNil(fmAuxPsq);

    end;
  end;
end;

procedure TfmManLr2.bPsqForClick(Sender: TObject);
begin

  try

    fmAuxIni := TfmAuxIni.Create(Self);

    fmAuxIni.TipoPesq := 'F';

    fmAuxIni.ShowModal;

    if fmAuxIni.CodFor > 0 then
    begin

      EdPsqNomFor.Text := fmAuxIni.NomFor;
      EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

    end;

  finally

    FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManLr2.EdPsqSeqNfsExit(Sender: TObject);
begin
  if Trim(EdPsqSeqNfs.Text) <> '' then
  begin

    EdPsqNroNfs.Clear;
    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodFor.Clear;
    EdPsqNomFor.Clear;
    EdPsqCodPfa.Clear;
    EdPsqNomPfa.Clear;

    EdPsqDteNfs1.Clear;
    EdPsqDteNfs2.Clear;

    EdPsqTotGer1.Value := 0;
    EdPsqTotGer2.Value := 0;

  end;
end;

procedure TfmManLr2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    Close;
end;

procedure TfmManLr2.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNroNfs.SetFocus;
end;

procedure TfmManLr2.bPsqPfaClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqPfa := TfmPsqPfa.Create(Self);

    with fmPsqPfa.EstPfa, SQL do
    begin

      Close;
      Text := ' Select EstPfa.CodPfa,' +
        '        EstPfa.TipPfa,' +
        '        EstPfa.DscPfa,' +
        '        EstPfa.DsrPfa,' +
        '        EstPfa.CodCf1,' +
        '        EstPfa.CodCf2,' +
        '        EstPfa.IntFin,' +
        '        EstPfa.AtuEst,' +
        '        EstPfa.ConSum,' +
        '        EstPfa.ModPfa' +
        ' From EstPfa' +
        ' Where EstPfa.TipPfa = :TipPfa' +
        ' Order by EstPfa.DscPfa';

      with Params do
      begin

        Params[0].AsString := 'Saida';

      end;

      Open;

    end;

    fmPsqPfa.ShowModal;

    if Trim(fmPsqPfa.CodPfa) <> '' then
    begin

      EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
      EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

    end;

  finally

    FreeAndNil(fmPsqPfa);

  end;
end;

procedure TfmManLr2.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqPfa := TfmPsqPfa.Create(Self);

      with fmPsqPfa.EstPfa, SQL do
      begin

        Close;
        Text := ' Select EstPfa.CodPfa,' +
          '        EstPfa.TipPfa,' +
          '        EstPfa.DscPfa,' +
          '        EstPfa.DsrPfa,' +
          '        EstPfa.CodCf1,' +
          '        EstPfa.CodCf2,' +
          '        EstPfa.IntFin,' +
          '        EstPfa.AtuEst,' +
          '        EstPfa.ConSum,' +
          '        EstPfa.ModPfa' +
          ' From EstPfa' +
          ' Where EstPfa.TipPfa = :TipPfa' +
          ' Order by EstPfa.DscPfa';

        with Params do
        begin

          Params[0].AsString := 'Saida';

        end;

        Open;

      end;

      fmPsqPfa.ShowModal;

      if Trim(fmPsqPfa.CodPfa) <> '' then
      begin

        EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
        EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

      end;

    finally

      FreeAndNil(fmPsqPfa);

    end;
  end;
end;

procedure TfmManLr2.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLr2.EdPsqSeqNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManLr2.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodPfa.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select DscPfa From EstPfa' +
        ' Where EstPfa.TipPfa = ''' + 'Saida' + '''' +
        '   and EstPfa.CodPfa = ''' + EdPsqCodPfa.Text + '''';
      Open;

      EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;

    end;

  end
  else
    EdPsqNomPfa.Text := '';
end;

procedure TfmManLr2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLr2 := nil;
end;

procedure TfmManLr2.EdPsqNroNfsExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    EdPsqSeqNfs.Clear;
    EdPsqCodEmp.Clear;
    EdPsqApeEmp.Clear;
    EdPsqCodFor.Clear;
    EdPsqNomFor.Clear;
    EdPsqCodPfa.Clear;
    EdPsqNomPfa.Clear;

    EdPsqDteNfs1.Clear;
    EdPsqDteNfs2.Clear;

    EdPsqTotGer1.Value := 0;
    EdPsqTotGer2.Value := 0;

  end;
end;

procedure TfmManLr2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLr2.EdPsqCodForExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodFor.Text) <> '' then
  begin

    with quSql, SQL do
    begin

      Close;
      Text := ' Select NomFor From FinFor Where FinFor.CodFor = ''' + EdPsqCodFor.Text + '''';
      Open;

      EdPsqNomFor.Text := FieldByName('NomFor').AsString;

    end;

  end
  else
    EdPsqNomFor.Text := '';
end;

procedure TfmManLr2.DsNfsDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnSitNfs.Caption := CmpNfsSitNfs.Value;

  pnSitImp.Caption := ' Impressão Confirmada (Sim/Nao) : ' + CmpNfsFlgImp.Value;

end;

procedure TfmManLr2.bImprimirClick(Sender: TObject);
var
  Vnumnota, IniFile, CaminhoLeitura, CaminhoRetorno, chaveN: string;
  ini: Tinifile;
  TDAnfe: TextFile;
  nomemp, Gmail, Gassunto, SnumeroNF: string;
  nroreg: integer;
begin
  inherited;

  if not FileExists(ExtractFilePath(application.exename) + 'NFeEmerion2.ini') then
  begin
    if MessageBox(Handle, 'Arquivo de configuração para envio de NFe não encontrado. Deseja continuar?', 'Enviando Nfe', MB_YESNO + MB_ICONQUESTION) = IDNO
      then
    begin
      Abort;
    end;
  end;

  IniFile := ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini';
  if not FileExists(inifile) then
  begin
    showmessage('Erro. Não foi possível localizar o arquivo de configuração da NF-e.');
    sysutils.abort;
  end;

  ini := TIniFile.create(IniFile);
  try
    CaminhoLeitura := ini.ReadString('Geral', 'PathLeitura', '');
    CaminhoRetorno := ini.ReadString('Geral', 'PathRetorno', '');
  finally
    ini.free;
  end;
  //Danfe
  vnumnota := CmpNfsNRONFS.AsString;
  chaven := CmpNfsSEQNFe.asstring;
  if CMPNFSEnvNfe.Value = 'Sim' then
  begin
    if fMsg('Confirma impressão do DANFE ?', 'O') then
    begin
      AssignFile(TDANFE, CaminhoLeitura + '\' + 'DANFE' + VNumNota + '.txt');
      Rewrite(TDANFE);
      WriteLn(TDANFE, CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chaveN + '.xml');
      CloseFile(TDANFE);

      //if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
        Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe DANFE ' + vnumnota, SW_NORMAL);
      //else
      //  AbreNfe(PChar('DANFE'), pChar(vnumnota));

      if CMPNFSImpNFe.Value = 'Nao' then
      begin
        if fMsg('DANFE impressa corretamente ?', 'O') then
        begin
          CMPNFS.Edit;
          CMPNFSFlgAtu.Value := 'F';
          CMPNFSImpNFe.Value := 'Sim';
          CmpNfsFLGIMP.Value := 'Sim';
          with CMPNFS do
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

  {  if CmpNfsCodEmp.Value > 0 then begin

       CodEmp := CmpNfsCodEmp.Value;
       DteNfs := CmpNfsDteNfs.Value;
       SeqNfs := CmpNfsSeqNfs.Value;

       with CmpNfs,SQL do begin

            Close;
            Text := sBase +
                    ' Where CmpNfs.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                    '   and CmpNfs.DteNfs = '+ QuotedStr(fDateToSQL(DteNfs)) +
                    '   and CmpNfs.SeqNfs = '+ QuotedStr(IntToStr(SeqNfs))   ;
            Open;

       end;

       if CmpNfsNroNfs.Value > 0 then begin

          if fMsg('Confirma Emissão da Segunda Via de Nota Fiscal ?','O') then begin

             try

                fmManSro := TfmManSro.Create(Self);
                fmManSro.ShowModal;

             finally

                FreeAndNil(fmManSro);

             end;
          end;
       end;
    end;}
end;

procedure TfmManLr2.CmpNf2CODITEGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  if CmpNf2CodEmp.Value > 0 then
    Text := CmpNf2CodGru.Value + '.' + CmpNf2CodSub.Value + '.' + CmpNf2CodPro.Value
  else
    Text := ' ';
end;

procedure TfmManLr2.CmpNfsFORNECEDORGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if CmpNfsCodFor.Value > 0 then
    Text := fNumZeros(IntToStr(CmpNfsCodFor.Value), 5) + ' - ' + Trim(CmpNfsApeFor.Value)
  else
    Text := '';
end;

end.
