unit ManGr1_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxColorPickEdit, dxColorCurrencyEdit, dxColorEdit,
  dxColorDateEdit, dxDBELib, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxfProgressBar, dxDBColorEdit;

type
  TfmManGr1_NFE = class(TfmPadrao)
    FatGe2: TwwQuery;
    DsFatGe2: TwwDataSource;
    DsFatGer: TwwDataSource;
    PaintBox: TPaintBox;
    grFatGer: ThGrid;
    grFatGe2: ThGrid;
    quSql: TwwQuery;
    UpFatGer: TUpdateSQL;
    grFatGer1: TdxDBGraphicEdit;
    grFatGe21: TdxDBGraphicEdit;
    pnMensag: TPanel;
    Label2: TLabel;
    pnQtdReg1: TPanel;
    pnTotReg1: TPanel;
    pnProgressbar: TPanel;
    EdPsqNroNfs: TdxColorEdit;
    bAtualizar: TBitBtn;
    Label1: TLabel;
    pnTotReg: TLabel;
    pnQtdReg: TPanel;
    pnCliente: TPanel;
    pnCodCli: TLabel;
    bEnviar: TSpeedButton;
    pnDesGe2: TPanel;
    Label3: TLabel;
    FatGe2DESGE2: TStringField;
    FatGe2OBSGE2: TStringField;
    FatGe2QTPGE2: TFloatField;
    FatGe2VLUGE2: TFloatField;
    FatGe2IPIGE2: TFloatField;
    FatGe2ICMGE2: TFloatField;
    FatGe2TOTIPI: TFloatField;
    FatGe2CODCFO: TStringField;
    FatGe2CLSIPI: TStringField;
    FatGe2CODUND: TStringField;
    FatGe2CODITE: TStringField;
    quSQL1: TwwQuery;
    FatGe2TOTITE: TFloatField;
    FatGer: TwwQuery;
    FatGerCODEMP: TIntegerField;
    FatGerDTEGER: TDateTimeField;
    FatGerUFEGER: TStringField;
    FatGerNRONFS: TIntegerField;
    FatGerCODPFA: TStringField;
    FatGerTIPPFA: TStringField;
    FatGerCODCF1: TStringField;
    FatGerCODCF2: TStringField;
    FatGerCODCLI: TIntegerField;
    FatGerFLGSAI: TStringField;
    FatGerFLGENT: TStringField;
    FatGerTIPFRT: TStringField;
    FatGerESPGER: TStringField;
    FatGerMARGER: TStringField;
    FatGerINTFIN: TStringField;
    FatGerDESNAT: TStringField;
    FatGerINSSUB: TStringField;
    FatGerCODTRA: TIntegerField;
    FatGerNOMTRA: TStringField;
    FatGerCGCTRA: TStringField;
    FatGerINSTRA: TStringField;
    FatGerTENTRA: TStringField;
    FatGerENDTRA: TStringField;
    FatGerREFTRA: TStringField;
    FatGerNUMTRA: TStringField;
    FatGerBAITRA: TStringField;
    FatGerCIDTRA: TStringField;
    FatGerUFETRA: TStringField;
    FatGerCEPTRA: TStringField;
    FatGerNROGER: TStringField;
    FatGerPLCTRA: TStringField;
    FatGerUFEPLC: TStringField;
    FatGerCEFCLI: TStringField;
    FatGerTEFCLI: TStringField;
    FatGerENFCLI: TStringField;
    FatGerRFFCLI: TStringField;
    FatGerNRFCLI: TStringField;
    FatGerBAFCLI: TStringField;
    FatGerCIFCLI: TStringField;
    FatGerUFFCLI: TStringField;
    FatGerCEPCLI: TStringField;
    FatGerTENCLI: TStringField;
    FatGerENDCLI: TStringField;
    FatGerREFCLI: TStringField;
    FatGerNUMCLI: TStringField;
    FatGerBAICLI: TStringField;
    FatGerCIDCLI: TStringField;
    FatGerUFECLI: TStringField;
    FatGerCGECLI: TStringField;
    FatGerINECLI: TStringField;
    FatGerINFLIQ: TFloatField;
    FatGerINFBRT: TFloatField;
    FatGerALTVOL: TIntegerField;
    FatGerRETNFE: TStringField;
    FatGerLOTNFE: TIntegerField;
    FatGerENVNFE: TStringField;
    FatGerSEQNFE: TStringField;
    FatGerDTENFE: TDateTimeField;
    FatGerRECNFE: TStringField;
    FatGerPRONFE: TStringField;
    FatGerDOPNFE: TDateTimeField;
    FatGerHRENFE: TStringField;
    FatGerUSUNFE: TIntegerField;
    FatGerDTEPNF: TDateTimeField;
    FatGerHREPNF: TStringField;
    FatGerIMPNFE: TStringField;
    FatGerNFEPIS: TStringField;
    FatGerNFECOF: TStringField;
    FatGerFLGATU: TStringField;
    FatGerID_FINUFF: TIntegerField;
    FatGerID_FINCIF: TIntegerField;
    FatGerID_FINUFE: TIntegerField;
    FatGerID_FINCIE: TIntegerField;
    FatGerID_TRAUFE: TIntegerField;
    FatGerID_TRACIE: TIntegerField;
    FatGerTRBPIS: TStringField;
    FatGerPERPIS: TFloatField;
    FatGerTRBCOF: TStringField;
    FatGerPERCOF: TFloatField;
    FatGerTOTIT1: TFloatField;
    FatGerTOTDSR: TFloatField;
    FatGerTOTFRT: TFloatField;
    FatGerTOTSEG: TFloatField;
    FatGerTOTDES: TFloatField;
    FatGerTOTIP1: TFloatField;
    FatGerTOTPIS: TFloatField;
    FatGerTOTCOF: TFloatField;
    FatGerBASIC1: TFloatField;
    FatGerTOTIC1: TFloatField;
    FatGerBASSU1: TFloatField;
    FatGerTOTSU1: TFloatField;
    FatGerTOTGE1: TFloatField;
    FatGerOB1GER: TStringField;
    FatGerOB2GER: TStringField;
    FatGerOB3GER: TStringField;
    FatGerOB4GER: TStringField;
    FatGerOB5GER: TStringField;
    FatGerOB6GER: TStringField;
    FatGerOB7GER: TStringField;
    FatGerOB8GER: TStringField;
    FatGerMODPFA: TStringField;
    FatGerNOMCLI: TStringField;
    FatArq: TwwQuery;
    wwQuery1: TwwQuery;
    UpFatArq: TUpdateSQL;
    FatArqARQNFE: TBlobField;
    FatArqFLGATU: TStringField;
    FatGerNUMGER: TIntegerField;
    FatGerDTEFAT: TDateTimeField;
    FatGerHREFAT: TStringField;
    FatArqCODEMP: TIntegerField;
    FatArqDTEGER: TDateTimeField;
    FatArqNUMGER: TIntegerField;
    FatGerNFSCOM: TIntegerField;
    FatGerSEQCOM: TStringField;
    FatGerDTECOM: TDateTimeField;
    FatGerID_ESTSIP: TIntegerField;
    FatGerEM1CLI: TStringField;
    Label4: TLabel;
    FatGe2NCMGE2: TStringField;
    FatGe2CODEMP: TIntegerField;
    FatGe2DTEGER: TDateTimeField;
    FatGe2NUMGER: TIntegerField;
    FatGe2SEQGE2: TIntegerField;
    FatGe2CODST1: TStringField;
    FatGe2CODST2: TStringField;
    FatGe2NROGE2: TIntegerField;
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
    FatGerQTIGER: TIntegerField;
    UpFatGe2: TUpdateSQL;
    FatGerSITGER: TStringField;
    FatGerFLGNFE: TStringField;
    FatGerCEPCLI_1: TStringField;
    FatGerBASSU1_1: TFloatField;
    FatGerTOTSU1_1: TFloatField;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsFatGerDataChange(Sender: TObject; Field: TField);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsFatGe2DataChange(Sender: TObject; Field: TField);
    procedure bEnviarClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure FatGe2NCMGE2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
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
    procedure grFatGe2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    CodEmp : integer;
    DteGer : TDateTime;
    NumGer : integer;
    {Private declarations}
  public
    {Public declarations}
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManGr1_NFE: TfmManGr1_NFE;
  sArqBackup: string;

implementation

uses dxDemoUtils, FileCtrl, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri,
     ManCn2_NFE, ManE02_NFE, PsqSt1, PsqSt2, PsqUnd;

{$R *.DFM}

procedure TfmManGr1_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select FatGer.CodEmp,'+
           '        FatGer.SitGer,'+
           '        FatGer.FlgNFE,'+
           '        FatGer.EnvNFE,'+
           '        FatGer.DteGer,'+
           '        FatGer.NumGer,'+
           '        FatGer.QtiGer,'+
           '        FatGer.UfeGer,'+
           '        FatGer.DteFat,'+
           '        FatGer.HreFat,'+
           '        FatGer.NfsCom,'+
           '        FatGer.SeqCom,'+
           '        FatGer.DteCom,'+
           '        FatGer.NroNfs,'+
           '        FatGer.CodPfa,'+
           '        FatGer.TipPfa,'+
           '        FatGer.CodCf1,'+
           '        FatGer.CodCf2,'+
           '        FatGer.CodCli,'+
           '        FatGer.FlgSai,'+
           '        FatGer.FlgEnt,'+
           '        FatGer.TipFrt,'+
           '        FatGer.EspGer,'+
           '        FatGer.MarGer,'+
           '        FatGer.IntFin,'+
           '        FatGer.DesNat,'+
           '        FatGer.InsSub,'+
           '        FatGer.CodTra,'+
           '        FatGer.NomTra,'+
           '        FatGer.CgcTra,'+
           '        FatGer.InsTra,'+
           '        FatGer.TenTra,'+
           '        FatGer.EndTra,'+
           '        FatGer.RefTra,'+
           '        FatGer.NumTra,'+
           '        FatGer.BaiTra,'+
           '        FatGer.CidTra,'+
           '        FatGer.UfeTra,'+
           '        FatGer.CepTra,'+
           '        FatGer.NroGer,'+
           '        FatGer.PlcTra,'+
           '        FatGer.UfePlc,'+
           '        FatGer.CefCli,'+
           '        FatGer.TefCli,'+
           '        FatGer.EnfCli,'+
           '        FatGer.RffCli,'+
           '        FatGer.NrfCli,'+
           '        FatGer.BafCli,'+
           '        FatGer.CifCli,'+
           '        FatGer.UffCli,'+
           '        FatGer.CepCli,'+
           '        FatGer.TenCli,'+
           '        FatGer.EndCli,'+
           '        FatGer.RefCli,'+
           '        FatGer.NumCli,'+
           '        FatGer.BaiCli,'+
           '        FatGer.CidCli,'+
           '        FatGer.UfeCli,'+
           '        FatGer.CepCli,'+
           '        FatGer.CgeCli,'+
           '        FatGer.IneCli,'+
           '        FatGer.InfLiq,'+
           '        FatGer.InfBrt,'+
           '        FatGer.AltVol,'+
           '        FatGer.LotNfe,'+
           '        FatGer.SeqNfe,'+
           '        FatGer.DteNfe,'+
           '        FatGer.RecNfe,'+
           '        FatGer.ProNfe,'+
           '        FatGer.DopNfe,'+
           '        FatGer.HreNfe,'+
           '        FatGer.UsuNfe,'+
           '        FatGer.DtePnf,'+
           '        FatGer.HrePnf,'+
           '        FatGer.ImpNfe,'+
           '        FatGer.RetNfe,'+
           '        FatGer.NfePis,'+
           '        FatGer.NfeCof,'+
           '        FatGer.FlgAtu,'+
           '        FatGer.Id_FinUff,'+
           '        FatGer.Id_FinCif,'+
           '        FatGer.Id_FinUfe,'+
           '        FatGer.Id_FinCie,'+
           '        FatGer.Id_TraUfe,'+
           '        FatGer.Id_TraCie,'+
           '        FatGer.TrbPis,'+
           '        FatGer.PerPis,'+
           '        FatGer.TrbCof,'+
           '        FatGer.PerCof,'+
           '        FatGer.TotIt1,'+
           '        FatGer.TotDsr,'+
           '        FatGer.TotFrt,'+
           '        FatGer.TotSeg,'+
           '        FatGer.TotDes,'+
           '        FatGer.TotIp1,'+
           '        FatGer.TotPis,'+
           '        FatGer.TotCof,'+
           '        FatGer.BasIc1,'+
           '        FatGer.TotIc1,'+
           '        FatGer.BasSu1,'+
           '        FatGer.TotSu1,'+
           '        FatGer.BasSu1,'+
           '        FatGer.TotSu1,'+
           '        FatGer.TotGe1,'+
           '        FatGer.Ob1Ger,'+
           '        FatGer.Ob2Ger,'+
           '        FatGer.Ob3Ger,'+
           '        FatGer.Ob4Ger,'+
           '        FatGer.Ob5Ger,'+
           '        FatGer.Ob6Ger,'+
           '        FatGer.Ob7Ger,'+
           '        FatGer.Ob8Ger,'+
           '        FatGer.ModPfa,'+
           '        FatGer.Id_EstSip,'+
           '        FinCli.NomCli,'+
           '        FinCli.Em1Cli '+
           ' From FatGer LEFT JOIN FinCli ON (FatGer.CodCli = FinCli.CodCli)';

  sFiltro := ' Where FatGer.SitGer = '+ Quotedstr('Faturado') +
             '   and FatGer.FlgNFE = '+ Quotedstr('Sim') +
             '   and FatGer.EnvNFE = '+ Quotedstr('Nao') ;

  sOrdem := ' Order by FatGer.NroNfs';

end;

procedure TfmManGr1_NFE.FormShow(Sender: TObject);
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

  with FatGer,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  CountRegistros;

  EdPsqNroNfs.SetFocus;

end;

procedure TfmManGr1_NFE.DsFatGerDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  Label3.Caption := Trim(FatGerRETNFE.Value);
  Label4.Caption := Trim(FatGerEM1CLI.Value);

  if FatGerCodCli.Value > 0 then
     pnCodCli.Caption := IntToStr(FatGerCodCli.Value)
  else
     pnCodCli.Caption := '';

end;

procedure TfmManGr1_NFE.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManGr1_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManGr1_NFE := Nil;
end;

procedure TfmManGr1_NFE.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManGr1_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManGr1_NFE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if pnalterar.Visible then begin

        if FatGe2.State <> dsBrowse then FatGe2.CancelUpdates;

        batualizar.Enabled := True;

        benviar.Enabled := True;

        pnalterar.Visible := False;

        grFatGe2.SetFocus;

        end
     else
        close;

  end;
end;

procedure TfmManGr1_NFE.DsFatGe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if Trim(FatGe2ObsGe2.Value) <> '' then
     pnDesGe2.Caption := ' '+FatGe2DesGe2.Value+' '+FatGe2ObsGe2.Value
  else
     pnDesGe2.Caption := ' '+FatGe2DesGe2.Value;

  pnCodIte.Caption := Trim(FatGe2CodIte.Value);
  pnQtdIte.Caption := FormatFloat('###,###,##0.0000',FatGe2QtpGe2.Value);
  pnVlqIte.Caption := FormatFloat('###,###,##0.0000',FatGe2VluGe2.Value);
  pnTotIte.Caption := FormatFloat('###,###,##0.00',FatGe2TotIte.Value);
  pnIcmIte.Caption := FormatFloat('##0',FatGe2IcmGe2.Value);
  pnIpiIte.Caption := FormatFloat('##0',FatGe2IpiGe2.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00',FatGe2TotIpi.Value);

end;

procedure TfmManGr1_NFE.bEnviarClick(Sender: TObject);
var
  SeqEnc      : integer;
  LinArq      : string;
  LinPro      : string;
  DscPro      : string;
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
  NroDoc      : string;
  TrbIpi      : string;
  BasIpi      : string;
  PerIpi      : string;
  TotIpi      : string;
  TotDsr      : string;
  BasSub      : string;
  IcmSub      : string;
  MrgSub      : string;
  TotSub      : string;
  DteCom      : string;
  SeqCom      : string;
  NfePis      : string;
  NfeCof      : string;
  TotFrt      : string;
  TotSeg      : string;
  TotDes      : string;
  TipFrt      : string;
  ObsFat      : string;
  TipCnd      : string;
  TipNot      : string;
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
  Finalidade  : string;
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
  if FatGerCodEmp.Value > 0 then begin

     CodEmp := FatGerCodEmp.Value;
     DteGer := FatGerDteGer.Value;
     NumGer := FatGerNumGer.Value;

     with FatGer,SQL do begin

          Close;
          Text := sBase + ' Where FatGer.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                          '   and FatGer.DteGer = '+ QuotedStr(fDateToSQL(DteGer)) +
                          '   and FatGer.NumGer = '+ QuotedStr(IntToStr(NumGer)) ;
          Open;

     end;

     CountRegistros;

     if FatGerCodEmp.Value > 0 then begin

        if fMsg('Confirma envio para emissão da NFe ?','O') then begin

           Nome_ArqIni := ExtractFilePath(Application.ExeName)+'config.ini';

           if FileExists(Nome_ArqIni) then begin

              Finalizar := 'N';

              try

                 fmManCn2_NFE := TfmManCn2_NFE.Create(Self);

                 fmManCn2_NFE.ShowModal;

                 Finalizar := fmManCn2_NFE.Finalizar;

              finally

                 FreeAndNil(fmManCn2_NFE);

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
                              ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(FatGerCodEmp.Value));
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

                          NfePis := fLimpaStr(Trim(FatGerNfePis.Value));
                          NfeCof := fLimpaStr(Trim(FatGerNfeCof.Value));

                          if FatGerId_EstSip.Value > 0 then begin

                             with quSQL,SQL do begin

                                  Close;
                                  Text := ' Select EstSip.SigNfe'+
                                          ' From EstSip'+
                                          ' Where EstSip.Id_EstSip = '+ QuotedStr(IntToStr(FatGerId_EstSip.Value));
                                  Open;

                                  Id_EstSip := FieldbyName('SigNfe').AsString;

                             end;

                             end
                          else
                             begin

                             if Trim(FatGerTipPfa.Value) = 'Saida' then begin

                                if FatGerTotIp1.Value > 0 then
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
                                       ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(FatGerCodCli.Value));
                               Open;

                               NomCli := fLimpaAcentos(FieldbyName('NomCli').AsString);
                               NroSuf := fLimpaAcentos(fLimpaStr(FieldbyName('NroSuf').AsString));

                               EmaCli := Trim(FieldbyName('Em1Cli').AsString);

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

                             Id_CliUfe := FatGerId_FinUff.Value;
                             Id_CliCie := FatGerId_FinCif.Value;

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

                             if Trim(FatGerSeqNFe.Value) = '' then begin

                                FatGer.Edit;

                                FatGerFlgAtu.Value := 'F';
                                FatGerSeqNFe.Value := fMontaChaveAcessoNFe(Id_EmpUfe,FatGerDteFat.Value,CgcEmp,55,1,FatGerNroNfs.Value,1);

                                with FatGer do begin

                                     fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                     try

                                        ApplyUpdates; {Tenta aplicar as alterações};

                                        fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                     except

                                        fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                        if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

                                        FatGer.Close;
                                        FatGer.Open;

                                        grFatGer.SetFocus;

                                        raise;

                                     end;

                                     CommitUpdates; {sucesso!, limpa o cache...}

                                end;

                                FatGer.Close;
                                FatGer.Open;

                             end;

                             if not directoryExists('C:\EMERION\NFE') then CreateDir('C:\EMERION\NFE');

                             if not directoryExists('C:\EMERION\REQ') then CreateDir('C:\EMERION\REQ');

                             if not directoryExists('C:\EMERION\RESP') then CreateDir('C:\EMERION\RESP');

                             if not directoryExists('C:\EMERION\BACKUP\NFE') then CreateDir('C:\EMERION\BACKUP\NFE');

                             Application.ProcessMessages;

                             fmManPri.Enabled := False;

                             fmManGr1_NFE.Enabled := False;

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
                                            FatGerSeqNFe.Value);

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

                                         if pos(FatGerSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

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

                                   if Trim(FatGerRecNFe.Value) = '' then begin

                                      pnMensag.Caption := 'Aguarde. Enviando informações da nota.';

                                      DeleteFile(ArqRe1);
                                      DeleteFile(ArqRe2);
                                      DeleteFile(ArqRs1);
                                      DeleteFile(ArqRs2);

                                      AssignFile(ArqEnv,ArqRe1);

                                      Rewrite(ArqEnv);

                                      Writeln(ArqEnv,'EM0201' +
                                                     UfeEmp +
                                                     FatGerSeqNFe.Value +
                                                     fNumZeros(IntToStr(FatGerLotNfe.Value),9));

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

                                      DesNat := copy(Trim(FatGerDesNat.Value),1,60) + fReplicate(' ',60 - Length(copy(Trim(FatGerDesNat.Value),1,60)));

                                      TipCnd := '0';

                                      if FatGerIntFin.Value = 'Nao' then
                                         TipCnd := '2'
                                      else
                                         begin

                                         with quSQL,SQL do begin

                                              Close;
                                              Text := ' Select Sum(FatGe3.PraGe3) as QtdReg'+
                                                      ' From FatGe3'+
                                                      ' Where FatGe3.CodEmp = '+ QuotedStr(IntToStr(FatGerCodEmp.Value)) +
                                                      '   and FatGe3.DteGer = '+ QuotedStr(fDateToSQL(FatGerDteGer.Value)) +
                                                      '   and FatGe3.NumGer = '+ QuotedStr(IntToStr(FatGerNumGer.Value)) ;
                                              Open;

                                              if FieldbyName('QtdReg').AsInteger > 0 then TipCnd := '1';

                                         end;
                                      end;

                                      Finalidade := '1';

//                                    if Trim(FatGerModPfa.Value) = 'Complemento' then Finalidade := '2';

                                      if Trim(FatGerTipPfa.Value) = 'Saida' then
                                         TipNot := '1'
                                      else
                                         TipNot := '0';

                                      Writeln(ArqEnv,'EM0202'+                                                        // Uso interno do sistema
                                                     IntToStr(Id_EmpUfe)+                                             // Código da UF do emitente do documento fiscal
                                                     copy(FatGerSeqNFE.Value,35,09)+                                  // Código númerico que compõe a chave de acesso
                                                     DesNat+                                                          // Descrição da natureza de operação
                                                     TipCnd+                                                          // Indicador da forma de pagamento 0-Pagamento à vista 1-Pagamento à prazo 2-Outros
                                                     '55'+                                                            // Código do Modelo do documento fiscal
                                                     '1'+                                                             // Série do documento fiscal
                                                     fNumZeros(IntToStr(FatGerNroNfs.Value),9)+                       // Número do documento fiscal
                                                     copy(FormatDateTime('dd/mm/yyyy',FatGerDteFat.Value),7,4) +'-'+  // Data de emissão do documento fiscal
                                                     copy(FormatDateTime('dd/mm/yyyy',FatGerDteFat.Value),4,2) +'-'+
                                                     copy(FormatDateTime('dd/mm/yyyy',FatGerDteFat.Value),1,2) +
                                                     '0000-00-00'+                                                    // Data de saida ou entrada da Mercadoria/Produto
                                                     TipNot+                                                          // Tipo do documento fiscal
                                                     Id_EmpCie+                                                       // Código do Municipio de Ocorrência do Fato Gerador
                                                     '1'+                                                             // Formato de Impressao do DANFE
                                                     '1'+                                                             // Forma de emissão da NF-e
                                                     copy(FatGerSeqNFE.Value,44,1)+                                   // Digito verificador da Chave de Acesso da NF-e
                                                     '1'+                                                             // Identificação do Ambiente
                                                     Finalidade+                                                      // Finalidade de emissão da NF-e
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
                                                     NomPais_Emp+                                                     // Brasil ou BRASIL
                                                     FonEmp+                                                          // Telefone
                                                     InsEmp+                                                          // IE
                                                     InsSub+                                                          // IE do Substituto tributário
                                                     '               '+                                               // IM inscrição municipal
                                                     '       ');                                                      // CNAE Fiscal

                                      if FatGerTefCli.Value <> '' then
                                         EndCli := Trim(FatGerTefCli.Value)+ ' ' +FatGerEnfCli.Value
                                      else
                                         EndCli := FatGerEnfCli.Value;

                                      EndCli := fLimpaAcentos(EndCli);

                                      NumCli := fLimpaAcentos(FatGerNrfCli.Value);
                                      RefCli := fLimpaAcentos(FatGerRffCli.Value);
                                      BaiCli := fLimpaAcentos(FatGerBafCli.Value);
                                      UfeCli := fLimpaAcentos(FatGerUfeCli.Value);

                                      CepCli := FatGerCefCli.Value;

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
                                                     NomPais_Cli+                                                    // Brasil ou BRASIL
                                                     FonCli+                                                         // Telefone
                                                     InsCli+                                                         // IE
                                                     NroSuf);                                                        // Inscrição SUFRAMA

                                      if (Trim(FatGerCepCli.Value) <> Trim(FatGerCefCli.Value)) or
                                         (Trim(FatGerTenCli.Value) <> Trim(FatGerTefCli.Value)) or
                                         (Trim(FatGerEndCli.Value) <> Trim(FatGerEnfCli.Value)) or
                                         (Trim(FatGerRefCli.Value) <> Trim(FatGerRffCli.Value)) or
                                         (Trim(FatGerNumCli.Value) <> Trim(FatGerNrfCli.Value)) or
                                         (Trim(FatGerBaiCli.Value) <> Trim(FatGerBafCli.Value)) or
                                         (Trim(FatGerCidCli.Value) <> Trim(FatGerCifCli.Value)) or
                                         (Trim(FatGerUfeCli.Value) <> Trim(FatGerUffCli.Value)) then begin

                                         if Trim(FatGerCgeCli.Value) <> '' then
                                            CgcCli := copy(Trim(FatGerCgeCli.Value),1,14) + fReplicate(' ',14 - Length(copy(Trim(FatGerCgeCli.Value),1,14)));

                                         if FatGerTenCli.Value <> '' then
                                            EndCli := Trim(FatGerTenCli.Value)+ ' ' +FatGerEndCli.Value
                                         else
                                            EndCli := FatGerEndCli.Value;

                                         EndCli := fLimpaAcentos(EndCli);

                                         NumCli := fLimpaAcentos(FatGerNumCli.Value);
                                         RefCli := fLimpaAcentos(FatGerRefCli.Value);
                                         BaiCli := fLimpaAcentos(FatGerBaiCli.Value);
                                         UfeCli := fLimpaAcentos(FatGerUfeCli.Value);

                                         EndCli := copy(Trim(EndCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndCli),1,60)));
                                         NumCli := copy(Trim(NumCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumCli),1,60)));
                                         RefCli := copy(Trim(RefCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefCli),1,60)));
                                         BaiCli := copy(Trim(BaiCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiCli),1,60)));
                                         UfeCli := copy(Trim(UfeCli),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeCli),1,02)));

                                         CepCli := fReplicate('0',08 - Length(copy(Trim(CepCli),1,08))) + copy(Trim(CepCli),1,08);

                                         Id_FinUfe := FatGerId_FinUfe.Value;
                                         Id_FinCie := FatGerId_FinCie.Value;

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

                                      TrbPis := Trim(FatGerTrbPis.Value);
                                      TrbCof := Trim(FatGerTrbCof.Value);

                                      TrbPis := copy(Trim(TrbPis),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbPis),1,03)));
                                      TrbCof := copy(Trim(TrbCof),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbCof),1,03)));

                                      PerPis := fSubstDecimal(FormatFloat('##0.00',FatGerPerPis.Value),05);
                                      PerCof := fSubstDecimal(FormatFloat('##0.00',FatGerPerCof.Value),05);

                                      with quSQL,SQL do begin

                                           Close;
                                           Text := ' Select FatGe2.NroGe2,'+
                                                   '        FatGe2.CodClp,'+
                                                   '        FatGe2.CodGru,'+
                                                   '        FatGe2.CodSub,'+
                                                   '        FatGe2.CodPro,'+
                                                   '        FatGe2.DesGe2,'+
                                                   '        FatGe2.ObsGe2,'+
                                                   '        FatGe2.ClsIpi,'+
                                                   '        FatGe2.CodCfo,'+
                                                   '        FatGe2.CodSt1,'+
                                                   '        FatGe2.CodSt2,'+
                                                   '        FatGe2.CodUnd,'+
                                                   '        FatGe2.QtpGe2,'+
                                                   '        FatGe2.VluGe2,'+
                                                   '        FatGe2.TotGe2,'+
                                                   '        FatGe2.IcmGe2,'+
                                                   '        FatGe2.BscIcm,'+
                                                   '        FatGe2.RedIcm,'+
                                                   '        FatGe2.BasIcm,'+
                                                   '        FatGe2.TotIcm,'+
                                                   '        FatGe2.IpiGe2,'+
                                                   '        FatGe2.TrbIpi,'+
                                                   '        FatGe2.BscIpi,'+
                                                   '        FatGe2.RedIpi,'+
                                                   '        FatGe2.BasIpi,'+
                                                   '        FatGe2.TotIpi,'+
                                                   '        FatGe2.IcmSub,'+
                                                   '        FatGe2.MrgSub,'+
                                                   '        FatGe2.BaseSb,'+
                                                   '        FatGe2.BasSub,'+
                                                   '        FatGe2.TotSub,'+
                                                   '        FatGe2.TotDsr,'+
                                                   '        FatGe2.TotFrt,'+
                                                   '        FatGe2.TotSeg,'+
                                                   '        FatGe2.TotDes,'+
                                                   '        FatGe2.TotPis,'+
                                                   '        FatGe2.TotCof '+
                                                   ' From FatGe2'+
                                                   ' Where FatGe2.CodEmp = '+ QuotedStr(IntToStr(FatGerCodEmp.Value)) +
                                                   '   and FatGe2.DteGer = '+ QuotedStr(fDateToSQL(FatGerDteGer.Value)) +
                                                   '   and FatGe2.NumGer = '+ QuotedStr(IntToStr(FatGerNumGer.Value)) +
                                                   ' Order by FatGe2.NroGe2';
                                           Open;
                                           First;

                                      end;

                                      while not quSQL.EOF do begin

                                            CodPro := quSQL.FieldbyName('CodClp').AsString+
                                                      quSQL.FieldbyName('CodGru').AsString+
                                                      quSQL.FieldbyName('CodSub').AsString+
                                                      quSQL.FieldbyName('CodPro').AsString;

                                            if Trim(CodPro) = '8888888888888' then CodPro := 'CFOP'+fLimpaStr(quSQL.FieldbyName('CodCfo').AsString);
                                            if Trim(CodPro) = '9999999999999' then CodPro := 'CFOP'+fLimpaStr(quSQL.FieldbyName('CodCfo').AsString);

                                            DesPro := Trim(quSQL.FieldbyName('DesGe2').AsString)+ ' ' +Trim(quSQL.FieldbyName('ObsGe2').AsString);

                                            DesPro := AllTrim(fLimpaAcentos(copy(DesPro,1,120)));

                                            ClsIpi := Trim(fLimpaStr(quSQL.FieldbyName('ClsIpi').AsString));
                                            CodCfo := Trim(fLimpaStr(quSQL.FieldbyName('CodCfo').AsString));

                                            CodUnd := Trim(quSQL.FieldbyName('CodUnd').AsString);
                                            CodSt1 := Trim(quSQL.FieldbyName('CodSt1').AsString);
                                            CodSt2 := Trim(quSQL.FieldbyName('CodSt2').AsString);
                                            TrbIpi := Trim(quSQL.FieldbyName('TrbIpi').AsString);

                                            QtdPro := fSubstDecimal(FormatFloat('########0.0000',quSQL.FieldbyName('QtpGe2').AsFloat),15);
                                            VluPro := fSubstDecimal(FormatFloat('########0.0000',quSQL.FieldbyName('VluGe2').AsFloat),15);

                                            TotPro := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotGe2').AsFloat),15);
                                            BasIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasIcm').AsFloat),15);
                                            RedIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('RedIcm').AsFloat),15);
                                            PerIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IcmGe2').AsFloat),05);
                                            TotIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIcm').AsFloat),15);
                                            BasIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasIpi').AsFloat),15);
                                            PerIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IpiGe2').AsFloat),05);
                                            TotIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIpi').AsFloat),15);
                                            MrgSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('MrgSub').AsFloat),05);
                                            IcmSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IcmSub').AsFloat),05);
                                            BasSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasSub').AsFloat),15);
                                            TotSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotSub').AsFloat),15);

                                            TotDsr := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotDsr').AsFloat),15);
                                            TotFrt := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotFrt').AsFloat),15);
                                            TotSeg := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotSeg').AsFloat),15);
                                            TotDes := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotDes').AsFloat),15);

                                            BasPis := fSubstDecimal(FormatFloat('########0.00',(quSQL.FieldbyName('TotGe2').AsFloat - quSQL.FieldbyName('TotDsr').AsFloat)),15);
                                            BasCof := fSubstDecimal(FormatFloat('########0.00',(quSQL.FieldbyName('TotGe2').AsFloat - quSQL.FieldbyName('TotDsr').AsFloat)),15);

                                            TotPis := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotPis').AsFloat),15);
                                            TotCof := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotCof').AsFloat),15);

                                            TipNCM := '';

                                            if Trim(FatGerModPfa.Value) = 'Complemento' then CodUnd := 'R$';

                                            CodPro := copy(Trim(CodPro),1,60) + fReplicate(' ',60 - Length(copy(Trim(CodPro),1,60)));
                                            CodCfo := copy(Trim(CodCfo),1,04) + fReplicate(' ',04 - Length(copy(Trim(CodCfo),1,04)));
                                            CodUnd := copy(Trim(CodUnd),1,06) + fReplicate(' ',06 - Length(copy(Trim(CodUnd),1,06)));
                                            TrbIpi := copy(Trim(TrbIpi),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbIpi),1,03)));
                                            ClsIpi := copy(Trim(ClsIpi),1,08) + fReplicate(' ',08 - Length(copy(Trim(ClsIpi),1,08)));

                                            CodSt1 := fReplicate('0',01 - Length(copy(Trim(CodSt1),1,01))) + copy(Trim(CodSt1),1,01);
                                            CodSt2 := fReplicate('0',02 - Length(copy(Trim(CodSt2),1,02))) + copy(Trim(CodSt2),1,02);

                                            DesPro := copy(Trim(DesPro),1,120) + fReplicate(' ',120 - Length(copy(Trim(DesPro),1,120)));
                                      
                                            Writeln(ArqEnv,'EM0206'+                                                     // Uso interno do sistema
                                                           '00'+                                                         // Tipo de operação
                                                           fNumZeros(IntToStr(quSQL.FieldbyName('NroGe2').AsInteger),3)+ // Nro. do item
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

                                            if Trim(FatGerModPfa.Value) = 'Complemento' then begin

                                               BasIcm := fSubstDecimal(FormatFloat('########0.00',FatGerBasIc1.Value),15);
                                               TotIcm := fSubstDecimal(FormatFloat('########0.00',FatGerTotIc1.Value),15);
                                               BasSub := fSubstDecimal(FormatFloat('########0.00',FatGerBasSu1.Value),15);
                                               TotSub := fSubstDecimal(FormatFloat('########0.00',FatGerTotSu1.Value),15);

                                               Writeln(ArqEnv,'EM0207'+                                                     // Uso interno do sistema
                                                              '01'+                                                         // Tipo de operação
                                                              fNumZeros(IntToStr(quSQL.FieldbyName('NroGe2').AsInteger),3)+ // Nro. do item
                                                              '0'+                                                          // Origem da mercadoria
                                                              '90'+                                                         // Grupo de CST
                                                              '3'+                                                          // Modalidade de determinação da BC do ICMS ST
                                                              '           0.00'+                                            // Percential de redução de BC do ICMS
                                                              BasIcm+                                                       // Valor da BC do ICMS
                                                              ' 0.00'+                                                      // Aliquota do imposto
                                                              TotIcm+                                                       // Valor do ICMS
                                                              BasSub+                                                       // Valor da BC do ICMS ST
                                                              ' 0.00'+                                                      // Aliquota do imposto do ICMS ST
                                                              ' 0.00'+                                                      // Percentual da Margem de valor Adicionado do ICMS ST
                                                              TotSub);                                                      // Valor do ICMS ST

                                               end
                                            else
                                               Writeln(ArqEnv,'EM0207'+                                                     // Uso interno do sistema
                                                              '01'+                                                         // Tipo de operação
                                                              fNumZeros(IntToStr(quSQL.FieldbyName('NroGe2').AsInteger),3)+ // Nro. do item
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

                                            if Trim(FatGerModPfa.Value) = 'Complemento' then begin

                                               if FatGerTotIp1.Value > 0 then TrbIpi := 'Sim';

                                               TotIpi := fSubstDecimal(FormatFloat('########0.00',FatGerTotIp1.Value),15);

                                               Writeln(ArqEnv,'EM0208'+                                                     // Uso interno do sistema
                                                              '01'+                                                         // Tipo de operação
                                                              fNumZeros(IntToStr(quSQL.FieldbyName('NroGe2').AsInteger),3)+ // Nro. do item
                                                              TrbIpi+                                                       // IPI tributado
                                                              '           0.00'+                                            // Valor da BC do IPI
                                                              ' 0.00'+                                                      // Aliquota do imposto
                                                              TotIpi+                                                       // Valor do IPI
                                                              Id_EstSip);                                                   // Situação tributária do IPI

                                               end
                                            else
                                               Writeln(ArqEnv,'EM0208'+                                                     // Uso interno do sistema
                                                              '01'+                                                         // Tipo de operação
                                                              fNumZeros(IntToStr(quSQL.FieldbyName('NroGe2').AsInteger),3)+ // Nro. do item
                                                              TrbIpi+                                                       // IPI tributado
                                                              BasIpi+                                                       // Valor da BC do IPI
                                                              PerIpi+                                                       // Aliquota do imposto
                                                              TotIpi+                                                       // Valor do IPI
                                                              Id_EstSip);                                                   // Situação tributária do IPI

                                            Writeln(ArqEnv,'EM0209'+                                                     // Uso interno do sistema
                                                           '01'+                                                         // Tipo de operação
                                                           fNumZeros(IntToStr(quSQL.FieldbyName('NroGe2').AsInteger),3)+ // Nro. do item
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
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerBasIc1.Value),15)+  // Base de Calculo do ICMS
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerTotIc1.Value),15)+  // Valor Total do ICMS
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerBasSu1.Value),15)+  // Base de Calculo do ICMS ST
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerTotSu1.Value),15)+  // Valor Total do ICMS ST
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerTotIt1.Value),15)+  // Valor Total dos produtos e serviços
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerTotFrt.Value),15)+  // Valor Total do Frete
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerTotSeg.Value),15)+  // Valor Total do Seguro
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerTotDsr.Value),15)+  // Valor Total do Desconto
                                                     '           0.00'+                                                 // Valor Total do II
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerTotIp1.Value),15)+  // Valor Total do IPI
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerTotPis.Value),15)+  // Valor Total do PIS
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerTotCof.Value),15)+  // Valor Total do COFINS
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerTotDes.Value),15)+  // Outras Despesas Acessórias
                                                     fSubstDecimal(FormatFloat('########0.00',FatGerTotGe1.Value),15)); // Valor Total da NFe

                                      if FatGerTipFrt.Value = '2' then
                                         TipFrt := '1'
                                      else
                                         TipFrt := '0';

                                      if Length(Trim(FatGerCgcTra.Value)) = 11 then
                                         CpfTra := FatGerCgcTra.Value
                                      else
                                         CgcTra := FatGerCgcTra.Value;

                                      Id_FinUfe := FatGerId_TraUfe.Value;
                                      Id_FinCie := FatGerId_TraCie.Value;

                                      InsTra := fLimpaStr(FatGerInsTra.Value);

                                      NomTra := fLimpaAcentos(FatGerNomTra.Value);

                                      if Trim(FatGerTenTra.Value) <> '' then
                                         EndTra := Trim(FatGerTenTra.Value)+ ' ' +FatGerEndTra.Value
                                      else
                                         EndTra := FatGerEndTra.Value;

                                      EndTra := fLimpaAcentos(EndTra);

                                      NumTra := fLimpaAcentos(FatGerNumTra.Value);
                                      RefTra := fLimpaAcentos(FatGerRefTra.Value);
                                      BaiTra := fLimpaAcentos(FatGerBaiTra.Value);
                                      UfeTra := fLimpaAcentos(FatGerUfeTra.Value);

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

                                      PesLiq := fSubstDecimal(FormatFloat('########0.000',FatGerInfLiq.Value),15);
                                      PesBrt := fSubstDecimal(FormatFloat('########0.000',FatGerInfBrt.Value),15);

                                      EspFat := fLimpaAcentos(FatGerEspGer.Value);
                                      MarFat := fLimpaAcentos(FatGerMarGer.Value);

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
                                                     fNumZeros(IntToStr(FatGerAltVol.Value),15)+ // Quantidade de volumes
                                                     MarFat+                                     // Especie dos volumes transportados
                                                     EspFat+                                     // Marca dos volumes transportados
                                                     PesLiq+                                     // Peso Liquido (em Kg)
                                                     PesBrt);                                    // Peso Bruto (em Kg)

                                      if FatGerIntFin.Value = 'Sim' then begin

                                         NroDoc := fSubstDecimal(IntToStr(FatGerNroNfs.Value),60);

                                         Writeln(ArqEnv,'EM0212'+                                                          // Uso interno do sistema
                                                        NroDoc+                                                            // Número da fatura
                                                        fSubstDecimal(FormatFloat('########0.00',FatGerTotGe1.Value),15)+  // Valor Original
                                                        '           0.00'+                                                 // Valor do desconto
                                                        fSubstDecimal(FormatFloat('########0.00',FatGerTotGe1.Value),15)); // Valor Original

                                         with quSQL,SQL do begin

                                              Close;
                                              Text := ' Select FatGe3.NroGe3,'+
                                                      '        FatGe3.DtvGe3,'+
                                                      '        FatGe3.VlpGe3 '+
                                                      ' From FatGe3'+
                                                      ' Where FatGe3.CodEmp = '+ QuotedStr(IntToStr(FatGerCodEmp.Value)) +
                                                      '   and FatGe3.DteGer = '+ QuotedStr(fDateToSQL(FatGerDteGer.Value)) +
                                                      '   and FatGe3.NumGer = '+ QuotedStr(IntToStr(FatGerNumGer.Value)) +
                                                      ' Order by FatGe3.NroGe3';
                                              Open;
                                              First;

                                         end;

                                         while not quSQL.EOF do begin

                                               NroDoc := IntToStr(FatGerNroNfs.Value)+'-'+fNumZeros(IntToStr(quSQL.FieldbyName('NroGe3').AsInteger),2);

                                               NroDoc := copy(Trim(NroDoc),1,60) + fReplicate(' ',60 - Length(copy(Trim(NroDoc),1,60)));

                                               Writeln(ArqEnv,'EM0213'+                                                                           // Uso interno do sistema
                                                              NroDoc+                                                                             // Número da fatura
                                                              copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvGe3').AsDateTime),7,4) +'-'+ // Data de vencimento
                                                              copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvGe3').AsDateTime),4,2) +'-'+
                                                              copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvGe3').AsDateTime),1,2) +
                                                              fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('VlpGe3').AsFloat),15)); // Valor da duplicata

                                               Application.ProcessMessages;

                                               quSQL.Next;

                                         end;
                                      end;

                                      ObsFat := '';

                                      if Trim(fLimpaAcentos(FatGerOb1Ger.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatGerOb1Ger.Value));

                                      if Trim(fLimpaAcentos(FatGerOb2Ger.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatGerOb2Ger.Value));

                                      if Trim(fLimpaAcentos(FatGerOb3Ger.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatGerOb3Ger.Value));

                                      if Trim(fLimpaAcentos(FatGerOb4Ger.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatGerOb4Ger.Value));

                                      if Trim(fLimpaAcentos(FatGerOb5Ger.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatGerOb5Ger.Value));

                                      if Trim(fLimpaAcentos(FatGerOb6Ger.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatGerOb6Ger.Value));

                                      if Trim(fLimpaAcentos(FatGerOb7Ger.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatGerOb7Ger.Value));

                                      if Trim(fLimpaAcentos(FatGerOb8Ger.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatGerOb8Ger.Value));

                                      ObsFat := copy(ObsFat,1,256);

                                      ObsFat := copy(Trim(ObsFat),1,256) + fReplicate(' ',256 - Length(copy(Trim(ObsFat),1,256)));

                                      Writeln(ArqEnv,'EM0214'+ // Uso interno do sistema
                                                     ObsFat);  // Informações adicionais de interesse do Fisco

                                      if 1=2 then begin
                                      if Trim(FatGerModPfa.Value) = 'Complemento' then begin

                                         if FatGerDteCom.Value > 0 then
                                            DteCom := copy(FormatDateTime('dd/mm/yyyy',FatGerDteCom.Value),9,2) +
                                                      copy(FormatDateTime('dd/mm/yyyy',FatGerDteCom.Value),4,2)
                                         else
                                            DteCom := '0000';

                                         SeqCom := fLimpaAcentos(fLimpaStr(FatGerSeqCom.Value));

                                         SeqCom := Trim(SeqCom) + fReplicate(' ',44 - Length(Trim(SeqCom)));

                                         Writeln(ArqEnv,'EM0215'+ // Uso interno do sistema
                                                         IntToStr(Id_EmpUfe)+
                                                         DteCom +                                                     // Data de emissão do documento fiscal
                                                         CgcEmp+                                                      // CNPJ do emitente
                                                         '01'+                                                        // Modelo
                                                         '0'+                                                         // Serie
                                                         fNumZeros(IntToStr(FatGerNfsCom.Value),9)+                   // Número do documento fiscal
                                                         SeqCom);

                                      end;
                                      end;

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

                                                  if pos(FatGerSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

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

                                            FatGer.Edit;

                                            FatGerFlgAtu.Value := 'F';
                                            FatGerRETNFE.Value := copy(Trim(MSGNFE),1,100);

                                            with FatGer do begin

                                                 fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                 try

                                                    ApplyUpdates; {Tenta aplicar as alterações};

                                                    fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                 except

                                                    fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                    if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

                                                    FatGer.Close;
                                                    FatGer.Open;

                                                    grFatGer.SetFocus;

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

                                               FatGer.Edit;

                                               FatGerFlgAtu.Value := 'F';
                                               FatGerHreNFe.Value := HRENFE;
                                               FatGerUsuNFe.Value := GUsu_Id;
                                               FatGerRecNFe.Value := Trim(RECNFE);
                                               FatGerDteNFe.Value := StrToDate(DTENFE);

                                               with FatGer do begin

                                                    fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                    try

                                                       ApplyUpdates; {Tenta aplicar as alterações};

                                                       fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                    except

                                                       fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                       if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

                                                       FatGer.Close;
                                                       FatGer.Open;

                                                       grFatGer.SetFocus;

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

                                            fmManGr1_NFE.Enabled := True;

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

                                   fmManGr1_NFE.Enabled := True;

                                   pnMensag.Visible := False;

                                   fmsgErro(MSGNFE,Nil);

                                end;
                             end;

                             if Trim(FatGerRecNFe.Value) <> '' then begin

                                RecNFE := copy(Trim(FatGerRecNFe.Value),1,15) + fReplicate(' ',15 - Length(copy(Trim(FatGerRecNFe.Value),1,15)));

                                pnMensag.Caption := 'Aguarde. Consultando protocolo.';

                                DeleteFile(ArqRe1);
                                DeleteFile(ArqRe2);
                                DeleteFile(ArqRs1);
                                DeleteFile(ArqRs2);

                                AssignFile(ArqEnv,ArqRe1);

                                Rewrite(ArqEnv);

                                Writeln(ArqEnv,'EM03' +
                                               UfeEmp +
                                               FatGerSeqNFe.Value +
                                               RecNFE +
                                               'Sim' +
                                               fNumZeros(IntToStr(FatGerLotNfe.Value),9)+
                                               fNumZeros(IntToStr(FatGerNroNfs.Value),9)+
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

                                            if pos(FatGerSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

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

                                      FatGer.Edit;

                                      FatGerFlgAtu.Value := 'F';
                                      FatGerRETNFe.Value := copy(Trim(MSGNFE),1,100);

                                      with FatGer do begin

                                           fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                           try

                                              ApplyUpdates; {Tenta aplicar as alterações};

                                              fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                           except

                                              fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                              if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

                                              FatGer.Close;
                                              FatGer.Open;

                                              grFatGer.SetFocus;

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

                                         FatGer.Edit;

                                         FatGerFlgAtu.Value := 'F';
                                         FatGerRETNFe.Value := copy(Trim(MSGNFE),1,100);

                                         with FatGer do begin

                                              fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                              try

                                                 ApplyUpdates; {Tenta aplicar as alterações};

                                                 fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                              except

                                                 fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                 if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

                                                 FatGer.Close;
                                                 FatGer.Open;

                                                 grFatGer.SetFocus;

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

                                            FatGer.Edit;

                                            FatGerFlgAtu.Value := 'F';
                                            FatGerEnvNFe.Value := 'Sim';
                                            FatGerProNFe.Value := Trim(PRONFE);
                                            FatGerDtePNF.Value := StrToDate(DTEPNF);
                                            FatGerHrePNF.Value := HREPNF;

                                            with FatGer do begin

                                                 fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                 try

                                                    ApplyUpdates; {Tenta aplicar as alterações};

                                                    fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                 except

                                                    fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                    if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

                                                    FatGer.Close;
                                                    FatGer.Open;

                                                    grFatGer.SetFocus;

                                                    raise;

                                                 end;

                                                 CommitUpdates; {sucesso!, limpa o cache...}

                                            end;

                                            FatGer.Close;
                                            FatGer.Open;
                                      
                                            if DirectoryExists(sArqBackup) then begin

                                               NomArq := sArqBackup +'/processadas/'+ FatGerRecNFe.Value +'_v1.10-procNFe.xml';

                                               FatArq.Close;
                                               FatArq.Params[0].AsInteger  := FatGerCodEmp.Value;
                                               FatArq.Params[1].AsDateTime := FatGerDteGer.Value;
                                               FatArq.Params[2].AsInteger  := FatGerNumGer.Value;
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

                                                       if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

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

                                            if FatGerEnvNfe.Value = 'Sim' then begin

                                               if fMsg('Confirma impressão da DANFE ?','O') then begin

                                                  GEmail := FatGerEm1Cli.Value;

                                                  sNumeroNF := copy(fNumZeros(IntToStr(FatGerNroNfs.Value),9),1,3)+ '.' +
                                                               copy(fNumZeros(IntToStr(FatGerNroNfs.Value),9),4,3)+ '.' +
                                                               copy(fNumZeros(IntToStr(FatGerNroNfs.Value),9),7,3);

                                                  GAssunto := 'NF-e: '+ sNumeroNF + ' ' + UpperCase(Trim(NomEmp));

                                                  with quSQL,SQL do begin

                                                       Close;
                                                       Text := ' Delete From FatNfe'+
                                                               ' Where FatNfe.Out_CodEmp = '+ QuotedStr(IntToStr(FatGerCodEmp.Value)) +
                                                               '   and FatNfe.Out_DteGer = '+ QuotedStr(fDateToSQL(FatGerDteGer.Value)) +
                                                               '   and FatNfe.Out_NumGer = '+ QuotedStr(IntToStr(FatGerNumGer.Value)) ;
                                                       ExecSQL;

                                                  end;

                                                  with quSQL,SQL do begin

                                                       Close;
                                                       Text := ' Select FatGe2.CodClp,'+
                                                               '        FatGe2.CodGru,'+
                                                               '        FatGe2.CodSub,'+
                                                               '        FatGe2.CodPro,'+
                                                               '        FatGe2.CodTam,'+
                                                               '        FatGe2.CodCor,'+
                                                               '        FatGe2.DesGe2,'+
                                                               '        FatGe2.ObsGe2,'+
                                                               '        FatGe2.CodCfo,'+
                                                               '        FatGe2.ClsIpi,'+
                                                               '        FatGe2.CodSt1,'+
                                                               '        FatGe2.CodSt2,'+
                                                               '        FatGe2.CodUnd,'+
                                                               '        FatGe2.QtpGe2,'+
                                                               '        FatGe2.VluGe2,'+
                                                               '        FatGe2.TotIte,'+
                                                               '        FatGe2.BasIcm,'+
                                                               '        FatGe2.TotIcm,'+
                                                               '        FatGe2.TotIpi,'+
                                                               '        FatGe2.IcmGe2,'+
                                                               '        FatGe2.IpiGe2,'+
                                                               '        FatGe2.NroGe2 '+
                                                               ' From FatGe2'+
                                                               ' Where FatGe2.CodEmp = '+ Quotedstr(IntToStr(FatGerCodEmp.Value)) +
                                                               '   and FatGe2.DteGer = '+ Quotedstr(fDateToSQL(FatGerDteGer.Value)) +
                                                               '   and FatGe2.NumGer = '+ Quotedstr(IntToStr(FatGerNumGer.Value)) +
                                                               ' Order by FatGe2.NroGe2';
                                                       Open;
                                                       First;

                                                  end;

                                                  NroReg := 0;

                                                  while not quSQL.EOF do begin

                                                        if quSQL.FieldbyName('CodClp').AsString <> '8' then begin

                                                           Inc(NroReg);

                                                           with quSQL1,SQL do begin

                                                                Close;
                                                                Text := 'Insert Into FatNfe(Out_CodEmp,Out_DteGer,Out_NumGer,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DesNfe,CfoNfe,NcmNfe,SitNfe,UndNfe,QtpNfe,VlqNfe,TotNfe,BasIcm,TotIcm,TotIpi,IcmNfe,IpiNfe,NroNfe,IteNfe)'+
                                                                        '            Values(:Out_CodEmp,:Out_DteGer,:Out_NumGer,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DesNfe,:CfoNfe,:NcmNfe,:SitNfe,:UndNfe,:QtpNfe,:VlqNfe,:TotNfe,:BasIcm,:TotIcm,:TotIpi,:IcmNfe,:IpiNfe,:NroNfe,:IteNfe)';

                                                                with Params do begin

                                                                     Params[00].AsInteger  := FatGerCodEmp.Value;
                                                                     Params[01].AsDateTime := FatGerDteGer.Value;
                                                                     Params[02].AsInteger  := FatGerNumGer.Value;

                                                                     if quSQL.FieldbyName('CodClp').AsString <> '9' then begin

                                                                        Params[03].AsString := quSQL.FieldbyName('CodClp').AsString;
                                                                        Params[04].AsString := quSQL.FieldbyName('CodGru').AsString;
                                                                        Params[05].AsString := quSQL.FieldbyName('CodSub').AsString;
                                                                        Params[06].AsString := quSQL.FieldbyName('CodPro').AsString;
                                                                        Params[07].AsString := quSQL.FieldbyName('CodTam').AsString;
                                                                        Params[08].AsString := quSQL.FieldbyName('CodCor').AsString;

                                                                        end
                                                                     else
                                                                        begin

                                                                        Params[03].AsString := '';
                                                                        Params[04].AsString := '';
                                                                        Params[05].AsString := '';
                                                                        Params[06].AsString := '';
                                                                        Params[07].AsString := '';
                                                                        Params[08].AsString := '';

                                                                     end;

                                                                     Params[09].AsString  := Trim(quSQL.FieldbyName('DesGe2').AsString);
                                                                     Params[10].AsString  := Trim(quSQL.FieldbyName('CodCfo').AsString);
                                                                     Params[11].AsString  := Trim(quSQL.FieldbyName('ClsIpi').AsString);
                                                                     Params[12].AsString  := quSQL.FieldbyName('CodSt1').AsString+ ' ' +quSQL.FieldbyName('CodSt2').AsString;
                                                                     Params[13].AsString  := Trim(quSQL.FieldbyName('CodUnd').AsString);
                                                                     Params[14].AsFloat   := quSQL.FieldbyName('QtpGe2').AsFloat;
                                                                     Params[15].AsFloat   := quSQL.FieldbyName('VluGe2').AsFloat;
                                                                     Params[16].AsFloat   := quSQL.FieldbyName('TotIte').AsFloat;
                                                                     Params[17].AsFloat   := quSQL.FieldbyName('BasIcm').AsFloat;
                                                                     Params[18].AsFloat   := quSQL.FieldbyName('TotIcm').AsFloat;
                                                                     Params[19].AsFloat   := quSQL.FieldbyName('TotIpi').AsFloat;
                                                                     Params[20].AsFloat   := quSQL.FieldbyName('IcmGe2').AsFloat;
                                                                     Params[21].AsFloat   := quSQL.FieldbyName('IpiGe2').AsFloat;
                                                                     Params[22].AsInteger := NroReg;
                                                                     Params[23].AsString  := 'Sim';

                                                                end;

                                                                ExecSQL;

                                                           end;

                                                           if Trim(quSQL.FieldbyName('ObsGe2').AsString) <> '' then begin

                                                              Inc(NroReg);

                                                              with quSQL1,SQL do begin

                                                                   Close;
                                                                   Text := 'Insert Into FatNfe(Out_CodEmp,Out_DteGer,Out_NumGer,DesNfe,NroNfe,IteNfe)'+
                                                                           '            Values(:Out_CodEmp,:Out_DteGer,:Out_NumGer,:DesNfe,:NroNfe,:IteNfe)';

                                                                   with Params do begin

                                                                        Params[0].AsInteger  := FatGerCodEmp.Value;
                                                                        Params[1].AsDateTime := FatGerDteGer.Value;
                                                                        Params[2].AsInteger  := FatGerNumGer.Value;
                                                                        Params[3].AsString   := Trim(quSQL.FieldbyName('ObsGe2').AsString);
                                                                        Params[4].AsInteger  := NroReg;
                                                                        Params[5].AsString   := 'Nao';

                                                                   end;

                                                                   ExecSQL;

                                                              end;
                                                           end;

                                                           end
                                                        else
                                                           begin

                                                           DscPro := Trim(quSQL.FieldbyName('DesGe2').AsString)+ ' ' +quSQL.FieldbyName('ObsGe2').AsString;

                                                           Inc(NroReg);

                                                           with quSQL1,SQL do begin

                                                                Close;
                                                                Text := 'Insert Into FatNfe(Out_CodEmp,Out_DteGer,Out_NumGer,DesNfe,NroNfe,IteNfe) Values(:Out_CodEmp,:Out_DteGer,:Out_NumGer,:DesNfe,:NroNfe,:IteNfe)';

                                                                with Params do begin

                                                                     Params[0].AsInteger  := FatGerCodEmp.Value;
                                                                     Params[1].AsDateTime := FatGerDteGer.Value;
                                                                     Params[2].AsInteger  := FatGerNumGer.Value;
                                                                     Params[3].AsString   := copy(DscPro,1,40);
                                                                     Params[4].AsInteger  := NroReg;
                                                                     Params[5].AsString   := 'Nao';

                                                                end;

                                                                ExecSQL;

                                                           end;

                                                           if Trim(copy(DscPro,41,40)) <> '' then begin

                                                              Inc(NroReg);

                                                              with quSQL1,SQL do begin

                                                                   Close;
                                                                   Text := 'Insert Into FatNfe(Out_CodEmp,Out_DteGer,Out_NumGer,DesNfe,NroNfe,IteNfe) Values(:Out_CodEmp,:Out_DteGer,:Out_NumGer,:DesNfe,:NroNfe,:IteNfe)';

                                                                   with Params do begin

                                                                        Params[0].AsInteger  := FatGerCodEmp.Value;
                                                                        Params[1].AsDateTime := FatGerDteGer.Value;
                                                                        Params[2].AsInteger  := FatGerNumGer.Value;
                                                                        Params[3].AsString   := Trim(copy(DscPro,41,40));
                                                                        Params[4].AsInteger  := NroReg;
                                                                        Params[5].AsString   := 'Nao';

                                                                   end;

                                                                   ExecSQL;

                                                              end;
                                                           end;

                                                           if Trim(copy(DscPro,81,40)) <> '' then begin

                                                              Inc(NroReg);

                                                              with quSQL1,SQL do begin

                                                                   Close;
                                                                   Text := 'Insert Into FatNfe(Out_CodEmp,Out_DteGer,Out_NumGer,DesNfe,NroNfe,IteNfe) Values(:Out_CodEmp,:Out_DteGer,:Out_NumGer,:DesNfe,:NroNfe,:IteNfe)';

                                                                   with Params do begin

                                                                        Params[0].AsInteger  := FatGerCodEmp.Value;
                                                                        Params[1].AsDateTime := FatGerDteGer.Value;
                                                                        Params[2].AsInteger  := FatGerNumGer.Value;
                                                                        Params[3].AsString   := Trim(copy(DscPro,81,40));
                                                                        Params[4].AsInteger  := NroReg;
                                                                        Params[5].AsString   := 'Nao';

                                                                   end;

                                                                   ExecSQL;

                                                              end;
                                                           end;
                                                        end;

                                                        quSQL.Next;

                                                  end;

                                                  try

                                                     fmManE02_NFE := TfmManE02_NFE.Create(Self);

                                                     fmManE02_NFE.FatGer.Close;
                                                     fmManE02_NFE.FatGer.Params[0].AsInteger  := FatGerCodEmp.Value;
                                                     fmManE02_NFE.FatGer.Params[1].AsDateTime := FatGerDteGer.Value;
                                                     fmManE02_NFE.FatGer.Params[2].AsInteger  := FatGerNumGer.Value;
                                                     fmManE02_NFE.FatGer.Open;

                                                     fmManE02_NFE.RLReport1.PreviewModal;

                                                  finally

                                                     FreeAndNil(fmManE02_NFE);

                                                  end;

                                                  if fMsg('DANFE impressa corretamente ?','O') then begin

                                                     FatGer.Edit;

                                                     FatGerFlgAtu.Value := 'F';
                                                     FatGerImpNFe.Value := 'Sim';

                                                     with FatGer do begin

                                                          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                          try

                                                             ApplyUpdates; {Tenta aplicar as alterações};

                                                             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                          except

                                                             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                             if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

                                                             FatGer.Close;
                                                             FatGer.Open;

                                                             grFatGer.SetFocus;

                                                             raise;

                                                          end;

                                                          CommitUpdates; {sucesso!, limpa o cache...}

                                                     end;
                                                  end;
                                               end;
                                      
                                               with FatGer,SQL do begin

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

                                         fmManGr1_NFE.Enabled := True;

                                         pnMensag.Visible := False;

                                         FatGer.Edit;

                                         FatGerFlgAtu.Value := 'F';

                                         FatGerRecNFe.Clear;

                                         with FatGer do begin

                                              fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                              try

                                                 ApplyUpdates; {Tenta aplicar as alterações};

                                                 fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                              except

                                                 fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                 if FatGer.State <> dsBrowse then FatGer.CancelUpdates;

                                                 FatGer.Close;
                                                 FatGer.Open;

                                                 grFatGer.SetFocus;

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

                                      fmManGr1_NFE.Enabled := True;

                                      pnMensag.Visible := False;

                                      fmsgErro(MSGNFE,Nil);

                                   end;
                                end;
                             end;

                             end
                          else
                             begin

                             fmManPri.Enabled := True;

                             fmManGr1_NFE.Enabled := True;

                             pnMensag.Visible := False;

                             fmsgErro('Código do país para emissão de NFe não informado no cadastro do cliente.',Nil);

                          end;

                          end
                       else
                          begin

                          fmManPri.Enabled := True;

                          fmManGr1_NFE.Enabled := True;

                          pnMensag.Visible := False;

                          fmsgErro('Código do país para emissão de NFe não informado no cadastro da empresa.',Nil);

                       end;

                       end
                    else
                       begin

                       fmManPri.Enabled := True;

                       fmManGr1_NFE.Enabled := True;

                       pnMensag.Visible := False;

                       fmsgErro('Código de municipio para emissão de NFe não informado no cadastro da empresa.',Nil);

                    end;

                    end
                 else
                    begin

                    fmManPri.Enabled := True;

                    fmManGr1_NFE.Enabled := True;

                    pnMensag.Visible := False;

                    fmsgErro('Código da UF para emissão de NFe não informado no cadastro da empresa.',Nil);

                 end;

                 fmManPri.Enabled := True;

                 fmManGr1_NFE.Enabled := True;

                 pnMensag.Visible := False;

              end;

              end
           else
              fmsgErro('Arquivos de configuração para envio da nota fiscal eletrônica não localizado .INI. Por favor verificar.',Nil);

        end;
     end;
  end;
end;

procedure TfmManGr1_NFE.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(FatGer.TotGe1) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From FatGer LEFT JOIN FinCli ON (FatGer.CodCli = FinCli.CodCli)'+
               ' Where FatGer.SitGer = '+ Quotedstr('Faturado') +
               '   and FatGer.FlgNFE = '+ Quotedstr('Sim') +
               '   and FatGer.EnvNFE = '+ Quotedstr('Nao') ;

       if CodEmp > 0 then
          Text := Text + ' and FatGer.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                         ' and FatGer.DteGer = '+ QuotedStr(fDateToSQL(DteGer)) +
                         ' and FatGer.NumGer = '+ QuotedStr(IntToStr(NumGer)) ;

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
  NumGer := 0;

end;

procedure TfmManGr1_NFE.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     with FatGer,SQL do begin

          Close;
          Text := sBase + sFiltro +
                  ' and FatGer.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text);
          Open;

     end;

     end
  else
     begin

     with FatGer,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;
  end;

  CountRegistros;

end;

procedure TfmManGr1_NFE.FatGe2NCMGE2GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := Trim(FatGe2ClsIpi.Value);
end;

procedure TfmManGr1_NFE.pnalterarExit(Sender: TObject);
var
  NroGe2 : integer;
begin
  inherited;
  if FatGe2.State <> dsBrowse then begin

     if Trim(FatGe2ClsIpi.Value) <> '' then begin

        if Length(Trim(fLimpaStr(FatGe2ClsIpi.Value))) <> 8 then
           fmsgErro('Conteudo invalido.',EdClsIpi)
        else
           begin

           if fCaracIgual(fLimpaStr(FatGe2ClsIpi.Value)) then fmsgErro('Conteudo invalido.',EdClsIpi);

        end;
     end;

     FatGe2CodCfo.Value := Trim(FatGe2CodCfo.Value);
     FatGe2ClsIpi.Value := Trim(FatGe2ClsIpi.Value);

     if Trim(FatGe2CodCfo.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodCfo);
     if Trim(FatGe2CodSt1.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodSt1);
     if Trim(FatGe2CodSt2.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodSt2);
     if Trim(FatGe2CodUnd.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodUnd);

     NroGe2 := FatGe2NroGe2.Value;

     with FatGe2 do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if FatGe2.State = dsBrowse then FatGe2.Edit;

             EdCodCfo.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     FatGe2.Close;
     FatGe2.Open;

     FatGer.Close;
     FatGer.Open;

     FatGe2.Locate('CodEmp;DteGer;NumGer;NroGe2',VarArrayOf([FatGe2CodEmp.Value,FatGe2DteGer.Value,FatGe2NumGer.Value,NroGe2]),[LoPartialKey]);

     if FatGe2NroGe2.Value < FatGerQtiGer.Value then begin

        FatGe2.Next;

        FatGe2.Edit;

        FatGe2CodCfo.Value := Trim(FatGe2CodCfo.Value);
        FatGe2ClsIpi.Value := Trim(FatGe2ClsIpi.Value);
        FatGe2CodSt1.Value := Trim(FatGe2CodSt1.Value);
        FatGe2CodSt2.Value := Trim(FatGe2CodSt2.Value);
        FatGe2CodUnd.Value := Trim(FatGe2CodUnd.Value);

        EdCodCfo.Text := Trim(FatGe2CodCfo.Value);
        EdClsIpi.Text := Trim(FatGe2ClsIpi.Value);
        EdCodSt1.Text := Trim(FatGe2CodSt1.Value);
        EdCodSt2.Text := Trim(FatGe2CodSt2.Value);
        EdCodUnd.Text := Trim(FatGe2CodUnd.Value);

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

procedure TfmManGr1_NFE.EdCodCfoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not ( key in [ '0'..'9' ] )) and (not ( key in ['.'] )) then key := #0;
end;

procedure TfmManGr1_NFE.EdCodSt1Enter(Sender: TObject);
begin
  inherited;
  Label4.Caption := 'F1-Iniciais';
end;

procedure TfmManGr1_NFE.EdCodSt1Exit(Sender: TObject);
begin
  inherited;
  if Trim(FatGe2CodSt1.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstSt1 Where EstSt1.CodSt1 = '+ QuotedStr(FatGe2CodSt1.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Situação tributária informada não localizada.',EdCodSt1);

     end;
  end;
end;

procedure TfmManGr1_NFE.EdCodSt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt1 := TfmPsqSt1.Create(Self);
        fmPsqSt1.ShowModal;

        if Trim( fmPsqSt1.CodSt1 ) <> '' then FatGe2CodSt1.Value := fmPsqSt1.CodSt1;

     finally

        FreeAndNil(fmPsqSt1);

     end;

     EdCodSt1.SetFocus;

  end;
end;

procedure TfmManGr1_NFE.EdCodSt2Exit(Sender: TObject);
begin
  inherited;
  if Trim(FatGe2CodSt2.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstSt2 Where EstSt2.CodSt2 = '+ QuotedStr(FatGe2CodSt2.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Situação tributária informada não localizada.',EdCodSt2);

     end;
  end;
end;

procedure TfmManGr1_NFE.EdCodSt2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt2 := TfmPsqSt2.Create(Self);
        fmPsqSt2.ShowModal;

        if Trim( fmPsqSt2.CodSt2 ) <> '' then FatGe2CodSt2.Value := fmPsqSt2.CodSt2;

     finally

        FreeAndNil(fmPsqSt2);

     end;

     EdCodSt2.SetFocus;

  end;
end;

procedure TfmManGr1_NFE.EdCodUndExit(Sender: TObject);
begin
  inherited;
  if Trim(FatGe2CodUnd.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstUnd Where EstUnd.CodUnd = '+ QuotedStr(FatGe2CodUnd.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Unidade de medida informada não localizada.',EdCodUnd);

     end;
  end;
end;

procedure TfmManGr1_NFE.EdCodUndKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqUnd := TfmPsqUnd.Create(Self);
        fmPsqUnd.ShowModal;

        if Trim( fmPsqUnd.CodUnd ) <> '' then FatGe2CodUnd.Value := fmPsqUnd.CodUnd;

     finally

        FreeAndNil(fmPsqUnd);

     end;

     EdCodUnd.SetFocus;

  end;
end;

procedure TfmManGr1_NFE.grFatGe2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NroGe2 : integer;
begin
  inherited;
  if key = 32 then begin

     if not pnalterar.Visible then begin

        if FatGe2CodEmp.Value > 0 then begin

           CodEmp := FatGe2CodEmp.Value;
           DteGer := FatGe2DteGer.Value;
           NumGer := FatGe2NumGer.Value;
           NroGe2 := FatGe2NroGe2.Value;

           with FatGer,SQL do begin

                Close;
                Text := sBase + ' Where FatGer.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                                '   and FatGer.DteGer = '+ QuotedStr(fDateToSQL(DteGer)) +
                                '   and FatGer.NumGer = '+ QuotedStr(IntToStr(NumGer)) ;
                Open;

           end;

           CountRegistros;

           if FatGerCodEmp.Value > 0 then begin

              FatGe2.Locate('CodEmp;DteGer;NumGer;NroGe2',VarArrayOf([FatGe2CodEmp.Value,FatGe2DteGer.Value,FatGe2NumGer.Value,NroGe2]),[LoPartialKey]);

              bAtualizar.Enabled := False;

              benviar.Enabled := False;

              pnalterar.Visible := True;

              FatGe2.Edit;

              FatGe2CodCfo.Value := Trim(FatGe2CodCfo.Value);
              FatGe2ClsIpi.Value := Trim(FatGe2ClsIpi.Value);
              FatGe2CodSt1.Value := Trim(FatGe2CodSt1.Value);
              FatGe2CodSt2.Value := Trim(FatGe2CodSt2.Value);
              FatGe2CodUnd.Value := Trim(FatGe2CodUnd.Value);

              EdCodCfo.Text := Trim(FatGe2CodCfo.Value);
              EdClsIpi.Text := Trim(FatGe2ClsIpi.Value);
              EdCodSt1.Text := Trim(FatGe2CodSt1.Value);
              EdCodSt2.Text := Trim(FatGe2CodSt2.Value);
              EdCodUnd.Text := Trim(FatGe2CodUnd.Value);

              EdCodCfo.SetFocus;

           end;
        end;
     end;
  end;
end;

end.

