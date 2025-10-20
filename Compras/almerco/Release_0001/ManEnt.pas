unit ManEnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorDateEdit, dxDBColorCurrencyEdit,
  dxDBColorEdit;

type
  TfmManEnt = class(TfmPadrao)
    PaintBox: TPaintBox;
    CmpEnt: TwwQuery;
    CmpEn2: TwwQuery;
    UpEnt: TUpdateSQL;
    UpEn2: TUpdateSQL;
    DsEn2: TDataSource;
    DsEnt: TDataSource;
    quSql: TwwQuery;
    grEn21: TdxDBGraphicEdit;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    LbText: TLabel;
    Label8: TLabel;
    Panel4: TPanel;
    Label41: TLabel;
    Label42: TLabel;
    pnTotEnt: TPanel;
    Label27: TLabel;
    Label43: TLabel;
    pnNroEn2: TPanel;
    grEn2: ThGrid;
    Panel1: TPanel;
    Label29: TLabel;
    Label9: TLabel;
    pnId_CmpEnt: TPanel;
    EdId_CmpEnt: TdxDBColorEdit;
    Label1: TLabel;
    EdCodEmp: TdxDBColorEdit;
    bpsqEmp: TSpeedButton;
    Label34: TLabel;
    EdId_CmpPed: TdxDBColorEdit;
    Label12: TLabel;
    Label16: TLabel;
    EdNumDoc: TdxDBColorEdit;
    Label4: TLabel;
    Label6: TLabel;
    EdCodFor: TdxDBColorEdit;
    bpsqFor: TSpeedButton;
    EdNomFor: TdxDBColorEdit;
    pnNomFor: TPanel;
    Label33: TLabel;
    EdUfeEnt: TdxDBColorEdit;
    pnUfeEnt: TPanel;
    Label5: TLabel;
    Label7: TLabel;
    EdCodPfa: TdxDBColorEdit;
    bpsqPfa: TSpeedButton;
    EdNomPfa: TdxDBColorEdit;
    pnNomPfa: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    EdClpEnt: TdxDBColorEdit;
    bPsqClp: TSpeedButton;
    EdNomClp: TdxDBColorEdit;
    pnNomClp: TPanel;
    Label52: TLabel;
    Label2: TLabel;
    Label44: TLabel;
    EdDteOpe: TdxDBColorDateEdit;
    Label36: TLabel;
    Label48: TLabel;
    EdDteDoc: TdxDBColorDateEdit;
    Label37: TLabel;
    Label49: TLabel;
    EdDteCre: TdxDBColorDateEdit;
    Label38: TLabel;
    Label39: TLabel;
    EdIcmEnt: TdxDBColorCurrencyEdit;
    Label40: TLabel;
    Label45: TLabel;
    EdIpiEnt: TdxDBColorCurrencyEdit;
    Label46: TLabel;
    Label47: TLabel;
    EdDscEnt: TdxDBColorCurrencyEdit;
    Label50: TLabel;
    Label51: TLabel;
    EdPacEnt: TdxDBColorCurrencyEdit;
    PaintBox1: TPaintBox;
    Panel2: TPanel;
    EdCodClp: TdxDBColorEdit;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpEn2: TdxDBColorCurrencyEdit;
    EdVluEn2: TdxDBColorCurrencyEdit;
    EdIcmEn2: TdxDBColorCurrencyEdit;
    EdIpiEn2: TdxDBColorCurrencyEdit;
    EdImpEn2: TdxDBColorCurrencyEdit;
    EdDscEn2: TdxDBColorCurrencyEdit;
    EdVlqEn2: TdxDBColorCurrencyEdit;
    EdTotEn2: TdxDBColorCurrencyEdit;
    Label11: TLabel;
    Label17: TLabel;
    EdCodTmo: TdxDBColorEdit;
    bPsqTmo: TSpeedButton;
    EdNomTmo: TdxDBColorEdit;
    pnNomTmo: TPanel;
    Label28: TLabel;
    Label30: TLabel;
    EdValTmo: TdxDBColorCurrencyEdit;
    Label3: TLabel;
    EdVacEn2: TdxDBColorCurrencyEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    EdCodTip: TdxDBColorCurrencyEdit;
    Label20: TLabel;
    EdFlgOco: TdxDBColorEdit;
    pnFlgOco: TPanel;
    Label32: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label35: TLabel;
    EdCodUnd: TdxDBColorEdit;
    EdDesEn2: TdxDBColorEdit;
    pnDesEn2: TPanel;
    EdObsEn2: TdxDBColorEdit;
    pnObsEn2: TPanel;
    Label54: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    EdPacEn2: TdxDBColorCurrencyEdit;
    Label58: TLabel;
    pnTotGer: TPanel;
    Label60: TLabel;
    quSQL1: TwwQuery;
    Label59: TLabel;
    EdSerNot: TdxDBColorEdit;
    CmpEntID_CMPENT: TIntegerField;
    CmpEntCODEMP: TIntegerField;
    CmpEntDTEENT: TDateTimeField;
    CmpEntDTEOPE: TDateTimeField;
    CmpEntCODFOR: TIntegerField;
    CmpEntCONPLC: TIntegerField;
    CmpEntSUBPLC: TIntegerField;
    CmpEntHREENT: TStringField;
    CmpEntCODPFA: TStringField;
    CmpEntTIPPFA: TStringField;
    CmpEntMODPFA: TStringField;
    CmpEntCODCFO: TStringField;
    CmpEntCODTIP: TIntegerField;
    CmpEntCODFIL: TIntegerField;
    CmpEntCODTFO: TIntegerField;
    CmpEntCODTMO: TIntegerField;
    CmpEntVALTMO: TFloatField;
    CmpEntNUMDOC: TIntegerField;
    CmpEntDTEDOC: TDateTimeField;
    CmpEntDTECRE: TDateTimeField;
    CmpEntID_CMPPED: TIntegerField;
    CmpEntFLGCTB: TStringField;
    CmpEntUFEENT: TStringField;
    CmpEntSERNOT: TStringField;
    CmpEntCODCLP: TStringField;
    CmpEntOB1ENT: TStringField;
    CmpEntOB2ENT: TStringField;
    CmpEntOB3ENT: TStringField;
    CmpEntOB4ENT: TStringField;
    CmpEntOB5ENT: TStringField;
    CmpEntOB6ENT: TStringField;
    CmpEntOB7ENT: TStringField;
    CmpEntOB8ENT: TStringField;
    CmpEntQTIENT: TIntegerField;
    CmpEntQTPENT: TIntegerField;
    CmpEntICMENT: TFloatField;
    CmpEntIPIENT: TFloatField;
    CmpEntDSCENT: TFloatField;
    CmpEntMEDDSC: TFloatField;
    CmpEntTOTDSC: TFloatField;
    CmpEntTOTDCC: TFloatField;
    CmpEntPACENT: TFloatField;
    CmpEntMEDACR: TFloatField;
    CmpEntTOTACR: TFloatField;
    CmpEntTOTACC: TFloatField;
    CmpEntBASIMP: TFloatField;
    CmpEntTOTIMP: TFloatField;
    CmpEntBASIPI: TFloatField;
    CmpEntTOTIPI: TFloatField;
    CmpEntBASICM: TFloatField;
    CmpEntTOTICM: TFloatField;
    CmpEntBASSUB: TFloatField;
    CmpEntTOTSUB: TFloatField;
    CmpEntTOTPED: TFloatField;
    CmpEntTOTENT: TFloatField;
    CmpEntTOTFRT: TFloatField;
    CmpEntTOTSEG: TFloatField;
    CmpEntTOTDES: TFloatField;
    CmpEntTOTDSR: TFloatField;
    CmpEntTOTGER: TFloatField;
    CmpEntBASICC: TFloatField;
    CmpEntTOTICC: TFloatField;
    CmpEntBASSUC: TFloatField;
    CmpEntTOTSUC: TFloatField;
    CmpEntTOTENC: TFloatField;
    CmpEntTOTIPC: TFloatField;
    CmpEntTOTGEC: TFloatField;
    CmpEntLANENT: TFloatField;
    CmpEntSLDENT: TFloatField;
    CmpEntPERPIS: TFloatField;
    CmpEntPERCOF: TFloatField;
    CmpEntBASPIS: TFloatField;
    CmpEntTOTPIS: TFloatField;
    CmpEntBASCOF: TFloatField;
    CmpEntTOTCOF: TFloatField;
    CmpEntINFLIQ: TFloatField;
    CmpEntTOTLIQ: TFloatField;
    CmpEntINFBRT: TFloatField;
    CmpEntTOTBRT: TFloatField;
    CmpEntLANEST: TStringField;
    CmpEntATUEST: TStringField;
    CmpEntINTFIN: TStringField;
    CmpEntCONSUM: TStringField;
    CmpEntCODIPI: TStringField;
    CmpEntTIPIPI: TStringField;
    CmpEntTRBIPI: TStringField;
    CmpEntREDIPI: TFloatField;
    CmpEntBSCIPI: TFloatField;
    CmpEntCODICM: TStringField;
    CmpEntTIPICM: TStringField;
    CmpEntTRBICM: TStringField;
    CmpEntREDICM: TFloatField;
    CmpEntBSCICM: TFloatField;
    CmpEntINCREV: TFloatField;
    CmpEntINCFIN: TFloatField;
    CmpEntCODUSU: TIntegerField;
    CmpEntFLGOCO: TStringField;
    CmpEntTOTOEN: TFloatField;
    CmpEntFLGENT: TStringField;
    CmpEntPERACR: TFloatField;
    CmpEntTOTACP: TFloatField;
    CmpEntTOTFOR: TFloatField;
    CmpEntDESFOR: TFloatField;
    CmpEntVCOFOR: TFloatField;
    CmpEntVCOEMP: TFloatField;
    CmpEntVDOFSC: TFloatField;
    CmpEntFLGENV: TStringField;
    CmpEntFLGSIN: TStringField;
    CmpEntLANCST: TStringField;
    CmpEntHRCENT: TStringField;
    CmpEntDTCENT: TDateTimeField;
    CmpEntUSCENT: TIntegerField;
    CmpEntOBCEN1: TStringField;
    CmpEntOBCEN2: TStringField;
    CmpEntOBCEN3: TStringField;
    CmpEntTRBPIS: TStringField;
    CmpEntTRBCOF: TStringField;
    CmpEntID_CMPOEN: TIntegerField;
    CmpEntID_CMPCNO: TIntegerField;
    CmpEntSEQENT: TStringField;
    CmpEntFLGATU: TStringField;
    CmpEntSITENT: TStringField;
    CmpEntMODFOR: TIntegerField;
    EdApeEmp: TdxDBColorEdit;
    pnApeEmp: TPanel;
    CmpEn2ID_CMPEN2: TIntegerField;
    CmpEn2ID_CMPENT: TIntegerField;
    CmpEn2CODEIT: TIntegerField;
    CmpEn2CODCLP: TStringField;
    CmpEn2CODGRU: TStringField;
    CmpEn2CODSUB: TStringField;
    CmpEn2CODPRO: TStringField;
    CmpEn2CODTAM: TStringField;
    CmpEn2CODCOR: TStringField;
    CmpEn2DESEN2: TStringField;
    CmpEn2OBSEN2: TStringField;
    CmpEn2CODST1: TStringField;
    CmpEn2CODST2: TStringField;
    CmpEn2CODUND: TStringField;
    CmpEn2CLSIPI: TStringField;
    CmpEn2CODCFO: TStringField;
    CmpEn2ID_CMPPFO: TIntegerField;
    CmpEn2LIQEN2: TFloatField;
    CmpEn2BRTEN2: TFloatField;
    CmpEn2QTPEN2: TFloatField;
    CmpEn2QTDPED: TFloatField;
    CmpEn2QTDNFS: TFloatField;
    CmpEn2VLUEN2: TFloatField;
    CmpEn2VLQEN2: TFloatField;
    CmpEn2VLQPED: TFloatField;
    CmpEn2VLQNFS: TFloatField;
    CmpEn2VPFEN2: TFloatField;
    CmpEn2VPFOUT: TFloatField;
    CmpEn2TIPDSC: TStringField;
    CmpEn2DSCEN2: TFloatField;
    CmpEn2VDSEN2: TFloatField;
    CmpEn2TIPACR: TStringField;
    CmpEn2PACEN2: TFloatField;
    CmpEn2VACEN2: TFloatField;
    CmpEn2IMPEN2: TFloatField;
    CmpEn2IPIEN2: TFloatField;
    CmpEn2ICMEN2: TFloatField;
    CmpEn2BASIMP: TFloatField;
    CmpEn2TOTIMP: TFloatField;
    CmpEn2BASIPI: TFloatField;
    CmpEn2TOTIPI: TFloatField;
    CmpEn2BASICM: TFloatField;
    CmpEn2TOTICM: TFloatField;
    CmpEn2BASSUB: TFloatField;
    CmpEn2TOTSUB: TFloatField;
    CmpEn2TOTEN2: TFloatField;
    CmpEn2TOTGE2: TFloatField;
    CmpEn2TOTDSC: TFloatField;
    CmpEn2TOTACR: TFloatField;
    CmpEn2BASPIS: TFloatField;
    CmpEn2TOTPIS: TFloatField;
    CmpEn2BASCOF: TFloatField;
    CmpEn2TOTCOF: TFloatField;
    CmpEn2TOTLIQ: TFloatField;
    CmpEn2TOTBRT: TFloatField;
    CmpEn2CODSTR: TStringField;
    CmpEn2TIPSTR: TStringField;
    CmpEn2TRBSUB: TStringField;
    CmpEn2ICMSUB: TFloatField;
    CmpEn2MRGSUB: TFloatField;
    CmpEn2BASESB: TFloatField;
    CmpEn2REGIPI: TStringField;
    CmpEn2TIPIPI: TStringField;
    CmpEn2TRBIPI: TStringField;
    CmpEn2REDIPI: TFloatField;
    CmpEn2BSCIPI: TFloatField;
    CmpEn2REGICM: TStringField;
    CmpEn2TIPICM: TStringField;
    CmpEn2TRBICM: TStringField;
    CmpEn2REDICM: TFloatField;
    CmpEn2BSCICM: TFloatField;
    CmpEn2INCREV: TFloatField;
    CmpEn2INCFIN: TFloatField;
    CmpEn2ID_CMPPE3: TIntegerField;
    CmpEn2ID_CMPNFE: TIntegerField;
    CmpEn2FLGDUP: TStringField;
    CmpEn2FLGQTD: TStringField;
    CmpEn2FLGVAL: TStringField;
    CmpEn2FLGATU: TStringField;
    CmpEn2NROEN2: TIntegerField;
    CmpEntQTDOEN: TIntegerField;
    CmpEntBSICMF: TFloatField;
    CmpEntBSICMS: TFloatField;
    CmpEntBSICMD: TFloatField;
    CmpEntBSIPIF: TFloatField;
    CmpEntBSIPIS: TFloatField;
    CmpEntBSIPID: TFloatField;
    CmpEntTOTITE: TFloatField;
    CmpEn2PRODEP: TStringField;
    CmpEn2TOTITE: TFloatField;
    CmpEn2TOTFRT: TFloatField;
    CmpEn2TOTSEG: TFloatField;
    CmpEn2TOTDES: TFloatField;
    CmpEn2TOTACC: TFloatField;
    CmpEn2TOTDCC: TFloatField;
    procedure SaiGrupo;
    procedure SaiProduto;
    procedure SaiSubGrupo;
    procedure SaiClassificacao;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CmpEntNewRecord(DataSet: TDataSet);
    procedure CmpEn2NewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodForExit(Sender: TObject);
    procedure EdCodPfaExit(Sender: TObject);
    procedure DsEn2DataChange(Sender: TObject; Field: TField);
    procedure EdCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodGruExit(Sender: TObject);
    procedure EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodSubExit(Sender: TObject);
    procedure EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodProExit(Sender: TObject);
    procedure EdQtpEn2Exit(Sender: TObject);
    procedure EdVluEn2Exit(Sender: TObject);
    procedure grEn2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bpsqPfaClick(Sender: TObject);
    procedure bpsqForClick(Sender: TObject);
    procedure bpsqEmpClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdClpEntExit(Sender: TObject);
    procedure EdClpEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPsqClpClick(Sender: TObject);
    procedure EdNumDocExit(Sender: TObject);
    procedure EdVacEn2Exit(Sender: TObject);
    procedure EdCodTmoExit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure EdDteCreExit(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure bPsqTmoClick(Sender: TObject);
    procedure EdCodTmoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdId_CmpPedExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure EdDscEn2Exit(Sender: TObject);
    procedure EdPacEn2Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdCodEmpEnter(Sender: TObject);
    procedure EdCodForEnter(Sender: TObject);
    procedure EdId_CmpPedEnter(Sender: TObject);
    procedure grEn2Enter(Sender: TObject);
    procedure EdCodClpEnter(Sender: TObject);
    procedure EdCodGruEnter(Sender: TObject);
  private
  public
    DteEnt : TDateTime;
    CodEmp,NumEnt : integer;
    AntDscEn2,AntPacEn2,AntVacEn2,AntVluEn2 : real;
    pSaida,sEnc,sEntr,Finalizar,sContinuar : string;
  end;

var
  fmManEnt : TfmManEnt;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, AuxPsq, PsqPfa,
     PsqRef, PsqObs, PsqPro, PsqEs2, ManEpe, PsqGru, PsqSub, PsqTab, ManEn1,
     PsqTam, PsqTpe, PsqClp, ManSen, AuxIni, PsqTmo, PsqOce, ManEn5, ManLge,
     ManRma, ManEn6, ManEn8, ManEn9;

{$R *.DFM}

procedure TfmManEnt.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  pSaida := 'Sim';

  Finalizar := 'N';

end;

procedure TfmManEnt.FormShow(Sender: TObject);
begin
  inherited;
  if fmManEpe.Id_CmpEnt > 0 then begin

     CmpEnt.Close;
     CmpEnt.Params[0].AsInteger := fmManEpe.Id_CmpEnt;
     CmpEnt.Open;

     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(CmpEntCodEmp.Value));
          Open;

          pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

     end;
     
     with quSQL,SQL do begin

          Close;
          Text := ' Select NomFor,SigUfe From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpEntCodFor.Value));
          Open;

          pnUfeEnt.Caption := FieldbyName('SigUfe').AsString;
          pnNomFor.Caption := FieldbyName('NomFor').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = '+ QuotedStr('Entrada')+
                  '   and EstPfa.CodPfa = '+ QuotedStr(CmpEntCodPfa.Value);
          Open;

          pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(CmpEntCodClp.Value);
          Open;

          pnNomClp.Caption := FieldbyName('NomClp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinTmo.NomTmo From FinTmo Where FinTmo.CodTmo = '+ QuotedStr(IntToStr(CmpEntCodTmo.Value));
          Open;

          pnNomTmo.Caption := FieldbyName('NomTmo').AsString;

     end;

     if Trim(CmpEntSitEnt.Value) = 'Nao Concluida' then begin

        CmpEnt.Edit;

        EdValTmo.Enabled := True;
        EdDteOpe.Enabled := True;
        EdDteDoc.Enabled := True;
        EdSerNot.Enabled := True;
        EdDteCre.Enabled := True;

        EdValTmo.Font.Style := [];
        EdDteOpe.Font.Style := [];
        EdDteDoc.Font.Style := [];
        EdSerNot.Font.Style := [];
        EdDteCre.Font.Style := [];

        EdValTmo.SetFocus

        end
     else
        sEnc := 'S'
        
     end
  else
     begin

     sEntr := 'N';

     LbText.Caption := '';

     CmpEnt.Insert;

     EdCodEmp.SetFocus;
     
  end;
end;

procedure TfmManEnt.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEnt.CmpEntNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpEnt.DisableControls;

  CmpEntId_CmpEnt.Value := -1;

  CmpEntCodTip.Value := 1;
  CmpEntCodTmo.Value := 1;
  CmpEntValTmo.Value := 1;
  CmpEntQtdOen.Value := 0;
  CmpEntQtiEnt.Value := 0;
  CmpEntQtpEnt.Value := 0;
  CmpEntTotEnt.Value := 0;
  CmpEntBasIcm.Value := 0;
  CmpEntTotIcm.Value := 0;
  CmpEntBasIpi.Value := 0;
  CmpEntTotIpi.Value := 0;
  CmpEntTotEnt.Value := 0;
  CmpEntDscEnt.Value := 0;
  CmpEntPacEnt.Value := 0;
  CmpEntPerAcr.Value := 0;
  CmpEntIcmEnt.Value := 0;
  CmpEntIpiEnt.Value := 0;
  CmpEntDscEnt.Value := 0;
  CmpEntPacEnt.Value := 0;
  CmpEntTotFor.Value := 0;
  CmpEntDesFor.Value := 0;
  CmpEntVcoFor.Value := 0;
  CmpEntVcoEmp.Value := 0;
  CmpEntVdoFsc.Value := 0;
  CmpEntCodClp.Value := '1';
  CmpEntDteEnt.Value := Date;
  CmpEntDteOpe.Value := Date;
  CmpEntDteDoc.Value := Date;
  CmpEntFlgCtb.Value := 'Sim';
  CmpEntFlgEnv.Value := 'Sim';
  CmpEntFlgSin.Value := 'Sim';
  CmpEntLanCst.Value := 'Nao';
  CmpEntTipPfa.Value := 'Entrada';
  CmpEntSitEnt.Value := 'Nao Concluida';
  CmpEntHreEnt.Value := TimeToStr(Time);

  if GEmp_Id > 0 then CmpEntCodEmp.Value := GEmp_Id;
  
  EdDteOpe.Date := Date;
  EdDteDoc.Date := Date;

  EdClpEnt.Text := '1';
  EdCodTmo.Text := '1';

  EdIcmEnt.Value := 0;
  EdIpiEnt.Value := 0;
  EdDscEnt.Value := 0;
  EdPacEnt.Value := 0;

  EdCodTip.Value := 1;

  if CmpEntCodEmp.Value > 0 then begin

     EdCodEmp.Text := IntToStr(CmpEntCodEmp.Value);
     
     with quSQL,SQL do begin

          Close;
          Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(CmpEntCodEmp.Value));
          Open;

          pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

     end;

     end
  else
     pnApeEmp.Caption := '';

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinFor.NomFor,FinFor.SigUfe From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpEntCodFor.Value));
       Open;

       pnUfeEnt.Caption := FieldbyName('SigUfe').AsString;
       pnNomFor.Caption := FieldbyName('NomFor').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinTmo.NomTmo From FinTmo Where FinTmo.CodTmo = '+ QuotedStr(IntToStr(CmpEntCodTmo.Value));
       Open;

       pnNomTmo.Caption := FieldbyName('NomTmo').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstPfa.DscPfa'+
               ' From EstPfa'+
               ' Where EstPfa.TipPfa = '+ QuotedStr('Entrada') +
               '   and EstPfa.CodPfa = '+ QuotedStr(CmpEntCodPfa.Value);
       Open;

       pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(CmpEntCodClp.Value);
       Open;

       pnNomClp.Caption := FieldbyName('NomClp').AsString;

  end;

  EdId_CmpPed.Enabled := True;

  EdCodEmp.Enabled := True;
  EdNumDoc.Enabled := True;
  EdCodFor.Enabled := True;
  EdCodPfa.Enabled := True;
  EdClpEnt.Enabled := True;
  EdCodTip.Enabled := True;
  EdCodTmo.Enabled := True;
  EdValTmo.Enabled := True;
  EdDteOpe.Enabled := True;
  EdDteDoc.Enabled := True;
  EdSerNot.Enabled := True;
  EdDteCre.Enabled := True;
  EdIcmEnt.Enabled := True;
  EdIpiEnt.Enabled := True;
  EdDscEnt.Enabled := True;
  EdPacEnt.Enabled := True;

  EdId_CmpPed.Font.Style := [];
  
  EdCodEmp.Font.Style := [];
  EdNumDoc.Font.Style := [];
  EdCodFor.Font.Style := [];
  EdCodPfa.Font.Style := [];
  EdClpEnt.Font.Style := [];
  EdCodTip.Font.Style := [];
  EdCodTmo.Font.Style := [];
  EdValTmo.Font.Style := [];
  EdDteOpe.Font.Style := [];
  EdDteDoc.Font.Style := [];
  EdSerNot.Font.Style := [];
  EdDteCre.Font.Style := [];
  EdIcmEnt.Font.Style := [];
  EdIpiEnt.Font.Style := [];
  EdDscEnt.Font.Style := [];
  EdPacEnt.Font.Style := [];

  EdCodEmp.SetFocus;

end;

procedure TfmManEnt.CmpEn2NewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpEn2.DisableControls;

  CmpEn2Id_CmpEn2.Value := -1;
  CmpEn2Id_CmpEnt.Value := CmpEntId_CmpEnt.Value;

  CmpEn2DscEn2.Value := 0;
  CmpEn2VdsEn2.Value := 0;
  CmpEn2PacEn2.Value := 0;
  CmpEn2VacEn2.Value := 0;
  CmpEn2QtpEn2.Value := 0;
  CmpEn2VluEn2.Value := 0;
  CmpEn2VlqEn2.Value := 0;
  CmpEn2BasIpi.Value := 0;
  CmpEn2TotIpi.Value := 0;
  CmpEn2BasIcm.Value := 0;
  CmpEn2TotIcm.Value := 0;
  CmpEn2TotEn2.Value := 0;
  CmpEn2TotGe2.Value := 0;
  CmpEn2FlgAtu.Value := ' ';
  CmpEn2CodTam.Value := 'UN';
  CmpEn2CodCor.Value := 'UN';
  CmpEn2FlgDup.Value := 'Nao';  
  CmpEn2TipDsc.Value := 'Percentual';
  CmpEn2TipAcr.Value := 'Percentual';
  CmpEn2CodEit.Value := CmpEntCodEmp.Value;
  CmpEn2NroEn2.Value := CmpEntQtiEnt.Value + 1;

  if Trim( CmpEntCodClp.Value ) <> '' then CmpEn2CodClp.Value := CmpEntCodClp.Value;

  if CmpEntIcmEnt.Value > 0 then CmpEn2IcmEn2.Value := CmpEntIcmEnt.Value;
  if CmpEntIpiEnt.Value > 0 then CmpEn2IpiEn2.Value := CmpEntIpiEnt.Value;
  if CmpEntDscEnt.Value > 0 then CmpEn2DscEn2.Value := CmpEntDscEnt.Value;
  if CmpEntPacEnt.Value > 0 then CmpEn2PacEn2.Value := CmpEntPacEnt.Value;

  CmpEn2.EnableControls;

  AntDscEn2 := CmpEn2DscEn2.Value;
  AntPacEn2 := CmpEn2PacEn2.Value;
  AntVluEn2 := CmpEn2VluEn2.Value;

  EdCodClp.Enabled := True;
  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdQtpEn2.Enabled := True;
  EdVluEn2.Enabled := True;
  EdIpiEn2.Enabled := True;
  EdIcmEn2.Enabled := True;
  EdImpEn2.Enabled := True;
  EdDscEn2.Enabled := True;
  EdPacEn2.Enabled := True;
  EdVacEn2.Enabled := True;

  if Trim( CmpEntCodClp.Value ) <> '' then EdCodClp.Enabled := False;

  if CmpEntIpiEnt.Value > 0 then EdIpiEn2.Enabled := False;
  if CmpEntIcmEnt.Value > 0 then EdIcmEn2.Enabled := False;
  if CmpEntDscEnt.Value > 0 then EdDscEn2.Enabled := False;

  if CmpEntPacEnt.Value > 0 then begin

     EdPacEn2.Enabled := False;
     EdVacEn2.Enabled := False;

  end;

  if EdCodClp.Enabled then
     EdCodClp.SetFocus
  else
     EdCodGru.SetFocus;

end;

procedure TfmManEnt.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if CmpEnt.State <> dsBrowse then begin

        if CmpEntCodEmp.Value > 0 then begin

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
                Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = :CodEmp';

                if GFlgAce = 'Sim' then begin

                   if GEmpLog > 0 then
                      Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
                   else
                      Text := Text + ' and GerEmp.CodFil > 0';

                end;

                with Params do begin

                     Params[0].AsInteger := CmpEntCodEmp.Value;

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
           fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodEmp);
     end;

     end
  else
     begin

     if Tecla = 'UP' then EdCodEmp.SetFocus

  end;
end;

procedure TfmManEnt.EdCodForExit(Sender: TObject);
var
  saida  : boolean;
  LocPfa : string;
  UfeEmp : string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdId_CmpPed.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEnt.State <> dsBrowse then begin

           if CmpEntCodFor.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = '+ Quotedstr(IntToStr(CmpEntCodEmp.Value));
                   Open;

                   UfeEmp := FieldbyName('SigUfe').AsString;

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinFor.NomFor,'+
                           '        FinFor.SigUfe,'+
                           '        FinFor.ConPlc,'+
                           '        FinFor.SubPlc,'+
                           '        FinFor.CodPfa,'+
                           '        FinFor.TipPfa '+
                           ' From FinFor'+
                           ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpEntCodFor.Value));
                   Open;

              end;

              if Trim(quSql.FieldbyName('NomFor').AsString) <> '' then begin

                 pnUfeEnt.Caption := Trim(quSQL.FieldbyName('SigUfe').AsString);
                 pnNomFor.Caption := Trim(quSQL.FieldbyName('NomFor').AsString);

                 CmpEntUfeEnt.Value := Trim(quSQL.FieldbyName('SigUfe').AsString);
                 
                 CmpEntConPlc.Value := quSQL.FieldbyName('ConPlc').AsInteger;
                 CmpEntSubPlc.Value := quSQL.FieldbyName('SubPlc').AsInteger;

                 if CmpEntId_CmpPed.Value = 0 then begin

                    if Trim( quSQL.FieldbyName('CodPfa').AsString ) <> '' then begin

                       CmpEntCodPfa.Value := Trim(quSQL.FieldbyName('CodPfa').AsString);
                       CmpEntTipPfa.Value := Trim(quSQL.FieldbyName('TipPfa').AsString);

                       if Trim(CmpEntCodPfa.Value) <> '' then EdCodPfa.Text := CmpEntCodPfa.Value;

                       if CmpEntUfeEnt.Value = 'EX' then
                          LocPfa := 'Importacao ou Exportacao'
                       else
                          begin

                          if CmpEntUfeEnt.Value <> UfeEmp then
                             LocPfa := 'Outros Estados'
                          else
                             LocPfa := 'Mesmo Estado'

                       end;

                       with quSql,SQL do begin

                            Close;
                            Text := ' Select EstPfa.DscPfa'+
                                    ' From EstPfa '+
                                    ' Where EstPfa.TipPfa = '+ QuotedStr(CmpEntTipPfa.Value)+
                                    '   and EstPfa.CodPfa = '+ QuotedStr(CmpEntCodPfa.Value)+
                                    '   and EstPfa.LocPfa = '+ QuotedStr(LocPfa);
                            Open;

                            pnNomPfa.Caption := Trim(FieldbyName('DscPfa').AsString);

                       end;
                    end;
                 end;
                 
                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select Count(*) as QtdReg'+
                              ' From FinSub'+
                              ' Where FinSub.ConPlc = :ConPlc'+
                              '   and FinSub.SubPlc = :SubPlc';

                      with Params do begin

                           Params[0].AsInteger := CmpEntConPlc.Value;
                           Params[1].AsInteger := CmpEntSubPlc.Value;

                      end;

                      Open;

                      if quSql.FieldbyName('QtdReg').AsInteger = 0 then fmsgErro('Conta e Sub-Conta do Plano de Contas Informada para o Fornecedor não Encontrada.',EdCodFor);

                 end;

                 end
              else
                 begin

                 pnUfeEnt.Caption := '';
                 pnNomFor.Caption := '';

                 fmsgErro('Fornecedor Informado não Encontrado.',EdCodFor);

              end;

              end
           else
              begin

              pnUfeEnt.Caption := '';
              pnNomFor.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigátorio não Informado.',EdCodFor);

           end;
        end;
     end;
  end;
end;

procedure TfmManEnt.EdCodPfaExit(Sender: TObject);
var
  saida : boolean;
  LocPfa : string;
  UfeEmp : string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdNumDoc.Focused) and
        (not EdCodFor.Focused) and
        (not EdId_CmpPed.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEnt.State <> dsBrowse then begin

           if Trim(CmpEntCodPfa.Value) <> '' then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = '+ Quotedstr(IntToStr(CmpEntCodEmp.Value));
                   Open;

                   UfeEmp := FieldbyName('SigUfe').AsString;

              end;

              if CmpEntUfeEnt.Value = 'EX' then
                 LocPfa := 'Importacao ou Exportacao'
              else
                 begin

                 if CmpEntUfeEnt.Value <> UfeEmp then
                    LocPfa := 'Outros Estados'
                 else
                    LocPfa := 'Mesmo Estado'

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstPfa.DscPfa,'+
                           '        EstPfa.CodCf1 '+
                           ' From EstPfa '+
                           ' Where EstPfa.TipPfa = '+ QuotedStr(CmpEntTipPfa.Value)+
                           '   and EstPfa.CodPfa = '+ QuotedStr(CmpEntCodPfa.Value)+
                           '   and EstPfa.LocPfa = '+ QuotedStr(LocPfa);
                   Open;

              end;

              if Trim( quSql.FieldbyName('DscPfa').AsString ) <> '' then begin

                 CmpEntCodCfo.Value := Trim(quSQL.FieldbyName('CodCf1').AsString);
                 
                 pnNomPfa.Caption := Trim(quSql.FieldbyName('DscPfa').AsString);

                 end
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

procedure TfmManEnt.DsEn2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  
  if CmpEn2.State = dsBrowse then begin

     AntDscEn2 := CmpEn2DscEn2.Value;
     AntPacEn2 := CmpEn2PacEn2.Value;
     AntVluEn2 := CmpEn2VluEn2.Value;

  end;

  if CmpEntFlgOco.Value = 'Sim' then
     pnFlgOco.Color := clRed
  else
     pnFlgOco.Color := clLime;

  pnDesEn2.Caption := CmpEn2DesEn2.Value;
  pnObsEn2.Caption := CmpEn2ObsEn2.Value;

  pnId_CmpEnt.Caption := IntToStr(CmpEntId_CmpEnt.Value);

  pnTotEnt.Caption := FormatFloat('###,###,##0.00',CmpEntTotEnt.Value);
  pnTotGer.Caption := FormatFloat('###,###,##0.00',CmpEntTotGer.Value);

  if CmpEn2.State = dsInsert then
     pnNroEn2.Caption := FNumZeros(IntToStr(CmpEn2NroEn2.Value),3)+ '/' +FNumZeros(IntToStr(CmpEntQtiEnt.Value + 1),3)
  else
     pnNroEn2.Caption := FNumZeros(IntToStr(CmpEn2NroEn2.Value),3)+ '/' +FNumZeros(IntToStr(CmpEntQtiEnt.Value),3);

end;

procedure TfmManEnt.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManEnt.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           CmpEntCodEmp.Value := fmPsqEmp.CodEmp;

           EdCodEmp.Text := IntToStr(CmpEntCodEmp.Value);

           pnApeEmp.Caption := fmPsqEmp.NomEmp;

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;

     if CmpEntCodEmp.Value > 0 then EdId_CmpPed.SetFocus;

  end;
end;

procedure TfmManEnt.EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           CmpEntCodFor.Value := fmAuxIni.CodFor;
           CmpEntUfeEnt.Value := fmAuxIni.SigUfe;
           CmpEntConPlc.Value := fmAuxIni.ConPlc;
           CmpEntSubPlc.Value := fmAuxIni.SubPlc;

           EdCodFor.Text := IntToStr(CmpEntCodFor.Value);

           pnUfeEnt.Caption := fmAuxIni.SigUfe;
           pnNomFor.Caption := fmAuxIni.NomFor;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if CmpEntCodFor.Value > 0 then EdNumDoc.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           CmpEntCodFor.Value := fmAuxPsq.CodFor;
           CmpEntUfeEnt.Value := fmAuxPsq.SigUfe;
           CmpEntConPlc.Value := fmAuxPsq.ConPlc;
           CmpEntSubPlc.Value := fmAuxPsq.SubPlc;

           EdCodFor.Text := IntToStr(CmpEntCodFor.Value);

           pnUfeEnt.Caption := fmAuxPsq.SigUfe;
           pnNomFor.Caption := fmAuxPsq.NomFor;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CmpEntCodFor.Value > 0 then EdNumDoc.SetFocus;

  end;
end;

procedure TfmManEnt.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  LocPfa : string;
  UfeEmp : string;
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     with quSql,SQL do begin

          Close;
          Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = '+ Quotedstr(IntToStr(CmpEntCodEmp.Value));
          Open;

          UfeEmp := FieldbyName('SigUfe').AsString;

     end;
  
     if CmpEntUfeEnt.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if CmpEntUfeEnt.Value <> UfeEmp then
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
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString := 'Entrada';
                  Params[1].AsString := LocPfa;

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           CmpEntCodPfa.Value := fmPsqPfa.CodPfa;

           EdCodPfa.Text := CmpEntCodPfa.Value;

           pnNomPfa.Caption := fmPsqPfa.NomPfa;

        end;

     finally

        FreeAndNil(fmPsqPfa);

     end;

     if Trim( CmpEntCodPfa.Value ) <> '' then begin

        if EdClpEnt.Enabled then
           EdClpEnt.SetFocus
        else
           EdCodTip.SetFocus;

     end;
  end;

  if key = 113 then begin {F2 - Inteligente}

     with quSql,SQL do begin

          Close;
          Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = '+ Quotedstr(IntToStr(CmpEntCodEmp.Value));
          Open;

          UfeEmp := FieldbyName('SigUfe').AsString;

     end; 
  
     if CmpEntUfeEnt.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if CmpEntUfeEnt.Value <> UfeEmp then
           LocPfa := 'Outros Estados'
        else
           LocPfa := 'Mesmo Estado'

     end;

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'P';

        fmAuxPsq.LocPfa := LocPfa;
        fmAuxPsq.TipPfa := 'Entrada';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodPfa ) <> '' then begin

           CmpEntCodPfa.Value := fmAuxPsq.CodPfa;

           EdCodPfa.Text := CmpEntCodPfa.Value;

           pnNomPfa.Caption := fmAuxPsq.NomPfa;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpEntCodPfa.Value ) <> '' then begin

        if EdClpEnt.Enabled then
           EdClpEnt.SetFocus
        else
           EdCodTip.SetFocus;

     end;
  end;
end;

procedure TfmManEnt.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdCodClp.Focused) or (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) then begin

     if key = 114 then begin {F3 - Descrição}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := CmpEn2CodClp.Value;

           fmAuxIni.TipoPesq := 'IC';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpEn2CodClp.Value := fmAuxIni.CodClp;
                 CmpEn2CodGru.Value := fmAuxIni.CodGru;
                 CmpEn2CodSub.Value := fmAuxIni.CodSub;
                 CmpEn2CodPro.Value := fmAuxIni.CodPro;

                 end
              else
                 CmpEn2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmAuxIni.CodClp,fmAuxIni.CodGru,fmAuxIni.CodSub,fmAuxIni.CodPro]),[LoPartialKey]);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if Trim( CmpEn2CodPro.Value ) <> '' then begin

           if EdCodPro.Enabled then SaiProduto;

           end
        else
           begin

           if EdCodClp.Focused then EdCodClp.SetFocus;
           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;

     if key = 116 then begin {F5 - Referência}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := CmpEn2CodClp.Value;

           fmAuxIni.TipoPesq := 'R';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpEn2CodClp.Value := fmAuxIni.CodClp;
                 CmpEn2CodGru.Value := fmAuxIni.CodGru;
                 CmpEn2CodSub.Value := fmAuxIni.CodSub;
                 CmpEn2CodPro.Value := fmAuxIni.CodPro;

                 end
              else
                 CmpEn2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmAuxIni.CodClp,fmAuxIni.CodGru,fmAuxIni.CodSub,fmAuxIni.CodPro]),[LoPartialKey]);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if Trim( CmpEn2CodPro.Value ) <> '' then begin

           if EdCodPro.Enabled then SaiProduto;

           end
        else
           begin

           if EdCodClp.Focused then EdCodClp.SetFocus;
           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;

     if key = 117 then begin {F6 - Inteligente/Descrição}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := CmpEn2CodClp.Value;

           fmAuxPsq.TipoPesq := 'IC';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpEn2CodClp.Value := fmAuxPsq.CodClp;
                 CmpEn2CodGru.Value := fmAuxPsq.CodGru;
                 CmpEn2CodSub.Value := fmAuxPsq.CodSub;
                 CmpEn2CodPro.Value := fmAuxPsq.CodPro;

                 end
              else
                 CmpEn2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmAuxPsq.CodClp,fmAuxPsq.CodGru,fmAuxPsq.CodSub,fmAuxPsq.CodPro]),[LoPartialKey]);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( CmpEn2CodPro.Value ) <> '' then begin

           if EdCodPro.Enabled then SaiProduto;

           end
        else
           begin

           if EdCodClp.Focused then EdCodClp.SetFocus;
           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;

     if key = 118 then begin {F7 - Inteligente/Referência}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := CmpEn2CodClp.Value;

           fmAuxPsq.TipoPesq := 'R';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpEn2CodClp.Value := fmAuxPsq.CodClp;
                 CmpEn2CodGru.Value := fmAuxPsq.CodGru;
                 CmpEn2CodSub.Value := fmAuxPsq.CodSub;
                 CmpEn2CodPro.Value := fmAuxPsq.CodPro;

                 end
              else
                 CmpEn2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmAuxPsq.CodClp,fmAuxPsq.CodGru,fmAuxPsq.CodSub,fmAuxPsq.CodPro]),[LoPartialKey]);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        if Trim( CmpEn2CodPro.Value ) <> '' then begin

           if EdCodPro.Enabled then SaiProduto;

           end
        else
           begin

           if EdCodClp.Focused then EdCodClp.SetFocus;
           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;
  end;

  if key = 119 then begin {F8 - PartNumber}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpEn2CodClp.Value;

        fmAuxIni.TipoPesq := 'U';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if EdCodGru.Enabled then begin

              CmpEn2CodClp.Value := fmAuxIni.CodClp;
              CmpEn2CodGru.Value := fmAuxIni.CodGru;
              CmpEn2CodSub.Value := fmAuxIni.CodSub;
              CmpEn2CodPro.Value := fmAuxIni.CodPro;

              end
           else
              CmpEn2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmAuxIni.CodClp,fmAuxIni.CodGru,fmAuxIni.CodSub,fmAuxIni.CodPro]),[LoPartialKey]);

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpEn2CodPro.Value ) <> '' then begin

        if EdCodPro.Enabled then SaiProduto;

        end
     else
        begin

        if EdCodClp.Focused then EdCodClp.SetFocus;
        if EdCodGru.Focused then EdCodGru.SetFocus;
        if EdCodSub.Focused then EdCodSub.SetFocus;
        if EdCodPro.Focused then EdCodPro.SetFocus;

     end;
  end;

  if key = 115 then begin // F4 - Estoque //

     try

        fmPsqEs2 := TfmPsqEs2.Create(Self);

        fmPsqEs2.sEntr := sEntr;

        fmPsqEs2.sCodClp := CmpEn2CodClp.Value;

        if ( Trim(CmpEn2CodGru.Value) <> '' ) or
           ( Trim(CmpEn2CodSub.Value) <> '' ) or
           ( Trim(CmpEn2CodPro.Value) <> '' ) then begin

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
                        ' Where EstPro.CodClp = '+ QuotedStr('1')+
                        '   and EstPro.FlbPro = '+ QuotedStr(' ');

                if Trim( CmpEn2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '+ QuotedStr(CmpEn2CodGru.Value);
                if Trim( CmpEn2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '+ QuotedStr(CmpEn2CodSub.Value);
                if Trim( CmpEn2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '+ QuotedStr(CmpEn2CodPro.Value);

                Text := Text + ' Order by EstPro.DscPro';

                Open;

           end;
        end;

        fmPsqEs2.ShowModal;

        if Trim( fmPsqEs2.CodGru ) <> '' then begin

           if EdCodGru.Enabled then begin

              if sEntr = 'S' then begin

                 CmpEn2CodClp.Value := fmPsqEs2.CodClp;
                 CmpEn2CodGru.Value := fmPsqEs2.CodGru;
                 CmpEn2CodSub.Value := fmPsqEs2.CodSub;
                 CmpEn2CodPro.Value := fmPsqEs2.CodPro;

              end;

              end
           else
              CmpEn2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmPsqEs2.CodClp,fmPsqEs2.CodGru,fmPsqEs2.CodSub,fmPsqEs2.CodPro]),[LoPartialKey]);

        end;

     finally

        FreeAndNil(fmPsqEs2);

     end;

     if Trim( CmpEn2CodPro.Value ) <> '' then begin

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

     if CmpEntFlgOco.Value = 'Sim' then begin

        try

           fmPsqOce := TfmPsqOce.Create(Self);

           fmPsqOce.CmpVal.Close;
           fmPsqOce.CmpVal.Params[0].AsInteger := CmpEntId_CmpEnt.Value;
           fmPsqOce.CmpVal.Open;

           fmPsqOce.CmpQtd.Close;
           fmPsqOce.CmpQtd.Params[0].AsInteger := CmpEntId_CmpEnt.Value;
           fmPsqOce.CmpQtd.Open;

           fmPsqOce.ShowModal;

        finally

           FreeAndNil(fmPsqOce);

        end;
     end;
  end;

  if key = 27 then begin

     if CmpEnt.State <> dsBrowse then begin

        CmpEnt.CancelUpdates;

        Close;

        end
     else
        begin

        if CmpEn2.State <> dsBrowse then CmpEn2.CancelUpdates;

        if EdQtpEn2.Enabled then begin

           pnDesEn2.Visible := True;
           pnObsEn2.Visible := True;

           EdCodClp.Enabled := False;
           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpEn2.Enabled := False;
           EdVluEn2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdIpiEn2.Enabled := False;
           EdIcmEn2.Enabled := False;
           EdImpEn2.Enabled := False;           
           EdDscEn2.Enabled := False;
           EdPacEn2.Enabled := False;
           EdVacEn2.Enabled := False;
           EdDesEn2.Enabled := False;
           EdObsEn2.Enabled := False;

           grEn2.SetFocus;

           end
        else
           begin

           if EdDesEn2.Enabled then begin

              EdDesEn2.Enabled := False;
              EdObsEn2.Enabled := False;

              pnDesEn2.Visible := True;
              pnObsEn2.Visible := True;

              grEn2.SetFocus;

              end
           else
              Close;
        end;
     end;
  end;

  if key = 123 then begin {F12-Finalizar a Entrada dos Itens}

     if CmpEntTotEnt.Value > 0 then begin

        if grEn2.Focused then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Delete From CmpEn2'+
                        ' Where CmpEn2.Id_CmpEnt = '+ QuotedStr(IntToStr(CmpEntId_CmpEnt.Value)) +
                        '   and CmpEn2.QtpEn2    = '+ QuotedStr('0') ;
                ExecSQL;

           end;

           CmpEnt.Close;
           CmpEnt.Open;

           CmpEn2.Close;
           CmpEn2.Open;           

           try

              fmManEn1 := TfmManEn1.Create(Self);
              fmManEn1.ShowModal;

           finally

              FreeAndNil(fmManEn1);

           end;

           if Finalizar = 'S' then begin

              Finalizar := 'N';

              EdId_CmpPed.Clear;
              
              EdCodEmp.Clear;
              EdNumDoc.Clear;
              EdCodFor.Clear;
              EdCodPfa.Clear;
              EdClpEnt.Clear;
              EdCodTip.Clear;
              EdCodTmo.Clear;
              EdDteOpe.Clear;
              EdDteDoc.Clear;
              EdSerNot.Clear;
              EdDteCre.Clear;
              EdIcmEnt.Clear;
              EdIpiEnt.Clear;
              EdDscEnt.Clear;
              EdPacEnt.Clear;

              pnId_CmpEnt.Caption := '0';

              pnApeEmp.Caption := '';
              pnUfeEnt.Caption := '';
              pnNomFor.Caption := '';
              pnNomPfa.Caption := '';
              pnNomClp.Caption := '';
              pnNomTmo.Caption := '';

              CmpEnt.Close;
              CmpEnt.Params[0].AsInteger  := 0;
              CmpEnt.Open;

              CmpEn2.Close;
              CmpEn2.Open;

              CmpEnt.Insert;

              EdCodEmp.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManEnt.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpEn2CodClp.Value;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then CmpEn2CodGru.Value := fmAuxIni.CodGru;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpEn2CodGru.Value ) <> '' then
        SaiGrupo
     else
        EdCodGru.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := CmpEn2CodClp.Value;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then CmpEn2CodGru.Value := fmAuxPsq.CodGru;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpEn2CodGru.Value ) <> '' then
        SaiGrupo
     else
        EdCodGru.SetFocus;

  end;
end;

procedure TfmManEnt.EdCodGruExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not EdCodClp.Focused then
        saida := True
     else
        saida := False;

     if saida then SaiGrupo;

     end
  else
     begin

     if not EdCodClp.Enabled then begin

        if (Tecla = 'UP') then begin

           if CmpEntQtiEnt.Value > 0 then begin

              pnDesEn2.Visible := True;
              pnObsEn2.Visible := True;

              EdCodClp.Enabled := False;
              EdCodGru.Enabled := False;
              EdCodSub.Enabled := False;
              EdCodPro.Enabled := False;
              EdQtpEn2.Enabled := False;
              EdVluEn2.Enabled := False;
              EdCodUnd.Enabled := False;
              EdIpiEn2.Enabled := False;
              EdIcmEn2.Enabled := False;
              EdImpEn2.Enabled := False;              
              EdDscEn2.Enabled := False;
              EdPacEn2.Enabled := False;
              EdVacEn2.Enabled := False;
              EdDesEn2.Enabled := False;
              EdObsEn2.Enabled := False;

              if CmpEn2.State <> dsBrowse then
                 CmpEn2.CancelUpdates
              else
                 begin

                 if not CmpEn2.Bof then CmpEn2.Prior;

              end;

              grEn2.SetFocus;

              end
           else
              EdCodGru.SetFocus;
        end;
     end;
  end;
end;

procedure TfmManEnt.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( CmpEn2CodClp.Value ) <> '' then fmAuxIni.CodClp := CmpEn2CodClp.Value;
        if Trim( CmpEn2CodGru.Value ) <> '' then fmAuxIni.CodGru := CmpEn2CodGru.Value;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           CmpEn2CodGru.Value := fmAuxIni.CodGru;
           CmpEn2CodSub.Value := fmAuxIni.CodSub;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpEn2CodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( CmpEn2CodClp.Value ) <> '' then fmAuxPsq.CodClp := CmpEn2CodClp.Value;
        if Trim( CmpEn2CodGru.Value ) <> '' then fmAuxPsq.CodGru := CmpEn2CodGru.Value;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           CmpEn2CodGru.Value := fmAuxPsq.CodGru;
           CmpEn2CodSub.Value := fmAuxPsq.CodSub;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpEn2CodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;

  end;
end;

procedure TfmManEnt.EdCodSubExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodGru.Focused) and
        (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiSubGrupo;

  end;
end;

procedure TfmManEnt.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( CmpEn2CodClp.Value ) <> '' then fmAuxIni.CodClp := CmpEn2CodClp.Value;
        if Trim( CmpEn2CodGru.Value ) <> '' then fmAuxIni.CodGru := CmpEn2CodGru.Value;
        if Trim( CmpEn2CodSub.Value ) <> '' then fmAuxIni.CodSub := CmpEn2CodSub.Value;

        fmAuxIni.TipoPesq := 'IC';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if EdCodGru.Enabled then begin

              CmpEn2CodClp.Value := fmAuxIni.CodClp;
              CmpEn2CodGru.Value := fmAuxIni.CodGru;
              CmpEn2CodSub.Value := fmAuxIni.CodSub;
              CmpEn2CodPro.Value := fmAuxIni.CodPro;

           end;
        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpEn2CodPro.Value ) <> '' then
        SaiProduto
     else
        EdCodPro.SetFocus;

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( CmpEn2CodClp.Value ) <> '' then fmAuxPsq.CodClp := CmpEn2CodClp.Value;
        if Trim( CmpEn2CodGru.Value ) <> '' then fmAuxPsq.CodGru := CmpEn2CodGru.Value;
        if Trim( CmpEn2CodSub.Value ) <> '' then fmAuxPsq.CodSub := CmpEn2CodSub.Value;

        fmAuxPsq.TipoPesq := 'IC';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           CmpEn2CodClp.Value := fmAuxPsq.CodClp;
           CmpEn2CodGru.Value := fmAuxPsq.CodGru;
           CmpEn2CodSub.Value := fmAuxPsq.CodSub;
           CmpEn2CodPro.Value := fmAuxPsq.CodPro;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpEn2CodPro.Value ) <> '' then
        SaiProduto
     else
        EdCodPro.SetFocus;

  end;
end;

procedure TfmManEnt.EdCodProExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiProduto;

  end;
end;

procedure TfmManEnt.EdQtpEn2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEn2.State <> dsBrowse then begin

           if CmpEn2QtpEn2.Value > 0 then
              CmpEn2TotEn2.Value := fRound(CmpEn2VlqEn2.Value * CmpEn2QtpEn2.Value,2)
           else
              fmsgErro('Campo de Preenchimento Obrigatorio',EdQtpEn2);

        end;
     end;

     end
  else
     begin

     if (Tecla = 'UP') and (not EdCodGru.Enabled) then EdQtpEn2.SetFocus;

  end;
end;

procedure TfmManEnt.EdVluEn2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdQtpEn2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEn2.State <> dsBrowse then begin

           if CmpEn2VluEn2.Value > 0 then begin

              if CmpEn2VluEn2.Value <> AntVluEn2 then begin

                 AntVluEn2 := CmpEn2VluEn2.Value;

                 CmpEn2VlqEn2.Value := CmpEn2VluEn2.Value;

                 if CmpEn2DscEn2.Value > 0 then begin

                    CmpEn2VdsEn2.Value := fRound((CmpEn2DscEn2.Value * CmpEn2VlqEn2.Value)/100,4);

                    CmpEn2VlqEn2.Value := fRound(CmpEn2VlqEn2.Value - CmpEn2VdsEn2.Value,4);

                 end;

                 if CmpEn2PacEn2.Value > 0 then begin

                    CmpEn2VacEn2.Value := fRound((CmpEn2PacEn2.Value * CmpEn2VlqEn2.Value)/100,4);

                    CmpEn2VlqEn2.Value := fRound(CmpEn2VlqEn2.Value + CmpEn2VacEn2.Value,4);

                 end;

                 CmpEn2TotEn2.Value := fRound(CmpEn2VlqEn2.Value * CmpEn2QtpEn2.Value,2);

              end;

              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio.',EdVluEn2);
        end;
     end;
  end;
end;

procedure TfmManEnt.grEn2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  NroEn2 : integer;
begin
  inherited;
  if key = 68 then begin {D - Mudar Descrição/Observações Sobre o Item}

     if CmpEn2Id_CmpEn2.Value > 0 then begin

        pnDesEn2.Visible := False;
        pnObsEn2.Visible := False;

        EdDesEn2.Enabled := True;
        EdObsEn2.Enabled := True;

        CmpEn2.Edit;

        EdDesEn2.SetFocus;

     end;
  end;

  if key = 13 then begin {Tecla - ENTER}

     if CmpEn2Id_CmpEn2.Value > 0 then begin

        EdQtpEn2.Enabled := True;
        EdVluEn2.Enabled := True;
        EdIpiEn2.Enabled := True;
        EdIcmEn2.Enabled := True;
        EdImpEn2.Enabled := True;
        EdDscEn2.Enabled := True;
        EdPacEn2.Enabled := True;
        EdVacEn2.Enabled := True;

        if CmpEntIpiEnt.Value > 0 then EdIpiEn2.Enabled := False;
        if CmpEntIcmEnt.Value > 0 then EdIcmEn2.Enabled := False;
        if CmpEntDscEnt.Value > 0 then EdDscEn2.Enabled := False;

        if CmpEntPacEnt.Value > 0 then begin

           EdPacEn2.Enabled := False;
           EdVacEn2.Enabled := False;

        end;

        if CmpEn2CodClp.Value = '9' then begin

           pnDesEn2.Visible := False;
           pnObsEn2.Visible := False;

           EdCodUnd.Enabled := True;
           EdDesEn2.Enabled := True;
           EdObsEn2.Enabled := True;

           EdDscEn2.Enabled := False;
           EdPacEn2.Enabled := False;
           EdVacEn2.Enabled := False;

        end;

        CmpEn2.Edit;

        EdQtpEn2.SetFocus;

     end;
  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if CmpEntQtiEnt.Value = 0 then
        CmpEn2.Append
     else
        begin

        if CmpEn2NroEn2.Value = CmpEntQtiEnt.Value then CmpEn2.Append;

     end;
  end;

  if key = 46 then begin {Tecla - DEL}

     if CmpEn2Id_CmpEn2.Value > 0 then begin

        NroEn2 := CmpEn2NroEn2.Value;

        CmpEn2.Delete;

        with CmpEn2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpEn2.State <> dsBrowse then CmpEn2.CancelUpdates;

                grEn2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        CmpEn2.Close;
        CmpEn2.Open;

        CmpEnt.Close;
        CmpEnt.Open;

        if NroEn2 < CmpEntQtiEnt.Value then
           CmpEn2.Locate('Id_CmpEnt;NroEn2',VarArrayOf([CmpEn2Id_CmpEnt.Value,NroEn2]),[LoPartialKey])
        else
           begin

           if CmpEntQtiEnt.Value = 0 then
              CmpEn2.Append
           else
              CmpEn2.Last;

        end;
     end;
  end;
end;

procedure TfmManEnt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja Realmente Abandonar a Entrada dos Itens ?','O') then begin

        if CmpEnt.State <> dsBrowse then CmpEnt.CancelUpdates;
        if CmpEn2.State <> dsBrowse then CmpEn2.CancelUpdates;

        fmManEpe.CmpEnt.Close;
        fmManEpe.CmpEnt.Open;

        fmManEpe.CmpEn2.Close;
        fmManEpe.CmpEn2.Open;

        Action := CaFree;

        end
     else
        begin

        Abort;

        if CmpEntId_CmpEnt.Value = Null then CmpEnt.Insert;

     end;

     end
  else
     begin

     fmManEpe.CmpEnt.Close;
     fmManEpe.CmpEnt.Open;

     fmManEpe.CmpEn2.Close;
     fmManEpe.CmpEn2.Open;

     Action := CaFree;

  end;
end;

procedure TfmManEnt.bpsqPfaClick(Sender: TObject);
var
  LocPfa : string;
  UfeEmp : string;
begin
  inherited;

  with quSql,SQL do begin

       Close;
       Text := ' Select GerEmp.SigUfe From GerEmp Where GerEmp.CodEmp = '+ Quotedstr(IntToStr(CmpEntCodEmp.Value));
       Open;

       UfeEmp := FieldbyName('SigUfe').AsString;

  end;

  if CmpEntUfeEnt.Value = 'EX' then
     LocPfa := 'Importacao ou Exportacao'
  else
     begin

     if CmpEntUfeEnt.Value <> UfeEmp then
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
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString := 'Entrada';
               Params[1].AsString := LocPfa;

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        CmpEntCodPfa.Value := fmPsqPfa.CodPfa;

        EdCodPfa.Text := CmpEntCodPfa.Value;

        pnNomPfa.Caption := fmPsqPfa.NomPfa;

     end;

  finally   

     FreeAndNil(fmPsqPfa);

  end;

  if Trim( CmpEntCodPfa.Value ) <> '' then begin

     if EdClpEnt.Enabled then
        EdClpEnt.SetFocus
     else
        EdCodTip.SetFocus;

  end;
end;

procedure TfmManEnt.bpsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        CmpEntCodFor.Value := fmAuxIni.CodFor;
        CmpEntUfeEnt.Value := fmAuxIni.SigUfe;
        CmpEntConPlc.Value := fmAuxIni.ConPlc;
        CmpEntSubPlc.Value := fmAuxIni.SubPlc;

        EdCodFor.Text := IntToStr(CmpEntCodFor.Value);

        pnUfeEnt.Caption := fmAuxIni.SigUfe;
        pnNomFor.Caption := fmAuxIni.NomFor;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if CmpEntCodFor.Value > 0 then EdNumDoc.SetFocus;

end;

procedure TfmManEnt.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        CmpEntCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(CmpEntCodEmp.Value);

        pnApeEmp.Caption := fmPsqEmp.NomEmp;

     end;

  finally   

     FreeAndNil(fmPsqEmp);

  end;

  if CmpEntCodEmp.Value > 0 then EdCodFor.SetFocus;

end;

procedure TfmManEnt.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if Trim(CmpEntSitEnt.Value) = 'Concluida' then fMsg('Operação não Pode ser Realizada. Entrada com Lançamento já Realizado.','E')

     else if Trim(CmpEntSitEnt.Value) = 'Cancelada' then fMsg('Operação não Pode ser Realizada. Entrada com Lançamento Cancelado.','E');

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManEnt.EdClpEntExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodPfa.Focused) and
        (not EdNumDoc.Focused) and
        (not EdCodFor.Focused) and
        (not EdId_CmpPed.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEnt.State <> dsBrowse then begin

           if Trim( CmpEntCodClp.Value ) <> '' then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(CmpEntCodClp.Value);
                   Open;

              end;

              if Trim( quSql.FieldbyName('NomClp').AsString) <> '' then
                 pnNomClp.Caption := quSql.FieldbyName('NomClp').AsString
              else
                 begin

                 pnNomClp.Caption := '';

                 fmsgErro('Tipo de Classificação Informada não Encontrada.',EdClpEnt);

              end;

              end
           else
              begin

              CmpEntCodClp.Clear;

              pnNomClp.Caption := '';

           end;
        end;
     end;
  end;
end;

procedure TfmManEnt.EdClpEntKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then begin

           CmpEntCodClp.Value := fmPsqClp.CodClp;

           EdCodClp.Text := CmpEntCodClp.Value;

           pnNomClp.Caption := fmPsqClp.NomClp;

        end;

     finally

        FreeAndNil(fmPsqClp);

     end;

     if Trim( CmpEntCodClp.Value ) <> '' then EdCodTip.SetFocus;

  end;
end;

procedure TfmManEnt.EdCodClpExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not grEn2.Focused then
        saida := True
     else
        saida := False;

     if saida then SaiClassificacao;

     end
  else
     begin

     if (Tecla = 'UP') then begin

        if CmpEntQtiEnt.Value > 0 then begin

           pnDesEn2.Visible := True;
           pnObsEn2.Visible := True;

           EdCodClp.Enabled := False;
           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpEn2.Enabled := False;
           EdVluEn2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdIpiEn2.Enabled := False;
           EdIcmEn2.Enabled := False;
           EdImpEn2.Enabled := False;           
           EdDscEn2.Enabled := False;
           EdPacEn2.Enabled := False;
           EdVacEn2.Enabled := False;
           EdDesEn2.Enabled := False;
           EdObsEn2.Enabled := False;

           if CmpEn2.State <> dsBrowse then
              CmpEn2.CancelUpdates
           else
              begin

              if not CmpEn2.Bof then CmpEn2.Prior;

           end;

           grEn2.SetFocus;

           end
        else
           EdCodClp.SetFocus;
     end;
  end;
end;

procedure TfmManEnt.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then CmpEn2CodClp.Value := fmPsqClp.CodClp;

     finally   

        FreeAndNil(fmPsqClp);

     end;

     if Trim( CmpEn2CodClp.Value ) <> '' then
        SaiClassificacao
     else
        EdCodClp.SetFocus;

  end;
end;

procedure TfmManEnt.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqClp := TfmPsqClp.Create(Self);

     fmPsqClp.ShowModal;

     if Trim( fmPsqClp.CodClp ) <> '' then begin

        CmpEntCodClp.Value := fmPsqClp.CodClp;

        EdCodClp.Text := CmpEntCodClp.Value;

        pnNomClp.Caption := fmPsqClp.NomClp;

     end;

  finally   

     FreeAndNil(fmPsqClp);

  end;

  if Trim( CmpEntCodClp.Value ) <> '' then EdCodTip.SetFocus;

end;

procedure TfmManEnt.EdNumDocExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') and (Tecla <> 'MouseUP') then begin

     if (not EdCodFor.Focused) and
        (not EdId_CmpPed.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEntNumDoc.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatório não Informado.',EdNumDoc);

     end;
  end;
end;

procedure TfmManEnt.EdVacEn2Exit(Sender: TObject);
var
  saida : Boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDscEn2.Focused) and
        (not EdIcmEn2.Focused) and
        (not EdIpiEn2.Focused) and
        (not EdVluEn2.Focused) and
        (not EdQtpEn2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEn2.State <> dsBrowse then begin

           if CmpEn2VacEn2.Value <> AntVacEn2 then begin

              CmpEn2VlqEn2.Value := fRound(CmpEn2VluEn2.Value - CmpEn2VdsEn2.Value,4);

              if CmpEn2VacEn2.Value > 0 then begin

                 CmpEn2PacEn2.Value := fRound((CmpEn2VacEn2.Value * 100)/CmpEn2VlqEn2.Value,2);

                 CmpEn2VlqEn2.Value := fRound(CmpEn2VlqEn2.Value + CmpEn2VacEn2.Value,4);

                 end
              else
                 CmpEn2PacEn2.Value := 0;

              AntPacEn2 := CmpEn2PacEn2.Value;
              AntVacEn2 := CmpEn2VacEn2.Value;

              CmpEn2TotEn2.Value := fRound(CmpEn2VlqEn2.Value * CmpEn2QtpEn2.Value,2);

           end;
        end;
     end;
  end;
end;

procedure TfmManEnt.EdCodTmoExit(Sender: TObject);
var
  saida  : boolean;
  QtdReg : integer;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodTip.Focused) and
        (not EdClpEnt.Focused) and
        (not EdCodPfa.Focused) and
        (not EdNumDoc.Focused) and
        (not EdCodFor.Focused) and
        (not EdId_CmpPed.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEnt.State <> dsBrowse then begin

           if CmpEntCodTmo.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select FinTmo.NomTmo From FinTmo Where FinTmo.CodTmo = '+ QuotedStr(IntToStr(CmpEntCodTmo.Value));
                   Open;

              end;

              if Trim( quSql.FieldbyName('NomTmo').AsString) <> '' then begin

                 pnNomTmo.Caption := quSql.FieldbyName('NomTmo').AsString;

                 if CmpEntCodTmo.Value > 1 then begin

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select Count(*) as QtdReg From FinCmo Where FinCmo.CodTmo = '+ QuotedStr(IntToStr(CmpEntCodTmo.Value));
                         Open;

                         QtdReg := quSQL.FieldbyName('QtdReg').AsInteger;

                    end;

                    if QtdReg > 0 then begin

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select * From FinCmo Where FinCmo.CodTmo = '+ QuotedStr(IntToStr(CmpEntCodTmo.Value)) +' and FinCmo.NroCmo = '+ QuotedStr(IntToStr(QtdReg));
                            Open;

                            CmpEntValTmo.Value := FieldbyName('Vl1Cmo').AsFloat;

                       end;

                       end
                    else
                       CmpEntValTmo.Value := 1;

                    end
                 else
                    CmpEntValTmo.Value := 1;

                 EdValTmo.Value := CmpEntValTmo.Value;

                 EdValTmo.SetFocus;
                 
                 end
              else
                 begin

                 pnNomTmo.Caption := '';

                 EdValTmo.Value := 0;

                 fmsgErro('Tipo de Moeda Informada não Encontrada.',EdCodTmo);

              end;

              end
           else
              begin

              pnNomTmo.Caption := '';

              EdValTmo.Value := 0;

              fmsgErro('Tipo de Moeda Informada não Encontrada.',EdCodTmo);

           end;
        end;
     end;
  end;
end;

procedure TfmManEnt.Panel1Exit(Sender: TObject);
var
  SeqEnt,Status : string;
begin
  inherited;
  if grEn2.Focused then begin

     Status := 'dsEdit';

     if CmpEnt.State = dsInsert then begin

        Status := 'dsInsert';

        CmpEntCodPfa.Value := Trim(CmpEntCodPfa.Value);
        CmpEntTipPfa.Value := Trim(CmpEntTipPfa.Value);
        CmpEntSerNot.Value := Trim(CmpEntSerNot.Value);

        if CmpEntDteOpe.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdDteOpe);
        if CmpEntDteDoc.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdDteDoc);
        if CmpEntDteCre.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdDteCre);
        if CmpEntCodFor.Value = 0 then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodFor);

        if CmpEntCodTip.Value = 0 then fmsgErro('Região operacional para a operação não informada.',EdCodTip);

        if Trim( CmpEntCodPfa.Value ) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdCodPfa);

        Randomize;
        SeqEnt := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                  copy(TimeToStr(Time),1,2)+
                  copy(TimeToStr(Time),4,2)+
                  copy(TimeToStr(Time),7,2)+
                  FNumZeros( Trim( IntToStr(GUsu_Id) ),3)+
                  FNumZeros( Trim( IntToStr(Random(50000)) ),5);

        CmpEntSeqEnt.Value := SeqEnt;

        sContinuar := 'N';

        with quSQL,SQL do begin

             Close;
             Text := ' Select EstPfa.ModPfa From EstPfa Where EstPfa.CodPfa = '+ QuotedStr(CmpEntCodPfa.Value) +' and EstPfa.TipPfa = '+ QuotedStr('Entrada');
             Open;

        end;

        if CmpEntCodTip.Value = 3 then begin

           if Trim(quSQL.FieldbyName('ModPfa').AsString) = 'Importacao' then begin

              try

                 fmManEn6 := TfmManEn6.Create(Self);
                 fmManEn6.ShowModal;

              finally

                 FreeAndNil(fmManEn6);

              end;

              end
           else
              sContinuar := 'S';

           end
        else
           sContinuar := 'S';

        end
     else
        begin

        sContinuar := 'S';
     
        if Trim(CmpEntSeqEnt.Value) = '' then begin

           Randomize;
           SeqEnt := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                     copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                     copy(TimeToStr(Time),1,2)+
                     copy(TimeToStr(Time),4,2)+
                     copy(TimeToStr(Time),7,2)+
                     FNumZeros( Trim( IntToStr(GUsu_Id) ),3)+
                     FNumZeros( Trim( IntToStr(Random(50000)) ),5);

           CmpEntSeqEnt.Value := SeqEnt;

           end
        else
           SeqEnt := CmpEntSeqEnt.Value;

     end;

     if sContinuar = 'S' then begin

        with CmpEnt do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpEnt.State = dsBrowse then CmpEnt.Edit;

                if EdCodEmp.Enabled then
                   EdCodEmp.SetFocus
                else
                   begin

                   if EdNumDoc.Enabled then
                      EdNumDoc.SetFocus
                   else
                      begin

                      if EdDteOpe.Enabled then EdDteOpe.SetFocus;

                   end;
                end;
                      
                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select CmpEnt.Id_CmpEnt From CmpEnt Where CmpEnt.SeqEnt = '+ QuotedStr(SeqEnt);
             Open;

        end;

        CmpEnt.Close;
        CmpEnt.Params[0].AsInteger := quSQL.FieldbyName('Id_CmpEnt').AsInteger;
        CmpEnt.Open;

        CmpEn2.Close;
        CmpEn2.Open;

        if Status = 'dsInsert' then begin

           with fmManEpe.CmpEnt,SQL do begin

                Close;
                Text := fmManEpe.sBase +
                        ' Where CmpEnt.Id_CmpEnt = '+ QuotedStr(IntToStr(CmpEntId_CmpEnt.Value));
                Open;

           end;
        end;
        
        if CmpEntCodTip.Value = 3 then begin

           if CmpEntQtdOen.Value > 0 then begin

              if Trim(CmpEntModPfa.Value) = 'Importacao' then begin

                 try

                    fmManEn9 := TfmManEn9.Create(Self);

                    fmManEn9.CmpOen.Close;
                    fmManEn9.CmpOen.Params[0].AsInteger := CmpEntId_CmpEnt.Value;
                    fmManEn9.CmpOen.Open;

                    fmManEn9.ShowModal;

                 finally

                    FreeAndNil(fmManEn9);

                 end;

                 end
              else
                 begin

                 try

                    fmManEn5 := TfmManEn5.Create(Self);

                    fmManEn5.CmpOen.Close;
                    fmManEn5.CmpOen.Params[0].AsInteger := CmpEntId_CmpEnt.Value;
                    fmManEn5.CmpOen.Open;

                    fmManEn5.ShowModal;

                 finally

                    FreeAndNil(fmManEn5);

                 end;
              end;   

              CmpEnt.Close;
              CmpEnt.Open;

              CmpEn2.Close;
              CmpEn2.Open;

           end;
        end;

        EdId_CmpPed.Enabled := False;
        
        EdCodEmp.Enabled := False;
        EdNumDoc.Enabled := False;
        EdCodFor.Enabled := False;
        EdCodPfa.Enabled := False;
        EdClpEnt.Enabled := False;
        EdCodTip.Enabled := False;
        EdCodTmo.Enabled := False;
        EdValTmo.Enabled := False;
        EdDteOpe.Enabled := False;
        EdDteDoc.Enabled := False;
        EdSerNot.Enabled := False;
        EdDteCre.Enabled := False;
        EdIcmEnt.Enabled := False;
        EdIpiEnt.Enabled := False;
        EdDscEnt.Enabled := False;
        EdPacEnt.Enabled := False;

        EdId_CmpPed.Font.Style := [fsBold];

        EdCodEmp.Font.Style := [fsBold];
        EdNumDoc.Font.Style := [fsBold];
        EdCodFor.Font.Style := [fsBold];
        EdCodPfa.Font.Style := [fsBold];
        EdClpEnt.Font.Style := [fsBold];
        EdCodTip.Font.Style := [fsBold];
        EdCodTmo.Font.Style := [fsBold];
        EdValTmo.Font.Style := [fsBold];
        EdDteOpe.Font.Style := [fsBold];
        EdDteDoc.Font.Style := [fsBold];
        EdSerNot.Font.Style := [fsBold];
        EdDteCre.Font.Style := [fsBold];
        EdIcmEnt.Font.Style := [fsBold];
        EdIpiEnt.Font.Style := [fsBold];
        EdDscEnt.Font.Style := [fsBold];
        EdPacEnt.Font.Style := [fsBold];

        bPsqEmp.Enabled := False;
        bPsqFor.Enabled := False;
        bPsqPfa.Enabled := False;
        bPsqClp.Enabled := False;
        bPsqTmo.Enabled := False;

        if CmpEntQtiEnt.Value = 0 then
           CmpEn2.Append
        else
           grEn2.SetFocus;

        end
     else
        begin

        if EdCodEmp.Enabled then
           EdCodEmp.SetFocus
        else
           EdNumDoc.SetFocus;

     end;
  end;   
end;

procedure TfmManEnt.EdDteCreExit(Sender: TObject);
var
  saida  : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdSerNot.Focused) and
        (not EdDteDoc.Focused) and
        (not EdDteOpe.Focused) and
        (not EdValTmo.Focused) and
        (not EdCodTmo.Focused) and
        (not EdCodTip.Focused) and
        (not EdClpEnt.Focused) and
        (not EdCodPfa.Focused) and
        (not EdNumDoc.Focused) and
        (not EdCodFor.Focused) and
        (not EdId_CmpPed.Focused) and
        (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEnt.State <> dsBrowse then begin

           if CmpEntDteCre.Value = 0 then begin

              CmpEntDteCre.Value := CmpEntDteOpe.Value;

              EdDteCre.Date := CmpEntDteCre.Value;

           end;
        end;
     end;
  end;
end;

procedure TfmManEnt.Panel2Exit(Sender: TObject);
var
  NroEn2 : integer;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if psaida = 'Sim' then begin

        if Trim( CmpEn2DesEn2.Value ) <> '' then begin

           if CmpEn2.State <> dsBrowse then begin

              if CmpEn2.State = dsInsert then begin

                 with CmpEn2 do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if CmpEn2.State <> dsBrowse then CmpEn2.Edit;

                         if EdCodClp.Enabled then
                            EdCodClp.SetFocus
                         else
                            begin

                            if EdCodGru.Enabled then
                               EdCodGru.SetFocus
                            else
                               begin

                               if EdDesEn2.Enabled then EdDesEn2.SetFocus;

                            end;
                         end;
                         
                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;

                 CmpEn2.Close;
                 CmpEn2.Open;

                 CmpEnt.Close;
                 CmpEnt.Open;

                 CmpEn2.Append;

                 if EdCodClp.Enabled then
                    EdCodClp.SetFocus
                 else
                    EdCodGru.SetFocus;

                 end
              else
                 begin

                 NroEn2 := CmpEn2NroEn2.Value;

                 with CmpEn2 do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if CmpEn2.State = dsBrowse then CmpEn2.Edit;

                         EdQtpEn2.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;

                 CmpEn2.Close;
                 CmpEn2.Open;

                 CmpEn2.Locate('Id_CmpEnt;NroEn2',VarArrayOf([CmpEn2Id_CmpEnt.Value,NroEn2]),[LoPartialKey]);

                 CmpEnt.Close;
                 CmpEnt.Open;

                 if CmpEn2NroEn2.Value = CmpEntQtiEnt.Value then
                    CmpEn2.Append
                 else
                    begin

                    CmpEn2.Next;

                    pnDesEn2.Visible := True;
                    pnObsEn2.Visible := True;

                    EdCodClp.Enabled := False;
                    EdCodGru.Enabled := False;
                    EdCodSub.Enabled := False;
                    EdCodPro.Enabled := False;
                    EdQtpEn2.Enabled := False;
                    EdVluEn2.Enabled := False;
                    EdCodUnd.Enabled := False;
                    EdIpiEn2.Enabled := False;
                    EdIcmEn2.Enabled := False;
                    EdImpEn2.Enabled := False;
                    EdDscEn2.Enabled := False;
                    EdPacEn2.Enabled := False;
                    EdVacEn2.Enabled := False;
                    EdDesEn2.Enabled := False;
                    EdObsEn2.Enabled := False;

                    grEn2.SetFocus;

                 end;
              end;

              end
           else
              begin

              pnDesEn2.Visible := True;
              pnObsEn2.Visible := True;

              EdCodClp.Enabled := False;
              EdCodGru.Enabled := False;
              EdCodSub.Enabled := False;
              EdCodPro.Enabled := False;
              EdQtpEn2.Enabled := False;
              EdVluEn2.Enabled := False;
              EdCodUnd.Enabled := False;
              EdIpiEn2.Enabled := False;
              EdIcmEn2.Enabled := False;
              EdImpEn2.Enabled := False;              
              EdDscEn2.Enabled := False;
              EdPacEn2.Enabled := False;
              EdVacEn2.Enabled := False;
              EdDesEn2.Enabled := False;
              EdObsEn2.Enabled := False;

              grEn2.SetFocus;

           end;

           end
        else
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdDesEn2);
     end;
  end;
end;

procedure TfmManEnt.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManEnt.bPsqTmoClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqTmo := TfmPsqTmo.Create(Self);

     fmPsqTmo.ShowModal;

     if fmPsqTmo.CodTmo > 0 then begin

        CmpEntCodTmo.Value := fmPsqTmo.CodTmo;

        EdCodTmo.Text := IntToStr(CmpEntCodTmo.Value);

        pnNomTmo.Caption := fmPsqTmo.NomTmo;

     end;

  finally   

     FreeAndNil(fmPsqTmo);

  end;

  if CmpEntCodTmo.Value > 0 then begin

     if EdValTmo.Enabled then
        EdValTmo.SetFocus
     else
        EdDteOpe.SetFocus;

  end;
end;

procedure TfmManEnt.EdCodTmoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqTmo := TfmPsqTmo.Create(Self);

        fmPsqTmo.ShowModal;

        if fmPsqTmo.CodTmo > 0 then begin

           CmpEntCodTmo.Value := fmPsqTmo.CodTmo;

           EdCodTmo.Text := IntToStr(CmpEntCodTmo.Value);

           pnNomTmo.Caption := fmPsqTmo.NomTmo;

        end;

     finally   

        FreeAndNil(fmPsqTmo);

     end;

     if CmpEntCodTmo.Value > 0 then begin

        if EdValTmo.Enabled then
           EdValTmo.SetFocus
        else
           EdDteOpe.SetFocus;

     end;
  end;
end;

procedure TfmManEnt.EdId_CmpPedExit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') and (Tecla <> 'MouseUP') then begin

     if not EdCodEmp.Focused then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEntId_CmpPed.Value > 0 then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select CmpPed.CodClp,'+
                        '        CmpPed.CodPfa,'+
                        '        CmpPed.TipPfa,'+
                        '        CmpPed.UfePed,'+
                        '        CmpPed.CodFor,'+
                        '        CmpPed.ConPlc,'+
                        '        CmpPed.SubPlc,'+
                        '        CmpPed.SitPed '+
                        ' From CmpPed'+
                        ' Where CmpPed.Id_CmpPed = '+ QuotedStr(IntToStr(CmpEntId_CmpPed.Value));
                Open;

           end;

           if Trim(quSQL.FieldbyName('SitPed').AsString) <> '' then begin

              if ( Trim(quSQL.FieldbyName('SitPed').AsString) <> 'Recebido') and
                 ( Trim(quSQL.FieldbyName('SitPed').AsString) <> 'Nao Concluido') and
                 ( Trim(quSQL.FieldbyName('SitPed').AsString) <> 'Processo de Alteracao') then begin

                 CmpEntCodClp.Value := quSql.FieldbyName('CodClp').AsString;
                 CmpEntUfeEnt.Value := quSql.FieldbyName('UfePed').AsString;
                 CmpEntCodFor.Value := quSql.FieldbyName('CodFor').AsInteger;
                 CmpEntConPlc.Value := quSQL.FieldbyName('ConPlc').AsInteger;
                 CmpEntSubPlc.Value := quSQL.FieldbyName('SubPlc').AsInteger;

                 CmpEntCodPfa.Value := Trim(quSql.FieldbyName('CodPfa').AsString);
                 CmpEntTipPfa.Value := Trim(quSql.FieldbyName('TipPfa').AsString);
                 
                 EdCodFor.Text := IntToStr(quSql.FieldbyName('CodFor').AsInteger);

                 if Trim(CmpEntCodPfa.Value) <> '' then EdCodPfa.Text := CmpEntCodPfa.Value;

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select FinFor.NomFor,FinFor.SigUfe From FinFor Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpEntCodFor.Value));
                      Open;

                      pnUfeEnt.Caption := FieldbyName('SigUfe').AsString;
                      pnNomFor.Caption := FieldbyName('NomFor').AsString;

                 end;

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstPfa.DscPfa,'+
                              '        EstPfa.CodCf1 '+
                              ' From EstPfa'+
                              ' Where EstPfa.TipPfa = '+ QuotedStr('Entrada')+
                              '   and EstPfa.CodPfa = '+ QuotedStr(CmpEntCodPfa.Value);
                      Open;

                      pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

                 end;

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select EstClp.NomClp From EstClp Where EstClp.CodClp = '+ QuotedStr(CmpEntCodClp.Value);
                      Open;

                      pnNomClp.Caption := FieldbyName('NomClp').AsString;

                 end;

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select FinTmo.NomTmo From FinTmo Where FinTmo.CodTmo = '+ QuotedStr(IntToStr(CmpEntCodTmo.Value));
                      Open;

                      pnNomTmo.Caption := FieldbyName('NomTmo').AsString;

                 end;

                 bPsqClp.Enabled := False;

                 EdClpEnt.Enabled := False;

                 EdClpEnt.Font.Style := [fsBold];

                 EdCodFor.SetFocus;

                 end
              else
                 begin

                 if Trim(quSQL.FieldbyName('SitPed').AsString) = 'Recebido' then
                    fmsgErro('Pedido Informado com Recebimento já Realizado',EdId_CmpPed)
                 else
                    fmsgErro('Pedido Informado não Concluido ou Sofrendo Alterações.',EdId_CmpPed);

              end;

              end
           else
              fmsgErro('Pedido Informado não Encontrado.',EdId_CmpPed);

           end
        else
           begin

           if not EdCodPfa.Enabled then begin

              CmpEntCodClp.Clear;
              CmpEntCodPfa.Clear;
              CmpEntTipPfa.Clear;
              CmpEntCodFor.Clear;
              CmpEntUfeEnt.Clear;
              CmpEntConPlc.Clear;
              CmpEntSubPlc.Clear;

              bPsqClp.Enabled := True;
              bPsqPfa.Enabled := True;

              EdCodPfa.Enabled := True;
              EdClpEnt.Enabled := True;

              EdCodPfa.Font.Style := [];
              EdClpEnt.Font.Style := [];

           end;
        end;
     end;
  end;
end;

procedure TfmManEnt.SaiClassificacao;
begin
  if Trim( CmpEn2CodClp.Value ) <> '' then begin

     if CmpEn2.State <> dsBrowse then begin

        if CmpEn2CodClp.Value <> '9' then begin

           psaida := 'Nao';

           pnDesEn2.Visible := True;
           pnObsEn2.Visible := True;

           EdCodGru.Enabled := True;
           EdCodSub.Enabled := True;
           EdCodPro.Enabled := True;
           EdDscEn2.Enabled := True;
           EdPacEn2.Enabled := True;
           EdVacEn2.Enabled := True;

           EdCodUnd.Enabled := False;
           EdDesEn2.Enabled := False;
           EdObsEn2.Enabled := False;

           psaida := 'Sim';

           with quSql,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg From EstClp Where EstClp.CodClp = '+ QuotedStr(CmpEn2CodClp.Value);
                Open;

           end;

           if quSql.FieldbyName('QtdReg').AsInteger = 0 then
              fmsgErro('Classificação Informada não Encontrada.',EdCodClp)
           else
              begin

              if EdQtpEn2.Focused then begin

                 if Trim( CmpEn2CodGru.Value ) = '' then EdCodGru.SetFocus;
                 if Trim( CmpEn2CodSub.Value ) = '' then EdCodSub.SetFocus;
                 if Trim( CmpEn2CodPro.Value ) = '' then EdCodPro.SetFocus;

                 end
              else
                 EdCodGru.SetFocus;

           end;

           end
        else
           begin

           psaida := 'Nao';

           pnDesEn2.Visible := False;
           pnObsEn2.Visible := False;

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdDscEn2.Enabled := False;
           EdPacEn2.Enabled := False;
           EdVacEn2.Enabled := False;

           psaida := 'Sim';

           CmpEn2CodGru.Value := '999';
           CmpEn2CodSub.Value := '9999';
           CmpEn2CodPro.Value := '99999';

           EdCodUnd.Enabled := True;
           EdDesEn2.Enabled := True;
           EdObsEn2.Enabled := True;

           EdQtpEn2.SetFocus;

        end;

        end
     else
        begin

        if EdCodClp.Enabled then begin

           if Trim( CmpEn2CodClp.Value ) = '' then fmsgErro('Classificação Informada não Encontrada.',EdCodClp);

        end;
     end;

     end
  else
     fmsgErro('Classificação Informada não Encontrada.',EdCodClp);
end;

procedure TfmManEnt.SaiGrupo;
begin
  if Trim( CmpEn2CodGru.Value ) <> '' then begin

     if CmpEn2.State <> dsBrowse then begin

        CmpEn2CodGru.Value := FNumZeros(CmpEn2CodGru.Value,3);

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg From EstGru Where EstGru.CodGru = '+ QuotedStr(CmpEn2CodGru.Value);
             Open;

        end;

        if quSql.FieldbyName('QtdReg').AsInteger = 0 then
           fmsgErro('Grupo Informado não Encontrado.',EdCodGru)
        else
           begin

           if EdQtpEn2.Focused then begin

              if Trim( CmpEn2CodSub.Value ) = '' then EdCodSub.SetFocus;
              if Trim( CmpEn2CodPro.Value ) = '' then EdCodPro.SetFocus;

              end
           else
              EdCodSub.SetFocus;

        end;

        end
     else
        begin

        if EdCodGru.Enabled then begin

           if Trim( CmpEn2CodGru.Value ) = '' then fmsgErro('Grupo Informado não Encontrado.',EdCodGru);

        end;
     end;

     end
  else
     fmsgErro('Grupo Informado não Encontrado.',EdCodGru);
end;

procedure TfmManEnt.SaiSubGrupo;
begin
  if Trim( CmpEn2CodSub.Value ) <> '' then begin

     if CmpEn2.State <> dsBrowse then begin

        CmpEn2CodSub.Value := FNumZeros(CmpEn2CodSub.Value,4);

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From EstSub'+
                     ' Where EstSub.CodGru = '+ QuotedStr(CmpEn2CodGru.Value)+
                     '   and EstSub.CodSub = '+ QuotedStr(CmpEn2CodSub.Value);
             Open;

        end;

        if quSql.FieldbyName('QtdReg').AsInteger = 0 then
           fmsgErro('Sub-Grupo informado não encontrado.',EdCodGru)
        else
           begin

           if EdQtpEn2.Focused then begin

              if Trim( CmpEn2CodSub.Value ) = '' then EdCodSub.SetFocus;
              if Trim( CmpEn2CodPro.Value ) = '' then EdCodPro.SetFocus;

              end
           else
              EdCodPro.SetFocus;

        end;

        end
     else
        begin

        if EdCodSub.Enabled then begin

           if Trim( CmpEn2CodSub.Value ) = '' then fmsgErro('Sub-Grupo informado não encontrado.',EdCodSub);

        end;
     end;

     end
  else
     fmsgErro('Sub-Grupo informado não encontrado.',EdCodSub);
end;

procedure TfmManEnt.SaiProduto;
var
  CodEmp : integer;
begin
  if Trim( CmpEn2CodPro.Value ) <> '' then begin

     if CmpEn2.State <> dsBrowse then begin

        CmpEn2FlgDup.Value := 'Nao';
        CmpEn2CodPro.Value := FNumStrZero(CmpEn2CodPro.Value);

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From CmpEn2'+
                     ' Where CmpEn2.Id_CmpEnt = '+ QuotedStr(IntToStr(CmpEn2Id_CmpEnt.Value)) +
                     '   and CmpEn2.CodClp = '+ QuotedStr(CmpEn2CodClp.Value)+
                     '   and CmpEn2.CodGru = '+ QuotedStr(CmpEn2CodGru.Value)+
                     '   and CmpEn2.CodSub = '+ QuotedStr(CmpEn2CodSub.Value)+
                     '   and CmpEn2.CodPro = '+ QuotedStr(CmpEn2CodPro.Value)+
                     '   and CmpEn2.CodTam = '+ QuotedStr(CmpEn2CodTam.Value)+
                     '   and CmpEn2.CodCor = '+ QuotedStr(CmpEn2CodCor.Value);
             Open;

        end;

        if quSql.FieldbyName('QtdReg').AsInteger > 0 then begin

           if fMsg('Item já informado para a entrada. Confirma duplicidade ?','O') then CmpEn2FlgDup.Value := 'Sim';

           end
        else
           CmpEn2FlgDup.Value := 'Sim';

        if CmpEn2FlgDup.Value = 'Sim' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select EstPro.DscPro,'+
                        '        EstPro.CodUne,'+
                        '        EstPro.CodSt1,'+
                        '        EstPro.CodSt2,'+
                        '        EstPro.EntIcm,'+
                        '        EstPro.EntIpi '+
                        ' From EstPro '+
                        ' Where EstPro.CodClp = '+ QuotedStr(CmpEn2CodClp.Value) +
                        '   and EstPro.CodGru = '+ QuotedStr(CmpEn2CodGru.Value) +
                        '   and EstPro.CodSub = '+ QuotedStr(CmpEn2CodSub.Value) +
                        '   and EstPro.CodPro = '+ QuotedStr(CmpEn2CodPro.Value) ;
                Open;

           end;

           if Trim(quSQL.FieldbyName('DscPro').AsString) <> '' then begin

              CmpEn2CodUnd.Value := quSQL.FieldbyName('CodUne').AsString;
              CmpEn2CodSt1.Value := quSql.FieldbyName('CodSt1').AsString;
              CmpEn2CodSt2.Value := quSql.FieldbyName('CodSt2').AsString;
              CmpEn2DesEn2.Value := quSQL.FieldbyName('DscPro').AsString;

              if CmpEntIcmEnt.Value = 0 then CmpEn2IcmEn2.Value := quSql.FieldbyName('EntIcm').AsFloat;
              if CmpEntIpiEnt.Value = 0 then CmpEn2IpiEn2.Value := quSql.FieldbyName('EntIpi').AsFloat;

              if CmpEntIcmEnt.Value > 0 then CmpEn2IcmEn2.Value := CmpEntIcmEnt.Value;
              if CmpEntIpiEnt.Value > 0 then CmpEn2IpiEn2.Value := CmpEntIpiEnt.Value;

              CodEmp := CmpEntCodEmp.Value;

              if CmpEntLanEst.Value = 'Sim' then begin

                 if CmpEntCodFil.Value > 0 then CodEmp := CmpEntCodFil.Value;

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select CmpPfo.Id_CmpPfo,'+
                           '        CmpPfo.ValPfo,'+
                           '        CmpPfo.PerIpi,'+
                           '        CmpPfo.DscPfo '+
                           ' From CmpPfo'+
                           ' Where CmpPfo.CodFor = :CodFor'+
                           '   and CmpPfo.CodClp = :CodClp'+
                           '   and CmpPfo.CodGru = :CodGru'+
                           '   and CmpPfo.CodSub = :CodSub'+
                           '   and CmpPfo.CodPro = :CodPro';

                   with Params do begin

                        Params[0].AsInteger := CmpEntCodFor.Value;
                        Params[1].AsString  := CmpEn2CodClp.Value;
                        Params[2].AsString  := CmpEn2CodGru.Value;
                        Params[3].AsString  := CmpEn2CodSub.Value;
                        Params[4].AsString  := CmpEn2CodPro.Value;

                   end;

                   Open;

              end;

              if quSql.FieldbyName('Id_CmpPfo').AsInteger > 0 then begin

                 CmpEn2VluEn2.Value := quSql.FieldbyName('ValPfo').AsFloat;
                 CmpEn2VlqEn2.Value := quSql.FieldbyName('ValPfo').AsFloat;
                 CmpEn2IpiEn2.Value := quSQL.FieldbyName('PerIpi').AsFloat;
                 CmpEn2DscEn2.Value := quSQL.FieldbyName('DscPfo').AsFloat;

                 end
              else
                 begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select EstIte.CodEmp,'+
                              '        EstIte.VpfIte '+
                              ' From EstIte'+
                              ' Where EstIte.CodEmp = :CodEmp'+
                              '   and EstIte.CodClp = :CodClp'+
                              '   and EstIte.CodGru = :CodGru'+
                              '   and EstIte.CodSub = :CodSub'+
                              '   and EstIte.CodPro = :CodPro';

                      with Params do begin

                           Params[0].AsInteger := CodEmp;
                           Params[1].AsString  := CmpEn2CodClp.Value;
                           Params[2].AsString  := CmpEn2CodGru.Value;
                           Params[3].AsString  := CmpEn2CodSub.Value;
                           Params[4].AsString  := CmpEn2CodPro.Value;

                      end;

                      Open;

                 end;

                 if quSql.FieldbyName('CodEmp').AsInteger > 0 then begin

                    CmpEn2VluEn2.Value := quSql.FieldbyName('VpfIte').AsFloat;
                    CmpEn2VlqEn2.Value := quSql.FieldbyName('VpfIte').AsFloat;

                    end
                 else
                    fmsgErro('Item Informado não Encontrado no Estoque da Empresa.',EdCodPro);

              end;

              if CmpEntCodTmo.Value = 1 then begin

                 if CmpEntModFor.Value > 1 then begin

                    CmpEn2VluEn2.Value := fRound(CmpEn2VluEn2.Value * CmpEntValTmo.Value,4);
                    CmpEn2VlqEn2.Value := fRound(CmpEn2VluEn2.Value * CmpEntValTmo.Value,4);

                 end;
              end;

              AntVluEn2 := CmpEn2VluEn2.Value;

              if CmpEn2QtpEn2.Value > 0 then begin

                 CmpEn2VlqEn2.Value := CmpEn2VluEn2.Value;

                 if CmpEn2DscEn2.Value > 0 then begin

                    CmpEn2VdsEn2.Value := fRound((CmpEn2DscEn2.Value * CmpEn2VlqEn2.Value)/100,4);

                    CmpEn2VlqEn2.Value := fRound(CmpEn2VlqEn2.Value - CmpEn2VdsEn2.Value,4);

                 end;

                 if CmpEn2PacEn2.Value > 0 then begin

                    CmpEn2VacEn2.Value := fRound((CmpEn2PacEn2.Value * CmpEn2VlqEn2.Value)/100,4);

                    CmpEn2VlqEn2.Value := fRound(CmpEn2VlqEn2.Value + CmpEn2VacEn2.Value,4);

                 end;

                 CmpEn2TotEn2.Value := fRound(CmpEn2VlqEn2.Value * CmpEn2QtpEn2.Value,2);

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg'+
                           ' From EstQte '+
                           ' Where EstQte.CodEmp = :CodEmp'+
                           '   and EstQte.CodClp = :CodClp'+
                           '   and EstQte.CodGru = :CodGru'+
                           '   and EstQte.CodSub = :CodSub'+
                           '   and EstQte.CodPro = :CodPro'+
                           '   and EstQte.CodTam = :CodTam'+
                           '   and EstQte.CodCor = :CodCor';

                   with Params do begin

                        Params[0].AsInteger := CodEmp;
                        Params[1].AsString  := CmpEn2CodClp.Value;
                        Params[2].AsString  := CmpEn2CodGru.Value;
                        Params[3].AsString  := CmpEn2CodSub.Value;
                        Params[4].AsString  := CmpEn2CodPro.Value;
                        Params[5].AsString  := CmpEn2CodTam.Value;
                        Params[6].AsString  := CmpEn2CodCor.Value;

                   end;

                   Open;

              end;

              if quSql.FieldbyName('QtdReg').AsInteger = 0 then
                 fmsgErro('Item Informado não Encontrado no Estoque da Empresa.',EdCodPro)
              else
                 EdQtpEn2.SetFocus;

              end
           else
              fmsgErro('Item Informado não Encontrado.',EdCodPro);

           end
        else
           fmsgErro('Item Duplicado.',EdCodPro);

        end
     else
        begin

        if EdCodPro.Enabled then begin

           if Trim( CmpEn2CodPro.Value ) = '' then fmsgErro('Item Informado não Encontrado',EdCodPro);

        end;
     end;

     end
  else
     fmsgErro('Item Informado não Encontrado',EdCodPro);
end;

procedure TfmManEnt.FormKeyPress(Sender: TObject; var Key: Char);
var
  Lge_CodGru : string;
  Lge_CodSub : string;
  Lge_CodPro : string;
  Lge_Status : string;
begin
  inherited;
  if (grEn2.Focused) or
     (EdCodClp.Focused) or
     (EdCodGru.Focused) or
     (EdCodSub.Focused) or
     (EdCodPro.Focused) then begin

     if (CmpEn2.State = dsInsert) or (grEn2.Focused) then begin

        if CmpEn2.State = dsInsert then
           Lge_Status := 'Sim'
        else
           Lge_Status := 'Nao';

        if key = #7 then begin {Gerenciamento de Contratos}

           with quSQL,SQL do begin

                Close;
                Text := ' Select Count(*) as QtdReg'+
                        ' From CmpPed'+
                        ' Where CmpPed.CodFor = '+ QuotedStr(IntToStr(CmpEntCodFor.Value)) +
                        '   and ( CmpPed.SitPed = '+ QuotedStr('Concluido') +' or CmpPed.SitPed = '+ QuotedStr('Recebido Parcialmente') +')';
                Open;

           end;

           if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select * From CmpPe3'+
                           ' Where CmpPe3.Id_CmpEnt = '+ QuotedStr(IntToStr(CmpEntId_CmpEnt.Value));
                   Open;

              end;

              while not quSQL.EOF do begin

                    with quSQL1,SQL do begin

                         Close;
                         Text := ' Update CmpPe2 Set FlgAtu = '+ QuotedStr('*')   + ',' +
                                 '                   FlgEnt = '+ QuotedStr('Sim') +
                                 ' Where CmpPe2.Id_CmpPe2 = '+ QuotedStr(IntToStr(quSQL.FieldbyName('Id_CmpPe2').AsInteger)) +
                                 '   and CmpPe2.FlgEnt    = '+ QuotedStr('Nao');
                         ExecSQL;

                    end;

                    quSQL.Next;

              end;

              try

                 fmManLge := TfmManLge.Create(Self);

                 fmManLge.CmpPed.Close;
                 fmManLge.CmpPed.Params[0].AsInteger := CmpEntCodFor.Value;
                 fmManLge.CmpPed.Open;

                 fmManLge.ShowModal;

              finally

                 FreeAndNil(fmManLge);

              end;

              if Lge_Status = 'Sim' then begin

                 CmpEn2.Append;

                 CmpEn2CodGru.Value := Lge_CodGru;
                 CmpEn2CodSub.Value := Lge_CodSub;
                 CmpEn2CodPro.Value := Lge_CodPro;

                 if Trim( CmpEn2CodPro.Value ) <> '' then EdCodPro.SetFocus;

                 end
              else
                 grEn2.SetFocus;

              end
           else
              fmsgErro('Não Foram Encontrados Pedidos não Recebidos para o Fornecedor.',Nil);

        end;

        if key = #18 then begin {Gerenciamento de RMA}

           if (Trim(CmpEntModPfa.Value) = 'Retornos') or (Trim(CmpEntModPfa.Value) = 'RMA') then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg'+
                           ' From CmpNfs'+
                           ' Where   CmpNfs.CodFor = '+ QuotedStr(IntToStr(CmpEntCodFor.Value)) +
                           '   and   CmpNfs.ModPfa = '+ QuotedStr('RMA') +
                           '   and ( CmpNfs.SitNfs = '+ QuotedStr('Concluido') +
                           '    or   CmpNfs.SitNfs = '+ QuotedStr('Recebido Parcialmente') +' )';
                   Open;

              end;

              if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select * From CmpNfe'+
                              ' Where CmpNfe.Id_CmpEnt = '+ QuotedStr(IntToStr(CmpEntId_CmpEnt.Value));
                      Open;

                 end;

                 while not quSQL.EOF do begin

                       with quSQL1,SQL do begin

                            Close;
                            Text := ' Update CmpNf2 Set FlgAtu = '+ QuotedStr('*')   + ',' +
                                    '                   FlgEnt = '+ QuotedStr('Sim') +
                                    ' Where CmpNf2.Id_CmpNf2 = '+ QuotedStr(IntToStr(quSQL.FieldbyName('Id_CmpNf2').AsInteger)) +
                                    '   and CmpNf2.FlgEnt    = '+ QuotedStr('Nao');
                            ExecSQL;

                       end;

                       quSQL.Next;

                 end;

                 try

                    fmManRma := TfmManRma.Create(Self);

                    fmManRma.CmpNfs.Close;
                    fmManRma.CmpNfs.Params[0].AsInteger := CmpEntCodFor.Value;
                    fmManRma.CmpNfs.Open;

                    fmManRma.ShowModal;

                 finally

                    FreeAndNil(fmManRma);

                 end;

                 end
              else
                 fmsgErro('Não Foram Encontrados Romaneios de Saidas não Recebidos para o Fornecedor.',Nil);

              end
           else
              fmsgErro('Padrão de Faturamento não esta Classificado como sendo de Retorno. Por Favor Verificar.',Nil);
        end;
     end;

     if key = #9 then begin {Ctrl+I - Regra de Tributação dos Itens}

        if grEn2.Focused then begin

           try

              fmManEn8 := TfmManEn8.Create(Self);
              fmManEn8.ShowModal;

           finally

              FreeAndNil(fmManEn8);

           end;
        end;
     end;
  end;
end;

procedure TfmManEnt.EdDscEn2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdIcmEn2.Focused) and
        (not EdIpiEn2.Focused) and
        (not EdVluEn2.Focused) and
        (not EdQtpEn2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEn2.State <> dsBrowse then begin

           if CmpEn2DscEn2.Value <> AntDscEn2 then begin

              CmpEn2VlqEn2.Value := CmpEn2VluEn2.Value;

              if CmpEn2DscEn2.Value > 0 then begin

                 CmpEn2VdsEn2.Value := fRound((CmpEn2DscEn2.Value * CmpEn2VlqEn2.Value)/100,4);

                 CmpEn2VlqEn2.Value := fRound(CmpEn2VlqEn2.Value - CmpEn2VdsEn2.Value,4);

                 end
              else
                 CmpEn2VdsEn2.Value := 0;

              if CmpEn2VacEn2.Value > 0 then begin

                 CmpEn2PacEn2.Value := fRound((CmpEn2VacEn2.Value * 100)/CmpEn2VlqEn2.Value,2);

                 CmpEn2VlqEn2.Value := fRound(CmpEn2VlqEn2.Value + CmpEn2VacEn2.Value,4);

              end;

              AntDscEn2 := CmpEn2DscEn2.Value;

              CmpEn2TotEn2.Value := fRound(CmpEn2VlqEn2.Value * CmpEn2QtpEn2.Value,2);

           end;
        end;
     end;
  end;
end;

procedure TfmManEnt.EdPacEn2Exit(Sender: TObject);
var
  saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDscEn2.Focused) and
        (not EdIcmEn2.Focused) and
        (not EdIpiEn2.Focused) and
        (not EdVluEn2.Focused) and
        (not EdQtpEn2.Focused) and
        (not EdCodPro.Focused) and
        (not EdCodSub.Focused) and
        (not EdCodGru.Focused) and
        (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpEn2.State <> dsBrowse then begin

           if CmpEn2PacEn2.Value <> AntPacEn2 then begin

              CmpEn2VlqEn2.Value := fRound(CmpEn2VluEn2.Value - CmpEn2VdsEn2.Value,4);

              if CmpEn2PacEn2.Value > 0 then begin

                 CmpEn2VacEn2.Value := fRound((CmpEn2PacEn2.Value * CmpEn2VlqEn2.Value)/100,4);

                 CmpEn2VlqEn2.Value := fRound(CmpEn2VlqEn2.Value + CmpEn2VacEn2.Value,4);

                 end
              else
                 CmpEn2VacEn2.Value := 0;

              AntPacEn2 := CmpEn2PacEn2.Value;
              AntVacEn2 := CmpEn2VacEn2.Value;

              CmpEn2TotEn2.Value := fRound(CmpEn2VlqEn2.Value * CmpEn2QtpEn2.Value,2);

           end;
        end;
     end;
  end;
end;

procedure TfmManEnt.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEnt := nil;
end;

procedure TfmManEnt.EdCodEmpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if CmpEntFlgOco.Value = 'Nao' then
     LbText.Caption := 'F1-Iniciais F4-Estoque'
  else
     LbText.Caption := 'F1-Iniciais F4-Estoque F11-Ocorrências';

end;

procedure TfmManEnt.EdCodForEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if CmpEntFlgOco.Value = 'Nao' then
     LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque'
  else
     LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque F11-Ocorrências';

end;

procedure TfmManEnt.EdId_CmpPedEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if CmpEntFlgOco.Value = 'Nao' then
     LbText.Caption := 'F4-Estoque'
  else
     LbText.Caption := 'F4-Estoque F11-Ocorrências';

end;

procedure TfmManEnt.grEn2Enter(Sender: TObject);
begin
  inherited;

  if CmpEntFlgOco.Value = 'Nao' then
     LbText.Caption := 'D-Desc/Obs F4-Estoque Ctrl+G-Gerenc Ctrl+I-Tributação'
  else
     LbText.Caption := 'D-Desc/Obs F4-Estoque Ctrl+G-Gerenc Ctrl+I-Tributação F11-Ocorrências';

end;

procedure TfmManEnt.EdCodClpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if CmpEntFlgOco.Value = 'Nao' then
     LbText.Caption := 'F1-Ini F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref Ctrl+G-Gerenc'
  else
     LbText.Caption := 'F1-Ini F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref Ctrl+G-Gerenc F11-Ocor';

end;

procedure TfmManEnt.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if CmpEntFlgOco.Value = 'Nao' then
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref Ctrl+G-Gerenc'
  else
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref Ctrl+G-Gerenc F11-Ocor';

end;

end.
