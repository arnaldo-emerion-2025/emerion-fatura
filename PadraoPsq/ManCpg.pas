unit ManCpg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCpg = class(TfmShowPadrao)
    PedGer: TwwQuery;
    DsGer: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObsDel: TdxDBColorMemo;
    UpGer: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    PedGerCODEMP: TIntegerField;
    PedGerDTEGER: TDateTimeField;
    PedGerNUMGER: TIntegerField;
    PedGerHREGER: TStringField;
    PedGerCODCLI: TIntegerField;
    PedGerCODVEN: TIntegerField;
    PedGerCODPFA: TStringField;
    PedGerTIPPFA: TStringField;
    PedGerPEDCLI: TStringField;
    PedGerUFEGER: TStringField;
    PedGerQTIGER: TIntegerField;
    PedGerSEQITE: TIntegerField;
    PedGerBASIPI: TFloatField;
    PedGerTOTIPI: TFloatField;
    PedGerBASICM: TFloatField;
    PedGerTOTICM: TFloatField;
    PedGerBASSUB: TFloatField;
    PedGerTOTSUB: TFloatField;
    PedGerTOTCST: TFloatField;
    PedGerTOTVEN: TFloatField;
    PedGerTOTITE: TFloatField;
    PedGerTOTREN: TFloatField;
    PedGerTOTGER: TFloatField;
    PedGerDSCREG: TFloatField;
    PedGerDSCCOM: TFloatField;
    PedGerTOPPRM: TFloatField;
    PedGerMEDPRM: TFloatField;
    PedGerMEDACR: TFloatField;
    PedGerTOTDSC: TFloatField;
    PedGerTOTDSR: TFloatField;
    PedGerTOTDSP: TFloatField;
    PedGerTOTACR: TFloatField;
    PedGerCODUSU: TIntegerField;
    PedGerFLGCTB: TStringField;
    PedGerSEQGER: TStringField;
    PedGerCONSUM: TStringField;
    PedGerCODIPI: TStringField;
    PedGerTIPIPI: TStringField;
    PedGerTRBIPI: TStringField;
    PedGerREDIPI: TFloatField;
    PedGerBSCIPI: TFloatField;
    PedGerCODICM: TStringField;
    PedGerTIPICM: TStringField;
    PedGerTRBICM: TStringField;
    PedGerREDICM: TFloatField;
    PedGerBSCICM: TFloatField;
    PedGerINCREV: TFloatField;
    PedGerINCFIN: TFloatField;
    PedGerTXFIPI: TStringField;
    PedGerTXFICM: TStringField;
    PedGerMEDDSC: TFloatField;
    PedGerDTEDEL: TDateTimeField;
    PedGerHREDEL: TStringField;
    PedGerOBSDEL: TMemoField;
    PedGerUSUDEL: TIntegerField;
    PedGerSITGER: TStringField;
    PedGerTOTDCO: TFloatField;
    PedGerMEDDCO: TFloatField;
    PedGerCODATD: TIntegerField;
    PedGerFLGTAB: TStringField;
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
  fmManCpg: TfmManCpg;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManCpg.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManCpg.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCpg.FormShow(Sender: TObject);
begin

  PedGer.Edit;

  EdObsDel.SetFocus;

end;

procedure TfmManCpg.bCancelarClick(Sender: TObject);
begin

  PedGer.CancelUpdates;

  Close;

end;

procedure TfmManCpg.bConfirmarClick(Sender: TObject);
begin

  PedGerSitGer.Value := 'Cancelado';

  with PedGer do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};
       
       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};
          
       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedGer.State = dsBrowse then PedGer.Edit;

          EdObsDel.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Close;

end;

procedure TfmManCpg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedGer.State <> dsBrowse then PedGer.CancelUpdates;
end;

end.
