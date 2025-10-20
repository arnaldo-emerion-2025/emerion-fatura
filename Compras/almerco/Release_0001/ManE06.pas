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
    CmpNf2: TQuery;
    DsCmpNf2: TDataSource;
    DsCmpNfs: TDataSource;
    quSql: TQuery;
    CmpNfs: TQuery;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    ppQtpNf2: TRLDBText;
    ppCodUnd: TRLDBText;
    ppTotNf2: TRLDBText;
    ppDesNf2: TRLDBText;
    ppVlqNf2: TRLDBText;
    RLDraw3: TRLDraw;
    RLBand5: TRLBand;
    RLLabel47: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel49: TRLLabel;
    RLDBText1: TRLDBText;
    RLXLSFilter1: TRLXLSFilter;
    ppImagem: TRLImage;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText6: TRLDBText;
    RLDraw13: TRLDraw;
    ppEndEmp: TRLLabel;
    ppCepEmp: TRLLabel;
    ppCidEmp: TRLLabel;
    ppUfeEmp: TRLLabel;
    ppFonEmp: TRLLabel;
    ppFaxEmp: TRLLabel;
    ppWebEmp: TRLLabel;
    ppEmaEmp: TRLLabel;
    RLDraw14: TRLDraw;
    ppControle: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel106: TRLLabel;
    RLLabel107: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel105: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel109: TRLLabel;
    ppNroNf2: TRLDBText;
    ppIpiNf2: TRLDBText;
    ppIcmNf2: TRLDBText;
    RLDraw5: TRLDraw;
    ppCodIte: TRLDBText;
    ppClsIpi: TRLDBText;
    RLBand2: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel7: TRLLabel;
    RLLabel63: TRLLabel;
    ppCodCli: TRLDBText;
    ppFonFor: TRLLabel;
    RLLabel65: TRLLabel;
    RLLabel62: TRLLabel;
    ppCgcFor: TRLLabel;
    ppEmaFor: TRLLabel;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsCODFOR: TIntegerField;
    CmpNfsTOTIT1: TFloatField;
    CmpNfsTOTIP1: TFloatField;
    CmpNfsTOTSU1: TFloatField;
    CmpNfsTOTGE1: TFloatField;
    CmpNfsQTINFS: TIntegerField;
    ppNomFor: TRLLabel;
    CmpNf2DESNF2: TStringField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2CODUND: TStringField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2CLSIPI: TStringField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2TOTNF2: TFloatField;
    CmpNf2NRONF2: TIntegerField;
    CmpNf2CODITE: TStringField;
    CmpNfsID_CMPPED: TIntegerField;
    CmpNfsVALTMO: TFloatField;
    RLLabel1: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel2: TRLLabel;
    RLDBText7: TRLDBText;
    CmpNfsOB1OPE: TStringField;
    CmpNfsOB2OPE: TStringField;
    CmpNfsOB3OPE: TStringField;
    CmpNfsOB4OPE: TStringField;
    CmpNfsOB5OPE: TStringField;
    RLLabel8: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE06: TfmManE06;

implementation

uses SendMailOptions, ManGDB, Bbgeral;

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

  ppControle.Caption := 'Controle No. '+fNumZeros(IntToStr(CmpNfsId_CmpNfs.Value),6);

  if CmpNfsCodFor.Value > 0 then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FinFor.NomFor,'+
                  '        FinFor.CgcFor,'+
                  '        FinFor.PrtFor,'+
                  '        FinFor.FonFor,'+
                  '        FinFor.EmaFor '+
                  ' From FinFor'+
                  ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpNfsCodFor.Value));
          Open;

          ppNomFor.Caption := Trim(FieldbyName('NomFor').AsString);
          ppCgcFor.Caption := fFormatCgcCpf(FieldbyName('CgcFor').AsString);
          ppEmaFor.Caption := Trim(FieldbyName('EmaFor').AsString);

          if Trim(FieldbyName('PrtFor').AsString) <> '' then
             ppFonFor.Caption := '('+ Trim(FieldbyName('PrtFor').AsString) +') '+Trim(FieldbyName('FonFor').AsString)
          else
             ppFonFor.Caption := Trim(FieldbyName('FonFor').AsString);

     end;

     end
  else
     begin

     ppNomFor.Caption := '';
     ppCgcFor.Caption := '';
     ppEmaFor.Caption := '';
     ppFonFor.Caption := '';

  end;
end;

end.
