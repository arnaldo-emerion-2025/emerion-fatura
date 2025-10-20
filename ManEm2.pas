unit ManEm2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLParser, Db, DBTables, Wwquery, RLPDFFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLPreviewForm, RLReport;

type
  TfmManEm2 = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppApeEmp: TRLLabel;
    ppNomEmp: TRLLabel;
    ppEndEmp: TRLLabel;
    ppRefEmp: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    p2Titulo: TRLLabel;
    RLLabel11: TRLLabel;
    ppEndTra: TRLLabel;
    RLBand2: TRLBand;
    RLLabel38: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLSubDetail1: TRLSubDetail;
    RLBand4: TRLBand;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLBand3: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel46: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLLabel56: TRLLabel;
    ppObsDes: TRLMemo;
    DsFatPed: TDataSource;
    DsFatDes: TDataSource;
    RLLabel8: TRLLabel;
    FinTra: TwwQuery;
    ppTelefone: TRLLabel;
    RLDraw1: TRLDraw;
    RLDraw2: TRLDraw;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    FatPed: TwwQuery;
    FinTraNOMTRA: TStringField;
    FinTraPRTTRA: TStringField;
    FinTraFONTRA: TStringField;
    DsFinTra: TDataSource;
    RLLabel9: TRLLabel;
    RLLabel16: TRLLabel;
    ppFonTra: TRLLabel;
    RLLabel23: TRLLabel;
    RLLabel24: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel5: TRLLabel;
    ppEndCli: TRLLabel;
    RLLabel15: TRLLabel;
    ppFonCli: TRLLabel;
    RLLabel12: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText15: TRLDBText;
    RLDraw5: TRLDraw;
    RLDraw6: TRLDraw;
    RLDraw7: TRLDraw;
    RLDraw8: TRLDraw;
    RLDraw9: TRLDraw;
    RLDraw11: TRLDraw;
    FatDes: TwwQuery;
    FatDesQTDVOL: TIntegerField;
    FatDesCODUND: TStringField;
    FatDesNOMCON: TStringField;
    FatDesPESDES: TFloatField;
    FatDesCODEMP: TIntegerField;
    FatDesDTERES: TDateTimeField;
    FatDesNUMRES: TIntegerField;
    FatDesSEQLIB: TIntegerField;
    FatDesSEQFAT: TIntegerField;
    FatDesSEQDES: TIntegerField;
    FatDesNRODES: TIntegerField;
    TRLDetailGrid1: TRLDetailGrid;
    RLLabel1: TRLLabel;
    ppTipFrt: TRLLabel;
    RLBand5: TRLBand;
    ppDataExtenso: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel19: TRLLabel;
    RLDraw14: TRLDraw;
    ppAssinatura: TRLLabel;
    ppCidTra: TRLLabel;
    ppUfeTra: TRLLabel;
    ppNomTra: TRLLabel;
    quSql: TwwQuery;
    RLLabel3: TRLLabel;
    ppCgcTra: TRLLabel;
    RLLabel4: TRLLabel;
    ppCgcCli: TRLLabel;
    RLLabel6: TRLLabel;
    ppInsTra: TRLLabel;
    RLLabel13: TRLLabel;
    ppInsCli: TRLLabel;
    RLLabel10: TRLLabel;
    RLDraw10: TRLDraw;
    FatDesNRONFS: TIntegerField;
    FatDesDTEFAT: TDateTimeField;
    FatDesPESLIQDES: TFloatField;
    RLLabel2: TRLLabel;
    RLDBText5: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText6: TRLDBText;
    RLExpressionParser1: TRLExpressionParser;
    FatPedCODEMP: TIntegerField;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    FatPedDTEFAT: TDateTimeField;
    FatPedUFEFAT: TStringField;
    FatPedFRTFAT: TStringField;
    FatPedCODCLI: TIntegerField;
    FatPedCODVEN: TIntegerField;
    FatPedOBSDES: TStringField;
    FatPedAPEEMP: TStringField;
    FatPedAPEVEN: TStringField;
    FatPedNOMCLI: TStringField;
    FatPedNRONFS: TIntegerField;
    FatPedNOMTRA: TStringField;
    FatPedCEPTRA: TStringField;
    FatPedTENTRA: TStringField;
    FatPedENDTRA: TStringField;
    FatPedREFTRA: TStringField;
    FatPedNUMTRA: TStringField;
    FatPedBAITRA: TStringField;
    FatPedCIDTRA: TStringField;
    FatPedUFETRA: TStringField;
    FatPedPLCTRA: TStringField;
    FatPedTRASDA: TIntegerField;
    FatPedTOTGER: TFloatField;
    FatPedTIPFRT: TStringField;
    FatPedPT4CLI: TStringField;
    FatPedFO4CLI: TStringField;
    FatPedTENCLI: TStringField;
    FatPedCEPCLI: TStringField;
    FatPedENDCLI: TStringField;
    FatPedREFCLI: TStringField;
    FatPedNUMCLI: TStringField;
    FatPedBAICLI: TStringField;
    FatPedCIDCLI: TStringField;
    FatPedUFECLI: TStringField;
    FatPedCGCCLI: TStringField;
    FatPedINSTRA: TStringField;
    FatPedINSCLI: TStringField;
    FatPedCGCTRA: TStringField;
    FatPedTIP: TStringField;
    FatPedALTVOL: TIntegerField;
    FatPedINFLIQ: TFloatField;
    FatPedINFBRT: TFloatField;
    FatPedID_FRETE: TIntegerField;
    RLLabel18: TRLLabel;
    RLLabel20: TRLLabel;
    RLLabel21: TRLLabel;
    RLLabel22: TRLLabel;
    RLDraw12: TRLDraw;
    RLDraw15: TRLDraw;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure ppPesDesBeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    vlPesDes, vlPesLiqDes: Double;
  public
    { Public declarations }
  end;

var
  fmManEm2: TfmManEm2;

implementation

uses Bbgeral, Bbfuncao, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmManEm2.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManEm2.RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;

  if Trim(GFonUsu) <> '' then
    ppTeleFone.Caption := 'Telefone ' + GFonEmp
  else
    ppTeleFone.Caption := ' ';

  if FatPedTraSda.Value > 0 then
  begin

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select FinTra.NomTra,' +
        '        FinTra.TenTra,' +
        '        FinTra.EndTra,' +
        '        FinTra.NumTra,' +
        '        FinTra.RefTra,' +
        '        FinTra.BaiTra,' +
        '        FinTra.CidTra,' +
        '        FinTra.SigUfe,' +
        '        FinTra.PrtTra,' +
        '        FinTra.FonTra,' +
        '        FinTra.CgcTra,' +
        '        FinTra.InsTra ' +
        ' From FinTra' +
        ' Where FinTra.CodTra = ' + QuotedStr(IntToStr(FatPedTraSda.Value));
      Open;

    end;

    ppNomTra.Caption := Trim(quSQL.FieldbyName('NomTra').AsString);

    if Trim(quSQL.FieldbyName('PrtTra').AsString) <> '' then
      ppFonTra.Caption := '( ' + quSQL.FieldbyName('PrtTra').AsString + ' ) ' + quSQL.FieldbyName('FonTra').AsString
    else
      ppFonTra.Caption := quSQL.FieldbyName('FonTra').AsString;

    if Trim(quSQL.FieldbyName('TenTra').AsString) <> '' then
      ppEndTra.Caption := quSQL.FieldbyName('TenTra').AsString + ' ' + Trim(quSQL.FieldbyName('EndTra').AsString)
    else
      ppEndTra.Caption := Trim(quSQL.FieldbyName('EndTra').AsString);

    if Trim(quSQL.FieldbyName('NumTra').AsString) <> '' then
      ppEndTra.Caption := ppEndTra.Caption + ', ' + quSQL.FieldbyName('NumTra').AsString;

    if Trim(quSQL.FieldbyName('RefTra').AsString) <> '' then
      ppEndTra.Caption := ppEndTra.Caption + ' ' + quSQL.FieldbyName('RefTra').AsString;

    ppCidTra.Caption := Trim(quSQL.FieldbyName('CidTra').AsString);
    ppUfeTra.Caption := Trim(quSQL.FieldbyName('SigUfe').AsString);
    ppCgcTra.Caption := fFormatCgcCpf(quSQL.FieldbyName('CgcTra').AsString);
    ppInsTra.Caption := Trim(quSQL.FieldbyName('InsTra').AsString);

  end
  else
  begin

    ppNomTra.Caption := Trim(FatPedNomTra.Value);

    if Trim(FinTraPrtTra.Value) <> '' then
      ppFonTra.Caption := '( ' + FinTraPrtTra.Value + ' ) ' + FinTraFonTra.Value
    else
      ppFonTra.Caption := FinTraFonTra.Value;

    if Trim(FatPedTenTra.Value) <> '' then
      ppEndTra.Caption := FatPedTenTra.Value;

    ppEndTra.Caption := ppEndTra.Caption + FatPedEndTra.Value;

    if Trim(FatPedNumTra.Value) <> '' then
      ppEndTra.Caption := ppEndTra.Caption + ', ' + FatPedNumTra.Value;
    if Trim(FatPedBaiTra.Value) <> '' then
      ppEndTra.Caption := ppEndTra.Caption + ' ' + FatPedBaiTra.Value;

    ppCidTra.Caption := Trim(FatPedCidTra.Value);
    ppUfeTra.Caption := Trim(FatPedUfeTra.Value);
    ppCgcTra.Caption := fFormatCgcCpf(FatPedCgcTra.Value);
    ppInsTra.Caption := Trim(FatPedInsTra.Value);

  end;

  if Trim(FatPedPt4Cli.Value) <> '' then
    ppFonCli.Caption := '( ' + FatPedPt4Cli.Value + ' ) ' + FatPedFo4Cli.Value
  else
    ppFonCli.Caption := FatPedFo4Cli.Value;

  ppEndCli.Caption := '';

  if Trim(FatPedTEnCli.Value) <> '' then
    ppEndCli.Caption := Trim(FatPedTenCli.Value);

  ppEndCli.Caption := ppEndCli.Caption + FatPedEndCli.Value;

  if Trim(FatPedNumCli.Value) <> '' then
    ppEndCli.Caption := ppEndCli.Caption + ', ' + FatPedNumCli.Value;
  if Trim(FatPedBaiCli.Value) <> '' then
    ppEndCli.Caption := ppEndCli.Caption + ' ' + FatPedBaiCli.Value;

  ppCgcCli.Caption := fFormatCgcCpf(FatPedCgcCli.Value);
  ppInsCli.Caption := Trim(FatPedInsCli.Value)

end;

procedure TfmManEm2.RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
begin

  ppObsDes.Lines.Clear;

  ppObsDes.Lines.Add(FatPedObsDes.Value);

  if FatPedID_FRETE.AsInteger = 0 then
    ppTipFrt.Caption := 'Pago ( X )    A Pagar (   )'
  else if FatPedID_FRETE.AsInteger in [1, 2, 3] then
    ppTipFrt.Caption := 'Pago (   )    A Pagar ( X )'
  else
    ppTipFrt.Caption := 'Sem Frete';

end;

procedure TfmManEm2.ppPesDesBeforePrint(Sender: TObject; var PrintIt: Boolean);
begin
  {  if FatDesPesDes.Value > 0 then
       ppPesDes.Caption := FormatFloat('###,###,##0.0000',FatDesPesDes.Value)
    else
       ppPesDes.Caption := ' ';}

  vlPesDes := vlPesDes + FatDesPesDes.AsFloat;
  vlPesLiqDes := vlPesLiqDes + FatDesPesLiqDes.AsFloat;
end;

procedure TfmManEm2.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  QtdCar: real;
begin

  ppDataExtenso.Caption := GCidEmp + ', ' + copy(FormatDateTime('dd/mm/yyyy', Date), 1, 2) + ' de ' + Trim(fDMes(Date)) + ' de ' +
    copy(FormatDateTime('dd/mm/yyyy', Date), 7, 4);

  QtdCar := 40 - Length(Trim(GRazEmp));

  if QtdCar > 0 then
  begin

    QtdCar := Int(QtdCar / 2);

    if QtdCar > 0 then
      ppAssinatura.Caption := fReplicate(' ', StrToInt(FloatToStr(QtdCar))) + Trim(GRazEmp);

  end
  else
    ppAssinatura.Caption := GRazEmp;
end;

procedure TfmManEm2.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  vlPesDes := 0;
  vlPesLiqDes := 0;
end;

end.

