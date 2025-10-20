unit ManFpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManFpe = class(TfmShowPadrao)
    CmpPed: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObsFpe: TdxDBColorMemo;
    UpPed: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    CmpPedCODEMP: TIntegerField;
    CmpPedDTEPED: TDateTimeField;
    CmpPedNUMPED: TIntegerField;
    CmpPedHREPED: TStringField;
    CmpPedCODFOR: TIntegerField;
    CmpPedCONPLC: TIntegerField;
    CmpPedSUBPLC: TIntegerField;
    CmpPedCODPFA: TStringField;
    CmpPedTIPPFA: TStringField;
    CmpPedPREPED: TIntegerField;
    CmpPedDPEPED: TDateTimeField;
    CmpPedCODTMO: TIntegerField;
    CmpPedVALTMO: TFloatField;
    CmpPedCODFIL: TIntegerField;
    CmpPedUFEPED: TStringField;
    CmpPedCODCLP: TStringField;
    CmpPedNOMCON: TStringField;
    CmpPedNOMVEN: TStringField;
    CmpPedCEPENT: TStringField;
    CmpPedTENENT: TStringField;
    CmpPedENDENT: TStringField;
    CmpPedREFENT: TStringField;
    CmpPedNUMENT: TStringField;
    CmpPedBAIENT: TStringField;
    CmpPedCIDENT: TStringField;
    CmpPedUFEENT: TStringField;
    CmpPedFLGCTB: TStringField;
    CmpPedOBSCND: TStringField;
    CmpPedOBSPED: TStringField;
    CmpPedQTIPED: TIntegerField;
    CmpPedSEQITE: TIntegerField;
    CmpPedBASIPI: TFloatField;
    CmpPedTOTIPI: TFloatField;
    CmpPedBASICM: TFloatField;
    CmpPedTOTICM: TFloatField;
    CmpPedBASSUB: TFloatField;
    CmpPedTOTSUB: TFloatField;
    CmpPedTOTPED: TFloatField;
    CmpPedTOTGER: TFloatField;
    CmpPedMEDDSC: TFloatField;
    CmpPedTOTDSC: TFloatField;
    CmpPedMEDACR: TFloatField;
    CmpPedTOTACR: TFloatField;
    CmpPedLANEST: TStringField;
    CmpPedATUEST: TStringField;
    CmpPedINTFIN: TStringField;
    CmpPedCONSUM: TStringField;
    CmpPedCODIPI: TStringField;
    CmpPedTIPIPI: TStringField;
    CmpPedTRBIPI: TStringField;
    CmpPedREDIPI: TFloatField;
    CmpPedBSCIPI: TFloatField;
    CmpPedCODICM: TStringField;
    CmpPedTIPICM: TStringField;
    CmpPedTRBICM: TStringField;
    CmpPedREDICM: TFloatField;
    CmpPedBSCICM: TFloatField;
    CmpPedINCREV: TFloatField;
    CmpPedINCFIN: TFloatField;
    CmpPedTXFIPI: TStringField;
    CmpPedTXFICM: TStringField;
    CmpPedCODUSU: TIntegerField;
    CmpPedFLGOCO: TStringField;
    CmpPedFLGATU: TStringField;
    CmpPedSEQPED: TStringField;
    CmpPedSITPED: TStringField;
    CmpPedFLGTAB: TStringField;
    CmpPedTOTVEN: TFloatField;
    CmpPedTOTREN: TFloatField;
    CmpPedDTEFPE: TDateTimeField;
    CmpPedHREFPE: TStringField;
    CmpPedOBSFPE: TMemoField;
    CmpPedUSUFPE: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManFpe: TfmManFpe;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManFpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManFpe.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManFpe.FormShow(Sender: TObject);
begin

  CmpPed.Edit;

  EdObsFpe.SetFocus;

end;

procedure TfmManFpe.bCancelarClick(Sender: TObject);
begin

  CmpPed.CancelUpdates;

  Close;

end;

procedure TfmManFpe.bConfirmarClick(Sender: TObject);
begin

  CmpPedSitPed.Value := 'Saldo Nao Atendido';

  with CmpPed do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          CmpPed.Close;
          CmpPed.Open;

          CmpPed.Edit;

          EdObsFpe.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Close;
  
end;

procedure TfmManFpe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CmpPed.State <> dsBrowse then CmpPed.CancelUpdates;
end;

end.
