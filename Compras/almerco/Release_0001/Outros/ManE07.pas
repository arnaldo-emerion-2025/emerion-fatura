unit ManE07;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery;

type
  TfmManE07 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    ppTitulo: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel22: TRLLabel;
    ppNomClp: TRLLabel;
    RLBand2: TRLBand;
    RLLabel38: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    CmpSco: TwwQuery;
    CmpSc2: TwwQuery;
    DsCmpSco: TwwDataSource;
    DsCmpSc2: TwwDataSource;
    RLBand3: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel46: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText15: TRLDBText;
    quSql: TwwQuery;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText27: TRLDBText;
    ppApeEmp: TRLLabel;
    ppNomEmp: TRLLabel;
    ppEndEmp: TRLLabel;
    ppRefEmp: TRLLabel;
    ppFonEmp: TRLLabel;
    ppFaxEmp: TRLLabel;
    ppImagem: TRLImage;
    CmpScoID_CMPSCO: TIntegerField;
    CmpScoDTESCO: TDateTimeField;
    CmpScoHRESCO: TStringField;
    CmpScoCODCLP: TStringField;
    CmpScoCODGRU: TStringField;
    CmpScoCODSUB: TStringField;
    CmpScoCODPRO: TStringField;
    CmpScoID_FINFOR: TIntegerField;
    CmpScoID_PORORI: TIntegerField;
    CmpScoID_PORDES: TIntegerField;
    CmpScoCLSIPI: TStringField;
    CmpScoQTDSC2: TIntegerField;
    CmpScoQTDCON: TIntegerField;
    CmpScoFOBSCO: TFloatField;
    CmpScoMINSCO: TFloatField;
    CmpScoVALTMO: TFloatField;
    CmpScoQTDSCO: TFloatField;
    CmpScoMRGSCO: TFloatField;
    CmpScoTOTCXA: TFloatField;
    CmpScoTOTLIQ: TFloatField;
    CmpScoTOTBRT: TFloatField;
    CmpScoTOTCUB: TFloatField;
    CmpScoCUBPRO: TFloatField;
    CmpScoCXAPRO: TFloatField;
    CmpScoLIQPRO: TFloatField;
    CmpScoBRTPRO: TFloatField;
    CmpScoFRTMAR: TFloatField;
    CmpScoTOTFRT: TFloatField;
    CmpScoTOTFOB: TFloatField;
    CmpScoFRTINT: TFloatField;
    CmpScoTOTCFR: TFloatField;
    CmpScoMOESEG: TStringField;
    CmpScoVALSEG: TFloatField;
    CmpScoTIPSEG: TStringField;
    CmpScoTOTSEG: TFloatField;
    CmpScoTOTCIF: TFloatField;
    CmpScoMOEIMP: TStringField;
    CmpScoVALIMP: TFloatField;
    CmpScoTIPIMP: TStringField;
    CmpScoTOTIMP: TFloatField;
    CmpScoMOEIPI: TStringField;
    CmpScoVALIPI: TFloatField;
    CmpScoTIPIPI: TStringField;
    CmpScoTOTIPI: TFloatField;
    CmpScoMOEICM: TStringField;
    CmpScoVALICM: TFloatField;
    CmpScoTIPICM: TStringField;
    CmpScoTOTICM: TFloatField;
    CmpScoMOEPIS: TStringField;
    CmpScoVALPIS: TFloatField;
    CmpScoTIPPIS: TStringField;
    CmpScoTOTPIS: TFloatField;
    CmpScoMOECOF: TStringField;
    CmpScoVALCOF: TFloatField;
    CmpScoTIPCOF: TStringField;
    CmpScoTOTCOF: TFloatField;
    CmpScoTOTIDE: TFloatField;
    CmpScoMOEDES: TStringField;
    CmpScoVALDES: TFloatField;
    CmpScoTIPDES: TStringField;
    CmpScoTOTDES: TFloatField;
    CmpScoMOESIS: TStringField;
    CmpScoVALSIS: TFloatField;
    CmpScoTIPSIS: TStringField;
    CmpScoTOTSIS: TFloatField;
    CmpScoMOEAFR: TStringField;
    CmpScoVALAFR: TFloatField;
    CmpScoTIPAFR: TStringField;
    CmpScoTOTAFR: TFloatField;
    CmpScoMOEDSC: TStringField;
    CmpScoVALDSC: TFloatField;
    CmpScoTIPDSC: TStringField;
    CmpScoTOTDSC: TFloatField;
    CmpScoMOEEBL: TStringField;
    CmpScoVALEBL: TFloatField;
    CmpScoTIPEBL: TStringField;
    CmpScoTOTEBL: TFloatField;
    CmpScoMOECAP: TStringField;
    CmpScoVALCAP: TFloatField;
    CmpScoTIPCAP: TStringField;
    CmpScoTOTCAP: TFloatField;
    CmpScoMOELDI: TStringField;
    CmpScoVALLDI: TFloatField;
    CmpScoTIPLDI: TStringField;
    CmpScoTOTLDI: TFloatField;
    CmpScoMOEDEV: TStringField;
    CmpScoVALDEV: TFloatField;
    CmpScoTIPDEV: TStringField;
    CmpScoTOTDEV: TFloatField;
    CmpScoMOECOR: TStringField;
    CmpScoVALCOR: TFloatField;
    CmpScoTIPCOR: TStringField;
    CmpScoTOTCOR: TFloatField;
    CmpScoMOEARM: TStringField;
    CmpScoVALARM: TFloatField;
    CmpScoTIPARM: TStringField;
    CmpScoTOTARM: TFloatField;
    CmpScoMOEPRC: TStringField;
    CmpScoVALPRC: TFloatField;
    CmpScoTIPPRC: TStringField;
    CmpScoTOTPRC: TFloatField;
    CmpScoTOTMCA: TFloatField;
    CmpScoTOTENT: TFloatField;
    CmpScoTOTCST: TFloatField;
    CmpScoMOEICE: TStringField;
    CmpScoVALICE: TFloatField;
    CmpScoTIPICE: TStringField;
    CmpScoTOTICE: TFloatField;
    CmpScoMOEFIN: TStringField;
    CmpScoVALFIN: TFloatField;
    CmpScoTIPFIN: TStringField;
    CmpScoTOTFIN: TFloatField;
    CmpScoMOETRA: TStringField;
    CmpScoVALTRA: TFloatField;
    CmpScoTIPTRA: TStringField;
    CmpScoTOTTRA: TFloatField;
    CmpScoMOEMAD: TStringField;
    CmpScoVALMAD: TFloatField;
    CmpScoTIPMAD: TStringField;
    CmpScoTOTMAD: TFloatField;
    CmpScoMOESNA: TStringField;
    CmpScoVALSNA: TFloatField;
    CmpScoTIPSNA: TStringField;
    CmpScoTOTSNA: TFloatField;
    CmpScoMOEDED: TStringField;
    CmpScoVALDED: TFloatField;
    CmpScoTIPDED: TStringField;
    CmpScoTOTDED: TFloatField;
    CmpScoTOTDIS: TFloatField;
    CmpScoTOTNET: TFloatField;
    CmpScoVLUSCO: TFloatField;
    CmpScoICMSCO: TFloatField;
    CmpScoICMCAL: TFloatField;
    CmpScoIPISCO: TFloatField;
    CmpScoIPICAL: TFloatField;
    CmpScoPISSCO: TFloatField;
    CmpScoPISCAL: TFloatField;
    CmpScoCOFSCO: TFloatField;
    CmpScoCOFCAL: TFloatField;
    CmpScoIRESCO: TFloatField;
    CmpScoIRECAL: TFloatField;
    CmpScoCSSSCO: TFloatField;
    CmpScoCSSCAL: TFloatField;
    CmpScoTOTVEN: TFloatField;
    CmpScoTOTREC: TFloatField;
    CmpScoRENCAL: TFloatField;
    CmpScoVALREN: TFloatField;
    CmpScoTOTREN: TFloatField;
    CmpScoVALMLI: TFloatField;
    CmpScoTOTMLI: TFloatField;
    CmpScoID_GERUSU: TIntegerField;
    CmpScoDTEATU: TDateTimeField;
    CmpScoHREATU: TStringField;
    CmpScoFLGATU: TStringField;
    CmpScoSEQSCO: TStringField;
    CmpScoSITSCO: TStringField;
    CmpScoTOTIND: TFloatField;
    CmpScoVLUINF: TFloatField;
    CmpSc2ID_CMPSC2: TIntegerField;
    CmpSc2ID_CMPSCO: TIntegerField;
    CmpSc2ID_CMPARM: TIntegerField;
    CmpSc2MSCSC2: TFloatField;
    CmpSc2THCSC2: TFloatField;
    CmpSc2PESMAX: TFloatField;
    CmpSc2CUBMAX: TFloatField;
    CmpSc2PERCUB: TFloatField;
    CmpSc2PERPES: TFloatField;
    CmpSc2QTDPRE: TIntegerField;
    CmpSc2QTDUTI: TIntegerField;
    CmpSc2TOTFRT: TFloatField;
    CmpSc2FLGUSA: TStringField;
    CmpSc2NOMARM: TStringField;
    RLLabel3: TRLLabel;
    RLLabel6: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel10: TRLLabel;
    ppNomGru: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel16: TRLLabel;
    RLDBText10: TRLDBText;
    RLDBText28: TRLDBText;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    ppDscPro: TRLLabel;
    ppNomSub: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel28: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel29: TRLLabel;
    ppNomFor: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel32: TRLLabel;
    RLDBText30: TRLDBText;
    RLLabel33: TRLLabel;
    RLLabel34: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel35: TRLLabel;
    RLLabel37: TRLLabel;
    ppNomPo2: TRLLabel;
    ppNomPo1: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel19: TRLLabel;
    ppFobSco: TRLDBText;
    RLLabel20: TRLLabel;
    RLLabel30: TRLLabel;
    ppMinSco: TRLDBText;
    RLLabel53: TRLLabel;
    RLLabel56: TRLLabel;
    ppQtdSco: TRLDBText;
    RLLabel59: TRLLabel;
    RLLabel64: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel41: TRLLabel;
    RLLabel65: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel8: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel23: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel24: TRLLabel;
    RLDBText14: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText19: TRLDBText;
    RLLabel45: TRLLabel;
    RLLabel47: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel48: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel49: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel50: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel51: TRLLabel;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    RLDBText33: TRLDBText;
    RLDBText34: TRLDBText;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLLabel52: TRLLabel;
    RLDBText46: TRLDBText;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLDBText47: TRLDBText;
    RLDBText48: TRLDBText;
    RLDBText49: TRLDBText;
    RLDBText50: TRLDBText;
    RLDBText51: TRLDBText;
    RLDBText52: TRLDBText;
    RLDBText53: TRLDBText;
    RLDBText54: TRLDBText;
    RLDBText55: TRLDBText;
    RLDBText56: TRLDBText;
    RLDBText57: TRLDBText;
    RLDBText58: TRLDBText;
    RLDBText59: TRLDBText;
    RLDBText60: TRLDBText;
    RLDBText61: TRLDBText;
    RLDBText62: TRLDBText;
    RLDBText63: TRLDBText;
    RLDBText64: TRLDBText;
    RLDBText65: TRLDBText;
    RLDBText66: TRLDBText;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel68: TRLLabel;
    RLDBText68: TRLDBText;
    RLDBText69: TRLDBText;
    RLDBText70: TRLDBText;
    RLDBText71: TRLDBText;
    RLDBText72: TRLDBText;
    RLDBText73: TRLDBText;
    RLDBText74: TRLDBText;
    RLDBText75: TRLDBText;
    RLDBText78: TRLDBText;
    RLDBText79: TRLDBText;
    RLDBText80: TRLDBText;
    RLDBText81: TRLDBText;
    RLDBText82: TRLDBText;
    RLDBText83: TRLDBText;
    RLDBText84: TRLDBText;
    RLDBText85: TRLDBText;
    RLDBText86: TRLDBText;
    RLLabel69: TRLLabel;
    RLDBText67: TRLDBText;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLDBText88: TRLDBText;
    RLLabel72: TRLLabel;
    RLDBText89: TRLDBText;
    RLDBText90: TRLDBText;
    RLDBText91: TRLDBText;
    RLDBText92: TRLDBText;
    RLDBText76: TRLDBText;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    RLLabel79: TRLLabel;
    RLDBText77: TRLDBText;
    RLDBText87: TRLDBText;
    RLDBText93: TRLDBText;
    RLDBText94: TRLDBText;
    RLDBText95: TRLDBText;
    RLDBText96: TRLDBText;
    RLDBText97: TRLDBText;
    RLDBText98: TRLDBText;
    RLDBText99: TRLDBText;
    RLDBText100: TRLDBText;
    RLDBText101: TRLDBText;
    RLDBText102: TRLDBText;
    RLDBText103: TRLDBText;
    RLDBText104: TRLDBText;
    RLDBText105: TRLDBText;
    RLDBText106: TRLDBText;
    RLDBText107: TRLDBText;
    RLDBText108: TRLDBText;
    RLDBText109: TRLDBText;
    RLDBText110: TRLDBText;
    RLDBText111: TRLDBText;
    RLLabel80: TRLLabel;
    RLLabel81: TRLLabel;
    RLLabel82: TRLLabel;
    RLLabel83: TRLLabel;
    RLLabel84: TRLLabel;
    RLLabel85: TRLLabel;
    RLLabel86: TRLLabel;
    RLDBText127: TRLDBText;
    RLDBText128: TRLDBText;
    RLDBText129: TRLDBText;
    RLDBText130: TRLDBText;
    RLDBText131: TRLDBText;
    RLDBText132: TRLDBText;
    RLLabel87: TRLLabel;
    RLLabel88: TRLLabel;
    RLLabel89: TRLLabel;
    RLLabel90: TRLLabel;
    RLLabel91: TRLLabel;
    RLDBText113: TRLDBText;
    RLDBText114: TRLDBText;
    RLDBText115: TRLDBText;
    RLDBText116: TRLDBText;
    CmpScoTOTINF: TFloatField;
    RLLabel92: TRLLabel;
    RLLabel93: TRLLabel;
    RLDBText118: TRLDBText;
    RLLabel95: TRLLabel;
    RLLabel97: TRLLabel;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    RLLabel100: TRLLabel;
    RLDBText119: TRLDBText;
    RLDBText120: TRLDBText;
    RLDBText121: TRLDBText;
    RLDBText122: TRLDBText;
    RLDBText123: TRLDBText;
    RLDBText124: TRLDBText;
    RLDBText125: TRLDBText;
    RLDBText126: TRLDBText;
    RLDBText133: TRLDBText;
    RLDBText134: TRLDBText;
    RLLabel101: TRLLabel;
    RLLabel96: TRLLabel;
    RLDBText135: TRLDBText;
    RLDBText112: TRLDBText;
    RLDBText117: TRLDBText;
    RLDBText136: TRLDBText;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE07 : TfmManE07;

implementation

uses Bbgeral, Bbfuncao, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmManE07.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE07.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin

  if FileExists('C:\Emerion\Print.bmp') then
     ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     ppImagem.Picture.Bitmap.FreeImage;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;
  ppFonEmp.Caption := 'Telefone : '+GFonEmp;
  ppFaxEmp.Caption := 'Fax : '+GFaxEmp;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstClp.NomClp'+
               ' From EstClp'+
               ' Where EstClp.CodClp = '+ QuotedStr(CmpScoCodClp.Value);
       Open;

       ppNomClp.Caption := Trim(FieldbyName('NomClp').AsString);

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstGru.NomGru'+
               ' From EstGru'+
               ' Where EstGru.CodGru = '+ QuotedStr(CmpScoCodGru.Value);
       Open;

       ppNomGru.Caption := Trim(FieldbyName('NomGru').AsString);

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstSub.NomSub'+
               ' From EstSub'+
               ' Where EstSub.CodGru = '+ QuotedStr(CmpScoCodGru.Value) +
               '   and EstSub.CodSub = '+ QuotedStr(CmpScoCodSub.Value) ;
       Open;

       ppNomSub.Caption := Trim(FieldbyName('NomSub').AsString);

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select EstPro.DscPro'+
               ' From EstPro'+
               ' Where EstPro.CodClp = '+ QuotedStr(CmpScoCodClp.Value) +
               '   and EstPro.CodGru = '+ QuotedStr(CmpScoCodGru.Value) +
               '   and EstPro.CodSub = '+ QuotedStr(CmpScoCodSub.Value) +
               '   and EstPro.CodPro = '+ QuotedStr(CmpScoCodPro.Value) ;
       Open;

       ppDscPro.Caption := Trim(FieldbyName('DscPro').AsString);

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select CmpPor.NomPor'+
               ' From CmpPor'+
               ' Where CmpPor.Id_CmpPor = '+ QuotedStr(IntToStr(CmpScoId_PorOri.Value));
       Open;

       ppNomPo1.Caption := Trim(FieldbyName('NomPor').AsString);

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select CmpPor.NomPor'+
               ' From CmpPor'+
               ' Where CmpPor.Id_CmpPor = '+ QuotedStr(IntToStr(CmpScoId_PorDes.Value));
       Open;

       ppNomPo2.Caption := Trim(FieldbyName('NomPor').AsString);

  end;
end;

end.
