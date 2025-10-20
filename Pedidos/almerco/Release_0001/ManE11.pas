unit ManE11;

interface

uses
  Wwquery, RLXLSFilter, Db, DBTables, RLPDFFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLPreviewForm, RLReport, Classes, Controls, Windows, Messages,
  SysUtils, Graphics, Forms, Dialogs;

type
  TfmManE11 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppNomEmp: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    PedCt4: TQuery;
    DsPedCt4: TDataSource;
    DsPedCta: TDataSource;
    RLLabel8: TRLLabel;
    quSql: TQuery;
    PedCta: TQuery;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    ppQtpCt2: TRLDBText;
    ppCodUnd: TRLDBText;
    ppDesCt2: TRLDBText;
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
    ppNroCt2: TRLDBText;
    ppCodIte: TRLDBText;
    RLBand2: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    PedCt4CODCLP: TStringField;
    PedCt4CODGRU: TStringField;
    PedCt4CODSUB: TStringField;
    PedCt4CODPRO: TStringField;
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
    PedCt4CODUND: TStringField;
    PedCt4CLSIPI: TStringField;
    PedCt4CODPFO: TStringField;
    PedCt4CODITE: TStringField;
    PedCtaID_PEDCTA: TIntegerField;
    PedCtaDTECTA: TDateTimeField;
    PedCt4DESCT2: TStringField;
    PedCt4QTPCT2: TFloatField;
    PedCt4ICMCT2: TFloatField;
    PedCt4IPICT2: TFloatField;
    PedCt4NROCT2: TIntegerField;
    ppCodFor: TRLLabel;
    ppNomFor: TRLLabel;
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
    Id_FinFor : integer;
    { Public declarations }
  end;

var
  fmManE11: TfmManE11;

implementation

uses SendMailOptions, ManGDB, Bbgeral;

{$R *.DFM}

procedure TfmManE11.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE11.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
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

  ppPedido.Caption := 'Cotação No. '+fNumZeros(IntToStr(PedCtaId_PedCta.Value),6);

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

procedure TfmManE11.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if PedParUsaDec.Value = 'Nao' then
     PedCt4QtpCt2.DisplayFormat := '###,###,##0';

end;

end.
