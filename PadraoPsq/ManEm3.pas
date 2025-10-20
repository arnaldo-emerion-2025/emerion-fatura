unit ManEm3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery, RLBarcode;

type
  TfmManEm3 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    quSql: TQuery;
    p2Titulo: TRLLabel;
    ppImagem: TRLImage;
    RLLabel6: TRLLabel;
    RLLabel10: TRLLabel;
    RLLabel27: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel14: TRLLabel;
    ppNumRes: TRLDBText;
    ppCodVen: TRLDBText;
    ppCodRep: TRLDBText;
    ppCodCli: TRLDBText;
    RLLabel18: TRLLabel;
    ppEndEn1: TRLLabel;
    ppEndEn2: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel22: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel19: TRLLabel;
    SepPe2: TwwQuery;
    SepPe2DESPE2: TStringField;
    SepPe2QTDVOL: TIntegerField;
    SepPe2TOTPES: TFloatField;
    SepPe2TOTCUB: TFloatField;
    SepPe2QTDITE: TIntegerField;
    SepPe2CODEMP: TIntegerField;
    SepPe2DTERES: TDateTimeField;
    SepPe2NUMRES: TIntegerField;
    SepPe2SEQPED: TIntegerField;
    SepPe2SEQPE2: TIntegerField;
    SepPe2CODEAN: TStringField;
    SepPe2QTDPRO: TFloatField;
    DsPe2: TwwDataSource;
    SepPe3: TwwQuery;
    SepPe3DESPE3: TStringField;
    SepPe3QTDITE: TIntegerField;
    SepPe3TOTPES: TFloatField;
    SepPe3TOTCUB: TFloatField;
    SepPe3CODEMP: TIntegerField;
    SepPe3DTERES: TDateTimeField;
    SepPe3NUMRES: TIntegerField;
    SepPe3SEQPED: TIntegerField;
    SepPe3SEQPE2: TIntegerField;
    SepPe3SEQPE3: TIntegerField;
    SepPe3CODEAN: TStringField;
    SepPe3QTDPRO: TFloatField;
    SepPe3FLGIMP: TStringField;
    DsPe3: TwwDataSource;
    SepPe4: TwwQuery;
    SepPe4CODITE: TStringField;
    SepPe4DSCPRO: TStringField;
    SepPe4QTDPRO: TFloatField;
    SepPe4CODEMP: TIntegerField;
    SepPe4DTERES: TDateTimeField;
    SepPe4NUMRES: TIntegerField;
    SepPe4SEQPED: TIntegerField;
    SepPe4SEQPE2: TIntegerField;
    SepPe4SEQPE3: TIntegerField;
    SepPe4SEQPE4: TIntegerField;
    SepPe4CODEAN: TStringField;
    SepPe4CODCLP: TStringField;
    SepPe4CODGRU: TStringField;
    SepPe4CODSUB: TStringField;
    SepPe4CODPRO: TStringField;
    SepPe4CODTAM: TStringField;
    SepPe4CODCOR: TStringField;
    SepPe4FLGPAD: TStringField;
    SepPe4CLPPAD: TStringField;
    SepPe4GRUPAD: TStringField;
    SepPe4SUBPAD: TStringField;
    SepPe4PROPAD: TStringField;
    SepPe4TAMPAD: TStringField;
    SepPe4CORPAD: TStringField;
    SepPe4CUBPRO: TFloatField;
    SepPe4SEQRE2: TIntegerField;
    SepPe4SEQRE3: TIntegerField;
    SepPe4FLGATU: TStringField;
    SepPe4PESPRO: TFloatField;
    SepPe4QTDEMB: TFloatField;
    SepPe4DSCPAD: TStringField;
    DsPe4: TwwDataSource;
    SepPed: TwwQuery;
    SepPedNUMRES: TIntegerField;
    SepPedDTERES: TDateTimeField;
    SepPedAPEVEN: TStringField;
    SepPedTOTRES: TFloatField;
    SepPedTOTIPI: TFloatField;
    SepPedTOTGER: TFloatField;
    SepPedFATGER: TFloatField;
    SepPedSLDGER: TFloatField;
    SepPedCODEMP: TIntegerField;
    SepPedSEQPED: TIntegerField;
    SepPedCODCLI: TIntegerField;
    SepPedCODVEN: TIntegerField;
    SepPedCODREP: TIntegerField;
    SepPedCODATD: TIntegerField;
    SepPedIMPRES: TStringField;
    SepPedINCPAG: TStringField;
    SepPedFLGPAM: TStringField;
    SepPedCODEAN: TStringField;
    SepPedFLGSLD: TStringField;
    SepPedSITRES: TStringField;
    SepPedAPECLI: TStringField;
    SepPedAPEREP: TStringField;
    SepPedSITSEP: TStringField;
    SepPedFLGRES: TStringField;
    DsPed: TwwDataSource;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText4: TRLDBText;
    SepPedCEPCLI: TStringField;
    SepPedTENCLI: TStringField;
    SepPedENDCLI: TStringField;
    SepPedNUMCLI: TStringField;
    SepPedREFCLI: TStringField;
    SepPedBAICLI: TStringField;
    SepPedCIDCLI: TStringField;
    SepPedUFECLI: TStringField;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand2: TRLBand;
    RLLabel3: TRLLabel;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLGroup2: TRLGroup;
    RLBand3: TRLBand;
    RLLabel5: TRLLabel;
    RLLabel9: TRLLabel;
    RLLabel11: TRLLabel;
    RLDBText8: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel23: TRLLabel;
    RLDetailGrid3: TRLDetailGrid;
    RLDBText12: TRLDBText;
    RLDBText15: TRLDBText;
    RLDBText9: TRLDBText;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure SepPe2DESPE2GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SepPe3DESPE3GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure SepPe4CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManEm3 : TfmManEm3;

implementation

uses SendMailOptions, ManGDB, Bbfuncao, Bbgeral;

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

  if Trim( SepPedTenCli.Value ) <> '' then
     ppEndEn1.Caption := Trim( SepPedTenCli.Value )+ ' ' +Trim( SepPedEndCli.Value )
  else
     ppEndEn1.Caption := Trim( SepPedEndCli.Value );

  if Trim( SepPedNumCli.Value ) <> '' then
     ppEndEn1.Caption := ppEndEn1.Caption+ ', ' +Trim( SepPedNumCli.Value );

  if Trim( SepPedBaiCli.Value ) <> '' then
     ppEndEn1.Caption := ppEndEn1.Caption+ ' ' +Trim( SepPedBaiCli.Value );
     
  ppEndEn2.Caption := 'Cidade '+Trim( SepPedCidCli.Value )+ ' - ' +SepPedUfeCli.Value;
  
  if Trim( SepPedCepCli.Value ) <> '' then
     ppEndEn2.Caption := ppEndEn2.Caption + ' Cep ' +copy(SepPedCepCli.Value,1,5)+ '-' +copy(SepPedCepCli.Value,6,3);

end;

procedure TfmManEm3.SepPe2DESPE2GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if SepPe2SeqPe2.Value > 0 then
     Text := 'PALETE No. '+fNumZeros(IntToStr(SepPe2SeqPe2.Value),3)
  else
     Text := '';
end;

procedure TfmManEm3.SepPe3DESPE3GetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if SepPe3SeqPe3.Value > 0 then
     Text := 'VOLUME No. '+fNumZeros(IntToStr(SepPe3SeqPe3.Value),4)
  else
     Text := '';
end;

procedure TfmManEm3.SepPe4CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if Trim(SepPe4ClpPad.Value) <> '' then
     Text := SepPe4ClpPad.Value+ '-'+SepPe4GruPad.Value+ '.' +SepPe4SubPad.Value+ '.' +SepPe4ProPad.Value
  else
     Text := '';
end;

end.
