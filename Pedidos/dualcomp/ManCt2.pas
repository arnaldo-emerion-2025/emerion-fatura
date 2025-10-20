unit ManCt2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, AlignEdit, ComCtrls, hNavigator, Buttons,
  Mask, hEdits, FlEdit, Db, DBTables, Wwquery, Wwdatsrc, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, wwdbdatetimepicker, wwdblook, DBCtrls, DBFlEdit, wwriched,
  jpeg, wwdbedit, Wwdotdot, Wwdbcomb, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxfCheckBox, Menus, dxDBEdtr, dxDBColorDateEdit, dxDBColorEdit,
  dxDBColorCurrencyEdit;

type
  TfmManCt2 = class(TfmPadrao)
    DsCta: TwwDataSource;
    DsCt2: TwwDataSource;
    UpCta: TUpdateSQL;
    UpCt2: TUpdateSQL;
    quSql: TwwQuery;
    LbText: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Label29: TLabel;
    Label49: TLabel;
    EdNumCta: TdxDBColorEdit;
    pnNumCta: TPanel;
    Label37: TLabel;
    Label48: TLabel;
    EdCodEmp: TdxDBColorEdit;
    EdCodCli: TdxDBColorEdit;
    Label45: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    EdCodVen: TdxDBColorEdit;
    EdCodPfa: TdxDBColorEdit;
    bpsqPfa: TSpeedButton;
    bpsqCli: TSpeedButton;
    bpsqEmp: TSpeedButton;
    pnNomPfa: TPanel;
    pnNomVen: TPanel;
    pnNomCli: TPanel;
    pnNomEmp: TPanel;
    EdNomEmp: TdxDBColorEdit;
    EdNomCli: TdxDBColorEdit;
    EdNomVen: TdxDBColorEdit;
    EdNomPfa: TdxDBColorEdit;
    Label54: TLabel;
    Label56: TLabel;
    Label68: TLabel;
    Label60: TLabel;
    pnUfeCta: TPanel;
    EdUfeCta: TdxDBColorEdit;
    EdDteCta: TdxDBColorDateEdit;
    Label03: TLabel;
    Label31: TLabel;
    pnTotRen: TPanel;
    EdTotRen: TdxDBColorCurrencyEdit;
    Label33: TLabel;
    Label3: TLabel;
    EdDscReg: TdxDBColorCurrencyEdit;
    Label25: TLabel;
    grLabel2: TPanel;
    Label32: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    grLabel1: TdxDBGraphicEdit;
    PedCta: TwwQuery;
    PedCt2: TwwQuery;
    Panel2: TPanel;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpCt2: TdxDBColorCurrencyEdit;
    EdVluCt2: TdxDBColorCurrencyEdit;
    EdIcmCt2: TdxDBColorCurrencyEdit;
    EdDscCt2: TdxDBColorCurrencyEdit;
    EdCodUnd: TdxDBColorEdit;
    EdVlqCt2: TdxDBColorCurrencyEdit;
    EdTotCt2: TdxDBColorCurrencyEdit;
    grCt21: TdxDBGraphicEdit;
    grCt2: ThGrid;
    Label4: TLabel;
    EdDscCom: TdxDBColorCurrencyEdit;
    Label52: TLabel;
    Label53: TLabel;
    PedCtaCODEMP: TIntegerField;
    PedCtaDTECTA: TDateTimeField;
    PedCtaNUMCTA: TIntegerField;
    PedCtaHRECTA: TStringField;
    PedCtaCODCLI: TIntegerField;
    PedCtaCODVEN: TIntegerField;
    PedCtaCODPFA: TStringField;
    PedCtaTIPPFA: TStringField;
    PedCtaUFECTA: TStringField;
    PedCtaQTICTA: TIntegerField;
    PedCtaSEQITE: TIntegerField;
    PedCtaBASIPI: TFloatField;
    PedCtaTOTIPI: TFloatField;
    PedCtaBASICM: TFloatField;
    PedCtaTOTICM: TFloatField;
    PedCtaBASSUB: TFloatField;
    PedCtaTOTSUB: TFloatField;
    PedCtaTOTITE: TFloatField;
    PedCtaTOTREN: TFloatField;
    PedCtaTOTGER: TFloatField;
    PedCtaDSCREG: TFloatField;
    PedCtaDSCCOM: TFloatField;
    PedCtaMEDDCO: TFloatField;
    PedCtaMEDPRM: TFloatField;
    PedCtaMEDDSC: TFloatField;
    PedCtaMEDACR: TFloatField;
    PedCtaTOTDSC: TFloatField;
    PedCtaTOTDSR: TFloatField;
    PedCtaTOTDSP: TFloatField;
    PedCtaTOTACR: TFloatField;
    PedCtaTOTDCO: TFloatField;
    PedCtaTOTVEN: TFloatField;
    PedCtaTOTCST: TFloatField;
    PedCtaCODATD: TIntegerField;
    PedCtaCODUSU: TIntegerField;
    PedCtaFLGTAB: TStringField;
    PedCtaFLGCTB: TStringField;
    PedCtaSEQCTA: TStringField;
    PedCtaCONSUM: TStringField;
    PedCtaCODIPI: TStringField;
    PedCtaTIPIPI: TStringField;
    PedCtaTRBIPI: TStringField;
    PedCtaREDIPI: TFloatField;
    PedCtaBSCIPI: TFloatField;
    PedCtaCODICM: TStringField;
    PedCtaTIPICM: TStringField;
    PedCtaTRBICM: TStringField;
    PedCtaREDICM: TFloatField;
    PedCtaBSCICM: TFloatField;
    PedCtaINCREV: TFloatField;
    PedCtaINCFIN: TFloatField;
    PedCtaTXFIPI: TStringField;
    PedCtaTXFICM: TStringField;
    PedCtaEMPRES: TIntegerField;
    PedCtaDTERES: TDateTimeField;
    PedCtaNUMRES: TIntegerField;
    PedCtaOBSCND: TStringField;
    PedCtaOBSENT: TStringField;
    PedCtaOBSVAL: TStringField;
    PedCtaOBSCLI: TStringField;
    PedCtaSITCTA: TStringField;
    PedCt2CODEMP: TIntegerField;
    PedCt2DTECTA: TDateTimeField;
    PedCt2NUMCTA: TIntegerField;
    PedCt2SEQCT2: TIntegerField;
    PedCt2CODEIT: TIntegerField;
    PedCt2CODCLP: TStringField;
    PedCt2CODGRU: TStringField;
    PedCt2CODSUB: TStringField;
    PedCt2CODPRO: TStringField;
    PedCt2CODTAM: TStringField;
    PedCt2CODCOR: TStringField;
    PedCt2DESCT2: TStringField;
    PedCt2OBSCT2: TStringField;
    PedCt2CODST1: TStringField;
    PedCt2CODST2: TStringField;
    PedCt2CODUND: TStringField;
    PedCt2TABPRC: TIntegerField;
    PedCt2QTPCT2: TFloatField;
    PedCt2VLUCT2: TFloatField;
    PedCt2VLQCT2: TFloatField;
    PedCt2CSTCT2: TFloatField;
    PedCt2VCHCT2: TFloatField;
    PedCt2VRECT2: TFloatField;
    PedCt2VCRCT2: TFloatField;
    PedCt2VCPCT2: TFloatField;
    PedCt2VPRCT2: TFloatField;
    PedCt2VCSCT2: TFloatField;
    PedCt2DSCCT2: TFloatField;
    PedCt2VDSCT2: TFloatField;
    PedCt2DSPCT2: TFloatField;
    PedCt2VDPCT2: TFloatField;
    PedCt2DSRCT2: TFloatField;
    PedCt2VDRCT2: TFloatField;
    PedCt2PACCT2: TFloatField;
    PedCt2VACCT2: TFloatField;
    PedCt2DSCCOM: TFloatField;
    PedCt2VDSCOM: TFloatField;
    PedCt2IPICT2: TFloatField;
    PedCt2CLSIPI: TStringField;
    PedCt2ICMCT2: TFloatField;
    PedCt2TOTVEN: TFloatField;
    PedCt2TOTCST: TFloatField;
    PedCt2BASIPI: TFloatField;
    PedCt2TOTIPI: TFloatField;
    PedCt2BASICM: TFloatField;
    PedCt2TOTICM: TFloatField;
    PedCt2BASSUB: TFloatField;
    PedCt2TOTSUB: TFloatField;
    PedCt2TOTCT2: TFloatField;
    PedCt2TOTGE2: TFloatField;
    PedCt2TOTREN: TFloatField;
    PedCt2TOTDSC: TFloatField;
    PedCt2TOTDSR: TFloatField;
    PedCt2TOTDSP: TFloatField;
    PedCt2TOTACR: TFloatField;
    PedCt2TOTDCO: TFloatField;
    PedCt2CODSTR: TStringField;
    PedCt2TIPSTR: TStringField;
    PedCt2REGIPI: TStringField;
    PedCt2TIPIPI: TStringField;
    PedCt2TRBIPI: TStringField;
    PedCt2REDIPI: TFloatField;
    PedCt2BSCIPI: TFloatField;
    PedCt2REGICM: TStringField;
    PedCt2TIPICM: TStringField;
    PedCt2TRBICM: TStringField;
    PedCt2REDICM: TFloatField;
    PedCt2BSCICM: TFloatField;
    PedCt2INCREV: TFloatField;
    PedCt2INCFIN: TFloatField;
    PedCt2NROCT2: TIntegerField;
    PedCt2FLASEQ: TStringField;
    PedCt2FLGDUP: TStringField;
    PedCtaLANEST: TStringField;
    PedCtaINTFIN: TStringField;
    PedCtaCODFIL: TIntegerField;
    PedCtaATUEST: TStringField;
    PedCtaOBSCTA: TMemoField;
    PaintBox: TPaintBox;
    EdObsCt2: TdxDBColorEdit;
    pnObsCt2: TPanel;
    EdDesCt2: TdxDBColorEdit;
    pnDesCt2: TPanel;
    Label57: TLabel;
    EdTotMk2: TdxDBColorCurrencyEdit;
    pnTotMk2: TPanel;
    Label12: TLabel;
    EdNroCt2: TdxDBColorCurrencyEdit;
    pnNroCt2: TPanel;
    pnTotIte: TPanel;
    EdTotIte: TdxDBColorCurrencyEdit;
    Label27: TLabel;
    Label7: TLabel;
    EdTotIpi: TdxDBColorCurrencyEdit;
    pnTotIpi: TPanel;
    Label28: TLabel;
    Label1: TLabel;
    EdTotSub: TdxDBColorCurrencyEdit;
    pnTotSub: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    bPsqVen: TSpeedButton;
    PedPar: TwwQuery;
    PedParEXIMKA: TStringField;
    EdFlgOco: TdxDBColorEdit;
    pnFlgOco: TPanel;
    PedCtaFLGPSQ: TStringField;
    PedCtaFLGSLD: TStringField;
    PedCtaFLGOCO: TStringField;
    PedCtaCODTCL: TIntegerField;
    PedCt2QTDEMB: TFloatField;
    PedCt2VMECT2: TFloatField;
    PedCt2VPFCT2: TFloatField;
    PedCt2CSTCST: TFloatField;
    PedCt2VCHCST: TFloatField;
    PedCt2VRECST: TFloatField;
    PedCt2VCRCST: TFloatField;
    PedCt2VCPCST: TFloatField;
    PedCt2VPRCST: TFloatField;
    PedCt2VMECST: TFloatField;
    PedCt2VPFCST: TFloatField;
    PedCt2REFCT2: TStringField;
    PedCt2CODITE: TStringField;
    PedCtaNOMCLI: TStringField;
    PedCtaCGCCLI: TStringField;
    PedCtaINSCLI: TStringField;
    PedCtaCLITAB: TStringField;
    PedCtaCODGCL: TIntegerField;
    pnEstoque: TPanel;
    Panel10: TPanel;
    Panel4: TPanel;
    Label2: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label30: TLabel;
    Label36: TLabel;
    Label18: TLabel;
    Label58: TLabel;
    Label51: TLabel;
    Label61: TLabel;
    Panel13: TPanel;
    Panel12: TPanel;
    Panel11: TPanel;
    Panel9: TPanel;
    Panel8: TPanel;
    EdQtaIte: TPanel;
    Panel7: TPanel;
    EdQtdIte: TPanel;
    Panel6: TPanel;
    EdQtrIte: TPanel;
    Panel5: TPanel;
    EdSldIte: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    EdQtdEmb: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    EdQtdRma: TPanel;
    Panel14: TPanel;
    PedCt2CBACT2: TStringField;
    EdCbaCt2: TdxDBColorEdit;
    EdIpiCt2: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    Label24: TLabel;
    Label26: TLabel;
    EdTotGer: TdxDBColorCurrencyEdit;
    pnTotGer: TPanel;
    Label34: TLabel;
    Label35: TLabel;
    EdTotDsr: TdxDBColorCurrencyEdit;
    pnTotDsr: TPanel;
    Label46: TLabel;
    Label47: TLabel;
    EdCodAtd: TdxDBColorEdit;
    EdNomAtd: TdxDBColorEdit;
    pnNomAtd: TPanel;
    procedure SaiGrupo;
    procedure SaiCliente;
    procedure SaiProduto;
    procedure SaiSubGrupo;
    procedure SaiCodBarras;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PedCtaNewRecord(DataSet: TDataSet);
    procedure PedCt2NewRecord(DataSet: TDataSet);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodCliExit(Sender: TObject);
    procedure EdCodPfaExit(Sender: TObject);
    procedure EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bpsqEmpClick(Sender: TObject);
    procedure bpsqCliClick(Sender: TObject);
    procedure bpsqPfaClick(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grCt2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdQtpCt2Exit(Sender: TObject);
    procedure EdVluCt2Exit(Sender: TObject);
    procedure EdDscCt2Exit(Sender: TObject);
    procedure EdDspCt2Exit(Sender: TObject);
    procedure EdDteCtaExit(Sender: TObject);
    procedure EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodUndExit(Sender: TObject);
    procedure EdUfeCtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdCodVenExit(Sender: TObject);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdCbaCt2Exit(Sender: TObject);
    procedure DsCt2DataChange(Sender: TObject; Field: TField);
    procedure EdVluCt2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodEmpEnter(Sender: TObject);
    procedure EdDteCtaEnter(Sender: TObject);
    procedure EdCodCliEnter(Sender: TObject);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdCodProEnter(Sender: TObject);
    procedure EdQtpCt2Enter(Sender: TObject);
    procedure EdVluCt2Enter(Sender: TObject);
    procedure EdCodUndEnter(Sender: TObject);
    procedure EdIpiCt2Enter(Sender: TObject);
    procedure EdDscCt2Enter(Sender: TObject);
    procedure grCt2Enter(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    DteCta : TDateTime;
    AntVluCt2,AntDscCt2,AntDspCt2 : real;
    pCodClp,pCodGru,pCodSub,pCodPro : string;
    CodEmp,NumCta,SeqCt2,Qticms,NroReg : integer;
    sEnc,sEntr,Finalizar,LanCba,sTipPed,sVerEst,PSaida : string;
  end;

var
  fmManCt2: TfmManCt2;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManGDB, ManCta, PsqEmp, AuxPsq,
     PsqTpe, PsqPfa, PsqEst, PsqTab, PsqRes, PsqObs, PsqIcm, AuxIni, ManCt3,
     PsqCmp, PsqUnd, PsqUfe, PsqOcc, PsqEs2, PsqUve;

{$R *.DFM}

procedure TfmManCt2.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  pSaida := 'Sim';

  Finalizar := 'N';

end;

procedure TfmManCt2.FormShow(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select LANCBA From EstPar';
       Open;

       LanCba := FieldbyName('LANCBA').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select TIPPED,VEREST From PedPar';
       Open;

       sTipPed := FieldbyName('TIPPED').AsString;
       sVerEst := FieldbyName('VEREST').AsString;

  end;

  if sTipPed = 'Codigo de Barras' then begin

     EdCodGru.Enabled := False;
     EdCodSub.Enabled := False;
     EdCodPro.Enabled := False;

     EdCodGru.Visible := False;
     EdCodSub.Visible := False;
     EdCodPro.Visible := False;

     EdCbaCt2.Enabled := False;

     EdCbaCt2.Visible := True;

     end
  else
     begin

     EdCbaCt2.Enabled := False;

     EdCbaCt2.Visible := False;

     EdCodGru.Enabled := False;
     EdCodSub.Enabled := False;
     EdCodPro.Enabled := False;

     EdCodGru.Visible := True;
     EdCodSub.Visible := True;
     EdCodPro.Visible := True;

  end;

  if (GGus_Id > 1) and (GFlgGer <> 'Sim') then begin

     if PedParExiMka.Value = 'Nao' then begin

        Label03.Visible := False;
        Label31.Visible := False;
        Label33.Visible := False;
        Label57.Visible := False;

        pnTotRen.Visible := False;
        EdTotRen.Visible := False;

        pnTotMk2.Visible := False;
        EdTotMk2.Visible := False;

     end;
  end;

  if fmManCta.CodEmp > 0 then begin

     sEntr := 'S';

     PedCta.Close;
     PedCta.Params[0].AsInteger  := fmManCta.CodEmp;
     PedCta.Params[1].AsDateTime := fmManCta.DteCta;
     PedCta.Params[2].AsInteger  := fmManCta.NumCta;
     PedCta.Open;

     PedCt2.Close;
     PedCt2.Params[0].AsInteger  := PedCtaCodEmp.Value;
     PedCt2.Params[1].AsDateTime := PedCtaDteCta.Value;
     PedCt2.Params[2].AsInteger  := PedCtaNumCta.Value;
     PedCt2.Open;

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

          if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > '''+ '0' +'''';

          with Params do begin

               Params[0].AsInteger := PedCtaCodEmp.Value;

          end;

          Open;

          pnNomEmp.Caption := quSQL.FieldbyName('NomEmp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

          with Params do begin

               Params[0].AsInteger := PedCtaCodVen.Value;

          end;

          Open;

          pnNomVen.Caption := FieldbyName('ApeVen').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinAtd.NomAtd From FinAtd Where FinAtd.CodAtd = :CodAtd';

          with Params do begin

               Params[0].AsInteger := PedCtaCodAtd.Value;

          end;

          Open;

          pnNomAtd.Caption := FieldbyName('NomAtd').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  '   and EstPfa.CodPfa = :CodPfa';

          with Params do begin

               Params[0].AsString := 'Saida';
               Params[1].AsString := PedCtaCodPfa.Value;

          end;

          Open;

          pnNomPfa.Caption := quSQL.FieldbyName('DscPfa').AsString;

     end;

     pnNomCli.Caption := PedCtaNomCli.Value;
     pnUfeCta.Caption := PedCtaUfeCta.Value;

     qticms := 1;

     if GUfeEmp <> PedCtaUfeCta.Value then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg from GerIcm Where GerIcm.SigUfe = '''+ PedCtaUfeCta.Value +'''';
             Open;

        end;

        qticms := quSql.FieldbyName('Reg').AsInteger;

     end;

     if (PedCtaSitCta.Value <> 'Nao Concluida') and (PedCtaSitCta.Value <> 'Processo de Alteracao') then
        sEnc := 'S'
     else
        begin

        PedCta.Edit;

        bPsqCli.Enabled := True;

        EdCodCli.Enabled := True;
        EdDteCta.Enabled := True;

        EdCodCli.Font.Style := [];
        EdDteCta.Font.Style := [];

        EdDteCta.Date := PedCtaDteCta.Value;

        if PedCtaCodCli.Value > 0 then EdCodCli.Text := IntToStr( PedCtaCodCli.Value );

        EdDteCta.SetFocus;

     end;

     end
  else
     begin

     sEntr := 'N';

     LbText.Caption := '';

     PedCta.Insert;

     EdDteCta.SetFocus;

  end;
end;

procedure TfmManCt2.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCt2.PedCtaNewRecord(DataSet: TDataSet);
begin
  inherited;

  PedCta.DisableControls;

  PedCtaNumCta.Value := 0;
  PedCtaQtiCta.Value := 0;
  PedCtaSeqIte.Value := 0;
  PedCtaBasIcm.Value := 0;
  PedCtaTotIcm.Value := 0;
  PedCtaBasIpi.Value := 0;
  PedCtaTotIpi.Value := 0;
  PedCtaTotCst.Value := 0;
  PedCtaTotRen.Value := 0;
  PedCtaTotVen.Value := 0;
  PedCtaTotGer.Value := 0;
  PedCtaTotDsc.Value := 0;
  PedCtaTotDsr.Value := 0;
  PedCtaTotAcr.Value := 0;
  PedCtaDscReg.Value := 0;
  PedCtaDscCom.Value := 0;
  PedCtaDteCta.Value := Date;
  PedCtaTipPfa.Value := 'Saida';
  PedCtaCodEmp.Value := GEmp_Id;
  PedCtaObsVal.Value := '3 DIAS';
  PedCtaSitCta.Value := 'Nao Concluida';
  PedCtaHreCta.Value := TimeToStr(Time);
  PedCtaObsCta.Value := 'APOS A VALIDADE DESTA COTACAO ESTES PRODUTOS PODERAO SOFRER REAJUSTES SEM PREVIO AVISO';

  if GCodAtd_Id > 0 then PedCtaCodAtd.Value := GCodAtd_Id;

  PedCta.EnableControls;

  EdDteCta.Date := Date;

  if GEmp_Id > 0 then EdCodEmp.Text := IntToStr(GEmp_Id);

  if GCodVen_Id > 0 then begin

     pnNomVen.Caption := GNomVen_Id;

     EdCodVen.Text := IntToStr(GCodVen_Id);

     PedCtaCodVen.Value := GCodVen_Id;

  end;

  if GCodAtd_Id > 0 then begin

     pnNomAtd.Caption := GNomAtd_Id;

     EdCodAtd.Text := IntToStr(GCodAtd_Id);

     PedCtaCodAtd.Value := GCodAtd_Id;

  end;
  
  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

       if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > '''+ '0' +'''';

       with Params do begin

            Params[0].AsInteger := PedCtaCodEmp.Value;

       end;

       Open;

       pnNomEmp.Caption := quSQL.FieldbyName('NomEmp').AsString;

  end;

  pnNomCli.Caption := PedCtaNomCli.Value;
  pnUfeCta.Caption := PedCtaUfeCta.Value;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

       with Params do begin

            Params[0].AsInteger := PedCtaCodVen.Value;

       end;

       Open;

       pnNomVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinAtd.NomAtd From FinAtd Where FinAtd.CodAtd = :CodAtd';

       with Params do begin

            Params[0].AsInteger := PedCtaCodAtd.Value;

       end;

       Open;

       pnNomAtd.Caption := quSQL.FieldbyName('NomAtd').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstPfa.DscPfa From EstPfa'+
               ' Where EstPfa.TipPfa = :TipPfa'+
               '   and EstPfa.CodPfa = :CodPfa';

       with Params do begin

            Params[0].AsString  := 'Saida';
            Params[1].AsString  := PedCtaCodPfa.Value;

       end;

       Open;

       pnNomPfa.Caption := quSQL.FieldbyName('DscPfa').AsString;

  end;

  PedCt2.Close;
  PedCt2.Params[0].AsInteger  := PedCtaCodEmp.Value;
  PedCt2.Params[1].AsDateTime := PedCtaDteCta.Value;
  PedCt2.Params[2].AsInteger  := PedCtaNumCta.Value;
  PedCt2.Open;

  bPsqEmp.Enabled := True;
  bPsqCli.Enabled := True;
  bPsqPfa.Enabled := True;
  bPsqVen.Enabled := True;

  EdCodEmp.Enabled := True;
  EdDteCta.Enabled := True;
  EdCodCli.Enabled := True;
  EdCodVen.Enabled := True;
  EdCodPfa.Enabled := True;

  EdCodEmp.Font.Style := [];
  EdDteCta.Font.Style := [];
  EdCodCli.Font.Style := [];
  EdCodVen.Font.Style := [];  
  EdCodPfa.Font.Style := [];

  if GGUs_Id <> 1 then begin

     if GCodVen_Id > 0 then begin

        EdCodVen.Enabled := False;

        EdCodVen.Font.Style := [fsBold];

        bPsqVen.Enabled := False;

     end;
  end;

  if PedCtaCodEmp.Value > 0 then
     EdDteCta.SetFocus
  else
     EdCodEmp.SetFocus;

end;

procedure TfmManCt2.PedCt2NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedCt2.DisableControls;

  PedCt2QtpCt2.Value := 0;
  PedCt2VluCt2.Value := 0;
  PedCt2VlqCt2.Value := 0;
  PedCt2DscCt2.Value := 0;
  PedCt2VdsCt2.Value := 0;
  PedCt2DspCt2.Value := 0;
  PedCt2VdpCt2.Value := 0;
  PedCt2PacCt2.Value := 0;
  PedCt2VacCt2.Value := 0;
  PedCt2TotVen.Value := 0;
  PedCt2TotCst.Value := 0;
  PedCt2TotRen.Value := 0;
  PedCt2BasIpi.Value := 0;
  PedCt2TotIpi.Value := 0;
  PedCt2BasIcm.Value := 0;
  PedCt2TotIcm.Value := 0;
  PedCt2TotCt2.Value := 0;
  PedCt2TotCt2.Value := 0;
  PedCt2DscCom.Value := 0;
  PedCt2VdsCom.Value := 0;
  PedCt2TotDco.Value := 0;
  PedCt2FlaSeq.Value := '';
  PedCt2CodClp.Value := '1';
  PedCt2CodTam.Value := 'UN';
  PedCt2CodCor.Value := 'UN';
  PedCt2CodEmp.Value := PedCtaCodEmp.Value;
  PedCt2DteCta.Value := PedCtaDteCta.Value;
  PedCt2CodEit.Value := PedCtaCodEmp.Value;
  PedCt2NumCta.Value := PedCtaNumCta.Value;
  PedCt2NroCt2.Value := PedCtaQtiCta.Value + 1;
  PedCt2SeqCt2.Value := PedCtaSeqIte.Value + 1;

  PedCt2.EnableControls;

  if PedCtaDscCom.Value > 0 then PedCt2DscCom.Value := PedCtaDscCom.Value;

  AntVluCt2 := PedCt2VluCt2.Value;
  AntDscCt2 := PedCt2DscCt2.Value;
  AntDspCt2 := PedCt2DspCt2.Value;

  if sTipPed = 'Codigo de Barras' then begin

     EdCodGru.Enabled := False;
     EdCodSub.Enabled := False;
     EdCodPro.Enabled := False;

     EdCodGru.Visible := False;
     EdCodSub.Visible := False;
     EdCodPro.Visible := False;

     EdCbaCt2.Enabled := True;

     EdCbaCt2.Visible := True;

     end
  else
     begin

     EdCbaCt2.Enabled := False;

     EdCbaCt2.Visible := False;

     EdCodGru.Enabled := True;
     EdCodSub.Enabled := True;
     EdCodPro.Enabled := True;

     EdCodGru.Visible := True;
     EdCodSub.Visible := True;
     EdCodPro.Visible := True;

  end;

  EdQtpCt2.Enabled := True;
  EdVluCt2.Enabled := True;
  EdDscCt2.Enabled := True;

  if EdCodGru.Enabled then
     EdCodGru.SetFocus
  else
     EdCbaCt2.SetFocus;

end;

procedure TfmManCt2.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if PedCta.State <> dsBrowse then begin

        if PedCtaCodEmp.Value > 0 then begin

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
                Text := ' Select GerEmp.NomEmp From GerEmp Where GerEmp.CodEmp = :CodEmp and GerEmp.CodFil > '''+ '0' +'''';

                if GFlgAce = 'Sim' then begin

                   if GEmpLog > 0 then
                      Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
                   else
                      Text := Text + ' and GerEmp.CodFil > 0';

                end;

                if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > '''+ '0' +'''';

                with Params do begin

                     Params[0].AsInteger := PedCtaCodEmp.Value;
                     
                end;

                Open;

           end;

           if Trim( quSql.FieldbyName('NomEmp').AsString ) <> '' then
              pnNomEmp.Caption := quSql.FieldbyName('NomEmp').AsString
           else
              begin

              pnNomEmp.Caption := '';

              fmsgErro('Empresa Informada não Encontrada',EdCodEmp);

           end;

           end
        else
           begin

           pnNomEmp.Caption := '';

           fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodEmp);

        end;
     end;

     end
  else
     begin

     if Tecla = 'UP' then EdCodEmp.SetFocus

  end;
end;

procedure TfmManCt2.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           PedCtaCodEmp.Value := fmPsqEmp.CodEmp;

           EdCodEmp.Text := IntToStr(PedCtaCodEmp.Value);

           pnNomEmp.Caption := fmPsqEmp.NomEmp;

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     if PedCtaCodEmp.Value > 0 then EdDteCta.SetFocus;

  end;
end;

procedure TfmManCt2.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCt2.EdCodCliExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDteCta.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiCliente;

  end;
end;

procedure TfmManCt2.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.sCodVen_Id := GCodVen_Id;

        fmAuxIni.sGUs_Id := GGUs_Id;

        fmAuxIni.sCodAtd_Id := GCodAtd_Id;

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           PedCtaCodCli.Value := fmAuxIni.CodCli;
           PedCtaUfeCta.Value := Trim(fmAuxIni.UffCli);

           if Trim(fmAuxIni.CodPfa) <> '' then PedCtaCodPfa.Value := Trim(fmAuxIni.CodPfa);

           if fmAuxIni.CodVen > 0 then PedCtaCodVen.Value := fmAuxIni.CodVen;

           EdCodCli.Text := IntToStr(PedCtaCodCli.Value);

           pnNomCli.Caption := fmAuxIni.NomCli;
           pnUfeCta.Caption := fmAuxIni.UffCli;

           if PedCtaCodVen.Value > 0 then
              EdCodVen.Text := IntToStr(PedCtaCodVen.Value)
           else
              EdCodVen.Text := '';

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if PedCtaCodCli.Value > 0 then
        SaiCliente
     else
        EdCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.sCodVen_Id := GCodVen_Id;

        fmAuxPsq.sGUs_Id := GGUs_Id;

        fmAuxPsq.sCodAtd_Id := GCodAtd_Id;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           PedCtaCodCli.Value := fmAuxPsq.CodCli;
           PedCtaUfeCta.Value := Trim(fmAuxPsq.UffCli);

           if Trim(fmAuxPsq.CodPfa) <> '' then PedCtaCodPfa.Value := Trim(fmAuxPsq.CodPfa);

           if fmAuxPsq.CodVen > 0 then PedCtaCodVen.Value := fmAuxPsq.CodVen;

           EdCodCli.Text := IntToStr(PedCtaCodCli.Value);

           pnNomCli.Caption := fmAuxPsq.NomCli;
           pnUfeCta.Caption := fmAuxPsq.UffCli;

           if PedCtaCodVen.Value > 0 then
              EdCodVen.Text := IntToStr(PedCtaCodVen.Value)
           else
              EdCodVen.Text := '';

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedCtaCodCli.Value > 0 then
        SaiCliente
     else
        EdCodCli.SetFocus;

  end;
end;

procedure TfmManCt2.EdCodPfaExit(Sender: TObject);
var
saida : boolean;
LocPfa : string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDscCom.Focused) and (not EdCodCli.Focused) and
        (not EdDteCta.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedCta.State <> dsBrowse then begin

           if Trim( PedCtaCodPfa.Value ) <> '' then begin

              if PedCtaUfeCta.Value = 'EX' then
                 LocPfa := 'Importacao ou Exportacao'
              else
                 begin

                 if PedCtaUfeCta.Value <> GUfeEmp then
                    LocPfa := 'Outros Estados'
                 else
                    LocPfa := 'Mesmo Estado'

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstPfa.DscPfa From EstPfa '+
                           ' Where EstPfa.TipPfa = :TipPfa'+
                           '   and EstPfa.CodPfa = :CodPfa'+
                           '   and EstPfa.LocPfa = :LocPfa';

                   with Params do begin

                        Params[0].AsString  := PedCtaTipPfa.Value;
                        Params[1].AsString  := PedCtaCodPfa.Value;
                        Params[2].AsString  := LocPfa;

                   end;

                   Open;

              end;

              if Trim( quSql.FieldbyName('DscPfa').AsString ) <> '' then
                 pnNomPfa.Caption := quSql.FieldbyName('DscPfa').AsString
              else
                 begin

                 pnNomPfa.Caption := '';

                 fmsgErro('Padrão de Faturamento Informado não Encontrado',EdCodPfa);

              end;

              end
           else
              begin

              pnNomPfa.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodPfa);

           end;
        end;
     end;
  end;
end;

procedure TfmManCt2.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
LocPfa : string;
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if PedCtaUfeCta.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if PedCtaUfeCta.Value <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     try

        fmPsqPfa := TfmPsqPfa.Create(Self);

        with fmPsqPfa.EstPfa,SQL do begin

             Close;
             Text := ' Select EstPfa.CodPfa,'+
                     '        EstPfa.TipPfa,'+
                     '        EstPfa.DscPfa,'+
                     '        EstPfa.DsrPfa,'+
                     '        EstPfa.CodCf1,'+
                     '        EstPfa.CodCf2,'+
                     '        EstPfa.IntFin,'+
                     '        EstPfa.AtuEst,'+
                     '        EstPfa.ConSum,'+
                     '        EstPfa.ModPfa'+
                     ' From EstPfa'+
                     ' Where EstPfa.TipPfa = :TipPfa'+
                     '   and EstPfa.LocPfa = :LocPfa'+
                     '   and EstPfa.ModPfa = :ModPfa'+
                     '   and EstPfa.IntFin = :IntFin'+
                     '   and EstPfa.AtuEst = :AtuEst'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString  := 'Saida';
                  Params[1].AsString  := LocPfa;
                  Params[2].AsString  := 'Vendas';
                  Params[3].AsString  := 'Sim';
                  Params[4].AsString  := 'Sim';

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           PedCtaCodPfa.Value := Trim(fmPsqPfa.CodPfa);

           pnNomPfa.Caption := fmPsqPfa.NomPfa;

           EdCodPfa.Text := PedCtaCodPfa.Value;

        end;

     finally   

        FreeAndNil(fmPsqPfa);

     end;

     EdCodPfa.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     if PedCtaUfeCta.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if PedCtaUfeCta.Value <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'P';

        fmAuxPsq.IntFin := 'Sim';
        fmAuxPsq.AtuEst := 'Sim';
        fmAuxPsq.LocPfa := LocPfa;
        fmAuxPsq.TipPfa := 'Saida';
        fmAuxPsq.ModPfa := 'Vendas';
        fmAuxPsq.VenPfa := PedCtaCodVen.Value;

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodPfa ) <> '' then begin

           PedCtaCodPfa.Value := Trim(fmAuxPsq.CodPfa);

           pnNomPfa.Caption := fmAuxPsq.NomPfa;

           EdCodPfa.Text := PedCtaCodPfa.Value;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     EdCodPfa.SetFocus;

  end;
end;

procedure TfmManCt2.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        PedCtaCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(PedCtaCodEmp.Value);

        pnNomEmp.Caption := fmPsqEmp.NomEmp;

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmManCt2.bpsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.sCodVen_Id := GCodVen_Id;

     fmAuxIni.sGUs_Id := GGUs_Id;

     fmAuxIni.sCodAtd_Id := GCodAtd_Id;

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        PedCtaCodCli.Value := fmAuxIni.CodCli;
        PedCtaUfeCta.Value := Trim(fmAuxIni.UffCli);

        if Trim(fmAuxIni.CodPfa) <> '' then PedCtaCodPfa.Value := Trim(fmAuxIni.CodPfa);

        if fmAuxIni.CodVen > 0 then PedCtaCodVen.Value := fmAuxIni.CodVen;

        EdCodCli.Text := IntToStr(PedCtaCodCli.Value);

        EdUfeCta.Text := PedCtaUfeCta.Value;

        if PedCtaCodVen.Value > 0 then
           EdCodVen.Text := IntToStr(PedCtaCodVen.Value)
        else
           EdCodVen.Text := '';

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if PedCtaCodCli.Value > 0 then
     SaiCliente
  else
     EdCodCli.SetFocus;

end;

procedure TfmManCt2.bpsqPfaClick(Sender: TObject);
var
LocPfa : string;
begin
  inherited;

  if PedCtaUfeCta.Value = 'EX' then
     LocPfa := 'Importacao ou Exportacao'
  else
     begin

     if PedCtaUfeCta.Value <> GUfeEmp then
        LocPfa := 'Outros Estados'
     else
        LocPfa := 'Mesmo Estado'

  end;

  try

     fmPsqPfa := TfmPsqPfa.Create(Self);

     with fmPsqPfa.EstPfa,SQL do begin

          Close;
          Text := ' Select EstPfa.CodPfa,'+
                  '        EstPfa.TipPfa,'+
                  '        EstPfa.DscPfa,'+
                  '        EstPfa.DsrPfa,'+
                  '        EstPfa.CodCf1,'+
                  '        EstPfa.CodCf2,'+
                  '        EstPfa.IntFin,'+
                  '        EstPfa.AtuEst,'+
                  '        EstPfa.ConSum,'+
                  '        EstPfa.ModPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  '   and EstPfa.LocPfa = :LocPfa'+
                  '   and EstPfa.ModPfa = :ModPfa'+
                  '   and EstPfa.IntFin = :IntFin'+
                  '   and EstPfa.AtuEst = :AtuEst'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString  := 'Saida';
               Params[1].AsString  := LocPfa;
               Params[2].AsString  := 'Vendas';
               Params[3].AsString  := 'Sim';
               Params[4].AsString  := 'Sim';

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        PedCtaCodPfa.Value := Trim(fmPsqPfa.CodPfa);

        pnNomPfa.Caption := fmPsqPfa.NomPfa;

        EdCodPfa.Text := PedCtaCodPfa.Value;

     end;

  finally

     FreeAndNil(fmPsqPfa);

  end;

  EdCodPfa.SetFocus;

end;

procedure TfmManCt2.EdCodGruExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not grCt2.Focused then
        saida := True
     else
        saida := False;

     if saida then SaiGrupo;

     end
  else
     begin

     if (Tecla = 'UP') then begin

        if PedCtaQtiCta.Value > 0 then begin

           EdCbaCt2.Enabled := False;        
           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdVluCt2.Enabled := False;
           EdQtpCt2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdDscCt2.Enabled := False;
           EdDesCt2.Enabled := False;
           EdObsCt2.Enabled := False;

           if PedCt2.State <> dsBrowse then
              PedCt2.CancelUpdates
           else
              begin

              if not PedCt2.Bof then PedCt2.Prior;

           end;

           grCt2.SetFocus;

           end
        else
           EdCodGru.SetFocus;
     end;
  end;
end;

procedure TfmManCt2.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := '1';

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedCt2.State = dsBrowse then begin

              if Trim( PedCt2CodClp.Value ) <> '' then
                 PedCt2.Edit
              else
                 PedCt2.Append;

           end;

           PedCt2CodGru.Value := fmAuxIni.CodGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedCt2CodGru.Value ) <> '' then
        SaiGrupo
     else
        EdCodGru.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := '1';

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedCt2.State = dsBrowse then begin

              if Trim( PedCt2CodClp.Value ) <> '' then
                 PedCt2.Edit
              else
                 PedCt2.Append;

           end;

           PedCt2CodGru.Value := fmAuxPsq.CodGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
     
     if Trim( PedCt2CodGru.Value ) <> '' then
        SaiGrupo
     else
        EdCodGru.SetFocus;

  end;
end;

procedure TfmManCt2.EdCodSubExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not EdCodGru.Focused then
        saida := True
     else
        saida := False;

     if saida then SaiSubGrupo;

  end;
end;

procedure TfmManCt2.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( PedCt2CodGru.Value ) <> '' then fmAuxIni.CodGru := PedCt2CodGru.Value;

        fmAuxIni.CodClp := '1';

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedCt2.State = dsBrowse then begin

              if Trim( PedCt2CodClp.Value ) <> '' then
                 PedCt2.Edit
              else
                 PedCt2.Append;

           end;

           PedCt2CodGru.Value := fmAuxIni.CodGru;
           PedCt2CodSub.Value := fmAuxIni.CodSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
     
     if Trim( PedCt2CodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;
        
  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( PedCt2CodGru.Value ) <> '' then fmAuxPsq.CodGru := PedCt2CodGru.Value;

        fmAuxPsq.CodClp := '1';

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedCt2.State = dsBrowse then begin

              if Trim( PedCt2CodClp.Value ) <> '' then
                 PedCt2.Edit
              else
                 PedCt2.Append;

           end;

           PedCt2CodGru.Value := fmAuxPsq.CodGru;
           PedCt2CodSub.Value := fmAuxPsq.CodSub;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedCt2CodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;

  end;
end;

procedure TfmManCt2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdQtpCt2.Focused) or (EdVluCt2.Focused) or (EdDscCt2.Focused) or (grCt2.Focused) then begin

     if ( Trim(PedCt2CodClp.Value) <> '' ) and
        ( Trim(PedCt2CodGru.Value) <> '' ) and
        ( Trim(PedCt2CodSub.Value) <> '' ) and
        ( Trim(PedCt2CodPro.Value) <> '' ) then begin

        if key = 116 then begin // F5-Reservas //

           try

              fmPsqRes := TfmPsqRes.Create(Self);

              fmPsqRes.Panel3.Caption := ' '+PedCt2CodGru.Value+'.'+PedCt2CodSub.Value+'.'+PedCt2CodPro.Value+' - '+PedCt2DesCt2.Value;

              fmPsqRes.PedRes.Close;
              fmPsqRes.PedRes.Params[0].AsString  := PedCt2CodClp.Value;
              fmPsqRes.PedRes.Params[1].AsString  := PedCt2CodGru.Value;
              fmPsqRes.PedRes.Params[2].AsString  := PedCt2CodSub.Value;
              fmPsqRes.PedRes.Params[3].AsString  := PedCt2CodPro.Value;
              fmPsqRes.PedRes.Open;

              fmPsqRes.ShowModal;

           finally

              FreeAndNil(fmPsqRes);

           end;
        end;

        if key = 118 then begin // Comprado //

           try

              fmPsqCmp := TfmPsqCmp.Create(Self);

              fmPsqCmp.Label1.Caption := ' '+PedCt2CodGru.Value+'.'+PedCt2CodSub.Value+'.'+PedCt2CodPro.Value+' - '+PedCt2DesCt2.Value;

              fmPsqCmp.CmpPed.Close;
              fmPsqCmp.CmpPed.Params[0].AsString  := PedCt2CodClp.Value;
              fmPsqCmp.CmpPed.Params[1].AsString  := PedCt2CodGru.Value;
              fmPsqCmp.CmpPed.Params[2].AsString  := PedCt2CodSub.Value;
              fmPsqCmp.CmpPed.Params[3].AsString  := PedCt2CodPro.Value;
              fmPsqCmp.CmpPed.Open;

              fmPsqCmp.ShowModal;

           finally

              FreeAndNil(fmPsqCmp);

           end;
        end;
     end;
  end;

  if (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then begin

     if key = 114 then begin // F3 - Descrição //

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := PedCt2CodClp.Value;
           fmAuxIni.CodGru := PedCt2CodGru.Value;
           fmAuxIni.CodSub := PedCt2CodSub.Value;

           fmAuxIni.CodEmp := PedCtaCodEmp.Value;

           if PedCtaLanEst.Value = 'Sim' then begin

              if PedCtaCodFil.Value > 0 then fmAuxIni.CodEmp := PedCtaCodFil.Value;

           end;

           fmAuxIni.CliTab := PedCtaCliTab.Value;

           fmAuxIni.TipoPesq := 'I';

           fmAuxIni.LanCba := LanCba;

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              PedCt2CodClp.Value := fmAuxIni.CodClp;
              PedCt2CodGru.Value := fmAuxIni.CodGru;
              PedCt2CodSub.Value := fmAuxIni.CodSub;
              PedCt2CodPro.Value := fmAuxIni.CodPro;

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if Trim( PedCt2CodPro.Value ) <> '' then begin

           if EdCodGru.Enabled then
              SaiProduto
           else
              SaiCodBarras;

           end      
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;
           if EdCbaCt2.Focused then EdCbaCt2.SetFocus;

        end;
     end;

     if key = 116 then begin // F5 - Referência //

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := PedCt2CodClp.Value;
           fmAuxIni.CodGru := PedCt2CodGru.Value;
           fmAuxIni.CodSub := PedCt2CodSub.Value;

           fmAuxIni.TipoPesq := 'R';

           fmAuxIni.LanCba := LanCba;

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              PedCt2CodClp.Value := fmAuxIni.CodClp;
              PedCt2CodGru.Value := fmAuxIni.CodGru;
              PedCt2CodSub.Value := fmAuxIni.CodSub;
              PedCt2CodPro.Value := fmAuxIni.CodPro;

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if Trim( PedCt2CodPro.Value ) <> '' then begin

           if EdCodGru.Enabled then
              SaiProduto
           else
              SaiCodBarras;

           end
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;
           if EdCbaCt2.Focused then EdCbaCt2.SetFocus;

        end;
     end;

     if key = 117 then begin // F6 - Inteligente/Descrição //

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := PedCt2CodClp.Value;
           fmAuxPsq.CodGru := PedCt2CodGru.Value;
           fmAuxPsq.CodSub := PedCt2CodSub.Value;

           fmAuxPsq.CodEmp := PedCtaCodEmp.Value;

           if PedCtaLanEst.Value = 'Sim' then begin

              if PedCtaCodFil.Value > 0 then fmAuxPsq.CodEmp := PedCtaCodFil.Value;

           end;

           fmAuxPsq.CliTab := PedCtaCliTab.Value;

           fmAuxPsq.TipoPesq := 'I';

           fmAuxPsq.LanCba := LanCba;

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if (EdCodGru.Enabled) or (EdCbaCt2.Enabled) then begin

                 PedCt2CodClp.Value := fmAuxPsq.CodClp;
                 PedCt2CodGru.Value := fmAuxPsq.CodGru;
                 PedCt2CodSub.Value := fmAuxPsq.CodSub;
                 PedCt2CodPro.Value := fmAuxPsq.CodPro;
                 PedCt2CbaCt2.Value := Trim(fmAuxPsq.CbaPro);                 

              end;
           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;
        
        if Trim( PedCt2CodPro.Value ) <> '' then begin

           if EdCodGru.Enabled then
              SaiProduto
           else
              SaiCodBarras;

           end      
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;
           if EdCbaCt2.Focused then EdCbaCt2.SetFocus;

        end;
     end;

     if key = 118 then begin {F7 - Inteligente/Referência}
     
        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := PedCt2CodClp.Value;
           fmAuxPsq.CodGru := PedCt2CodGru.Value;
           fmAuxPsq.CodSub := PedCt2CodSub.Value;

           fmAuxPsq.TipoPesq := 'R';

           fmAuxPsq.LanCba := LanCba;

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              PedCt2CodClp.Value := fmAuxPsq.CodClp;
              PedCt2CodGru.Value := fmAuxPsq.CodGru;
              PedCt2CodSub.Value := fmAuxPsq.CodSub;
              PedCt2CodPro.Value := fmAuxPsq.CodPro;

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( PedCt2CodPro.Value ) <> '' then begin

           if EdCodGru.Enabled then
              SaiProduto
           else
              SaiCodBarras;

           end
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;
           if EdCbaCt2.Focused then EdCbaCt2.SetFocus;

        end;
     end;
  end;

  if key = 115 then begin // F4 - Estoque //

     if not Assigned(fmPsqEst) then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FLGCOD From PedPar';
             Open;

             GFLGCOD := FieldbyName('FLGCOD').AsString;

        end;

        try

           fmPsqEst := TfmPsqEst.Create(Self);

           fmPsqEst.sEntr := sEntr;

           fmPsqEst.FlgCod := GFLGCOD;

           fmPsqEst.LanCba := LanCba;
           
           if Trim( PedCtaCliTab.Value ) <> '' then fmPsqEst.CliTab := PedCtaCliTab.Value;

           fmPsqEst.sCodClp := '1';

           if ( Trim(PedCt2CodGru.Value) <> '' ) or
              ( Trim(PedCt2CodSub.Value) <> '' ) or
              ( Trim(PedCt2CodPro.Value) <> '' ) then begin

              with fmPsqEst.EstPro,SQL do begin

                   Close;
                   Text := ' Select EstPro.CodClp,'+
                           '        EstPro.CodGru,'+
                           '        EstPro.CodSub,'+
                           '        EstPro.CodPro,'+
                           '        EstPro.DscPro,'+
                           '        EstPro.RefPro,'+
                           '        EstPro.LocPro,'+
                           '        EstPro.CodUne,'+
                           '        EstPro.CodUns,'+
                           '        EstPro.QtePro,'+
                           '        EstPro.QtsPro,'+
                           '        EstPro.SaiIpi,'+
                           '        EstPro.ClfSai,'+
                           '        EstPro.SaiIcm,'+
                           '        EstPro.SimPro,'+
                           '        EstPro.CodSt1,'+
                           '        EstPro.CodSt2,'+
                           '        EstPro.QtdEmb,'+
                           '        EstPro.ImgPro,'+
                           '        EstPro.FlgPro,'+
                           '        EstPro.CbaPro,'+
                           '        EstPro.WebPro,'+
                           '        EstPro.CodCat,'+
                           '        EstPro.CodTip,'+
                           '        EstPro.CodMrc,'+
                           '        EstPro.NumPro,'+
                           '        EstPro.CodAnt'+
                           ' From EstPro'+
                           ' Where EstPro.CodClp = '''+ '1' +''''+
                           '   and EstPro.FlbPro = '''+ ' ' +'''';

                   if Trim( PedCt2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '''+ PedCt2CodGru.Value +'''';
                   if Trim( PedCt2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '''+ PedCt2CodSub.Value +'''';
                   if Trim( PedCt2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '''+ PedCt2CodPro.Value +'''';

                   Text := Text + ' Order by EstPro.DscPro';

                   Open;

              end;
           end;

           fmPsqEst.ShowModal;

           if sEntr = 'S' then begin

              if Trim( fmPsqEst.CodGru ) <> '' then begin

                 if (EdCodGru.Enabled) or (EdCbaCt2.Enabled) then begin

                    PedCt2CodClp.Value := fmPsqEst.CodClp;
                    PedCt2CodGru.Value := fmPsqEst.CodGru;
                    PedCt2CodSub.Value := fmPsqEst.CodSub;
                    PedCt2CodPro.Value := fmPsqEst.CodPro;
                    PedCt2CbaCt2.Value := Trim(fmPsqEst.CbaPro);                    

                 end;
              end;
           end;

        finally

           FreeAndNil(fmPsqEst);

        end;

        if Trim( PedCt2CodPro.Value ) <> '' then begin

           if EdCodGru.Enabled then
              SaiProduto
           else
              begin

              if EdCbaCt2.Enabled then SaiCodBarras;

           end;
           
           end
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;
           if EdCbaCt2.Focused then EdCbaCt2.SetFocus;

        end;
     end;   
  end;

  if key = 122 then begin // F11-Ocorrencias do Pedido //

     if PedCtaFlgOco.Value = '*' then begin

        try

           fmPsqOcc := TfmPsqOcc.Create(Self);

           fmPsqOcc.PedOcc.Close;
           fmPsqOcc.PedOcc.Params[0].AsInteger  := PedCtaCodEmp.Value;
           fmPsqOcc.PedOcc.Params[1].AsDateTime := PedCtaDteCta.Value;
           fmPsqOcc.PedOcc.Params[2].AsInteger  := PedCtaNumCta.Value;
           fmPsqOcc.PedOcc.Open;

           fmPsqOcc.ShowModal;

        finally

           FreeAndNil(fmPsqOcc);

        end;
     end;
  end;

  if key = 27 then begin

     if PedCta.State <> dsBrowse then
        Close
     else
        begin

        if PedCt2.State <> dsBrowse then PedCt2.CancelUpdates;

        if (EdCbaCt2.Enabled) or (EdCodGru.Enabled) or (EdCodSub.Enabled) or (EdCodPro.Enabled) or
           (EdQtpCt2.Enabled) or (EdVluCt2.Enabled) or (EdIcmCt2.Enabled) or (EdDscCt2.Enabled) then begin

           EdCbaCt2.Enabled := False;
           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpCt2.Enabled := False;
           EdVluCt2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdDscCt2.Enabled := False;
           EdDesCt2.Enabled := False;
           EdObsCt2.Enabled := False;

           grCt2.SetFocus;

           end
        else
           begin

           if EdDesCt2.Enabled then begin

              EdDesCt2.Enabled := False;
              EdObsCt2.Enabled := False;

              pnDesCt2.Visible := True;
              pnObsCt2.Visible := True;

              grCt2.SetFocus;

              end
           else
              Close;
                 
        end;
     end;
  end;

  if key = 123 then begin // F12-Finalizar Cotacao //

     if PedCtaTotIte.Value > 0 then begin

        if grCt2.Focused then begin

           try

              fmManCt3 := TfmManCt3.Create(Self);
              fmManCt3.ShowModal;

           finally

              FreeAndNil(fmManCt3);

           end;

           if Finalizar = 'S' then begin

              Finalizar := 'N';

              EdCodEmp.Clear;
              EdDteCta.Clear;
              EdCodCli.Clear;
              EdCodVen.Clear;              
              EdCodPfa.Clear;

              pnNumCta.Caption := '0';

              pnNomEmp.Caption := '';
              pnNomCli.Caption := '';
              pnNomVen.Caption := '';
              pnUfeCta.Caption := '';
              pnNomPfa.Caption := '';

              PedCta.Close;
              PedCta.Params[0].AsInteger  := 0;
              PedCta.Params[1].AsDateTime := Date;
              PedCta.Params[2].AsInteger  := 0;
              PedCta.Open;

              PedCta.Insert;

              EdDteCta.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManCt2.grCt2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroCt2 : integer;
begin
  inherited;
  if key = 68 then begin // D - Mudar Descrição/Observações Sobre o Item //

     if PedCt2CodEmp.Value > 0 then begin

        pnDesCt2.Visible := False;
        pnObsCt2.Visible := False;

        EdDesCt2.Enabled := True;
        EdObsCt2.Enabled := True;

        EdDesCt2.SetFocus;

     end;
  end;

  if key = 13 then begin // Tecla - ENTER //

     if PedCt2CodEmp.Value > 0 then begin

        PedCt2.Edit;

        if PedCt2CodGru.Value <> '999' then begin

           EdQtpCt2.Enabled := True;
           EdVluCt2.Enabled := True;
           EdDscCt2.Enabled := True;

           EdQtpCt2.SetFocus;

           end
        else
           begin

           pnDesCt2.Visible := False;
           pnObsCt2.Visible := False;

           EdQtpCt2.Enabled := True;
           EdVluCt2.Enabled := True;
           EdCodUnd.Enabled := True;
           EdDesCt2.Enabled := True;
           EdObsCt2.Enabled := True;

           EdQtpCt2.SetFocus;

        end;
     end;
  end;

  if key = 40 then begin // Tecla - Seta para Baixo //

     if PedCt2NroCt2.Value = PedCtaQtiCta.Value then PedCt2.Append;

  end;

  if key = 46 then begin // Tecla - DEL //

     if Trim( PedCt2CodClp.Value ) <> '' then begin

        NroCt2 := PedCt2NroCt2.Value;

        PedCt2.Delete;
        
        with PedCt2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try
                
                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedCt2.State <> dsBrowse then PedCt2.CancelUpdates;

                grCt2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedCt2.Close;
        PedCt2.Open;

        PedCta.Close;
        PedCta.Open;

        if NroCt2 < PedCtaQtiCta.Value then
           PedCt2.Locate('CodEmp;DteCta;NumCta;NroCt2',VarArrayOf([PedCt2CodEmp.Value,PedCt2DteCta.Value,PedCt2NumCta.Value,NroCt2]),[LoPartialKey])
        else
           begin

           if PedCtaQtiCta.Value = 0 then
              PedCt2.Append
           else
              PedCt2.Last;

        end;
     end;
  end;
end;

procedure TfmManCt2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja Realmente Abandonar a Cotacao ?','O') then begin

        if PedCta.State <> dsBrowse then PedCta.CancelUpdates;

        if PedCt2.State <> dsBrowse then PedCt2.CancelUpdates;

        if PedCtaNumCta.Value > 0 then begin

           with fmManCta.PedCta,SQL do begin

                Close;
                Text := ' Select PedCta.CodEmp,'+
                        '        PedCta.DteCta,'+
                        '        PedCta.NumCta,'+
                        '        PedCta.HreCta,'+
                        '        PedCta.CodCli,'+
                        '        PedCta.NomCli,'+
                        '        PedCta.CodVen,'+
                        '        PedCta.CodAtd,'+
                        '        PedCta.CodPfa,'+
                        '        PedCta.TotIte,'+
                        '        PedCta.TotCst,'+
                        '        PedCta.TotGer,'+
                        '        PedCta.TotRen,'+
                        '        PedCta.NumRes,'+
                        '        PedCta.SitCta,'+
                        '        FinVen.ApeVen,'+
                        '        FinAtd.ApeAtd'+
                        ' From PedCta LEFT JOIN FinVen ON (PedCta.CodVen = FinVen.CodVen)'+
                        '             LEFT JOIN FinAtd ON (PedCta.CodAtd = FinAtd.CodAtd)'+
                        ' Where PedCta.CodEmp = :CodEmp'+
                        '   and PedCta.DteCta = :DteCta'+
                        '   and PedCta.NumCta = :NumCta';

                with Params do begin

                        Params[0].AsInteger  := PedCtaCodEmp.Value;
                        Params[1].AsDateTime := PedCtaDteCta.Value;
                        Params[2].AsInteger  := PedCtaNumCta.Value;

                end;

                Open;

           end;

           fmManCta.PedCt2.Close;
           fmManCta.PedCt2.Open;

           end
        else
           begin

           fmManCta.PedCta.Close;
           fmManCta.PedCta.Open;

           fmManCta.PedCt2.Close;
           fmManCta.PedCt2.Open;

           if fmManCta.CodEmp > 0 then fmManCta.PedCta.Locate('CodEmp;DteCta;NumCta',VarArrayOf([fmManCta.CodEmp,fmManCta.DteCta,fmManCta.NumCta]), [loPartialKey]);

        end;
        
        Action := CaFree;

        end
     else
        begin

        Abort;

        if PedCtaNumCta.Value = Null then PedCta.Insert;

     end;

     end
  else
     begin

     fmManCta.PedCta.Close;
     fmManCta.PedCta.Open;

     fmManCta.PedCt2.Close;
     fmManCta.PedCt2.Open;

     if fmManCta.CodEmp > 0 then fmManCta.PedCta.Locate('CodEmp;DteCta;NumCta',VarArrayOf([fmManCta.CodEmp,fmManCta.DteCta,fmManCta.NumCta]), [loPartialKey]);

     Action := CaFree;

  end;
end;

procedure TfmManCt2.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if PedCtaSitCta.Value = 'Atendida' then fmsg('Operação não Pode ser Realizada. Cotação já Atendida pelo Pedido No. '+ fNumZeros(IntToStr(PedCtaNumRes.Value),7)+'.','E');

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManCt2.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManCt2.Panel1Exit(Sender: TObject);
var
SeqCta,Status : string;
begin
  inherited;
  if pSaida = 'Sim' then begin
  
     if PedCta.State <> dsBrowse then begin

        if PedCtaDteCta.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdDteCta);

        Status := 'dsEdit';

        if PedCta.State = dsInsert then begin

           Status := 'dsInsert';

           if PedCtaCodVen.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodVen);

           if Trim( PedCtaCodPfa.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodPfa);

           if Trim( PedCtaUfeCta.Value ) = '' then fmsgErro('Endereço de Faturamento do Cliente Esta Incompleto.',EdCodCli);

           Randomize;
           SeqCta := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                     copy(TimeToStr(Time),1,2)+
                     copy(TimeToStr(Time),4,2)+
                     copy(TimeToStr(Time),7,2)+
                     FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                     FNumZeros(Trim( IntToStr(Random(50000)) ),5);

           PedCtaSeqCta.Value := SeqCta;

           end
        else
           SeqCta := PedCtaSeqCta.Value;

        CodEmp := PedCtaCodEmp.Value;
        DteCta := PedCtaDteCta.Value;

        with PedCta do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};
             
             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                PedCta.Edit;

                EdDteCta.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select PedCta.CodEmp,'+
                     '        PedCta.DteCta,'+
                     '        PedCta.NumCta From PedCta'+
                     ' Where PedCta.CodEmp = :CodEmp'+
                     '   and PedCta.DteCta = :DteCta'+
                     '   and PedCta.SeqCta = :SeqCta';

             with Params do begin

                  Params[0].AsInteger  := CodEmp;
                  Params[1].AsDateTime := DteCta;
                  Params[2].AsString   := SeqCta;

             end;

             Open;

        end;

        PedCta.Close;
        PedCta.Params[0].AsInteger  := quSQL.FieldbyName('CodEmp').AsInteger;
        PedCta.Params[1].AsDateTime := quSQL.FieldbyName('DteCta').AsDateTime;
        PedCta.Params[2].AsInteger  := quSQL.FieldbyName('NumCta').AsInteger;
        PedCta.Open;

        PedCt2.Close;
        PedCt2.Params[0].AsInteger  := PedCtaCodEmp.Value;
        PedCt2.Params[1].AsDateTime := PedCtaDteCta.Value;
        PedCt2.Params[2].AsInteger  := PedCtaNumCta.Value;
        PedCt2.Open;

        if Status = 'dsInsert' then begin

           with fmManCta.PedCta,SQL do begin

                Close;
                Text := ' Select PedCta.CodEmp,'+
                        '        PedCta.DteCta,'+
                        '        PedCta.NumCta,'+
                        '        PedCta.HreCta,'+
                        '        PedCta.CodCli,'+                        
                        '        PedCta.NomCli,'+
                        '        PedCta.CodVen,'+
                        '        PedCta.CodAtd,'+
                        '        PedCta.CodPfa,'+
                        '        PedCta.TotIte,'+
                        '        PedCta.TotCst,'+                        
                        '        PedCta.TotGer,'+
                        '        PedCta.TotRen,'+
                        '        PedCta.NumRes,'+
                        '        PedCta.SitCta,'+
                        '        FinVen.ApeVen,'+
                        '        FinAtd.ApeAtd'+
                        ' From PedCta LEFT JOIN FinVen ON (PedCta.CodVen = FinVen.CodVen)'+
                        '             LEFT JOIN FinAtd ON (PedCta.CodAtd = FinAtd.CodAtd)'+
                        ' Where PedCta.CodEmp = :CodEmp'+
                        '   and PedCta.DteCta = :DteCta'+
                        '   and PedCta.NumCta = :NumCta';

                with Params do begin

                     Params[0].AsInteger  := PedCtaCodEmp.Value;
                     Params[1].AsDateTime := PedCtaDteCta.Value;
                     Params[2].AsInteger  := PedCtaNumCta.Value;

                end;

                Open;

           end;
        end;

        qticms := 1;

        if GUfeEmp <> PedCtaUfeCta.Value then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg from GerIcm Where GerIcm.SigUfe = '''+ PedCtaUfeCta.Value +'''';
                Open;

                qticms := FieldbyName('Reg').AsInteger;

           end;
        end;

        pnUfeCta.Visible := True;
        pnNomCli.Visible := True;

        EdCodEmp.Enabled := False;
        EdDteCta.Enabled := False;
        EdCodCli.Enabled := False;
        EdCodVen.Enabled := False;
        EdCodPfa.Enabled := False;
        EdDscCom.Enabled := False;
        EdNomCli.Enabled := False;
        EdUfeCta.Enabled := False;

        EdNomCli.Font.Style := [fsBold];
        EdCodVen.Font.Style := [fsBold];
        EdUfeCta.Font.Style := [fsBold];
        EdCodEmp.Font.Style := [fsBold];
        EdDteCta.Font.Style := [fsBold];
        EdCodCli.Font.Style := [fsBold];
        EdCodPfa.Font.Style := [fsBold];
        EdDscCom.Font.Style := [fsBold];

        bPsqVen.Enabled := False;
        bPsqEmp.Enabled := False;
        bPsqCli.Enabled := False;
        bPsqPfa.Enabled := False;

        if PedCtaQtiCta.Value = 0 then
           PedCt2.Append
        else
           grCt2.SetFocus;

     end;
  end;   
end;

procedure TfmManCt2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCt2 := nil;
end;

procedure TfmManCt2.Panel2Exit(Sender: TObject);
var
NroCt2 : integer;
begin
  inherited;
  if PedCt2.State <> dsBrowse then begin

     if Trim( PedCt2DesCt2.Value ) = '' then begin

        if EdDesCt2.Enabled then
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdDesCt2)
        else
           begin

           if EdCodGru.Enabled then
              fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodGru)
           else
              fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCbaCt2);

        end;
     end;

     if PedCt2QtpCt2.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdQtpCt2);

     if PedCt2VluCt2.Value = 0 then begin

        if EdVluCt2.Enabled then
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdVluCt2)
        else
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdQtpCt2);

     end;

     if PedCt2.State = dsInsert then begin

        with PedCt2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};
             
             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};                

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                PedCt2.Edit;

                if EdCodGru.Enabled then
                   EdCodGru.SetFocus
                else
                   begin
                   
                   if EdCbaCt2.Enabled then
                      EdCbaCt2.SetFocus
                   else
                      begin

                      if EdDesCt2.Enabled then EdDesCt2.SetFocus;

                   end;
                end;
                   
                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedCt2.Close;
        PedCt2.Open;

        PedCta.Close;
        PedCta.Open;

        PedCt2.Append;

        if EdCodGru.Enabled then
           EdCodGru.SetFocus
        else
           begin

           if EdCbaCt2.Enabled then
              EdCbaCt2.SetFocus
           else
              begin

              if EdDesCt2.Enabled then EdDesCt2.SetFocus;

           end;
        end;

        end
     else
        begin

        NroCt2 := PedCt2NroCt2.Value;
        
        with PedCt2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                PedCt2.Edit;

                EdQtpCt2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedCt2.Close;
        PedCt2.Open;

        PedCta.Close;
        PedCta.Open;

        PedCt2.Locate('CodEmp;DteCta;NumCta;NroCt2',VarArrayOf([PedCt2CodEmp.Value,PedCt2DteCta.Value,PedCt2NumCta.Value,NroCt2]),[LoPartialKey]);

        if PedCt2NroCt2.Value = PedCtaQtiCta.Value then
           PedCt2.Append
        else
           begin

           PedCt2.Next;

           pnDesCt2.Visible := True;
           pnObsCt2.Visible := True;

           EdCbaCt2.Enabled := False;
           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpCt2.Enabled := False;
           EdVluCt2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdDscCt2.Enabled := False;
           EdDesCt2.Enabled := False;
           EdObsCt2.Enabled := False;

           grCt2.SetFocus;

        end;
     end;

     end
  else
     begin

     pnDesCt2.Visible := True;
     pnObsCt2.Visible := True;

     EdCbaCt2.Enabled := False;
     EdCodGru.Enabled := False;
     EdCodSub.Enabled := False;
     EdCodPro.Enabled := False;
     EdQtpCt2.Enabled := False;
     EdVluCt2.Enabled := False;
     EdCodUnd.Enabled := False;
     EdDscCt2.Enabled := False;
     EdDesCt2.Enabled := False;
     EdObsCt2.Enabled := False;

     grCt2.SetFocus;

  end;
end;

procedure TfmManCt2.EdCodProExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodGru.Focused) and (not EdCodSub.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiProduto;

  end;
end;

procedure TfmManCt2.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := PedCt2CodClp.Value;
        fmAuxIni.CodGru := PedCt2CodGru.Value;
        fmAuxIni.CodSub := PedCt2CodSub.Value;

        fmAuxIni.CodEmp := PedCtaCodEmp.Value;

        if PedCtaLanEst.Value = 'Sim' then begin

            if PedCtaCodFil.Value > 0 then fmAuxIni.CodEmp := PedCtaCodFil.Value;

        end;

        fmAuxIni.CliTab := PedCtaCliTab.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.LanCba := LanCba;

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if (EdCodGru.Enabled) or (EdCbaCt2.Enabled) then begin

              PedCt2CodClp.Value := fmAuxIni.CodClp;
              PedCt2CodGru.Value := fmAuxIni.CodGru;
              PedCt2CodSub.Value := fmAuxIni.CodSub;
              PedCt2CodPro.Value := fmAuxIni.CodPro;
              PedCt2CbaCt2.Value := Trim(fmAuxIni.CbaPro);              

           end;
        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedCt2CodPro.Value ) <> '' then begin

        if EdCodGru.Enabled then
           SaiProduto
        else
           SaiCodBarras;

        end      
     else
        begin

        if EdCodPro.Enabled then
           EdCodPro.SetFocus
        else
           begin

           if EdCbaCt2.Enabled then EdCbaCt2.SetFocus;

        end;
     end;   
  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := '1';

        if Trim( PedCt2CodGru.Value ) <> '' then fmAuxPsq.CodGru := PedCt2CodGru.Value;
        if Trim( PedCt2CodSub.Value ) <> '' then fmAuxPsq.CodSub := PedCt2CodSub.Value;

        fmAuxPsq.CodEmp := PedCtaCodEmp.Value;

        if PedCtaLanEst.Value = 'Sim' then begin

           if PedCtaCodFil.Value > 0 then fmAuxPsq.CodEmp := PedCtaCodFil.Value;

        end;

        fmAuxPsq.CliTab := PedCtaCliTab.Value;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.LanCba := LanCba;

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedCt2.State = dsBrowse then begin

              if Trim( PedCt2CodClp.Value ) <> '' then
                 PedCt2.Edit
              else
                 PedCt2.Append;

           end;

           PedCt2CodClp.Value := fmAuxPsq.CodClp;
           PedCt2CodGru.Value := fmAuxPsq.CodGru;
           PedCt2CodSub.Value := fmAuxPsq.CodSub;
           PedCt2CodPro.Value := fmAuxPsq.CodPro;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedCt2CodPro.Value ) <> '' then begin

        if EdCodPro.Enabled then
           SaiProduto
        else
           SaiCodBarras;

        end
     else
        begin

        if EdCodPro.Enabled then
           EdCodPro.SetFocus
        else
           EdCbaCt2.SetFocus;

     end;
  end;
end;

procedure TfmManCt2.EdQtpCt2Exit(Sender: TObject);
var
saida : boolean;
FlgAce : string;
SeqLin,SeqIni : integer;
SldAtu,PrecoLiquido  : real;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        pnEstoque.Visible := False;
        
        if PedCt2.State <> dsBrowse then begin

           if PedCt2QtpCt2.Value > 0 then begin

              PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value,2);

              FlgAce := 'Nao';

              if PedCtaLanEst.Value = 'Sim' then begin

                 if PedCtaCodFil.Value > 0 then
                    CodEmp := PedCtaCodFil.Value
                 else
                    CodEmp := PedCtaCodEmp.Value;

                 end
              else
                 CodEmp := PedCtaCodEmp.Value;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstIte.CodEmp,'+
                           '        EstIte.QtdIte,'+
                           '        EstIte.QtrIte,'+
                           '        EstIte.QtdRma,'+
                           '        EstIte.QtaIte,'+
                           '        EstIte.Vb1Ite,'+
                           '        EstIte.Ds1Ite,'+
                           '        EstIte.Vb2Ite,'+
                           '        EstIte.Ds2Ite,'+
                           '        EstIte.Vb3Ite,'+
                           '        EstIte.Ds3Ite,'+
                           '        EstIte.Vb4Ite,'+
                           '        EstIte.Ds4Ite,'+
                           '        EstIte.Vb5Ite,'+
                           '        EstIte.Ds5Ite '+
                           ' From EstIte'+
                           ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                           '   and EstIte.CodClp = '+ QuotedStr(PedCt2CodClp.Value) +
                           '   and EstIte.CodGru = '+ QuotedStr(PedCt2CodGru.Value) +
                           '   and EstIte.CodSub = '+ QuotedStr(PedCt2CodSub.Value) +
                           '   and EstIte.CodPro = '+ QuotedStr(PedCt2CodPro.Value) ;
                   Open;

              end;

              if PedCt2CodGru.Value <> '999' then begin

                 if Trim(sVerEst) = 'Sim' then begin

                    if quSql.FieldbyName('CodEmp').AsInteger > 0 then begin

                       SldAtu := fRound(quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat),4);

                       if PedCt2QtpCt2.Value > SldAtu then begin

                          if fMsg('Quantidade Informada para o Item Acima do Estoque Disponivel. Confirma Lançamento ?','O') then FlgAce := 'Sim';

                          end
                       else
                          FlgAce := 'Sim';

                       end
                    else
                       fmsgErro('Item Informado não Encontrado na Empresa.',EdCodPro);

                    end
                 else
                    FlgAce := 'Sim';

                 if FlgAce = 'Sim' then begin

                    try

                       fmPsqTab := TfmPsqTab.Create(Self);

                       if (PedCtaCliTab.Value = '98 Qualquer das Tabelas') or (PedCtaCliTab.Value = '99 Tabela Livre') or (Trim(PedCtaCliTab.Value) = '')then begin

                          SeqLin := 0;
                          SeqIni := 1;

                          while SeqIni <= 5 do begin

                                if quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then begin

                                   PrecoLiquido := quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat;

                                   if quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then
                                      PrecoLiquido := PrecoLiquido - ((quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat * PrecoLiquido)/100);

                                   fmPsqTab.StrTab.Cells[0,SeqLin] := 'TABELA '+ fNumZeros(IntToStr(SeqIni),2);
                                   fmPsqTab.StrTab.Cells[1,SeqLin] := PreString(FormatFloat('###,###,##0.0000',quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat),26);
                                   fmPsqTab.StrTab.Cells[2,SeqLin] := PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat),26)+' %';
                                   fmPsqTab.StrTab.Cells[3,SeqLin] := PreString(FormatFloat('###,###,##0.00',PrecoLiquido),26);

                                   Inc(SeqLin);

                                end;

                                Inc(SeqIni);

                          end;

                          end
                       else
                          begin

                          SeqLin := 0;
                          SeqIni := 1;

                          while SeqIni <= StrToInt(copy(PedCtaCliTab.Value,1,2)) do begin

                                if quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then begin

                                   PrecoLiquido := quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat;

                                   if quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then
                                      PrecoLiquido := PrecoLiquido - ((quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat * PrecoLiquido)/100);

                                   fmPsqTab.StrTab.Cells[0,SeqLin] := 'TABELA '+ fNumZeros(IntToStr(SeqIni),2);
                                   fmPsqTab.StrTab.Cells[1,SeqLin] := PreString(FormatFloat('###,###,##0.0000',quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat),26);
                                   fmPsqTab.StrTab.Cells[2,SeqLin] := PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat),26)+' %';
                                   fmPsqTab.StrTab.Cells[3,SeqLin] := PreString(FormatFloat('###,###,##0.00',PrecoLiquido),26);
                                
                                   Inc(SeqLin);

                                end;

                                Inc(SeqIni);

                          end;
                       end;

                       fmPsqTab.StrTab.RowCount := SeqLin;
                    
                       fmPsqTab.ShowModal;

                       PedCt2TabPrc.Value := fmPsqTab.TabPrc;

                    finally   

                       FreeAndNil(fmPsqTab);

                    end;

                    if PedCt2TabPrc.Value > 0 then begin

                       PedCt2VluCt2.Value := quSQL.FieldbyName('Vb'+Trim(IntToStr(PedCt2TabPrc.Value))+'Ite').AsFloat;

                       AntVluCt2 := PedCt2VluCt2.Value;

                       end
                    else
                       fmsgErro('Tabela de Preço não Informada para o Item.',EdQtpCt2);

                 end;

                 end
              else
                 FlgAce := 'Sim';
                 
              if FlgAce = 'Sim' then begin
              
                 if PedCt2VluCt2.Value <> antVluCt2 then begin

                    AntVluCt2 := PedCt2VluCt2.Value;

                    PedCt2VlqCt2.Value := PedCt2VluCt2.Value;

                    if PedCt2DscCt2.Value > 0 then begin

                       PedCt2VdsCt2.Value := fRound((PedCt2DscCt2.Value * PedCt2VlqCt2.Value)/100,4);

                       PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCt2.Value,4);

                    end;

                    if PedCt2DscCom.Value > 0 then begin

                       PedCt2VdsCom.Value := fRound((PedCt2DscCom.Value * PedCt2VlqCt2.Value)/100,4);

                       PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCom.Value,4);

                    end;

                    if PedCt2DspCt2.Value > 0 then begin

                       PedCt2VdpCt2.Value := fRound((PedCt2DspCt2.Value * PedCt2VlqCt2.Value)/100,4);

                       PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdpCt2.Value,4);

                    end;

                    if PedCt2PacCt2.Value > 0 then begin

                       PedCt2VacCt2.Value := fRound((PedCt2PacCt2.Value * PedCt2VlqCt2.Value)/100,4);

                       PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VacCt2.Value,4);

                    end;
                 end;   

                 PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value,2);

                 if EdVluCt2.Enabled then
                    EdVluCt2.SetFocus
                 else
                    begin

                    if PedCt2VluCt2.Value = 0 then fmsgErro('Item sem Preço Únitario Informado.',EdQtpCt2);

                 end;

                 end
              else   
                 EdQtpCt2.SetFocus;
                 
              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio.',EdQtpCt2);
        end;
     end;
  end;
end;

procedure TfmManCt2.EdVluCt2Exit(Sender: TObject);
var
ret    : string;
FlgAce : string;
saida  : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdQtpCt2.Focused) and (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedCt2.State <> dsBrowse then begin

           if PedCt2VluCt2.Value > 0 then begin

              if PedCt2VluCt2.Value <> AntVluCt2 then begin

                 if PedCt2CodGru.Value <> '999' then begin

                    FlgAce := 'Nao';

                    if PedCt2VluCt2.Value > AntVluCt2 then begin

                       if fMsg('Valor Informado para o Item Acima do Valor Praticado de Tabela. Confirma Valor Unitário ?','O') then FlgAce := 'Sim';

                       end
                    else
                      FlgAce := 'Sim';

                    end
                 else
                    FlgAce := 'Sim';

                 if FlgAce = 'Sim' then begin

                    PedCt2DscCt2.Value := 0;
                    PedCt2VdsCt2.Value := 0;
                    PedCt2PacCt2.Value := 0;
                    PedCt2VacCt2.Value := 0;

                    if PedCt2CodGru.Value <> '999' then begin

                       if AntVluCt2 > 0 then begin

                          if PedCt2VluCt2.Value > AntVluCt2 then begin

                             PedCt2VacCt2.Value := fRound(PedCt2VluCt2.Value - AntVluCt2,4);

                             if AntVluCt2 > 0 then
                                PedCt2PacCt2.Value := fRound((100 * PedCt2VacCt2.Value)/AntVluCt2,2)
                             else
                                PedCt2PacCt2.Value := 100;

                             end
                          else
                             begin

                             if PedCt2VluCt2.Value < AntVluCt2 then begin

                                PedCt2VdsCt2.Value := fRound(AntVluCt2 - PedCt2VluCt2.Value,4);

                                PedCt2DscCt2.Value := fRound((100 * PedCt2VdsCt2.Value)/AntVluCt2,2);

                             end;
                          end;
                       end;
                    end;

                    AntDscCt2 := PedCt2DscCt2.Value;

                    PedCt2VlqCt2.Value := PedCt2VluCt2.Value;

                    if PedCt2CodGru.Value <> '999' then begin

                       if PedCt2DscCom.Value > 0 then begin

                          PedCt2VdsCom.Value := fRound((PedCt2DscCom.Value * PedCt2VlqCt2.Value)/100,4);

                          PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCom.Value,4);

                       end;

                       if PedCt2DspCt2.Value > 0 then begin

                          PedCt2VdpCt2.Value := fRound((PedCt2DspCt2.Value * PedCt2VlqCt2.Value)/100,4);

                          PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdpCt2.Value,4);

                       end;

                       if AntVluCt2 > 0 then PedCt2VluCt2.Value := AntVluCt2;

                    end;

                    PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value,2);

                    if (qticms > 1) and (GUfeEmp <> PedCtaUfeCta.Value) then begin

                       if (PedCtaCodTcl.Value <> 1) and (PedCtaCodTcl.Value <> 3) and (PedCtaCodTcl.Value <> 5) then begin

                          ret := 'N';

                          try

                             fmPsqIcm := TfmPsqIcm.Create(Self);

                             with fmPsqIcm.GerIcm,SQL do begin

                                  Close;
                                  Text := ' Select * From GerIcm Where GerIcm.SigUfe = '+ QuotedStr(PedCtaUfeCta.Value);
                                  Open;

                             end;

                             fmPsqIcm.ShowModal;

                             ret := fmPsqIcm.ret;

                             PedCt2IcmCt2.Value := fmPsqIcm.Icms;

                          finally

                             FreeAndNil(fmPsqIcm);

                          end;

                          if ret = 'N' then EdVluCt2.SetFocus;
                          
                       end;
                    end;

                    end
                 else
                    EdVluCt2.SetFocus;
                    
              end;

              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio',EdVluCt2);
        end;
     end;
  end;
end;

procedure TfmManCt2.EdDscCt2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdVluCt2.Focused) and (not EdQtpCt2.Focused) and
        (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedCt2.State <> dsBrowse then begin

           if PedCt2DscCt2.Value <> AntDscCt2 then begin

              if PedCt2DscCt2.Value = 0 then PedCt2VdsCt2.Value := 0;

              PedCt2VlqCt2.Value := PedCt2VluCt2.Value;

              if PedCt2DscCt2.Value > 0 then begin

                 PedCt2VdsCt2.Value := fRound((PedCt2DscCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCt2.Value,4);

                 end
              else
                 PedCt2VdsCt2.Value := 0;

              if PedCt2DscCom.Value > 0 then begin

                 PedCt2VdsCom.Value := fRound((PedCt2DscCom.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCom.Value,4);

                 end
              else
                 PedCt2VdsCom.Value := 0;
                 
              if PedCt2DspCt2.Value > 0 then begin

                 PedCt2VdpCt2.Value := fRound((PedCt2DspCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdpCt2.Value,4);

                 end
              else
                 PedCt2VdpCt2.Value := 0;
                 
              if PedCt2PacCt2.Value > 0 then begin

                 PedCt2VacCt2.Value := fRound((PedCt2PacCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VacCt2.Value,4);

                 end
              else
                 PedCt2VacCt2.Value := 0;
                 
              AntDscCt2 := PedCt2DscCt2.Value;

              PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value,2);
              
           end;
        end;
     end;
  end;
end;

procedure TfmManCt2.EdDspCt2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDscCt2.Focused) and (not EdVluCt2.Focused) and (not EdQtpCt2.Focused) and
        (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedCt2.State <> dsBrowse then begin

           if PedCt2DspCt2.Value <> AntDspCt2 then begin

              if PedCt2DspCt2.Value = 0 then PedCt2VdpCt2.Value := 0;

              PedCt2VlqCt2.Value := PedCt2VluCt2.Value;

              if PedCt2DscCt2.Value > 0 then begin

                 PedCt2VdsCt2.Value := fRound((PedCt2DscCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCt2.Value,4);

              end;

              if PedCt2DscCom.Value > 0 then begin

                 PedCt2VdsCom.Value := fRound((PedCt2DscCom.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCom.Value,4);

              end;

              if PedCt2DspCt2.Value > 0 then begin

                 PedCt2VdpCt2.Value := fRound((PedCt2DspCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdpCt2.Value,4);

              end;

              if PedCt2PacCt2.Value > 0 then begin

                 PedCt2VacCt2.Value := fRound((PedCt2PacCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VacCt2.Value,4);

              end;

              AntDspCt2 := PedCt2DspCt2.Value;

              PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value,2);

           end;
        end;
     end;
  end;
end;

procedure TfmManCt2.EdDteCtaExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then EdDteCta.SetFocus
end;

procedure TfmManCt2.SaiGrupo;
begin
  if Trim( PedCt2CodGru.Value ) <> '' then begin

     if PedCt2.State <> dsBrowse then begin

        PedCt2CodGru.Value := FNumZeros(PedCt2CodGru.Value,3);

        if PedCt2CodGru.Value <> '999' then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg From EstGru Where EstGru.CodGru = '''+ PedCt2CodGru.Value +'''';
                Open;

           end;

           if quSql.FieldbyName('Reg').AsInteger = 0 then
              fmsgErro('Grupo Informado não Encontrado',EdCodGru)
           else
              begin

              if EdQtpCt2.Focused then begin

                 if Trim( PedCt2CodSub.Value ) = '' then EdCodSub.SetFocus;
                 if Trim( PedCt2CodPro.Value ) = '' then EdCodPro.SetFocus;

                 end
              else
                 EdCodSub.SetFocus;

           end;

           end
        else
           begin

           pnDesCt2.Visible := False;
           pnObsCt2.Visible := False;

           EdVluCt2.Enabled := True;
           EdCodUnd.Enabled := True;
           EdDesCt2.Enabled := True;
           EdObsCt2.Enabled := True;

           EdDscCt2.Enabled := False;

           PedCt2IcmCt2.Value := 0;
           PedCt2IpiCt2.Value := 0;
           PedCt2CodSub.Value := '9999';
           PedCt2CodPro.Value := '99999';
           
           EdQtpCt2.SetFocus;

        end;      

        end
     else
        begin

        if EdCodGru.Enabled then begin

           if Trim( PedCt2CodGru.Value ) = '' then fmsgErro('Grupo Informado não Encontrado',EdCodGru);

        end;
     end;

     end
  else
     fmsgErro('Grupo Informado não Encontrado',EdCodGru);
end;

procedure TfmManCt2.SaiSubGrupo;
begin
  if Trim( PedCt2CodSub.Value ) <> '' then begin

     if PedCt2.State <> dsBrowse then begin

        PedCt2CodSub.Value := FNumZeros(PedCt2CodSub.Value,4);

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg From EstSub'+
                     ' Where EstSub.CodGru = '''+ PedCt2CodGru.Value +''''+
                     '   and EstSub.CodSub = '''+ PedCt2CodSub.Value +'''';
             Open;

        end;

        if quSQL.FieldbyName('Reg').AsInteger = 0 then
           fmsgErro('Grupo e Sub-Grupo Informado não Encontrado.',EdCodGru)
        else
           begin

           if EdQtpCt2.Focused then begin

              if Trim( PedCt2CodPro.Value ) = '' then EdCodPro.SetFocus;

              end
           else
              EdCodPro.SetFocus;

        end;

        end
     else
        begin

        if EdCodSub.Enabled then begin

           if Trim( PedCt2CodSub.Value ) = '' then fmsgErro('Sub-Grupo Informado não Encontrado.',EdCodSub);

        end;
     end;
     
     end
  else
     fmsgErro('Sub-Grupo Informado não Encontrado.',EdCodSub);
end;

procedure TfmManCt2.SaiProduto;
begin
  if Trim( PedCt2CodPro.Value ) <> '' then begin

     if PedCt2.State <> dsBrowse then begin

        PedCt2CodPro.Value := FNumStrZero(PedCt2CodPro.Value);

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg From PedCt2 '+
                     ' Where PedCt2.CodEmp = '''+ IntToStr(PedCt2CodEmp.Value)   +''''+
                     '   and PedCt2.DteCta = '''+ fDateToSQL(PedCt2DteCta.Value) +''''+
                     '   and PedCt2.NumCta = '''+ IntToStr(PedCt2NumCta.Value)   +''''+
                     '   and PedCt2.CodClp = '''+ PedCt2CodClp.Value             +''''+
                     '   and PedCt2.CodGru = '''+ PedCt2CodGru.Value             +''''+
                     '   and PedCt2.CodSub = '''+ PedCt2CodSub.Value             +''''+
                     '   and PedCt2.CodPro = '''+ PedCt2CodPro.Value             +''''+
                     '   and PedCt2.CodTam = '''+ PedCt2CodTam.Value             +''''+
                     '   and PedCt2.CodCor = '''+ PedCt2CodCor.Value             +'''';
             Open;

        end;

        if quSql.FieldbyName('Reg').AsInteger = 0 then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select EstPro.CodPro,'+
                        '        EstPro.SaiIcm,'+
                        '        EstPro.SaiIpi,'+
                        '        EstPro.CodUns,'+
                        '        EstPro.CodSt1,'+
                        '        EstPro.CodSt2,'+
                        '        EstPro.DscPro,'+
                        '        EstPro.IpiSai,'+
                        '        EstPro.IpiTsd,'+
                        '        EstPro.IcmSai,'+
                        '        EstPro.IcmTsd From EstPro '+
                        ' Where EstPro.CodClp = :CodClp'+
                        '   and EstPro.CodGru = :CodGru'+
                        '   and EstPro.CodSub = :CodSub'+
                        '   and EstPro.CodPro = :CodPro'+
                        '   and EstPro.FlbPro = :FlbPro';

                with Params do begin

                     Params[0].AsString := PedCt2CodClp.Value;
                     Params[1].AsString := PedCt2CodGru.Value;
                     Params[2].AsString := PedCt2CodSub.Value;
                     Params[3].AsString := PedCt2CodPro.Value;
                     Params[4].AsString := ' ';

                end;

                Open;

           end;

           if Trim( quSQL.FieldbyName('CodPro').AsString ) <> '' then begin

              PedCt2IcmCt2.Value := quSql.FieldbyName('SaiIcm').AsFloat;
              PedCt2IpiCt2.Value := quSql.FieldbyName('SaiIpi').AsFloat;
              PedCt2CodUnd.Value := Trim(quSQL.FieldbyName('CodUns').AsString);
              PedCt2CodSt1.Value := Trim(quSql.FieldbyName('CodSt1').AsString);
              PedCt2CodSt2.Value := Trim(quSql.FieldbyName('CodSt2').AsString);
              PedCt2DesCt2.Value := Trim(quSQL.FieldbyName('DscPro').AsString);

              if Trim( quSQL.FieldbyName('IpiSai').AsString ) <> '' then begin

                 PedCt2RegIpi.Value := Trim(quSQL.FieldbyName('IpiSai').AsString);
                 PedCt2TipIpi.Value := Trim(quSQL.FieldbyName('IpiTsd').AsString);

              end;

              if Trim( quSQL.FieldbyName('IcmSai').AsString ) <> '' then begin

                 PedCt2RegIcm.Value := Trim(quSQL.FieldbyName('IcmSai').AsString);
                 PedCt2TipIcm.Value := Trim(quSQL.FieldbyName('IcmTsd').AsString);

              end;

              if (qticms = 1) and (GUfeEmp <> PedCtaUfeCta.Value) then begin

                 if (PedCtaCodTcl.Value <> 1) and (PedCtaCodTcl.Value <> 3) and (PedCtaCodTcl.Value <> 5) then begin

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select GerIcm.PerIcm From GerIcm Where GerIcm.SigUfe = '+ QuotedStr(PedCtaUfeCta.Value);
                         Open;

                         PedCt2IcmCt2.Value := FieldbyName('PerIcm').AsFloat;

                    end;
                 end;
              end;

              EdQtpCt2.SetFocus;
              
              end
           else
              fmsgErro('Item Informado não Encontrado.',EdCodPro);

           end
        else
           fMsgErro('Item Duplicado !',EdCodPro);

     end;

     end
  else
     fmsgErro('Item Informado não Encontrado.',EdCodPro);
end;

procedure TfmManCt2.SaiCodBarras;
begin
  if Trim( PedCt2CbaCt2.Value ) <> '' then begin

     if PedCt2CbaCt2.Value <> '99999999999999999999' then begin

        if pnDesCt2.Visible then begin
        
           pnDesCt2.Visible := True;
           pnObsCt2.Visible := True;

           EdVluCt2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdDesCt2.Enabled := False;
           EdObsCt2.Enabled := False;

           EdDscCt2.Enabled := True;

        end;
        
        if PedCt2.State <> dsBrowse then begin

           if LanCba = 'Sim' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select * From EstBar Where EstBar.CodBar = '''+ PedCt2CbaCt2.Value +'''';
                   Open;

              end;

              end
           else
              begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select EstPro.CodClp,'+
                           '        EstPro.CodGru,'+
                           '        EstPro.CodSub,'+
                           '        EstPro.CodPro From EstPro Where EstPro.CbaPro = '''+ PedCt2CbaCt2.Value +'''';
                   Open;

              end;
           end;

           if quSQL.FieldbyName('CodPro').AsString <> '' then begin

              PedCt2CodClp.Value := quSQL.FieldbyName('CodClp').AsString;
              PedCt2CodGru.Value := quSQL.FieldbyName('CodGru').AsString;
              PedCt2CodSub.Value := quSQL.FieldbyName('CodSub').AsString;
              PedCt2CodPro.Value := quSQL.FieldbyName('CodPro').AsString;

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg From PedCt2 '+
                           ' Where PedCt2.CodEmp = '''+ IntToStr(PedCt2CodEmp.Value)   +''''+
                           '   and PedCt2.DteCta = '''+ fDateToSQL(PedCt2DteCta.Value) +''''+
                           '   and PedCt2.NumCta = '''+ IntToStr(PedCt2NumCta.Value)   +''''+
                           '   and PedCt2.CodClp = '''+ PedCt2CodClp.Value             +''''+
                           '   and PedCt2.CodGru = '''+ PedCt2CodGru.Value             +''''+
                           '   and PedCt2.CodSub = '''+ PedCt2CodSub.Value             +''''+
                           '   and PedCt2.CodPro = '''+ PedCt2CodPro.Value             +''''+
                           '   and PedCt2.CodTam = '''+ PedCt2CodTam.Value             +''''+
                           '   and PedCt2.CodCor = '''+ PedCt2CodCor.Value             +'''';
                   Open;

              end;

              if quSql.FieldbyName('QtdReg').AsInteger = 0 then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstPro.CodPro,'+
                              '        EstPro.SaiIcm,'+
                              '        EstPro.SaiIpi,'+
                              '        EstPro.CodUns,'+
                              '        EstPro.CodSt1,'+
                              '        EstPro.CodSt2,'+
                              '        EstPro.DscPro,'+
                              '        EstPro.IpiSai,'+
                              '        EstPro.IpiTsd,'+
                              '        EstPro.IcmSai,'+
                              '        EstPro.IcmTsd From EstPro '+
                              ' Where EstPro.CodClp = :CodClp'+
                              '   and EstPro.CodGru = :CodGru'+
                              '   and EstPro.CodSub = :CodSub'+
                              '   and EstPro.CodPro = :CodPro'+
                              '   and EstPro.FlbPro = :FlbPro';

                      with Params do begin

                           Params[0].AsString := PedCt2CodClp.Value;
                           Params[1].AsString := PedCt2CodGru.Value;
                           Params[2].AsString := PedCt2CodSub.Value;
                           Params[3].AsString := PedCt2CodPro.Value;
                           Params[4].AsString := ' ';

                      end;

                      Open;

                 end;

                 if Trim( quSQL.FieldbyName('CodPro').AsString ) <> '' then begin

                    PedCt2IcmCt2.Value := quSql.FieldbyName('SaiIcm').AsFloat;
                    PedCt2IpiCt2.Value := quSql.FieldbyName('SaiIpi').AsFloat;
                    PedCt2CodUnd.Value := Trim(quSQL.FieldbyName('CodUns').AsString);
                    PedCt2CodSt1.Value := Trim(quSql.FieldbyName('CodSt1').AsString);
                    PedCt2CodSt2.Value := Trim(quSql.FieldbyName('CodSt2').AsString);
                    PedCt2DesCt2.Value := Trim(quSQL.FieldbyName('DscPro').AsString);

                    if Trim( quSQL.FieldbyName('IpiSai').AsString ) <> '' then begin

                       PedCt2RegIpi.Value := Trim(quSQL.FieldbyName('IpiSai').AsString);
                       PedCt2TipIpi.Value := Trim(quSQL.FieldbyName('IpiTsd').AsString);

                    end;

                    if Trim( quSQL.FieldbyName('IcmSai').AsString ) <> '' then begin

                       PedCt2RegIcm.Value := Trim(quSQL.FieldbyName('IcmSai').AsString);
                       PedCt2TipIcm.Value := Trim(quSQL.FieldbyName('IcmTsd').AsString);

                    end;

                    if (qticms = 1) and (GUfeEmp <> PedCtaUfeCta.Value) then begin

                       if (PedCtaCodTcl.Value <> 1) and (PedCtaCodTcl.Value <> 3) and (PedCtaCodTcl.Value <> 5) then begin

                          with quSQL,SQL do begin

                               Close;
                               Text := ' Select GerIcm.PerIcm From GerIcm Where GerIcm.SigUfe = '+ QuotedStr(PedCtaUfeCta.Value);
                               Open;

                               PedCt2IcmCt2.Value := FieldbyName('PerIcm').AsFloat;

                          end;
                       end;   
                    end;

                    if PedCtaLanEst.Value = 'Sim' then begin

                       if PedCtaCodFil.Value > 0 then
                          CodEmp := PedCtaCodFil.Value
                       else
                          CodEmp := PedCtaCodEmp.Value;

                       end
                    else
                       CodEmp := PedCtaCodEmp.Value;

                    with quSql,SQL do begin

                         Close;
                         Text := ' Select QtdEmb From EstPro '+
                                 ' Where EstPro.CodClp = '''+ PedCt2CodClp.Value +''''+
                                 '   and EstPro.CodGru = '''+ PedCt2CodGru.Value +''''+
                                 '   and EstPro.CodSub = '''+ PedCt2CodSub.Value +''''+
                                 '   and EstPro.CodPro = '''+ PedCt2CodPro.Value +'''';
                         Open;

                         EdQtdEmb.Caption := FormatFloat('###,###,##0.0000',FieldbyName('QtdEmb').AsFloat)+' ';

                    end;

                    with quSql,SQL do begin

                         Close;
                         Text := ' Select EstIte.CodEmp,'+
                                 '        EstIte.QtdIte,'+
                                 '        EstIte.QtrIte,'+
                                 '        EstIte.QtdRma,'+
                                 '        EstIte.QtaIte From EstIte '+
                                 ' Where EstIte.CodEmp = '''+ IntToStr(CodEmp)   +''''+
                                 '   and EstIte.CodClp = '''+ PedCt2CodClp.Value +''''+
                                 '   and EstIte.CodGru = '''+ PedCt2CodGru.Value +''''+
                                 '   and EstIte.CodSub = '''+ PedCt2CodSub.Value +''''+
                                 '   and EstIte.CodPro = '''+ PedCt2CodPro.Value +'''';
                         Open;

                    end;

                    if quSql.FieldbyName('CodEmp').AsInteger > 0 then begin

                       if not pnEstoque.visible then pnEstoque.Visible := True;

                       EdQtdIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtdIte').AsFloat)+' ';
                       EdQtrIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtrIte').AsFloat)+' ';
                       EdQtdRma.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtdRma').AsFloat)+' ';
                       EdQtaIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtaIte').AsFloat)+' ';

                       if (quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat)) < 0 then
                          EdSldIte.Font.Color := clRed
                       else
                          EdSldIte.Font.Color := clGray;

                       EdSldIte.Caption := FormatFloat('###,###,##0.0000',fRound(quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat),4))+' ';

                       EdQtpCt2.SetFocus;

                       end
                    else
                       fmsgErro('Item Informado não Encontrado na Empresa.',EdCbaCt2);

                    end
                 else
                    fmsgErro('Item Informado não Encontrado.',EdCbaCt2);

                 end
              else
                 fMsgErro('Item Duplicado !',EdCbaCt2);

              end
           else
              fmsgErro('Item Informado não Encontrado.',EdCbaCt2);

           end
        else
           begin

           if EdCbaCt2.Enabled then begin

              if Trim( PedCt2CbaCt2.Value ) = '' then fmsgErro('Código de Barras Informado não Encontrado.',EdCbaCt2);

           end;
        end;

        end
     else
        begin

        pnDesCt2.Visible := False;
        pnObsCt2.Visible := False;

        EdVluCt2.Enabled := True;
        EdCodUnd.Enabled := True;
        EdDesCt2.Enabled := True;
        EdObsCt2.Enabled := True;

        EdDscCt2.Enabled := False;

        PedCt2IcmCt2.Value := 0;
        PedCt2IpiCt2.Value := 0;
        PedCt2CodGru.Value := '999';
        PedCt2CodSub.Value := '9999';
        PedCt2CodPro.Value := '99999';

        EdQtpCt2.SetFocus;

     end;

     end
  else
     fmsgErro('Item Informado não Encontrado.',EdCbaCt2);
end;

procedure TfmManCt2.SaiCliente;
var
CodGCl : integer;
NroSuf,LocPfa,CodPfa : string;
begin
  if PedCtaCodCli.Value > 0 then begin

     if PedCta.State <> dsBrowse then begin

        if GCodVen_Id = 0 then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select FinCli.CodCli,'+
                        '        FinCli.NomCli,'+
                        '        FinCli.CgcCli,'+
                        '        FinCli.NroSuf,'+
                        '        FinCli.UffCli,'+
                        '        FinCli.CodVen,'+
                        '        FinCli.LimCli,'+
                        '        FinCli.CodPfa,'+
                        '        FinCli.TipPfa,'+
                        '        FinCli.CodAtd,'+
                        '        FinCli.CodGCl From FinCli Where FinCli.CodCli = '''+ IntToStr( PedCtaCodCli.Value ) +'''';
                Open;

           end;

           end
        else
           begin

           with quSql,SQL do begin

                Close;
                Text := ' Select FinCli.CodCli,'+
                        '        FinCli.NomCli,'+
                        '        FinCli.CgcCli,'+
                        '        FinCli.NroSuf,'+
                        '        FinCli.UffCli,'+
                        '        FinCli.CodVen,'+
                        '        FinCli.LimCli,'+
                        '        FinCli.CodPfa,'+
                        '        FinCli.TipPfa,'+
                        '        FinCli.CodAtd,'+
                        '        FinCli.CodGCl From FinCli'+
                        ' Where FinCli.CodCli = :CodCli'+
                        '   and FinCli.CodVen = :CodVen';

                with Params do begin

                     Params[0].AsInteger := PedCtaCodCli.Value;
                     Params[1].AsInteger := GCodVen_Id;

                end;

                Open;

           end;
        end;

        if quSql.FieldbyName('CodCli').AsInteger = PedCtaCodCli.Value then begin

           CodGCl := quSql.FieldbyName('CodGCl').AsInteger;
           NroSuf := Trim(quSql.FieldbyName('NroSuf').AsString);

           PedCtaUfeCta.Value := Trim(quSQL.FieldbyName('UffCli').AsString);
           PedCtaNomCli.Value := Trim(quSQL.FieldbyName('NomCli').AsString);

           if Trim(quSQL.FieldbyName('CodPfa').AsString) <> '' then
              PedCtaCodPfa.Value := Trim(quSQL.FieldbyName('CodPfa').AsString);

           if quSQL.FieldbyName('CodVen').AsInteger > 0 then PedCtaCodVen.Value := quSQL.FieldbyName('CodVen').AsInteger;

           pnNomCli.Caption := PedCtaNomCli.Value;

           pnUfeCta.Caption := quSQL.FieldbyName('UffCli').AsString;

           if PedCtaCodVen.Value > 0 then EdCodVen.Text := quSQL.FieldbyName('CodVen').AsString;

           CodPfa := quSQL.FieldbyName('CodPfa').AsString;

           if GCodAtd_Id > 0 then begin

              if quSQL.FieldbyName('CodAtd').AsInteger <> GCodAtd_Id then begin

                 pnNomCli.Caption := '';
                 pnUfeCta.Caption := '';
                 pnNomVen.Caption := '';

                 PedCtaNomCli.Clear;

                 fmsgErro('Cliente Informado não Pertence ao Atendente.',EdCodCli);
              
              end;
           end;
           
           if Trim( CodPfa ) <> '' then begin

              if PedCtaUfeCta.Value = 'EX' then
                 LocPfa := 'Importacao ou Exportacao'
              else
                 begin

                 if PedCtaUfeCta.Value <> GUfeEmp then
                    LocPfa := 'Outros Estados'
                 else
                    LocPfa := 'Mesmo Estado'

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstPfa.DscPfa From EstPfa '+
                           ' Where EstPfa.TipPfa = :TipPfa'+
                           '   and EstPfa.CodPfa = :CodPfa'+
                           '   and EstPfa.LocPfa = :LocPfa';

                   with Params do begin

                        Params[0].AsString  := PedCtaTipPfa.Value;
                        Params[1].AsString  := PedCtaCodPfa.Value;
                        Params[2].AsString  := LocPfa;

                   end;

                   Open;

                   pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

              end;

              pSaida := 'Nao';

              bPsqPfa.Enabled := False;

              EdCodPfa.Enabled := False;

              EdCodPfa.Font.Style := [fsBold];

              pSaida := 'Sim';

              end
           else
              begin   

              pSaida := 'Nao';

              bPsqPfa.Enabled := True;

              EdCodPfa.Enabled := True;

              EdCodPfa.Font.Style := [];

              pSaida := 'Sim';

           end;

           with quSql,SQL do begin

                Close;
                Text := ' Select FinGCl.CliTab From FinGCl Where FinGCl.CodGCl = :CodGCl';

                with Params do begin

                     Params[0].AsInteger := CodGCl;

                end;

                Open;

                PedCtaCliTab.Value := Trim(FieldbyName('CliTab').AsString);

           end;

           if PedCtaCodVen.Value > 0 then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FinVen.CodVen,FinVen.ApeVen From FinVen Where FinVen.CodVen = '''+ IntToStr( PedCtaCodVen.Value ) +'''';
                   Open;

              end;

              if quSQL.FieldbyName('CodVen').AsInteger > 0 then
                 pnNomVen.Caption := quSQL.FieldbyName('ApeVen').AsString
              else
                 begin

                 pnNomVen.Caption := ' ';

                 fmsgErro('Vendedor Informado para o Cliente não Encontrado.',EdCodCli);

              end;
           end;

           if Trim( PedCtaUfeCta.Value ) <> '' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select * From GerUfe Where GerUfe.SigUfe = '+ QuotedStr(PedCtaUfeCta.Value);
                   Open;

              end;

              if Trim( quSQL.FieldbyName('SigUfe').AsString ) <> '' then begin

                 if Trim( NroSuf ) <> '' then
                    PedCtaDscReg.Value := quSQL.FieldbyName('DscUfe').AsFloat
                 else
                    PedCtaDscReg.Value := 0;

                 end
              else
                 PedCtaDscReg.Value := 0;

              if quSQL.FieldbyName('DscCom').AsFloat > 0 then begin

                 if not EdDscCom.Enabled then begin

                    pSaida := 'Nao';

                    EdDscCom.Enabled := True;

                    EdDscCom.Font.Style := [];

                    pSaida := 'Sim';

                    PedCtaDscCom.Value := quSQL.FieldbyName('DscCom').AsFloat;

                    EdDscCom.Text := FormatFloat('##0.00',PedCtaDscCom.Value);

                 end;

                 end
              else
                 begin

                 if EdDscCom.Enabled then begin

                    pSaida := 'Nao';
                    
                    EdDscCom.Enabled := False;

                    EdDscCom.Font.Style := [fsBold];

                    pSaida := 'Sim';

                    PedCtaDscCom.Value := 0;

                    EdDscCom.Text := '0';

                 end;
              end;

              bPsqVen.Enabled := False;

              pnUfeCta.Visible := True;
              pnNomCli.Visible := True;

              if GCodVen_Id > 0 then begin

                 if GGus_Id <> 1 then begin

                    EdCodVen.Enabled := False;
                    EdCodVen.Font.Style := [fsBold];

                 end;
              end;

              pSaida := 'Nao';
              
              EdNomCli.Enabled := False;
              EdUfeCta.Enabled := False;

              EdNomCli.Font.Style := [fsBold];
              EdUfeCta.Font.Style := [fsBold];

              pSaida := 'Sim';
              
              if EdCodVen.Enabled then
                 EdCodVen.SetFocus
              else
                 begin

                 if EdDscCom.Enabled then
                    EdDscCom.SetFocus
                 else
                    begin

                    if EdCodPfa.Enabled then begin

                       if Trim( CodPfa ) = '' then
                          EdCodPfa.SetFocus
                       else
                          grCt2.SetFocus;

                       end
                    else
                       Panel1.onExit(Panel1);
                       
                 end;
              end;

              end
           else
              fmsgErro('Endereço de Faturamento do Cliente Incompleto. Falta UF',EdCodCli);

           end
        else
           begin

           pnNomCli.Caption := '';
           pnUfeCta.Caption := '';
           pnNomVen.Caption := '';

           PedCtaNomCli.Clear;

           fmsgErro('Cliente Informado não Encontrado',EdCodCli);

        end;
     end;

     end
  else
     begin

     pSaida := 'Nao';
     
     bPsqPfa.Enabled := True;

     pnUfeCta.Visible := False;
     pnNomCli.Visible := False;

     EdNomCli.Enabled := True;
     EdUfeCta.Enabled := True;
     EdCodPfa.Enabled := True;

     EdNomCli.Font.Style := [];
     EdUfeCta.Font.Style := [];
     EdCodPfa.Font.Style := [];

     pSaida := 'Sim';

     EdNomCli.SetFocus;

  end;
end;

procedure TfmManCt2.EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqUnd := TfmPsqUnd.Create(Self);

        fmPsqUnd.ShowModal;

        if Trim( fmPsqUnd.CodUnd ) <> '' then begin

           PedCt2CodUnd.Value := Trim(fmPsqUnd.CodUnd);

           EdCodUnd.Text := PedCt2CodUnd.Value;

        end;

     finally

        FreeAndNil(fmPsqUnd);

     end;

     if Trim( PedCt2CodUnd.Value ) <> '' then
        EdDesCt2.SetFocus
     else
        EdCodUnd.SetFocus;

  end;
end;

procedure TfmManCt2.EdCodUndExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodGru.Focused) and (not EdCodSub.Focused) and
        (not EdCodPro.Focused) and (not EdQtpCt2.Focused) and (not EdVluCt2.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if Trim(PedCt2CodUnd.Value) <> '' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select EstUnd.NomUnd From EstUnd Where EstUnd.CodUnd = '''+ PedCt2CodUnd.Value +'''';
                Open;

           end;

           if Trim( quSQL.FieldbyName('NomUnd').AsString ) = '' then fmsgErro('Unidade Informada não Encontrada.',EdCodUnd);

           end
        else
           fmsgErro('Unidade Informada não Encontrada.',EdCodUnd);

     end;
  end;
end;

procedure TfmManCt2.EdUfeCtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqUfe := TfmPsqUfe.Create(Self);

        fmPsqUfe.ShowModal;

        if Trim( fmPsqUfe.SigUfe ) <> '' then begin

           PedCtaUfeCta.Value := Trim(fmPsqUfe.SigUfe);

           EdUfeCta.Text := PedCtaUfeCta.Value;

        end;

     finally

        FreeAndNil(fmPsqUfe);

     end;

     if Trim( PedCtaUfeCta.Value ) <> '' then begin

        if EdCodVen.Enabled then
           EdCodVen.SetFocus
        else
           begin

           if EdDscCom.Enabled then
              EdDscCom.SetFocus
           else
              begin

              if EdCodPfa.Enabled then
                 EdCodPfa.SetFocus
              else
                 grCt2.SetFocus;

           end;
        end;

        end
     else
        EdUfeCta.SetFocus;

  end;
end;

procedure TfmManCt2.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';
     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        PedCtaCodVen.Value := fmAuxIni.CodVen;

        pnNomVen.Caption := fmAuxIni.NomVen;

        EdCodVen.Text := IntToStr(PedCtaCodVen.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodVen.SetFocus;

end;

procedure TfmManCt2.EdCodVenExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodCli.Focused) and (not EdDteCta.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedCta.State <> dsBrowse then begin

           if PedCtaCodVen.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

                   with Params do begin

                        Params[0].AsInteger := PedCtaCodVen.Value;

                   end;

                   Open;

              end;

              if Trim( quSql.FieldbyName('ApeVen').AsString ) <> '' then
                 pnNomVen.Caption := quSql.FieldbyName('ApeVen').AsString
              else
                 begin

                 pnNomVen.Caption := '';

                 fmsgErro('Vendedor Informado não Encontrado',EdCodVen);

              end;

              end
           else
              begin

              pnNomVen.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodVen);

           end;

           end
        else
           begin

           pnNomVen.Caption := '';

           fmsgErro('Vendedor Informado não Encontrado',EdCodVen);

        end;
     end;
  end;
end;

procedure TfmManCt2.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
CodVen : integer;
begin
  inherited;

  CodVen := 0;
  
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'V';
        fmAuxIni.ShowModal;

        if fmAuxIni.CodVen > 0 then begin

           CodVen := fmAuxIni.CodVen;

           PedCtaCodVen.Value := fmAuxIni.CodVen;

           pnNomVen.Caption := fmAuxIni.NomVen;

           EdCodVen.Text := IntToStr(PedCtaCodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if CodVen > 0 then begin

        if EdDscCom.Enabled then
           EdDscCom.SetFocus
        else
           begin

           if EdCodPfa.Enabled then
              EdCodPfa.SetFocus
           else
              EdCodVen.SetFocus;

        end;
     end;
  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'V';
        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodVen > 0 then begin

           CodVen := fmAuxPsq.CodVen;

           PedCtaCodVen.Value := fmAuxPsq.CodVen;

           pnNomVen.Caption := fmAuxPsq.NomVen;

           EdCodVen.Text := IntToStr(PedCtaCodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;
     
     if CodVen > 0 then begin

        if EdDscCom.Enabled then
           EdDscCom.SetFocus
        else
           begin

           if EdCodPfa.Enabled then
              EdCodPfa.SetFocus
           else
              EdCodVen.SetFocus;

        end;
     end;
  end;
end;

procedure TfmManCt2.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) or (GFlgGer = 'Sim') then begin

     if key = #5 then begin {Estoque}

        if not Assigned(fmPsqEs2) then begin
        
           try

              fmPsqEs2 := TfmPsqEs2.Create(Self);

              fmPsqEs2.sEntr := sEntr;

              fmPsqEs2.sCodClp := '1';

              if ( Trim(PedCt2CodGru.Value) <> '' ) or
                 ( Trim(PedCt2CodSub.Value) <> '' ) or
                 ( Trim(PedCt2CodPro.Value) <> '' ) then begin

                 with fmPsqEs2.EstPro,SQL do begin

                      Close;
                      Text := ' Select EstPro.CodClp,'+
                              '        EstPro.CodGru,'+
                              '        EstPro.CodSub,'+
                              '        EstPro.CodPro,'+
                              '        EstPro.DscPro,'+
                              '        EstPro.RefPro,'+
                              '        EstPro.LocPro,'+
                              '        EstPro.CodUne,'+
                              '        EstPro.CodUns,'+
                              '        EstPro.QtePro,'+
                              '        EstPro.QtsPro,'+
                              '        EstPro.EntIpi,'+
                              '        EstPro.SaiIpi,'+
                              '        EstPro.ClfEnt,'+
                              '        EstPro.ClfSai,'+
                              '        EstPro.EntIcm,'+
                              '        EstPro.SaiIcm,'+
                              '        EstPro.SimPro,'+
                              '        EstPro.CodSt1,'+
                              '        EstPro.CodSt2,'+
                              '        EstPro.QtdEmb,'+
                              '        EstPro.ImgPro,'+
                              '        EstPro.FlgPro,'+
                              '        EstPro.CbaPro,'+
                              '        EstPro.WebPro,'+
                              '        EstPro.CodCat,'+
                              '        EstPro.CodTip,'+
                              '        EstPro.CodMrc,'+
                              '        EstPro.NumPro,'+
                              '        EstPro.CodAnt,'+
                              '        EstPro.IdePro'+
                              ' From EstPro'+
                              ' Where EstPro.CodClp = '+ QuotedStr('1') +
                              '   and EstPro.FlbPro = '+ QuotedStr(' ') ;

                      if Trim( PedCt2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(PedCt2CodGru.Value) ;
                      if Trim( PedCt2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(PedCt2CodSub.Value) ;
                      if Trim( PedCt2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '+ QuotedStr(PedCt2CodPro.Value) ;

                      Text := Text + ' Order by EstPro.DscPro';

                      Open;

                 end;
              end;

              fmPsqEs2.ShowModal;

              if sEntr = 'S' then begin

                 if Trim( fmPsqEs2.CodGru ) <> '' then begin

                    if (EdCodGru.Enabled) or (EdCbaCt2.Enabled) then begin

                       PedCt2CodClp.Value := fmPsqEs2.CodClp;
                       PedCt2CodGru.Value := fmPsqEs2.CodGru;
                       PedCt2CodSub.Value := fmPsqEs2.CodSub;
                       PedCt2CodPro.Value := fmPsqEs2.CodPro;
                       PedCt2CbaCt2.Value := Trim(fmPsqEs2.CbaPro);                       

                    end;
                 end;
              end;

           finally

              FreeAndNil(fmPsqEs2);

           end;
        end;   
     end;
  end;
end;

procedure TfmManCt2.EdCbaCt2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not grCt2.Focused then
        saida := True
     else
        saida := False;

     if saida then SaiCodBarras;

     end
  else
     begin

     if (Tecla = 'UP') then begin

        if PedCtaQtiCta.Value > 0 then begin

           EdCbaCt2.Enabled := False;        
           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdVluCt2.Enabled := False;
           EdQtpCt2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdDscCt2.Enabled := False;
           EdDesCt2.Enabled := False;
           EdObsCt2.Enabled := False;

           if PedCt2.State <> dsBrowse then
              PedCt2.CancelUpdates
           else
              begin

              if not PedCt2.Bof then PedCt2.Prior;

           end;

           grCt2.SetFocus;

           end
        else
           EdCbaCt2.SetFocus;
           
     end;
  end;
end;

procedure TfmManCt2.DsCt2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if PedCt2.State = dsBrowse then begin

     AntVluCt2 := PedCt2VluCt2.Value;
     AntDscCt2 := PedCt2DscCt2.Value;
     AntDspCt2 := PedCt2DspCt2.Value;

  end;

  pnNomCli.Caption := PedCtaNomCli.Value;
  pnUfeCta.Caption := PedCtaUfeCta.Value;  
  pnDesCt2.Caption := PedCt2DesCt2.Value;
  pnObsCt2.Caption := PedCt2ObsCt2.Value;

  pnNumCta.Caption := IntToStr(PedCtaNumCta.Value);

  pnTotIte.Caption := FormatFloat('###,###,##0.00',PedCtaTotIte.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00',PedCtaTotIpi.Value);
  pnTotSub.Caption := FormatFloat('###,###,##0.00',PedCtaTotSub.Value);
  pnTotDsr.Caption := FormatFloat('###,###,##0.00',PedCtaTotDsr.Value);
  pnTotGer.Caption := FormatFloat('###,###,##0.00',PedCtaTotGer.Value);
  pnTotRen.Caption := FormatFloat('###,###,##0.00',PedCtaTotRen.Value);
  pnTotMk2.Caption := FormatFloat('###,###,##0.00',PedCt2TotRen.Value);

  if PedCtaFlgOco.Value = '*' then
     pnFlgOco.Color := clRed
  else
     pnFlgOco.Color := clLime;

  if PedCt2.State = dsInsert then
     pnNroCt2.Caption := FNumZeros(IntToStr(PedCt2NroCt2.Value),4)+'/'+FNumZeros(IntToStr(PedCtaQtiCta.Value + 1),4)
  else
     pnNroCt2.Caption := FNumZeros(IntToStr(PedCt2NroCt2.Value),4)+'/'+FNumZeros(IntToStr(PedCtaQtiCta.Value),4);

end;

procedure TfmManCt2.EdVluCt2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Verificar 3 Últimas Vendas para o Item}

     if PedCtaCodCli.Value > 0 then begin

        try

           fmPsqUve := TfmPsqUve.Create(Self);

           fmPsqUve.Panel3.Caption := ' '+PedCt2CodGru.Value+'.'+PedCt2CodSub.Value+'.'+PedCt2CodPro.Value+' - '+PedCt2DesCt2.Value;

           fmPsqUve.PedRes.Close;
           fmPsqUve.PedRes.Params[0].AsInteger := PedCtaCodCli.Value;
           fmPsqUve.PedRes.Params[1].AsString  := PedCt2CodClp.Value;
           fmPsqUve.PedRes.Params[2].AsString  := PedCt2CodGru.Value;
           fmPsqUve.PedRes.Params[3].AsString  := PedCt2CodSub.Value;
           fmPsqUve.PedRes.Params[4].AsString  := PedCt2CodPro.Value;
           fmPsqUve.PedRes.Open;

           fmPsqUve.ShowModal;

        finally

           FreeAndNil(fmPsqUve);

        end;
     end;
  end;
end;

procedure TfmManCt2.EdCodEmpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
     LbText.Caption := 'F1-Iniciais F4-Estoque F11-Ocorrências'
  else
     LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManCt2.EdDteCtaEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
     LbText.Caption := 'F4-Estoque F11-Ocorrências'
  else
     LbText.Caption := 'F4-Estoque';

end;

procedure TfmManCt2.EdCodCliEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
     LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque F11-Ocorrências'
  else
     LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManCt2.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F11-Ocorrências'
  else
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref';

end;

procedure TfmManCt2.EdCodProEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F11-Ocorrências'
  else
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref';

end;

procedure TfmManCt2.EdQtpCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if PedCtaFlgOco.Value = '*' then
     LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
  else
     LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado';

  if PedCt2CodGru.Value <> '999' then begin

     if PedCtaLanEst.Value = 'Sim' then begin

        if PedCtaCodFil.Value > 0 then
           CodEmp := PedCtaCodFil.Value
        else
           CodEmp := PedCtaCodEmp.Value;

        end
     else
        CodEmp := PedCtaCodEmp.Value;

     with quSql,SQL do begin

          Close;
          Text := ' Select QtdEmb From EstPro '+
                  ' Where EstPro.CodClp = '+ QuotedStr(PedCt2CodClp.Value) +
                  '   and EstPro.CodGru = '+ QuotedStr(PedCt2CodGru.Value) +
                  '   and EstPro.CodSub = '+ QuotedStr(PedCt2CodSub.Value) +
                  '   and EstPro.CodPro = '+ QuotedStr(PedCt2CodPro.Value) ;
          Open;

          EdQtdEmb.Caption := FormatFloat('###,###,##0.0000',FieldbyName('QtdEmb').AsFloat)+' ';

     end;

     with quSql,SQL do begin

          Close;
          Text := ' Select EstIte.CodEmp,'+
                  '        EstIte.QtdIte,'+
                  '        EstIte.QtrIte,'+
                  '        EstIte.QtdRma,'+
                  '        EstIte.QtaIte '+
                  ' From EstIte '+
                  ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                  '   and EstIte.CodClp = '+ QuotedStr(PedCt2CodClp.Value) +
                  '   and EstIte.CodGru = '+ QuotedStr(PedCt2CodGru.Value) +
                  '   and EstIte.CodSub = '+ QuotedStr(PedCt2CodSub.Value) +
                  '   and EstIte.CodPro = '+ QuotedStr(PedCt2CodPro.Value) ;
          Open;

     end;

     if not pnEstoque.visible then pnEstoque.Visible := True;

     EdQtdIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtdIte').AsFloat) + ' ';
     EdQtrIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtrIte').AsFloat) + ' ';
     EdQtdRma.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtdRma').AsFloat) + ' ';
     EdQtaIte.Caption := FormatFloat('###,###,##0.0000',quSQL.FieldbyName('QtaIte').AsFloat) + ' ';

     if (quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat)) < 0 then
        EdSldIte.Font.Color := clRed
     else
        EdSldIte.Font.Color := clGray;

     EdSldIte.Caption := FormatFloat('###,###,##0.0000',fRound(quSQL.FieldbyName('QtdIte').AsFloat - (quSQL.FieldbyName('QtrIte').AsFloat + quSQL.FieldbyName('QtdRma').AsFloat),4))+' ';

  end;
end;

procedure TfmManCt2.EdVluCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
     LbText.Caption := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
  else
     LbText.Caption := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado';

end;

procedure TfmManCt2.EdCodUndEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
     LbText.Caption := 'F1-Iniciais F11-Ocorrências'
  else
     LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManCt2.EdIpiCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
     LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
  else
     LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado';

end;

procedure TfmManCt2.EdDscCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
     LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
  else
     LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado';

end;

procedure TfmManCt2.grCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = '*' then
     LbText.Caption := 'D-Descrição/Obs F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências'
  else
     LbText.Caption := 'D-Descrição/Obs F4-Estoque F5-Reservas F7-Comprado';

end;

end.
