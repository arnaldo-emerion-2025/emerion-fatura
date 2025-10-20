unit ManEm1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery, RLXLSFilter;

type
  TfmManEm1 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    p2Titulo: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel22: TRLLabel;
    ppNomCli: TRLLabel;
    ppEndEn1: TRLLabel;
    RLBand2: TRLBand;
    RLLabel38: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLBand4: TRLBand;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    PedLb2: TwwQuery;
    DsMasterPedLib: TDataSource;
    DsPedLb2: TDataSource;
    DsPedLib: TDataSource;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    quSql: TwwQuery;
    ppNumRes: TRLDBText;
    ppCodVen: TRLDBText;
    ppCodCli: TRLDBText;
    ppEndEn2: TRLLabel;
    RLLabel6: TRLLabel;
    ppNomVen: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    ppDteFat: TRLDBText;
    PedLib: TwwQuery;
    PedLibCODEMP: TIntegerField;
    PedLibDTERES: TDateTimeField;
    PedLibNUMRES: TIntegerField;
    PedLibSEQLIB: TIntegerField;
    PedLibDTELIB: TDateTimeField;
    PedLibHRELIB: TStringField;
    PedLibQTSLIB: TIntegerField;
    PedLibBASIPI: TFloatField;
    PedLibTOTIPI: TFloatField;
    PedLibBASICM: TFloatField;
    PedLibTOTICM: TFloatField;
    PedLibBASSUB: TFloatField;
    PedLibTOTSUB: TFloatField;
    PedLibTOTVEN: TFloatField;
    PedLibTOTCST: TFloatField;
    PedLibTOTLIB: TFloatField;
    PedLibTOTREN: TFloatField;
    PedLibTOTGER: TFloatField;
    PedLibTOTLIQ: TFloatField;
    PedLibTOTBRT: TFloatField;
    PedLibBASCOM: TFloatField;
    PedLibTOTCOM: TFloatField;
    PedLibDSCCOM: TFloatField;
    PedLibDSCREG: TFloatField;
    PedLibMEDDSC: TFloatField;
    PedLibMEDACR: TFloatField;
    PedLibMEDCOM: TFloatField;
    PedLibMEDPRM: TFloatField;
    PedLibMEDDCO: TFloatField;
    PedLibTOTDCO: TFloatField;
    PedLibTOTDSC: TFloatField;
    PedLibTOTDSR: TFloatField;
    PedLibTOTDSP: TFloatField;
    PedLibTOTACR: TFloatField;
    PedLibCODUSU: TIntegerField;
    PedLibFLGLIB: TStringField;
    PedLibPEDANT: TStringField;
    PedLibDTEFAT: TDateTimeField;
    PedLibHREFAT: TStringField;
    PedLibUSUFAT: TIntegerField;
    PedLibNRONFS: TIntegerField;
    PedLibFLGREQ: TStringField;
    PedLibSITLIB: TStringField;
    PedLibPEDTIP: TIntegerField;
    PedLibDTEDEL: TDateTimeField;
    PedLibHREDEL: TStringField;
    PedLibOBSDEL: TMemoField;
    PedLibUSUDEL: TIntegerField;
    PedLibDTEDEV: TDateTimeField;
    PedLibHREDEV: TStringField;
    PedLibOBSDEV: TMemoField;
    PedLibUSUDEV: TIntegerField;
    PedLibFLGATU: TStringField;
    PedLibDTEATU: TDateTimeField;
    PedLibHREATU: TStringField;
    PedLibUSUATU: TIntegerField;
    PedLibTRASDA: TIntegerField;
    PedLibDTESDA: TDateTimeField;
    PedLibHRESDA: TStringField;
    PedLibUSUSDA: TIntegerField;
    PedLibOBSSDA: TStringField;
    PedLibCODVEI: TIntegerField;
    PedLibDTEENT: TDateTimeField;
    PedLibHREENT: TStringField;
    PedLibUSUENT: TIntegerField;
    PedLibOBSENT: TStringField;
    PedLibCODCLI: TIntegerField;
    PedLibCODVEN: TIntegerField;
    PedLibCODPFA: TStringField;
    PedLibTIPPFA: TStringField;
    PedLibCODFIL: TIntegerField;
    PedLibCODATD: TIntegerField;
    PedLibCODTRA: TIntegerField;
    PedLibMODPFA: TStringField;
    PedLibFLGTAB: TStringField;
    PedLibATUEST: TStringField;
    PedLibINTFIN: TStringField;
    PedLibMESLIB: TStringField;
    PedLibANOLIB: TIntegerField;
    PedLibLANEST: TStringField;
    PedLibUFELIB: TStringField;
    PedLibCODTCL: TIntegerField;
    PedLibFLGSER: TStringField;
    PedLibBASISS: TFloatField;
    PedLibTOTISS: TFloatField;
    PedLibVALTMO: TFloatField;
    RLLabel15: TRLLabel;
    RLLabel19: TRLLabel;
    RLBand5: TRLBand;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel3: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    ppUltQts: TRLDBText;
    ppCodUnd: TRLDBText;
    ppTotGe2: TRLDBText;
    ppDesLb2: TRLDBText;
    ppVlqLb2: TRLDBText;
    ppCodPro: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel50: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel20: TRLLabel;
    ppTexto2: TRLMemo;
    RLLabel21: TRLLabel;
    ppTexto3: TRLMemo;
    RLLabel23: TRLLabel;
    ppTexto4: TRLMemo;
    ppTexto5: TRLMemo;
    RLLabel24: TRLLabel;
    RLBand6: TRLBand;
    RLDraw2: TRLDraw;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    ppEndTr1: TRLLabel;
    ppEndTr2: TRLLabel;
    ppTexto1: TRLMemo;
    RLLabel2: TRLLabel;
    RLLabel30: TRLLabel;
    ppPraMed: TRLLabel;
    ppEndTr4: TRLLabel;
    ppEndTr3: TRLLabel;
    PedLb2CODEMP: TIntegerField;
    PedLb2DTERES: TDateTimeField;
    PedLb2NUMRES: TIntegerField;
    PedLb2SEQLIB: TIntegerField;
    PedLb2SEQLB2: TIntegerField;
    PedLb2SEQRE2: TIntegerField;
    PedLb2CODEIT: TIntegerField;
    PedLb2CODCLP: TStringField;
    PedLb2CODGRU: TStringField;
    PedLb2CODSUB: TStringField;
    PedLb2CODPRO: TStringField;
    PedLb2CODTAM: TStringField;
    PedLb2CODCOR: TStringField;
    PedLb2DESLB2: TStringField;
    PedLb2OBSLB2: TStringField;
    PedLb2CODST1: TStringField;
    PedLb2CODST2: TStringField;
    PedLb2CODUND: TStringField;
    PedLb2REFLB2: TStringField;
    PedLb2CLSIPI: TStringField;
    PedLb2LIQLB2: TFloatField;
    PedLb2BRTLB2: TFloatField;
    PedLb2QTPLB2: TFloatField;
    PedLb2QTSLB2: TFloatField;
    PedLb2ULTQTS: TFloatField;
    PedLb2SLDLB2: TFloatField;
    PedLb2QTDLB2: TFloatField;
    PedLb2VLULB2: TFloatField;
    PedLb2VLQLB2: TFloatField;
    PedLb2VCHLB2: TFloatField;
    PedLb2VRELB2: TFloatField;
    PedLb2VCPLB2: TFloatField;
    PedLb2VPRLB2: TFloatField;
    PedLb2VCSLB2: TFloatField;
    PedLb2DSCLB2: TFloatField;
    PedLb2VDSLB2: TFloatField;
    PedLb2DSPLB2: TFloatField;
    PedLb2VDPLB2: TFloatField;
    PedLb2DSRLB2: TFloatField;
    PedLb2VDRLB2: TFloatField;
    PedLb2PACLB2: TFloatField;
    PedLb2VACLB2: TFloatField;
    PedLb2DSCCOM: TFloatField;
    PedLb2VDSCOM: TFloatField;
    PedLb2PCOLB2: TFloatField;
    PedLb2IPILB2: TFloatField;
    PedLb2ICMLB2: TFloatField;
    PedLb2TOTVEN: TFloatField;
    PedLb2TOTCST: TFloatField;
    PedLb2BASIPI: TFloatField;
    PedLb2TOTIPI: TFloatField;
    PedLb2BASICM: TFloatField;
    PedLb2TOTICM: TFloatField;
    PedLb2BASSUB: TFloatField;
    PedLb2TOTSUB: TFloatField;
    PedLb2TOTLB2: TFloatField;
    PedLb2TOTGE2: TFloatField;
    PedLb2TOTREN: TFloatField;
    PedLb2TOTLIQ: TFloatField;
    PedLb2TOTBRT: TFloatField;
    PedLb2BASCOM: TFloatField;
    PedLb2TOTCOM: TFloatField;
    PedLb2TOTDSC: TFloatField;
    PedLb2TOTDSR: TFloatField;
    PedLb2TOTDSP: TFloatField;
    PedLb2TOTACR: TFloatField;
    PedLb2TOTDCO: TFloatField;
    PedLb2CODSTR: TStringField;
    PedLb2TIPSTR: TStringField;
    PedLb2REGIPI: TStringField;
    PedLb2TIPIPI: TStringField;
    PedLb2TRBIPI: TStringField;
    PedLb2REDIPI: TFloatField;
    PedLb2BSCIPI: TFloatField;
    PedLb2REGICM: TStringField;
    PedLb2TIPICM: TStringField;
    PedLb2TRBICM: TStringField;
    PedLb2REDICM: TFloatField;
    PedLb2BSCICM: TFloatField;
    PedLb2INCREV: TFloatField;
    PedLb2INCFIN: TFloatField;
    PedLb2FLGSEQ: TStringField;
    PedLb2FLGREQ: TStringField;
    PedLb2CODVWA: TStringField;
    PedLb2FLGDUP: TStringField;
    PedLb2NRORE2: TIntegerField;
    PedLb2VMELB2: TFloatField;
    PedLb2VPFLB2: TFloatField;
    PedLb2CSTCST: TFloatField;
    PedLb2VCHCST: TFloatField;
    PedLb2VRECST: TFloatField;
    PedLb2VCRCST: TFloatField;
    PedLb2VCPCST: TFloatField;
    PedLb2VPRCST: TFloatField;
    PedLb2VMECST: TFloatField;
    PedLb2VPFCST: TFloatField;
    PedLb2CSTLB2: TFloatField;
    PedLb2VCRLB2: TFloatField;
    PedLb2DSCPER: TFloatField;
    PedLb2CODPRM: TIntegerField;
    PedLb2SEQPR2: TIntegerField;
    PedLb2CODTIP: TIntegerField;
    PedLb2CODCAT: TIntegerField;
    PedLb2CODMRC: TIntegerField;
    PedLb2FLGSEP: TStringField;
    PedLb2MESLIB: TStringField;
    PedLb2ANOLIB: TIntegerField;
    PedLb2LANCST: TStringField;
    PedLb2QTDQTE: TFloatField;
    PedLb2VPFOUT: TFloatField;
    PedLb2OUTCST: TFloatField;
    PedLb2ISSLB2: TFloatField;
    PedLb2BASISS: TFloatField;
    PedLb2TOTISS: TFloatField;
    PedLb2VALTMO: TFloatField;
    PedLb2FLGSER: TStringField;
    pnTotLib: TRLLabel;
    ppQtsLib: TRLLabel;
    PedLibTIPCPA: TStringField;
    PedLibMEDCAT: TFloatField;
    PedLibBASCAT: TFloatField;
    PedLibTOTCAT: TFloatField;
    PedLibFLGFEC: TStringField;
    PedLb2TIPCPA: TStringField;
    PedLb2PCOATD: TFloatField;
    PedLb2BASCAT: TFloatField;
    PedLb2TOTCAT: TFloatField;
    PedLb2EMPENT: TIntegerField;
    PedLb2DTEENT: TDateTimeField;
    PedLb2NUMENT: TIntegerField;
    PedLb2SEQEN2: TIntegerField;
    PedLb2DIFDSC: TFloatField;
    PedLb2MARPRE: TFloatField;
    PedLb2MARPED: TFloatField;
    PedLb2LUCROL: TFloatField;
    PedLb2LUCROP: TFloatField;
    PedLb2TOTPER: TFloatField;
    RLLabel29: TRLLabel;
    RLLabel31: TRLLabel;
    pnTotIpi: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    pnTotGer: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel32: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    ppValTmo: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    pnTotSub: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    pnTotDsr: TRLLabel;
    RLXLSFilter1: TRLXLSFilter;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    GImpRef : string;
  public
    { Public declarations }
    sTotIpi : real;
    sTotSub : real;
    sTotDsr : real;
  end;

var
  PraMed   : real;
  fmManEm1 : TfmManEm1;

implementation

uses Bbgeral, Bbfuncao, ManGDB, SendMailOptions, PsqFat;

{$R *.DFM}

procedure TfmManEm1.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManEm1.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select ApeVen From FinVen Where FinVen.CodVen = '''+ IntToStr(PedLibCodVen.Value) +'''';
       Open;

       ppNomVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select NomCli From FinCli Where FinCli.CodCli = '''+ IntToStr(PedLibCodCli.Value) +'''';
       Open;

       ppNomCli.Caption := FieldbyName('NomCli').AsString;

  end;

  ppEndEn1.Caption := '';
  ppEndEn2.Caption := '';

  with quSQL,SQL do begin

       Close;
       Text := ' Select PedRes.TenCli,'+
               '        PedRes.EndCli,'+
               '        PedRes.NumCli,'+
               '        PedRes.BaiCli,'+
               '        PedRes.CidCli,'+
               '        PedRes.UfeCli,'+
               '        PedRes.CepCli'+
               ' From PedRes'+
               ' Where PedRes.CodEmp = '''+ IntToStr(PedLibCodEmp.Value)   +''''+
               '   and PedRes.DteRes = '''+ fDateToSQL(PedLibDteRes.Value) +''''+
               '   and PedRes.NumRes = '''+ IntToStr(PedLibNumRes.Value)   +'''';
       Open;

       if Trim(FieldbyName('TenCli').AsString) <> '' then
          ppEndEn1.Caption := Trim( FieldbyName('TenCli').AsString )+ ' ' +
                              Trim( FieldbyName('EndCli').AsString )
       else
          ppEndEn1.Caption := Trim( FieldbyName('EndCli').AsString );

       if Trim( FieldbyName('NumCli').AsString ) <> '' then
          ppEndEn1.Caption := ppEndEn1.Caption + ', ' +Trim( FieldbyName('NumCli').AsString );

       if Trim( FieldbyName('BaiCli').AsString ) <> '' then
          ppEndEn1.Caption := ppEndEn1.Caption + ' ' +Trim( FieldbyName('BaiCli').AsString );

       ppEndEn2.Caption := Trim( FieldbyName('CidCli').AsString );
          
       if Trim( FieldbyName('UfeCli').AsString ) <> '' then
          ppEndEn2.Caption := ppEndEn2.Caption+ ' - ' +FieldbyName('UfeCli').AsString;
       
       if Trim( FieldbyName('CepCli').AsString ) <> '' then
          ppEndEn2.Caption := ppEndEn2.Caption + ' Cep '+
                              copy(FieldbyName('CepCli').AsString,1,5)+ '-' +
                              copy(FieldbyName('CepCli').AsString,6,3);
       
  end;
end;

procedure TfmManEm1.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From FatPe3'+
               ' Where FatPe3.CodEmp = :CodEmp'+
               '   and FatPe3.DteRes = :DteRes'+
               '   and FatPe3.NumRes = :NumRes'+
               '   and FatPe3.SeqLib = :SeqLib'+
               '   and FatPe3.SeqFat = :SeqFat'+
               ' Order by FatPe3.NroPe3';

       with Params do begin

            Params[0].AsInteger  := fmPsqFat.FatPedCodEmp.Value;
            Params[1].AsDateTime := fmPsqFat.FatPedDteRes.Value;
            Params[2].AsInteger  := fmPsqFat.FatPedNumRes.Value;
            Params[3].AsInteger  := fmPsqFat.FatPedSeqLib.Value;
            Params[4].AsInteger  := fmPsqFat.FatPedSeqFat.Value;

       end;

       Open;
       First;

  end;

  ppTexto1.Lines.clear;
  ppTexto2.Lines.clear;
  ppTexto3.Lines.clear;
  ppTexto4.Lines.clear;
  ppTexto5.Lines.clear;

  PraMed := 0;

  while not quSQL.Eof do begin

        ppTexto1.Lines.Add(IntToStr(fmPsqFat.FatPedNroNfs.Value));
        ppTexto2.Lines.Add(FormatDateTime('dd/mm/yyyy',quSql.FieldbyName('DtvPe3').AsDateTime));
        ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpPe3').AsFloat));

        PraMed := PraMed + quSql.FieldbyName('PraPe3').AsInteger;

        quSql.Next;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From FatPe4'+
               ' Where CodEmp = :CodEmp'+
               '   and DteRes = :DteRes'+
               '   and NumRes = :NumRes'+
               '   and SeqLib = :SeqLib'+
               '   and SeqFat = :SeqFat'+
               ' Order by CodEmp,NumRes,SeqLib,SeqFat,NroPe4';

       with Params do begin

            Params[0].AsInteger  := fmPsqFat.FatPedCodEmp.Value;
            Params[1].AsDateTime := fmPsqFat.FatPedDteRes.Value;
            Params[2].AsInteger  := fmPsqFat.FatPedNumRes.Value;
            Params[3].AsInteger  := fmPsqFat.FatPedSeqLib.Value;
            Params[4].AsInteger  := fmPsqFat.FatPedSeqFat.Value;

       end;

       Open;
       First;

  end;

  while not quSQL.Eof do begin

        ppTexto4.Lines.Add(FormatDateTime('dd/mm/yyyy',quSql.FieldbyName('DtvPe4').AsDateTime));
        ppTexto5.Lines.Add(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpPe4').AsFloat));

        PraMed := PraMed + quSql.FieldbyName('PraPe4').AsInteger;

        quSql.Next;

  end;

  PraMed := PraMed / StrToFloat(IntToStr((fmPsqFat.FatPedQtpNot.Value + fmPsqFat.FatPedQtpDup.Value)));

end;

procedure TfmManEm1.RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
CodTra : integer;
begin

  ppPraMed.Caption := FormatFloat('##0.00',PraMed)+' Dias';

  with quSQL,SQL do begin

       Close;
       Text := ' Select PedRes.CodTra'+
               ' From PedRes'+
               ' Where PedRes.CodEmp = '''+ IntToStr(PedLibCodEmp.Value)   +''''+
               '   and PedRes.DteRes = '''+ fDateToSQL(PedLibDteRes.Value) +''''+
               '   and PedRes.NumRes = '''+ IntToStr(PedLibNumRes.Value)   +'''';
       Open;

       CodTra := FieldbyName('CodTra').AsInteger;

  end;

  ppEndTr1.Caption := '';
  ppEndTr2.Caption := '';
  ppEndTr3.Caption := '';
  ppEndTr4.Caption := '';

  with quSQL,SQL do begin

       Close;
       Text := ' Select * From FinTra Where FinTra.CodTra = :CodTra';

       with Params do begin

            Params[0].AsInteger := CodTra;

       end;

       Open;

       ppEndTr1.Caption := FieldbyName('NomTra').AsString;

       if Trim(FieldbyName('TenTra').AsString) <> '' then
          ppEndTr2.Caption := Trim( FieldbyName('TenTra').AsString )+ ' ' +
                              Trim( FieldbyName('EndTra').AsString )
       else
          ppEndTr2.Caption := Trim( FieldbyName('EndTra').AsString );

       if Trim( FieldbyName('NumTra').AsString ) <> '' then
          ppEndTr2.Caption := ppEndTr2.Caption + ', ' +Trim( FieldbyName('NumTra').AsString );

       if Trim( FieldbyName('BaiTra').AsString ) <> '' then
          ppEndTr2.Caption := ppEndTr2.Caption + ' ' +Trim( FieldbyName('BaiTra').AsString );

       ppEndTr3.Caption := Trim( FieldbyName('CidTra').AsString );

       if Trim( FieldbyName('SigUfe').AsString ) <> '' then
          ppEndTr3.Caption := ppEndTr3.Caption + ' - ' +FieldbyName('SigUfe').AsString;
       
       if Trim( FieldbyName('CepTra').AsString ) <> '' then
          ppEndTr3.Caption := ppEndTr3.Caption + ' Cep '+
                              copy(FieldbyName('CepTra').AsString,1,5)+ '-' +
                              copy(FieldbyName('CepTra').AsString,6,3);

       if Trim( FieldbyName('PrtTra').AsString ) <> '' then
          ppEndTr4.Caption := 'TeleFone '+'('+Trim( FieldbyName('PrtTra').AsString )+') '+Trim( FieldbyName('FonTra').AsString )
       else
          begin

          if Trim( FieldbyName('FonTra').AsString ) <> '' then
             ppEndTr4.Caption := 'TeleFone '+Trim( FieldbyName('FonTra').AsString );

       end;
  end;
end;

procedure TfmManEm1.RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  if Trim(GImpRef) = 'Sim' then
     ppCodPro.Caption := copy(Trim(PedLb2RefLb2.Value),1,14)
  else
     ppCodPro.Caption := PedLb2CodGru.Value+'.'+PedLb2CodSub.Value+'.'+PedLb2CodPro.Value;
     
end;

procedure TfmManEm1.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  pnTotLib.Caption := FormatFloat('###,###,##0.00',PedLibTotLib.Value);
  pnTotSub.Caption := FormatFloat('###,###,##0.00',sTotSub);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00',sTotIpi);
  pnTotDsr.Caption := FormatFloat('###,###,##0.00',sTotDsr);
  pnTotGer.Caption := FormatFloat('###,###,##0.00',(PedLibTotLib.Value - sTotDsr) + sTotIpi + sTotSub);

  if PedLibValTmo.Value > 0 then
     ppValTmo.Caption := FormatFloat('###,###,##0.0000',PedLibValTmo.Value)
  else
     begin

     RLLabel27.Visible := False;
     RLLabel28.Visible := False;

     ppValTmo.Visible := False;

  end;
     
  ppQtsLib.Caption := IntToStr(PedLibQtsLib.Value);

end;

procedure TfmManEm1.FormCreate(Sender: TObject);
begin
  with quSQL,SQL do begin

       Close;
       Text := ' Select UsaDec,ImpRef From PedPar';
       Open;

       GImpRef := FieldByName('ImpRef').AsString;
       
       if FieldbyName('UsaDec').AsString = 'Sim' then begin

          PedLb2UltQts.DisplayFormat := '###,###,##0.0000';

          ppUltQts.DisplayMask := '###,###,##0.0000';

          end
       else
          begin

          PedLb2UltQts.DisplayFormat := '###,###,##0';

          ppUltQts.DisplayMask := '###,###,##0';

       end;
  end;
end;

end.
