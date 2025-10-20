unit ManE06;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery, RLXLSFilter;

type
  TfmManE06 = class(TForm)
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
    ppSldRe2: TRLDBText;
    ppCodUnd: TRLDBText;
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
    RLXLSFilter1: TRLXLSFilter;
    ppImagem: TRLImage;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    PedRe2CODCLP: TStringField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2VLQRE2: TFloatField;
    PedRe2CODUND: TStringField;
    PedRe2IPIRE2: TFloatField;
    PedRe2TOTGE2: TFloatField;
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
    PedRe2ICMRE2: TFloatField;
    PedRe2NRORE2: TIntegerField;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDraw5: TRLDraw;
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
    ppTotGe2: TRLLabel;
    PedRe2SLDRE2: TFloatField;
    PedResID_PEDRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResPRFRES: TIntegerField;
    PedResDTFRES: TDateTimeField;
    PedResCODCLI: TIntegerField;
    PedResCEPCLI: TStringField;
    PedResTENCLI: TStringField;
    PedResENDCLI: TStringField;
    PedResNUMCLI: TStringField;
    PedResREFCLI: TStringField;
    PedResBAICLI: TStringField;
    PedResCIDCLI: TStringField;
    PedResUFECLI: TStringField;
    PedResCODTRA: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODATD: TIntegerField;
    PedResDSCREG: TFloatField;
    PedResOB1RES: TStringField;
    PedResOB2RES: TStringField;
    PedResOB3RES: TStringField;
    PedResOB4RES: TStringField;
    PedResOB5RES: TStringField;
    PedResOB6RES: TStringField;
    PedResOB7RES: TStringField;
    PedResOB8RES: TStringField;
    ppTotRes: TRLLabel;
    ppTotIpi: TRLLabel;
    ppTotSub: TRLLabel;
    ppTotDsr: TRLLabel;
    ppTotGer: TRLLabel;
    ppTotCst: TRLLabel;
    ppTotRen: TRLLabel;
    PedResQTIRE3: TIntegerField;
    PedResDSCCND: TFloatField;
    PedResACRCND: TFloatField;
    PedRe2VDSRE2: TFloatField;
    PedRe2VACRE2: TFloatField;
    PedRe2VDPRE2: TFloatField;
    PedRe2VAPRE2: TFloatField;
    PedRe2VDRRE2: TFloatField;
    PedRe2VCSRE2: TFloatField;
    PedRe2TRBICM: TStringField;
    PedRe2BSCICM: TFloatField;
    PedRe2REDICM: TFloatField;
    PedRe2INCREV: TFloatField;
    PedRe2INCFIN: TFloatField;
    PedRe2TRBIPI: TStringField;
    PedRe2BSCIPI: TFloatField;
    PedRe2REDIPI: TFloatField;
    PedResCONSUM: TStringField;
    PedRe2BASESB: TFloatField;
    PedRe2ICMSUB: TFloatField;
    PedRe2MRGSUB: TFloatField;
    PedRe2PCORE2: TFloatField;
    PedParFLGIMP: TStringField;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1AfterPrint(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    PraMed     : real;
    Ger_QtdIte : integer;
    Ite_BasIcm : real;
    Ite_TotIcm : real;
    Ite_BasSub : real;
    Ite_TotSub : real;
    Ite_BasIpi : real;
    Ite_TotIpi : real;
    Ite_TotVen : real;
    Ite_TotCst : real;
    Ite_TotRes : real;
    Ite_TotDsr : real;
    Ite_TotDsc : real;
    Ite_TotAcr : real;
    Ite_TotDsp : real;
    Ite_TotAcp : real;
    Ite_TotGe2 : real;
    Ite_BasCom : real;
    Ite_TotCom : real;
    Ger_BasIcm : real;
    Ger_TotIcm : real;
    Ger_BasSub : real;
    Ger_TotSub : real;
    Ger_BasIpi : real;
    Ger_TotIpi : real;
    Ger_TotVen : real;
    Ger_TotCst : real;
    Ger_TotRes : real;
    Ger_TotDsr : real;
    Ger_TotDsc : real;
    Ger_TotAcr : real;
    Ger_TotDsp : real;
    Ger_TotAcp : real;
    Ger_BasCom : real;
    Ger_TotCom : real;
    Ger_TotGer : real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE06: TfmManE06;

implementation

uses SendMailOptions, ManGDB, Bbgeral, Bbfuncao;

{$R *.DFM}

procedure TfmManE06.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE06.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
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

procedure TfmManE06.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  VlpRe3 : real;
  QtdReg : integer;
begin

  VlpRe3 := fRound(Ger_TotGer/PedResQtiRe3.Value,2);

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

  ppTexto2.Lines.clear;
  ppTexto3.Lines.clear;
  ppTexto4.Lines.clear;
  ppTexto5.Lines.clear;

  PraMed := 0;
  QtdReg := 0;

  while not quSQL.Eof do begin

        if quSql.FieldbyName('VlpRe3').AsFloat > 0 then begin

           ppTexto2.Lines.Add(quSql.FieldbyName('PraRe3').AsString);

           ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',VlpRe3));

           PraMed := PraMed + quSql.FieldbyName('PraRe3').AsInteger;

           Inc(QtdReg);

        end;

        quSql.Next;

  end;

  if QtdReg > 0 then PraMed := PraMed / StrToFloat(IntToStr(QtdReg));

end;

procedure TfmManE06.RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
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

procedure TfmManE06.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  TotRen : real;
  MedDsc : real;
  MedAcr : real;
  MedCom : real;
begin

  TotRen := 0;
  MedDsc := 0;
  MedAcr := 0;
  MedCom := 0;
  
  Ger_TotGer := fRound(Ger_TotRes - Ger_TotDsr,2);

  if Ger_TotGer > 0 then begin

     if Ger_TotDsc > 0 then MedDsc := fRound((Ger_TotDsc * 100)/((Ger_TotRes + Ger_TotDsc) - Ger_TotAcr),2);
     if Ger_TotAcr > 0 then MedAcr := fRound((Ger_TotAcr * 100)/((Ger_TotRes + Ger_TotDsc) - Ger_TotAcr),2);
     if Ger_TotCom > 0 then MedCom := fRound((Ger_TotCom * 100)/((Ger_TotRes + Ger_TotDsc) - Ger_TotAcr),2);

     if Ger_TotCst > 0 then TotRen := fRound(((Ger_TotGer - Ger_TotCst) * 100)/Ger_TotCst,2);

  end;

  Ger_TotGer := fRound(Ger_TotGer + Ger_TotIpi + Ger_TotSub,2);

  ppTotRes.Caption := FormatFloat('###,###,##0.00',Ger_TotRes);
  ppTotIpi.Caption := FormatFloat('###,###,##0.00',Ger_TotIpi);
  ppTotSub.Caption := FormatFloat('###,###,##0.00',Ger_TotSub);
  ppTotDsr.Caption := FormatFloat('###,###,##0.00',Ger_TotDsr);
  ppTotCst.Caption := FormatFloat('###,###,##0.00',Ger_TotCst);
  ppTotGer.Caption := FormatFloat('###,###,##0.00',Ger_TotGer);
  
  ppTotRen.Caption := FormatFloat('###,###,##0.00',TotRen);  

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
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',MedAcr)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',Ger_TotAcr));

     RLMemo1.Lines.Add('Desconto Comercial');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',MedDsc)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',Ger_TotDsc));

     RLMemo1.Lines.Add('Desc. ICMS Regiao');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedResDscReg.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',Ger_TotDsr));

     RLMemo1.Lines.Add('Desc. Condicao Pag.');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedResDscCnd.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',Ger_TotDsp));

     RLMemo1.Lines.Add('Acresc. Condicao Pag.');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedResAcrCnd.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',Ger_TotAcp));

     RLMemo1.Lines.Add('');
     RLMemo3.Lines.Add('');
     RLMemo4.Lines.Add('');

     RLMemo1.Lines.Add('Total Comissao');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',MedCom)+' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',Ger_TotCom));

     RLMemo1.Lines.Add('');
     RLMemo3.Lines.Add('');
     RLMemo4.Lines.Add('');

     RLMemo1.Lines.Add('');
     RLMemo3.Lines.Add('');
     RLMemo4.Lines.Add('');

  end;

  RLMemo1.Lines.Add('Qtde de Itens');
  RLMemo3.Lines.Add(IntToStr(Ger_QtdIte)+'        ');
  RLMemo4.Lines.Add('');

end;

procedure TfmManE06.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if PedParUsaDec.Value = 'Nao' then
     PedRe2SldRe2.DisplayFormat := '###,###,##0';

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then begin

        if PedParFlgImp.Value = 'Nao' then RLPreviewSetup1.EnabledButtons := [];

     end;
  end;
     
  Ger_BasIcm := 0;
  Ger_TotIcm := 0;
  Ger_BasSub := 0;
  Ger_TotSub := 0;
  Ger_BasIpi := 0;
  Ger_TotIpi := 0;
  Ger_TotVen := 0;
  Ger_TotCst := 0;
  Ger_TotRes := 0;
  Ger_TotDsr := 0;
  Ger_TotDsc := 0;
  Ger_TotAcr := 0;
  Ger_TotDsp := 0;
  Ger_TotAcp := 0;
  Ger_BasCom := 0;
  Ger_TotCom := 0;
  Ger_TotGer := 0;
  Ger_QtdIte := 0;

end;

procedure TfmManE06.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ppPraMed.Caption := FormatFloat('##0.00',PraMed)+' Dias';
end;

procedure TfmManE06.RLDetailGrid1AfterPrint(Sender: TObject);
begin

  Inc(Ger_QtdIte);
  
  Ger_BasIcm := Ger_BasIcm + Ite_BasIcm;
  Ger_TotIcm := Ger_TotIcm + Ite_TotIcm;
  Ger_BasSub := Ger_BasSub + Ite_BasSub;
  Ger_TotSub := Ger_TotSub + Ite_TotSub;
  Ger_BasIpi := Ger_BasIpi + Ite_BasIpi;
  Ger_TotIpi := Ger_TotIpi + Ite_TotIpi;
  Ger_TotVen := Ger_TotVen + Ite_TotVen;
  Ger_TotCst := Ger_TotCst + Ite_TotCst;
  Ger_TotRes := Ger_TotRes + Ite_TotRes;
  Ger_TotDsr := Ger_TotDsr + Ite_TotDsr;
  Ger_TotDsc := Ger_TotDsc + Ite_TotDsc;
  Ger_TotAcr := Ger_TotAcr + Ite_TotAcr;
  Ger_TotDsp := Ger_TotDsp + Ite_TotDsp;
  Ger_TotAcp := Ger_TotAcp + Ite_TotAcp;
  Ger_BasCom := Ger_BasCom + Ite_BasCom;
  Ger_TotCom := Ger_TotCom + Ite_TotCom;
  
end;

procedure TfmManE06.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  Ite_BasCom := 0;
  Ite_TotCom := 0;
  Ite_TotDsc := fRound(PedRe2VdsRe2.Value * PedRe2SldRe2.Value,2);
  Ite_TotAcr := fRound(PedRe2VacRe2.Value * PedRe2SldRe2.Value,2);
  Ite_TotDsp := fRound(PedRe2VdpRe2.Value * PedRe2SldRe2.Value,2);
  Ite_TotAcp := fRound(PedRe2VapRe2.Value * PedRe2SldRe2.Value,2);
  Ite_TotDsr := fRound(PedRe2VdrRe2.Value * PedRe2SldRe2.Value,2);
  Ite_TotRes := fRound(PedRe2VlqRe2.Value * PedRe2SldRe2.Value,2);
  Ite_TotVen := fRound(PedRe2VlqRe2.Value * PedRe2SldRe2.Value,2);
  Ite_TotCst := fRound(PedRe2VcsRe2.Value * PedRe2SldRe2.Value,2);

  Ite_TotGe2 := fRound(Ite_TotRes - Ite_TotDsr,2);

  if PedRe2TrbIpi.Value = 'Sim' then begin
                  
     if PedRe2BscIpi.Value > 0 then begin

        Ite_BasIpi := fRound(Ite_TotGe2 - (Ite_TotGe2 - ((Ite_TotGe2 * PedRe2BscIpi.Value)/100)),2);
                     
        if PedRe2RedIpi.Value > 0 then Ite_BasIpi := fRound(Ite_BasIpi - (Ite_BasIpi - ((Ite_BasIpi * PedRe2RedIpi.Value)/100)),2);
                     
        Ite_TotIpi := fRound((Ite_BasIpi * PedRe2IpiRe2.Value)/100,2);
                     
     end;
  end;

  if PedRe2TrbIcm.Value = 'Sim' then begin

     if PedRe2BscIcm.Value > 0 then begin

        Ite_BasIcm := fRound(Ite_TotGe2 - (Ite_TotGe2 - ((Ite_TotGe2 * PedRe2BscIcm.Value)/100)),2);

        if Ite_TotIpi > 0 then begin

           if PedResConSum.Value = 'Sim' then begin

              if PedRe2IncFin.Value > 0 then begin

                 Ite_BasIcm := fRound((Ite_BasIcm + (Ite_TotIpi - (Ite_TotIpi - ((Ite_TotIpi * PedRe2IncFin.Value)/100)))),2);

                 Ite_BasIcm := fRound(Ite_BasIcm - (Ite_BasIcm - ((Ite_BasIcm * PedRe2BscIcm.Value)/100)),2);

              end;

              end
           else
              begin

              if PedRe2IncRev.Value > 0 then begin

                 Ite_BasIcm := fRound((Ite_BasIcm + (Ite_TotIpi - (Ite_TotIpi - ((Ite_TotIpi * PedRe2IncRev.Value)/100)))),2);

                 Ite_BasIcm := fRound(Ite_BasIcm - (Ite_BasIcm - ((Ite_BasIcm * PedRe2BscIcm.Value)/100)),2);

              end;
           end;
        end;

        if PedRe2RedIcm.Value > 0 then Ite_BasIcm := fRound(Ite_BasIcm - ((Ite_BasIcm * PedRe2RedIcm.Value)/100),2);

        Ite_TotIcm := fRound((Ite_BasIcm * PedRe2IcmRe2.Value)/100,2);

        if PedRe2BaseSb.Value > 0 then begin

           if PedResConSum.Value = 'Nao' then
              Ite_BasSub := fRound((Ite_BasIcm + Ite_TotIpi) - ((Ite_BasIcm + Ite_TotIpi) - (((Ite_BasIcm + Ite_TotIpi) * PedRe2BaseSb.Value)/100)),2)
           else
              Ite_BasSub := fRound(Ite_BasIcm - (Ite_BasIcm - ((Ite_BasIcm * PedRe2BaseSb.Value)/100)),2);

           if PedRe2MrgSub.Value > 0 then Ite_BasSub := fRound(Ite_BasSub + ((Ite_BasSub * PedRe2MrgSub.Value)/100),2);

           Ite_TotSub := fRound(((Ite_BasSub * PedRe2IcmSub.Value)/100) - Ite_TotIcm,2);

        end;
     end;
  end;

  Ite_TotGe2 := fRound(Ite_TotGe2 + Ite_TotIpi + Ite_TotSub,2);

  if PedRe2PcoRe2.Value > 0 then begin

     Ite_BasCom := fRound(Ite_TotRes - Ite_TotDsr,2);

     Ite_TotCom := fRound((PedRe2PcoRe2.Value * Ite_BasCom)/100,2);

  end;

  ppTotGe2.Caption := FormatFloat('###,###,##0.00',Ite_TotGe2);

end;

end.
