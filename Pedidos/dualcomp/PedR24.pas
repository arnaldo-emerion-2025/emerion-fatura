unit PedR24;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, RLReport, Db, RLPDFFilter, RLRichFilter, RLFilters,
  RLHTMLFilter, RLPreviewForm;

type
  TfmPedR24 = class(TfmShowPadrao)
    RLReport1: TRLReport;
    RLBand1: TRLBand;
    ppImagem: TRLImage;
    ppApeEmp: TRLLabel;
    ppNomEmp: TRLLabel;
    ppEndEmp: TRLLabel;
    ppRefEmp: TRLLabel;
    ppTelefone: TRLLabel;
    ppFax: TRLLabel;
    RLLabel7: TRLLabel;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    p2Titulo: TRLLabel;
    RLBand3: TRLBand;
    RLLabel38: TRLLabel;
    RLSystemInfo3: TRLSystemInfo;
    RLGroup1: TRLGroup;
    RLGroup2: TRLGroup;
    RLDetailGrid1: TRLDetailGrid;
    ppDesLb2: TRLLabel;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText10: TRLDBText;
    RLBand4: TRLBand;
    RLLabel4: TRLLabel;
    RLLabel5: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel6: TRLLabel;
    RLLabel39: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel40: TRLLabel;
    RLLabel42: TRLLabel;
    RLLabel43: TRLLabel;
    RLLabel8: TRLLabel;
    RLBand6: TRLBand;
    RLLabel2: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel3: TRLLabel;
    RLPreviewSetup1: TRLPreviewSetup;
    RLHTMLFilter1: TRLHTMLFilter;
    RLRichFilter1: TRLRichFilter;
    RLPDFFilter1: TRLPDFFilter;
    ppCodCli: TRLLabel;
    ppNumRes: TRLLabel;
    procedure RLDetailGrid1BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLPreviewSetup1Send(Sender: TObject);
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand6BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLBand4BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPedR24: TfmPedR24;

implementation

uses PedR16, ManGDB, SendMailOptions;

{$R *.DFM}

procedure TfmPedR24.RLDetailGrid1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  if Trim( fmPedR16.PedResDesLb2.Value ) <> '' then
     ppDesLb2.Caption := fmPedR16.PedResCodGru.Value+ '.' +fmPedR16.PedResCodSub.Value+ '.' +fmPedR16.PedResCodPro.Value+ ' - ' +fmPedR16.PedResDesLb2.Value;
end;

procedure TfmPedR24.RLPreviewSetup1Send(Sender: TObject);
begin
  inherited;
  TFormSendMailOptions.CreateShowAndFree(TRLPreviewForm(Sender).Preview.Pages);
end;

procedure TfmPedR24.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;

  if FileExists('C:\Emerion\Print.bmp') then
     ppImagem.Picture.Bitmap.LoadFromFile('C:\Emerion\Print.bmp')
  else
     ppImagem.Picture.Bitmap.FreeImage;

  ppApeEmp.Caption := GApeEmp;
  ppNomEmp.Caption := GRazEmp;
  ppEndEmp.Caption := GEndEmp;
  ppRefEmp.Caption := GRefEmp;

  if Trim( GFonUsu ) <> '' then
     ppTeleFone.Caption := 'Telefone '+ GFonUsu
  else
     ppTeleFone.Caption := ' ';

  if Trim( GFaxUsu ) <> '' then
     ppFax.Caption := 'Fax '+ GFaxUsu
  else
     ppFax.Caption := ' ';

end;

procedure TfmPedR24.RLBand6BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  ppCodCli.Caption := IntToStr(fmPedR16.PedResCodCli.Value);
end;

procedure TfmPedR24.RLBand4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  inherited;
  ppNumRes.Caption := IntToStr(fmPedR16.PedResNumRes.Value);
end;

end.
