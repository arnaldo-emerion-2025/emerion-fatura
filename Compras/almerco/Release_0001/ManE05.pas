unit ManE05;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery;

type
  TfmManE05 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    ppTitulo: TRLLabel;
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
    RLLabel22: TRLLabel;
    ppNomFor: TRLLabel;
    ppEndFor: TRLLabel;
    ppBaiFor: TRLLabel;
    ppFonFor: TRLLabel;
    ppLogUsu: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    ppCidFor: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel33: TRLLabel;
    ppSigUfe: TRLLabel;
    RLLabel35: TRLLabel;
    ppFaxFor: TRLLabel;
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
    CmpEnt: TwwQuery;
    CmpEn2: TwwQuery;
    DsCmpEnt: TwwDataSource;
    DsCmpEn2: TwwDataSource;
    RLBand3: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel46: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText15: TRLDBText;
    RLLabel49: TRLLabel;
    RLLabel48: TRLLabel;
    RLLabel47: TRLLabel;
    RLLabel50: TRLLabel;
    RLLabel51: TRLLabel;
    RLLabel52: TRLLabel;
    ppCodPro: TRLLabel;
    RLBand5: TRLBand;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel8: TRLLabel;
    ppTexto2: TRLMemo;
    RLLabel21: TRLLabel;
    ppTexto3: TRLMemo;
    quSql: TwwQuery;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel3: TRLLabel;
    ppDscPfa: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel28: TRLLabel;
    RLLabel31: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel45: TRLLabel;
    RLLabel54: TRLLabel;
    RLLabel55: TRLLabel;
    RLLabel57: TRLLabel;
    RLLabel58: TRLLabel;
    RLLabel60: TRLLabel;
    RLLabel61: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel67: TRLLabel;
    RLLabel69: TRLLabel;
    RLLabel70: TRLLabel;
    RLLabel71: TRLLabel;
    RLLabel72: TRLLabel;
    RLLabel73: TRLLabel;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLLabel76: TRLLabel;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    RLDraw1: TRLDraw;
    CmpEntID_CMPENT: TIntegerField;
    CmpEntNUMDOC: TIntegerField;
    CmpEntDTEDOC: TDateTimeField;
    CmpEntCODFOR: TIntegerField;
    CmpEntCODUSU: TIntegerField;
    CmpEntUFEENT: TStringField;
    CmpEntTOTENC: TFloatField;
    CmpEntTOTICC: TFloatField;
    CmpEntTOTIPC: TFloatField;
    CmpEntTOTSUC: TFloatField;
    CmpEntTOTACC: TFloatField;
    CmpEntTOTSEG: TFloatField;
    CmpEntTOTFRT: TFloatField;
    CmpEntTOTDES: TFloatField;
    CmpEntTOTDCC: TFloatField;
    CmpEntTOTGEC: TFloatField;
    CmpEntVDOFSC: TFloatField;
    CmpEntVCOFOR: TFloatField;
    CmpEntVCOEMP: TFloatField;
    CmpEntTOTFOR: TFloatField;
    CmpEntDESFOR: TFloatField;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    CmpEntDTEOPE: TDateTimeField;
    CmpEntCODPFA: TStringField;
    CmpEntTIPPFA: TStringField;
    RLDBText10: TRLDBText;
    RLDBText11: TRLDBText;
    RLDBText12: TRLDBText;
    RLDBText13: TRLDBText;
    RLDBText14: TRLDBText;
    RLDBText16: TRLDBText;
    RLDBText17: TRLDBText;
    RLDBText18: TRLDBText;
    RLDBText19: TRLDBText;
    RLDBText20: TRLDBText;
    RLDBText21: TRLDBText;
    RLDBText22: TRLDBText;
    RLDBText23: TRLDBText;
    RLDBText24: TRLDBText;
    RLDBText25: TRLDBText;
    RLDBText26: TRLDBText;
    CmpEn2ID_CMPEN2: TIntegerField;
    CmpEn2CODCLP: TStringField;
    CmpEn2CODGRU: TStringField;
    CmpEn2CODSUB: TStringField;
    CmpEn2CODPRO: TStringField;
    CmpEn2DESEN2: TStringField;
    CmpEn2CODUND: TStringField;
    CmpEn2QTPEN2: TFloatField;
    CmpEn2VLQEN2: TFloatField;
    CmpEn2ICMEN2: TFloatField;
    CmpEn2IPIEN2: TFloatField;
    CmpEn2TOTGE2: TFloatField;
    RLDBText27: TRLDBText;
    CmpEntMODPFA: TStringField;
    ppApeEmp: TRLLabel;
    ppNomEmp: TRLLabel;
    ppEndEmp: TRLLabel;
    ppRefEmp: TRLLabel;
    ppFonEmp: TRLLabel;
    ppFaxEmp: TRLLabel;
    ppImagem: TRLImage;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE05 : TfmManE05;

implementation

uses Bbgeral, Bbfuncao, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmManE05.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE05.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
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

  ppTitulo.Caption := 'Entrada de mercadoria de No. '+ fNumZeros(IntToStr(CmpEntId_CmpEnt.Value),7);

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
               ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpEntCodFor.Value));
       Open;

       ppNomFor.Caption := Trim(FieldbyName('NomFor').AsString);

       if Trim(FieldbyName('TenFor').AsString) <> '' then
          ppEndFor.Caption := Trim(FieldbyName('TenFor').AsString)+ ' ' +Trim(FieldbyName('EndFor').AsString)
       else
          ppEndFor.Caption := Trim(FieldbyName('EndFor').AsString);

       if Trim(FieldbyName('NumFor').AsString) <> '' then
          ppEndFor.Caption := ppEndFor.Caption + ' ,' + Trim(FieldbyName('NumFor').AsString);

       if Trim(FieldbyName('RefFor').AsString) <> '' then
          ppEndFor.Caption := ppEndFor.Caption + ' ' + Trim(FieldbyName('RefFor').AsString);

       ppBaiFor.Caption := Trim(FieldbyName('BaiFor').AsString);
       ppCidFor.Caption := Trim(FieldbyName('CidFor').AsString);
       ppSigUfe.Caption := Trim(FieldbyName('SigUfe').AsString);

       if Trim(FieldbyName('PrtFor').AsString) <> '' then
          ppFonFor.Caption := '('+ Trim(FieldbyName('PrtFor').AsString) + ') ' +Trim(FieldbyName('FonFor').AsString)
       else
          ppFonFor.Caption := Trim(FieldbyName('FonFor').AsString);

       if Trim(FieldbyName('PrfFor').AsString) <> '' then
          ppFaxFor.Caption := '('+ Trim(FieldbyName('PrfFor').AsString) + ') ' +Trim(FieldbyName('FaxFor').AsString)
       else
          ppFaxFor.Caption := Trim(FieldbyName('FaxFor').AsString);

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerUsu.LogUsu'+
               ' From GerUsu'+
               ' Where GerUsu.CodUsu = '+ QuotedStr(IntToStr(CmpEntCodUsu.Value));
       Open;

       ppLogUsu.Caption := (FieldbyName('LogUsu').AsString);

  end;
end;

procedure TfmManE05.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ppCodPro.Caption := CmpEn2CodClp.Value+ '-' +CmpEn2CodGru.Value+ '.' +CmpEn2CodSub.Value+ '.' +CmpEn2CodPro.Value;
end;

procedure TfmManE05.RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select CmpEn3.DtvEn3,'+
               '        CmpEn3.VlpEn3 '+
               ' From CmpEn3'+
               ' Where CmpEn3.Id_CmpEnt = :Id_CmpEnt'+
               ' Order by CmpEn3.NroEn3';

       with Params do begin     

            Params[0].AsInteger := CmpEntId_CmpEnt.Value;

       end;

       Open;
       First;

  end;

  ppTexto2.Lines.clear;
  ppTexto3.Lines.clear;

  while not quSQL.Eof do begin

        if quSql.FieldbyName('VlpEn3').AsFloat > 0 then begin

           ppTexto2.Lines.Add(FormatDateTime('dd/mm/yyyy',quSql.FieldbyName('DtvEn3').AsDateTime));
           ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpEn3').AsFloat));

        end;

        quSql.Next;

  end;
end;

procedure TfmManE05.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  if Trim(CmpEntModPfa.Value) = 'Importacao' then begin

     RLLabel69.Visible := True;
     RLLabel70.Visible := True;
     RLLabel71.Visible := True;
     RLLabel72.Visible := True;
     RLLabel73.Visible := True;
     RLLabel74.Visible := True;
     RLLabel75.Visible := True;
     RLLabel76.Visible := True;
     RLLabel77.Visible := True;
     RLLabel78.Visible := True;

     RLDBText22.Visible := True;
     RLDBText23.Visible := True;
     RLDBText24.Visible := True;
     RLDBText25.Visible := True;
     RLDBText26.Visible := True;

  end;
end;

end.
