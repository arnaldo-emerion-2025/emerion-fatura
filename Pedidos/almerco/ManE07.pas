unit ManE07;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery, RLBarcode,
  RLXLSFilter;

type
  TfmManE07 = class(TForm)
    RLReport1: TRLReport;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    PedRe2: TQuery;
    DsPedRe2: TDataSource;
    DsPedRes: TDataSource;
    quSql: TQuery;
    PedRes: TQuery;
    RLSubDetail1: TRLSubDetail;
    RLGroup1: TRLGroup;
    RLBand02: TRLBand;
    RLLabel30: TRLLabel;
    RLBand06: TRLBand;
    RLLabel25: TRLLabel;
    ppEndTr1: TRLLabel;
    ppEndTr2: TRLLabel;
    ppEndTr4: TRLLabel;
    ppEndTr3: TRLLabel;
    RLBand04: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel29: TRLLabel;
    RLBand1: TRLBand;
    RLDBBarcode1: TRLDBBarcode;
    RLXLSFilter1: TRLXLSFilter;
    PedRe2CODCLP: TStringField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2NUMPRO: TStringField;
    PedRe2REFPRO: TStringField;
    PedRe2DSCPRO: TStringField;
    PedPar: TwwQuery;
    PedParTIPATD: TStringField;
    PedParUSADEC: TStringField;
    RLBand3: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel46: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand05: TRLBand;
    RLLabel4: TRLLabel;
    EdOb1Res: TRLDBText;
    EdOb2Res: TRLDBText;
    EdOb3Res: TRLDBText;
    EdOb4Res: TRLDBText;
    EdOb5Res: TRLDBText;
    EdOb6Res: TRLDBText;
    EdOb7Res: TRLDBText;
    EdOb8Res: TRLDBText;
    RLLabel13: TRLLabel;
    PedRe2NROITE: TIntegerField;
    RLLabel34: TRLLabel;
    RLLabel35: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel50: TRLLabel;
    PedRe2CODITE: TStringField;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLLabel109: TRLLabel;
    RLDBText4: TRLDBText;
    RLDraw14: TRLDraw;
    ppImagem: TRLImage;
    RLLabel8: TRLLabel;
    ppCodCli: TRLDBText;
    ppNomCli: TRLLabel;
    RLLabel62: TRLLabel;
    ppCgcCli: TRLLabel;
    RLLabel63: TRLLabel;
    ppFonCli: TRLLabel;
    RLLabel65: TRLLabel;
    ppEmaCli: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel1: TRLLabel;
    ppEndEn1: TRLLabel;
    ppEndEn2: TRLLabel;
    RLDraw3: TRLDraw;
    RLLabel93: TRLLabel;
    ppCodVen: TRLDBText;
    RLDraw18: TRLDraw;
    ppApeVen: TRLLabel;
    RLLabel94: TRLLabel;
    ppFonVen: TRLLabel;
    RLLabel98: TRLLabel;
    ppCodAtd: TRLDBText;
    ppApeAtd: TRLLabel;
    RLLabel99: TRLLabel;
    ppFonAtd: TRLLabel;
    ppPedido: TRLLabel;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLGroup2: TRLGroup;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw8: TRLDraw;
    RLDBText1: TRLDBText;
    ppDesRe3: TRLDBText;
    RLBand09: TRLBand;
    RLDraw9: TRLDraw;
    PedRe2LOCPRO: TStringField;
    PedRe2NOMMRC: TStringField;
    PedParIMPMRC: TStringField;
    PedParIMPTRA: TStringField;
    PedParIMPFIN: TStringField;
    PedParIMPREF: TStringField;
    PedParIMPOBS: TStringField;
    ppCodIte: TRLLabel;
    RLBand10: TRLBand;
    RLLabel5: TRLLabel;
    RLBand11: TRLBand;
    RLDraw4: TRLDraw;
    RLLabel11: TRLLabel;
    ppPraMed: TRLLabel;
    PedParIMPLOC: TStringField;
    ppNomEmp: TRLLabel;
    ppEndEmp: TRLLabel;
    ppCidEmp: TRLLabel;
    ppFonEmp: TRLLabel;
    ppWebEmp: TRLLabel;
    ppCepEmp: TRLLabel;
    ppUfeEmp: TRLLabel;
    ppFaxEmp: TRLLabel;
    ppEmaEmp: TRLLabel;
    RLLabel6: TRLLabel;
    ppTexto2: TRLMemo;
    ppTexto3: TRLMemo;
    RLLabel7: TRLLabel;
    RLLabel9: TRLLabel;
    ppTexto4: TRLMemo;
    ppTexto5: TRLMemo;
    RLLabel10: TRLLabel;
    PedRe2VLQRE2: TFloatField;
    PedRe2VDSRE2: TFloatField;
    PedRe2VACRE2: TFloatField;
    PedRe2VDPRE2: TFloatField;
    PedRe2VAPRE2: TFloatField;
    PedRe2VDRRE2: TFloatField;
    PedRe2VCSRE2: TFloatField;
    PedRe2SLDRE2: TFloatField;
    PedRe2CODUND: TStringField;
    PedRe2ICMRE2: TFloatField;
    PedRe2TRBICM: TStringField;
    PedRe2BSCICM: TFloatField;
    PedRe2REDICM: TFloatField;
    PedRe2INCREV: TFloatField;
    PedRe2INCFIN: TFloatField;
    PedRe2BASESB: TFloatField;
    PedRe2ICMSUB: TFloatField;
    PedRe2MRGSUB: TFloatField;
    PedRe2CLSIPI: TStringField;
    PedRe2IPIRE2: TFloatField;
    PedRe2TRBIPI: TStringField;
    PedRe2BSCIPI: TFloatField;
    PedRe2REDIPI: TFloatField;
    PedRe2TOTGE2: TFloatField;
    PedRe2NRORE2: TIntegerField;
    PedRe2CODANT: TStringField;
    PedResID_PEDRES: TIntegerField;
    PedResDTERES: TDateTimeField;
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
    PedResOB1RES: TStringField;
    PedResOB2RES: TStringField;
    PedResOB3RES: TStringField;
    PedResOB4RES: TStringField;
    PedResOB5RES: TStringField;
    PedResOB6RES: TStringField;
    PedResOB7RES: TStringField;
    PedResOB8RES: TStringField;
    PedResQTIRE2: TIntegerField;
    PedResCODEAN: TStringField;
    PedResSITRES: TStringField;
    ppQtdReg: TRLLabel;
    PedResCONSUM: TStringField;
    PedParFLGIMP: TStringField;
    PedParIMPANT: TStringField;
    RLDetailGrid2: TRLDetailGrid;
    RLDBText3: TRLDBText;
    RLDetailGrid3: TRLDetailGrid;
    RLDBText2: TRLDBText;
    RLDetailGrid4: TRLDetailGrid;
    RLDBText5: TRLDBText;
    RLLabel12: TRLLabel;
    RLLabel16: TRLLabel;
    RLLabel17: TRLLabel;
    RLLabel18: TRLLabel;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand06BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand10BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand11BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1AfterPrint(Sender: TObject);
    procedure RLBand02BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    PraMed     : real;
    Ger_QtdIte : integer;
    Ite_BasIcm : real;
    Ite_TotIcm : real;
    Ite_BasSub : real;
    Ite_TotSub : real;
    Ite_BasIpi : real;
    Ite_TotIpi : real;
    Ite_TotRes : real;
    Ite_TotDsr : real;
    Ite_TotGe2 : real;
    Ger_TotSub : real;
    Ger_TotIpi : real;
    Ger_TotRes : real;
    Ger_TotDsr : real;
    Ger_TotGer : real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE07 : TfmManE07;

implementation

uses SendMailOptions, ManGDB, Bbfuncao, Bbgeral;

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

  ppPedido.Caption := 'VIA DE SEPARAÇÃO DO PEDIDO No. '+fNumZeros(IntToStr(PedResId_PedRes.Value),6);

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinCli.NomCli,'+
               '        FinCli.CgcCli,'+
               '        FinCli.Pt3Cli,'+
               '        FinCli.Fo3Cli,'+
               '        FinCli.Em1Cli '+
               ' From FinCli'+
               ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(PedResCodCli.Value));
       Open;

       ppNomCli.Caption := Trim(FieldbyName('NomCli').AsString);
       ppCgcCli.Caption := fFormatCgcCpf(FieldbyName('CgcCli').AsString);
       ppEmaCli.Caption := Trim(FieldbyName('Em1Cli').AsString);

       if Trim(FieldbyName('Pt3Cli').AsString) <> '' then
          ppFonCli.Caption := '('+ Trim(FieldbyName('Pt3Cli').AsString) +') '+Trim(FieldbyName('Fo3Cli').AsString)
       else
          ppFonCli.Caption := Trim(FieldbyName('Fo3Cli').AsString);

  end;

  if Trim(PedResTenCli.Value) <> '' then
     ppEndEn1.Caption := Trim(PedResTenCli.Value)+ ' ' +Trim(PedResEndCli.Value)
  else
     ppEndEn1.Caption := Trim(PedResEndCli.Value);

  if Trim(PedResNumCli.Value) <> '' then
     ppEndEn1.Caption := ppEndEn1.Caption+ ', ' +Trim(PedResNumCli.Value);

  if Trim(PedResRefCli.Value) <> '' then
     ppEndEn1.Caption := ppEndEn1.Caption+ ' ' +Trim(PedResRefCli.Value);

  if Trim(PedResBaiCli.Value) <> '' then
     ppEndEn1.Caption := ppEndEn1.Caption+ ' ' +Trim(PedResBaiCli.Value);

  ppEndEn2.Caption := 'Cidade ' +Trim(PedResCidCli.Value)+ ' UF ' +PedResUfeCli.Value;

  if Trim(PedResCepCli.Value) <> '' then
     ppEndEn2.Caption := ppEndEn2.Caption + ' Cep: ' +copy(PedResCepCli.Value,1,5)+ '-' +copy(PedResCepCli.Value,6,3);

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(PedResCodVen.Value));
       Open;

       ppApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerUsu.PrtUsu,'+
               '        GerUsu.FonUsu '+
               ' From GerUsu'+
               ' Where GerUsu.CodVen = '+ QuotedStr(IntToStr(PedResCodVen.Value));
       Open;

       if Trim(FieldbyName('PrtUsu').AsString) <> '' then
          ppFonVen.Caption := '('+ Trim(FieldbyName('PrtUsu').AsString) +') '+Trim(FieldbyName('FonUsu').AsString)
       else
          ppFonVen.Caption := Trim(FieldbyName('FonUsu').AsString);

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
             Text := ' Select GerUsu.PrtUsu,'+
                     '        GerUsu.FonUsu '+
                     ' From GerUsu'+
                     ' Where GerUsu.CodAtd = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
             Open;

             if Trim(FieldbyName('PrtUsu').AsString) <> '' then
                ppFonAtd.Caption := '('+ Trim(FieldbyName('PrtUsu').AsString) +') '+Trim(FieldbyName('FonUsu').AsString)
             else
                ppFonAtd.Caption := Trim(FieldbyName('FonUsu').AsString);

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
             Text := ' Select GerUsu.PrtUsu,'+
                     '        GerUsu.FonUsu '+
                     ' From GerUsu'+
                     ' Where GerUsu.CodVen = '+ QuotedStr(IntToStr(PedResCodAtd.Value));
             Open;

             if Trim(FieldbyName('PrtUsu').AsString) <> '' then
                ppFonAtd.Caption := '('+ Trim(FieldbyName('PrtUsu').AsString) +') '+Trim(FieldbyName('FonUsu').AsString)
             else
                ppFonAtd.Caption := Trim(FieldbyName('FonUsu').AsString);

        end;
     end;

     end
  else
     begin

     ppApeAtd.Caption := '';
     ppFonAtd.Caption := '';

  end;
end;

procedure TfmManE07.RLBand06BeforePrint(Sender: TObject; var PrintIt: Boolean);
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

procedure TfmManE07.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if PedRe2NroIte.Value = 1 then begin

     RLLabel13.Caption := 'Produtos com estoque disponivel';

     RLLabel13.Font.Color := clBlack;

     end
  else
     begin

     RLLabel13.Caption := 'Produtos com estoque abaixo do disponivel';

     RLLabel13.Font.Color := clRed;

  end;
end;

procedure TfmManE07.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then begin

        if PedParFlgImp.Value = 'Nao' then RLPreviewSetup1.EnabledButtons := [];

     end;
  end;
     
  Ger_TotSub := 0;
  Ger_TotIpi := 0;
  Ger_TotRes := 0;
  Ger_TotDsr := 0;
  Ger_TotGer := 0;
  Ger_QtdIte := 0;

  if PedParUsaDec.Value = 'Nao' then
     PedRe2SldRe2.DisplayFormat := '###,###,##0';

  if PedParImpAnt.Value = 'Sim' then RLDetailGrid2.Visible := True;
  if PedParImpMrc.Value = 'Sim' then RLDetailGrid4.Visible := True;

  if PedParImpObs.Value = 'Sim' then RLBand05.Visible := True;
  if PedParImpTra.Value = 'Sim' then RLBand09.Visible := True;
  if PedParImpFin.Value = 'Sim' then RLBand10.Visible := True;
  if PedParImpFin.Value = 'Sim' then RLBand11.Visible := True;

  RLBand04.Visible := True;
  
  if PedParImpLoc.Value = 'Sim' then begin

     RLDetailGrid3.Visible := True;

     with PedRe2,SQL do begin

          Close;
          Text := ' Select PedRe2.CodClp,'+
                  '        PedRe2.CodGru,'+
                  '        PedRe2.CodSub,'+
                  '        PedRe2.CodPro,'+
                  '        PedRe2.DesRe2,'+
                  '        PedRe2.VlqRe2,'+
                  '        PedRe2.VdsRe2,'+
                  '        PedRe2.VacRe2,'+
                  '        PedRe2.VdpRe2,'+
                  '        PedRe2.VapRe2,'+
                  '        PedRe2.VdrRe2,'+
                  '        PedRe2.VcsRe2,'+
                  '        PedRe2.SldRe2,'+
                  '        PedRe2.CodUnd,'+
                  '        PedRe2.IcmRe2,'+
                  '        PedRe2.TrbIcm,'+
                  '        PedRe2.BscIcm,'+
                  '        PedRe2.RedIcm,'+
                  '        PedRe2.IncRev,'+
                  '        PedRe2.IncFin,'+
                  '        PedRe2.BaseSb,'+
                  '        PedRe2.IcmSub,'+
                  '        PedRe2.MrgSub,'+
                  '        PedRe2.ClsIpi,'+
                  '        PedRe2.IpiRe2,'+
                  '        PedRe2.TrbIpi,'+
                  '        PedRe2.BscIpi,'+
                  '        PedRe2.RedIpi,'+
                  '        PedRe2.PcoRe2,'+
                  '        PedRe2.TotGe2,'+
                  '        PedRe2.NroRe2,'+
                  '        PedRe2.NroIte,'+
                  '        EstPro.NumPro,'+
                  '        EstPro.RefPro,'+
                  '        EstPro.DscPro,'+
                  '        EstPro.LocPro,'+
                  '        EstPro.CodAnt,'+
                  '        EstMrc.NomMrc,'+
                  '        PedRe2.CodClp || _UNICODE_FSS '+ QuotedStr('-') +' || PedRe2.CodGru || _UNICODE_FSS '+ QuotedStr('.') +' || PedRe2.CodSub || _UNICODE_FSS '+ QuotedStr('.') +' || PedRe2.CodPro as CodIte'+
                  ' From PedRe2 LEFT JOIN EstPro ON (PedRe2.CodClp = EstPro.CodClp '+
                  '                              AND PedRe2.CodGru = EstPro.CodGru '+
                  '                              AND PedRe2.CodSub = EstPro.CodSub '+
                  '                              AND PedRe2.CodPro = EstPro.CodPro)'+
                  '             LEFT JOIN EstMrc ON (EstPro.CodMrc = EstMrc.CodMrc)'+
                  ' Where PedRe2.Id_PedRes = :Id_PedRes'+
                  ' Order by PedRe2.NroIte,EstPro.LocPro';
          Open;

     end;
  end;
end;

procedure TfmManE07.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  Ite_TotDsr := fRound(PedRe2VdrRe2.Value * PedRe2SldRe2.Value,2);
  Ite_TotRes := fRound(PedRe2VlqRe2.Value * PedRe2SldRe2.Value,2);

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

  if PedParImpRef.Value = 'Sim' then begin

     if Trim(PedRe2CodAnt.Value) <> '' then
        ppCodIte.Caption := Trim(PedRe2CodAnt.Value)
     else
        ppCodIte.Caption := Trim(PedRe2RefPro.Value);

     end
  else
     ppCodIte.Caption := PedRe2CodClp.Value+ '-' +PedRe2CodGru.Value+ '.' +PedRe2CodSub.Value+ '.' +PedRe2CodPro.Value;
end;

procedure TfmManE07.RLBand10BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  QtdReg : integer;
begin

  Ger_TotGer := fRound((Ger_TotRes - Ger_TotDsr) + Ger_TotIpi + Ger_TotSub,2);
  
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

           ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpRe3').AsFloat));

           PraMed := PraMed + quSql.FieldbyName('PraRe3').AsInteger;

           Inc(QtdReg);

        end;

        quSql.Next;

  end;

  if QtdReg > 0 then PraMed := PraMed / StrToFloat(IntToStr(QtdReg));

end;

procedure TfmManE07.RLBand11BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ppPraMed.Caption := FormatFloat('##0.00',PraMed)+' Dias';
end;

procedure TfmManE07.RLDetailGrid1AfterPrint(Sender: TObject);
begin

  Inc(Ger_QtdIte);

  Ger_TotSub := Ger_TotSub + Ite_TotSub;
  Ger_TotIpi := Ger_TotIpi + Ite_TotIpi;
  Ger_TotRes := Ger_TotRes + Ite_TotRes;
  Ger_TotDsr := Ger_TotDsr + Ite_TotDsr;

end;

procedure TfmManE07.RLBand02BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ppQtdReg.Caption := IntToStr(Ger_QtdIte);
end;

end.
