unit ManSc2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, dxCntner, dxEditor, db, dxExEdtr, dxEdLib, dxDBELib,
  dxDBColorCurrencyEdit, StdCtrls, dxDBColorEdit, dxDBColorPickEdit;

type
  TfmManSc2 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label16: TLabel;
    EdTotFob: TdxDBColorCurrencyEdit;
    EdTitulo1: TdxDBColorEdit;
    pnTitulo1: TPanel;
    Label1: TLabel;
    EdFrtInt: TdxDBColorCurrencyEdit;
    Label2: TLabel;
    EdTotCfr: TdxDBColorCurrencyEdit;
    Label3: TLabel;
    EdValSeg: TdxDBColorCurrencyEdit;
    Label4: TLabel;
    EdTotCif: TdxDBColorCurrencyEdit;
    EdTipSeg: TdxDBColorPickEdit;
    EdMoeSeg: TdxDBColorPickEdit;
    EdTotSeg: TdxDBColorCurrencyEdit;
    pnlTotFob: TPanel;
    pnTotFob: TPanel;
    pnlTotCif: TPanel;
    pnTotCif: TPanel;
    EdTitulo2: TdxDBColorEdit;
    pnTitulo2: TPanel;
    EdValImp: TdxDBColorCurrencyEdit;
    Label5: TLabel;
    Label6: TLabel;
    EdValIpi: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    EdValIcm: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    EdValPis: TdxDBColorCurrencyEdit;
    Label9: TLabel;
    EdValCof: TdxDBColorCurrencyEdit;
    EdMoeImp: TdxDBColorPickEdit;
    EdTipImp: TdxDBColorPickEdit;
    EdTotImp: TdxDBColorCurrencyEdit;
    EdMoeIpi: TdxDBColorPickEdit;
    EdTipIpi: TdxDBColorPickEdit;
    EdTotIpi: TdxDBColorCurrencyEdit;
    EdMoeIcm: TdxDBColorPickEdit;
    EdTipIcm: TdxDBColorPickEdit;
    EdTotIcm: TdxDBColorCurrencyEdit;
    EdMoePis: TdxDBColorPickEdit;
    EdTipPis: TdxDBColorPickEdit;
    EdTotPis: TdxDBColorCurrencyEdit;
    EdMoeCof: TdxDBColorPickEdit;
    EdTipCof: TdxDBColorPickEdit;
    EdTotCof: TdxDBColorCurrencyEdit;
    pnlTotIde: TPanel;
    pnTotIde: TPanel;
    EdTotIde: TdxDBColorCurrencyEdit;
    Label10: TLabel;
    pnlTotCfr: TPanel;
    pnTotCfr: TPanel;
    Label19: TLabel;
    Label11: TLabel;
    EdFrtMar: TdxDBColorCurrencyEdit;
    pnlTotImp: TPanel;
    pnTotImp: TPanel;
    pnlTotIpi: TPanel;
    pnTotIpi: TPanel;
    pnlTotIcm: TPanel;
    pnTotIcm: TPanel;
    pnlTotPis: TPanel;
    pnTotPis: TPanel;
    pnlTotCof: TPanel;
    pnTotCof: TPanel;
    pnlTotSeg: TPanel;
    pnTotSeg: TPanel;
    pnlFrtInt: TPanel;
    pnFrtInt: TPanel;
    procedure fechar;
    procedure continuar;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdFrtIntExit(Sender: TObject);
    procedure EdTipCofKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManSc2: TfmManSc2;

implementation

uses dxDemoUtils, ManSc1, ManGDB, ManSc3;

{$R *.DFM}

procedure TfmManSc2.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSc2.FormShow(Sender: TObject);
begin
  inherited;

  pnTotFob.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotFob.Value);
  pnFrtInt.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoFrtInt.Value);
  pnTotCfr.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCfr.Value);
  pnTotSeg.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotSeg.Value);
  pnTotCif.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCif.Value);
  pnTotImp.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotImp.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIpi.Value);
  pnTotIcm.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIcm.Value);
  pnTotPis.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotPis.Value);
  pnTotCof.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCof.Value);
  pnTotIde.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIde.Value);

  EdFrtMar.SetFocus;

end;

procedure TfmManSc2.FormCreate(Sender: TObject);
begin
  inherited;

  fmManSc1.CmpSco.Edit;

  if fmManSc1.CmpScoFrtMar.Value = 0 then fmManSc1.CmpScoFrtMar.Value := fmManSc1.CmpScoTotFrt.Value;
  
end;

procedure TfmManSc2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManSc1.CmpSco.State <> dsBrowse then fmManSc1.CmpSco.CancelUpdates;
end;

procedure TfmManSc2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if key = 27 then fechar;

  if key = 123 then continuar;

end;

procedure TfmManSc2.EdFrtIntExit(Sender: TObject);
begin
  inherited;

  fmManSc1.CalculaCusto;

  pnTotFob.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotFob.Value);
  pnFrtInt.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoFrtInt.Value);
  pnTotCfr.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCfr.Value);
  pnTotSeg.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotSeg.Value);
  pnTotCif.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCif.Value);
  pnTotImp.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotImp.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIpi.Value);
  pnTotIcm.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIcm.Value);
  pnTotPis.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotPis.Value);
  pnTotCof.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCof.Value);
  pnTotIde.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIde.Value);

end;

procedure TfmManSc2.continuar;
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

          EdFrtMar.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  try

     fmManSc3 := TfmManSc3.Create(Self);
     fmManSc3.ShowModal;

  finally

     FreeAndNil(fmManSc3);

  end;

  if fmManSc1.Finalizar = 'Sim' then
     Close
  else
     begin

     fmManSc1.CmpSco.Close;
     fmManSc1.CmpSco.Open;

     fmManSc1.CmpSco.Edit;

     EdFrtMar.SetFocus;

  end;
end;

procedure TfmManSc2.fechar;
begin
  Close;
end;

procedure TfmManSc2.EdTipCofKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 13) or (key = 40) then continuar;
end;

end.
