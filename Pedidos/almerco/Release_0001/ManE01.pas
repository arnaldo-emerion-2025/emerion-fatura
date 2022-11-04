unit ManE01;

interface

uses
  Wwquery, RLXLSFilter, Db, DBTables, RLPDFFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLPreviewForm, RLReport, Classes, Controls, Windows, Messages,
  SysUtils, Graphics, Forms, Dialogs;

type
  TfmManE01 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppNomEmp: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    PedGr2: TQuery;
    DsPedGr2: TDataSource;
    DsPedGer: TDataSource;
    RLLabel8: TRLLabel;
    quSql: TQuery;
    ppCodVen: TRLDBText;
    ppCodCli: TRLDBText;
    PedGer: TQuery;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    ppQtpGr2: TRLDBText;
    ppCodUnd: TRLDBText;
    ppTotGe2: TRLDBText;
    ppDesGr2: TRLDBText;
    ppVlqGr2: TRLDBText;
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
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    ppTotCst: TRLDBText;
    ppTotRen: TRLDBText;
    PedPar: TwwQuery;
    PedParEXIREN: TStringField;
    PedParTIPATD: TStringField;
    PedParUSADEC: TStringField;
    RLDraw13: TRLDraw;
    EdOb1Ger: TRLDBText;
    EdOb2Ger: TRLDBText;
    EdOb3Ger: TRLDBText;
    EdOb4Ger: TRLDBText;
    EdOb5Ger: TRLDBText;
    EdOb6Ger: TRLDBText;
    EdOb7Ger: TRLDBText;
    EdOb8Ger: TRLDBText;
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
    ppNroGr2: TRLDBText;
    ppIpiGr2: TRLDBText;
    ppIcmGr2: TRLDBText;
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
    PedGerID_PEDGER: TIntegerField;
    PedGerDTEGER: TDateTimeField;
    PedGerCODCLI: TIntegerField;
    PedGerCODVEN: TIntegerField;
    PedGerCODATD: TIntegerField;
    PedGerTOTITE: TFloatField;
    PedGerTOTIPI: TFloatField;
    PedGerTOTSUB: TFloatField;
    PedGerTOTDSR: TFloatField;
    PedGerTOTCST: TFloatField;
    PedGerTOTREN: TFloatField;
    PedGerMEDACR: TFloatField;
    PedGerTOTACR: TFloatField;
    PedGerTOTGER: TFloatField;
    PedGerMEDDSC: TFloatField;
    PedGerTOTDSC: TFloatField;
    PedGerDSCREG: TFloatField;
    PedGerOB1GER: TStringField;
    PedGerOB2GER: TStringField;
    PedGerOB3GER: TStringField;
    PedGerOB4GER: TStringField;
    PedGerOB5GER: TStringField;
    PedGerOB6GER: TStringField;
    PedGerOB7GER: TStringField;
    PedGerOB8GER: TStringField;
    PedGerQTIGR2: TIntegerField;
    PedGr2CODCLP: TStringField;
    PedGr2CODGRU: TStringField;
    PedGr2CODSUB: TStringField;
    PedGr2CODPRO: TStringField;
    PedGr2DESGR2: TStringField;
    PedGr2VLQGR2: TFloatField;
    PedGr2QTPGR2: TFloatField;
    PedGr2CODUND: TStringField;
    PedGr2ICMGR2: TFloatField;
    PedGr2CLSIPI: TStringField;
    PedGr2IPIGR2: TFloatField;
    PedGr2TOTGE2: TFloatField;
    PedGr2NROGR2: TIntegerField;
    PedGr2CODICL: TStringField;
    PedGr2CODITE: TStringField;
    pnClpGr2: TRLLabel;
    PedGr2CL1GR2: TStringField;
    PedGr2CL2GR2: TStringField;
    PedGr2CL3GR2: TStringField;
    PedGerCOMCLI: TFloatField;
    PedGerTOTCLI: TFloatField;
    RLLabel71: TRLLabel;
    ppTotCli: TRLDBText;
    ppPerCli: TRLDBText;
    PedGr2TRBSUB: TStringField;
    PedGr2MRGSUB: TFloatField;
    RLLabel11: TRLLabel;
    RLDBText7: TRLDBText;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE01: TfmManE01;

implementation

uses SendMailOptions, ManGDB, Bbgeral;

{$R *.DFM}

procedure TfmManE01.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE01.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
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

  ppPedido.Caption := 'GERENCIAMENTO No. '+fNumZeros(IntToStr(PedGerId_PedGer.Value),6);

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
               '        FinCli.CeeCli,'+
               '        FinCli.TeeCli,'+
               '        FinCli.EneCli,'+
               '        FinCli.NreCli,'+
               '        FinCli.RfeCli,'+
               '        FinCli.BaeCli,'+
               '        FinCli.CieCli,'+
               '        FinCli.UfeCli,'+
               '        FinCli.ComCli,'+
               '        FinCli.Pt3Cli,'+
               '        FinCli.Fo3Cli,'+
               '        FinCli.Em1Cli '+
               ' From FinCli'+
               ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedGerCodCli.Value));
       Open;

       ppNomCli.Caption := Trim(FieldbyName('NomCli').AsString);
       ppCgcCli.Caption := fFormatCgcCpf(FieldbyName('CgcCli').AsString);
       ppComCli.Caption := Trim(FieldbyName('ComCli').AsString);
       ppEmaCli.Caption := Trim(FieldbyName('Em1Cli').AsString);

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

       ppBacCli.Caption := Trim(FieldbyName('BacCli').AsString);
       ppCicCli.Caption := Trim(FieldbyName('CicCli').AsString);
       
       if Trim(FieldbyName('CecCli').AsString) <> '' then
          ppCecCli.Caption := copy(Trim(FieldbyName('CecCli').AsString),1,5)+ '-' +copy(Trim(FieldbyName('CecCli').AsString),6,3)
       else
          ppCecCli.Caption := '';

       ppUfcCli.Caption := Trim(FieldbyName('UfcCli').AsString);

       if Trim(FieldbyName('TeeCli').AsString) <> '' then
          ppEndCli.Caption := Trim(FieldbyName('TeeCli').AsString)+ ' ' +Trim(FieldbyName('EneCli').AsString)
       else
          ppEndCli.Caption := Trim(FieldbyName('EneCli').AsString);

       if Trim(FieldbyName('NreCli').AsString) <> '' then
          ppEndCli.Caption := ppEndCli.Caption+ ', ' +Trim(FieldbyName('NreCli').AsString);

       if Trim(FieldbyName('RfeCli').AsString) <> '' then
          ppEndCli.Caption := ppEndCli.Caption+ ' ' +Trim(FieldbyName('RfeCli').AsString);

       ppBaiCli.Caption := Trim(FieldbyName('BaeCli').AsString);
       ppCidCli.Caption := Trim(FieldbyName('CieCli').AsString);

       if Trim(FieldbyName('CeeCli').AsString) <> '' then
          ppCepCli.Caption := copy(Trim(FieldbyName('CeeCli').AsString),1,5)+ '-' +copy(Trim(FieldbyName('CeeCli').AsString),6,3)
       else
          ppCepCli.Caption := '';

       ppUfeCli.Caption := Trim(FieldbyName('UfeCli').AsString);

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedGerCodVen.Value));
       Open;

       ppApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerUsu.EmaUsu,'+
               '        GerUsu.PrtUsu,'+
               '        GerUsu.FonUsu '+
               ' From GerUsu'+
               ' Where GerUsu.CodVen = '+ QuotedStr(IntToStr(PedGerCodVen.Value));
       Open;

       if Trim(FieldbyName('PrtUsu').AsString) <> '' then
          ppFonVen.Caption := '('+ Trim(FieldbyName('PrtUsu').AsString) +') '+Trim(FieldbyName('FonUsu').AsString)
       else
          ppFonVen.Caption := Trim(FieldbyName('FonUsu').AsString);

       ppEmaVen.Caption := Trim(FieldbyName('EmaUsu').AsString);

  end;
  
  if PedGerCodAtd.Value > 0 then begin

     if Trim(PedParTipAtd.Value) = 'Atendente' then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd Where FinAtd.CodAtd = '+ QuotedStr(IntToStr(PedGerCodAtd.Value));
             Open;

             ppApeAtd.Caption := Trim(FieldbyName('ApeAtd').AsString);

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select GerUsu.EmaUsu,'+
                     '        GerUsu.PrtUsu,'+
                     '        GerUsu.FonUsu '+
                     ' From GerUsu'+
                     ' Where GerUsu.CodAtd = '+ QuotedStr(IntToStr(PedGerCodAtd.Value));
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
             Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedGerCodAtd.Value));
             Open;

             ppApeAtd.Caption := FieldbyName('ApeVen').AsString;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select GerUsu.EmaUsu,'+
                     '        GerUsu.PrtUsu,'+
                     '        GerUsu.FonUsu '+
                     ' From GerUsu'+
                     ' Where GerUsu.CodVen = '+ QuotedStr(IntToStr(PedGerCodAtd.Value));
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

procedure TfmManE01.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) or (GFlgGer = 'Sim') then begin

     RLLabel69.Visible := True;
     RLLabel70.Visible := True;

     ppTotCst.Visible := True;
     ppTotRen.Visible := True;

  end;

  if PedGerTotCli.Value > 0 then begin

     RLLabel71.Visible := True;

     ppTotCli.Visible := True;
     ppPerCli.Visible := True;

  end;

  RLMemo1.Lines.Clear;
  RLMemo3.Lines.Clear;
  RLMemo4.Lines.Clear;

  if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) or (GFlgGer = 'Sim') then begin

     RLMemo1.Lines.Add('Acrescimos');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedGerMedAcr.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedGerTotAcr.Value));

     RLMemo1.Lines.Add('Desconto Comercial');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedGerMedDsc.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedGerTotDsc.Value));

     RLMemo1.Lines.Add('Desc. ICMS Regiao');
     RLMemo3.Lines.Add(FormatFloat('###,###,##0.00',PedGerDscReg.Value)+ ' (%)');
     RLMemo4.Lines.Add(FormatFloat('###,##0.00',PedGerTotDsr.Value));

     RLMemo1.Lines.Add('');
     RLMemo3.Lines.Add('');
     RLMemo4.Lines.Add('');

     RLMemo1.Lines.Add('');
     RLMemo3.Lines.Add('');
     RLMemo4.Lines.Add('');

  end;

  RLMemo1.Lines.Add('Qtde de Itens');
  RLMemo3.Lines.Add(IntToStr(PedGerQtiGr2.Value)+'        ');
  RLMemo4.Lines.Add('');

end;

procedure TfmManE01.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if PedParUsaDec.Value = 'Nao' then
     PedGr2QtpGr2.DisplayFormat := '###,###,##0';

end;

procedure TfmManE01.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  pnClpGr2.Caption := '';
  
  if Trim(PedGr2Cl1Gr2.Value) <> '' then pnClpGr2.Caption := 'Grupo '+Trim(PedGr2Cl1Gr2.Value);

  if Trim(PedGr2Cl2Gr2.Value) <> '' then begin

     if Trim(pnClpGr2.Caption) <> '' then
        pnClpGr2.Caption := Trim(pnClpGr2.Caption)+ ' Op. ' +Trim(PedGr2Cl2Gr2.Value)
     else
        pnClpGr2.Caption := 'Op. '+Trim(PedGr2Cl2Gr2.Value);

  end;      
     
  if Trim(PedGr2Cl3Gr2.Value) <> '' then begin

     if Trim(pnClpGr2.Caption) <> '' then
        pnClpGr2.Caption := Trim(pnClpGr2.Caption)+ ' Posicao ' +Trim(PedGr2Cl3Gr2.Value)
     else
        pnClpGr2.Caption := 'Posicao '+Trim(PedGr2Cl3Gr2.Value);

  end;      
end;

end.
