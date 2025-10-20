unit PsqRej;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr, FShowPadrao,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqRej = class(TfmShowPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    dxDBEdit1: TdxDBColorEdit;
    Label1: TLabel;
    GerUsu: TwwQuery;
    DsUsu: TwwDataSource;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    Panel1: TPanel;
    EdObsRej: TDBColorRichEdit;
    Label2: TLabel;
    Label12: TLabel;
    EdUsuRej: TdxDBColorEdit;
    CbNomUsu: TdxDBColorLookupEdit;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    PedResHRERES: TStringField;
    PedResCODCLI: TIntegerField;
    PedResCODVEN: TIntegerField;
    PedResCODPFA: TStringField;
    PedResTIPPFA: TStringField;
    PedResCODTIP: TIntegerField;
    PedResPRFRES: TIntegerField;
    PedResDTFRES: TDateTimeField;
    PedResCODATD: TIntegerField;
    PedResCODFIL: TIntegerField;
    PedResCODTRA: TIntegerField;
    PedResFLGTAB: TStringField;
    PedResUFERES: TStringField;
    PedResCGCCLI: TStringField;
    PedResINSCLI: TStringField;
    PedResCEPCLI: TStringField;
    PedResTENCLI: TStringField;
    PedResENDCLI: TStringField;
    PedResREFCLI: TStringField;
    PedResNUMCLI: TStringField;
    PedResBAICLI: TStringField;
    PedResCIDCLI: TStringField;
    PedResUFECLI: TStringField;
    PedResINECLI: TStringField;
    PedResCGECLI: TStringField;
    PedResOBSRES: TStringField;
    PedResQTIRES: TIntegerField;
    PedResSEQITE: TIntegerField;
    PedResQTPRES: TIntegerField;
    PedResSEQPAR: TIntegerField;
    PedResLINRES: TIntegerField;
    PedResQTLRES: TIntegerField;
    PedResQTFRES: TIntegerField;
    PedResBASIPI: TFloatField;
    PedResTOTIPI: TFloatField;
    PedResBASICM: TFloatField;
    PedResTOTICM: TFloatField;
    PedResBASSUB: TFloatField;
    PedResTOTSUB: TFloatField;
    PedResTOTCST: TFloatField;
    PedResTOTVEN: TFloatField;
    PedResTOTRES: TFloatField;
    PedResTOTREN: TFloatField;
    PedResTOTGER: TFloatField;
    PedResTOTLIQ: TFloatField;
    PedResTOTBRT: TFloatField;
    PedResBASCOM: TFloatField;
    PedResTOTCOM: TFloatField;
    PedResDSCREG: TFloatField;
    PedResDSCCOM: TFloatField;
    PedResTOTDCO: TFloatField;
    PedResMEDDCO: TFloatField;
    PedResMEDACR: TFloatField;
    PedResMEDCOM: TFloatField;
    PedResMEDPRM: TFloatField;
    PedResTOTDSC: TFloatField;
    PedResTOTDSR: TFloatField;
    PedResTOTDSP: TFloatField;
    PedResTOTACR: TFloatField;
    PedResDESREG: TStringField;
    PedResCODUSU: TIntegerField;
    PedResFLGPSQ: TStringField;
    PedResDTLPSQ: TDateTimeField;
    PedResFLGCTB: TStringField;
    PedResFLGAVI: TStringField;
    PedResFLGOCO: TStringField;
    PedResSEQRES: TStringField;
    PedResATUEST: TStringField;
    PedResINTFIN: TStringField;
    PedResCONSUM: TStringField;
    PedResCODIPI: TStringField;
    PedResTIPIPI: TStringField;
    PedResTRBIPI: TStringField;
    PedResREDIPI: TFloatField;
    PedResBSCIPI: TFloatField;
    PedResCODICM: TStringField;
    PedResTIPICM: TStringField;
    PedResTRBICM: TStringField;
    PedResREDICM: TFloatField;
    PedResBSCICM: TFloatField;
    PedResINCREV: TFloatField;
    PedResINCFIN: TFloatField;
    PedResPEDANT: TStringField;
    PedResDTEREJ: TDateTimeField;
    PedResHREREJ: TStringField;
    PedResOBSREJ: TMemoField;
    PedResUSUREJ: TIntegerField;
    PedResFLGFIN: TStringField;
    PedResDTEFIN: TDateTimeField;
    PedResHREFIN: TStringField;
    PedResOBSFIN: TMemoField;
    PedResUSUFIN: TIntegerField;
    PedResTXFIPI: TStringField;
    PedResTXFICM: TStringField;
    PedResFLGSLD: TStringField;
    PedResFATRES: TFloatField;
    PedResFATGER: TFloatField;
    PedResDEVRES: TFloatField;
    PedResDEVGER: TFloatField;
    PedResSLDRES: TFloatField;
    PedResSLDGER: TFloatField;
    PedResMEDDSC: TFloatField;
    PedResFLGIMP: TStringField;
    PedResFLGGER: TStringField;
    PedResLIBSLD: TStringField;
    PedResDTEDEL: TDateTimeField;
    PedResHREDEL: TStringField;
    PedResOBSDEL: TMemoField;
    PedResUSUDEL: TIntegerField;
    PedResDTEFPE: TDateTimeField;
    PedResHREFPE: TStringField;
    PedResOBSFPE: TMemoField;
    PedResUSUFPE: TIntegerField;
    PedResLANEST: TStringField;
    PedResSITRES: TStringField;
    PedResFLGCOM: TStringField;
    PedResDTECOM: TDateTimeField;
    PedResHRECOM: TStringField;
    PedResOBSCOM: TMemoField;
    PedResUSUCOM: TIntegerField;
    PedResFLGREQ: TStringField;
    PedResFLGRES: TStringField;
    PedResQTDIMP: TIntegerField;
    PedResEMPCTA: TIntegerField;
    PedResDTECTA: TDateTimeField;
    PedResNUMCTA: TIntegerField;
    PedResPRCCTA: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqRej: TfmPsqRej;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqRej.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqRej.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqRej.FormShow(Sender: TObject);
begin
  inherited;
  
  GerUsu.Close;
  GerUsu.Params[0].AsInteger := PedResUsuRej.Value;
  GerUsu.Open;

  EdObsRej.SetFocus;

end;

end.
