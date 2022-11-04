unit ManE12;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery, RLXLSFilter;

type
  TfmManE12 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppNomEmp: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    FatPe3: TQuery;
    DsFatPe3: TDataSource;
    DsFatPed: TDataSource;
    RLLabel8: TRLLabel;
    quSql: TQuery;
    ppCodVen: TRLDBText;
    ppCodCli: TRLDBText;
    FatPed: TQuery;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    ppQtpPe4: TRLDBText;
    ppCodUnd: TRLDBText;
    ppTotGe3: TRLDBText;
    ppDesRe3: TRLDBText;
    ppVlqRe3: TRLDBText;
    ppCgcCli: TRLLabel;
    RLDraw3: TRLDraw;
    RLBand5: TRLBand;
    RLLabel47: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel33: TRLLabel;
    RLLabel49: TRLLabel;
    RLLabel53: TRLLabel;
    RLBand4: TRLBand;
    RLLabel15: TRLLabel;
    RLLabel20: TRLLabel;
    ppTexto2: TRLMemo;
    RLLabel21: TRLLabel;
    ppTexto3: TRLMemo;
    RLLabel23: TRLLabel;
    ppTexto4: TRLMemo;
    ppTexto5: TRLMemo;
    RLLabel24: TRLLabel;
    RLBand6: TRLBand;
    RLLabel25: TRLLabel;
    ppEndTr1: TRLLabel;
    ppEndTr2: TRLLabel;
    ppEndTr3: TRLLabel;
    RLDBText1: TRLDBText;
    RLXLSFilter1: TRLXLSFilter;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    FatPe3CODCLP: TStringField;
    FatPe3CODGRU: TStringField;
    FatPe3CODSUB: TStringField;
    FatPe3CODPRO: TStringField;
    FatPe3DESRE2: TStringField;
    FatPe3VLQRE2: TFloatField;
    FatPe3CODUND: TStringField;
    FatPe3IPIRE2: TFloatField;
    PedPar: TwwQuery;
    PedParEXIREN: TStringField;
    PedParTIPATD: TStringField;
    PedParUSADEC: TStringField;
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
    ppPedido: TRLLabel;
    ppNomCli: TRLLabel;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    ppFonCli: TRLLabel;
    RLLabel65: TRLLabel;
    ppEmaCli: TRLLabel;
    RLLabel67: TRLLabel;
    ppComCli: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel73: TRLLabel;
    ppEncCli: TRLLabel;
    RLLabel75: TRLLabel;
    ppEndCli: TRLLabel;
    RLDraw16: TRLDraw;
    RLDraw17: TRLDraw;
    RLLabel77: TRLLabel;
    RLLabel78: TRLLabel;
    ppCicCli: TRLLabel;
    ppCidCli: TRLLabel;
    RLLabel81: TRLLabel;
    ppBacCli: TRLLabel;
    RLLabel83: TRLLabel;
    ppBaiCli: TRLLabel;
    RLLabel85: TRLLabel;
    RLLabel86: TRLLabel;
    ppCecCli: TRLLabel;
    ppCepCli: TRLLabel;
    RLLabel89: TRLLabel;
    RLLabel90: TRLLabel;
    ppUfcCli: TRLLabel;
    ppUfeCli: TRLLabel;
    RLLabel93: TRLLabel;
    RLLabel94: TRLLabel;
    ppFonVen: TRLLabel;
    RLLabel96: TRLLabel;
    ppEmaVen: TRLLabel;
    RLLabel3: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel4: TRLLabel;
    RLLabel103: TRLLabel;
    RLLabel104: TRLLabel;
    RLLabel106: TRLLabel;
    RLLabel107: TRLLabel;
    RLLabel108: TRLLabel;
    RLLabel105: TRLLabel;
    RLDraw4: TRLDraw;
    RLLabel109: TRLLabel;
    RLDBText7: TRLDBText;
    FatPe3ICMRE2: TFloatField;
    FatPe3NRORE2: TIntegerField;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDraw5: TRLDraw;
    FatPe3CODITE: TStringField;
    RLDBText11: TRLDBText;
    FatPe3CLSIPI: TStringField;
    RLDBText12: TRLDBText;
    RLBand2: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel5: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLLabel6: TRLLabel;
    RLSystemInfo2: TRLSystemInfo;
    ppApeVen: TRLLabel;
    FatPe3CODICL: TStringField;
    RLDBText13: TRLDBText;
    RLDraw1: TRLDraw;
    RLBand3: TRLBand;
    RLDraw7: TRLDraw;
    RLLabel2: TRLLabel;
    ppPraMed: TRLLabel;
    RLDraw8: TRLDraw;
    PedParFLGIMP: TStringField;
    FatPedID_FATPED: TIntegerField;
    FatPedDTEFAT: TDateTimeField;
    FatPedNRONFS: TIntegerField;
    FatPedCODCLI: TIntegerField;
    FatPedCEPCLI: TStringField;
    FatPedTENCLI: TStringField;
    FatPedENDCLI: TStringField;
    FatPedNUMCLI: TStringField;
    FatPedREFCLI: TStringField;
    FatPedBAICLI: TStringField;
    FatPedCIDCLI: TStringField;
    FatPedUFECLI: TStringField;
    FatPedCODTRA: TIntegerField;
    FatPedCODVEN: TIntegerField;
    FatPedTOTIPI: TFloatField;
    FatPedTOTFRT: TFloatField;
    FatPedTOTSUB: TFloatField;
    FatPedTOTDSR: TFloatField;
    FatPedTOTFAT: TFloatField;
    FatPedTOTGER: TFloatField;
    FatPedNOMTRA: TStringField;
    FatPedCEPTRA: TStringField;
    FatPedTENTRA: TStringField;
    FatPedENDTRA: TStringField;
    FatPedNUMTRA: TStringField;
    FatPedREFTRA: TStringField;
    FatPedBAITRA: TStringField;
    FatPedCIDTRA: TStringField;
    FatPedUFETRA: TStringField;
    FatPe3TOTLB2: TFloatField;
    FatPe3QTPPE4: TFloatField;
    FatPe3ID_PEDRES: TIntegerField;
    RLLabel1: TRLLabel;
    RLDBText10: TRLDBText;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    PraMed : real;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE12: TfmManE12;

implementation

uses SendMailOptions, ManGDB, Bbgeral;

{$R *.DFM}

procedure TfmManE12.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE12.RLBand1BeforePrint(Sender: TObject;  var PrintIt: Boolean);
begin

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

  ppPedido.Caption := 'Nota fiscal no. '+fNumZeros(IntToStr(FatPedNroNfs.Value),6);
     
  with quSQL,SQL do begin

       Close;
       Text := ' Select FinCli.NomCli,'+
               '        FinCli.CgcCli,'+
               '        FinCli.CecCli,'+
               '        FinCli.TecCli,'+
               '        FinCli.EncCli,'+
               '        FinCli.NrcCli,'+
               '        FinCli.RfcCli,'+
               '        FinCli.BacCli,'+
               '        FinCli.CicCli,'+
               '        FinCli.UfcCli,'+
               '        FinCli.ComCli,'+
               '        FinCli.Pt3Cli,'+
               '        FinCli.Fo3Cli,'+
               '        FinCli.Em1Cli '+
               ' From FinCli'+
               ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(FatPedCodCli.Value));
       Open;

       ppNomCli.Caption := Trim(FieldbyName('NomCli').AsString);
       ppCgcCli.Caption := fFormatCgcCpf(FieldbyName('CgcCli').AsString);
       ppComCli.Caption := Trim(FieldbyName('ComCli').AsString);
       ppEmaCli.Caption := Trim(FieldbyName('Em1Cli').AsString);
       ppBacCli.Caption := Trim(FieldbyName('BacCli').AsString);
       ppCicCli.Caption := Trim(FieldbyName('CicCli').AsString);
       ppUfcCli.Caption := Trim(FieldbyName('UfcCli').AsString);

       if Trim(FieldbyName('Pt3Cli').AsString) <> '' then
          ppFonCli.Caption := '('+ Trim(FieldbyName('Pt3Cli').AsString) +') '+Trim(FieldbyName('Fo3Cli').AsString)
       else
          ppFonCli.Caption := Trim(FieldbyName('Fo3Cli').AsString);

       if Trim(FieldbyName('TecCli').AsString) <> '' then
          ppEncCli.Caption := Trim(FieldbyName('TecCli').AsString)+ ' ' +Trim(FieldbyName('EncCli').AsString)
       else
          ppEncCli.Caption := Trim(FieldbyName('EncCli').AsString);

       if Trim(FieldbyName('NrcCli').AsString) <> '' then
          ppEncCli.Caption := ppEncCli.Caption+ ', ' +Trim(FieldbyName('NrcCli').AsString);

       if Trim(FieldbyName('RfcCli').AsString) <> '' then
          ppEncCli.Caption := ppEncCli.Caption+ ' ' +Trim(FieldbyName('RfcCli').AsString);

       if Trim(FieldbyName('CecCli').AsString) <> '' then
          ppCecCli.Caption := copy(Trim(FieldbyName('CecCli').AsString),1,5)+ '-' +copy(Trim(FieldbyName('CecCli').AsString),6,3)
       else
          ppCecCli.Caption := '';
          
  end;

  if Trim(FatPedTenCli.Value) <> '' then
     ppEndCli.Caption := Trim(FatPedTenCli.Value)+ ' ' +Trim(FatPedEndCli.Value)
  else
     ppEndCli.Caption := Trim(FatPedEndCli.Value);

  if Trim(FatPedNumCli.Value) <> '' then
     ppEndCli.Caption := ppEndCli.Caption+ ', ' +Trim(FatPedNumCli.Value);

  if Trim(FatPedRefCli.Value) <> '' then
     ppEndCli.Caption := ppEndCli.Caption+ ' ' +Trim(FatPedRefCli.Value);

  ppCidCli.Caption := Trim(FatPedCidCli.Value);
  ppBaiCli.Caption := Trim(FatPedBaiCli.Value);
  ppUfeCli.Caption := Trim(FatPedUfeCli.Value);

  if Trim(FatPedCepCli.Value) <> '' then
     ppCepCli.Caption := copy(FatPedCepCli.Value,1,5)+ '-' +copy(FatPedCepCli.Value,6,3)
  else
     ppCepCli.Caption := '';

  with quSQL,SQL do begin

       Close;
       Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '+ QuotedStr(IntToStr(FatPedCodVen.Value));
       Open;

       ppApeVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select GerUsu.EmaUsu,'+
               '        GerUsu.PrtUsu,'+
               '        GerUsu.FonUsu '+
               ' From GerUsu'+
               ' Where GerUsu.CodVen = '+ QuotedStr(IntToStr(FatPedCodVen.Value));
       Open;

       if Trim(FieldbyName('PrtUsu').AsString) <> '' then
          ppFonVen.Caption := '('+ Trim(FieldbyName('PrtUsu').AsString) +') '+Trim(FieldbyName('FonUsu').AsString)
       else
          ppFonVen.Caption := Trim(FieldbyName('FonUsu').AsString);

       ppEmaVen.Caption := Trim(FieldbyName('EmaUsu').AsString);

  end;  
end;

procedure TfmManE12.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
var
  QtdReg : integer;
begin

  with quSQL,SQL do begin

       Close;
       Text := ' Select FatPe6.PraPe6,'+
               '        FatPe6.DtvPe6,'+
               '        FatPe6.VlpPe6 '+
               ' From FatPe6'+
               ' Where FatPe6.Id_FatPed = :Id_FatPed'+
               ' Order by FatPe6.NroPe6';

       with Params do begin

            Params[0].AsInteger := FatPedId_FatPed.Value;

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

        if quSql.FieldbyName('VlpPe6').AsFloat > 0 then begin

           ppTexto2.Lines.Add(FormatDateTime('dd/mm/yyyy',quSql.FieldbyName('DtvPe6').AsDateTime));

           ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpPe6').AsFloat));

           PraMed := PraMed + quSql.FieldbyName('PraPe6').AsInteger;

           Inc(QtdReg);
           
        end;

        quSql.Next;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select FatPe7.PraPe7,'+
               '        FatPe7.DtvPe7,'+
               '        FatPe7.VlpPe7 '+
               ' From FatPe7'+
               ' Where FatPe7.Id_FatPed = :Id_FatPed'+
               ' Order by FatPe7.NroPe7';

       with Params do begin

            Params[0].AsInteger := FatPedId_FatPed.Value;

       end;

       Open;
       First;

  end;

  while not quSQL.Eof do begin

        if quSql.FieldbyName('VlpPe7').AsFloat > 0 then begin

           ppTexto2.Lines.Add(FormatDateTime('dd/mm/yyyy',quSql.FieldbyName('DtvPe7').AsDateTime));

           ppTexto3.Lines.Add(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpPe7').AsFloat));

           PraMed := PraMed + quSql.FieldbyName('PraPe7').AsInteger;

           Inc(QtdReg);
           
        end;

        quSql.Next;

  end;

  if QtdReg > 0 then PraMed := PraMed / StrToFloat(IntToStr(QtdReg));

end;

procedure TfmManE12.RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppEndTr1.Caption := Trim(FatPedNomTra.Value);
  ppEndTr2.Caption := '';
  ppEndTr3.Caption := '';

  if Trim(FatPedTenTra.Value) <> '' then
     ppEndTr2.Caption := Trim(FatPedTenTra.Value)+ ' ' +Trim(FatPedEndTra.Value)
  else
     ppEndTr2.Caption := Trim(FatPedEndTra.Value) ;

  if Trim(FatPedNumTra.Value) <> '' then
     ppEndTr2.Caption := ppEndTr2.Caption+ ', ' +Trim(FatPedNumTra.Value);

  if Trim(FatPedRefTra.Value) <> '' then
     ppEndTr2.Caption := ppEndTr2.Caption+ ', ' +Trim(FatPedRefTra.Value);

  if Trim(FatPedBaiTra.Value) <> '' then
     ppEndTr2.Caption := ppEndTr2.Caption+ ' ' +Trim(FatPedBaiTra.Value);

  if Trim(FatPedCidTra.Value) <> '' then
     ppEndTr3.Caption := Trim(FatPedCidTra.Value);

  if Trim(FatPedUfeTra.Value) <> '' then
     ppEndTr3.Caption := ppEndTr3.Caption+ ' - ' +FatPedUfeTra.Value;

  if Trim(FatPedCepTra.Value) <> '' then
     ppEndTr3.Caption := ppEndTr3.Caption + ' Cep ' +copy(FatPedCepTra.Value,1,5)+ '-' +copy(FatPedCepTra.Value,6,3);

end;

procedure TfmManE12.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if PedParUsaDec.Value = 'Nao' then
     FatPe3QtpPe4.DisplayFormat := '###,###,##0';

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then begin

        if PedParFlgImp.Value = 'Nao' then RLPreviewSetup1.EnabledButtons := [];

     end;
  end;   
end;

procedure TfmManE12.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  ppPraMed.Caption := FormatFloat('##0.00',PraMed)+' Dias';
end;

end.
