unit ManE01;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery;

type
  TfmManE01 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    p2Imagem: TRLImage;
    p2ApeEmp: TRLLabel;
    p2NomEmp: TRLLabel;
    p2EndEmp: TRLLabel;
    p2RefEmp: TRLLabel;
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
    DsCmpPed: TwwDataSource;
    DsCmpPe2: TwwDataSource;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel55: TRLLabel;
    RLLabel56: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel59: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    p2NomVen: TRLLabel;
    ppTotPed: TRLLabel;
    ppTotIpi: TRLLabel;
    ppTotGer: TRLLabel;
    ppCodPro: TRLLabel;
    ppObsPe2: TRLDBText;
    RLBand5: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel8: TRLLabel;
    ppTexto2: TRLMemo;
    RLLabel21: TRLLabel;
    ppTexto3: TRLMemo;
    quSql: TwwQuery;
    p2FonEmp: TRLLabel;
    p2FaxEmp: TRLLabel;
    CmpPedID_CMPPED: TIntegerField;
    CmpPedDTEPED: TDateTimeField;
    CmpPedUFEPED: TStringField;
    CmpPedCODFOR: TIntegerField;
    CmpPedNOMCON: TStringField;
    CmpPedNOMVEN: TStringField;
    CmpPedTOTPED: TFloatField;
    CmpPedTOTSUB: TFloatField;
    CmpPedTOTIPI: TFloatField;
    CmpPedTOTGER: TFloatField;
    CmpPe2CODCLP: TStringField;
    CmpPe2CODGRU: TStringField;
    CmpPe2CODSUB: TStringField;
    CmpPe2CODPRO: TStringField;
    CmpPe2CODPFO: TStringField;
    CmpPe2DESPE2: TStringField;
    CmpPe2OBSPE2: TStringField;
    CmpPe2CODUND: TStringField;
    CmpPe2VLQPE2: TFloatField;
    CmpPe2ICMPE2: TFloatField;
    CmpPe2IPIPE2: TFloatField;
    CmpPe2TOTPE2: TFloatField;
    CmpPe2TOTGE2: TFloatField;
    CmpPe2QTPPE2: TFloatField;
    CmpPe2SLDPE2: TFloatField;
    CmpPe2TOTIPI: TFloatField;
    CmpPe2TOTSUB: TFloatField;
    CmpPedCODUSU: TIntegerField;
    RLLabel54: TRLLabel;
    RLLabel58: TRLLabel;
    p2DpePed: TRLLabel;
    p2PrePed: TRLLabel;
    RLLabel61: TRLLabel;
    CmpPedDPEPED: TDateTimeField;
    CmpPedPREPED: TIntegerField;
    CmpPe2QTRPE2: TFloatField;
    CmpPe2QTNPE2: TFloatField;
    RLDBText6: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    pnNroPe2: TRLLabel;
    CmpPedQTIPED: TIntegerField;
    CmpPe2NROPE2: TIntegerField;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    ppTotSub: TRLLabel;
    CmpPe2ID_CMPPE2: TIntegerField;
    CmpPedOB1PED: TStringField;
    CmpPedOB2PED: TStringField;
    CmpPedOB3PED: TStringField;
    CmpPedOB4PED: TStringField;
    CmpPedOB5PED: TStringField;
    CmpPedOB6PED: TStringField;
    CmpPedOB7PED: TStringField;
    CmpPedOB8PED: TStringField;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    CmpPe2MRGSUB: TFloatField;
    CmpPe2REFPRO: TStringField;
    CmpPe2IDEPRO: TStringField;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLLabel39: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel46: TRLLabel;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE01: TfmManE01;

implementation

uses Bbgeral, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmManE01.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE01.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin

  if FileExists('C:\Emerion\Print.bmp') then
     p2Imagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     p2Imagem.Picture.Bitmap.FreeImage;

  p2ApeEmp.Caption := GApeEmp;
  p2NomEmp.Caption := GRazEmp;
  p2EndEmp.Caption := GEndEmp;
  p2RefEmp.Caption := GRefEmp;
  p2FonEmp.Caption := 'Telefone : '+GFonEmp;
  p2FaxEmp.Caption := 'Fax : '+GFaxEmp;

  p2Titulo.Caption := 'Pedido de Compra No. '+ fNumZeros(IntToStr(CmpPedId_CmpPed.Value),7)+ ' - ' + FormatDateTime('dd/mm/yyyy',CmpPedDtePed.Value);

  p2CodFor.Caption := IntToStr(CmpPedCodFor.Value);

  p2NomCon.Caption := CmpPedNomCon.Value;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinFor.NomFor,'+
               '        FinFor.CepFor,'+
               '        FinFor.TenFor,'+
               '        FinFor.EndFor,'+
               '        FinFor.RefFor,'+
               '        FinFor.NumFor,'+
               '        FinFor.CidFor,'+
               '        FinFor.BaiFor,'+
               '        FinFor.SigUfe,'+
               '        FinFor.PrtFor,'+
               '        FinFor.FonFor,'+
               '        FinFor.PrfFor,'+
               '        FinFor.FaxFor '+
               ' From FinFor'+
               ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpPedCodFor.Value));
       Open;

       p2NomFor.Caption := Trim(FieldbyName('NomFor').AsString);

       if Trim(FieldbyName('TenFor').AsString) <> '' then
          p2EndFor.Caption := Trim(FieldbyName('TenFor').AsString)+ ' ' +Trim(FieldbyName('EndFor').AsString)
       else
          p2EndFor.Caption := Trim(FieldbyName('EndFor').AsString);

       if Trim(FieldbyName('NumFor').AsString) <> '' then
          p2EndFor.Caption := p2EndFor.Caption + ' ,' + Trim(FieldbyName('NumFor').AsString);

       if Trim(FieldbyName('RefFor').AsString) <> '' then
          p2EndFor.Caption := p2EndFor.Caption + ' ' + Trim(FieldbyName('RefFor').AsString);

       p2BaiFor.Caption := Trim(FieldbyName('BaiFor').AsString);
       p2CidFor.Caption := Trim(FieldbyName('CidFor').AsString);
       p2SigUfe.Caption := Trim(FieldbyName('SigUfe').AsString);

       if Trim(FieldbyName('PrtFor').AsString) <> '' then
          p2FonFor.Caption := '('+ Trim(FieldbyName('PrtFor').AsString) + ') ' +Trim(FieldbyName('FonFor').AsString)
       else
          p2FonFor.Caption := Trim(FieldbyName('FonFor').AsString);

       if Trim(FieldbyName('PrfFor').AsString) <> '' then
          p2FaxFor.Caption := '('+ Trim(FieldbyName('PrfFor').AsString) + ') ' +Trim(FieldbyName('FaxFor').AsString)
       else
          p2FaxFor.Caption := Trim(FieldbyName('FaxFor').AsString);
       
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerUsu.LogUsu'+
               ' From GerUsu'+
               ' Where GerUsu.CodUsu = '+ QuotedStr(IntToStr(CmpPedCodUsu.Value));
       Open;

       p2NomUsu.Caption := (FieldbyName('LogUsu').AsString);

  end;
end;

procedure TfmManE01.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  p2DpePed.Caption := FormatDateTime('dd/mm/yyyy',CmpPedDpePed.Value);

  p2PrePed.Caption := IntToStr(CmpPedPrePed.Value);

  p2NomVen.Caption := CmpPedNomVen.Value;

  ppTotPed.Caption := FormatFloat('###,###,##0.00',CmpPedTotPed.Value);
  ppTotIpi.Caption := FormatFloat('###,###,##0.00',CmpPedTotIpi.Value);
  ppTotSub.Caption := FormatFloat('###,###,##0.00',CmpPedTotSub.Value);
  ppTotGer.Caption := FormatFloat('###,###,##0.00',CmpPedTotGer.Value);

end;

procedure TfmManE01.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  pnNroPe2.Caption := fNumZeros(IntToStr(CmpPe2NroPe2.Value),3)+'/'+fNumZeros(IntToStr(CmpPedQtiPed.Value),3);

  ppCodPro.Caption := CmpPe2CodClp.Value+ '-' +CmpPe2CodGru.Value+ '.' +CmpPe2CodSub.Value+ '.' +CmpPe2CodPro.Value;
  
end;

procedure TfmManE01.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select CmpPe5.PraPe5,'+
               '        CmpPe5.ValPe5 '+
               ' From CmpPe5'+
               ' Where CmpPe5.Id_CmpPed = :Id_CmpPed'+
               ' Order by CmpPe5.NroPe5';

       with Params do begin

            Params[0].AsInteger := CmpPedId_CmpPed.Value;

       end;

       Open;
       First;

  end;

  ppTexto2.Lines.clear;
  ppTexto3.Lines.clear;

  while not quSQL.Eof do begin

        if quSql.FieldbyName('ValPe5').AsFloat > 0 then begin

           ppTexto2.Lines.Add(IntToStr(quSql.FieldbyName('PraPe5').AsInteger));
           ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',quSql.FieldbyName('ValPe5').AsFloat));

        end;

        quSql.Next;

  end;
end;

end.
