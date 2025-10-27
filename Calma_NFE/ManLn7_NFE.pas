unit ManLn7_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxColorPickEdit, dxColorCurrencyEdit, dxColorEdit,
  dxColorDateEdit, dxDBELib, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxfProgressBar, dxDBColorEdit, inifiles, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP, IdMessage, clipbrd,
  DBGrids, ulkJSON, uUtils;

type
  TfmManLn7_NFE = class(TfmPadrao)
    FatPed: TwwQuery;
    FatPe2: TwwQuery;
    DsFatPe2: TwwDataSource;
    DsFatPed: TwwDataSource;
    quSql: TwwQuery;
    FatPedDTEFAT: TDateTimeField;
    FatPedNRONFS: TIntegerField;
    FatPedTOTGER: TFloatField;
    FatPedCODPFA: TStringField;
    FatPedNOMCLI: TStringField;
    UpFatPed: TUpdateSQL;
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
    FatPe2CODCFO: TStringField;
    FatPe2CLSIPI: TStringField;
    FatPe2CODUND: TStringField;
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
    FatPedEM1CLI: TStringField;
    FatPe2NCMPE2: TStringField;
    FatPe2OBSPE2: TStringField;
    FatPedID_ESTSIP: TIntegerField;
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
    FatPedQTIFAT: TIntegerField;
    FatPedFLGIMP: TStringField;
    pn_erro: TPanel;
    memo_erro: TMemo;
    bt_erro: TButton;
    FatPedID_FATPED: TIntegerField;
    FatArqNFETH: TSmallintField;
    FatArqARQNFECANC: TBlobField;
    FatArqNFETHCANC: TSmallintField;
    FatPedFLGNFE: TStringField;
    Button1: TButton;
    CorpoMail: TMemo;
    Memo1: TMemo;
    FatPedOB1FAT: TMemoField;
    FatPedOB2FAT: TMemoField;
    FatPedOB3FAT: TMemoField;
    FatPedOB4FAT: TMemoField;
    FatPedOB5FAT: TMemoField;
    FatPedOB6FAT: TMemoField;
    FatPedOB7FAT: TMemoField;
    FatPedOB8FAT: TMemoField;
    BTNLIB: TButton;
    FatPedLIBERA_RESP: TStringField;
    FatPedFLGDENEGADA: TStringField;
    FatPedSITFAT: TStringField;
    ContDPOEC: TSpeedButton;
    DPECSEFAZ: TSpeedButton;
    FatPedENVDPEC: TStringField;
    FatPedUSUDPEC: TIntegerField;
    FatPedJUSTDPEC: TStringField;
    FatPedPROTDPEC: TStringField;
    FatPedLOCEMB: TStringField;
    FatPedUFEMB: TStringField;
    btnImprimeDPEC: TSpeedButton;
    FatPedTOTIBPT: TFloatField;
    FatPe2TOTIBPT: TFloatField;
    FatPedID_FRETE: TIntegerField;
    FatPedTOTOUTDESP: TFloatField;
    FatPedTOTDESCINC: TFloatField;
    FatPedTOTDESONERADO: TFloatField;
    FatPedINDIC_PRESENCA: TIntegerField;
    FatPedINDIC_CF: TIntegerField;
    FatPedOBSFAT: TStringField;
    FatPedTOT_FCPUFDEST: TFloatField;
    FatPedTOT_ICMSUFDEST: TFloatField;
    FatPedTOT_ICMSUFREMET: TFloatField;
    Panel2: TPanel;
    Label4: TLabel;
    bDisponibilidade: TSpeedButton;
    AlteraNFe: TSpeedButton;
    benviar: TSpeedButton;
    pnDesPe2: TPanel;
    Panel3: TPanel;
    Label3: TLabel;
    pnCliente: TPanel;
    pnCodCli: TLabel;
    grFatPe2: TDBGrid;
    grFatPed: TDBGrid;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsFatPedDataChange(Sender: TObject; Field: TField);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DsFatPe2DataChange(Sender: TObject; Field: TField);
    procedure benviarClick(Sender: TObject);
    procedure batualizarClick(Sender: TObject);
    procedure FatPe2NCMPE2GetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure bt_erroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure AlteraNFeClick(Sender: TObject);
    procedure ContDPOECClick(Sender: TObject);
    procedure DPECSEFAZClick(Sender: TObject);
    procedure btnImprimeDPECClick(Sender: TObject);
    procedure FatPedAfterScroll(DataSet: TDataSet);
    procedure grFatPedDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure bDisponibilidadeClick(Sender: TObject);
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
    eAutomatico, ehomologacao, Eporta: integer;

    procedure EnvioNFe(TipoEnvio: integer = 3);
    procedure EnvioServico(TipoEnvio: integer = 3);
    procedure ImprimeDPEC;
    procedure ImprimeDPECServico;
    procedure EnvioDPEC_SEFAZ;

  public
    {Public declarations}
    sBase, sFiltro, sOrdem: string;

  end;

var
  fmManLn7_NFE: TfmManLn7_NFE;
  sArqBackup: string;

implementation

uses dxDemoUtils, FileCtrl, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri,
  ManE01_NFE, ManCn1_NFE, PsqSt1, PsqSt2, PsqUnd, ManEditNfe, MsgUser;

{$R *.DFM}

procedure TfmManLn7_NFE.FormCreate(Sender: TObject);
begin
  inherited;
  //Rolando
  self.top := 0;
  self.Left := 0;
  self.FatPed.Active := true;
  self.FatPe2.Active := true;

  sBase := ' Select FatPed.CodEmp,' +
    ' FatPed.DteRes,' +
    ' FatPed.NumRes,' +
    ' FatPed.SeqLib,' +
    ' FatPed.SeqFat,' +
    ' FatPed.QtiFat,' +
    ' FatPed.DteFat,' +
    ' FatPed.UfeFat,' +
    ' FatPed.NroNfs,' +
    ' FatPed.CodPfa,' +
    ' FatPed.TipPfa,' +
    ' FatPed.CodCf1,' +
    ' FatPed.CodCf2,' +
    ' FatPed.CodCli,' +
    ' FatPed.FlgSai,' +
    ' FatPed.FlgEnt,' +
    ' FatPed.TipFrt,' +
    ' FatPed.EspFat,' +
    ' FatPed.MarFat,' +
    ' FatPed.IntFin,' +
    ' RTRIM(LTRIM(FatPed.DesNat)) DesNat,' +
    ' FatPed.InsSub,' +
    ' FatPed.CodTra,' +
    ' FatPed.TraSda,' +
    ' FatPed.NomTra,' +
    ' FatPed.CgcTra,' +
    ' FatPed.InsTra,' +
    ' FatPed.TenTra,' +
    ' FatPed.EndTra,' +
    ' FatPed.RefTra,' +
    ' FatPed.NumTra,' +
    ' FatPed.BaiTra,' +
    ' FatPed.CidTra,' +
    ' FatPed.UfeTra,' +
    ' FatPed.CepTra,' +
    ' FatPed.NroFat,' +
    ' FatPed.PlcTra,' +
    ' FatPed.UfePlc,' +
    ' FatPed.TefCli,' +
    ' FatPed.EnfCli,' +
    ' FatPed.RffCli,' +
    ' FatPed.NrfCli,' +
    ' FatPed.BafCli,' +
    ' FatPed.CifCli,' +
    ' FatPed.UffCli,' +
    ' FatPed.CefCli,' +
    ' FatPed.TenCli,' +
    ' FatPed.EndCli,' +
    ' FatPed.RefCli,' +
    ' FatPed.NumCli,' +
    ' FatPed.BaiCli,' +
    ' FatPed.CidCli,' +
    ' FatPed.UfeCli,' +
    ' FatPed.CepCli,' +
    ' FatPed.CgeCli,' +
    ' FatPed.IneCli,' +
    ' FatPed.InfLiq,' +
    ' FatPed.InfBrt,' +
    ' FatPed.AltVol,' +
    ' FatPed.LotNfe,' +
    ' FatPed.EnvNfe,' +
    ' FatPed.SeqNfe,' +
    ' FatPed.DteNfe,' +
    ' FatPed.RecNfe,' +
    ' FatPed.ProNfe,' +
    ' FatPed.DopNfe,' +
    ' FatPed.HreNfe,' +
    ' FatPed.UsuNfe,' +
    ' FatPed.DtePnf,' +
    ' FatPed.HrePnf,' +
    ' FatPed.ImpNfe,' +
    ' FatPed.RetNfe,' +
    ' FatPed.FlgAtu,' +
    ' FatPed.Id_FinUff,' +
    ' FatPed.Id_FinCif,' +
    ' FatPed.Id_FinUfe,' +
    ' FatPed.Id_FinCie,' +
    ' FatPed.Id_TraUfe,' +
    ' FatPed.Id_TraCie,' +
    ' FatPed.TrbPis,' +
    ' FatPed.PerPis,' +
    ' FatPed.TrbCof,' +
    ' FatPed.PerCof,' +
    ' FatPed.TotFat,' +
    ' FatPed.TotDsr,' +
    ' FatPed.TotFrt,' +
    ' FatPed.TotSeg,' +
    ' FatPed.TotDes,' +
    ' FatPed.TotIpi,' +
    ' FatPed.TotPis,' +
    ' FatPed.TotCof,' +
    ' FatPed.BasIcm,' +
    ' FatPed.TotIcm,' +
    ' FatPed.BasSub,' +
    ' FatPed.TotSub,' +
    ' FatPed.TotGer,' +
    ' FatPed.Ob1Fat,' +
    ' FatPed.Ob2Fat,' +
    ' FatPed.Ob3Fat,' +
    ' FatPed.Ob4Fat,' +
    ' FatPed.Ob5Fat,' +
    ' FatPed.Ob6Fat,' +
    ' FatPed.Ob7Fat,' +
    ' FatPed.Ob8Fat,' +
    ' FatPed.NfePis,' +
    ' FatPed.NfeCof,' +
    ' FatPed.Id_EstSip,' +
    ' FatPed.FlgDenegada,' +
    ' FinCli.NomCli,' +
    ' FinCli.Em1Cli,' +
    ' fatped.flgimp, ' +
    ' fatped.id_fatped,' +
    ' fatped.arqnfecanc,' +
    ' fatped.FLGNFE,' +
    ' FatPed.ENVDPEC,' +
    ' FatPed.USUDPEC,' +
    ' FatPed.JustDPEC,' +
    ' FatPed.ProtDPEC,' +
    ' fatped.nfeth,' +
    ' fatped.nfethcanc, ' +
    ' FatPed.SitFat, ' +
    ' FatPed.LocEmb,' +
    ' FatPed.UFEmb,' +
    ' FatPed.ID_FRETE,' +
    ' fatPed.Libera_Resp,' +
    ' fatPed.TOTOUTDESP,' +
    ' fatPed.TOTDESCINC,' +
    ' FatPed.TOTIBPT, ' +
    ' FatPed.TOTDESONERADO, ' +
    ' FatPed.INDIC_PRESENCA, ' +
    ' FatPed.INDIC_CF, ' +
    ' FatPed.OBSFAT, ' +
    ' FatPed.TOT_FCPUFDEST, ' +
    ' FatPed.TOT_ICMSUFDEST, ' +
    ' FatPed.TOT_ICMSUFREMET ' +
    ' From FatPed ' +
    ' LEFT JOIN FinCli ON (FatPed.CodCli = FinCli.CodCli)';

  sFiltro := ' Where FatPed.SitFat = ' + Quotedstr('Faturado') +
             '   and FatPed.FlgNFE = ' + Quotedstr('Sim') +
             '   and FatPed.EnvNFE = ' + Quotedstr('Nao');

  sOrdem := ' Order by FatPed.NroNfs';

  pn_erro.Height := 215;
  pn_erro.Left := 0;

end;

procedure TfmManLn7_NFE.FormShow(Sender: TObject);
var
  ArqEnviado: TStringList;
  Nome_ArqIni: string;
  SeqLin: integer;
  Linha: string;
begin
  inherited;

  Nome_ArqIni := ExtractFilePath(Application.ExeName) + 'config.ini';

  if FileExists(Nome_ArqIni) then
  begin

    try

      ArqEnviado := TStringList.Create;

      ArqEnviado.LoadFromFile(Nome_ArqIni);

      for SeqLin := 0 to ArqEnviado.Count - 1 do
      begin

        Linha := Trim(ArqEnviado[SeqLin]);

        if Trim(copy(Linha, 7, Length(Linha) - 6)) <> '' then
        begin

          if pos('[EM11]', Linha) > 0 then
            sArqBackup := Trim(copy(Linha, 7, Length(Linha) - 6));

        end;
      end;

      if Trim(sArqBackup) = '' then
        sArqBackup := 'C:\EMERION\BACKUP\NFE\';

    finally

      FreeAndNil(ArqEnviado);

    end;
  end;

  with FatPed, SQL do
  begin

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

procedure TfmManLn7_NFE.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLn7_NFE := nil;
end;

procedure TfmManLn7_NFE.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManLn7_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManLn7_NFE.DsFatPe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesPe2.Caption := ' ' + Trim(FatPe2DesPe2.Value) + ' ' + Trim(FatPe2ObsPe2.Value);
end;

procedure TfmManLn7_NFE.benviarClick(Sender: TObject);
begin
  if fmManGDB.BuscaSimples('FATPAR', 'ENVIO_SERVICO', ' 1=1 ') <> 'S' then
  begin
    //Envio pelo NFEEmerion
    EnvioNFe;
  end
  else
  begin
    EnvioServico;
  end;
end;

procedure TfmManLn7_NFE.CountRegistros;
begin

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select Sum(FatPed.TotGer) as TotReg,' +
            '        Count(*) as QtdReg' +
            ' From FatPed LEFT JOIN FinCli ON (FatPed.CodCli = FinCli.CodCli)' +
            ' Where FatPed.SitFat = ' + Quotedstr('Faturado') +
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

procedure TfmManLn7_NFE.batualizarClick(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqNroNfs.Text) <> '' then
  begin

    with FatPed, SQL do
    begin

      Close;
      Text := sBase + sFiltro +
        ' and FatPed.NroNfs = ' + QuotedStr(EdPsqNroNfs.Text);
      Open;

    end;

  end
  else
  begin

    with FatPed, SQL do
    begin

      Close;
      Text := sBase + sFiltro + sOrdem;
      Open;

    end;
  end;

  CountRegistros;

end;

procedure TfmManLn7_NFE.FatPe2NCMPE2GetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text := Trim(FatPe2ClsIpi.Value);
end;

procedure TfmManLn7_NFE.bt_erroClick(Sender: TObject);
begin
  inherited;
  memo_erro.Font.Color := clWhite;
  pn_erro.visible := False;
  fmManPri.Enabled := True;
  fmManLn7_NFE.Enabled := True;
  pnMensag.Visible := False;
end;

procedure TfmManLn7_NFE.Button1Click(Sender: TObject);
var
  emailContabilidade: string;
  arq: TIniFile;
  tipoEmail: string;
begin
  try
    arq := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini');
    tipoEmail := arq.ReadString('E-mail', 'tipo_email', 'ANTIGO');
  finally
    arq.Free;
  end;

  if (UpperCase(tipoEmail) = 'NOVO') then
  begin
    if FileExists(epdf) then
    begin
      fmManPri.enviaEmail(true, PAnsiChar(eAssunto), PansiChar(CorpoMail.Lines.Text), PansiChar(ePara), VarArrayOf([eAnexo, epdf]));
    end
    else
    begin
      fmManPri.enviaEmail(true, PAnsiChar(eAssunto), PansiChar(CorpoMail.Lines.Text), PansiChar(ePara), VarArrayOf([eAnexo]));
    end;
  end
  else
  begin
    emailContabilidade := fmManGDB.BuscaSimples('FATPAR', 'EMAIL_CONTABILIDADE', ' 1 = 1');
    if FileExists(epdf) then
    begin
      SendMailMAPIMultAnexos(eAssunto, corpomail.lines.text, eUsuario, eUsuario, ePara,
        IfThen(Trim(emailContabilidade) <> '', emailContabilidade + ';', '') + ePara,
        VarArrayOf([eAnexo, epdf]));
    end
    else
    begin
      SendMailMAPIMultAnexos(eAssunto, corpomail.lines.text, eUsuario, eUsuario, ePara,
        IfThen(Trim(emailContabilidade) <> '', emailContabilidade + ';', '') + ePara,
        VarArrayOf([eAnexo]));
    end;
  end;
  corpomail.Lines.text := memo1.lines.text;

end;

procedure TfmManLn7_NFE.Button2Click(Sender: TObject);
begin
  inherited;
  FindReplace('NUMERONOTA', '1', corpomail);
end;

procedure TfmManLn7_NFE.AlteraNFeClick(Sender: TObject);
var
  ALT_VISU: string;
begin
  inherited;
  ALT_VISU := 'VISU';

  if FatPedLIBERA_RESP.AsString <> 'S' then
  begin
    if ConfirmaAlteracaoNFe then
    begin
      ALT_VISU := 'ALT';
    end
    else
      ALT_VISU := 'VISU';
  end
  else
  begin
    ALT_VISU := 'ALT';
  end;

  try
    FrmEditNfe := TFrmEditNfe.Create(Self);
    FrmEditNfe.ShowModal(FatPedCODEMP.AsString, 'FP', FatPedNRONFS.AsString, FatPedDTERES.AsDateTime, ALT_VISU,
      FatPedNUMRES.AsString, FatPedSEQLIB.AsString);

    batualizar.Click;
  finally
    FreeAndNil(FrmEditNfe);
  end;

end;

procedure TfmManLn7_NFE.ContDPOECClick(Sender: TObject);
begin
  LimpaProtocoloDPEC;
  //Envio Contigencia DEPC

  if fmManGDB.BuscaSimples('FATPAR', 'ENVIO_SERVICO', ' 1=1 ') <> 'S' then
  begin
    //Envio normal para Sefaz
    EnvioNFe(4);
  end
  else
  begin
    EnvioServico(4);
  end;

end;

procedure TfmManLn7_NFE.EnvioNFe(TipoEnvio: integer);
var
  IniFile, chave, CaminhoLeitura, CaminhoRetorno, CaminhoPDF, VNumNota, TLinha: string;
  TArquivo, TDAnfe: TextFile;
  i: integer;
  ini: Tinifile;
  ArqRe1: string;
  ArqRe2: string;
  ArqRs1: string;
  ArqRs2: string;
  FlgRej: string;
  ArqEnv: TextFile;
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
  UffCli: string;
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

  BAS_UFDEST: string;
  ALIQ_FCPUFDEST: string;
  ALIQ_ICMSUFDEST: string;
  ALIQ_ICMSINTER: string;
  ALIQ_ICMSINTERPART: string;
  TOT_FCPUFDEST: string;
  TOT_ICMSUFDEST: string;
  TOT_ICMSUFREMET: string;

  ObsFat: string;
  TipCnd: string;
  sNumeroNF: string;
  NroPais_Emp: string;
  NomPais_Emp: string;
  NroPais_Cli: string;
  NomPais_Cli: string;
  Finalizar: string;
  Id_EmpCie: string;
  Id_CliNfe: string;
  Id_EstSip: string;
  CSTIPI: string;
  Id_FinPai: integer;
  Id_FinUfe: integer;
  Id_FinCie: integer;
  Id_CliUfe: integer;
  Id_CliCie: integer;
  Nome_ArqIni: string;
  FlgDifal: string;
  linpro: string;
  strAux: string;
  bolCFOP: Boolean;
  cinserir: string;
  chaven, nrofat, cEAN, cEANTrib, msgJust: string;
  IMPREF, SN: boolean; //Simples Nacional
  dtCont: TDateTime;
  LOCEMB, UFEMB: string;
  VLRBCII, VLRIMPII, VLRDESPATU, VLRIOF, ALIQ_CRED_SN, VLR_CRED_SN: string;
  NUMPEDCOMPRA, NUMITEMCOMPRA, TOTIBPT, CEST, CODANP, CODIF, FCI, DESCANP: string;
  idEstrangeiro,
    INDIC_IE,
    INSC_MUNICIPAL,
    TOTDESONERADO,
    CodDesoneracao,
    idDest: string; //3.1

  imprimeNumPed: Boolean;

  placa, ufPlaca: string;

  nLote, qLote, dFab, dVal, vPMC: string;

  suprimiZeros: Integer;

  emailRecepcaoXml: string;
  precoUnitario, valorIpi, valorMva, valorComMva, valorSemMva, quantidade, percentualIcm: Double;
  nfeObj, infNFe, contigenciaObj, ideObj, emitObj, emitEnderObj, destObj, destEnderObj, icmsTotObj,
  entregaObj, productObj, itemObj, productRastroObj, productMedObj, impostoIcmsUfDestObj, transportObj,
  exportObj, pagamentoObj,
  impostoObj, impostoIcmsObj, impostoIpiObj, impostoPisObj, impostoCofinsObj, impostoIIObj: TlkJSONobject;
  productObjList, productRastroObjList, productMedObjList, pagamentoObjList: TlkJSONlist;
  Json: string;
  jsonText: TStringList;
begin
  inherited;

  nfeObj := TlkJSONobject.Create;
  infNFe := TlkJSONobject.Create;
  contigenciaObj := TlkJSONobject.Create;
  ideObj := TlkJSONobject.Create;
  emitObj := TlkJSONobject.Create;
  emitEnderObj := TlkJSONobject.Create;
  destObj := TlkJSONobject.Create;
  destEnderObj := TlkJSONobject.Create;
  entregaObj := TlkJSONobject.Create;
  icmsTotObj := TlkJSONobject.Create;
  transportObj := TlkJSONobject.Create;
  exportObj := TlkJSONobject.Create;

  productObjList := TlkJSONlist.Create;
  productRastroObjList := TlkJSONlist.Create;
  productMedObjList := TlkJSONlist.Create;
  pagamentoObjList := TlkJSONlist.Create;

  //Etapa 1 - Acertar dados
  Finalizar := 'N';
  if FatPedId_FatPed.AsInteger > 0 then
  begin
    Id_FatPed := FatPedId_FatPed.AsInteger;

    Try
      FatPed.Close;
      FatPed.SQL.Text := sBase + ' Where FatPed.Id_FatPed = ' + QuotedStr(IntToStr(Id_FatPed));
      FatPed.Open;
    except
       Application.MessageBox('Erro ao selecionar Nota Niscal... ', 'Aten��o', MB_OK);
       Exit;
    end;
    

    //Verificando se vai imprimir referencia.
    quSql.active   := false;
    qusql.sql.text := 'Select IMPREF from FATPAR';
    quSql.active   := true;
    if qusql.fieldbyname('IMPREF').asString = 'Sim' then
      IMPREF := True
    else
      Impref := false;

    //Verificando se Ir� remover os "Zeros" do c�digo de Produto
    suprimiZeros := StrToIntDef(fmManGDB.BuscaSimples('FATPAR', 'SUPRIMIR_ZEROS', '1 = 1'), 0);

    //verificando se � simples nacional
    qusql.active   := false;
    qusql.sql.text := 'Select GEREMP.TIPEMP from GEREMP where codemp = ' + QuotedStr(FatPedCODEMP.asstring);
    qusql.open;

    if (Trim(qusql.fieldbyname('TIPEMP').AsString) = 'Simples Nacional') then
      sn := true
    else
      sn := false;

    CountRegistros;
    if FatPedId_FatPed.Value > 0 then
    begin

      if fMsg('Confirma envio para emiss�o da NFe ?', 'O') then
      begin
        try
          Finalizar := 'N';
          fmManCn1_NFE := TfmManCn1_NFE.Create(Self);
          fmManCn1_NFE.ShowModal;
          Finalizar := fmManCn1_NFE.Finalizar;
        finally
          FreeAndNil(fmManCn1_NFE);
        end;
      end
      else
      begin
        Abort;
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
              '   From GerEmp' +
              '  Where GerEmp.CodEmp = ' + QuotedStr(IntToStr(FatPedCodEmp.Value));
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

  if (Finalizar = 'S') and (not Id_FinUfe > 0) then
  begin
    Finalizar            := 'N';
    fmManPri.Enabled     := True;
    fmManLn7_NFE.Enabled := True;
    pnMensag.Visible     := False;
    fmsgErro('C�digo da UF para emiss�o de NFe n�o informado no cadastro da empresa.', nil);
  end;

  if (Finalizar = 'S') and (not Id_FinCie > 0) then
  begin
    Finalizar            := 'N';
    fmManPri.Enabled     := True;
    fmManLn7_NFE.Enabled := True;
    pnMensag.Visible     := False;
    fmsgErro('C�digo de municipio para emiss�o de NFe n�o informado no cadastro da empresa.', nil);
  end;

  if (Finalizar = 'S') and (not Id_FinPai > 0) then
  begin
    Finalizar            := 'N';
    fmManPri.Enabled     := True;
    fmManLn7_NFE.Enabled := True;
    pnMensag.Visible     := False;
    fmsgErro('C�digo do pa�s para emiss�o de NFe n�o informado no cadastro da empresa.', nil);
  end;

  if Finalizar = 'S' then
  begin
    quSQL.Close;
    quSQL.SQL.Text := ' Select FinPai.NomPai From FinPai Where FinPai.Id_FinPai = ' + QuotedStr(IntToStr(Id_FinPai));
    quSQL.Open;

    NomPais_Emp := fLimpaAcentos(quSQL.FieldbyName('NomPai').AsString);
    NomPais_Emp := copy(Trim(NomPais_Emp), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NomPais_Emp), 1, 60)));
    NroPais_Emp := fNumZeros(IntToStr(Id_FinPai), 4);

    if FatPedId_EstSip.Value > 0 then
    begin
      quSQL.Close;
      quSQL.SQL.Text := ' Select EstSip.SigNfe From EstSip Where EstSip.Id_EstSip = ' + QuotedStr(IntToStr(FatPedId_EstSip.Value));
      quSQL.Open;
      Id_EstSip := quSQL.FieldbyName('SigNfe').AsString;
    end
    else
    begin
      if Trim(FatPedTipPfa.Value) = 'Saida' then
      begin
        if FatPedTotIpi.Value > 0 then
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
      Text := ' Select FinCli.NomCli,' +
              '        FinCli.CgcCli,' +
              '        FinCli.InsCli,' +
              '        FinCli.NroSuf,' +
              '        FinCli.Pt1Cli,' +
              '        FinCli.Fo1Cli,' +
              '        FinCli.Em1Cli,' +
              '        FinCli.Id_FinPai,' +
              '        finCli.INDIC_ESTRANGEIRO, ' +
              '        FinCli.INDIC_IE, ' +
              '        FinCli.INSC_MUNICIPAL, ' +
              '        FinCli.EMAIL_INTERNO_XML ' +
              '   From FinCli ' +
              '  Where FinCli.CodCli = ' + FatPedCodCli.AsString;
      Open;
      NomCli           := fLimpaAcentos(FieldbyName('NomCli').AsString);
      NroSuf           := fLimpaAcentos(fLimpaStr(FieldbyName('NroSuf').AsString));
      EmaCli           := Trim(FieldbyName('Em1Cli').AsString);
      EmaCli           := copy(EmaCli, 1, 60) + fReplicate(' ', 60 - Length(copy(EmaCli, 1, 60)));
      emailRecepcaoXml := Trim(FieldbyName('EMAIL_INTERNO_XML').AsString);
      emailRecepcaoXml := copy(emailRecepcaoXml, 1, 60) + fReplicate(' ', 60 - Length(copy(emailRecepcaoXml, 1, 60)));

      if Length(Trim(FieldbyName('CgcCli').AsString)) = 11 then
        CpfCli := FieldbyName('CgcCli').AsString
      else
        CgcCli := FieldbyName('CgcCli').AsString;

      idEstrangeiro  := trim(FieldbyName('INDIC_ESTRANGEIRO').AsString);
      INDIC_IE       := copy(FieldByName('INDIC_IE').AsString, 1, 1);
      INSC_MUNICIPAL := trim(FieldByName('INSC_MUNICIPAL').AsString); //3.1

      InsCli := fLimpaStr(FieldbyName('InsCli').AsString);
      CgcCli := copy(Trim(CgcCli), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(CgcCli), 1, 14)));
      CpfCli := copy(Trim(CpfCli), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(CpfCli), 1, 14)));
      InsCli := copy(Trim(InsCli), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(InsCli), 1, 14)));

      if Trim(fLimpaStr(FieldbyName('Pt1Cli').AsString)) <> '' then
        FonCli := Trim(fLimpaStr(FieldbyName('Pt1Cli').AsString)) + Trim(fLimpaStr(FieldbyName('Fo1Cli').AsString))
      else
        FonCli := Trim(fLimpaStr(FieldbyName('Fo1Cli').AsString));

      FonCli    := fRemoverEspaco(FonCli);
      NomCli    := copy(Trim(NomCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NomCli), 1, 60)));
      NroSuf    := copy(Trim(NroSuf), 1, 12) + fReplicate(' ', 12 - Length(copy(Trim(NroSuf), 1, 12)));
      FonCli    := fReplicate('0', 10 - Length(copy(Trim(FonCli), 1, 10))) + copy(Trim(FonCli), 1, 10);
      Id_FinPai := FieldbyName('Id_FinPai').AsInteger;

      if not Id_FinPai > 0 then
      begin
        Finalizar            := 'N';
        fmManPri.Enabled     := True;
        fmManLn7_NFE.Enabled := True;
        pnMensag.Visible     := False;
        fmsgErro('C�digo do pa�s para emiss�o de NFe n�o informado no cadastro do cliente.', nil);
      end
      else
        NroPais_Cli := fNumZeros(IntToStr(Id_FinPai), 4);
    end;

    Id_CliUfe := FatPedId_FinUff.Value;
    Id_CliCie := FatPedId_FinCif.Value;

    quSQL.Close;
    quSQL.SQL.Text := ' Select FinPai.NomPai From FinPai Where FinPai.Id_FinPai = ' + QuotedStr(IntToStr(Id_FinPai));
    quSQL.Open;
    NomPais_Cli := fLimpaAcentos(quSQL.FieldbyName('NomPai').AsString);
    NomPais_Cli := copy(Trim(NomPais_Cli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NomPais_Cli), 1, 60)));

    quSQL.Close;
    quSQL.SQL.Text := ' Select FinCie.NomCie,' +
                      '        FinCie.SigNfe ' +
                      ' From FinCie' +
                      ' Where FinCie.Id_FinCie = ' + QuotedStr(IntToStr(Id_CliCie));
    quSQL.Open;

    Id_CliNfe := IntToStr(Id_CliUfe) + quSQL.FieldbyName('SigNfe').AsString;
    CidCli := fLimpaAcentos(quSQL.FieldbyName('NomCie').AsString);
    CidCli := copy(Trim(CidCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(CidCli), 1, 60)));
    
  end
  else
  begin
    Abort;
  end;

  if Finalizar = 'S' then
  begin
    if Trim(FatPedSeqNFe.AsString) = '' then
    begin
      FatPed.Edit;
      FatPedFlgAtu.AsString := 'F';
      FatPedSeqNFe.AsString := fMontaChaveAcessoNFe(Id_FinUfe, FatPedDteFat.Value, CgcEmp, 55, 1, FatPedNroNfs.Value, 1);
      with FatPed do
      try
        fmManGDB.dbMain.StartTransaction; //Inicia a Transa��o
        ApplyUpdates; //Tenta aplicar as altera��es
        fmManGDB.dbMain.Commit; //confirma todas as altera��es fechando a transa��o
      except
        begin
          fmManGDB.dbMain.Rollback; //desfaz as altera��es se acontecer um erro
          if FatPed.State <> dsBrowse then
            FatPed.CancelUpdates;
        end;
      end;
      FatPed.Close;
      FatPed.Open;
    end;
  end;

  try
    // Etapa 2 - Verificando se o servi�o est� ativo
    flgrej := 'N';
    //Etapa 3 - Preparar os dados para o envio para o robo
    if FlgRej = 'N' then
    begin
      pnMensag.Caption := 'Aguarde. Enviando NFe � SEFAZ.';
      Application.ProcessMessages;
      fmManPri.Enabled := False;
      fmManLn7_NFE.Enabled := False;
      pnMensag.Visible := True;

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
      chave := FatPedSeqNFe.AsString;

      Writeln(ArqEnv, 'EM0201' +
        UfeEmp +
        FatPedSeqNFe.AsString +
        fNumZeros(IntToStr(FatPedLotNfe.Value), 9));

      infNFe.Add('ufeEmp', putString(UfeEmp));
      infNFe.Add('SeqNFe', putString(FatPedSeqNFe.AsString));
      infNFe.Add('LotNfe', putNumber(FatPedLotNfe.AsInteger));

      //Para CONTIGENCIA DPEC JUSTIFICATIVA
      if TipoEnvio = 4 then
      begin

        dtCont := Now;
        msgJust := FatPedJustDPEC.AsString;

        if JustificativaContigencia(FormatDateTime('yyyy-mm-dd hh:MM:ss', dtCont), msgJust) = mrCancel then
          Abort;

        msgJust := trim(fLimpaAcentos(msgJust));
        msgJust := msgJust + Replicate(' ', 255 - length(msgJust));

        Writeln(ArqEnv, 'EM1201' + //6
          FormatDateTime('yyyy-mm-dd hh:MM:ss', dtCont) + //19
          copy(msgJust, 1, 255)); //255

        contigenciaObj.Add('dhCont', putString(FormatDateTime('yyyy-mm-dd hh:MM:ss', dtCont)));
        contigenciaObj.Add('xJust', putString(msgJust));

        FatPed.Edit;
        FatPedFlgAtu.AsString := 'F';
        FatPedJustDPEC.AsString := msgJust;

        try
          fmManGDB.dbMain.StartTransaction; //Inicia a Transa��o
          FatPed.ApplyUpdates; //Tenta aplicar as altera��es
          fmManGDB.dbMain.Commit; //confirma todas as altera��es fechando a transa��o
        except
          begin
            fmManGDB.dbMain.Rollback; //desfaz as altera��es se acontecer um erro
            if FatPed.State <> dsBrowse then
              FatPed.CancelUpdates;
          end;
        end;

        FatPed.Close;
        FatPed.Open;

      end;

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

      DesNat := fLimpaAcentos(FatPedDesNat.AsString);
      DesNat := copy(Trim(DesNat), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(DesNat), 1, 60)));
      TipCnd := '0';
      if FatPedIntFin.Value = 'Nao' then
        TipCnd := '2'
      else
      begin
        with quSQL, SQL do
        begin
          Close;
          Text := ' Select Sum(FatPe3.PraPe3) as QtdReg' +
            ' From FatPe3' +
            ' Where FatPe3.CODEMP = ' + QuotedStr(IntToStr(FatPedCODEMP.Value)) +
            ' and FatPe3.DTERES = ' + QuotedStr(formatdatetime('mm/dd/yyyy', FatPedDTERES.Value)) +
            ' and FatPe3.NUMRES = ' + QuotedStr(intToStr(FatPedNUMRES.Value)) +
            ' and FatPe3.SEQLIB = ' + QuotedStr(intToStr(FatPedSEQLIB.Value)) +
            ' and FatPe3.SEQFAT = ' + QuotedStr(intToStr(FatPedSEQFAT.Value));
          Open;
          if FieldbyName('QtdReg').AsInteger > 0 then
            TipCnd := '1';
        end;
      end;

      //Identifica destino
      if not (strtoint(FatPedCODCF1.AsString[1]) in [3, 7]) then
      begin
        if strtoint(FatPedCODCF1.AsString[1]) in [1, 5] then
          idDest := '01'
        else
          idDest := '02';
      end
      else
        idDest := '03'; //3.1

     
      Writeln(ArqEnv, 'EM0202' + // Uso interno do sistema
        FormatFloat('00', Id_FinUfe) + // C�digo da UF do emitente do documento fiscal
        copy(FatPedSeqNFE.AsString, 35, 09) + // C�digo n�merico que comp�e a chave de acesso
        DesNat + // Descri��o da natureza de opera��o
        TipCnd + // Indicador da forma de pagamento 0-Pagamento � vista 1-Pagamento � prazo 2-Outros
        '55' + // C�digo do Modelo do documento fiscal
        '1' + // S�rie do documento fiscal
        fNumZeros(IntToStr(FatPedNroNfs.Value), 9) + // N�mero do documento fiscal
        FormatDateTime('yyyy-mm-dd', FatPedDteFat.AsDateTime) + // Data de emiss�o do documento fiscal
        '0000-00-00' + // Data de saida ou entrada da Mercadoria/Produto
        '1' + // Tipo do documento fiscal
        Id_EmpCie + // C�digo do Municipio de Ocorr�ncia do Fato Gerador
        '1' + // Formato de Impressao do DANFE
        '1' + // Forma de emiss�o da NF-e
        copy(FatPedSeqNFE.AsString, 44, 1) + // Digito verificador da Chave de Acesso da NF-e
        '2' + // Identifica��o do Ambiente
        '1' + // Finalidade de emiss�o da NF-e
        '0' + // Processo de emiss�o da NF-e
        'EMERION FATURA' + Replicate(' ', 6) + // Vers�o do processo de emiss�o da NF-e
        idDest + //Identifica destino //3.1
        formatFloat('00', FatPedINDIC_CF.AsInteger) + //indica Cosumidor final //3.1
        formatFloat('00', FatPedINDIC_PRESENCA.AsInteger)); //Indica Presenca do Consumidor  //3.1

      ideObj.Add('cUF', putString(FormatFloat('00', Id_FinUfe)));
      ideObj.Add('SeqNFE', putString(copy(FatPedSeqNFE.AsString, 35, 09)));
      ideObj.Add('natOp', putString(DesNat));
      ideObj.Add('TipCnd', putString(TipCnd));
      ideObj.Add('modelo', putString('55'));
      ideObj.Add('serie', putString('1'));
      ideObj.Add('nNF', putNumber(FatPedNroNfs.AsInteger));
      ideObj.Add('dataEmissao', putString(FormatDateTime('yyyy-mm-dd', FatPedDteFat.AsDateTime)));
      ideObj.Add('dataEntradaSaidaMercadoria', putString('0000-00-00'));
      ideObj.Add('tpNF', putString('1'));
      ideObj.Add('cMunFG', putString(Id_EmpCie));
      ideObj.Add('tpImp', putString('1'));
      ideObj.Add('tpEmis', putString('1'));
      ideObj.Add('cDV', putString(copy(FatPedSeqNFE.AsString, 44, 1)));
      ideObj.Add('tpAmb', putString('2'));
      ideObj.Add('finNFe', putString('1'));
      ideObj.Add('procEmi', putString('0'));
      ideObj.Add('verProc', putString('EMERION FATURA'));
      ideObj.Add('idDest', putString(idDest));
      ideObj.Add('indFinal', putNumber(FatPedINDIC_CF.AsInteger));
      ideObj.Add('indPres', putNumber(FatPedINDIC_PRESENCA.AsInteger));

      VNumNota := FatPedNroNfs.AsString;

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
        copy(Trim(FatPedINSSUB.AsString), 1, 18) + fReplicate(' ', 18 - Length(copy(Trim(FatPedINSSUB.AsString), 1, 18))) + // IE do Substituto tribut�rio
        '               ' + // IM inscri��o municipal
        '       '); // CNAE Fiscal

      emitObj.Add('CNPJ', putString(Trim(CgcEmp) + Trim(CpfEmp)));
      emitObj.Add('xNome', putString(NomEmp));
      emitObj.Add('xFant', putString(ApeEmp));
      emitEnderObj.Add('xLgr', putString(EndEmp));
      emitEnderObj.Add('nro', putString(NumEmp));
      emitEnderObj.Add('xCpl', putString(RefEmp));
      emitEnderObj.Add('xBairro', putString(BaiEmp));
      emitEnderObj.Add('cMun', putString(Id_EmpCie));
      emitEnderObj.Add('xMun', putString(CidEmp));
      emitEnderObj.Add('UF', putString(UfeEmp));
      emitEnderObj.Add('CEP', putString(CepEmp));
      emitEnderObj.Add('cPais', putString(NroPais_Emp));
      emitEnderObj.Add('xPais', putString(NroPais_Emp));
      emitEnderObj.Add('fone', putString(FonEmp));
      emitObj.Add('enderEmit', emitEnderObj);
      emitObj.Add('ie', putString(InsEmp));
      emitObj.Add('IEST', putString(InsEmp));
      emitObj.Add('CRT', putString('SIMPLES OU NORMAL'));

      if FatPedTefCli.Value <> '' then
        EndCli := Trim(FatPedTefCli.Value) + ' ' + FatPedEnfCli.Value
      else
        EndCli := FatPedEnfCli.Value;

      EndCli := fLimpaAcentos(EndCli);
      NumCli := fLimpaAcentos(FatPedNrfCli.Value);
      RefCli := fLimpaAcentos(FatPedRffCli.Value);
      BaiCli := fLimpaAcentos(FatPedBafCli.Value);
      UfeCli := fLimpaAcentos(FatPedUfeCli.Value);
      UffCli := fLimpaAcentos(FatPedUffCli.Value);
      CepCli := FatPedCefCli.Value;
      EndCli := copy(Trim(EndCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(EndCli), 1, 60)));
      NumCli := copy(Trim(NumCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NumCli), 1, 60)));
      RefCli := copy(Trim(RefCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(RefCli), 1, 60)));
      BaiCli := copy(Trim(BaiCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(BaiCli), 1, 60)));
      UfeCli := copy(Trim(UfeCli), 1, 02) + fReplicate(' ', 02 - Length(copy(Trim(UfeCli), 1, 02)));
      UffCli := copy(Trim(UffCli), 1, 02) + fReplicate(' ', 02 - Length(copy(Trim(UffCli), 1, 02)));
      CepCli := fReplicate('0', 08 - Length(copy(Trim(CepCli), 1, 08))) + copy(Trim(CepCli), 1, 08);
      INDIC_IE := copy(Trim(INDIC_IE), 1, 1) + fReplicate(' ', 1 - Length(copy(Trim(INDIC_IE), 1, 1)));
      idEstrangeiro := copy(Trim(idEstrangeiro), 1, 20) + fReplicate(' ', 20 - Length(copy(Trim(idEstrangeiro), 1, 20))); //3.1
      INSC_MUNICIPAL := copy(Trim(INSC_MUNICIPAL), 1, 15) + fReplicate(' ', 15 - Length(copy(Trim(INSC_MUNICIPAL), 1, 15))); //3.1

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
        UffCli + // Sigla da UF
        CepCli + // C�digo do Cep
        NroPais_Cli + // C�digo do Pa�s
        NomPais_Cli + // Nome do Pa�s
        FonCli + // Telefone
        InsCli + // IE
        NroSuf + // Inscri��o SUFRAMA
        idEstrangeiro + // Identifica��o de estrangeiro //3.1
        INDIC_IE + // Identifica��o do IE //3.1
        INSC_MUNICIPAL + // Identifica��o do IM//3.1
        emailRecepcaoXml); // Email de Recep��o do XML

      destObj.Add('CPF_CNPJ', putString(Trim(CgcCli) + Trim(CpfCli)));
      destObj.Add('idEstrangeiro', putString(idEstrangeiro));
      destObj.Add('xNome', putString(NomCli));
      destEnderObj.Add('xLgr', putString(EndCli));
      destEnderObj.Add('nro', putString(NumCli));
      destEnderObj.Add('xCpl', putString(RefCli));
      destEnderObj.Add('xBairro', putString(BaiCli));
      destEnderObj.Add('cMun', putString(Id_CliNfe));
      destEnderObj.Add('xMun', putString(CidCli));
      destEnderObj.Add('UF', putString(UffCli));
      destEnderObj.Add('CEP', putString(CepCli));
      destEnderObj.Add('cPais', putString(NroPais_Cli));
      destEnderObj.Add('xPais', putString(NomPais_Cli));
      destEnderObj.Add('fone', putString(FonCli));
      destObj.Add('enderDest', destEnderObj);
      destObj.Add('ie', putString(InsCli));
      destObj.Add('ISUF', putString(NroSuf));
      destObj.Add('email', putString(emailRecepcaoXml));
      destObj.Add('indIEDest', putString(INDIC_IE));
      destObj.Add('IM', putString(INSC_MUNICIPAL));



      if Trim(FatPedCepCli.AsString) <> '' then
      begin
        if (Trim(FatPedCepCli.AsString) <> Trim(FatPedCefCli.AsString)) or (Trim(FatPedTenCli.AsString) <> Trim(FatPedTefCli.AsString)) or
          (Trim(FatPedEndCli.AsString) <>
          Trim(FatPedEnfCli.AsString)) or (Trim(FatPedRefCli.AsString) <> Trim(FatPedRffCli.AsString)) or (Trim(FatPedNumCli.AsString) <>
          Trim(FatPedNrfCli.AsString)) or
          (Trim(FatPedBaiCli.AsString) <> Trim(FatPedBafCli.AsString)) or (Trim(FatPedCidCli.AsString) <> Trim(FatPedCifCli.AsString)) or
          (Trim(FatPedUfeCli.AsString) <>
          Trim(FatPedUffCli.AsString)) then
        begin

          if Trim(FatPedCgeCli.AsString) <> '' then
            CgcCli := copy(Trim(FatPedCgeCli.AsString), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(FatPedCgeCli.AsString), 1, 14)));

          if FatPedTenCli.AsString <> '' then
            EndCli := Trim(FatPedTenCli.AsString) + ' ' + FatPedEndCli.AsString
          else
            EndCli := FatPedEndCli.AsString;

          EndCli := fLimpaAcentos(EndCli);
          NumCli := fLimpaAcentos(FatPedNumCli.AsString);
          RefCli := fLimpaAcentos(FatPedRefCli.AsString);
          BaiCli := fLimpaAcentos(FatPedBaiCli.AsString);
          UfeCli := fLimpaAcentos(FatPedUfeCli.AsString);
          EndCli := copy(Trim(EndCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(EndCli), 1, 60)));
          NumCli := copy(Trim(NumCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NumCli), 1, 60)));
          RefCli := copy(Trim(RefCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(RefCli), 1, 60)));
          BaiCli := copy(Trim(BaiCli), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(BaiCli), 1, 60)));
          UfeCli := copy(Trim(UfeCli), 1, 02) + fReplicate(' ', 02 - Length(copy(Trim(UfeCli), 1, 02)));
          CepCli := fReplicate('0', 08 - Length(copy(Trim(CepCli), 1, 08))) + copy(Trim(CepCli), 1, 08);
          Id_FinUfe := FatPedId_FinUfe.Value;
          Id_FinCie := FatPedId_FinCie.Value;

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

          entregaObj.Add('CPF_CNPJ', putString(CgcCli));
          entregaObj.Add('xLgr', putString(EndCli));
          entregaObj.Add('nro', putString(NumCli));
          entregaObj.Add('xCpl', putString(RefCli));
          entregaObj.Add('xBairro', putString(BaiCli));
          entregaObj.Add('cMun', putString(Id_CliNfe));
          entregaObj.Add('xMun', putString(CidCli));
          entregaObj.Add('UF', putString(UffCli));
        end;
      end;

      TrbPis := Trim(FatPedTrbPis.Value);
      TrbCof := Trim(FatPedTrbCof.Value);
      TrbPis := copy(Trim(TrbPis), 1, 03) + fReplicate(' ', 03 - Length(copy(Trim(TrbPis), 1, 03)));
      TrbCof := copy(Trim(TrbCof), 1, 03) + fReplicate(' ', 03 - Length(copy(Trim(TrbCof), 1, 03)));
      //PerPis := fSubstDecimal(FormatFloat('##0.00', FatPedPerPis.Value), 05);
      //PerCof := fSubstDecimal(FormatFloat('##0.00', FatPedPerCof.Value), 05);
      with quSQL, SQL do
      begin
        Close;
        Text := ' Select Pe2.NroPe2,' +
          ' (Select CBAPRO from ESTPRO where CODGRU = Pe2.codgru and codsub = Pe2.codsub and codpro = Pe2.codpro and codclp = Pe2.codclp)as cEANTRIB, ' +
          ' (Select CBAEMB from ESTPRO where CODGRU = Pe2.codgru and codsub = Pe2.codsub and codpro = Pe2.codpro and codclp = Pe2.codclp)as cEAN, ' +
          ' Pe2.CodClp,' +
          ' Pe2.CodGru,' +
          ' Pe2.CodSub,' +
          ' Pe2.CodPro,' +
          ' Pe2.REFPE2,' +
          ' Pe2.DesPe2,' +
          ' Pe2.ObsPe2,' +
          ' Pe2.ClsIpi,' +
          ' Pe2.CodCfo,' +
          ' Pe2.CodSt1,' +
          ' Pe2.CodSt2,' +
          ' Pe2.CodStr,' +
          ' Pe2.CodUnd,' +
          ' Pe2.QtpPe2,' +
          ' Pe2.VlqPe2 VluPe2,' +
          ' Pe2.TotPe2,' +
          ' Pe2.IcmPe2,' +
          ' Pe2.BscIcm,' +
          ' Pe2.RedIcm,' +
          ' Pe2.BasIcm,' +
          ' Pe2.TotIcm,' +
          ' Pe2.IpiPe2,' +
          ' Pe2.CSTIPI,' +
          ' Pe2.TrbIpi,' +
          ' Pe2.BscIpi,' +
          ' Pe2.RedIpi,' +
          ' Pe2.BasIpi,' +
          ' Pe2.TotIpi,' +
          ' Pe2.IcmSub,' +
          ' Pe2.MrgSub,' +
          ' Pe2.BaseSb,' +
          ' Pe2.BasSub,' +
          ' Pe2.TotSub,' +
          ' Pe2.TotDsr,' +
          ' Pe2.TotFrt,' +
          ' Pe2.TotSeg,' +
          ' Pe2.TotOUTDESP,' +
          ' Pe2.TOTDESCINC,' +
          ' Pe2.BASPIS,' +
          ' Pe2.CSTPIS,' +
          ' Pe2.TOTPIS,' +
          ' Pe2.ALIQPIS,' +
          ' Pe2.BASCOF,' +
          ' Pe2.CSTCOF,' +
          ' Pe2.AliqCof,' +
          ' Pe2.TotCof,' +
          ' Pe2.TOTIBPT,' +
          ' Pe2.TOTDESONERADO,' +
          ' Pe2.CODDESONERACAO,' +
          ' Pe2.CEST, ' +
          ' Pro.CODANP, ' +
          ' Pro.DESCANP, ' +
          ' Pro.CODIF, ' +
          ' Pro.FCI, ' +

        ' Pe2.BAS_UFDEST,' +
          ' Pe2.ALIQ_FCPUFDEST,' +
          ' Pe2.ALIQ_ICMSUFDEST,' +
          ' Pe2.ALIQ_ICMSINTER,' +
          ' Pe2.ALIQ_ICMSINTERPART,' +
          ' Pe2.TOT_FCPUFDEST,' +
          ' Pe2.TOT_ICMSUFDEST,' +
          ' Pe2.TOT_ICMSUFREMET,' +
          ' Pe2.ALIQ_CRED_SN,' +
          ' Pe2.VLR_CRED_SN,' +

        ' Pe2.NUMPEDCOMPRA,' +
          ' Pe2.NUMITEMCOMPRA ' +
          ' From FatPe2 pe2 ' +
          ' Join EstPro Pro on Pro.CODCLP = Pe2.CodClp and Pro.CODGru = Pe2.CODGru and Pro.CODSub = Pe2.CODSub and Pro.CODPro = Pe2.CODPro ' +
          ' Where Pe2.CODEMP = ' + QuotedStr(IntToStr(FatPedCODEMP.AsInteger)) +
          ' AND Pe2.DTERES = ' + QuotedStr(FormatDateTime('MM/DD/YYYY', FatPedDTERES.AsDateTime)) +
          ' AND Pe2.NUMRES = ' + QuotedStr(IntToStr(FatPedNUMRES.AsInteger)) +
          ' AND Pe2.SEQLIB = ' + QuotedStr(IntToStr(FatPedSEQLIB.AsInteger)) +
          ' AND Pe2.SEQFAT = ' + QuotedStr(IntToStr(FatPedSEQFAT.AsInteger)) +
          ' Order by Pe2.NroPe2';

        Open;
        First;
      end;
      if not quSql.IsEmpty then
        repeat
          //Verificando se vai imprimir o codigo ou a referencia
          if impref then
          begin
            codpro := trim(quSQL.FieldbyName('REFPE2').AsString);

            if (trim(codpro) = '') then
            begin
              if (suprimiZeros = 0) then
              begin
                CodPro :=
                  quSQL.FieldbyName('CodClp').AsString +
                  quSQL.FieldbyName('CodGru').AsString +
                  quSQL.FieldbyName('CodSub').AsString +
                  quSQL.FieldbyName('CodPro').AsString;
              end
              else
              begin
                CodPro :=
                  //quSQL.FieldbyName('CodClp').AsString + '-' +
                IntToStr(quSQL.FieldbyName('CodGru').asInteger) + '.' +
                  IntToStr(quSQL.FieldbyName('CodSub').asInteger) + '.' +
                  IntToStr(quSQL.FieldbyName('CodPro').asInteger);
              end;
            end
          end
          else if (suprimiZeros = 0) then
          begin
            CodPro :=
              quSQL.FieldbyName('CodClp').AsString +
              quSQL.FieldbyName('CodGru').AsString +
              quSQL.FieldbyName('CodSub').AsString +
              quSQL.FieldbyName('CodPro').AsString;
          end
          else
          begin
            CodPro :=
              //quSQL.FieldbyName('CodClp').AsString + '-' +
            IntToStr(quSQL.FieldbyName('CodGru').AsInteger) + '.' +
              IntToStr(quSQL.FieldbyName('CodSub').AsInteger) + '.' +
              IntToStr(quSQL.FieldbyName('CodPro').AsInteger);
          end;

          //Verificando os Codigos GTIN(cEAN, cEANTrib);
          cEAN := quSQL.FieldbyName('cEAN').AsString;
          cEANTrib := quSQL.FieldbyName('cEANTrib').AsString;
          cEAN := copy(Trim(cEAN), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(cEAN), 1, 14)));
          cEANTrib := copy(Trim(cEANTrib), 1, 14) + fReplicate(' ', 14 - Length(copy(Trim(cEANTrib), 1, 14)));

          DesPro := AllTrim(fLimpaAcentos(quSQL.FieldbyName('DesPe2').AsString));
          DesPro := copy(DesPro, 1, 120);
          ClsIpi := Trim(fLimpaStr(quSQL.FieldbyName('ClsIpi').AsString));
          CodCfo := Trim(fLimpaStr(quSQL.FieldbyName('CodCfo').AsString));
          if Trim(ClsIpi) = '00000000' then
            ClsIpi := '';
          CodUnd := Trim(quSQL.FieldbyName('CodUnd').AsString);
          CodSt1 := Trim(quSQL.FieldbyName('CodSt1').AsString);
          CodSt2 := Trim(quSQL.FieldbyName('CodSt2').AsString);
          TrbIpi := Trim(quSQL.FieldbyName('TrbIpi').AsString);
          CSTIPI := Trim(quSQL.FieldbyName('CSTIPI').AsString);
          QtdPro := fSubstDecimal(FormatFloat('########0.0000', quSQL.FieldbyName('QtpPe2').AsFloat), 15);
          VluPro := fSubstDecimal(FormatFloat('########0.0000', quSQL.FieldbyName('VluPe2').AsFloat), 15);
          TotPro := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotPe2').AsFloat), 15);
          BasIcm := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('BasIcm').AsFloat), 15);
          RedIcm := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('RedIcm').AsFloat), 15);
          PerIcm := fSubstDecimal(FormatFloat('########0.0000', quSQL.FieldbyName('IcmPe2').AsFloat), 07);
          TotIcm := fSubstDecimal(FormatFloat('########0.0000', quSQL.FieldbyName('TotIcm').AsFloat), 13);
          BasIpi := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('BasIpi').AsFloat), 15);
          PerIpi := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('IpiPe2').AsFloat), 05);
          TotIpi := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotIpi').AsFloat), 15);
          MrgSub := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('MrgSub').AsFloat), 05);
          IcmSub := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('IcmSub').AsFloat), 05);
          BasSub := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('BasSub').AsFloat), 15);
          TotSub := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotSub').AsFloat), 15);
          TotDsr := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotDsr').AsFloat + quSQL.FieldbyName('TotDescInc').AsFloat), 15);
          TotFrt := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotFrt').AsFloat), 15);
          TotSeg := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotSeg').AsFloat), 15);
          TotDes := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotOUTDESP').AsFloat), 15);

          ALIQ_CRED_SN := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('ALIQ_CRED_SN').AsFloat), 15);
          VLR_CRED_SN := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('VLR_CRED_SN').AsFloat), 15);

          BAS_UFDEST := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('BAS_UFDEST').AsFloat), 15);
          ALIQ_FCPUFDEST := fSubstDecimal(FormatFloat('########0.0000', quSQL.FieldbyName('ALIQ_FCPUFDEST').AsFloat), 15);
          ALIQ_ICMSUFDEST := fSubstDecimal(FormatFloat('########0.0000', quSQL.FieldbyName('ALIQ_ICMSUFDEST').AsFloat), 15);
          ALIQ_ICMSINTER := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('ALIQ_ICMSINTER').AsFloat), 15);
          ALIQ_ICMSINTERPART := fSubstDecimal(FormatFloat('########0.0000', quSQL.FieldbyName('ALIQ_ICMSINTERPART').AsFloat), 15);
          TOT_FCPUFDEST := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TOT_FCPUFDEST').AsFloat), 15);
          TOT_ICMSUFDEST := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TOT_ICMSUFDEST').AsFloat), 15);
          TOT_ICMSUFREMET := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TOT_ICMSUFREMET').AsFloat), 15);

          //BasPis := fSubstDecimal(FormatFloat('########0.00', (quSQL.FieldbyName('TotPe2').AsFloat - quSQL.FieldbyName('TotDsr').AsFloat)), 15);
          //BasCof := fSubstDecimal(FormatFloat('########0.00', (quSQL.FieldbyName('TotPe2').AsFloat - quSQL.FieldbyName('TotDsr').AsFloat)), 15);
          BasPis := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('BASPIS').AsFloat), 15);
          BasCof := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('BASCOF').AsFloat), 15);
          TotPis := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotPis').AsFloat), 15);
          TotCof := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TotCof').AsFloat), 15);
          TOTIBPT := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TOTIBPT').AsFloat), 15);
          TOTDESONERADO := fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('TOTDESONERADO').AsFloat), 15); //3.1
          CODDesoneracao := formatFloat('00', quSQL.FieldByName('CODDESONERACAO').Asinteger); //3.1

          PerPis := fSubstDecimal(FormatFloat('##0.00', quSQL.FieldbyName('ALIQPIS').AsFloat), 05);
          PerCof := fSubstDecimal(FormatFloat('##0.00', quSQL.FieldbyName('ALIQCOF').AsFloat), 05);
          NfePis := quSQL.FieldbyName('CstPis').AsString;
          NfeCof := quSQL.FieldbyName('CstCof').AsString;

          VLRBCII := fSubstDecimal(FormatFloat('########0.00', 0), 15);
          VLRIMPII := fSubstDecimal(FormatFloat('########0.00', 0), 15);
          VLRDESPATU := fSubstDecimal(FormatFloat('########0.00', 0), 15);
          VLRIOF := fSubstDecimal(FormatFloat('########0.00', 0), 15);

          NUMPEDCOMPRA := Trim(fLimpaAcentos(quSQL.FieldbyName('NUMPEDCOMPRA').AsString)) + Replicate(' ', 15 -
            length(Trim(fLimpaAcentos(quSQL.FieldbyName('NUMPEDCOMPRA').AsString))));
          copy(NUMPEDCOMPRA, 1, 15);

          NUMITEMCOMPRA := trim(quSQL.FieldbyName('NUMITEMCOMPRA').AsString) + Replicate(' ', 6 - length(trim(quSQL.FieldbyName('NUMITEMCOMPRA').AsString)));
          copy(NUMITEMCOMPRA, 1, 6);

          CEST := Trim(fLimpaAcentos(quSQL.FieldbyName('CEST').AsString)) + Replicate(' ', 7 -
            length(Trim(fLimpaAcentos(quSQL.FieldbyName('CEST').AsString))));

          CODANP := Trim(fLimpaAcentos(quSQL.FieldbyName('CODANP').AsString)) + Replicate(' ', 9 -
            length(Trim(fLimpaAcentos(quSQL.FieldbyName('CODANP').AsString))));

          CODIF := Trim(fLimpaAcentos(quSQL.FieldbyName('CODIF').AsString)) + Replicate(' ', 21 -
            length(Trim(fLimpaAcentos(quSQL.FieldbyName('CODIF').AsString))));

          FCI := Trim(fLimpaAcentos(quSQL.FieldbyName('FCI').AsString)) + Replicate(' ', 50 -
            length(Trim(fLimpaAcentos(quSQL.FieldbyName('FCI').AsString))));

          DESCANP := Trim(fLimpaAcentos(quSQL.FieldbyName('DESCANP').AsString)) + Replicate(' ', 80 -
            length(Trim(fLimpaAcentos(quSQL.FieldbyName('DESCANP').AsString))));

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
            fNumZeros(IntToStr(quSQL.FieldbyName('NroPe2').AsInteger), 3) + // Nro. do item
            CodPro + // C�digo do Produto ou servi�o
            cEAN + // GTIN cEAN
            DesPro + // Descri��o do produto ou servi�o
            ClsIpi + // C�digo NCM
            '   ' + // EX_TIPI
            '  ' + // G�nero do produto ou servi�o
            CodCfo + // C�digo fiscal da opera��o
            CodUnd + // Unidade comercial
            QtdPro + // Quantidade comercial
            VluPro + // Valor unit�rio de comercializa��o
            TotPro + // Valor Total Bruto dos Produtos ou Servi�os
            cEANTrib + // GTIN cEANTrib
            CodUnd + // Unidade Tributavel
            QtdPro + // Quantidade Tributavel
            VluPro + // Valor Unit�rio de tributa��o
            TotFrt + // Valor Total do Frete
            TotSeg + // Valor Total do Seguro
            TOTDES + // Valor de Outras Despesas
            TotDsr + // Valor do Desconto
            VLRBCII + // Valor Base de Calculo para Importa��o
            VLRIMPII + // Valor do imposto de importa��o
            VLRDESPATU + // Valor de Despesas Aduneiras
            VLRIOF + // Valor de IOF
            TOTIBPT + //Transpar�ncia Tribut�ria
            NUMPEDCOMPRA + //Numero do pedido de compra
            NUMITEMCOMPRA + //Numero do item do pedido de compra
            CEST + //CEST
            CODANP + //COD. ANP
            CODIF + //COD DIF
            FCI + // FCI - N�mero de controle da FCI - Ficha de Conte�do de Importa��o
            DESCANP); // DESCANP - Descri��o do ANP se usar derivado de combust�vel


          productObj := TlkJSONobject.Create;
          itemObj := TlkJSONobject.Create;
          impostoObj := TlkJSONobject.Create;

          itemObj.Add('nItem', putNumber(quSQL.FieldbyName('NroPe2').AsInteger));
          itemObj.Add('cProd', putString(CodPro));
          itemObj.Add('cEAN', putString(cEAN));
          itemObj.Add('xProd', putString(DesPro));
          itemObj.Add('NCM', putString(ClsIpi));
          itemObj.Add('EXTIPI', putString(''));
          itemObj.Add('CFOP', putString(CodCfo));
          itemObj.Add('uCom', putString(CodUnd));
          itemObj.Add('qCom', putStrToNumber(QtdPro));
          itemObj.Add('vUnCom', putStrToNumber(VluPro));
          itemObj.Add('vProd', putStrToNumber(TotPro));
          itemObj.Add('cEANTrib', putString(cEANTrib));
          itemObj.Add('uTrib', putString(CodUnd));
          itemObj.Add('qTrib', putStrToNumber(QtdPro));
          itemObj.Add('vUnTrib', putStrToNumber(VluPro));
          itemObj.Add('vFrete', putStrToNumber(TotFrt));
          itemObj.Add('vSeg', putStrToNumber(TotSeg));
          itemObj.Add('vOutro', putStrToNumber(TOTDES));
          itemObj.Add('vDesc', putStrToNumber(TotDsr));
          itemObj.Add('nFCI', putString(FCI));
          itemObj.Add('xPed', putString(NUMPEDCOMPRA));
          itemObj.Add('nItemPed', putString(NUMITEMCOMPRA));
          itemObj.Add('CEST', putString(CEST));

          impostoIIObj := TlkJSONobject.Create;
          impostoIIObj.Add('vBC', putStrToNumber(VLRBCII));
          impostoIIObj.Add('vII', putStrToNumber(VLRIMPII));
          impostoIIObj.Add('vDespAdu', putStrToNumber(VLRDESPATU));
          impostoIIObj.Add('vIOF', putStrToNumber(VLRIOF));
          impostoObj.Add('vTotTrib', putStrToNumber(TOTIBPT));

          impostoObj.Add('importoImportacao', impostoIIObj);

          //========================== THIAGO OBS DO ITEM
          strAux := Trim(quSQL.FieldbyName('ObsPe2').AsString);


          quSql1.Active := False;
          quSQL1.sql.Text := 'select ICMSUB, MRGMVA from estufe ufe ' +
                ' where 1 = 1 ' +
                ' and ufe.codstr = ' + QuotedStr(qusql.fieldbyname('CODSTR').asstring) +
                ' and ufe.tipstr = ' + QuotedStr('Saida') +
                ' and ufe.ufemitente = ' + QuotedStr(UfeEmp) +
                ' and ufe.sigufe = ' + QuotedStr(UfeCli);
         quSQL1.Active := true;
         valorMva := quSql1.FieldbyName('MRGMVA').AsFloat;
         percentualIcm := quSql1.FieldbyName('ICMSUB').AsFloat;


          quSql1.Active := False;
          quSQL1.sql.Text := 'select CSTITE from estite where ' + #13 +
                ' CodCLP = ' + QuotedStr(qusql.fieldbyname('CODCLP').asstring) +
                ' and CODGRU = ' + QuotedStr(qusql.fieldbyname('CODGRU').asstring) +
                ' and CODSUB = ' + QuotedStr(qusql.fieldbyname('CODSUB').asstring) +
                ' and CODPRO = ' + QuotedStr(qusql.fieldbyname('CODPRO').asstring);
           quSQL1.Active := true;

        precoUnitario := qusql1.fieldbyname('CSTITE').AsFloat;
        valorIpi :=     quSQL.FieldbyName('TotIpi').AsFloat;
        quantidade := quSQL.FieldbyName('QtpPe2').AsFloat;
        valorComMva := ((((precoUnitario + valorIpi) * (1 + valorMva / 100)) * quantidade) * percentualIcm) / 100;
        valorSemMva := (((precoUnitario + valorIpi) * quantidade) * percentualIcm) / 100;

          // descricao de DI
          qusql1.Active := false;
          quSQL1.sql.Text := 'Select DSRIMP from estpro where ' + #13 +
            ' CodCLP = ' + QuotedStr(qusql.fieldbyname('CODCLP').asstring) +
            ' and CODGRU = ' + QuotedStr(qusql.fieldbyname('CODGRU').asstring) +
            ' and CODSUB = ' + QuotedStr(qusql.fieldbyname('CODSUB').asstring) +
            ' and CODPRO = ' + QuotedStr(qusql.fieldbyname('CODPRO').asstring);

          quSQL1.Active := true;

          if Trim(FCI) <> '' then
          begin
             strAux := strAux + FCI
          end;

          strAux := copy(Trim(strAux), 1, 500) + fReplicate(' ', 500 - Length(copy(Trim(strAux), 1, 500)));
          strAux := StringReplace(StringReplace(strAux, #13, ' ', [rfReplaceAll, rfIgnoreCase]), #10, '',
            [rfReplaceAll, rfIgnoreCase]);
          // descricao de DI
          Writeln(ArqENV, 'EM1206' + StrAux);
          productObj.Add('infAdProd', putString(StrAux));

          if (1 = 1) then
          begin
            quSql1.Active := False;
            quSql1.sql.text := ' select * from FATPED_LOTE ' +
              ' where 1 = 1 ' +
              ' and CODEMP = ' + FatPed.FieldByName('CODEMP').AsString +
              ' and DTERES = ' + QuotedStr(fDateToSQL(FatPed.FieldByName('DTERES').asDateTime)) +
              ' and NUMRES = ' + FatPed.FieldByName('NUMRES').AsString;
            quSql1.Active := True;

            quSql1.first;

            while not (quSql1.Eof) do
            begin
              DecimalSeparator := '.';
              //fReplicate(' ', 14 - Length(copy(Trim(InsTra), 1, 14))
              nLote := quSql1.FieldByName('NLOTE').AsString;
              qLote := FormatFloat('#0.000', quSql1.FieldByName('QLOTE').AsFloat);
              dFab := FormatDateTime('dd/MM/yyyy', quSql1.FieldByName('DFAB').AsDateTime);
              dVal := FormatDateTime('dd/MM/yyyy', quSql1.FieldByName('DVAL').AsDateTime);
              vPMC := FormatFloat('#0.00', quSql1.FieldByName('VPMC').AsFloat);

              nLote := nLote + fReplicate(' ', 20 - Length(Trim(nLote)));
              qLote := fReplicate(' ', 15 - Length(Trim(qLote))) + qLote;
              dFab := dFab + fReplicate(' ', 10 - Length(Trim(dFab)));
              dVal := dVal + fReplicate(' ', 10 - Length(Trim(dVal)));
              vPMC := fReplicate(' ', 15 - Length(Trim(vPMC))) + vPMC;

              Writeln(ArqEnv, 'EM3207' +
                nLote +
                qLote +
                dFab +
                dVal +
                vPMC
                );

              productRastroObj := TlkJSONobject.Create();
              productRastroObj.Add('nLote', putString(nLote));
              productRastroObj.Add('qLote', putStrToNumber(qLote));
              productRastroObj.Add('dFab', putString(dFab));
              productRastroObj.Add('dVal', putString(dVal));
              productRastroObjList.Add(productRastroObj);

              quSql1.Next;
            end;
          end;

          if (1 = 1) then //Lotes Medicamentos - Gabriel
          begin
            quSql1.Active := False;
            quSql1.sql.text := ' select * from FATPED_MED ' +
              ' where 1 = 1 ' +
              ' and CODEMP = ' + FatPed.FieldByName('CODEMP').AsString +
              ' and DTERES = ' + QuotedStr(fDateToSQL(FatPed.FieldByName('DTERES').asDateTime)) +
              ' and NUMRES = ' + FatPed.FieldByName('NUMRES').AsString;
            quSql1.Active := True;

            quSql1.first;

            while not (quSql1.Eof) do
            begin
              DecimalSeparator := '.';
              //fReplicate(' ', 14 - Length(copy(Trim(InsTra), 1, 14))
              nLote := quSql1.FieldByName('NLOTE').AsString;
              qLote := FormatFloat('#0.000', quSql1.FieldByName('QLOTE').AsFloat);
              dFab := FormatDateTime('dd/MM/yyyy', quSql1.FieldByName('DFAB').AsDateTime);
              dVal := FormatDateTime('dd/MM/yyyy', quSql1.FieldByName('DVAL').AsDateTime);
              vPMC := FormatFloat('#0.00', quSql1.FieldByName('VPMC').AsFloat);

              nLote := nLote + fReplicate(' ', 20 - Length(Trim(nLote)));
              qLote := fReplicate(' ', 15 - Length(Trim(qLote))) + qLote;
              dFab := dFab + fReplicate(' ', 10 - Length(Trim(dFab)));
              dVal := dVal + fReplicate(' ', 10 - Length(Trim(dVal)));
              vPMC := fReplicate(' ', 15 - Length(Trim(vPMC))) + vPMC;

              Writeln(ArqEnv, 'EM4207' +
                nLote +
                qLote +
                dFab +
                dVal +
                vPMC
                );

              productMedObj := TlkJSONobject.Create();
              productMedObj.Add('nLote', putString(nLote));
              productMedObj.Add('qLote', putStrToNumber(qLote));
              productMedObj.Add('dFab', putString(dFab));
              productMedObj.Add('dVal', putString(dVal));
              productMedObj.Add('vPMC', putStrToNumber(vPMC));
              productMedObjList.Add(productMedObj);

              quSql1.Next;
            end;
          end;

          productObj.Add('imposto', impostoObj);
          productObj.Add('rastro', productRastroObjList);
          productObj.Add('med', productMedObjList);
          productObjList.Add(productObj);

          Writeln(ArqEnv, 'EM0207' + // Uso interno do sistema
            '01' + // Tipo de opera��o
            fNumZeros(IntToStr(quSQL.FieldbyName('NroPe2').AsInteger + 1), 3) + // Nro. do item
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
            TotSub + // Valor do ICMS ST
            TOTDESONERADO + //Valor do ICMS Desonerado //3.1
            CodDesoneracao + //C�digo do ICMS Desonerado //3.1
            ALIQ_CRED_SN + //Aliq. Cred SN
            VLR_CRED_SN +//Vlr. Cred SN
            fSubstDecimal(FormatFloat('########0.00', ((precoUnitario + valorIpi) * (1 + valorMva / 100)) * quantidade), 15) + // vBCSTRet
            fSubstDecimal(FormatFloat('########0.00', valorSemMva), 15) + //  vICMSSubstituto
            fSubstDecimal(FormatFloat('########0.00', valorComMva - valorSemMva), 15) + // vICMSSTRet
            fSubstDecimal(FormatFloat('########0.00', percentualIcm), 15) // pST
            );

          impostoIcmsObj := TlkJSONobject.Create;
          impostoIcmsObj.Add('orig', putString(CodSt1));
          impostoIcmsObj.Add('cst', putString(CodSt2));
          impostoIcmsObj.Add('modBCST', putString('3'));

          impostoIcmsObj.Add('pRedBC', putStrToNumber(RedIcm));
          impostoIcmsObj.Add('vBC', putStrToNumber(BasIcm));
          impostoIcmsObj.Add('pICMS', putStrToNumber(PerIcm));
          impostoIcmsObj.Add('vICMS', putStrToNumber(TotIcm));
          impostoIcmsObj.Add('vBCST', putStrToNumber(BasSub));
          impostoIcmsObj.Add('pICMSST', putStrToNumber(IcmSub));
          impostoIcmsObj.Add('pMVAST', putStrToNumber(MrgSub));
          impostoIcmsObj.Add('vICMSST', putStrToNumber(TotSub));
          impostoIcmsObj.Add('vICMSDeson', putStrToNumber(TOTDESONERADO));
          impostoIcmsObj.Add('motDesICMS', putString(CodDesoneracao));
          impostoIcmsObj.Add('pCredSN', putStrToNumber(ALIQ_CRED_SN));
          impostoIcmsObj.Add('vCredICMSSN', putStrToNumber(VLR_CRED_SN));
          impostoIcmsObj.Add('vBCSTRet', putStrToNumber(FormatFloat('########0.00', ((precoUnitario + valorIpi) * (1 + valorMva / 100)) * quantidade)));
          impostoIcmsObj.Add('vICMSSubstituto', putStrToNumber(FormatFloat('########0.00', valorSemMva)));
          impostoIcmsObj.Add('vICMSSTRet', putStrToNumber(FormatFloat('########0.00', valorComMva - valorSemMva)));
          impostoIcmsObj.Add('pST', putStrToNumber(FormatFloat('########0.00', percentualIcm)));
          impostoObj.Add('icms', impostoIcmsObj);

          FlgDifal := fmManGDB.BuscaSimples('FATPAR', 'FLGDIFAL', ' 1 = 1 ');

          if (FlgDifal <> 'N') then
          begin
            if fatpedINDIC_CF.AsString = '1' then
            begin
              Writeln(ArqEnv, 'EM2207' + // Uso interno do sistema
                BAS_UFDEST + // Valor da BC do ICMS na UF de destino
                ALIQ_FCPUFDEST + // Percentual do ICMS relativo ao Fundo de Combate � Pobreza (FCP) na UF de destino
                ALIQ_ICMSUFDEST + // Al�quota interna da UF de destino
                ALIQ_ICMSINTER + // Al�quota interestadual das UF envolvidas
                ALIQ_ICMSINTERPART + // Percentual provis�rio de partilha do ICMS Interestadual
                TOT_FCPUFDEST + // Valor do ICMS relativo ao Fundo de Combate � Pobreza (FCP) da UF de destino
                TOT_ICMSUFDEST + // Valor do ICMS Interestadual para a UF de destino
                TOT_ICMSUFREMET); //Valor do ICMS Interestadual para a UF do remetente
            end;
          end;

          impostoIcmsUfDestObj := TlkJSONobject.Create;
          impostoIcmsUfDestObj.Add('vBCUFDest', putStrToNumber(BAS_UFDEST));
          impostoIcmsUfDestObj.Add('vBCFCPUFDest', putStrToNumber(ALIQ_FCPUFDEST));
          impostoIcmsUfDestObj.Add('pICMSUFDest', putStrToNumber(ALIQ_ICMSUFDEST));
          impostoIcmsUfDestObj.Add('pICMSInter', putStrToNumber(ALIQ_ICMSINTER));
          impostoIcmsUfDestObj.Add('pICMSInterPart', putStrToNumber(ALIQ_ICMSINTERPART));
          impostoIcmsUfDestObj.Add('vICMSUFDest', putStrToNumber(TOT_ICMSUFDEST));
          impostoIcmsUfDestObj.Add('vICMSUFRemet', putStrToNumber(TOT_ICMSUFREMET));
          impostoObj.Add('ICMSUFDest', impostoIcmsUfDestObj);

          //if (FlgDifal <> 'N') then
          begin
            Writeln(ArqEnv, 'EM0208' + // Uso interno do sistema
              '01' + // Tipo de opera��o
              fNumZeros(IntToStr(quSQL.FieldbyName('NroPe2').AsInteger + 1), 3) + // Nro. do item
              TrbIpi + // IPI tributado
              BasIpi + // Valor da BC do IPI
              PerIpi + // Aliquota do imposto
              TotIpi + // Valor do IPI
              CSTIPI); // Situa��o tribut�ria do IPI
            impostoIpiObj := TlkJSONobject.Create;
            impostoIpiObj.Add('vBC', putStrToNumber(BasIpi));
            impostoIpiObj.Add('pIPI', putStrToNumber(PerIpi));
            impostoIpiObj.Add('vIPI', putStrToNumber(TotIpi));
            impostoIpiObj.Add('CST', putStrToNumber(CSTIPI));
            impostoObj.Add('ipi', impostoIpiObj);
          end;

          Writeln(ArqEnv, 'EM0209' + // Uso interno do sistema
            '01' + // Tipo de opera��o
            fNumZeros(IntToStr(quSQL.FieldbyName('NroPe2').AsInteger + 1), 3) + // Nro. do item
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

          impostoPisObj := TlkJSONobject.Create;
          impostoPisObj.Add('vBC', putStrToNumber(BasPis));
          impostoPisObj.Add('pIPI', putStrToNumber(PerPis));
          impostoPisObj.Add('vIPI', putStrToNumber(TotPis));
          impostoPisObj.Add('CST', putStrToNumber(NfePis));
          impostoObj.Add('pis', impostoPisObj);

          impostoCofinsObj := TlkJSONobject.Create;
          impostoCofinsObj.Add('vBC', putStrToNumber(BasCof));
          impostoCofinsObj.Add('pIPI', putStrToNumber(PerCof));
          impostoCofinsObj.Add('vIPI', putStrToNumber(TotCof));
          impostoCofinsObj.Add('CST', putStrToNumber(NfeCof));
          impostoObj.Add('cofins', impostoCofinsObj);

          Application.ProcessMessages;
          quSQL.Next;
        until QUSQL.Eof;

      Writeln(ArqEnv, 'EM0210' + // Uso interno do sistema
        fSubstDecimal(FormatFloat('########0.00', FatPedBasIcm.AsFloat), 15) + // Base de Calculo do ICMS
        fSubstDecimal(FormatFloat('########0.0000', FatPedTotIcm.AsFloat), 15) + // Valor Total do ICMS
        fSubstDecimal(FormatFloat('########0.00', FatPedBasSub.AsFloat), 15) + // Base de Calculo do ICMS ST
        fSubstDecimal(FormatFloat('########0.00', FatPedTotSub.AsFloat), 15) + // Valor Total do ICMS ST
        fSubstDecimal(FormatFloat('########0.00', FatPedTotFat.AsFloat), 15) + // Valor Total dos produtos e servi�os
        fSubstDecimal(FormatFloat('########0.00', FatPedTotFrt.AsFloat), 15) + // Valor Total do Frete
        fSubstDecimal(FormatFloat('########0.00', FatPedTotSeg.AsFloat), 15) + // Valor Total do Seguro
        fSubstDecimal(FormatFloat('########0.00', FatPedTotDsr.AsFloat + FatPedTOTDESCINC.AsFloat), 15) + // Valor Total do Desconto
        fSubstDecimal(FormatFloat('########0.00', 0), 15) + // Valor Total do II
        fSubstDecimal(FormatFloat('########0.00', FatPedTotIpi.AsFloat), 15) + // Valor Total do IPI
        fSubstDecimal(FormatFloat('########0.00', FatPedTotPis.AsFloat), 15) + // Valor Total do PIS
        fSubstDecimal(FormatFloat('########0.00', FatPedTotCof.AsFloat), 15) + // Valor Total do COFINS
        fSubstDecimal(FormatFloat('########0.00', FatPedTotOUTDESP.AsFloat), 15) + // Outras Despesas Acess�rias
        fSubstDecimal(FormatFloat('########0.00', FatPedTotGer.AsFloat), 15) + // Valor Total da NFe
        fSubstDecimal(FormatFloat('########0.00', FatPedTOTIBPT.AsFloat), 15) + // Valor Total Tribut�rio Tranparencia
        fSubstDecimal(FormatFloat('########0.00', FatPedTOTDESONERADO.AsFloat), 15) + // Valor Total o ICMS DESONERADO //3.1
        fSubstDecimal(FormatFloat('########0.00', FatPedTOT_FCPUFDEST.AsFloat), 15) + // Valor Total Fundo contra pobresa //3.1
        fSubstDecimal(FormatFloat('########0.00', FatPedTOT_ICMSUFDEST.AsFloat), 15) + // Valor Total Partilha destino //3.1
        fSubstDecimal(FormatFloat('########0.00', FatPedTOT_ICMSUFREMET.AsFloat), 15) // Valor Total Partilha emitente //3.1
        ); // Valor Total o ICMS DESONERADO //3.1

      icmsTotObj.Add('vBC', putNumber(FatPedBasIcm.AsFloat));
      icmsTotObj.Add('vICMS', putNumber(FatPedTotIcm.AsFloat));
      icmsTotObj.Add('vBCST', putNumber(FatPedBasSub.AsFloat));
      icmsTotObj.Add('vST', putNumber(FatPedTotSub.AsFloat));
      icmsTotObj.Add('vProd', putNumber(FatPedTotFat.AsFloat));
      icmsTotObj.Add('vFrete', putNumber(FatPedTotFrt.AsFloat));
      icmsTotObj.Add('vSeg', putNumber(FatPedTotSeg.AsFloat));
      icmsTotObj.Add('vDesc', putNumber(FatPedTotDsr.AsFloat + FatPedTOTDESCINC.AsFloat));
      icmsTotObj.Add('vII', putNumber(0));
      icmsTotObj.Add('vIPI', putNumber(FatPedTotIpi.AsFloat));
      icmsTotObj.Add('vPIS', putNumber(FatPedTotPis.AsFloat));
      icmsTotObj.Add('vCOFINS', putNumber(FatPedTotCof.AsFloat));
      icmsTotObj.Add('vOutro', putNumber(FatPedTotOUTDESP.AsFloat));
      icmsTotObj.Add('vNF', putNumber(FatPedTotGer.AsFloat));
      icmsTotObj.Add('vTotTrib', putNumber(FatPedTOTIBPT.AsFloat));
      icmsTotObj.Add('vICMSDeson', putNumber(FatPedTOTDESONERADO.AsFloat));
      icmsTotObj.Add('vFCPUFDest', putNumber(FatPedTOT_FCPUFDEST.AsFloat));
      icmsTotObj.Add('vICMSUFDest', putNumber(FatPedTOT_ICMSUFDEST.AsFloat));
      icmsTotObj.Add('vICMSUFRemet', putNumber(FatPedTOT_ICMSUFREMET.AsFloat));

      TipFrt := inttostr(FatPedID_FRETE.AsInteger);

      if Length(Trim(FatPedCgcTra.Value)) = 11 then
        CpfTra := FatPedCgcTra.Value
      else
        CgcTra := FatPedCgcTra.Value;

      Id_FinUfe := FatPedId_TraUfe.Value;
      Id_FinCie := FatPedId_TraCie.Value;
      InsTra := fLimpaStr(FatPedInsTra.Value);
      NomTra := fLimpaAcentos(FatPedNomTra.Value);
      if Trim(FatPedTenTra.Value) <> '' then
        EndTra := Trim(FatPedTenTra.Value) + '. ' + FatPedEndTra.Value + ', ' + trim(fatpednumtra.Value)
      else
        EndTra := FatPedEndTra.Value + ' ' + trim(fatpednumtra.Value);
      EndTra := fLimpaAcentos(EndTra);
      NumTra := fLimpaAcentos(FatPedNumTra.Value);
      RefTra := fLimpaAcentos(FatPedRefTra.Value);
      BaiTra := fLimpaAcentos(FatPedBaiTra.Value);
      UfeTra := fLimpaAcentos(FatPedUfeTra.Value);
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

      if trim(NomTra) = '' then
      begin
        CgcTra := StringReplace(CgcTra, '0', ' ', [rfReplaceAll]);
        CpfTra := StringReplace(CpfTra, '0', ' ', [rfReplaceAll]);
        ;
      end;

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

      PesLiq := fSubstDecimal(FormatFloat('0.000', FatPedInfLiq.AsFloat), 15);
      PesBrt := fSubstDecimal(FormatFloat('0.000', FatPedInfBrt.AsFloat), 15);
      EspFat := fLimpaAcentos(FatPedEspFat.Value);
      MarFat := fLimpaAcentos(FatPedMarFat.Value);
      MarFat := copy(Trim(MarFat), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(MarFat), 1, 60)));
      EspFat := copy(Trim(EspFat), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(EspFat), 1, 60)));
      nrofat := FatPedNROFAT.AsString;
      NROFat := copy(Trim(NROFat), 1, 10) + fReplicate(' ', 10 - Length(copy(Trim(nroFat), 1, 10)));

      placa := FatPedPLCTRA.AsString;
      placa := copy(Trim(placa), 1, 07) + fReplicate(' ', 07 - Length(copy(Trim(placa), 1, 07)));

      ufPlaca := FatPedUFEPLC.AsString;
      ufPlaca := copy(Trim(ufPlaca), 1, 02) + fReplicate(' ', 02 - Length(copy(Trim(ufPlaca), 1, 02)));

      Writeln(ArqEnv, 'EM0211' + // Uso interno do sistema
        TipFrt + // Modalidade do Frete
        CgcTra + // CNPJ
        CpfTra + // CPF
        NomTra + // Raz�o social ou nome
        InsTra + // IE
        EndTra + // Endere�o completo
        CidTra + // Nome do Municipio
        UfeTra + // Sigla da UF
        fNumZeros(IntToStr(FatPedAltVol.AsInteger), 15) + // Quantidade de volumes
        EspFat + // Especie dos volumes transportados
        MarFat + // Marca dos volumes transportados
        PesLiq + // Peso Liquido (em Kg)
        PesBrt + // Peso Bruto (em Kg)
        NROFAT +
        placa +
        ufPlaca);

      transportObj.Add('modFrete', putString(TipFrt));
      transportObj.Add('CNPJCPF', putString(CgcTra + CpfTra));
      transportObj.Add('xNome', putString(NomTra));
      transportObj.Add('ie', putString(InsTra));
      transportObj.Add('xEnder', putString(EndTra));
      transportObj.Add('xMun', putString(CidTra));
      transportObj.Add('uf', putString(UfeTra));
      transportObj.Add('qVol', putNumber(FatPedAltVol.AsInteger));
      transportObj.Add('esp', putString(EspFat));
      transportObj.Add('marca', putString(MarFat));
      transportObj.Add('pesoL', putString(PesLiq));
      transportObj.Add('pesoB', putString(PesBrt));
      transportObj.Add('nVol', putString(NROFAT));
      transportObj.Add('placa', putString(placa));
      transportObj.Add('ufPlaca', putString(ufPlaca));

      if FatPedUFECLI.AsString = 'EX' then
      begin
        LOCEMB := fLimpaAcentos(FatpedLOCEMB.AsString);
        LOCEMB := copy(Trim(LOCEMB), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(LOCEMB), 1, 60)));
        UFEMB := Trim(FatpedUFEMB.AsString);

        Writeln(ArqEnv, 'EM1211' +
          UFEMB + //UF do Embarque
          LOCEMB); //Local de Embarque
        exportObj.Add('UFSaidaPais', putString(FatpedLOCEMB.AsString));
        exportObj.Add('xLocExporta', putString(LOCEMB));
        exportObj.Add('xLocDespacho', putString(LOCEMB));
      end;

      if FatPedIntFin.Value = 'Sim' then
      begin
        NroDoc := fSubstDecimal(IntToStr(FatPedNroNfs.Value), 60);
        Writeln(ArqEnv, 'EM0212' + // Uso interno do sistema
          NroDoc + // N�mero da fatura
          fSubstDecimal(FormatFloat('########0.00', FatPedTotGer.Value), 15) + // Valor Original
          '           0.00' + // Valor do desconto
          fSubstDecimal(FormatFloat('########0.00', FatPedTotGer.Value), 15)); // Valor Original

        nfeObj.Add('nfat', putString(NroDoc));
        nfeObj.Add('vliq', putNumber(FatPedTotGer.AsFloat));
        nfeObj.Add('voriginal', putNumber(FatPedTotGer.AsFloat));

        with quSQL, SQL do
        begin
          Close;
          Text := ' Select FatPe3.NroPe3,' +
            '        FatPe3.DtvPe3,' +
            '        FatPe3.VlpPe3 From FatPe3' +
            ' Where FatPe3.CodEmp = :CodEmp' +
            '   and FatPe3.DteRes = :DteRes' +
            '   and FatPe3.NumRes = :NumRes' +
            '   and FatPe3.SeqLib = :SeqLib' +
            '   and FatPe3.SeqFat = :SeqFat' +
            ' Order by FatPe3.NroPe3';
          with Params do
          begin
            Params[0].AsInteger := FatPedCodEmp.AsInteger;
            Params[1].AsDateTime := FatPedDteRes.AsDateTime;
            Params[2].AsInteger := FatPedNumRes.AsInteger;
            Params[3].AsInteger := fatPedSeqLib.AsInteger;
            Params[4].AsInteger := FatPedSeqFat.AsInteger;

          end;

          Open;
          First;

        end;

        while not quSQL.EOF do
        begin
          NroDoc := IntToStr(FatPedNroNfs.Value) + '-' + fNumZeros(IntToStr(quSQL.FieldbyName('NroPe3').AsInteger), 2);
          NroDoc := copy(Trim(NroDoc), 1, 60) + fReplicate(' ', 60 - Length(copy(Trim(NroDoc), 1, 60)));
          Writeln(ArqEnv, 'EM0213' + // Uso interno do sistema
                           NroDoc + // N�mero da fatura
                           copy(FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DtvPe3').AsDateTime), 7, 4) + '-' + // Data de vencimento
                           copy(FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DtvPe3').AsDateTime), 4, 2) + '-' +
                           copy(FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DtvPe3').AsDateTime), 1, 2) +
                           fSubstDecimal(FormatFloat('########0.00', quSQL.FieldbyName('VlpPe3').AsFloat), 15)); // Valor da duplicata
          Application.ProcessMessages;

          pagamentoObj := TlkJSONobject.Create;
          pagamentoObj.Add('vPag', putNumber(quSQL.FieldbyName('VlpPe3').AsFloat));
          pagamentoObjList.Add(pagamentoObj);
          quSQL.Next;
        end;

      end;

      ObsFat := '';
      if Trim(fLimpaAcentos(FatPedObsFat.asString)) <> '' then ObsFat := ObsFat +' '+ Trim(fLimpaAcentos(FatPedObsFat.asString));
      if Trim(fLimpaAcentos(FatPedOb1Fat.asString)) <> '' then ObsFat := ObsFat +' '+ Trim(fLimpaAcentos(FatPedOb1Fat.asString));
      if Trim(fLimpaAcentos(FatPedOb2Fat.asString)) <> '' then ObsFat := ObsFat +' '+ Trim(fLimpaAcentos(FatPedOb2Fat.asString));
      if Trim(fLimpaAcentos(FatPedOb3Fat.asString)) <> '' then ObsFat := ObsFat +' '+ Trim(fLimpaAcentos(FatPedOb3Fat.asString));
      if Trim(fLimpaAcentos(FatPedOb4Fat.asString)) <> '' then ObsFat := ObsFat +' '+ Trim(fLimpaAcentos(FatPedOb4Fat.asString));
      if Trim(fLimpaAcentos(FatPedOb5Fat.asString)) <> '' then ObsFat := ObsFat +' '+ Trim(fLimpaAcentos(FatPedOb5Fat.asString));
      if Trim(fLimpaAcentos(FatPedOb6Fat.asString)) <> '' then ObsFat := ObsFat +' '+ Trim(fLimpaAcentos(FatPedOb6Fat.asString));
      if Trim(fLimpaAcentos(FatPedOb7Fat.asString)) <> '' then ObsFat := ObsFat +' '+ Trim(fLimpaAcentos(FatPedOb7Fat.asString));
      if Trim(fLimpaAcentos(FatPedOb8Fat.asString)) <> '' then ObsFat := ObsFat +' '+ Trim(fLimpaAcentos(FatPedOb8Fat.asString));

      if (FatPedTOT_FCPUFDEST.AsFloat > 0)   then ObsFat := 'Total do ICMS relativo ao Fundo de Combate � Pobreza: ' + FormatFloat('R$ 0.00', FatPedTOT_FCPUFDEST.AsFloat) + '; ' + ObsFat;
      if (FatPedTOT_ICMSUFDEST.AsFloat > 0)  then ObsFat := 'Total do ICMS Interestadual para a UF de destino: '     + FormatFloat('R$ 0.00', FatPedTOT_ICMSUFDEST.AsFloat) + '; ' + ObsFat;
      if (FatPedTOT_ICMSUFREMET.AsFloat > 0) then ObsFat := 'Total do ICMS Interestadual para a UF do remetente: '   + FormatFloat('R$ 0.00', FatPedTOT_ICMSUFREMET.AsFloat) + '; ' + ObsFat;

      obsfat := StringReplace(obsfat, chr(13) + chr(10), ' ', [rfreplaceAll]);
      ObsFat := copy(ObsFat, 1, 8000);
      ObsFat := copy(Trim(ObsFat), 1, 8000) + fReplicate(' ', 8000 - Length(copy(Trim(ObsFat), 1, 8000)));

      Writeln(ArqEnv, 'EM0214' + // Uso interno do sistema
        ObsFat); // Informa��es adicionais de interesse do Fisco

      nfeObj.Add('ide', ideObj);
      nfeObj.Add('emit', emitObj);
      nfeObj.Add('dest', destObj);
      nfeObj.Add('nfCOntingencia', contigenciaObj);
      nfeObj.Add('inf', infNFe);
      nfeObj.Add('det', productObjList);
      nfeObj.Add('icmsTot', icmsTotObj);
      nfeObj.Add('entrega', entregaObj);
      nfeObj.Add('transporte', transportObj);
      nfeObj.Add('export', exportObj);
      nfeObj.Add('pagamento', pagamentoObjList);
      nfeObj.Add('infCpl', putString(ObsFat));
      json := TlkJSON.GenerateText(nfeObj);
      Clipboard.astext := json;
      jsonText := TStringList.create;
      jsonText.Add(json);

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

    if not DirectoryExists(CaminhoLeitura) then
      ForceDirectories(CaminhoLeitura);

    if not DirectoryExists(CaminhoRetorno) then
      ForceDirectories(CaminhoRetorno);

    ReescreveChaveEnviada(Chave);

    CopyFile(Pchar(ArqRe1), Pchar(CaminhoLeitura + '\EVNOTA' + VNumNota + '.txt'), SeqRet);
    jsonText.SaveToFile(CaminhoLeitura + '\EVNOTA' + VNumNota + '.json');

    if TipoEnvio = 4 then
    begin
      CopyFile(Pchar(ArqRe1), Pchar(CaminhoLeitura + '\DPEC' + VNumNota + '.txt'), SeqRet);

      if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
      begin
        if sn then
          Executa(ExtractFilePath(Application.exename) + 'NFeEmerion2.exe DPEC ' + vnumnota, SW_NORMAL)
        else
          Executa(ExtractFilePath(Application.exename) + 'NFeEmerion2.exe DPEC ' + vnumnota, SW_NORMAL);
      end;
    end
    else if TipoEnvio = 3 then
    begin
      CopyFile(Pchar(ArqRe1), Pchar(CaminhoLeitura + '\EVNOTA' + VNumNota + '.txt'), SeqRet);

      if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
      begin
        if sn then
          Executa(ExtractFilePath(Application.exename) + 'NFeEmerion2.exe ENVIASN ' + vnumnota, SW_NORMAL)
        else
          Executa(ExtractFilePath(Application.exename) + 'NFeEmerion2.exe ENVIA ' + vnumnota, SW_NORMAL);
      end;
    end;

    if (Chave <> RecuperaChaveEnviando.Chave) then
    begin
      if trim(RecuperaChaveEnviando.Chave) <> '' then
        Chave := RecuperaChaveEnviando.Chave;
    end;

    FatPed.edit;
    FatPedFLGATU.value := 'F';
    FatPedSeqNfe.AsString := Chave;

    with FatPed do
    begin
      fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
      ;
      try
        ApplyUpdates; {Tenta aplicar as altera��es}
        ;
        fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
        ;
      except
        fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
        ;
        if FatPed.State <> dsBrowse then
          FatPed.CancelUpdates;
        raise;
      end;
      CommitUpdates; {sucesso!, limpa o cache...}
    end;

    //Processo para NFe Denegada
    if RecuperaChaveEnviando.Denegada = 'S' then
    begin

      MessageBox(Handle, 'Nota fiscal ser� cancelada por ter sido denegada do SeFaz.', 'Envio NFe', MB_OK + MB_ICONINFORMATION);

      FatPed.edit;
      FatPedFLGATU.value    := 'F';
      FatPedENVNFE.value    := 'Sim';
      FatPedUSUNFE.Value    := GUsu_Id;
      FatPedSeqNfe.Value    := Chave;
      FatPedSitFat.AsString := 'Cancelado';
      FatPedFlgDenegada.AsString := 'S';

      FatPed.Post;

      fatped.ApplyUpdates; //Tenta aplicar as altera��es

      with FatPed do
      begin
        fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
        ;
        try
          ApplyUpdates; {Tenta aplicar as altera��es}
          ;
          fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
          ;
        except
          fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
          ;
          if FatPed.State <> dsBrowse then
            FatPed.CancelUpdates;
          FatPed.Close;
          FatPed.Open;
          raise;
        end;
        CommitUpdates; {sucesso!, limpa o cache...}
      end;

      batualizar.click;

    end
    else
    begin

      if FileExists(CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + Chave + '.xml') then
      begin

        FatPed.edit;
        FatPedSeqNfe.AsString := Chave;

        if TipoEnvio = 3 then
        begin
          FatPedFLGATU.AsString := 'F';
          FatPedENVNFE.AsString := 'Sim';
          FatPedUSUNFE.AsInteger:= GUsu_Id;
        end
        else
        if TipoEnvio = 4 then
        begin
          FatPedFLGATU.AsString   := 'F';
          FatPedENVDPEC.AsString  := 'S';
          FatPedUSUDPEC.AsInteger := GUsu_Id;
          FatPedProtDPEC.AsString := RetornaProtocoloDPEC;
        end;

        AssignFile(TArquivo, (CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + Chave + '.xml'));
        Reset(TArquivo);
        ReadLn(TArquivo, TLinha);

        repeat

          Application.ProcessMessages;
          if pos('<nProt>', TLinha) > 0 then
          begin
            FatPedPRONFE.Value := (copy(TLinha, pos('<nProt>', TLinha) + Length('<nProt>'), 15));
            eprotocolo := (copy(TLinha, pos('<nProt>', TLinha) + Length('<nProt>'), 15));
          end;

          if pos('<xMotivo>', TLinha) > 0 then
            FatPedRETNFE.Value := ( copy(TLinha, pos('<xMotivo>', TLinha) + Length('<xMotivo>'),
                                                 pos('</xMotivo>', TLinha) - (pos('<xMotivo>', TLinha) + Length('<xMotivo>'))));

          if pos('<dhRecbto>', TLinha) > 0 then
          begin
            FatPedDTEPNF.value := strtodate( copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 8, 2) + '/' +
                                             copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 5, 2) + '/' +
                                             copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>'), 4));
                                             
            FatPedDTENFE.Value := strtodate( copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 8, 2) + '/' +
                                             copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 5, 2) + '/' +
                                             copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>'), 4));
          end;

          if pos('<dhRecbto>', TLinha) > 0 then
            FatPedHREPNF.Value := (copy(TLinha, pos('<dhRecbto>', TLinha) + Length('<dhRecbto>') + 11, 8));

          if pos('infNFe versao="4.00" Id="', TLinha) > 0 then
          begin
            FatPedSEQNFE.Value := (copy(TLinha, pos('infNFe versao="4.00" Id="NFe', TLinha) + Length('infNFe versao="4.00" Id="NFe'), 44));
            chaveN := (copy(TLinha, pos('infNFe versao="4.00" Id="NFe', TLinha) + Length('infNFe versao="4.00" Id="NFe'), 44));
          end;

          ReadLn(TArquivo, TLinha);

        until EOF(Tarquivo);

        CloseFile(TArquivo);

        movefile(pchar(CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + Chave + '.xml'), pchar(CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chaveN +'.xml'));

        chave := chaven;

        FatPed.Post;
        FatPed.ApplyUpdates; //Tenta aplicar as altera��es

        FatArq.Active := false;

        with Fatarq do
        begin
          Params[0].AsInteger := FatPedCodEmp.Value;
          Params[1].AsDateTime := FatPedDteRes.Value;
          Params[2].AsInteger := FatPedNumRes.Value;
          Params[3].AsInteger := fatPedSeqLib.Value;
          Params[4].AsInteger := FatPedSeqFat.Value;
        end;
        FatArq.Open;

        FatArq.Edit;
        FatArqFlgAtu.Value := 'F';
        TBlobField(FatArq.FieldByName('ArqNfe')).LoadFromFile(CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave + '.xml');
        FatArqNFETH.VALUE := 1;
        FatArqCODEMP.value := FatPedCODEMP.value;
        FatArqDTERES.value := FatPedDTERES.value;
        FatArqNUMRES.value := FatPedNUMRES.value;
        FatArqSEQLIB.Value := FatPedSEQLIB.value;
        FatArqSEQFAT.Value := FatPedSEQFAT.value;

        FatArq.Post;

        FatArq.ApplyUpdates;
        FatArq.Close;

        {EnviaEmailNFe(IniFile,//Caminho do INI
        FatPedEm1Cli.AsString,//Email Cliente
        FatPedCODTRA.AsString,//Cod. Transportadora
        FatPedNroNfs.AsString,//Nro NF
        Chave,//Chave da Danfe
        NomEmp,//Nome da Empresa
        eProtocolo,//Protocolo
        CaminhoRetorno,//Caminho do retorno
        CaminhoPDF);//Caminho do Pdf}
         ////============================== Mandando E-mail Para o Cliente ==== ////

        ini := TIniFile.create(IniFile);
        try
          ehost        := ini.ReadString('E-mail', 'host', '');
          eusuario     := ini.ReadString('E-mail', 'usuario', '');
          esenha       := ini.ReadString('E-mail', 'senha', '');
          eAutomatico  := ini.ReadInteger('E-mail', 'automatico', 0);
          ehomologacao := ini.ReadInteger('WebService', 'Ambiente', 1);
          ePORta       := ini.ReadInteger('E-mail', 'PortaSMTP', 25);
        finally
          ini.free;
        end;

        if TipoEnvio = 3 then
        begin

          if eAutomatico = 1 then
          begin
            if ehomologacao = 1 then
              //        epara := 'thinog@hotmail.com'
              epara := 'arnaldo@emerion.com.br'
            else
              ePara := FatPedEm1Cli.Value;

            sNumeroNF := copy(fNumZeros(IntToStr(FatPedNroNfs.AsInteger), 9), 1, 3) + '.' +
                         copy(fNumZeros(IntToStr(FatPedNroNfs.AsInteger), 9), 4, 3) + '.' +
                         copy(fNumZeros(IntToStr(FatPedNroNfs.AsInteger), 9), 7, 3);
                         
            eAssunto := 'NF-e: ' + sNumeroNF + ' ' + UpperCase(Trim(NomEmp));

            FindReplace('#PROTOCOLO#', eProtocolo, corpomail);
            FindReplace('#SERIE#', '1', corpomail);
            FindReplace('#EMITENTE#', trim(NomEmp), corpomail);
            FindReplace('#NUMERONOTA#', SNumeroNF, corpomail);

            eanexo := CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave + '.xml';
            EPDF   := CaminhoPDF + '\' + chave + '-nfe.PDF';
            button1.Click;

            // Email Para a Transportadora
            if FatPedCODTRA.IsNull = false then
            begin
              quSql.Active := false;
              quSql.SQL.text := 'Select EMATRA from FINTRA where codtra = ' + QuotedStr(FatPedCODTRA.asstring);
              quSql.open;

              if fmManPri.ValidaEMail(pchar(quSql.FieldByName('EMATRA').AsString)) then
              begin
                if ehomologacao = 1 then
                  epara := 'fernanda@emerion.com.br'
                else
                  ePara := quSql.FieldByName('EMATRA').asstring;

                sNumeroNF := copy(fNumZeros(IntToStr(FatPedNroNfs.Value), 9), 1, 3) + '.' +
                             copy(fNumZeros(IntToStr(FatPedNroNfs.Value), 9), 4, 3) + '.' +
                             copy(fNumZeros(IntToStr(FatPedNroNfs.Value), 9), 7, 3);
                             
                eAssunto := nomemp + ' NF-e: ' + sNumeroNF + ' ' + UpperCase(Trim(NomEmp));

                FindReplace('#PROTOCOLO#', eProtocolo, corpomail);
                FindReplace('#SERIE#', '1', corpomail);
                FindReplace('#EMITENTE#', trim(NomEmp), corpomail);
                FindReplace('#NUMERONOTA#', SNumeroNF, corpomail);

                eanexo := CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave + '.xml';
                button1.Click;
              end;
              // Email Para a Transportadora
            end;
          end; //mandando e-mail

          // Mandando E-mail Para o Cliente ================================ 

          // Danfe =========================================================
          if FatPedCodEmp.Value > 0 then
          begin
            CodEmp := FatPedCodEmp.AsInteger;
            DteRes := FatPedDteRes.AsDateTime;
            NumRes := FatPedNumRes.AsInteger;
            SeqLib := FatPedSeqLib.AsInteger;
            SeqFat := FatPedSeqFat.AsInteger;

            if FatPedCodEmp.Value > 0 then
            begin
              if fMsg('Confirma impress�o da DANFE ?', 'O') then
              begin
                AssignFile(TDANFE, CaminhoLeitura + '\' + 'DANFE' + VNumNota + '.txt');
                Rewrite(TDANFE);
                WriteLn(TDANFE, CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chaveN + '.xml');
                CloseFile(TDANFE);

                //if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
                  Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe DANFE ' + vnumnota, SW_NORMAL);
                //else
                //  AbreNfe(PChar('DANFE'), pChar(vnumnota));

                if FatPedImpNFe.Value <> 'Sim' then
                begin
                  if fMsg('DANFE impressa corretamente ?', 'O') then
                  begin
                    FatPed.Edit;
                    FatPedFlgAtu.AsString := 'F';
                    FatPedImpNFe.AsString := 'Sim';

                    with FatPed do
                    begin
                      fmManGDB.dbMain.StartTransaction;
                      try
                        ApplyUpdates;
                        fmManGDB.dbMain.Commit;
                      except
                        fmManGDB.dbMain.Rollback;

                        if FatPed.State <> dsBrowse then
                          FatPed.CancelUpdates;

                        FatPed.Close;
                        FatPed.Open;
                        raise;
                      end;

                      CommitUpdates;
                    end;

                  end;
                end;
                bAtualizar.click;
              end;

            end;
          end;
        end;
        ////////=========================================================

      end
      else
      begin

        if FileExists(CaminhoRetorno + '\LogErro-' + VNumNota + '.txt') then
        begin
          pn_erro.visible := true;
          pn_erro.BringToFront;
          memo_erro.Font.Color := clBlack;
          memo_erro.Lines.Clear;
          memo_erro.Lines.LoadFromFile(CaminhoRetorno + '\LogErro-' + VNumNota + '.txt');
          i := 1;
          repeat
            i := i + 1;
          until not FileExists(CaminhoRetorno + '\LogErro-' + VNumNota + '.EP' + inttostr(i));

          MoveFile(pchar(CaminhoRetorno + '\LogErro-' + VNumNota + '.txt'), pchar(CaminhoRetorno + '\LogErro-' + VNumNota + '.EP' + inttostr(i)));
        end;
        fmManPri.Enabled     := True;
        fmManLn7_NFE.Enabled := True;
        pnMensag.Visible     := False;
      end;
    end;
  finally
    fmManPri.Enabled     := True;
    fmManLn7_NFE.Enabled := True;
    pnMensag.Visible     := False;
  end;
end;

procedure TfmManLn7_NFE.DPECSEFAZClick(Sender: TObject);
begin
  inherited;

  if fmManGDB.BuscaSimples('FATPAR', 'ENVIO_SERVICO', ' 1=1 ') <> 'S' then
  begin
    //Envio pelo NFEEmerion
    EnvioDPEC_SEFAZ;
  end
  else
  begin
    EnvioServico(43);
  end;

end;

procedure TfmManLn7_NFE.btnImprimeDPECClick(Sender: TObject);
begin
  if fmManGDB.BuscaSimples('FATPAR', 'ENVIO_SERVICO', ' 1=1 ') <> 'S' then
  begin
    ImprimeDPEC;
  end
  else
  begin
    ImprimeDPECServico;
  end;
end;

procedure TfmManLn7_NFE.FatPedAfterScroll(DataSet: TDataSet);
begin
  inherited;
  bEnviar.Enabled := FatPedENVDPEC.AsString <> 'S';
  AlteraNFe.Enabled := true;
  //AlteraNFe.Enabled := ((FatPedENVDPEC.AsString <> 'S') and (FatPedTOT_FCPUFDEST.AsFloat = 0) and (FatPedTOT_ICMSUFDEST.AsFloat = 0) and    (FatPedTOT_ICMSUFREMET.AsFloat = 0));
  ContDPOEC.Enabled := FatPedENVDPEC.AsString <> 'S';
  DPECSEFAZ.Enabled := FatPedENVDPEC.AsString = 'S';
  btnImprimeDPEC.Enabled := FatPedENVDPEC.AsString = 'S';

end;

procedure TfmManLn7_NFE.grFatPedDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  if FatPedENVDPEC.AsString = 'S' then
  begin
    if gdSelected in State then
    begin
      grFatPed.Canvas.Brush.Color := clMaroon;
      grFatPed.Canvas.FillRect(Rect);
      grFatPed.DefaultDrawDataCell(Rect, Field, State);
    end
    else
    begin
      grFatPed.Canvas.Brush.Color := clRed;
      grFatPed.Canvas.Font.Color := clBlack;
      grFatPed.Canvas.FillRect(Rect);
      grFatPed.DefaultDrawDataCell(Rect, Field, State);
    end;
  end;
end;

procedure TfmManLn7_NFE.EnvioServico(TipoEnvio: integer);
var
  msgJust: string;
  dtCont: TDateTime;
  strSql: string;
begin
  //Envio Normal para SEFAZ
  if TipoEnvio = 3 then
  begin
    fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'FATURA||FATPED_ENVIO||' + FatPedID_FATPED.AsString + '||' + inttostr(TipoEnvio) + '||');
  end
  else if TipoEnvio = 4 then //Para CONTIGENCIA DPEC JUSTIFICATIVA
  begin

    dtCont := Now;
    msgJust := Trim(FatPedJustDPEC.AsString);

    if JustificativaContigencia(FormatDateTime('yyyy-mm-dd hh:MM:ss', dtCont), msgJust) = mrCancel then
      Abort;

    msgJust := trim(fLimpaAcentos(msgJust));
    msgJust := msgJust + Replicate(' ', 255 - length(msgJust));

    FatPed.Edit;
    FatPedFlgAtu.AsString := 'F';
    FatPedJustDPEC.AsString := msgJust;

    strSql := 'UPDATE FATPED SET JustDPEC = ' + QuotedStr(msgJust) + ' where id_fatped = ' + (FatPedID_FATPED.AsString);

    fmmangdb.dbMain.Execute(strSql);

    {try
      fmManGDB.dbMain.StartTransaction; //Inicia a Transa��o
      FatPed.ApplyUpdates; //Tenta aplicar as altera��es
      fmManGDB.dbMain.Commit; //confirma todas as altera��es fechando a transa��o
    except
      begin
        fmManGDB.dbMain.Rollback; //desfaz as altera��es se acontecer um erro
        if FatPed.State <> dsBrowse then
          FatPed.CancelUpdates;
      end;
    end; }

    fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'FATURA||FATPED_ENVIO||' + FatPedID_FATPED.AsString + '||' + inttostr(TipoEnvio) + '||');

    FatPed.Close;
    FatPed.Open;

  end
  else if TipoEnvio = 43 then //Para CONTIGENCIA DPEC JUSTIFICATIVA
  begin
    fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'FATURA||FATPED_DPECSEFAZ||' + FatPedID_FATPED.AsString + '||' + inttostr(TipoEnvio) + '||');
  end
  else
  begin
    messagebox(handle, 'Tipo de envio n�o processado. Verifique se est� apto a utiliz�-lo.', 'Envio de NFe Vendas', mb_ok + mb_iconinformation);
    abort;
  end;

end;

procedure TfmManLn7_NFE.ImprimeDPEC;
var
  Vnumnota, IniFile, CaminhoLeitura, CaminhoRetorno, chaveN: string;
  ini: Tinifile;
  TDAnfe: TextFile;
begin
  inherited;
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
    CaminhoLeitura := ini.ReadString('Geral', 'PathLeitura', '');
    CaminhoRetorno := ini.ReadString('Geral', 'PathRetorno', '');
  finally
    ini.free;
  end;

  if FatPedCodEmp.AsInteger > 0 then
  begin
    CodEmp := FatPedCodEmp.AsInteger;
    DteRes := FatPedDteRes.AsDateTime;
    NumRes := FatPedNumRes.AsInteger;
    SeqLib := FatPedSeqLib.AsInteger;
    SeqFat := FatPedSeqFat.AsInteger;

    vnumnota := FatPedNRONFS.AsString;
    chaven := FatPedSEQNFE.AsString;

    if FatPedCodEmp.AsInteger > 0 then
    begin

      if fMsg('Confirma impress�o da DANFE ?', 'O') then
      begin

        AssignFile(TDANFE, CaminhoLeitura + '\' + 'DANFE' + VNumNota + '.txt');
        Rewrite(TDANFE);
        WriteLn(TDANFE, CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chaveN + '.xml');

        if FatPedProtDPEC.AsString <> '' then
        begin
          WriteLn(TDANFE, Trim(FatPedProtDPEC.AsString));
        end;

        CloseFile(TDANFE);

        //if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
          Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe DANFE ' + vnumnota, SW_NORMAL);
        //else
        //  AbreNfe(PChar('DANFE'), pChar(vnumnota));

      end;
    end;
  end;

end;

procedure TfmManLn7_NFE.ImprimeDPECServico;
begin
  fmmangdb.CliSocket.Socket.SendText(GCodEmpCodUsuServ + 'FATURA||FATPED_IMPRIME_DPEC||' + FatPedID_FATPED.AsString + '||' + inttostr(4) + '||');
end;

procedure TfmManLn7_NFE.EnvioDPEC_SEFAZ;
var
  Vnumnota, IniFile, CaminhoLeitura, CaminhoRetorno, CaminhoPDF, chave: string;
  ini: Tinifile;
  TDPECN, TDANFE: TextFile;
  i: integer;
  sNumeroNF, NomEmp: string;
begin
  inherited;

  VNumNota := Trim(FatPednroNfs.AsString);

  if FatPedENVDPEC.AsString = 'S' then
  begin
    if not FileExists(ExtractFilePath(application.exename) + 'NFeEmerion2.ini') then
    begin
      if MessageBox(Handle, 'Arquivo de configura��o para envio de NFe n�o encontrado. Deseja continuar?', 'Enviando Nfe', MB_YESNO + MB_ICONQUESTION) = IDNO
        then
      begin
        Abort;
      end;
    end;

    IniFile := ExtractFilePath(Application.ExeName) + 'NFeEmerion2.ini';

    Ini := TIniFile.Create(IniFile);
    try
      CaminhoLeitura := Ini.ReadString('Geral', 'PathLeitura', '');
      CaminhoRetorno := Ini.ReadString('Geral', 'PathRetorno', '');
      CaminhoPDF := Ini.ReadString('Geral', 'PathDANFE', '');

    finally
      Ini.Free;
    end;

    if FatPedCodEmp.AsInteger > 0 then
    begin
      CodEmp := FatPedCodEmp.AsInteger;
      DteRes := FatPedDteRes.AsDateTime;
      NumRes := FatPedNumRes.AsInteger;
      SeqLib := FatPedSeqLib.AsInteger;
      SeqFat := FatPedSeqFat.AsInteger;

      vnumnota := FatPedNRONFS.AsString;
      chave := FatPedSEQNFE.AsString;

      if FatPedCodEmp.AsInteger > 0 then
      begin

        if fMsg('Sistema ir� encaminha NFe - ' + vnumnota + ' que se encontra em conting�ncia para o SEFAZ. Deseja proseguir?', 'O') then
        begin

          AssignFile(TDPECN, CaminhoLeitura + '\' + 'DEPCSEFAZ' + VNumNota + '.txt');
          Rewrite(TDPECN);
          WriteLn(TDPECN, CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave + '.xml');
          CloseFile(TDPECN);

          Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe DPECSEFAZ ' + vnumnota, SW_NORMAL);

          FatPed.edit;
          FatPedFLGATU.value := 'F';

          try

            if FileExists(CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + Chave + '.xml') then
            begin

              FatPed.edit;

              FatPedFLGATU.AsString := 'F';
              FatPedENVNFE.AsString := 'Sim';
              FatPedUSUNFE.AsInteger := GUsu_Id;

              with FatPed do
              begin
                fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o}
                try
                  ApplyUpdates; {Tenta aplicar as altera��es}
                  fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o}
                except
                  fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro}
                  if FatPed.State <> dsBrowse then
                    FatPed.CancelUpdates;
                  raise;
                end;
                CommitUpdates; {sucesso!, limpa o cache...}
              end;

              movefile(pchar(CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + Chave + '.xml'), pchar(CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave +
                '.xml'));

              ini := TIniFile.create(IniFile);
              try
                ehost := ini.ReadString('E-mail', 'host', '');
                eusuario := ini.ReadString('E-mail', 'usuario', '');
                esenha := ini.ReadString('E-mail', 'senha', '');
                eAutomatico := ini.ReadInteger('E-mail', 'automatico', 0);
                ehomologacao := ini.ReadInteger('WebService', 'Ambiente', 1);
                ePorta := ini.ReadInteger('E-mail', 'PortaSMTP', 25);
              finally
                ini.free;
              end;

              if eAutomatico = 1 then
              begin
                if ehomologacao = 1 then
                  //        epara := 'thinog@hotmail.com'
                  epara := 'fernanda@emerion.com.br'
                else
                  ePara := FatPedEm1Cli.Value;

                sNumeroNF := copy(fNumZeros(IntToStr(FatPedNroNfs.AsInteger), 9), 1, 3) + '.' +
                             copy(fNumZeros(IntToStr(FatPedNroNfs.AsInteger), 9), 4, 3) + '.' +
                             copy(fNumZeros(IntToStr(FatPedNroNfs.AsInteger), 9), 7, 3);
                eAssunto := 'NF-e: ' + sNumeroNF + ' ' + UpperCase(Trim(NomEmp));

                FindReplace('#PROTOCOLO#', eProtocolo, corpomail);
                FindReplace('#SERIE#', '1', corpomail);
                FindReplace('#EMITENTE#', trim(NomEmp), corpomail);
                FindReplace('#NUMERONOTA#', SNumeroNF, corpomail);

                eanexo := CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave + '.xml';
                EPDF := CaminhoPDF + '\' + chave + '-nfe.PDF';
                button1.Click;

                // Email Para a Transportadora
                if FatPedCODTRA.IsNull = false then
                begin
                  quSql.Active := false;
                  quSql.SQL.text := 'Select EMATRA from FINTRA where codtra = ' + QuotedStr(FatPedCODTRA.asstring);

                  quSql.open;

                  if fmManPri.ValidaEMail(pchar(quSql.FieldByName('EMATRA').AsString)) then
                  begin
                    if ehomologacao = 1 then
                      epara := 'fernanda@emerion.com.br'
                    else
                      ePara := quSql.FieldByName('EMATRA').asstring;

                    sNumeroNF := copy(fNumZeros(IntToStr(FatPedNroNfs.Value), 9), 1, 3) + '.' +
                                 copy(fNumZeros(IntToStr(FatPedNroNfs.Value), 9), 4, 3) + '.' +
                                 copy(fNumZeros(IntToStr(FatPedNroNfs.Value), 9), 7, 3);
                    eAssunto := nomemp + ' NF-e: ' + sNumeroNF + ' ' + UpperCase(Trim(NomEmp));

                    FindReplace('#PROTOCOLO#', eProtocolo, corpomail);
                    FindReplace('#SERIE#', '1', corpomail);
                    FindReplace('#EMITENTE#', trim(NomEmp), corpomail);
                    FindReplace('#NUMERONOTA#', SNumeroNF, corpomail);

                    eanexo := CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave + '.xml';
                    button1.Click;
                  end;
                end;
              end; //mandando e-mail

              if FatPedCodEmp.Value > 0 then
              begin
                CodEmp := FatPedCodEmp.AsInteger;
                DteRes := FatPedDteRes.AsDateTime;
                NumRes := FatPedNumRes.AsInteger;
                SeqLib := FatPedSeqLib.AsInteger;
                SeqFat := FatPedSeqFat.AsInteger;

                if FatPedCodEmp.Value > 0 then
                begin
                  if fMsg('Confirma impress�o da DANFE ?', 'O') then
                  begin
                    AssignFile(TDANFE, CaminhoLeitura + '\' + 'DANFE' + VNumNota + '.txt');
                    Rewrite(TDANFE);
                    WriteLn(TDANFE, CaminhoRetorno + '\' + VNumNota + ' - NF-e- ' + chave + '.xml');
                    CloseFile(TDANFE);

                    //if (Trim(GNFeEnvia) = '') or (Trim(GNFeEnvia) = 'EXE') or (Trim(GNFeEnvia) = 'DEFAUT') then
                      Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe DANFE ' + vnumnota, SW_NORMAL);
                    //else
                    //  AbreNfe(PChar('DANFE'), pChar(vnumnota));

                    if FatPedImpNFe.Value <> 'Sim' then
                    begin
                      if fMsg('DANFE impressa corretamente ?', 'O') then
                      begin
                        FatPed.Edit;
                        FatPedFlgAtu.AsString := 'F';
                        FatPedImpNFe.AsString := 'Sim';

                        with FatPed do
                        begin
                          fmManGDB.dbMain.StartTransaction;
                          try
                            ApplyUpdates;
                            fmManGDB.dbMain.Commit;
                          except
                            fmManGDB.dbMain.Rollback;
                            if FatPed.State <> dsBrowse then
                              FatPed.CancelUpdates;
                            FatPed.Close;
                            FatPed.Open;
                            raise;
                          end;
                          CommitUpdates; 
                        end;

                      end;
                    end;
                    bAtualizar.click;
                  end;

                end;
              end;

              ////////=========================================================

            end
            else
            begin

              if FileExists(CaminhoRetorno + '\LogErro-' + VNumNota + '.txt') then
              begin
                pn_erro.visible := true;
                pn_erro.BringToFront;
                memo_erro.Font.Color := clBlack;
                memo_erro.Lines.Clear;
                memo_erro.Lines.LoadFromFile(CaminhoRetorno + '\LogErro-' + VNumNota + '.txt');
                i := 1;
                repeat
                  i := i + 1;
                until not FileExists(CaminhoRetorno + '\LogErro-' + VNumNota + '.EP' + inttostr(i));

                MoveFile(pchar(CaminhoRetorno + '\LogErro-' + VNumNota + '.txt'), pchar(CaminhoRetorno + '\LogErro-' + VNumNota + '.EP' + inttostr(i)));
              end;
              fmManPri.Enabled     := True;
              fmManLn7_NFE.Enabled := True;
              pnMensag.Visible     := False;
            end;

          finally
            fmManPri.Enabled     := True;
            fmManLn7_NFE.Enabled := True;
            pnMensag.Visible     := False;
          end;
        end;
      end;
    end;
  end;
end;

procedure TfmManLn7_NFE.bDisponibilidadeClick(Sender: TObject);
begin
  inherited;
  Executa(ExtractFilePath(Application.exename) + '\NFeEmerion2.exe DISPONIBILIDADE', SW_NORMAL);
end;

end.

