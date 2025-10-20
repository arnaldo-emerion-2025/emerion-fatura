unit ManPar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, StdCtrls, ExtCtrls, hNavigator, Db, DBTables, Wwquery, Mask,
  DBCtrls, hEdits, wwdblook, Buttons, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  dxDBELib, dxDBEdtr, dxDBColorPickEdit, dxDBColorCurrencyEdit;

type
  TfmManPar = class(TfmPadrao)
    CmpPar: TwwQuery;
    DsPar: TDataSource;
    UpPar: TUpdateSQL;
    PaintBox: TPaintBox;
    Label10: TLabel;
    Bevel1: TBevel;
    Label5: TLabel;
    Label6: TLabel;
    EdVarPrc: TdxDBColorCurrencyEdit;
    EdVarQtd: TdxDBColorCurrencyEdit;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    CmpParVARQTD: TFloatField;
    CmpParVARPRC: TFloatField;
    Label8: TLabel;
    Label9: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    CmpParLANTAB: TStringField;
    Label3: TLabel;
    EdLanTab: TdxDBColorPickEdit;
    Label4: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    Bevel3: TBevel;
    Label11: TLabel;
    EdDifEnt: TdxDBColorCurrencyEdit;
    Label12: TLabel;
    Label13: TLabel;
    CmpParDIFENT: TFloatField;
    CmpParPERPIS: TFloatField;
    CmpParPERCOF: TFloatField;
    CmpParFLGTAB: TStringField;
    CmpParTIPOEN: TStringField;
    CmpParFLGREQ: TStringField;
    CmpParEM1REQ: TIntegerField;
    CmpParEM2REQ: TIntegerField;
    CmpParPF1REQ: TStringField;
    CmpParPF2REQ: TStringField;
    CmpParCL1REQ: TIntegerField;
    CmpParCL2REQ: TIntegerField;
    CmpParVE1REQ: TIntegerField;
    CmpParVE2REQ: TIntegerField;
    CmpParFO1REQ: TIntegerField;
    CmpParFO2REQ: TIntegerField;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    EdPerCof: TdxDBColorCurrencyEdit;
    EdPerPis: TdxDBColorCurrencyEdit;
    Bevel4: TBevel;
    procedure FormShow(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
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

uses dxDemoUtils, BbMensag, ManPri, ManGDB;

{$R *.DFM}

procedure TfmManPar.FormShow(Sender: TObject);
begin
  inherited;

  CmpPar.Edit;

  EdVarQtd.SetFocus;

end;

procedure TfmManPar.bConfirmarClick(Sender: TObject);
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if fMsg('Confirma Alterações','S') then begin

        with CmpPar do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        if CmpPar.State = dsBrowse then CmpPar.Edit;

        EdVarQtd.SetFocus;

     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPar.bCancelarClick(Sender: TObject);
begin
  inherited;

  CmpPar.CancelUpdates;

  Close;

end;

procedure TfmManPar.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
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
