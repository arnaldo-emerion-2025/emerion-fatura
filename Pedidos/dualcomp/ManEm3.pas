unit ManEm3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery;

type
  TfmManEm3 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppImagem: TRLImage;
    ppApeEmp: TRLLabel;
    ppNomEmp: TRLLabel;
    ppEndEmp: TRLLabel;
    ppRefEmp: TRLLabel;
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
    ppNumCta: TRLLabel;
    ppCodCli: TRLLabel;
    ppCodVen: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    ppUfeCta: TRLLabel;
    RLBand2: TRLBand;
    RLLabel38: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLBand3: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel46: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText7: TRLDBText;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel57: TRLLabel;
    ppObsCnd: TRLLabel;
    ppObsEnt: TRLLabel;
    ppObsVal: TRLLabel;
    ppObsCta: TRLMemo;
    PedCta: TwwQuery;
    PedCt2: TwwQuery;
    PedCtaCODEMP: TIntegerField;
    PedCtaDTECTA: TDateTimeField;
    PedCtaNUMCTA: TIntegerField;
    PedCtaHRECTA: TStringField;
    PedCtaCODVEN: TIntegerField;
    PedCtaCODPFA: TStringField;
    PedCtaTIPPFA: TStringField;
    PedCtaUFECTA: TStringField;
    PedCtaQTICTA: TIntegerField;
    PedCtaSEQITE: TIntegerField;
    PedCtaCODCLI: TIntegerField;
    PedCtaNOMCLI: TStringField;
    PedCtaBASIPI: TFloatField;
    PedCtaTOTIPI: TFloatField;
    PedCtaBASICM: TFloatField;
    PedCtaTOTICM: TFloatField;
    PedCtaBASSUB: TFloatField;
    PedCtaTOTSUB: TFloatField;
    PedCtaTOTITE: TFloatField;
    PedCtaTOTREN: TFloatField;
    PedCtaTOTGER: TFloatField;
    PedCtaDSCREG: TFloatField;
    PedCtaDSCCOM: TFloatField;
    PedCtaMEDDCO: TFloatField;
    PedCtaMEDPRM: TFloatField;
    PedCtaMEDDSC: TFloatField;
    PedCtaMEDACR: TFloatField;
    PedCtaTOTDSC: TFloatField;
    PedCtaTOTDSR: TFloatField;
    PedCtaTOTDSP: TFloatField;
    PedCtaTOTACR: TFloatField;
    PedCtaTOTDCO: TFloatField;
    PedCtaTOTVEN: TFloatField;
    PedCtaTOTCST: TFloatField;
    PedCtaCODATD: TIntegerField;
    PedCtaCODUSU: TIntegerField;
    PedCtaCODFIL: TIntegerField;
    PedCtaLANEST: TStringField;
    PedCtaATUEST: TStringField;
    PedCtaINTFIN: TStringField;
    PedCtaFLGTAB: TStringField;
    PedCtaFLGCTB: TStringField;
    PedCtaSEQCTA: TStringField;
    PedCtaCONSUM: TStringField;
    PedCtaCODIPI: TStringField;
    PedCtaTIPIPI: TStringField;
    PedCtaTRBIPI: TStringField;
    PedCtaREDIPI: TFloatField;
    PedCtaBSCIPI: TFloatField;
    PedCtaCODICM: TStringField;
    PedCtaTIPICM: TStringField;
    PedCtaTRBICM: TStringField;
    PedCtaREDICM: TFloatField;
    PedCtaBSCICM: TFloatField;
    PedCtaINCREV: TFloatField;
    PedCtaINCFIN: TFloatField;
    PedCtaTXFIPI: TStringField;
    PedCtaTXFICM: TStringField;
    PedCtaEMPRES: TIntegerField;
    PedCtaDTERES: TDateTimeField;
    PedCtaNUMRES: TIntegerField;
    PedCtaOBSCND: TStringField;
    PedCtaOBSENT: TStringField;
    PedCtaOBSVAL: TStringField;
    PedCtaOBSCLI: TStringField;
    PedCtaOBSCTA: TMemoField;
    PedCtaSITCTA: TStringField;
    PedCtaFLGPSQ: TStringField;
    PedCtaFLGSLD: TStringField;
    PedCtaFLGOCO: TStringField;
    PedCtaCGCCLI: TStringField;
    PedCtaINSCLI: TStringField;
    PedCtaCLITAB: TStringField;
    PedCtaCODTCL: TIntegerField;
    PedCtaCODGCL: TIntegerField;
    DsMasterPedCta: TDataSource;
    RLLabel4: TRLLabel;
    DsPedCt2: TDataSource;
    DsPedCta: TDataSource;
    RLDBText5: TRLDBText;
    RLLabel5: TRLLabel;
    ppApeVen: TRLLabel;
    RLLabel8: TRLLabel;
    RLLabel9: TRLLabel;
    ppObsCli: TRLLabel;
    quSql: TwwQuery;
    ppTelefone: TRLLabel;
    ppFax: TRLLabel;
    PedCt2CODEMP: TIntegerField;
    PedCt2DTECTA: TDateTimeField;
    PedCt2NUMCTA: TIntegerField;
    PedCt2CODGRU: TStringField;
    PedCt2CODSUB: TStringField;
    PedCt2CODPRO: TStringField;
    PedCt2DESCT2: TStringField;
    PedCt2OBSCT2: TStringField;
    PedCt2QTPCT2: TFloatField;
    PedCt2CODUND: TStringField;
    PedCt2VLUCT2: TFloatField;
    PedCt2DSCCT2: TFloatField;
    PedCt2VLQCT2: TFloatField;
    PedCt2ICMCT2: TFloatField;
    PedCt2TOTCT2: TFloatField;
    PedCt2TOTREN: TFloatField;
    PedCt2NOMMRC: TStringField;
    PedCt2NROCT2: TIntegerField;
    PedCt2TOTGE2: TFloatField;
    RLDBText3: TRLDBText;
    PedCt2IPICT2: TFloatField;
    RLLabel2: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel13: TRLLabel;
    ppCodAtd: TRLLabel;
    RLLabel15: TRLLabel;
    ppApeAtd: TRLLabel;
    RLLabel14: TRLLabel;
    RLDBText4: TRLDBText;
    PedCt2TOTIPI: TFloatField;
    ppDesPe2: TRLLabel;
    ppDesPe3: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel50: TRLLabel;
    ppTotIte: TRLLabel;
    ppTotSub: TRLLabel;
    ppTotDsr: TRLLabel;
    ppTotGer: TRLLabel;
    ppTotIpi: TRLLabel;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManEm3: TfmManEm3;

implementation

uses Bbgeral, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmManEm3.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManEm3.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin

  if FileExists('C:\Emerion\Print.bmp') then
     ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     ppImagem.Picture.Bitmap.FreeImage;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;

  if Trim( GFonUsu ) <> '' then
     ppTeleFone.Caption := 'Telefone '+ GFonUsu
  else
     ppTeleFone.Caption := ' ';

  if Trim( GFaxUsu ) <> '' then
     ppFax.Caption := 'Fax '+ GFaxUsu
  else
     ppFax.Caption := ' ';

  ppNumCta.Caption := IntToStr(PedCtaNumCta.Value);

  ppObsCli.Caption := PedCtaObsCli.Value;

  if PedCtaCodCli.Value > 0 then
     ppCodCli.Caption := IntToStr( PedCtaCodCli.Value )
  else
     ppCodCli.Caption := ' ';

  ppNomCli.Caption := PedCtaNomCli.Value;
  ppUfeCta.Caption := PedCtaUfeCta.Value;

  if PedCtaCodVen.Value > 0 then
     ppCodVen.Caption := IntToStr( PedCtaCodVen.Value )
  else
     ppCodVen.Caption := ' ';

  with quSQL,SQL do begin

       Close;
       Text := ' Select ApeVen From FinVen Where CodVen = '''+ IntToStr(PedCtaCodVen.Value) +'''';
       Open;

       ppApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  if PedCtaCodAtd.Value > 0 then begin

     ppCodAtd.Caption := IntToStr( PedCtaCodAtd.Value );

     with quSQL,SQL do begin

          Close;
          Text := ' Select ApeAtd From FinAtd Where CodAtd = '''+ IntToStr(PedCtaCodAtd.Value) +'''';
          Open;

          ppApeAtd.Caption := FieldbyName('ApeAtd').AsString;

     end;

     end
  else
     begin

     ppCodAtd.Caption := ' ';
     ppApeAtd.Caption := ' ';

  end;
end;

procedure TfmManEm3.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppObsCnd.Caption := PedCtaObsCnd.Value;
  ppObsEnt.Caption := PedCtaObsEnt.Value;
  ppObsVal.Caption := PedCtaObsVal.Value;

  ppObsCta.Lines.Clear;

  ppObsCta.Lines.Add( PedCtaObsCta.Value );

  ppTotIte.Caption := FormatFloat('###,###,##0.00',PedCtaTotIte.Value);
  ppTotIpi.Caption := FormatFloat('###,###,##0.00',PedCtaTotIpi.Value);
  ppTotSub.Caption := FormatFloat('###,###,##0.00',PedCtaTotSub.Value);
  ppTotDsr.Caption := FormatFloat('###,###,##0.00',PedCtaTotDsr.Value);
  ppTotGer.Caption := FormatFloat('###,###,##0.00',PedCtaTotGer.Value);

end;

procedure TfmManEm3.RLDetailGrid1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppDesPe2.Caption := Trim(PedCt2DesCt2.Value);
  
  if Length(Trim(PedCt2NomMrc.Value)) > 1 then
     ppDesPe3.Caption := PedCt2CodGru.Value+ '.' +PedCt2CodSub.Value+ '.' +PedCt2CodPro.Value+ ' - ' +PedCt2NomMrc.Value
  else
     ppDesPe3.Caption := PedCt2CodGru.Value+ '.' +PedCt2CodSub.Value+ '.' +PedCt2CodPro.Value;
     
end;

end.
