unit ManPrc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, dxDBColorLookupEdit,
  dxDBColorEdit, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxDBColorCurrencyEdit,
  dxColorCurrencyEdit, ppBands, ppClass, ppStrtch, ppMemo, ppCtrls, ppVar,
  ppPrnabl, ppCache, ppProd, ppReport, ppDB, ppComm, ppRelatv, ppDBPipe;

type
  TfmManPrc = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    DsAen: TwwDataSource;
    CmpAen: TwwQuery;
    grAen: ThGrid;
    grRe21: TdxDBGraphicEdit;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label6: TLabel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    CmpAenCSTEN2: TFloatField;
    CmpAenCSTQTE: TFloatField;
    CmpAenVPFQTE: TFloatField;
    pnProgramar: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    pnTotEn2: TPanel;
    pnTotGe2: TPanel;
    pnValIpi: TPanel;
    pnValIcm: TPanel;
    pnPrtTot: TPanel;
    pnPrtGer: TPanel;
    pnPrtIpi: TPanel;
    pnPrtIcm: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    pnValDsc: TPanel;
    pnValAcr: TPanel;
    pnValFrt: TPanel;
    pnValSeg: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    pnValDes: TPanel;
    Panel31: TPanel;
    pnTotImp: TPanel;
    Panel33: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    CmpAenCODEMP: TIntegerField;
    CmpAenDTEENT: TDateTimeField;
    CmpAenNUMENT: TIntegerField;
    CmpAenSEQEN2: TIntegerField;
    CmpAenVALIPI: TFloatField;
    CmpAenVALICM: TFloatField;
    CmpAenPRTTOT: TFloatField;
    CmpAenPRTGER: TFloatField;
    CmpAenPRTIPI: TFloatField;
    CmpAenPRTICM: TFloatField;
    CmpAenTOTIMP: TFloatField;
    CmpAenVALDSC: TFloatField;
    CmpAenVALACR: TFloatField;
    CmpAenVALFRT: TFloatField;
    CmpAenVALSEG: TFloatField;
    CmpAenVALDES: TFloatField;
    CmpAenTOTEN2: TFloatField;
    CmpAenTOTGE2: TFloatField;
    CmpAenCODGRU: TStringField;
    CmpAenCODSUB: TStringField;
    CmpAenCODPRO: TStringField;
    CmpAenQTPEN2: TFloatField;
    Label5: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    pnVreQte: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    pnCstQte: TPanel;
    CmpAenDESEN2: TStringField;
    Panel14: TPanel;
    Panel15: TPanel;
    pnVpfOut: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    pnVpfQte: TPanel;
    pnCodIte: TLabel;
    CmpAenVPFOUT: TFloatField;
    CmpAenVREQTE: TFloatField;
    CmpAenVALSUB: TFloatField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure bretornarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DsAenDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    Finalizar: string;
    {Public declarations}
  end;

var
  fmManPrc: TfmManPrc;

implementation

uses dxDemoUtils, Bbgeral;

{$R *.DFM}

procedure TfmManPrc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManPrc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPrc.bcontinuarClick(Sender: TObject);
begin
  inherited;

  Finalizar := 'S';

  close;
  
end;

procedure TfmManPrc.bretornarClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmManPrc.FormCreate(Sender: TObject);
begin
  inherited;
  Finalizar := 'N';
end;

procedure TfmManPrc.DsAenDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if CmpAenCodEmp.Value > 0 then
     pnCodIte.Caption := CmpAenCodGru.Value+ '.' +
                         CmpAenCodSub.Value+ '.' +
                         CmpAenCodPro.Value
  else
     pnCodIte.Caption := ' ';
  
  pnTotEn2.Caption := FormatFloat('###,###,##0.0000',CmpAenTotEn2.Value)+' ';
  pnTotGe2.Caption := FormatFloat('###,###,##0.0000',CmpAenTotGe2.Value)+' ';
  pnValIpi.Caption := FormatFloat('###,###,##0.0000',CmpAenValIpi.Value)+' ';
  pnValIcm.Caption := FormatFloat('###,###,##0.0000',CmpAenValIcm.Value)+' ';

  pnPrtTot.Caption := FormatFloat('###,###,##0.00',CmpAenPrtTot.Value)+' % ';
  pnPrtGer.Caption := FormatFloat('###,###,##0.00',CmpAenPrtGer.Value)+' % ';
  pnPrtIpi.Caption := FormatFloat('###,###,##0.00',CmpAenPrtIpi.Value)+' % ';
  pnPrtIcm.Caption := FormatFloat('###,###,##0.00',CmpAenPrtIcm.Value)+' % ';

  pnTotImp.Caption := FormatFloat('###,###,##0.0000',CmpAenTotImp.Value)+' ';
  pnVpfOut.Caption := FormatFloat('###,###,##0.0000',CmpAenVpfOut.Value)+' ';
  pnVpfQte.Caption := FormatFloat('###,###,##0.0000',CmpAenVpfQte.Value)+' ';
  pnValDsc.Caption := FormatFloat('###,###,##0.0000',CmpAenValDsc.Value)+' ';
  pnValAcr.Caption := FormatFloat('###,###,##0.0000',CmpAenValAcr.Value)+' ';
  pnValFrt.Caption := FormatFloat('###,###,##0.0000',CmpAenValFrt.Value)+' ';
  pnValSeg.Caption := FormatFloat('###,###,##0.0000',CmpAenValSeg.Value)+' ';

  if CmpAenValSub.Value > 0 then
     pnValDes.Caption := FormatFloat('###,###,##0.0000',CmpAenValDes.Value + CmpAenValSub.Value)+' '
  else
     pnValDes.Caption := FormatFloat('###,###,##0.0000',CmpAenValDes.Value)+' ';
     
  pnCstQte.Caption := FormatFloat('###,###,##0.0000',CmpAenCstQte.Value)+' ';
  pnVreQte.Caption := FormatFloat('###,###,##0.0000',CmpAenVreQte.Value)+' ';

end;

end.

