unit RelPfo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery;

type
  TfmRelPfo = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    p2Imagem: TRLImage;
    p2ApeEmp: TRLLabel;
    p2NomEmp: TRLLabel;
    p2EndEmp: TRLLabel;
    p2RefEmp: TRLLabel;
    p2CgcEmp: TRLLabel;
    p2InsEmp: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    p2Titulo: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel11: TRLLabel;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    RLLabel19: TRLLabel;
    RLLabel20: TRLLabel;
    p2CodFor: TRLLabel;
    RLLabel22: TRLLabel;
    p2NomFor: TRLLabel;
    p2EndFor: TRLLabel;
    p2BaiFor: TRLLabel;
    p2FonFor: TRLLabel;
    p2NomCon: TRLLabel;
    p2NomUsu: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    p2CidFor: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    p2SigUfe: TRLLabel;
    RLLabel35: TRLLabel;
    p2FaxFor: TRLLabel;
    RLLabel37: TRLLabel;
    RLBand2: TRLBand;
    RLLabel38: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    CmpPed: TwwQuery;
    CmpPe2: TwwQuery;
    DsPed: TwwDataSource;
    DsPe2: TwwDataSource;
    DsMasterCmpPed: TDataSource;
    RLBand3: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel46: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText20: TRLDBText;
    RLLabel53: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    p2ObsCnd: TRLLabel;
    p2DpePed: TRLLabel;
    p2PrePed: TRLLabel;
    p2NomVen: TRLLabel;
    p2ObsPed: TRLMemo;
    p2TotPed: TRLLabel;
    p2TotAcc: TRLLabel;
    p2TotGer: TRLLabel;
    CmpPedCODEMP: TIntegerField;
    CmpPedDTEPED: TDateTimeField;
    CmpPedNUMPED: TIntegerField;
    CmpPedHREPED: TStringField;
    CmpPedCODFOR: TIntegerField;
    CmpPedCONPLC: TIntegerField;
    CmpPedSUBPLC: TIntegerField;
    CmpPedCODPFA: TStringField;
    CmpPedTIPPFA: TStringField;
    CmpPedPREPED: TIntegerField;
    CmpPedDPEPED: TDateTimeField;
    CmpPedCODTMO: TIntegerField;
    CmpPedVALTMO: TFloatField;
    CmpPedCODFIL: TIntegerField;
    CmpPedUFEPED: TStringField;
    CmpPedCODCLP: TStringField;
    CmpPedNOMCON: TStringField;
    CmpPedNOMVEN: TStringField;
    CmpPedCEPENT: TStringField;
    CmpPedTENENT: TStringField;
    CmpPedENDENT: TStringField;
    CmpPedREFENT: TStringField;
    CmpPedNUMENT: TStringField;
    CmpPedBAIENT: TStringField;
    CmpPedCIDENT: TStringField;
    CmpPedUFEENT: TStringField;
    CmpPedFLGCTB: TStringField;
    CmpPedFLGTAB: TStringField;
    CmpPedMODPFA: TStringField;
    CmpPedOBSCND: TStringField;
    CmpPedOBSPED: TStringField;
    CmpPedQTPPED: TIntegerField;
    CmpPedSQPPED: TIntegerField;
    CmpPedQTIPED: TIntegerField;
    CmpPedSEQITE: TIntegerField;
    CmpPedBASIMP: TFloatField;
    CmpPedTOTIMP: TFloatField;
    CmpPedBASIPI: TFloatField;
    CmpPedTOTIPI: TFloatField;
    CmpPedBASICM: TFloatField;
    CmpPedTOTICM: TFloatField;
    CmpPedBASSUB: TFloatField;
    CmpPedTOTSUB: TFloatField;
    CmpPedTOTPED: TFloatField;
    CmpPedMEDDSC: TFloatField;
    CmpPedTOTDSC: TFloatField;
    CmpPedMEDACR: TFloatField;
    CmpPedTOTACR: TFloatField;
    CmpPedTOTGER: TFloatField;
    CmpPedLANGER: TFloatField;
    CmpPedSLDGER: TFloatField;
    CmpPedTOTVEN: TFloatField;
    CmpPedTOTREN: TFloatField;
    CmpPedLANEST: TStringField;
    CmpPedATUEST: TStringField;
    CmpPedINTFIN: TStringField;
    CmpPedCONSUM: TStringField;
    CmpPedCODIPI: TStringField;
    CmpPedTIPIPI: TStringField;
    CmpPedTRBIPI: TStringField;
    CmpPedREDIPI: TFloatField;
    CmpPedBSCIPI: TFloatField;
    CmpPedCODICM: TStringField;
    CmpPedTIPICM: TStringField;
    CmpPedTRBICM: TStringField;
    CmpPedREDICM: TFloatField;
    CmpPedBSCICM: TFloatField;
    CmpPedINCREV: TFloatField;
    CmpPedINCFIN: TFloatField;
    CmpPedTXFIPI: TStringField;
    CmpPedTXFICM: TStringField;
    CmpPedCODUSU: TIntegerField;
    CmpPedFLGOCO: TStringField;
    CmpPedFLGATU: TStringField;
    CmpPedSEQPED: TStringField;
    CmpPedDTEFPE: TDateTimeField;
    CmpPedHREFPE: TStringField;
    CmpPedOBSFPE: TMemoField;
    CmpPedUSUFPE: TIntegerField;
    CmpPedSITPED: TStringField;
    CmpPedFLGRES: TStringField;
    CmpPedPERACR: TFloatField;
    CmpPedTOTACC: TFloatField;
    CmpPedTOTACP: TFloatField;
    CmpPedPERACI: TFloatField;
    CmpPedTOTACI: TFloatField;
    CmpPedTOTAIP: TFloatField;
    CmpPedEMAFOR: TStringField;
    CmpPedNOMFOR: TStringField;
    CmpPedBAIFOR: TStringField;
    CmpPedCIDFOR: TStringField;
    CmpPedSIGUFE: TStringField;
    CmpPedLOGUSU: TStringField;
    CmpPedMODFOR: TIntegerField;
    CmpPedENDFOR: TStringField;
    CmpPedFONFOR: TStringField;
    CmpPedFAXFOR: TStringField;
    CmpPe2CODEMP: TIntegerField;
    CmpPe2DTEPED: TDateTimeField;
    CmpPe2NUMPED: TIntegerField;
    CmpPe2SEQPE2: TIntegerField;
    CmpPe2CODEIT: TIntegerField;
    CmpPe2CODCLP: TStringField;
    CmpPe2CODGRU: TStringField;
    CmpPe2CODSUB: TStringField;
    CmpPe2CODPRO: TStringField;
    CmpPe2CODTAM: TStringField;
    CmpPe2CODCOR: TStringField;
    CmpPe2DESPE2: TStringField;
    CmpPe2OBSPE2: TStringField;
    CmpPe2OBSPE3: TStringField;
    CmpPe2CODST1: TStringField;
    CmpPe2CODST2: TStringField;
    CmpPe2CODUND: TStringField;
    CmpPe2CLSIPI: TStringField;
    CmpPe2CODPFO: TStringField;
    CmpPe2QTIPE3: TIntegerField;
    CmpPe2SEQPE3: TIntegerField;
    CmpPe2QTPPE2: TFloatField;
    CmpPe2QTEPE2: TFloatField;
    CmpPe2QTRPE2: TFloatField;
    CmpPe2QTNPE2: TFloatField;
    CmpPe2SLDPE2: TFloatField;
    CmpPe2VLUPE2: TFloatField;
    CmpPe2VLQPE2: TFloatField;
    CmpPe2VALVEN: TFloatField;
    CmpPe2VLQITE: TFloatField;
    CmpPe2DSCPE2: TFloatField;
    CmpPe2VDSPE2: TFloatField;
    CmpPe2PACPE2: TFloatField;
    CmpPe2VACPE2: TFloatField;
    CmpPe2IPIPE2: TFloatField;
    CmpPe2IMPPE2: TFloatField;
    CmpPe2ICMPE2: TFloatField;
    CmpPe2BASIMP: TFloatField;
    CmpPe2TOTIMP: TFloatField;
    CmpPe2BASIPI: TFloatField;
    CmpPe2TOTIPI: TFloatField;
    CmpPe2BASICM: TFloatField;
    CmpPe2TOTICM: TFloatField;
    CmpPe2BASSUB: TFloatField;
    CmpPe2TOTSUB: TFloatField;
    CmpPe2TOTPE2: TFloatField;
    CmpPe2TOTGE2: TFloatField;
    CmpPe2TOTDSC: TFloatField;
    CmpPe2TOTACR: TFloatField;
    CmpPe2TOTVEN: TFloatField;
    CmpPe2TOTREN: TFloatField;
    CmpPe2CODSTR: TStringField;
    CmpPe2TIPSTR: TStringField;
    CmpPe2REGIPI: TStringField;
    CmpPe2TIPIPI: TStringField;
    CmpPe2TRBIPI: TStringField;
    CmpPe2REDIPI: TFloatField;
    CmpPe2BSCIPI: TFloatField;
    CmpPe2REGICM: TStringField;
    CmpPe2TIPICM: TStringField;
    CmpPe2TRBICM: TStringField;
    CmpPe2REDICM: TFloatField;
    CmpPe2BSCICM: TFloatField;
    CmpPe2INCREV: TFloatField;
    CmpPe2INCFIN: TFloatField;
    CmpPe2FLGLAN: TStringField;
    CmpPe2FLASEQ: TStringField;
    CmpPe2FLGDUP: TStringField;
    CmpPe2FLGRES: TStringField;
    CmpPe2FLGENT: TStringField;
    CmpPe2FLGVAL: TStringField;
    CmpPe2NROPE2: TIntegerField;
    ppCodIte: TRLLabel;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmRelPfo: TfmRelPfo;

implementation

uses Bbgeral, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmRelPfo.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmRelPfo.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin

  if FileExists('C:\Emerion\Print.bmp') then
     p2Imagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     p2Imagem.Picture.Bitmap.FreeImage;

  p2ApeEmp.Caption := GApeEmp;
  p2NomEmp.Caption := GRazEmp;
  p2EndEmp.Caption := GEndEmp;
  p2RefEmp.Caption := GRefEmp;
  p2CgcEmp.Caption := GCgcEmp;
  p2InsEmp.Caption := GInsEmp;

  p2Titulo.Caption := 'Pedido de Compra No. '+ fNumZeros(IntToStr(CmpPe2NumPed.Value),7)+ ' - ' + FormatDateTime('dd/mm/yyyy',CmpPe2DtePed.Value);

  p2CodFor.Caption := IntToStr( CmpPedCodFor.Value );
  p2NomFor.Caption := CmpPedNomFor.Value;
  p2EndFor.Caption := CmpPedEndFor.Value;
  p2BaiFor.Caption := CmpPedBaiFor.Value;
  p2CidFor.Caption := CmpPedCidFor.Value;
  p2SigUfe.Caption := CmpPedSigUfe.Value;
  p2FonFor.Caption := CmpPedFonFor.Value;
  p2FaxFor.Caption := CmpPedFaxFor.Value;
  p2NomCon.Caption := CmpPedNomCon.Value;
  p2NomUsu.Caption := CmpPedLogUsu.Value;
  
end;

procedure TfmRelPfo.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  p2ObsCnd.Caption := CmpPedObsCnd.Value;

  p2DpePed.Caption := FormatDateTime('dd/mm/yyyy',CmpPedDpePed.Value);

  p2PrePed.Caption := IntToStr(CmpPedPrePed.Value);

  p2NomVen.Caption := CmpPedNomVen.Value;

  p2ObsPed.Lines.Add(CmpPedObsPed.Value);

  p2TotPed.Caption := FormatFloat('###,###,##0.00',CmpPedTotPed.Value);
  p2TotAcc.Caption := FormatFloat('###,###,##0.00',CmpPedTotAcc.Value);
  p2TotGer.Caption := FormatFloat('###,###,##0.00',CmpPedTotGer.Value);

end;

procedure TfmRelPfo.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ppCodIte.Caption := CmpPe2CodGru.Value + '.' +
                      CmpPe2CodSub.Value + '.' +
                      CmpPe2CodPro.Value;
end;

end.
