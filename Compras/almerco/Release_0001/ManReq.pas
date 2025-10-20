unit ManReq;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, StdCtrls, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, Db, DBTables, Buttons;

type
  TfmManReq = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label1: TLabel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    FinFor: TQuery;
    DsFor: TDataSource;
    dbReq: TdxDBGraphicEdit;
    grFor: ThGrid;
    bConf: TBitBtn;
    FinForAPEFOR: TStringField;
    FinForQTDREG: TIntegerField;
    FinForFORNECEDOR: TStringField;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel2: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    dbGr4: TdxDBGraphicEdit;
    grReq: ThGrid;
    CmpReq: TQuery;
    DsReq: TDataSource;
    CmpReqPEDCLI: TStringField;
    CmpReqNOMCLI: TStringField;
    CmpReqAPEVEN: TStringField;
    CmpReqSLDREQ: TFloatField;
    pnCliente: TPanel;
    CmpReqCODCLP: TStringField;
    CmpReqCODGRU: TStringField;
    CmpReqCODSUB: TStringField;
    CmpReqCODPRO: TStringField;
    pnVendedor: TPanel;
    CmpReqCODITE: TStringField;
    FinForID_FINFOR: TIntegerField;
    CmpReqID_PEDRES: TIntegerField;
    CmpReqID_FINCLI: TIntegerField;
    CmpReqDSCPRO: TStringField;
    CmpReqID_FINVEN: TIntegerField;
    CmpReqPEDIDO: TStringField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure bConfClick(Sender: TObject);
    procedure FinForFORNECEDORGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CmpReqCODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DsReqDataChange(Sender: TObject; Field: TField);
    procedure CmpReqPEDIDOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManReq: TfmManReq;

implementation

uses dxDemoUtils, Bbgeral;

{$R *.DFM}

procedure TfmManReq.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManReq.bConfClick(Sender: TObject);
begin
  inherited;
  close;
end;

procedure TfmManReq.FinForFORNECEDORGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  if FinForId_FinFor.Value > 0 then Text := fNumZeros(IntToStr(FinForId_FinFor.Value),7)+ ' - ' +FinForApeFor.Value;
end;

procedure TfmManReq.CmpReqCODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if Trim(CmpReqCodClp.Value) <> '' then
     Text := CmpReqCodClp.Value+ '-' +CmpReqCodGru.Value+ '.' +CmpReqCodSub.Value+ '.' +CmpReqCodPro.Value
  else
     Text := '';
end;

procedure TfmManReq.DsReqDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if CmpReqId_FinCli.Value > 0 then
     pnCliente.Caption := ' Cliente : '+CmpReqNomCli.Value
  else
     pnCliente.Caption := ' Cliente : ';

  if CmpReqId_FinVen.Value > 0 then
     pnVendedor.Caption := ' Vendedor : '+CmpReqApeVen.Value
  else
     pnVendedor.Caption := ' Vendedor : ';
     
end;

procedure TfmManReq.CmpReqPEDIDOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if CmpReqId_PedRes.Value > 0 then
     Text := IntToStr(CmpReqId_PedRes.Value)
  else
     Text := Trim(CmpReqPedCli.Value);
end;

end.
