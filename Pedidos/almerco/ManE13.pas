unit ManE13;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RLReport, RLPDFFilter, RLRichFilter, RLFilters, RLHTMLFilter,
  RLPreviewForm, Provider, Db, Wwdatsrc, DBTables, Wwquery;

type
  TfmManE13 = class(TForm)
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
    ppId_PedRes: TRLDBText;
    RLLabel13: TRLLabel;
    RLLabel14: TRLLabel;
    p1NomVen: TRLLabel;
    RLLabel6: TRLLabel;
    RLLabel22: TRLLabel;
    p1DteFat: TRLLabel;
    ppDteRec: TRLDBText;
    RLLabel27: TRLLabel;
    ppDteFat: TRLDBText;
    RLLabel4: TRLLabel;
    ppCliente: TRLDBText;
    RLLabel28: TRLLabel;
    RLLabel32: TRLLabel;
    RLLabel35: TRLLabel;
    ppBasCom: TRLDBText;
    ppTotCom: TRLDBText;
    ppMedCom: TRLDBText;
    ppNroNfs: TRLDBText;
    RLBand5: TRLBand;
    RLLabel47: TRLLabel;
    RLDBResult1: TRLDBResult;
    RLDBResult2: TRLDBResult;
    RLLabel1: TRLLabel;
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand5BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManE13 : TfmManE13;

implementation

uses Bbgeral, Bbfuncao, ManGDB, SendMailOptions, PedR30;

{$R *.DFM}

procedure TfmManE13.RLPreviewSetup1Send(Sender: TObject);
begin
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmManE13.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if Trim( fmPedR30.EdPsqCodVen.Text ) <> '' then
     p1NomVen.Caption := fNumZeros(fmPedR30.EdPsqCodVen.Text,7)+' - '+fmPedR30.EdPsqApeVen.Text
  else
     p1NomVen.Caption := ' ';

  if Trim(fLimpaStr(fmPedR30.EdPsqDteRec1.Text)) <> '' then
     p1DteFat.Caption := FormatDateTime('dd/mm/yyyy',fmPedR30.EdPsqDteRec1.Date)+' a '+FormatDateTime('dd/mm/yyyy',fmPedR30.EdPsqDteRec2.Date)
  else
     p1DteFat.Caption := ' ';

end;

procedure TfmManE13.RLBand5BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin

  if RLDBResult1.Value > 0 then
     RLLabel1.Caption := FormatFloat('###,###,##0.00',fRound((RLDBResult2.Value * 100)/RLDBResult1.Value,2))
  else
     RLLabel1.Caption := FormatFloat('###,###,##0.00',0);

end;

end.
