unit PsqPed;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao;

type
  TfmPsqPed = class(TfmShowPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PedResNUMRES: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResDTFRES: TDateTimeField;
    PedResCODEMP: TIntegerField;
    PaintBox: TPaintBox;
    Panel3: TPanel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBEdit28: TdxDBEdit;
    grRes: ThGrid;
    Label28: TLabel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PedResSLDRE2: TFloatField;
    pnSitRes: TPanel;
    PedResSITRES: TStringField;
    Label5: TLabel;
    Bevel2: TBevel;
    Label6: TLabel;
    Bevel1: TBevel;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    Panel2: TPanel;
    Label7: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    LojPed: TwwQuery;
    DsPed: TwwDataSource;
    dxDBEdit1: TdxDBEdit;
    grPed: ThGrid;
    LojPedNUMPED: TIntegerField;
    LojPedDTEPED: TDateTimeField;
    LojPedQTPPE2: TFloatField;
    LojPedCODEMP: TIntegerField;
    LojPedSITPED: TStringField;
    LojPedCODCLI: TIntegerField;
    LojPedNOMCLI: TStringField;
    LojPedCODVEN: TIntegerField;
    LojPedAPEVEN: TStringField;
    LojPedCLIENTE: TStringField;
    LojPedVENDEDOR: TStringField;
    PedResCODCLI: TIntegerField;
    PedResAPECLI: TStringField;
    PedResCODVEN: TIntegerField;
    PedResAPEVEN: TStringField;
    PedResCLIENTE: TStringField;
    PedResVENDEDOR: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure LojPedCLIENTEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure LojPedVENDEDORGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PedResCLIENTEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure PedResVENDEDORGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DsResDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqPed: TfmPsqPed;

implementation

uses dxDemoUtils, Bbgeral;

{$R *.DFM}

procedure TfmPsqPed.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqPed.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqPed.FormShow(Sender: TObject);
begin
  inherited;
  
  LojPed.Close;
  LojPed.Params[0].AsString := PedRes.Params[0].AsString;
  LojPed.Params[1].AsString := PedRes.Params[1].AsString;
  LojPed.Params[2].AsString := PedRes.Params[2].AsString;
  LojPed.Params[3].AsString := PedRes.Params[3].AsString;
  LojPed.Open;

  pnSitRes.Caption := Trim(PedResSitRes.Value);
  
  grRes.SetFocus;

end;

procedure TfmPsqPed.LojPedCLIENTEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if LojPedCodCli.Value > 0 then Text := fNumZeros(IntToStr(LojPedCodCli.Value),5)+ ' - ' +LojPedNomCli.Value;
end;

procedure TfmPsqPed.LojPedVENDEDORGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if LojPedCodVen.Value > 0 then Text := fNumZeros(IntToStr(LojPedCodVen.Value),3)+ ' - ' +LojPedApeVen.Value;
end;

procedure TfmPsqPed.PedResCLIENTEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if PedResCodCli.Value > 0 then Text := fNumZeros(IntToStr(PedResCodCli.Value),5)+ ' - ' +PedResApeCli.Value;
end;

procedure TfmPsqPed.PedResVENDEDORGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if PedResCodVen.Value > 0 then Text := fNumZeros(IntToStr(PedResCodVen.Value),3)+ ' - ' +PedResApeVen.Value;
end;

procedure TfmPsqPed.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if grRes.Focused then
     pnSitRes.Caption := Trim(PedResSitRes.Value)
  else
     pnSitRes.Caption := Trim(LojPedSitPed.Value);
end;

end.
