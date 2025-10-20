unit ManPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, dxDBColorCurrencyEdit, dxDBColorDateEdit,
  dxDBColorEdit;

type
  TfmManPed = class(TfmPadrao)
    PaintBox: TPaintBox;
    CmpPed: TwwQuery;
    CmpPe2: TwwQuery;
    UpPed: TUpdateSQL;
    UpPe2: TUpdateSQL;
    DsPe2: TDataSource;
    DsPed: TDataSource;
    quSql: TwwQuery;
    grPe21: TdxDBGraphicEdit;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    LbText: TLabel;
    Label8: TLabel;
    Label32: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Panel2: TPanel;
    Label29: TLabel;
    Label9: TLabel;
    pnNumPed: TPanel;
    EdNumPed: TdxDBColorEdit;
    Label1: TLabel;
    Label12: TLabel;
    EdCodEmp: TdxDBColorEdit;
    bpsqEmp: TSpeedButton;
    EdNomEmp: TdxDBColorEdit;
    pnNomEmp: TPanel;
    Label2: TLabel;
    Label68: TLabel;
    EdDtePed: TdxDBColorDateEdit;
    Label33: TLabel;
    Label53: TLabel;
    pnUfePed: TPanel;
    EdUfePed: TdxDBColorEdit;
    Label4: TLabel;
    Label6: TLabel;
    EdCodFor: TdxDBColorEdit;
    bpsqFor: TSpeedButton;
    EdNomFor: TdxDBColorEdit;
    pnNomFor: TPanel;
    Label3: TLabel;
    Label11: TLabel;
    EdNomCon: TdxDBColorEdit;
    Label5: TLabel;
    Label7: TLabel;
    EdCodPfa: TdxDBColorEdit;
    bpsqPfa: TSpeedButton;
    EdNomPfa: TdxDBColorEdit;
    pnNomPfa: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    EdClpPed: TdxDBColorEdit;
    bPsqClp: TSpeedButton;
    EdNomClp: TdxDBColorEdit;
    pnNomClp: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    EdPrePed: TdxDBColorEdit;
    EdDpePed: TdxDBColorDateEdit;
    PaintBox1: TPaintBox;
    grPe2: ThGrid;
    Panel1: TPanel;
    EdCodClp: TdxDBColorEdit;
    EdCodGru: TdxDBColorEdit;
    EdCodSub: TdxDBColorEdit;
    EdCodPro: TdxDBColorEdit;
    EdQtpPe2: TdxDBColorCurrencyEdit;
    EdVluPe2: TdxDBColorCurrencyEdit;
    EdIcmPe2: TdxDBColorCurrencyEdit;
    EdIpiPe2: TdxDBColorCurrencyEdit;
    EdDscPe2: TdxDBColorCurrencyEdit;
    EdPacPe2: TdxDBColorCurrencyEdit;
    EdVlqPe2: TdxDBColorCurrencyEdit;
    EdTotGe2: TdxDBColorCurrencyEdit;
    CmpPedCODEMP: TIntegerField;
    CmpPedDTEPED: TDateTimeField;
    CmpPedNUMPED: TIntegerField;
    CmpPedHREPED: TStringField;
    CmpPedCODFOR: TIntegerField;
    CmpPedCONPLC: TIntegerField;
    CmpPedSUBPLC: TIntegerField;
    CmpPedCODPFA: TStringField;
    CmpPedTIPPFA: TStringField;
    CmpPedPREPED: TIntegerField;
    CmpPedDPEPED: TDateTimeField;
    CmpPedCODFIL: TIntegerField;
    CmpPedUFEPED: TStringField;
    CmpPedCODCLP: TStringField;
    CmpPedNOMCON: TStringField;
    CmpPedNOMVEN: TStringField;
    CmpPedCEPENT: TStringField;
    CmpPedTENENT: TStringField;
    CmpPedENDENT: TStringField;
    CmpPedREFENT: TStringField;
    CmpPedNUMENT: TStringField;
    CmpPedBAIENT: TStringField;
    CmpPedCIDENT: TStringField;
    CmpPedUFEENT: TStringField;
    CmpPedFLGCTB: TStringField;
    CmpPedOBSPED: TStringField;
    CmpPedQTIPED: TIntegerField;
    CmpPedSEQITE: TIntegerField;
    CmpPedBASIPI: TFloatField;
    CmpPedTOTIPI: TFloatField;
    CmpPedBASICM: TFloatField;
    CmpPedTOTICM: TFloatField;
    CmpPedBASSUB: TFloatField;
    CmpPedTOTSUB: TFloatField;
    CmpPedTOTPED: TFloatField;
    CmpPedTOTGER: TFloatField;
    CmpPedMEDDSC: TFloatField;
    CmpPedTOTDSC: TFloatField;
    CmpPedMEDACR: TFloatField;
    CmpPedTOTACR: TFloatField;
    CmpPedLANEST: TStringField;
    CmpPedATUEST: TStringField;
    CmpPedINTFIN: TStringField;
    CmpPedCONSUM: TStringField;
    CmpPedCODIPI: TStringField;
    CmpPedTIPIPI: TStringField;
    CmpPedTRBIPI: TStringField;
    CmpPedREDIPI: TFloatField;
    CmpPedBSCIPI: TFloatField;
    CmpPedCODICM: TStringField;
    CmpPedTIPICM: TStringField;
    CmpPedTRBICM: TStringField;
    CmpPedREDICM: TFloatField;
    CmpPedBSCICM: TFloatField;
    CmpPedINCREV: TFloatField;
    CmpPedINCFIN: TFloatField;
    CmpPedTXFIPI: TStringField;
    CmpPedTXFICM: TStringField;
    CmpPedCODUSU: TIntegerField;
    CmpPedSEQPED: TStringField;
    CmpPedSITPED: TStringField;
    CmpPe2CODEMP: TIntegerField;
    CmpPe2DTEPED: TDateTimeField;
    CmpPe2NUMPED: TIntegerField;
    CmpPe2SEQPE2: TIntegerField;
    CmpPe2CODEIT: TIntegerField;
    CmpPe2CODCLP: TStringField;
    CmpPe2CODGRU: TStringField;
    CmpPe2CODSUB: TStringField;
    CmpPe2CODPRO: TStringField;
    CmpPe2CODTAM: TStringField;
    CmpPe2CODCOR: TStringField;
    CmpPe2DESPE2: TStringField;
    CmpPe2OBSPE2: TStringField;
    CmpPe2CODST1: TStringField;
    CmpPe2CODST2: TStringField;
    CmpPe2CODUND: TStringField;
    CmpPe2CLSIPI: TStringField;
    CmpPe2QTPPE2: TFloatField;
    CmpPe2SLDPE2: TFloatField;
    CmpPe2VLUPE2: TFloatField;
    CmpPe2VLQPE2: TFloatField;
    CmpPe2DSCPE2: TFloatField;
    CmpPe2VDSPE2: TFloatField;
    CmpPe2PACPE2: TFloatField;
    CmpPe2VACPE2: TFloatField;
    CmpPe2IPIPE2: TFloatField;
    CmpPe2ICMPE2: TFloatField;
    CmpPe2BASIPI: TFloatField;
    CmpPe2TOTIPI: TFloatField;
    CmpPe2BASICM: TFloatField;
    CmpPe2TOTICM: TFloatField;
    CmpPe2BASSUB: TFloatField;
    CmpPe2TOTSUB: TFloatField;
    CmpPe2TOTPE2: TFloatField;
    CmpPe2TOTGE2: TFloatField;
    CmpPe2TOTDSC: TFloatField;
    CmpPe2TOTACR: TFloatField;
    CmpPe2CODSTR: TStringField;
    CmpPe2TIPSTR: TStringField;
    CmpPe2REGIPI: TStringField;
    CmpPe2TIPIPI: TStringField;
    CmpPe2TRBIPI: TStringField;
    CmpPe2REDIPI: TFloatField;
    CmpPe2BSCIPI: TFloatField;
    CmpPe2REGICM: TStringField;
    CmpPe2TIPICM: TStringField;
    CmpPe2TRBICM: TStringField;
    CmpPe2REDICM: TFloatField;
    CmpPe2BSCICM: TFloatField;
    CmpPe2INCREV: TFloatField;
    CmpPe2INCFIN: TFloatField;
    CmpPe2FLASEQ: TStringField;
    CmpPe2NROPE2: TIntegerField;
    CmpPedOBSCND: TStringField;
    CmpPe2QTEPE2: TFloatField;
    CmpPedEMAFOR: TStringField;
    CmpPe2QTRPE2: TFloatField;
    CmpPedCODTMO: TIntegerField;
    CmpPedFLGOCO: TStringField;
    CmpPedFLGATU: TStringField;
    EdFlgOco: TdxDBColorEdit;
    pnFlgOco: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    EdCodTmo: TdxDBColorEdit;
    bPsqTmo: TSpeedButton;
    EdNomTmo: TdxDBColorEdit;
    pnNomTmo: TPanel;
    pnSemana: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    EdValTmo: TdxDBColorCurrencyEdit;
    CmpPedVALTMO: TFloatField;
    CmpPe2FLGDUP: TStringField;
    EdCodUnd: TdxDBColorEdit;
    Label20: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    pnTotPed: TLabel;
    Label27: TLabel;
    Label43: TLabel;
    pnNroPe2: TLabel;
    EdDesPe2: TdxDBColorEdit;
    pnDesPe2: TPanel;
    EdObsPe2: TdxDBColorEdit;
    pnObsPe2: TPanel;
    CmpPe2QTIPE3: TIntegerField;
    CmpPe2SEQPE3: TIntegerField;
    CmpPe2FLGRES: TStringField;
    CmpPe2VLQITE: TFloatField;
    CmpPe2FLGVAL: TStringField;
    CmpPe2FLGLAN: TStringField;
    Label03: TLabel;
    Label31: TLabel;
    EdTotRen: TdxDBColorCurrencyEdit;
    pnTotRen: TPanel;
    Label34: TLabel;
    CmpPedFLGTAB: TStringField;
    CmpPedTOTVEN: TFloatField;
    CmpPedTOTREN: TFloatField;
    CmpPe2VALVEN: TFloatField;
    CmpPe2TOTVEN: TFloatField;
    CmpPe2TOTREN: TFloatField;
    Label57: TLabel;
    pnTotMk2: TPanel;
    CmpPe2CODPFO: TStringField;
    CmpPedMODFOR: TIntegerField;
    EdValVen: TdxDBColorCurrencyEdit;
    Label35: TLabel;
    CmpPedDTEFPE: TDateTimeField;
    CmpPedHREFPE: TStringField;
    CmpPedOBSFPE: TMemoField;
    CmpPedUSUFPE: TIntegerField;
    CmpPe2QTNPE2: TFloatField;
    CmpPar: TwwQuery;
    CmpParFLGTAB: TStringField;
    CmpPe2OBSPE3: TStringField;
    CmpPe2FLGENT: TStringField;
    CmpPedFLGRES: TStringField;
    CmpPedNOMFOR: TStringField;
    CmpPedBAIFOR: TStringField;
    CmpPedCIDFOR: TStringField;
    CmpPedSIGUFE: TStringField;
    CmpPedLOGUSU: TStringField;
    CmpPedENDFOR: TStringField;
    CmpPedFONFOR: TStringField;
    CmpPedFAXFOR: TStringField;
    CmpPedPERACR: TFloatField;
    CmpPedTOTACP: TFloatField;
    CmpPedTOTACC: TFloatField;
    Label37: TLabel;
    pnTotAcc: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label44: TLabel;
    pnTotGer: TLabel;
    Label46: TLabel;
    CmpPedMODPFA: TStringField;
    CmpPedQTPPED: TIntegerField;
    CmpPedSQPPED: TIntegerField;
    CmpPedBASIMP: TFloatField;
    CmpPedTOTIMP: TFloatField;
    CmpPedPERACI: TFloatField;
    CmpPedTOTACI: TFloatField;
    CmpPedTOTAIP: TFloatField;
    CmpPedLANGER: TFloatField;
    CmpPedSLDGER: TFloatField;
    CmpPe2IMPPE2: TFloatField;
    CmpPe2BASIMP: TFloatField;
    CmpPe2TOTIMP: TFloatField;
    Label47: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    EdImpPe2: TdxDBColorCurrencyEdit;
    CmpPedTOTLIQ: TFloatField;
    CmpPedTOTBRT: TFloatField;
    CmpPedTOTCUB: TFloatField;
    CmpPedTOTCXA: TFloatField;
    CmpPe2LIQPE2: TFloatField;
    CmpPe2BRTPE2: TFloatField;
    CmpPe2CUBPE2: TFloatField;
    CmpPe2CXAPE2: TFloatField;
    CmpPe2TOTLIQ: TFloatField;
    CmpPe2TOTBRT: TFloatField;
    CmpPe2TOTCUB: TFloatField;
    CmpPe2TOTCXA: TFloatField;
    Label49: TLabel;
    Label52: TLabel;
    pnCxaPe2: TPanel;
    Label54: TLabel;
    Label55: TLabel;
    pnTotCub: TPanel;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    pnTotLiq: TPanel;
    pnTotBrt: TPanel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label45: TLabel;
    Label66: TLabel;
    p1TotCub: TLabel;
    p1TotLiq: TLabel;
    p1TotBrt: TLabel;
    p1TotCxa: TLabel;
    Label36: TLabel;
    Label48: TLabel;
    pnTotCxa: TPanel;
    procedure SaiGrupo;
    procedure SaiProduto;
    procedure SaiSubGrupo;
    procedure SaiClassificacao;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CmpPedNewRecord(DataSet: TDataSet);
    procedure CmpPe2NewRecord(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure EdCodEmpExit(Sender: TObject);
    procedure EdCodForExit(Sender: TObject);
    procedure EdCodPfaExit(Sender: TObject);
    procedure EdPrePedExit(Sender: TObject);
    procedure DsPe2DataChange(Sender: TObject; Field: TField);
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
    procedure EdQtpPe2Exit(Sender: TObject);
    procedure EdVluPe2Exit(Sender: TObject);
    procedure EdDscPe2Exit(Sender: TObject);
    procedure EdPacPe2Exit(Sender: TObject);
    procedure grPe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bpsqPfaClick(Sender: TObject);
    procedure bpsqForClick(Sender: TObject);
    procedure bpsqEmpClick(Sender: TObject);
    procedure EdDpePedExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure EdClpPedExit(Sender: TObject);
    procedure EdClpPedKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdCodClpExit(Sender: TObject);
    procedure EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPsqClpClick(Sender: TObject);
    procedure PaintBox1Paint(Sender: TObject);
    procedure Panel2Exit(Sender: TObject);
    procedure EdDtePedExit(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure EdCodTmoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bPsqTmoClick(Sender: TObject);
    procedure EdCodTmoExit(Sender: TObject);
    procedure EdCodUndExit(Sender: TObject);
    procedure EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormDestroy(Sender: TObject);
    procedure EdCodEmpEnter(Sender: TObject);
    procedure EdDtePedEnter(Sender: TObject);
    procedure EdCodForEnter(Sender: TObject);
    procedure EdCodClpEnter(Sender: TObject);
    procedure EdCodGruEnter(Sender: TObject);
    procedure EdQtpPe2Enter(Sender: TObject);
    procedure EdCodUndEnter(Sender: TObject);
    procedure grPe2Enter(Sender: TObject);
  private
  public
    DtePed : TDateTime;
    CodEmp,NumPed : integer;
    pSaida,sEnc,sEntr,Finalizar : string;
    AntDscPe2,AntVdsPe2,AntPacPe2,AntVluPe2 : real;
  end;

var
  fmManPed: TfmManPed;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, AuxPsq, PsqPfa,
     ManPfo, ManPe1, PsqEs2, PsqClp, AuxIni, PsqTmo, PsqOcp, PsqUnd, ManPe5;

{$R *.DFM}

procedure TfmManPed.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  sEntr := 'N';

  psaida := 'Sim';

  Finalizar := 'N';

end;

procedure TfmManPed.FormShow(Sender: TObject);
begin
  inherited;

  if fmManPfo.CodEmp > 0 then begin

     sEntr := 'S';

     CmpPed.Close;
     CmpPed.Params[0].AsInteger  := fmManPfo.CodEmp;
     CmpPed.Params[1].AsDateTime := fmManPfo.DtePed;
     CmpPed.Params[2].AsInteger  := fmManPfo.NumPed;
     CmpPed.Open;

     CmpPe2.Close;
     CmpPe2.Params[0].AsInteger  := CmpPedCodEmp.Value;
     CmpPe2.Params[1].AsDateTime := CmpPedDtePed.Value;
     CmpPe2.Params[2].AsInteger  := CmpPedNumPed.Value;
     CmpPe2.Open;

     pnSemana.Caption := fDSemana(CmpPedDpePed.Value);

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '''+ IntToStr( CmpPedCodEmp.Value ) +'''';
          Open;

          pnNomEmp.Caption := FieldbyName('NomEmp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomFor,SigUfe From FinFor Where FinFor.CodFor = '''+ IntToStr( CmpPedCodFor.Value) +'''';
          Open;

          pnUfePed.Caption := FieldbyName('SigUfe').AsString;
          pnNomFor.Caption := FieldbyName('NomFor').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select DscPfa From EstPfa'+
                  ' Where EstPfa.TipPfa = :TipPfa'+
                  '   and EstPfa.CodPfa = :CodPfa';

          with Params do begin

               Params[0].AsString := 'Entrada';
               Params[1].AsString := CmpPedCodPfa.Value;

          end;

          Open;

          pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomClp From EstClp Where EstClp.CodClp = '''+ CmpPedCodClp.Value +'''';
          Open;

          pnNomClp.Caption := FieldbyName('NomClp').AsString;

     end;

     with quSQL,SQL do begin

          Close;
          Text := ' Select NomTmo From FinTmo Where FinTmo.CodTmo = '''+ IntToStr(CmpPedCodTmo.Value) +'''';
          Open;

          pnNomTmo.Caption := FieldbyName('NomTmo').AsString;

     end;

     if CmpPedSitPed.Value = 'Recebido' then
        sEnc := 'S'
     else
        begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg'+
                     ' From CmpPe3'+
                     ' Where CmpPe3.CodEmp = :CodEmp'+
                     '   and CmpPe3.DtePed = :DtePed'+
                     '   and CmpPe3.NumPed = :NumPed'+
                     '   and Exists(Select * From CmpEnt Where CmpEnt.CodEmp = CmpPe3.EmpEnt '+
                     '                                     and CmpEnt.DteEnt = CmpPe3.DteEnt '+
                     '                                     and CmpEnt.NumEnt = CmpPe3.NumEnt '+
                     '                                     and CmpEnt.SitEnt = '+ QuotedStr('Nao Concluida') +' )';

             with Params do begin

                  Params[0].AsInteger  := CmpPedCodEmp.Value;
                  Params[1].AsDateTime := CmpPedDtePed.Value;
                  Params[2].AsInteger  := CmpPedNumPed.Value;

             end;

             Open;

        end;

        if quSQL.FieldbyName('QtdReg').AsInteger > 0 then
           sEnc := 'S'
        else
           begin

           bPsqEmp.Enabled := False;
           bPsqClp.Enabled := False;
           bPsqTmo.Enabled := False;
           bPsqPfa.Enabled := False;

           EdCodFor.Enabled := True;
           EdNomCon.Enabled := True;
           EdNomCon.Enabled := True;
           EdPrePed.Enabled := True;
           EdDpePed.Enabled := True;

           EdCodFor.Font.Style := [];
           EdNomCon.Font.Style := [];
           EdNomCon.Font.Style := [];
           EdPrePed.Font.Style := [];
           EdDpePed.Font.Style := [];

           CmpPed.Edit;

           EdCodFor.SetFocus;

        end;
     end;

     end
  else
     begin

     sEntr := 'N';

     LbText.Caption := '';

     CmpPed.Insert;

     EdDtePed.SetFocus;

  end;
end;

procedure TfmManPed.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPed.CmpPedNewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpPed.DisableControls;

  CmpPedCodTmo.Value := 1;  
  CmpPedNumPed.Value := 0;
  CmpPedQtiPed.Value := 0;
  CmpPedTotPed.Value := 0;
  CmpPedBasIcm.Value := 0;
  CmpPedTotIcm.Value := 0;
  CmpPedBasIpi.Value := 0;
  CmpPedTotIpi.Value := 0;
  CmpPedTotPed.Value := 0;
  CmpPedTotCxa.Value := 0;
  CmpPedTotLiq.Value := 0;
  CmpPedTotBrt.Value := 0;
  CmpPedTotCub.Value := 0;      
  CmpPedPerAci.Value := 0;
  CmpPedValTmo.Value := 1;
  CmpPedObsPed.Value := '';
  CmpPedCodClp.Value := '1';
  CmpPedDtePed.Value := Date;
  CmpPedDpePed.Value := Date;
  CmpPedFlgCtb.Value := 'Sim';
  CmpPedCodEmp.Value := GEmp_Id;
  CmpPedTipPfa.Value := 'Entrada';
  CmpPedSitPed.Value := 'Nao Concluido';
  CmpPedHrePed.Value := TimeToStr(Time);

  EdDtePed.Date := Date;
  EdDpePed.Date := Date;

  pnSemana.Caption := fDSemana(CmpPedDpePed.Value);

  EdClpPed.Text := '1';
  EdCodTmo.Text := '1';
  EdPrePed.Text := '0';
  
  if GEmp_Id > 0 then EdCodEmp.Text := IntToStr(GEmp_Id);

  with quSQL,SQL do begin

       Close;
       Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '''+ IntToStr(CmpPedCodEmp.Value) +'''';
       Open;

       pnNomEmp.Caption := FieldbyName('NomEmp').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select NomFor,SigUfe From FinFor Where FinFor.CodFor = '''+ IntToStr(CmpPedCodFor.Value) +'''';
       Open;

       pnUfePed.Caption := FieldbyName('SigUfe').AsString;
       pnNomFor.Caption := FieldbyName('NomFor').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select NomTmo From FinTmo Where FinTmo.CodTmo = '''+ IntToStr(CmpPedCodTmo.Value) +'''';
       Open;

       pnNomTmo.Caption := FieldbyName('NomTmo').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select DscPfa From EstPfa'+
               ' Where EstPfa.TipPfa = :TipPfa'+
               '   and EstPfa.CodPfa = :CodPfa';

       with Params do begin

            Params[0].AsString := 'Entrada';
            Params[1].AsString := CmpPedCodPfa.Value;

       end;

       Open;

       pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select NomClp From EstClp Where EstClp.CodClp = '''+ CmpPedCodClp.Value +'''';
       Open;

       pnNomClp.Caption := FieldbyName('NomClp').AsString;

  end;

  CmpPe2.Close;
  CmpPe2.Params[0].AsInteger  := CmpPedCodEmp.Value;
  CmpPe2.Params[1].AsDateTime := CmpPedDtePed.Value;
  CmpPe2.Params[2].AsInteger  := CmpPedNumPed.Value;
  CmpPe2.Open;

  EdCodEmp.Enabled := True;
  EdDtePed.Enabled := True;
  EdCodFor.Enabled := True;
  EdNomCon.Enabled := True;
  EdCodPfa.Enabled := True;
  EdClpPed.Enabled := True;
  EdCodTmo.Enabled := True;
  EdValTmo.Enabled := True;
  EdPrePed.Enabled := True;
  EdDpePed.Enabled := True;

  EdCodEmp.Font.Style := [];
  EdDtePed.Font.Style := [];
  EdCodFor.Font.Style := [];
  EdNomCon.Font.Style := [];
  EdCodPfa.Font.Style := [];
  EdClpPed.Font.Style := [];
  EdCodTmo.Font.Style := [];
  EdValTmo.Font.Style := [];
  EdPrePed.Font.Style := [];
  EdDpePed.Font.Style := [];

  if CmpPedCodEmp.Value > 0 then
     EdDtePed.SetFocus
  else
     EdCodEmp.SetFocus;
end;

procedure TfmManPed.CmpPe2NewRecord(DataSet: TDataSet);
begin
  inherited;

  CmpPe2.DisableControls;

  CmpPe2LiqPe2.Value := 0;
  CmpPe2BrtPe2.Value := 0;
  CmpPe2CxaPe2.Value := 0;
  CmpPe2CubPe2.Value := 0;        
  CmpPe2QtpPe2.Value := 0;
  CmpPe2QtrPe2.Value := 0;
  CmpPe2SldPe2.Value := 0;
  CmpPe2VluPe2.Value := 0;
  CmpPe2VlqPe2.Value := 0;
  CmpPe2DscPe2.Value := 0;
  CmpPe2VdsPe2.Value := 0;
  CmpPe2PacPe2.Value := 0;
  CmpPe2VacPe2.Value := 0;
  CmpPe2BasIpi.Value := 0;
  CmpPe2TotIpi.Value := 0;
  CmpPe2BasIcm.Value := 0;
  CmpPe2TotIcm.Value := 0;
  CmpPe2TotPe2.Value := 0;
  CmpPe2TotGe2.Value := 0;
  CmpPe2TotCxa.Value := 0;
  CmpPe2TotLiq.Value := 0;
  CmpPe2TotBrt.Value := 0;
  CmpPe2TotCub.Value := 0;        
  CmpPe2FlaSeq.Value := ' ';
  CmpPe2FlgLan.Value := ' ';
  CmpPe2CodCor.Value := 'UN';
  CmpPe2CodTam.Value := 'UN';
  CmpPe2FlgDup.Value := 'Nao';  
  CmpPe2CodEmp.Value := CmpPedCodEmp.Value;
  CmpPe2CodEit.Value := CmpPedCodEmp.Value;
  CmpPe2DtePed.Value := CmpPedDtePed.Value;
  CmpPe2NumPed.Value := CmpPedNumPed.Value;
  CmpPe2SeqPe2.Value := CmpPedSeqIte.Value + 1;
  CmpPe2NroPe2.Value := CmpPedQtiPed.Value + 1;

  if Trim( CmpPedCodClp.Value ) <> '' then CmpPe2CodClp.Value := CmpPedCodClp.Value;
  
  AntDscPe2 := CmpPe2DscPe2.Value;
  AntVdsPe2 := CmpPe2VdsPe2.Value;  
  AntPacPe2 := CmpPe2PacPe2.Value;
  AntVluPe2 := CmpPe2VluPe2.Value;

  CmpPe2.EnableControls;

  EdCodGru.Enabled := True;
  EdCodSub.Enabled := True;
  EdCodPro.Enabled := True;
  EdQtpPe2.Enabled := True;
  EdVluPe2.Enabled := True;
  EdIpiPe2.Enabled := True;
  EdIcmPe2.Enabled := True;
  EdDscPe2.Enabled := True;
  EdPacPe2.Enabled := True;
  EdImpPe2.Enabled := True;
  EdValVen.Enabled := True;

  if Trim( CmpPedCodClp.Value ) <> '' then begin

     EdCodClp.Enabled := False;

     EdCodGru.SetFocus;

     end
  else
     begin

     EdCodClp.Enabled := True;

     EdCodClp.SetFocus;

  end;
end;

procedure TfmManPed.EdCodEmpExit(Sender: TObject);
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if CmpPed.State <> dsBrowse then begin
        
        if CmpPedCodEmp.Value > 0 then begin

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

                with Params do begin

                     Params[0].AsInteger := CmpPedCodEmp.Value;

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

procedure TfmManPed.EdCodForExit(Sender: TObject);
var
saida : boolean;
LocPfa : string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDtePed.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpPed.State <> dsBrowse then begin

           if CmpPedCodFor.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select * From FinFor Where FinFor.CodFor = '''+ IntToStr( CmpPedCodFor.Value ) +'''';
                   Open;

              end;

              if quSql.FieldbyName('CodFor').AsInteger = CmpPedCodFor.Value then begin

                 pnUfePed.Caption := quSQL.FieldbyName('SigUfe').AsString;
                 pnNomFor.Caption := quSQL.FieldbyName('NomFor').AsString;

                 CmpPedUfePed.Value := quSQL.FieldbyName('SigUfe').AsString;
                 CmpPedConPlc.Value := quSQL.FieldbyName('ConPlc').AsInteger;
                 CmpPedSubPlc.Value := quSQL.FieldbyName('SubPlc').AsInteger;

                 if Trim(copy(quSQL.FieldbyName('ConFor').AsString,1,40)) <> '' then CmpPedNomCon.Value := copy(quSQL.FieldbyName('ConFor').AsString,1,40);

                 EdNomCon.Text := CmpPedNomCon.Value;

                 if Trim( quSQL.FieldbyName('CodPfa').AsString ) <> '' then begin

                    CmpPedCodPfa.Value := quSQL.FieldbyName('CodPfa').AsString;
                    CmpPedTipPfa.Value := quSQL.FieldbyName('TipPfa').AsString;

                    if CmpPedUfePed.Value = 'EX' then
                       LocPfa := 'Importacao ou Exportacao'
                    else
                       begin

                       if CmpPedUfePed.Value <> GUfeEmp then
                          LocPfa := 'Outros Estados'
                       else
                          LocPfa := 'Mesmo Estado'

                    end;

                    with quSql,SQL do begin

                         Close;
                         Text := ' Select DscPfa From EstPfa '+
                                 ' Where TipPfa = :TipPfa'+
                                 '   and CodPfa = :CodPfa'+
                                 '   and LocPfa = :LocPfa';

                         with Params do begin

                              Params[0].AsString  := CmpPedTipPfa.Value;
                              Params[1].AsString  := CmpPedCodPfa.Value;
                              Params[2].AsString  := LocPfa;

                         end;

                         Open;

                         pnNomPfa.Caption := FieldbyName('DscPfa').AsString;

                    end;

                    bPsqPfa.Enabled := False;

                    EdCodPfa.Enabled := False;

                    EdCodPfa.Font.Style := [fsBold];

                    end
                 else
                    begin

                    bPsqPfa.Enabled := True;

                    EdCodPfa.Enabled := True;

                    EdCodPfa.Font.Style := [];

                 end;

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select Count(*) as Reg From FinSub'+
                              ' Where FinSub.ConPlc = :ConPlc'+
                              '   and FinSub.SubPlc = :SubPlc';

                      with Params do begin

                           Params[0].AsInteger := CmpPedConPlc.Value;
                           Params[1].AsInteger := CmpPedSubPlc.Value;

                      end;

                      Open;

                      if quSql.FieldbyName('Reg').AsInteger = 0 then fmsgErro('Conta e Sub-Conta do Plano de Contas Informada para o Fornecedor não Encontrada',EdCodFor);

                 end;

                 end
              else
                 begin

                 pnUfePed.Caption := '';
                 pnNomFor.Caption := '';

                 fmsgErro('Fornecedor Informado não Encontrado',EdCodFor);

              end;

              end
           else
              begin

              pnUfePed.Caption := '';
              pnNomFor.Caption := '';

              fmsgErro('Campo de Preenchimento Obrigátorio não Informado',EdCodFor);

           end;
        end;
     end;
  end;
end;

procedure TfmManPed.EdCodPfaExit(Sender: TObject);
var
saida : boolean;
LocPfa : string;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodTmo.Focused) and (not EdClpPed.Focused) and (not EdNomCon.Focused) and
        (not EdCodFor.Focused) and (not EdDtePed.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpPed.State <> dsBrowse then begin

           if Trim( CmpPedCodPfa.Value ) <> '' then begin

              if CmpPedUfePed.Value = 'EX' then
                 LocPfa := 'Importacao ou Exportacao'
              else
                 begin

                 if CmpPedUfePed.Value <> GUfeEmp then
                    LocPfa := 'Outros Estados'
                 else
                    LocPfa := 'Mesmo Estado'

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select DscPfa From EstPfa '+
                           ' Where EstPfa.TipPfa = :TipPfa'+
                           '   and EstPfa.CodPfa = :CodPfa'+
                           '   and EstPfa.LocPfa = :LocPfa';

                   with Params do begin

                        Params[0].AsString := CmpPedTipPfa.Value;
                        Params[1].AsString := CmpPedCodPfa.Value;
                        Params[2].AsString := LocPfa;

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

procedure TfmManPed.EdPrePedExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodTmo.Focused) and (not EdCodPfa.Focused) and (not EdClpPed.Focused) and
        (not EdNomCon.Focused) and (not EdCodFor.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        CmpPedDpePed.Value := CmpPedDtePed.Value + CmpPedPrePed.Value;

        EdDpePed.Date := CmpPedDpePed.Value;

        pnSemana.Caption := fDSemana(CmpPedDpePed.Value);

     end;
  end;
end;

procedure TfmManPed.DsPe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnTotRen.Caption := FormatFloat('###,###,##0.00',CmpPedTotRen.Value);
  pnTotMk2.Caption := FormatFloat('###,###,##0.00',CmpPe2TotRen.Value);

  if CmpPe2.State = dsBrowse then begin

     AntDscPe2 := CmpPe2DscPe2.Value;
     AntVdsPe2 := CmpPe2VdsPe2.Value;
     AntPacPe2 := CmpPe2PacPe2.Value;
     AntVluPe2 := CmpPe2VluPe2.Value;

  end;

  if CmpPedFlgOco.Value = '*' then
     pnFlgOco.Color := clRed
  else
     pnFlgOco.Color := clLime;

  pnDesPe2.Caption := CmpPe2DesPe2.Value;
  pnObsPe2.Caption := CmpPe2ObsPe2.Value;

  pnNumPed.Caption := IntToStr(CmpPedNumPed.Value);

  pnTotPed.Caption := FormatFloat('###,###,##0.00',CmpPedTotPed.Value);
  pnTotAcc.Caption := FormatFloat('###,###,##0.00',CmpPedTotAcc.Value);
  pnTotGer.Caption := FormatFloat('###,###,##0.00',CmpPedTotGer.Value);

  p1TotCxa.Caption := FormatFloat('###,###,##0.0000',CmpPedTotCxa.Value);
  p1TotCub.Caption := FormatFloat('###,###,##0.0000',CmpPedTotCub.Value);
  p1TotLiq.Caption := FormatFloat('###,###,##0.0000',CmpPedTotLiq.Value);
  p1TotBrt.Caption := FormatFloat('###,###,##0.0000',CmpPedTotBrt.Value);

  pnCxaPe2.Caption := FormatFloat('###,###,##0.0000',CmpPe2CxaPe2.Value);

  pnTotCxa.Caption := FormatFloat('###,###,##0.0000',CmpPe2TotCxa.Value);
  pnTotCub.Caption := FormatFloat('###,###,##0.0000',CmpPe2TotCub.Value);
  pnTotLiq.Caption := FormatFloat('###,###,##0.0000',CmpPe2TotLiq.Value);
  pnTotBrt.Caption := FormatFloat('###,###,##0.0000',CmpPe2TotBrt.Value);

  if CmpPe2.State = dsInsert then
     pnNroPe2.Caption := FNumZeros(IntToStr(CmpPe2NroPe2.Value),4)+'/'+FNumZeros(IntToStr(CmpPedQtiPed.Value + 1),4)
  else
     pnNroPe2.Caption := FNumZeros(IntToStr(CmpPe2NroPe2.Value),4)+'/'+FNumZeros(IntToStr(CmpPedQtiPed.Value),4);

end;

procedure TfmManPed.EdCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPed.EdCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           CmpPedCodEmp.Value := fmPsqEmp.CodEmp;

           EdCodEmp.Text := IntToStr(CmpPedCodEmp.Value);

           pnNomEmp.Caption := fmPsqEmp.NomEmp;

        end;

     finally   

        FreeAndNil(fmPsqEmp);

     end;

     if CmpPedCodEmp.Value > 0 then EdDtePed.SetFocus;

  end;
end;

procedure TfmManPed.EdCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           CmpPedCodFor.Value := fmAuxIni.CodFor;
           CmpPedUfePed.Value := fmAuxIni.SigUfe;
           CmpPedConPlc.Value := fmAuxIni.ConPlc;
           CmpPedSubPlc.Value := fmAuxIni.SubPlc;

           EdCodFor.Text := IntToStr(CmpPedCodFor.Value);

           pnUfePed.Caption := fmAuxIni.SigUfe;
           pnNomFor.Caption := fmAuxIni.NomFor;

        end;

     finally

        FreeAndNil(fmAuxIni);

     end;

     if CmpPedCodFor.Value > 0 then EdNomCon.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           CmpPedCodFor.Value := fmAuxPsq.CodFor;
           CmpPedUfePed.Value := fmAuxPsq.SigUfe;
           CmpPedConPlc.Value := fmAuxPsq.ConPlc;
           CmpPedSubPlc.Value := fmAuxPsq.SubPlc;

           EdCodFor.Text := IntToStr(CmpPedCodFor.Value);

           pnUfePed.Caption := fmAuxPsq.SigUfe;
           pnNomFor.Caption := fmAuxPsq.NomFor;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if CmpPedCodFor.Value > 0 then EdNomCon.SetFocus;

  end;
end;

procedure TfmManPed.EdCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
LocPfa : string;
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     if CmpPedUfePed.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if CmpPedUfePed.Value <> GUfeEmp then
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

                  Params[0].AsString := 'Entrada';
                  Params[1].AsString := LocPfa;

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           CmpPedCodPfa.Value := fmPsqPfa.CodPfa;

           pnNomPfa.Caption := fmPsqPfa.NomPfa;

           EdCodPfa.Text := CmpPedCodPfa.Value;

        end;

     finally

        FreeAndNil(fmPsqPfa);

     end;

     if Trim( CmpPedCodPfa.Value ) <> '' then EdPrePed.SetFocus;

  end;

  if key = 113 then begin {F2 - Inteligente}

     if CmpPedUfePed.Value = 'EX' then
        LocPfa := 'Importacao ou Exportacao'
     else
        begin

        if CmpPedUfePed.Value <> GUfeEmp then
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

           CmpPedCodPfa.Value := fmAuxPsq.CodPfa;

           pnNomPfa.Caption := fmAuxPsq.NomPfa;

           EdCodPfa.Text := CmpPedCodPfa.Value;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpPedCodPfa.Value ) <> '' then EdPrePed.SetFocus;

  end;
end;

procedure TfmManPed.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (EdCodClp.Focused) or (EdCodGru.Focused) or (EdCodSub.Focused) or (EdCodPro.Focused) or (grPe2.Focused) then begin

     if key = 114 then begin {F3 - Descrição}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := CmpPe2CodClp.Value;

           fmAuxIni.TipoPesq := 'IC';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpPe2CodClp.Value := fmAuxIni.CodClp;
                 CmpPe2CodGru.Value := fmAuxIni.CodGru;
                 CmpPe2CodSub.Value := fmAuxIni.CodSub;
                 CmpPe2CodPro.Value := fmAuxIni.CodPro;

                 end
              else
                 CmpPe2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmAuxIni.CodClp,fmAuxIni.CodGru,fmAuxIni.CodSub,fmAuxIni.CodPro]),[LoPartialKey]);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if EdCodGru.Enabled then begin

           if Trim( CmpPe2CodPro.Value ) <> '' then begin

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

     if key = 116 then begin {F5 - Referência}

        try

           fmAuxIni := TfmAuxIni.Create(Self);

           fmAuxIni.CodClp := CmpPe2CodClp.Value;

           fmAuxIni.TipoPesq := 'R';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpPe2CodClp.Value := fmAuxIni.CodClp;
                 CmpPe2CodGru.Value := fmAuxIni.CodGru;
                 CmpPe2CodSub.Value := fmAuxIni.CodSub;
                 CmpPe2CodPro.Value := fmAuxIni.CodPro;

                 end
              else
                 CmpPe2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmAuxIni.CodClp,fmAuxIni.CodGru,fmAuxIni.CodSub,fmAuxIni.CodPro]),[LoPartialKey]);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if EdCodGru.Enabled then begin

           if Trim( CmpPe2CodPro.Value ) <> '' then begin

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

     if key = 117 then begin {F6 - Inteligente/Descrição}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := CmpPe2CodClp.Value;

           fmAuxPsq.TipoPesq := 'IC';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpPe2CodClp.Value := fmAuxPsq.CodClp;
                 CmpPe2CodGru.Value := fmAuxPsq.CodGru;
                 CmpPe2CodSub.Value := fmAuxPsq.CodSub;
                 CmpPe2CodPro.Value := fmAuxPsq.CodPro;

                end
             else
                CmpPe2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmAuxPsq.CodClp,fmAuxPsq.CodGru,fmAuxPsq.CodSub,fmAuxPsq.CodPro]),[LoPartialKey]);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        if EdCodGru.Enabled then begin

           if Trim( CmpPe2CodPro.Value ) <> '' then begin

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

     if key = 118 then begin {F7 - Inteligente/Referência}

        try

           fmAuxPsq := TfmAuxPsq.Create(Self);

           fmAuxPsq.CodClp := CmpPe2CodClp.Value;

           fmAuxPsq.TipoPesq := 'R';

           fmAuxPsq.ShowModal;

           if Trim( fmAuxPsq.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpPe2CodClp.Value := fmAuxPsq.CodClp;
                 CmpPe2CodGru.Value := fmAuxPsq.CodGru;
                 CmpPe2CodSub.Value := fmAuxPsq.CodSub;
                 CmpPe2CodPro.Value := fmAuxPsq.CodPro;

                 end
              else
                 CmpPe2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmAuxPsq.CodClp,fmAuxPsq.CodGru,fmAuxPsq.CodSub,fmAuxPsq.CodPro]),[LoPartialKey]);

           end;

        finally

           FreeAndNil(fmAuxPsq);

        end;

        if EdCodGru.Enabled then begin

           if Trim( CmpPe2CodPro.Value ) <> '' then begin

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

           fmAuxIni.CodClp := CmpPe2CodClp.Value;

           fmAuxIni.TipoPesq := 'U';

           fmAuxIni.ShowModal;

           if Trim( fmAuxIni.CodGru ) <> '' then begin

              if EdCodGru.Enabled then begin

                 CmpPe2CodClp.Value := fmAuxIni.CodClp;
                 CmpPe2CodGru.Value := fmAuxIni.CodGru;
                 CmpPe2CodSub.Value := fmAuxIni.CodSub;
                 CmpPe2CodPro.Value := fmAuxIni.CodPro;

                 end
              else
                 CmpPe2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmAuxIni.CodClp,fmAuxIni.CodGru,fmAuxIni.CodSub,fmAuxIni.CodPro]),[LoPartialKey]);

           end;

        finally

           FreeAndNil(fmAuxIni);

        end;

        if EdCodGru.Enabled then begin

           if Trim( CmpPe2CodPro.Value ) <> '' then begin

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
  end;
  
  if key = 115 then begin // F4 - Estoque //

     try

        fmPsqEs2 := TfmPsqEs2.Create(Self);

        fmPsqEs2.sEntr := sEntr;

        fmPsqEs2.sCodClp := CmpPe2CodClp.Value;

        if ( Trim(CmpPe2CodGru.Value) <> '' ) or
           ( Trim(CmpPe2CodSub.Value) <> '' ) or
           ( Trim(CmpPe2CodPro.Value) <> '' ) then begin

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
                        ' Where EstPro.CodClp = '''+ '1' +''''+
                        '   and EstPro.FlbPro = '''+ ' ' +'''';

                if Trim( CmpPe2CodGru.Value ) <> '' then Text := Text + ' and EstPro.CodGru = '''+ CmpPe2CodGru.Value +'''';
                if Trim( CmpPe2CodSub.Value ) <> '' then Text := Text + ' and EstPro.CodSub = '''+ CmpPe2CodSub.Value +'''';
                if Trim( CmpPe2CodPro.Value ) <> '' then Text := Text + ' and EstPro.CodPro = '''+ CmpPe2CodPro.Value +'''';

                Text := Text + ' Order by EstPro.DscPro';

                Open;

           end;
        end;

        fmPsqEs2.ShowModal;

        if Trim( fmPsqEs2.CodGru ) <> '' then begin

           if EdCodGru.Enabled then begin

              if sEntr = 'S' then begin

                 CmpPe2CodClp.Value := fmPsqEs2.CodClp;
                 CmpPe2CodGru.Value := fmPsqEs2.CodGru;
                 CmpPe2CodSub.Value := fmPsqEs2.CodSub;
                 CmpPe2CodPro.Value := fmPsqEs2.CodPro;

              end;

              end
           else
              CmpPe2.Locate('CodClp;CodGru;CodSub;CodPro',VarArrayOf([fmPsqEs2.CodClp,fmPsqEs2.CodGru,fmPsqEs2.CodSub,fmPsqEs2.CodPro]),[LoPartialKey]);

        end;

     finally

        FreeAndNil(fmPsqEs2);

     end;

     if EdCodGru.Enabled then begin

        if Trim( CmpPe2CodPro.Value ) <> '' then
           SaiProduto
        else
           begin

           if EdCodGru.Focused then EdCodGru.SetFocus;
           if EdCodSub.Focused then EdCodSub.SetFocus;
           if EdCodPro.Focused then EdCodPro.SetFocus;

        end;
     end;
  end;

  if key = 122 then begin // F11-Ocorrencias do Pedido //

     if CmpPedFlgOco.Value = '*' then begin

        try

           fmPsqOcp := TfmPsqOcp.Create(Self);

           fmPsqOcp.CmpPe2.Close;
           fmPsqOcp.CmpPe2.Params[0].AsInteger  := CmpPedCodEmp.Value;
           fmPsqOcp.CmpPe2.Params[1].AsDateTime := CmpPedDtePed.Value;
           fmPsqOcp.CmpPe2.Params[2].AsInteger  := CmpPedNumPed.Value;
           fmPsqOcp.CmpPe2.Open;

           fmPsqOcp.ShowModal;

        finally

           FreeAndNil(fmPsqOcp);

        end;
     end;
  end;

  if key = 27 then begin

     if CmpPed.State <> dsBrowse then begin

        CmpPed.CancelUpdates;

        Close;

        end
     else
        begin

        if CmpPe2.State <> dsBrowse then CmpPe2.CancelUpdates;

        if EdQtpPe2.Enabled then begin

           pnDesPe2.Visible := True;
           pnObsPe2.Visible := True;

           EdCodClp.Enabled := False;
           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpPe2.Enabled := False;
           EdVluPe2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdIpiPe2.Enabled := False;
           EdIcmPe2.Enabled := False;
           EdDscPe2.Enabled := False;
           EdPacPe2.Enabled := False;
           EdDesPe2.Enabled := False;
           EdObsPe2.Enabled := False;
           EdImpPe2.Enabled := False;
           EdValVen.Enabled := False;

           grPe2.SetFocus;

           end
        else
           begin

           if EdDesPe2.Enabled then begin

              EdDesPe2.Enabled := False;
              EdObsPe2.Enabled := False;

              pnDesPe2.Visible := True;
              pnObsPe2.Visible := True;

              grPe2.SetFocus;

              end
           else
              Close;
        end;
     end;
  end;

  if key = 123 then begin {F12-Finalizar Pedido}

     if CmpPedTotPed.Value > 0 then begin

        if grPe2.Focused then begin

           if CmpPedModPfa.Value = 'Importacao' then begin

              try

                 fmManPe5 := TfmManPe5.Create(Self);

                 fmManPe5.ShowModal;

              finally

                 FreeAndNil(fmManPe5);

              end;

              end
           else
              begin

              try

                 fmManPe1 := TfmManPe1.Create(Self);

                 fmManPe1.ShowModal;

              finally

                 FreeAndNil(fmManPe1);

              end;
           end;
           
           if Finalizar = 'S' then begin

              Finalizar := 'N';

              EdCodEmp.Clear;
              EdDtePed.Clear;
              EdCodFor.Clear;
              EdCodPfa.Clear;
              EdNomCon.Clear;
              EdPrePed.Clear;
              EdDpePed.Clear;

              pnNumPed.Caption := '0';

              pnNomEmp.Caption := '';
              pnUfePed.Caption := '';
              pnNomFor.Caption := '';
              pnNomPfa.Caption := '';
              pnNomClp.Caption := '';
              pnSemana.Caption := '';

              CmpPed.Close;
              CmpPed.Params[0].AsInteger  := 0;
              CmpPed.Params[1].AsDateTime := Date;
              CmpPed.Params[2].AsInteger  := 0;
              CmpPed.Open;

              CmpPed.Insert;

              if CmpPedCodEmp.Value > 0 then
                 EdDtePed.SetFocus
              else
                 EdCodEmp.SetFocus;

           end;
        end;
     end;
  end;
end;

procedure TfmManPed.EdCodGruKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpPe2CodClp.Value;

        fmAuxIni.TipoPesq := 'G';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if CmpPe2.State = dsBrowse then begin

              if Trim( CmpPe2CodClp.Value ) <> '' then
                 CmpPe2.Edit
              else
                 CmpPe2.Append;

           end;

           CmpPe2CodGru.Value := fmAuxIni.CodGru;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpPe2CodGru.Value ) <> '' then
        SaiGrupo
     else
        EdCodGru.SetFocus;
        
  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.CodClp := CmpPe2CodClp.Value;

        fmAuxPsq.TipoPesq := 'G';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpPe2.State = dsBrowse then begin

              if Trim( CmpPe2CodClp.Value ) <> '' then
                 CmpPe2.Edit
              else
                 CmpPe2.Append;

           end;

           CmpPe2CodGru.Value := fmAuxPsq.CodGru;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpPe2CodGru.Value ) <> '' then
        SaiGrupo
     else
        EdCodGru.SetFocus;

  end;
end;

procedure TfmManPed.EdCodGruExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodClp.Focused) and (not EdDpePed.Focused) and (not EdPrePed.Focused) and
        (not EdClpPed.Focused) and (not EdCodPfa.Focused) and (not EdNomCon.Focused) and (not EdPrePed.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiGrupo;

     end
  else
     begin

     if not EdCodClp.Enabled then begin

        if (Tecla = 'UP') then begin

           if CmpPedQtiPed.Value > 0 then begin

              pnDesPe2.Visible := True;
              pnObsPe2.Visible := True;

              EdCodClp.Enabled := False;
              EdCodGru.Enabled := False;
              EdCodSub.Enabled := False;
              EdCodPro.Enabled := False;
              EdQtpPe2.Enabled := False;
              EdVluPe2.Enabled := False;
              EdCodUnd.Enabled := False;
              EdIpiPe2.Enabled := False;
              EdIcmPe2.Enabled := False;
              EdDscPe2.Enabled := False;
              EdPacPe2.Enabled := False;
              EdDesPe2.Enabled := False;
              EdObsPe2.Enabled := False;
              EdImpPe2.Enabled := False;
              EdValVen.Enabled := False;

              if CmpPe2.State <> dsBrowse then
                 CmpPe2.CancelUpdates
              else
                 begin

                 if not CmpPe2.Bof then CmpPe2.Prior;

              end;

              grPe2.SetFocus;

              end
           else
              EdCodGru.SetFocus;
        end;
     end;
  end;
end;

procedure TfmManPed.EdCodSubKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpPe2CodClp.Value;

        if Trim( CmpPe2CodGru.Value ) <> '' then fmAuxIni.CodGru := CmpPe2CodGru.Value;

        fmAuxIni.TipoPesq := 'S';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if CmpPe2.State = dsBrowse then begin

              if Trim( CmpPe2CodClp.Value ) <> '' then
                 CmpPe2.Edit
              else
                 CmpPe2.Append;

           end;

           CmpPe2CodGru.Value := fmAuxIni.CodGru;
           CmpPe2CodSub.Value := fmAuxIni.CodSub;

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpPe2CodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;

  end;

  if key = 113 then begin {F2 - Busca Inteligente}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        if Trim( CmpPe2CodGru.Value ) <> '' then fmAuxPsq.CodGru := CmpPe2CodGru.Value;

        fmAuxPsq.CodClp := CmpPe2CodClp.Value;

        fmAuxPsq.TipoPesq := 'S';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpPe2.State = dsBrowse then begin

              if Trim( CmpPe2CodClp.Value ) <> '' then
                 CmpPe2.Edit
              else
                 CmpPe2.Append;

           end;

           CmpPe2CodGru.Value := fmAuxPsq.CodGru;
           CmpPe2CodSub.Value := fmAuxPsq.CodSub;

        end;

     finally

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpPe2CodSub.Value ) <> '' then
        SaiSubGrupo
     else
        EdCodSub.SetFocus;

  end;
end;

procedure TfmManPed.EdCodSubExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodGru.Focused) and (not EdCodClp.Focused) and (not EdDpePed.Focused) and (not EdPrePed.Focused) and
        (not EdClpPed.Focused) and (not EdCodPfa.Focused) and (not EdNomCon.Focused) and (not EdPrePed.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiSubGrupo;

  end;
end;

procedure TfmManPed.EdCodProKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {f1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.CodClp := CmpPe2CodClp.Value;
        fmAuxIni.CodGru := CmpPe2CodGru.Value;
        fmAuxIni.CodSub := CmpPe2CodSub.Value;

        fmAuxIni.TipoPesq := 'IC';

        fmAuxIni.ShowModal;

        if Trim( fmAuxIni.CodGru ) <> '' then begin

           if EdCodGru.Enabled then begin

              CmpPe2CodClp.Value := fmAuxIni.CodClp;
              CmpPe2CodGru.Value := fmAuxIni.CodGru;
              CmpPe2CodSub.Value := fmAuxIni.CodSub;
              CmpPe2CodPro.Value := fmAuxIni.CodPro;

           end;
        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;

     if Trim( CmpPe2CodPro.Value ) <> '' then
        SaiProduto
     else
        EdCodPro.SetFocus;

  end;

  if key = 113 then begin {F5 - Busca Inteligente}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        if Trim( CmpPe2CodClp.Value ) <> '' then fmAuxPsq.CodClp := CmpPe2CodClp.Value;
        if Trim( CmpPe2CodGru.Value ) <> '' then fmAuxPsq.CodGru := CmpPe2CodGru.Value;
        if Trim( CmpPe2CodSub.Value ) <> '' then fmAuxPsq.CodSub := CmpPe2CodSub.Value;

        fmAuxPsq.TipoPesq := 'IC';

        fmAuxPsq.ShowModal;

        if Trim( fmAuxPsq.CodGru ) <> '' then begin

           if CmpPe2.State = dsBrowse then begin

              if Trim( CmpPe2CodClp.Value ) <> '' then
                 CmpPe2.Edit
              else
                 CmpPe2.Append;

           end;

           CmpPe2CodClp.Value := fmAuxPsq.CodClp;
           CmpPe2CodGru.Value := fmAuxPsq.CodGru;
           CmpPe2CodSub.Value := fmAuxPsq.CodSub;
           CmpPe2CodPro.Value := fmAuxPsq.CodPro;

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;

     if Trim( CmpPe2CodPro.Value ) <> '' then
        SaiProduto
     else
        EdCodPro.SetFocus;

  end;
end;

procedure TfmManPed.EdCodProExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) and (not EdDpePed.Focused) and
        (not EdPrePed.Focused) and (not EdClpPed.Focused) and (not EdCodPfa.Focused) and (not EdNomCon.Focused) and (not EdPrePed.Focused) then
        saida := True
     else
        saida := False;

     if saida then SaiProduto;

  end;
end;

procedure TfmManPed.EdQtpPe2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpPe2.State <> dsBrowse then begin

           if CmpPe2QtpPe2.Value > 0 then begin

              CmpPe2TotPe2.Value := fRound(CmpPe2VlqPe2.Value * CmpPe2QtpPe2.Value,2);

              if CmpPe2CxaPe2.Value > 0 then begin

                 CmpPe2TotCxa.Value := fRound(CmpPe2QtpPe2.Value/CmpPe2CxaPe2.Value,4);

                 CmpPe2TotLiq.Value := fRound(CmpPe2TotCxa.Value * CmpPe2LiqPe2.Value,4);
                 CmpPe2TotBrt.Value := fRound(CmpPe2TotCxa.Value * CmpPe2BrtPe2.Value,4);
                 CmpPe2TotCub.Value := fRound(CmpPe2TotCxa.Value * CmpPe2CubPe2.Value,4);

              end;

              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio',EdQtpPe2);

        end;
     end;

     end
  else
     begin

     if (Tecla = 'UP') then begin

        if (not EdCodClp.Enabled) then begin

           if (not EdCodGru.Enabled) then EdQtpPe2.SetFocus;

        end;
     end;   
  end;
end;

procedure TfmManPed.EdVluPe2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdQtpPe2.Focused) and (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpPe2.State <> dsBrowse then begin

           if CmpPe2VluPe2.Value > 0 then begin

              if CmpPe2VluPe2.Value <> AntVluPe2 then begin

                 AntVluPe2 := CmpPe2VluPe2.Value;

                 CmpPe2VlqPe2.Value := CmpPe2VluPe2.Value;

                 if CmpPe2DscPe2.Value > 0 then begin

                    CmpPe2VdsPe2.Value := fRound((CmpPe2DscPe2.Value * CmpPe2VlqPe2.Value)/100,6);

                    CmpPe2VlqPe2.Value := fRound(CmpPe2VlqPe2.Value - CmpPe2VdsPe2.Value,6);

                 end;

                 if CmpPe2PacPe2.Value > 0 then begin

                    CmpPe2VacPe2.Value := fRound((CmpPe2PacPe2.Value * CmpPe2VlqPe2.Value)/100,6);

                    CmpPe2VlqPe2.Value := fRound(CmpPe2VlqPe2.Value + CmpPe2VacPe2.Value,6);

                 end;

                 CmpPe2TotPe2.Value := fRound(CmpPe2VlqPe2.Value * CmpPe2QtpPe2.Value,2);

              end;

              end
           else
              fmsgErro('Campo de Preenchimento Obrigatorio',EdVluPe2);
        end;
     end;
  end;
end;

procedure TfmManPed.EdDscPe2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdIcmPe2.Focused) and (not EdIpiPe2.Focused) and (not EdVluPe2.Focused) and (not EdQtpPe2.Focused) and
        (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpPe2.State <> dsBrowse then begin

           if CmpPe2DscPe2.Value <> AntDscPe2 then begin

              AntDscPe2 := CmpPe2DscPe2.Value;

              CmpPe2VlqPe2.Value := CmpPe2VluPe2.Value;

              if CmpPe2DscPe2.Value > 0 then begin

                 CmpPe2VdsPe2.Value := fRound((CmpPe2DscPe2.Value * CmpPe2VlqPe2.Value)/100,6);

                 CmpPe2VlqPe2.Value := fRound(CmpPe2VlqPe2.Value - CmpPe2VdsPe2.Value,6);

                 end
              else
                 CmpPe2VdsPe2.Value := 0;
                 
              if CmpPe2PacPe2.Value > 0 then begin

                 CmpPe2VacPe2.Value := fRound((CmpPe2PacPe2.Value * CmpPe2VlqPe2.Value)/100,6);

                 CmpPe2VlqPe2.Value := fRound(CmpPe2VlqPe2.Value + CmpPe2VacPe2.Value,6);

                 end
              else
                 CmpPe2VacPe2.Value := 0;
                 
              CmpPe2TotPe2.Value := fRound(CmpPe2VlqPe2.Value * CmpPe2QtpPe2.Value,2);

           end;
        end;
     end;
  end;
end;

procedure TfmManPed.EdPacPe2Exit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdDscPe2.Focused) and (not EdIcmPe2.Focused) and (not EdIpiPe2.Focused) and (not EdVluPe2.Focused) and (not EdQtpPe2.Focused) and
        (not EdCodPro.Focused) and (not EdCodSub.Focused) and (not EdCodGru.Focused) and (not EdCodClp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpPe2.State <> dsBrowse then begin

           if CmpPe2PacPe2.Value <> AntPacPe2 then begin

              AntPacPe2 := CmpPe2PacPe2.Value;

              CmpPe2VlqPe2.Value := CmpPe2VluPe2.Value;

              if CmpPe2DscPe2.Value > 0 then begin

                 CmpPe2VdsPe2.Value := fRound((CmpPe2DscPe2.Value * CmpPe2VlqPe2.Value)/100,6);

                 CmpPe2VlqPe2.Value := fRound(CmpPe2VlqPe2.Value - CmpPe2VdsPe2.Value,6);

                 end
              else
                 CmpPe2VdsPe2.Value := 0;

              if CmpPe2PacPe2.Value > 0 then begin

                 CmpPe2VacPe2.Value := fRound((CmpPe2PacPe2.Value * CmpPe2VlqPe2.Value)/100,6);

                 CmpPe2VlqPe2.Value := fRound(CmpPe2VlqPe2.Value + CmpPe2VacPe2.Value,6);

                 end
              else
                 CmpPe2VacPe2.Value := 0;

              CmpPe2TotPe2.Value := fRound(CmpPe2VlqPe2.Value * CmpPe2QtpPe2.Value,2);

           end;
        end;
     end;
  end;   
end;

procedure TfmManPed.grPe2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
NroPe2 : integer;
begin
  inherited;
  if key = 68 then begin {D - Mudar Descrição/Observações Sobre o Item}

     if CmpPe2CodEmp.Value > 0 then begin

        pnDesPe2.Visible := False;
        pnObsPe2.Visible := False;

        EdDesPe2.Enabled := True;
        EdObsPe2.Enabled := True;

        CmpPe2.Edit;
        
        EdDesPe2.SetFocus;

     end;
  end;

  if key = 13 then begin {Tecla - ENTER}

     if CmpPe2CodEmp.Value > 0 then begin

        EdQtpPe2.Enabled := True;
        EdVluPe2.Enabled := True;
        EdIpiPe2.Enabled := True;
        EdIcmPe2.Enabled := True;
        EdDscPe2.Enabled := True;
        EdPacPe2.Enabled := True;
        EdImpPe2.Enabled := True;
        EdValVen.Enabled := True;

        if CmpPe2CodClp.Value = '9' then begin

           pnDesPe2.Visible := False;
           pnObsPe2.Visible := False;

           EdCodUnd.Enabled := True;
           EdDesPe2.Enabled := True;
           EdObsPe2.Enabled := True;

           EdDscPe2.Enabled := False;
           EdPacPe2.Enabled := False;
           EdValVen.Enabled := False;

           EdQtpPe2.SetFocus;

        end;

        CmpPe2.Edit;
        
        EdQtpPe2.SetFocus;

     end;
  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if CmpPedQtiPed.Value = 0 then
        CmpPe2.Append
     else
        begin

        if CmpPe2NroPe2.Value = CmpPedQtiPed.Value then CmpPe2.Append;

     end;
  end;

  if key = 46 then begin {Tecla - DEL}

     if Trim( CmpPe2CodClp.Value ) <> '' then begin

        NroPe2 := CmpPe2NroPe2.Value;

        CmpPe2.Delete;

        with CmpPe2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpPe2.State <> dsBrowse then CmpPe2.CancelUpdates;

                grPe2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        CmpPe2.Close;
        CmpPe2.Open;

        CmpPed.Close;
        CmpPed.Open;

        if NroPe2 < CmpPedQtiPed.Value then
           CmpPe2.Locate('CodEmp;DtePed;NumPed;NroPe2',VarArrayOf([CmpPe2CodEmp.Value,CmpPe2DtePed.Value,CmpPe2NumPed.Value,NroPe2]),[LoPartialKey])
        else
           begin

           if CmpPedQtiPed.Value = 0 then
              CmpPe2.Append
           else
              CmpPe2.Last;

        end;
     end;
  end;
end;

procedure TfmManPed.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja Realmente Abandonar o Pedido?','O') then begin

        if CmpPedNumPed.Value > 0 then begin

           with fmManPfo.CmpPed,SQL do begin

                Close;
                Text := ' Select CmpPed.CodEmp,'+
                        '        CmpPed.DtePed,'+
                        '        CmpPed.NumPed,'+
                        '        CmpPed.HrePed,'+
                        '        CmpPed.PrePed,'+
                        '        CmpPed.DpePed,'+
                        '        CmpPed.UfePed,'+
                        '        CmpPed.CodFor,'+
                        '        CmpPed.ConPlc,'+
                        '        CmpPed.SubPlc,'+
                        '        CmpPed.NomCon,'+
                        '        CmpPed.NomVen,'+
                        '        CmpPed.ObsCnd,'+
                        '        CmpPed.QtiPed,'+
                        '        CmpPed.TotPed,'+
                        '        CmpPed.TotAcc,'+
                        '        CmpPed.TotGer,'+
                        '        CmpPed.TotRen,'+
                        '        CmpPed.ObsPed,'+
                        '        CmpPed.EmpRes,'+
                        '        CmpPed.DteRes,'+
                        '        CmpPed.NumRes,'+
                        '        CmpPed.ModPfa,'+
                        '        CmpPed.SitPed,'+
                        '        FinFor.ApeFor,'+
                        '        GerUsu.LogUsu'+
                        ' From CmpPed,FinFor,GerUsu'+
                        ' Where CmpPed.CodFor = FinFor.CodFor'+
                        '   and CmpPed.CodUsu = GerUsu.CodUsu'+
                        '   and CmpPed.CodEmp = :CodEmp'+
                        '   and CmpPed.DtePed = :DtePed'+
                        '   and CmpPed.NumPed = :NumPed';

                with Params do begin

                     Params[0].AsInteger  := CmpPedCodEmp.Value;
                     Params[1].AsDateTime := CmpPedDtePed.Value;
                     Params[2].AsInteger  := CmpPedNumPed.Value;

                end;

                Open;

           end;

           fmManPfo.CmpPe2.Close;
           fmManPfo.CmpPe2.Open;

           end
        else
           begin

           fmManPfo.CmpPed.Close;
           fmManPfo.CmpPed.Open;

           fmManPfo.CmpPe2.Close;
           fmManPfo.CmpPe2.Open;

           if fmManPfo.CodEmp > 0 then fmManPfo.CmpPed.Locate('CodEmp;DtePed;NumPed',VarArrayOf([fmManPfo.CodEmp,fmManPfo.DtePed,fmManPfo.NumPed]), [loPartialKey]);

        end;
        
        Action := CaFree;

        end
     else
        begin

        Abort;

        if CmpPedNumPed.Value = Null then CmpPed.Insert;

     end;

     end
  else
     begin

     fmManPfo.CmpPed.Close;
     fmManPfo.CmpPed.Open;

     fmManPfo.CmpPe2.Close;
     fmManPfo.CmpPe2.Open;

     if fmManPfo.CodEmp > 0 then fmManPfo.CmpPed.Locate('CodEmp;DtePed;NumPed',VarArrayOf([fmManPfo.CodEmp,fmManPfo.DtePed,fmManPfo.NumPed]), [loPartialKey]);

     Action := CaFree;

  end;
end;

procedure TfmManPed.bpsqPfaClick(Sender: TObject);
var
LocPfa : string;
begin
  inherited;

  if CmpPedUfePed.Value = 'EX' then
     LocPfa := 'Importacao ou Exportacao'
  else
     begin

     if CmpPedUfePed.Value <> GUfeEmp then
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

               Params[0].AsString := 'Entrada';
               Params[1].AsString := LocPfa;

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        CmpPedCodPfa.Value := fmPsqPfa.CodPfa;

        pnNomPfa.Caption := fmPsqPfa.NomPfa;

        EdCodPfa.Text := CmpPedCodPfa.Value;

     end;

  finally

     FreeAndNil(fmPsqPfa);

  end;

  if Trim( CmpPedCodPfa.Value ) <> '' then EdPrePed.SetFocus;

end;

procedure TfmManPed.bpsqForClick(Sender: TObject);
begin
  inherited;

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        CmpPedCodFor.Value := fmAuxIni.CodFor;
        CmpPedUfePed.Value := fmAuxIni.SigUfe;
        CmpPedConPlc.Value := fmAuxIni.ConPlc;
        CmpPedSubPlc.Value := fmAuxIni.SubPlc;

        EdCodFor.Text := IntToStr(CmpPedCodFor.Value);

        pnUfePed.Caption := fmAuxIni.SigUfe;
        pnNomFor.Caption := fmAuxIni.NomFor;

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;

  if CmpPedCodFor.Value > 0 then EdNomCon.SetFocus;

end;

procedure TfmManPed.bpsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        CmpPedCodEmp.Value := fmPsqEmp.CodEmp;

        EdCodEmp.Text := IntToStr(CmpPedCodEmp.Value);

        pnNomEmp.Caption := fmPsqEmp.NomEmp;

     end;

  finally   

     FreeAndNil(fmPsqEmp);

  end;

  if CmpPedCodEmp.Value > 0 then EdCodFor.SetFocus;

end;

procedure TfmManPed.EdDpePedExit(Sender: TObject);
begin
  inherited;
  if CmpPed.State <> dsBrowse then begin

     if CmpPedDpePed.Value >= CmpPedDtePed.Value then begin

        if CmpPedDpePed.Value > CmpPedDtePed.Value then
           CmpPedPrePed.Value := StrToInt(FloatToStr(CmpPedDpePed.Value - CmpPedDtePed.Value))
        else
           CmpPedPrePed.Value := 0;

        if CmpPedDpePed.Value > 0 then
           EdPrePed.Text := IntToStr(CmpPedPrePed.Value)
        else
           EdPrePed.Text := '0';

        pnSemana.Caption := fDSemana(CmpPedDpePed.Value);
        
        end
     else
        fmsgErro('Data Prevista para o Faturamento Inferior a Data de Emissao do Pedido.',EdDpePed);
  end;
end;

procedure TfmManPed.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg'+
                  ' From CmpPe3'+
                  ' Where CmpPe3.CodEmp = :CodEmp'+
                  '   and CmpPe3.DtePed = :DtePed'+
                  '   and CmpPe3.NumPed = :NumPed';

          with Params do begin

               Params[0].AsInteger  := CmpPedCodEmp.Value;
               Params[1].AsDateTime := CmpPedDtePed.Value;
               Params[2].AsInteger  := CmpPedNumPed.Value;

          end;

          Open;

     end;

     if quSQL.FieldbyName('QtdReg').AsInteger = 0 then begin

        if CmpPedSitPed.Value = 'Recebido' then fMsg('Operação não Pode ser Realizada. Pedido com Recebimento já Realizado.','E');

        end
     else
        fMsg('Operação não Pode ser Realizada. Pedido com Processo de Entrada em Andamento.','E');

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManPed.EdClpPedExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdNomCon.Focused) and (not EdCodFor.Focused) and (not EdDtePed.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpPed.State <> dsBrowse then begin

           if Trim( CmpPedCodClp.Value ) <> '' then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select NomClp From EstClp Where EstClp.CodClp = '''+ CmpPedCodClp.Value +'''';
                   Open;

              end;

              if Trim( quSql.FieldbyName('NomClp').AsString ) <> '' then
                 pnNomClp.Caption := quSql.FieldbyName('NomClp').AsString
              else
                 begin

                 pnNomClp.Caption := '';

                 fmsgErro('Tipo de Classificação Informada não Encontrada',EdClpPed);

              end;

              end
           else
              begin

              CmpPedCodClp.Clear;

              pnNomClp.Caption := '';

           end;
        end;
     end;
  end;
end;

procedure TfmManPed.EdClpPedKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then begin

           CmpPedCodClp.Value := fmPsqClp.CodClp;

           pnNomClp.Caption := fmPsqClp.NomClp;

           EdCodClp.Text := CmpPedCodClp.Value;

        end;

     finally

        FreeAndNil(fmPsqClp);

     end;

     if Trim( CmpPedCodClp.Value ) <> '' then EdCodTmo.SetFocus;

  end;
end;

procedure TfmManPed.EdCodClpExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if not EdPrePed.Focused then
        saida := True
     else
        saida := False;

     if saida then SaiClassificacao;

     end
  else
     begin

     if (Tecla = 'UP') then begin

        if CmpPedQtiPed.Value > 0 then begin

           pnDesPe2.Visible := True;
           pnObsPe2.Visible := True;

           EdCodClp.Enabled := False;
           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdQtpPe2.Enabled := False;
           EdVluPe2.Enabled := False;
           EdCodUnd.Enabled := False;
           EdIpiPe2.Enabled := False;
           EdIcmPe2.Enabled := False;
           EdDscPe2.Enabled := False;
           EdPacPe2.Enabled := False;
           EdDesPe2.Enabled := False;
           EdObsPe2.Enabled := False;
           EdImpPe2.Enabled := False;
           EdValVen.Enabled := False;

           if CmpPe2.State <> dsBrowse then
              CmpPe2.CancelUpdates
           else
              begin

              if not CmpPe2.Bof then CmpPe2.Prior;

           end;

           grPe2.SetFocus;

           end
        else
           EdCodClp.SetFocus;
     end;
  end;
end;

procedure TfmManPed.EdCodClpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqClp := TfmPsqClp.Create(Self);

        fmPsqClp.ShowModal;

        if Trim( fmPsqClp.CodClp ) <> '' then CmpPe2CodClp.Value := fmPsqClp.CodClp;

     finally   

        FreeAndNil(fmPsqClp);

     end;

     if Trim( CmpPe2CodClp.Value ) <> '' then
        SaiClassificacao
     else
        EdCodClp.SetFocus;

  end;
end;

procedure TfmManPed.bPsqClpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqClp := TfmPsqClp.Create(Self);

     fmPsqClp.ShowModal;

     if Trim( fmPsqClp.CodClp ) <> '' then begin

        CmpPedCodClp.Value := fmPsqClp.CodClp;

        pnNomClp.Caption := fmPsqClp.NomClp;

        EdCodClp.Text := CmpPedCodClp.Value;

     end;

  finally   

     FreeAndNil(fmPsqClp);

  end;

  if Trim( CmpPedCodClp.Value ) <> '' then EdCodTmo.SetFocus;

end;

procedure TfmManPed.PaintBox1Paint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox1.Canvas, PaintBox1.ClientRect, PaintBox1.Color);
end;

procedure TfmManPed.Panel2Exit(Sender: TObject);
var
SeqPed,Status : string;
begin
  inherited;

  Status := 'dsEdit';

  if CmpPed.State = dsInsert then begin

     Status := 'dsInsert';

     if CmpPedCodFor.Value = 0 then fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodFor);

     if Trim( CmpPedCodPfa.Value ) = '' then fmsgErro('Campo de Preenchimento Obrigatorio não Informado',EdCodPfa);

     Randomize;
     SeqPed := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
               copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
               copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
               copy(TimeToStr(Time),1,2)+
               copy(TimeToStr(Time),4,2)+
               copy(TimeToStr(Time),7,2)+
               FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
               FNumZeros(Trim( IntToStr(Random(50000)) ),5);

     CmpPedSeqPed.Value := SeqPed;

     end
  else
     begin

     if Trim(CmpPedSeqPed.Value) = '' then begin

        Randomize;
        SeqPed := copy(FormatDateTime('dd/mm/yyyy',Date),1,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),4,2)+
                  copy(FormatDateTime('dd/mm/yyyy',Date),7,4)+
                  copy(TimeToStr(Time),1,2)+
                  copy(TimeToStr(Time),4,2)+
                  copy(TimeToStr(Time),7,2)+
                  FNumZeros(Trim( IntToStr(GUsu_Id) ),3)+
                  FNumZeros(Trim( IntToStr(Random(50000)) ),5);

     end;

     SeqPed := CmpPedSeqPed.Value;

  end;

  with CmpPed do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          CmpPed.Edit;

          EdCodEmp.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select CodEmp,DtePed,NumPed From CmpPed Where CmpPed.SeqPed = '''+ CmpPedSeqPed.Value +'''';
       Open;

  end;

  CmpPed.Close;
  CmpPed.Params[0].AsInteger  := quSQL.FieldbyName('CodEmp').AsInteger;
  CmpPed.Params[1].AsDateTime := quSQL.FieldbyName('DtePed').AsDateTime;
  CmpPed.Params[2].AsInteger  := quSQL.FieldbyName('NumPed').AsInteger;
  CmpPed.Open;

  CmpPe2.Close;
  CmpPe2.Params[0].AsInteger  := CmpPedCodEmp.Value;
  CmpPe2.Params[1].AsDateTime := CmpPedDtePed.Value;
  CmpPe2.Params[2].AsInteger  := CmpPedNumPed.Value;
  CmpPe2.Open;

  EdDpePed.Text := FormatDateTime('dd/mm/yyyy',CmpPedDpePed.Value);

  pnSemana.Caption := fDSemana(CmpPedDpePed.Value);

  if Status = 'dsInsert' then begin

     with fmManPfo.CmpPed,SQL do begin

          Close;
          Text := ' Select CmpPed.CodEmp,'+
                  '        CmpPed.DtePed,'+
                  '        CmpPed.NumPed,'+
                  '        CmpPed.HrePed,'+
                  '        CmpPed.PrePed,'+
                  '        CmpPed.DpePed,'+
                  '        CmpPed.UfePed,'+
                  '        CmpPed.CodFor,'+
                  '        CmpPed.ConPlc,'+
                  '        CmpPed.SubPlc,'+
                  '        CmpPed.NomCon,'+
                  '        CmpPed.NomVen,'+
                  '        CmpPed.ObsCnd,'+
                  '        CmpPed.QtiPed,'+
                  '        CmpPed.TotPed,'+
                  '        CmpPed.TotAcc,'+
                  '        CmpPed.TotGer,'+
                  '        CmpPed.TotRen,'+
                  '        CmpPed.ObsPed,'+
                  '        CmpPed.EmpRes,'+
                  '        CmpPed.DteRes,'+
                  '        CmpPed.NumRes,'+
                  '        CmpPed.ModPfa,'+
                  '        CmpPed.SitPed,'+
                  '        FinFor.ApeFor,'+
                  '        GerUsu.LogUsu'+
                  ' From CmpPed,FinFor,GerUsu'+
                  ' Where CmpPed.CodFor = FinFor.CodFor'+
                  '   and CmpPed.CodUsu = GerUsu.CodUsu'+
                  '   and CmpPed.CodEmp = :CodEmp'+
                  '   and CmpPed.DtePed = :DtePed'+
                  '   and CmpPed.NumPed = :NumPed';

          with Params do begin

               Params[0].AsInteger  := CmpPedCodEmp.Value;
               Params[1].AsDateTime := CmpPedDtePed.Value;
               Params[2].AsInteger  := CmpPedNumPed.Value;

          end;

          Open;

     end;
  end;

  bPsqEmp.Enabled := False;
  bPsqFor.Enabled := False;
  bPsqClp.Enabled := False;
  bPsqTmo.Enabled := False;
  bPsqPfa.Enabled := False;

  EdCodEmp.Enabled := False;
  EdDtePed.Enabled := False;
  EdCodFor.Enabled := False;
  EdNomCon.Enabled := False;
  EdCodPfa.Enabled := False;
  EdClpPed.Enabled := False;
  EdCodTmo.Enabled := False;
  EdValTmo.Enabled := False;
  EdPrePed.Enabled := False;
  EdDpePed.Enabled := False;

  EdCodEmp.Font.Style := [fsBold];
  EdDtePed.Font.Style := [fsBold];
  EdCodFor.Font.Style := [fsBold];
  EdNomCon.Font.Style := [fsBold];
  EdCodPfa.Font.Style := [fsBold];
  EdClpPed.Font.Style := [fsBold];
  EdCodTmo.Font.Style := [fsBold];
  EdValTmo.Font.Style := [fsBold];
  EdPrePed.Font.Style := [fsBold];
  EdDpePed.Font.Style := [fsBold];

  if CmpPedQtiPed.Value = 0 then
     CmpPe2.Append
  else
     grPe2.SetFocus;

end;

procedure TfmManPed.EdDtePedExit(Sender: TObject);
begin
  inherited;

  CmpPedDpePed.Value := CmpPedDpePed.Value + CmpPedPrePed.Value;

  pnSemana.Caption := fDSemana(CmpPedDpePed.Value);

end;

procedure TfmManPed.Panel1Exit(Sender: TObject);
var
NroPe2 : integer;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin
  
     if psaida = 'Sim' then begin

        if Trim( CmpPe2DesPe2.Value ) <> '' then begin

           if CmpPe2.State <> dsBrowse then begin

              if CmpPe2.State = dsInsert then begin

                 with CmpPe2 do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if CmpPe2.State = dsBrowse then CmpPe2.Edit;

                         if EdCodClp.Enabled then
                            EdCodClp.SetFocus
                         else
                            EdCodGru.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;

                 CmpPe2.Close;
                 CmpPe2.Open;

                 CmpPed.Close;
                 CmpPed.Open;

                 CmpPe2.Append;

                 if EdCodClp.Enabled then
                    EdCodClp.SetFocus
                 else
                    EdCodGru.SetFocus;

                 end
              else
                 begin

                 NroPe2 := CmpPe2NroPe2.Value;

                 with CmpPe2 do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if CmpPe2.State = dsBrowse then CmpPe2.Edit;

                         EdQtpPe2.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;

                 CmpPe2.Close;
                 CmpPe2.Open;

                 CmpPed.Close;
                 CmpPed.Open;

                 CmpPe2.Locate('CodEmp;DtePed;NumPed;NroPe2',VarArrayOf([CmpPe2CodEmp.Value,CmpPe2DtePed.Value,CmpPe2NumPed.Value,NroPe2]),[LoPartialKey]);

                 if CmpPe2NroPe2.Value = CmpPedQtiPed.Value then
                    CmpPe2.Append
                 else
                    begin

                    CmpPe2.Next;

                    pnDesPe2.Visible := True;
                    pnObsPe2.Visible := True;

                    EdCodClp.Enabled := False;
                    EdCodGru.Enabled := False;
                    EdCodSub.Enabled := False;
                    EdCodPro.Enabled := False;
                    EdQtpPe2.Enabled := False;
                    EdVluPe2.Enabled := False;
                    EdCodUnd.Enabled := False;
                    EdIpiPe2.Enabled := False;
                    EdIcmPe2.Enabled := False;
                    EdDscPe2.Enabled := False;
                    EdPacPe2.Enabled := False;
                    EdDesPe2.Enabled := False;
                    EdObsPe2.Enabled := False;
                    EdImpPe2.Enabled := False;
                    EdValVen.Enabled := False;

                    grPe2.SetFocus;

                 end;
              end;

              end
           else
              begin

              pnDesPe2.Visible := True;
              pnObsPe2.Visible := True;

              EdCodClp.Enabled := False;
              EdCodGru.Enabled := False;
              EdCodSub.Enabled := False;
              EdCodPro.Enabled := False;
              EdQtpPe2.Enabled := False;
              EdVluPe2.Enabled := False;
              EdCodUnd.Enabled := False;
              EdIpiPe2.Enabled := False;
              EdIcmPe2.Enabled := False;
              EdDscPe2.Enabled := False;
              EdPacPe2.Enabled := False;
              EdDesPe2.Enabled := False;
              EdObsPe2.Enabled := False;
              EdImpPe2.Enabled := False;
              EdValVen.Enabled := False;

              grPe2.SetFocus;

           end;

           end
        else
           fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdDesPe2);
     end;
  end;
end;

procedure TfmManPed.EdCodTmoKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqTmo := TfmPsqTmo.Create(Self);

        fmPsqTmo.ShowModal;

        if fmPsqTmo.CodTmo > 0 then begin

           CmpPedCodTmo.Value := fmPsqTmo.CodTmo;

           EdCodTmo.Text := IntToStr(CmpPedCodTmo.Value);

           pnNomTmo.Caption := fmPsqTmo.NomTmo;

        end;

     finally

        FreeAndNil(fmPsqTmo);

     end;

     if CmpPedCodTmo.Value > 0 then EdValTmo.SetFocus;

  end;
end;

procedure TfmManPed.bPsqTmoClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqTmo := TfmPsqTmo.Create(Self);

     fmPsqTmo.ShowModal;

     if fmPsqTmo.CodTmo > 0 then begin

        CmpPedCodTmo.Value := fmPsqTmo.CodTmo;

        EdCodTmo.Text := IntToStr(CmpPedCodTmo.Value);

        pnNomTmo.Caption := fmPsqTmo.NomTmo;

     end;

  finally   

     FreeAndNil(fmPsqTmo);

  end;

  if CmpPedCodTmo.Value > 0 then EdValTmo.SetFocus;

end;

procedure TfmManPed.EdCodTmoExit(Sender: TObject);
var
saida  : boolean;
QtdReg : integer;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdClpPed.Focused) and (not EdNomCon.Focused) and
        (not EdCodFor.Focused) and (not EdDtePed.Focused) and (not EdCodEmp.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if CmpPed.State <> dsBrowse then begin

           if CmpPedCodTmo.Value > 0 then begin

              with quSql,SQL do begin

                   Close;
                   Text := ' Select NomTmo From FinTmo Where FinTmo.CodTmo = '''+ IntToStr( CmpPedCodTmo.Value ) +'''';
                   Open;

              end;

              if Trim( quSql.FieldbyName('NomTmo').AsString) <> '' then begin

                 pnNomTmo.Caption := quSql.FieldbyName('NomTmo').AsString;

                 if CmpPedCodTmo.Value > 1 then begin

                    with quSQL,SQL do begin

                         Close;
                         Text := ' Select Count(*) as QtdReg From FinCmo Where FinCmo.CodTmo = '''+ IntToStr(CmpPedCodTmo.Value) +'''';
                         Open;

                         QtdReg := quSQL.FieldbyName('QtdReg').AsInteger;

                    end;

                    if QtdReg > 0 then begin

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select * From FinCmo Where FinCmo.CodTmo = '''+ IntToStr(CmpPedCodTmo.Value) +''' and NroCmo = '''+ IntToStr(QtdReg) +'''';
                            Open;

                            CmpPedValTmo.Value := FieldbyName('Vl1Cmo').AsFloat;

                       end;

                       end
                    else
                       CmpPedValTmo.Value := 1;

                    EdValTmo.Value := CmpPedValTmo.Value;

                    EdValTmo.SetFocus;

                 end;

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

procedure TfmManPed.SaiClassificacao;
begin
  if Trim( CmpPe2CodClp.Value ) <> '' then begin

     if CmpPe2.State <> dsBrowse then begin

        if CmpPe2CodClp.Value <> '9' then begin

           psaida := 'Nao';

           pnDesPe2.Visible := True;
           pnObsPe2.Visible := True;

           EdCodGru.Enabled := True;
           EdCodSub.Enabled := True;
           EdCodPro.Enabled := True;
           EdDscPe2.Enabled := True;
           EdPacPe2.Enabled := True;
           EdValVen.Enabled := True;

           EdCodUnd.Enabled := False;
           EdDesPe2.Enabled := False;
           EdObsPe2.Enabled := False;

           psaida := 'Sim';

           with quSql,SQL do begin

                Close;
                Text := ' Select Count(*) as Reg From EstClp Where EstClp.CodClp = '''+ CmpPe2CodClp.Value +'''';
                Open;

           end;

           if quSql.FieldbyName('Reg').AsInteger = 0 then
              fmsgErro('Classificação Informada não Encontrada.',EdCodClp)
           else
              begin

              if EdQtpPe2.Focused then begin

                 if Trim( CmpPe2CodGru.Value ) = '' then EdCodGru.SetFocus;
                 if Trim( CmpPe2CodSub.Value ) = '' then EdCodSub.SetFocus;
                 if Trim( CmpPe2CodPro.Value ) = '' then EdCodPro.SetFocus;

                 end
              else
                 EdCodGru.SetFocus;

           end;

           end
        else
           begin

           psaida := 'Nao';

           pnDesPe2.Visible := False;
           pnObsPe2.Visible := False;

           EdCodGru.Enabled := False;
           EdCodSub.Enabled := False;
           EdCodPro.Enabled := False;
           EdDscPe2.Enabled := False;
           EdPacPe2.Enabled := False;
           EdValVen.Enabled := False;

           psaida := 'Sim';

           CmpPe2CodGru.Value := '999';
           CmpPe2CodSub.Value := '9999';
           CmpPe2CodPro.Value := '99999';

           EdCodUnd.Enabled := True;
           EdDesPe2.Enabled := True;
           EdObsPe2.Enabled := True;

           EdQtpPe2.SetFocus;

        end;

        end
     else
        begin

        if EdCodClp.Enabled then begin

           if Trim( CmpPe2CodClp.Value ) = '' then fmsgErro('Classificação Informada não Encontrada.',EdCodClp);

        end;
     end;

     end
  else
     fmsgErro('Classificação Informada não Encontrada',EdCodClp);
end;

procedure TfmManPed.SaiGrupo;
begin
  if Trim( CmpPe2CodGru.Value ) <> '' then begin

     if CmpPe2.State <> dsBrowse then begin

        CmpPe2CodGru.Value := FNumZeros(CmpPe2CodGru.Value,3);

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg From EstGru Where EstGru.CodGru = '''+ CmpPe2CodGru.Value +'''';
             Open;

        end;

        if quSql.FieldbyName('Reg').AsInteger = 0 then
           fmsgErro('Grupo Informado não Encontrado',EdCodGru)
        else
           begin

           if EdQtpPe2.Focused then begin

              if Trim( CmpPe2CodSub.Value ) = '' then EdCodSub.SetFocus;
              if Trim( CmpPe2CodPro.Value ) = '' then EdCodPro.SetFocus;

              end
           else
              EdCodSub.SetFocus;

        end;

        end
     else
        begin

        if EdCodGru.Enabled then begin

           if Trim( CmpPe2CodGru.Value ) = '' then fmsgErro('Grupo Informado não Encontrado',EdCodGru);

        end;
     end;

     end
  else
     fmsgErro('Grupo Informado não Encontrado',EdCodGru);
end;

procedure TfmManPed.SaiSubGrupo;
begin
  if Trim( CmpPe2CodSub.Value ) <> '' then begin

     if CmpPe2.State <> dsBrowse then begin

        CmpPe2CodSub.Value := FNumZeros(CmpPe2CodSub.Value,4);

        with quSql,SQL do begin

             Close;
             Text := ' Select Count(*) as Reg From EstSub'+
                     ' Where EstSub.CodGru = '''+ CmpPe2CodGru.Value +''''+
                     '   and EstSub.CodSub = '''+ CmpPe2CodSub.Value +'''';
             Open;

        end;

        if quSql.FieldbyName('Reg').AsInteger = 0 then
           fmsgErro('Grupo e Sub-Grupo não Encontrado',EdCodGru)
        else
           begin

           if EdQtpPe2.Focused then begin

              if Trim( CmpPe2CodPro.Value ) = '' then EdCodPro.SetFocus;

              end
           else
              EdCodPro.SetFocus;

        end;

        end
     else
        begin

        if EdCodSub.Enabled then begin

           if Trim( CmpPe2CodSub.Value ) = '' then fmsgErro('Sub-Grupo Informado não Encontrado',EdCodSub);

        end;
     end;

     end
  else
     fmsgErro('Sub-Grupo Informado não Encontrado',EdCodSub);
end;

procedure TfmManPed.SaiProduto;
var
CodEmp : integer;
VcrIte, VpfIte, VpfOut : real;
begin
  if Trim( CmpPe2CodPro.Value ) <> '' then begin

     if CmpPe2.State <> dsBrowse then begin

        CmpPe2FlgDup.Value := 'Nao';
        CmpPe2CodPro.Value := FNumStrZero(CmpPe2CodPro.Value);

        with quSQL,SQL do begin

             Close;
             Text := ' Select Count(*) as QtdReg From CmpPe2'+
                     ' Where CmpPe2.CodEmp = '''+ IntToStr(CmpPe2CodEmp.Value)   +''''+
                     '   and CmpPe2.DtePed = '''+ fDateToSQL(CmpPe2DtePed.Value) +''''+
                     '   and CmpPe2.NumPed = '''+ IntToStr(CmpPe2NumPed.Value)   +''''+
                     '   and CmpPe2.CodClp = '''+ CmpPe2CodClp.Value             +''''+
                     '   and CmpPe2.CodGru = '''+ CmpPe2CodGru.Value             +''''+
                     '   and CmpPe2.CodSub = '''+ CmpPe2CodSub.Value             +''''+
                     '   and CmpPe2.CodPro = '''+ CmpPe2CodPro.Value             +''''+
                     '   and CmpPe2.CodTam = '''+ CmpPe2CodTam.Value             +''''+
                     '   and CmpPe2.CodCor = '''+ CmpPe2CodCor.Value             +'''';
             Open;

        end;

        if quSql.FieldbyName('QtdReg').AsInteger > 0 then begin

           if fMsg('Item já Informado para o Pedido. Confirma Duplicidade ?','O') then CmpPe2FlgDup.Value := 'Sim';

           end
        else
           CmpPe2FlgDup.Value := 'Sim';

        if CmpPe2FlgDup.Value = 'Sim' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select EstPro.CodPro,'+
                        '        EstPro.IcmEnt,'+
                        '        EstPro.IcmTen,'+
                        '        EstPro.EntIcm,'+
                        '        EstPro.IpiEnt,'+
                        '        EstPro.IpiTen,'+
                        '        EstPro.EntIpi,'+
                        '        EstPro.EntImp,'+
                        '        EstPro.CodUne,'+
                        '        EstPro.CodSt1,'+
                        '        EstPro.CodSt2,'+
                        '        EstPro.LiqEmb,'+
                        '        EstPro.BrtEmb,'+
                        '        EstPro.CubPro,'+
                        '        EstPro.CxaPro,'+
                        '        EstPro.DscPro From EstPro '+
                        ' Where EstPro.CodClp = '''+ CmpPe2CodClp.Value +''''+
                        '   and EstPro.CodGru = '''+ CmpPe2CodGru.Value +''''+
                        '   and EstPro.CodSub = '''+ CmpPe2CodSub.Value +''''+
                        '   and EstPro.CodPro = '''+ CmpPe2CodPro.Value +'''';
                Open;

           end;

           if Trim( quSQL.FieldbyName('CodPro').AsString ) <> '' then begin

              CmpPe2RegIpi.Value := quSQL.FieldbyName('IpiEnt').AsString;
              CmpPe2TipIpi.Value := quSQL.FieldbyName('IpiTen').AsString;
              CmpPe2RegIcm.Value := quSQL.FieldbyName('IcmEnt').AsString;
              CmpPe2TipIcm.Value := quSQL.FieldbyName('IcmTen').AsString;

              if Trim(CmpPedCodIpi.Value) <> '' then begin

                 CmpPe2RegIpi.Value := CmpPedCodIpi.Value;
                 CmpPe2TipIpi.Value := CmpPedTipIpi.Value;
                 CmpPe2TrbIpi.Value := CmpPedTrbIpi.Value;
                 CmpPe2RedIpi.Value := CmpPedRedIpi.Value;
                 CmpPe2BscIpi.Value := CmpPedBscIpi.Value;

              end;

              if Trim(CmpPedCodIcm.Value) <> '' then begin

                 CmpPe2RegIcm.Value := CmpPedCodIcm.Value;
                 CmpPe2TipIcm.Value := CmpPedTipIcm.Value;
                 CmpPe2TrbIcm.Value := CmpPedTrbIcm.Value;
                 CmpPe2RedIcm.Value := CmpPedRedIcm.Value;
                 CmpPe2BscIcm.Value := CmpPedBscIcm.Value;
                 CmpPe2IncRev.Value := CmpPedIncRev.Value;
                 CmpPe2IncFin.Value := CmpPedIncFin.Value;                                  
              
              end;

              if CmpPedModPfa.Value <> 'Importacao' then begin

                 CmpPe2IcmPe2.Value := quSQL.FieldbyName('EntIcm').AsFloat;
                 CmpPe2ImpPe2.Value := quSQL.FieldbyName('EntImp').AsFloat;
                 CmpPe2IpiPe2.Value := quSQL.FieldbyName('EntIpi').AsFloat;

                 end
              else
                 begin

                 CmpPe2IcmPe2.Value := 0;
                 CmpPe2ImpPe2.Value := quSQL.FieldbyName('EntImp').AsFloat;
                 CmpPe2IpiPe2.Value := quSQL.FieldbyName('EntIpi').AsFloat;

              end;

              CmpPe2LiqPe2.Value := quSQL.FieldbyName('LiqEmb').AsFloat;
              CmpPe2BrtPe2.Value := quSQL.FieldbyName('BrtEmb').AsFloat;
              CmpPe2CubPe2.Value := quSQL.FieldbyName('CubPro').AsFloat;
              CmpPe2CxaPe2.Value := quSQL.FieldbyName('CxaPro').AsFloat;
              CmpPe2CodUnd.Value := quSQL.FieldbyName('CodUne').AsString;
              CmpPe2CodSt1.Value := quSQL.FieldbyName('CodSt1').AsString;
              CmpPe2CodSt2.Value := quSQL.FieldbyName('CodSt2').AsString;
              CmpPe2DesPe2.Value := quSQL.FieldbyName('DscPro').AsString;

              CodEmp := CmpPedCodEmp.Value;

              if CmpPedLanEst.Value = 'Sim' then begin

                 if CmpPedCodFil.Value > 0 then CodEmp := CmpPedCodFil.Value;

              end;

              if Trim(CmpPedCodIpi.Value) = '' then begin

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select TrbIpi From EstIpi'+
                              ' Where EstIpi.CodIpi = '+ QuotedStr(CmpPe2RegIpi.Value)+
                              '   and EstIpi.TipIpi = '+ QuotedStr(CmpPe2TipIpi.Value);
                      Open;        

                      CmpPe2TrbIpi.Value := FieldbyName('TrbIpi').AsString;

                 end;
              end;   

              with quSql,SQL do begin

                   Close;
                   Text := ' Select CmpPfo.CodPro,'+
                           '        CmpPfo.DscPfo,'+
                           '        CmpPfo.ValPfo From CmpPfo '+
                           ' Where CmpPfo.CodFor = :CodFor'+
                           '   and CmpPfo.CodClp = :CodClp'+
                           '   and CmpPfo.CodGru = :CodGru'+
                           '   and CmpPfo.CodSub = :CodSub'+
                           '   and CmpPfo.CodPro = :CodPro';

                   with Params do begin

                        Params[0].AsInteger := CmpPedCodFor.Value;
                        Params[1].AsString  := CmpPe2CodClp.Value;
                        Params[2].AsString  := CmpPe2CodGru.Value;
                        Params[3].AsString  := CmpPe2CodSub.Value;
                        Params[4].AsString  := CmpPe2CodPro.Value;

                   end;

                   Open;

              end;

              if quSql.FieldbyName('CodPro').AsString = CmpPe2CodPro.Value then begin

                 CmpPe2VluPe2.Value := quSql.FieldbyName('ValPfo').AsFloat;
                 CmpPe2VlqPe2.Value := quSql.FieldbyName('ValPfo').AsFloat;
                 CmpPe2DscPe2.Value := quSQL.FieldbyName('DscPfo').AsFloat;

                 if CmpPedCodTmo.Value = 1 then begin

                    if CmpPedModFor.Value > 1 then begin

                       CmpPe2VluPe2.Value := fRound(quSql.FieldbyName('ValPfo').AsFloat * CmpPedValTmo.Value,6);
                       CmpPe2VlqPe2.Value := fRound(quSql.FieldbyName('ValPfo').AsFloat * CmpPedValTmo.Value,6);

                    end;
                 end;   
                 
                 end
              else
                 begin

                 with quSql,SQL do begin

                      Close;
                      Text := ' Select EstIte.CodPro,'+
                              '        EstIte.CstIte,'+                      
                              '        EstIte.VpfIte,'+
                              '        EstIte.VcrIte,'+
                              '        EstIte.VpfOut From EstIte '+
                              ' Where EstIte.CodEmp = :CodEmp'+
                              '   and EstIte.CodClp = :CodClp'+
                              '   and EstIte.CodGru = :CodGru'+
                              '   and EstIte.CodSub = :CodSub'+
                              '   and EstIte.CodPro = :CodPro';

                      with Params do begin

                           Params[0].AsInteger := CodEmp;
                           Params[1].AsString  := CmpPe2CodClp.Value;
                           Params[2].AsString  := CmpPe2CodGru.Value;
                           Params[3].AsString  := CmpPe2CodSub.Value;
                           Params[4].AsString  := CmpPe2CodPro.Value;

                      end;

                      Open;

                      VcrIte := FieldbyName('VcrIte').Value;
                      VpfIte := FieldbyName('VpfIte').Value;
                      VpfOut := FieldbyName('VpfOut').Value;

                 end;

                 if quSql.FieldbyName('CodPro').AsString = CmpPe2CodPro.Value then begin

                    if CmpPedCodTmo.Value = 1 then begin

                       CmpPe2VluPe2.Value := VpfIte;
                       CmpPe2VlqPe2.Value := VpfIte;

                       end
                    else
                       begin

                       CmpPe2VluPe2.Value := VpfOut;
                       CmpPe2VlqPe2.Value := VpfOut;

                    end;

                    if Trim( CmpParFlgTab.Value ) <> '' then begin

                       if CmpParFlgTab.Value = 'Custo Referencial' then CmpPe2ValVen.Value := VcrIte;

                    end;

                    end
                 else
                    fmsgErro('Item Informado não Encontrado no Estoque da Empresa.',EdCodPro);
              end;
              
              AntVluPe2 := CmpPe2VluPe2.Value;

              if CmpPe2QtpPe2.Value > 0 then begin

                 CmpPe2VlqPe2.Value := CmpPe2VluPe2.Value;

                 if CmpPe2DscPe2.Value > 0 then begin

                    CmpPe2VdsPe2.Value := fRound((CmpPe2DscPe2.Value * CmpPe2VlqPe2.Value)/100,6);

                    CmpPe2VlqPe2.Value := fRound(CmpPe2VlqPe2.Value - CmpPe2VdsPe2.Value,6);

                 end;

                 if CmpPe2PacPe2.Value > 0 then begin

                    CmpPe2VacPe2.Value := fRound((CmpPe2PacPe2.Value * CmpPe2VlqPe2.Value)/100,6);

                    CmpPe2VlqPe2.Value := fRound(CmpPe2VlqPe2.Value + CmpPe2VacPe2.Value,6);

                 end;

                 CmpPe2TotPe2.Value := fRound(CmpPe2VlqPe2.Value * CmpPe2QtpPe2.Value,2);

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select Count(*) as QtdReg from EstQte '+
                           ' Where EstQte.CodEmp = :CodEmp'+
                           '   and EstQte.CodClp = :CodClp'+
                           '   and EstQte.CodGru = :CodGru'+
                           '   and EstQte.CodSub = :CodSub'+
                           '   and EstQte.CodPro = :CodPro'+
                           '   and EstQte.CodTam = :CodTam'+
                           '   and EstQte.CodCor = :CodCor';

                   with Params do begin

                        Params[0].AsInteger := CodEmp;
                        Params[1].AsString  := CmpPe2CodClp.Value;
                        Params[2].AsString  := CmpPe2CodGru.Value;
                        Params[3].AsString  := CmpPe2CodSub.Value;
                        Params[4].AsString  := CmpPe2CodPro.Value;
                        Params[5].AsString  := CmpPe2CodTam.Value;
                        Params[6].AsString  := CmpPe2CodCor.Value;

                   end;

                   Open;

              end;

              if quSql.FieldbyName('QtdReg').AsInteger = 0 then
                 fmsgErro('Item Informado não Encontrado no Estoque da Empresa',EdCodPro)
              else
                 EdQtpPe2.SetFocus;

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

           if Trim( CmpPe2CodPro.Value ) = '' then fmsgErro('Item Informado não Encontrado',EdCodPro);

        end;
     end;

     end
  else
     fmsgErro('Item Informado não Encontrado',EdCodPro);
end;

procedure TfmManPed.EdCodUndExit(Sender: TObject);
var
saida : boolean;
begin
  inherited;
  if (Tecla <> 'ESC') and (Tecla <> 'UP') then begin

     if (not EdCodClp.Focused) and (not EdCodGru.Focused) and (not EdCodSub.Focused) and
        (not EdCodPro.Focused) and (not EdQtpPe2.Focused) and (not EdVluPe2.Focused) then
        saida := True
     else
        saida := False;

     if saida then begin

        if Trim(CmpPe2CodUnd.Value) <> '' then begin

           with quSQL,SQL do begin

                Close;
                Text := ' Select NomUnd From EstUnd Where CodUnd = '''+ CmpPe2CodUnd.Value +'''';
                Open;

           end;

           if Trim( quSQL.FieldbyName('NomUnd').AsString ) = '' then fmsgErro('Unidade Informada não Encontrada.',EdCodUnd);

           end
        else
           fmsgErro('Unidade Informada não Encontrada.',EdCodUnd);

     end;
  end;
end;

procedure TfmManPed.EdCodUndKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqUnd := TfmPsqUnd.Create(Self);

        fmPsqUnd.ShowModal;

        if Trim( fmPsqUnd.CodUnd ) <> '' then begin

           CmpPe2CodUnd.Value := fmPsqUnd.CodUnd;

           EdCodUnd.Text := CmpPe2CodUnd.Value;

        end;

     finally   

        FreeAndNil(fmPsqUnd);

     end;

     if Trim( CmpPe2CodUnd.Value ) <> '' then
        EdIcmPe2.SetFocus
     else
        EdCodUnd.SetFocus;

  end;
end;

procedure TfmManPed.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPed := nil;
end;

procedure TfmManPed.EdCodEmpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if CmpPedFlgOco.Value = ' ' then
     LbText.Caption := 'F1-Iniciais F4-Estoque'
  else
     LbText.Caption := 'F1-Iniciais F4-Estoque F11-Ocorrências';

end;

procedure TfmManPed.EdDtePedEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if CmpPedFlgOco.Value = ' ' then
     LbText.Caption := 'F4-Estoque'
  else
     LbText.Caption := 'F4-Estoque F11-Ocorrências';

end;

procedure TfmManPed.EdCodForEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if CmpPedFlgOco.Value = ' ' then
     LbText.Caption := 'F1-Iniciais F2-Inteligente F4-Estoque'
  else
     LbText.Caption := 'F1-Iniciais F2-Inteligente F11-Ocorrências';

end;

procedure TfmManPed.EdCodClpEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if CmpPedFlgOco.Value = ' ' then
     LbText.Caption := 'F1-Ini F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F8-PN'
  else
     LbText.Caption := 'F1-Ini F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F8-PN F11-Ocor';

end;

procedure TfmManPed.EdCodGruEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'S';

  if CmpPedFlgOco.Value = ' ' then
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F8-PN'
  else
     LbText.Caption := 'F1-Ini F2-Int F3-Descr F4-Estoque F5-Ref F6-Int/Descr F7-Int/Ref F8-PN F11-Ocor';

end;

procedure TfmManPed.EdQtpPe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if CmpPedFlgOco.Value = ' ' then
     LbText.Caption := 'F4-Estoque'
  else
     LbText.Caption := 'F4-Estoque F11-Ocorrências';

end;

procedure TfmManPed.EdCodUndEnter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if CmpPedFlgOco.Value = ' ' then
     LbText.Caption := 'F1-Iniciais F4-Estoque'
  else
     LbText.Caption := 'F1-Iniciais F4-Estoque F11-Ocorrências';

end;

procedure TfmManPed.grPe2Enter(Sender: TObject);
begin
  inherited;

  sEntr := 'N';

  if CmpPedFlgOco.Value = ' ' then
     LbText.Caption := 'D-Descrição F1-Ini F2-Int F3-Descr F4-Est F5-Ref F6-Int/Descr F7-Int/Ref F8-PN'
  else
     LbText.Caption := 'D-Descrição F1-Ini F2-Int F3-Descr F4-Est F5-Ref F6-Int/Descr F7-Int/Ref F8-PN F11-Ocor';

end;

end.
