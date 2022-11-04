unit UFrmEditNfe;

interface

uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
   ExtCtrls, StdCtrls, Grids, DBGrids, ComCtrls, Db, DBClient;

type
   TFrmEditNfe = class(TForm)
      GroupBox1: TGroupBox;
      Edit8: TEdit;
      Label8: TLabel;
      Edit9: TEdit;
      Label9: TLabel;
      Edit10: TEdit;
      Label10: TLabel;
      Edit11: TEdit;
      Label11: TLabel;
      Edit12: TEdit;
      Label12: TLabel;
      Edit13: TEdit;
      Label13: TLabel;
      Edit14: TEdit;
      Label14: TLabel;
      Edit15: TEdit;
      Label15: TLabel;
      Edit16: TEdit;
      Label16: TLabel;
      Edit17: TEdit;
      Label17: TLabel;
      Edit18: TEdit;
      Label18: TLabel;
      Edit19: TEdit;
      Label19: TLabel;
      GroupBox2: TGroupBox;
      EdBcIcm: TEdit;
      Label20: TLabel;
      EdVlrIcm: TEdit;
      Label21: TLabel;
      EdBasIcmSub: TEdit;
      Label22: TLabel;
      EdVlrIcmSub: TEdit;
      Label23: TLabel;
      EdVlrTotProd: TEdit;
      Label24: TLabel;
      EdVlrPis: TEdit;
      Label25: TLabel;
      EdVlrFrete: TEdit;
      Label26: TLabel;
      EdVlrSeg: TEdit;
      Label27: TLabel;
      EdVlrDes: TEdit;
      Label28: TLabel;
      EdVlrDespesas: TEdit;
      Label29: TLabel;
      EdVlrCofins: TEdit;
      Label30: TLabel;
      EdVlrTotNf: TEdit;
      Label31: TLabel;
      GroupBox3: TGroupBox;
      RgDANFE: TRadioGroup;
      EdNumNot: TEdit;
      Label1: TLabel;
      EdChaveAce: TEdit;
      Label2: TLabel;
      EdProto: TEdit;
      Label3: TLabel;
      Edit4: TEdit;
      Label4: TLabel;
      Edit5: TEdit;
      Label5: TLabel;
      Edit6: TEdit;
      Label6: TLabel;
      Edit7: TEdit;
      Label7: TLabel;
      GroupBox4: TGroupBox;
      EdNomTrans: TEdit;
      Label32: TLabel;
      EdFrtPorConta: TEdit;
      Label33: TLabel;
      EdAntt: TEdit;
      Label34: TLabel;
      EdPlacaVeiculo: TEdit;
      Label35: TLabel;
      EdUfTrans: TEdit;
      Label36: TLabel;
      EdCgcTrans: TEdit;
      Label37: TLabel;
      Edit38: TEdit;
      Label38: TLabel;
      Edit39: TEdit;
      Label39: TLabel;
      Edit40: TEdit;
      Label40: TLabel;
      Edit41: TEdit;
      Label41: TLabel;
      EdQtd: TEdit;
      Label42: TLabel;
      EdEspecie: TEdit;
      Label43: TLabel;
      Edmarca: TEdit;
      Label44: TLabel;
      EdNumeracao: TEdit;
      Label45: TLabel;
      EdPesBruto: TEdit;
      Label46: TLabel;
      EdPesLIq: TEdit;
      Label47: TLabel;
      GroupBox5: TGroupBox;
      DBGrid1: TDBGrid;
      GroupBox11: TGroupBox;
      GroupBox12: TGroupBox;
      Label66: TLabel;
      Label67: TLabel;
      EdIcmVbCstRet: TEdit;
      EdIcmSTret: TEdit;
      GroupBox13: TGroupBox;
      Label68: TLabel;
      Label69: TLabel;
      EdIpiCenq: TEdit;
      EdIpiCst: TEdit;
      GroupBox14: TGroupBox;
      Label70: TLabel;
      Label71: TLabel;
      Label72: TLabel;
      Label73: TLabel;
      EdPisvBc: TEdit;
      EdPisCst: TEdit;
      EdPisPpis: TEdit;
      EdPisVpis: TEdit;
      GroupBox15: TGroupBox;
      Label74: TLabel;
      Label75: TLabel;
      Label76: TLabel;
      Label77: TLabel;
      EdCofVbc: TEdit;
      EdCofCst: TEdit;
      EdCofPpis: TEdit;
      EdCofVpis: TEdit;
      EdCodPais: TEdit;
      Label48: TLabel;
      EdNomPais: TEdit;
      Label49: TLabel;
      EdObs: TRichEdit;
      Label50: TLabel;
    cdsProd: TClientDataSet;
    cdsProdCODCLP: TStringField;
    cdsProdCODGRU: TStringField;
    cdsProdCODSUB: TStringField;
    cdsProdCODPRO: TStringField;
    cdsProdPRODUTO: TStringField;
    cdsProdDESCRICAOPRO: TStringField;
    cdsProdNCM: TStringField;
    cdsProdORIG: TStringField;
    cdsProdCFOP: TStringField;
    cdsProdUNIDADE: TStringField;
    cdsProdQTDPRO: TFloatField;
    cdsProdVALUNITARIO: TFloatField;
    cdsProdVALDESC: TFloatField;
    cdsProdVALLIQ: TFloatField;
    cdsProdBASICMS: TFloatField;
    cdsProdVALICMS: TFloatField;
    cdsProdVALIPI: TFloatField;
    cdsProdALIQICMS: TFloatField;
    cdsProdALIQIPI: TFloatField;
    cdsProdCSTICMS: TFloatField;
    cdsProdCSTIPI: TFloatField;
    dsProd: TDataSource;
    cdsProdVALSUB: TFloatField;
    cdsProdBASESUB: TFloatField;
      procedure FormClose(Sender: TObject; var Action: TCloseAction);
      procedure FormDestroy(Sender: TObject);
      procedure FormCreate(Sender: TObject);
      procedure EdNumNotExit(Sender: TObject);
    procedure cdsProdCalcFields(DataSet: TDataSet);
   private
      { Private declarations }
   public
      { Public declarations }
   end;

var
   FrmEditNfe: TFrmEditNfe;

implementation

{$R *.DFM}

procedure TFrmEditNfe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := caFree;
end;

procedure TFrmEditNfe.FormDestroy(Sender: TObject);
begin
   FrmEditNfe := nil;
end;

procedure TFrmEditNfe.FormCreate(Sender: TObject);
var
   i: integer;
begin

   for i := 0 to (Self.ComponentCount - 1) do
   begin
      if Components[i] is TEdit then
      begin
         with TEdit(Components[i]) do
         begin
            if Name <> 'EdNumNot' then
            begin
               Enabled := False;
               Color := clBtnFace;
            end;
         end;
      end;
   end;
   EdObs.Enabled := False;
   EdObs.Color := clBtnFace;

end;

procedure TFrmEditNfe.EdNumNotExit(Sender: TObject);
var
   i: Integer;
begin
   for i := 0 to (Self.ComponentCount - 1) do
   begin
      if Components[i] is TEdit then
      begin
         with TEdit(Components[i]) do
         begin
            if Name <> 'EdNumNot' then
            begin
               Enabled := True;
               Color := clWhite;
            end
            else
            begin
               Enabled := False;
               Color := clBtnFace;
            end;
         end;
      end;
   end;
   EdObs.Enabled := True;
   EdObs.Color := clWhite;

   FrmEditNfe.VertScrollBar.Position := 0;

end;

procedure TFrmEditNfe.cdsProdCalcFields(DataSet: TDataSet);
begin
  cdsProdPRODUTO.asString := '';
end;

end.

