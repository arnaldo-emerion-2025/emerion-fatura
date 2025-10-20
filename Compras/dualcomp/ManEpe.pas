unit ManEpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, dxDBELib, ppDB, ppDBPipe, ppBands, ppClass, ppStrtch,
  ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  dxDBColorCurrencyEdit, dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit;

type
  TfmManEpe = class(TfmPadrao)
    CmpEn2: TwwQuery;
    DsEn2: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label25: TLabel;
    Label19: TLabel;
    Label26: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    EdPsqCodPfa: TdxColorEdit;
    EdPsqCodFor: TdxColorEdit;
    EdPsqCodEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    BbPsqFor: TSpeedButton;
    BbPsqPfa: TSpeedButton;
    EdPsqNomPfa: TdxColorEdit;
    EdPsqNomFor: TdxColorEdit;
    EdPsqNomEmp: TdxColorEdit;
    bPesquisa: TBitBtn;
    rgOrdem: TRadioGroup;
    Label10: TLabel;
    Bevel1: TBevel;
    Label2: TLabel;
    Bevel2: TBevel;
    Label3: TLabel;
    Bevel3: TBevel;
    rgStatus: TRadioGroup;
    quSql: TwwQuery;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    pnNomFor: TPanel;
    Label7: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    CmpEntCODEMP: TIntegerField;
    CmpEntNUMENT: TIntegerField;
    CmpEntCODFOR: TIntegerField;
    CmpEntCONPLC: TIntegerField;
    CmpEntSUBPLC: TIntegerField;
    CmpEntDTEENT: TDateTimeField;
    CmpEntHREENT: TStringField;
    CmpEntTIPPFA: TStringField;
    CmpEntCODCFO: TStringField;
    CmpEntCODTIP: TIntegerField;
    CmpEntNUMDOC: TIntegerField;
    CmpEntDTEDOC: TDateTimeField;
    CmpEntDTECRE: TDateTimeField;
    CmpEntNUMPED: TIntegerField;
    CmpEntFLGCTB: TStringField;
    CmpEntUFEENT: TStringField;
    CmpEntCODCLP: TStringField;
    CmpEntOBSENT: TStringField;
    CmpEntQTIENT: TIntegerField;
    CmpEntSEQITE: TIntegerField;
    CmpEntQTPENT: TIntegerField;
    CmpEntLINENT: TIntegerField;
    CmpEntICMENT: TFloatField;
    CmpEntIPIENT: TFloatField;
    CmpEntDSCENT: TFloatField;
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
    CmpEntICMFRT: TFloatField;
    CmpEntBAICMF: TFloatField;
    CmpEntTOICMF: TFloatField;
    CmpEntICMSEG: TFloatField;
    CmpEntBAICMS: TFloatField;
    CmpEntTOICMS: TFloatField;
    CmpEntICMDES: TFloatField;
    CmpEntBAICMD: TFloatField;
    CmpEntTOICMD: TFloatField;
    CmpEntIPIFRT: TFloatField;
    CmpEntBAIPIF: TFloatField;
    CmpEntTOIPIF: TFloatField;
    CmpEntIPISEG: TFloatField;
    CmpEntBAIPIS: TFloatField;
    CmpEntTOIPIS: TFloatField;
    CmpEntIPIDES: TFloatField;
    CmpEntBAIPID: TFloatField;
    CmpEntTOIPID: TFloatField;
    CmpEntTOTGER: TFloatField;
    CmpEntTOTLIQ: TFloatField;
    CmpEntTOTBRT: TFloatField;
    CmpEntBASICC: TFloatField;
    CmpEntTOTICC: TFloatField;
    CmpEntBASSUC: TFloatField;
    CmpEntTOTSUC: TFloatField;
    CmpEntTOTENC: TFloatField;
    CmpEntTOTIPC: TFloatField;
    CmpEntTOTGEC: TFloatField;
    CmpEntCODUSU: TIntegerField;
    CmpEntSITENT: TStringField;
    CmpEntNOMFOR: TStringField;
    CmpEn2DESEN2: TStringField;
    CmpEn2QTPEN2: TFloatField;
    CmpEn2VLQEN2: TFloatField;
    CmpEn2IPIEN2: TFloatField;
    CmpEn2ICMEN2: TFloatField;
    CmpEn2TOTIPI: TFloatField;
    CmpEn2TOTEN2: TFloatField;
    Label1: TLabel;
    EdPsqNumPed: TdxColorEdit;
    CmpEnt: TwwQuery;
    EdPsqTotEnt2: TdxColorCurrencyEdit;
    EdPsqTotEnt1: TdxColorCurrencyEdit;
    EdPsqDteEnt2: TdxColorDateEdit;
    EdPsqDteEnt1: TdxColorDateEdit;
    EdPsqDteDoc1: TdxColorDateEdit;
    EdPsqDteDoc2: TdxColorDateEdit;
    grEnt: ThGrid;
    grEn2: ThGrid;
    EdPsqNumEnt: TdxColorEdit;
    pnSitEnt: TPanel;
    CmpEntCODFIL: TIntegerField;
    CmpEntCODTMO: TIntegerField;
    CmpEntVALTMO: TFloatField;
    CmpEntEMPPED: TIntegerField;
    CmpEntDTEPED: TDateTimeField;
    CmpEntQTLENT: TIntegerField;
    CmpEntMEDDSC: TFloatField;
    CmpEntTOTDSC: TFloatField;
    CmpEntPACENT: TFloatField;
    CmpEntMEDACR: TFloatField;
    CmpEntTOTACR: TFloatField;
    CmpEntBSICMF: TFloatField;
    CmpEntBSICMS: TFloatField;
    CmpEntBSICMD: TFloatField;
    CmpEntBSIPIF: TFloatField;
    CmpEntBSIPIS: TFloatField;
    CmpEntBSIPID: TFloatField;
    CmpEntINFLIQ: TFloatField;
    CmpEntINFBRT: TFloatField;
    CmpEntLANENT: TFloatField;
    CmpEntSLDENT: TFloatField;
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
    CmpEntTXFIPI: TStringField;
    CmpEntTXFICM: TStringField;
    CmpEntSEQENT: TStringField;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    bEditar: TSpeedButton;
    bIncluir: TSpeedButton;
    bImprimir: TSpeedButton;
    bExcluir: TSpeedButton;
    UpEnt: TUpdateSQL;
    Label11: TLabel;
    CmpEntDTEOPE: TDateTimeField;
    CmpEntTOTDSR: TFloatField;
    CmpEntFLGATU: TStringField;
    CmpEntFLGOCO: TStringField;
    Label23: TLabel;
    Label15: TLabel;
    EdPsqNumDoc: TdxColorEdit;
    CmpEntEMPOEN: TIntegerField;
    CmpEntDTEOEN: TDateTimeField;
    CmpEntNUMOEN: TIntegerField;
    CmpEntTOTDCC: TFloatField;
    CmpEntTOTACC: TFloatField;
    ppReport: TppReport;
    DsReport: TppDBPipeline;
    CmpEntBAICMA: TFloatField;
    CmpEntTOICMA: TFloatField;
    CmpEntBAIPIA: TFloatField;
    CmpEntTOIPIA: TFloatField;
    CmpEntTOTOEN: TFloatField;
    CmpEntMESENT: TStringField;
    CmpEntANOENT: TIntegerField;
    CmpEntMODPFA: TStringField;
    CmpEntAPEFOR: TStringField;
    CmpEntTENFOR: TStringField;
    CmpEntENDFOR: TStringField;
    CmpEntNUMFOR: TStringField;
    CmpEntBAIFOR: TStringField;
    CmpEntCIDFOR: TStringField;
    CmpEntSIGUFE: TStringField;
    CmpEntPRTFOR: TStringField;
    CmpEntFONFOR: TStringField;
    CmpEntPRFFOR: TStringField;
    CmpEntFAXFOR: TStringField;
    ppHeaderBand3: TppHeaderBand;
    ppApeEmp: TppLabel;
    ppNomEmp: TppLabel;
    ppEndEmp: TppLabel;
    ppRefEmp: TppLabel;
    ppTitulo: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel1: TppLabel;
    ppLabel10: TppLabel;
    ppLine1: TppLine;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppImagem: TppImage;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLabel63: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLine2: TppLine;
    ppLabel36: TppLabel;
    ppLine8: TppLine;
    ppLabel38: TppLabel;
    ppLine9: TppLine;
    ppLabel39: TppLabel;
    ppLabel15: TppLabel;
    ppLine6: TppLine;
    ppLabel6: TppLabel;
    ppLabel2: TppLabel;
    ppLabel8: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel25: TppLabel;
    ppLabel4: TppLabel;
    ppLabel7: TppLabel;
    p1FonFor: TppLabel;
    p1BaiFor: TppLabel;
    p1EndFor: TppLabel;
    p1CodFor: TppLabel;
    ppLabel9: TppLabel;
    p1NomFor: TppLabel;
    ppLabel26: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppLabel27: TppLabel;
    p1CidFor: TppLabel;
    p1FaxFor: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    p1SigUfe: TppLabel;
    dbReport: TppDetailBand;
    ppQtpEn2: TppDBText;
    ppCodUnd: TppDBText;
    ppVlqEn2: TppDBText;
    ppMemo1: TppMemo;
    ppIcmPe2: TppDBText;
    ppIpiPe2: TppDBText;
    ppPacPe2: TppDBText;
    ppTotGe2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel34: TppLabel;
    ppLabel35: TppLabel;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppTotEnc: TppLabel;
    ppTotIcc: TppLabel;
    ppTotIpc: TppLabel;
    ppTotAcc: TppLabel;
    ppTotSeg: TppLabel;
    ppTotFrt: TppLabel;
    ppTotDes: TppLabel;
    ppTotDcc: TppLabel;
    ppTotGec: TppLabel;
    ppLabel3: TppLabel;
    ppTexto2: TppMemo;
    ppTexto3: TppMemo;
    ppTexto1: TppMemo;
    CmpEntFLGENT: TStringField;
    CmpEntQTDOEN: TIntegerField;
    CmpEntSEQOEN: TIntegerField;
    CmpEntDSCPFA: TStringField;
    ppLabel5: TppLabel;
    ppLabel11: TppLabel;
    p1CodPfa: TppLabel;
    ppLabel40: TppLabel;
    p1NomPfa: TppLabel;
    CmpEntEMPCNO: TIntegerField;
    CmpEntDTECNO: TDateTimeField;
    CmpEntNUMCNO: TIntegerField;
    CmpEntPERACR: TFloatField;
    CmpEntTOTACP: TFloatField;
    CmpEntBASIMP: TFloatField;
    CmpEntTOTIMP: TFloatField;
    CmpEntTOTFOR: TFloatField;
    CmpEntVCOFOR: TFloatField;
    CmpEntVCOEMP: TFloatField;
    CmpEntVDOFSC: TFloatField;
    CmpEntDESFOR: TFloatField;
    ppLabel37: TppLabel;
    ppLabel48: TppLabel;
    ppVdoFsc: TppLabel;
    ppLabel50: TppLabel;
    ppLabel51: TppLabel;
    ppVcoFor: TppLabel;
    ppLabel53: TppLabel;
    ppLabel54: TppLabel;
    ppVcoEmp: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppTotfor: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppDesFor: TppLabel;
    CmpEntFLGENV: TStringField;
    CmpEntFLGSIN: TStringField;
    pnImpostos: TPanel;
    Label12: TLabel;
    EdIcmEn2: TdxDBColorCurrencyEdit;
    UpEn2: TUpdateSQL;
    CmpEn2CODEMP: TIntegerField;
    CmpEn2DTEENT: TDateTimeField;
    CmpEn2NUMENT: TIntegerField;
    CmpEn2SEQEN2: TIntegerField;
    CmpEn2CODCLP: TStringField;
    CmpEn2CODGRU: TStringField;
    CmpEn2CODSUB: TStringField;
    CmpEn2CODPRO: TStringField;
    CmpEn2FLASEQ: TStringField;
    CmpEn2CODITE: TStringField;
    CmpEn2OBSEN2: TStringField;
    CmpEn2CLSIPI: TStringField;
    CmpEn2TOTGE2: TFloatField;
    CmpEntSERNOT: TStringField;
    CmpEntCODPFA: TStringField;
    CmpEntLANCST: TStringField;
    CmpEntHRCENT: TStringField;
    CmpEntDTCENT: TDateTimeField;
    CmpEntUSCENT: TIntegerField;
    CmpEntOBCENT: TStringField;
    CmpEntTRBPIS: TStringField;
    CmpEntTRBCOF: TStringField;
    CmpEntPERPIS: TFloatField;
    CmpEntPERCOF: TFloatField;
    CmpEntTOTPIS: TFloatField;
    CmpEntTOTCOF: TFloatField;
    ppLabel49: TppLabel;
    ppLabel52: TppLabel;
    ppTotPis: TppLabel;
    ppLabel58: TppLabel;
    ppLabel61: TppLabel;
    ppTotCof: TppLabel;
    CmpEntBASPIS: TFloatField;
    CmpEntBASCOF: TFloatField;
    CmpEntTOTPIC: TFloatField;
    CmpEntTOTCOC: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqForClick(Sender: TObject);
    procedure BbPsqPfaClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqNumEntExit(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure DsEntDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure bEditarClick(Sender: TObject);
    procedure bIncluirClick(Sender: TObject);
    procedure bExcluirClick(Sender: TObject);
    procedure EdPsqNumEntKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqNumDocExit(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure ppHeaderBand3BeforePrint(Sender: TObject);
    procedure dbReportBeforePrint(Sender: TObject);
    procedure ppGroupFooterBand1BeforePrint(Sender: TObject);
    procedure ppSummaryBand1BeforePrint(Sender: TObject);
    procedure ppReportBeforePrint(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pnImpostosExit(Sender: TObject);
    procedure CmpEn2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure grEn2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}
    DteEnt : TDateTime;
    CodEmp,NumEnt,SeqEn2 : integer;
    sBase,sFiltro,sOrdem,pSaida : string;
  end;

var
  sEnt     : string;
  fmManEpe : TfmManEpe;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqPfa, ManPri,
     AuxPsq, AuxIni, ManEnt, PsqOce, Fpreview, ManSin, ManPrc, PsqCen;

{$R *.DFM}

procedure TfmManEpe.FormCreate(Sender: TObject);
begin
  inherited;

  sBase := ' Select CmpEnt.*,'+
           '        FinFor.ApeFor,'+
           '        FinFor.TEnFor,'+
           '        FinFor.EndFor,'+
           '        FinFor.NumFor,'+
           '        FinFor.BaiFor,'+
           '        FinFor.CidFor,'+
           '        FinFor.SigUfe,'+
           '        FinFor.PrtFor,'+
           '        FinFor.FonFor,'+
           '        FinFor.PrfFor,'+
           '        FinFor.FaxFor,'+
           '        FinFor.NomFor,'+
           '        EstPfa.DscPfa'+
           ' From CmpEnt LEFT JOIN FinFor ON (CmpEnt.CodFor = FinFor.CodFor)'+
           '             LEFT JOIN EstPfa ON (CmpEnt.CodPfa = EstPfa.CodPfa)'+
           '                             AND (CmpEnt.TipPfa = EstPfa.TipPfa)';

  pSaida := 'Nao';
           
end;

procedure TfmManEpe.bPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

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
  
  sFiltro := '';

  case rgOrdem.Itemindex of
       0: sOrdem := ' Order by CmpEnt.NumPed';
       1: sOrdem := ' Order by CmpEnt.NumEnt';
       2: sOrdem := ' Order by CmpEnt.CodFor,CmpEnt.NumEnt';
       3: sOrdem := ' Order by CmpEnt.DteOpe,CmpEnt.NumEnt';
       4: sOrdem := ' Order by CmpEnt.DteDoc,CmpEnt.NumEnt';
  end;

  case rgStatus.Itemindex of
       0: sFiltro := ' Where CmpEnt.SitEnt = '+ QuotedStr('Nao Concluida');
       1: sFiltro := ' Where CmpEnt.SitEnt = '+ QuotedStr('Concluida');
       2: sFiltro := ' Where CmpEnt.SitEnt = '+ QuotedStr('Cancelada');
  end;

  if Trim( EdPsqNumEnt.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.NumEnt = '+ QuotedStr(EdPsqNumEnt.Text)
     else
        sFiltro := ' Where CmpEnt.NumEnt = '+ QuotedStr(EdPsqNumEnt.Text);

  end;

  if Trim( EdPsqNumPed.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and Exists(Select * From CmpPe3 Where CmpPe3.EmpEnt = CmpEnt.CodEmp and CmpPe3.DteEnt = CmpEnt.DteEnt and CmpPe3.NumEnt = CmpEnt.NumEnt and CmpPe3.NumPed = '+ QuotedStr(EdPsqNumPed.Text) +' )'
     else
        sFiltro := ' Where Exists(Select * From CmpPe3 Where CmpPe3.EmpEnt = CmpEnt.CodEmp and CmpPe3.DteEnt = CmpEnt.DteEnt and CmpPe3.NumEnt = CmpEnt.NumEnt and CmpPe3.NumPed = '+ QuotedStr(EdPsqNumPed.Text) +' )'

  end;      

  if Trim( EdPsqNumDoc.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.NumDoc = '+ QuotedStr(EdPsqNumDoc.Text)
     else
        sFiltro := ' Where CmpEnt.NumDoc = '+ QuotedStr(EdPsqNumDoc.Text);

  end;

  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text)
     else
        sFiltro := ' Where CmpEnt.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text)

  end;

  if Trim( EdPsqCodFor.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.CodFor = '+ QuotedStr(EdPsqCodFor.Text)
     else
        sFiltro := ' Where CmpEnt.CodFor = '+ QuotedStr(EdPsqCodFor.Text);

  end;

  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.TipPfa = '+ QuotedStr('Entrada') +' and CmpEnt.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text)
     else
        sFiltro := ' Where CmpEnt.TipPfa = '+ QuotedStr('Entrada') +' and CmpEnt.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);

  end;
  
  if Trim(fLimpaStr(EdPsqDteEnt1.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.DteOpe >= '+ QuotedStr(fDateToSQL(EdPsqDteEnt1.Date))
     else
        sFiltro := ' Where CmpEnt.DteOpe >= '+ QuotedStr(fDateToSQL(EdPsqDteEnt1.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteEnt2.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.DteOpe <= '+ QuotedStr(fDateToSQL(EdPsqDteEnt2.Date))
     else
        sFiltro := ' Where CmpEnt.DteOpe <= '+ QuotedStr(fDateToSQL(EdPsqDteEnt2.Date));

  end;

  if Trim(fLimpaStr(EdPsqDteDoc1.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.DteDoc >= '+ QuotedStr(fDateToSQL(EdPsqDteDoc1.Date))
     else
        sFiltro := ' Where CmpEnt.DteDoc >= '+ QuotedStr(fDateToSQL(EdPsqDteDoc1.Date))

  end;

  if Trim(fLimpaStr(EdPsqDteDoc2.Text)) <> '' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.DteDoc <= '+ QuotedStr(fDateToSQL(EdPsqDteDoc2.Date))
     else
        sFiltro := ' Where CmpEnt.DteDoc <= '+ QuotedStr(fDateToSQL(EdPsqDteDoc2.Date))

  end;

  if EdPsqTotEnt1.Value > 0 then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.TotGec >= '+ QuotedStr(fConvertValor(FloatToStr(EdPsqTotEnt1.Value)))
     else
        sFiltro := ' Where CmpEnt.TotGec >= '+ QuotedStr(fConvertValor(FloatToStr(EdPsqTotEnt1.Value)));

  end;

  if EdPsqTotEnt2.Value > 0 then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and CmpEnt.TotGec <= '+ QuotedStr(fConvertValor(FloatToStr(EdPsqTotEnt2.Value)))
     else
        sFiltro := ' Where CmpEnt.TotGec <= '+ QuotedStr(fConvertValor(FloatToStr(EdPsqTotEnt2.Value)))

  end;

  if GFlgAce = 'Sim' then begin

     if pos('Where',sFiltro) > 0 then
        sFiltro := sFiltro + ' and not CmpEnt.CodTip = '+ QuotedStr('3')
     else
        sFiltro := ' Where not CmpEnt.CodTip = '+ QuotedStr('3');

  end;

  with CmpEnt,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grEnt.SetFocus;

end;

procedure TfmManEpe.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

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
          Text := ' Select NomEmp From GerEmp Where GerEmp.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);

          if GFlgAce = 'Sim' then begin

             if GEmpLog > 0 then
                Text := Text + ' and GerEmp.CodEmp = '+ QuotedStr(IntToStr(GEmpLog))
             else
                Text := Text + ' and GerEmp.CodFil > 0';

          end;

          Open;

          if Trim( FieldByName('NomEmp').AsString ) <> '' then
             EdPsqNomEmp.Text := FieldByName('NomEmp').AsString
          else
             begin

             EdPsqNomEmp.Text := '';

             fmsgErro('Empresa Informada não Encontrada.',EdPsqCodEmp);

          end;
     end;

     end
  else
     EdPsqNomEmp.Text := '';
end;

procedure TfmManEpe.EdPsqCodForExit(Sender: TObject);
begin
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomFor From FinFor Where CodFor = '+ QuotedStr(EdPsqCodFor.Text);
          Open;

          EdPsqNomFor.Text := quSql.FieldByName('NomFor').AsString;

     end;

     end
  else
     EdPsqNomFor.Text := '';
end;

procedure TfmManEpe.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

     fmPsqEmp := TfmPsqEmp.Create(Self);
     fmPsqEmp.ShowModal;

     if fmPsqEmp.CodEmp > 0 then begin

        EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

     end;

  finally

     FreeAndNil(fmPsqEmp);

  end;
end;

procedure TfmManEpe.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmPsqEmp := TfmPsqEmp.Create(Self);
        fmPsqEmp.ShowModal;

        if fmPsqEmp.CodEmp > 0 then begin

           EdPsqNomEmp.Text := fmPsqEmp.NomEmp;
           EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

        end;

     finally

        FreeAndNil(fmPsqEmp);

     end;
  end;
end;

procedure TfmManEpe.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxIni.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxPsq.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManEpe.BbPsqForClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdPsqNomFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManEpe.EdPsqNumEntExit(Sender: TObject);
begin
  if Trim( EdPsqNumEnt.Text ) <> '' then begin

     EdPsqNumPed.Clear;
     EdPsqNumDoc.Clear;
     EdPsqCodEmp.Clear;
     EdPsqNomEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqNomFor.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteEnt1.Clear;
     EdPsqDteEnt2.Clear;
     EdPsqDteDoc1.Clear;
     EdPsqDteDoc2.Clear;

     EdPsqTotEnt1.Value := 0;
     EdPsqTotEnt2.Value := 0;

  end;
end;

procedure TfmManEpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if pnImpostos.Visible then begin

        pSaida := 'Sim';

        if CmpEn2.State <> dsBrowse then CmpEn2.CancelUpdates;

        pnImpostos.Visible := False;

        pSaida := 'Nao';

        end
     else
        close;

  end;
  
  if key = 114 then bEditar.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

  if key = 115 then bIncluir.OnClick(Sender);

  if key = 117 then bExcluir.OnClick(Sender);

  if key = 121 then begin {F10 - Observações Quanto a Rejeicao do Pedido}

     if CmpEntSitEnt.Value = 'Cancelada' then begin

        try

           fmPsqCen := TfmPsqCen.Create(Self);

           fmPsqCen.CmpEnt.Close;
           fmPsqCen.CmpEnt.Params[0].AsInteger  := CmpEntCodEmp.Value;
           fmPsqCen.CmpEnt.Params[1].AsDateTime := CmpEntDteEnt.Value;
           fmPsqCen.CmpEnt.Params[2].AsInteger  := CmpEntNumEnt.Value;
           fmPsqCen.CmpEnt.Open;

           fmPsqCen.ShowModal;

        finally

           FreeAndNil(fmPsqCen);

        end;
     end;   
  end;

  if key = 122 then begin // F11-Ocorrencias do Pedido //

     if CmpEntFlgOco.Value = '*' then begin

        try

           fmPsqOce := TfmPsqOce.Create(Self);

           fmPsqOce.CmpVal.Close;
           fmPsqOce.CmpVal.Params[0].AsInteger  := CmpEntCodEmp.Value;
           fmPsqOce.CmpVal.Params[1].AsDateTime := CmpEntDteEnt.Value;
           fmPsqOce.CmpVal.Params[2].AsInteger  := CmpEntNumEnt.Value;
           fmPsqOce.CmpVal.Open;

           fmPsqOce.CmpQtd.Close;
           fmPsqOce.CmpQtd.Params[0].AsInteger  := CmpEntCodEmp.Value;
           fmPsqOce.CmpQtd.Params[1].AsDateTime := CmpEntDteEnt.Value;
           fmPsqOce.CmpQtd.Params[2].AsInteger  := CmpEntNumEnt.Value;
           fmPsqOce.CmpQtd.Open;

           fmPsqOce.ShowModal;

        finally

           FreeAndNil(fmPsqOce);

        end;
     end;
  end;
end;

procedure TfmManEpe.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqDteEnt1.Date := Date;
  EdPsqDteEnt2.Date := Date;

  if GFlgAce = 'Nao' then begin

     CmpEnt.Close;
     CmpEnt.Params[0].AsDateTime := Date;
     CmpEnt.Open;

     end
  else
     begin

     sOrdem := ' Order by CmpEnt.CodEmp,CmpEnt.DteOpe,CmpEnt.NumEnt';

     sFiltro := ' Where CmpEnt.CodTip <> '+ QuotedStr('3');

     with CmpEnt,SQL do begin

          Close;
          Text := sBase + sFiltro + sOrdem;
          Open;

     end;
  end;

  EdPsqNumEnt.SetFocus;
  
end;

procedure TfmManEpe.BbPsqPfaClick(Sender: TObject);
begin
  inherited;

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
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString := 'Entrada';

          end;

          Open;

     end;

     fmPsqPfa.ShowModal;

     if Trim( fmPsqPfa.CodPfa ) <> '' then begin

        EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
        EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

     end;

  finally   

     FreeAndNil(fmPsqPfa);

  end;
end;

procedure TfmManEpe.DsEntDataChange(Sender: TObject; Field: TField);
var
  sText : string;
begin
  inherited;

  Label23.Caption := ' ';

  if CmpEntCodEmp.Value > 0 then begin

     if CmpEntSitEnt.Value = 'Concluida' then begin

        if CmpEntAtuEst.Value = 'Sim' then Label23.Caption := 'CTRL+C-Custos';

     end;
  end;

  if CmpEntCodFor.Value > 0 then
     pnNomFor.Caption := ' Fornecedor : ' + FNumZeros(IntToStr(CmpEntCodFor.Value),7) + ' - ' + CmpEntNomFor.Value
  else
     pnNomFor.Caption := ' Fornecedor : ';

  if CmpEntSitEnt.Value = 'Cancelada' then sText := 'F10 -';

  if Trim( sText ) <> '' then
     pnSitEnt.Caption := sText + ' ' + CmpEntSitEnt.Value
  else
     pnSitEnt.Caption := CmpEntSitEnt.Value;

end;

procedure TfmManEpe.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

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
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString := 'Entrada';

             end;

             Open;

        end;

        fmPsqPfa.ShowModal;

        if Trim( fmPsqPfa.CodPfa ) <> '' then begin

           EdPsqCodPfa.Text := fmPsqPfa.CodPfa;
           EdPsqNomPfa.Text := fmPsqPfa.NomPfa;

        end;

     finally   

        FreeAndNil(fmPsqPfa);

     end;
  end;
end;

procedure TfmManEpe.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEpe.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select EstPfa.DscPfa'+
                  ' From EstPfa'+
                  ' Where EstPfa.TipPfa = '+ QuotedStr('Entrada') +
                  '   and EstPfa.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text) ;
          Open;

          EdPsqNomPfa.Text := FieldByName('DscPfa').AsString;

     end;

     end
  else
     EdPsqNomPfa.Text := '';
end;

procedure TfmManEpe.bEditarClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpEntNumEnt.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManEnt then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe uma Entrada em Andamento.','E');

           fmManEnt.WindowState := wsNormal;
           fmManEnt.BringToFront;

           end
        else
           begin

           CodEmp := CmpEntCodEmp.Value;
           DteEnt := CmpEntDteEnt.Value;
           NumEnt := CmpEntNumEnt.Value;

           sFiltro := ' Where CmpEnt.CodEmp = '+ QuotedStr(IntToStr(CmpEntCodEmp.Value))   +
                      '   and CmpEnt.DteEnt = '+ QuotedStr(fDateToSQL(CmpEntDteEnt.Value)) +
                      '   and CmpEnt.NumEnt = '+ QuotedStr(IntToStr(CmpEntNumEnt.Value))   ;

           with CmpEnt,SQL do begin

                Close;
                Text := sBase + sFiltro + sOrdem;
                Open;

           end;

           fmManEnt := TfmManEnt.Create(Self);
           fmManEnt.Show;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManEpe.bIncluirClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManEnt then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe uma Entrada em Andamento.','E');

        fmManEnt.WindowState := wsNormal;
        fmManEnt.BringToFront;

        end
     else
        begin

        CodEmp := 0;
        DteEnt := Date;
        NumEnt := 0;

        sFiltro := ' Where CmpEnt.CodEmp = :CodEmp'+
                   '   and CmpEnt.DteEnt = :DteEnt'+
                   '   and CmpEnt.NumEnt = :NumEnt';

        with CmpEnt,SQL do begin

             Close;
             Text := sBase + sFiltro + sOrdem;

             with Params do begin

                  Params[0].AsInteger  := CodEmp;
                  Params[1].AsDateTime := DteEnt;
                  Params[2].AsInteger  := NumEnt;

             end;

             Open;

        end;

        fmManEnt := TfmManEnt.Create(Self);
        fmManEnt.Show;

     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManEpe.bExcluirClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpEntCodEmp.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManEnt then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existe uma Entrada em Andamento.','E');

           fmManEnt.WindowState := wsNormal;
           fmManEnt.BringToFront;

           end
        else
           begin

           if Trim( CmpEntSitEnt.Value ) = 'Nao Concluida' then begin

              if fMsg('Confirma a Exclusão da Entrada ?','S') then begin

                 CmpEnt.Delete;

                 with CmpEnt do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         if CmpEnt.State <> dsBrowse then CmpEnt.CancelUpdates;

                         grEnt.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;

                 CmpEnt.Close;
                 CmpEnt.Open;

              end;

              end
           else
              begin

              if (CmpEntSitEnt.Value = 'Concluida') then fMsg('Operação não Pode ser Realizada. Entrada com Lançamento já Realizado.','E')

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManEpe.EdPsqNumEntKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManEpe.EdPsqNumDocExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNumDoc.Text ) <> '' then begin

     EdPsqNumEnt.Clear;
     EdPsqNumPed.Clear;
     EdPsqCodEmp.Clear;
     EdPsqNomEmp.Clear;
     EdPsqCodFor.Clear;
     EdPsqNomFor.Clear;
     EdPsqCodPfa.Clear;
     EdPsqNomPfa.Clear;

     EdPsqDteEnt1.Clear;
     EdPsqDteEnt2.Clear;
     EdPsqDteDoc1.Clear;
     EdPsqDteDoc2.Clear;

     EdPsqTotEnt1.Value := 0;
     EdPsqTotEnt2.Value := 0;

  end;
end;

procedure TfmManEpe.bImprimirClick(Sender: TObject);
var
i     : Integer;
Found : integer;
begin
  inherited;
  if CmpEntCodEmp.Value > 0 then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManEnt then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existe uma Entrada em Andamento.','E');

        fmManEnt.WindowState := wsNormal;
        fmManEnt.BringToFront;

        end
     else
        begin
  
        if fMsg('Confirma Impressão do Romaneio de Entrada ?','S') then begin

           try

              ppReport.DeviceType := 'Screen';
              fmPreview := TfmPreview.Create(fmManEpe);
              fmPreview.ppViewer.Report := ppReport;
              ppReport.PrintToDevices;
              fmPreview.ShowModal;

              if Assigned(ppReport.AfterPrint) then ppReport.AfterPrint(Sender);

           finally

              FreeAndNil(fmPreview);

           end;
        end;
     end;
  end;
end;

procedure TfmManEpe.ppHeaderBand3BeforePrint(Sender: TObject);
begin
  inherited;

  if FileExists('C:\Emerion\Print.bmp') then
     ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     ppImagem.Picture.Bitmap.FreeImage;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;

  ppTitulo.Caption := 'Entrada de Compras No. '+ fNumZeros(IntToStr(CmpEn2NumEnt.Value),7)+ ' - ' + FormatDateTime('dd/mm/yyyy',CmpEn2DteEnt.Value);

  p1CodFor.Caption := IntToStr( CmpEntCodFor.Value );
  p1NomFor.Caption := CmpEntNomFor.Value;
  p1BaiFor.Caption := CmpEntBaiFor.Value;
  p1CidFor.Caption := CmpEntCidFor.Value;
  p1SigUfe.Caption := CmpEntSigUfe.Value;
  p1CodPfa.Caption := CmpEntCodPfa.Value;
  p1NomPfa.Caption := CmpEntDscPfa.Value;

  if Trim( CmpEntTenFor.Value ) <> '' then
     p1EndFor.Caption := Trim( CmpEntTenFor.Value ) + ' ' + Trim( CmpEntEndFor.Value )
  else
     p1EndFor.Caption := Trim( CmpEntEndFor.Value );

  if Trim( CmpEntNumFor.Value ) <> '' then
     p1EndFor.Caption := p1EndFor.Caption + ', '  + Trim( CmpEntNumFor.Value ) + ' - ' + Trim ( CmpEntBaiFor.Value )
  else
     p1EndFor.Caption := p1EndFor.Caption + ' - ' + Trim( CmpEntBaiFor.Value );

  if Trim( CmpEntPrtFor.Value ) <> '' then
     p1FonFor.Caption := '( '+ CmpEntPrtFor.Value  +' ) '+ CmpEntFonFor.Value
  else
     p1FonFor.Caption := CmpEntFonFor.Value;

  if Trim( CmpEntPrfFor.Value ) <> '' then
     p1FaxFor.Caption := '( '+ CmpEntPrfFor.Value  +' ) '+ CmpEntFaxFor.Value
  else
     p1FaxFor.Caption := CmpEntFaxFor.Value;

end;

procedure TfmManEpe.dbReportBeforePrint(Sender: TObject);
begin
  inherited;

  ppMemo1.Lines.Clear;
  ppMemo1.Lines.Add(CmpEn2DesEn2.Value);

  ppMemo1.Lines.Add(CmpEn2CodClp.Value+ '-' +CmpEn2CodGru.Value+ '.' +CmpEn2CodSub.Value+ '.' +CmpEn2CodPro.Value);

  if Trim( CmpEn2ObsEn2.Value ) <> '' then ppMemo1.Lines.Add(CmpEn2ObsEn2.Value);
  if Trim( CmpEn2ClsIpi.Value ) <> '' then ppMemo1.Lines.Add(CmpEn2ClsIpi.Value);

end;

procedure TfmManEpe.ppGroupFooterBand1BeforePrint(Sender: TObject);
begin
  inherited;

  ppTotEnc.Caption := FormatFloat('###,###,##0.00',CmpEntTotEnc.Value);
  ppTotIcc.Caption := FormatFloat('###,###,##0.00',CmpEntTotIcc.Value);
  ppTotIpc.Caption := FormatFloat('###,###,##0.00',CmpEntTotIpc.Value);
  ppTotAcc.Caption := FormatFloat('###,###,##0.00',CmpEntTotAcc.Value);
  ppTotSeg.Caption := FormatFloat('###,###,##0.00',CmpEntTotSeg.Value);
  ppTotFrt.Caption := FormatFloat('###,###,##0.00',CmpEntTotFrt.Value);
  ppTotDes.Caption := FormatFloat('###,###,##0.00',CmpEntTotDes.Value);
  ppTotDcc.Caption := FormatFloat('###,###,##0.00',CmpEntTotDcc.Value);
  ppTotPis.Caption := FormatFloat('###,###,##0.00',CmpEntTotPic.Value);
  ppTotCof.Caption := FormatFloat('###,###,##0.00',CmpEntTotCoc.Value);
  ppTotGec.Caption := FormatFloat('###,###,##0.00',CmpEntTotGec.Value);

  if CmpEntModPfa.Value = 'Importacao' then begin
     
     ppVdoFsc.Visible := True;
     ppVcoFor.Visible := True;
     ppVcoEmp.Visible := True;
     ppTotFor.Visible := True;
     ppDesFor.Visible := True;
     
     ppLabel37.Visible := True;
     ppLabel48.Visible := True;
     ppLabel50.Visible := True;
     ppLabel51.Visible := True;
     ppLabel53.Visible := True;
     ppLabel54.Visible := True;
     ppLabel56.Visible := True;
     ppLabel57.Visible := True;
     ppLabel59.Visible := True;
     ppLabel60.Visible := True;

     ppVdoFsc.Caption := FormatFloat('###,###,##0.0000',CmpEntVdoFsc.Value);
     ppVcoFor.Caption := FormatFloat('###,###,##0.0000',CmpEntVcoFor.Value);
     ppVcoEmp.Caption := FormatFloat('###,###,##0.0000',CmpEntVcoEmp.Value);

     ppTotFor.Caption := FormatFloat('###,###,##0.00',CmpEntTotFor.Value);
     ppTotDes.Caption := FormatFloat('###,###,##0.00',CmpEntTotDes.Value);

     end
  else
     begin

     ppLabel37.Visible := False;
     ppLabel48.Visible := False;
     ppLabel50.Visible := False;
     ppLabel51.Visible := False;
     ppLabel53.Visible := False;
     ppLabel54.Visible := False;
     ppLabel56.Visible := False;
     ppLabel57.Visible := False;
     ppLabel59.Visible := False;
     ppLabel60.Visible := False;

     ppVdoFsc.Visible := False;
     ppVcoFor.Visible := False;
     ppVcoEmp.Visible := False;
     ppTotFor.Visible := False;
     ppDesFor.Visible := False;

  end;
end;

procedure TfmManEpe.ppSummaryBand1BeforePrint(Sender: TObject);
begin
  inherited;
  if Trim( sEnt ) = '' then begin

     sEnt := 'S';

     ppTexto1.Lines.Clear;
     ppTexto2.Lines.Clear;
     ppTexto3.Lines.Clear;

     with quSQL,SQL do begin

          Close;
          Text := ' Select * From CmpEn3'+
                  ' Where CmpEn3.CodEmp = :CodEmp'+
                  '   and CmpEn3.DteEnt = :DteEnt'+
                  '   and CmpEn3.NumEnt = :NumEnt';

          with Params do begin

               Params[0].AsInteger  := CmpEntCodEmp.Value;
               Params[1].AsDateTime := CmpEntDteEnt.Value;
               Params[2].AsInteger  := CmpEntNumEnt.Value;

          end;

          Open;
          First;

     end;

     while not quSQL.EOF do begin

           ppTexto1.Lines.Add(FloatToStr(quSQL.FieldbyName('NumDoc').AsFloat));
           ppTexto2.Lines.Add(FormatDateTime('dd/mm/yyy',quSQL.FieldbyName('DtvEn3').AsDateTime));
           ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',quSQL.FieldbyName('VlpEn3').AsFloat));

           quSQL.Next;

     end;
  end;   
end;

procedure TfmManEpe.ppReportBeforePrint(Sender: TObject);
begin
  inherited;
  sEnt := '';
end;

procedure TfmManEpe.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #3 then begin {Vencimentos Ctrl+C}

     if CmpEntCodEmp.Value > 0 then begin

        if CmpEntSitEnt.Value = 'Concluida' then begin

           if CmpEntAtuEst.Value = 'Sim' then begin

              try

                 fmManPrc := TfmManPrc.Create(Self);

                 fmManPrc.CmpAen.Close;
                 fmManPrc.CmpAen.Params[0].AsInteger  := CmpEntCodEmp.Value;
                 fmManPrc.CmpAen.Params[1].AsDateTime := CmpEntDteEnt.Value;
                 fmManPrc.CmpAen.Params[2].AsInteger  := CmpEntNumEnt.Value;
                 fmManPrc.CmpAen.Open;

                 fmManPrc.ShowModal;

              finally

                 FreeAndNil(fmManPrc);

              end;
           end;   
        end;
     end;
  end;

  if key = #6 then begin {Vencimentos Ctrl+F}

     if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) then begin

        if CmpEntCodEmp.Value > 0 then begin

           if not pnImpostos.Visible then begin

              if CmpEntSitEnt.Value = 'Concluida' then begin

                 try

                    fmManSin := TfmManSin.Create(Self);

                    fmManSin.ShowModal;

                 finally

                    FreeAndNil(fmManSin);

                 end;
              end;
           end;   
        end;
     end;   
  end;
end;

procedure TfmManEpe.FormClose(Sender: TObject; var Action: TCloseAction);
var
i     : Integer;
Found : integer;
begin
  inherited;

  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManEnt then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem Entradas em Andamento. Por Favor Feche o Formulario.',Nil)
  else
     Action := CaFree;

end;

procedure TfmManEpe.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManEpe := nil;
end;

procedure TfmManEpe.pnImpostosExit(Sender: TObject);
begin
  inherited;
  if PSaida = 'Nao' then begin
  
     if fMsg('Confirma Alteração da Aliquota ?','S') then begin

        CodEmp := CmpEn2CodEmp.Value;
        DteEnt := CmpEn2DteEnt.Value;
        NumEnt := CmpEn2NumEnt.Value;
        SeqEn2 := CmpEn2SeqEn2.Value;

        CmpEn2FlaSeq.Value := ' ';

        with CmpEn2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpEn2.State = dsBrowse then CmpEn2.Edit;

                EdIcmEn2.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        CmpEnt.Close;
        CmpEnt.Open;

        CmpEnt.Locate('CodEmp;DteEnt;NumEnt',VarArrayOf([CodEmp,DteEnt,NumEnt]), [loPartialKey]);

        CmpEn2.Close;
        CmpEn2.Open;

        CmpEn2.Locate('CodEmp;DteEnt;NumEnt;SeqEn2',VarArrayOf([CodEmp,DteEnt,NumEnt,SeqEn2]), [loPartialKey]);

        CmpEn2.Next;

        pnImpostos.Visible := False;

        grEn2.SetFocus;

        end
     else
        EdIcmEn2.SetFocus;
  end;      
end;

procedure TfmManEpe.CmpEn2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if CmpEn2CodEmp.Value > 0 then Text := CmpEn2CodGru.Value+'.'+CmpEn2CodSub.Value+'.'+CmpEn2CodPro.Value;
end;

procedure TfmManEpe.grEn2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 32 then begin

     if CmpEn2CodEmp.Value > 0 then begin

        if not pnImpostos.Visible then begin

           pnImpostos.Visible := True;

           CmpEn2.Edit;

           EdIcmEn2.SetFocus;

        end;
     end;
  end;
end;

end.

