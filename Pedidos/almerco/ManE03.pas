unit ManE03;

interface

uses
  Wwquery, RLXLSFilter, Db, DBTables, RLPDFFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLPreviewForm, RLReport, Classes, Controls, Windows, Messages,
  SysUtils, Forms, Dialogs, Provider, Wwdatsrc;

type
  TfmManE03 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppNomEmp: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    PedCt2: TQuery;
    DsPedCt2: TDataSource;
    DsPedCta: TDataSource;
    RLLabel8: TRLLabel;
    quSql: TQuery;
    ppCodVen: TRLDBText;
    ppTipCon: TRLDBText;
    PedCta: TQuery;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    ppQtpCt2: TRLDBText;
    ppCodUnd: TRLDBText;
    ppTotGe2: TRLDBText;
    ppDesCt2: TRLDBText;
    ppVlqCt2: TRLDBText;
    ppCodAtd: TRLDBText;
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
    RLLabel1: TRLLabel;
    RLDBText1: TRLDBText;
    RLXLSFilter1: TRLXLSFilter;
    ppImagem: TRLImage;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    PedPar: TwwQuery;
    PedParEXIREN: TStringField;
    PedParTIPATD: TStringField;
    PedParUSADEC: TStringField;
    RLDraw13: TRLDraw;
    EdOb1Cta: TRLDBText;
    EdOb2Cta: TRLDBText;
    EdOb3Cta: TRLDBText;
    EdOb4Cta: TRLDBText;
    EdOb5Cta: TRLDBText;
    EdOb6Cta: TRLDBText;
    EdOb7Cta: TRLDBText;
    EdOb8Cta: TRLDBText;
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
    RLDraw17: TRLDraw;
    RLLabel93: TRLLabel;
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
    ppNroCt2: TRLDBText;
    ppIpiCt2: TRLDBText;
    ppIcmCt2: TRLDBText;
    RLDraw5: TRLDraw;
    ppCodIte: TRLDBText;
    ppClsIpi: TRLDBText;
    RLBand2: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    ppApeVen: TRLLabel;
    ppApeAtd: TRLLabel;
    ppCodICl: TRLDBText;
    RLDraw1: TRLDraw;
    RLBand3: TRLBand;
    RLDraw7: TRLDraw;
    RLLabel2: TRLLabel;
    ppPraMed: TRLLabel;
    RLDraw8: TRLDraw;
    PedCtaID_PEDCTA: TIntegerField;
    PedCtaDTECTA: TDateTimeField;
    PedCtaCODCLI: TIntegerField;
    PedCtaCODVEN: TIntegerField;
    PedCtaCODATD: TIntegerField;
    PedCtaTOTITE: TFloatField;
    PedCtaTOTIPI: TFloatField;
    PedCtaTOTSUB: TFloatField;
    PedCtaTOTDSR: TFloatField;
    PedCtaTOTDSP: TFloatField;
    PedCtaTOTCST: TFloatField;
    PedCtaTOTREN: TFloatField;
    PedCtaACRCND: TFloatField;
    PedCtaDSCCND: TFloatField;
    PedCtaMEDACR: TFloatField;
    PedCtaTOTACR: TFloatField;
    PedCtaTOTACP: TFloatField;
    PedCtaTOTGER: TFloatField;
    PedCtaMEDDSC: TFloatField;
    PedCtaTOTDSC: TFloatField;
    PedCtaDSCREG: TFloatField;
    PedCtaOB1CTA: TStringField;
    PedCtaOB2CTA: TStringField;
    PedCtaOB3CTA: TStringField;
    PedCtaOB4CTA: TStringField;
    PedCtaOB5CTA: TStringField;
    PedCtaOB6CTA: TStringField;
    PedCtaOB7CTA: TStringField;
    PedCtaOB8CTA: TStringField;
    PedCtaQTICT2: TIntegerField;
    PedCtaSITCTA: TStringField;
    PedCtaNOMCLI: TStringField;
    PedCtaTIPCON: TStringField;
    PedCtaNOMCON: TStringField;
    ppNomCon: TRLDBText;
    RLLabel7: TRLLabel;
    RLLabel63: TRLLabel;
    ppCodCli: TRLDBText;
    ppNomCli: TRLLabel;
    ppFonCli: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel62: TRLLabel;
    ppCgcCli: TRLLabel;
    ppEmaCli: TRLLabel;
    PedCt2CODCLP: TStringField;
    PedCt2CODGRU: TStringField;
    PedCt2CODSUB: TStringField;
    PedCt2CODPRO: TStringField;
    PedCt2DESCT2: TStringField;
    PedCt2VLQCT2: TFloatField;
    PedCt2QTPCT2: TFloatField;
    PedCt2CODUND: TStringField;
    PedCt2ICMCT2: TFloatField;
    PedCt2CLSIPI: TStringField;
    PedCt2IPICT2: TFloatField;
    PedCt2TOTGE2: TFloatField;
    PedCt2NROCT2: TIntegerField;
    PedCt2CODICL: TStringField;
    PedCt2CODITE: TStringField;
    PedCtaOBSENT: TStringField;
    PedCtaOBSVAL: TStringField;
    RLLabel9: TRLLabel;
    ppObsVal: TRLDBText;
    RLLabel10: TRLLabel;
    ppObsEnt: TRLDBText;
    PedCtaCOMCLI: TFloatField;
    PedCtaTOTCLI: TFloatField;
    RLLabel71: TRLLabel;
    ppTotCli: TRLDBText;
    ppPerCli: TRLDBText;
    RLLabel11: TRLLabel;
    PedCt2TRBSUB: TStringField;
    PedCt2MRGSUB: TFloatField;
    RLDBText7: TRLDBText;
    PedCt2OBSCT2: TStringField;
    RLDBText8: TRLDBText;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
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
  fmManE03: TfmManE03;

implementation

uses SendMailOptions, ManGDB, Bbgeral;

{$R *.DFM}

procedure TfmManE03.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE03.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
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

  ppPedido.Caption := 'COTAÇÃO No. '+fNumZeros(IntToStr(PedCtaId_PedCta.Value),6);

  if PedCtaCodCli.Value > 0 then begin
  
     with quSQL,SQL do begin

          Close;
          Text := ' Select FinCli.NomCli,'+
                  '        FinCli.CgcCli,'+
                  '        FinCli.Pt3Cli,'+
                  '        FinCli.Fo3Cli,'+
                  '        FinCli.Em1Cli '+
                  ' From FinCli'+
                  ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedCtaCodCli.Value));
          Open;

          ppNomCli.Caption := Trim(FieldbyName('NomCli').AsString);
          ppCgcCli.Caption := fFormatCgcCpf(FieldbyName('CgcCli').AsString);
          ppEmaCli.Caption := Trim(FieldbyName('Em1Cli').AsString);

          if Trim(FieldbyName('Pt3Cli').AsString) <> '' then
             ppFonCli.Caption := '('+ Trim(FieldbyName('Pt3Cli').AsString) +') '+Trim(FieldbyName('Fo3Cli').AsString)
          else
             ppFonCli.Caption := Trim(FieldbyName('Fo3Cli').AsString);

     end;

     end
  else
     begin

     ppNomCli.Caption := '';
     ppCgcCli.Caption := '';
     ppEmaCli.Caption := '';
     ppFonCli.Caption := '';

  end;
     
  with quSQL,SQL do begin

       Close;
       Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedCtaCodVen.Value));
       Open;

       ppApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerUsu.EmaUsu,'+
               '        GerUsu.PrtUsu,'+
               '        GerUsu.FonUsu '+
               ' From GerUsu'+
               ' Where GerUsu.CodVen = '+ QuotedStr(IntToStr(PedCtaCodVen.Value));
       Open;

       if Trim(FieldbyName('PrtUsu').AsString) <> '' then
          ppFonVen.Caption := '('+ Trim(FieldbyName('PrtUsu').AsString) +') '+Trim(FieldbyName('FonUsu').AsString)
       else
          ppFonVen.Caption := Trim(FieldbyName('FonUsu').AsString);

       ppEmaVen.Caption := Trim(FieldbyName('EmaUsu').AsString);

  end;
  
  if PedCtaCodAtd.Value > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Atendente' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedCtaCodAtd.Value));
             Open;

             ppApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select GerUsu.EmaUsu,'+
                     '        GerUsu.PrtUsu,'+
                     '        GerUsu.FonUsu '+
                     ' From GerUsu'+
                     ' Where GerUsu.CodAtd = '+ QuotedStr(IntToStr(PedCtaCodAtd.Value));
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
             Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedCtaCodAtd.Value));
             Open;

             ppApeAtd.Caption := FieldbyName('ApeVen').AsString;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select GerUsu.EmaUsu,'+
                     '        GerUsu.PrtUsu,'+
                     '        GerUsu.FonUsu '+
                     ' From GerUsu'+
                     ' Where GerUsu.CodVen = '+ QuotedStr(IntToStr(PedCtaCodAtd.Value));
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

procedure TfmManE03.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  QtdReg : integer;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select PedCt3.PraCt3,'+
               '        PedCt3.VlpCt3 '+
               ' From PedCt3'+
               ' Where PedCt3.Id_PedCta = :Id_PedCta'+
               ' Order by PedCt3.NroCt3';

       with Params do begin

            Params[0].AsInteger := PedCtaId_PedCta.Value;

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

        if quSql.FieldbyName('VlpCt3').AsFloat > 0 then begin

           ppTexto2.Lines.Add(quSql.FieldbyName('PraCt3').AsString);

           ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpCt3').AsFloat));

           PraMed := PraMed + quSql.FieldbyName('PraCt3').AsInteger;

           Inc(QtdReg);

        end;

        quSql.Next;

  end;

  if QtdReg > 0 then PraMed := PraMed / StrToFloat(IntToStr(QtdReg));

end;

procedure TfmManE03.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  if PedCtaTotCli.Value > 0 then begin

     RLLabel71.Visible := True;

     ppTotCli.Visible := True;
     ppPerCli.Visible := True;

  end;

  RLMemo1.Lines.Clear;
  RLMemo3.Lines.Clear;
  RLMemo4.Lines.Clear;

  RLMemo1.Lines.Add('Qtde de Itens');
  RLMemo3.Lines.Add(IntToStr(PedCtaQtiCt2.Value)+'        ');
  RLMemo4.Lines.Add('');

end;

procedure TfmManE03.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if PedParUsaDec.Value = 'Nao' then
     PedCt2QtpCt2.DisplayFormat := '###,###,##0';

end;

procedure TfmManE03.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ppPraMed.Caption := FormatFloat('##0.00',PraMed)+' Dias';
end;

end.
