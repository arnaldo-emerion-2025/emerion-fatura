unit ManLn7_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxColorPickEdit, dxColorCurrencyEdit, dxColorEdit,
  dxColorDateEdit, dxDBELib, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxfProgressBar, dxDBColorEdit;

type
  TfmManLn7_NFE = class(TfmPadrao)
    FatPed: TwwQuery;
    FatPe2: TwwQuery;
    DsFatPe2: TwwDataSource;
    DsFatPed: TwwDataSource;
    PaintBox: TPaintBox;
    grFatPed: ThGrid;
    quSql: TwwQuery;
    FatPedDTEFAT: TDateTimeField;
    FatPedNRONFS: TIntegerField;
    FatPedTOTGER: TFloatField;
    FatPedCODPFA: TStringField;
    FatPedNOMCLI: TStringField;
    UpFatPed: TUpdateSQL;
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
    FatPe2CODCFO: TStringField;
    FatPe2CLSIPI: TStringField;
    FatPe2CODUND: TStringField;
    pnDesPe2: TPanel;
    Label3: TLabel;
    FatPedCODEMP: TIntegerField;
    FatPedUFEFAT: TStringField;
    FatPedTIPPFA: TStringField;
    FatPedCODCF1: TStringField;
    FatPedCODCF2: TStringField;
    FatPedCODCLI: TIntegerField;
    FatPedFLGSAI: TStringField;
    FatPedFLGENT: TStringField;
    FatPedTIPFRT: TStringField;
    FatPedESPFAT: TStringField;
    FatPedMARFAT: TStringField;
    FatPedINTFIN: TStringField;
    FatPedDESNAT: TStringField;
    FatPedINSSUB: TStringField;
    FatPedCODTRA: TIntegerField;
    FatPedTRASDA: TIntegerField;
    FatPedNOMTRA: TStringField;
    FatPedCGCTRA: TStringField;
    FatPedINSTRA: TStringField;
    FatPedTENTRA: TStringField;
    FatPedENDTRA: TStringField;
    FatPedREFTRA: TStringField;
    FatPedNUMTRA: TStringField;
    FatPedBAITRA: TStringField;
    FatPedCIDTRA: TStringField;
    FatPedUFETRA: TStringField;
    FatPedCEPTRA: TStringField;
    FatPedNROFAT: TStringField;
    FatPedPLCTRA: TStringField;
    FatPedUFEPLC: TStringField;
    FatPedTEFCLI: TStringField;
    FatPedENFCLI: TStringField;
    FatPedRFFCLI: TStringField;
    FatPedNRFCLI: TStringField;
    FatPedBAFCLI: TStringField;
    FatPedCIFCLI: TStringField;
    FatPedUFFCLI: TStringField;
    FatPedCEFCLI: TStringField;
    FatPedCGECLI: TStringField;
    FatPedINECLI: TStringField;
    FatPedINFLIQ: TFloatField;
    FatPedINFBRT: TFloatField;
    FatPedLOTNFE: TIntegerField;
    FatPedENVNFE: TStringField;
    FatPedSEQNFE: TStringField;
    FatPedDTENFE: TDateTimeField;
    FatPedRECNFE: TStringField;
    FatPedPRONFE: TStringField;
    FatPedDOPNFE: TDateTimeField;
    FatPedHRENFE: TStringField;
    FatPedUSUNFE: TIntegerField;
    FatPedDTEPNF: TDateTimeField;
    FatPedHREPNF: TStringField;
    FatPedIMPNFE: TStringField;
    FatPedRETNFE: TStringField;
    FatPedFLGATU: TStringField;
    FatPedID_FINUFF: TIntegerField;
    FatPedID_FINCIF: TIntegerField;
    FatPedID_FINUFE: TIntegerField;
    FatPedID_FINCIE: TIntegerField;
    FatPedID_TRAUFE: TIntegerField;
    FatPedID_TRACIE: TIntegerField;
    FatPedTRBPIS: TStringField;
    FatPedPERPIS: TFloatField;
    FatPedTRBCOF: TStringField;
    FatPedPERCOF: TFloatField;
    FatPedTOTFAT: TFloatField;
    FatPedTOTDSR: TFloatField;
    FatPedTOTFRT: TFloatField;
    FatPedTOTSEG: TFloatField;
    FatPedTOTDES: TFloatField;
    FatPedTOTIPI: TFloatField;
    FatPedTOTPIS: TFloatField;
    FatPedTOTCOF: TFloatField;
    FatPedBASICM: TFloatField;
    FatPedTOTICM: TFloatField;
    FatPedBASSUB: TFloatField;
    FatPedTOTSUB: TFloatField;
    FatPedOB1FAT: TStringField;
    FatPedOB2FAT: TStringField;
    FatPedOB3FAT: TStringField;
    FatPedOB4FAT: TStringField;
    FatPedOB5FAT: TStringField;
    FatPedOB6FAT: TStringField;
    FatPedOB7FAT: TStringField;
    FatPedOB8FAT: TStringField;
    FatPedNFEPIS: TStringField;
    FatPedNFECOF: TStringField;
    FatPe2DESPE2: TStringField;
    FatPe2QTPPE2: TFloatField;
    FatPe2VLQPE2: TFloatField;
    FatPe2IPIPE2: TFloatField;
    FatPe2ICMPE2: TFloatField;
    FatPe2TOTPE2: TFloatField;
    FatPe2TOTIPI: TFloatField;
    quSQL1: TwwQuery;
    FatArq: TwwQuery;
    UpFatArq: TUpdateSQL;
    FatArqARQNFE: TBlobField;
    FatArqFLGATU: TStringField;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    FatPedTENCLI: TStringField;
    FatPedENDCLI: TStringField;
    FatPedREFCLI: TStringField;
    FatPedNUMCLI: TStringField;
    FatPedBAICLI: TStringField;
    FatPedCIDCLI: TStringField;
    FatPedUFECLI: TStringField;
    FatPedCEPCLI: TStringField;
    FatPe2CODITE: TStringField;
    FatArqCODEMP: TIntegerField;
    FatArqDTERES: TDateTimeField;
    FatArqNUMRES: TIntegerField;
    FatArqSEQLIB: TIntegerField;
    FatArqSEQFAT: TIntegerField;
    FatPedALTVOL: TIntegerField;
    Label4: TLabel;
    FatPedEM1CLI: TStringField;
    FatPe2NCMPE2: TStringField;
    FatPe2OBSPE2: TStringField;
    FatPedID_ESTSIP: TIntegerField;
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
    UpFatPe2: TUpdateSQL;
    FatPe2CODEMP: TIntegerField;
    FatPe2DTERES: TDateTimeField;
    FatPe2NUMRES: TIntegerField;
    FatPe2SEQLIB: TIntegerField;
    FatPe2SEQFAT: TIntegerField;
    FatPe2SEQPE2: TIntegerField;
    FatPe2CODST1: TStringField;
    FatPe2CODST2: TStringField;
    FatPe2NROPE2: TIntegerField;
    grFatPe2: ThGrid;
    FatPedQTIFAT: TIntegerField;
    FatPedFLGIMP: TStringField;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsFatPedDataChange(Sender: TObject; Field: TField);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsFatPe2DataChange(Sender: TObject; Field: TField);
    procedure benviarClick(Sender: TObject);
    procedure batualizarClick(Sender: TObject);
    procedure FatPe2NCMPE2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
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
  private
    CodEmp : integer;
    DteRes : TDateTime;
    NumRes : integer;
    SeqLib : integer;
    SeqFat : integer;
    {Private declarations}
  public
    {Public declarations}
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManLn7_NFE: TfmManLn7_NFE;
  sArqBackup: string;

implementation

uses dxDemoUtils, FileCtrl, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri,
     ManE01_NFE, ManCn1_NFE, PsqSt1, PsqSt2, PsqUnd;

{$R *.DFM}

procedure TfmManLn7_NFE.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select FatPed.CodEmp,'+
           '        FatPed.DteRes,'+
           '        FatPed.NumRes,'+
           '        FatPed.SeqLib,'+
           '        FatPed.SeqFat,'+
           '        FatPed.QtiFat,'+
           '        FatPed.DteFat,'+
           '        FatPed.UfeFat,'+
           '        FatPed.NroNfs,'+
           '        FatPed.CodPfa,'+
           '        FatPed.TipPfa,'+
           '        FatPed.CodCf1,'+
           '        FatPed.CodCf2,'+
           '        FatPed.CodCli,'+
           '        FatPed.FlgSai,'+
           '        FatPed.FlgEnt,'+
           '        FatPed.TipFrt,'+
           '        FatPed.EspFat,'+
           '        FatPed.MarFat,'+
           '        FatPed.IntFin,'+
           '        FatPed.DesNat,'+
           '        FatPed.InsSub,'+
           '        FatPed.CodTra,'+
           '        FatPed.TraSda,'+
           '        FatPed.NomTra,'+
           '        FatPed.CgcTra,'+
           '        FatPed.InsTra,'+
           '        FatPed.TenTra,'+
           '        FatPed.EndTra,'+
           '        FatPed.RefTra,'+
           '        FatPed.NumTra,'+
           '        FatPed.BaiTra,'+
           '        FatPed.CidTra,'+
           '        FatPed.UfeTra,'+
           '        FatPed.CepTra,'+
           '        FatPed.NroFat,'+
           '        FatPed.PlcTra,'+
           '        FatPed.UfePlc,'+
           '        FatPed.TefCli,'+
           '        FatPed.EnfCli,'+
           '        FatPed.RffCli,'+
           '        FatPed.NrfCli,'+
           '        FatPed.BafCli,'+
           '        FatPed.CifCli,'+
           '        FatPed.UffCli,'+
           '        FatPed.CefCli,'+
           '        FatPed.TenCli,'+
           '        FatPed.EndCli,'+
           '        FatPed.RefCli,'+
           '        FatPed.NumCli,'+
           '        FatPed.BaiCli,'+
           '        FatPed.CidCli,'+
           '        FatPed.UfeCli,'+
           '        FatPed.CepCli,'+
           '        FatPed.CgeCli,'+
           '        FatPed.IneCli,'+
           '        FatPed.InfLiq,'+
           '        FatPed.InfBrt,'+
           '        FatPed.AltVol,'+
           '        FatPed.LotNfe,'+
           '        FatPed.EnvNfe,'+
           '        FatPed.SeqNfe,'+
           '        FatPed.DteNfe,'+
           '        FatPed.RecNfe,'+
           '        FatPed.ProNfe,'+
           '        FatPed.DopNfe,'+
           '        FatPed.HreNfe,'+
           '        FatPed.UsuNfe,'+
           '        FatPed.DtePnf,'+
           '        FatPed.HrePnf,'+
           '        FatPed.ImpNfe,'+
           '        FatPed.RetNfe,'+
           '        FatPed.FlgAtu,'+
           '        FatPed.Id_FinUff,'+
           '        FatPed.Id_FinCif,'+
           '        FatPed.Id_FinUfe,'+
           '        FatPed.Id_FinCie,'+
           '        FatPed.Id_TraUfe,'+
           '        FatPed.Id_TraCie,'+
           '        FatPed.TrbPis,'+
           '        FatPed.PerPis,'+
           '        FatPed.TrbCof,'+
           '        FatPed.PerCof,'+
           '        FatPed.TotFat,'+
           '        FatPed.TotDsr,'+
           '        FatPed.TotFrt,'+
           '        FatPed.TotSeg,'+
           '        FatPed.TotDes,'+
           '        FatPed.TotIpi,'+
           '        FatPed.TotPis,'+
           '        FatPed.TotCof,'+
           '        FatPed.BasIcm,'+
           '        FatPed.TotIcm,'+
           '        FatPed.BasSub,'+
           '        FatPed.TotSub,'+
           '        FatPed.TotGer,'+
           '        FatPed.Ob1Fat,'+
           '        FatPed.Ob2Fat,'+
           '        FatPed.Ob3Fat,'+
           '        FatPed.Ob4Fat,'+
           '        FatPed.Ob5Fat,'+
           '        FatPed.Ob6Fat,'+
           '        FatPed.Ob7Fat,'+
           '        FatPed.Ob8Fat,'+
           '        FatPed.NfePis,'+
           '        FatPed.NfeCof,'+
           '        FatPed.Id_EstSip,'+
           '        FinCli.NomCli,'+
           '        FinCli.Em1Cli,'+
           '        fatped.flgimp '+ 
           ' From FatPed LEFT JOIN FinCli ON (FatPed.CodCli = FinCli.CodCli)';

  sFiltro := ' Where FatPed.SitFat = '+ Quotedstr('Faturado') +
             '   and FatPed.FlgNFE = '+ Quotedstr('Sim') +
             '   and FatPed.EnvNFE = '+ Quotedstr('Nao') ;

  sOrdem := ' Order by FatPed.NroNfs';

end;

procedure TfmManLn7_NFE.FormShow(Sender: TObject);
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

  with FatPed,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  CountRegistros;

  EdPsqNroNfs.SetFocus;

end;

procedure TfmManLn7_NFE.DsFatPedDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  Label3.Caption := Trim(FatPedRETNFE.Value);
  Label4.Caption := LowerCase(Trim(FatPedEM1CLI.Value));

  if FatPedCodCli.Value > 0 then
     pnCodCli.Caption := IntToStr(FatPedCodCli.Value)
  else
     pnCodCli.Caption := '';

end;

procedure TfmManLn7_NFE.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLn7_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLn7_NFE := Nil;
end;

procedure TfmManLn7_NFE.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManLn7_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLn7_NFE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if pnalterar.Visible then begin

        if FatPe2.State <> dsBrowse then FatPe2.CancelUpdates;

        batualizar.Enabled := True;

        benviar.Enabled := True;

        pnalterar.Visible := False;

        grFatPe2.SetFocus;

        end
     else
        close;

  end;
end;

procedure TfmManLn7_NFE.DsFatPe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesPe2.Caption := ' '+Trim(FatPe2DesPe2.Value)+ ' ' +Trim(FatPe2ObsPe2.Value);
end;

procedure TfmManLn7_NFE.benviarClick(Sender: TObject);
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
  NfePis      : string;
  NfeCof      : string;
  TotSub      : string;
  TotFrt      : string;
  TotSeg      : string;
  TotDes      : string;
  TipFrt      : string;
  ObsFat      : string;
  TipCnd      : string;
  NomArq      : string;
  sNumeroNF   : string;
  Finalizar   : string;
  Id_EmpCie   : string;
  Id_EstSip   : string;
  Id_CliNfe   : string;
  NroReg      : integer;
  Id_FinUfe   : integer;
  Id_FinCie   : integer;
  Id_CliUfe   : integer;
  Id_CliCie   : integer;
  Nome_ArqIni : string;
begin
  inherited;
  if FatPedCodEmp.Value > 0 then begin

     CodEmp := FatPedCodEmp.Value;
     DteRes := FatPedDteRes.Value;
     NumRes := FatPedNumRes.Value;
     SeqLib := FatPedSeqLib.Value;
     SeqFat := FatPedSeqFat.Value;

     with FatPed,SQL do begin

          Close;
          Text := sBase +
                  ' Where FatPed.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                  '   and FatPed.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                  '   and FatPed.NumRes = '+ QuotedStr(IntToStr(NumRes)) +
                  '   and FatPed.SeqLib = '+ QuotedStr(IntToStr(SeqLib)) +
                  '   and FatPed.SeqFat = '+ QuotedStr(IntToStr(SeqFat)) ;
          Open;

     end;

     CountRegistros;

     if FatPedCodEmp.Value > 0 then begin

        if fMsg('Confirma envio para emissão da NFe ?','O') then begin

           Nome_ArqIni := ExtractFilePath(Application.ExeName)+'config.ini';

           if FileExists(Nome_ArqIni) then begin

              if Trim(sArqBackup) <> '' then begin

                 if DirectoryExists(sArqBackup) then begin

                    Finalizar := 'N';

                    try

                       fmManCn1_NFE := TfmManCn1_NFE.Create(Self);
                       fmManCn1_NFE.ShowModal;

                       Finalizar := fmManCn1_NFE.Finalizar;

                    finally

                       FreeAndNil(fmManCn1_NFE);

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
                                    '        GerEmp.Id_FinCie '+
                                    ' From GerEmp'+
                                    ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(FatPedCodEmp.Value));
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

                            Id_FinUfe := FieldbyName('Id_FinUfe').AsInteger;
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

                       end;

                       if Id_FinUfe > 0 then begin

                          if Id_FinCie > 0 then begin

                             NfePis := fLimpaStr(Trim(FatPedNfePis.Value));
                             NfeCof := fLimpaStr(Trim(FatPedNfeCof.Value));

                             if FatPedId_EstSip.Value > 0 then begin

                                with quSQL,SQL do begin

                                     Close;
                                     Text := ' Select EstSip.SigNfe'+
                                             ' From EstSip'+
                                             ' Where EstSip.Id_EstSip = '+ QuotedStr(IntToStr(FatPedId_EstSip.Value));
                                     Open;

                                     Id_EstSip := FieldbyName('SigNfe').AsString;

                                end;

                                end
                             else
                                begin

                                if Trim(FatPedTipPfa.Value) = 'Saida' then begin

                                   if FatPedTotIpi.Value > 0 then
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
                                          '        FinCli.Em1Cli '+
                                          ' From FinCli'+
                                          ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(FatPedCodCli.Value));
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

                             end;

                             Id_CliUfe := FatPedId_FinUff.Value;
                             Id_CliCie := FatPedId_FinCif.Value;

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

                             if Trim(FatPedSeqNFe.Value) = '' then begin

                                FatPed.Edit;

                                FatPedFlgAtu.Value := 'F';
                                FatPedSeqNFe.Value := fMontaChaveAcessoNFe(Id_FinUfe,FatPedDteFat.Value,CgcEmp,55,1,FatPedNroNfs.Value,1);

                                with FatPed do begin

                                     fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                     try

                                        ApplyUpdates; {Tenta aplicar as alterações};

                                        fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                     except

                                        fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                        if FatPed.State <> dsBrowse then FatPed.CancelUpdates;

                                        FatPed.Close;
                                        FatPed.Open;

                                        grFatPed.SetFocus;

                                        raise;

                                     end;

                                     CommitUpdates; {sucesso!, limpa o cache...}

                                end;

                                FatPed.Close;
                                FatPed.Open;

                             end;

                             if not directoryExists('C:\EMERION\NFE') then CreateDir('C:\EMERION\NFE');

                             if not directoryExists('C:\EMERION\REQ') then CreateDir('C:\EMERION\REQ');

                             if not directoryExists('C:\EMERION\RESP') then CreateDir('C:\EMERION\RESP');

                             if not directoryExists('C:\EMERION\BACKUP\NFE') then CreateDir('C:\EMERION\BACKUP\NFE');

                             Application.ProcessMessages;

                             fmManPri.Enabled := False;

                             fmManLn7_NFE.Enabled := False;

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
                                            FatPedSeqNFe.Value);

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

                                         if pos(FatPedSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

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

                                   if Trim(FatPedRecNFe.Value) = '' then begin

                                      pnMensag.Caption := 'Aguarde. Enviando informações da nota.';

                                      DeleteFile(ArqRe1);
                                      DeleteFile(ArqRe2);
                                      DeleteFile(ArqRs1);
                                      DeleteFile(ArqRs2);

                                      AssignFile(ArqEnv,ArqRe1);

                                      Rewrite(ArqEnv);

                                      Writeln(ArqEnv,'EM0201' +
                                                     UfeEmp +
                                                     FatPedSeqNFe.Value +
                                                     fNumZeros(IntToStr(FatPedLotNfe.Value),9));

                                      with quSQL,SQL do begin

                                           Close;
                                           Text := ' Select FinCie.NomCie,'+
                                                   '        FinCie.SigNfe '+
                                                   ' From FinCie'+
                                                   ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie));
                                           Open;

                                           Id_EmpCie := IntToStr(Id_FinUfe)+FieldbyName('SigNfe').AsString;

                                           CidEmp := fLimpaAcentos(FieldbyName('NomCie').AsString);

                                           CidEmp := copy(Trim(CidEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(CidEmp),1,60)));

                                      end;

                                      DesNat := copy(Trim(FatPedDesNat.Value),1,60) + fReplicate(' ',60 - Length(copy(Trim(FatPedDesNat.Value),1,60)));

                                      TipCnd := '0';

                                      if FatPedIntFin.Value = 'Nao' then
                                         TipCnd := '2'
                                      else
                                         begin

                                         with quSQL,SQL do begin

                                              Close;
                                              Text := ' Select Sum(FatPe3.PraPe3) as QtdReg'+
                                                      ' From FatPe3'+
                                                      ' Where FatPe3.CodEmp = '+ QuotedStr(IntToStr(FatPedCodEmp.Value)) +
                                                      '   and FatPe3.DteRes = '+ QuotedStr(fDateToSQL(FatPedDteRes.Value)) +
                                                      '   and FatPe3.NumRes = '+ QuotedStr(IntToStr(FatPedNumRes.Value)) +
                                                      '   and FatPe3.SeqLib = '+ QuotedStr(IntToStr(FatPedSeqLib.Value)) +
                                                      '   and FatPe3.SeqFat = '+ QuotedStr(IntToStr(FatPedSeqFat.Value)) ;
                                              Open;

                                              if FieldbyName('QtdReg').AsInteger > 0 then TipCnd := '1';

                                         end;
                                      end;

                                      Writeln(ArqEnv,'EM0202'+                                                        // Uso interno do sistema
                                                     IntToStr(Id_FinUfe)+                                             // Código da UF do emitente do documento fiscal
                                                     copy(FatPedSeqNFE.Value,35,09)+                                  // Código númerico que compõe a chave de acesso
                                                     DesNat+                                                          // Descrição da natureza de operação
                                                     TipCnd+                                                          // Indicador da forma de pagamento 0-Pagamento à vista 1-Pagamento à prazo 2-Outros
                                                     '55'+                                                            // Código do Modelo do documento fiscal
                                                     '1'+                                                             // Série do documento fiscal
                                                     fNumZeros(IntToStr(FatPedNroNfs.Value),9)+                       // Número do documento fiscal
                                                     copy(FormatDateTime('dd/mm/yyyy',FatPedDteFat.Value),7,4) +'-'+  // Data de emissão do documento fiscal
                                                     copy(FormatDateTime('dd/mm/yyyy',FatPedDteFat.Value),4,2) +'-'+
                                                     copy(FormatDateTime('dd/mm/yyyy',FatPedDteFat.Value),1,2) +
                                                     '0000-00-00'+                                                    // Data de saida ou entrada da Mercadoria/Produto
                                                     '1'+                                                             // Tipo do documento fiscal
                                                     Id_EmpCie+                                                       // Código do Municipio de Ocorrência do Fato Gerador
                                                     '1'+                                                             // Formato de Impressao do DANFE
                                                     '1'+                                                             // Forma de emissão da NF-e
                                                     copy(FatPedSeqNFE.Value,44,1)+                                   // Digito verificador da Chave de Acesso da NF-e
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
                                                     '1058'+                                                          // Código do País 1058 - Brasil
                                                     'BRASIL                                                      '+  // Brasil ou BRASIL
                                                     FonEmp+                                                          // Telefone
                                                     InsEmp+                                                          // IE
                                                     '              '+                                                // IE do Substituto tributário
                                                     '               '+                                               // IM inscrição municipal
                                                     '       ');                                                      // CNAE Fiscal

                                      if FatPedTefCli.Value <> '' then
                                         EndCli := Trim(FatPedTefCli.Value)+ ' ' +FatPedEnfCli.Value
                                      else
                                         EndCli := FatPedEnfCli.Value;

                                      EndCli := fLimpaAcentos(EndCli);

                                      NumCli := fLimpaAcentos(FatPedNrfCli.Value);
                                      RefCli := fLimpaAcentos(FatPedRffCli.Value);
                                      BaiCli := fLimpaAcentos(FatPedBafCli.Value);
                                      UfeCli := fLimpaAcentos(FatPedUfeCli.Value);

                                      CepCli := FatPedCefCli.Value;

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
                                                     '1058'+                                                         // Código do País 1058 - Brasil
                                                     'BRASIL                                                      '+ // Brasil ou BRASIL
                                                     FonCli+                                                         // Telefone
                                                     InsCli+                                                         // IE
                                                     NroSuf);                                                        // Inscrição SUFRAMA

                                      if (Trim(FatPedCepCli.Value) <> Trim(FatPedCefCli.Value)) or
                                         (Trim(FatPedTenCli.Value) <> Trim(FatPedTefCli.Value)) or
                                         (Trim(FatPedEndCli.Value) <> Trim(FatPedEnfCli.Value)) or
                                         (Trim(FatPedRefCli.Value) <> Trim(FatPedRffCli.Value)) or
                                         (Trim(FatPedNumCli.Value) <> Trim(FatPedNrfCli.Value)) or
                                         (Trim(FatPedBaiCli.Value) <> Trim(FatPedBafCli.Value)) or
                                         (Trim(FatPedCidCli.Value) <> Trim(FatPedCifCli.Value)) or
                                         (Trim(FatPedUfeCli.Value) <> Trim(FatPedUffCli.Value)) then begin

                                         if Trim(FatPedCgeCli.Value) <> '' then
                                            CgcCli := copy(Trim(FatPedCgeCli.Value),1,14) + fReplicate(' ',14 - Length(copy(Trim(FatPedCgeCli.Value),1,14)));

                                         if FatPedTenCli.Value <> '' then
                                            EndCli := Trim(FatPedTenCli.Value)+ ' ' +FatPedEndCli.Value
                                         else
                                            EndCli := FatPedEndCli.Value;

                                         EndCli := fLimpaAcentos(EndCli);

                                         NumCli := fLimpaAcentos(FatPedNumCli.Value);
                                         RefCli := fLimpaAcentos(FatPedRefCli.Value);
                                         BaiCli := fLimpaAcentos(FatPedBaiCli.Value);
                                         UfeCli := fLimpaAcentos(FatPedUfeCli.Value);

                                         EndCli := copy(Trim(EndCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndCli),1,60)));
                                         NumCli := copy(Trim(NumCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumCli),1,60)));
                                         RefCli := copy(Trim(RefCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefCli),1,60)));
                                         BaiCli := copy(Trim(BaiCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiCli),1,60)));
                                         UfeCli := copy(Trim(UfeCli),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeCli),1,02)));

                                         CepCli := fReplicate('0',08 - Length(copy(Trim(CepCli),1,08))) + copy(Trim(CepCli),1,08);

                                         Id_FinUfe := FatPedId_FinUfe.Value;
                                         Id_FinCie := FatPedId_FinCie.Value;

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

                                      TrbPis := Trim(FatPedTrbPis.Value);
                                      TrbCof := Trim(FatPedTrbCof.Value);

                                      TrbPis := copy(Trim(TrbPis),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbPis),1,03)));
                                      TrbCof := copy(Trim(TrbCof),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbCof),1,03)));

                                      PerPis := fSubstDecimal(FormatFloat('##0.00',FatPedPerPis.Value),05);
                                      PerCof := fSubstDecimal(FormatFloat('##0.00',FatPedPerCof.Value),05);

                                      with quSQL,SQL do begin

                                           Close;
                                           Text := ' Select FatPe2.NroPe2,'+
                                                   '        FatPe2.CodClp,'+
                                                   '        FatPe2.CodGru,'+
                                                   '        FatPe2.CodSub,'+
                                                   '        FatPe2.CodPro,'+
                                                   '        FatPe2.DesPe2,'+
                                                   '        FatPe2.ObsPe2,'+
                                                   '        FatPe2.ClsIpi,'+
                                                   '        FatPe2.CodCfo,'+
                                                   '        FatPe2.CodSt1,'+
                                                   '        FatPe2.CodSt2,'+
                                                   '        FatPe2.CodUnd,'+
                                                   '        FatPe2.QtpPe2,'+
                                                   '        FatPe2.VlqPe2,'+
                                                   '        FatPe2.TotPe2,'+
                                                   '        FatPe2.IcmPe2,'+
                                                   '        FatPe2.BscIcm,'+
                                                   '        FatPe2.RedIcm,'+
                                                   '        FatPe2.BasIcm,'+
                                                   '        FatPe2.TotIcm,'+
                                                   '        FatPe2.IpiPe2,'+
                                                   '        FatPe2.TrbIpi,'+
                                                   '        FatPe2.BscIpi,'+
                                                   '        FatPe2.RedIpi,'+
                                                   '        FatPe2.BasIpi,'+
                                                   '        FatPe2.TotIpi,'+
                                                   '        FatPe2.IcmSub,'+
                                                   '        FatPe2.MrgSub,'+
                                                   '        FatPe2.BaseSb,'+
                                                   '        FatPe2.BasSub,'+
                                                   '        FatPe2.TotSub,'+
                                                   '        FatPe2.TotDsr,'+
                                                   '        FatPe2.TotFrt,'+
                                                   '        FatPe2.TotSeg,'+
                                                   '        FatPe2.TotDes,'+
                                                   '        FatPe2.TotPis,'+
                                                   '        FatPe2.TotCof '+
                                                   ' From FatPe2'+
                                                   ' Where FatPe2.CodEmp = '+ QuotedStr(IntToStr(FatPedCodEmp.Value)) +
                                                   '   and FatPe2.DteRes = '+ QuotedStr(fDateToSQL(FatPedDteRes.Value)) +
                                                   '   and FatPe2.NumRes = '+ QuotedStr(IntToStr(FatPedNumRes.Value)) +
                                                   '   and FatPe2.SeqLib = '+ QuotedStr(IntToStr(FatPedSeqLib.Value)) +
                                                   '   and FatPe2.SeqFat = '+ QuotedStr(IntToStr(FatPedSeqFat.Value)) +
                                                   ' Order by FatPe2.NroPe2';
                                           Open;
                                           First;

                                      end;

                                      while not quSQL.EOF do begin

                                            CodPro := quSQL.FieldbyName('CodClp').AsString+
                                                      quSQL.FieldbyName('CodGru').AsString+
                                                      quSQL.FieldbyName('CodSub').AsString+
                                                      quSQL.FieldbyName('CodPro').AsString;

                                            DesPro := AllTrim(fLimpaAcentos(Trim(quSQL.FieldbyName('DesPe2').AsString)+ ' ' +Trim(quSQL.FieldbyName('ObsPe2').AsString)));

                                            DesPro := copy(DesPro,1,120);
                                      
                                            ClsIpi := Trim(fLimpaStr(quSQL.FieldbyName('ClsIpi').AsString));
                                            CodCfo := Trim(fLimpaStr(quSQL.FieldbyName('CodCfo').AsString));

                                            CodUnd := Trim(quSQL.FieldbyName('CodUnd').AsString);
                                            CodSt1 := Trim(quSQL.FieldbyName('CodSt1').AsString);
                                            CodSt2 := Trim(quSQL.FieldbyName('CodSt2').AsString);
                                            TrbIpi := Trim(quSQL.FieldbyName('TrbIpi').AsString);

                                            QtdPro := fSubstDecimal(FormatFloat('########0.0000',quSQL.FieldbyName('QtpPe2').AsFloat),15);
                                            VluPro := fSubstDecimal(FormatFloat('########0.0000',quSQL.FieldbyName('VlqPe2').AsFloat),15);

                                            TotPro := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotPe2').AsFloat),15);
                                            BasIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasIcm').AsFloat),15);
                                            RedIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('RedIcm').AsFloat),15);
                                            PerIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IcmPe2').AsFloat),05);
                                            TotIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIcm').AsFloat),15);
                                            BasIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasIpi').AsFloat),15);
                                            PerIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IpiPe2').AsFloat),05);
                                            TotIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIpi').AsFloat),15);
                                            MrgSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('MrgSub').AsFloat),05);
                                            IcmSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IcmSub').AsFloat),05);
                                            BasSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasSub').AsFloat),15);
                                            TotSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotSub').AsFloat),15);
                                            TotDsr := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotDsr').AsFloat),15);
                                            TotFrt := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotFrt').AsFloat),15);
                                            TotSeg := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotSeg').AsFloat),15);
                                            TotDes := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotDes').AsFloat),15);

                                            BasPis := fSubstDecimal(FormatFloat('########0.00',(quSQL.FieldbyName('TotPe2').AsFloat - quSQL.FieldbyName('TotDsr').AsFloat)),15);
                                            BasCof := fSubstDecimal(FormatFloat('########0.00',(quSQL.FieldbyName('TotPe2').AsFloat - quSQL.FieldbyName('TotDsr').AsFloat)),15);

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
                                                           fNumZeros(IntToStr(quSQL.FieldbyName('NroPe2').AsInteger),3)+ // Nro. do item
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
                                                           fNumZeros(IntToStr(quSQL.FieldbyName('NroPe2').AsInteger),3)+ // Nro. do item
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
                                                           fNumZeros(IntToStr(quSQL.FieldbyName('NroPe2').AsInteger),3)+ // Nro. do item
                                                           TrbIpi+                                                       // IPI tributado
                                                           BasIpi+                                                       // Valor da BC do IPI
                                                           PerIpi+                                                       // Aliquota do imposto
                                                           TotIpi+                                                       // Valor do IPI
                                                           Id_EstSip);                                                   // Situação tributária do IPI

                                            Writeln(ArqEnv,'EM0209'+                                                     // Uso interno do sistema
                                                           '01'+                                                         // Tipo de operação
                                                           fNumZeros(IntToStr(quSQL.FieldbyName('NroPe2').AsInteger),3)+ // Nro. do item
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
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedBasIcm.Value),15)+  // Base de Calculo do ICMS
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedTotIcm.Value),15)+  // Valor Total do ICMS
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedBasSub.Value),15)+  // Base de Calculo do ICMS ST
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedTotSub.Value),15)+  // Valor Total do ICMS ST
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedTotFat.Value),15)+  // Valor Total dos produtos e serviços
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedTotFrt.Value),15)+  // Valor Total do Frete
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedTotSeg.Value),15)+  // Valor Total do Seguro
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedTotDsr.Value),15)+  // Valor Total do Desconto
                                                     '           0.00'+                                                 // Valor Total do II
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedTotIpi.Value),15)+  // Valor Total do IPI
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedTotPis.Value),15)+  // Valor Total do PIS
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedTotCof.Value),15)+  // Valor Total do COFINS
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedTotDes.Value),15)+  // Outras Despesas Acessórias
                                                     fSubstDecimal(FormatFloat('########0.00',FatPedTotGer.Value),15)); // Valor Total da NFe

                                      if FatPedTipFrt.Value = '2' then
                                         TipFrt := '1'
                                      else
                                         TipFrt := '0';

                                      if Length(Trim(FatPedCgcTra.Value)) = 11 then
                                         CpfTra := FatPedCgcTra.Value
                                      else
                                         CgcTra := FatPedCgcTra.Value;

                                      Id_FinUfe := FatPedId_TraUfe.Value;
                                      Id_FinCie := FatPedId_TraCie.Value;

                                      InsTra := fLimpaStr(FatPedInsTra.Value);

                                      NomTra := fLimpaAcentos(FatPedNomTra.Value);

                                      if Trim(FatPedTenTra.Value) <> '' then
                                         EndTra := Trim(FatPedTenTra.Value)+ ' ' +FatPedEndTra.Value
                                      else
                                         EndTra := FatPedEndTra.Value;

                                      EndTra := fLimpaAcentos(EndTra);

                                      NumTra := fLimpaAcentos(FatPedNumTra.Value);
                                      RefTra := fLimpaAcentos(FatPedRefTra.Value);
                                      BaiTra := fLimpaAcentos(FatPedBaiTra.Value);
                                      UfeTra := fLimpaAcentos(FatPedUfeTra.Value);

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

                                      PesLiq := fSubstDecimal(FormatFloat('########0.000',FatPedInfLiq.Value),15);
                                      PesBrt := fSubstDecimal(FormatFloat('########0.000',FatPedInfBrt.Value),15);

                                      EspFat := fLimpaAcentos(FatPedEspFat.Value);
                                      MarFat := fLimpaAcentos(FatPedMarFat.Value);

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
                                                     fNumZeros(IntToStr(FatPedAltVol.Value),15)+ // Quantidade de volumes
                                                     MarFat+                                     // Especie dos volumes transportados
                                                     EspFat+                                     // Marca dos volumes transportados
                                                     PesLiq+                                     // Peso Liquido (em Kg)
                                                     PesBrt);                                    // Peso Bruto (em Kg)

                                      if FatPedIntFin.Value = 'Sim' then begin

                                         NroDoc := fSubstDecimal(IntToStr(FatPedNroNfs.Value),60);

                                         Writeln(ArqEnv,'EM0212'+                                                          // Uso interno do sistema
                                                        NroDoc+                                                            // Número da fatura
                                                        fSubstDecimal(FormatFloat('########0.00',FatPedTotGer.Value),15)+  // Valor Original
                                                        '           0.00'+                                                 // Valor do desconto
                                                        fSubstDecimal(FormatFloat('########0.00',FatPedTotGer.Value),15)); // Valor Original

                                         with quSQL,SQL do begin

                                              Close;              
                                              Text := ' Select FatPe3.NroPe3,'+
                                                      '        FatPe3.DtvPe3,'+
                                                      '        FatPe3.VlpPe3 '+
                                                      ' From FatPe3'+
                                                      ' Where FatPe3.CodEmp = '+ QuotedStr(IntToStr(FatPedCodEmp.Value)) +
                                                      '   and FatPe3.DteRes = '+ QuotedStr(fDateToSQL(FatPedDteRes.Value)) +
                                                      '   and FatPe3.NumRes = '+ QuotedStr(IntToStr(FatPedNumRes.Value)) +
                                                      '   and FatPe3.SeqLib = '+ QuotedStr(IntToStr(FatPedSeqLib.Value)) +
                                                      '   and FatPe3.SeqFat = '+ QuotedStr(IntToStr(FatPedSeqFat.Value)) +
                                                      ' Order by FatPe3.NroPe3';
                                              Open;
                                              First;

                                         end;

                                         while not quSQL.EOF do begin

                                               NroDoc := IntToStr(FatPedNroNfs.Value)+'-'+fNumZeros(IntToStr(quSQL.FieldbyName('NroPe3').AsInteger),2);

                                               NroDoc := copy(Trim(NroDoc),1,60) + fReplicate(' ',60 - Length(copy(Trim(NroDoc),1,60)));

                                               Writeln(ArqEnv,'EM0213'+                                                                           // Uso interno do sistema
                                                              NroDoc+                                                                             // Número da fatura
                                                              copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvPe3').AsDateTime),7,4) +'-'+ // Data de vencimento
                                                              copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvPe3').AsDateTime),4,2) +'-'+
                                                              copy(FormatDateTime('dd/mm/yyyy',quSQL.FieldbyName('DtvPe3').AsDateTime),1,2) +
                                                              fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('VlpPe3').AsFloat),15)); // Valor da duplicata

                                               Application.ProcessMessages;

                                               quSQL.Next;

                                         end;
                                      end;

                                      ObsFat := '';

                                      if Trim(fLimpaAcentos(FatPedOb1Fat.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatPedOb1Fat.Value));

                                      if Trim(fLimpaAcentos(FatPedOb2Fat.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatPedOb2Fat.Value));

                                      if Trim(fLimpaAcentos(FatPedOb3Fat.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatPedOb3Fat.Value));

                                      if Trim(fLimpaAcentos(FatPedOb4Fat.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatPedOb4Fat.Value));

                                      if Trim(fLimpaAcentos(FatPedOb5Fat.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatPedOb5Fat.Value));

                                      if Trim(fLimpaAcentos(FatPedOb6Fat.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatPedOb6Fat.Value));

                                      if Trim(fLimpaAcentos(FatPedOb7Fat.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatPedOb7Fat.Value));

                                      if Trim(fLimpaAcentos(FatPedOb8Fat.Value)) <> '' then
                                         ObsFat := ObsFat + AllTrim(fLimpaAcentos(FatPedOb8Fat.Value));

                                      ObsFat := copy(ObsFat,1,256);

                                      ObsFat := copy(Trim(ObsFat),1,256) + fReplicate(' ',256 - Length(copy(Trim(ObsFat),1,256)));

                                      Writeln(ArqEnv,'EM0214'+ // Uso interno do sistema
                                                     ObsFat);  // Informações adicionais de interesse do Fisco

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

                                                  if pos(FatPedSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

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

                                            FatPed.Edit;

                                            FatPedFlgAtu.Value := 'F';
                                            FatPedRETNFE.Value := copy(Trim(MSGNFE),1,100);

                                            with FatPed do begin

                                                 fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                 try

                                                    ApplyUpdates; {Tenta aplicar as alterações};

                                                    fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                 except

                                                    fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                    if FatPed.State <> dsBrowse then FatPed.CancelUpdates;

                                                    FatPed.Close;
                                                    FatPed.Open;

                                                    grFatPed.SetFocus;

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

                                               FatPed.Edit;

                                               FatPedFlgAtu.Value := 'F';
                                               FatPedHreNFe.Value := HRENFE;
                                               FatPedUsuNFe.Value := GUsu_Id;
                                               FatPedRecNFe.Value := Trim(RECNFE);
                                               FatPedDteNFe.Value := StrToDate(DTENFE);

                                               with FatPed do begin

                                                    fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                    try

                                                       ApplyUpdates; {Tenta aplicar as alterações};

                                                       fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                    except

                                                       fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                       if FatPed.State <> dsBrowse then FatPed.CancelUpdates;

                                                       FatPed.Close;
                                                       FatPed.Open;

                                                       grFatPed.SetFocus;

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

                                            fmManLn7_NFE.Enabled := True;

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

                                   fmManLn7_NFE.Enabled := True;

                                   pnMensag.Visible := False;

                                   fmsgErro(MSGNFE,Nil);

                                end;
                             end;

                             if Trim(FatPedRecNFe.Value) <> '' then begin

                                RecNFE := copy(Trim(FatPedRecNFe.Value),1,15) + fReplicate(' ',15 - Length(copy(Trim(FatPedRecNFe.Value),1,15)));

                                pnMensag.Caption := 'Aguarde. Consultando protocolo.';

                                DeleteFile(ArqRe1);
                                DeleteFile(ArqRe2);
                                DeleteFile(ArqRs1);
                                DeleteFile(ArqRs2);

                                AssignFile(ArqEnv,ArqRe1);

                                Rewrite(ArqEnv);

                                Writeln(ArqEnv,'EM03' +
                                               UfeEmp +
                                               FatPedSeqNFe.Value +
                                               RecNFE +
                                               'Sim' +
                                               fNumZeros(IntToStr(FatPedLotNfe.Value),9)+
                                               fNumZeros(IntToStr(FatPedNroNfs.Value),9)+
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

                                            if pos(FatPedSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

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

                                      FatPed.Edit;

                                      FatPedFlgAtu.Value := 'F';
                                      FatPedRETNFe.Value := copy(Trim(MSGNFE),1,100);

                                      with FatPed do begin

                                           fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                           try

                                              ApplyUpdates; {Tenta aplicar as alterações};

                                              fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                           except

                                              fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                              if FatPed.State <> dsBrowse then FatPed.CancelUpdates;

                                              FatPed.Close;
                                              FatPed.Open;

                                              grFatPed.SetFocus;

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

                                         FatPed.Edit;

                                         FatPedFlgAtu.Value := 'F';
                                         FatPedRETNFe.Value := copy(Trim(MSGNFE),1,100);

                                         with FatPed do begin

                                              fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                              try

                                                 ApplyUpdates; {Tenta aplicar as alterações};

                                                 fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                              except

                                                 fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                 if FatPed.State <> dsBrowse then FatPed.CancelUpdates;

                                                 FatPed.Close;
                                                 FatPed.Open;

                                                 grFatPed.SetFocus;

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

                                            FatPed.Edit;

                                            FatPedFlgAtu.Value := 'F';
                                            FatPedEnvNFe.Value := 'Sim';
                                            FatPedProNFe.Value := Trim(PRONFE);
                                            FatPedDtePNF.Value := StrToDate(DTEPNF);
                                            FatPedHrePNF.Value := HREPNF;

                                            with FatPed do begin

                                                 fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                 try

                                                    ApplyUpdates; {Tenta aplicar as alterações};

                                                    fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                 except

                                                    fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                    if FatPed.State <> dsBrowse then FatPed.CancelUpdates;

                                                    FatPed.Close;
                                                    FatPed.Open;

                                                    grFatPed.SetFocus;

                                                    raise;

                                                 end;

                                                 CommitUpdates; {sucesso!, limpa o cache...}

                                            end;

                                            FatPed.Close;
                                            FatPed.Open;
                                      
                                            if DirectoryExists(sArqBackup) then begin

                                               NomArq := sArqBackup +'/processadas/'+ FatPedRecNFe.Value +'_v1.10-procNFe.xml';

                                               FatArq.Close;
                                               FatArq.Params[0].AsInteger  := FatPedCodEmp.Value;
                                               FatArq.Params[1].AsDateTime := FatPedDteRes.Value;
                                               FatArq.Params[2].AsInteger  := FatPedNumRes.Value;
                                               FatArq.Params[3].AsInteger  := FatPedSeqLib.Value;
                                               FatArq.Params[4].AsInteger  := FatPedSeqFat.Value;
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

                                            if FatPedEnvNfe.Value = 'Sim' then begin

                                               if fMsg('Confirma impressão da DANFE ?','O') then begin

                                                  with quSQL,SQL do begin

                                                       Close;
                                                       Text := ' Delete From FatNfe'+
                                                               ' Where FatNfe.Fat_CodEmp = '+ QuotedStr(IntToStr(FatPedCodEmp.Value)) +
                                                               '   and FatNfe.Fat_DteRes = '+ QuotedStr(fDateToSQL(FatPedDteRes.Value)) +
                                                               '   and FatNfe.Fat_NumRes = '+ QuotedStr(IntToStr(FatPedNumRes.Value)) +
                                                               '   and FatNfe.Fat_SeqLib = '+ QuotedStr(IntToStr(FatPedSeqLib.Value)) +
                                                               '   and FatNfe.Fat_SeqFat = '+ QuotedStr(IntToStr(FatPedSeqFat.Value)) ;
                                                       ExecSQL;

                                                  end;
                                            
                                                  with quSQL,SQL do begin

                                                       Close;
                                                       Text := ' Select FatPe2.CodClp,'+
                                                               '        FatPe2.CodGru,'+
                                                               '        FatPe2.CodSub,'+
                                                               '        FatPe2.CodPro,'+
                                                               '        FatPe2.CodTam,'+
                                                               '        FatPe2.CodCor,'+
                                                               '        FatPe2.DesPe2,'+
                                                               '        FatPe2.ObsPe2,'+
                                                               '        FatPe2.CodCfo,'+
                                                               '        FatPe2.ClsIpi,'+
                                                               '        FatPe2.CodSt1,'+
                                                               '        FatPe2.CodSt2,'+
                                                               '        FatPe2.CodUnd,'+
                                                               '        FatPe2.QtpPe2,'+
                                                               '        FatPe2.VlqPe2,'+
                                                               '        FatPe2.TotPe2,'+
                                                               '        FatPe2.BasIcm,'+
                                                               '        FatPe2.TotIcm,'+
                                                               '        FatPe2.TotIpi,'+
                                                               '        FatPe2.IcmPe2,'+
                                                               '        FatPe2.IpiPe2,'+
                                                               '        FatPe2.NroPe2 '+
                                                               ' From FatPe2'+
                                                               ' Where FatPe2.CodEmp = '+ Quotedstr(IntToStr(FatPedCodEmp.Value)) +
                                                               '   and FatPe2.DteRes = '+ Quotedstr(fDateToSQL(FatPedDteRes.Value)) +
                                                               '   and FatPe2.NumRes = '+ Quotedstr(IntToStr(FatPedNumRes.Value)) +
                                                               '   and FatPe2.SeqLib = '+ Quotedstr(IntToStr(FatPedSeqLib.Value)) +
                                                               '   and FatPe2.SeqFat = '+ Quotedstr(IntToStr(FatPedSeqFat.Value)) +
                                                               ' Order by FatPe2.NroPe2';
                                                       Open;
                                                       First;

                                                  end;

                                                  NroReg := 0;

                                                  while not quSQL.EOF do begin

                                                        Inc(NroReg);

                                                        with quSQL1,SQL do begin

                                                             Close;
                                                             Text := ' Insert Into FatNfe(Fat_CodEmp,Fat_DteRes,Fat_NumRes,Fat_SeqLib,Fat_SeqFat,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DesNfe,CfoNfe,NcmNfe,SitNfe,UndNfe,QtpNfe,VlqNfe,TotNfe,BasIcm,TotIcm,TotIpi,IcmNfe,IpiNfe,NroNfe,IteNfe)'+
                                                                     '             Values(:Fat_CodEmp,:Fat_DteRes,:Fat_NumRes,:Fat_SeqLib,:Fat_SeqFat,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DesNfe,:CfoNfe,:NcmNfe,:SitNfe,:UndNfe,:QtpNfe,:VlqNfe,:TotNfe,:BasIcm,:TotIcm,:TotIpi,:IcmNfe,:IpiNfe,:NroNfe,:IteNfe)';

                                                             with Params do begin

                                                                  Params[00].AsInteger  := FatPedCodEmp.Value;
                                                                  Params[01].AsDateTime := FatPedDteRes.Value;
                                                                  Params[02].AsInteger  := FatPedNumRes.Value;
                                                                  Params[03].AsInteger  := FatPedSeqLib.Value;
                                                                  Params[04].AsInteger  := FatPedSeqFat.Value;
                                                                  Params[05].AsString   := quSQL.FieldbyName('CodClp').AsString;
                                                                  Params[06].AsString   := quSQL.FieldbyName('CodGru').AsString;
                                                                  Params[07].AsString   := quSQL.FieldbyName('CodSub').AsString;
                                                                  Params[08].AsString   := quSQL.FieldbyName('CodPro').AsString;
                                                                  Params[09].AsString   := quSQL.FieldbyName('CodTam').AsString;
                                                                  Params[10].AsString   := quSQL.FieldbyName('CodCor').AsString;
                                                                  Params[11].AsString   := Trim(quSQL.FieldbyName('DesPe2').AsString);
                                                                  Params[12].AsString   := Trim(quSQL.FieldbyName('CodCfo').AsString);
                                                                  Params[13].AsString   := Trim(quSQL.FieldbyName('ClsIpi').AsString);
                                                                  Params[14].AsString   := quSQL.FieldbyName('CodSt1').AsString+ ' ' +quSQL.FieldbyName('CodSt2').AsString;
                                                                  Params[15].AsString   := Trim(quSQL.FieldbyName('CodUnd').AsString);
                                                                  Params[16].AsFloat    := quSQL.FieldbyName('QtpPe2').AsFloat;
                                                                  Params[17].AsFloat    := quSQL.FieldbyName('VlqPe2').AsFloat;
                                                                  Params[18].AsFloat    := quSQL.FieldbyName('TotPe2').AsFloat;
                                                                  Params[19].AsFloat    := quSQL.FieldbyName('BasIcm').AsFloat;
                                                                  Params[20].AsFloat    := quSQL.FieldbyName('TotIcm').AsFloat;
                                                                  Params[21].AsFloat    := quSQL.FieldbyName('TotIpi').AsFloat;
                                                                  Params[22].AsFloat    := quSQL.FieldbyName('IcmPe2').AsFloat;
                                                                  Params[23].AsFloat    := quSQL.FieldbyName('IpiPe2').AsFloat;
                                                                  Params[24].AsInteger  := NroReg;
                                                                  Params[25].AsString   := 'Sim';

                                                             end;

                                                             ExecSQL;

                                                        end;

                                                        if Trim(quSQL.FieldbyName('ObsPe2').AsString) <> '' then begin

                                                           Inc(NroReg);

                                                           with quSQL1,SQL do begin

                                                                Close;
                                                                Text := 'Insert Into FatNfe(Fat_CodEmp,Fat_DteRes,Fat_NumRes,Fat_SeqLib,Fat_SeqFat,DesNfe,NroNfe,IteNfe)'+
                                                                        '            Values(:Fat_CodEmp,:Fat_DteRes,:Fat_NumRes,:Fat_SeqLib,:Fat_SeqFat,:DesNfe,:NroNfe,:IteNfe)';

                                                                with Params do begin

                                                                     Params[0].AsInteger  := FatPedCodEmp.Value;
                                                                     Params[1].AsDateTime := FatPedDteRes.Value;
                                                                     Params[2].AsInteger  := FatPedNumRes.Value;
                                                                     Params[3].AsInteger  := FatPedSeqLib.Value;
                                                                     Params[4].AsInteger  := FatPedSeqFat.Value;
                                                                     Params[5].AsString   := Trim(quSQL.FieldbyName('ObsPe2').AsString);
                                                                     Params[6].AsInteger  := NroReg;
                                                                     Params[7].AsString   := 'Nao';

                                                                end;

                                                                ExecSQL;

                                                           end;
                                                        end;

                                                        quSQL.Next;

                                                  end;

                                                  GEmail := FatPedEm1Cli.Value;

                                                  sNumeroNF := copy(fNumZeros(IntToStr(FatPedNroNfs.Value),9),1,3)+ '.' +
                                                               copy(fNumZeros(IntToStr(FatPedNroNfs.Value),9),4,3)+ '.' +
                                                               copy(fNumZeros(IntToStr(FatPedNroNfs.Value),9),7,3);

                                                  GAssunto := 'NF-e: '+ sNumeroNF +' / 001 '+UpperCase(Trim(NomEmp));

                                                  try

                                                     fmManE01_NFE := TfmManE01_NFE.Create(Self);

                                                     fmManE01_NFE.FatPed.Close;
                                                     fmManE01_NFE.FatPed.Params[0].AsInteger  := FatPedCodEmp.Value;
                                                     fmManE01_NFE.FatPed.Params[1].AsDateTime := FatPedDteRes.Value;
                                                     fmManE01_NFE.FatPed.Params[2].AsInteger  := FatPedNumRes.Value;
                                                     fmManE01_NFE.FatPed.Params[3].AsInteger  := FatPedSeqLib.Value;
                                                     fmManE01_NFE.FatPed.Params[4].AsInteger  := FatPedSeqFat.Value;
                                                     fmManE01_NFE.FatPed.Open;

                                                     fmManE01_NFE.RLReport1.PreviewModal;

                                                  finally

                                                     FreeAndNil(fmManE01_NFE);

                                                  end;

                                                  if fMsg('DANFE impressa corretamente ?','O') then begin

                                                     FatPed.Edit;


                                                     FatPedFlgAtu.Value := 'F';
                                                     FatPedImpNFe.Value := 'Sim';
                                                     FatPedFlgImp.value := 'Sim'; //Rolando 19.03.2010

                                                     with FatPed do begin

                                                          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                          try

                                                             ApplyUpdates; {Tenta aplicar as alterações};

                                                             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                          except

                                                             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                             if FatPed.State <> dsBrowse then FatPed.CancelUpdates;

                                                             FatPed.Close;
                                                             FatPed.Open;

                                                             grFatPed.SetFocus;

                                                             raise;

                                                          end;

                                                          CommitUpdates; {sucesso!, limpa o cache...}

                                                     end;
                                                  end;
                                               end;
                                      
                                               with FatPed,SQL do begin

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

                                         fmManLn7_NFE.Enabled := True;

                                         pnMensag.Visible := False;

                                         FatPed.Edit;

                                         FatPedFlgAtu.Value := 'F';

                                         FatPedRecNFe.Clear;

                                         with FatPed do begin

                                              fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                              try

                                                 ApplyUpdates; {Tenta aplicar as alterações};

                                                 fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                              except

                                                 fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                 if FatPed.State <> dsBrowse then FatPed.CancelUpdates;

                                                 FatPed.Close;
                                                 FatPed.Open;

                                                 grFatPed.SetFocus;

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

                                      fmManLn7_NFE.Enabled := True;

                                      pnMensag.Visible := False;

                                      fmsgErro(MSGNFE,Nil);

                                   end;
                                end;
                             end;

                             end
                          else
                             begin

                             fmManPri.Enabled := True;

                             fmManLn7_NFE.Enabled := True;

                             pnMensag.Visible := False;

                             fmsgErro('Código de municipio para emissão de NFe não informado no cadastro da empresa.',Nil);

                          end;

                          end
                       else
                          begin

                          fmManPri.Enabled := True;

                          fmManLn7_NFE.Enabled := True;

                          pnMensag.Visible := False;

                          fmsgErro('Código da UF para emissão de NFe não informado no cadastro da empresa.',Nil);

                       end;

                       fmManPri.Enabled := True;

                       fmManLn7_NFE.Enabled := True;

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

procedure TfmManLn7_NFE.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(FatPed.TotGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From FatPed LEFT JOIN FinCli ON (FatPed.CodCli = FinCli.CodCli)'+
               ' Where not FatPed.SitFat = '+ Quotedstr('Nao Concluido') +
               '   and FatPed.FlgNFE = '+ Quotedstr('Sim') +
               '   and FatPed.EnvNFE = '+ Quotedstr('Nao') ;

       if CodEmp > 0 then
          Text := Text + ' and FatPed.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                         ' and FatPed.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                         ' and FatPed.NumRes = '+ QuotedStr(IntToStr(NumRes)) +
                         ' and FatPed.SeqLib = '+ QuotedStr(IntToStr(SeqLib)) +
                         ' and FatPed.SeqFat = '+ QuotedStr(IntToStr(SeqFat)) ;

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

end;

procedure TfmManLn7_NFE.batualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     with FatPed,SQL do begin

          Close;
          Text := sBase + sFiltro +
                  ' and FatPed.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text);
          Open;

     end;

     end
  else
     begin

     with FatPed,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;
  end;

  CountRegistros;

end;

procedure TfmManLn7_NFE.FatPe2NCMPE2GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := Trim(FatPe2ClsIpi.Value);
end;

procedure TfmManLn7_NFE.grFatPe2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  NroPe2 : integer;
begin
  inherited;
  if key = 32 then begin

     if not pnalterar.Visible then begin

        if FatPe2CodEmp.Value > 0 then begin

           CodEmp := FatPe2CodEmp.Value;
           DteRes := FatPe2DteRes.Value;
           NumRes := FatPe2NumRes.Value;
           SeqLib := FatPe2SeqLib.Value;
           SeqFat := FatPe2SeqFat.Value;
           NroPe2 := FatPe2NroPe2.Value;

           with FatPed,SQL do begin

                Close;
                Text := sBase + ' Where FatPed.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                                '   and FatPed.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                                '   and FatPed.NumRes = '+ QuotedStr(IntToStr(NumRes)) +
                                '   and FatPed.SeqLib = '+ QuotedStr(IntToStr(SeqLib)) +
                                '   and FatPed.SeqFat = '+ QuotedStr(IntToStr(SeqFat)) ;
                Open;

           end;

           CountRegistros;

           if FatPedCodEmp.Value > 0 then begin

              FatPe2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;NroPe2',VarArrayOf([FatPe2CodEmp.Value,FatPe2DteRes.Value,FatPe2NumRes.Value,FatPe2SeqLib.Value,FatPe2SeqFat.Value,NroPe2]),[LoPartialKey]);

              bAtualizar.Enabled := False;

              benviar.Enabled := False;

              pnalterar.Visible := True;

              FatPe2.Edit;

              FatPe2CodCfo.Value := Trim(FatPe2CodCfo.Value);
              FatPe2ClsIpi.Value := Trim(FatPe2ClsIpi.Value);
              FatPe2CodSt1.Value := Trim(FatPe2CodSt1.Value);
              FatPe2CodSt2.Value := Trim(FatPe2CodSt2.Value);
              FatPe2CodUnd.Value := Trim(FatPe2CodUnd.Value);

              EdCodCfo.Text := Trim(FatPe2CodCfo.Value);
              EdClsIpi.Text := Trim(FatPe2ClsIpi.Value);
              EdCodSt1.Text := Trim(FatPe2CodSt1.Value);
              EdCodSt2.Text := Trim(FatPe2CodSt2.Value);
              EdCodUnd.Text := Trim(FatPe2CodUnd.Value);

              EdCodCfo.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManLn7_NFE.pnalterarExit(Sender: TObject);
var
  NroPe2 : integer;
begin
  inherited;
  if FatPe2.State <> dsBrowse then begin

     FatPe2CodCfo.Value := Trim(FatPe2CodCfo.Value);
     FatPe2ClsIpi.Value := Trim(FatPe2ClsIpi.Value);

     if Trim(FatPe2CodCfo.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodCfo);
     if Trim(FatPe2ClsIpi.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdClsIpi);
     if Trim(FatPe2CodSt1.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodSt1);
     if Trim(FatPe2CodSt2.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodSt2);
     if Trim(FatPe2CodUnd.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodUnd);

     NroPe2 := FatPe2NroPe2.Value;

     with FatPe2 do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if FatPe2.State = dsBrowse then FatPe2.Edit;

             EdCodCfo.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     FatPe2.Close;
     FatPe2.Open;

     FatPed.Close;
     FatPed.Open;

     FatPe2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqFat;NroPe2',VarArrayOf([FatPe2CodEmp.Value,FatPe2DteRes.Value,FatPe2NumRes.Value,FatPe2SeqLib.Value,FatPe2SeqFat.Value,NroPe2]),[LoPartialKey]);

     if FatPe2NroPe2.Value < FatPedQtiFat.Value then begin

        FatPe2.Next;

        FatPe2.Edit;

        FatPe2CodCfo.Value := Trim(FatPe2CodCfo.Value);
        FatPe2ClsIpi.Value := Trim(FatPe2ClsIpi.Value);
        FatPe2CodSt1.Value := Trim(FatPe2CodSt1.Value);
        FatPe2CodSt2.Value := Trim(FatPe2CodSt2.Value);
        FatPe2CodUnd.Value := Trim(FatPe2CodUnd.Value);

        EdCodCfo.Text := Trim(FatPe2CodCfo.Value);
        EdClsIpi.Text := Trim(FatPe2ClsIpi.Value);
        EdCodSt1.Text := Trim(FatPe2CodSt1.Value);
        EdCodSt2.Text := Trim(FatPe2CodSt2.Value);
        EdCodUnd.Text := Trim(FatPe2CodUnd.Value);

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

procedure TfmManLn7_NFE.EdCodCfoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not ( key in [ '0'..'9' ] )) and (not ( key in ['.'] )) then key := #0;
end;

procedure TfmManLn7_NFE.EdCodSt1Enter(Sender: TObject);
begin
  inherited;
  Label4.Caption := 'F1-Iniciais';
end;

procedure TfmManLn7_NFE.EdCodSt1Exit(Sender: TObject);
begin
  inherited;
  if Trim(FatPe2CodSt1.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstSt1 Where EstSt1.CodSt1 = '+ QuotedStr(FatPe2CodSt1.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Situação tributária informada não localizada.',EdCodSt1);

     end;
  end;
end;

procedure TfmManLn7_NFE.EdCodSt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt1 := TfmPsqSt1.Create(Self);
        fmPsqSt1.ShowModal;

        if Trim( fmPsqSt1.CodSt1 ) <> '' then FatPe2CodSt1.Value := fmPsqSt1.CodSt1;

     finally

        FreeAndNil(fmPsqSt1);

     end;

     EdCodSt1.SetFocus;

  end;
end;

procedure TfmManLn7_NFE.EdCodSt2Exit(Sender: TObject);
begin
  inherited;
  if Trim(FatPe2CodSt2.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstSt2 Where EstSt2.CodSt2 = '+ QuotedStr(FatPe2CodSt2.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Situação tributária informada não localizada.',EdCodSt2);

     end;
  end;
end;

procedure TfmManLn7_NFE.EdCodSt2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt2 := TfmPsqSt2.Create(Self);
        fmPsqSt2.ShowModal;

        if Trim( fmPsqSt2.CodSt2 ) <> '' then FatPe2CodSt2.Value := fmPsqSt2.CodSt2;

     finally

        FreeAndNil(fmPsqSt2);

     end;

     EdCodSt2.SetFocus;

  end;
end;

procedure TfmManLn7_NFE.EdCodUndExit(Sender: TObject);
begin
  inherited;
  if Trim(FatPe2CodUnd.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstUnd Where EstUnd.CodUnd = '+ QuotedStr(FatPe2CodUnd.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Unidade de medida informada não localizada.',EdCodUnd);

     end;
  end;
end;

procedure TfmManLn7_NFE.EdCodUndKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqUnd := TfmPsqUnd.Create(Self);
        fmPsqUnd.ShowModal;

        if Trim( fmPsqUnd.CodUnd ) <> '' then FatPe2CodUnd.Value := fmPsqUnd.CodUnd;

     finally

        FreeAndNil(fmPsqUnd);

     end;

     EdCodUnd.SetFocus;

  end;
end;

end.

