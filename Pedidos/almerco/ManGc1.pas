unit ManGc1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, AlignEdit, ComCtrls, hNavigator, Buttons,
  Mask, hEdits, FlEdit, Db, DBTables, Wwquery, Wwdatsrc, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, wwdbdatetimepicker, wwdblook, DBCtrls, DBFlEdit, wwriched,
  jpeg, wwdbedit, Wwdotdot, Wwdbcomb, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxfCheckBox, Menus, dxDBEdtr, RDprint, dxDBColorDateEdit,
  dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManGc1 = class(TfmPadrao)
    DsGer: TwwDataSource;
    DsGr2: TwwDataSource;
    UpGer: TUpdateSQL;
    UpGr2: TUpdateSQL;
    quSql: TwwQuery;
    PaintBox: TPaintBox;
    LbText: TLabel;
    Label9: TLabel;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    Label29: TLabel;
    EdId_PedGer: TdxDBColorEdit;
    pnId_PedGer: TPanel;
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
    pnUfeGer: TPanel;
    EdUfeGer: TdxDBColorEdit;
    EdDteGer: TdxDBColorDateEdit;
    Label03: TLabel;
    pnTotRen: TPanel;
    EdRenPed: TdxDBColorCurrencyEdit;
    Label33: TLabel;
    Label3: TLabel;
    EdDscReg: TdxDBColorCurrencyEdit;
    grLabel1: TdxDBGraphicEdit;
    PedGer: TwwQuery;
    PedGr2: TwwQuery;
    PedGr2CODGRU: TStringField;
    PedGr2CODSUB: TStringField;
    PedGr2CODPRO: TStringField;
    PedGr2CODUND: TStringField;
    Panel2: TPanel;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpGr2: TdxDBColorCurrencyEdit;
    EdVluGr2: TdxDBColorCurrencyEdit;
    EdIcmGr2: TdxDBColorCurrencyEdit;
    EdDscGr2: TdxDBColorCurrencyEdit;
    EdCodUnd: TdxDBColorEdit;
    EdVlqGr2: TdxDBColorCurrencyEdit;
    EdTotGr2: TdxDBColorCurrencyEdit;
    grGr21: TdxDBGraphicEdit;
    grGr2: ThGrid;
    Label53: TLabel;
    PedGr2QTPGR2: TFloatField;
    PedGr2VLUGR2: TFloatField;
    PedGr2VLQGR2: TFloatField;
    PedGr2DSCGR2: TFloatField;
    PedGr2ICMGR2: TFloatField;
    PedGr2TOTGR2: TFloatField;
    Label1: TLabel;
    EdPedCli: TdxDBColorEdit;
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
    Label6: TLabel;
    Label51: TLabel;
    Label26: TLabel;
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
    bpsqVen: TSpeedButton;
    PedGerID_PEDGER: TIntegerField;
    PedGerCODEMP: TIntegerField;
    PedGerDTEGER: TDateTimeField;
    PedGerHREGER: TStringField;
    PedGerCODCLI: TIntegerField;
    PedGerCODVEN: TIntegerField;
    PedGerCODPFA: TStringField;
    PedGerTIPPFA: TStringField;
    PedGerPEDCLI: TStringField;
    PedGerUFEGER: TStringField;
    PedGerBASIPI: TFloatField;
    PedGerTOTIPI: TFloatField;
    PedGerBASICM: TFloatField;
    PedGerTOTICM: TFloatField;
    PedGerBASSUB: TFloatField;
    PedGerTOTSUB: TFloatField;
    PedGerTOTCST: TFloatField;
    PedGerTOTVEN: TFloatField;
    PedGerTOTITE: TFloatField;
    PedGerTOTREN: TFloatField;
    PedGerTOTGER: TFloatField;
    PedGerDSCREG: TFloatField;
    PedGerMEDDSC: TFloatField;
    PedGerMEDACR: TFloatField;
    PedGerTOTDSC: TFloatField;
    PedGerTOTDSR: TFloatField;
    PedGerTOTACR: TFloatField;
    PedGerCODUSU: TIntegerField;
    PedGerCODFIL: TIntegerField;
    PedGerCODTCL: TIntegerField;
    PedGerLANEST: TStringField;
    PedGerFLGTAB: TStringField;
    PedGerFLGCTB: TStringField;
    PedGerCONSUM: TStringField;
    PedGerCODIPI: TStringField;
    PedGerTIPIPI: TStringField;
    PedGerTRBIPI: TStringField;
    PedGerREDIPI: TFloatField;
    PedGerBSCIPI: TFloatField;
    PedGerCODICM: TStringField;
    PedGerTIPICM: TStringField;
    PedGerTRBICM: TStringField;
    PedGerREDICM: TFloatField;
    PedGerBSCICM: TFloatField;
    PedGerINCREV: TFloatField;
    PedGerINCFIN: TFloatField;
    PedGerDTEDEL: TDateTimeField;
    PedGerHREDEL: TStringField;
    PedGerUSUDEL: TIntegerField;
    PedGerCODCFO: TStringField;
    PedGerSEQGER: TStringField;
    PedGerSITGER: TStringField;
    PedGerCLITAB: TStringField;
    PedGerNOMCLI: TStringField;
    PedGerAPEVEN: TStringField;
    PedGr2ID_PEDGR2: TIntegerField;
    PedGr2ID_PEDGER: TIntegerField;
    PedGr2CODEIT: TIntegerField;
    PedGr2CODCLP: TStringField;
    PedGr2CODTAM: TStringField;
    PedGr2CODCOR: TStringField;
    PedGr2DESGR2: TStringField;
    PedGr2OBSGR2: TStringField;
    PedGr2CODST1: TStringField;
    PedGr2CODST2: TStringField;
    PedGr2TABPRC: TIntegerField;
    PedGr2QTIGR3: TIntegerField;
    PedGr2QTSGR2: TFloatField;
    PedGr2QTLGR2: TFloatField;
    PedGr2SLDGR2: TFloatField;
    PedGr2VCHGR2: TFloatField;
    PedGr2VREGR2: TFloatField;
    PedGr2VCHCST: TFloatField;
    PedGr2VRECST: TFloatField;
    PedGr2VCSGR2: TFloatField;
    PedGr2VDSGR2: TFloatField;
    PedGr2DSRGR2: TFloatField;
    PedGr2VDRGR2: TFloatField;
    PedGr2PACGR2: TFloatField;
    PedGr2VACGR2: TFloatField;
    PedGr2IPIGR2: TFloatField;
    PedGr2CLSIPI: TStringField;
    PedGr2TOTVEN: TFloatField;
    PedGr2TOTCST: TFloatField;
    PedGr2BASIPI: TFloatField;
    PedGr2TOTIPI: TFloatField;
    PedGr2BASICM: TFloatField;
    PedGr2TOTICM: TFloatField;
    PedGr2BASSUB: TFloatField;
    PedGr2TOTSUB: TFloatField;
    PedGr2TOTGE2: TFloatField;
    PedGr2TOTREN: TFloatField;
    PedGr2TOTDSC: TFloatField;
    PedGr2TOTDSR: TFloatField;
    PedGr2TOTACR: TFloatField;
    PedGr2CODSTR: TStringField;
    PedGr2TIPSTR: TStringField;
    PedGr2REGIPI: TStringField;
    PedGr2TIPIPI: TStringField;
    PedGr2TRBIPI: TStringField;
    PedGr2REDIPI: TFloatField;
    PedGr2BSCIPI: TFloatField;
    PedGr2REGICM: TStringField;
    PedGr2TIPICM: TStringField;
    PedGr2TRBICM: TStringField;
    PedGr2REDICM: TFloatField;
    PedGr2BSCICM: TFloatField;
    PedGr2INCREV: TFloatField;
    PedGr2INCFIN: TFloatField;
    PedGr2FLGRES: TStringField;
    PedGr2FLGDUP: TStringField;
    PedGr2CODCFO: TStringField;
    PedGr2TRBSUB: TStringField;
    PedGr2ICMSUB: TFloatField;
    PedGr2MRGSUB: TFloatField;
    PedGr2BASESB: TFloatField;
    PedGr2FLGATU: TStringField;
    PedGr2NROGR2: TIntegerField;
    PedGr2TIPDSC: TStringField;
    PedGr2TIPACR: TStringField;
    Label04: TLabel;
    EdVcsGr2: TdxDBColorCurrencyEdit;
    pnDesGr2: TPanel;
    EdDesGr2: TdxDBColorEdit;
    pnObsGr2: TPanel;
    EdObsGr2: TdxDBColorEdit;
    Label12: TLabel;
    pnNroGr2: TPanel;
    EdNroGr2: TdxDBColorCurrencyEdit;
    EdTotIte: TdxDBColorCurrencyEdit;
    pnTotIte: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    EdTotSub: TdxDBColorCurrencyEdit;
    pnTotSub: TPanel;
    EdTotGer: TdxDBColorCurrencyEdit;
    pnTotGer: TPanel;
    Label28: TLabel;
    Label27: TLabel;
    Label35: TLabel;
    Label8: TLabel;
    pnVcsGr2: TPanel;
    PedGerOB1GER: TStringField;
    PedGerOB2GER: TStringField;
    PedGerOB3GER: TStringField;
    PedGerOB4GER: TStringField;
    PedGerOB5GER: TStringField;
    PedGerOB6GER: TStringField;
    PedGerOB7GER: TStringField;
    PedGerOB8GER: TStringField;
    PedGerOB1DEL: TStringField;
    PedGerOB2DEL: TStringField;
    PedGerOB3DEL: TStringField;
    PedGerQTIGR2: TIntegerField;
    PedGr2QTIGR4: TIntegerField;
    PedGr2ID_PEDICL: TIntegerField;
    PedGr2FLGREN: TStringField;
    PedGr2CSTLAN: TFloatField;
    EdPacGr2: TdxDBColorCurrencyEdit;
    Label57: TLabel;
    EdTotRen: TdxDBColorCurrencyEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label24: TLabel;
    Label62: TLabel;
    PedGerCODATD: TIntegerField;
    EdIpiGr2: TdxDBColorCurrencyEdit;
    Label41: TLabel;
    EdCodAtd: TdxDBColorEdit;
    bPsqAtd: TSpeedButton;
    pnApeAtd: TPanel;
    EdApeAtd: TdxDBColorEdit;
    PedPar: TwwQuery;
    PedParEXIREN: TStringField;
    PedParTIPATD: TStringField;
    PedParUSADEC: TStringField;
    PedParFLGCOT: TStringField;
    PedGr2CL1GR2: TStringField;
    PedGr2CL2GR2: TStringField;
    PedGr2CL3GR2: TStringField;
    Label4: TLabel;
    EdCl1Gr2: TdxDBColorEdit;
    Label34: TLabel;
    EdCl2Gr2: TdxDBColorEdit;
    EdCl3Gr2: TdxDBColorEdit;
    PedGerQTIGR4: TIntegerField;
    Label46: TLabel;
    Label47: TLabel;
    Label50: TLabel;
    EdComCli: TdxDBColorCurrencyEdit;
    PedGerCOMCLI: TFloatField;
    PedGerTOTCLI: TFloatField;
    PedGr2COMCLI: TFloatField;
    PedGr2VALCLI: TFloatField;
    PedGr2TOTCLI: TFloatField;
    PedGr2CSTGR2: TFloatField;
    PedGr2VCPGR2: TFloatField;
    PedGr2VPRGR2: TFloatField;
    PedGr2VCRGR2: TFloatField;
    PedGr2VMEGR2: TFloatField;
    PedGr2VPFGR2: TFloatField;
    PedGr2CSTCST: TFloatField;
    PedGr2VCPCST: TFloatField;
    PedGr2VPRCST: TFloatField;
    PedGr2VCRCST: TFloatField;
    PedGr2VMECST: TFloatField;
    PedGr2VPFCST: TFloatField;
    PedGerID_PEDCTA: TIntegerField;
    PedGerPRCCTA: TStringField;
    PedGr2ID_PEDCT2: TIntegerField;
    EdMrgSub: TdxDBColorCurrencyEdit;
    PedGr2TOTPIS: TFloatField;
    PedGr2TOTCOF: TFloatField;
    PedGr2CODICL: TStringField;
    Label58: TLabel;
    PedGerTRBPIS: TStringField;
    PedGerTRBCOF: TStringField;
    PedGerPERPIS: TFloatField;
    PedGerTOTPIS: TFloatField;
    PedGerPERCOF: TFloatField;
    PedGerTOTCOF: TFloatField;
    PedGerFLGATU: TStringField;
    Label25: TLabel;
    pnTrbSub: TPanel;
    EdTrbSub: TdxDBColorEdit;
    Label31: TLabel;
    EdCodICl: TdxDBColorEdit;
    Label75: TLabel;
    EdRefCt2: TdxDBColorEdit;
    pnRefGr2: TPanel;
    PedGr2REFGR2: TStringField;
    PedParFLGDUP: TStringField;
    procedure SaiGrupo;
    procedure SaiCliente;
    procedure SaiProduto;
    procedure SaiSubGrupo;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PedGerNewRecord(DataSet: TDataSet);
    procedure PedGr2NewRecord(DataSet: TDataSet);
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
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grGr2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DsGr2DataChange(Sender: TObject; Field: TField);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure EdCodProExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdQtpGr2Exit(Sender: TObject);
    procedure EdVluGr2Exit(Sender: TObject);
    procedure EdDscGr2Exit(Sender: TObject);
    procedure EdPedCliExit(Sender: TObject);
    procedure bpsqVenClick(Sender: TObject);
    procedure EdTotRenExit(Sender: TObject);
    procedure EdPedCliEnter(Sender: TObject);
    procedure EdCodEmpEnter(Sender: TObject);
    procedure EdCodCliEnter(Sender: TObject);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdCodProEnter(Sender: TObject);
    procedure EdQtpGr2Enter(Sender: TObject);
    procedure EdCodGruExit(Sender: TObject);
    procedure grGr2Enter(Sender: TObject);
    procedure EdVluGr2Enter(Sender: TObject);
    procedure EdPacGr2Exit(Sender: TObject);
    procedure bPsqAtdClick(Sender: TObject);
    procedure EdCodAtdExit(Sender: TObject);
    procedure EdCodAtdKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdCodVenExit(Sender: TObject);
    procedure EdCodVenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}
    sEnc,sEntr,Finalizar : string;
    Id_PedGer,Qticms : integer;
    AntVluGr2,AntPacGr2,AntDscGr2,AntTotRen : real;
  end;

var
  fmManGc1: TfmManGc1;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, BbMensag, ManGDB, ManGco, PsqEmp, AuxPsq,
     PsqAtd, PsqVen, PsqTpe, PsqPfa, PsqGru, PsqSub, PsqPro, PsqRef, PsqEst,
     PsqRej, PsqOco, PsqTab, ManPe1, PsqRes, PsqObs, PsqIcm, AuxIni, ManLge,
     PsqCmp, PsqCot, ManGc2;

{$R *.DFM}

procedure TfmManGc1.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  Finalizar := 'N';

end;

procedure TfmManGc1.FormShow(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select PedPar.UsaDec From PedPar';
       Open;
       
  end;

  if quSQL.FieldbyName('UsaDec').AsString = 'Nao' then begin

     PedGr2QtpGr2.DisplayFormat := '###,###,##0';

     EdQtpGr2.DecimalPlaces := 0;

  end;
  
  if Trim(PedParTipAtd.Value) = 'Vendedor' then bPsqAtd.Visible := False;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if PedParExiRen.Value <> 'Sim' then begin

        Label03.Visible := False;
        Label04.Visible := False;
        Label33.Visible := False;
        Label57.Visible := False;

        pnTotRen.Visible := False;
        pnVcsGr2.Visible := False;
        EdRenPed.Visible := False;
        EdVcsGr2.Visible := False;
        EdTotRen.Visible := False;

     end;
  end;

  if fmManGco.Id_PedGer > 0 then begin

     sEntr := 'S';

     PedGer.Close;
     PedGer.Params[0].AsInteger := fmManGco.Id_PedGer;
     PedGer.Open;

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(PedGerCodEmp.Value));
          Open;

          pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedGerCodVen.Value));
          Open;

          pnApeVen.Caption := FieldbyName('ApeVen').AsString;

     end;

     if PedGerCodAtd.Value > 0 then begin

        if Trim(PedParTipAtd.Value) = 'Atendente' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedGerCodAtd.Value));
                Open;

                pnApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

           end;

           end
        else
           begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedGerCodAtd.Value));
                Open;

                pnApeAtd.Caption := FieldbyName('ApeVen').AsString;

           end;
        end;
     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa From EstPfa Where EstPfa.TipPfa = '+ QuotedStr('Saida') +' and EstPfa.CodPfa = '+ QuotedStr(PedGerCodPfa.Value);
          Open;

          pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli,'+
                  '        FinCli.UffCli '+
                  ' From FinCli'+
                  ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedGerCodCli.Value));
          Open;

          pnNomCli.Caption := FieldbyName('NomCli').AsString;
          pnUfeGer.Caption := FieldbyName('UffCli').AsString;

     end;

     qticms := 1;

     if GUfeEmp <> PedGerUfeGer.Value then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg from GerIcm Where GerIcm.SigUfe = '+ QuotedStr(PedGerUfeGer.Value);
             Open;

             qticms := FieldbyName('QtdReg').AsInteger;

        end;
     end;

     if (Trim(PedGerSitGer.Value) <> 'Rejeitado') and
        (Trim(PedGerSitGer.Value) <> 'Nao Concluido') and
        (Trim(PedGerSitGer.Value) <> 'Processo de Alteracao') then
        sEnc := 'S'
     else
        begin

        bPsqEmp.Enabled := False;
        bPsqCli.Enabled := False;
        bPsqVen.Enabled := False;
        bPsqAtd.Enabled := False;
        bPsqPfa.Enabled := False;

        PedGer.Edit;

        EdPedCli.Enabled := True;
        EdDteGer.Enabled := True;
        EdComCli.Enabled := True;

        EdPedCli.Font.Style := [];
        EdDteGer.Font.Style := [];
        EdComCli.Font.Style := [];

        EdDteGer.Date := PedGerDteGer.Value;

        EdPedCli.SetFocus;

     end;

     end
  else
     begin

     sEntr := 'N';

     LbText.Caption := '';

     PedGer.Insert;

     EdPedCli.SetFocus;

  end;
end;

procedure TfmManGc1.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManGc1.PedGerNewRecord(DataSet: TDataSet);
begin
  inherited;

  PedGer.DisableControls;

  PedGerId_PedGer.Value := 0;

  PedGerQtiGr2.Value := 0;
  PedGerQtiGr4.Value := 0;
  PedGerTotGer.Value := 0;
  PedGerBasIcm.Value := 0;
  PedGerTotIcm.Value := 0;
  PedGerBasIpi.Value := 0;
  PedGerTotIpi.Value := 0;
  PedGerTotCst.Value := 0;
  PedGerTotRen.Value := 0;
  PedGerTotVen.Value := 0;
  PedGerComCli.Value := 0;
  PedGerTotCli.Value := 0;
  PedGerTotGer.Value := 0;
  PedGerTotDsc.Value := 0;
  PedGerTotDsr.Value := 0;
  PedGerTotAcr.Value := 0;
  PedGerDscReg.Value := 0;
  PedGerFlgAtu.Value := ' ';
  PedGerDteGer.Value := Date;
  PedGerTipPfa.Value := 'Saida';
  PedGerCodEmp.Value := GEmp_Id;
  PedGerSitGer.Value := 'Nao Concluido';
  PedGerHreGer.Value := TimeToStr(Time);

  if GCodVen_Id > 0 then begin

     pnApeVen.Caption := GNomVen_Id;

     EdCodVen.Text := IntToStr(GCodVen_Id);

     PedGerCodVen.Value := GCodVen_Id;

  end;

  if Trim(PedParTipAtd.Value) = 'Atendente' then begin

     if GCodAtd_Id > 0 then PedGerCodAtd.Value := GCodAtd_Id;

  end;

  PedGer.EnableControls;

  EdDteGer.Date := Date;

  if GEmp_Id > 0 then EdCodEmp.Text := IntToStr(GEmp_Id);

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerEmp.ApeEmp'+
               ' From GerEmp'+
               ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(PedGerCodEmp.Value));
       Open;

       pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinCli.NomCli,'+
               '        FinCli.UffCli '+
               ' From FinCli'+
               ' Where FinCli.CodCli = :CodCli';

       with Params do begin

            Params[0].AsInteger := PedGerCodCli.Value;

       end;

       Open;

       pnNomCli.Caption := FieldbyName('NomCli').AsString;
       pnUfeGer.Caption := FieldbyName('UffCli').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinVen.ApeVen'+
               ' From FinVen'+
               ' Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedGerCodVen.Value));
       Open;

       pnApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  if Trim(PedParTipAtd.Value) = 'Atendente' then begin

     if GCodAtd_Id > 0 then begin

        EdCodAtd.Text := IntToStr(GCodAtd_Id);

        PedGerCodAtd.Value := GCodAtd_Id;

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedGerCodAtd.Value));
             Open;

             pnApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

        end;
     end;
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstPfa.DscPfa'+
               ' From EstPfa'+
               ' Where EstPfa.TipPfa = '+ QuotedStr('Saida') +
               '   and EstPfa.CodPfa = '+ QuotedStr(PedGerCodPfa.Value);
       Open;

       pnNomPfa.Caption := Trim(FieldbyName('DscPfa').AsString);

  end;

  bPsqEmp.Enabled := True;
  bPsqCli.Enabled := True;
  bPsqVen.Enabled := True;
  bPsqPfa.Enabled := True;

  EdCodEmp.Enabled := True;
  EdPedCli.Enabled := True;
  EdDteGer.Enabled := True;
  EdCodCli.Enabled := True;
  EdCodVen.Enabled := True;
  EdComCli.Enabled := True;
  EdCodPfa.Enabled := True;

  EdCodEmp.Font.Style := [];
  EdPedCli.Font.Style := [];
  EdDteGer.Font.Style := [];
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

  EdPedCli.SetFocus;

end;

procedure TfmManGc1.PedGr2NewRecord(DataSet: TDataSet);
begin
  inherited;

  PedGr2.DisableControls;

  PedGr2Id_PedGr2.Value := 0;
  PedGr2Id_PedGer.Value := PedGerId_PedGer.Value;

  PedGr2QtiGr4.Value := 0;
  PedGr2IcmGr2.Value := 0;
  PedGr2IpiGr2.Value := 0;
  PedGr2QtpGr2.Value := 0;
  PedGr2QtsGr2.Value := 0;
  PedGr2SldGr2.Value := 0;
  PedGr2VcsGr2.Value := 0;
  PedGr2CstLan.Value := 0;
  PedGr2CstGr2.Value := 0;
  PedGr2VchGr2.Value := 0;
  PedGr2VreGr2.Value := 0;
  PedGr2VcpGr2.Value := 0;
  PedGr2VprGr2.Value := 0;
  PedGr2VcrGr2.Value := 0;
  PedGr2VmeGr2.Value := 0;
  PedGr2VpfGr2.Value := 0;
  PedGr2CstCst.Value := 0;
  PedGr2VchCst.Value := 0;
  PedGr2VreCst.Value := 0;
  PedGr2VcpCst.Value := 0;
  PedGr2VprCst.Value := 0;
  PedGr2VcrCst.Value := 0;
  PedGr2VmeCst.Value := 0;
  PedGr2VpfCst.Value := 0;
  PedGr2VluGr2.Value := 0;
  PedGr2VlqGr2.Value := 0;
  PedGr2DscGr2.Value := 0;
  PedGr2VdsGr2.Value := 0;
  PedGr2PacGr2.Value := 0;
  PedGr2VacGr2.Value := 0;
  PedGr2TotVen.Value := 0;
  PedGr2TotCst.Value := 0;
  PedGr2TotRen.Value := 0;
  PedGr2BasIpi.Value := 0;
  PedGr2TotIpi.Value := 0;
  PedGr2BasIcm.Value := 0;
  PedGr2TotIcm.Value := 0;
  PedGr2TotGr2.Value := 0;
  PedGr2TotGr2.Value := 0;
  PedGr2ValCli.Value := 0;
  PedGr2TotCli.Value := 0;
  PedGr2IcmSub.Value := 0;
  PedGr2MrgSub.Value := 0;
  PedGr2BaseSb.Value := 0;
  PedGr2CodEit.Value := 1;
  PedGr2FlgAtu.Value := '';
  PedGr2CodClp.Value := '1';
  PedGr2CodTam.Value := 'UN';
  PedGr2CodCor.Value := 'UN';
  PedGr2FlgRen.Value := 'Nao';
  PedGr2TrbSub.Value := 'Nao';
  PedGr2FlgRes.Value := 'Nao';
  PedGr2FlgDup.Value := 'Nao';
  PedGr2TipDsc.Value := 'Percentual';
  PedGr2TipAcr.Value := 'Percentual';
  PedGr2DsrGr2.Value := PedGerDscReg.Value;
  PedGr2ComCli.Value := PedGerComCli.Value;
  PedGr2NroGr2.Value := PedGerQtiGr2.Value + 1;

  PedGr2.EnableControls;

  AntVluGr2 := PedGr2VluGr2.Value;
  AntPacGr2 := PedGr2PacGr2.Value;
  AntDscGr2 := PedGr2DscGr2.Value;
  AntTotRen := PedGr2TotRen.Value;

  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdQtpGr2.Enabled := True;
  EdVluGr2.Enabled := True;
  EdPacGr2.Enabled := True;
  EdDscGr2.Enabled := True;
  EdCl1Gr2.Enabled := True;
  EdCl2Gr2.Enabled := True;
  EdCl3Gr2.Enabled := True;
  EdCodICl.Enabled := True;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if PedParExiRen.Value <> 'Sim' then EdTotRen.Enabled := True; 

     end
  else
     EdTotRen.Enabled := True;
     
  if PedGerCliTab.Value <> '99 Tabela Livre' then begin

     EdVluGr2.Enabled := False;

     if Trim( PedGerCliTab.Value ) = '01 Tabela 01' then PedGr2TabPrc.Value := 1;
     if Trim( PedGerCliTab.Value ) = '02 Tabela 02' then PedGr2TabPrc.Value := 2;
     if Trim( PedGerCliTab.Value ) = '03 Tabela 03' then PedGr2TabPrc.Value := 3;
     if Trim( PedGerCliTab.Value ) = '04 Tabela 04' then PedGr2TabPrc.Value := 4;
     if Trim( PedGerCliTab.Value ) = '05 Tabela 05' then PedGr2TabPrc.Value := 5;

     end
  else
     PedGr2TabPrc.Value := 99;

  EdCodGru.SetFocus;

end;

procedure TfmManGc1.EdCodEmpExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not EdPedCli.Focused then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedGer.State <> dsBrowse then begin

           if PedGerCodEmp.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(PedGerCodEmp.Value));
                   Open;

              end;
                                                                                                             
              if Trim( quSql.FieldbyName('ApeEmp').AsString ) <> '' then
                 pnApeEmp.Caption := quSql.FieldbyName('ApeEmp').AsString
              else
                 begin

                 pnApeEmp.Caption := '';

                 fmsgErro('Empresa Informada não Encontrada.',EdCodEmp);

              end;

              end
           else
              begin

              pnApeEmp.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdCodEmp);

           end;
        end;
     end;
  end;
end;

procedure TfmManGc1.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           PedGerCodEmp.Value := fmPsqEmp.CodEmp;

           EdCodEmp.Text := IntToStr(PedGerCodEmp.Value);

           pnApeEmp.Caption := fmPsqEmp.NomEmp;

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     if PedGerCodEmp.Value > 0 then EdDteGer.SetFocus;

  end;
end;

procedure TfmManGc1.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManGc1.EdCodCliExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDteGer.Focused) and
        (not EdPedCli.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiCliente;

  end;
end;

procedure TfmManGc1.EdCodCliKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.FlgPesq := 'Nao';

        fmAuxIni.TipoPesq := 'C';

        fmAuxIni.sCodVen_Id := GCodVen_Id;

        fmAuxIni.sGUs_Id := GGUs_Id;

        fmAuxIni.sCodAtd_Id := GCodAtd_Id;

        fmAuxIni.ShowModal;

        if fmAuxIni.CodCli > 0 then begin

           PedGerCodCli.Value := fmAuxIni.CodCli;
           PedGerUfeGer.Value := fmAuxIni.UffCli;
           PedGerCodVen.Value := fmAuxIni.CodVen;

           EdCodCli.Text := IntToStr(PedGerCodCli.Value);

           pnNomCli.Caption := fmAuxIni.NomCli;
           pnUfeGer.Caption := fmAuxIni.UffCli;

           if PedGerCodVen.Value > 0 then
              EdCodVen.Text := IntToStr(PedGerCodVen.Value)
           else
              EdCodVen.Text := '';

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if PedGerCodCli.Value > 0 then
        SaiCliente
     else
        EdCodCli.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.FlgPesq := 'Nao';

        fmAuxPsq.TipoPesq := 'C';

        fmAuxPsq.sCodVen_Id := GCodVen_Id;

        fmAuxPsq.sGUs_Id := GGUs_Id;

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodCli > 0 then begin

           PedGerCodCli.Value := fmAuxPsq.CodCli;
           PedGerUfeGer.Value := fmAuxPsq.UffCli;
           PedGerCodVen.Value := fmAuxPsq.CodVen;

           EdCodCli.Text := IntToStr(PedGerCodCli.Value);

           pnNomCli.Caption := fmAuxPsq.NomCli;
           pnUfeGer.Caption := fmAuxPsq.UffCli;

           if PedGerCodVen.Value > 0 then
              EdCodVen.Text := IntToStr(PedGerCodVen.Value)
           else
              EdCodVen.Text := '';

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedGerCodCli.Value > 0 then
        SaiCliente
     else
        EdCodCli.SetFocus;

  end;
end;

procedure TfmManGc1.EdCodPfaExit(Sender: TObject);
var
saida : boolean;
LocPfa : string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodAtd.Focused) and
        (not EdComCli.Focused) and
        (not EdCodVen.Focused) and
        (not EdCodCli.Focused) and
        (not EdDteGer.Focused) and
        (not EdPedCli.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedGer.State <> dsBrowse then begin

           if Trim( PedGerCodPfa.Value ) <> '' then begin

              if PedGerUfeGer.Value = 'EX' then
                 LocPfa := 'Importacao ou Exportacao'
              else
                 begin

                 if PedGerUfeGer.Value <> GUfeEmp then
                    LocPfa := 'Outros Estados'
                 else
                    LocPfa := 'Mesmo Estado'

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstPfa.DscPfa'+
                           ' From EstPfa '+
                           ' Where EstPfa.TipPfa = '+ QuotedStr(PedGerTipPfa.Value) +
                           '   and EstPfa.CodPfa = '+ QuotedStr(PedGerCodPfa.Value) +
                           '   and EstPfa.LocPfa = '+ QuotedStr(LocPfa) ;
                   Open;

              end;

              if Trim( quSql.FieldbyName('DscPfa').AsString ) <> '' then
                 pnNomPfa.Caption := Trim(quSql.FieldbyName('DscPfa').AsString)
              else
                 begin

                 pnNomPfa.Caption := '';

                 fmsgErro('Padrão de Faturamento Informado não Encontrado.',EdCodPfa);

              end;

              end
           else
              begin

              pnNomPfa.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodPfa);

           end;
        end;
     end;
  end;
end;

procedure TfmManGc1.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  LocPfa : string;
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if PedGerUfeGer.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if PedGerUfeGer.Value <> GUfeEmp then
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
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString  := 'Saida';
                  Params[1].AsString  := LocPfa;

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           PedGerCodPfa.Value := Trim(fmPsqPfa.CodPfa);

           pnNomPfa.Caption := fmPsqPfa.NomPfa;

           EdCodPfa.Text := PedGerCodPfa.Value;

        end;

     finally

        FreeAndNil(fmPsqPfa);

     end;

     EdCodPfa.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     if PedGerUfeGer.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if PedGerUfeGer.Value <> GUfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'P';

        fmAuxPsq.LocPfa := LocPfa;
        fmAuxPsq.TipPfa := 'Saida';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodPfa ) <> '' then begin

           PedGerCodPfa.Value := Trim(fmAuxPsq.CodPfa);

           pnNomPfa.Caption := fmAuxPsq.NomPfa;

           EdCodPfa.Text := PedGerCodPfa.Value;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     EdCodPfa.SetFocus;

  end;
end;

procedure TfmManGc1.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        PedGerCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(PedGerCodEmp.Value);

        pnApeEmp.Caption := fmPsqEmp.NomEmp;

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;

  EdCodEmp.SetFocus;

end;

procedure TfmManGc1.bpsqCliClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.FlgPesq := 'Nao';
     
     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.sCodVen_Id := GCodVen_Id;

     fmAuxIni.sGUs_Id := GGUs_Id;

     fmAuxIni.sCodAtd_Id := GCodAtd_Id;

     fmAuxIni.TipoPesq := 'C';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodCli > 0 then begin

        PedGerCodCli.Value := fmAuxIni.CodCli;
        PedGerUfeGer.Value := fmAuxIni.UffCli;
        PedGerCodVen.Value := fmAuxIni.CodVen;

        EdCodCli.Text := IntToStr(PedGerCodCli.Value);

        EdUfeGer.Text := PedGerUfeGer.Value;

        if PedGerCodVen.Value > 0 then
           EdCodVen.Text := IntToStr(PedGerCodVen.Value)
        else
           EdCodVen.Text := '';

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  if PedGerCodCli.Value > 0 then
     SaiCliente
  else
     EdCodCli.SetFocus;

end;

procedure TfmManGc1.bpsqPfaClick(Sender: TObject);
var
LocPfa : string;
begin
  inherited;

  if PedGerUfeGer.Value = 'EX' then
     LocPfa := 'Importacao ou Exportacao'
  else
     begin

     if PedGerUfeGer.Value <> GUfeEmp then
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
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString  := 'Saida';
               Params[1].AsString  := LocPfa;

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        PedGerCodPfa.Value := Trim(fmPsqPfa.CodPfa);

        pnNomPfa.Caption := fmPsqPfa.NomPfa;

        EdCodPfa.Text := PedGerCodPfa.Value;

     end;

  finally

     FreeAndNil(fmPsqPfa);

  end;

  EdCodPfa.SetFocus;

end;

procedure TfmManGc1.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := '1';

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedGr2.State = dsBrowse then begin

              if Trim( PedGr2CodClp.Value ) <> '' then
                 PedGr2.Edit
              else
                 PedGr2.Append;

           end;

           PedGr2CodGru.Value := fmAuxIni.CodGru;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedGr2CodGru.Value ) <> '' then
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

           if PedGr2.State = dsBrowse then begin

              if Trim( PedGr2CodClp.Value ) <> '' then
                 PedGr2.Edit
              else
                 PedGr2.Append;

           end;

           PedGr2CodGru.Value := fmAuxPsq.CodGru;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedGr2CodGru.Value ) <> '' then
        SaiGrupo
     else
        EdCodGru.SetFocus;

  end;
end;

procedure TfmManGc1.EdCodSubExit(Sender: TObject);
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

procedure TfmManGc1.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( PedGr2CodGru.Value ) <> '' then fmAuxIni.CodGru := PedGr2CodGru.Value;

        fmAuxIni.CodClp := '1';

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if PedGr2.State = dsBrowse then begin

              if Trim( PedGr2CodClp.Value ) <> '' then
                 PedGr2.Edit
              else
                 PedGr2.Append;

           end;

           PedGr2CodGru.Value := fmAuxIni.CodGru;
           PedGr2CodSub.Value := fmAuxIni.CodSub;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( PedGr2CodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( PedGr2CodGru.Value ) <> '' then fmAuxPsq.CodGru := PedGr2CodGru.Value;

        fmAuxPsq.CodClp := '1';

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedGr2.State = dsBrowse then begin

              if Trim( PedGr2CodClp.Value ) <> '' then
                 PedGr2.Edit
              else
                 PedGr2.Append;

           end;

           PedGr2CodGru.Value := fmAuxPsq.CodGru;
           PedGr2CodSub.Value := fmAuxPsq.CodSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedGr2CodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;

  end;
end;

procedure TfmManGc1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdQtpGr2.Focused) or
     (EdVluGr2.Focused) or
     (EdPacGr2.Focused) or
     (EdDscGr2.Focused) or (grGr2.Focused) then begin

     if ( Trim(PedGr2CodClp.Value) <> '' ) and
        ( Trim(PedGr2CodGru.Value) <> '' ) and
        ( Trim(PedGr2CodSub.Value) <> '' ) and
        ( Trim(PedGr2CodPro.Value) <> '' ) then begin

        if key = 116 then begin // F5-Reservas //

           try

              fmPsqRes := TfmPsqRes.Create(Self);

              fmPsqRes.Panel3.Caption := ' '+PedGr2CodGru.Value+ '.' +PedGr2CodSub.Value+ '.' +PedGr2CodPro.Value+ ' - ' +PedGr2DesGr2.Value;

              fmPsqRes.PedRes.Close;
              fmPsqRes.PedRes.Params[0].AsString := PedGr2CodClp.Value;
              fmPsqRes.PedRes.Params[1].AsString := PedGr2CodGru.Value;
              fmPsqRes.PedRes.Params[2].AsString := PedGr2CodSub.Value;
              fmPsqRes.PedRes.Params[3].AsString := PedGr2CodPro.Value;
              fmPsqRes.PedRes.Open;

              fmPsqRes.ShowModal;

           finally

              FreeAndNil(fmPsqRes);

           end;
        end;

        if key = 118 then begin // Comprado //

           try

              fmPsqCmp := TfmPsqCmp.Create(Self);

              fmPsqCmp.Panel3.Caption := ' '+PedGr2CodGru.Value+ '.' +PedGr2CodSub.Value+ '.' +PedGr2CodPro.Value+ ' - ' +PedGr2DesGr2.Value;

              fmPsqCmp.CmpPed.Close;
              fmPsqCmp.CmpPed.Params[0].AsString := PedGr2CodClp.Value;
              fmPsqCmp.CmpPed.Params[1].AsString := PedGr2CodGru.Value;
              fmPsqCmp.CmpPed.Params[2].AsString := PedGr2CodSub.Value;
              fmPsqCmp.CmpPed.Params[3].AsString := PedGr2CodPro.Value;
              fmPsqCmp.CmpPed.Open;

              fmPsqCmp.ShowModal;

           finally

              FreeAndNil(fmPsqCmp);

           end;
        end;

        if key = 119 then begin {F8 - Caracteristicas}

           try

              fmPsqObs := TfmPsqObs.Create(Self);

              fmPsqObs.EstPro.Close;
              fmPsqObs.EstPro.Params[0].AsString := PedGr2CodClp.Value;
              fmPsqObs.EstPro.Params[1].AsString := PedGr2CodGru.Value;
              fmPsqObs.EstPro.Params[2].AsString := PedGr2CodSub.Value;
              fmPsqObs.EstPro.Params[3].AsString := PedGr2CodPro.Value;
              fmPsqObs.EstPro.Open;

              fmPsqObs.ShowModal;

           finally

              FreeAndNil(fmPsqObs);

           end;
        end;
     end;
  end;

  if (EdCodGru.Focused) or
     (EdCodSub.Focused) or
     (EdCodPro.Focused) then begin

     if key = 114 then begin // F3 - Descrição //

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := PedGr2CodClp.Value;
           fmAuxIni.CodGru := PedGr2CodGru.Value;
           fmAuxIni.CodSub := PedGr2CodSub.Value;

           fmAuxIni.TipoPesq := 'I';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              PedGr2CodClp.Value := fmAuxIni.CodClp;
              PedGr2CodGru.Value := fmAuxIni.CodGru;
              PedGr2CodSub.Value := fmAuxIni.CodSub;
              PedGr2CodPro.Value := fmAuxIni.CodPro;

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;
        
        if Trim( PedGr2CodPro.Value ) <> '' then
           SaiProduto
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

           fmAuxIni.CodClp := PedGr2CodClp.Value;
           fmAuxIni.CodGru := PedGr2CodGru.Value;
           fmAuxIni.CodSub := PedGr2CodSub.Value;

           fmAuxIni.TipoPesq := 'R';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              PedGr2CodClp.Value := fmAuxIni.CodClp;
              PedGr2CodGru.Value := fmAuxIni.CodGru;
              PedGr2CodSub.Value := fmAuxIni.CodSub;
              PedGr2CodPro.Value := fmAuxIni.CodPro;

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if Trim( PedGr2CodPro.Value ) <> '' then
           SaiProduto
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

           fmAuxPsq.CodClp := PedGr2CodClp.Value;
           fmAuxPsq.CodGru := PedGr2CodGru.Value;
           fmAuxPsq.CodSub := PedGr2CodSub.Value;

           fmAuxPsq.TipoPesq := 'I';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 PedGr2CodClp.Value := fmAuxPsq.CodClp;
                 PedGr2CodGru.Value := fmAuxPsq.CodGru;
                 PedGr2CodSub.Value := fmAuxPsq.CodSub;
                 PedGr2CodPro.Value := fmAuxPsq.CodPro;

              end;
           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if Trim( PedGr2CodPro.Value ) <> '' then
           SaiProduto
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

           fmAuxPsq.CodClp := PedGr2CodClp.Value;
           fmAuxPsq.CodGru := PedGr2CodGru.Value;
           fmAuxPsq.CodSub := PedGr2CodSub.Value;

           fmAuxPsq.TipoPesq := 'R';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              PedGr2CodClp.Value := fmAuxPsq.CodClp;
              PedGr2CodGru.Value := fmAuxPsq.CodGru;
              PedGr2CodSub.Value := fmAuxPsq.CodSub;
              PedGr2CodPro.Value := fmAuxPsq.CodPro;

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( PedGr2CodPro.Value ) <> '' then
           SaiProduto
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

        if Trim( PedGerCliTab.Value ) <> '' then fmPsqEst.CliTab := PedGerCliTab.Value;

        fmPsqEst.sCodClp := '1';

        if ( Trim(PedGr2CodGru.Value) <> '' ) or
           ( Trim(PedGr2CodSub.Value) <> '' ) or
           ( Trim(PedGr2CodPro.Value) <> '' ) then begin

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
                        ' Where EstPro.CodClp = '+ QuotedStr('1') +
                        '   and EstPro.FlbPro = '+ QuotedStr(' ') ;

                if Trim( PedGr2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(PedGr2CodGru.Value) ;
                if Trim( PedGr2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(PedGr2CodSub.Value) ;
                if Trim( PedGr2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '+ QuotedStr(PedGr2CodPro.Value) ;

                Text := Text + ' Order by EstPro.DscPro';

                Open;

           end;
        end;

        fmPsqEst.ShowModal;

        if sEntr = 'S' then begin

           if Trim( fmPsqEst.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 PedGr2CodClp.Value := fmPsqEst.CodClp;
                 PedGr2CodGru.Value := fmPsqEst.CodGru;
                 PedGr2CodSub.Value := fmPsqEst.CodSub;
                 PedGr2CodPro.Value := fmPsqEst.CodPro;

              end;
           end;
        end;

     finally   

        FreeAndNil(fmPsqEst);

     end;

     if Trim( PedGr2CodPro.Value ) <> '' then begin

        if EdCodGru.Enabled then SaiProduto;

        end
     else
        begin

        if EdCodGru.Focused then EdCodGru.SetFocus;
        if EdCodSub.Focused then EdCodSub.SetFocus;
        if EdCodPro.Focused then EdCodPro.SetFocus;

     end;
  end;

  if key = 27 then begin

     if PedGer.State <> dsBrowse then
        Close
     else
        begin

        if PedGr2.State <> dsBrowse then PedGr2.CancelUpdates;

        if (EdCodGru.Enabled) or
           (EdCodSub.Enabled) or
           (EdCodPro.Enabled) or
           (EdQtpGr2.Enabled) or
           (EdVluGr2.Enabled) or
           (EdIcmGr2.Enabled) or
           (EdPacGr2.Enabled) or
           (EdDscGr2.Enabled) then begin

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpGr2.Enabled := False;
           EdVluGr2.Enabled := False;
           EdIcmGr2.Enabled := False;
           EdPacGr2.Enabled := False;
           EdDscGr2.Enabled := False;
           EdTotRen.Enabled := False;
           EdCl1Gr2.Enabled := False;
           EdCl2Gr2.Enabled := False;
           EdCl3Gr2.Enabled := False;
           EdCodICl.Enabled := False;

           if not pnDesGr2.Visible then begin

              pnDesGr2.Visible := True;
              pnObsGr2.Visible := True;

              EdDesGr2.Enabled := False;
              EdObsGr2.Enabled := False;

           end;   

           grGr2.SetFocus;

           end
        else
           begin

           if EdDesGr2.Enabled then begin

              EdDesGr2.Enabled := False;
              EdObsGr2.Enabled := False;

              pnDesGr2.Visible := True;
              pnObsGr2.Visible := True;

              grGr2.SetFocus;

              end
           else
              Close;
        end;
     end;
  end;

  if key = 123 then begin // F12-Finalizar Pedido //

     if PedGerTotGer.Value > 0 then begin

        if grGr2.Focused then begin

           try

              fmManGc2 := TfmManGc2.Create(Self);
              fmManGc2.ShowModal;

           finally

              FreeAndNil(fmManGc2);

           end;

           if Finalizar = 'S' then begin

              EdCodEmp.Clear;
              EdDteGer.Clear;
              EdCodCli.Clear;
              EdCodVen.Clear;
              EdCodAtd.Clear;
              EdCodPfa.Clear;

              pnId_PedGer.Caption := '0';

              pnApeEmp.Caption := '';
              pnNomCli.Caption := '';
              pnApeVen.Caption := '';
              pnApeAtd.Caption := '';
              pnUfeGer.Caption := '';
              pnNomPfa.Caption := '';

              PedGer.Close;
              PedGer.Params[0].AsInteger := 0;
              PedGer.Open;

              PedGer.Insert;

              EdPedCli.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManGc1.grGr2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  Id_PedGr2,NroGr2 : integer;
begin
  inherited;
  if key = 117 then begin // F6 - Cotações //

     if PedParFlgCot.Value = 'Sim' then begin
     
        if PedGr2Id_PedGr2.Value > 0 then begin

           Id_PedGr2 := PedGr2Id_PedGr2.Value;

           PedGr2.Edit;

           PedGr2FlgAtu.Value := 'C';
        
           with PedGr2 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedGr2.State <> dsBrowse then PedGr2.CancelUpdates;

                   grGr2.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedGr2.Close;
           PedGr2.Open;

           PedGr2.Locate('Id_PedGr2',Id_PedGr2,[LoPartialKey]);

           if PedGr2QtiGr4.Value > 0 then begin
        
              try

                 fmPsqCot := TfmPsqCot.Create(Self);

                 fmPsqCot.Panel3.Caption := ' '+PedGr2CodClp.Value+ '-' +PedGr2CodGru.Value+ '.' +PedGr2CodSub.Value+ '.' +PedGr2CodPro.Value+ ' - ' +PedGr2DesGr2.Value;

                 fmPsqCot.pnQtdCot.Caption := FormatFloat('###,###,##0.0000',PedGr2QtpGr2.Value);

                 fmPsqCot.PedGr4.Close;
                 fmPsqCot.PedGr4.Params[0].AsInteger := PedGr2Id_PedGr2.Value;
                 fmPsqCot.PedGr4.Open;

                 fmPsqCot.ShowModal;

              finally

                 FreeAndNil(fmPsqCot);

              end;

              end
           else
              fmsgErro('Não foram encontrados fornecedores para o item cadastrados no sistema.',Nil);

        end;
     end;
  end;
  
  if key = 68 then begin // D - Mudar Descrição/Observações Sobre o Item //

     if PedGr2Id_PedGr2.Value > 0 then begin

        pnDesGr2.Visible := False;
        pnObsGr2.Visible := False;

        EdDesGr2.Enabled := True;
        EdObsGr2.Enabled := True;

        EdDesGr2.SetFocus;

     end;
  end;

  if key = 13 then begin // Tecla - ENTER //

     if PedGr2Id_PedGr2.Value > 0 then begin

        PedGr2.Edit;

        EdQtpGr2.Enabled := True;
        EdVluGr2.Enabled := True;
        EdPacGr2.Enabled := True;
        EdDscGr2.Enabled := True;
        EdCl1Gr2.Enabled := True;
        EdCl2Gr2.Enabled := True;
        EdCl3Gr2.Enabled := True;
        EdCodICl.Enabled := True;

        if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

           if PedParExiRen.Value <> 'Sim' then EdTotRen.Enabled := True;

           end
        else
           EdTotRen.Enabled := True;

        if PedGerCliTab.Value = '99 Tabela Livre' then EdVluGr2.Enabled := True;

        EdQtpGr2.SetFocus;

     end;
  end;

  if key = 40 then begin // Tecla - Seta para Baixo //

     if PedGr2NroGr2.Value = PedGerQtiGr2.Value then PedGr2.Append;

  end;

  if key = 46 then begin // Tecla - DEL //

     if Trim( PedGr2CodClp.Value ) <> '' then begin

        NroGr2 := PedGr2NroGr2.Value;

        PedGr2.Delete;

        with PedGr2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedGr2.State <> dsBrowse then PedGr2.CancelUpdates;

                grGr2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedGr2.Close;
        PedGr2.Open;

        PedGer.Close;
        PedGer.Open;

        if NroGr2 < PedGerQtiGr2.Value then
           PedGr2.Locate('Id_PedGer;NroGr2',VarArrayOf([PedGr2Id_PedGer.Value,NroGr2]),[LoPartialKey])
        else
           begin

           if PedGerQtiGr2.Value = 0 then
              PedGr2.Append
           else
              PedGr2.Last;

        end;
     end;
  end;
end;

procedure TfmManGc1.DsGr2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if PedGr2.State = dsBrowse then begin

     AntVluGr2 := PedGr2VluGr2.Value;
     AntPacGr2 := PedGr2PacGr2.Value;
     AntDscGr2 := PedGr2DscGr2.Value;
     AntTotRen := PedGr2TotRen.Value;

  end;

  pnDesGr2.Caption := PedGr2DesGr2.Value;
  pnObsGr2.Caption := PedGr2ObsGr2.Value;

  pnId_PedGer.Caption := IntToStr(PedGerId_PedGer.Value);

  pnVcsGr2.Caption := FormatFloat('###,###,##0.0000',PedGr2VcsGr2.Value);

  pnTotIte.Caption := FormatFloat('###,###,##0.00',PedGerTotIte.Value);
  pnTotSub.Caption := FormatFloat('###,###,##0.00',PedGerTotSub.Value);
  pnTotGer.Caption := FormatFloat('###,###,##0.00',PedGerTotGer.Value);
  pnTotRen.Caption := FormatFloat('###,###,##0.00',PedGerTotRen.Value);

  if PedGr2.State = dsInsert then
     pnNroGr2.Caption := FNumZeros(IntToStr(PedGr2NroGr2.Value),4)+'/'+FNumZeros(IntToStr(PedGerQtiGr2.Value + 1),4)
  else
     pnNroGr2.Caption := FNumZeros(IntToStr(PedGr2NroGr2.Value),4)+'/'+FNumZeros(IntToStr(PedGerQtiGr2.Value),4);

end;

procedure TfmManGc1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja Realmente Abandonar o Pedido?','O') then begin

        if PedGer.State <> dsBrowse then PedGer.CancelUpdates;
        if PedGr2.State <> dsBrowse then PedGr2.CancelUpdates;

        fmManGco.PedGer.Close;
        fmManGco.PedGer.Open;

        fmManGco.PedGr2.Close;
        fmManGco.PedGr2.Open;

        Action := CaFree;

        end
     else
        begin

        Abort;

        if PedGerId_PedGer.Value = Null then PedGer.Insert;

     end;

     end
  else
     begin

     fmManGco.PedGer.Close;
     fmManGco.PedGer.Open;

     fmManGco.PedGr2.Close;
     fmManGco.PedGr2.Open;

     Action := CaFree;

  end;
end;

procedure TfmManGc1.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManGc1.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManGc1.Panel1Exit(Sender: TObject);
var
  SeqGer : string;
  CodEmp : integer;
  DteGer : TDateTime;
begin
  inherited;
  if PedGer.State <> dsBrowse then begin

     if PedGerDteGer.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdDteGer);

     if PedGer.State = dsInsert then begin

        if PedGerCodCli.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodCli);

        if PedGerCodVen.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodVen);

        PedGerPedCli.Value := Trim(PedGerPedCli.Value);
        PedGerCodPfa.Value := Trim(PedGerCodPfa.Value);
        PedGerTipPfa.Value := Trim(PedGerTipPfa.Value);

        if Trim( PedGerCodPfa.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodPfa);

        if Trim( PedGerUfeGer.Value ) = '' then fmsgErro('Endereço de Faturamento do Cliente Esta Incompleto.',EdCodCli);

        if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

           if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then begin

              if GCodVen_Id > 0 then begin

                 if PedGerCodVen.Value <> GCodVen_Id then begin

                    PedGerCodAtd.Value := GCodVen_Id;

                    if PedGerCodAtd.Value = 0 then fmsgErro('Atendente não Encontrado para a Cotação.',EdCodCli);

                 end;
              end;
           end;

           if PedGerCodAtd.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedGerCodAtd.Value));
                   Open;

                   pnApeAtd.Caption := FieldbyName('ApeVen').AsString;

              end;

              end
           else
              pnApeAtd.Caption := ' ';

        end;

        Randomize;
        SeqGer := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                  copy(TimeToStr(Time),1,2)+
                  copy(TimeToStr(Time),4,2)+
                  copy(TimeToStr(Time),7,2)+
                  FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                  FNumZeros(Trim( IntToStr(Random(50000)) ),5);

        PedGerSeqGer.Value := SeqGer;

        end
     else
        SeqGer := PedGerSeqGer.Value;

     if Trim( SeqGer ) = '' then begin

        Randomize;
        SeqGer := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                  copy(TimeToStr(Time),1,2)+
                  copy(TimeToStr(Time),4,2)+
                  copy(TimeToStr(Time),7,2)+
                  FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                  FNumZeros(Trim( IntToStr(Random(50000)) ),5);

        PedGerSeqGer.Value := SeqGer;

     end;

     CodEmp := PedGerCodEmp.Value;
     DteGer := PedGerDteGer.Value;
     
     with PedGer do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if PedGer.State = dsBrowse then PedGer.Edit;

             EdPedCli.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select PedGer.Id_PedGer'+
                  ' From PedGer'+
                  ' Where PedGer.CodEmp = '+ QuotedStr(IntToStr(CodEmp)) +
                  '   and PedGer.DteGer = '+ QuotedStr(fDateToSQL(DteGer)) +
                  '   and PedGer.SeqGer = '+ QuotedStr(SeqGer);
          Open;

     end;

     PedGer.Close;
     PedGer.Params[0].AsInteger := quSQL.FieldbyName('Id_PedGer').AsInteger;
     PedGer.Open;

     fmManGco.sFiltro := ' Where PedGer.Id_PedGer = '+ QuotedStr(IntToStr(PedGerId_PedGer.Value));

     with fmManGco.PedGer,SQL do begin

          Close;
          Text := fmManGco.sBase + fmManGco.sFiltro;
          Open;

     end;
     
     qticms := 1;

     if GUfeEmp <> PedGerUfeGer.Value then begin

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From GerIcm'+
                     ' Where GerIcm.SigUfe = '+ QuotedStr(PedGerUfeGer.Value);
             Open;

             qticms := FieldbyName('QtdReg').AsInteger;

        end;
     end;

     EdCodEmp.Enabled := False;
     EdPedCli.Enabled := False;
     EdDteGer.Enabled := False;
     EdCodCli.Enabled := False;
     EdCodVen.Enabled := False;
     EdComCli.Enabled := False;
     EdCodAtd.Enabled := False;
     EdCodPfa.Enabled := False;

     EdCodEmp.Font.Style := [fsBold];
     EdPedCli.Font.Style := [fsBold];
     EdDteGer.Font.Style := [fsBold];
     EdCodCli.Font.Style := [fsBold];
     EdCodVen.Font.Style := [fsBold];
     EdComCli.Font.Style := [fsBold];
     EdCodAtd.Font.Style := [fsBold];
     EdCodPfa.Font.Style := [fsBold];

     bPsqEmp.Enabled := False;
     bPsqCli.Enabled := False;
     bPsqVen.Enabled := False;     
     bPsqAtd.Enabled := False;
     bPsqPfa.Enabled := False;

     if PedGerQtiGr2.Value = 0 then
        PedGr2.Append
     else
        grGr2.SetFocus;

  end;
end;

procedure TfmManGc1.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManGc1 := Nil;
end;

procedure TfmManGc1.Panel2Exit(Sender: TObject);
var
  NroGr2 : integer;
begin
  inherited;
  if PedGr2.State <> dsBrowse then begin

     if PedGr2QtpGr2.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdQtpGr2);

     if PedGr2VluGr2.Value = 0 then begin

        if EdVluGr2.Enabled then
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdVluGr2)
        else
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdQtpGr2);

     end;

     if PedGr2.State = dsInsert then begin

        with PedGr2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedGr2.State = dsBrowse then PedGr2.Edit;

                EdCodGru.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedGr2.Close;
        PedGr2.Open;

        PedGer.Close;
        PedGer.Open;

        PedGr2.Append;

        EdCodGru.SetFocus;

        end
     else
        begin

        NroGr2 := PedGr2NroGr2.Value;

        with PedGr2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedGr2.State = dsBrowse then PedGr2.Edit;

                EdQtpGr2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedGr2.Close;
        PedGr2.Open;

        PedGer.Close;
        PedGer.Open;

        PedGr2.Locate('Id_PedGer;NroGr2',VarArrayOf([PedGr2Id_PedGer.Value,NroGr2]),[LoPartialKey]);

        if PedGr2NroGr2.Value = PedGerQtiGr2.Value then
           PedGr2.Append
        else
           begin

           PedGr2.Next;

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpGr2.Enabled := False;
           EdVluGr2.Enabled := False;
           EdPacGr2.Enabled := False;
           EdDscGr2.Enabled := False;
           EdTotRen.Enabled := False;
           EdCl1Gr2.Enabled := False;
           EdCl2Gr2.Enabled := False;
           EdCl3Gr2.Enabled := False;
           EdCodICl.Enabled := False;

           if not pnDesGr2.Visible then begin

              pnDesGr2.Visible := True;
              pnObsGr2.Visible := True;

              EdDesGr2.Enabled := False;
              EdObsGr2.Enabled := False;

           end;
           
           grGr2.SetFocus;

        end;
     end;

     end
  else
     begin

     EdCodGru.Enabled := False;
     EdCodSub.Enabled := False;
     EdCodPro.Enabled := False;
     EdQtpGr2.Enabled := False;
     EdVluGr2.Enabled := False;
     EdPacGr2.Enabled := False;
     EdDscGr2.Enabled := False;
     EdTotRen.Enabled := False;
     EdCl1Gr2.Enabled := False;
     EdCl2Gr2.Enabled := False;
     EdCl3Gr2.Enabled := False;
     EdCodICl.Enabled := False;

     if not pnDesGr2.Visible then begin

        pnDesGr2.Visible := True;
        pnObsGr2.Visible := True;

        EdDesGr2.Enabled := False;
        EdObsGr2.Enabled := False;

     end;

     grGr2.SetFocus;

  end;
end;

procedure TfmManGc1.EdCodProExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodGru.Focused) and
        (not EdCodSub.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiProduto;

  end;
end;

procedure TfmManGc1.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := PedGr2CodClp.Value;
        fmAuxIni.CodGru := PedGr2CodGru.Value;
        fmAuxIni.CodSub := PedGr2CodSub.Value;

        fmAuxIni.TipoPesq := 'I';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if EdCodGru.Enabled then begin

              PedGr2CodClp.Value := fmAuxIni.CodClp;
              PedGr2CodGru.Value := fmAuxIni.CodGru;
              PedGr2CodSub.Value := fmAuxIni.CodSub;
              PedGr2CodPro.Value := fmAuxIni.CodPro;

           end;
        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
     
     if Trim( PedGr2CodPro.Value ) <> '' then
        SaiProduto
     else
        EdCodPro.SetFocus;

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try
     
        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := '1';

        if Trim( PedGr2CodGru.Value ) <> '' then fmAuxPsq.CodGru := PedGr2CodGru.Value;
        if Trim( PedGr2CodSub.Value ) <> '' then fmAuxPsq.CodSub := PedGr2CodSub.Value;

        fmAuxPsq.TipoPesq := 'I';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if PedGr2.State = dsBrowse then begin

              if Trim( PedGr2CodClp.Value ) <> '' then
                 PedGr2.Edit
              else
                 PedGr2.Append;

           end;

           PedGr2CodClp.Value := fmAuxPsq.CodClp;
           PedGr2CodGru.Value := fmAuxPsq.CodGru;
           PedGr2CodSub.Value := fmAuxPsq.CodSub;
           PedGr2CodPro.Value := fmAuxPsq.CodPro;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( PedGr2CodPro.Value ) <> '' then
        SaiProduto
     else
        EdCodPro.SetFocus;   
     
  end;
end;

procedure TfmManGc1.EdQtpGr2Exit(Sender: TObject);
var
saida  : boolean;
SeqLin : integer;
SeqIni : integer;
CodEmp : integer;
PrecoLiquido : real;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedGr2.State <> dsBrowse then begin

           if PedGr2QtpGr2.Value > 0 then begin

              PedGr2TotGr2.Value := fRound(PedGr2VlqGr2.Value * PedGr2QtpGr2.Value,2);

              CodEmp := PedGerCodEmp.Value;

              if PedGerLanEst.Value = 'Sim' then begin

                 if PedGerCodFil.Value > 0 then CodEmp := PedGerCodFil.Value;

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstIte.Vb1Ite,'+
                           '        EstIte.Ds1Ite,'+
                           '        EstIte.Vb2Ite,'+
                           '        EstIte.Ds2Ite,'+
                           '        EstIte.Vb3Ite,'+
                           '        EstIte.Ds3Ite,'+
                           '        EstIte.Vb4Ite,'+
                           '        EstIte.Ds4Ite,'+
                           '        EstIte.Vb5Ite,'+
                           '        EstIte.Ds5Ite,'+
                           '        EstIte.CstIte,'+
                           '        EstIte.VchIte,'+
                           '        EstIte.VreIte,'+
                           '        EstIte.VcpIte,'+
                           '        EstIte.VprIte,'+
                           '        EstIte.VcrIte,'+
                           '        EstIte.VmeIte,'+
                           '        EstIte.VpfIte '+
                           ' From EstIte'+
                           ' Where EstIte.CodEmp = :CodEmp'+
                           '   and EstIte.CodClp = :CodClp'+
                           '   and EstIte.CodGru = :CodGru'+
                           '   and EstIte.CodSub = :CodSub'+
                           '   and EstIte.CodPro = :CodPro';

                   with Params do begin

                        Params[0].AsInteger := CodEmp;
                        Params[1].AsString  := PedGr2CodClp.Value;
                        Params[2].AsString  := PedGr2CodGru.Value;
                        Params[3].AsString  := PedGr2CodSub.Value;
                        Params[4].AsString  := PedGr2CodPro.Value;

                   end;

                   Open;

              end;

              try

                 fmPsqTab := TfmPsqTab.Create(Self);

                 if (PedGerCliTab.Value = '98 Qualquer das Tabelas') or (PedGerCliTab.Value = '99 Tabela Livre') or (Trim(PedGerCliTab.Value) = '')then begin

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
                             fmPsqTab.StrTab.Cells[3,SeqLin] := PreString(FormatFloat('###,###,##0.0000',PrecoLiquido),26);

                             Inc(SeqLin);

                          end;

                          Inc(SeqIni);

                    end;

                    end
                 else
                    begin

                    SeqLin := 0;
                    SeqIni := 1;

                    while SeqIni <= StrToInt(copy(PedGerCliTab.Value,1,2)) do begin

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

                 PedGr2TabPrc.Value := fmPsqTab.TabPrc;

              finally

                 FreeAndNil(fmPsqTab);

              end;

              if PedGr2TabPrc.Value > 0 then begin

                 PedGr2VluGr2.Value := quSQL.FieldbyName('Vb'+Trim(IntToStr(PedGr2TabPrc.Value))+'Ite').AsFloat;

                 PedGr2VlqGr2.Value := PedGr2VluGr2.Value;

                 AntVluGr2 := PedGr2VluGr2.Value;

                 if PedGr2DscGr2.Value > 0 then begin

                    PedGr2VdsGr2.Value := fRound((PedGr2DscGr2.Value * PedGr2VlqGr2.Value)/100,4);

                    PedGr2VlqGr2.Value := fRound(PedGr2VlqGr2.Value - PedGr2VdsGr2.Value,4);

                 end;

                 if PedGr2PacGr2.Value > 0 then begin

                    PedGr2VacGr2.Value := fRound((PedGr2PacGr2.Value * PedGr2VlqGr2.Value)/100,4);

                    PedGr2VlqGr2.Value := fRound(PedGr2VlqGr2.Value + PedGr2VacGr2.Value,4);

                 end;

                 PedGr2ValCli.Value := 0;
                 PedGr2TotCli.Value := 0;

                 if PedGr2ComCli.Value > 0 then begin

                    PedGr2ValCli.Value := fRound((PedGr2ComCli.Value * PedGr2VlqGr2.Value)/100,4);

                    PedGr2TotCli.Value := fRound(PedGr2ValCli.Value * PedGr2QtpGr2.Value,2);

                 end;

                 if Trim(PedGerFlgTab.Value) = 'Ultimo Preco'           then PedGr2VcsGr2.Value := quSQL.FieldbyName('CstIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo Historico'        then PedGr2VcsGr2.Value := quSQL.FieldbyName('VchIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo Ponderado'        then PedGr2VcsGr2.Value := quSQL.FieldbyName('VcpIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo Referencial'      then PedGr2VcsGr2.Value := quSQL.FieldbyName('VcrIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo Historico (G)'    then PedGr2VcsGr2.Value := quSQL.FieldbyName('VreIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo Ponderado (G)'    then PedGr2VcsGr2.Value := quSQL.FieldbyName('VprIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Media Ponderada (E)'    then PedGr2VcsGr2.Value := quSQL.FieldbyName('VmeIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo da Ultima Compra' then PedGr2VcsGr2.Value := quSQL.FieldbyName('VpfIte').AsFloat;

                 if PedGr2VcsGr2.Value = 0 then begin

                    if PedGr2CstLan.Value > 0 then PedGr2VcsGr2.Value := PedGr2CstLan.Value;

                 end;

                 PedGr2TotGr2.Value := fRound(PedGr2VlqGr2.Value * PedGr2QtpGr2.Value,2);
                 PedGr2TotVen.Value := fRound(PedGr2QtpGr2.Value * PedGr2VlqGr2.Value,2);
                 PedGr2TotCst.Value := fRound(PedGr2QtpGr2.Value * PedGr2VcsGr2.Value,2);

                 if PedGr2DsrGr2.Value > 0 then begin

                    PedGr2VdrGr2.Value := fRound((PedGr2DsrGr2.Value * PedGr2VlqGr2.Value)/100,4);

                    PedGr2TotDsr.Value := fRound(PedGr2VdrGr2.Value * PedGr2QtpGr2.Value,2);

                    PedGr2CodSt2.Value := '40';

                 end;

                 PedGr2TotGe2.Value := fRound(PedGr2TotGr2.Value - PedGr2TotDsr.Value,2);

                 if PedGr2TotGe2.Value > 0 then begin

                    if PedGr2TotCst.Value > 0 then
                       PedGr2TotRen.Value := fRound(((PedGr2TotGe2.Value - (PedGr2TotCst.Value + PedGr2TotCli.Value)) * 100)/(PedGr2TotCst.Value + PedGr2TotCli.Value),2)
                    else
                       PedGr2TotRen.Value := 0;

                    end
                 else
                    PedGr2TotRen.Value := 0;

                 PedGr2FlgRen.Value := 'Nao';

                 AntTotRen := PedGr2TotRen.Value;

                 if EdVluGr2.Enabled then
                    EdVluGr2.SetFocus
                 else
                    begin

                    if PedGr2VluGr2.Value = 0 then fmsgErro('Item sem Preço Únitario Informado.',EdQtpGr2);

                 end;

                 end
              else
                 fmsgErro('Tabela de Preço não Informada para o Item.',EdQtpGr2);

              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio.',EdQtpGr2);
        end;
     end;
  end;
end;

procedure TfmManGc1.EdVluGr2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdQtpGr2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedGr2.State <> dsBrowse then begin

           if PedGr2VluGr2.Value > 0 then begin

              if PedGr2VluGr2.Value <> AntVluGr2 then begin

                 if AntVluGr2 > 0 then begin

                    PedGr2DscGr2.Value := 0;
                    PedGr2VdsGr2.Value := 0;
                    PedGr2PacGr2.Value := 0;
                    PedGr2VacGr2.Value := 0;
                    PedGr2TipDsc.Value := 'Valor';
                    PedGr2TipAcr.Value := 'Valor';

                    if PedGr2VluGr2.Value > AntVluGr2 then begin

                       PedGr2VacGr2.Value := fRound(PedGr2VluGr2.Value - AntVluGr2,4);
                       PedGr2PacGr2.Value := fRound((100 * PedGr2VacGr2.Value)/AntVluGr2,2);

                       end
                    else
                       begin

                       if PedGr2VluGr2.Value < AntVluGr2 then begin

                          PedGr2VdsGr2.Value := fRound(AntVluGr2 - PedGr2VluGr2.Value,4);

                          PedGr2DscGr2.Value := fRound((100 * PedGr2VdsGr2.Value)/AntVluGr2,2);

                       end;
                    end;
                 end;

                 AntDscGr2 := PedGr2DscGr2.Value;

                 PedGr2VlqGr2.Value := PedGr2VluGr2.Value;

                 if AntVluGr2 > 0 then PedGr2VluGr2.Value := AntVluGr2;

                 PedGr2ValCli.Value := 0;
                 PedGr2TotCli.Value := 0;

                 if PedGr2ComCli.Value > 0 then begin

                    PedGr2ValCli.Value := fRound((PedGr2ComCli.Value * PedGr2VlqGr2.Value)/100,4);

                    PedGr2TotCli.Value := fRound(PedGr2ValCli.Value * PedGr2QtpGr2.Value,2);

                 end;

                 if PedGr2DsrGr2.Value > 0 then begin

                    PedGr2VdrGr2.Value := fRound((PedGr2DsrGr2.Value * PedGr2VlqGr2.Value)/100,4);

                    PedGr2TotDsr.Value := fRound(PedGr2VdrGr2.Value * PedGr2QtpGr2.Value,2);

                    PedGr2CodSt2.Value := '40';

                 end;
                 
                 PedGr2TotGr2.Value := fRound(PedGr2VlqGr2.Value * PedGr2QtpGr2.Value,2);
                 PedGr2TotVen.Value := fRound(PedGr2QtpGr2.Value * PedGr2VlqGr2.Value,2);
                 PedGr2TotCst.Value := fRound(PedGr2QtpGr2.Value * PedGr2VcsGr2.Value,2);

                 PedGr2TotGe2.Value := fRound(PedGr2TotGr2.Value - PedGr2TotDsr.Value,2);

                 if PedGr2TotCst.Value > 0 then
                    PedGr2TotRen.Value := fRound(((PedGr2TotGe2.Value - (PedGr2TotCst.Value + PedGr2TotCli.Value)) * 100)/(PedGr2TotCst.Value + PedGr2TotCli.Value),2)
                 else
                    PedGr2TotRen.Value := 0;

                 PedGr2FlgRen.Value := 'Nao';

                 AntTotRen := PedGr2TotRen.Value;
                 
              end;

              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio',EdVluGr2);
              
        end;
     end;
  end;
end;

procedure TfmManGc1.EdDscGr2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdPacGr2.Focused) and
        (not EdVluGr2.Focused) and
        (not EdQtpGr2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedGr2.State <> dsBrowse then begin

           if PedGr2DscGr2.Value <> AntDscGr2 then begin

              if PedGr2DscGr2.Value = 0 then PedGr2VdsGr2.Value := 0;

              PedGr2VlqGr2.Value := PedGr2VluGr2.Value;

              PedGr2TipDsc.Value := 'Percentual';

              if PedGr2DscGr2.Value > 0 then begin

                 PedGr2VdsGr2.Value := fRound((PedGr2DscGr2.Value * PedGr2VlqGr2.Value)/100,4);

                 PedGr2VlqGr2.Value := fRound(PedGr2VlqGr2.Value - PedGr2VdsGr2.Value,4);

                 end
              else
                 PedGr2VdsGr2.Value := 0;
                 
              if PedGr2PacGr2.Value > 0 then begin

                 PedGr2VacGr2.Value := fRound((PedGr2PacGr2.Value * PedGr2VlqGr2.Value)/100,4);

                 PedGr2VlqGr2.Value := fRound(PedGr2VlqGr2.Value + PedGr2VacGr2.Value,4);

                 end
              else
                 PedGr2VacGr2.Value := 0;

              PedGr2ValCli.Value := 0;
              PedGr2TotCli.Value := 0;

              if PedGr2ComCli.Value > 0 then begin

                 PedGr2ValCli.Value := fRound((PedGr2ComCli.Value * PedGr2VlqGr2.Value)/100,4);

                 PedGr2TotCli.Value := fRound(PedGr2ValCli.Value * PedGr2QtpGr2.Value,2);

              end;

              AntDscGr2 := PedGr2DscGr2.Value;

              if PedGr2DsrGr2.Value > 0 then begin

                 PedGr2VdrGr2.Value := fRound((PedGr2DsrGr2.Value * PedGr2VlqGr2.Value)/100,4);

                 PedGr2TotDsr.Value := fRound(PedGr2VdrGr2.Value * PedGr2QtpGr2.Value,2);

                 PedGr2CodSt2.Value := '40';

              end;

              PedGr2TotGr2.Value := fRound(PedGr2VlqGr2.Value * PedGr2QtpGr2.Value,2);
              PedGr2TotVen.Value := fRound(PedGr2QtpGr2.Value * PedGr2VlqGr2.Value,2);
              PedGr2TotCst.Value := fRound(PedGr2QtpGr2.Value * PedGr2VcsGr2.Value,2);

              PedGr2TotGe2.Value := fRound(PedGr2TotGr2.Value - PedGr2TotDsr.Value,2);

              if PedGr2TotCst.Value > 0 then
                 PedGr2TotRen.Value := fRound(((PedGr2TotGe2.Value - (PedGr2TotCst.Value + PedGr2TotCli.Value)) * 100)/(PedGr2TotCst.Value + PedGr2TotCli.Value),2)
              else
                 PedGr2TotRen.Value := 0;

              PedGr2FlgRen.Value := 'Nao';

              AntTotRen := PedGr2TotRen.Value;
              
           end;
        end;
     end;
  end;
end;

procedure TfmManGc1.EdPedCliExit(Sender: TObject);
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if PedGer.State <> dsBrowse then begin

        if Trim( PedGerPedCli.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdPedCli);

     end;

     end
  else
     begin

     if Tecla = 'UP' then EdPedCli.SetFocus

  end;
end;

procedure TfmManGc1.SaiGrupo;
begin
  if Trim( PedGr2CodGru.Value ) <> '' then begin

     if PedGr2.State <> dsBrowse then begin

        PedGr2CodGru.Value := FNumZeros(PedGr2CodGru.Value,3);

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From EstGru '+
                     ' Where EstGru.CodGru = '+ QuotedStr(PedGr2CodGru.Value);
             Open;

        end;

        if quSql.FieldbyName('QtdReg').AsInteger = 0 then
           fmsgErro('Grupo Informado não Encontrado.',EdCodGru)
        else
           begin

           if EdQtpGr2.Focused then begin

              if Trim( PedGr2CodSub.Value ) = '' then EdCodSub.SetFocus;
              if Trim( PedGr2CodPro.Value ) = '' then EdCodPro.SetFocus;

              end
           else
              EdCodSub.SetFocus;

        end;

        end
     else
        begin

        if EdCodGru.Enabled then begin

           if Trim( PedGr2CodGru.Value ) = '' then fmsgErro('Grupo Informado não Encontrado.',EdCodGru);

        end;
     end;

     end
  else
     fmsgErro('Grupo Informado não Encontrado.',EdCodGru);
end;

procedure TfmManGc1.SaiSubGrupo;
begin
  if Trim( PedGr2CodSub.Value ) <> '' then begin

     if PedGr2.State <> dsBrowse then begin

        PedGr2CodSub.Value := FNumZeros(PedGr2CodSub.Value,4);

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From EstSub'+
                     ' Where EstSub.CodGru = '+ QuotedStr(PedGr2CodGru.Value)+
                     '   and EstSub.CodSub = '+ QuotedStr(PedGr2CodSub.Value);
             Open;

        end;

        if quSQL.FieldbyName('QtdReg').AsInteger = 0 then
           fmsgErro('Grupo e Sub-Grupo Informado não Encontrado.',EdCodGru)
        else
           begin

           if EdQtpGr2.Focused then begin

              if Trim( PedGr2CodPro.Value ) = '' then EdCodPro.SetFocus;

              end
           else
              EdCodPro.SetFocus;

        end;

        end
     else
        begin

        if EdCodSub.Enabled then begin

           if Trim( PedGr2CodSub.Value ) = '' then fmsgErro('Sub-Grupo Informado não Encontrado.',EdCodSub);

        end;
     end;

     end
  else
     fmsgErro('Sub-Grupo Informado não Encontrado.',EdCodSub);
end;

procedure TfmManGc1.SaiProduto;
var
  ret    : string;
  UfeEmp : string;
  CodEmp : integer;
  sContinuar : string;  
begin
  if Trim( PedGr2CodPro.Value ) <> '' then begin

     if PedGr2.State <> dsBrowse then begin

        PedGr2CodPro.Value := FNumStrZero(PedGr2CodPro.Value);

        sContinuar := 'Sim';

        PedGr2FlgDup.Value := 'Nao';

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From PedGr2 '+
                     ' Where PedGr2.Id_PedGer = '+ QuotedStr(IntToStr(PedGr2Id_PedGer.Value)) +
                     '   and PedGr2.CodClp = '+ QuotedStr(PedGr2CodClp.Value) +
                     '   and PedGr2.CodGru = '+ QuotedStr(PedGr2CodGru.Value) +
                     '   and PedGr2.CodSub = '+ QuotedStr(PedGr2CodSub.Value) +
                     '   and PedGr2.CodPro = '+ QuotedStr(PedGr2CodPro.Value) +
                     '   and PedGr2.CodTam = '+ QuotedStr(PedGr2CodTam.Value) +
                     '   and PedGr2.CodCor = '+ QuotedStr(PedGr2CodCor.Value) ;
             Open;

        end;

        if quSql.FieldbyName('QtdReg').AsInteger > 0 then begin

           if PedParFlgDup.Value = 'Sim' then begin

              if fMsg('Item já informado para o gerenciamento do contrato. Confirma duplicidade ?','O') then
                 PedGr2FlgDup.Value := 'Sim'
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
                        '        EstPro.DscPro,'+
                        '        EstPro.CodUns,'+
                        '        EstPro.CodSt1,'+
                        '        EstPro.CodSt2,'+
                        '        EstPro.CodSts,'+
                        '        EstPro.TipSts,'+                                                
                        '        EstPro.IpiSai,'+
                        '        EstPro.IpiTsd,'+
                        '        EstPro.SaiIpi,'+
                        '        EstPro.IcmSai,'+
                        '        EstPro.IcmTsd,'+
                        '        EstPro.SaiIcm '+                        
                        ' From EstPro '+
                        ' Where EstPro.CodClp = :CodClp'+
                        '   and EstPro.CodGru = :CodGru'+
                        '   and EstPro.CodSub = :CodSub'+
                        '   and EstPro.CodPro = :CodPro'+
                        '   and EstPro.FlbPro = :FlbPro';

                with Params do begin

                     Params[0].AsString := PedGr2CodClp.Value;
                     Params[1].AsString := PedGr2CodGru.Value;
                     Params[2].AsString := PedGr2CodSub.Value;
                     Params[3].AsString := PedGr2CodPro.Value;
                     Params[4].AsString := ' ';

                end;

                Open;

           end;

           if Trim( quSQL.FieldbyName('CodPro').AsString ) <> '' then begin

              if Trim( PedGerCodIpi.Value ) <> '' then begin

                 PedGr2RegIpi.Value := Trim(PedGerCodIpi.Value);
                 PedGr2TipIpi.Value := Trim(PedGerTipIpi.Value);
                 
                 PedGr2TrbIpi.Value := PedGerTrbIpi.Value;
                 PedGr2RedIpi.Value := PedGerRedIpi.Value;
                 PedGr2BscIpi.Value := PedGerBscIpi.Value;

              end;

              if Trim( PedGerCodIcm.Value ) <> '' then begin

                 PedGr2RegIcm.Value := Trim(PedGerCodIcm.Value);
                 PedGr2TipIcm.Value := Trim(PedGerTipIcm.Value);
                 
                 PedGr2TrbIcm.Value := PedGerTrbIcm.Value;
                 PedGr2RedIcm.Value := PedGerRedIcm.Value;
                 PedGr2BscIcm.Value := PedGerBscIcm.Value;
                 PedGr2IncRev.Value := PedGerIncRev.Value;
                 PedGr2IncFin.Value := PedGerIncFin.Value;

              end;

              PedGr2IcmGr2.Value := quSql.FieldbyName('SaiIcm').AsFloat;
              PedGr2IpiGr2.Value := quSql.FieldbyName('SaiIpi').AsFloat;
              PedGr2CodUnd.Value := quSQL.FieldbyName('CodUns').AsString;
              PedGr2CodSt1.Value := quSql.FieldbyName('CodSt1').AsString;
              PedGr2CodSt2.Value := quSql.FieldbyName('CodSt2').AsString;
              PedGr2DesGr2.Value := Trim(quSQL.FieldbyName('DscPro').AsString);

              if Trim( quSQL.FieldbyName('IpiSai').AsString ) <> '' then begin

                 PedGr2RegIpi.Value := Trim(quSQL.FieldbyName('IpiSai').AsString);
                 PedGr2TipIpi.Value := Trim(quSQL.FieldbyName('IpiTsd').AsString);

              end;

              if Trim( quSQL.FieldbyName('IcmSai').AsString ) <> '' then begin

                 PedGr2RegIcm.Value := Trim(quSQL.FieldbyName('IcmSai').AsString);
                 PedGr2TipIcm.Value := Trim(quSQL.FieldbyName('IcmTsd').AsString);

              end;

              if Trim( quSQL.FieldbyName('CodSts').AsString ) <> '' then begin

                 PedGr2CodStr.Value := Trim(quSQL.FieldbyName('CodSts').AsString);
                 PedGr2TipStr.Value := Trim(quSQL.FieldbyName('TipSts').AsString);

              end;

              if (qticms = 1) and (GUfeEmp <> PedGerUfeGer.Value) then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select GerIcm.PerIcm'+
                              ' From GerIcm'+
                              ' Where GerIcm.SigUfe = '+ QuotedStr(PedGerUfeGer.Value);
                      Open;

                      PedGr2IcmGr2.Value := FieldbyName('PerIcm').AsFloat;

                 end;
              end;

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(PedGerCodEmp.Value));
                   Open;

                   UfeEmp := FieldbyName('SigUfe').AsString;

              end;

              if (PedGerCodTCl.Value = 3) then PedGr2DsrGr2.Value := PedGr2IcmGr2.Value;

              if Trim(PedGr2CodStr.Value) <> '' then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstUfe.CodStr,'+
                              '        EstUfe.IcmSub,'+
                              '        EstUfe.MrgSub,'+
                              '        EstUfe.BaseSb,'+
                              '        EstUfe.CodCfo,'+
                              '        EstUfe.RegIpi,'+
                              '        EstUfe.TipIpi,'+
                              '        EstUfe.RegIcm,'+
                              '        EstUfe.TipIcm '+
                              ' From EstUfe'+
                              ' Where EstUfe.CodStr = '+ QuotedStr(PedGerUfeGer.Value) +
                              '   and EstUfe.TipStr = '+ QuotedStr(PedGerUfeGer.Value) +
                              '   and EstUfe.SigUfe = '+ QuotedStr(PedGerUfeGer.Value) ;
                      Open;

                 end;

                 if Trim(quSQL.FieldbyName('CodStr').AsString) <> '' then begin

                    if Trim( quSQL.FieldbyName('RegIpi').AsString ) <> '' then begin

                       PedGr2RegIpi.Value := Trim(quSQL.FieldbyName('RegIpi').AsString);
                       PedGr2TipIpi.Value := Trim(quSQL.FieldbyName('TipIpi').AsString);

                    end;

                    if Trim( quSQL.FieldbyName('RegIcm').AsString ) <> '' then begin

                       PedGr2RegIcm.Value := Trim(quSQL.FieldbyName('RegIcm').AsString);
                       PedGr2TipIcm.Value := Trim(quSQL.FieldbyName('TipIcm').AsString);

                    end;

                    PedGr2TrbSub.Value := 'Sim';

                    if PedGerCodTCl.Value > 0 then begin

                       if PedGerCodTCl.Value = 1 then begin

                          PedGr2IcmSub.Value := 0;
                          PedGr2MrgSub.Value := 0;
                          PedGr2BaseSb.Value := 0;

                       end;

                       if PedGerCodTCl.Value = 4 then PedGr2MrgSub.Value := 0;

                       end
                    else
                       begin
                                       
                       if PedGerFlgCtb.Value = 'Nao' then PedGr2MrgSub.Value := 0;
                                       
                    end;

                    if PedGerUfeGer.Value <> UfeEmp then begin

                       if PedGerConSum.Value = 'Sim' then begin

                          PedGr2IcmSub.Value := 0;
                          PedGr2MrgSub.Value := 0;
                          PedGr2BaseSb.Value := 0;

                       end;
                    end;

                    if PedGr2IcmSub.Value > 0 then begin

                       if PedGr2IcmSub.Value < PedGr2IcmGr2.Value then begin

                          if PedGr2MrgSub.Value = 0 then begin

                             PedGr2IcmSub.Value := 0;
                             PedGr2MrgSub.Value := 0;
                             PedGr2BaseSb.Value := 0;
                             PedGr2TrbSub.Value := 'Nao';

                          end;
                       end;
                    end;

                    if PedGr2TrbSub.Value = 'Sim' then begin

                       if Trim(quSQL.FieldbyName('CodCfo').AsString) <> '' then
                          PedGr2CodCfo.Value := Trim(quSQL.FieldbyName('CodCfo').AsString);

                    end;
                 end;
              end;

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select EstIcm.CodIcm,'+
                           '        EstIcm.TrbIcm,'+
                           '        EstIcm.RedIcm,'+
                           '        EstIcm.BasIcm,'+
                           '        EstIcm.IncRev,'+
                           '        EstIcm.IncFin,'+
                           '        EstIcm.PerIcm,'+
                           '        EstIcm.CodSt1,'+
                           '        EstIcm.CodSt2 '+
                           ' From EstIcm'+
                           ' Where EstIcm.CodIcm = '+ QuotedStr(PedGr2RegIcm.Value) +
                           '   and EstIcm.TipIcm = '+ QuotedStr(PedGr2TipIcm.Value) ;
                   Open;

                   if Trim(FieldbyName('CodIcm').AsString) <> '' then begin

                      PedGr2RedIcm.Value := FieldbyName('RedIcm').AsFloat;
                      PedGr2BscIcm.Value := FieldbyName('BasIcm').AsFloat;
                      PedGr2IncRev.Value := FieldbyName('IncRev').AsFloat;
                      PedGr2IncFin.Value := FieldbyName('IncFin').AsFloat;
                      PedGr2CodSt1.Value := FieldbyName('CodSt1').AsString;
                      PedGr2CodSt2.Value := FieldbyName('CodSt2').AsString;
                      PedGr2TrbIcm.Value := FieldbyName('TrbIcm').AsString;

                   end;
              end;

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select EstIpi.CodIpi,'+
                           '        EstIpi.PerIpi,'+
                           '        EstIpi.TrbIpi,'+
                           '        EstIpi.RedIpi,'+
                           '        EstIpi.BasIpi '+
                           ' From EstIpi'+
                           ' Where EstIpi.CodIpi = '+ QuotedStr(PedGr2RegIpi.Value) +
                           '   and EstIpi.TipIpi = '+ QuotedStr(PedGr2TipIpi.Value) ;
                   Open;

                   if Trim(FieldbyName('CodIpi').AsString) <> '' then begin

                      PedGr2IpiGr2.Value := FieldbyName('PerIpi').AsFloat;
                      PedGr2RedIpi.Value := FieldbyName('RedIpi').AsFloat;
                      PedGr2BscIpi.Value := FieldbyName('BasIpi').AsFloat;
                      PedGr2TrbIpi.Value := FieldbyName('TrbIpi').AsString;

                   end;
              end;

              if PedGr2TrbSub.Value = 'Sim' then begin
              
                 if PedGr2TrbIcm.Value = 'Nao' then PedGr2DsrGr2.Value := 0;

              end;

              if PedGr2TrbIcm.Value = 'Sim' then PedGr2DsrGr2.Value := 0;

              CodEmp := PedGerCodEmp.Value;

              if PedGerLanEst.Value = 'Sim' then begin

                 if PedGerCodFil.Value > 0 then CodEmp := PedGerCodFil.Value;

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
                           '   and EstIte.CodClp = '+ QuotedStr(PedGr2CodClp.Value) +
                           '   and EstIte.CodGru = '+ QuotedStr(PedGr2CodGru.Value) +
                           '   and EstIte.CodSub = '+ QuotedStr(PedGr2CodSub.Value) +
                           '   and EstIte.CodPro = '+ QuotedStr(PedGr2CodPro.Value) ;
                   Open;

              end;

              if quSql.FieldbyName('CodEmp').AsInteger > 0 then begin

                 PedGr2CstGr2.Value := quSQL.FieldbyName('CstIte').AsFloat;
                 PedGr2VchGr2.Value := quSQL.FieldbyName('VchIte').AsFloat;
                 PedGr2VreGr2.Value := quSQL.FieldbyName('VreIte').AsFloat;
                 PedGr2VcpGr2.Value := quSQL.FieldbyName('VcpIte').AsFloat;
                 PedGr2VprGr2.Value := quSQL.FieldbyName('VprIte').AsFloat;
                 PedGr2VcrGr2.Value := quSQL.FieldbyName('VcrIte').AsFloat;
                 PedGr2VmeGr2.Value := quSQL.FieldbyName('VmeIte').AsFloat;
                 PedGr2VpfGr2.Value := quSQL.FieldbyName('VpfIte').AsFloat;
                 PedGr2CstCst.Value := quSQL.FieldbyName('CstIte').AsFloat;
                 PedGr2VchCst.Value := quSQL.FieldbyName('VchIte').AsFloat;
                 PedGr2VreCst.Value := quSQL.FieldbyName('VreIte').AsFloat;
                 PedGr2VcpCst.Value := quSQL.FieldbyName('VcpIte').AsFloat;
                 PedGr2VprCst.Value := quSQL.FieldbyName('VprIte').AsFloat;
                 PedGr2VcrCst.Value := quSQL.FieldbyName('VcrIte').AsFloat;
                 PedGr2VmeCst.Value := quSQL.FieldbyName('VmeIte').AsFloat;
                 PedGr2VpfCst.Value := quSQL.FieldbyName('VpfIte').AsFloat;

                 if Trim(PedGerFlgTab.Value) = 'Ultimo Preco'           then PedGr2VcsGr2.Value := quSQL.FieldbyName('CstIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo Historico'        then PedGr2VcsGr2.Value := quSQL.FieldbyName('VchIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo Ponderado'        then PedGr2VcsGr2.Value := quSQL.FieldbyName('VcpIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo Referencial'      then PedGr2VcsGr2.Value := quSQL.FieldbyName('VcrIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo Historico (G)'    then PedGr2VcsGr2.Value := quSQL.FieldbyName('VreIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo Ponderado (G)'    then PedGr2VcsGr2.Value := quSQL.FieldbyName('VprIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Media Ponderada (E)'    then PedGr2VcsGr2.Value := quSQL.FieldbyName('VmeIte').AsFloat;
                 if Trim(PedGerFlgTab.Value) = 'Custo da Ultima Compra' then PedGr2VcsGr2.Value := quSQL.FieldbyName('VpfIte').AsFloat;

                 if PedGr2VcsGr2.Value = 0 then begin

                    if PedGr2CstLan.Value > 0 then PedGr2VcsGr2.Value := PedGr2CstLan.Value;

                 end;
                    
                 if (qticms > 1) and (GUfeEmp <> PedGerUfeGer.Value) then begin

                    ret := 'N';

                    try
                    
                       fmPsqIcm := TfmPsqIcm.Create(Self);

                       with fmPsqIcm.GerIcm,SQL do begin

                            Close;
                            Text := ' Select * From GerIcm'+
                                    ' Where GerIcm.SigUfe = '+ QuotedStr(PedGerUfeGer.Value);
                            Open;

                       end;

                       fmPsqIcm.ShowModal;

                       ret := fmPsqIcm.ret;

                       PedGr2IcmGr2.Value := fmPsqIcm.Icms;

                    finally

                       FreeAndNil(fmPsqIcm);

                    end;

                    if ret = 'N' then EdCodPro.SetFocus;
                    
                 end;

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select PedICl.CodICl'+
                              ' From PedICl'+
                              ' Where PedICl.CodCli = '+ QuotedStr(IntToStr(PedGerCodCli.Value)) +
                              '   and PedICl.CodClp = '+ QuotedStr(PedGr2CodClp.Value) +
                              '   and PedICl.CodGru = '+ QuotedStr(PedGr2CodGru.Value) +
                              '   and PedICl.CodSub = '+ QuotedStr(PedGr2CodSub.Value) +
                              '   and PedICl.CodPro = '+ QuotedStr(PedGr2CodPro.Value) ;                                                                                          
                      Open;

                      if Trim(FieldbyName('CodICl').AsString) <> '' then
                         PedGr2ObsGr2.Value := '( '+Trim(FieldbyName('CodICl').AsString)+' )';

                 end;
                 
                 EdQtpGr2.SetFocus;

                 end
              else
                 fmsgErro('Item Informado não Encontrado na Empresa.',EdCodPro);

              end
           else
              fmsgErro('Item Informado não Encontrado.',EdCodPro);

           end
        else
           fMsgErro('Item Duplicado !',EdCodPro);

        end
     else
        begin

        if EdCodPro.Enabled then begin

           if Trim( PedGr2CodPro.Value ) = '' then fmsgErro('Item Informado não Encontrado.',EdCodPro);

        end;
     end;

     end
  else
     fmsgErro('Item Informado não Encontrado.',EdCodPro);
end;

procedure TfmManGc1.SaiCliente;
var
  LocPfa : string;
  NroSuf : string;
begin
  if PedGerCodCli.Value > 0 then begin

     if PedGer.State <> dsBrowse then begin

        if GCodVen_Id = 0 then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select FinCli.CodCli,'+
                        '        FinCli.NomCli,'+
                        '        FinCli.UffCli,'+
                        '        FinCli.CodVen,'+
                        '        FinCli.CodPfa,'+
                        '        FinCli.NroSuf '+
                        ' From FinCli'+
                        ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedGerCodCli.Value));
                Open;

           end;

           end
        else
           begin

           with quSql,SQL do begin

                Close;
                Text := ' Select FinCli.CodCli,'+
                        '        FinCli.NomCli,'+
                        '        FinCli.UffCli,'+
                        '        FinCli.CodVen,'+
                        '        FinCli.CodPfa,'+
                        '        FinCli.NroSuf '+
                        ' From FinCli'+
                        ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedGerCodCli.Value)) +
                        '   and FinCli.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));
                Open;

           end;
        end;

        if quSql.FieldbyName('CodCli').AsInteger = PedGerCodCli.Value then begin

           NroSuf := Trim(quSQL.FieldbyName('NroSuf').AsString);
           
           PedGerUfeGer.Value := quSQL.FieldbyName('UffCli').AsString;
           PedGerCodVen.Value := quSQL.FieldbyName('CodVen').AsInteger;

           pnNomCli.Caption := quSQL.FieldbyName('NomCli').AsString;
           pnUfeGer.Caption := quSQL.FieldbyName('UffCli').AsString;

           if PedGerCodVen.Value > 0 then EdCodVen.Text := quSQL.FieldbyName('CodVen').AsString;

           if Trim(quSQL.FieldbyName('CodPfa').AsString) <> '' then begin

              PedGerCodPfa.Value := Trim(quSQL.FieldbyName('CodPfa').AsString);

              EdCodPfa.Enabled := False;

              EdCodPfa.Font.Style := [fsBold];

           end;

           if PedGerCodVen.Value > 0 then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FinVen.CodVen,FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedGerCodVen.Value));
                   Open;

              end;

              if quSQL.FieldbyName('CodVen').AsInteger > 0 then
                 pnApeVen.Caption := quSQL.FieldbyName('ApeVen').AsString
              else
                 begin

                 pnApeVen.Caption := ' ';

                 if not EdCodPfa.Enabled then begin
                 
                    EdCodPfa.Enabled := True;

                    EdCodPfa.Font.Style := [];

                 end;
                 
                 fmsgErro('Vendedor Informado para o Cliente não Encontrado.',EdCodCli);

              end;
           end;

           if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

              if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) then begin

                 if GCodVen_Id > 0 then begin

                    if PedGerCodVen.Value <> GCodVen_Id then begin

                       PedGerCodAtd.Value := GCodVen_Id;

                       if PedGerCodAtd.Value = 0 then begin

                          if not EdCodPfa.Enabled then begin

                             EdCodPfa.Enabled := True;

                             EdCodPfa.Font.Style := [];

                          end;
                          
                          fmsgErro('Atendente não Encontrado para a Cotação.',EdCodCli);

                       end;
                    end;
                 end;
              end;

              if PedGerCodAtd.Value > 0 then begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedGerCodAtd.Value));
                      Open;

                      pnApeAtd.Caption := FieldbyName('ApeVen').AsString;

                 end;

                 end
              else
                 pnApeAtd.Caption := ' ';

           end;

           if Trim(PedGerCodPfa.Value) <> '' then begin

              if PedGerUfeGer.Value = 'EX' then
                 LocPfa := 'Importacao ou Exportacao'
              else
                 begin

                 if PedGerUfeGer.Value <> GUfeEmp then
                    LocPfa := 'Outros Estados'
                 else
                    LocPfa := 'Mesmo Estado'

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstPfa.DscPfa'+
                           ' From EstPfa '+
                           ' Where EstPfa.TipPfa = '+ QuotedStr(PedGerTipPfa.Value) +
                           '   and EstPfa.CodPfa = '+ QuotedStr(PedGerCodPfa.Value) +
                           '   and EstPfa.LocPfa = '+ QuotedStr(LocPfa) ;
                   Open;

              end;

              if Trim(quSQL.FieldbyName('DscPfa').AsString) <> '' then
                 pnNomPfa.Caption := Trim(quSQL.FieldbyName('DscPfa').AsString)
              else
                 begin
                 
                 if not EdCodPfa.Enabled then begin

                    EdCodPfa.Enabled := True;

                    EdCodPfa.Font.Style := [];

                 end;

                 fmsgErro('Padrão de faturamento informado para o cliente não encontrado. Falta UF.',EdCodCli);
                 
              end;
           end;

           if Trim( PedGerUfeGer.Value ) <> '' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select GerUfe.SigUfe,'+
                           '        GerUfe.DscUfe '+
                           ' From GerUfe'+
                           ' Where GerUfe.SigUfe = '+ QuotedStr(PedGerUfeGer.Value);
                   Open;

              end;

              if Trim( quSQL.FieldbyName('SigUfe').AsString ) <> '' then begin

                 if Trim( NroSuf ) <> '' then
                    PedGerDscReg.Value := quSQL.FieldbyName('DscUfe').AsFloat
                 else
                    PedGerDscReg.Value := 0;

                 end
              else
                 PedGerDscReg.Value := 0;

              if EdCodVen.Enabled then
                 EdCodVen.SetFocus
              else
                 begin

                 if EdCodAtd.Enabled then
                    EdCodAtd.SetFocus
                 else
                    begin
                    
                    if EdCodPfa.Enabled then begin

                       if Trim( PedGerCodPfa.Value ) = '' then
                          EdCodPfa.SetFocus
                       else
                          grGr2.SetFocus;

                       end
                    else
                       grGr2.SetFocus;
                       
                 end;
              end;

              end
           else
              begin

              if not EdCodPfa.Enabled then begin

                 EdCodPfa.Enabled := True;

                 EdCodPfa.Font.Style := [];

              end;
              
              fmsgErro('Endereço de Faturamento do Cliente Incompleto. Falta UF.',EdCodCli);

           end;
              
           end
        else
           begin

           pnNomCli.Caption := '';
           pnUfeGer.Caption := '';
           pnApeVen.Caption := '';

           if not EdCodPfa.Enabled then begin

              EdCodPfa.Enabled := True;

              EdCodPfa.Font.Style := [];

           end;

           fmsgErro('Cliente Informado não Encontrado.',EdCodCli);

        end;
     end;

     end
  else
     begin

     pnNomCli.Caption := '';
     pnUfeGer.Caption := '';
     pnApeVen.Caption := '';

     if not EdCodPfa.Enabled then begin

        EdCodPfa.Enabled := True;

        EdCodPfa.Font.Style := [];

     end;
     
     fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdCodCli);

  end;
end;

procedure TfmManGc1.bpsqVenClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'V';
     fmAuxIni.ShowModal;

     if fmAuxIni.CodVen > 0 then begin

        PedGerCodVen.Value := fmAuxIni.CodVen;

        pnApeVen.Caption := fmAuxIni.NomVen;

        EdCodVen.Text := IntToStr(PedGerCodVen.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodVen.SetFocus;

end;

procedure TfmManGc1.EdTotRenExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDscGr2.Focused) and
        (not EdPacGr2.Focused) and
        (not EdVluGr2.Focused) and
        (not EdQtpGr2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedGr2.State <> dsBrowse then begin

           if PedGr2TotRen.Value <> AntTotRen then begin

              if PedGr2TotRen.Value > 0 then PedGr2FlgRen.Value := 'Sim';

              if PedGr2VcsGr2.Value > 0 then begin

                 PedGr2DscGr2.Value := 0;
                 PedGr2VdsGr2.Value := 0;
                 PedGr2PacGr2.Value := 0;
                 PedGr2VacGr2.Value := 0;
                 PedGr2TipDsc.Value := 'Valor';
                 PedGr2TipAcr.Value := 'Valor';

                 PedGr2VlqGr2.Value := fRound(PedGr2VcsGr2.Value + ((PedGr2TotRen.Value * PedGr2VcsGr2.Value)/100),4);

                 if PedGr2DsrGr2.Value > 0 then
                    PedGr2VlqGr2.Value := fRound(PedGr2VlqGr2.Value + (PedGr2DsrGr2.Value * PedGr2VlqGr2.Value)/100,4);
              
                 if PedGr2ComCli.Value > 0 then
                    PedGr2VlqGr2.Value := fRound(PedGr2VlqGr2.Value + (PedGr2ComCli.Value * PedGr2VlqGr2.Value)/100,4);

                 if PedGr2VluGr2.Value > PedGr2VlqGr2.Value then begin

                    PedGr2VdsGr2.Value := fRound(PedGr2VluGr2.Value - PedGr2VlqGr2.Value,4);
                    PedGr2DscGr2.Value := fRound((100 * PedGr2VdsGr2.Value)/PedGr2VlqGr2.Value,2);

                    end
                 else
                    begin

                    if PedGr2VluGr2.Value < PedGr2VlqGr2.Value then begin

                       PedGr2VacGr2.Value := fRound(PedGr2VlqGr2.Value - PedGr2VluGr2.Value,4);

                       PedGr2PacGr2.Value := fRound((100 * PedGr2VacGr2.Value)/PedGr2VluGr2.Value,2);

                    end;
                 end;

                 if PedGr2DsrGr2.Value > 0 then begin

                    PedGr2VdrGr2.Value := fRound((PedGr2DsrGr2.Value * PedGr2VlqGr2.Value)/100,4);

                    PedGr2TotDsr.Value := fRound(PedGr2VdrGr2.Value * PedGr2QtpGr2.Value,2);

                    PedGr2CodSt2.Value := '40';

                 end;

                 PedGr2ValCli.Value := 0;
                 PedGr2TotCli.Value := 0;

                 if PedGr2ComCli.Value > 0 then begin

                    PedGr2ValCli.Value := fRound((PedGr2ComCli.Value * PedGr2VlqGr2.Value)/100,4);

                    PedGr2TotCli.Value := fRound(PedGr2ValCli.Value * PedGr2QtpGr2.Value,2);

                 end;

                 PedGr2TotGr2.Value := fRound(PedGr2VlqGr2.Value * PedGr2QtpGr2.Value,2);
                 PedGr2TotVen.Value := fRound(PedGr2QtpGr2.Value * PedGr2VlqGr2.Value,2);
                 PedGr2TotCst.Value := fRound(PedGr2QtpGr2.Value * PedGr2VcsGr2.Value,2);

                 PedGr2TotGe2.Value := fRound(PedGr2TotGr2.Value - PedGr2TotDsr.Value,2);

                 if PedGr2TotCst.Value > 0 then
                    PedGr2TotRen.Value := fRound(((PedGr2TotGe2.Value - (PedGr2TotCst.Value + PedGr2TotCli.Value)) * 100)/(PedGr2TotCst.Value + PedGr2TotCli.Value),2)
                 else
                    PedGr2TotRen.Value := 0;

              end;

              AntTotRen := PedGr2TotRen.Value;

           end;
        end;
     end;
  end;
end;

procedure TfmManGc1.EdPedCliEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  LbText.Caption := 'F4-Estoque';

end;

procedure TfmManGc1.EdCodEmpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  LbText.Caption := 'F1-Iniciais F4-Estoque';

end;

procedure TfmManGc1.EdCodCliEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque';

end;

procedure TfmManGc1.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F8-Caracteristicas';

end;

procedure TfmManGc1.EdCodProEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F8-Caracteristicas';

end;

procedure TfmManGc1.EdQtpGr2Enter(Sender: TObject);
var
  CodEmp : integer;
begin
  inherited;

  sEntr := 'N';

  if not pnEstoque.Visible then pnEstoque.Visible := True;

  CodEmp := PedGerCodEmp.Value;

  if PedGerLanEst.Value = 'Sim' then begin

     if PedGerCodFil.Value > 0 then CodEmp := PedGerCodFil.Value;

  end;

  with quSql,SQL do begin

       Close;
       Text := ' Select EstPro.QtdEmb'+
               ' From EstPro '+
               ' Where EstPro.CodClp = '+ QuotedStr(PedGr2CodClp.Value) +
               '   and EstPro.CodGru = '+ QuotedStr(PedGr2CodGru.Value) +
               '   and EstPro.CodSub = '+ QuotedStr(PedGr2CodSub.Value) +
               '   and EstPro.CodPro = '+ QuotedStr(PedGr2CodPro.Value) ;
       Open;

       EdQtdEmb.Caption := FormatFloat('###,###,##0.0000',FieldbyName('QtdEmb').AsFloat)+' ';

  end;

  with quSql,SQL do begin

       Close;
       Text := ' Select EstIte.QtdIte,'+
               '        EstIte.QtrIte,'+
               '        EstIte.QtdRma,'+
               '        EstIte.QtaIte '+
               ' From EstIte'+
               ' Where EstIte.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
               '   and EstIte.CodClp = '+ QuotedStr(PedGr2CodClp.Value) +
               '   and EstIte.CodGru = '+ QuotedStr(PedGr2CodGru.Value) +
               '   and EstIte.CodSub = '+ QuotedStr(PedGr2CodSub.Value) +
               '   and EstIte.CodPro = '+ QuotedStr(PedGr2CodPro.Value) ;
       Open;

       EdQtdIte.Caption := FormatFloat('###,###,##0.0000',FieldbyName('QtdIte').AsFloat)+' ';
       EdQtrIte.Caption := FormatFloat('###,###,##0.0000',FieldbyName('QtrIte').AsFloat)+' ';
       EdQtdRma.Caption := FormatFloat('###,###,##0.0000',FieldbyName('QtdRma').AsFloat)+' ';
       EdQtaIte.Caption := FormatFloat('###,###,##0.0000',FieldbyName('QtaIte').AsFloat)+' ';

       if fRound(FieldbyName('QtdIte').AsFloat - (FieldbyName('QtrIte').AsFloat - FieldbyName('QtdRma').AsFloat),4) < 0 then
          EdSldIte.Font.Color := clRed
       else
          EdSldIte.Font.Color := clGray;

       EdSldIte.Caption := FormatFloat('###,###,##0.0000',fRound(FieldbyName('QtdIte').AsFloat - (FieldbyName('QtrIte').AsFloat + FieldbyName('QtdRma').AsFloat),4))+' ';

  end;

  if PedParFlgCot.Value = 'Sim' then
     LbText.Caption := 'F4-Estoque F5-Reservas F6-Cotações F7-Comprado F8-Caracteristicas'
  else
     LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F8-Caracteristicas';

end;

procedure TfmManGc1.EdCodGruExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdPedCli.Focused) and
        (not EdDteGer.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiGrupo;

     end
  else
     begin

     if (Tecla = 'UP') then begin

        if PedGerQtiGr2.Value > 0 then begin

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpGr2.Enabled := False;
           EdVluGr2.Enabled := False;
           EdPacGr2.Enabled := False;
           EdDscGr2.Enabled := False;
           EdTotRen.Enabled := False;
           EdCl1Gr2.Enabled := False;
           EdCl2Gr2.Enabled := False;
           EdCl3Gr2.Enabled := False;
           EdCodICl.Enabled := False;

           if not pnDesGr2.Visible then begin

              pnDesGr2.Visible := True;
              pnObsGr2.Visible := True;

              EdDesGr2.Enabled := False;
              EdObsGr2.Enabled := False;

           end;

           if PedGr2.State <> dsBrowse then
              PedGr2.CancelUpdates
           else
              begin

              if not PedGr2.Bof then PedGr2.Prior;

           end;

           grGr2.SetFocus;

           end
        else
           EdCodGru.SetFocus;
     end;
  end;
end;

procedure TfmManGc1.grGr2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedParFlgCot.Value = 'Sim' then
     LbText.Caption := 'D-Descrição/Obs F4-Estoque F5-Reservas F6-Cotações F7-Comprado F8-Caracteristicas'
  else
     LbText.Caption := 'D-Descrição/Obs F4-Estoque F5-Reservas F7-Comprado F8-Caracteristicas';
     
end;

procedure TfmManGc1.EdVluGr2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if pnEstoque.Visible then pnEstoque.Visible := False;

  if PedParFlgCot.Value = 'Sim' then
     LbText.Caption := 'F4-Estoque F5-Reservas F6-Cotações F7-Comprado F8-Caracteristicas'
  else
     LbText.Caption := 'F4-Estoque F5-Reservas F7-Comprado F8-Caracteristicas'
     
end;

procedure TfmManGc1.EdPacGr2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdVluGr2.Focused) and
        (not EdQtpGr2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedGr2.State <> dsBrowse then begin

           if PedGr2PacGr2.Value <> AntPacGr2 then begin

              PedGr2TipAcr.Value := 'Percentual';
              
              if PedGr2PacGr2.Value = 0 then PedGr2VacGr2.Value := 0;

              PedGr2VlqGr2.Value := PedGr2VluGr2.Value;

              if PedGr2DscGr2.Value > 0 then begin

                 PedGr2VdsGr2.Value := fRound((PedGr2DscGr2.Value * PedGr2VlqGr2.Value)/100,4);

                 PedGr2VlqGr2.Value := fRound(PedGr2VlqGr2.Value - PedGr2VdsGr2.Value,4);

                 end
              else
                 PedGr2VdsGr2.Value := 0;

              if PedGr2PacGr2.Value > 0 then begin

                 PedGr2VacGr2.Value := fRound((PedGr2PacGr2.Value * PedGr2VlqGr2.Value)/100,4);

                 PedGr2VlqGr2.Value := fRound(PedGr2VlqGr2.Value + PedGr2VacGr2.Value,4);

                 end
              else
                 PedGr2VacGr2.Value := 0;

              PedGr2ValCli.Value := 0;
              PedGr2TotCli.Value := 0;

              if PedGr2ComCli.Value > 0 then begin

                 PedGr2ValCli.Value := fRound((PedGr2ComCli.Value * PedGr2VlqGr2.Value)/100,4);

                 PedGr2TotCli.Value := fRound(PedGr2ValCli.Value * PedGr2QtpGr2.Value,2);

              end;
              
              AntPacGr2 := PedGr2PacGr2.Value;

              PedGr2TotGr2.Value := fRound(PedGr2VlqGr2.Value * PedGr2QtpGr2.Value,2);
              PedGr2TotVen.Value := fRound(PedGr2QtpGr2.Value * PedGr2VlqGr2.Value,2);
              PedGr2TotCst.Value := fRound(PedGr2QtpGr2.Value * PedGr2VcsGr2.Value,2);

              if PedGr2DsrGr2.Value > 0 then begin

                 PedGr2VdrGr2.Value := fRound((PedGr2DsrGr2.Value * PedGr2VlqGr2.Value)/100,4);

                 PedGr2TotDsr.Value := fRound(PedGr2VdrGr2.Value * PedGr2QtpGr2.Value,2);

                 PedGr2CodSt2.Value := '40';

              end;

              PedGr2TotGe2.Value := fRound(PedGr2TotGr2.Value - PedGr2TotDsr.Value,2);

              if PedGr2TotCst.Value > 0 then
                 PedGr2TotRen.Value := fRound(((PedGr2TotGe2.Value - (PedGr2TotCst.Value + PedGr2TotCli.Value)) * 100)/(PedGr2TotCst.Value + PedGr2TotCli.Value),2)
              else
                 PedGr2TotRen.Value := 0;

              PedGr2FlgRen.Value := 'Nao';

              AntTotRen := PedGr2TotRen.Value;

           end;
        end;
     end;
  end;
end;

procedure TfmManGc1.bPsqAtdClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'Atendentes';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodAtd > 0 then begin

        PedGerCodAtd.Value := fmAuxIni.CodAtd;

        pnApeAtd.Caption := fmAuxIni.NomAtd;

        EdCodAtd.Text := IntToStr(PedGerCodAtd.Value);

     end;

  finally

     FreeAndNil(fmAuxIni);

  end;

  EdCodAtd.SetFocus;

end;

procedure TfmManGc1.EdCodAtdExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdComCli.Focused) and
        (not EdCodVen.Focused) and
        (not EdCodCli.Focused) and
        (not EdDteGer.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedGerCodAtd.Value > 0 then begin

           with quSql,SQL do begin

                Close;
                Text := ' Select FinAtd.ApeAtd'+
                        ' From FinAtd'+
                        ' Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedGerCodAtd.Value));
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

procedure TfmManGc1.EdCodAtdKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'Atendentes';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodAtd > 0 then begin

           PedGerCodAtd.Value := fmAuxIni.CodAtd;

           pnApeAtd.Caption := fmAuxIni.NomAtd;

           EdCodAtd.Text := IntToStr(PedGerCodAtd.Value);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;
     
     if PedGerCodAtd.Value > 0 then begin

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

           PedGerCodAtd.Value := fmAuxPsq.CodAtd;

           pnApeAtd.Caption := fmAuxPsq.NomAtd;

           EdCodAtd.Text := IntToStr(PedGerCodAtd.Value);

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if PedGerCodAtd.Value > 0 then begin

        if EdCodPfa.Enabled then
           EdCodPfa.SetFocus
        else
           EdCodAtd.SetFocus;
           
     end;
  end;
end;

procedure TfmManGc1.EdCodVenExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodCli.Focused) and
        (not EdDteGer.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if PedGer.State <> dsBrowse then begin

           if PedGerCodVen.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = :CodVen';

                   with Params do begin

                        Params[0].AsInteger := PedGerCodVen.Value;

                   end;

                   Open;

              end;

              if Trim( quSql.FieldbyName('ApeVen').AsString ) <> '' then
                 pnApeVen.Caption := quSql.FieldbyName('ApeVen').AsString
              else
                 begin

                 pnApeVen.Caption := '';

                 fmsgErro('Vendedor Informado não Encontrado.',EdCodVen);

              end;

              end
           else
              begin

              pnApeVen.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdCodVen);

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

procedure TfmManGc1.EdCodVenKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

           PedGerCodVen.Value := fmAuxIni.CodVen;

           pnApeVen.Caption := fmAuxIni.NomVen;

           EdCodVen.Text := IntToStr(PedGerCodVen.Value);

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

           PedGerCodVen.Value := fmAuxPsq.CodVen;

           pnApeVen.Caption := fmAuxPsq.NomVen;

           EdCodVen.Text := IntToStr(PedGerCodVen.Value);

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

end.
