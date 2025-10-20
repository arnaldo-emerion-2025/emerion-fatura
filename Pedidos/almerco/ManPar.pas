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
    Label20: TLabel;
    Bevel6: TBevel;
    Label5: TLabel;
    Bevel1: TBevel;
    Label10: TLabel;
    EdQtdCta: TdxDBColorCurrencyEdit;
    Label15: TLabel;
    EdFlgImp: TdxDBColorPickEdit;
    Label16: TLabel;
    EdTipCom: TdxDBColorPickEdit;
    Label31: TLabel;
    EdImpRef: TdxDBColorPickEdit;
    Label21: TLabel;
    EdImpMrc: TdxDBColorPickEdit;
    Label22: TLabel;
    EdImpTra: TdxDBColorPickEdit;
    Label32: TLabel;
    EdImpObs: TdxDBColorPickEdit;
    Label33: TLabel;
    EdImpFin: TdxDBColorPickEdit;
    Label34: TLabel;
    EdUsaDec: TdxDBColorPickEdit;
    Label1: TLabel;
    EdImpLoc: TdxDBColorPickEdit;
    Label2: TLabel;
    EdFlgOrd: TdxDBColorPickEdit;
    Label4: TLabel;
    EdFlgCre: TdxDBColorPickEdit;
    Label7: TLabel;
    EdQtiPed: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    EdFlgPro: TdxDBColorPickEdit;
    PedParID_PEDPAR: TIntegerField;
    PedParUSADEC: TStringField;
    PedParFLGORD: TStringField;
    PedParFLGCRE: TStringField;
    PedParQTIPED: TIntegerField;
    PedParQTDCTA: TIntegerField;
    PedParFLGPRO: TStringField;
    PedParIMPMRC: TStringField;
    PedParIMPTRA: TStringField;
    PedParIMPOBS: TStringField;
    PedParIMPFIN: TStringField;
    PedParIMPLOC: TStringField;
    PedParFLGIMP: TStringField;
    PedParTIPCOM: TStringField;
    PedParTAXFIN: TFloatField;
    PedParIMPREF: TStringField;
    Label3: TLabel;
    EdTaxFin: TdxDBColorCurrencyEdit;
    Label12: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    Label9: TLabel;
    EdExiRen: TdxDBColorPickEdit;
    PedParEXIREN: TStringField;
    PedParFLGBLO: TStringField;
    PedParTIPATD: TStringField;
    Label11: TLabel;
    EdTipAtd: TdxDBColorPickEdit;
    Label13: TLabel;
    EdFlgBlo: TdxDBColorPickEdit;
    PedParTIPIMP: TStringField;
    Label18: TLabel;
    EdTipPag: TdxDBColorPickEdit;
    PedParTIPPAG: TStringField;
    Label17: TLabel;
    EdFlgCot: TdxDBColorPickEdit;
    PedParFLGCOT: TStringField;
    PedParMARMIN: TFloatField;
    Label19: TLabel;
    EdMarMin: TdxDBColorCurrencyEdit;
    Label23: TLabel;
    EdImpAnt: TdxDBColorPickEdit;
    PedParFLGIPI: TStringField;
    PedParIMPANT: TStringField;
    Label24: TLabel;
    EdRefDes: TdxDBColorPickEdit;
    PedParOBRGVE: TStringField;
    PedParCOMATD: TStringField;
    PedParREFDES: TStringField;
    Label25: TLabel;
    EdExiLoc: TdxDBColorPickEdit;
    PedParMUDREN: TStringField;
    PedParEXILOC: TStringField;
    Label26: TLabel;
    EdFlgDup: TdxDBColorPickEdit;
    PedParFLGDUP: TStringField;
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

  EdUsaDec.SetFocus;

end;

procedure TfmManPar.bConfirmarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     PedParTipPag.Value := Trim(PedParTipPag.Value);
     PedParTipCom.Value := Trim(PedParTipCom.Value);
     PedParTipAtd.Value := Trim(PedParTipAtd.Value);

     if fMsg('Confirma Alterações','S') then begin

        with PedPar do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedPar.State = dsBrowse then PedPar.Edit;

                EdUsaDec.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        if PedPar.State = dsBrowse then PedPar.Edit;

        EdUsaDec.SetFocus;

     end;

     end
  else
     fmsgErro(GMensagem_0001,Nil);
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
