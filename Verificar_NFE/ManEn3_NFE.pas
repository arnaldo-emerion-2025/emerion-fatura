unit ManEn3_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxColorPickEdit, dxColorCurrencyEdit, dxColorEdit,
  dxColorDateEdit, dxDBELib, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxfProgressBar, dxDBColorEdit;

type
  TfmManEn3_NFE = class(TfmPadrao)
    FatDev: TwwQuery;
    FatDv2: TwwQuery;
    DsFatDv2: TwwDataSource;
    DsFatDev: TwwDataSource;
    PaintBox: TPaintBox;
    grFatDev: ThGrid;
    grFatDv2: ThGrid;
    quSql: TwwQuery;
    FatDevNRONFS: TIntegerField;
    FatDevTOTGER: TFloatField;
    FatDevCODPFA: TStringField;
    FatDevNOMCLI: TStringField;
    UpFatDev: TUpdateSQL;
    grFatDev1: TdxDBGraphicEdit;
    grFatDv21: TdxDBGraphicEdit;
    pnMensag: TPanel;
    Label2: TLabel;
    pnQtdReg1: TPanel;
    pnTotReg1: TPanel;
    Panel1: TPanel;
    EdPsqNroNfs: TdxColorEdit;
    bAtualizar: TBitBtn;
    Label1: TLabel;
    pnTotReg: TLabel;
    pnQtdReg: TPanel;
    pnCliente: TPanel;
    pnCodCli: TLabel;
    bEnviar: TSpeedButton;
    FatDv2CODCFO: TStringField;
    FatDv2CODUND: TStringField;
    pnDesDv2: TPanel;
    Label3: TLabel;
    quSQL1: TwwQuery;
    FatArq: TwwQuery;
    UpFatArq: TUpdateSQL;
    FatArqARQNFE: TBlobField;
    FatArqFLGATU: TStringField;
    FatDevNUMRES: TIntegerField;
    FatDv2CODITE: TStringField;
    FatArqCODEMP: TIntegerField;
    FatArqDTERES: TDateTimeField;
    FatArqNUMRES: TIntegerField;
    FatArqSEQLIB: TIntegerField;
    FatArqSEQFAT: TIntegerField;
    Label4: TLabel;
    pnalterar: TPanel;
    pnCodIte: TLabel;
    pnQtdIte: TLabel;
    pnTotIte: TLabel;
    pnIcmIte: TLabel;
    pnIpiIte: TLabel;
    pnTotIpi: TLabel;
    pnVlqIte: TLabel;
    EdCodCfo: TdxDBColorEdit;
    EdClsIpi: TdxDBColorEdit;
    EdCodSt1: TdxDBColorEdit;
    EdCodSt2: TdxDBColorEdit;
    EdCodUnd: TdxDBColorEdit;
    FatDv2CODST1: TStringField;
    FatDv2CODST2: TStringField;
    UpFatDv2: TUpdateSQL;
    FatDevCODEMP: TIntegerField;
    FatDevDTERES: TDateTimeField;
    FatDevSEQLIB: TIntegerField;
    FatDevSEQFAT: TIntegerField;
    FatDevSEQDEV: TIntegerField;
    FatDevQTIDEV: TIntegerField;
    FatDevDTEDEV: TDateTimeField;
    FatDevUFEDEV: TStringField;
    FatDevTIPPFA: TStringField;
    FatDevCODCF1: TStringField;
    FatDevCODCF2: TStringField;
    FatDevCODCLI: TIntegerField;
    FatDevFLGSAI: TStringField;
    FatDevFLGENT: TStringField;
    FatDevTIPFRT: TStringField;
    FatDevESPDEV: TStringField;
    FatDevMARDEV: TStringField;
    FatDevINTFIN: TStringField;
    FatDevDESNAT: TStringField;
    FatDevINSSUB: TStringField;
    FatDevCODTRA: TIntegerField;
    FatDevNOMTRA: TStringField;
    FatDevCGCTRA: TStringField;
    FatDevINSTRA: TStringField;
    FatDevTENTRA: TStringField;
    FatDevENDTRA: TStringField;
    FatDevREFTRA: TStringField;
    FatDevNUMTRA: TStringField;
    FatDevBAITRA: TStringField;
    FatDevCIDTRA: TStringField;
    FatDevUFETRA: TStringField;
    FatDevCEPTRA: TStringField;
    FatDevNRODEV: TStringField;
    FatDevPLCTRA: TStringField;
    FatDevUFEPLC: TStringField;
    FatDevTEFCLI: TStringField;
    FatDevENFCLI: TStringField;
    FatDevRFFCLI: TStringField;
    FatDevNRFCLI: TStringField;
    FatDevBAFCLI: TStringField;
    FatDevCIFCLI: TStringField;
    FatDevUFFCLI: TStringField;
    FatDevCEFCLI: TStringField;
    FatDevTENCLI: TStringField;
    FatDevENDCLI: TStringField;
    FatDevREFCLI: TStringField;
    FatDevNUMCLI: TStringField;
    FatDevBAICLI: TStringField;
    FatDevCIDCLI: TStringField;
    FatDevUFECLI: TStringField;
    FatDevCEPCLI: TStringField;
    FatDevCGECLI: TStringField;
    FatDevINECLI: TStringField;
    FatDevINFLIQ: TFloatField;
    FatDevINFBRT: TFloatField;
    FatDevQTDVOL: TIntegerField;
    FatDevLOTNFE: TIntegerField;
    FatDevENVNFE: TStringField;
    FatDevSEQNFE: TStringField;
    FatDevDTENFE: TDateTimeField;
    FatDevRECNFE: TStringField;
    FatDevPRONFE: TStringField;
    FatDevDOPNFE: TDateTimeField;
    FatDevHRENFE: TStringField;
    FatDevUSUNFE: TIntegerField;
    FatDevDTEPNF: TDateTimeField;
    FatDevHREPNF: TStringField;
    FatDevIMPNFE: TStringField;
    FatDevRETNFE: TStringField;
    FatDevFLGATU: TStringField;
    FatDevID_FINUFF: TIntegerField;
    FatDevID_FINCIF: TIntegerField;
    FatDevID_FINUFE: TIntegerField;
    FatDevID_FINCIE: TIntegerField;
    FatDevID_TRAUFE: TIntegerField;
    FatDevID_TRACIE: TIntegerField;
    FatDevTRBPIS: TStringField;
    FatDevPERPIS: TFloatField;
    FatDevTRBCOF: TStringField;
    FatDevPERCOF: TFloatField;
    FatDevTOTDEV: TFloatField;
    FatDevTOTDSR: TFloatField;
    FatDevTOTFRT: TFloatField;
    FatDevTOTSEG: TFloatField;
    FatDevTOTDES: TFloatField;
    FatDevTOTIPI: TFloatField;
    FatDevTOTPIS: TFloatField;
    FatDevTOTCOF: TFloatField;
    FatDevBASICM: TFloatField;
    FatDevTOTICM: TFloatField;
    FatDevBASSUB: TFloatField;
    FatDevTOTSUB: TFloatField;
    FatDevOB1DEV: TStringField;
    FatDevOB2DEV: TStringField;
    FatDevOB3DEV: TStringField;
    FatDevOB4DEV: TStringField;
    FatDevOB5DEV: TStringField;
    FatDevOB6DEV: TStringField;
    FatDevOB7DEV: TStringField;
    FatDevOB8DEV: TStringField;
    FatDevNFEPIS: TStringField;
    FatDevNFECOF: TStringField;
    FatDevID_ESTSIP: TIntegerField;
    FatDevEM1CLI: TStringField;
    FatArqSEQDEV: TIntegerField;
    FatDv2CODEMP: TIntegerField;
    FatDv2DTERES: TDateTimeField;
    FatDv2NUMRES: TIntegerField;
    FatDv2SEQLIB: TIntegerField;
    FatDv2SEQFAT: TIntegerField;
    FatDv2SEQDEV: TIntegerField;
    FatDv2SEQDV2: TIntegerField;
    FatDv2DESDV2: TStringField;
    FatDv2ULTQTD: TFloatField;
    FatDv2VLQDV2: TFloatField;
    FatDv2IPIDV2: TFloatField;
    FatDv2ICMDV2: TFloatField;
    FatDv2TOTDV2: TFloatField;
    FatDv2TOTIPI: TFloatField;
    FatDv2CLSIPI: TStringField;
    FatDv2NRODV2: TIntegerField;
    FatDv2NCMDV2: TStringField;
    FatDv2FLASEQ: TStringField;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsFatDevDataChange(Sender: TObject; Field: TField);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsFatDv2DataChange(Sender: TObject; Field: TField);
    procedure bEnviarClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
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
    procedure pnalterarExit(Sender: TObject);
    procedure grFatDv2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FatDv2NCMDV2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    CodEmp : integer;
    DteRes : TDateTime;
    NumRes : integer;
    SeqLib : integer;
    SeqFat : integer;
    SeqDev : integer;
    {Private declarations}
  public
    {Public declarations}
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManEn3_NFE: TfmManEn3_NFE;
  sArqBackup: string;

implementation

uses dxDemoUtils, FileCtrl, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri,
     ManE03_NFE, ManNF1_NFE, PsqSt1, PsqSt2, PsqUnd;

{$R *.DFM}

procedure TfmManEn3_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select FatDev.CodEmp,'+
           '        FatDev.DteRes,'+
           '        FatDev.NumRes,'+
           '        FatDev.SeqLib,'+
           '        FatDev.SeqFat,'+
           '        FatDev.SeqDev,'+
           '        FatDev.QtiDev,'+
           '        FatDev.DteDev,'+
           '        FatDev.UfeDev,'+
           '        FatDev.NroNfs,'+
           '        FatDev.CodPfa,'+
           '        FatDev.TipPfa,'+
           '        FatDev.CodCf1,'+
           '        FatDev.CodCf2,'+
           '        FatDev.CodCli,'+
           '        FatDev.FlgSai,'+
           '        FatDev.FlgEnt,'+
           '        FatDev.TipFrt,'+
           '        FatDev.EspDev,'+
           '        FatDev.MarDev,'+
           '        FatDev.IntFin,'+
           '        FatDev.DesNat,'+
           '        FatDev.InsSub,'+
           '        FatDev.CodTra,'+
           '        FatDev.NomTra,'+
           '        FatDev.CgcTra,'+
           '        FatDev.InsTra,'+
           '        FatDev.TenTra,'+
           '        FatDev.EndTra,'+
           '        FatDev.RefTra,'+
           '        FatDev.NumTra,'+
           '        FatDev.BaiTra,'+
           '        FatDev.CidTra,'+
           '        FatDev.UfeTra,'+
           '        FatDev.CepTra,'+
           '        FatDev.NroDev,'+
           '        FatDev.PlcTra,'+
           '        FatDev.UfePlc,'+
           '        FatDev.TefCli,'+
           '        FatDev.EnfCli,'+
           '        FatDev.RffCli,'+
           '        FatDev.NrfCli,'+
           '        FatDev.BafCli,'+
           '        FatDev.CifCli,'+
           '        FatDev.UffCli,'+
           '        FatDev.CefCli,'+
           '        FatDev.TenCli,'+
           '        FatDev.EndCli,'+
           '        FatDev.RefCli,'+
           '        FatDev.NumCli,'+
           '        FatDev.BaiCli,'+
           '        FatDev.CidCli,'+
           '        FatDev.UfeCli,'+
           '        FatDev.CepCli,'+
           '        FatDev.CgeCli,'+
           '        FatDev.IneCli,'+
           '        FatDev.InfLiq,'+
           '        FatDev.InfBrt,'+
           '        FatDev.QtdVol,'+
           '        FatDev.LotNfe,'+
           '        FatDev.EnvNfe,'+
           '        FatDev.SeqNfe,'+
           '        FatDev.DteNfe,'+
           '        FatDev.RecNfe,'+
           '        FatDev.ProNfe,'+
           '        FatDev.DopNfe,'+
           '        FatDev.HreNfe,'+
           '        FatDev.UsuNfe,'+
           '        FatDev.DtePnf,'+
           '        FatDev.HrePnf,'+
           '        FatDev.ImpNfe,'+
           '        FatDev.RetNfe,'+
           '        FatDev.FlgAtu,'+
           '        FatDev.Id_FinUff,'+
           '        FatDev.Id_FinCif,'+
           '        FatDev.Id_FinUfe,'+
           '        FatDev.Id_FinCie,'+
           '        FatDev.Id_TraUfe,'+
           '        FatDev.Id_TraCie,'+
           '        FatDev.TrbPis,'+
           '        FatDev.PerPis,'+
           '        FatDev.TrbCof,'+
           '        FatDev.PerCof,'+
           '        FatDev.TotDev,'+
           '        FatDev.TotDsr,'+
           '        FatDev.TotFrt,'+
           '        FatDev.TotSeg,'+
           '        FatDev.TotDes,'+
           '        FatDev.TotIpi,'+
           '        FatDev.TotPis,'+
           '        FatDev.TotCof,'+
           '        FatDev.BasIcm,'+
           '        FatDev.TotIcm,'+
           '        FatDev.BasSub,'+
           '        FatDev.TotSub,'+
           '        FatDev.TotGer,'+
           '        FatDev.Ob1Dev,'+
           '        FatDev.Ob2Dev,'+
           '        FatDev.Ob3Dev,'+
           '        FatDev.Ob4Dev,'+
           '        FatDev.Ob5Dev,'+
           '        FatDev.Ob6Dev,'+
           '        FatDev.Ob7Dev,'+
           '        FatDev.Ob8Dev,'+
           '        FatDev.NfePis,'+
           '        FatDev.NfeCof,'+
           '        FatDev.Id_EstSip,'+
           '        FinCli.NomCli,'+
           '        FinCli.Em1Cli '+
           ' From FatDev LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)';

  sFiltro := ' Where FatDev.FlgNot = '+ QuotedStr('Sim') +
             '   and FatDev.FlgNFE = '+ Quotedstr('Sim') +
             '   and FatDev.EnvNFE = '+ Quotedstr('Nao') ;

  sOrdem := ' Order by FatDev.NroNfs';

end;

procedure TfmManEn3_NFE.FormShow(Sender: TObject);
var
  ArqEnviado : TStringList;
  Nome_ArqIni : string;
  SeqLin : integer;
  Linha : string;
begin
  inherited;

  Nome_ArqIni := ExtractFilePath(Application.ExeName)+'config.ini';

  if FileExists(Nome_ArqIni) then begin

     try

       ArqEnviado := TStringList.Create;

       ArqEnviado.LoadFromFile(Nome_ArqIni);

       for SeqLin := 0 to ArqEnviado.Count - 1 do begin

           Linha := Trim(ArqEnviado[SeqLin]);

           if Trim(copy(Linha,7,Length(Linha)-6)) <> '' then begin

              if pos('[EM11]',Linha) > 0 then
                 sArqBackup := Trim(copy(Linha,7,Length(Linha)-6));

           end;
       end;

       if Trim(sArqBackup) = '' then sArqBackup := 'C:\EMERION\BACKUP\NFE\';

     finally

        FreeAndNil(ArqEnviado);

     end;
  end;

  with FatDev,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  CountRegistros;

  EdPsqNroNfs.SetFocus;

end;

procedure TfmManEn3_NFE.DsFatDevDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  Label3.Caption := Trim(FatDevRETNFE.Value);
  Label4.Caption := Trim(FatDevEM1CLI.Value);
  
  if FatDevCodCli.Value > 0 then
     pnCodCli.Caption := IntToStr(FatDevCodCli.Value)
  else
     pnCodCli.Caption := '';

end;

procedure TfmManEn3_NFE.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn3_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEn3_NFE := Nil;
end;

procedure TfmManEn3_NFE.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManEn3_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManEn3_NFE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if pnalterar.Visible then begin

        if FatDv2.State <> dsBrowse then FatDv2.CancelUpdates;

        batualizar.Enabled := True;

        benviar.Enabled := True;

        pnalterar.Visible := False;

        grFatDv2.SetFocus;

        end
     else
        close;

  end;
end;

procedure TfmManEn3_NFE.DsFatDv2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnDesDv2.Caption := ' '+FatDv2DesDv2.Value;

  pnCodIte.Caption := Trim(FatDv2CodIte.Value);
  pnQtdIte.Caption := FormatFloat('###,###,##0.0000',FatDv2UltQtd.Value);
  pnVlqIte.Caption := FormatFloat('###,###,##0.0000',FatDv2VlqDv2.Value);
  pnTotIte.Caption := FormatFloat('###,###,##0.00',FatDv2TotDv2.Value);
  pnIcmIte.Caption := FormatFloat('##0',FatDv2IcmDv2.Value);
  pnIpiIte.Caption := FormatFloat('##0',FatDv2IpiDv2.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00',FatDv2TotIpi.Value);

end;

procedure TfmManEn3_NFE.bEnviarClick(Sender: TObject);
var
  SeqEnc      : integer;
  LinArq      : string;
  LinPro      : string;
  SeqLin      : integer;
  ArqRe1      : string;
  ArqRe2      : string;
  ArqRs1      : string;
  ArqRs2      : string;
  FlgRej      : string;
  MSGNFE      : string;
  MSGANT      : string;
  RECNFE      : string;
  PRONFE      : string;
  DTENFE      : string;
  HRENFE      : string;
  DTEPNF      : string;
  HREPNF      : string;
  ArqEnv      : TextFile;
  ArqRet      : TStringList;
  SeqRet      : Boolean;
  Handle      : LongInt;
  ApeEmp      : string;
  NomEmp      : string;
  EndEmp      : string;
  NumEmp      : string;
  RefEmp      : string;
  BaiEmp      : string;
  CidEmp      : string;
  UfeEmp      : string;
  CepEmp      : string;
  FonEmp      : string;
  CgcEmp      : string;
  CpfEmp      : string;
  InsEmp      : string;
  InsSub      : string;  
  CgcTra      : string;
  CpfTra      : string;
  InsTra      : string;
  ApeTra      : string;
  NomTra      : string;
  EndTra      : string;
  NumTra      : string;
  RefTra      : string;
  BaiTra      : string;
  CidTra      : string;
  UfeTra      : string;
  DesNat      : string;
  EmaCli      : string;
  CgcCli      : string;
  CpfCli      : string;
  InsCli      : string;
  NomCli      : string;
  EndCli      : string;
  NumCli      : string;
  RefCli      : string;
  BaiCli      : string;
  CidCli      : string;
  UfeCli      : string;
  CepCli      : string;
  FonCli      : string;
  CodPro      : string;
  ClsIpi      : string;
  DesPro      : string;
  CodCfo      : string;
  CodUnd      : string;
  CodSt1      : string;
  CodSt2      : string;
  QtdPro      : string;
  VluPro      : string;
  TotPro      : string;
  EspFat      : string;
  MarFat      : string;
  PesLiq      : string;
  PesBrt      : string;
  TipNCM      : string;
  NroSuf      : string;
  BasIcm      : string;
  RedIcm      : string;
  PerIcm      : string;
  TotIcm      : string;
  TrbPis      : string;
  PerPis      : string;
  BasPis      : string;
  TotPis      : string;
  TrbCof      : string;
  PerCof      : string;
  BasCof      : string;
  TotCof      : string;
  TrbIpi      : string;
  BasIpi      : string;
  PerIpi      : string;
  TotIpi      : string;
  TotDsr      : string;
  BasSub      : string;
  IcmSub      : string;
  MrgSub      : string;
  NfePis      : string;
  NfeCof      : string;
  TotSub      : string;
  TotFrt      : string;
  TotSeg      : string;
  TotDes      : string;
  TipFrt      : string;
  ObsDev      : string;
  TipCnd      : string;
  SeqNfe      : string;
  NomArq      : string;
  sNumeroNF   : string;
  NroPais_Cli : string;
  NomPais_Cli : string;
  NroPais_Emp : string;
  NomPais_Emp : string;
  Finalizar   : string;
  Id_EmpCie   : string;
  Id_CliNfe   : string;
  Id_EstSip   : string;
  NroReg      : integer;
  Id_FinPai   : integer;
  Id_EmpUfe   : integer;
  Id_FinUfe   : integer;
  Id_FinCie   : integer;
  Id_CliUfe   : integer;
  Id_CliCie   : integer;
  Nome_ArqIni : string;
begin
  inherited;
  if FatDevCodEmp.Value > 0 then begin

     CodEmp := FatDevCodEmp.Value;
     DteRes := FatDevDteRes.Value;
     NumRes := FatDevNumRes.Value;
     SeqLib := FatDevSeqLib.Value;
     SeqFat := FatDevSeqFat.Value;
     SeqDev := FatDevSeqDev.Value;

     with FatDev,SQL do begin

          Close;
          Text := sBase +
                  ' Where FatDev.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                  '   and FatDev.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                  '   and FatDev.NumRes = '+ QuotedStr(IntToStr(NumRes)) +
                  '   and FatDev.SeqLib = '+ QuotedStr(IntToStr(SeqLib)) +
                  '   and FatDev.SeqFat = '+ QuotedStr(IntToStr(SeqFat)) +
                  '   and FatDev.SeqDev = '+ QuotedStr(IntToStr(SeqDev)) ;
          Open;

     end;

     CountRegistros;

     if FatDevCodEmp.Value > 0 then begin

        if fMsg('Confirma envio para emissão da NFe ?','O') then begin

           Nome_ArqIni := ExtractFilePath(Application.ExeName)+'config.ini';

           if FileExists(Nome_ArqIni) then begin

              if Trim(sArqBackup) <> '' then begin

                 if DirectoryExists(sArqBackup) then begin

                    Finalizar := 'N';

                    try

                       fmManNF1_NFE := TfmManNF1_NFE.Create(Self);
                       fmManNF1_NFE.ShowModal;

                       Finalizar := fmManNF1_NFE.Finalizar;

                    finally

                       FreeAndNil(fmManNF1_NFE);

                    end;

                    if Finalizar = 'S' then begin

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select GerEmp.ApeEmp,'+
                                    '        GerEmp.NomEmp,'+
                                    '        GerEmp.CgcEmp,'+
                                    '        GerEmp.InsEmp,'+
                                    '        GerEmp.CepEmp,'+
                                    '        GerEmp.TenEmp,'+
                                    '        GerEmp.EndEmp,'+
                                    '        GerEmp.NumEmp,'+
                                    '        GerEmp.RefEmp,'+
                                    '        GerEmp.BaiEmp,'+
                                    '        GerEmp.SigUfe,'+
                                    '        GerEmp.PrtEmp,'+
                                    '        GerEmp.FonEmp,'+
                                    '        GerEmp.Id_FinUfe,'+
                                    '        GerEmp.Id_FinCie,'+
                                    '        GerEmp.Id_FinPai '+
                                    ' From GerEmp'+
                                    ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(FatDevCodEmp.Value));
                            Open;

                            ApeEmp := fLimpaAcentos(FieldbyName('ApeEmp').AsString);
                            NomEmp := fLimpaAcentos(FieldbyName('NomEmp').AsString);

                            if FieldbyName('TenEmp').AsString <> '' then
                               EndEmp := Trim(FieldbyName('TenEmp').AsString)+ ' ' +FieldbyName('EndEmp').AsString
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

                            Id_EmpUfe := FieldbyName('Id_FinUfe').AsInteger;
                            Id_FinCie := FieldbyName('Id_FinCie').AsInteger;

                            if Trim(fLimpaStr(FieldbyName('PrtEmp').AsString)) <> '' then
                               FonEmp := Trim(fLimpaStr(FieldbyName('PrtEmp').AsString))+ Trim(fLimpaStr(FieldbyName('FonEmp').AsString))
                            else
                               FonEmp := Trim(fLimpaStr(FieldbyName('FonEmp').AsString));

                            InsEmp := fLimpaStr(FieldbyName('InsEmp').AsString);

                            NomEmp := copy(Trim(NomEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomEmp),1,60)));
                            ApeEmp := copy(Trim(ApeEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(ApeEmp),1,60)));
                            EndEmp := copy(Trim(EndEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndEmp),1,60)));
                            NumEmp := copy(Trim(NumEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumEmp),1,60)));
                            RefEmp := copy(Trim(RefEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefEmp),1,60)));
                            BaiEmp := copy(Trim(BaiEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiEmp),1,60)));
                            UfeEmp := copy(Trim(UfeEmp),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeEmp),1,02)));
                            InsEmp := copy(Trim(InsEmp),1,14) + fReplicate(' ',14 - Length(copy(Trim(InsEmp),1,14)));

                            CgcEmp := fReplicate('0',14 - Length(copy(Trim(CgcEmp),1,14))) + copy(Trim(CgcEmp),1,14);
                            CpfEmp := fReplicate('0',14 - Length(copy(Trim(CpfEmp),1,14))) + copy(Trim(CpfEmp),1,14);
                            CepEmp := fReplicate('0',08 - Length(copy(Trim(CepEmp),1,08))) + copy(Trim(CepEmp),1,08);
                            FonEmp := fReplicate('0',10 - Length(copy(Trim(FonEmp),1,10))) + copy(Trim(FonEmp),1,10);

                            Id_FinPai := FieldbyName('Id_FinPai').AsInteger;

                       end;

                       if Id_EmpUfe > 0 then begin

                          if Id_FinCie > 0 then begin

                             if Id_FinPai > 0 then begin

                                NroPais_Emp := fNumZeros(IntToStr(Id_FinPai),4);

                                with quSQL,SQL do begin

                                     Close;
                                     Text := ' Select FinPai.NomPai From FinPai Where FinPai.Id_FinPai = '+ QuotedStr(IntToStr(Id_FinPai));
                                     Open;

                                     NomPais_Emp := fLimpaAcentos(FieldbyName('NomPai').AsString);

                                     NomPais_Emp := copy(Trim(NomPais_Emp),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomPais_Emp),1,60)));

                                end;

                                NfePis := fLimpaStr(Trim(FatDevNfePis.Value));
                                NfeCof := fLimpaStr(Trim(FatDevNfeCof.Value));

                                if FatDevId_EstSip.Value > 0 then begin

                                   with quSQL,SQL do begin

                                        Close;
                                        Text := ' Select EstSip.SigNfe'+
                                                ' From EstSip'+
                                                ' Where EstSip.Id_EstSip = '+ QuotedStr(IntToStr(FatDevId_EstSip.Value));
                                        Open;

                                        Id_EstSip := FieldbyName('SigNfe').AsString;

                                   end;

                                   end
                                else
                                   begin

                                   if Trim(FatDevTipPfa.Value) = 'Saida' then begin

                                      if FatDevTotIpi.Value > 0 then
                                         Id_EstSip := '50'
                                      else
                                         Id_EstSip := '99';

                                      end
                                   else
                                      Id_EstSip := '49';

                                end;

                                with quSQL,SQL do begin

                                     Close;
                                     Text := ' Select FinCli.NomCli,'+
                                             '        FinCli.CgcCli,'+
                                             '        FinCli.InsCli,'+
                                             '        FinCli.NroSuf,'+
                                             '        FinCli.Pt1Cli,'+
                                             '        FinCli.Fo1Cli,'+
                                             '        FinCli.Em1Cli,'+
                                             '        FinCli.Id_FinPai'+
                                             ' From FinCli'+
                                             ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(FatDevCodCli.Value));
                                     Open;

                                     NomCli := fLimpaAcentos(FieldbyName('NomCli').AsString);
                                     NroSuf := fLimpaAcentos(fLimpaStr(FieldbyName('NroSuf').AsString));

//                                   EmaCli := Trim(FieldbyName('Em1Cli').AsString);

                                     EmaCli := 'NAOENVIAR';

                                     EmaCli := copy(EmaCli,1,60) + fReplicate(' ',60 - Length(copy(EmaCli,1,60)));

                                     if Length(Trim(FieldbyName('CgcCli').AsString)) = 11 then
                                        CpfCli := FieldbyName('CgcCli').AsString
                                     else
                                        CgcCli := FieldbyName('CgcCli').AsString;

                                     InsCli := fLimpaStr(FieldbyName('InsCli').AsString);

                                     CgcCli := copy(Trim(CgcCli),1,14) + fReplicate(' ',14 - Length(copy(Trim(CgcCli),1,14)));
                                     CpfCli := copy(Trim(CpfCli),1,14) + fReplicate(' ',14 - Length(copy(Trim(CpfCli),1,14)));
                                     InsCli := copy(Trim(InsCli),1,14) + fReplicate(' ',14 - Length(copy(Trim(InsCli),1,14)));

                                     if Trim(fLimpaStr(FieldbyName('Pt1Cli').AsString)) <> '' then
                                        FonCli := Trim(fLimpaStr(FieldbyName('Pt1Cli').AsString))+ Trim(fLimpaStr(FieldbyName('Fo1Cli').AsString))
                                     else
                                        FonCli := Trim(fLimpaStr(FieldbyName('Fo1Cli').AsString));

                                     FonCli := fRemoverEspaco(FonCli);

                                     NomCli := copy(Trim(NomCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomCli),1,60)));
                                     NroSuf := copy(Trim(NroSuf),1,09) + fReplicate(' ',09 - Length(copy(Trim(NroSuf),1,09)));

                                     FonCli := fReplicate('0',10 - Length(copy(Trim(FonCli),1,10))) + copy(Trim(FonCli),1,10);

                                     Id_FinPai := FieldbyName('Id_FinPai').AsInteger;

                                end;

                                if Id_FinPai > 0 then begin

                                   NroPais_Cli := fNumZeros(IntToStr(Id_FinPai),4);

                                   with quSQL,SQL do begin

                                        Close;
                                        Text := ' Select FinPai.NomPai From FinPai Where FinPai.Id_FinPai = '+ QuotedStr(IntToStr(Id_FinPai));
                                        Open;

                                        NomPais_Cli := fLimpaAcentos(FieldbyName('NomPai').AsString);

                                        NomPais_Cli := copy(Trim(NomPais_Cli),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomPais_Cli),1,60)));

                                   end;

                                   Id_CliUfe := FatDevId_FinUff.Value;
                                   Id_CliCie := FatDevId_FinCif.Value;

                                   with quSQL,SQL do begin

                                        Close;
                                        Text := ' Select FinCie.NomCie,'+
                                                '        FinCie.SigNfe '+
                                                ' From FinCie'+
                                                ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_CliCie));
                                        Open;

                                        Id_CliNfe := IntToStr(Id_CliUfe)+FieldbyName('SigNfe').AsString;

                                        CidCli := fLimpaAcentos(FieldbyName('NomCie').AsString);

                                        CidCli := copy(Trim(CidCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(CidCli),1,60)));

                                   end;

                                   if Trim(FatDevSeqNFe.Value) = '' then begin

                                      FatDev.Edit;

                                      FatDevFlgAtu.Value := 'F';
                                      FatDevSeqNFe.Value := fMontaChaveAcessoNFe(Id_EmpUfe,FatDevDteDev.Value,CgcEmp,55,1,FatDevNroNfs.Value,1);

                                      with FatDev do begin

                                           fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                           try

                                              ApplyUpdates; {Tenta aplicar as alterações};

                                              fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                           except

                                              fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

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

                                   end;

                                   if not directoryExists('C:\EMERION\NFE') then CreateDir('C:\EMERION\NFE');

                                   if not directoryExists('C:\EMERION\REQ') then CreateDir('C:\EMERION\REQ');

                                   if not directoryExists('C:\EMERION\RESP') then CreateDir('C:\EMERION\RESP');

                                   if not directoryExists('C:\EMERION\BACKUP\NFE') then CreateDir('C:\EMERION\BACKUP\NFE');

                                   Application.ProcessMessages;

                                   fmManPri.Enabled := False;

                                   fmManEn3_NFE.Enabled := False;

                                   pnMensag.Visible := True;

                                   pnMensag.Caption := 'Aguarde. Verificando status do serviço.';

                                   ArqRe1 := 'C:\Emerion\REQ\INTPOS.TMP';
                                   ArqRe2 := 'C:\Emerion\REQ\INTPOS.001';

                                   ArqRs1 := 'C:\Emerion\RESP\INTPOS.STS';
                                   ArqRs2 := 'C:\Emerion\RESP\INTPOS.001';

                                   DeleteFile(ArqRe1);
                                   DeleteFile(ArqRe2);
                                   DeleteFile(ArqRs1);
                                   DeleteFile(ArqRs2);

                                   AssignFile(ArqEnv,ArqRe1);

                                   Rewrite(ArqEnv);

                                   Writeln(ArqEnv,'EM01' +
                                                  UfeEmp +
                                                  FatDevSeqNFe.Value);

                                   CloseFile(ArqEnv);

                                   movefile(PChar(ArqRe1),PChar(ArqRe2));

                                   SeqEnc := 0;

                                   while SeqEnc = 0 do begin

                                         while not FileExists(ArqRs2) do Application.ProcessMessages;

                                         if FileExists(ArqRs2) then begin

                                            sleep(1000);

                                            ArqRet := TStringList.Create;

                                            ArqRet.LoadFromFile(ArqRs2);

                                            if pos('EMRESP',ArqRet[0]) = 0 then
                                               SeqEnc := 3
                                            else
                                               begin

                                               if pos(FatDevSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

                                            end;

                                            FreeAndNil(ArqRet);

                                            if SeqEnc = 3 then DeleteFile(ArqRs2);

                                         end;
                                   end;

                                   if FileExists(ArqRs2) then begin

                                      Application.ProcessMessages;

                                      CopyFile(Pchar(ArqRs2),Pchar(ArqRs2), SeqRet);

                                      // Cria-se um Handle //

                                      Handle := CreateFile(PChar(ArqRs2),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                      // Descarrega o arquivo com essa função //

                                      FlushFileBuffers(Handle);

                                      // Fecha o Handle //

                                      CloseHandle(Handle);

                                      // Informações para Salva de Backup do INTPOS.001//

                                      CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTPOS.001'), SeqRet);

                                      { Cria-se um Handle }

                                      Handle := CreateFile('INTPOS.001',GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                      { Descarrega o arquivo com essa função }

                                      FlushFileBuffers(Handle);

                                      { Fecha o Handle }

                                      CloseHandle(Handle);

                                      // Informações para Salva de Backup do INTTMP.001//

                                      CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTTMP.001'), SeqRet);

                                      // Cria-se um Handle //

                                      Handle := CreateFile(PChar('INTTMP.001'),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                      // Descarrega o arquivo com essa função //

                                      FlushFileBuffers(Handle);

                                      // Fecha o Handle //

                                      CloseHandle(Handle);

                                      FlgRej := 'N';

                                      ArqRet := TStringList.Create;

                                      ArqRet.LoadFromFile(ArqRs2);

                                      for SeqLin := 0 to ArqRet.Count - 1 do begin

                                          Application.ProcessMessages;

                                          LinArq := ArqRet[SeqLin];

                                          if pos('EMRESP',LinArq) > 0 then begin

                                             if pos('System.Reflection',LinArq) > 0 then begin

                                                FlgRej := 'S';

                                                MSGNFE := 'Serviço inativo ou inoperante. Tente novamente.';

                                                break;

                                                end
                                             else
                                                begin

                                                if pos('Erros:',LinArq) > 0 then FlgRej := 'S';

                                                if pos('Rejeição',LinArq) > 0 then FlgRej := 'S';

                                                MSGNFE := copy(LinArq,pos('<xMotivo>',LinArq)+9,pos('</xMotivo>',LinArq) - (pos('<xMotivo>',LinArq)+9));

                                             end;
                                          end;
                                      end;

                                      FreeAndNil(ArqRet);

                                      if FlgRej = 'N' then begin

                                         if Trim( MSGNFE ) <> '' then begin

                                            pnMensag.Caption := MSGNFE;

                                            Application.ProcessMessages;

                                            sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                                         end;

                                         if Trim(FatDevRecNFe.Value) = '' then begin

                                            pnMensag.Caption := 'Aguarde. Enviando informações da nota.';

                                            DeleteFile(ArqRe1);
                                            DeleteFile(ArqRe2);
                                            DeleteFile(ArqRs1);
                                            DeleteFile(ArqRs2);

                                            AssignFile(ArqEnv,ArqRe1);

                                            Rewrite(ArqEnv);

                                            Writeln(ArqEnv,'EM0201' +
                                                           UfeEmp +
                                                           FatDevSeqNFe.Value +
                                                           fNumZeros(IntToStr(FatDevLotNfe.Value),9));

                                            with quSQL,SQL do begin

                                                 Close;
                                                 Text := ' Select FinCie.NomCie,'+
                                                         '        FinCie.SigNfe '+
                                                         ' From FinCie'+
                                                         ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie));
                                                 Open;

                                                 Id_EmpCie := IntToStr(Id_EmpUfe)+FieldbyName('SigNfe').AsString;

                                                 CidEmp := fLimpaAcentos(FieldbyName('NomCie').AsString);

                                                 CidEmp := copy(Trim(CidEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(CidEmp),1,60)));

                                            end;

                                            DesNat := copy(Trim(FatDevDesNat.Value),1,60) + fReplicate(' ',60 - Length(copy(Trim(FatDevDesNat.Value),1,60)));

                                            TipCnd := '2';

                                            Writeln(ArqEnv,'EM0202'+                                                        // Uso interno do sistema
                                                           IntToStr(Id_EmpUfe)+                                             // Código da UF do emitente do documento fiscal
                                                           copy(FatDevSeqNFE.Value,35,09)+                                  // Código númerico que compõe a chave de acesso
                                                           DesNat+                                                          // Descrição da natureza de operação
                                                           TipCnd+                                                          // Indicador da forma de pagamento 0-Pagamento à vista 1-Pagamento à prazo 2-Outros
                                                           '55'+                                                            // Código do Modelo do documento fiscal
                                                           '1'+                                                             // Série do documento fiscal
                                                           fNumZeros(IntToStr(FatDevNroNfs.Value),9)+                       // Número do documento fiscal
                                                           copy(FormatDateTime('dd/mm/yyyy',FatDevDteDev.Value),7,4) +'-'+  // Data de emissão do documento fiscal
                                                           copy(FormatDateTime('dd/mm/yyyy',FatDevDteDev.Value),4,2) +'-'+
                                                           copy(FormatDateTime('dd/mm/yyyy',FatDevDteDev.Value),1,2) +
                                                           '0000-00-00'+                                                    // Data de saida ou entrada da Mercadoria/Produto
                                                           '0'+                                                             // Tipo do documento fiscal
                                                           Id_EmpCie+                                                       // Código do Municipio de Ocorrência do Fato Gerador
                                                           '1'+                                                             // Formato de Impressao do DANFE
                                                           '1'+                                                             // Forma de emissão da NF-e
                                                           copy(FatDevSeqNFE.Value,44,1)+                                   // Digito verificador da Chave de Acesso da NF-e
                                                           '1'+                                                             // Identificação do Ambiente
                                                           '1'+                                                             // Finalidade de emissão da NF-e
                                                           '0'+                                                             // Processo de emissão da NF-e
                                                           'EMERION FATURA      ');                                         // Versão do processo de emissão da NF-e

                                            Writeln(ArqEnv,'EM0203'+                                                        // Uso interno do sistema
                                                           CgcEmp+                                                          // CNPJ do emitente
                                                           CpfEmp+                                                          // CPF do emitente
                                                           NomEmp+                                                          // Razão social ou Nome do emitente
                                                           ApeEmp+                                                          // Nome fantasia
                                                           EndEmp+                                                          // Logradouro
                                                           NumEmp+                                                          // Número
                                                           RefEmp+                                                          // Complemento
                                                           BaiEmp+                                                          // Bairro
                                                           Id_EmpCie+                                                       // Código do municipio
                                                           CidEmp+                                                          // Nome do municipio
                                                           UfeEmp+                                                          // Sigla da UF
                                                           CepEmp+                                                          // Código do CEP
                                                           NroPais_Emp+                                                     // Código do País
                                                           NomPais_Emp+                                                     // Nome do País
                                                           FonEmp+                                                          // Telefone
                                                           InsEmp+                                                          // IE
                                                           InsSub+                                                          // IE do Substituto tributário
                                                           '               '+                                               // IM inscrição municipal
                                                           '       ');                                                      // CNAE Fiscal

                                            if FatDevTefCli.Value <> '' then
                                               EndCli := Trim(FatDevTefCli.Value)+ ' ' +FatDevEnfCli.Value
                                            else
                                               EndCli := FatDevEnfCli.Value;

                                            EndCli := fLimpaAcentos(EndCli);

                                            NumCli := fLimpaAcentos(FatDevNrfCli.Value);
                                            RefCli := fLimpaAcentos(FatDevRffCli.Value);
                                            BaiCli := fLimpaAcentos(FatDevBafCli.Value);
                                            UfeCli := fLimpaAcentos(FatDevUfeCli.Value);

                                            CepCli := FatDevCefCli.Value;

                                            EndCli := copy(Trim(EndCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndCli),1,60)));
                                            NumCli := copy(Trim(NumCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumCli),1,60)));
                                            RefCli := copy(Trim(RefCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefCli),1,60)));
                                            BaiCli := copy(Trim(BaiCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiCli),1,60)));
                                            UfeCli := copy(Trim(UfeCli),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeCli),1,02)));

                                            CepCli := fReplicate('0',08 - Length(copy(Trim(CepCli),1,08))) + copy(Trim(CepCli),1,08);

                                            Writeln(ArqEnv,'EM0204'+                                                       // Uso interno do sistema
                                                           CgcCli+                                                         // CNPJ do destinatario
                                                           CpfCli+                                                         // CPF do destinatario
                                                           NomCli+                                                         // Razão social ou nome do destinatario
                                                           EndCli+                                                         // Logradouro
                                                           NumCli+                                                         // Número
                                                           RefCli+                                                         // Complemento
                                                           BaiCli+                                                         // Bairro
                                                           Id_CliNfe+                                                      // Código do Municipio
                                                           CidCli+                                                         // Nome do Municipio
                                                           UfeCli+                                                         // Sigla da UF
                                                           CepCli+                                                         // Código do Cep
                                                           NroPais_Cli+                                                    // Código do País
                                                           NomPais_Cli+                                                    // Nome do País
                                                           FonCli+                                                         // Telefone
                                                           InsCli+                                                         // IE
                                                           NroSuf);                                                        // Inscrição SUFRAMA

                                            if (Trim(FatDevCepCli.Value) <> Trim(FatDevCefCli.Value)) or
                                               (Trim(FatDevTenCli.Value) <> Trim(FatDevTefCli.Value)) or
                                               (Trim(FatDevEndCli.Value) <> Trim(FatDevEnfCli.Value)) or
                                               (Trim(FatDevRefCli.Value) <> Trim(FatDevRffCli.Value)) or
                                               (Trim(FatDevNumCli.Value) <> Trim(FatDevNrfCli.Value)) or
                                               (Trim(FatDevBaiCli.Value) <> Trim(FatDevBafCli.Value)) or
                                               (Trim(FatDevCidCli.Value) <> Trim(FatDevCifCli.Value)) or
                                               (Trim(FatDevUfeCli.Value) <> Trim(FatDevUffCli.Value)) then begin

                                               if Trim(FatDevCgeCli.Value) <> '' then
                                                  CgcCli := copy(Trim(FatDevCgeCli.Value),1,14) + fReplicate(' ',14 - Length(copy(Trim(FatDevCgeCli.Value),1,14)));

                                               if FatDevTenCli.Value <> '' then
                                                  EndCli := Trim(FatDevTenCli.Value)+ ' ' +FatDevEndCli.Value
                                               else
                                                  EndCli := FatDevEndCli.Value;

                                               EndCli := fLimpaAcentos(EndCli);

                                               NumCli := fLimpaAcentos(FatDevNumCli.Value);
                                               RefCli := fLimpaAcentos(FatDevRefCli.Value);
                                               BaiCli := fLimpaAcentos(FatDevBaiCli.Value);
                                               UfeCli := fLimpaAcentos(FatDevUfeCli.Value);

                                               EndCli := copy(Trim(EndCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndCli),1,60)));
                                               NumCli := copy(Trim(NumCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumCli),1,60)));
                                               RefCli := copy(Trim(RefCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefCli),1,60)));
                                               BaiCli := copy(Trim(BaiCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiCli),1,60)));
                                               UfeCli := copy(Trim(UfeCli),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeCli),1,02)));

                                               CepCli := fReplicate('0',08 - Length(copy(Trim(CepCli),1,08))) + copy(Trim(CepCli),1,08);

                                               Id_FinUfe := FatDevId_FinUfe.Value;
                                               Id_FinCie := FatDevId_FinCie.Value;

                                               with quSQL,SQL do begin

                                                    Close;
                                                    Text := ' Select FinCie.NomCie,'+
                                                            '        FinCie.SigNfe '+
                                                            ' From FinCie'+
                                                            ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie));
                                                    Open;

                                                    Id_CliNfe := IntToStr(Id_FinUfe)+FieldbyName('SigNfe').AsString;

                                                    CidCli := fLimpaAcentos(FieldbyName('NomCie').AsString);

                                                    CidCli := copy(Trim(CidCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(CidCli),1,60)));

                                               end;

                                               Writeln(ArqEnv,'EM0205'+   // Uso interno do sistema
                                                              CgcCli+     // CNPJ do destinatario
                                                              EndCli+     // Logradouro
                                                              NumCli+     // Número
                                                              RefCli+     // Complemento
                                                              BaiCli+     // Bairro
                                                              Id_CliNfe+  // Código do Municipio
                                                              CidCli+     // Nome do Municipio
                                                              UfeCli);    // Sigla da UF

                                            end;

                                            TrbPis := Trim(FatDevTrbPis.Value);
                                            TrbCof := Trim(FatDevTrbCof.Value);

                                            TrbPis := copy(Trim(TrbPis),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbPis),1,03)));
                                            TrbCof := copy(Trim(TrbCof),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbCof),1,03)));

                                            PerPis := fSubstDecimal(FormatFloat('##0.00',FatDevPerPis.Value),05);
                                            PerCof := fSubstDecimal(FormatFloat('##0.00',FatDevPerCof.Value),05);

                                            with quSQL,SQL do begin

                                                 Close;
                                                 Text := ' Select FatDv2.NroDv2,'+
                                                         '        FatDv2.CodClp,'+
                                                         '        FatDv2.CodGru,'+
                                                         '        FatDv2.CodSub,'+
                                                         '        FatDv2.CodPro,'+
                                                         '        FatDv2.DesDv2,'+
                                                         '        FatDv2.ObsDv2,'+
                                                         '        FatDv2.ClsIpi,'+
                                                         '        FatDv2.CodCfo,'+
                                                         '        FatDv2.CodSt1,'+
                                                         '        FatDv2.CodSt2,'+
                                                         '        FatDv2.CodUnd,'+
                                                         '        FatDv2.UltQtd,'+
                                                         '        FatDv2.VlqDv2,'+
                                                         '        FatDv2.TotDv2,'+
                                                         '        FatDv2.IcmDv2,'+
                                                         '        FatDv2.BscIcm,'+
                                                         '        FatDv2.RedIcm,'+
                                                         '        FatDv2.BasIcm,'+
                                                         '        FatDv2.TotIcm,'+
                                                         '        FatDv2.IpiDv2,'+
                                                         '        FatDv2.TrbIpi,'+
                                                         '        FatDv2.BscIpi,'+
                                                         '        FatDv2.RedIpi,'+
                                                         '        FatDv2.BasIpi,'+
                                                         '        FatDv2.TotIpi,'+
                                                         '        FatDv2.IcmSub,'+
                                                         '        FatDv2.MrgSub,'+
                                                         '        FatDv2.BaseSb,'+
                                                         '        FatDv2.BasSub,'+
                                                         '        FatDv2.TotSub,'+
                                                         '        FatDv2.TotDsr,'+
                                                         '        FatDv2.TotFrt,'+
                                                         '        FatDv2.TotSeg,'+
                                                         '        FatDv2.TotDes,'+
                                                         '        FatDv2.TotPis,'+
                                                         '        FatDv2.TotCof '+
                                                         ' From FatDv2'+
                                                         ' Where FatDv2.CodEmp = '+ QuotedStr(IntToStr(FatDevCodEmp.Value)) +
                                                         '   and FatDv2.DteRes = '+ QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
                                                         '   and FatDv2.NumRes = '+ QuotedStr(IntToStr(FatDevNumRes.Value)) +
                                                         '   and FatDv2.SeqLib = '+ QuotedStr(IntToStr(FatDevSeqLib.Value)) +
                                                         '   and FatDv2.SeqFat = '+ QuotedStr(IntToStr(FatDevSeqFat.Value)) +
                                                         '   and FatDv2.SeqDev = '+ QuotedStr(IntToStr(FatDevSeqDev.Value)) +
                                                         ' Order by FatDv2.NroDv2';
                                                 Open;
                                                 First;

                                            end;

                                            while not quSQL.EOF do begin

                                                  CodPro := quSQL.FieldbyName('CodClp').AsString+
                                                            quSQL.FieldbyName('CodGru').AsString+
                                                            quSQL.FieldbyName('CodSub').AsString+
                                                            quSQL.FieldbyName('CodPro').AsString;

                                                  DesPro := Trim(quSQL.FieldbyName('DesDv2').AsString)+ ' ' +Trim(quSQL.FieldbyName('ObsDv2').AsString);

                                                  DesPro := AllTrim(fLimpaAcentos(copy(DesPro,1,120)));

                                                  ClsIpi := Trim(fLimpaStr(quSQL.FieldbyName('ClsIpi').AsString));
                                                  CodCfo := Trim(fLimpaStr(quSQL.FieldbyName('CodCfo').AsString));

                                                  CodUnd := Trim(quSQL.FieldbyName('CodUnd').AsString);
                                                  CodSt1 := Trim(quSQL.FieldbyName('CodSt1').AsString);
                                                  CodSt2 := Trim(quSQL.FieldbyName('CodSt2').AsString);
                                                  TrbIpi := Trim(quSQL.FieldbyName('TrbIpi').AsString);

                                                  QtdPro := fSubstDecimal(FormatFloat('########0.0000',quSQL.FieldbyName('UltQtd').AsFloat),15);
                                                  VluPro := fSubstDecimal(FormatFloat('########0.0000',quSQL.FieldbyName('VlqDv2').AsFloat),15);

                                                  TotPro := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotDv2').AsFloat),15);
                                                  BasIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasIcm').AsFloat),15);
                                                  RedIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('RedIcm').AsFloat),15);
                                                  PerIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IcmDv2').AsFloat),05);
                                                  TotIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIcm').AsFloat),15);
                                                  BasIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasIpi').AsFloat),15);
                                                  PerIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IpiDv2').AsFloat),05);
                                                  TotIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIpi').AsFloat),15);
                                                  MrgSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('MrgSub').AsFloat),05);
                                                  IcmSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IcmSub').AsFloat),05);
                                                  BasSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasSub').AsFloat),15);
                                                  TotSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotSub').AsFloat),15);
                                                  TotDsr := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotDsr').AsFloat),15);
                                                  TotFrt := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotFrt').AsFloat),15);
                                                  TotSeg := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotSeg').AsFloat),15);
                                                  TotDes := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotDes').AsFloat),15);

                                                  BasPis := fSubstDecimal(FormatFloat('########0.00',(quSQL.FieldbyName('TotDv2').AsFloat - quSQL.FieldbyName('TotDsr').AsFloat)),15);
                                                  BasCof := fSubstDecimal(FormatFloat('########0.00',(quSQL.FieldbyName('TotDv2').AsFloat - quSQL.FieldbyName('TotDsr').AsFloat)),15);

                                                  TotPis := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotPis').AsFloat),15);
                                                  TotCof := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotCof').AsFloat),15);

                                                  TipNCM := '';

                                                  CodPro := copy(Trim(CodPro),1,60) + fReplicate(' ',60 - Length(copy(Trim(CodPro),1,60)));
                                                  CodCfo := copy(Trim(CodCfo),1,04) + fReplicate(' ',04 - Length(copy(Trim(CodCfo),1,04)));
                                                  CodUnd := copy(Trim(CodUnd),1,06) + fReplicate(' ',06 - Length(copy(Trim(CodUnd),1,06)));
                                                  TrbIpi := copy(Trim(TrbIpi),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbIpi),1,03)));

                                                  CodSt1 := fReplicate('0',01 - Length(copy(Trim(CodSt1),1,01))) + copy(Trim(CodSt1),1,01);
                                                  CodSt2 := fReplicate('0',02 - Length(copy(Trim(CodSt2),1,02))) + copy(Trim(CodSt2),1,02);
                                                  ClsIpi := fReplicate('0',08 - Length(copy(Trim(ClsIpi),1,08))) + copy(Trim(ClsIpi),1,08);

                                                  DesPro := copy(Trim(DesPro),1,120) + fReplicate(' ',120 - Length(copy(Trim(DesPro),1,120)));
                                      
                                                  Writeln(ArqEnv,'EM0206'+                                                     // Uso interno do sistema
                                                                 '00'+                                                         // Tipo de operação
                                                                 fNumZeros(IntToStr(quSQL.FieldbyName('NroDv2').AsInteger),3)+ // Nro. do item
                                                                 CodPro+                                                       // Código do Produto ou serviço
                                                                 '              '+                                             // GTIN
                                                                 DesPro+                                                       // Descrição do produto ou serviço
                                                                 ClsIpi+                                                       // Código NCM
                                                                 '   '+                                                        // EX_TIPI
                                                                 '  '+                                                         // Gênero do produto ou serviço
                                                                 CodCfo+                                                       // Código fiscal da operação
                                                                 CodUnd+                                                       // Unidade comercial
                                                                 QtdPro+                                                       // Quantidade comercial
                                                                 VluPro+                                                       // Valor unitário de comercialização
                                                                 TotPro+                                                       // Valor Total Bruto dos Produtos ou Serviços
                                                                 '              '+                                             // GTIN
                                                                 CodUnd+                                                       // Unidade Tributavel
                                                                 QtdPro+                                                       // Quantidade Tributavel
                                                                 VluPro+                                                       // Valor Unitário de tributação
                                                                 TotFrt+                                                       // Valor Total do Frete
                                                                 TotSeg+                                                       // Valor Total do Seguro
                                                                 TotDsr);                                                      // Valor do Desconto

                                                  Writeln(ArqEnv,'EM0207'+                                                     // Uso interno do sistema
                                                                 '01'+                                                         // Tipo de operação
                                                                 fNumZeros(IntToStr(quSQL.FieldbyName('NroDv2').AsInteger),3)+ // Nro. do item
                                                                 CodSt1+                                                       // Origem da mercadoria
                                                                 CodSt2+                                                       // Grupo de CST
                                                                 '3'+                                                          // Modalidade de determinação da BC do ICMS ST
                                                                 RedIcm+                                                       // Percential de redução de BC do ICMS
                                                                 BasIcm+                                                       // Valor da BC do ICMS
                                                                 PerIcm+                                                       // Aliquota do imposto
                                                                 TotIcm+                                                       // Valor do ICMS
                                                                 BasSub+                                                       // Valor da BC do ICMS ST
                                                                 IcmSub+                                                       // Aliquota do imposto do ICMS ST
                                                                 MrgSub+                                                       // Percentual da Margem de valor Adicionado do ICMS ST
                                                                 TotSub);                                                      // Valor do ICMS ST

                                                  Writeln(ArqEnv,'EM0208'+                                                     // Uso interno do sistema
                                                                 '01'+                                                         // Tipo de operação
                                                                 fNumZeros(IntToStr(quSQL.FieldbyName('NroDv2').AsInteger),3)+ // Nro. do item
                                                                 TrbIpi+                                                       // IPI tributado
                                                                 BasIpi+                                                       // Valor da BC do IPI
                                                                 PerIpi+                                                       // Aliquota do imposto
                                                                 TotIpi+                                                       // Valor do IPI
                                                                 Id_EstSip);                                                   // Situação tributária do IPI

                                                  Writeln(ArqEnv,'EM0209'+                                                     // Uso interno do sistema
                                                                 '01'+                                                         // Tipo de operação
                                                                 fNumZeros(IntToStr(quSQL.FieldbyName('NroDv2').AsInteger),3)+ // Nro. do item
                                                                 NfePis+                                                       // Situação Tributaria do PIS
                                                                 TrbPis+                                                       // PIS tributado
                                                                 BasPis+                                                       // BC PIS
                                                                 PerPis+                                                       // Percentual do PIS
                                                                 TotPis+                                                       // Valor do PIS
                                                                 NfeCof+                                                       // Situação Tributaria do COFINS
                                                                 TrbCof+                                                       // COFINS tributado
                                                                 BasCof+                                                       // BC COFINS
                                                                 PerCof+                                                       // Percentual do COFINS
                                                                 TotCof);                                                      // Valor do COFINS

                                                  Application.ProcessMessages;

                                                  quSQL.Next;

                                            end;

                                            Writeln(ArqEnv,'EM0210'+                                                          // Uso interno do sistema
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevBasIcm.Value),15)+  // Base de Calculo do ICMS
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevTotIcm.Value),15)+  // Valor Total do ICMS
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevBasSub.Value),15)+  // Base de Calculo do ICMS ST
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevTotSub.Value),15)+  // Valor Total do ICMS ST
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevTotDev.Value),15)+  // Valor Total dos produtos e serviços
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevTotFrt.Value),15)+  // Valor Total do Frete
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevTotSeg.Value),15)+  // Valor Total do Seguro
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevTotDsr.Value),15)+  // Valor Total do Desconto
                                                           '           0.00'+                                                 // Valor Total do II
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevTotIpi.Value),15)+  // Valor Total do IPI
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevTotPis.Value),15)+  // Valor Total do PIS
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevTotCof.Value),15)+  // Valor Total do COFINS
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevTotDes.Value),15)+  // Outras Despesas Acessórias
                                                           fSubstDecimal(FormatFloat('########0.00',FatDevTotGer.Value),15)); // Valor Total da NFe

                                            if FatDevTipFrt.Value = '2' then
                                               TipFrt := '1'
                                            else
                                               TipFrt := '0';

                                            if Length(Trim(FatDevCgcTra.Value)) = 11 then
                                               CpfTra := FatDevCgcTra.Value
                                            else
                                               CgcTra := FatDevCgcTra.Value;

                                            Id_FinUfe := FatDevId_TraUfe.Value;
                                            Id_FinCie := FatDevId_TraCie.Value;

                                            InsTra := fLimpaStr(FatDevInsTra.Value);

                                            NomTra := fLimpaAcentos(FatDevNomTra.Value);

                                            if Trim(FatDevTenTra.Value) <> '' then
                                               EndTra := Trim(FatDevTenTra.Value)+ ' ' +FatDevEndTra.Value
                                            else
                                               EndTra := FatDevEndTra.Value;

                                            EndTra := fLimpaAcentos(EndTra);

                                            NumTra := fLimpaAcentos(FatDevNumTra.Value);
                                            RefTra := fLimpaAcentos(FatDevRefTra.Value);
                                            BaiTra := fLimpaAcentos(FatDevBaiTra.Value);
                                            UfeTra := fLimpaAcentos(FatDevUfeTra.Value);

                                            CgcTra := fReplicate('0',14 - Length(copy(Trim(CgcTra),1,14))) + copy(Trim(CgcTra),1,14);
                                            CpfTra := fReplicate('0',14 - Length(copy(Trim(CpfTra),1,14))) + copy(Trim(CpfTra),1,14);

                                            NomTra := copy(Trim(NomTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomTra),1,60)));
                                            ApeTra := copy(Trim(ApeTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(ApeTra),1,60)));
                                            EndTra := copy(Trim(EndTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndTra),1,60)));
                                            NumTra := copy(Trim(NumTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumTra),1,60)));
                                            RefTra := copy(Trim(RefTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefTra),1,60)));
                                            BaiTra := copy(Trim(BaiTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiTra),1,60)));
                                            UfeTra := copy(Trim(UfeTra),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeTra),1,02)));
                                            InsTra := copy(Trim(InsTra),1,14) + fReplicate(' ',14 - Length(copy(Trim(InsTra),1,14)));

                                            with quSQL,SQL do begin

                                                 Close;
                                                 Text := ' Select FinCie.NomCie,'+
                                                         '        FinCie.SigNfe '+
                                                         ' From FinCie'+
                                                         ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie));
                                                 Open;

                                                 CidTra := fLimpaAcentos(FieldbyName('NomCie').AsString);

                                                 CidTra := copy(Trim(CidTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(CidTra),1,60)));

                                            end;

                                            PesLiq := fSubstDecimal(FormatFloat('########0.000',FatDevInfLiq.Value),15);
                                            PesBrt := fSubstDecimal(FormatFloat('########0.000',FatDevInfBrt.Value),15);

                                            EspFat := fLimpaAcentos(FatDevEspDev.Value);
                                            MarFat := fLimpaAcentos(FatDevMarDev.Value);

                                            MarFat := copy(Trim(MarFat),1,60) + fReplicate(' ',60 - Length(copy(Trim(MarFat),1,60)));
                                            EspFat := copy(Trim(EspFat),1,60) + fReplicate(' ',60 - Length(copy(Trim(EspFat),1,60)));

                                            Writeln(ArqEnv,'EM0211'+                                   // Uso interno do sistema
                                                           TipFrt+                                     // Modalidade do Frete
                                                           CgcTra+                                     // CNPJ
                                                           CpfTra+                                     // CPF
                                                           NomTra+                                     // Razão social ou nome
                                                           InsTra+                                     // IE
                                                           EndTra+                                     // Endereço completo
                                                           CidTra+                                     // Nome do Municipio
                                                           UfeTra+                                     // Sigla da UF
                                                           fNumZeros(IntToStr(FatDevQtdVol.Value),15)+ // Quantidade de volumes
                                                           MarFat+                                     // Especie dos volumes transportados
                                                           EspFat+                                     // Marca dos volumes transportados
                                                           PesLiq+                                     // Peso Liquido (em Kg)
                                                           PesBrt);                                    // Peso Bruto (em Kg)

                                            ObsDev := '';

                                            if Trim(fLimpaAcentos(FatDevOb1Dev.Value)) <> '' then
                                               ObsDev := ObsDev + AllTrim(fLimpaAcentos(FatDevOb1Dev.Value));

                                            if Trim(fLimpaAcentos(FatDevOb2Dev.Value)) <> '' then
                                               ObsDev := ObsDev + AllTrim(fLimpaAcentos(FatDevOb2Dev.Value));

                                            if Trim(fLimpaAcentos(FatDevOb3Dev.Value)) <> '' then
                                               ObsDev := ObsDev + AllTrim(fLimpaAcentos(FatDevOb3Dev.Value));

                                            if Trim(fLimpaAcentos(FatDevOb4Dev.Value)) <> '' then
                                               ObsDev := ObsDev + AllTrim(fLimpaAcentos(FatDevOb4Dev.Value));

                                            if Trim(fLimpaAcentos(FatDevOb5Dev.Value)) <> '' then
                                               ObsDev := ObsDev + AllTrim(fLimpaAcentos(FatDevOb5Dev.Value));

                                            if Trim(fLimpaAcentos(FatDevOb6Dev.Value)) <> '' then
                                               ObsDev := ObsDev + AllTrim(fLimpaAcentos(FatDevOb6Dev.Value));

                                            if Trim(fLimpaAcentos(FatDevOb7Dev.Value)) <> '' then
                                               ObsDev := ObsDev + AllTrim(fLimpaAcentos(FatDevOb7Dev.Value));

                                            if Trim(fLimpaAcentos(FatDevOb8Dev.Value)) <> '' then
                                               ObsDev := ObsDev + AllTrim(fLimpaAcentos(FatDevOb8Dev.Value));

                                            ObsDev := copy(ObsDev,1,256);

                                            ObsDev := copy(Trim(ObsDev),1,256) + fReplicate(' ',256 - Length(copy(Trim(ObsDev),1,256)));

                                            Writeln(ArqEnv,'EM0214'+ // Uso interno do sistema
                                                           ObsDev);  // Informações adicionais de interesse do Fisco

                                            with quSQL,SQL do begin

                                                 Close;
                                                 Text := ' Select FatPed.SeqNfe,'+
                                                         '        FatPed.DteFat,'+
                                                         '        FatPed.NroNfs '+
                                                         ' From FatPed'+
                                                         ' Where FatPed.CodEmp = '+ QuotedStr(IntToStr(FatDevCodEmp.Value)) +
                                                         '   and FatPed.DteRes = '+ QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
                                                         '   and FatPed.NumRes = '+ QuotedStr(IntToStr(FatDevNumRes.Value)) +
                                                         '   and FatPed.SeqLib = '+ QuotedStr(IntToStr(FatDevSeqLib.Value)) +
                                                         '   and FatPed.SeqFat = '+ QuotedStr(IntToStr(FatDevSeqFat.Value)) ;
                                                 Open;

                                            end;

                                            SeqNfe := copy(Trim(quSQL.FieldbyName('SeqNfe').AsString),1,44) + fReplicate(' ',44 - Length(copy(Trim(quSQL.FieldbyName('SeqNfe').AsString),1,44)));

                                            Writeln(ArqEnv,'EM0218'+ // Uso interno do sistema
                                                           SeqNfe +                                                                         // Chave de acesso da nota fiscal referenciada
                                                           IntToStr(Id_EmpUfe)+                                                             // Código da UF do emitente do documento fiscal
                                                           copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DteFat').AsDateTime),9,2) +  // Ano e mês da emissão da NF
                                                           copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DteFat').AsDateTime),4,2) +
                                                           CgcEmp+                                                                          // CNPJ do emitente da NF
                                                           '01'+                                                                            // Informar o código do modelo do documento fiscal: 01 - modelo 01
                                                           '1'+                                                                             // Informar a serie do documento fiscal (informar zero se inexistente)
                                                           fNumZeros(IntToStr(quSQL.FieldbyName('NroNfs').AsInteger),9));                   // Número do documento fiscal

                                            CloseFile(ArqEnv);

                                            movefile(PChar(ArqRe1),PChar(ArqRe2));

                                            pnMensag.Caption := 'Aguarde. Enviando informações da nota fiscal.';

                                            SeqEnc := 0;

                                            while SeqEnc = 0 do begin

                                                  while not FileExists(ArqRs2) do Application.ProcessMessages;

                                                  if FileExists(ArqRs2) then begin

                                                     sleep(1000);

                                                     ArqRet := TStringList.Create;

                                                     ArqRet.LoadFromFile(ArqRs2);

                                                     if pos('EMRESP',ArqRet[0]) = 0 then
                                                        SeqEnc := 3
                                                     else
                                                        begin

                                                        if pos(FatDevSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

                                                     end;

                                                     FreeAndNil(ArqRet);

                                                     if SeqEnc = 3 then DeleteFile(ArqRs2);

                                                  end;
                                            end;

                                            if FileExists(ArqRs2) then begin

                                               Application.ProcessMessages;

                                               CopyFile(Pchar(ArqRs2),Pchar(ArqRs2), SeqRet);

                                               // Cria-se um Handle //

                                               Handle := CreateFile(PChar(ArqRs2),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                               // Descarrega o arquivo com essa função //

                                               FlushFileBuffers(Handle);

                                               // Fecha o Handle //

                                               CloseHandle(Handle);

                                               // Informações para Salva de Backup do INTPOS.001//

                                               CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTPOS.001'), SeqRet);

                                               { Cria-se um Handle }

                                               Handle := CreateFile('INTPOS.001',GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                               { Descarrega o arquivo com essa função }

                                               FlushFileBuffers(Handle);

                                               { Fecha o Handle }

                                               CloseHandle(Handle);

                                               // Informações para Salva de Backup do INTTMP.001//

                                               CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTTMP.001'), SeqRet);

                                               // Cria-se um Handle //

                                               Handle := CreateFile(PChar('INTTMP.001'),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                               // Descarrega o arquivo com essa função //

                                               FlushFileBuffers(Handle);

                                               // Fecha o Handle //

                                               CloseHandle(Handle);

                                               FlgRej := 'N';

                                               ArqRet := TStringList.Create;

                                               ArqRet.LoadFromFile(ArqRs2);

                                               for SeqLin := 0 to ArqRet.Count - 1 do begin

                                                   Application.ProcessMessages;

                                                   LinArq := ArqRet[SeqLin];

                                                   if pos('EMRESP',LinArq) > 0 then begin

                                                      if pos('Erros:',LinArq) > 0 then FlgRej := 'S';

                                                      if pos('Rejeição',LinArq) > 0 then FlgRej := 'S';

                                                      MSGNFE := copy(LinArq,pos('<xMotivo>',LinArq)+9,pos('</xMotivo>',LinArq) - (pos('<xMotivo>',LinArq)+9));

                                                      RECNFE := copy(LinArq,pos('<nRec>',LinArq)+6,pos('</nRec>',LinArq) - (pos('<nRec>',LinArq)+6));

                                                      DTENFE := copy(LinArq,pos('<dhRecbto>',LinArq)+10,pos('</dhRecbto>',LinArq) - (pos('<dhRecbto>',LinArq)+10));

                                                      HRENFE := copy(LinArq,pos('<dhRecbto>',LinArq)+21,pos('</dhRecbto>',LinArq) - (pos('<dhRecbto>',LinArq)+21));

                                                      if Trim(DTENFE) <> '' then DTENFE := copy(DTENFE,9,2)+ '/' +copy(DTENFE,6,2)+ '/' +copy(DTENFE,1,4);

                                                   end;
                                               end;

                                               FreeAndNil(ArqRet);

                                               if Trim( MSGNFE ) <> '' then begin

                                                  FatDev.Edit;

                                                  FatDevFlgAtu.Value := 'F';
                                                  FatDevRETNFE.Value := copy(Trim(MSGNFE),1,100);

                                                  with FatDev do begin

                                                       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                       try

                                                          ApplyUpdates; {Tenta aplicar as alterações};

                                                          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                       except

                                                          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                          if FatDev.State <> dsBrowse then FatDev.CancelUpdates;

                                                          FatDev.Close;
                                                          FatDev.Open;

                                                          grFatDev.SetFocus;

                                                          raise;

                                                       end;

                                                       CommitUpdates; {sucesso!, limpa o cache...}

                                                  end;
                                               end;

                                               if FlgRej = 'N' then begin

                                                  if Trim( MSGNFE ) <> '' then begin

                                                     pnMensag.Caption := MSGNFE;

                                                     Application.ProcessMessages;

                                                     sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                                                  end;

                                                  if Trim(RECNFE) <> '' then begin

                                                     FatDev.Edit;

                                                     FatDevFlgAtu.Value := 'F';
                                                     FatDevHreNFe.Value := HRENFE;
                                                     FatDevUsuNFe.Value := GUsu_Id;
                                                     FatDevRecNFe.Value := Trim(RECNFE);
                                                     FatDevDteNFe.Value := StrToDate(DTENFE);

                                                     with FatDev do begin

                                                          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                          try

                                                             ApplyUpdates; {Tenta aplicar as alterações};

                                                             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                          except

                                                             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                             if FatDev.State <> dsBrowse then FatDev.CancelUpdates;

                                                             FatDev.Close;
                                                             FatDev.Open;

                                                             grFatDev.SetFocus;

                                                             raise;

                                                          end;

                                                          CommitUpdates; {sucesso!, limpa o cache...}

                                                     end;
                                                  end;

                                                  DeleteFile(ArqRe1);
                                                  DeleteFile(ArqRe2);
                                                  DeleteFile(ArqRs1);
                                                  DeleteFile(ArqRs2);

                                                  end
                                               else
                                                  begin

                                                  DeleteFile(ArqRe1);
                                                  DeleteFile(ArqRe2);
                                                  DeleteFile(ArqRs1);
                                                  DeleteFile(ArqRs2);

                                                  fmManPri.Enabled := True;

                                                  fmManEn3_NFE.Enabled := True;

                                                  pnMensag.Visible := False;

                                                  fmsgErro(MSGNFE,Nil);

                                               end;
                                            end;
                                         end;

                                         end
                                      else
                                         begin

                                         DeleteFile(ArqRe1);
                                         DeleteFile(ArqRe2);
                                         DeleteFile(ArqRs1);
                                         DeleteFile(ArqRs2);

                                         fmManPri.Enabled := True;

                                         fmManEn3_NFE.Enabled := True;

                                         pnMensag.Visible := False;

                                         fmsgErro(MSGNFE,Nil);

                                      end;
                                   end;

                                   if Trim(FatDevRecNFe.Value) <> '' then begin

                                      RecNFE := copy(Trim(FatDevRecNFe.Value),1,15) + fReplicate(' ',15 - Length(copy(Trim(FatDevRecNFe.Value),1,15)));

                                      pnMensag.Caption := 'Aguarde. Consultando protocolo.';

                                      DeleteFile(ArqRe1);
                                      DeleteFile(ArqRe2);
                                      DeleteFile(ArqRs1);
                                      DeleteFile(ArqRs2);

                                      AssignFile(ArqEnv,ArqRe1);

                                      Rewrite(ArqEnv);

                                      Writeln(ArqEnv,'EM03' +
                                                     UfeEmp +
                                                     FatDevSeqNFe.Value +
                                                     RecNFE +
                                                     'Sim' +
                                                     fNumZeros(IntToStr(FatDevLotNfe.Value),9)+
                                                     fNumZeros(IntToStr(FatDevNroNfs.Value),9)+
                                                     EmaCli);

                                      CloseFile(ArqEnv);

                                      movefile(PChar(ArqRe1),PChar(ArqRe2));

                                      SeqEnc := 0;

                                      while SeqEnc = 0 do begin

                                            while not FileExists(ArqRs2) do Application.ProcessMessages;

                                            if FileExists(ArqRs2) then begin

                                               sleep(1000);

                                               ArqRet := TStringList.Create;

                                               ArqRet.LoadFromFile(ArqRs2);

                                               if pos('EMRESP',ArqRet[0]) = 0 then
                                                  SeqEnc := 3
                                               else
                                                  begin

                                                  if pos(FatDevSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

                                               end;

                                               FreeAndNil(ArqRet);

                                               if SeqEnc = 3 then DeleteFile(ArqRs2);

                                            end;
                                      end;

                                      if FileExists(ArqRs2) then begin

                                         Application.ProcessMessages;

                                         CopyFile(Pchar(ArqRs2),Pchar(ArqRs2), SeqRet);

                                         // Cria-se um Handle //

                                         Handle := CreateFile(PChar(ArqRs2),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                         // Descarrega o arquivo com essa função //

                                         FlushFileBuffers(Handle);

                                         // Fecha o Handle //

                                         CloseHandle(Handle);

                                         // Informações para Salva de Backup do INTPOS.001//

                                         CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTPOS.001'), SeqRet);

                                         { Cria-se um Handle }

                                         Handle := CreateFile('INTPOS.001',GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                         { Descarrega o arquivo com essa função }

                                         FlushFileBuffers(Handle);

                                         { Fecha o Handle }

                                         CloseHandle(Handle);

                                         // Informações para Salva de Backup do INTTMP.001//

                                         CopyFile(Pchar(ArqRs2),Pchar(ExtractFilePath(Application.ExeName)+'INTTMP.001'), SeqRet);

                                         // Cria-se um Handle //

                                         Handle := CreateFile(PChar('INTTMP.001'),GENERIC_WRITE,0,0,OPEN_ALWAYS,FILE_FLAG_NO_BUFFERING,0);

                                         // Descarrega o arquivo com essa função //

                                         FlushFileBuffers(Handle);

                                         // Fecha o Handle //

                                         CloseHandle(Handle);

                                         FlgRej := 'N';

                                         ArqRet := TStringList.Create;

                                         ArqRet.LoadFromFile(ArqRs2);

                                         for SeqLin := 0 to ArqRet.Count - 1 do begin

                                             Application.ProcessMessages;

                                             LinArq := ArqRet[SeqLin];

                                             if pos('EMRESP',LinArq) > 0 then begin

                                                if pos('<protNFe',LinArq) > 0 then begin

                                                   LinPro := copy(LinArq,pos('<protNFe',LinArq)+8,pos('</protNFe>',LinArq) - (pos('<protNFe',LinArq)+8));

                                                   LinArq := copy(LinArq,pos('EMRESP',LinArq)+6,pos('<protNFe',LinArq) - (pos('EMRESP',LinArq)+6));

                                                end;

                                                if pos('Erros:',LinArq) > 0 then FlgRej := 'S';

                                                if pos('Rejeição',LinArq) > 0 then FlgRej := 'S';

                                                MSGNFE := copy(LinArq,pos('<xMotivo>',LinArq)+9,pos('</xMotivo>',LinArq) - (pos('<xMotivo>',LinArq)+9));

                                             end;
                                         end;

                                         FreeAndNil(ArqRet);

                                         if Trim( MSGNFE ) <> '' then begin

                                            FatDev.Edit;

                                            FatDevFlgAtu.Value := 'F';
                                            FatDevRETNFe.Value := copy(Trim(MSGNFE),1,100);

                                            with FatDev do begin

                                                 fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                 try

                                                    ApplyUpdates; {Tenta aplicar as alterações};

                                                    fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                 except

                                                    fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                    if FatDev.State <> dsBrowse then FatDev.CancelUpdates;

                                                    FatDev.Close;
                                                    FatDev.Open;

                                                    grFatDev.SetFocus;

                                                    raise;

                                                 end;

                                                 CommitUpdates; {sucesso!, limpa o cache...}

                                            end;
                                         end;

                                         if FlgRej = 'N' then begin

                                            if Trim( MSGNFE ) <> '' then begin

                                               pnMensag.Caption := MSGNFE;

                                               Application.ProcessMessages;

                                               sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                                            end;

                                            if Trim(LinPro) <> '' then begin

                                               if pos('Erros:',LinPro) > 0 then FlgRej := 'S';

                                               if pos('Rejeição',LinPro) > 0 then FlgRej := 'S';

                                               MSGNFE := copy(LinPro,pos('<xMotivo>',LinPro)+9,pos('</xMotivo>',LinPro) - (pos('<xMotivo>',LinPro)+9));

                                               PRONFE := copy(LinPro,pos('<nProt>',LinPro)+7,pos('</nProt>',LinPro) - (pos('<nProt>',LinPro)+7));

                                               DTEPNF := copy(LinPro,pos('<dhRecbto>',LinPro)+10,pos('</dhRecbto>',LinPro) - (pos('<dhRecbto>',LinPro)+10));

                                               HREPNF := copy(LinPro,pos('<dhRecbto>',LinPro)+21,pos('</dhRecbto>',LinPro) - (pos('<dhRecbto>',LinPro)+21));

                                               if Trim(DTEPNF) <> '' then DTEPNF := copy(DTEPNF,9,2)+ '/' +copy(DTEPNF,6,2)+ '/' +copy(DTEPNF,1,4);

                                            end;

                                            if Trim( MSGNFE ) <> '' then begin

                                               FatDev.Edit;

                                               FatDevFlgAtu.Value := 'F';
                                               FatDevRETNFe.Value := copy(Trim(MSGNFE),1,100);

                                               with FatDev do begin

                                                    fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                    try

                                                       ApplyUpdates; {Tenta aplicar as alterações};

                                                       fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                    except

                                                       fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                       if FatDev.State <> dsBrowse then FatDev.CancelUpdates;

                                                       FatDev.Close;
                                                       FatDev.Open;

                                                       grFatDev.SetFocus;

                                                       raise;

                                                    end;

                                                    CommitUpdates; {sucesso!, limpa o cache...}

                                               end;
                                            end;

                                            if FlgRej = 'N' then begin

                                               if Trim( MSGNFE ) <> '' then begin

                                                  pnMensag.Caption := MSGNFE;

                                                  Application.ProcessMessages;

                                                  sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                                               end;

                                               if Trim(PRONFE) <> '' then begin

                                                  FatDev.Edit;

                                                  FatDevFlgAtu.Value := 'F';
                                                  FatDevEnvNFe.Value := 'Sim';
                                                  FatDevProNFe.Value := Trim(PRONFE);
                                                  FatDevDtePNF.Value := StrToDate(DTEPNF);
                                                  FatDevHrePNF.Value := HREPNF;

                                                  with FatDev do begin

                                                       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                       try

                                                          ApplyUpdates; {Tenta aplicar as alterações};

                                                          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                       except

                                                          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

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
                                      
                                                  if DirectoryExists(sArqBackup) then begin

                                                     NomArq := sArqBackup +'\processadas\'+ FatDevRecNFe.Value +'_v1.10-procNFe.xml';

                                                     FatArq.Close;
                                                     FatArq.Params[0].AsInteger  := FatDevCodEmp.Value;
                                                     FatArq.Params[1].AsDateTime := FatDevDteRes.Value;
                                                     FatArq.Params[2].AsInteger  := FatDevNumRes.Value;
                                                     FatArq.Params[3].AsInteger  := FatDevSeqLib.Value;
                                                     FatArq.Params[4].AsInteger  := FatDevSeqFat.Value;
                                                     FatArq.Params[5].AsInteger  := FatDevSeqDev.Value;
                                                     FatArq.Open;

                                                     FatArq.Edit;

                                                     FatArqFlgAtu.Value := 'F';

                                                     TBlobField(FatArq.FieldByName('ArqNfe')).LoadFromFile(NomArq);

                                                     with FatArq do begin

                                                          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                          try

                                                             ApplyUpdates; {Tenta aplicar as alterações};

                                                             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                          except

                                                             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                             if FatArq.State <> dsBrowse then FatArq.CancelUpdates;

                                                             FatArq.Close;

                                                             MSGANT := pnMensag.Caption;

                                                             pnMensag.Caption := 'Backup do arquivo não foi realizado pelo sistema';

                                                             Application.ProcessMessages;

                                                             sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o cliente na tela //

                                                             pnMensag.Caption := MSGANT;
                                                 
                                                          end;

                                                          CommitUpdates; {sucesso!, limpa o cache...}

                                                     end;

                                                     FatArq.Close;

                                                  end;

                                                  if FatDevEnvNfe.Value = 'Sim' then begin

                                                     if fMsg('Confirma impressão da DANFE ?','O') then begin

                                                        with quSQL,SQL do begin

                                                             Close;
                                                             Text := ' Delete From FatNfe'+
                                                                     ' Where FatNfe.Dev_CodEmp = '+ QuotedStr(IntToStr(FatDevCodEmp.Value)) +
                                                                     '   and FatNfe.Dev_DteRes = '+ QuotedStr(fDateToSQL(FatDevDteRes.Value)) +
                                                                     '   and FatNfe.Dev_NumRes = '+ QuotedStr(IntToStr(FatDevNumRes.Value)) +
                                                                     '   and FatNfe.Dev_SeqLib = '+ QuotedStr(IntToStr(FatDevSeqLib.Value)) +
                                                                     '   and FatNfe.Dev_SeqFat = '+ QuotedStr(IntToStr(FatDevSeqFat.Value)) +
                                                                     '   and FatNfe.Dev_SeqDev = '+ QuotedStr(IntToStr(FatDevSeqDev.Value)) ;
                                                             ExecSQL;

                                                        end;

                                                        with quSQL,SQL do begin

                                                             Close;
                                                             Text := ' Select FatDv2.CodClp,'+
                                                                     '        FatDv2.CodGru,'+
                                                                     '        FatDv2.CodSub,'+
                                                                     '        FatDv2.CodPro,'+
                                                                     '        FatDv2.CodTam,'+
                                                                     '        FatDv2.CodCor,'+
                                                                     '        FatDv2.DesDv2,'+
                                                                     '        FatDv2.ObsDv2,'+
                                                                     '        FatDv2.CodCfo,'+
                                                                     '        FatDv2.ClsIpi,'+
                                                                     '        FatDv2.CodSt1,'+
                                                                     '        FatDv2.CodSt2,'+
                                                                     '        FatDv2.CodUnd,'+
                                                                     '        FatDv2.UltQtd,'+
                                                                     '        FatDv2.VlqDv2,'+
                                                                     '        FatDv2.TotDv2,'+
                                                                     '        FatDv2.BasIcm,'+
                                                                     '        FatDv2.TotIcm,'+
                                                                     '        FatDv2.TotIpi,'+
                                                                     '        FatDv2.IcmDv2,'+
                                                                     '        FatDv2.IpiDv2,'+
                                                                     '        FatDv2.NroDv2 '+
                                                                     ' From FatDv2'+
                                                                     ' Where FatDv2.CodEmp = '+ Quotedstr(IntToStr(FatDevCodEmp.Value)) +
                                                                     '   and FatDv2.DteRes = '+ Quotedstr(fDateToSQL(FatDevDteRes.Value)) +
                                                                     '   and FatDv2.NumRes = '+ Quotedstr(IntToStr(FatDevNumRes.Value)) +
                                                                     '   and FatDv2.SeqLib = '+ Quotedstr(IntToStr(FatDevSeqLib.Value)) +
                                                                     '   and FatDv2.SeqFat = '+ Quotedstr(IntToStr(FatDevSeqFat.Value)) +
                                                                     '   and FatDv2.SeqDev = '+ Quotedstr(IntToStr(FatDevSeqDev.Value)) +                                                                     
                                                                     ' Order by FatDv2.NroDv2';
                                                             Open;
                                                             First;

                                                        end;

                                                        NroReg := 0;

                                                        while not quSQL.EOF do begin

                                                              Inc(NroReg);

                                                              with quSQL1,SQL do begin

                                                                   Close;
                                                                   Text := ' Insert Into FatNfe(Dev_CodEmp,Dev_DteRes,Dev_NumRes,Dev_SeqLib,Dev_SeqFat,Dev_SeqDev,CodClp,CodGru,CodSub,CodPro,'+
                                                                           '                    CodTam,CodCor,DesNfe,CfoNfe,NcmNfe,SitNfe,UndNfe,QtpNfe,VlqNfe,TotNfe,BasIcm,TotIcm,TotIpi,IcmNfe,'+
                                                                           '                    IpiNfe,NroNfe,IteNfe)'+
                                                                           '             Values(:Dev_CodEmp,:Dev_DteRes,:Dev_NumRes,:Dev_SeqLib,:Dev_SeqFat,:Dev_SeqDev,:CodClp,:CodGru,:CodSub,:CodPro,'+
                                                                           '                    :CodTam,:CodCor,:DesNfe,:CfoNfe,:NcmNfe,:SitNfe,:UndNfe,:QtpNfe,:VlqNfe,:TotNfe,:BasIcm,:TotIcm,:TotIpi,'+
                                                                           '                    :IcmNfe,:IpiNfe,:NroNfe,:IteNfe)';

                                                                   with Params do begin

                                                                        Params[00].AsInteger  := FatDevCodEmp.Value;
                                                                        Params[01].AsDateTime := FatDevDteRes.Value;
                                                                        Params[02].AsInteger  := FatDevNumRes.Value;
                                                                        Params[03].AsInteger  := FatDevSeqLib.Value;
                                                                        Params[04].AsInteger  := FatDevSeqFat.Value;
                                                                        Params[05].AsInteger  := FatDevSeqDev.Value;
                                                                        Params[06].AsString   := quSQL.FieldbyName('CodClp').AsString;
                                                                        Params[07].AsString   := quSQL.FieldbyName('CodGru').AsString;
                                                                        Params[08].AsString   := quSQL.FieldbyName('CodSub').AsString;
                                                                        Params[09].AsString   := quSQL.FieldbyName('CodPro').AsString;
                                                                        Params[10].AsString   := quSQL.FieldbyName('CodTam').AsString;
                                                                        Params[11].AsString   := quSQL.FieldbyName('CodCor').AsString;
                                                                        Params[12].AsString   := Trim(quSQL.FieldbyName('DesDv2').AsString);
                                                                        Params[13].AsString   := Trim(quSQL.FieldbyName('CodCfo').AsString);
                                                                        Params[14].AsString   := Trim(quSQL.FieldbyName('ClsIpi').AsString);
                                                                        Params[15].AsString   := quSQL.FieldbyName('CodSt1').AsString+ ' ' +quSQL.FieldbyName('CodSt2').AsString;
                                                                        Params[16].AsString   := Trim(quSQL.FieldbyName('CodUnd').AsString);
                                                                        Params[17].AsFloat    := quSQL.FieldbyName('UltQtd').AsFloat;
                                                                        Params[18].AsFloat    := quSQL.FieldbyName('VlqDv2').AsFloat;
                                                                        Params[19].AsFloat    := quSQL.FieldbyName('TotDv2').AsFloat;
                                                                        Params[20].AsFloat    := quSQL.FieldbyName('BasIcm').AsFloat;
                                                                        Params[21].AsFloat    := quSQL.FieldbyName('TotIcm').AsFloat;
                                                                        Params[22].AsFloat    := quSQL.FieldbyName('TotIpi').AsFloat;
                                                                        Params[23].AsFloat    := quSQL.FieldbyName('IcmDv2').AsFloat;
                                                                        Params[24].AsFloat    := quSQL.FieldbyName('IpiDv2').AsFloat;
                                                                        Params[25].AsInteger  := NroReg;
                                                                        Params[26].AsString   := 'Sim';

                                                                   end;

                                                                   ExecSQL;

                                                              end;

                                                              if Trim(quSQL.FieldbyName('ObsDv2').AsString) <> '' then begin

                                                                 Inc(NroReg);

                                                                 with quSQL1,SQL do begin

                                                                      Close;
                                                                      Text := 'Insert Into FatNfe(Dev_CodEmp,Dev_DteRes,Dev_NumRes,Dev_SeqLib,Dev_SeqFat,Dev_SeqDev,DesNfe,NroNfe,IteNfe)'+
                                                                              '            Values(:Dev_CodEmp,:Dev_DteRes,:Dev_NumRes,:Dev_SeqLib,:Dev_SeqFat,:Dev_SeqDev,:DesNfe,:NroNfe,:IteNfe)';

                                                                      with Params do begin

                                                                           Params[0].AsInteger  := FatDevCodEmp.Value;
                                                                           Params[1].AsDateTime := FatDevDteRes.Value;
                                                                           Params[2].AsInteger  := FatDevNumRes.Value;
                                                                           Params[3].AsInteger  := FatDevSeqLib.Value;
                                                                           Params[4].AsInteger  := FatDevSeqFat.Value;
                                                                           Params[5].AsInteger  := FatDevSeqDev.Value;
                                                                           Params[6].AsString   := Trim(quSQL.FieldbyName('ObsDv2').AsString);
                                                                           Params[7].AsInteger  := NroReg;
                                                                           Params[8].AsString   := 'Nao';

                                                                      end;

                                                                      ExecSQL;

                                                                 end;
                                                              end;

                                                              quSQL.Next;

                                                        end;

                                                        GEmail := FatDevEm1Cli.Value;;

                                                        sNumeroNF := copy(fNumZeros(IntToStr(FatDevNroNfs.Value),9),1,3)+ '.' +
                                                                     copy(fNumZeros(IntToStr(FatDevNroNfs.Value),9),4,3)+ '.' +
                                                                     copy(fNumZeros(IntToStr(FatDevNroNfs.Value),9),7,3);

                                                        GAssunto := 'NF-e: '+ sNumeroNF +' / 001 '+UpperCase(Trim(NomEmp));

                                                        try

                                                           fmManE03_NFE := TfmManE03_NFE.Create(Self);

                                                           fmManE03_NFE.FatDev.Close;
                                                           fmManE03_NFE.FatDev.Params[0].AsInteger  := FatDevCodEmp.Value;
                                                           fmManE03_NFE.FatDev.Params[1].AsDateTime := FatDevDteRes.Value;
                                                           fmManE03_NFE.FatDev.Params[2].AsInteger  := FatDevNumRes.Value;
                                                           fmManE03_NFE.FatDev.Params[3].AsInteger  := FatDevSeqLib.Value;
                                                           fmManE03_NFE.FatDev.Params[4].AsInteger  := FatDevSeqFat.Value;
                                                           fmManE03_NFE.FatDev.Params[5].AsInteger  := FatDevSeqDev.Value;
                                                           fmManE03_NFE.FatDev.Open;

                                                           fmManE03_NFE.RLReport1.PreviewModal;

                                                        finally

                                                           FreeAndNil(fmManE03_NFE);

                                                        end;

                                                        if fMsg('DANFE impressa corretamente ?','O') then begin

                                                           FatDev.Edit;

                                                           FatDevFlgAtu.Value := 'F';
                                                           FatDevImpNFe.Value := 'Sim';

                                                           with FatDev do begin

                                                                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                                try

                                                                   ApplyUpdates; {Tenta aplicar as alterações};

                                                                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                                except

                                                                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                                   if FatDev.State <> dsBrowse then FatDev.CancelUpdates;

                                                                   FatDev.Close;
                                                                   FatDev.Open;

                                                                   grFatDev.SetFocus;

                                                                   raise;

                                                                end;

                                                                CommitUpdates; {sucesso!, limpa o cache...}

                                                           end;
                                                        end;
                                                     end;

                                                     with FatDev,SQL do begin

                                                          Close;
                                                          Text := sBase + sFiltro + sOrdem;
                                                          Open;

                                                     end;

                                                     CountRegistros;

                                                  end;
                                               end;

                                               end
                                            else
                                               begin

                                               DeleteFile(ArqRe1);
                                               DeleteFile(ArqRe2);
                                               DeleteFile(ArqRs1);
                                               DeleteFile(ArqRs2);

                                               fmManPri.Enabled := True;

                                               fmManEn3_NFE.Enabled := True;

                                               pnMensag.Visible := False;

                                               FatDev.Edit;

                                               FatDevFlgAtu.Value := 'F';

                                               FatDevRecNFe.Clear;

                                               with FatDev do begin

                                                    fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                    try

                                                       ApplyUpdates; {Tenta aplicar as alterações};

                                                       fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                    except

                                                       fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                       if FatDev.State <> dsBrowse then FatDev.CancelUpdates;

                                                       FatDev.Close;
                                                       FatDev.Open;

                                                       grFatDev.SetFocus;

                                                       raise;

                                                    end;

                                                    CommitUpdates; {sucesso!, limpa o cache...}

                                               end;

                                               fmsgErro(MSGNFE,Nil);

                                            end;

                                            end
                                         else
                                            begin

                                            DeleteFile(ArqRe1);
                                            DeleteFile(ArqRe2);
                                            DeleteFile(ArqRs1);
                                            DeleteFile(ArqRs2);

                                            fmManPri.Enabled := True;

                                            fmManEn3_NFE.Enabled := True;

                                            pnMensag.Visible := False;

                                            FatDev.Edit;

                                            FatDevFlgAtu.Value := 'F';

                                            FatDevRecNFe.Clear;

                                            with FatDev do begin

                                                 fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                 try

                                                    ApplyUpdates; {Tenta aplicar as alterações};

                                                    fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                 except

                                                    fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                    if FatDev.State <> dsBrowse then FatDev.CancelUpdates;

                                                    FatDev.Close;
                                                    FatDev.Open;

                                                    grFatDev.SetFocus;

                                                    raise;

                                                 end;

                                                 CommitUpdates; {sucesso!, limpa o cache...}

                                            end;

                                            fmsgErro(MSGNFE,Nil);

                                         end;
                                      end;
                                   end;

                                   end
                                else
                                   begin

                                   fmManPri.Enabled := True;

                                   fmManEn3_NFE.Enabled := True;

                                   pnMensag.Visible := False;

                                   fmsgErro('Código do país para emissão de NFe não informado no cadastro do cliente.',Nil);

                                end;

                                end
                             else
                                begin

                                fmManPri.Enabled := True;

                                fmManEn3_NFE.Enabled := True;

                                pnMensag.Visible := False;

                                fmsgErro('Código do país para emissão de NFe não informado no cadastro da empresa.',Nil);

                             end;

                             end
                          else
                             begin

                             fmManPri.Enabled := True;

                             fmManEn3_NFE.Enabled := True;

                             pnMensag.Visible := False;

                             fmsgErro('Código de municipio para emissão de NFe não informado no cadastro da empresa.',Nil);

                          end;

                          end
                       else
                          begin

                          fmManPri.Enabled := True;

                          fmManEn3_NFE.Enabled := True;

                          pnMensag.Visible := False;

                          fmsgErro('Código da UF para emissão de NFe não informado no cadastro da empresa.',Nil);

                       end;

                       fmManPri.Enabled := True;

                       fmManEn3_NFE.Enabled := True;

                       pnMensag.Visible := False;

                    end;

                    end
                 else
                    fmsgErro('Local para o backup dos arquivos da nota fiscal eletrônica não informado. Por favor verificar.',Nil);

                 end
              else
                 fmsgErro('Local para o backup dos arquivos da nota fiscal eletrônica não informado. Por favor verificar.',Nil);

              end
           else
              fmsgErro('Arquivos de configuração para envio da nota fiscal eletronica não localizado .INI. Por favor verificar.',Nil);

        end;
     end;
  end;
end;

procedure TfmManEn3_NFE.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(FatDev.TotGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From FatDev LEFT JOIN FinCli ON (FatDev.CodCli = FinCli.CodCli)'+
               ' Where FatDev.FlgNot = '+ QuotedStr('Sim') +
               '   and FatDev.FlgNFE = '+ Quotedstr('Sim') +
               '   and FatDev.EnvNFE = '+ Quotedstr('Nao') ;

       if CodEmp > 0 then
          Text := Text + ' and FatDev.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                         ' and FatDev.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                         ' and FatDev.NumRes = '+ QuotedStr(IntToStr(NumRes)) +
                         ' and FatDev.SeqLib = '+ QuotedStr(IntToStr(SeqLib)) +
                         ' and FatDev.SeqFat = '+ QuotedStr(IntToStr(SeqFat)) +
                         ' and FatDev.SeqDev = '+ QuotedStr(IntToStr(SeqDev)) ;

       Open;

       if FieldbyName('QtdReg').AsInteger > 0 then begin

          pnQtdReg.Caption := IntToStr(FieldbyName('QtdReg').AsInteger)+' Nota(s)';

          pnTotReg.Caption := FormatFloat('###,###,##0.00',FieldbyName('TotReg').AsFloat)+' ';

          end
       else
          begin

          pnQtdReg.Caption := '0 Nota(s)';

          pnTotReg.Caption := '0'+ decimalseparator +'00 ';

       end;
  end;

  CodEmp := 0;
  NumRes := 0;
  SeqLib := 0;
  SeqFat := 0;
  SeqDev := 0;

end;

procedure TfmManEn3_NFE.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     with FatDev,SQL do begin

          Close;
          Text := sBase + sFiltro +
                  ' and FatDev.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text);
          Open;

     end;

     end
  else
     begin

     with FatDev,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;
  end;

  CountRegistros;

end;

procedure TfmManEn3_NFE.EdCodCfoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not ( key in [ '0'..'9' ] )) and (not ( key in ['.'] )) then key := #0;
end;

procedure TfmManEn3_NFE.EdCodSt1Enter(Sender: TObject);
begin
  inherited;
  Label4.Caption := 'F1-Iniciais';
end;

procedure TfmManEn3_NFE.EdCodSt1Exit(Sender: TObject);
begin
  inherited;
  if Trim(FatDv2CodSt1.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstSt1 Where EstSt1.CodSt1 = '+ QuotedStr(FatDv2CodSt1.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Situação tributária informada não localizada.',EdCodSt1);

     end;
  end;
end;

procedure TfmManEn3_NFE.EdCodSt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt1 := TfmPsqSt1.Create(Self);
        fmPsqSt1.ShowModal;

        if Trim( fmPsqSt1.CodSt1 ) <> '' then FatDv2CodSt1.Value := fmPsqSt1.CodSt1;

     finally

        FreeAndNil(fmPsqSt1);

     end;

     EdCodSt1.SetFocus;

  end;
end;

procedure TfmManEn3_NFE.EdCodSt2Exit(Sender: TObject);
begin
  inherited;
  if Trim(FatDv2CodSt2.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstSt2 Where EstSt2.CodSt2 = '+ QuotedStr(FatDv2CodSt2.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Situação tributária informada não localizada.',EdCodSt2);

     end;
  end;
end;

procedure TfmManEn3_NFE.EdCodSt2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt2 := TfmPsqSt2.Create(Self);
        fmPsqSt2.ShowModal;

        if Trim( fmPsqSt2.CodSt2 ) <> '' then FatDv2CodSt2.Value := fmPsqSt2.CodSt2;

     finally

        FreeAndNil(fmPsqSt2);

     end;

     EdCodSt2.SetFocus;

  end;
end;

procedure TfmManEn3_NFE.EdCodUndExit(Sender: TObject);
begin
  inherited;
  if Trim(FatDv2CodUnd.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstUnd Where EstUnd.CodUnd = '+ QuotedStr(FatDv2CodUnd.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Unidade de medida informada não localizada.',EdCodUnd);

     end;
  end;
end;

procedure TfmManEn3_NFE.EdCodUndKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqUnd := TfmPsqUnd.Create(Self);
        fmPsqUnd.ShowModal;

        if Trim( fmPsqUnd.CodUnd ) <> '' then FatDv2CodUnd.Value := fmPsqUnd.CodUnd;

     finally

        FreeAndNil(fmPsqUnd);

     end;

     EdCodUnd.SetFocus;

  end;
end;

procedure TfmManEn3_NFE.pnalterarExit(Sender: TObject);
var
  NroDv2 : integer;
begin
  inherited;
  if FatDv2.State <> dsBrowse then begin

     if Trim(FatDv2ClsIpi.Value) <> '' then begin

        if Length(Trim(fLimpaStr(FatDv2ClsIpi.Value))) <> 8 then
           fmsgErro('Conteudo invalido.',EdClsIpi)
        else
           begin

           if fCaracIgual(fLimpaStr(FatDv2ClsIpi.Value)) then fmsgErro('Conteudo invalido.',EdClsIpi);

        end;
     end;

     FatDv2CodCfo.Value := Trim(FatDv2CodCfo.Value);
     FatDv2ClsIpi.Value := Trim(FatDv2ClsIpi.Value);

     if Trim(FatDv2CodCfo.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodCfo);
     if Trim(FatDv2CodSt1.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodSt1);
     if Trim(FatDv2CodSt2.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodSt2);
     if Trim(FatDv2CodUnd.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodUnd);

     NroDv2 := FatDv2NroDv2.Value;

     with FatDv2 do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if FatDv2.State = dsBrowse then FatDv2.Edit;

             EdCodCfo.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     FatDv2.Close;
     FatDv2.Open;

     FatDev.Close;
     FatDev.Open;

     FatDv2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqDev;NroDv2',VarArrayOf([FatDv2CodEmp.Value,FatDv2DteRes.Value,FatDv2NumRes.Value,FatDv2SeqLib.Value,FatDv2SeqFat.Value,FatDv2SeqDev.Value,NroDv2]),[LoPartialKey]);

     if FatDv2NroDv2.Value < FatDevQtiDev.Value then begin

        FatDv2.Next;

        FatDv2.Edit;

        FatDv2CodCfo.Value := Trim(FatDv2CodCfo.Value);
        FatDv2ClsIpi.Value := Trim(FatDv2ClsIpi.Value);
        FatDv2CodSt1.Value := Trim(FatDv2CodSt1.Value);
        FatDv2CodSt2.Value := Trim(FatDv2CodSt2.Value);
        FatDv2CodUnd.Value := Trim(FatDv2CodUnd.Value);

        EdCodCfo.Text := Trim(FatDv2CodCfo.Value);
        EdClsIpi.Text := Trim(FatDv2ClsIpi.Value);
        EdCodSt1.Text := Trim(FatDv2CodSt1.Value);
        EdCodSt2.Text := Trim(FatDv2CodSt2.Value);
        EdCodUnd.Text := Trim(FatDv2CodUnd.Value);

        EdCodCfo.SetFocus;

        end
     else
        begin

        batualizar.Enabled := True;

        benviar.Enabled := True;

        pnalterar.visible := False;

     end;
  end;
end;

procedure TfmManEn3_NFE.grFatDv2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NroDv2 : integer;
begin
  inherited;
  if key = 32 then begin

     if not pnalterar.Visible then begin

        if FatDv2CodEmp.Value > 0 then begin

           CodEmp := FatDv2CodEmp.Value;
           DteRes := FatDv2DteRes.Value;
           NumRes := FatDv2NumRes.Value;
           SeqLib := FatDv2SeqLib.Value;
           SeqFat := FatDv2SeqFat.Value;
           SeqDev := FatDv2SeqDev.Value;
           NroDv2 := FatDv2NroDv2.Value;

           with FatDev,SQL do begin

                Close;
                Text := sBase + ' Where FatDev.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                                '   and FatDev.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                                '   and FatDev.NumRes = '+ QuotedStr(IntToStr(NumRes)) +
                                '   and FatDev.SeqLib = '+ QuotedStr(IntToStr(SeqLib)) +
                                '   and FatDev.SeqFat = '+ QuotedStr(IntToStr(SeqFat)) +
                                '   and FatDev.SeqDev = '+ QuotedStr(IntToStr(SeqDev)) ;                                
                Open;

           end;

           CountRegistros;

           if FatDevCodEmp.Value > 0 then begin

              FatDv2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;SeqDev;NroDv2',VarArrayOf([FatDv2CodEmp.Value,FatDv2DteRes.Value,FatDv2NumRes.Value,FatDv2SeqLib.Value,FatDv2SeqFat.Value,FatDv2SeqDev.Value,NroDv2]),[LoPartialKey]);

              bAtualizar.Enabled := False;

              benviar.Enabled := False;

              pnalterar.Visible := True;

              FatDv2.Edit;

              FatDv2CodCfo.Value := Trim(FatDv2CodCfo.Value);
              FatDv2ClsIpi.Value := Trim(FatDv2ClsIpi.Value);
              FatDv2CodSt1.Value := Trim(FatDv2CodSt1.Value);
              FatDv2CodSt2.Value := Trim(FatDv2CodSt2.Value);
              FatDv2CodUnd.Value := Trim(FatDv2CodUnd.Value);

              EdCodCfo.Text := Trim(FatDv2CodCfo.Value);
              EdClsIpi.Text := Trim(FatDv2ClsIpi.Value);
              EdCodSt1.Text := Trim(FatDv2CodSt1.Value);
              EdCodSt2.Text := Trim(FatDv2CodSt2.Value);
              EdCodUnd.Text := Trim(FatDv2CodUnd.Value);

              EdCodCfo.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManEn3_NFE.FatDv2NCMDV2GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := Trim(FatDv2ClsIpi.Value);
end;

end.

