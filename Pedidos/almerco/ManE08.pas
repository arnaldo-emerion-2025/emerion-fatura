unit ManE08;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery, RLXLSFilter;

type
  TfmManE08 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppNomEmp: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    PedLb2: TQuery;
    DsPedRe2: TDataSource;
    DsPedLib: TDataSource;
    RLLabel8: TRLLabel;
    quSql: TQuery;
    ppCodVen: TRLDBText;
    ppCodCli: TRLDBText;
    PedLib: TQuery;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    ppUltQts: TRLDBText;
    ppCodUnd: TRLDBText;
    ppTotGe3: TRLDBText;
    ppDesRe3: TRLDBText;
    ppVlqRe3: TRLDBText;
    ppCodAtd: TRLDBText;
    ppCgcCli: TRLLabel;
    RLDraw3: TRLDraw;
    RLBand5: TRLBand;
    RLLabel47: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel53: TRLLabel;
    RLMemo3: TRLMemo;
    RLMemo1: TRLMemo;
    RLMemo4: TRLMemo;
    RLBand4: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel20: TRLLabel;
    ppTexto1: TRLMemo;
    RLLabel21: TRLLabel;
    ppTexto3: TRLMemo;
    RLBand6: TRLBand;
    RLLabel25: TRLLabel;
    ppEndTr1: TRLLabel;
    ppEndTr2: TRLLabel;
    ppEndTr4: TRLLabel;
    ppEndTr3: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLXLSFilter1: TRLXLSFilter;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    ppTotCst: TRLDBText;
    ppTotRen: TRLDBText;
    PedPar: TwwQuery;
    PedParEXIREN: TStringField;
    PedParTIPATD: TStringField;
    PedParUSADEC: TStringField;
    RLDraw13: TRLDraw;
    EdOb1Res: TRLDBText;
    EdOb2Res: TRLDBText;
    EdOb3Res: TRLDBText;
    EdOb4Res: TRLDBText;
    EdOb5Res: TRLDBText;
    EdOb6Res: TRLDBText;
    EdOb7Res: TRLDBText;
    EdOb8Res: TRLDBText;
    ppEndEmp: TRLLabel;
    ppCepEmp: TRLLabel;
    ppCidEmp: TRLLabel;
    ppUfeEmp: TRLLabel;
    ppFonEmp: TRLLabel;
    ppFaxEmp: TRLLabel;
    ppWebEmp: TRLLabel;
    ppEmaEmp: TRLLabel;
    RLDraw14: TRLDraw;
    ppPedido: TRLLabel;
    ppNomCli: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    ppFonCli: TRLLabel;
    RLLabel65: TRLLabel;
    ppEmaCli: TRLLabel;
    RLLabel67: TRLLabel;
    ppComCli: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel73: TRLLabel;
    ppEncCli: TRLLabel;
    RLLabel75: TRLLabel;
    ppEndCli: TRLLabel;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    ppCicCli: TRLLabel;
    ppCidCli: TRLLabel;
    RLLabel81: TRLLabel;
    ppBacCli: TRLLabel;
    RLLabel83: TRLLabel;
    ppBaiCli: TRLLabel;
    RLLabel85: TRLLabel;
    RLLabel86: TRLLabel;
    ppCecCli: TRLLabel;
    ppCepCli: TRLLabel;
    RLLabel89: TRLLabel;
    RLLabel90: TRLLabel;
    ppUfcCli: TRLLabel;
    ppUfeCli: TRLLabel;
    RLLabel93: TRLLabel;
    RLDraw18: TRLDraw;
    RLLabel94: TRLLabel;
    ppFonVen: TRLLabel;
    RLLabel96: TRLLabel;
    ppEmaVen: TRLLabel;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    ppFonAtd: TRLLabel;
    RLLabel101: TRLLabel;
    ppEmaAtd: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel104: TRLLabel;
    RLLabel106: TRLLabel;
    RLLabel107: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel105: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel109: TRLLabel;
    RLLabel110: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDraw5: TRLDraw;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLBand2: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    ppApeVen: TRLLabel;
    ppApeAtd: TRLLabel;
    RLDBText13: TRLDBText;
    RLDraw1: TRLDraw;
    RLBand3: TRLBand;
    RLDraw7: TRLDraw;
    RLLabel2: TRLLabel;
    ppPraMed: TRLLabel;
    RLDraw8: TRLDraw;
    PedLibID_PEDRES: TIntegerField;
    PedLibNRONFS: TIntegerField;
    PedLibDTERES: TDateTimeField;
    PedLibDTFRES: TDateTimeField;
    PedLibCODCLI: TIntegerField;
    PedLibCEPCLI: TStringField;
    PedLibTENCLI: TStringField;
    PedLibENDCLI: TStringField;
    PedLibNUMCLI: TStringField;
    PedLibREFCLI: TStringField;
    PedLibBAICLI: TStringField;
    PedLibCIDCLI: TStringField;
    PedLibUFECLI: TStringField;
    PedLibCODTRA: TIntegerField;
    PedLibCODVEN: TIntegerField;
    PedLibCODATD: TIntegerField;
    PedLibTOTLIB: TFloatField;
    PedLibTOTIPI: TFloatField;
    PedLibTOTFRT: TFloatField;
    PedLibTOTSUB: TFloatField;
    PedLibTOTDSR: TFloatField;
    PedLibTOTDSP: TFloatField;
    PedLibTOTCST: TFloatField;
    PedLibTOTREN: TFloatField;
    PedLibACRCND: TFloatField;
    PedLibDSCCND: TFloatField;
    PedLibMEDACR: TFloatField;
    PedLibTOTACR: TFloatField;
    PedLibTOTACP: TFloatField;
    PedLibTOTGER: TFloatField;
    PedLibMEDDSC: TFloatField;
    PedLibTOTDSC: TFloatField;
    PedLibDSCREG: TFloatField;
    PedLibMEDCOM: TFloatField;
    PedLibTOTCOM: TFloatField;
    PedLibOB1RES: TStringField;
    PedLibOB2RES: TStringField;
    PedLibOB3RES: TStringField;
    PedLibOB4RES: TStringField;
    PedLibOB5RES: TStringField;
    PedLibOB6RES: TStringField;
    PedLibOB7RES: TStringField;
    PedLibOB8RES: TStringField;
    PedLibQTILIB: TIntegerField;
    PedLibID_PEDLIB: TIntegerField;
    PedLb2CODCLP: TStringField;
    PedLb2CODGRU: TStringField;
    PedLb2CODSUB: TStringField;
    PedLb2CODPRO: TStringField;
    PedLb2DESRE2: TStringField;
    PedLb2VLQRE2: TFloatField;
    PedLb2CODUND: TStringField;
    PedLb2ICMRE2: TFloatField;
    PedLb2CLSIPI: TStringField;
    PedLb2IPIRE2: TFloatField;
    PedLb2NRORE2: TIntegerField;
    PedLb2CODICL: TStringField;
    PedLb2ULTQTS: TFloatField;
    PedLb2TOTGE2: TFloatField;
    PedLb2CODITE: TStringField;
    PedLibQTIRE3: TIntegerField;
    PedParFLGIMP: TStringField;
    RLLabel7: TRLLabel;
    RLDBText14: TRLDBText;
    PedLibINFLIQ: TFloatField;
    PedLibINFBRT: TFloatField;
    RLLabel9: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText16: TRLDBText;
    PedLibINTFIN: TStringField;
    RLLabel11: TRLLabel;
    ppTexto2: TRLMemo;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    PraMed : real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE08: TfmManE08;

implementation

uses SendMailOptions, ManGDB, Bbgeral, Bbfuncao;

{$R *.DFM}

procedure TfmManE08.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE08.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin

  ppNomEmp.Caption := Trim(GRazEmp);
  ppEndEmp.Caption := Trim(GEndEmp);
  ppCepEmp.Caption := 'CEP. '+Trim(GCepEmp);

  ppCidEmp.Caption := 'MUNICIPIO '+Trim(GCidEmp);

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerUfe.NomUfe From GerUfe Where GerUfe.SigUfe = '+ Quotedstr(GUfeEmp);
       Open;

       ppUfeEmp.Caption := 'ESTADO '+Trim(FieldbyName('NomUfe').AsString);

  end;

  ppFonEmp.Caption := 'FONE: '+Trim(GFonEmp);
  ppFaxEmp.Caption := 'FAX: '+Trim(GFaxEmp);

  ppWebEmp.Caption := 'http://'+Trim(GWebEmp);
  ppEmaEmp.Caption := 'e-mail: '+Trim(GEmaEmp);

  ppPedido.Caption := 'PEDIDO No. '+fNumZeros(IntToStr(PedLibId_PedRes.Value),6);
     
  with quSQL,SQL do begin

       Close;
       Text := ' Select FinCli.NomCli,'+
               '        FinCli.CgcCli,'+
               '        FinCli.CecCli,'+
               '        FinCli.TecCli,'+
               '        FinCli.EncCli,'+
               '        FinCli.NrcCli,'+
               '        FinCli.RfcCli,'+
               '        FinCli.BacCli,'+
               '        FinCli.CicCli,'+
               '        FinCli.UfcCli,'+
               '        FinCli.ComCli,'+
               '        FinCli.Pt3Cli,'+
               '        FinCli.Fo3Cli,'+
               '        FinCli.Em1Cli '+
               ' From FinCli'+
               ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedLibCodCli.Value));
       Open;

       ppNomCli.Caption := Trim(FieldbyName('NomCli').AsString);
       ppCgcCli.Caption := fFormatCgcCpf(FieldbyName('CgcCli').AsString);
       ppComCli.Caption := Trim(FieldbyName('ComCli').AsString);
       ppEmaCli.Caption := Trim(FieldbyName('Em1Cli').AsString);
       ppBacCli.Caption := Trim(FieldbyName('BacCli').AsString);
       ppCicCli.Caption := Trim(FieldbyName('CicCli').AsString);
       ppUfcCli.Caption := Trim(FieldbyName('UfcCli').AsString);

       if Trim(FieldbyName('Pt3Cli').AsString) <> '' then
          ppFonCli.Caption := '('+ Trim(FieldbyName('Pt3Cli').AsString) +') '+Trim(FieldbyName('Fo3Cli').AsString)
       else
          ppFonCli.Caption := Trim(FieldbyName('Fo3Cli').AsString);

       if Trim(FieldbyName('TecCli').AsString) <> '' then
          ppEncCli.Caption := Trim(FieldbyName('TecCli').AsString)+ ' ' +Trim(FieldbyName('EncCli').AsString)
       else
          ppEncCli.Caption := Trim(FieldbyName('EncCli').AsString);

       if Trim(FieldbyName('NrcCli').AsString) <> '' then
          ppEncCli.Caption := ppEncCli.Caption+ ', ' +Trim(FieldbyName('NrcCli').AsString);

       if Trim(FieldbyName('RfcCli').AsString) <> '' then
          ppEncCli.Caption := ppEncCli.Caption+ ' ' +Trim(FieldbyName('RfcCli').AsString);

       if Trim(FieldbyName('CecCli').AsString) <> '' then
          ppCecCli.Caption := copy(Trim(FieldbyName('CecCli').AsString),1,5)+ '-' +copy(Trim(FieldbyName('CecCli').AsString),6,3)
       else
          ppCecCli.Caption := '';
          
  end;

  if Trim(PedLibTenCli.Value) <> '' then
     ppEndCli.Caption := Trim(PedLibTenCli.Value)+ ' ' +Trim(PedLibEndCli.Value)
  else
     ppEndCli.Caption := Trim(PedLibEndCli.Value);

  if Trim(PedLibNumCli.Value) <> '' then
     ppEndCli.Caption := ppEndCli.Caption+ ', ' +Trim(PedLibNumCli.Value);

  if Trim(PedLibRefCli.Value) <> '' then
     ppEndCli.Caption := ppEndCli.Caption+ ' ' +Trim(PedLibRefCli.Value);

  ppCidCli.Caption := Trim(PedLibCidCli.Value);
  ppBaiCli.Caption := Trim(PedLibBaiCli.Value);
  ppUfeCli.Caption := Trim(PedLibUfeCli.Value);

  if Trim(PedLibCepCli.Value) <> '' then
     ppCepCli.Caption := copy(PedLibCepCli.Value,1,5)+ '-' +copy(PedLibCepCli.Value,6,3)
  else
     ppCepCli.Caption := '';

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedLibCodVen.Value));
       Open;

       ppApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerUsu.EmaUsu,'+
               '        GerUsu.PrtUsu,'+
               '        GerUsu.FonUsu '+
               ' From GerUsu'+
               ' Where GerUsu.CodVen = '+ QuotedStr(IntToStr(PedLibCodVen.Value));
       Open;

       if Trim(FieldbyName('PrtUsu').AsString) <> '' then
          ppFonVen.Caption := '('+ Trim(FieldbyName('PrtUsu').AsString) +') '+Trim(FieldbyName('FonUsu').AsString)
       else
          ppFonVen.Caption := Trim(FieldbyName('FonUsu').AsString);

       ppEmaVen.Caption := Trim(FieldbyName('EmaUsu').AsString);

  end;

  if PedLibCodAtd.Value > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Atendente' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedLibCodAtd.Value));
             Open;

             ppApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select GerUsu.EmaUsu,'+
                     '        GerUsu.PrtUsu,'+
                     '        GerUsu.FonUsu '+
                     ' From GerUsu'+
                     ' Where GerUsu.CodAtd = '+ QuotedStr(IntToStr(PedLibCodAtd.Value));
             Open;

             if Trim(FieldbyName('PrtUsu').AsString) <> '' then
                ppFonAtd.Caption := '('+ Trim(FieldbyName('PrtUsu').AsString) +') '+Trim(FieldbyName('FonUsu').AsString)
             else
                ppFonAtd.Caption := Trim(FieldbyName('FonUsu').AsString);

             ppEmaAtd.Caption := Trim(FieldbyName('EmaUsu').AsString);

        end;

        end
     else
        begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedLibCodAtd.Value));
             Open;

             ppApeAtd.Caption := FieldbyName('ApeVen').AsString;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select GerUsu.EmaUsu,'+
                     '        GerUsu.PrtUsu,'+
                     '        GerUsu.FonUsu '+
                     ' From GerUsu'+
                     ' Where GerUsu.CodVen = '+ QuotedStr(IntToStr(PedLibCodAtd.Value));
             Open;

             if Trim(FieldbyName('PrtUsu').AsString) <> '' then
                ppFonAtd.Caption := '('+ Trim(FieldbyName('PrtUsu').AsString) +') '+Trim(FieldbyName('FonUsu').AsString)
             else
                ppFonAtd.Caption := Trim(FieldbyName('FonUsu').AsString);

             ppEmaAtd.Caption := Trim(FieldbyName('EmaUsu').AsString);

        end;
     end;

     end
  else
     begin

     ppApeAtd.Caption := '';
     ppFonAtd.Caption := '';
     ppEmaAtd.Caption := '';

  end;
end;

procedure TfmManE08.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  VlpRe3 : real;
  QtdReg : integer;
  TotDif : real;
  DteSer : TDateTime;
  DtfRes : TDateTime;
begin

  ppTexto1.Lines.clear;
  ppTexto2.Lines.clear;
  ppTexto3.Lines.clear;

  if PedLibIntFin.Value = 'Sim' then begin

     VlpRe3 := fRound((PedLibTotGer.Value - PedLibTotFrt.Value)/PedLibQtiRe3.Value,2);

     TotDif := fRound(PedLibTotGer.Value - ((VlpRe3 * PedLibQtiRe3.Value) + PedLibTotFrt.Value),2);

     if TotDif < 0 then TotDif := 0;

     with quSQL,SQL do begin

          Close;
          Text := ' Select Cast('+ QuotedStr('Today') +' as Date) as DteSer From rdb$database';
          Open;

          DteSer := StrToDate(FieldbyName('DteSer').AsString);

     end;

     if PedLibDtfRes.Value < DteSer then
        DtfRes := DteSer
     else
        DtfRes := PedLibDtfRes.Value;

     with quSQL,SQL do begin

          Close;
          Text := ' Select PedRe3.NroRe3,'+
                  '        PedRe3.PraRe3,'+
                  '        PedRe3.VlpRe3 '+
                  ' From PedRe3'+
                  ' Where PedRe3.Id_PedRes = :Id_PedRes'+
                  ' Order by PedRe3.NroRe3';

          with Params do begin

               Params[0].AsInteger := PedLibId_PedRes.Value;

          end;

          Open;
          First;

     end;

     PraMed := 0;
     QtdReg := 0;

     while not quSQL.EOF do begin

           if quSql.FieldbyName('VlpRe3').AsFloat > 0 then begin

              ppTexto1.Lines.Add(quSql.FieldbyName('PraRe3').AsString);

              ppTexto2.Lines.Add(FormatDateTime('dd/mm/yyyy',DtfRes + quSql.FieldbyName('PraRe3').AsInteger));

              if quSql.FieldbyName('NroRe3').AsInteger = 1 then
                 ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',(VlpRe3 + PedLibTotFrt.Value + TotDif)))
              else
                 ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',VlpRe3));

              PraMed := PraMed + quSql.FieldbyName('PraRe3').AsInteger;

              Inc(QtdReg);

           end;

           quSql.Next;

     end;

     if QtdReg > 0 then PraMed := PraMed / StrToFloat(IntToStr(QtdReg));

  end;
end;

procedure TfmManE08.RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppEndTr1.Caption := '';
  ppEndTr2.Caption := '';
  ppEndTr3.Caption := '';
  ppEndTr4.Caption := '';

  if PedLibCodTra.Value > 0 then begin
  
     with quSQL,SQL do begin

          Close;
          Text := ' Select FinTra.NomTra,'+
                  '        FinTra.CepTra,'+
                  '        FinTra.TenTra,'+
                  '        FinTra.EndTra,'+
                  '        FinTra.NumTra,'+
                  '        FinTra.RefTra,'+
                  '        FinTra.BaiTra,'+
                  '        FinTra.CidTra,'+
                  '        FinTra.SigUfe,'+
                  '        FinTra.PrtTra,'+
                  '        FinTra.FonTra,'+
                  '        FinTra.PrfTra,'+
                  '        FinTra.FaxTra '+
                  ' From FinTra'+
                  ' Where FinTra.CodTra = '+ QuotedStr(IntToStr(PedLibCodTra.Value));
          Open;

          ppEndTr1.Caption := Trim(FieldbyName('NomTra').AsString);

          if Trim(FieldbyName('TenTra').AsString) <> '' then
             ppEndTr2.Caption := Trim(FieldbyName('TenTra').AsString)+ ' ' +Trim(FieldbyName('EndTra').AsString)
          else
             ppEndTr2.Caption := Trim(FieldbyName('EndTra').AsString) ;

          if Trim(FieldbyName('NumTra').AsString) <> '' then
             ppEndTr2.Caption := ppEndTr2.Caption+ ', ' +Trim(FieldbyName('NumTra').AsString);

          if Trim(FieldbyName('RefTra').AsString) <> '' then
             ppEndTr2.Caption := ppEndTr2.Caption+ ', ' +Trim(FieldbyName('RefTra').AsString);

          if Trim(FieldbyName('BaiTra').AsString) <> '' then
             ppEndTr2.Caption := ppEndTr2.Caption+ ' ' +Trim(FieldbyName('BaiTra').AsString);

          if Trim(FieldbyName('CidTra').AsString) <> '' then
             ppEndTr3.Caption := Trim(FieldbyName('CidTra').AsString);

          if Trim(FieldbyName('SigUfe').AsString) <> '' then
             ppEndTr3.Caption := ppEndTr3.Caption+ ' - ' +FieldbyName('SigUfe').AsString;

          if Trim(FieldbyName('CepTra').AsString) <> '' then
             ppEndTr3.Caption := ppEndTr3.Caption + ' Cep ' +copy(FieldbyName('CepTra').AsString,1,5)+ '-' +copy(FieldbyName('CepTra').AsString,6,3);

          if Trim( FieldbyName('PrtTra').AsString ) <> '' then
             ppEndTr4.Caption := 'TeleFone ('+ Trim(FieldbyName('PrtTra').AsString ) +') '+Trim(FieldbyName('FonTra').AsString)+' '
          else
             begin

             if Trim(FieldbyName('FonTra').AsString) <> '' then ppEndTr4.Caption := 'TeleFone '+ Trim(FieldbyName('FonTra').AsString)+' ';

          end;

          if Trim( FieldbyName('PrfTra').AsString ) <> '' then begin

             if Trim(ppEndTr4.Caption) <> '' then
                ppEndTr4.Caption := Trim(ppEndTr4.Caption) + ' Fax ('+ Trim(FieldbyName('PrfTra').AsString ) +') '+Trim(FieldbyName('FaxTra').AsString)
             else
                ppEndTr4.Caption := 'Fax ('+ Trim(FieldbyName('PrfTra').AsString ) +') '+Trim(FieldbyName('FaxTra').AsString)

             end   
          else
             begin

             if Trim(FieldbyName('FaxTra').AsString) <> '' then begin

                if Trim(ppEndTr4.Caption) <> '' then
                   ppEndTr4.Caption := ppEndTr4.Caption + ' Fax '+ Trim(FieldbyName('FaxTra').AsString)
                else
                   ppEndTr4.Caption := 'Fax '+ Trim(FieldbyName('FaxTra').AsString);

             end;
          end;
     end;
  end;
end;

procedure TfmManE08.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) or (GFlgGer = 'Sim') then begin

     RLLabel69.Visible := True;
     RLLabel70.Visible := True;

     ppTotCst.Visible := True;
     ppTotRen.Visible := True;

  end;

  RLMemo1.Lines.Clear;
  RLMemo3.Lines.Clear;
  RLMemo4.Lines.Clear;

  if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) or (GFlgGer = 'Sim') then begin

     RLMemo1.Lines.Add('Acrescimos');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedLibMedAcr.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedLibTotAcr.Value));

     RLMemo1.Lines.Add('Desconto Comercial');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedLibMedDsc.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedLibTotDsc.Value));

     RLMemo1.Lines.Add('Desc. ICMS Regiao');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedLibDscReg.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedLibTotDsr.Value));

     RLMemo1.Lines.Add('Desc. Condicao Pag.');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedLibDscCnd.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedLibTotDsp.Value));

     RLMemo1.Lines.Add('Acresc. Condicao Pag.');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedLibAcrCnd.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedLibTotAcp.Value));

     RLMemo1.Lines.Add('Total de Frete     ');
     RLMemo3.Lines.Add(' ');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedLibTotFrt.Value));

     RLMemo1.Lines.Add('');
     RLMemo3.Lines.Add('');
     RLMemo4.Lines.Add('');

     RLMemo1.Lines.Add('Total Comissao');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedLibMedCom.Value)+' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedLibTotCom.Value));

     RLMemo1.Lines.Add('');
     RLMemo3.Lines.Add('');
     RLMemo4.Lines.Add('');

     RLMemo1.Lines.Add('');
     RLMemo3.Lines.Add('');
     RLMemo4.Lines.Add('');

  end;

  RLMemo1.Lines.Add('Qtde de Itens');
  RLMemo3.Lines.Add(IntToStr(PedLibQtiLib.Value)+'        ');
  RLMemo4.Lines.Add('');

end;

procedure TfmManE08.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then begin

        if PedParFlgImp.Value = 'Nao' then RLPreviewSetup1.EnabledButtons := [];

     end;
  end;
     
  if PedParUsaDec.Value = 'Nao' then
     PedLb2UltQts.DisplayFormat := '###,###,##0';

  if PedLibIntFin.Value = 'Nao' then begin

     RLBand3.Visible := False;
     RLBand4.Visible := False;

  end;
end;

procedure TfmManE08.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ppPraMed.Caption := FormatFloat('##0.00',PraMed)+' Dias';
end;

end.
