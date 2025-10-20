unit ManE09;

interface

uses
  Wwquery, RLXLSFilter, Db, DBTables, RLPDFFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLPreviewForm, RLReport, Classes, Controls, Windows, Messages,
  SysUtils, Graphics, Forms, Dialogs;

type
  TfmManE09 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppNomEmp: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    PedGr4: TQuery;
    DsPedGr4: TDataSource;
    DsPedGer: TDataSource;
    RLLabel8: TRLLabel;
    quSql: TQuery;
    PedGer: TQuery;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    ppQtpGr2: TRLDBText;
    ppCodUnd: TRLDBText;
    ppDesGr2: TRLDBText;
    RLDraw3: TRLDraw;
    RLDBText1: TRLDBText;
    RLXLSFilter1: TRLXLSFilter;
    ppImagem: TRLImage;
    PedPar: TwwQuery;
    PedParUSADEC: TStringField;
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
    ppNomFor: TRLLabel;
    RLLabel63: TRLLabel;
    ppFonFor: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel104: TRLLabel;
    RLLabel106: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel105: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel109: TRLLabel;
    ppNroGr2: TRLDBText;
    ppCodIte: TRLDBText;
    RLBand2: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
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
    PedGr4CODCLP: TStringField;
    PedGr4CODGRU: TStringField;
    PedGr4CODSUB: TStringField;
    PedGr4CODPRO: TStringField;
    PedGr4DESGR2: TStringField;
    PedGr4QTPGR2: TFloatField;
    PedGr4CODUND: TStringField;
    PedGr4ICMGR2: TFloatField;
    PedGr4CLSIPI: TStringField;
    PedGr4IPIGR2: TFloatField;
    PedGr4NROGR2: TIntegerField;
    PedGr4CODITE: TStringField;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLDraw2: TRLDraw;
    RLDraw7: TRLDraw;
    RLLabel7: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel9: TRLLabel;
    RLDraw5: TRLDraw;
    RLLabel10: TRLLabel;
    RLDraw9: TRLDraw;
    PedGr4CODPFO: TStringField;
    ppCodFor: TRLLabel;
    RLDraw10: TRLDraw;
    RLDraw11: TRLDraw;
    RLDraw12: TRLDraw;
    RLDraw13: TRLDraw;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    id_FinFor : integer;
    { Public declarations }
  end;

var
  fmManE09: TfmManE09;

implementation

uses SendMailOptions, ManGDB, Bbgeral;

{$R *.DFM}

procedure TfmManE09.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE09.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
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

  ppPedido.Caption := 'Orçamento No. '+fNumZeros(IntToStr(PedGerId_PedGer.Value),6);

  ppCodFor.Caption := IntToStr(Id_FinFor);

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinFor.NomFor,'+
               '        FinFor.PrtFor,'+
               '        FinFor.FonFor '+
               ' From FinFor'+
               ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(Id_FinFor));
       Open;

       ppNomFor.Caption := Trim(FieldbyName('NomFor').AsString);

       if Trim(FieldbyName('PrtFor').AsString) <> '' then
          ppFonFor.Caption := '('+ Trim(FieldbyName('PrtFor').AsString) +') '+Trim(FieldbyName('FonFor').AsString)
       else
          ppFonFor.Caption := Trim(FieldbyName('FonFor').AsString);

  end;
end;

procedure TfmManE09.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if PedParUsaDec.Value = 'Nao' then
     PedGr4QtpGr2.DisplayFormat := '###,###,##0';

end;

end.
