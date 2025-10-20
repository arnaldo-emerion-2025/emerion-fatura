unit ManPar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, StdCtrls, ExtCtrls, hNavigator, Db, DBTables, Wwquery, Mask,
  DBCtrls, hEdits, wwdblook, Buttons, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxDBEdtr, dxDBColorCurrencyEdit, dxDBColorPickEdit;

type
  TfmManPar = class(TfmPadrao)
    PedPar: TwwQuery;
    DsPar: TDataSource;
    UpPar: TUpdateSQL;
    PaintBox: TPaintBox;
    bConfirmar: TBitBtn;
    bFechar: TBitBtn;
    Label14: TLabel;
    Bevel4: TBevel;
    PedParPEDDSC: TFloatField;
    PedParFLGBLQ: TStringField;
    PedParFLGATR: TStringField;
    PedParFLGEXP: TStringField;
    PedParFLGCRE: TStringField;
    PedParFLGDSC: TStringField;
    PedParTIPDSC: TStringField;
    Label20: TLabel;
    Bevel6: TBevel;
    PedParFLGRES: TStringField;
    PedParTIPRES: TStringField;
    PedParPERCST: TFloatField;
    Label5: TLabel;
    Bevel1: TBevel;
    PedParEXIMKA: TStringField;
    Label10: TLabel;
    EdQtdCta: TdxDBColorCurrencyEdit;
    PedParQTDCTA: TIntegerField;
    PedParFLGIMP: TStringField;
    Label15: TLabel;
    EdFlgImp: TdxDBColorPickEdit;
    PedParTIPCOM: TStringField;
    PedParEXIVEN: TStringField;
    PedParEXICOM: TStringField;
    Label6: TLabel;
    EdExiCom: TdxDBColorPickEdit;
    Label16: TLabel;
    EdTipCom: TdxDBColorPickEdit;
    Label27: TLabel;
    Label28: TLabel;
    Label19: TLabel;
    EdFlgCod: TdxDBColorPickEdit;
    EdTipPed: TdxDBColorPickEdit;
    Bevel5: TBevel;
    Label29: TLabel;
    Label36: TLabel;
    PedParCONTRA: TStringField;
    PedParEXIFOR: TStringField;
    PedParEXICLI: TStringField;
    PedParTIPPED: TStringField;
    PedParFLGCOD: TStringField;
    PedParFLGIPI: TStringField;
    Label25: TLabel;
    Bevel7: TBevel;
    Label26: TLabel;
    EdFlgCom: TdxDBColorPickEdit;
    Label30: TLabel;
    PedParFLGCOM: TStringField;
    Label31: TLabel;
    EdImpRef: TdxDBColorPickEdit;
    PedParIMPREF: TStringField;
    PedParIMPTRA: TStringField;
    PedParIMPMRC: TStringField;
    Label21: TLabel;
    EdImpMrc: TdxDBColorPickEdit;
    Label22: TLabel;
    EdImpTra: TdxDBColorPickEdit;
    PedParIMPOBS: TStringField;
    PedParIMPFIN: TStringField;
    Label32: TLabel;
    EdImpObs: TdxDBColorPickEdit;
    Label33: TLabel;
    EdImpFin: TdxDBColorPickEdit;
    PedParUSADEC: TStringField;
    PedParLANMAI: TStringField;
    Label34: TLabel;
    EdUsaDec: TdxDBColorPickEdit;
    Label17: TLabel;
    EdLanMai: TdxDBColorPickEdit;
    PedParIMPLOC: TStringField;
    Label1: TLabel;
    EdImpLoc: TdxDBColorPickEdit;
    PedParVEREST: TStringField;
    PedParFLGORD: TStringField;
    Label2: TLabel;
    EdFlgOrd: TdxDBColorPickEdit;
    Label3: TLabel;
    EdVerEst: TdxDBColorPickEdit;
    PedParBLOCRE: TStringField;
    PedParLIBFIN: TStringField;
    PedParLIBCAD: TStringField;
    PedParQTLITE: TIntegerField;
    Label4: TLabel;
    EdBloCre: TdxDBColorPickEdit;
    Label7: TLabel;
    EdQtlIte: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    EdPerPro: TdxDBColorPickEdit;
    PedParPERPRO: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure bFecharClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdQtdHstKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPar: TfmManPar;

implementation

uses dxDemoUtils, BbMensag, ManGDB;

{$R *.DFM}

procedure TfmManPar.FormShow(Sender: TObject);
begin
  inherited;

  PedPar.Edit;

  EdTipPed.SetFocus;

end;

procedure TfmManPar.bConfirmarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if fMsg('Confirma Alterações','S') then begin

        with PedPar do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedPar.State = dsBrowse then PedPar.Edit;

                EdTipPed.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        if PedPar.State = dsBrowse then PedPar.Edit;

        EdTipPed.SetFocus;

     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPar.bFecharClick(Sender: TObject);
begin
  inherited;

  PedPar.CancelUpdates;

  Close;

end;

procedure TfmManPar.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPar.EdQtdHstKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPar.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPar := nil;
end;

end.
