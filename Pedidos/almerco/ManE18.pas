unit ManE18;

interface

uses
  Wwquery, RLXLSFilter, Db, DBTables, RLPDFFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLPreviewForm, RLReport, Classes, Controls, Windows, Messages,
  SysUtils, Graphics, Forms, Dialogs;

type
  TfmManE18 = class(TForm)
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    DsFinR12: TDataSource;
    FinR12: TQuery;
    RLXLSFilter1: TRLXLSFilter;
    RLReport1: TRLReport;
    FinR12SEQARQ: TStringField;
    FinR12CODCLI: TIntegerField;
    FinR12NOMCLI: TStringField;
    FinR12APECLI: TStringField;
    FinR12INSCLI: TStringField;
    FinR12CGCCLI: TStringField;
    FinR12CEPCLI: TStringField;
    FinR12TENCLI: TStringField;
    FinR12ENDCLI: TStringField;
    FinR12REFCLI: TStringField;
    FinR12NUMCLI: TStringField;
    FinR12BAICLI: TStringField;
    FinR12CIDCLI: TStringField;
    FinR12UFECLI: TStringField;
    FinR12PFOCLI: TStringField;
    FinR12FONCLI: TStringField;
    FinR12PFACLI: TStringField;
    FinR12FAXCLI: TStringField;
    FinR12EMACLI: TStringField;
    FinR12CONCLI: TStringField;
    FinR12FLGENV: TStringField;
    RLDetailGrid1: TRLDetailGrid;
    ppTotGe2: TRLDBText;
    ppIpiGr2: TRLDBText;
    ppIcmGr2: TRLDBText;
    RLDBText7: TRLDBText;
    ppDesGr2: TRLDBText;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE18: TfmManE18;

implementation

uses SendMailOptions, ManGDB, Bbgeral;

{$R *.DFM}

procedure TfmManE18.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE18.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if Trim(FinR12TenCli.Value) <> '' then
     RLLabel1.Caption := Trim(FinR12TenCli.Value)+ ' ' +Trim(FinR12EndCli.Value)
  else
     RLLabel1.Caption := Trim(FinR12EndCli.Value);

  if Trim(FinR12NumCli.Value) <> '' then
     RLLabel1.Caption := RLLabel1.Caption+ ', ' +Trim(FinR12NumCli.Value);

  if Trim(FinR12RefCli.Value) <> '' then
     RLLabel1.Caption := RLLabel1.Caption+ ' ' +Trim(FinR12RefCli.Value);

  if Trim(FinR12BaiCli.Value) <> '' then
     RLLabel1.Caption := RLLabel1.Caption+ ' ' +Trim(FinR12BaiCli.Value);

  if Trim(FinR12CidCli.Value) <> '' then
     RLLabel2.Caption := Trim(FinR12CidCli.Value);

  if Trim(FinR12UfeCli.Value) <> '' then begin

     if Trim(RLLabel2.Caption) <> '' then
        RLLabel2.Caption := RLLabel2.Caption+ ' - ' +Trim(FinR12UfeCli.Value)
     else
        RLLabel2.Caption := Trim(FinR12UfeCli.Value);

  end;

  if Trim(FinR12CepCli.Value) <> '' then
     RLLabel3.Caption := 'CEP: ' +copy(Trim(FinR12CepCli.Value),1,5)+ '-' +copy(Trim(FinR12CepCli.Value),6,3)
  else
     RLLabel3.Caption := '';
     
end;

end.
