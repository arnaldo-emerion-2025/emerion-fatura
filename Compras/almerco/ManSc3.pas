unit ManSc3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, dxCntner, dxEditor, db, dxExEdtr, dxEdLib, dxDBELib,
  dxDBColorCurrencyEdit, StdCtrls, dxDBColorEdit, dxDBColorPickEdit;

type
  TfmManSc3 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    EdTitulo1: TdxDBColorEdit;
    pnTitulo1: TPanel;
    Label1: TLabel;
    EdValDes: TdxDBColorCurrencyEdit;
    Label19: TLabel;
    EdMoeDes: TdxDBColorPickEdit;
    EdTipDes: TdxDBColorPickEdit;
    EdTotDes: TdxDBColorCurrencyEdit;
    Label2: TLabel;
    EdValSis: TdxDBColorCurrencyEdit;
    EdMoeSis: TdxDBColorPickEdit;
    EdTipSis: TdxDBColorPickEdit;
    EdTotSis: TdxDBColorCurrencyEdit;
    Label3: TLabel;
    EdValAfr: TdxDBColorCurrencyEdit;
    EdMoeAfr: TdxDBColorPickEdit;
    EdTipAfr: TdxDBColorPickEdit;
    EdTotAfr: TdxDBColorCurrencyEdit;
    Label4: TLabel;
    EdValDsc: TdxDBColorCurrencyEdit;
    EdMoeDsc: TdxDBColorPickEdit;
    EdTipDsc: TdxDBColorPickEdit;
    EdTotDsc: TdxDBColorCurrencyEdit;
    Label5: TLabel;
    EdValEBl: TdxDBColorCurrencyEdit;
    EdMoeEBl: TdxDBColorPickEdit;
    EdTipEBl: TdxDBColorPickEdit;
    EdTotEBl: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    EdValCap: TdxDBColorCurrencyEdit;
    EdMoeCap: TdxDBColorPickEdit;
    EdTipCap: TdxDBColorPickEdit;
    EdTotCap: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    EdValLdi: TdxDBColorCurrencyEdit;
    EdMoeLdi: TdxDBColorPickEdit;
    EdTipLdi: TdxDBColorPickEdit;
    EdTotLdi: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    EdValDev: TdxDBColorCurrencyEdit;
    EdMoeDev: TdxDBColorPickEdit;
    EdTipDev: TdxDBColorPickEdit;
    EdTotDev: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    EdValCor: TdxDBColorCurrencyEdit;
    EdMoeCor: TdxDBColorPickEdit;
    EdTipCor: TdxDBColorPickEdit;
    EdTotCor: TdxDBColorCurrencyEdit;
    Label11: TLabel;
    EdValArm: TdxDBColorCurrencyEdit;
    EdMoeArm: TdxDBColorPickEdit;
    EdTipArm: TdxDBColorPickEdit;
    EdTotArm: TdxDBColorCurrencyEdit;
    Label12: TLabel;
    EdTotPrc: TdxDBColorCurrencyEdit;
    Label13: TLabel;
    EdTotMca: TdxDBColorCurrencyEdit;
    pnlTotMca: TPanel;
    pnTotMca: TPanel;
    pnlTotPrc: TPanel;
    pnTotPrc: TPanel;
    pnlTipDes: TPanel;
    pnTipDes: TPanel;
    pnlTipSis: TPanel;
    pnTipSis: TPanel;
    pnlTipDsc: TPanel;
    pnTipDsc: TPanel;
    pnlTipEbl: TPanel;
    pnTipEbl: TPanel;
    pnlTipCap: TPanel;
    pnTipCap: TPanel;
    pnlTipLdi: TPanel;
    pnTipLdi: TPanel;
    pnlTipDev: TPanel;
    pnTipDev: TPanel;
    pnlTipCor: TPanel;
    pnTipCor: TPanel;
    EdTitulo2: TdxDBColorEdit;
    pnTitulo2: TPanel;
    Label9: TLabel;
    Label14: TLabel;
    EdValIce: TdxDBColorCurrencyEdit;
    EdMoeIce: TdxDBColorPickEdit;
    EdTipIce: TdxDBColorPickEdit;
    EdTotIce: TdxDBColorCurrencyEdit;
    EdTotEnt: TdxDBColorCurrencyEdit;
    pnlTotEnt: TPanel;
    pnTotEnt: TPanel;
    pnlTotDes: TPanel;
    pnTotDes: TPanel;
    pnlTotSis: TPanel;
    pnTotSis: TPanel;
    pnlTotAfr: TPanel;
    pnTotAfr: TPanel;
    pnlTotDsc: TPanel;
    pnTotDsc: TPanel;
    pnlTotEBl: TPanel;
    pnTotEBl: TPanel;
    pnlTotCap: TPanel;
    pnTotCap: TPanel;
    pnlTotLdi: TPanel;
    pnTotLdi: TPanel;
    pnlTotDev: TPanel;
    pnTotDev: TPanel;
    pnlTotCor: TPanel;
    pnTotCor: TPanel;
    pnlTotArm: TPanel;
    pnTotArm: TPanel;
    pnlTotIce: TPanel;
    pnTotIce: TPanel;
    procedure fechar;
    procedure continuar;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdValDesExit(Sender: TObject);
    procedure EdTipIceKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManSc3: TfmManSc3;

implementation

uses dxDemoUtils, ManSc1, ManGDB, Bbmensag, ManSc4;

{$R *.DFM}

procedure TfmManSc3.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSc3.FormShow(Sender: TObject);
begin
  inherited;

  pnTipDes.Caption := fmManSc1.CmpScoTipDes.Value;
  pnTipSis.Caption := fmManSc1.CmpScoTipSis.Value;
  pnTipDsc.Caption := fmManSc1.CmpScoTipDsc.Value;
  pnTipEBl.Caption := fmManSc1.CmpScoTipEBl.Value;
  pnTipCap.Caption := fmManSc1.CmpScoTipCap.Value;
  pnTipLdi.Caption := fmManSc1.CmpScoTipLdi.Value;
  pnTipDev.Caption := fmManSc1.CmpScoTipDev.Value;
  pnTipCor.Caption := fmManSc1.CmpScoTipCor.Value;

  pnTotDes.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotDes.Value);
  pnTotSis.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotSis.Value);
  pnTotAfr.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotAfr.Value);
  pnTotDsc.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotDsc.Value);
  pnTotEBl.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotEBl.Value);
  pnTotCap.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCap.Value);
  pnTotLdi.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotLdi.Value);
  pnTotDev.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotDev.Value);
  pnTotCor.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCor.Value);
  pnTotArm.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotArm.Value);
  pnTotPrc.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotPrc.Value);
  pnTotMca.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotMca.Value);
  pnTotEnt.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotEnt.Value);
  pnTotIce.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIce.Value);

  EdValDes.SetFocus;

end;

procedure TfmManSc3.FormCreate(Sender: TObject);
begin
  inherited;
  fmManSc1.CmpSco.Edit;
end;

procedure TfmManSc3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManSc1.CmpSco.State <> dsBrowse then fmManSc1.CmpSco.CancelUpdates;
end;

procedure TfmManSc3.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = 27 then fechar;

  if key = 123 then continuar;

end;

procedure TfmManSc3.EdValDesExit(Sender: TObject);
begin
  inherited;

  fmManSc1.CalculaCusto;

  pnTotDes.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotDes.Value);
  pnTotSis.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotSis.Value);
  pnTotAfr.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotAfr.Value);
  pnTotDsc.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotDsc.Value);
  pnTotEBl.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotEBl.Value);
  pnTotCap.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCap.Value);
  pnTotLdi.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotLdi.Value);
  pnTotDev.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotDev.Value);
  pnTotCor.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCor.Value);
  pnTotArm.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotArm.Value);
  pnTotPrc.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotPrc.Value);
  pnTotMca.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotMca.Value);
  pnTotEnt.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotEnt.Value);
  pnTotIce.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIce.Value);

end;

procedure TfmManSc3.continuar;
begin

  ActiveControl := nil;

  with fmManSc1.CmpSco do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManSc1.CmpSco.State = dsBrowse then fmManSc1.CmpSco.Edit;

          EdValDes.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  try

     fmManSc4 := TfmManSc4.Create(Self);
     fmManSc4.ShowModal;

  finally

     FreeAndNil(fmManSc4);

  end;

  if fmManSc1.Finalizar = 'Sim' then
     Close
  else
     begin

     fmManSc1.CmpSco.Close;
     fmManSc1.CmpSco.Open;

     fmManSc1.CmpSco.Edit;

     EdValDes.SetFocus;

  end;
end;

procedure TfmManSc3.fechar;
begin
  Close;
end;

procedure TfmManSc3.EdTipIceKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 13) or (key = 40) then continuar;
end;

end.
