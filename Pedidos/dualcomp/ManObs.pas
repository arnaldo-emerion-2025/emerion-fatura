unit ManObs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, dxDBEdtr,
  FShowPadrao, dxDBColorMemo, dxDBColorEdit;

type
  TfmManObs = class(TfmShowPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObsRej: TdxDBColorMemo;
    UpRes: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
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
    PedResFLGREQ: TStringField;
    PedResFLGCOM: TStringField;
    PedResDTECOM: TDateTimeField;
    PedResHRECOM: TStringField;
    PedResOBSCOM: TMemoField;
    PedResUSUCOM: TIntegerField;
    PedResFLGRES: TStringField;
    PedResQTDIMP: TIntegerField;
    PedResEMPCTA: TIntegerField;
    PedResDTECTA: TDateTimeField;
    PedResNUMCTA: TIntegerField;
    PedResPRCCTA: TStringField;
    PedResMODPFA: TStringField;
    PedResMESRES: TStringField;
    PedResANORES: TIntegerField;
    PedResFLGPRO: TStringField;
    PedResPEDPRO: TStringField;
    PedResDTEPRO: TDateTimeField;
    PedResHREPRO: TStringField;
    PedResOBSPRO: TMemoField;
    PedResUSUPRO: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
    sCorreto : string;
  end;

var
  fmManObs: TfmManObs;

implementation

uses dxDemoUtils, Bbmensag, ManGDB;

{$R *.DFM}

procedure TfmManObs.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManObs.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManObs.FormShow(Sender: TObject);
begin
  inherited;
  
  PedRes.Edit;

  EdObsRej.SetFocus;

end;

procedure TfmManObs.bCancelarClick(Sender: TObject);
begin

  PedRes.CancelUpdates;

  Close;

end;

procedure TfmManObs.bConfirmarClick(Sender: TObject);
begin

  PedResSitRes.Value := 'Rejeitado';

  with PedRes do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedRes.State = dsBrowse then PedRes.Edit;

          sCorreto := 'Nao';

          EdObsRej.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  sCorreto := 'Sim';

  Close;

end;

procedure TfmManObs.FormCreate(Sender: TObject);
begin
  inherited;

  sCorreto := 'Nao';

end;

procedure TfmManObs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedRes.State <> dsBrowse then PedRes.CancelUpdates;  
end;

end.
