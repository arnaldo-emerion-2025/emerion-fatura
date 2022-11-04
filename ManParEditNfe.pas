unit ManParEditNfe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons;

type
  TfrmParEditNFe = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    cbTotPro: TCheckBox;
    cbTotIcm: TCheckBox;
    cbTotNot: TCheckBox;
    cbValPis: TCheckBox;
    cbValCof: TCheckBox;
    cbValIpi: TCheckBox;
    cbValIcm: TCheckBox;
    bOk: TButton;
    cbOutDesp: TCheckBox;
    cbSeguro: TCheckBox;
    cbFrete: TCheckBox;
    cbValsub: TCheckBox;
    cbBcIcmSt: TCheckBox;
    cbBcIcm: TCheckBox;
    cbTotII: TCheckBox;
    cbBcIcmStITE: TCheckBox;
    cbTotIpi: TCheckBox;
    cbTotIcmSub: TCheckBox;
    cbTotPis: TCheckBox;
    cbTotCof: TCheckBox;
    cbBCIPI: TCheckBox;
    cbBCPis: TCheckBox;
    cbBCCof: TCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    cbBCFCP: TCheckBox;
    cbBCUFEmitente: TCheckBox;
    cbBCUFDestino: TCheckBox;
    procedure bOkClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmParEditNFe: TfrmParEditNFe;

implementation

uses ManEditNfe;

{$R *.DFM}

procedure TfrmParEditNFe.bOkClick(Sender: TObject);
begin
  with FrmEditNfe do
  begin

    //Verificando os flags marcados do cabeçalho
    totpro := cbTotPro.Checked;
    totnot := cbTotNot.Checked;
    toticm := cbTotIcm.Checked;
    totipi := cbTotIpi.Checked;
    toticmsub := cbTotIcmSub.Checked;
    totpis := cbTotPis.Checked;
    totcof := cbTotCof.Checked;
    totII := cbTotII.Checked;

    bcIcm := cbBcIcm.Checked;
    bcIcmSt := cbBcIcmSt.Checked;

    BasIPI := cbBcIPI.Checked;
    BasPis := cbBcPIS.Checked;
    BasCof := cbBcCof.Checked;

    //Verificando os flags marcados para os ítens
    valicm := cbValIcm.Checked;
    valipi := cbValIpi.Checked;
    valpis := cbValpis.Checked;
    valcof := cbValCof.Checked;
    valsub := cbValsub.Checked;
    bcIcmStITE := cbBcIcmStITE.Checked;

    valFrt := cbFrete.Checked;
    valSeg := cbSeguro.Checked;
    valOut := cbOutDesp.Checked;

    BasFCP := cbBCFCP.Checked;
    BasUFDestino := cbBCUFDestino.Checked;
    BasEmitente := cbBCUFEmitente.Checked;


  end;

  Close;
end;

procedure TfrmParEditNFe.SpeedButton1Click(Sender: TObject);
begin
  cbTotPro.Checked := not cbTotPro.Checked;
  cbTotNot.Checked := not cbTotNot.Checked;
  cbTotIcm.Checked := not cbTotIcm.Checked;
  cbTotIpi.Checked := not cbTotIpi.Checked;
  cbTotIcmSub.Checked := not cbTotIcmSub.Checked;
  cbTotPis.Checked := not cbTotPis.Checked;
  cbTotCof.Checked := not cbTotCof.Checked;
  cbTotII.Checked := not cbTotII.Checked;

  cbBcIcm.Checked := not cbBcIcm.Checked;
  cbBcIcmSt.Checked := not cbBcIcmSt.Checked;
  cbBcIpi.Checked := not cbBcIPI.Checked;
  cbBcPis.Checked := not cbBcPis.Checked;
  cbBcCof.Checked := not cbBcCof.Checked;
end;

procedure TfrmParEditNFe.SpeedButton2Click(Sender: TObject);
begin
  cbValIcm.Checked := not cbValIcm.Checked;
  cbValIpi.Checked := not cbValIpi.Checked;
  cbValpis.Checked := not cbValpis.Checked;
  cbValCof.Checked := not cbValCof.Checked;
  cbValsub.Checked := not cbValsub.Checked;
  cbBcIcmStITE.Checked := not cbBcIcmStITE.Checked;
  cbFrete.Checked := not cbFrete.Checked;
  cbSeguro.Checked := not cbSeguro.Checked;
  cbOutDesp.Checked := not cbOutDesp.Checked;
end;

end.
