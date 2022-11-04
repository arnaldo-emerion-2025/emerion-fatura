unit ManAt2;

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
  TfmManAt2 = class(TfmPadrao)
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
    EdId_PedCta: TdxDBColorEdit;
    pnId_PedCta: TPanel;
    Label37: TLabel;
    EdCodEmp: TdxDBColorEdit;
    EdCodCli: TdxDBColorEdit;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    EdCodVen: TdxDBColorEdit;
    EdCodPfa: TdxDBColorEdit;
    bpsqPfa: TSpeedButton;
    bpsqCli: TSpeedButton;
    bpsqEmp: TSpeedButton;
    pnNomPfa: TPanel;
    pnApeVen: TPanel;
    pnNomCli: TPanel;
    pnApeEmp: TPanel;
    EdApeEmp: TdxDBColorEdit;
    EdNomCli: TdxDBColorEdit;
    EdApeVen: TdxDBColorEdit;
    EdNomPfa: TdxDBColorEdit;
    Label54: TLabel;
    Label56: TLabel;
    pnUfeCta: TPanel;
    EdUfeCta: TdxDBColorEdit;
    EdDteCta: TdxDBColorDateEdit;
    Label03: TLabel;
    pnTotRen: TPanel;
    EdTotRen: TdxDBColorCurrencyEdit;
    Label04: TLabel;
    Label3: TLabel;
    EdDscReg: TdxDBColorCurrencyEdit;
    grLabel1: TdxDBGraphicEdit;
    PedCta: TwwQuery;
    PedCt2: TwwQuery;
    grCt21: TdxDBGraphicEdit;
    Label53: TLabel;
    PedCt2CODGRU: TStringField;
    PedCt2CODSUB: TStringField;
    PedCt2CODPRO: TStringField;
    PedCt2CODUND: TStringField;
    PedCt2QTPCT2: TFloatField;
    PedCt2VLUCT2: TFloatField;
    PedCt2VLQCT2: TFloatField;
    PedCt2DSCCT2: TFloatField;
    PedCt2IPICT2: TFloatField;
    PedCt2ICMCT2: TFloatField;
    PedCt2TOTCT2: TFloatField;
    PaintBox: TPaintBox;
    bPsqVen: TSpeedButton;
    PedPar: TwwQuery;
    EdFlgOco: TdxDBColorEdit;
    pnFlgOco: TPanel;
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
    PedCtaID_PEDCTA: TIntegerField;
    PedCtaCODEMP: TIntegerField;
    PedCtaDTECTA: TDateTimeField;
    PedCtaHRECTA: TStringField;
    PedCtaCODVEN: TIntegerField;
    PedCtaCODPFA: TStringField;
    PedCtaTIPPFA: TStringField;
    PedCtaUFECTA: TStringField;
    PedCtaQTICT2: TIntegerField;
    PedCtaQTICT3: TIntegerField;
    PedCtaCODCLI: TIntegerField;
    PedCtaNOMCLI: TStringField;
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
    PedCtaMEDDSC: TFloatField;
    PedCtaMEDACR: TFloatField;
    PedCtaTOTDSC: TFloatField;
    PedCtaTOTDSR: TFloatField;
    PedCtaTOTACR: TFloatField;
    PedCtaTOTVEN: TFloatField;
    PedCtaTOTCST: TFloatField;
    PedCtaID_PEDCND: TIntegerField;
    PedCtaCODUSU: TIntegerField;
    PedCtaCODFIL: TIntegerField;
    PedCtaFLGTAB: TStringField;
    PedCtaCODCFO: TStringField;
    PedCtaLANEST: TStringField;
    PedCtaATUEST: TStringField;
    PedCtaINTFIN: TStringField;
    PedCtaFLGCTB: TStringField;
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
    PedCtaID_PEDRES: TIntegerField;
    PedCtaTIPCON: TStringField;
    PedCtaNOMCON: TStringField;
    PedCtaOBSVAL: TStringField;
    PedCtaOBSENT: TStringField;
    PedCtaOB1CTA: TStringField;
    PedCtaOB2CTA: TStringField;
    PedCtaOB3CTA: TStringField;
    PedCtaOB4CTA: TStringField;
    PedCtaOB5CTA: TStringField;
    PedCtaOB6CTA: TStringField;
    PedCtaOB7CTA: TStringField;
    PedCtaOB8CTA: TStringField;
    PedCtaFLGPSQ: TStringField;
    PedCtaFLGOCO: TStringField;
    PedCtaCGCCLI: TStringField;
    PedCtaINSCLI: TStringField;
    PedCtaCLITAB: TStringField;
    PedCtaCODTCL: TIntegerField;
    PedCtaCODGCL: TIntegerField;
    PedCtaMODPFA: TStringField;
    PedCtaSEQCTA: TStringField;
    PedCtaFLGATU: TStringField;
    PedCtaSITCTA: TStringField;
    PedCt2ID_PEDCT2: TIntegerField;
    PedCt2ID_PEDCTA: TIntegerField;
    PedCt2CODEIT: TIntegerField;
    PedCt2CODCLP: TStringField;
    PedCt2CODTAM: TStringField;
    PedCt2CODCOR: TStringField;
    PedCt2DESCT2: TStringField;
    PedCt2OBSCT2: TStringField;
    PedCt2CODST1: TStringField;
    PedCt2CODST2: TStringField;
    PedCt2REFCT2: TStringField;
    PedCt2TABPRC: TIntegerField;
    PedCt2QTDEMB: TFloatField;
    PedCt2VCHCT2: TFloatField;
    PedCt2VRECT2: TFloatField;
    PedCt2VCHCST: TFloatField;
    PedCt2VRECST: TFloatField;
    PedCt2VCSCT2: TFloatField;
    PedCt2CSTLAN: TFloatField;
    PedCt2TIPDSC: TStringField;
    PedCt2VDSCT2: TFloatField;
    PedCt2TIPACR: TStringField;
    PedCt2PACCT2: TFloatField;
    PedCt2VACCT2: TFloatField;
    PedCt2DSRCT2: TFloatField;
    PedCt2VDRCT2: TFloatField;
    PedCt2CODCFO: TStringField;
    PedCt2CLSIPI: TStringField;
    PedCt2TOTVEN: TFloatField;
    PedCt2TOTCST: TFloatField;
    PedCt2BASIPI: TFloatField;
    PedCt2TOTIPI: TFloatField;
    PedCt2BASICM: TFloatField;
    PedCt2TOTICM: TFloatField;
    PedCt2BASSUB: TFloatField;
    PedCt2TOTSUB: TFloatField;
    PedCt2TOTGE2: TFloatField;
    PedCt2TOTREN: TFloatField;
    PedCt2TOTDSC: TFloatField;
    PedCt2TOTDSR: TFloatField;
    PedCt2TOTACR: TFloatField;
    PedCt2CODSTR: TStringField;
    PedCt2TIPSTR: TStringField;
    PedCt2TRBSUB: TStringField;
    PedCt2ICMSUB: TFloatField;
    PedCt2MRGSUB: TFloatField;
    PedCt2BASESB: TFloatField;
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
    PedCt2FLGATU: TStringField;
    PedCt2FLGDUP: TStringField;
    PedCt2FLGREN: TStringField;
    PedCt2NROCT2: TIntegerField;
    PedCtaDSCCND: TFloatField;
    PedCtaACRCND: TFloatField;
    PedCtaTOTDSP: TFloatField;
    PedCtaTOTACP: TFloatField;
    PedCt2PDPCT2: TFloatField;
    PedCt2VDPCT2: TFloatField;
    PedCt2PAPCT2: TFloatField;
    PedCt2VAPCT2: TFloatField;
    PedCt2TOTDSP: TFloatField;
    PedCt2TOTACP: TFloatField;
    PedParEXIREN: TStringField;
    PedCtaCODATD: TIntegerField;
    Label41: TLabel;
    EdCodAtd: TdxDBColorEdit;
    bPsqAtd: TSpeedButton;
    pnApeAtd: TPanel;
    EdApeAtd: TdxDBColorEdit;
    PedParTIPATD: TStringField;
    PedParUSADEC: TStringField;
    PedCtaSEQCT3: TIntegerField;
    PedCtaFLGAVI: TStringField;
    PedParTIPPAG: TStringField;
    PedParQTDCTA: TIntegerField;
    PedCtaQTICT4: TIntegerField;
    PedCt2ID_PEDICL: TIntegerField;
    PedCt2QTICT4: TIntegerField;
    PedParFLGCOT: TStringField;
    PedCtaCOMCLI: TFloatField;
    PedCtaTOTCLI: TFloatField;
    PedCt2COMCLI: TFloatField;
    PedCt2VALCLI: TFloatField;
    PedCt2TOTCLI: TFloatField;
    Label50: TLabel;
    EdComCli: TdxDBColorCurrencyEdit;
    PedCt2CSTCT2: TFloatField;
    PedCt2VCPCT2: TFloatField;
    PedCt2VPRCT2: TFloatField;
    PedCt2VCRCT2: TFloatField;
    PedCt2VMECT2: TFloatField;
    PedCt2VPFCT2: TFloatField;
    PedCt2CSTCST: TFloatField;
    PedCt2VCPCST: TFloatField;
    PedCt2VPRCST: TFloatField;
    PedCt2VCRCST: TFloatField;
    PedCt2VMECST: TFloatField;
    PedCt2VPFCST: TFloatField;
    grLabel2: TPanel;
    Label32: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label4: TLabel;
    Label62: TLabel;
    Label66: TLabel;
    grCt2: ThGrid;
    Panel2: TPanel;
    Label06: TLabel;
    Label5: TLabel;
    Label28: TLabel;
    Label27: TLabel;
    Label05: TLabel;
    Label73: TLabel;
    Label75: TLabel;
    EdVcsCt2: TdxDBColorCurrencyEdit;
    EdObsCt2: TdxDBColorEdit;
    EdDesCt2: TdxDBColorEdit;
    EdTotCta: TdxDBColorCurrencyEdit;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpCt2: TdxDBColorCurrencyEdit;
    EdVluCt2: TdxDBColorCurrencyEdit;
    EdIcmCt2: TdxDBColorCurrencyEdit;
    EdPacCt2: TdxDBColorCurrencyEdit;
    EdCodUnd: TdxDBColorEdit;
    EdVlqCt2: TdxDBColorCurrencyEdit;
    EdTotCt2: TdxDBColorCurrencyEdit;
    EdDscCt2: TdxDBColorCurrencyEdit;
    pnTotIte: TPanel;
    EdTotSub: TdxDBColorCurrencyEdit;
    pnTotSub: TPanel;
    EdTotIpi: TdxDBColorCurrencyEdit;
    pnTotIpi: TPanel;
    EdIpiCt2: TdxDBColorCurrencyEdit;
    pnVcsCt2: TPanel;
    EdClsIpi: TdxDBColorEdit;
    EdRefCt2: TdxDBColorEdit;
    pnDesCt2: TPanel;
    pnObsCt2: TPanel;
    EdMrgSub: TdxDBColorCurrencyEdit;
    EdTotMk2: TdxDBColorCurrencyEdit;
    Label63: TLabel;
    EdTotGer: TdxDBColorCurrencyEdit;
    pnTotGer: TPanel;
    PedParREFDES: TStringField;
    PedParMUDREN: TStringField;
    pnTotMk2: TPanel;
    pnNomBan: TLabel;
    PedParEXILOC: TStringField;
    Label6: TLabel;
    EdTrbSub: TdxDBColorEdit;
    pnTrbSub: TPanel;
    pnClsIpi: TPanel;
    pnRefCt2: TPanel;
    Label12: TLabel;
    EdNroCt2: TdxDBColorCurrencyEdit;
    pnNroCt2: TPanel;
    Label1: TLabel;
    EdCodICl: TdxDBColorEdit;
    PedCt2TOTPIS: TFloatField;
    PedCt2TOTCOF: TFloatField;
    PedCt2CODICL: TStringField;
    PedCtaID_PEDGER: TIntegerField;
    PedCtaFLGGER: TStringField;
    PedCtaPEDCLI: TStringField;
    PedCtaID_PEDATE: TIntegerField;
    PedCtaTRBPIS: TStringField;
    PedCtaTRBCOF: TStringField;
    PedCtaPERPIS: TFloatField;
    PedCtaTOTPIS: TFloatField;
    PedCtaPERCOF: TFloatField;
    PedCtaTOTCOF: TFloatField;
    PedParFLGDUP: TStringField;
    procedure SaiGrupo;
    procedure SaiCliente;
    procedure SaiProduto;
    procedure SaiSubGrupo;
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
    procedure EdDteCtaExit(Sender: TObject);
    procedure EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodUndExit(Sender: TObject);
    procedure EdUfeCtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPsqVenClick(Sender: TObject);
    procedure EdCodVenExit(Sender: TObject);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
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
    procedure EdTotMk2Exit(Sender: TObject);
    procedure EdPacCt2Exit(Sender: TObject);
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodAtdExit(Sender: TObject);
    procedure EdVcsCt2Exit(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    AntVluCt2,AntDscCt2,AntPacCt2,AntTotRen,AntVcsCt2 : real;
    Id_PedCta,Qticms,NroReg : integer;
    pCodClp,pCodGru,pCodSub,pCodPro : string;
    sEnc,sEntr,Finalizar,LanCba,sTipPed,sVerEst,PSaida : string;
  end;

var
  fmManAt2: TfmManAt2;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManGDB, ManAt1, PsqEmp, AuxPsq,
     PsqTpe, PsqPfa, PsqEst, PsqTab, PsqRes, PsqObs, PsqIcm, AuxIni, ManAt3,
     PsqCmp, PsqUnd, PsqUfe, PsqOcc, PsqEs2, PsqUve, PsqCf2;

{$R *.DFM}

procedure TfmManAt2.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  pSaida := 'Sim';

  Finalizar := 'N';

end;

procedure TfmManAt2.FormShow(Sender: TObject);
var
  CodBan: integer;
begin
  inherited;

  if PedParUsaDec.Value = 'Nao' then begin

     PedCt2QtpCt2.DisplayFormat := '###,###,##0';
     
     EdQtpCt2.DecimalPlaces := 0;

  end;

  if PedParExiLoc.Value = 'Sim' then begin

     pnNomBan.Caption := '';
     
     pnNomBan.Visible := True;

  end;  
  
  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if PedParExiRen.Value <> 'Sim' then begin

        Label03.Visible := False;
        Label04.Visible := False;
        Label05.Visible := False;
        Label06.Visible := False;

        pnTotRen.Visible := False;
        EdTotRen.Visible := False;
        EdVcsCt2.Visible := False;
        pnVcsCt2.Visible := False;
        EdTotMk2.Visible := False;
        pnTotMk2.Visible := False;

     end;
  end;

  if Trim(PedParTipAtd.Value) = 'Vendedor' then bPsqAtd.Visible := False;

  if fmManAt1.PedAteId_PedCta.Value > 0 then begin

     sEntr := 'S';

     PedCta.Close;
     PedCta.Params[0].AsInteger := fmManAt1.PedAteId_PedCta.Value;
     PedCta.Open;

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

          if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > 0';

          with Params do begin

               Params[0].AsInteger := PedCtaCodEmp.Value;

          end;

          Open;

          pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedCtaCodVen.Value));
          Open;

          pnApeVen.Caption := FieldbyName('ApeVen').AsString;

     end;

     if PedCtaCodAtd.Value > 0 then begin

        if Trim(PedParTipAtd.Value) = 'Atendente' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedCtaCodAtd.Value));
                Open;

                pnApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

           end;

           end
        else
           begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedCtaCodAtd.Value));
                Open;

                pnApeAtd.Caption := FieldbyName('ApeVen').AsString;

           end;
        end;
     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = '+ QuotedStr('Saida')+
                  '   and EstPfa.CodPfa = '+ QuotedStr(PedCtaCodPfa.Value);
          Open;

          pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

     end;

     pnNomCli.Caption := PedCtaNomCli.Value;

     if PedCtaCodCli.Value > 0 then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinCli.CodBan From FinCli Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedCtaCodCli.Value));
             Open;

             CodBan := FieldbyName('CodBan').AsInteger;

        end;

        if CodBan > 0 then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinBan.NomBan From FinBan Where FinBan.CodBan = '+ QuotedStr(IntToStr(CodBan));
                Open;

                pnNomBan.Caption := copy('Forma de pagto: '+Trim(FieldbyName('NomBan').AsString),1,43);

           end;
        end;
     end;

     pnUfeCta.Caption := PedCtaUfeCta.Value;

     qticms := 1;

     if GUfeEmp <> PedCtaUfeCta.Value then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg from GerIcm Where GerIcm.SigUfe = '+ QuotedStr(PedCtaUfeCta.Value);
             Open;

        end;

        qticms := quSql.FieldbyName('QtdReg').AsInteger;

     end;

     if (Trim(PedCtaSitCta.Value) <> 'Nao Concluida') and
        (Trim(PedCtaSitCta.Value) <> 'Processo de Alteracao') then
        sEnc := 'S'
     else
        begin

        PedCta.Edit;

        bPsqCli.Enabled := True;

        EdCodCli.Enabled := True;
        EdDteCta.Enabled := True;
        EdComCli.Enabled := True;

        EdCodCli.Font.Style := [];
        EdDteCta.Font.Style := [];
        EdComCli.Font.Style := [];

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

procedure TfmManAt2.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManAt2.PedCtaNewRecord(DataSet: TDataSet);
begin
  inherited;

  PedCta.DisableControls;

  PedCtaId_PedCta.Value := 0;

  PedCtaQtiCt2.Value := 0;
  PedCtaQtiCt3.Value := 0;
  PedCtaBasIcm.Value := 0;
  PedCtaTotIcm.Value := 0;
  PedCtaBasSub.Value := 0;
  PedCtaTotSub.Value := 0;
  PedCtaBasIpi.Value := 0;
  PedCtaTotIpi.Value := 0;
  PedCtaTotCst.Value := 0;
  PedCtaTotRen.Value := 0;
  PedCtaTotVen.Value := 0;
  PedCtaTotGer.Value := 0;
  PedCtaTotDsc.Value := 0;
  PedCtaTotDsr.Value := 0;
  PedCtaTotAcr.Value := 0;
  PedCtaComCli.Value := 0;
  PedCtaTotCli.Value := 0;
  PedCtaDscReg.Value := 0;
  PedCtaDteCta.Value := Date;
  PedCtaTipPfa.Value := 'Saida';
  PedCtaCodEmp.Value := GEmp_Id;
  PedCtaSitCta.Value := 'Nao Concluida';
  PedCtaHreCta.Value := TimeToStr(Time);
  PedCtaNomCli.Value := fmManAt1.PedAteNomCli.Value;
  PedCtaUfeCta.Value := fmManAt1.PedAteUfeAte.Value;
  PedCtaOb1Cta.Value := 'APOS A VALIDADE DESTA COTACAO ESTES PRODUTOS PODERAO SOFRER REAJUSTES SEM PREVIO';
  PedCtaOb2Cta.Value := 'AVISO';

  PedCtaId_PedAte.Value := fmManAt1.PedAteId_PedAte.Value;

  if fmManAt1.PedAteCodCli.Value > 0 then PedCtaCodCli.Value := fmManAt1.PedAteCodCli.Value;

  if PedParQtdCta.Value > 0 then
     PedCtaObsVal.Value := IntToStr(PedParQtdCta.Value)+' DIAS';
  
  if GCodVen_Id > 0 then begin

     pnApeVen.Caption := GNomVen_Id;

     EdCodVen.Text := IntToStr(GCodVen_Id);

     PedCtaCodVen.Value := GCodVen_Id;

  end;

  if Trim(PedParTipAtd.Value) = 'Atendente' then begin

     if GCodAtd_Id > 0 then PedCtaCodAtd.Value := GCodAtd_Id;

  end;

  PedCta.EnableControls;

  EdDteCta.Date := Date;

  if GEmp_Id > 0 then EdCodEmp.Text := IntToStr(GEmp_Id);

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

       if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > 0';

       with Params do begin

            Params[0].AsInteger := PedCtaCodEmp.Value;

       end;

       Open;

       pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

  end;

  pnNomBan.Caption := '';
  pnNomCli.Caption := PedCtaNomCli.Value;
  pnUfeCta.Caption := PedCtaUfeCta.Value;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

       with Params do begin

            Params[0].AsInteger := PedCtaCodVen.Value;

       end;

       Open;

       pnApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  if Trim(PedParTipAtd.Value) = 'Atendente' then begin

     if GCodAtd_Id > 0 then begin

        EdCodAtd.Text := IntToStr(GCodAtd_Id);

        PedCtaCodAtd.Value := GCodAtd_Id;

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedCtaCodAtd.Value));
             Open;

             pnApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

        end;
     end;
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstPfa.DscPfa'+
               ' From EstPfa'+
               ' Where EstPfa.TipPfa = '+ QuotedStr('Saida')+
               '   and EstPfa.CodPfa = '+ QuotedStr(PedCtaCodPfa.Value);
       Open;

       pnNomPfa.Caption := quSQL.FieldbyName('DscPfa').AsString;

  end;

  bPsqEmp.Enabled := True;
  bPsqCli.Enabled := True;
  bPsqPfa.Enabled := True;
  bPsqVen.Enabled := True;

  EdCodEmp.Enabled := True;
  EdDteCta.Enabled := True;
  EdCodCli.Enabled := True;
  EdCodVen.Enabled := True;
  EdComCli.Enabled := True;
  EdCodPfa.Enabled := True;

  EdCodEmp.Font.Style := [];
  EdDteCta.Font.Style := [];
  EdCodCli.Font.Style := [];
  EdCodVen.Font.Style := [];
  EdComCli.Font.Style := [];
  EdCodPfa.Font.Style := [];

  if GGUs_Id <> 1 then begin

     if GCodVen_Id > 0 then begin

        EdCodVen.Enabled := False;

        EdCodVen.Font.Style := [fsBold];

        bPsqVen.Enabled := False;

     end;
  end;

  if Trim(PedParTipAtd.Value) = 'Atendente' then begin

     EdCodAtd.Enabled := True;

     EdCodAtd.Font.Style := [];

     if GGUs_Id <> 1 then begin

        if GCodAtd_Id > 0 then begin

           EdCodAtd.Enabled := False;

           EdCodAtd.Font.Style := [fsBold];

           bPsqAtd.Enabled := False;

        end;
     end;
  end;   

  if PedCtaCodEmp.Value > 0 then
     EdDteCta.SetFocus
  else
     EdCodEmp.SetFocus;

end;

procedure TfmManAt2.PedCt2NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedCt2.DisableControls;

  PedCt2Id_PedCt2.Value := 0;
  PedCt2Id_PedCta.Value := PedCtaId_PedCta.Value;

  PedCt2QtpCt2.Value := 0;
  PedCt2VluCt2.Value := 0;
  PedCt2VlqCt2.Value := 0;
  PedCt2DscCt2.Value := 0;
  PedCt2VdsCt2.Value := 0;
  PedCt2PacCt2.Value := 0;
  PedCt2VacCt2.Value := 0;
  PedCt2PdpCt2.Value := 0;
  PedCt2VdpCt2.Value := 0;
  PedCt2PapCt2.Value := 0;
  PedCt2VapCt2.Value := 0;
  PedCt2CstCt2.Value := 0;
  PedCt2VchCt2.Value := 0;
  PedCt2VreCt2.Value := 0;
  PedCt2VcpCt2.Value := 0;
  PedCt2VprCt2.Value := 0;
  PedCt2VcrCt2.Value := 0;
  PedCt2VmeCt2.Value := 0;
  PedCt2VpfCt2.Value := 0;
  PedCt2CstCst.Value := 0;
  PedCt2VchCst.Value := 0;
  PedCt2VreCst.Value := 0;
  PedCt2VcpCst.Value := 0;
  PedCt2VprCst.Value := 0;
  PedCt2VcrCst.Value := 0;
  PedCt2VmeCst.Value := 0;
  PedCt2VpfCst.Value := 0;
  PedCt2VcsCt2.Value := 0;
  PedCt2CstLan.Value := 0;
  PedCt2ValCli.Value := 0;
  PedCt2TotCli.Value := 0;
  PedCt2TotDsc.Value := 0;
  PedCt2TotAcr.Value := 0;
  PedCt2TotDsp.Value := 0;
  PedCt2TotAcp.Value := 0;
  PedCt2TotVen.Value := 0;
  PedCt2TotCst.Value := 0;
  PedCt2TotRen.Value := 0;
  PedCt2BasIpi.Value := 0;
  PedCt2TotIpi.Value := 0;
  PedCt2BasIcm.Value := 0;
  PedCt2TotIcm.Value := 0;
  PedCt2TotCt2.Value := 0;
  PedCt2TotCt2.Value := 0;
  PedCt2IpiCt2.Value := 0;
  PedCt2IcmCt2.Value := 0;
  PedCt2IcmSub.Value := 0;
  PedCt2MrgSub.Value := 0;
  PedCt2BaseSb.Value := 0;
  PedCt2FlgAtu.Value := '';
  PedCt2CodClp.Value := '1';
  PedCt2CodTam.Value := 'UN';
  PedCt2CodCor.Value := 'UN';
  PedCt2FlgRen.Value := 'Nao';
  PedCt2FlgDup.Value := 'Nao';
  PedCt2TrbSub.Value := 'Nao';
  PedCt2TipDsc.Value := 'Percentual';
  PedCt2TipAcr.Value := 'Percentual';
  PedCt2PdpCt2.Value := PedCtaDscCnd.Value;
  PedCt2PapCt2.Value := PedCtaAcrCnd.Value;
  PedCt2ComCli.Value := PedCtaComCli.Value;
  PedCt2CodEit.Value := PedCtaCodEmp.Value;
  PedCt2NroCt2.Value := PedCtaQtiCt2.Value + 1;

  PedCt2.EnableControls;

  AntVluCt2 := PedCt2VluCt2.Value;
  AntPacCt2 := PedCt2PacCt2.Value;
  AntDscCt2 := PedCt2DscCt2.Value;
  AntTotRen := PedCt2TotRen.Value;
  AntVcsCt2 := PedCt2VcsCt2.Value;

  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdQtpCt2.Enabled := True;
  EdVluCt2.Enabled := True;
  EdPacCt2.Enabled := True;
  EdDscCt2.Enabled := True;
  EdCodICl.Enabled := True;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if PedParExiRen.Value = 'Sim' then begin

        if PedParMudRen.Value = 'Sim' then begin

           pnTotMk2.Visible := False;

           EdTotMk2.Enabled := True;

           if EdVcsCt2.Enabled then begin

              pnVcsCt2.Visible := True;

              EdVcsCt2.Enabled := False;

           end;
        end;
     end;

     end
  else
     begin

     if PedParMudRen.Value = 'Sim' then begin

        pnTotMk2.Visible := False;

        EdTotMk2.Enabled := True;

        if EdVcsCt2.Enabled then begin

           pnVcsCt2.Visible := True;

           EdVcsCt2.Enabled := False;

        end;
     end;
  end;   
     
  EdCodGru.SetFocus;

end;

procedure TfmManAt2.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if PedCta.State <> dsBrowse then begin

        if PedCtaCodEmp.Value > 0 then begin

           if GFlgAce <> 'Sim' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FLGDEL,SEQIMP From GerPar';
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
                Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

                if GFlgAce = 'Sim' then begin

                   if GEmpLog > 0 then
                      Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
                   else
                      Text := Text + ' and GerEmp.CodFil > 0';

                end;

                if GFlgAce = 'Sim' then Text := Text + ' and GerEmp.CodFil > 0';

                with Params do begin

                     Params[0].AsInteger := PedCtaCodEmp.Value;
                     
                end;

                Open;

           end;

           if Trim( quSql.FieldbyName('ApeEmp').AsString ) <> '' then
              pnApeEmp.Caption := quSql.FieldbyName('ApeEmp').AsString
           else
              begin

              pnApeEmp.Caption := '';

              fmsgErro('Empresa Informada não Encontrada',EdCodEmp);

           end;

           end
        else
           begin

           pnApeEmp.Caption := '';

           fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodEmp);

        end;
     end;

     end
  else
     begin

     if Tecla = 'UP' then EdCodEmp.SetFocus

  end;
end;

procedure TfmManAt2.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           PedCtaCodEmp.Value := fmPsqEmp.CodEmp;

           EdCodEmp.Text := IntToStr(PedCtaCodEmp.Value);

           pnApeEmp.Caption := fmPsqEmp.NomEmp;

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     if PedCtaCodEmp.Value > 0 then EdDteCta.SetFocus;

  end;
end;

procedure TfmManAt2.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManAt2.EdCodCliExit(Sender: TObject);
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

procedure TfmManAt2.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManAt2.EdCodPfaExit(Sender: TObject);
var
  saida  : boolean;
  LocPfa : string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodCli.Focused) and
        (not EdDteCta.Focused) and
        (not EdCodEmp.Focused) then
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
                   Text := ' Select EstPfa.DscPfa'+
                           ' From EstPfa '+
                           ' Where EstPfa.TipPfa = '+ QuotedStr(PedCtaTipPfa.Value) +
                           '   and EstPfa.CodPfa = '+ QuotedStr(PedCtaCodPfa.Value) +
                           '   and EstPfa.LocPfa = '+ QuotedStr(LocPfa);
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

procedure TfmManAt2.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
                     '        EstPfa.ModPfa '+
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

procedure TfmManAt2.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        PedCtaCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(PedCtaCodEmp.Value);

        pnApeEmp.Caption := fmPsqEmp.NomEmp;

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmManAt2.bpsqCliClick(Sender: TObject);
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

procedure TfmManAt2.bpsqPfaClick(Sender: TObject);
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
                  '        EstPfa.ModPfa '+
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

procedure TfmManAt2.EdCodGruExit(Sender: TObject);
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

        if PedCtaQtiCt2.Value > 0 then begin

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdVluCt2.Enabled := False;
           EdQtpCt2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdPacCt2.Enabled := False;
           EdDscCt2.Enabled := False;
           EdCodICl.Enabled := False;
           EdDesCt2.Enabled := False;
           EdObsCt2.Enabled := False;

           if EdTotMk2.Enabled then begin

              pnTotMk2.Visible := True;

              EdTotMk2.Enabled := False;

           end;
           
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

procedure TfmManAt2.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManAt2.EdCodSubExit(Sender: TObject);
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

procedure TfmManAt2.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManAt2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdQtpCt2.Focused) or
     (EdVluCt2.Focused) or
     (EdPacCt2.Focused) or
     (EdDscCt2.Focused) or
     (EdTotMk2.Focused) or (grCt2.Focused) then begin

     if (Trim(PedCt2CodClp.Value) <> '') and
        (Trim(PedCt2CodGru.Value) <> '') and
        (Trim(PedCt2CodSub.Value) <> '') and
        (Trim(PedCt2CodPro.Value) <> '') then begin

        if key = 116 then begin // F5-Reservas //

           try

              fmPsqRes := TfmPsqRes.Create(Self);

              fmPsqRes.Panel3.Caption := ' '+PedCt2CodClp.Value+ '-' +PedCt2CodGru.Value+ '.' +PedCt2CodSub.Value+ '.' +PedCt2CodPro.Value+ ' - ' +PedCt2DesCt2.Value;

              fmPsqRes.PedRes.Close;
              fmPsqRes.PedRes.Params[0].AsString := PedCt2CodClp.Value;
              fmPsqRes.PedRes.Params[1].AsString := PedCt2CodGru.Value;
              fmPsqRes.PedRes.Params[2].AsString := PedCt2CodSub.Value;
              fmPsqRes.PedRes.Params[3].AsString := PedCt2CodPro.Value;
              fmPsqRes.PedRes.Open;

              fmPsqRes.ShowModal;

           finally

              FreeAndNil(fmPsqRes);

           end;
        end;

        if key = 118 then begin // Comprado //

           try

              fmPsqCmp := TfmPsqCmp.Create(Self);

              fmPsqCmp.Label1.Caption := ' '+PedCt2CodClp.Value+ '-' +PedCt2CodGru.Value+ '.' +PedCt2CodSub.Value+ '.' +PedCt2CodPro.Value+ ' - ' +PedCt2DesCt2.Value;

              fmPsqCmp.CmpPed.Close;
              fmPsqCmp.CmpPed.Params[0].AsString := PedCt2CodClp.Value;
              fmPsqCmp.CmpPed.Params[1].AsString := PedCt2CodGru.Value;
              fmPsqCmp.CmpPed.Params[2].AsString := PedCt2CodSub.Value;
              fmPsqCmp.CmpPed.Params[3].AsString := PedCt2CodPro.Value;
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

           fmAuxIni.CliTab := Trim(PedCtaCliTab.Value);

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

           if EdCodGru.Enabled then SaiProduto;

           end      
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

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

           if EdCodGru.Enabled then SaiProduto;

           end
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

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

           fmAuxPsq.CliTab := Trim(PedCtaCliTab.Value);

           fmAuxPsq.TipoPesq := 'I';

           fmAuxPsq.LanCba := LanCba;

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 PedCt2CodClp.Value := fmAuxPsq.CodClp;
                 PedCt2CodGru.Value := fmAuxPsq.CodGru;
                 PedCt2CodSub.Value := fmAuxPsq.CodSub;
                 PedCt2CodPro.Value := fmAuxPsq.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;
        
        if Trim( PedCt2CodPro.Value ) <> '' then begin

           if EdCodGru.Enabled then SaiProduto;

           end      
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

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

           if EdCodGru.Enabled then SaiProduto;

           end
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;
  end;

  if key = 115 then begin // F4 - Estoque //

     try

        fmPsqEst := TfmPsqEst.Create(Self);

        fmPsqEst.sEntr := sEntr;

        fmPsqEst.LanCba := LanCba;

        fmPsqEst.CliTab := Trim(PedCtaCliTab.Value);

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
                        '        EstPro.CodAnt '+
                        ' From EstPro'+
                        ' Where EstPro.CodClp = '+ QuotedStr('1')+
                        '   and EstPro.FlbPro = '+ QuotedStr(' ');

                if Trim( PedCt2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(PedCt2CodGru.Value);
                if Trim( PedCt2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(PedCt2CodSub.Value);
                if Trim( PedCt2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '+ QuotedStr(PedCt2CodPro.Value);

                Text := Text + ' Order by EstPro.DscPro';

                Open;

           end;
        end;

        fmPsqEst.ShowModal;

        if sEntr = 'S' then begin

           if Trim(fmPsqEst.CodGru) <> '' then begin

              if EdCodGru.Enabled then begin

                 PedCt2CodClp.Value := fmPsqEst.CodClp;
                 PedCt2CodGru.Value := fmPsqEst.CodGru;
                 PedCt2CodSub.Value := fmPsqEst.CodSub;
                 PedCt2CodPro.Value := fmPsqEst.CodPro;

              end;
           end;
        end;

     finally

        FreeAndNil(fmPsqEst);

     end;

     if Trim( PedCt2CodPro.Value ) <> '' then begin

        if EdCodGru.Enabled then SaiProduto;
           
        end
     else
        begin

        if EdCodGru.Focused then EdCodGru.SetFocus;
        if EdCodSub.Focused then EdCodSub.SetFocus;
        if EdCodPro.Focused then EdCodPro.SetFocus;

     end;
  end;

  if key = 122 then begin // F11-Ocorrencias do Pedido //

     if PedCtaFlgOco.Value = 'Sim' then begin

        try

           fmPsqOcc := TfmPsqOcc.Create(Self);

           fmPsqOcc.PedOcc.Close;
           fmPsqOcc.PedOcc.Params[0].AsInteger := PedCtaId_PedCta.Value;
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

        if (EdCodGru.Enabled) or
           (EdCodSub.Enabled) or
           (EdCodPro.Enabled) or
           (EdQtpCt2.Enabled) or
           (EdVluCt2.Enabled) or
           (EdIcmCt2.Enabled) or
           (EdPacCt2.Enabled) or
           (EdDscCt2.Enabled) or
           (EdTotMk2.Enabled) then begin

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpCt2.Enabled := False;
           EdVluCt2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdPacCt2.Enabled := False;
           EdDscCt2.Enabled := False;
           EdCodICl.Enabled := False;
           EdDesCt2.Enabled := False;
           EdObsCt2.Enabled := False;

           if EdTotMk2.Enabled then begin

              pnTotMk2.Visible := True;

              EdTotMk2.Enabled := False;

           end;
           
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

              fmManAt3 := TfmManAt3.Create(Self);
              fmManAt3.ShowModal;

           finally

              FreeAndNil(fmManAt3);

           end;

           if Finalizar = 'S' then begin

              Finalizar := 'N';

              EdCodEmp.Clear;
              EdDteCta.Clear;
              EdCodCli.Clear;
              EdCodVen.Clear;
              EdCodAtd.Clear;
              EdCodPfa.Clear;

              pnId_PedCta.Caption := '0';

              pnApeEmp.Caption := '';
              pnNomCli.Caption := '';
              pnNomBan.Caption := '';              
              pnApeVen.Caption := '';
              pnApeAtd.Caption := '';
              pnUfeCta.Caption := '';
              pnNomPfa.Caption := '';

              PedCta.Close;
              PedCta.Params[0].AsInteger := 0;
              PedCta.Open;

              PedCt2.Close;
              PedCt2.Open;

              PedCta.Insert;

              EdDteCta.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManAt2.grCt2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroCt2,Id_PedCt2 : integer;
begin
  inherited;
  if key = 117 then begin // F6 - Cotações //

     if PedParFlgCot.Value = 'Sim' then begin

        if PedCt2Id_PedCt2.Value > 0 then begin

           Id_PedCt2 := PedCt2Id_PedCt2.Value;

           PedCt2.Edit;

           PedCt2FlgAtu.Value := 'C';

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

           PedCt2.Locate('Id_PedCt2',Id_PedCt2,[LoPartialKey]);

           try

              fmPsqCf2 := TfmPsqCf2.Create(Self);

              fmPsqCf2.Panel3.Caption := ' '+PedCt2CodClp.Value+ '-' +PedCt2CodGru.Value+ '.' +PedCt2CodSub.Value+ '.' +PedCt2CodPro.Value+ ' - ' +PedCt2DesCt2.Value;

              fmPsqCf2.pnQtdCot.Caption := FormatFloat('###,###,##0.0000',PedCt2QtpCt2.Value);

              fmPsqCf2.PedCt4.Close;
              fmPsqCf2.PedCt4.Params[0].AsInteger := PedCt2Id_PedCt2.Value;
              fmPsqCf2.PedCt4.Open;

              fmPsqCf2.ShowModal;

           finally

              FreeAndNil(fmPsqCf2);

           end;
        end;
     end;
  end;
  
  if key = 68 then begin // D - Mudar Descrição/Observações Sobre o Item //

     if PedCt2Id_PedCt2.Value > 0 then begin

        pnDesCt2.Visible := False;
        pnObsCt2.Visible := False;

        EdDesCt2.Enabled := True;
        EdObsCt2.Enabled := True;

        EdDesCt2.SetFocus;

     end;
  end;

  if key = 13 then begin // Tecla - ENTER //

     if PedCt2Id_PedCt2.Value > 0 then begin

        PedCt2.Edit;

        if PedCt2CodGru.Value <> '999' then begin

           EdQtpCt2.Enabled := True;
           EdVluCt2.Enabled := True;
           EdPacCt2.Enabled := True;
           EdDscCt2.Enabled := True;
           EdCodICl.Enabled := True;

           if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

              if PedParExiRen.Value = 'Sim' then begin

                 if PedParMudRen.Value = 'Sim' then begin

                    pnTotMk2.Visible := False;

                    EdTotMk2.Enabled := True;

                 end;
              end;

              end
           else
              begin

              if PedParMudRen.Value = 'Sim' then begin

                 pnTotMk2.Visible := False;

                 EdTotMk2.Enabled := True;

              end;
           end;

           end
        else
           begin

           pnDesCt2.Visible := False;
           pnObsCt2.Visible := False;
           pnClsIpi.Visible := False;

           EdQtpCt2.Enabled := True;
           EdVluCt2.Enabled := True;
           EdCodUnd.Enabled := True;
           EdIpiCt2.Enabled := True;
           EdIcmCt2.Enabled := True;
           EdMrgSub.Enabled := True;
           EdClsIpi.Enabled := True;
           EdDesCt2.Enabled := True;
           EdObsCt2.Enabled := True;
           EdCodICl.Enabled := True;

           if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

              if PedParExiRen.Value = 'Sim' then begin

                 if PedParMudRen.Value = 'Sim' then begin

                    pnVcsCt2.Visible := False;
                    pnTotMk2.Visible := False;

                    EdVcsCt2.Enabled := True;
                    EdTotMk2.Enabled := True;

                 end;
              end;

              end
           else
              begin

              if PedParMudRen.Value = 'Sim' then begin

                 pnVcsCt2.Visible := False;
                 pnTotMk2.Visible := False;

                 EdVcsCt2.Enabled := True;
                 EdTotMk2.Enabled := True;

              end;
           end;
        end;
        
        EdQtpCt2.SetFocus;
        
     end;
  end;

  if key = 40 then begin // Tecla - Seta para Baixo //

     if PedCt2NroCt2.Value = PedCtaQtiCt2.Value then PedCt2.Append;

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

        if NroCt2 < PedCtaQtiCt2.Value then
           PedCt2.Locate('Id_PedCta;NroCt2',VarArrayOf([PedCt2Id_PedCta.Value,NroCt2]),[LoPartialKey])
        else
           begin

           if PedCtaQtiCt2.Value = 0 then
              PedCt2.Append
           else
              PedCt2.Last;

        end;
     end;
  end;
end;

procedure TfmManAt2.FormClose(Sender: TObject; var Action: TCloseAction);
var
  Id_PedAt2 : integer;
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja realmente abandonar a cotacao ?','O') then begin

        if PedCta.State <> dsBrowse then PedCta.CancelUpdates;
        if PedCt2.State <> dsBrowse then PedCt2.CancelUpdates;

        Id_PedAt2 := fmManAt1.PedAt2Id_PedAt2.Value;

        fmManAt1.PedAte.Close;
        fmManAt1.PedAte.Open;

        fmManAt1.PedAt2.Close;
        fmManAt1.PedAt2.Open;

        fmManAt1.PedAt2.Locate('Id_PedAt2',Id_PedAt2,[LoPartialKey]);
        
        Action := CaFree;

        end
     else
        begin

        if PedCtaId_PedCta.Value = 0 then begin

           if PedCta.State = dsBrowse then PedCta.Insert

           end
        else
           begin

           if PedCtaQtiCt2.Value = 0 then
              PedCt2.Append
           else
              grCt2.SetFocus;

        end;

        Abort;
        
     end;

     end
  else
     begin

     Id_PedAt2 := fmManAt1.PedAt2Id_PedAt2.Value;

     fmManAt1.PedAte.Close;
     fmManAt1.PedAte.Open;

     fmManAt1.PedAt2.Close;
     fmManAt1.PedAt2.Open;

     fmManAt1.PedAt2.Locate('Id_PedAt2',Id_PedAt2,[LoPartialKey]);
     
     Action := CaFree;

  end;
end;

procedure TfmManAt2.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if Trim(PedCtaSitCta.Value) = 'Atendida' then fmsg('Operação não Pode ser Realizada. Cotação já Atendida pelo Pedido No. '+ fNumZeros(IntToStr(PedCtaId_PedRes.Value),7)+'.','E');

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManAt2.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManAt2.Panel1Exit(Sender: TObject);
var
  SeqCta,Status : string;
  Id_PedAt2 : integer;
begin
  inherited;
  if pSaida = 'Sim' then begin

     if PedCta.State <> dsBrowse then begin

        PedCtaCodPfa.Value := Trim(PedCtaCodPfa.Value);
        PedCtaTipPfa.Value := Trim(PedCtaTipPfa.Value);        
        
        if PedCtaDteCta.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdDteCta);
        
        if Trim(PedCtaUfeCta.Value) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado. UF do Cliente.',EdCodCli);

        Status := 'dsEdit';

        if PedCta.State = dsInsert then begin

           Status := 'dsInsert';

           if PedCtaCodVen.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodVen);

           if Trim( PedCtaCodPfa.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodPfa);
           if Trim( PedCtaUfeCta.Value ) = '' then fmsgErro('Endereço de Faturamento do Cliente Esta Incompleto.',EdCodCli);

           if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

              if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then begin

                 if GCodVen_Id > 0 then begin

                    if PedCtaCodVen.Value <> GCodVen_Id then begin

                       PedCtaCodAtd.Value := GCodVen_Id;

                       if PedCtaCodAtd.Value = 0 then fmsgErro('Atendente não Encontrado para a Cotação.',EdCodCli);

                    end;
                 end;
              end;

              if PedCtaCodAtd.Value > 0 then begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedCtaCodAtd.Value));
                      Open;

                      pnApeAtd.Caption := FieldbyName('ApeVen').AsString;

                 end;

                 end
              else
                 pnApeAtd.Caption := ' ';

           end;

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
             Text := ' Select PedCta.Id_PedCta From PedCta Where PedCta.SeqCta = '+ QuotedStr(SeqCta);
             Open;

        end;

        PedCta.Close;
        PedCta.Params[0].AsInteger := quSQL.FieldbyName('Id_PedCta').AsInteger;
        PedCta.Open;

        PedCt2.Close;
        PedCt2.Open;

        if Status = 'dsInsert' then begin

           Id_PedAt2 := fmManAt1.PedAt2Id_PedAt2.Value;
           
           fmManAt1.PedAte.Close;
           fmManAt1.PedAte.Open;

           fmManAt1.PedAt2.Close;
           fmManAt1.PedAt2.Open;

           fmManAt1.PedAt2.Locate('Id_PedAt2',Id_PedAt2,[LoPartialKey]);

        end;

        qticms := 1;

        if GUfeEmp <> PedCtaUfeCta.Value then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg from GerIcm Where GerIcm.SigUfe = '+ QuotedStr(PedCtaUfeCta.Value);
                Open;

                qticms := FieldbyName('QtdReg').AsInteger;

           end;
        end;

        pnUfeCta.Visible := True;
        pnNomCli.Visible := True;

        EdCodEmp.Enabled := False;
        EdDteCta.Enabled := False;
        EdCodCli.Enabled := False;
        EdNomCli.Enabled := False;
        EdUfeCta.Enabled := False;
        EdCodVen.Enabled := False;
        EdComCli.Enabled := False;
        EdCodAtd.Enabled := False;
        EdCodPfa.Enabled := False;

        EdCodEmp.Font.Style := [fsBold];
        EdDteCta.Font.Style := [fsBold];
        EdCodCli.Font.Style := [fsBold];
        EdNomCli.Font.Style := [fsBold];
        EdUfeCta.Font.Style := [fsBold];
        EdCodVen.Font.Style := [fsBold];
        EdComCli.Font.Style := [fsBold];
        EdCodAtd.Font.Style := [fsBold];
        EdCodPfa.Font.Style := [fsBold];

        bPsqEmp.Enabled := False;
        bPsqCli.Enabled := False;
        bPsqVen.Enabled := False;
        bPsqAtd.Enabled := False;
        bPsqPfa.Enabled := False;

        if PedCtaQtiCt2.Value = 0 then
           PedCt2.Append
        else
           grCt2.SetFocus;

     end;
  end;
end;

procedure TfmManAt2.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManAt2 := nil;
end;

procedure TfmManAt2.Panel2Exit(Sender: TObject);
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

                if PedCt2.State = dsBrowse then PedCt2.Edit;

                if EdCodGru.Enabled then
                   EdCodGru.SetFocus
                else
                   begin
                   
                   if EdDesCt2.Enabled then EdDesCt2.SetFocus;

                end;
                   
                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedCt2.Close;
        PedCt2.Open;

        PedCta.Close;
        PedCta.Open;

        if EdDesCt2.Enabled then begin
           
           pnDesCt2.Visible := True;
           pnObsCt2.Visible := True;
           pnVcsCt2.Visible := True;
           pnClsIpi.Visible := True;

           EdVluCt2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdIpiCt2.Enabled := False;
           EdIcmCt2.Enabled := False;
           EdMrgSub.Enabled := False;
           EdClsIpi.Enabled := False;
           EdVcsCt2.Enabled := False;
           EdDesCt2.Enabled := False;
           EdObsCt2.Enabled := False;

           EdPacCt2.Enabled := True;
           EdDscCt2.Enabled := True;

        end;
        
        PedCt2.Append;

        EdCodGru.SetFocus;

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

        PedCt2.Locate('Id_PedCta;NroCt2',VarArrayOf([PedCt2Id_PedCta.Value,NroCt2]),[LoPartialKey]);

        if PedCt2NroCt2.Value = PedCtaQtiCt2.Value then
           PedCt2.Append
        else
           begin

           PedCt2.Next;

           pnDesCt2.Visible := True;
           pnObsCt2.Visible := True;
           pnVcsCt2.Visible := True;
           pnClsIpi.Visible := True;

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpCt2.Enabled := False;
           EdVluCt2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdIpiCt2.Enabled := False;
           EdIcmCt2.Enabled := False;
           EdMrgSub.Enabled := False;
           EdClsIpi.Enabled := False;
           EdVcsCt2.Enabled := False;
           EdPacCt2.Enabled := False;
           EdDscCt2.Enabled := False;
           EdCodICl.Enabled := False;
           EdDesCt2.Enabled := False;
           EdObsCt2.Enabled := False;
           
           if EdTotMk2.Enabled then begin

              pnTotMk2.Visible := True;

              EdTotMk2.Enabled := False;

           end;
           
           grCt2.SetFocus;

        end;
     end;

     end
  else
     begin

     pnDesCt2.Visible := True;
     pnObsCt2.Visible := True;
     pnVcsCt2.Visible := True;
     pnClsIpi.Visible := True;

     EdCodGru.Enabled := False;
     EdCodSub.Enabled := False;
     EdCodPro.Enabled := False;
     EdQtpCt2.Enabled := False;
     EdVluCt2.Enabled := False;
     EdCodUnd.Enabled := False;
     EdIpiCt2.Enabled := False;
     EdIcmCt2.Enabled := False;
     EdMrgSub.Enabled := False;
     EdClsIpi.Enabled := False;
     EdVcsCt2.Enabled := False;
     EdPacCt2.Enabled := False;
     EdDscCt2.Enabled := False;
     EdCodICl.Enabled := False;
     EdDesCt2.Enabled := False;
     EdObsCt2.Enabled := False;

     if EdTotMk2.Enabled then begin

        pnTotMk2.Visible := True;

        EdTotMk2.Enabled := False;

     end;
     
     grCt2.SetFocus;

  end;
end;

procedure TfmManAt2.EdCodProExit(Sender: TObject);
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

procedure TfmManAt2.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

        fmAuxIni.CliTab := Trim(PedCtaCliTab.Value);

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.LanCba := LanCba;

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if EdCodGru.Enabled then begin

              PedCt2CodClp.Value := fmAuxIni.CodClp;
              PedCt2CodGru.Value := fmAuxIni.CodGru;
              PedCt2CodSub.Value := fmAuxIni.CodSub;
              PedCt2CodPro.Value := fmAuxIni.CodPro;

           end;
        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedCt2CodPro.Value ) <> '' then begin

        if EdCodGru.Enabled then SaiProduto;

        end      
     else
        begin

        if EdCodPro.Enabled then EdCodPro.SetFocus;
        
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

        fmAuxPsq.CliTab := Trim(PedCtaCliTab.Value);

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

        if EdCodPro.Enabled then SaiProduto;

        end
     else
        begin

        if EdCodPro.Enabled then EdCodPro.SetFocus;

     end;
  end;
end;

procedure TfmManAt2.EdQtpCt2Exit(Sender: TObject);
var
saida : boolean;
CodEmp : integer;
SeqLin,SeqIni : integer;
PrecoLiquido,PrecoCusto  : real;
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

              CodEmp := PedCtaCodEmp.Value;

              if PedCtaLanEst.Value = 'Sim' then begin

                 if PedCtaCodFil.Value > 0 then CodEmp := PedCtaCodFil.Value;

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstIte.CodEmp,'+
                           '        EstIte.QtdIte,'+
                           '        EstIte.QtrIte,'+
                           '        EstIte.QtdRma,'+
                           '        EstIte.QtaIte,'+
                           '        EstIte.CstIte,'+
                           '        EstIte.VchIte,'+
                           '        EstIte.VreIte,'+
                           '        EstIte.VcpIte,'+
                           '        EstIte.VprIte,'+
                           '        EstIte.VcrIte,'+
                           '        EstIte.VmeIte,'+
                           '        EstIte.VpfIte,'+
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

                 try

                    fmPsqTab := TfmPsqTab.Create(Self);

                    if (Trim(PedCtaCliTab.Value) = '98 Qualquer das Tabelas') or
                       (Trim(PedCtaCliTab.Value) = '99 Tabela Livre') or
                       (Trim(PedCtaCliTab.Value) = '') then begin

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

                       while SeqIni <= StrToInt(copy(Trim(PedCtaCliTab.Value),1,2)) do begin

                             if quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then begin

                                PrecoLiquido := quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat;

                                if quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat > 0 then
                                   PrecoLiquido := PrecoLiquido - ((quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat * PrecoLiquido)/100);

                                fmPsqTab.StrTab.Cells[0,SeqLin] := 'TABELA '+ fNumZeros(IntToStr(SeqIni),2);
                                fmPsqTab.StrTab.Cells[1,SeqLin] := PreString(FormatFloat('###,###,##0.0000',quSql.FieldbyName('Vb'+ IntToStr(SeqIni) +'Ite').AsFloat),26);
                                fmPsqTab.StrTab.Cells[2,SeqLin] := PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('Ds'+ IntToStr(SeqIni) +'Ite').AsFloat),26)+' %';
                                fmPsqTab.StrTab.Cells[3,SeqLin] := PreString(FormatFloat('###,###,##0.0000',PrecoLiquido),26);

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

                 if PedCt2TabPrc.Value > 0 then
                    PedCt2VluCt2.Value := quSQL.FieldbyName('Vb'+Trim(IntToStr(PedCt2TabPrc.Value))+'Ite').AsFloat
                 else
                    fmsgErro('Tabela de Preço não Informada para o Item.',EdQtpCt2);

              end;

              if PedCt2VluCt2.Value <> antVluCt2 then begin

                 AntVluCt2 := PedCt2VluCt2.Value;

                 PedCt2VlqCt2.Value := PedCt2VluCt2.Value;

                 if PedCt2DscCt2.Value > 0 then begin

                    PedCt2VdsCt2.Value := fRound((PedCt2DscCt2.Value * PedCt2VlqCt2.Value)/100,4);

                    PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCt2.Value,4);

                 end;

                 if PedCt2PacCt2.Value > 0 then begin

                    PedCt2VacCt2.Value := fRound((PedCt2PacCt2.Value * PedCt2VlqCt2.Value)/100,4);

                    PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VacCt2.Value,4);

                 end;

                 PedCt2ValCli.Value := 0;
                 PedCt2TotCli.Value := 0;

                 if PedCt2ComCli.Value > 0 then begin

                    PedCt2ValCli.Value := fRound((PedCt2ComCli.Value * PedCt2VlqCt2.Value)/100,4);

                    PedCt2TotCli.Value := fRound(PedCt2ValCli.Value * PedCt2QtpCt2.Value,2);

                 end;

                 if PedCt2PdpCt2.Value > 0 then begin

                    PedCt2VdpCt2.Value := fRound((PedCt2PdpCt2.Value * PedCt2VlqCt2.Value)/100,4);

                    PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdpCt2.Value,4);

                 end;

                 if PedCt2PapCt2.Value > 0 then begin

                    PedCt2VapCt2.Value := fRound((PedCt2PapCt2.Value * PedCt2VlqCt2.Value)/100,4);

                    PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VapCt2.Value,4);

                 end;
              end;

              PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value,2);

              if Trim(PedCtaFlgTab.Value) = 'Ultimo Preco'           then PrecoCusto := quSQL.FieldbyName('CstIte').AsFloat;
              if Trim(PedCtaFlgTab.Value) = 'Custo Historico'        then PrecoCusto := quSQL.FieldbyName('VchIte').AsFloat;
              if Trim(PedCtaFlgTab.Value) = 'Custo Ponderado'        then PrecoCusto := quSQL.FieldbyName('VcpIte').AsFloat;
              if Trim(PedCtaFlgTab.Value) = 'Custo Referencial'      then PrecoCusto := quSQL.FieldbyName('VcrIte').AsFloat;
              if Trim(PedCtaFlgTab.Value) = 'Custo Historico (G)'    then PrecoCusto := quSQL.FieldbyName('VreIte').AsFloat;
              if Trim(PedCtaFlgTab.Value) = 'Custo Ponderado (G)'    then PrecoCusto := quSQL.FieldbyName('VprIte').AsFloat;
              if Trim(PedCtaFlgTab.Value) = 'Media Ponderada (E)'    then PrecoCusto := quSQL.FieldbyName('VmeIte').AsFloat;
              if Trim(PedCtaFlgTab.Value) = 'Custo da Ultima Compra' then PrecoCusto := quSQL.FieldbyName('VpfIte').AsFloat;

              if PrecoCusto = 0 then begin

                 if PedCt2CstLan.Value > 0 then PrecoCusto := PedCt2CstLan.Value;

                 end
              else
                 begin

                 if PedCt2VcsCt2.Value > 0 then begin

                    if PedParMudRen.Value = 'Sim' then begin

                       if PedCt2VcsCt2.Value <> PrecoCusto then begin

                          if fMsg('Valor de custo atual R$ '+FormatFloat('###,###,##0.0000',PrecoCusto) +' difere do preço informado na cotação R$ '+FormatFloat('###,###,##0.0000',PedCt2VcsCt2.Value) +'. Altera o custo para o valor atual de tabela ?','O') then PedCt2VcsCt2.Value := PrecoCusto;

                       end;

                       end
                    else
                       PedCt2VcsCt2.Value := PrecoCusto;

                    end
                 else
                    PedCt2VcsCt2.Value := PrecoCusto;
                    
              end;
              
              AntVcsCt2 := PedCt2VcsCt2.Value;
              
              PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value,2);
              PedCt2TotVen.Value := fRound(PedCt2QtpCt2.Value * PedCt2VlqCt2.Value,2);
              PedCt2TotCst.Value := fRound(PedCt2QtpCt2.Value * PedCt2VcsCt2.Value,2);

              if PedCt2DsrCt2.Value > 0 then begin

                 PedCt2VdrCt2.Value := fRound((PedCt2DsrCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2TotDsr.Value := fRound(PedCt2VdrCt2.Value * PedCt2QtpCt2.Value,2);

                 PedCt2CodSt2.Value := '40';

              end;

              PedCt2TotGe2.Value := fRound(PedCt2TotCt2.Value - PedCt2TotDsr.Value,2);

              if PedCt2TotGe2.Value > 0 then begin
              
                 if PedCt2TotCst.Value > 0 then
                    PedCt2TotRen.Value := fRound(((PedCt2TotGe2.Value - (PedCt2TotCst.Value + PedCt2TotCli.Value)) * 100)/(PedCt2TotCst.Value + PedCt2TotCli.Value),2)
                 else
                    PedCt2TotRen.Value := 0;

                 end
              else
                 PedCt2TotRen.Value := 0;

              PedCt2FlgRen.Value := 'Nao';

              AntTotRen := PedCt2TotRen.Value;

              if EdVluCt2.Enabled then
                 EdVluCt2.SetFocus
              else
                 begin

                 if PedCt2VluCt2.Value = 0 then fmsgErro('Item sem Preço Únitario Informado.',EdQtpCt2);

              end;

              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio.',EdQtpCt2);
        end;
     end;
  end;
end;

procedure TfmManAt2.EdVluCt2Exit(Sender: TObject);
var
ret    : string;
FlgAce : string;
saida  : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdQtpCt2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
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
                    PedCt2TipDsc.Value := 'Valor';
                    PedCt2TipAcr.Value := 'Valor';

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

                       if AntVluCt2 > 0 then PedCt2VluCt2.Value := AntVluCt2;

                    end;

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

                    PedCt2ValCli.Value := 0;
                    PedCt2TotCli.Value := 0;

                    if PedCt2ComCli.Value > 0 then begin

                       PedCt2ValCli.Value := fRound((PedCt2ComCli.Value * PedCt2VlqCt2.Value)/100,4);

                       PedCt2TotCli.Value := fRound(PedCt2ValCli.Value * PedCt2QtpCt2.Value,2);

                    end;

                    if PedCt2PdpCt2.Value > 0 then begin

                       PedCt2VdpCt2.Value := fRound((PedCt2PdpCt2.Value * PedCt2VlqCt2.Value)/100,4);

                       PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdpCt2.Value,4);

                    end;

                    if PedCt2PapCt2.Value > 0 then begin

                       PedCt2VapCt2.Value := fRound((PedCt2PapCt2.Value * PedCt2VlqCt2.Value)/100,4);

                       PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VapCt2.Value,4);

                    end;

                    PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value,2);
                    PedCt2TotVen.Value := fRound(PedCt2QtpCt2.Value * PedCt2VlqCt2.Value,2);
                    PedCt2TotCst.Value := fRound(PedCt2QtpCt2.Value * PedCt2VcsCt2.Value,2);

                    if PedCt2DsrCt2.Value > 0 then begin

                       PedCt2VdrCt2.Value := fRound((PedCt2DsrCt2.Value * PedCt2VlqCt2.Value)/100,4);

                       PedCt2TotDsr.Value := fRound(PedCt2VdrCt2.Value * PedCt2QtpCt2.Value,2);

                       PedCt2CodSt2.Value := '40';

                    end;

                    PedCt2TotGe2.Value := fRound(PedCt2TotCt2.Value - PedCt2TotDsr.Value,2);

                    if PedCt2TotCst.Value > 0 then
                       PedCt2TotRen.Value := fRound(((PedCt2TotGe2.Value - (PedCt2TotCst.Value + PedCt2TotCli.Value)) * 100)/(PedCt2TotCst.Value + PedCt2TotCli.Value),2)
                    else
                       PedCt2TotRen.Value := 0;

                    PedCt2FlgRen.Value := 'Nao';

                    AntTotRen := PedCt2TotRen.Value;

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

procedure TfmManAt2.EdDscCt2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdPacCt2.Focused) and
        (not EdVluCt2.Focused) and
        (not EdQtpCt2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedCt2.State <> dsBrowse then begin

           if PedCt2DscCt2.Value <> AntDscCt2 then begin

              PedCt2TipDsc.Value := 'Percentual';
              
              if PedCt2DscCt2.Value = 0 then PedCt2VdsCt2.Value := 0;

              PedCt2VlqCt2.Value := PedCt2VluCt2.Value;

              if PedCt2DscCt2.Value > 0 then begin

                 PedCt2VdsCt2.Value := fRound((PedCt2DscCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCt2.Value,4);

                 end
              else
                 PedCt2VdsCt2.Value := 0;

              if PedCt2PacCt2.Value > 0 then begin

                 PedCt2VacCt2.Value := fRound((PedCt2PacCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VacCt2.Value,4);

                 end
              else
                 PedCt2VacCt2.Value := 0;

              PedCt2ValCli.Value := 0;
              PedCt2TotCli.Value := 0;

              if PedCt2ComCli.Value > 0 then begin

                 PedCt2ValCli.Value := fRound((PedCt2ComCli.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2TotCli.Value := fRound(PedCt2ValCli.Value * PedCt2QtpCt2.Value,2);

              end;

              if PedCt2PdpCt2.Value > 0 then begin

                 PedCt2VdpCt2.Value := fRound((PedCt2PdpCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdpCt2.Value,4);

              end;

              if PedCt2PapCt2.Value > 0 then begin

                 PedCt2VapCt2.Value := fRound((PedCt2PapCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VapCt2.Value,4);

              end;

              AntDscCt2 := PedCt2DscCt2.Value;

              PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value,2);
              PedCt2TotVen.Value := fRound(PedCt2QtpCt2.Value * PedCt2VlqCt2.Value,2);
              PedCt2TotCst.Value := fRound(PedCt2QtpCt2.Value * PedCt2VcsCt2.Value,2);

              if PedCt2DsrCt2.Value > 0 then begin

                 PedCt2VdrCt2.Value := fRound((PedCt2DsrCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2TotDsr.Value := fRound(PedCt2VdrCt2.Value * PedCt2QtpCt2.Value,2);

                 PedCt2CodSt2.Value := '40';

              end;

              PedCt2TotGe2.Value := fRound(PedCt2TotCt2.Value - PedCt2TotDsr.Value,2);

              if PedCt2TotCst.Value > 0 then
                 PedCt2TotRen.Value := fRound(((PedCt2TotGe2.Value - (PedCt2TotCst.Value + PedCt2TotCli.Value)) * 100)/(PedCt2TotCst.Value + PedCt2TotCli.Value),2)
              else
                 PedCt2TotRen.Value := 0;

              PedCt2FlgRen.Value := 'Nao';

              AntTotRen := PedCt2TotRen.Value;

           end;
        end;
     end;
  end;
end;

procedure TfmManAt2.EdDteCtaExit(Sender: TObject);
begin
  inherited;
  if Tecla = 'UP' then EdDteCta.SetFocus
end;

procedure TfmManAt2.SaiGrupo;
begin
  if Trim( PedCt2CodGru.Value ) <> '' then begin

     if PedCt2.State <> dsBrowse then begin

        PedCt2CodGru.Value := FNumZeros(PedCt2CodGru.Value,3);

        if PedCt2CodGru.Value <> '999' then begin

           if EdDesCt2.Enabled then begin
           
              pnDesCt2.Visible := True;
              pnVcsCt2.Visible := True;
              pnClsIpi.Visible := True;

              EdVluCt2.Enabled := False;
              EdCodUnd.Enabled := False;
              EdIpiCt2.Enabled := False;
              EdIcmCt2.Enabled := False;
              EdMrgSub.Enabled := False;
              EdClsIpi.Enabled := False;
              EdVcsCt2.Enabled := False;
              EdDesCt2.Enabled := False;

              EdPacCt2.Enabled := True;
              EdDscCt2.Enabled := True;

           end;
           
           with quSql,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg From EstGru Where EstGru.CodGru = '+ QuotedStr(PedCt2CodGru.Value);
                Open;

           end;

           if quSql.FieldbyName('QtdReg').AsInteger = 0 then
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
           pnVcsCt2.Visible := False;
           pnClsIpi.Visible := False;

           EdVluCt2.Enabled := True;
           EdCodUnd.Enabled := True;
           EdIpiCt2.Enabled := True;
           EdIcmCt2.Enabled := True;
           EdMrgSub.Enabled := True;
           EdClsIpi.Enabled := True;
           EdVcsCt2.Enabled := True;
           EdDesCt2.Enabled := True;

           EdPacCt2.Enabled := False;
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

procedure TfmManAt2.SaiSubGrupo;
begin
  if Trim( PedCt2CodSub.Value ) <> '' then begin

     if PedCt2.State <> dsBrowse then begin

        PedCt2CodSub.Value := FNumZeros(PedCt2CodSub.Value,4);

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From EstSub'+
                     ' Where EstSub.CodGru = '+ QuotedStr(PedCt2CodGru.Value)+
                     '   and EstSub.CodSub = '+ QuotedStr(PedCt2CodSub.Value);
             Open;

        end;

        if quSQL.FieldbyName('QtdReg').AsInteger = 0 then
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

           if Trim(PedCt2CodSub.Value) = '' then fmsgErro('Sub-Grupo Informado não Encontrado.',EdCodSub);

        end;
     end;
     
     end
  else
     fmsgErro('Sub-Grupo Informado não Encontrado.',EdCodSub);
end;

procedure TfmManAt2.SaiProduto;
var
  ret    : string;
  CodEmp : integer;
  PrecoCusto : real;
  sContinuar : string;  
begin
  if Trim(PedCt2CodPro.Value) <> '' then begin

     if PedCt2.State <> dsBrowse then begin

        PedCt2CodPro.Value := FNumStrZero(PedCt2CodPro.Value);

        sContinuar := 'Sim';

        PedCt2FlgDup.Value := 'Nao';

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From PedCt2 '+
                     ' Where PedCt2.Id_PedCta = '+ QuotedStr(IntToStr(PedCt2Id_PedCta.Value)) +
                     '   and PedCt2.CodClp = '+ QuotedStr(PedCt2CodClp.Value) +
                     '   and PedCt2.CodGru = '+ QuotedStr(PedCt2CodGru.Value) +
                     '   and PedCt2.CodSub = '+ QuotedStr(PedCt2CodSub.Value) +
                     '   and PedCt2.CodPro = '+ QuotedStr(PedCt2CodPro.Value) +
                     '   and PedCt2.CodTam = '+ QuotedStr(PedCt2CodTam.Value) +
                     '   and PedCt2.CodCor = '+ QuotedStr(PedCt2CodCor.Value) ;
             Open;

        end;

        if quSql.FieldbyName('QtdReg').AsInteger > 0 then begin

           if PedParFlgDup.Value = 'Sim' then begin

              if fMsg('Item já informado para a cotação. Confirma duplicidade ?','O') then
                 PedCt2FlgDup.Value := 'Sim'
              else
                 sContinuar := 'Nao';

              end
           else
              sContinuar := 'Nao';
              
        end;

        if sContinuar = 'Sim' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select EstPro.CodPro,'+
                        '        EstPro.SaiIcm,'+
                        '        EstPro.SaiIpi,'+
                        '        EstPro.CodUns,'+
                        '        EstPro.CodSt1,'+
                        '        EstPro.CodSt2,'+
                        '        EstPro.DscPro,'+
                        '        EstPro.RefPro,'+                        
                        '        EstPro.IpiSai,'+
                        '        EstPro.IpiTsd,'+
                        '        EstPro.IcmSai,'+
                        '        EstPro.IcmTsd '+
                        ' From EstPro '+
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

              if Trim(quSQL.FieldbyName('RefPro').AsString) <> '' then begin

                 if PedParRefDes.Value = 'Sim' then
                    PedCt2DesCt2.Value := Trim(quSQL.FieldbyName('RefPro').AsString)+ ' ' +Trim(quSQL.FieldbyName('DscPro').AsString)
                 else
                    PedCt2DesCt2.Value := Trim(quSQL.FieldbyName('DscPro').AsString);

                 end
              else
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

              if PedCtaCodCli.Value > 0 then begin
              
                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select PedICl.CodICl'+
                              ' From PedICl'+
                              ' Where PedICl.CodCli = '+ QuotedStr(IntToStr(PedCtaCodCli.Value)) +
                              '   and PedICl.CodClp = '+ QuotedStr(PedCt2CodClp.Value) +
                              '   and PedICl.CodGru = '+ QuotedStr(PedCt2CodGru.Value) +
                              '   and PedICl.CodSub = '+ QuotedStr(PedCt2CodSub.Value) +
                              '   and PedICl.CodPro = '+ QuotedStr(PedCt2CodPro.Value) ;
                      Open;        

                      PedCt2CodICl.Value := Trim(FieldbyName('CodICl').AsString);
                      
                 end;
              end;   

              CodEmp := PedCtaCodEmp.Value;

              if PedCtaLanEst.Value = 'Sim' then begin

                 if PedCtaCodFil.Value > 0 then CodEmp := PedCtaCodFil.Value;

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstIte.CodEmp,'+
                           '        EstIte.CstIte,'+
                           '        EstIte.VchIte,'+
                           '        EstIte.VreIte,'+
                           '        EstIte.VcpIte,'+
                           '        EstIte.VprIte,'+
                           '        EstIte.VcrIte,'+
                           '        EstIte.VmeIte,'+
                           '        EstIte.VpfIte '+
                           ' From EstIte'+
                           ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                           '   and EstIte.CodClp = '+ QuotedStr(PedCt2CodClp.Value) +
                           '   and EstIte.CodGru = '+ QuotedStr(PedCt2CodGru.Value) +
                           '   and EstIte.CodSub = '+ QuotedStr(PedCt2CodSub.Value) +
                           '   and EstIte.CodPro = '+ QuotedStr(PedCt2CodPro.Value) ;
                   Open;

              end;

              if quSql.FieldbyName('CodEmp').AsInteger > 0 then begin

                 PedCt2CstCt2.Value := quSQL.FieldbyName('CstIte').AsFloat;
                 PedCt2VchCt2.Value := quSQL.FieldbyName('VchIte').AsFloat;
                 PedCt2VreCt2.Value := quSQL.FieldbyName('VreIte').AsFloat;
                 PedCt2VcpCt2.Value := quSQL.FieldbyName('VcpIte').AsFloat;
                 PedCt2VprCt2.Value := quSQL.FieldbyName('VprIte').AsFloat;
                 PedCt2VcrCt2.Value := quSQL.FieldbyName('VcrIte').AsFloat;
                 PedCt2VmeCt2.Value := quSQL.FieldbyName('VmeIte').AsFloat;
                 PedCt2VpfCt2.Value := quSQL.FieldbyName('VpfIte').AsFloat;
                 PedCt2CstCst.Value := quSQL.FieldbyName('CstIte').AsFloat;
                 PedCt2VchCst.Value := quSQL.FieldbyName('VchIte').AsFloat;
                 PedCt2VreCst.Value := quSQL.FieldbyName('VreIte').AsFloat;
                 PedCt2VcpCst.Value := quSQL.FieldbyName('VcpIte').AsFloat;
                 PedCt2VprCst.Value := quSQL.FieldbyName('VprIte').AsFloat;
                 PedCt2VcrCst.Value := quSQL.FieldbyName('VcrIte').AsFloat;
                 PedCt2VmeCst.Value := quSQL.FieldbyName('VmeIte').AsFloat;
                 PedCt2VpfCst.Value := quSQL.FieldbyName('VpfIte').AsFloat;
                 
                 if Trim(PedCtaFlgTab.Value) = 'Ultimo Preco'           then PrecoCusto := quSQL.FieldbyName('CstIte').AsFloat;
                 if Trim(PedCtaFlgTab.Value) = 'Custo Historico'        then PrecoCusto := quSQL.FieldbyName('VchIte').AsFloat;
                 if Trim(PedCtaFlgTab.Value) = 'Custo Ponderado'        then PrecoCusto := quSQL.FieldbyName('VcpIte').AsFloat;
                 if Trim(PedCtaFlgTab.Value) = 'Custo Referencial'      then PrecoCusto := quSQL.FieldbyName('VcrIte').AsFloat;
                 if Trim(PedCtaFlgTab.Value) = 'Custo Historico (G)'    then PrecoCusto := quSQL.FieldbyName('VreIte').AsFloat;
                 if Trim(PedCtaFlgTab.Value) = 'Custo Ponderado (G)'    then PrecoCusto := quSQL.FieldbyName('VprIte').AsFloat;
                 if Trim(PedCtaFlgTab.Value) = 'Media Ponderada (E)'    then PrecoCusto := quSQL.FieldbyName('VmeIte').AsFloat;
                 if Trim(PedCtaFlgTab.Value) = 'Custo da Ultima Compra' then PrecoCusto := quSQL.FieldbyName('VpfIte').AsFloat;

                 if PrecoCusto = 0 then begin

                    if PedCt2CstLan.Value > 0 then PedCt2VcsCt2.Value := PedCt2CstLan.Value;

                    end
                 else
                    begin

                    if PedCt2VcsCt2.Value > 0 then begin

                       if PedParMudRen.Value = 'Sim' then begin
                       
                          if PedCt2VcsCt2.Value <> PrecoCusto then begin

                             if fMsg('Valor de custo atual R$ '+FormatFloat('###,###,##0.0000',PrecoCusto) +' difere do preço informado na cotação R$ '+FormatFloat('###,###,##0.0000',PedCt2VcsCt2.Value) +'. Altera o custo para o valor atual de tabela ?','O') then PedCt2VcsCt2.Value := PrecoCusto;

                          end;

                          end
                       else
                          PedCt2VcsCt2.Value := PrecoCusto;
                          
                       end
                    else
                       PedCt2VcsCt2.Value := PrecoCusto;
                       
                 end;
                    
                 AntVcsCt2 := PedCt2VcsCt2.Value;
                 
                 if (qticms > 1) and (GUfeEmp <> PedCtaUfeCta.Value) then begin

                    ret := 'N';

                    try
                    
                       fmPsqIcm := TfmPsqIcm.Create(Self);

                       with fmPsqIcm.GerIcm,SQL do begin

                            Close;
                            Text := ' Select * From GerIcm'+
                                    ' Where GerIcm.SigUfe = '+ QuotedStr(PedCtaUfeCta.Value);
                            Open;

                       end;

                       fmPsqIcm.ShowModal;

                       ret := fmPsqIcm.ret;

                       PedCt2IcmCt2.Value := fmPsqIcm.Icms;

                    finally

                       FreeAndNil(fmPsqIcm);

                    end;

                    if ret = 'N' then EdCodPro.SetFocus;

                 end;

                 EdQtpCt2.SetFocus;

                 end
              else
                 fmsgErro('Item Informado não Encontrado na Empresa.',EdCodPro);

              end
           else
              fmsgErro('Item informado não localizado.',EdCodPro);

           end
        else
           fMsgErro('Item duplicado !',EdCodPro);

     end;

     end
  else
     fmsgErro('Item informado não localizado.',EdCodPro);
end;

procedure TfmManAt2.SaiCliente;
var
  CodGCl,CodBan : integer;
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
                        '        FinCli.CodVen,'+
                        '        FinCli.NroSuf,'+
                        '        FinCli.UffCli,'+
                        '        FinCli.CodVen,'+
                        '        FinCli.LimCli,'+
                        '        FinCli.CodPfa,'+
                        '        FinCli.TipPfa,'+
                        '        FinCli.CodBan,'+
                        '        FinCli.CodAtd,'+
                        '        FinCli.CodGCl '+
                        ' From FinCli'+
                        ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedCtaCodCli.Value));
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
                        '        FinCli.CodVen,'+
                        '        FinCli.NroSuf,'+
                        '        FinCli.UffCli,'+
                        '        FinCli.CodVen,'+
                        '        FinCli.LimCli,'+
                        '        FinCli.CodPfa,'+
                        '        FinCli.TipPfa,'+
                        '        FinCli.CodBan,'+                        
                        '        FinCli.CodAtd,'+
                        '        FinCli.CodGCl '+
                        ' From FinCli'+
                        ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedCtaCodCli.Value))+
                        '   and FinCli.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));
                Open;

           end;
        end;

        if quSql.FieldbyName('CodCli').AsInteger = PedCtaCodCli.Value then begin

           CodGCl := quSql.FieldbyName('CodGCl').AsInteger;
           CodBan := quSQL.FieldbyName('CodBan').AsInteger;
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

           if CodBan > 0 then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FinBan.NomBan From FinBan Where FinBan.CodBan = '+ QuotedStr(IntToStr(CodBan));
                   Open;

                   pnNomBan.Caption := copy('Forma de pagto: '+Trim(FieldbyName('NomBan').AsString),1,43);

              end;

              end
           else
              pnNomBan.Caption := '';
              
           if PedCtaCodVen.Value > 0 then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FinVen.CodVen,FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedCtaCodVen.Value));
                   Open;

              end;

              if quSQL.FieldbyName('CodVen').AsInteger > 0 then
                 pnApeVen.Caption := quSQL.FieldbyName('ApeVen').AsString
              else
                 begin

                 pnApeVen.Caption := ' ';

                 fmsgErro('Vendedor Informado para o Cliente não Encontrado.',EdCodCli);

              end;
           end;

           if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

              if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then begin

                 if GCodVen_Id > 0 then begin

                    if PedCtaCodVen.Value <> GCodVen_Id then begin

                       PedCtaCodAtd.Value := GCodVen_Id;

                       if PedCtaCodAtd.Value = 0 then fmsgErro('Atendente não Encontrado para a Cotação.',EdCodCli);

                    end;
                 end;
              end;

              if PedCtaCodAtd.Value > 0 then begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedCtaCodAtd.Value));
                      Open;

                      pnApeAtd.Caption := FieldbyName('ApeVen').AsString;

                 end;

                 end
              else
                 pnApeAtd.Caption := ' ';

           end;

           if Trim(PedCtaCodPfa.Value) <> '' then begin

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
                   Text := ' Select EstPfa.DscPfa'+
                           ' From EstPfa '+
                           ' Where EstPfa.TipPfa = '+ QuotedStr(PedCtaTipPfa.Value) +
                           '   and EstPfa.CodPfa = '+ QuotedStr(PedCtaCodPfa.Value) +
                           '   and EstPfa.LocPfa = '+ QuotedStr(LocPfa);
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

           if Trim( PedCtaUfeCta.Value ) <> '' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select GerUfe.SigUfe,GerUfe.DscUfe From GerUfe Where GerUfe.SigUfe = '+ QuotedStr(PedCtaUfeCta.Value);
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

                 if EdCodAtd.Enabled then
                    EdCodAtd.SetFocus
                 else
                    begin

                    if EdCodPfa.Enabled then begin

                       if Trim( CodPfa ) = '' then
                          EdCodPfa.SetFocus
                       else
                          grCt2.SetFocus;

                       end
                    else
                       grCt2.SetFocus;
                       
                 end;
              end;

              end
           else
              fmsgErro('Endereço de faturamento do cliente incompleto. Falta UF.',EdCodCli);

           end
        else
           begin

           pnNomCli.Caption := '';
           pnNomBan.Caption := '';
           pnUfeCta.Caption := '';
           pnApeVen.Caption := '';

           PedCtaNomCli.Clear;

           fmsgErro('Cliente informado não localizado.',EdCodCli);

        end;
     end;

     end
  else
     begin

     pSaida := 'Nao';
     
     pnNomBan.Caption := '';
     
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

procedure TfmManAt2.EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

     EdCodUnd.SetFocus;

  end;
end;

procedure TfmManAt2.EdCodUndExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodGru.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodPro.Focused) and
        (not EdQtpCt2.Focused) and
        (not EdVluCt2.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if Trim(PedCt2CodUnd.Value) <> '' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select EstUnd.NomUnd From EstUnd Where EstUnd.CodUnd = '+ QuotedStr(PedCt2CodUnd.Value);
                Open;

           end;

           if Trim( quSQL.FieldbyName('NomUnd').AsString ) = '' then fmsgErro('Unidade Informada não Encontrada.',EdCodUnd);

           end
        else
           fmsgErro('Unidade Informada não Encontrada.',EdCodUnd);

     end;
  end;
end;

procedure TfmManAt2.EdUfeCtaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

           if EdCodPfa.Enabled then
              EdCodPfa.SetFocus
           else
              grCt2.SetFocus;

        end;

        end
     else
        EdUfeCta.SetFocus;

  end;
end;

procedure TfmManAt2.bPsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';
     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        PedCtaCodVen.Value := fmAuxIni.CodVen;

        pnApeVen.Caption := fmAuxIni.NomVen;

        EdCodVen.Text := IntToStr(PedCtaCodVen.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodVen.SetFocus;

end;

procedure TfmManAt2.EdCodVenExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodCli.Focused) and
        (not EdDteCta.Focused) and
        (not EdCodEmp.Focused) then
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
                 pnApeVen.Caption := quSql.FieldbyName('ApeVen').AsString
              else
                 begin

                 pnApeVen.Caption := '';

                 fmsgErro('Vendedor Informado não Encontrado',EdCodVen);

              end;

              end
           else
              begin

              pnApeVen.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodVen);

           end;

           end
        else
           begin

           pnApeVen.Caption := '';

           fmsgErro('Vendedor Informado não Encontrado',EdCodVen);

        end;
     end;
  end;
end;

procedure TfmManAt2.EdCodVenKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

           pnApeVen.Caption := fmAuxIni.NomVen;

           EdCodVen.Text := IntToStr(PedCtaCodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if CodVen > 0 then begin

        if EdCodAtd.Enabled then
           EdCodAtd.SetFocus
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

           pnApeVen.Caption := fmAuxPsq.NomVen;

           EdCodVen.Text := IntToStr(PedCtaCodVen.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CodVen > 0 then begin

        if EdCodAtd.Enabled then
           EdCodAtd.SetFocus
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

procedure TfmManAt2.FormKeyPress(Sender: TObject; var Key: Char);
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
                              '        EstPro.IdePro '+
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

                 if Trim(fmPsqEs2.CodGru) <> '' then begin

                    if EdCodGru.Enabled then begin

                       PedCt2CodClp.Value := fmPsqEs2.CodClp;
                       PedCt2CodGru.Value := fmPsqEs2.CodGru;
                       PedCt2CodSub.Value := fmPsqEs2.CodSub;
                       PedCt2CodPro.Value := fmPsqEs2.CodPro;

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

procedure TfmManAt2.DsCt2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if PedCt2.State = dsBrowse then begin

     AntVluCt2 := PedCt2VluCt2.Value;
     AntPacCt2 := PedCt2PacCt2.Value;
     AntDscCt2 := PedCt2DscCt2.Value;
     AntTotRen := PedCt2TotRen.Value;

  end;

  pnNomCli.Caption := PedCtaNomCli.Value;
  pnUfeCta.Caption := PedCtaUfeCta.Value;  
  pnDesCt2.Caption := PedCt2DesCt2.Value;
  pnObsCt2.Caption := PedCt2ObsCt2.Value;

  pnClsIpi.Caption := Trim(PedCt2ClsIpi.Value);
  pnTrbSub.Caption := Trim(PedCt2TrbSub.Value);
  pnRefCt2.Caption := Trim(PedCt2RefCt2.Value);

  pnId_PedCta.Caption := IntToStr(PedCtaId_PedCta.Value);

  pnTotIte.Caption := FormatFloat('###,###,##0.00',PedCtaTotIte.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00',PedCtaTotIpi.Value);
  pnTotSub.Caption := FormatFloat('###,###,##0.00',PedCtaTotSub.Value);
  pnTotGer.Caption := FormatFloat('###,###,##0.00',PedCtaTotGer.Value);
  pnTotRen.Caption := FormatFloat('###,###,##0.00',PedCtaTotRen.Value);
  pnTotMk2.Caption := FormatFloat('###,###,##0.00',PedCt2TotRen.Value);

  pnVcsCt2.Caption := FormatFloat('###,###,##0.0000',PedCt2VcsCt2.Value);

  if PedCtaFlgOco.Value = 'Sim' then
     pnFlgOco.Color := clRed
  else
     pnFlgOco.Color := clLime;

  if PedCt2.State = dsInsert then
     pnNroCt2.Caption := FNumZeros(IntToStr(PedCt2NroCt2.Value),3)+'/'+FNumZeros(IntToStr(PedCtaQtiCt2.Value + 1),3)
  else
     pnNroCt2.Caption := FNumZeros(IntToStr(PedCt2NroCt2.Value),3)+'/'+FNumZeros(IntToStr(PedCtaQtiCt2.Value),3);

end;

procedure TfmManAt2.EdVluCt2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Verificar 3 Últimas Vendas para o Item}

     if PedCtaCodCli.Value > 0 then begin

        try

           fmPsqUve := TfmPsqUve.Create(Self);

           fmPsqUve.Panel3.Caption := ' '+PedCt2CodClp.Value+ '-' +PedCt2CodGru.Value+ '.' +PedCt2CodSub.Value+ '.' +PedCt2CodPro.Value+ ' - ' +PedCt2DesCt2.Value;

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

procedure TfmManAt2.EdCodEmpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = 'Sim' then
     LbText.Caption := 'F1-Iniciais F4-Estoque F11-Ocorrências'
  else
     LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManAt2.EdDteCtaEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = 'Sim' then
     LbText.Caption := 'F4-Estoque F11-Ocorrências'
  else
     LbText.Caption := 'F4-Estoque';

end;

procedure TfmManAt2.EdCodCliEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = 'Sim' then
     LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque F11-Ocorrências'
  else
     LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManAt2.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = 'Sim' then
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F11-Ocorrências'
  else
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref';

end;

procedure TfmManAt2.EdCodProEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = 'Sim' then
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F11-Ocorrências'
  else
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref';

end;

procedure TfmManAt2.EdQtpCt2Enter(Sender: TObject);
var
  CodEmp : integer;
begin
  inherited;

  sEntr := 'N';

  if not pnEstoque.visible then pnEstoque.Visible := True;

  if PedCtaFlgOco.Value = 'Sim' then begin

     if PedParFlgCot.Value = 'Sim' then
        LbText.Caption := 'F4-Estoque F5-Reservas F6-Cotações F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências';

     end
  else
     begin

     if PedParFlgCot.Value = 'Sim' then
        LbText.Caption := 'F4-Estoque F5-Reservas F6-Cotações F7-Comprado'
     else
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado';
        
  end;
  
  if PedCt2CodGru.Value <> '999' then begin

     CodEmp := PedCtaCodEmp.Value;

     if PedCtaLanEst.Value = 'Sim' then begin

        if PedCtaCodFil.Value > 0 then CodEmp := PedCtaCodFil.Value;
        
     end;

     with quSql,SQL do begin

          Close;
          Text := ' Select EstPro.QtdEmb'+
                  ' From EstPro '+
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

procedure TfmManAt2.EdVluCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = 'Sim' then begin

     if PedParFlgCot.Value = 'Sim' then
        LbText.Caption := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F6-Cotações F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências';
        
     end
  else
     begin

     if PedParFlgCot.Value = 'Sim' then
        LbText.Caption := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F6-Cotações F7-Comprado'
     else
        LbText.Caption := 'F1-Últimos Preços Praticados F4-Estoque F5-Reservas F7-Comprado';

  end;
end;

procedure TfmManAt2.EdCodUndEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = 'Sim' then
     LbText.Caption := 'F1-Iniciais F11-Ocorrências'
  else
     LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManAt2.EdIpiCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = 'Sim' then begin

     if PedParFlgCot.Value = 'Sim' then
        LbText.Caption := 'F4-Estoque F5-Reservas F6-Cotações F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências';
        
     end
  else
     begin

     if PedParFlgCot.Value = 'Sim' then
        LbText.Caption := 'F4-Estoque F5-Reservas F6-Cotações F7-Comprado'
     else
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado';

  end;      
end;

procedure TfmManAt2.EdDscCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = 'Sim' then begin

     if PedParFlgCot.Value = 'Sim' then
        LbText.Caption := 'F4-Estoque F5-Reservas F6-Cotações F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências';

     end   
  else
     begin

     if PedParFlgCot.Value = 'Sim' then
        LbText.Caption := 'F4-Estoque F5-Reservas F6-Cotações F7-Comprado'
     else
        LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado';

  end;      
end;

procedure TfmManAt2.grCt2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedCtaFlgOco.Value = 'Sim' then begin

     if PedParFlgCot.Value = 'Sim' then
        LbText.Caption := 'D-Descrição F4-Estoque F5-Reservas F6-Cotações F7-Comprado F11-Ocorrências'
     else
        LbText.Caption := 'D-Descrição F4-Estoque F5-Reservas F7-Comprado F11-Ocorrências';

     end
  else
     begin

     if PedParFlgCot.Value = 'Sim' then
        LbText.Caption := 'D-Descrição F4-Estoque F5-Reservas F6-Cotações F7-Comprado'
     else
        LbText.Caption := 'D-Descrição F4-Estoque F5-Reservas F7-Comprado';

  end;      
end;

procedure TfmManAt2.EdTotMk2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdVcsCt2.Focused) and
        (not EdDscCt2.Focused) and
        (not EdPacCt2.Focused) and
        (not EdCodUnd.Focused) and
        (not EdVluCt2.Focused) and
        (not EdQtpCt2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedCt2.State <> dsBrowse then begin

           if PedCt2TotRen.Value <> AntTotRen then begin

              if PedCt2TotRen.Value > 0 then PedCt2FlgRen.Value := 'Sim';

              if PedCt2VcsCt2.Value > 0 then begin

                 PedCt2DscCt2.Value := 0;
                 PedCt2VdsCt2.Value := 0;
                 PedCt2PacCt2.Value := 0;
                 PedCt2VacCt2.Value := 0;
                 PedCt2TipDsc.Value := 'Valor';
                 PedCt2TipAcr.Value := 'Valor';

                 PedCt2VlqCt2.Value := fRound(PedCt2VcsCt2.Value + ((PedCt2TotRen.Value * PedCt2VcsCt2.Value)/100),4);

                 if PedCt2DsrCt2.Value > 0 then
                    PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + (PedCt2DsrCt2.Value * PedCt2VlqCt2.Value)/100,4);
              
                 if PedCt2ComCli.Value > 0 then
                    PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + (PedCt2ComCli.Value * PedCt2VlqCt2.Value)/100,4);

                 if PedCt2VluCt2.Value > PedCt2VlqCt2.Value then begin

                    PedCt2VdsCt2.Value := fRound(PedCt2VluCt2.Value - PedCt2VlqCt2.Value,4);
                    PedCt2DscCt2.Value := fRound((100 * PedCt2VdsCt2.Value)/PedCt2VlqCt2.Value,2);

                    end
                 else
                    begin

                    if PedCt2VluCt2.Value < PedCt2VlqCt2.Value then begin

                       PedCt2VacCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VluCt2.Value,4);

                       PedCt2PacCt2.Value := fRound((100 * PedCt2VacCt2.Value)/PedCt2VluCt2.Value,2);

                    end;
                 end;

                 PedCt2ValCli.Value := 0;
                 PedCt2TotCli.Value := 0;

                 if PedCt2ComCli.Value > 0 then begin

                    PedCt2ValCli.Value := fRound((PedCt2ComCli.Value * PedCt2VlqCt2.Value)/100,4);

                    PedCt2TotCli.Value := fRound(PedCt2ValCli.Value * PedCt2QtpCt2.Value,2);

                 end;

                 if PedCt2PdpCt2.Value > 0 then begin

                    PedCt2VdpCt2.Value := fRound((PedCt2PdpCt2.Value * PedCt2VlqCt2.Value)/100,4);

                    PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdpCt2.Value,4);

                 end;

                 if PedCt2PapCt2.Value > 0 then begin

                    PedCt2VapCt2.Value := fRound((PedCt2PapCt2.Value * PedCt2VlqCt2.Value)/100,4);

                    PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VapCt2.Value,4);

                 end;

                 if PedCt2DsrCt2.Value > 0 then begin

                    PedCt2VdrCt2.Value := fRound((PedCt2DsrCt2.Value * PedCt2VlqCt2.Value)/100,4);

                    PedCt2TotDsr.Value := fRound(PedCt2VdrCt2.Value * PedCt2QtpCt2.Value,2);

                    PedCt2CodSt2.Value := '40';

                 end;

                 PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value,2);
                 PedCt2TotVen.Value := fRound(PedCt2QtpCt2.Value * PedCt2VlqCt2.Value,2);
                 PedCt2TotCst.Value := fRound(PedCt2QtpCt2.Value * PedCt2VcsCt2.Value,2);

                 PedCt2TotGe2.Value := fRound(PedCt2TotCt2.Value - PedCt2TotDsr.Value,2);

                 if PedCt2TotCst.Value > 0 then
                    PedCt2TotRen.Value := fRound(((PedCt2TotGe2.Value - (PedCt2TotCst.Value + PedCt2TotCli.Value)) * 100)/(PedCt2TotCst.Value + PedCt2TotCli.Value),2)
                 else
                    PedCt2TotRen.Value := 0;

              end;
              
              AntTotRen := PedCt2TotRen.Value;

           end;
        end;
     end;
  end;
end;

procedure TfmManAt2.EdPacCt2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdVluCt2.Focused) and
        (not EdQtpCt2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedCt2.State <> dsBrowse then begin

           if PedCt2PacCt2.Value <> AntPacCt2 then begin

              PedCt2TipAcr.Value := 'Percentual';
              
              if PedCt2PacCt2.Value = 0 then PedCt2VacCt2.Value := 0;

              PedCt2VlqCt2.Value := PedCt2VluCt2.Value;

              if PedCt2DscCt2.Value > 0 then begin

                 PedCt2VdsCt2.Value := fRound((PedCt2DscCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdsCt2.Value,4);

                 end
              else
                 PedCt2VdsCt2.Value := 0;

              if PedCt2PacCt2.Value > 0 then begin

                 PedCt2VacCt2.Value := fRound((PedCt2PacCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VacCt2.Value,4);

                 end
              else
                 PedCt2VacCt2.Value := 0;

              PedCt2ValCli.Value := 0;
              PedCt2TotCli.Value := 0;

              if PedCt2ComCli.Value > 0 then begin

                 PedCt2ValCli.Value := fRound((PedCt2ComCli.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2TotCli.Value := fRound(PedCt2ValCli.Value * PedCt2QtpCt2.Value,2);

              end;

              if PedCt2PdpCt2.Value > 0 then begin

                 PedCt2VdpCt2.Value := fRound((PedCt2PdpCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value - PedCt2VdpCt2.Value,4);

              end;

              if PedCt2PapCt2.Value > 0 then begin

                 PedCt2VapCt2.Value := fRound((PedCt2PapCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2VlqCt2.Value := fRound(PedCt2VlqCt2.Value + PedCt2VapCt2.Value,4);

              end;

              AntPacCt2 := PedCt2PacCt2.Value;

              PedCt2TotCt2.Value := fRound(PedCt2VlqCt2.Value * PedCt2QtpCt2.Value,2);
              PedCt2TotVen.Value := fRound(PedCt2QtpCt2.Value * PedCt2VlqCt2.Value,2);
              PedCt2TotCst.Value := fRound(PedCt2QtpCt2.Value * PedCt2VcsCt2.Value,2);

              if PedCt2DsrCt2.Value > 0 then begin

                 PedCt2VdrCt2.Value := fRound((PedCt2DsrCt2.Value * PedCt2VlqCt2.Value)/100,4);

                 PedCt2TotDsr.Value := fRound(PedCt2VdrCt2.Value * PedCt2QtpCt2.Value,2);

                 PedCt2CodSt2.Value := '40';

              end;

              PedCt2TotGe2.Value := fRound(PedCt2TotCt2.Value - PedCt2TotDsr.Value,2);

              if PedCt2TotCst.Value > 0 then
                 PedCt2TotRen.Value := fRound(((PedCt2TotGe2.Value - (PedCt2TotCst.Value + PedCt2TotCli.Value)) * 100)/(PedCt2TotCst.Value + PedCt2TotCli.Value),2)
              else
                 PedCt2TotRen.Value := 0;

              PedCt2FlgRen.Value := 'Nao';

              AntTotRen := PedCt2TotRen.Value;

           end;
        end;
     end;
  end;
end;

procedure TfmManAt2.bPsqAtdClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Atendentes';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodAtd > 0 then begin

        PedCtaCodAtd.Value := fmAuxIni.CodAtd;

        pnApeAtd.Caption := fmAuxIni.NomAtd;

        EdCodAtd.Text := IntToStr(PedCtaCodAtd.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodAtd.SetFocus;

end;

procedure TfmManAt2.EdCodAtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Atendentes';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodAtd > 0 then begin

           PedCtaCodAtd.Value := fmAuxIni.CodAtd;

           pnApeAtd.Caption := fmAuxIni.NomAtd;

           EdCodAtd.Text := IntToStr(PedCtaCodAtd.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
     
     if PedCtaCodAtd.Value > 0 then begin

        if EdCodPfa.Enabled then
           EdCodPfa.SetFocus
        else
           EdCodAtd.SetFocus;
           
     end;
  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'Atendentes';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodAtd > 0 then begin

           PedCtaCodAtd.Value := fmAuxPsq.CodAtd;

           pnApeAtd.Caption := fmAuxPsq.NomAtd;

           EdCodAtd.Text := IntToStr(PedCtaCodAtd.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedCtaCodAtd.Value > 0 then begin

        if EdCodPfa.Enabled then
           EdCodPfa.SetFocus
        else
           EdCodAtd.SetFocus;
           
     end;
  end;
end;

procedure TfmManAt2.EdCodAtdExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodVen.Focused) and
        (not EdCodCli.Focused) and
        (not EdDteCta.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedCtaCodAtd.Value > 0 then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select FinAtd.ApeAtd'+
                        ' From FinAtd'+
                        ' Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedCtaCodAtd.Value));
                Open;

           end;

           if Trim( quSql.FieldbyName('ApeAtd').AsString ) <> '' then
              pnApeAtd.Caption := Trim(quSql.FieldbyName('ApeAtd').AsString)
           else
              begin

              pnApeAtd.Caption := '';

              fmsgErro('Atendente Informado não Encontrado.',EdCodAtd);

           end;

           end
        else
           pnApeAtd.Caption := '';

     end;
  end;
end;

procedure TfmManAt2.EdVcsCt2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDscCt2.Focused) and
        (not EdPacCt2.Focused) and
        (not EdCodUnd.Focused) and
        (not EdVluCt2.Focused) and
        (not EdQtpCt2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedCt2.State <> dsBrowse then begin

           if PedCt2VcsCt2.Value <> AntVcsCt2 then begin

              PedCt2TotCst.Value := fRound(PedCt2QtpCt2.Value * PedCt2VcsCt2.Value,2);

              if PedCt2TotCst.Value > 0 then
                 PedCt2TotRen.Value := fRound(((PedCt2TotGe2.Value - (PedCt2TotCst.Value + PedCt2TotCli.Value)) * 100)/(PedCt2TotCst.Value + PedCt2TotCli.Value),2)
              else
                 PedCt2TotRen.Value := 0;

              AntVcsCt2 := PedCt2VcsCt2.Value;

           end;
        end;
     end;
  end;   
end;

end.
