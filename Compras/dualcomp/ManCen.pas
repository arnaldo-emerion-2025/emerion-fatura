unit ManCen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, ppDB, ppDBPipe, ppBands, ppClass,
  ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv,
  ppProd, ppReport, dxColorCurrencyEdit, dxColorEdit, dxColorDateEdit;

type
  TfmManCen = class(TfmPadrao)
    CmpEn2: TwwQuery;
    DsEn2: TwwDataSource;
    PaintBox: TPaintBox;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
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
    CmpEntCODPFA: TStringField;
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
    CmpEn2CODEMP: TIntegerField;
    CmpEn2NUMENT: TIntegerField;
    CmpEn2SEQEN2: TIntegerField;
    CmpEn2CODEIT: TIntegerField;
    CmpEn2CODCLP: TStringField;
    CmpEn2CODGRU: TStringField;
    CmpEn2CODSUB: TStringField;
    CmpEn2CODPRO: TStringField;
    CmpEn2DESEN2: TStringField;
    CmpEn2OBSEN2: TStringField;
    CmpEn2REGIPI: TStringField;
    CmpEn2TIPIPI: TStringField;
    CmpEn2REGICM: TStringField;
    CmpEn2TIPICM: TStringField;
    CmpEn2CODST1: TStringField;
    CmpEn2CODST2: TStringField;
    CmpEn2CODUND: TStringField;
    CmpEn2LIQEN2: TFloatField;
    CmpEn2BRTEN2: TFloatField;
    CmpEn2LINEN2: TIntegerField;
    CmpEn2QTPEN2: TFloatField;
    CmpEn2VLUEN2: TFloatField;
    CmpEn2VLQEN2: TFloatField;
    CmpEn2DSCEN2: TFloatField;
    CmpEn2VDSEN2: TFloatField;
    CmpEn2PACEN2: TFloatField;
    CmpEn2VACEN2: TFloatField;
    CmpEn2IPIEN2: TFloatField;
    CmpEn2CLSIPI: TStringField;
    CmpEn2ICMEN2: TFloatField;
    CmpEn2BASIPI: TFloatField;
    CmpEn2TOTIPI: TFloatField;
    CmpEn2BASICM: TFloatField;
    CmpEn2TOTICM: TFloatField;
    CmpEn2TOTEN2: TFloatField;
    CmpEn2TOTGE2: TFloatField;
    CmpEn2TOTLIQ: TFloatField;
    CmpEn2TOTBRT: TFloatField;
    CmpEn2NROEN2: TIntegerField;
    CmpEn2FLASEQ: TStringField;
    Label1: TLabel;
    EdPsqNumPed: TdxColorEdit;
    CmpEnt: TwwQuery;
    EdPsqDteEnt2: TdxColorDateEdit;
    EdPsqDteEnt1: TdxColorDateEdit;
    EdPsqDteDoc1: TdxColorDateEdit;
    EdPsqDteDoc2: TdxColorDateEdit;
    grEnt: ThGrid;
    grEn2: ThGrid;
    EdPsqNumEnt: TdxColorEdit;
    pnSitEnt: TPanel;
    CmpEn2CODTAM: TStringField;
    CmpEn2CODCOR: TStringField;
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
    CmpEn2DTEENT: TDateTimeField;
    CmpEn2BASSUB: TFloatField;
    CmpEn2TOTSUB: TFloatField;
    CmpEn2TOTDSC: TFloatField;
    CmpEn2TOTACR: TFloatField;
    CmpEn2CODSTR: TStringField;
    CmpEn2TIPSTR: TStringField;
    CmpEn2TRBIPI: TStringField;
    CmpEn2REDIPI: TFloatField;
    CmpEn2BSCIPI: TFloatField;
    CmpEn2TRBICM: TStringField;
    CmpEn2REDICM: TFloatField;
    CmpEn2BSCICM: TFloatField;
    CmpEn2INCREV: TFloatField;
    CmpEn2INCFIN: TFloatField;
    CmpEn2EMPPED: TIntegerField;
    CmpEn2DTEPED: TDateTimeField;
    CmpEn2NUMPED: TIntegerField;
    CmpEn2SEQPE2: TIntegerField;
    CmpEn2CODITE: TStringField;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    UpEnt: TUpdateSQL;
    CmpEntDTEOPE: TDateTimeField;
    CmpEntTOTDSR: TFloatField;
    CmpEntFLGATU: TStringField;
    CmpEntFLGOCO: TStringField;
    Label15: TLabel;
    EdPsqNumDoc: TdxColorEdit;
    CmpEntEMPOEN: TIntegerField;
    CmpEntDTEOEN: TDateTimeField;
    CmpEntNUMOEN: TIntegerField;
    CmpEntTOTDCC: TFloatField;
    CmpEntTOTACC: TFloatField;
    CmpEntBAICMA: TFloatField;
    CmpEntTOICMA: TFloatField;
    CmpEntBAIPIA: TFloatField;
    CmpEntTOIPIA: TFloatField;
    CmpEntTOTOEN: TFloatField;
    CmpEntMESENT: TStringField;
    CmpEntANOENT: TIntegerField;
    CmpEntMODPFA: TStringField;
    CmpEntFLGENT: TStringField;
    CmpEntQTDOEN: TIntegerField;
    CmpEntSEQOEN: TIntegerField;
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
    CmpEntDSCPFA: TStringField;
    CmpEn2FLGDUP: TStringField;
    CmpEn2SEQPE3: TIntegerField;
    CmpEn2QTDPED: TFloatField;
    CmpEn2VLQPED: TFloatField;
    CmpEn2FLGQTD: TStringField;
    CmpEn2FLGVAL: TStringField;
    CmpEn2MESENT: TStringField;
    CmpEn2ANOENT: TIntegerField;
    CmpEn2VPFEN2: TFloatField;
    CmpEn2VPFOUT: TFloatField;
    CmpEntPERACR: TFloatField;
    CmpEntTOTACP: TFloatField;
    CmpEntEMPCNO: TIntegerField;
    CmpEntDTECNO: TDateTimeField;
    CmpEntNUMCNO: TIntegerField;
    bCancelar: TBitBtn;
    CmpEntHRCENT: TStringField;
    CmpEntDTCENT: TDateTimeField;
    CmpEntUSCENT: TIntegerField;
    CmpEntOBCENT: TStringField;
    CmpEntBASIMP: TFloatField;
    CmpEntTOTIMP: TFloatField;
    CmpEntTOTFOR: TFloatField;
    CmpEntDESFOR: TFloatField;
    CmpEntVCOFOR: TFloatField;
    CmpEntVCOEMP: TFloatField;
    CmpEntVDOFSC: TFloatField;
    CmpEntFLGENV: TStringField;
    CmpEntFLGSIN: TStringField;
    CmpEntLANCST: TStringField;
    CmpEntSERNOT: TStringField;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BbPsqForClick(Sender: TObject);
    procedure BbPsqPfaClick(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqNumEntExit(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdPsqCodPfaExit(Sender: TObject);
    procedure EdPsqNumEntKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqNumDocExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsEntDataChange(Sender: TObject; Field: TField);
    procedure bCancelarClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase,sFiltro,sOrdem : string;
  end;

var
  fmManCen : TfmManCen;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqPfa, ManPri,
     AuxPsq, AuxIni, ManObc;

{$R *.DFM}

procedure TfmManCen.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDteEnt1.Date := Date;
  EdPsqDteEnt2.Date := Date;

  CmpEnt.Close;
  CmpEnt.Params[0].AsDateTime := Date;
  CmpEnt.Open;

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

end;

procedure TfmManCen.bPesquisaClick(Sender: TObject);
begin

  ActiveControl := nil;

  case rgOrdem.Itemindex of
       0: sOrdem := ' Order by CmpEnt.NumPed';
       1: sOrdem := ' Order by CmpEnt.NumEnt';
       2: sOrdem := ' Order by CmpEnt.CodFor,CmpEnt.NumEnt';
       3: sOrdem := ' Order by CmpEnt.DteOpe,CmpEnt.NumEnt';
       4: sOrdem := ' Order by CmpEnt.DteDoc,CmpEnt.NumEnt';
  end;

  sFiltro := ' Where CmpEnt.SitEnt = '+ QuotedStr('Concluida');

  if Trim( EdPsqNumEnt.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.NumEnt = '+ QuotedStr(EdPsqNumEnt.Text);
  if Trim( EdPsqNumPed.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.NumPed = '+ QuotedStr(EdPsqNumPed.Text);
  if Trim( EdPsqNumDoc.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.NumDoc = '+ QuotedStr(EdPsqNumDoc.Text);
  if Trim( EdPsqCodEmp.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodEmp = '+ QuotedStr(EdPsqCodEmp.Text);
  if Trim( EdPsqCodFor.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodFor = '+ QuotedStr(EdPsqCodFor.Text);
  if Trim( EdPsqCodPfa.Text ) <> '' then sFiltro := sFiltro + ' and CmpEnt.CodPfa = '+ QuotedStr(EdPsqCodPfa.Text);

  if Trim(fLimpaStr(EdPsqDteEnt1.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteOpe >= '+ QuotedStr(fDateToSQL(EdPsqDteEnt1.Date));
  if Trim(fLimpaStr(EdPsqDteEnt2.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteOpe <= '+ QuotedStr(fDateToSQL(EdPsqDteEnt2.Date));
  if Trim(fLimpaStr(EdPsqDteDoc1.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteDoc >= '+ QuotedStr(fDateToSQL(EdPsqDteDoc1.Date));
  if Trim(fLimpaStr(EdPsqDteDoc2.Text)) <> '' then sFiltro := sFiltro + ' and CmpEnt.DteDoc <= '+ QuotedStr(fDateToSQL(EdPsqDteDoc2.Date));

  with CmpEnt,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grEnt.SetFocus;

end;

procedure TfmManCen.EdPsqCodEmpExit(Sender: TObject);
begin
  if Trim( EdPsqCodEmp.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomEmp From GerEmp Where CodEmp = '''+EdPsqCodEmp.Text+'''';
          Open;

          EdPsqNomEmp.Text := quSql.FieldByName('NomEmp').AsString;
     end;

     end
  else
     EdPsqNomEmp.Text := '';
end;

procedure TfmManCen.EdPsqCodForExit(Sender: TObject);
begin
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomFor From FinFor Where CodFor = '''+EdPsqCodFor.Text+'''';
          Open;

          EdPsqNomFor.Text := quSql.FieldByName('NomFor').AsString;

     end;

     end
  else
     EdPsqNomFor.Text := '';
end;

procedure TfmManCen.BbPsqEmpClick(Sender: TObject);
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

procedure TfmManCen.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManCen.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TfmManCen.BbPsqForClick(Sender: TObject);
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

procedure TfmManCen.EdPsqNumEntExit(Sender: TObject);
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

  end;
end;

procedure TfmManCen.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmManCen.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumEnt.SetFocus;
end;

procedure TfmManCen.BbPsqPfaClick(Sender: TObject);
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
                  '   and EstPfa.ModPfa = :ModPfa'+
                  ' Order by EstPfa.DscPfa';

          with Params do begin

               Params[0].AsString := 'Entrada';
               Params[1].AsString := 'Compras';

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

procedure TfmManCen.EdPsqCodPfaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
                     '   and EstPfa.ModPfa = :ModPfa'+
                     ' Order by EstPfa.DscPfa';

             with Params do begin

                  Params[0].AsString := 'Entrada';
                  Params[1].AsString := 'Compras';

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

procedure TfmManCen.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCen.EdPsqCodPfaExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqCodPfa.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := ' Select DscPfa From EstPfa'+
                  ' Where TipPfa = '''+ 'Entrada' +''''+
                  '   and ModPfa = '''+ 'Compras' +''''+
                  '   and CodPfa = '''+ EdPsqCodPfa.Text +'''';
          Open;

          EdPsqNomPfa.Text := FieldByName('Dscfa').AsString;

     end;

     end
  else
     EdPsqNomPfa.Text := '';
end;

procedure TfmManCen.EdPsqNumEntKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCen.EdPsqNumDocExit(Sender: TObject);
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

  end;
end;

procedure TfmManCen.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;     
end;

procedure TfmManCen.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCen := nil;
end;

procedure TfmManCen.DsEntDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if CmpEntCodFor.Value > 0 then
     pnNomFor.Caption := ' Fornecedor : ' + FNumZeros(IntToStr(CmpEntCodFor.Value),7) + ' - ' + CmpEntNomFor.Value
  else
     pnNomFor.Caption := ' Fornecedor : ';

  pnSitEnt.Caption := CmpEntSitEnt.Value;

end;

procedure TfmManCen.bCancelarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if CmpEntCodEmp.Value > 0 then begin

        try

           fmManObc := TfmManObc.Create(Self);
           fmManObc.ShowModal;

        finally

           FreeAndNil(fmManObc);

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

end.

