unit ManRo6;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxColorPickEdit, dxColorCurrencyEdit, dxColorEdit,
  dxColorDateEdit, dxDBELib, dxDBColorCurrencyEdit, dxDBColorPickEdit,
  dxfProgressBar, dxDBColorEdit;

type
  TfmManRo6 = class(TfmPadrao)
    CmpNfs: TwwQuery;
    DsCmpNfs: TwwDataSource;
    PaintBox: TPaintBox;
    grCmpNfs: ThGrid;
    quSql: TwwQuery;
    UpCmpNfs: TUpdateSQL;
    grCmpNfs1: TdxDBGraphicEdit;
    grCmpNf21: TdxDBGraphicEdit;
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
    pnFornecedor: TPanel;
    pnCodFor: TLabel;
    bEnviar: TSpeedButton;
    pnDesNf2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    quSQL1: TwwQuery;
    FatArq: TwwQuery;
    UpFatArq: TUpdateSQL;
    FatArqFLGATU: TStringField;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsCODEMP: TIntegerField;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsUFENFS: TStringField;
    CmpNfsNRONFS: TIntegerField;
    CmpNfsCODPFA: TStringField;
    CmpNfsTIPPFA: TStringField;
    CmpNfsCODCF1: TStringField;
    CmpNfsCODCF2: TStringField;
    CmpNfsFLGSAI: TStringField;
    CmpNfsFLGENT: TStringField;
    CmpNfsCODFOR: TIntegerField;
    CmpNfsTIPFRT: TStringField;
    CmpNfsESPNFS: TStringField;
    CmpNfsMARNFS: TStringField;
    CmpNfsINTFIN: TStringField;
    CmpNfsDESNAT: TStringField;
    CmpNfsINSSUB: TStringField;
    CmpNfsCODTRA: TIntegerField;
    CmpNfsNOMTRA: TStringField;
    CmpNfsCGCTRA: TStringField;
    CmpNfsINSTRA: TStringField;
    CmpNfsTENTRA: TStringField;
    CmpNfsENDTRA: TStringField;
    CmpNfsREFTRA: TStringField;
    CmpNfsNUMTRA: TStringField;
    CmpNfsBAITRA: TStringField;
    CmpNfsCIDTRA: TStringField;
    CmpNfsUFETRA: TStringField;
    CmpNfsCEPTRA: TStringField;
    CmpNfsPLCTRA: TStringField;
    CmpNfsUFEPLC: TStringField;
    CmpNfsTEFFOR: TStringField;
    CmpNfsENFFOR: TStringField;
    CmpNfsRFFFOR: TStringField;
    CmpNfsNRFFOR: TStringField;
    CmpNfsBAFFOR: TStringField;
    CmpNfsCIFFOR: TStringField;
    CmpNfsUFFFOR: TStringField;
    CmpNfsCEFFOR: TStringField;
    CmpNfsTENFOR: TStringField;
    CmpNfsENDFOR: TStringField;
    CmpNfsREFFOR: TStringField;
    CmpNfsNUMFOR: TStringField;
    CmpNfsBAIFOR: TStringField;
    CmpNfsCIDFOR: TStringField;
    CmpNfsUFEFOR: TStringField;
    CmpNfsCEPFOR: TStringField;
    CmpNfsCGEFOR: TStringField;
    CmpNfsINEFOR: TStringField;
    CmpNfsINFLIQ: TFloatField;
    CmpNfsINFBRT: TFloatField;
    CmpNfsALTVOL: TIntegerField;
    CmpNfsLOTNFE: TIntegerField;
    CmpNfsENVNFE: TStringField;
    CmpNfsSEQNFE: TStringField;
    CmpNfsDTENFE: TDateTimeField;
    CmpNfsRECNFE: TStringField;
    CmpNfsPRONFE: TStringField;
    CmpNfsDOPNFE: TDateTimeField;
    CmpNfsHRENFE: TStringField;
    CmpNfsUSUNFE: TIntegerField;
    CmpNfsDTEPNF: TDateTimeField;
    CmpNfsHREPNF: TStringField;
    CmpNfsIMPNFE: TStringField;
    CmpNfsRETNFE: TStringField;
    CmpNfsFLGATU: TStringField;
    CmpNfsID_FINUFF: TIntegerField;
    CmpNfsID_FINCIF: TIntegerField;
    CmpNfsID_FINUFE: TIntegerField;
    CmpNfsID_FINCIE: TIntegerField;
    CmpNfsID_TRAUFE: TIntegerField;
    CmpNfsID_TRACIE: TIntegerField;
    CmpNfsTRBPIS: TStringField;
    CmpNfsPERPIS: TFloatField;
    CmpNfsTRBCOF: TStringField;
    CmpNfsPERCOF: TFloatField;
    CmpNfsTOTIT1: TFloatField;
    CmpNfsTOTFRT: TFloatField;
    CmpNfsTOTSEG: TFloatField;
    CmpNfsTOTDES: TFloatField;
    CmpNfsTOTIP1: TFloatField;
    CmpNfsTOTPIS: TFloatField;
    CmpNfsTOTCOF: TFloatField;
    CmpNfsBASIC1: TFloatField;
    CmpNfsTOTIC1: TFloatField;
    CmpNfsBASSU1: TFloatField;
    CmpNfsTOTSU1: TFloatField;
    CmpNfsTOTGE1: TFloatField;
    CmpNfsOB1NFS: TStringField;
    CmpNfsOB2NFS: TStringField;
    CmpNfsOB3NFS: TStringField;
    CmpNfsOB4NFS: TStringField;
    CmpNfsOB5NFS: TStringField;
    CmpNfsOB6NFS: TStringField;
    CmpNfsOB7NFS: TStringField;
    CmpNfsOB8NFS: TStringField;
    CmpNfsNFEPIS: TStringField;
    CmpNfsNFECOF: TStringField;
    CmpNfsNOMFOR: TStringField;
    CmpNfsEMAFOR: TStringField;
    CmpNfsNUMNFS: TStringField;
    FatArqID_CMPNFS: TIntegerField;
    FatArqARQNFE: TBlobField;
    CmpNfsMODPFA: TStringField;
    CmpNfsNROPDI: TStringField;
    CmpNfsDTEPDI: TDateTimeField;
    CmpNfsLOCPDI: TStringField;
    CmpNfsUFEPDI: TStringField;
    CmpNfsDTEADU: TDateTimeField;
    CmpNfsEXPPDI: TStringField;
    CmpNfsSITNFS: TStringField;
    CmpNfsBASIMP: TFloatField;
    CmpNfsTOTIMP: TFloatField;
    CmpNfsID_ESTSIP: TIntegerField;
    CmpNfsQTINFS: TIntegerField;
    CmpNf2: TwwQuery;
    UpCmpNf2: TUpdateSQL;
    DsCmpNf2: TwwDataSource;
    grCmpNf2: ThGrid;
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
    CmpNf2ID_CMPNF2: TIntegerField;
    CmpNf2DESNF2: TStringField;
    CmpNf2OBSNF2: TStringField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2TOTIPI: TFloatField;
    CmpNf2CODCFO: TStringField;
    CmpNf2CODST1: TStringField;
    CmpNf2CODST2: TStringField;
    CmpNf2CLSIPI: TStringField;
    CmpNf2CODUND: TStringField;
    CmpNf2NRONF2: TIntegerField;
    CmpNf2CODITE: TStringField;
    CmpNf2NCMNF2: TStringField;
    CmpNf2TOTITE: TFloatField;
    procedure CountRegistros;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsCmpNfsDataChange(Sender: TObject; Field: TField);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DsCmpNf2DataChange(Sender: TObject; Field: TField);
    procedure bEnviarClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure EdPsqNroNfsKeyPress(Sender: TObject; var Key: Char);
    procedure CmpNf2NCMNF2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
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
  private
    Id_CmpNfs : integer;
    {Private declarations}
  public
    {Public declarations}
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManRo6: TfmManRo6;
  sArqBackup: string;

implementation

uses dxDemoUtils, FileCtrl, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri,
     ManNF4, ManE09, PsqSt1, PsqSt2, PsqUnd;

{$R *.DFM}

procedure TfmManRo6.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select CmpNfs.Id_CmpNfs,'+
           '        CmpNfs.CodEmp,'+
           '        CmpNfs.DteFat,'+
           '        CmpNfs.UfeNfs,'+
           '        CmpNfs.QtiNfs,'+
           '        CmpNfs.NroNfs,'+
           '        CmpNfs.CodPfa,'+
           '        CmpNfs.TipPfa,'+
           '        CmpNfs.ModPfa,'+
           '        CmpNfs.CodCf1,'+
           '        CmpNfs.CodCf2,'+
           '        CmpNfs.FlgSai,'+
           '        CmpNfs.FlgEnt,'+
           '        CmpNfs.CodFor,'+
           '        CmpNfs.TipFrt,'+
           '        CmpNfs.EspNfs,'+
           '        CmpNfs.MarNfs,'+
           '        CmpNfs.IntFin,'+
           '        CmpNfs.DesNat,'+
           '        CmpNfs.InsSub,'+
           '        CmpNfs.CodTra,'+
           '        CmpNfs.NomTra,'+
           '        CmpNfs.CgcTra,'+
           '        CmpNfs.InsTra,'+
           '        CmpNfs.TenTra,'+
           '        CmpNfs.EndTra,'+
           '        CmpNfs.RefTra,'+
           '        CmpNfs.NumTra,'+
           '        CmpNfs.BaiTra,'+
           '        CmpNfs.CidTra,'+
           '        CmpNfs.UfeTra,'+
           '        CmpNfs.CepTra,'+
           '        CmpNfs.NumNfs,'+
           '        CmpNfs.PlcTra,'+
           '        CmpNfs.UfePlc,'+
           '        CmpNfs.TefFor,'+
           '        CmpNfs.EnfFor,'+
           '        CmpNfs.RffFor,'+
           '        CmpNfs.NrfFor,'+
           '        CmpNfs.BafFor,'+
           '        CmpNfs.CifFor,'+
           '        CmpNfs.UffFor,'+
           '        CmpNfs.CefFor,'+
           '        CmpNfs.TenFor,'+
           '        CmpNfs.EndFor,'+
           '        CmpNfs.RefFor,'+
           '        CmpNfs.NumFor,'+
           '        CmpNfs.BaiFor,'+
           '        CmpNfs.CidFor,'+
           '        CmpNfs.UfeFor,'+
           '        CmpNfs.CepFor,'+
           '        CmpNfs.CgeFor,'+
           '        CmpNfs.IneFor,'+
           '        CmpNfs.InfLiq,'+
           '        CmpNfs.InfBrt,'+
           '        CmpNfs.AltVol,'+
           '        CmpNfs.LotNfe,'+
           '        CmpNfs.EnvNfe,'+
           '        CmpNfs.SeqNfe,'+
           '        CmpNfs.DteNfe,'+
           '        CmpNfs.RecNfe,'+
           '        CmpNfs.ProNfe,'+
           '        CmpNfs.DopNfe,'+
           '        CmpNfs.HreNfe,'+
           '        CmpNfs.UsuNfe,'+
           '        CmpNfs.DtePnf,'+
           '        CmpNfs.HrePnf,'+
           '        CmpNfs.ImpNfe,'+
           '        CmpNfs.RetNfe,'+
           '        CmpNfs.NfePis,'+
           '        CmpNfs.NfeCof,'+
           '        CmpNfs.FlgAtu,'+
           '        CmpNfs.Id_FinUff,'+
           '        CmpNfs.Id_FinCif,'+
           '        CmpNfs.Id_FinUfe,'+
           '        CmpNfs.Id_FinCie,'+
           '        CmpNfs.Id_TraUfe,'+
           '        CmpNfs.Id_TraCie,'+
           '        CmpNfs.TrbPis,'+
           '        CmpNfs.PerPis,'+
           '        CmpNfs.TrbCof,'+
           '        CmpNfs.PerCof,'+
           '        CmpNfs.TotIt1,'+
           '        CmpNfs.TotFrt,'+
           '        CmpNfs.TotSeg,'+
           '        CmpNfs.TotDes,'+
           '        CmpNfs.BasImp,'+
           '        CmpNfs.TotImp,'+
           '        CmpNfs.TotIp1,'+
           '        CmpNfs.TotPis,'+
           '        CmpNfs.TotCof,'+
           '        CmpNfs.BasIc1,'+
           '        CmpNfs.TotIc1,'+
           '        CmpNfs.BasSu1,'+
           '        CmpNfs.TotSu1,'+
           '        CmpNfs.TotGe1,'+
           '        CmpNfs.Ob1Nfs,'+
           '        CmpNfs.Ob2Nfs,'+
           '        CmpNfs.Ob3Nfs,'+
           '        CmpNfs.Ob4Nfs,'+
           '        CmpNfs.Ob5Nfs,'+
           '        CmpNfs.Ob6Nfs,'+
           '        CmpNfs.Ob7Nfs,'+
           '        CmpNfs.Ob8Nfs,'+
           '        CmpNfs.NroPdi,'+
           '        CmpNfs.DtePdi,'+
           '        CmpNfs.LocPdi,'+
           '        CmpNfs.UfePdi,'+
           '        CmpNfs.DteAdu,'+
           '        CmpNfs.ExpPdi,'+
           '        CmpNfs.SitNfs,'+
           '        CmpNfs.Id_EstSip,'+
           '        FinFor.NomFor,'+
           '        FinFor.EmaFor '+
           ' From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor)';

  sFiltro := ' Where CmpNfs.SitNfs = '+ Quotedstr('Concluido') +
             '   and CmpNfs.FlgNFE = '+ Quotedstr('Sim') +
             '   and CmpNfs.EnvNFE = '+ Quotedstr('Nao') ;

  sOrdem := ' Order by CmpNfs.NroNfs';

end;

procedure TfmManRo6.FormShow(Sender: TObject);
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

  with CmpNfs,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  CountRegistros;

  EdPsqNroNfs.SetFocus;

end;

procedure TfmManRo6.DsCmpNfsDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  Label3.Caption := Trim(CmpNfsRETNFE.Value);
  Label4.Caption := LowerCase(Trim(CmpNfsEMAFOR.Value));

  if CmpNfsCodFor.Value > 0 then
     pnCodFor.Caption := IntToStr(CmpNfsCodFor.Value)
  else
     pnCodFor.Caption := '';

end;

procedure TfmManRo6.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManRo6.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManRo6 := Nil;
end;

procedure TfmManRo6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManRo6.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if pnalterar.Visible then begin

        if CmpNf2.State <> dsBrowse then CmpNf2.CancelUpdates;

        batualizar.Enabled := True;

        benviar.Enabled := True;

        pnalterar.Visible := False;

        grCmpNf2.SetFocus;

        end
     else
        close;

  end;
end;

procedure TfmManRo6.DsCmpNf2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDesNf2.Caption := ' '+CmpNf2DesNf2.Value+' '+CmpNf2ObsNf2.Value;
end;

procedure TfmManRo6.bEnviarClick(Sender: TObject);
var
  SeqEnc      : integer;
  LinArq      : string;
  SeqLin      : integer;
  ArqRe1      : string;
  ArqRe2      : string;
  ArqRs1      : string;
  ArqRs2      : string;
  FlgRej      : string;
  FlgArq      : string;
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
  EmaFor      : string;
  CgcFor      : string;
  CpfFor      : string;
  InsFor      : string;
  NomFor      : string;
  EndFor      : string;
  NumFor      : string;
  RefFor      : string;
  BaiFor      : string;
  CidFor      : string;
  UfeFor      : string;
  CepFor      : string;
  FonFor      : string;
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
  EspNfs      : string;
  MarNfs      : string;
  PesLiq      : string;
  PesBrt      : string;
  TipNCM      : string;
  NroSuf      : string;
  BasIcm      : string;
  RedIcm      : string;
  PerIcm      : string;
  TotIcm      : string;
  TotDsr      : string;
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
  BasImp      : string;
  TotImp      : string;
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
  TipNot      : string;
  ObsNfs      : string;
  TipCnd      : string;
  NomArq      : string;
  NroAdi      : string;
  SeqAdi      : string;
  FabAdi      : string;
  DscAdi      : string;
  NroPDI      : string;
  LocPDI      : string;
  UfePDI      : string;
  ExpPDI      : string;
  sEntrada    : string;
  DscPro      : string;
  sNumeroNF   : string;
  NroPais_Emp : string;
  NomPais_Emp : string;
  NroPais_For : string;
  NomPais_For : string;
  Finalizar   : string;
  Id_EmpCie   : string;
  Id_ForNfe   : string;
  Id_EstSip   : string;
  NroReg      : integer;
  Id_FinPai   : integer;
  Id_FinUfe   : integer;
  Id_FinCie   : integer;
  Id_ForUfe   : integer;
  Id_ForCie   : integer;
  Nome_ArqIni : string;
begin
  inherited;
  if CmpNfsId_CmpNfs.Value > 0 then begin

     Id_CmpNfs := CmpNfsId_CmpNfs.Value;

     with CmpNfs,SQL do begin

          Close;
          Text := sBase + ' Where CmpNfs.Id_CmpNfs = '+ QuotedStr(IntToStr(Id_CmpNfs));
          Open;

     end;

     CountRegistros;

     if CmpNfsId_CmpNfs.Value > 0 then begin

        if fMsg('Confirma envio para emissão da NFe ?','O') then begin

           Nome_ArqIni := ExtractFilePath(Application.ExeName)+'config.ini';

           if FileExists(Nome_ArqIni) then begin

              Finalizar := 'N';

              try

                 fmManNF4 := TfmManNF4.Create(Self);

                 fmManNF4.ShowModal;

                 Finalizar := fmManNF4.Finalizar;

              finally

                 FreeAndNil(fmManNF4);

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
                              ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(CmpNfsCodEmp.Value));
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

                      Id_FinPai := FieldbyName('Id_FinPai').AsInteger;
                      
                 end;

                 if Id_FinUfe > 0 then begin

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

                          NfePis := fLimpaStr(Trim(CmpNfsNfePis.Value));
                          NfeCof := fLimpaStr(Trim(CmpNfsNfeCof.Value));

                          if CmpNfsId_EstSip.Value > 0 then begin

                             with quSQL,SQL do begin

                                  Close;
                                  Text := ' Select EstSip.SigNfe'+
                                          ' From EstSip'+
                                          ' Where EstSip.Id_EstSip = '+ QuotedStr(IntToStr(CmpNfsId_EstSip.Value));
                                  Open;

                                  Id_EstSip := FieldbyName('SigNfe').AsString;

                             end;

                             end
                          else
                             begin

                             if Trim(CmpNfsTipPfa.Value) = 'Saida' then begin

                                if CmpNfsTotIp1.Value > 0 then
                                   Id_EstSip := '50'
                                else
                                   Id_EstSip := '99';

                                end
                             else
                                Id_EstSip := '49';

                          end;

                          with quSQL,SQL do begin

                               Close;
                               Text := ' Select FinFor.NomFor,'+
                                       '        FinFor.CgcFor,'+
                                       '        FinFor.InsFor,'+
                                       '        FinFor.PrtFor,'+
                                       '        FinFor.FonFor,'+
                                       '        FinFor.EmaFor,'+
                                       '        FinFor.Id_FinPai'+
                                       ' From FinFor'+
                                       ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpNfsCodFor.Value));
                               Open;

                               NomFor := fLimpaAcentos(FieldbyName('NomFor').AsString);
                               NroSuf := '';

                               EmaFor := Trim(FieldbyName('EmaFor').AsString);

                               EmaFor := copy(EmaFor,1,60) + fReplicate(' ',60 - Length(copy(EmaFor,1,60)));

                               if Length(Trim(FieldbyName('CgcFor').AsString)) = 11 then
                                  CpfFor := FieldbyName('CgcFor').AsString
                               else
                                  CgcFor := FieldbyName('CgcFor').AsString;

                               InsFor := fLimpaStr(FieldbyName('InsFor').AsString);

                               CgcFor := copy(Trim(CgcFor),1,14) + fReplicate(' ',14 - Length(copy(Trim(CgcFor),1,14)));
                               CpfFor := copy(Trim(CpfFor),1,14) + fReplicate(' ',14 - Length(copy(Trim(CpfFor),1,14)));
                               InsFor := copy(Trim(InsFor),1,14) + fReplicate(' ',14 - Length(copy(Trim(InsFor),1,14)));

                               if Trim(fLimpaStr(FieldbyName('PrtFor').AsString)) <> '' then
                                  FonFor := Trim(fLimpaStr(FieldbyName('PrtFor').AsString))+ Trim(fLimpaStr(FieldbyName('FonFor').AsString))
                               else
                                  FonFor := Trim(fLimpaStr(FieldbyName('FonFor').AsString));

                               FonFor := fRemoverEspaco(FonFor);

                               NomFor := copy(Trim(NomFor),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomFor),1,60)));
                               NroSuf := copy(Trim(NroSuf),1,09) + fReplicate(' ',09 - Length(copy(Trim(NroSuf),1,09)));

                               FonFor := fReplicate('0',10 - Length(copy(Trim(FonFor),1,10))) + copy(Trim(FonFor),1,10);

                               Id_FinPai := FieldbyName('Id_FinPai').AsInteger;
                               
                          end;

                          if Id_FinPai > 0 then begin

                             NroPais_For := fNumZeros(IntToStr(Id_FinPai),4);

                             Id_ForUfe := CmpNfsId_FinUff.Value;
                             Id_ForCie := CmpNfsId_FinCif.Value;

                             with quSQL,SQL do begin

                                  Close;
                                  Text := ' Select FinPai.NomPai From FinPai Where FinPai.Id_FinPai = '+ QuotedStr(IntToStr(Id_FinPai));
                                  Open;

                                  NomPais_For := fLimpaAcentos(FieldbyName('NomPai').AsString);

                                  NomPais_For := copy(Trim(NomPais_For),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomPais_For),1,60)));

                             end;

                             with quSQL,SQL do begin

                                  Close;
                                  Text := ' Select FinCie.NomCie,'+
                                          '        FinCie.SigNfe '+
                                          ' From FinCie'+
                                          ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_ForCie));
                                  Open;

                                  Id_ForNfe := IntToStr(Id_ForUfe)+FieldbyName('SigNfe').AsString;

                                  CidFor := fLimpaAcentos(FieldbyName('NomCie').AsString);

                                  CidFor := copy(Trim(CidFor),1,60) + fReplicate(' ',60 - Length(copy(Trim(CidFor),1,60)));

                             end;

                             if Trim(CmpNfsSeqNFe.Value) = '' then begin

                                CmpNfs.Edit;

                                CmpNfsFlgAtu.Value := 'F';
                                CmpNfsSeqNFe.Value := fMontaChaveAcessoNFe(Id_FinUfe,CmpNfsDteFat.Value,CgcEmp,55,1,CmpNfsNroNfs.Value,1);

                                with CmpNfs do begin

                                     fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                     try

                                        ApplyUpdates; {Tenta aplicar as alterações};

                                        fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                     except

                                        fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                        if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                                        CmpNfs.Close;
                                        CmpNfs.Open;

                                        grCmpNfs.SetFocus;

                                        raise;

                                     end;

                                     CommitUpdates; {sucesso!, limpa o cache...}

                                end;

                                CmpNfs.Close;
                                CmpNfs.Open;

                             end;

                             if not directoryExists('C:\EMERION\NFE') then CreateDir('C:\EMERION\NFE');

                             if not directoryExists('C:\EMERION\REQ') then CreateDir('C:\EMERION\REQ');

                             if not directoryExists('C:\EMERION\RESP') then CreateDir('C:\EMERION\RESP');

                             if not directoryExists('C:\EMERION\BACKUP\NFE') then CreateDir('C:\EMERION\BACKUP\NFE');

                             Application.ProcessMessages;

                             fmManPri.Enabled := False;

                             fmManRo6.Enabled := False;

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
                                            CmpNfsSeqNFe.Value);

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

                                         if pos(CmpNfsSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

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
                                FlgArq := 'N';

                                ArqRet := TStringList.Create;

                                ArqRet.LoadFromFile(ArqRs2);

                                for SeqLin := 0 to ArqRet.Count - 1 do begin

                                    Application.ProcessMessages;

                                    LinArq := ArqRet[SeqLin];

                                    if pos('EMRESP',LinArq) > 0 then FlgArq := 'S';

                                    if FlgArq = 'S' then begin

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

                                      sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o usuario na tela //

                                   end;

                                   if Trim(CmpNfsRecNFe.Value) = '' then begin

                                      pnMensag.Caption := 'Aguarde. Enviando informações da nota.';

                                      DeleteFile(ArqRe1);
                                      DeleteFile(ArqRe2);
                                      DeleteFile(ArqRs1);
                                      DeleteFile(ArqRs2);

                                      AssignFile(ArqEnv,ArqRe1);

                                      Rewrite(ArqEnv);

                                      Writeln(ArqEnv,'EM0201' +
                                                     UfeEmp +
                                                     CmpNfsSeqNFe.Value +
                                                     fNumZeros(IntToStr(CmpNfsLotNfe.Value),9));

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

                                      DesNat := fLimpaAcentos(CmpNfsDesNat.Value);
                                
                                      DesNat := copy(Trim(DesNat),1,60) + fReplicate(' ',60 - Length(copy(Trim(DesNat),1,60)));

                                      TipCnd := '2';

                                      if Trim(CmpNfsTipPfa.Value) = 'Saida' then
                                         TipNot := '1'
                                      else
                                         TipNot := '0';

                                      Writeln(ArqEnv,'EM0202'+                                                        // Uso interno do sistema
                                                     IntToStr(Id_FinUfe)+                                             // Código da UF do emitente do documento fiscal
                                                     copy(CmpNfsSeqNFE.Value,35,09)+                                  // Código númerico que compõe a chave de acesso
                                                     DesNat+                                                          // Descrição da natureza de operação
                                                     TipCnd+                                                          // Indicador da forma de pagamento 0-Pagamento à vista 1-Pagamento à prazo 2-Outros
                                                     '55'+                                                            // Código do Modelo do documento fiscal
                                                     '1'+                                                             // Série do documento fiscal
                                                     fNumZeros(IntToStr(CmpNfsNroNfs.Value),9)+                       // Número do documento fiscal
                                                     copy(FormatDateTime('dd/mm/yyyy',CmpNfsDteFat.Value),7,4) +'-'+  // Data de emissão do documento fiscal
                                                     copy(FormatDateTime('dd/mm/yyyy',CmpNfsDteFat.Value),4,2) +'-'+
                                                     copy(FormatDateTime('dd/mm/yyyy',CmpNfsDteFat.Value),1,2) +
                                                     '0000-00-00'+                                                    // Data de saida ou entrada da Mercadoria/Produto
                                                     TipNot+                                                          // Tipo do documento fiscal
                                                     Id_EmpCie+                                                       // Código do Municipio de Ocorrência do Fato Gerador
                                                     '1'+                                                             // Formato de Impressao do DANFE
                                                     '1'+                                                             // Forma de emissão da NF-e
                                                     copy(CmpNfsSeqNFE.Value,44,1)+                                   // Digito verificador da Chave de Acesso da NF-e
                                                     '2'+                                                             // Identificação do Ambiente
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
                                                     '              '+                                                // IE do Substituto tributário
                                                     '               '+                                               // IM inscrição municipal
                                                     '       ');                                                      // CNAE Fiscal

                                      if CmpNfsTefFor.Value <> '' then
                                         EndFor := Trim(CmpNfsTefFor.Value)+ ' ' +CmpNfsEnfFor.Value
                                      else
                                         EndFor := CmpNfsEnfFor.Value;

                                      EndFor := fLimpaAcentos(EndFor);

                                      NumFor := fLimpaAcentos(CmpNfsNrfFor.Value);
                                      RefFor := fLimpaAcentos(CmpNfsRffFor.Value);
                                      BaiFor := fLimpaAcentos(CmpNfsBafFor.Value);
                                      UfeFor := fLimpaAcentos(CmpNfsUfeFor.Value);

                                      CepFor := CmpNfsCefFor.Value;

                                      EndFor := copy(Trim(EndFor),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndFor),1,60)));
                                      NumFor := copy(Trim(NumFor),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumFor),1,60)));
                                      RefFor := copy(Trim(RefFor),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefFor),1,60)));
                                      BaiFor := copy(Trim(BaiFor),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiFor),1,60)));
                                      UfeFor := copy(Trim(UfeFor),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeFor),1,02)));

                                      CepFor := fReplicate('0',08 - Length(copy(Trim(CepFor),1,08))) + copy(Trim(CepFor),1,08);

                                      Writeln(ArqEnv,'EM0204'+                                                       // Uso interno do sistema
                                                     CgcFor+                                                         // CNPJ do destinatario
                                                     CpfFor+                                                         // CPF do destinatario
                                                     NomFor+                                                         // Razão social ou nome do destinatario
                                                     EndFor+                                                         // Logradouro
                                                     NumFor+                                                         // Número
                                                     RefFor+                                                         // Complemento
                                                     BaiFor+                                                         // Bairro
                                                     Id_ForNfe+                                                      // Código do Municipio
                                                     CidFor+                                                         // Nome do Municipio
                                                     UfeFor+                                                         // Sigla da UF
                                                     CepFor+                                                         // Código do Cep
                                                     NroPais_For+                                                    // Código do País
                                                     NomPais_For+                                                    // Nome do País
                                                     FonFor+                                                         // Telefone
                                                     InsFor+                                                         // IE
                                                     NroSuf);                                                        // Inscrição SUFRAMA

                                      if (Trim(CmpNfsCepFor.Value) <> Trim(CmpNfsCefFor.Value)) or
                                         (Trim(CmpNfsTenFor.Value) <> Trim(CmpNfsTefFor.Value)) or
                                         (Trim(CmpNfsEndFor.Value) <> Trim(CmpNfsEnfFor.Value)) or
                                         (Trim(CmpNfsRefFor.Value) <> Trim(CmpNfsRffFor.Value)) or
                                         (Trim(CmpNfsNumFor.Value) <> Trim(CmpNfsNrfFor.Value)) or
                                         (Trim(CmpNfsBaiFor.Value) <> Trim(CmpNfsBafFor.Value)) or
                                         (Trim(CmpNfsCidFor.Value) <> Trim(CmpNfsCifFor.Value)) or
                                         (Trim(CmpNfsUfeFor.Value) <> Trim(CmpNfsUffFor.Value)) then begin

                                         if Trim(CmpNfsCgeFor.Value) <> '' then
                                            CgcFor := copy(Trim(CmpNfsCgeFor.Value),1,14) + fReplicate(' ',14 - Length(copy(Trim(CmpNfsCgeFor.Value),1,14)));

                                         if CmpNfsTenFor.Value <> '' then
                                            EndFor := Trim(CmpNfsTenFor.Value)+ ' ' +CmpNfsEndFor.Value
                                         else
                                            EndFor := CmpNfsEndFor.Value;

                                         EndFor := fLimpaAcentos(EndFor);

                                         NumFor := fLimpaAcentos(CmpNfsNumFor.Value);
                                         RefFor := fLimpaAcentos(CmpNfsRefFor.Value);
                                         BaiFor := fLimpaAcentos(CmpNfsBaiFor.Value);
                                         UfeFor := fLimpaAcentos(CmpNfsUfeFor.Value);

                                         EndFor := copy(Trim(EndFor),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndFor),1,60)));
                                         NumFor := copy(Trim(NumFor),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumFor),1,60)));
                                         RefFor := copy(Trim(RefFor),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefFor),1,60)));
                                         BaiFor := copy(Trim(BaiFor),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiFor),1,60)));
                                         UfeFor := copy(Trim(UfeFor),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeFor),1,02)));

                                         CepFor := fReplicate('0',08 - Length(copy(Trim(CepFor),1,08))) + copy(Trim(CepFor),1,08);

                                         Id_FinUfe := CmpNfsId_FinUfe.Value;
                                         Id_FinCie := CmpNfsId_FinCie.Value;

                                         with quSQL,SQL do begin

                                              Close;
                                              Text := ' Select FinCie.NomCie,'+
                                                      '        FinCie.SigNfe '+
                                                      ' From FinCie'+
                                                      ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie));
                                              Open;

                                              Id_ForNfe := IntToStr(Id_FinUfe)+FieldbyName('SigNfe').AsString;

                                              CidFor := fLimpaAcentos(FieldbyName('NomCie').AsString);

                                              CidFor := copy(Trim(CidFor),1,60) + fReplicate(' ',60 - Length(copy(Trim(CidFor),1,60)));

                                         end;

                                         Writeln(ArqEnv,'EM0205'+   // Uso interno do sistema
                                                        CgcFor+     // CNPJ do destinatario
                                                        EndFor+     // Logradouro
                                                        NumFor+     // Número
                                                        RefFor+     // Complemento
                                                        BaiFor+     // Bairro
                                                        Id_ForNfe+  // Código do Municipio
                                                        CidFor+     // Nome do Municipio
                                                        UfeFor);    // Sigla da UF

                                      end;

                                      TrbPis := Trim(CmpNfsTrbPis.Value);
                                      TrbCof := Trim(CmpNfsTrbCof.Value);

                                      TrbPis := copy(Trim(TrbPis),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbPis),1,03)));
                                      TrbCof := copy(Trim(TrbCof),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbCof),1,03)));

                                      PerPis := fSubstDecimal(FormatFloat('##0.00',CmpNfsPerPis.Value),05);
                                      PerCof := fSubstDecimal(FormatFloat('##0.00',CmpNfsPerCof.Value),05);

                                      with quSQL,SQL do begin

                                           Close;
                                           Text := ' Select CmpNf2.NroNf2,'+
                                                   '        CmpNf2.CodClp,'+
                                                   '        CmpNf2.CodGru,'+
                                                   '        CmpNf2.CodSub,'+
                                                   '        CmpNf2.CodPro,'+
                                                   '        CmpNf2.DesNf2,'+
                                                   '        CmpNf2.ObsNf2,'+
                                                   '        CmpNf2.ClsIpi,'+
                                                   '        CmpNf2.CodCfo,'+
                                                   '        CmpNf2.CodSt1,'+
                                                   '        CmpNf2.CodSt2,'+
                                                   '        CmpNf2.CodUnd,'+
                                                   '        CmpNf2.QtpNf2,'+
                                                   '        CmpNf2.VluNf2,'+
                                                   '        CmpNf2.TotIte,'+
                                                   '        CmpNf2.IcmNf2,'+
                                                   '        CmpNf2.BscIcm,'+
                                                   '        CmpNf2.RedIcm,'+
                                                   '        CmpNf2.BasIcm,'+
                                                   '        CmpNf2.TotIcm,'+
                                                   '        CmpNf2.IpiNf2,'+
                                                   '        CmpNf2.BasImp,'+
                                                   '        CmpNf2.TotImp,'+
                                                   '        CmpNf2.TrbIpi,'+
                                                   '        CmpNf2.BscIpi,'+
                                                   '        CmpNf2.RedIpi,'+
                                                   '        CmpNf2.BasIpi,'+
                                                   '        CmpNf2.TotIpi,'+
                                                   '        CmpNf2.IcmSub,'+
                                                   '        CmpNf2.MrgSub,'+
                                                   '        CmpNf2.BaseSb,'+
                                                   '        CmpNf2.BasSub,'+
                                                   '        CmpNf2.TotSub,'+
                                                   '        CmpNf2.TotFrt,'+
                                                   '        CmpNf2.TotSeg,'+
                                                   '        CmpNf2.TotDes,'+
                                                   '        CmpNf2.TotPis,'+
                                                   '        CmpNf2.TotCof,'+
                                                   '        CmpNf2.NroAdi,'+
                                                   '        CmpNf2.SeqAdi,'+
                                                   '        CmpNf2.FabAdi,'+
                                                   '        CmpNf2.DscAdi '+
                                                   ' From CmpNf2'+
                                                   ' Where CmpNf2.Id_CmpNfs = '+ QuotedStr(IntToStr(CmpNfsId_CmpNfs.Value)) +
                                                   ' Order by CmpNf2.NroNf2';
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

                                            DesPro := AllTrim(fLimpaAcentos(quSQL.FieldbyName('DesNf2').AsString+ ' ' +quSQL.FieldbyName('ObsNf2').AsString));

                                            DesPro := copy(DesPro,1,120);

                                            ClsIpi := Trim(fLimpaStr(quSQL.FieldbyName('ClsIpi').AsString));
                                            CodCfo := Trim(fLimpaStr(quSQL.FieldbyName('CodCfo').AsString));

                                            if Trim(ClsIpi) = '00000000' then ClsIpi := '';

                                            NroAdi := Trim(quSQL.FieldbyName('NroAdi').AsString);
                                            SeqAdi := Trim(quSQL.FieldbyName('SeqAdi').AsString);
                                            FabAdi := Trim(quSQL.FieldbyName('FabAdi').AsString);
                                            CodUnd := Trim(quSQL.FieldbyName('CodUnd').AsString);
                                            CodSt1 := Trim(quSQL.FieldbyName('CodSt1').AsString);
                                            CodSt2 := Trim(quSQL.FieldbyName('CodSt2').AsString);
                                            TrbIpi := Trim(quSQL.FieldbyName('TrbIpi').AsString);

                                            QtdPro := fSubstDecimal(FormatFloat('########0.0000',quSQL.FieldbyName('QtpNf2').AsFloat),15);
                                            VluPro := fSubstDecimal(FormatFloat('########0.0000',quSQL.FieldbyName('VluNf2').AsFloat),15);

                                            DscAdi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('DscAdi').AsFloat),15);
                                            TotPro := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIte').AsFloat),15);
                                            BasIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasIcm').AsFloat),15);
                                            RedIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('RedIcm').AsFloat),15);
                                            PerIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IcmNf2').AsFloat),05);
                                            TotIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIcm').AsFloat),15);
                                            BasImp := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasImp').AsFloat),15);
                                            TotImp := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotImp').AsFloat),15);
                                            BasIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasIpi').AsFloat),15);
                                            PerIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IpiNf2').AsFloat),05);
                                            TotIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIpi').AsFloat),15);
                                            MrgSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('MrgSub').AsFloat),05);
                                            IcmSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IcmSub').AsFloat),05);
                                            BasSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasSub').AsFloat),15);
                                            TotSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotSub').AsFloat),15);
                                            TotDsr := '           0.00';
                                            TotFrt := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotFrt').AsFloat),15);
                                            TotSeg := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotSeg').AsFloat),15);
                                            TotDes := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotDes').AsFloat),15);
                                            BasPis := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIte').AsFloat),15);
                                            BasCof := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIte').AsFloat),15);
                                            TotPis := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotPis').AsFloat),15);
                                            TotCof := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotCof').AsFloat),15);

                                            TipNCM := '';

                                            if Trim(CmpNfsModPfa.Value) = 'Complemento' then CodUnd := 'R$';

                                            CodPro := copy(Trim(CodPro),1,60) + fReplicate(' ',60 - Length(copy(Trim(CodPro),1,60)));
                                            CodCfo := copy(Trim(CodCfo),1,04) + fReplicate(' ',04 - Length(copy(Trim(CodCfo),1,04)));
                                            CodUnd := copy(Trim(CodUnd),1,06) + fReplicate(' ',06 - Length(copy(Trim(CodUnd),1,06)));
                                            TrbIpi := copy(Trim(TrbIpi),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbIpi),1,03)));
                                            NroAdi := copy(Trim(NroAdi),1,03) + fReplicate(' ',03 - Length(copy(Trim(NroAdi),1,03)));
                                            SeqAdi := copy(Trim(SeqAdi),1,03) + fReplicate(' ',03 - Length(copy(Trim(SeqAdi),1,03)));
                                            FabAdi := copy(Trim(FabAdi),1,60) + fReplicate(' ',60 - Length(copy(Trim(FabAdi),1,60)));

                                            CodSt1 := fReplicate('0',01 - Length(copy(Trim(CodSt1),1,01))) + copy(Trim(CodSt1),1,01);
                                            CodSt2 := fReplicate('0',02 - Length(copy(Trim(CodSt2),1,02))) + copy(Trim(CodSt2),1,02);
                                            ClsIpi := fReplicate('0',08 - Length(copy(Trim(ClsIpi),1,08))) + copy(Trim(ClsIpi),1,08);

                                            DesPro := copy(Trim(DesPro),1,120) + fReplicate(' ',120 - Length(copy(Trim(DesPro),1,120)));

                                            Writeln(ArqEnv,'EM0206'+                                                     // Uso interno do sistema
                                                           '00'+                                                         // Tipo de operação
                                                           fNumZeros(IntToStr(quSQL.FieldbyName('NroNf2').AsInteger),3)+ // Nro. do item
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

                                            if Trim(CmpNfsModPfa.Value) = 'Complemento' then begin

                                               BasIcm := fSubstDecimal(FormatFloat('########0.00',CmpNfsBasIc1.Value),15);
                                               TotIcm := fSubstDecimal(FormatFloat('########0.00',CmpNfsTotIc1.Value),15);
                                               BasSub := fSubstDecimal(FormatFloat('########0.00',CmpNfsBasSu1.Value),15);
                                               TotSub := fSubstDecimal(FormatFloat('########0.00',CmpNfsTotSu1.Value),15);

                                               Writeln(ArqEnv,'EM0207'+                                                     // Uso interno do sistema
                                                              '01'+                                                         // Tipo de operação
                                                              fNumZeros(IntToStr(quSQL.FieldbyName('NroNf2').AsInteger),3)+ // Nro. do item
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
                                                              fNumZeros(IntToStr(quSQL.FieldbyName('NroNf2').AsInteger),3)+ // Nro. do item
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

                                            if Trim(CmpNfsModPfa.Value) = 'Complemento' then begin

                                               if CmpNfsTotIp1.Value > 0 then TrbIpi := 'Sim';

                                               TotIpi := fSubstDecimal(FormatFloat('########0.00',CmpNfsTotIp1.Value),15);

                                               Writeln(ArqEnv,'EM0208'+                                                     // Uso interno do sistema
                                                              '01'+                                                         // Tipo de operação
                                                              fNumZeros(IntToStr(quSQL.FieldbyName('NroNf2').AsInteger),3)+ // Nro. do item
                                                              TrbIpi+                                                       // IPI tributado
                                                              '           0.00'+                                            // Valor da BC do IPI
                                                              ' 0.00'+                                                      // Aliquota do imposto
                                                              TotIpi+                                                       // Valor do IPI
                                                              Id_EstSip);                                                   // Situação tributária do IPI

                                               end
                                            else
                                               Writeln(ArqEnv,'EM0208'+                                                     // Uso interno do sistema
                                                              '01'+                                                         // Tipo de operação
                                                              fNumZeros(IntToStr(quSQL.FieldbyName('NroNf2').AsInteger),3)+ // Nro. do item
                                                              TrbIpi+                                                       // IPI tributado
                                                              BasIpi+                                                       // Valor da BC do IPI
                                                              PerIpi+                                                       // Aliquota do imposto
                                                              TotIpi+                                                       // Valor do IPI
                                                              Id_EstSip);                                                   // Situação tributária do IPI

                                            if Trim(CmpNfsModPfa.Value) = 'Importacao direta' then begin

                                               Writeln(ArqEnv,'EM0217'+                                                        // Uso interno do sistema
                                                              '01'+                                                            // Tipo de operação
                                                              fNumZeros(IntToStr(quSQL.FieldbyName('NroNf2').AsInteger),3)+    // Nro. do item
                                                              BasImp+                                                          // Valor da BC do II
                                                              TotImp);                                                         // Valor do II

                                            end;

                                            Writeln(ArqEnv,'EM0209'+                                                     // Uso interno do sistema
                                                           '01'+                                                         // Tipo de operação
                                                           fNumZeros(IntToStr(quSQL.FieldbyName('NroNf2').AsInteger),3)+ // Nro. do item
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

                                            if Trim(CmpNfsModPfa.Value) = 'Importacao direta' then begin

                                               NroPDI := Trim(CmpNfsNroPDI.Value);
                                               LocPDI := fLimpaAcentos(Trim(CmpNfsLocPDI.Value));
                                               UfePDI := fLimpaAcentos(Trim(CmpNfsUfePDI.Value));
                                               ExpPDI := fLimpaAcentos(Trim(CmpNfsExpPDI.Value));

                                               NroPDI := copy(Trim(NroPDI),1,10) + fReplicate(' ',10 - Length(copy(Trim(NroPDI),1,10)));
                                               LocPDI := copy(Trim(LocPDI),1,60) + fReplicate(' ',60 - Length(copy(Trim(LocPDI),1,60)));
                                               UfePDI := copy(Trim(UfePDI),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfePDI),1,02)));
                                               ExpPDI := copy(Trim(ExpPDI),1,60) + fReplicate(' ',60 - Length(copy(Trim(ExpPDI),1,60)));

                                               Writeln(ArqEnv,'EM0216'+                                                        // Uso interno do sistema
                                                              '01'+                                                            // Tipo de operação
                                                              fNumZeros(IntToStr(quSQL.FieldbyName('NroNf2').AsInteger),3)+    // Nro. do item
                                                              NroPDI+                                                          // Número do documento de Importação
                                                              copy(FormatDateTime('dd/mm/yyyy',CmpNfsDtePDI.Value),7,4) +'-'+  // Data de registro da DI/DSI/DA
                                                              copy(FormatDateTime('dd/mm/yyyy',CmpNfsDtePDI.Value),4,2) +'-'+
                                                              copy(FormatDateTime('dd/mm/yyyy',CmpNfsDtePDI.Value),1,2) +
                                                              LocPDI+                                                          // Local de desembaraço
                                                              UfePDI+                                                          // Sigla da UF onde ocorreu o desembaraço aduaneiro
                                                              copy(FormatDateTime('dd/mm/yyyy',CmpNfsDteAdu.Value),7,4) +'-'+  // Data do desembaraço aduaneiro
                                                              copy(FormatDateTime('dd/mm/yyyy',CmpNfsDteAdu.Value),4,2) +'-'+
                                                              copy(FormatDateTime('dd/mm/yyyy',CmpNfsDteAdu.Value),1,2) +
                                                              ExpPDI+                                                          // Código do Exportador
                                                              NroAdi+                                                          // Numero da adição
                                                              SeqAdi+                                                          // Número sequencia do item dentro da adição
                                                              FabAdi+                                                          // Código do fabricante estrangeiro
                                                              DscAdi);                                                         // Valor do desconto do item na DI - Adição

                                            end;

                                            Application.ProcessMessages;

                                            quSQL.Next;

                                      end;

                                      Writeln(ArqEnv,'EM0210'+                                                          // Uso interno do sistema
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsBasIc1.Value),15)+  // Base de Calculo do ICMS
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsTotIc1.Value),15)+  // Valor Total do ICMS
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsBasSu1.Value),15)+  // Base de Calculo do ICMS ST
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsTotSu1.Value),15)+  // Valor Total do ICMS ST
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsTotIt1.Value),15)+  // Valor Total dos produtos e serviços
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsTotFrt.Value),15)+  // Valor Total do Frete
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsTotSeg.Value),15)+  // Valor Total do Seguro
                                                     '           0.00'+                                                 // Valor Total do Desconto
                                                     '           0.00'+                                                 // Valor Total do II
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsTotIp1.Value),15)+  // Valor Total do IPI
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsTotPis.Value),15)+  // Valor Total do PIS
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsTotCof.Value),15)+  // Valor Total do COFINS
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsTotDes.Value),15)+  // Outras Despesas Acessórias
                                                     fSubstDecimal(FormatFloat('########0.00',CmpNfsTotGe1.Value),15)); // Valor Total da NFe

                                      if CmpNfsTipFrt.Value = '2' then
                                         TipFrt := '1'
                                      else
                                         TipFrt := '0';

                                      if Length(Trim(CmpNfsCgcTra.Value)) = 11 then
                                         CpfTra := CmpNfsCgcTra.Value
                                      else
                                         CgcTra := CmpNfsCgcTra.Value;

                                      Id_FinUfe := CmpNfsId_TraUfe.Value;
                                      Id_FinCie := CmpNfsId_TraCie.Value;

                                      InsTra := fLimpaStr(CmpNfsInsTra.Value);

                                      NomTra := fLimpaAcentos(CmpNfsNomTra.Value);

                                      if Trim(CmpNfsTenTra.Value) <> '' then
                                         EndTra := Trim(CmpNfsTenTra.Value)+ ' ' +CmpNfsEndTra.Value
                                      else
                                         EndTra := CmpNfsEndTra.Value;

                                      EndTra := fLimpaAcentos(EndTra);

                                      NumTra := fLimpaAcentos(CmpNfsNumTra.Value);
                                      RefTra := fLimpaAcentos(CmpNfsRefTra.Value);
                                      BaiTra := fLimpaAcentos(CmpNfsBaiTra.Value);
                                      UfeTra := fLimpaAcentos(CmpNfsUfeTra.Value);

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

                                      PesLiq := fSubstDecimal(FormatFloat('########0.000',CmpNfsInfLiq.Value),15);
                                      PesBrt := fSubstDecimal(FormatFloat('########0.000',CmpNfsInfBrt.Value),15);

                                      EspNfs := fLimpaAcentos(CmpNfsEspNfs.Value);
                                      MarNfs := fLimpaAcentos(CmpNfsMarNfs.Value);

                                      MarNfs := copy(Trim(MarNfs),1,60) + fReplicate(' ',60 - Length(copy(Trim(MarNfs),1,60)));
                                      EspNfs := copy(Trim(EspNfs),1,60) + fReplicate(' ',60 - Length(copy(Trim(EspNfs),1,60)));

                                      Writeln(ArqEnv,'EM0211'+                                   // Uso interno do sistema
                                                     TipFrt+                                     // Modalidade do Frete
                                                     CgcTra+                                     // CNPJ
                                                     CpfTra+                                     // CPF
                                                     NomTra+                                     // Razão social ou nome
                                                     InsTra+                                     // IE
                                                     EndTra+                                     // Endereço completo
                                                     CidTra+                                     // Nome do Municipio
                                                     UfeTra+                                     // Sigla da UF
                                                     fNumZeros(IntToStr(CmpNfsAltVol.Value),15)+ // Quantidade de volumes
                                                     MarNfs+                                     // Especie dos volumes transportados
                                                     EspNfs+                                     // Marca dos volumes transportados
                                                     PesLiq+                                     // Peso Liquido (em Kg)
                                                     PesBrt);                                    // Peso Bruto (em Kg)

                                      ObsNfs := '';

                                      if Trim(fLimpaAcentos(CmpNfsOb1Nfs.Value)) <> '' then
                                         ObsNfs := ObsNfs + AllTrim(fLimpaAcentos(CmpNfsOb1Nfs.Value));

                                      if Trim(fLimpaAcentos(CmpNfsOb2Nfs.Value)) <> '' then
                                         ObsNfs := ObsNfs + AllTrim(fLimpaAcentos(CmpNfsOb2Nfs.Value));

                                      if Trim(fLimpaAcentos(CmpNfsOb3Nfs.Value)) <> '' then
                                         ObsNfs := ObsNfs + AllTrim(fLimpaAcentos(CmpNfsOb3Nfs.Value));

                                      if Trim(fLimpaAcentos(CmpNfsOb4Nfs.Value)) <> '' then
                                         ObsNfs := ObsNfs + AllTrim(fLimpaAcentos(CmpNfsOb4Nfs.Value));

                                      if Trim(fLimpaAcentos(CmpNfsOb5Nfs.Value)) <> '' then
                                         ObsNfs := ObsNfs + AllTrim(fLimpaAcentos(CmpNfsOb5Nfs.Value));

                                      if Trim(fLimpaAcentos(CmpNfsOb6Nfs.Value)) <> '' then
                                         ObsNfs := ObsNfs + AllTrim(fLimpaAcentos(CmpNfsOb6Nfs.Value));

                                      if Trim(fLimpaAcentos(CmpNfsOb7Nfs.Value)) <> '' then
                                         ObsNfs := ObsNfs + AllTrim(fLimpaAcentos(CmpNfsOb7Nfs.Value));

                                      if Trim(fLimpaAcentos(CmpNfsOb8Nfs.Value)) <> '' then
                                         ObsNfs := ObsNfs + AllTrim(fLimpaAcentos(CmpNfsOb8Nfs.Value));

                                      ObsNfs := copy(ObsNfs,1,256);

                                      ObsNfs := copy(Trim(ObsNfs),1,256) + fReplicate(' ',256 - Length(copy(Trim(ObsNfs),1,256)));

                                      Writeln(ArqEnv,'EM0214'+ // Uso interno do sistema
                                                     ObsNfs);  // Informações adicionais de interesse do Fisco

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

                                                  if pos(CmpNfsSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

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
                                         FlgArq := 'N';

                                         ArqRet := TStringList.Create;

                                         ArqRet.LoadFromFile(ArqRs2);

                                         for SeqLin := 0 to ArqRet.Count - 1 do begin

                                             Application.ProcessMessages;

                                             LinArq := ArqRet[SeqLin];

                                             if pos('EMRESP',LinArq) > 0 then FlgArq := 'S';

                                             if FlgArq = 'S' then begin

                                                if pos('Erros:',LinArq) > 0 then FlgRej := 'S';

                                                if pos('Rejeição',LinArq) > 0 then FlgRej := 'S';

                                                if pos('<xMotivo>',LinArq) > 0 then
                                                   MSGNFE := copy(LinArq,pos('<xMotivo>',LinArq)+9,pos('</xMotivo>',LinArq) - (pos('<xMotivo>',LinArq)+9));

                                                if pos('<nRec>',LinArq) > 0 then
                                                   RECNFE := copy(LinArq,pos('<nRec>',LinArq)+6,pos('</nRec>',LinArq) - (pos('<nRec>',LinArq)+6));

                                                if pos('<dhRecbto>',LinArq) > 0 then begin

                                                   DTENFE := copy(LinArq,pos('<dhRecbto>',LinArq)+10,pos('</dhRecbto>',LinArq) - (pos('<dhRecbto>',LinArq)+10));
                                                   HRENFE := copy(LinArq,pos('<dhRecbto>',LinArq)+21,pos('</dhRecbto>',LinArq) - (pos('<dhRecbto>',LinArq)+21));

                                                   if Trim(DTENFE) <> '' then DTENFE := copy(DTENFE,9,2)+ '/' +copy(DTENFE,6,2)+ '/' +copy(DTENFE,1,4);

                                                end;
                                             end;
                                         end;

                                         FreeAndNil(ArqRet);

                                         if Trim( MSGNFE ) <> '' then begin

                                            CmpNfs.Edit;

                                            CmpNfsFlgAtu.Value := 'F';
                                            CmpNfsRETNFE.Value := copy(Trim(MSGNFE),1,100);

                                            with CmpNfs do begin

                                                 fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                 try

                                                    ApplyUpdates; {Tenta aplicar as alterações};

                                                    fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                 except

                                                    fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                    if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                                                    CmpNfs.Close;
                                                    CmpNfs.Open;

                                                    grCmpNfs.SetFocus;

                                                    raise;

                                                 end;

                                                 CommitUpdates; {sucesso!, limpa o cache...}

                                            end;
                                         end;

                                         if FlgRej = 'N' then begin

                                            if Trim( MSGNFE ) <> '' then begin

                                               pnMensag.Caption := MSGNFE;

                                               Application.ProcessMessages;

                                               sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o usuario na tela //

                                            end;

                                            if Trim(RECNFE) <> '' then begin

                                               CmpNfs.Edit;

                                               CmpNfsFlgAtu.Value := 'F';
                                               CmpNfsHreNFe.Value := HRENFE;
                                               CmpNfsUsuNFe.Value := GUsu_Id;
                                               CmpNfsRecNFe.Value := Trim(RECNFE);
                                               CmpNfsDteNFe.Value := StrToDate(DTENFE);

                                               with CmpNfs do begin

                                                    fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                    try

                                                       ApplyUpdates; {Tenta aplicar as alterações};

                                                       fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                    except

                                                       fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                       if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                                                       CmpNfs.Close;
                                                       CmpNfs.Open;

                                                       grCmpNfs.SetFocus;

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

                                            fmManRo6.Enabled := True;

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

                                   fmManRo6.Enabled := True;

                                   pnMensag.Visible := False;

                                   fmsgErro(MSGNFE,Nil);

                                end;
                             end;

                             if Trim(CmpNfsRecNFe.Value) <> '' then begin

                                RecNFE := copy(Trim(CmpNfsRecNFe.Value),1,15) + fReplicate(' ',15 - Length(copy(Trim(CmpNfsRecNFe.Value),1,15)));

                                pnMensag.Caption := 'Aguarde. Consultando protocolo.';

                                sleep(5000);  /// aguardando 5 Segundos
                                
                                DeleteFile(ArqRe1);
                                DeleteFile(ArqRe2);
                                DeleteFile(ArqRs1);
                                DeleteFile(ArqRs2);

                                AssignFile(ArqEnv,ArqRe1);

                                Rewrite(ArqEnv);

                                Writeln(ArqEnv,'EM03' +
                                               UfeEmp +
                                               CmpNfsSeqNFe.Value +
                                               RecNFE +
                                               'Sim' +
                                               fNumZeros(IntToStr(CmpNfsLotNfe.Value),9)+
                                               fNumZeros(IntToStr(CmpNfsNroNfs.Value),9)+
                                               EmaFor);

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

                                            if pos(CmpNfsSeqNFe.Value,ArqRet[0]) > 0 then SeqEnc := 1;

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

                                   MSGNFE := '';
                                   FlgRej := 'N';
                                   FlgArq := 'N';

                                   ArqRet := TStringList.Create;

                                   ArqRet.LoadFromFile(ArqRs2);

                                   for SeqLin := 0 to ArqRet.Count - 1 do begin

                                       Application.ProcessMessages;

                                       LinArq := ArqRet[SeqLin];

                                       if pos('EMRESP',LinArq) > 0 then FlgArq := 'S';

                                       if pos('<protNFe',LinArq) > 0 then FlgArq := 'N';

                                       if FlgArq = 'S' then begin

                                          if pos('Erros:',LinArq) > 0 then FlgRej := 'S';

                                          if pos('Rejeição',LinArq) > 0 then FlgRej := 'S';

                                          if pos('<xMotivo>',LinArq) > 0 then begin

                                             if Trim(MSGNFE) = '' then
                                                MSGNFE := copy(LinArq,pos('<xMotivo>',LinArq)+9,pos('</xMotivo>',LinArq) - (pos('<xMotivo>',LinArq)+9));

                                          end;
                                       end;
                                   end;

                                   FreeAndNil(ArqRet);

                                   if Trim( MSGNFE ) <> '' then begin

                                      CmpNfs.Edit;

                                      CmpNfsFlgAtu.Value := 'F';
                                      CmpNfsRETNFe.Value := copy(Trim(MSGNFE),1,100);

                                      with CmpNfs do begin

                                           fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                           try

                                              ApplyUpdates; {Tenta aplicar as alterações};

                                              fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                           except

                                              fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                              if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                                              CmpNfs.Close;
                                              CmpNfs.Open;

                                              grCmpNfs.SetFocus;

                                              raise;

                                           end;

                                           CommitUpdates; {sucesso!, limpa o cache...}

                                      end;
                                   end;

                                   if FlgRej = 'N' then begin

                                      if Trim( MSGNFE ) <> '' then begin

                                         pnMensag.Caption := MSGNFE;

                                         Application.ProcessMessages;

                                         sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o usuário na tela //

                                      end;

                                      FlgArq := 'N';

                                      ArqRet := TStringList.Create;

                                      ArqRet.LoadFromFile(ArqRs2);

                                      for SeqLin := 0 to ArqRet.Count - 1 do begin

                                          Application.ProcessMessages;

                                          LinArq := ArqRet[SeqLin];

                                          if pos('<protNFe',LinArq) > 0 then FlgArq := 'S';

                                          if FlgArq = 'S' then begin

                                             if pos('Erros:',LinArq) > 0 then FlgRej := 'S';

                                             if pos('Rejeição',LinArq) > 0 then FlgRej := 'S';

                                             if pos('<nProt>',LinArq) > 0 then
                                                PRONFE := copy(LinArq,pos('<nProt>',LinArq)+7,pos('</nProt>',LinArq) - (pos('<nProt>',LinArq)+7));

                                             if pos('<dhRecbto>',LinArq) > 0 then begin

                                                DTEPNF := copy(LinArq,pos('<dhRecbto>',LinArq)+10,pos('</dhRecbto>',LinArq) - (pos('<dhRecbto>',LinArq)+10));

                                                HREPNF := copy(LinArq,pos('<dhRecbto>',LinArq)+21,pos('</dhRecbto>',LinArq) - (pos('<dhRecbto>',LinArq)+21));

                                                if Trim(DTEPNF) <> '' then DTEPNF := copy(DTEPNF,9,2)+ '/' +copy(DTEPNF,6,2)+ '/' +copy(DTEPNF,1,4);

                                             end;
                                          
                                             if pos('<xMotivo>',LinArq) > 0 then
                                                MSGNFE := copy(LinArq,pos('<xMotivo>',LinArq)+9,pos('</xMotivo>',LinArq) - (pos('<xMotivo>',LinArq)+9));

                                          end;
                                      end;

                                      if Trim( MSGNFE ) <> '' then begin

                                         CmpNfs.Edit;

                                         CmpNfsFlgAtu.Value := 'F';
                                         CmpNfsRETNFe.Value := copy(Trim(MSGNFE),1,100);

                                         with CmpNfs do begin

                                              fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                              try

                                                 ApplyUpdates; {Tenta aplicar as alterações};

                                                 fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                              except

                                                 fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                 if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                                                 CmpNfs.Close;
                                                 CmpNfs.Open;

                                                 grCmpNfs.SetFocus;

                                                 raise;

                                              end;

                                              CommitUpdates; {sucesso!, limpa o cache...}

                                         end;
                                      end;

                                      if FlgRej = 'N' then begin

                                         if Trim( MSGNFE ) <> '' then begin

                                            pnMensag.Caption := MSGNFE;

                                            Application.ProcessMessages;

                                            sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o usuário na tela //

                                         end;

                                         if Trim(PRONFE) <> '' then begin

                                            CmpNfs.Edit;

                                            CmpNfsFlgAtu.Value := 'F';
                                            CmpNfsEnvNFe.Value := 'Sim';
                                            CmpNfsProNFe.Value := Trim(PRONFE);
                                            CmpNfsDtePNF.Value := StrToDate(DTEPNF);
                                            CmpNfsHrePNF.Value := HREPNF;

                                            with CmpNfs do begin

                                                 fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                 try

                                                    ApplyUpdates; {Tenta aplicar as alterações};

                                                    fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                 except

                                                    fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                    if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                                                    CmpNfs.Close;
                                                    CmpNfs.Open;

                                                    grCmpNfs.SetFocus;

                                                    raise;

                                                 end;

                                                 CommitUpdates; {sucesso!, limpa o cache...}

                                            end;

                                            CmpNfs.Close;
                                            CmpNfs.Open;

                                            if DirectoryExists(sArqBackup) then begin

                                               NomArq := sArqBackup +'/processadas/'+ CmpNfsRecNFe.Value +'_v1.10-procNFe.xml';

                                               FatArq.Close;
                                               FatArq.Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
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

                                                       sleep(3000);  // aguardando 3 Segundos ... Exibindo mensagens para o usuário na tela //

                                                       pnMensag.Caption := MSGANT;
                                                 
                                                    end;

                                                    CommitUpdates; {sucesso!, limpa o cache...}

                                               end;

                                               FatArq.Close;

                                            end;

                                            if CmpNfsEnvNfe.Value = 'Sim' then begin

                                               if fMsg('Confirma impressão do DANFE ?','O') then begin

                                                  with quSQL,SQL do begin

                                                       Close;
                                                       Text := ' Delete From FatNfe Where FatNfe.Id_CmpNfs = '+ QuotedStr(IntToStr(CmpNfsId_CmpNfs.Value));
                                                       ExecSQL;

                                                  end;
                                            
                                                  with quSQL,SQL do begin

                                                       Close;
                                                       Text := ' Select CmpNf2.CodClp,'+
                                                               '        CmpNf2.CodGru,'+
                                                               '        CmpNf2.CodSub,'+
                                                               '        CmpNf2.CodPro,'+
                                                               '        CmpNf2.CodTam,'+
                                                               '        CmpNf2.CodCor,'+
                                                               '        CmpNf2.DesNf2,'+
                                                               '        CmpNf2.ObsNf2,'+
                                                               '        CmpNf2.CodCfo,'+                                                         
                                                               '        CmpNf2.ClsIpi,'+
                                                               '        CmpNf2.CodSt1,'+
                                                               '        CmpNf2.CodSt2,'+
                                                               '        CmpNf2.CodUnd,'+
                                                               '        CmpNf2.QtpNf2,'+
                                                               '        CmpNf2.VluNf2,'+
                                                               '        CmpNf2.TotIte,'+
                                                               '        CmpNf2.BasIcm,'+
                                                               '        CmpNf2.TotIcm,'+
                                                               '        CmpNf2.TotIpi,'+
                                                               '        CmpNf2.IcmNf2,'+
                                                               '        CmpNf2.IpiNf2,'+
                                                               '        CmpNf2.NroNf2 '+
                                                               ' From CmpNf2'+
                                                               ' Where CmpNf2.Id_CmpNfs = '+ Quotedstr(IntToStr(CmpNfsId_CmpNfs.Value))+
                                                               ' Order by CmpNf2.NroNf2';
                                                       Open;
                                                       First;

                                                  end;

                                                  NroReg := 0;

                                                  while not quSQL.EOF do begin

                                                        DscPro := Trim(quSQL.FieldbyName('DesNf2').AsString)+ ' ' +quSQL.FieldbyName('ObsNf2').AsString;

                                                        sEntrada := 'Nao';

                                                        if quSQL.FieldbyName('CodClp').AsString = '9' then sEntrada := 'Sim';

                                                        if (quSQL.FieldbyName('CodClp').AsString = '8') and (quSQL.FieldbyName('QtpNf2').AsFloat = 0) then sEntrada := 'Sim';

                                                        if sEntrada = 'Nao' then begin

                                                           Inc(NroReg);

                                                           with quSQL1,SQL do begin

                                                                Close;
                                                                Text := ' Insert Into FatNfe(Id_CmpNfs,CodClp,CodGru,CodSub,CodPro,CodTam,CodCor,DesNfe,CfoNfe,NcmNfe,SitNfe,UndNfe,QtpNfe,VlqNfe,TotNfe,BasIcm,TotIcm,TotIpi,IcmNfe,IpiNfe,NroNfe,IteNfe)'+
                                                                        '             Values(:Id_CmpNfs,:CodClp,:CodGru,:CodSub,:CodPro,:CodTam,:CodCor,:DesNfe,:CfoNfe,:NcmNfe,:SitNfe,:UndNfe,:QtpNfe,:VlqNfe,:TotNfe,:BasIcm,:TotIcm,:TotIpi,:IcmNfe,:IpiNfe,:NroNfe,:IteNfe)';

                                                                with Params do begin

                                                                     Params[00].AsInteger  := CmpNfsId_CmpNfs.Value;

                                                                     if quSQL.FieldbyName('CodClp').AsString <> '9' then begin

                                                                        Params[01].AsString := quSQL.FieldbyName('CodClp').AsString;
                                                                        Params[02].AsString := quSQL.FieldbyName('CodGru').AsString;
                                                                        Params[03].AsString := quSQL.FieldbyName('CodSub').AsString;
                                                                        Params[04].AsString := quSQL.FieldbyName('CodPro').AsString;
                                                                        Params[05].AsString := quSQL.FieldbyName('CodTam').AsString;
                                                                        Params[06].AsString := quSQL.FieldbyName('CodCor').AsString;

                                                                        end
                                                                     else
                                                                        begin

                                                                        Params[01].AsString := '';
                                                                        Params[02].AsString := '';
                                                                        Params[03].AsString := '';
                                                                        Params[04].AsString := '';
                                                                        Params[05].AsString := '';
                                                                        Params[06].AsString := '';

                                                                     end;

                                                                     Params[07].AsString  := copy(DscPro,1,55);
                                                                     Params[08].AsString  := Trim(quSQL.FieldbyName('CodCfo').AsString);
                                                                     Params[09].AsString  := Trim(quSQL.FieldbyName('ClsIpi').AsString);
                                                                     Params[10].AsString  := quSQL.FieldbyName('CodSt1').AsString+ ' ' +quSQL.FieldbyName('CodSt2').AsString;
                                                                     Params[11].AsString  := Trim(quSQL.FieldbyName('CodUnd').AsString);
                                                                     Params[12].AsFloat   := quSQL.FieldbyName('QtpNf2').AsFloat;
                                                                     Params[13].AsFloat   := quSQL.FieldbyName('VluNf2').AsFloat;
                                                                     Params[14].AsFloat   := quSQL.FieldbyName('TotIte').AsFloat;
                                                                     Params[15].AsFloat   := quSQL.FieldbyName('BasIcm').AsFloat;
                                                                     Params[16].AsFloat   := quSQL.FieldbyName('TotIcm').AsFloat;
                                                                     Params[17].AsFloat   := quSQL.FieldbyName('TotIpi').AsFloat;
                                                                     Params[18].AsFloat   := quSQL.FieldbyName('IcmNf2').AsFloat;
                                                                     Params[19].AsFloat   := quSQL.FieldbyName('IpiNf2').AsFloat;
                                                                     Params[20].AsInteger := NroReg;
                                                                     Params[21].AsString  := 'Sim';

                                                                end;

                                                                ExecSQL;

                                                           end;

                                                           if Trim(copy(DscPro,56,55)) <> '' then begin

                                                              Inc(NroReg);

                                                              with quSQL1,SQL do begin

                                                                   Close;
                                                                   Text := 'Insert Into FatNfe(Id_CmpNfs,DesNfe,NroNfe,IteNfe) Values(:Id_CmpNfs,:DesNfe,:NroNfe,:IteNfe)';

                                                                   with Params do begin

                                                                        Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                                                                        Params[1].AsString  := Trim(copy(DscPro,56,55));
                                                                        Params[2].AsInteger := NroReg;
                                                                        Params[3].AsString  := 'Nao';

                                                                   end;

                                                                   ExecSQL;

                                                              end;
                                                           end;

                                                           if Trim(copy(DscPro,112,55)) <> '' then begin

                                                              Inc(NroReg);

                                                              with quSQL1,SQL do begin

                                                                   Close;
                                                                   Text := 'Insert Into FatNfe(Id_CmpNfs,DesNfe,NroNfe,IteNfe) Values(:Id_CmpNfs,:DesNfe,:NroNfe,:IteNfe)';

                                                                   with Params do begin

                                                                        Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                                                                        Params[1].AsString  := Trim(copy(DscPro,112,55));
                                                                        Params[2].AsInteger := NroReg;
                                                                        Params[3].AsString  := 'Nao';

                                                                   end;

                                                                   ExecSQL;

                                                              end;
                                                           end;

                                                           end
                                                        else
                                                           begin

                                                           Inc(NroReg);

                                                           with quSQL1,SQL do begin

                                                                Close;
                                                                Text := 'Insert Into FatNfe(Id_CmpNfs,DesNfe,NroNfe,IteNfe) Values(:Id_CmpNfs,:DesNfe,:NroNfe,:IteNfe)';

                                                                with Params do begin

                                                                     Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                                                                     Params[1].AsString  := copy(DscPro,1,55);
                                                                     Params[2].AsInteger := NroReg;
                                                                     Params[3].AsString  := 'Nao';

                                                                end;

                                                                ExecSQL;

                                                           end;

                                                           if Trim(copy(DscPro,56,55)) <> '' then begin

                                                              Inc(NroReg);

                                                              with quSQL1,SQL do begin

                                                                   Close;
                                                                   Text := 'Insert Into FatNfe(Id_CmpNfs,DesNfe,NroNfe,IteNfe) Values(:Id_CmpNfs,:DesNfe,:NroNfe,:IteNfe)';

                                                                   with Params do begin

                                                                        Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                                                                        Params[1].AsString  := Trim(copy(DscPro,56,55));
                                                                        Params[2].AsInteger := NroReg;
                                                                        Params[3].AsString  := 'Nao';

                                                                   end;

                                                                   ExecSQL;

                                                              end;
                                                           end;

                                                           if Trim(copy(DscPro,112,55)) <> '' then begin

                                                              Inc(NroReg);

                                                              with quSQL1,SQL do begin

                                                                   Close;
                                                                   Text := 'Insert Into FatNfe(Id_CmpNfs,DesNfe,NroNfe,IteNfe) Values(:Id_CmpNfs,:DesNfe,:NroNfe,:IteNfe)';

                                                                   with Params do begin

                                                                        Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                                                                        Params[1].AsString  := Trim(copy(DscPro,112,55));
                                                                        Params[2].AsInteger := NroReg;
                                                                        Params[3].AsString  := 'Nao';

                                                                   end;

                                                                   ExecSQL;

                                                              end;
                                                           end;
                                                        end;

                                                        quSQL.Next;

                                                  end;

                                                  GEmail := CmpNfsEmaFor.Value;

                                                  sNumeroNF := copy(fNumZeros(IntToStr(CmpNfsNroNfs.Value),9),1,3)+ '.' +
                                                               copy(fNumZeros(IntToStr(CmpNfsNroNfs.Value),9),4,3)+ '.' +
                                                               copy(fNumZeros(IntToStr(CmpNfsNroNfs.Value),9),7,3);

                                                  GAssunto := 'NF-e: '+ sNumeroNF + ' ' + UpperCase(Trim(NomEmp));

                                                  try

                                                     fmManE09 := TfmManE09.Create(Self);

                                                     fmManE09.CmpNfs.Close;
                                                     fmManE09.CmpNfs.Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                                                     fmManE09.CmpNfs.Open;

                                                     fmManE09.RLReport1.PreviewModal;

                                                  finally

                                                     FreeAndNil(fmManE09);

                                                  end;

                                                  if fMsg('DANFE impresso corretamente ?','O') then begin

                                                     CmpNfs.Edit;

                                                     CmpNfsFlgAtu.Value := 'F';
                                                     CmpNfsImpNFe.Value := 'Sim';

                                                     with CmpNfs do begin

                                                          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                                          try

                                                             ApplyUpdates; {Tenta aplicar as alterações};

                                                             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                                          except

                                                             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                             if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                                                             CmpNfs.Close;
                                                             CmpNfs.Open;

                                                             grCmpNfs.SetFocus;

                                                             raise;

                                                          end;

                                                          CommitUpdates; {sucesso!, limpa o cache...}

                                                     end;
                                                  end;
                                               end;

                                               with CmpNfs,SQL do begin

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

                                         fmManRo6.Enabled := True;

                                         pnMensag.Visible := False;
                                
                                         CmpNfs.Edit;

                                         CmpNfsFlgAtu.Value := 'F';
                                
                                         CmpNfsRecNFe.Clear;

                                         with CmpNfs do begin

                                              fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                              try

                                                 ApplyUpdates; {Tenta aplicar as alterações};

                                                 fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                              except

                                                 fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                                 if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                                                 CmpNfs.Close;
                                                 CmpNfs.Open;

                                                 grCmpNfs.SetFocus;

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

                                      fmManRo6.Enabled := True;

                                      pnMensag.Visible := False;

                                      CmpNfs.Edit;

                                      CmpNfsFlgAtu.Value := 'F';

                                      CmpNfsRecNFe.Clear;

                                      with CmpNfs do begin

                                           fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                           try

                                              ApplyUpdates; {Tenta aplicar as alterações};

                                              fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                           except

                                              fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                              if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                                              CmpNfs.Close;
                                              CmpNfs.Open;

                                              grCmpNfs.SetFocus;

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

                             fmManRo6.Enabled := True;

                             pnMensag.Visible := False;

                             fmsgErro('Código de país para emissão de NFe não informado no cadastro do fornecedor.',Nil);

                          end;

                          end
                       else
                          begin

                          fmManPri.Enabled := True;

                          fmManRo6.Enabled := True;

                          pnMensag.Visible := False;

                          fmsgErro('Código de país para emissão de NFe não informado no cadastro da empresa.',Nil);

                       end;

                       end
                    else
                       begin

                       fmManPri.Enabled := True;

                       fmManRo6.Enabled := True;

                       pnMensag.Visible := False;

                       fmsgErro('Código de municipio para emissão de NFe não informado no cadastro da empresa.',Nil);

                    end;

                    end
                 else
                    begin

                    fmManPri.Enabled := True;

                    fmManRo6.Enabled := True;

                    pnMensag.Visible := False;

                    fmsgErro('Código da UF para emissão de NFe não informado no cadastro da empresa.',Nil);

                 end;

                 fmManPri.Enabled := True;

                 fmManRo6.Enabled := True;

                 pnMensag.Visible := False;

              end;

              end
           else
              fmsgErro('Arquivos de configuração para envio da nota fiscal eletronica não localizado .INI. Por favor verificar.',Nil);

        end;
     end;
  end;
end;

procedure TfmManRo6.CountRegistros;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select Sum(CmpNfs.TotGer) as TotReg,'+
               '        Count(*) as QtdReg'+
               ' From CmpNfs'+
               ' Where CmpNfs.SitNfs = '+ Quotedstr('ConCluido') +
               '   and CmpNfs.FlgNFE = '+ Quotedstr('Sim') +
               '   and CmpNfs.EnvNFE = '+ Quotedstr('Nao') ;

       if Id_CmpNfs > 0 then Text := Text + ' and CmpNfs.Id_CmpNfs = '+ QuotedStr(IntToStr(Id_CmpNfs));

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

  Id_CmpNfs := 0;

end;

procedure TfmManRo6.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNroNfs.Text ) <> '' then begin

     with CmpNfs,SQL do begin

          Close;
          Text := sBase + sFiltro +
                  ' and CmpNfs.NroNfs = '+ QuotedStr(EdPsqNroNfs.Text);
          Open;

     end;

     end
  else
     begin

     with CmpNfs,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;
  end;

  CountRegistros;

end;

procedure TfmManRo6.EdPsqNroNfsKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManRo6.CmpNf2NCMNF2GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  Text := Trim(CmpNf2ClsIpi.Value);
end;

procedure TfmManRo6.EdCodCfoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (not ( key in [ '0'..'9' ] )) and (not ( key in ['.'] )) then key := #0;
end;

procedure TfmManRo6.EdCodSt1Enter(Sender: TObject);
begin
  inherited;
  Label4.Caption := 'F1-Iniciais';
end;

procedure TfmManRo6.EdCodSt1Exit(Sender: TObject);
begin
  inherited;
  if Trim(CmpNf2CodSt1.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstSt1 Where EstSt1.CodSt1 = '+ QuotedStr(CmpNf2CodSt1.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Situação tributária informada não localizada.',EdCodSt1);

     end;
  end;
end;

procedure TfmManRo6.EdCodSt1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt1 := TfmPsqSt1.Create(Self);
        fmPsqSt1.ShowModal;

        if Trim( fmPsqSt1.CodSt1 ) <> '' then CmpNf2CodSt1.Value := fmPsqSt1.CodSt1;

     finally

        FreeAndNil(fmPsqSt1);

     end;

     EdCodSt1.SetFocus;

  end;
end;

procedure TfmManRo6.EdCodSt2Exit(Sender: TObject);
begin
  inherited;
  if Trim(CmpNf2CodSt2.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstSt2 Where EstSt2.CodSt2 = '+ QuotedStr(CmpNf2CodSt2.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Situação tributária informada não localizada.',EdCodSt2);

     end;
  end;
end;

procedure TfmManRo6.EdCodSt2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqSt2 := TfmPsqSt2.Create(Self);
        fmPsqSt2.ShowModal;

        if Trim( fmPsqSt2.CodSt2 ) <> '' then CmpNf2CodSt2.Value := fmPsqSt2.CodSt2;

     finally

        FreeAndNil(fmPsqSt2);

     end;

     EdCodSt2.SetFocus;

  end;
end;

procedure TfmManRo6.EdCodUndExit(Sender: TObject);
begin
  inherited;
  if Trim(CmpNf2CodUnd.Value) <> '' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg From EstUnd Where EstUnd.CodUnd = '+ QuotedStr(CmpNf2CodUnd.Value);
          Open;

          if FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Unidade de medida informada não localizada.',EdCodUnd);

     end;
  end;
end;

procedure TfmManRo6.EdCodUndKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqUnd := TfmPsqUnd.Create(Self);
        fmPsqUnd.ShowModal;

        if Trim( fmPsqUnd.CodUnd ) <> '' then CmpNf2CodUnd.Value := fmPsqUnd.CodUnd;

     finally

        FreeAndNil(fmPsqUnd);

     end;

     EdCodUnd.SetFocus;

  end;
end;

procedure TfmManRo6.pnalterarExit(Sender: TObject);
var
  Id_CmpNf2 : integer;
begin
  inherited;
  if CmpNf2.State <> dsBrowse then begin

     CmpNf2CodCfo.Value := Trim(CmpNf2CodCfo.Value);
     CmpNf2ClsIpi.Value := Trim(CmpNf2ClsIpi.Value);

     if Trim(CmpNf2CodCfo.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodCfo);
     if Trim(CmpNf2CodSt1.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodSt1);
     if Trim(CmpNf2CodSt2.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodSt2);
     if Trim(CmpNf2CodUnd.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodUnd);

     if Trim(CmpNf2ClsIpi.Value) <> '' then begin

        if Length(Trim(fLimpaStr(CmpNf2ClsIpi.Value))) <> 8 then
           fmsgErro('Conteudo invalido.',EdClsIpi)
        else
           begin

           if fCaracIgual(fLimpaStr(CmpNf2ClsIpi.Value)) then fmsgErro('Conteudo invalido.',EdClsIpi);

        end;
     end;

     Id_CmpNf2 := CmpNf2Id_CmpNf2.Value;

     with CmpNf2 do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if CmpNf2.State = dsBrowse then CmpNf2.Edit;

             EdCodCfo.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     CmpNf2.Close;
     CmpNf2.Open;

     CmpNfs.Close;
     CmpNfs.Open;

     CmpNf2.Locate('Id_CmpNf2',Id_CmpNf2,[LoPartialKey]);

     if CmpNf2NroNf2.Value < CmpNfsQtiNfs.Value then begin

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

     end;
  end;
end;                               

end.

