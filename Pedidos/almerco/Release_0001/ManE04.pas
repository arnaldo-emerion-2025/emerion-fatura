unit ManE04;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery, RLXLSFilter;

type
  TfmManE04 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppNomEmp: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    PedRe2: TQuery;
    DsPedRe2: TDataSource;
    DsPedRes: TDataSource;
    RLLabel8: TRLLabel;
    quSql: TQuery;
    ppCodVen: TRLDBText;
    ppCodCli: TRLDBText;
    PedRes: TQuery;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    ppQtpRe3: TRLDBText;
    ppCodUnd: TRLDBText;
    ppTotGe3: TRLDBText;
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
    ppTexto2: TRLMemo;
    RLLabel21: TRLLabel;
    ppTexto3: TRLMemo;
    RLLabel23: TRLLabel;
    ppTexto4: TRLMemo;
    ppTexto5: TRLMemo;
    RLLabel24: TRLLabel;
    RLBand6: TRLBand;
    RLLabel25: TRLLabel;
    ppEndTr1: TRLLabel;
    ppEndTr2: TRLLabel;
    ppEndTr4: TRLLabel;
    ppEndTr3: TRLLabel;
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    PedResID_PEDRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResPRFRES: TIntegerField;
    PedResDTFRES: TDateTimeField;
    PedResCODCLI: TIntegerField;
    PedResCEPCLI: TStringField;
    PedResTENCLI: TStringField;
    PedResENDCLI: TStringField;
    PedResNUMCLI: TStringField;
    PedResBAICLI: TStringField;
    PedResCIDCLI: TStringField;
    PedResUFECLI: TStringField;
    PedResCODTRA: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODATD: TIntegerField;
    PedResTOTRES: TFloatField;
    PedResTOTIPI: TFloatField;
    PedResTOTFRT: TFloatField;
    PedResTOTSUB: TFloatField;
    PedResTOTDSR: TFloatField;
    PedResTOTDSP: TFloatField;
    PedResTOTCST: TFloatField;
    PedResTOTREN: TFloatField;
    PedResACRCND: TFloatField;
    PedResDSCCND: TFloatField;
    PedResTOTACR: TFloatField;
    PedResTOTACP: TFloatField;
    PedResTOTGER: TFloatField;
    PedResMEDDSC: TFloatField;
    PedResTOTDSC: TFloatField;
    PedResDSCREG: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResOB1RES: TStringField;
    PedResOB2RES: TStringField;
    PedResOB3RES: TStringField;
    PedResOB4RES: TStringField;
    PedResOB5RES: TStringField;
    PedResOB6RES: TStringField;
    PedResOB7RES: TStringField;
    PedResOB8RES: TStringField;
    PedResQTIRE2: TIntegerField;
    RLXLSFilter1: TRLXLSFilter;
    ppImagem: TRLImage;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    ppTotCst: TRLDBText;
    ppTotRen: TRLDBText;
    PedRe2CODCLP: TStringField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2VLQRE2: TFloatField;
    PedRe2QTPRE2: TFloatField;
    PedRe2CODUND: TStringField;
    PedRe2IPIRE2: TFloatField;
    PedRe2TOTGE2: TFloatField;
    PedPar: TwwQuery;
    PedParEXIREN: TStringField;
    PedParTIPATD: TStringField;
    PedParUSADEC: TStringField;
    PedResMODPFA: TStringField;
    PedResREFCLI: TStringField;
    PedResMEDACR: TFloatField;
    RLDraw13: TRLDraw;
    EdOb1Res: TRLDBText;
    EdOb2Res: TRLDBText;
    EdOb3Res: TRLDBText;
    EdOb4Res: TRLDBText;
    EdOb5Res: TRLDBText;
    EdOb6Res: TRLDBText;
    EdOb7Res: TRLDBText;
    EdOb8Res: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel32: TRLLabel;
    PedResSITRES: TStringField;
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
    PedRe2ICMRE2: TFloatField;
    PedRe2NRORE2: TIntegerField;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    PedRe2CODITE: TStringField;
    RLDBText11: TRLDBText;
    PedRe2CLSIPI: TStringField;
    RLDBText12: TRLDBText;
    RLBand2: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    ppApeVen: TRLLabel;
    ppApeAtd: TRLLabel;
    PedRe2CODICL: TStringField;
    RLDBText13: TRLDBText;
    RLDraw1: TRLDraw;
    RLBand3: TRLBand;
    RLDraw7: TRLDraw;
    RLLabel2: TRLLabel;
    ppPraMed: TRLLabel;
    RLDraw8: TRLDraw;
    PedParFLGIMP: TStringField;
    RLLabel71: TRLLabel;
    ppTotCli: TRLDBText;
    PedResCOMCLI: TFloatField;
    PedResTOTCLI: TFloatField;
    ppPerCli: TRLDBText;
    PedResINTFIN: TStringField;
    RLLabel11: TRLLabel;
    RLDBText14: TRLDBText;
    PedRe2TRBSUB: TStringField;
    PedRe2OBSRE2: TStringField;
    RLDraw2: TRLDraw;
    RLDBText15: TRLDBText;
    RLDBText16: TRLDBText;
    PedResFLGANT: TStringField;
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
  fmManE04: TfmManE04;

implementation

uses SendMailOptions, ManGDB, Bbgeral;

{$R *.DFM}

procedure TfmManE04.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE04.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin

  if FileExists('C:\Emerion\Print.bmp') then
     ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     ppImagem.Picture.Bitmap.FreeImage;

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

  ppPedido.Caption := 'PEDIDO No. '+fNumZeros(IntToStr(PedResId_PedRes.Value),6);
     
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
               ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedResCodCli.Value));
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

  if Trim(PedResTenCli.Value) <> '' then
     ppEndCli.Caption := Trim(PedResTenCli.Value)+ ' ' +Trim(PedResEndCli.Value)
  else
     ppEndCli.Caption := Trim(PedResEndCli.Value);

  if Trim(PedResNumCli.Value) <> '' then
     ppEndCli.Caption := ppEndCli.Caption+ ', ' +Trim(PedResNumCli.Value);

  if Trim(PedResRefCli.Value) <> '' then
     ppEndCli.Caption := ppEndCli.Caption+ ' ' +Trim(PedResRefCli.Value);

  ppCidCli.Caption := Trim(PedResCidCli.Value);
  ppBaiCli.Caption := Trim(PedResBaiCli.Value);
  ppUfeCli.Caption := Trim(PedResUfeCli.Value);

  if Trim(PedResCepCli.Value) <> '' then
     ppCepCli.Caption := copy(PedResCepCli.Value,1,5)+ '-' +copy(PedResCepCli.Value,6,3)
  else
     ppCepCli.Caption := '';

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedResCodVen.Value));
       Open;

       ppApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerUsu.EmaUsu,'+
               '        GerUsu.PrtUsu,'+
               '        GerUsu.FonUsu '+
               ' From GerUsu'+
               ' Where GerUsu.CodVen = '+ QuotedStr(IntToStr(PedResCodVen.Value));
       Open;

       if Trim(FieldbyName('PrtUsu').AsString) <> '' then
          ppFonVen.Caption := '('+ Trim(FieldbyName('PrtUsu').AsString) +') '+Trim(FieldbyName('FonUsu').AsString)
       else
          ppFonVen.Caption := Trim(FieldbyName('FonUsu').AsString);

       ppEmaVen.Caption := Trim(FieldbyName('EmaUsu').AsString);

  end;
  
  if PedResCodAtd.Value > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Atendente' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
             Open;

             ppApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select GerUsu.EmaUsu,'+
                     '        GerUsu.PrtUsu,'+
                     '        GerUsu.FonUsu '+
                     ' From GerUsu'+
                     ' Where GerUsu.CodAtd = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
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
             Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
             Open;

             ppApeAtd.Caption := FieldbyName('ApeVen').AsString;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select GerUsu.EmaUsu,'+
                     '        GerUsu.PrtUsu,'+
                     '        GerUsu.FonUsu '+
                     ' From GerUsu'+
                     ' Where GerUsu.CodVen = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
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

procedure TfmManE04.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  QtdReg : integer;
begin

  ppTexto2.Lines.clear;
  ppTexto3.Lines.clear;
  ppTexto4.Lines.clear;
  ppTexto5.Lines.clear;

  if PedResIntFin.Value = 'Sim' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select PedRe3.PraRe3,'+
                  '        PedRe3.VlpRe3 '+
                  ' From PedRe3'+
                  ' Where PedRe3.Id_PedRes = :Id_PedRes'+
                  ' Order by PedRe3.NroRe3';

          with Params do begin

               Params[0].AsInteger := PedResId_PedRes.Value;

          end;

          Open;
          First;

     end;

     PraMed := 0;
     QtdReg := 0;

     while not quSQL.Eof do begin

           if quSql.FieldbyName('VlpRe3').AsFloat > 0 then begin

              ppTexto2.Lines.Add(quSql.FieldbyName('PraRe3').AsString);

              ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpRe3').AsFloat));

              PraMed := PraMed + quSql.FieldbyName('PraRe3').AsInteger;

              Inc(QtdReg);

           end;

           quSql.Next;

     end;

     if QtdReg > 0 then PraMed := PraMed / StrToFloat(IntToStr(QtdReg));
     
  end;
end;

procedure TfmManE04.RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppEndTr1.Caption := '';
  ppEndTr2.Caption := '';
  ppEndTr3.Caption := '';
  ppEndTr4.Caption := '';

  if PedResCodTra.Value > 0 then begin
  
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
                  ' Where FinTra.CodTra = '+ QuotedStr(IntToStr(PedResCodTra.Value));
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

procedure TfmManE04.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  if Trim(PedResSitRes.Value) <> 'Aguardando Pagamento Antecipado' then begin

     if (Trim(PedResSitRes.Value) = 'Aguardando Consultas de Cadastro')  or
        (Trim(PedResSitRes.Value) = 'Aguardando Liberacao do Depto Comercial')  or
        (Trim(PedResSitRes.Value) = 'Aguardando Liberacao do Depto Financeiro') then RLLabel28.Visible := True;

     end
  else
     RLLabel32.Visible := True;

  if PedResTotCli.Value > 0 then begin

     RLLabel71.Visible := True;

     ppTotCli.Visible := True;
     ppPerCli.Visible := True;

  end;
  
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
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedResMedAcr.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedResTotAcr.Value));

     RLMemo1.Lines.Add('Desconto Comercial');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedResMedDsc.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedResTotDsc.Value));

     RLMemo1.Lines.Add('Desc. ICMS Regiao');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedResDscReg.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedResTotDsr.Value));

     RLMemo1.Lines.Add('Desc. Condicao Pag.');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedResDscCnd.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedResTotDsp.Value));

     RLMemo1.Lines.Add('Acresc. Condicao Pag.');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedResAcrCnd.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedResTotAcp.Value));

     RLMemo1.Lines.Add('Total de Frete     ');
     RLMemo3.Lines.Add(' ');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedResTotFrt.Value));

     RLMemo1.Lines.Add('');
     RLMemo3.Lines.Add('');
     RLMemo4.Lines.Add('');

     RLMemo1.Lines.Add('Total Comissao');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedResMedCom.Value)+' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedResTotCom.Value));

     RLMemo1.Lines.Add('');
     RLMemo3.Lines.Add('');
     RLMemo4.Lines.Add('');

     RLMemo1.Lines.Add('');
     RLMemo3.Lines.Add('');
     RLMemo4.Lines.Add('');

  end;

  RLMemo1.Lines.Add('Qtde de Itens');
  RLMemo3.Lines.Add(IntToStr(PedResQtiRe2.Value)+'        ');
  RLMemo4.Lines.Add('');

end;

procedure TfmManE04.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if PedParUsaDec.Value = 'Nao' then
     PedRe2QtpRe2.DisplayFormat := '###,###,##0';

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then begin

        if PedParFlgImp.Value = 'Nao' then RLPreviewSetup1.EnabledButtons := [];

     end;
  end;

  if PedResIntFin.Value = 'Nao' then begin

     RLBand3.Visible := False;
     RLBand4.Visible := False;

  end;   
end;

procedure TfmManE04.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ppPraMed.Caption := FormatFloat('##0.00',PraMed)+' Dias';
end;

end.
