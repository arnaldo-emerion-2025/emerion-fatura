unit ManE02;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery, RLBarcode,
  RLXLSFilter, jpeg;

type
  TfmManE02 = class(TForm)
    FatBol: TQuery;
    DsFatBol: TDataSource;
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLDetailGrid1: TRLDetailGrid;
    RLDraw1: TRLDraw;
    ppNomBan2: TRLLabel;
    RLDraw2: TRLDraw;
    ppSiglaBanco2: TRLLabel;
    RLDraw3: TRLDraw;
    pnDigBol2: TRLLabel;
    RLLabel8: TRLLabel;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLLabel9: TRLLabel;
    RLLabel10: TRLLabel;
    RLDraw6: TRLDraw;
    RLLabel11: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel12: TRLLabel;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    RLLabel15: TRLLabel;
    RLLabel16: TRLLabel;
    RLDraw8: TRLDraw;
    ppMenBco1: TRLLabel;
    ppNosNum2: TRLLabel;
    ppNumCre2: TRLLabel;
    RLDraw9: TRLDraw;
    RLDraw10: TRLDraw;
    RLLabel21: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel22: TRLLabel;
    ppDteCre2: TRLLabel;
    RLLabel24: TRLLabel;
    RLLabel25: TRLLabel;
    RLLabel26: TRLLabel;
    RLLabel27: TRLLabel;
    ppCodCnb2: TRLLabel;
    RLLabel29: TRLLabel;
    RLLabel30: TRLLabel;
    RLLabel31: TRLLabel;
    pnVlsCrp4: TRLLabel;
    pnDtvCrp2: TRLLabel;
    ppNomEmp2: TRLLabel;
    RLLabel36: TRLLabel;
    RLLabel37: TRLLabel;
    RLLabel38: TRLLabel;
    RLLabel39: TRLLabel;
    RLDraw21: TRLDraw;
    RLLabel40: TRLLabel;
    RLDraw16: TRLDraw;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    ppImagem: TRLImage;
    ppApeEmp: TRLLabel;
    ppNomEmp: TRLLabel;
    ppEndEmp: TRLLabel;
    ppRefEmp: TRLLabel;
    ppFonEmp: TRLLabel;
    ppImagem102: TRLImage;
    ppNomBan1: TRLLabel;
    RLDraw23: TRLDraw;
    RLDraw24: TRLDraw;
    ppSiglaBanco1: TRLLabel;
    RLDraw25: TRLDraw;
    pnDigBol1: TRLLabel;
    RLLabel51: TRLLabel;
    ppNomEmp1: TRLLabel;
    RLDraw26: TRLDraw;
    RLLabel53: TRLLabel;
    ppNumCre1: TRLLabel;
    ppNroCtr: TRLLabel;
    RLLabel56: TRLLabel;
    RLDraw28: TRLDraw;
    RLDraw29: TRLDraw;
    RLLabel62: TRLLabel;
    RLLabel63: TRLLabel;
    RLLabel66: TRLLabel;
    RLLabel68: TRLLabel;
    pnVlsCrp1: TRLLabel;
    RLDraw34: TRLDraw;
    RLLabel70: TRLLabel;
    pnVlsCrp2: TRLLabel;
    RLLabel72: TRLLabel;
    ppCodCnb1: TRLLabel;
    RLDraw38: TRLDraw;
    RLLabel74: TRLLabel;
    RLLabel75: TRLLabel;
    RLDraw39: TRLDraw;
    RLLabel77: TRLLabel;
    ppNosNum1: TRLLabel;
    RLDraw30: TRLDraw;
    RLDraw36: TRLDraw;
    RLLabel79: TRLLabel;
    RLDraw41: TRLDraw;
    RLLabel61: TRLLabel;
    ppMensa101: TRLLabel;
    ppMensa102: TRLLabel;
    ppMensa103: TRLLabel;
    ppMensa104: TRLLabel;
    ppMensa105: TRLLabel;
    RLDraw31: TRLDraw;
    RLLabel82: TRLLabel;
    RLLabel57: TRLLabel;
    ppDteBol: TRLLabel;
    RLDraw33: TRLDraw;
    RLDraw35: TRLDraw;
    RLDraw40: TRLDraw;
    ppCodTco: TRLLabel;
    RLLabel84: TRLLabel;
    pnVlsCrp3: TRLLabel;
    ppMensa201: TRLLabel;
    ppMensa202: TRLLabel;
    ppMensa203: TRLLabel;
    ppMensa205: TRLLabel;
    RLDraw13: TRLDraw;
    RLDraw14: TRLDraw;
    RLLabel90: TRLLabel;
    RLDraw15: TRLDraw;
    RLDraw17: TRLDraw;
    RLLabel92: TRLLabel;
    ppNomCli2: TRLLabel;
    pnEndCli1: TRLLabel;
    pnEndCli2: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel96: TRLLabel;
    RLDraw18: TRLDraw;
    RLLabel97: TRLLabel;
    RLLabel98: TRLLabel;
    RLLabel99: TRLLabel;
    FatBolSEQARQ: TStringField;
    FatBolCODEMP: TIntegerField;
    FatBolDTECRE: TDateTimeField;
    FatBolNUMCRE: TFloatField;
    FatBolNUMCRP: TIntegerField;
    FatBolQTPCRE: TIntegerField;
    FatBolCODCLI: TIntegerField;
    FatBolCODBAN: TIntegerField;
    FatBolDTVCRP: TDateTimeField;
    FatBolVLPCRP: TFloatField;
    FatBolNOSBOL: TStringField;
    FatBolDTVBOL: TDateTimeField;
    FatBolVLPBOL: TFloatField;
    FatBolSEQBOL: TIntegerField;
    FatBolCODTCO: TStringField;
    FatBolCODAGB: TStringField;
    FatBolCODCNB: TStringField;
    FatBolNROCON: TStringField;
    FatBolNROCTR: TIntegerField;
    FatBolNROAUT: TIntegerField;
    FatBolFLGENC: TStringField;
    FatBolFLGIMP: TStringField;
    FatBolFLGALT: TStringField;
    FatBolNOSNUM: TStringField;
    FatBolCODBAR: TStringField;
    FatBolLINDIG: TStringField;
    FatBolFLGEMI: TStringField;
    ppFaxEmp: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLLabel54: TRLLabel;
    pnDtvCrp1: TRLLabel;
    RLDBBarcode1: TRLDBBarcode;
    quSql: TwwQuery;
    ppImagem101: TRLImage;
    ppImagem202: TRLImage;
    ppImagem201: TRLImage;
    RLPDFFilter1: TRLPDFFilter;
    RLXLSFilter1: TRLXLSFilter;
    RLHTMLFilter1: TRLHTMLFilter;
    RLDraw20: TRLDraw;
    RLLabel1: TRLLabel;
    ppNomCli1: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    ppMensa204: TRLLabel;
    FatBolPERMULTA: TFloatField;
    ppImagem103: TRLImage;
    ppImagem203: TRLImage;
    RLLabel2: TRLLabel;
    ppCgcEmp: TRLLabel;
    ppImagem104: TRLImage;
    ppImagem204: TRLImage;
    ppImagem105: TRLImage;
    ppImagem205: TRLImage;
    ppNomEndEmp1: TRLMemo;
    RLDraw19: TRLDraw;
    ppNomEndEmp2: TRLMemo;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE02: TfmManE02;

implementation

uses Bbgeral, Bbfuncao, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmManE02.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE02.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  ValJur, ValMulta: real;
  pathImg, strNum, GCgcCli, sDias: string;
  nosnum: integer;
begin
  pathImg := ParamStr(0);
  pathImg := ExtractFilePath(pathImg);

  if FileExists(ExtractFilePath(pathImg) + 'Print.bmp') then
    ppImagem.Picture.Bitmap.LoadFromFile(ExtractFilePath(pathImg) + 'Print.bmp')
  else
    ppImagem.Picture.Bitmap.FreeImage;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;
  ppCgcEmp.Caption := 'CPF/CNPJ: ' + GCgcEmp;

  if Trim(GFonUsu) <> '' then
    ppFonEmp.Caption := 'Telefone: ' + GFonEmp
  else
    ppFonEmp.Caption := ' ';

  if Trim(GFaxUsu) <> '' then
    ppFaxEmp.Caption := 'Fax: ' + GFaxEmp
  else
    ppFaxEmp.Caption := ' ';

  if FatBolCodBan.AsInteger = 1 then
  begin

    ppImagem101.Visible := False;
    ppImagem102.Visible := False;
    ppImagem104.Visible := False;
    ppImagem103.Visible := False;
    ppImagem105.Visible := True;

    ppImagem201.Visible := False;
    ppImagem202.Visible := False;
    ppImagem204.Visible := False;
    ppImagem203.Visible := False;
    ppImagem205.Visible := True;

    ppNomBan1.Caption := 'Banco do Brasil';
    ppNomBan2.Caption := 'Banco do Brasil';

    ppSiglaBanco1.Caption := '001-9';
    ppSiglaBanco2.Caption := '001-9';

    ppMenBco1.Caption := 'Pagável em qualquer banco até o vencimento. Após, atualize o boleto no site bb.com.br.';

    ppCodCnb2.Caption := copy(Trim(FatBolCodAgb.AsString), 1, length(Trim(FatBolCodAgb.AsString)) - 1) + '-' +
      copy(Trim(FatBolCodAgb.AsString), length(Trim(FatBolCodAgb.AsString)), 1) + '/' +
      copy(Trim(FatBolCodCnb.AsString), 1, length(Trim(FatBolCodCnb.AsString)) - 1) + '-' +
      copy(Trim(FatBolCodCnb.AsString), length(Trim(FatBolCodCnb.AsString)), 1);

    nosnum := 0;
    if (trim(FatBolNosNum.AsString) <> '') then
      nosnum := FatBolNosNum.AsInteger;

    strNum := Replicate('0', 10 - (length(intToStr(nosnum)))) + intToStr(nosnum);

    ppNosNum1.Caption :=
      Trim(FatBolNROCON.AsString) +
      copy(Trim(strNum), 1, 9);// + '-' +  copy(Trim(strNum), 9, 1);

    ppNosNum2.Caption := ppNosNum1.Caption;

    ppCodTco.Caption := Trim(FatBolCodTco.AsString);

    pnVlsCrp1.Caption := FormatFloat('###,###,##0.00', FatBolVlpCrp.Value);
    pnVlsCrp2.Caption := FormatFloat('###,###,##0.00', FatBolVlpCrp.Value);
    pnVlsCrp3.Caption := FormatFloat('###,###,##0.00', FatBolVlpCrp.Value);
    pnVlsCrp4.Caption := FormatFloat('###,###,##0.00', FatBolVlpCrp.Value);

  end;

  if FatBolCodBan.Value = 33 then
  begin

    ppImagem101.Visible := False;
    ppImagem102.Visible := False;
    ppImagem104.Visible := False;
    ppImagem105.Visible := False;
    ppImagem103.Visible := True;

    ppImagem201.Visible := False;
    ppImagem202.Visible := False;
    ppImagem204.Visible := False;
    ppImagem203.Visible := True;
    ppImagem205.Visible := False;

    ppNomBan1.Caption := 'Santander';
    ppNomBan2.Caption := 'Santander';

    ppSiglaBanco1.Caption := '033-7';
    ppSiglaBanco2.Caption := '033-7';

    ppMenBco1.Caption := 'Pagável preferencialmente no Banco Santander.';

  end;

  if FatBolCodBan.Value = 237 then
  begin

    ppImagem101.Visible := False;
    ppImagem104.Visible := False;
    ppImagem102.Visible := True;
    ppImagem103.Visible := False;
    ppImagem105.Visible := False;

    ppImagem201.Visible := False;
    ppImagem204.Visible := False;
    ppImagem202.Visible := True;
    ppImagem203.Visible := False;
    ppImagem205.Visible := False;

    ppNomBan1.Caption := 'Bradesco';
    ppNomBan2.Caption := 'Bradesco';

    ppSiglaBanco1.Caption := '237-2';
    ppSiglaBanco2.Caption := '237-2';

    ppMenBco1.Caption := 'Pagável preferencialmente nas agências do Bradesco.';

  end;

  if FatBolCodBan.Value = 341 then
  begin

    ppImagem103.Visible := False;
    ppImagem102.Visible := False;
    ppImagem104.Visible := False;
    ppImagem101.Visible := True;
    ppImagem105.Visible := False;

    ppImagem203.Visible := False;
    ppImagem202.Visible := False;
    ppImagem204.Visible := False;
    ppImagem201.Visible := True;
    ppImagem205.Visible := False;

    ppNomBan1.Caption := 'Banco Itaú S.A.';
    ppNomBan2.Caption := 'Banco Itaú S.A.';

    ppSiglaBanco1.Caption := '341-7';
    ppSiglaBanco2.Caption := '341-7';

    ppMenBco1.Caption := 'Até o vencimento, preferencialmente no Itaú e após o vencimento, somente no Itaú.';

  end;

  if FatBolCodBan.Value = 748 then
  begin

    ppImagem103.Visible := False;
    ppImagem102.Visible := False;
    ppImagem101.Visible := False;
    ppImagem104.Visible := True;
    ppImagem105.Visible := False;

    ppImagem203.Visible := False;
    ppImagem202.Visible := False;
    ppImagem201.Visible := False;
    ppImagem204.Visible := True;
    ppImagem205.Visible := False;

    ppNomBan1.Caption := 'Banco Sicredi';
    ppNomBan2.Caption := 'Banco Sicredi';

    ppSiglaBanco1.Caption := '748-X';
    ppSiglaBanco2.Caption := '748-X';

    ppMenBco1.Caption := 'PAGÁVEL PREFERENCIALMENTE NAS COOPERATIVAS DE CRÉDITO DO SICREDI.';

  end;

  pnDigBol1.Caption := Trim(FatBolLinDig.AsString);
  pnDigBol2.Caption := Trim(FatBolLinDig.AsString);

  ppNumCre1.Caption := FloatToStr(FatBolNumCre.Value) + '/' + IntToStr(FatBolNumCrp.Value);
  ppNumCre2.Caption := FloatToStr(FatBolNumCre.Value) + '/' + IntToStr(FatBolNumCrp.Value);

  ppDteBol.Caption := FormatDateTime('dd/mm/yyyy', Date);

  if FatBolNroCtr.Value > 0 then
    ppNroCtr.Caption := IntToStr(FatBolNroCtr.Value)
  else
    ppNroCtr.Caption := '';

  ppNomEndEmp1.Lines.Clear;
  ppNomEndEmp1.Lines.add(GRazEmp + ' - CNPJ: ' + GCgcEmp);
  ppNomEndEmp1.Lines.add(GEndEmp);
  ppNomEndEmp1.Lines.add(GRefEmp);
  ppNomEndEmp2.Lines.Clear;
  ppNomEndEmp2.Lines.add(GRazEmp + ' - CNPJ: ' + GCgcEmp);
  ppNomEndEmp2.Lines.add(GEndEmp);
  ppNomEndEmp2.Lines.add(GRefEmp);

  //ppNomEmp1.Caption := GRazEmp;
  //ppNomEmp2.Caption := GRazEmp;

  //pnCgcEmp.Caption := GCgcEmp;

  ppDteCre2.Caption := FormatDateTime('dd/mm/yyyy', FatBolDteCre.Value);

  pnDtvCrp1.Caption := FormatDateTime('dd/mm/yyyy', FatBolDtvCrp.Value);
  pnDtvCrp2.Caption := FormatDateTime('dd/mm/yyyy', FatBolDtvCrp.Value);

  pnVlsCrp1.Caption := FormatFloat('###,###,##0.00', FatBolVlpCrp.Value);
  pnVlsCrp2.Caption := FormatFloat('###,###,##0.00', FatBolVlpCrp.Value);
  pnVlsCrp3.Caption := FormatFloat('###,###,##0.00', FatBolVlpCrp.Value);
  pnVlsCrp4.Caption := FormatFloat('###,###,##0.00', FatBolVlpCrp.Value);

  if FatBolCodBan.Value = 237 then
  begin

    ppCodCnb1.Caption := copy(Trim(FatBolCodCnb.Value), 1, 5) + '-' + copy(Trim(FatBolCodCnb.Value), 6, 1);

    {ppCodCnb2.Caption := copy(Trim(FatBolCodAgb.Value), 1, 4) + '-' +
      copy(Trim(FatBolCodAgb.Value), 5, 1) + '/' +
      copy(Trim(FatBolCodCnb.Value), 1, 5) + '-' +
      copy(Trim(FatBolCodCnb.Value), 6, 1); }

    ppCodCnb2.Caption := copy(Trim(FatBolCodAgb.AsString), 1, length(Trim(FatBolCodAgb.AsString)) - 1) + '-' +
      copy(Trim(FatBolCodAgb.AsString), length(Trim(FatBolCodAgb.AsString)), 1) + '/' +
      copy(Trim(FatBolCodCnb.AsString), 1, length(Trim(FatBolCodCnb.AsString)) - 1) + '-' +
      copy(Trim(FatBolCodCnb.AsString), length(Trim(FatBolCodCnb.AsString)), 1);

  end;

  if FatBolCodBan.Value = 341 then
  begin

    ppCodCnb1.Caption := copy(Trim(FatBolCodCnb.Value), 1, 5) + '-' + copy(Trim(FatBolCodCnb.Value), 6, 1);

    ppCodCnb2.Caption := FNumZeros(FatBolCodAgb.Value, 4) + '/' +
      copy(Trim(FatBolCodCnb.Value), 1, 5) + '-' +
      copy(Trim(FatBolCodCnb.Value), 6, 1);

  end;

  if FatBolCodBan.Value = 748 then
  begin

    ppNosNum1.Caption :=
      copy(Trim(FatBolNosNum.Value), 1, 2) + '/' +
      copy(Trim(FatBolNosNum.Value), 3, 1) +
      copy(Trim(FatBolNosNum.Value), 4, 5) + '-' +
      copy(Trim(FatBolNosNum.Value), 9, 1);

    ppNosNum2.Caption := ppNosNum1.Caption;

    ppCodCnb1.Caption := copy(Trim(FatBolCodAgb.AsString), 1, length(Trim(FatBolCodAgb.AsString)) - 1) + '.' +
      '28' + '.' +
      fNumZeros(FatBolCodCli.AsString, 5);
    ppCodCnb2.Caption := ppCodCnb1.Caption;
  end;

  if FatBolCodBan.Value = 237 then
  begin

    ppNosNum1.Caption := copy(Trim(FatBolCodTco.Value), 2, 2) + '/' +
      copy(Trim(FatBolNosNum.Value), 1, Length(Trim(FatBolNosNum.Value)) - 1) + '-' +
      copy(Trim(FatBolNosNum.Value), Length(Trim(FatBolNosNum.Value)), 1);

    ppNosNum2.Caption := copy(Trim(FatBolCodTco.Value), 2, 2) + '/' +
      copy(Trim(FatBolNosNum.Value), 1, Length(Trim(FatBolNosNum.Value)) - 1) + '-' +
      copy(Trim(FatBolNosNum.Value), Length(Trim(FatBolNosNum.Value)), 1);

  end;

  if FatBolCodBan.Value = 341 then
  begin

    ppNosNum1.Caption := Trim(FatBolCodTco.Value) + '/' +
      copy(Trim(FatBolNosNum.Value), 1, Length(Trim(FatBolNosNum.Value)) - 1) + '-' +
      copy(Trim(FatBolNosNum.Value), Length(Trim(FatBolNosNum.Value)), 1);

    ppNosNum2.Caption := Trim(FatBolCodTco.Value) + '/' +
      copy(Trim(FatBolNosNum.Value), 1, Length(Trim(FatBolNosNum.Value)) - 1) + '-' +
      copy(Trim(FatBolNosNum.Value), Length(Trim(FatBolNosNum.Value)), 1);

  end;

  if FatBolCodBan.Value = 33 then
  begin
    ppNosNum1.Caption := FatBolNosNum.AsString;
    ppNosNum2.Caption := FatBolNosNum.AsString;
  end;

  if FatBolCodBan.Value = 237 then
    ppCodTco.Caption := copy(Trim(FatBolCodTco.Value), 2, 2);

  if FatBolCodBan.Value = 341 then
    ppCodTco.Caption := Trim(FatBolCodTco.Value);

  if FatBolCodBan.Value = 33 then
    ppCodTco.Caption := Trim(FatBolCodTco.AsString);

  ppMensa101.Caption := '';
  ppMensa102.Caption := '';
  ppMensa103.Caption := '';
  ppMensa104.Caption := '';
  ppMensa105.Caption := '';

  ppMensa201.Caption := '';
  ppMensa202.Caption := '';
  ppMensa203.Caption := '';
  ppMensa204.Caption := '';
  ppMensa205.Caption := '';

  with quSQL, SQL do
  begin

    // Adicionado campos IN1CNB, IN2CNB para atender New Imports.
    Close;
    Text := ' Select FinCnb.QtdPro,   ' +
            '        FinCnb.ValJur,   '+
            '        FinCnb.PerMulta, ' +
            '        FinCnb.MENSG1,   ' +
            '        FinCnb.MENSG2,   ' +
            '        FinCnb.MENSG3,   ' +
            '        FinCnb.IN1CNB,   ' +
            '        FinCnb.IN2CNB    ' +
            '   From FinCnb           ' +
            '   left join COBTCO tco on tco.CODBAN = FinCnb.CodBan' +
            '                       and tco.CODAGB = FinCnb.CodAgb' +
            '                       and tco.CODCNB = FinCnb.CodCnb' +
            '  Where FinCnb.CodBan = ' + QuotedStr(IntToStr(FatBolCodBan.Value)) +
            '    and FinCnb.CodAgb = ' + QuotedStr(FatBolCodAgb.Value) +
            '    and FinCnb.CodCnb = ' + QuotedStr(FatBolCodCnb.Value);
    Open;

    if FatBolCodBan.Value = 33 then
    begin
      RLLabel25.Caption := 'Carteira';
      RLDraw8.Height    := 31;
      RLLabel26.Visible := False;
      ppCodTco.Visible  := False;

      RLLabel2.Visible := True;

      case StrToInt(Trim(FatBolCodTco.AsString)) of
        101: RLLabel2.Caption := 'COBRANÇA SIMPLES - RCR';
        102: RLLabel2.Caption := 'COBRANÇA SIMPLES - CSR';
        201: RLLabel2.Caption := 'COBRANÇA PENHOR - RCR';
      end;

      RLLabel84.Caption := 'REAL';
    end
    else
    begin
      RLLabel25.Caption := 'Uso do Banco/Convênio';
      RLDraw8.Height := 62;
      RLLabel26.Visible := True;
      ppCodTco.Visible := True;
      RLLabel2.Visible := False;
      RLLabel84.Caption := 'R$';
    end;

    if FatBolCodBan.Value = 33 then
    begin
      RLLabel84.Caption := 'REAL';
      RLLabel22.Caption := 'NÃO';
    end;

    if (FieldbyName('QtdPro').AsInteger > 0) and ((StrToIntDef(Copy(FieldbyName('IN1CNB').AsString,1,2) ,0) <> 66) and
                                                  (StrToIntDef(Copy(FieldbyName('IN2CNB').AsString,1,2) ,0) <> 66)) then
    begin

      ppMensa101.Caption := 'Protestar ' + IntToStr(FieldbyName('QtdPro').AsInteger) + ' dias corridos após o vencimento';
      ppMensa201.Caption := 'Protestar ' + IntToStr(FieldbyName('QtdPro').AsInteger) + ' dias corridos após o vencimento';

    end;

    if FieldbyName('ValJur').AsFloat > 0 then
    begin

      ValJur := ((FatBolVlpCrp.Value * FieldbyName('ValJur').AsFloat) / 100) / 30;

      ppMensa102.Caption := 'Após o vencimento cobrar mora de R$ ' + Trim(PreString(FormatFloat('###,###,##0.00', ValJur), 18)) + ' ao dia';
      ppMensa202.Caption := 'Após o vencimento cobrar mora de R$ ' + Trim(PreString(FormatFloat('###,###,##0.00', ValJur), 18)) + ' ao dia';

    end;

    if FieldbyName('PerMulta').AsFloat > 0 then
    begin

      ValMulta := (FatBolVlpCrp.Value * FieldbyName('PerMulta').AsFloat) / 100;

      ppMensa103.Caption := 'Após o vencimento cobrar multa de R$ ' + Trim(PreString(FormatFloat('###,###,##0.00', ValMulta), 18));
      ppMensa203.Caption := 'Após o vencimento cobrar multa de R$ ' + Trim(PreString(FormatFloat('###,###,##0.00', ValMulta), 18));

    end;

    //ppMensa103.Caption := quSQL.FieldByName('MENSG1').AsString;
    ppMensa104.Caption := quSQL.FieldByName('MENSG2').AsString;
    ppMensa105.Caption := quSQL.FieldByName('MENSG3').AsString;

    if ((StrToIntDef(Copy(FieldbyName('IN1CNB').AsString,1,2) ,0) = 66) or
        (StrToIntDef(Copy(FieldbyName('IN2CNB').AsString,1,2) ,0) = 66)) then
    begin
      sDias := '';
      if FieldbyName('QtdPro').AsInteger > 0 then
        sDias:= IntToStr(FieldbyName('QtdPro').AsInteger)+' DIAS ';

      ppMensa104.Caption := 'SUJEITO A NEGATIVAÇÃO APÓS '+sDias+'CORRIDOS DO VENCIMENTO';
    end;
    
    //ppMensa203.Caption := quSQL.FieldByName('MENSG1').AsString;
    ppMensa204.Caption := quSQL.FieldByName('MENSG2').AsString;
    ppMensa205.Caption := quSQL.FieldByName('MENSG3').AsString;

    if ((StrToIntDef(Copy(FieldbyName('IN1CNB').AsString,1,2) ,0) = 66) or
        (StrToIntDef(Copy(FieldbyName('IN2CNB').AsString,1,2) ,0) = 66)) then
      ppMensa204.Caption := 'SUJEITO A NEGATIVAÇÃO APÓS '+sDias+'CORRIDOS DO VENCIMENTO';

  end;

  with quSQL, SQL do
  begin

    Close;
    Text := ' Select FinCli.NomCli,' +
      ' FinCli.CecCli,' +
      ' FinCli.TecCli,' +
      ' FinCli.EncCli,' +
      ' FinCli.NrcCli,' +
      ' FinCli.RfcCli,' +
      ' FinCli.BacCli,' +
      ' FinCli.CicCli,' +
      ' FinCli.CGCCLI,' +
      ' FinCli.UfcCli ' +
      ' From FinCli' +
      ' Where FinCli.CodCli = ' + QuotedStr(IntToStr(FatBolCodCli.Value));
    Open;

    GCgcCli := fFormatCgcCPF(FieldbyName('CgcCli').AsString);
    GCgcCli := ifThen(length(GCgcCli) > 16, ' - CNPJ: ', ' - CPF: ') + GCgcCli;

    ppNomCli1.Caption := IntToStr(FatBolCodCli.AsInteger) + ' ' + Trim(FieldbyName('NomCli').AsString + GCgcCli);
    ppNomCli2.Caption := IntToStr(FatBolCodCli.AsInteger) + ' ' + Trim(FieldbyName('NomCli').AsString + GCgcCli);

    if Trim(FieldbyName('TecCli').AsString) <> '' then
      pnEndCli1.Caption := Trim(FieldbyName('TecCli').AsString) + ' ' + Trim(FieldbyName('EncCli').AsString)
    else
      pnEndCli1.Caption := Trim(FieldbyName('EncCli').AsString);

    if Trim(FieldbyName('NrcCli').AsString) <> '' then
      pnEndCli1.Caption := pnEndCli1.Caption + ', ' + Trim(FieldbyName('NrcCli').AsString);

    if Trim(FieldbyName('RfcCli').AsString) <> '' then
      pnEndCli1.Caption := pnEndCli1.Caption + ' ' + Trim(FieldbyName('RfcCli').AsString);

    if Trim(FieldbyName('BacCli').AsString) <> '' then
      pnEndCli1.Caption := pnEndCli1.Caption + ' ' + Trim(FieldbyName('BacCli').AsString);

    if Trim(FieldbyName('UfcCli').AsString) <> '' then
      pnEndCli2.Caption := Trim(FieldbyName('CicCli').AsString) + ' - ' + Trim(FieldbyName('UfcCli').AsString)
    else
      pnEndCli2.Caption := Trim(FieldbyName('CicCli').AsString);

    if Trim(pnEndCli2.Caption) <> '' then
      pnEndCli2.Caption := pnEndCli2.Caption + ' ' + copy(Trim(FieldbyName('CecCli').AsString), 1, 5) + '-' + copy(Trim(FieldbyName('CecCli').AsString), 6, 3)
    else
      pnEndCli2.Caption := copy(Trim(FieldbyName('CecCli').AsString), 1, 5) + '-' + copy(Trim(FieldbyName('CecCli').AsString), 6, 3);

  end;
end;

end.

