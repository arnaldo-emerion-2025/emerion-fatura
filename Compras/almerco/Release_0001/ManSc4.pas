unit ManSc4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, dxCntner, dxEditor, db, dxExEdtr, dxEdLib, dxDBELib,
  dxDBColorCurrencyEdit, StdCtrls, dxDBColorEdit, dxDBColorPickEdit;

type
  TfmManSc4 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label19: TLabel;
    Label3: TLabel;
    EdValFin: TdxDBColorCurrencyEdit;
    EdMoeFin: TdxDBColorPickEdit;
    EdTipFin: TdxDBColorPickEdit;
    EdTotFin: TdxDBColorCurrencyEdit;
    Label4: TLabel;
    EdValTra: TdxDBColorCurrencyEdit;
    EdMoeTra: TdxDBColorPickEdit;
    EdTipTra: TdxDBColorPickEdit;
    EdTotTra: TdxDBColorCurrencyEdit;
    Label5: TLabel;
    EdValMad: TdxDBColorCurrencyEdit;
    EdMoeMad: TdxDBColorPickEdit;
    EdTipMad: TdxDBColorPickEdit;
    EdTotMad: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    EdValSna: TdxDBColorCurrencyEdit;
    EdMoeSna: TdxDBColorPickEdit;
    EdTipSna: TdxDBColorPickEdit;
    EdTotSna: TdxDBColorCurrencyEdit;
    Label7: TLabel;
    EdValDed: TdxDBColorCurrencyEdit;
    EdMoeDed: TdxDBColorPickEdit;
    EdTipDed: TdxDBColorPickEdit;
    EdTotDed: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    EdTotCst: TdxDBColorCurrencyEdit;
    EdVluInf: TdxDBColorCurrencyEdit;
    Label12: TLabel;
    EdTotDis: TdxDBColorCurrencyEdit;
    pnlTotDis: TPanel;
    pnTotDis: TPanel;
    pnlTipTra: TPanel;
    pnTipTra: TPanel;
    pnlTipMad: TPanel;
    pnTipMad: TPanel;
    pnlTipDed: TPanel;
    pnTipDed: TPanel;
    EdTitulo1: TdxDBColorEdit;
    pnTitulo1: TPanel;
    EdTitulo2: TdxDBColorEdit;
    pnTitulo2: TPanel;
    pnlTotCst: TPanel;
    pnTotCst: TPanel;
    EdTotIce: TdxDBColorCurrencyEdit;
    pnlTotIce: TPanel;
    pnTotIce: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    EdTotIpi: TdxDBColorCurrencyEdit;
    pnlTotIpi: TPanel;
    pnTotIpi: TPanel;
    Label9: TLabel;
    EdTotPis: TdxDBColorCurrencyEdit;
    pnlTotPis: TPanel;
    pnTotPis: TPanel;
    EdTotCof: TdxDBColorCurrencyEdit;
    Label14: TLabel;
    pnlTotCof: TPanel;
    pnTotCof: TPanel;
    EdTitulo4: TdxDBColorEdit;
    pnTitulo4: TPanel;
    EdTitulo3: TdxDBColorEdit;
    pnTitulo3: TPanel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    EdIcmCal: TdxDBColorCurrencyEdit;
    EdPisCal: TdxDBColorCurrencyEdit;
    EdIpiCal: TdxDBColorCurrencyEdit;
    EdCofCal: TdxDBColorCurrencyEdit;
    Label21: TLabel;
    EdTotRec: TdxDBColorCurrencyEdit;
    pnlTotRec: TPanel;
    pnTotRec: TPanel;
    Label22: TLabel;
    EdTotNet1: TdxDBColorCurrencyEdit;
    pnlTotNet1: TPanel;
    pnTotNet1: TPanel;
    Label23: TLabel;
    EdTotNet2: TdxDBColorCurrencyEdit;
    pnlTotNet2: TPanel;
    pnTotNet2: TPanel;
    Label10: TLabel;
    EdTotRen: TdxDBColorCurrencyEdit;
    pnlTotRen: TPanel;
    pnTotRen: TPanel;
    Label11: TLabel;
    EdIreCal: TdxDBColorCurrencyEdit;
    EdIreSco: TdxDBColorCurrencyEdit;
    Label13: TLabel;
    EdCssCal: TdxDBColorCurrencyEdit;
    EdCssSco: TdxDBColorCurrencyEdit;
    Label24: TLabel;
    Label25: TLabel;
    EdTotVen: TdxDBColorCurrencyEdit;
    pnlTotVen: TPanel;
    pnTotVen: TPanel;
    EdTotMli: TdxDBColorCurrencyEdit;
    EdIcmSco: TdxDBColorCurrencyEdit;
    EdIpiSco: TdxDBColorCurrencyEdit;
    EdPisSco: TdxDBColorCurrencyEdit;
    EdCofSco: TdxDBColorCurrencyEdit;
    EdValMli: TdxDBColorCurrencyEdit;
    pnlTotFin: TPanel;
    pnTotFin: TPanel;
    pnlTotTra: TPanel;
    pnTotTra: TPanel;
    pnlTotMad: TPanel;
    pnTotMad: TPanel;
    pnlTotSna: TPanel;
    pnTotSna: TPanel;
    pnlTotDed: TPanel;
    pnTotDed: TPanel;
    EdMrgSco: TdxDBColorCurrencyEdit;
    pnlCofCal: TPanel;
    pnCofCal: TPanel;
    pnlPisCal: TPanel;
    pnPisCal: TPanel;
    pnlIpiCal: TPanel;
    pnIpiCal: TPanel;
    pnlIcmCal: TPanel;
    pnIcmCal: TPanel;
    pnlValMli: TPanel;
    pnValMli: TPanel;
    pnlTotMli: TPanel;
    pnTotMli: TPanel;
    pnValRen: TLabel;
    procedure fechar;
    procedure continuar;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdValFinExit(Sender: TObject);
    procedure EdCssCalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManSc4: TfmManSc4;

implementation

uses dxDemoUtils, ManSc1, ManGDB, Bbmensag, ManE07;

{$R *.DFM}

procedure TfmManSc4.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSc4.FormShow(Sender: TObject);
begin
  inherited;

  if (GGus_Id = 1) or (GUsu_Id = 1) or (GUsu_Id = 999) then
     pnValRen.Visible := True;
  
  pnTipTra.Caption := fmManSc1.CmpScoTipTra.Value;
  pnTipMad.Caption := fmManSc1.CmpScoTipMad.Value;
  pnTipDed.Caption := fmManSc1.CmpScoTipDed.Value;

  pnTotFin.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotFin.Value);
  pnTotTra.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotTra.Value);
  pnTotMad.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotMad.Value);
  pnTotSna.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotSna.Value);
  pnTotDed.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotDed.Value);
  pnTotDis.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotDis.Value);
  pnTotCst.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCst.Value);
  pnTotIce.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIce.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIpi.Value);
  pnTotPis.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotPis.Value);
  pnTotCof.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCof.Value);
  pnIcmCal.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoIcmCal.Value);
  pnIpiCal.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoIpiCal.Value);
  pnPisCal.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoPisCal.Value);
  pnCofCal.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoCofCal.Value);
  pnTotVen.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotVen.Value);
  pnTotRec.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotRec.Value);
  pnValRen.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoValRen.Value);
  pnTotRen.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotRen.Value);
  pnValMli.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoValMli.Value);
  pnTotMli.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotMli.Value);

  pnTotNet1.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotNet.Value);
  pnTotNet2.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotNet.Value);

  EdValFin.SetFocus;

end;

procedure TfmManSc4.FormCreate(Sender: TObject);
begin
  inherited;
  fmManSc1.CmpSco.Edit;
end;

procedure TfmManSc4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManSc1.CmpSco.State <> dsBrowse then fmManSc1.CmpSco.CancelUpdates;
end;

procedure TfmManSc4.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then fechar;

  if key = 123 then continuar;

end;

procedure TfmManSc4.EdValFinExit(Sender: TObject);
begin
  inherited;

  fmManSc1.CalculaCusto;
  
  pnTotFin.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotFin.Value);
  pnTotTra.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotTra.Value);
  pnTotMad.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotMad.Value);
  pnTotSna.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotSna.Value);
  pnTotDed.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotDed.Value);
  pnTotDis.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotDis.Value);
  pnTotCst.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCst.Value);
  pnTotIce.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIce.Value);
  pnTotIpi.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotIpi.Value);
  pnTotPis.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotPis.Value);
  pnTotCof.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotCof.Value);
  pnIcmCal.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoIcmCal.Value);
  pnIpiCal.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoIpiCal.Value);
  pnPisCal.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoPisCal.Value);
  pnCofCal.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoCofCal.Value);
  pnTotVen.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotVen.Value);
  pnTotRec.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotRec.Value);
  pnValRen.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoValRen.Value);
  pnTotRen.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotRen.Value);
  pnValMli.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoValMli.Value);
  pnTotMli.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotMli.Value);

  pnTotNet1.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotNet.Value);
  pnTotNet2.Caption := FormatFloat('###,###,##0.00',fmManSc1.CmpScoTotNet.Value);

end;

procedure TfmManSc4.continuar;
begin

  ActiveControl := nil;

  if fMsg('Confirma simulação de custo do item ?','O') then begin

     fmManSc1.Finalizar := 'Sim';
        
     fmManSc1.CmpScoSitSco.Value := 'Concluida';

     with fmManSc1.CmpSco do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if fmManSc1.CmpSco.State = dsBrowse then fmManSc1.CmpSco.Edit;

             fmManSc1.Finalizar := 'Nao';
                
             EdValFin.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     if fMsg('Confirma a impressão ?','O') then begin
     
        try

           fmManE07 := TfmManE07.Create(Self);

           fmManE07.CmpSco.Close;
           fmManE07.CmpSco.Params[0].AsInteger := fmManSc1.CmpScoId_CmpSco.Value;
           fmManE07.CmpSco.Open;

           fmManE07.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManE07);

        end;
     end;
     
     Close;

  end;
end;

procedure TfmManSc4.fechar;
begin
  Close;
end;

procedure TfmManSc4.EdCssCalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key = 13) or (key = 40) then continuar;
end;

end.
