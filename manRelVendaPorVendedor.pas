unit manRelVendaPorVendedor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery, clipbrd;

type
  TfrmRelVendaPorVendedor = class(TForm)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    p2Titulo: TRLLabel;
    RLBand2: TRLBand;
    RLLabel38: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    RLSubDetail1: TRLSubDetail;
    RLBand3: TRLBand;
    RLLabel39: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel3: TRLLabel;
    RLDetailGrid1: TRLDetailGrid;
    ppDesLb2: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    ppNomVen: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel22: TRLLabel;
    ppDteFat: TRLLabel;
    RLDBText1: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel4: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel35: TRLLabel;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLBand5: TRLBand;
    ppTexto13: TRLMemo;
    ppTexto12: TRLMemo;
    ppTexto11: TRLMemo;
    ppTexto10: TRLMemo;
    RLLabel47: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel1: TRLLabel;
    RLDBText8: TRLDBText;
    lbDteRec: TRLLabel;
    RLLabel2: TRLLabel;
    RLDBText9: TRLDBText;
    RLDBResult3: TRLDBResult;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLReport1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLDBText3BeforePrint(Sender: TObject; var Text: string;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    TipoOper: string;
  end;

var
  VenPsq: string;
  frmRelVendaPorVendedor: TfrmRelVendaPorVendedor;

implementation

uses Bbgeral, Bbfuncao, ManGDB, SendMailOptions, PedR30;

{$R *.DFM}

procedure TfrmRelVendaPorVendedor.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfrmRelVendaPorVendedor.RLReport1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  VenPsq := '';
end;

procedure TfrmRelVendaPorVendedor.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if Trim(fmPedR30.EdPsqCodVen.Text) <> '' then
    ppNomVen.Caption := fNumZeros(fmPedR30.EdPsqCodVen.Text, 7) + ' - ' + fmPedR30.EdPsqNomVen.Text
  else
    ppNomVen.Caption := ' ';

  if Trim(fLimpaStr(fmPedR30.EdPsqDteRes1.Text)) <> '' then
    ppDteFat.Caption := FormatDateTime('dd/mm/yyyy', fmPedR30.EdPsqDteRes1.Date) + ' a ' + FormatDateTime('dd/mm/yyyy', fmPedR30.EdPsqDteRes2.Date)
  else
    ppDteFat.Caption := ' ';

end;

procedure TfrmRelVendaPorVendedor.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
var
  sFiltro, sEncr: string;
  sBasDev, sTotDev, sBasCom, sTotCom: real;
begin
  if Trim(VenPsq) = '' then
  begin

    VenPsq := IntToStr(fmPedR30.PedResCodVen.Value);

    if RLDBResult1.Value > 0 then
      RLLabel1.Caption := FormatFloat('###,###,##0.00', fRound((RLDBResult2.Value * 100) / RLDBResult1.Value, 2))
    else
      RLLabel1.Caption := FormatFloat('###,###,##0.00', 0);

    sBasCom := RLDBResult1.Value;
    sTotCom := RLDBResult2.Value;

    sEncr := 'Nao';
  end;

end;

procedure TfrmRelVendaPorVendedor.RLDBText3BeforePrint(Sender: TObject; var Text: string;
  var PrintIt: Boolean);
begin
  Text := fmPedR30.PedResCODCLI.Asstring + '-' + fmPedR30.PedResNOMCLI.Asstring;
end;

end.
