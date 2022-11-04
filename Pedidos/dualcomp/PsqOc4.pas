unit PsqOc4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  AlignEdit, FShowPadrao, dxDBColorPickEdit, dxDBColorCurrencyEdit,
  dxDBColorDateEdit, dxDBColorEdit;

type
  TfmPsqOc4 = class(TfmShowPadrao)
    FinChc: TwwQuery;
    DsRmc: TwwDataSource;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    PaintBox: TPaintBox;
    grRmc: ThGrid;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    FinChcCODCLI: TIntegerField;
    FinChcCODBAN: TIntegerField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    FinChcCODAGB: TStringField;
    FinChcCODCNB: TStringField;
    FinChcCODEMP: TIntegerField;
    Label7: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    Label18: TLabel;
    Label9: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label31: TLabel;
    Label30: TLabel;
    Label29: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Label25: TLabel;
    Label24: TLabel;
    Label23: TLabel;
    Label22: TLabel;
    Label10: TLabel;
    EdCodBan: TdxDBColorEdit;
    EdCodAgb: TdxDBColorEdit;
    EdCodCnb: TdxDBColorEdit;
    EdNumChc: TdxDBColorEdit;
    EdDteChc: TdxDBColorDateEdit;
    EdDtvChc: TdxDBColorDateEdit;
    EdValChc: TdxDBColorCurrencyEdit;
    EdObsChc: TdxDBColorEdit;
    EdCliChc: TdxDBColorEdit;
    EdCgcChc: TdxDBColorEdit;
    EdModChc: TdxDBColorPickEdit;
    EdTipChc: TdxDBColorPickEdit;
    Label28: TLabel;
    FinChcNUMCHC: TStringField;
    FinChcMODCHC: TStringField;
    FinChcTIPCHC: TStringField;
    FinChcDTECHC: TDateTimeField;
    FinChcDTVCHC: TDateTimeField;
    FinChcVALCHC: TFloatField;
    FinChcVJUCHC: TFloatField;
    FinChcVTXCHC: TFloatField;
    FinChcVPPCHC: TFloatField;
    FinChcVJPCHC: TFloatField;
    FinChcVTPCHC: TFloatField;
    FinChcVDSCHC: TFloatField;
    FinChcVDDCHC: TFloatField;
    FinChcTOTCHC: TFloatField;
    FinChcVLSCHC: TFloatField;
    FinChcDULCHC: TDateTimeField;
    FinChcOBSCHC: TStringField;
    FinChcSITCHC: TStringField;
    FinChcCLICHC: TStringField;
    FinChcCGCCHC: TStringField;
    FinChcEMPREC: TIntegerField;
    FinChcPEDREC: TIntegerField;
    FinChcSEQREC: TIntegerField;
    FinChcSEQPG2: TIntegerField;
    FinChcANORAG: TIntegerField;
    FinChcSEQRAG: TIntegerField;
    FinChcANOPAG: TIntegerField;
    FinChcSEQPAG: TIntegerField;
    FinChcHREHCC: TStringField;
    FinChcDTEHCC: TDateTimeField;
    FinChcCODUSU: TIntegerField;
    FinChcEMPSGR: TIntegerField;
    FinChcCAISGR: TIntegerField;
    FinChcANOSGR: TIntegerField;
    FinChcSEQSGR: TIntegerField;
    FinChcSEQSG3: TIntegerField;
    FinChcEMPFEC: TIntegerField;
    FinChcCAIFEC: TIntegerField;
    FinChcDTEFEC: TDateTimeField;
    FinChcSEQFEC: TIntegerField;
    FinChcSEQFE3: TIntegerField;
    FinChcSEQRMO: TStringField;
    FinChcSEQRCE: TStringField;
    FinChcCODMOD: TIntegerField;
    FinChcSEQRMC: TIntegerField;
    FinChcSEQRC4: TIntegerField;
    FinChcFLGINT: TStringField;
    FinChcSEQCHC: TIntegerField;
    FinChcFLGTRG: TStringField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqOc4: TfmPsqOc4;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqOc4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqOc4.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqOc4.FormShow(Sender: TObject);
begin
  grRmc.SetFocus;
end;

end.
