unit PsqRes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao, dxDBColorEdit;

type
  TfmPsqRes = class(TfmShowPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PedResDTERES: TDateTimeField;
    PedResDTFRES: TDateTimeField;
    PedResCODEMP: TIntegerField;
    PaintBox: TPaintBox;
    Panel3: TPanel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grPedRes1: TdxDBColorEdit;
    grPedRes: ThGrid;
    Label28: TLabel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label3: TLabel;
    PedResSLDRE2: TFloatField;
    PedResSITRES: TStringField;
    PedResCLIENTE: TStringField;
    PedResAPECLI: TStringField;
    PedResAPEVEN: TStringField;
    pnApeCli1: TPanel;
    Label1: TLabel;
    PedResCODCLI: TIntegerField;
    PedResNOMCLI: TStringField;
    PedResID_PEDRES: TIntegerField;
    PedPar: TwwQuery;
    PedParUSADEC: TStringField;
    Label5: TLabel;
    Label2: TLabel;
    pnApeCli2: TPanel;
    LojPed: TwwQuery;
    LojPedDTEPED: TDateTimeField;
    LojPedAPEVEN: TStringField;
    LojPedQTPPE2: TFloatField;
    LojPedSITPED: TStringField;
    LojPedCODEMP: TIntegerField;
    LojPedCLIENTE: TStringField;
    LojPedNOMCLI: TStringField;
    DsLojPed: TwwDataSource;
    grLojPed1: TdxDBColorEdit;
    grLojPed: ThGrid;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    Panel4: TPanel;
    Label7: TLabel;
    Label11: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label4: TLabel;
    LojPedID_LOJPED: TIntegerField;
    LojPar: TwwQuery;
    LojParUSADEC: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure DsLojPedDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqRes: TfmPsqRes;

implementation

uses ManGDB, dxDemoUtils, Bbgeral;

{$R *.DFM}

procedure TfmPsqRes.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqRes.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqRes.FormShow(Sender: TObject);
begin
  inherited;

  LojPed.Close;
  LojPed.Params[0].AsString := PedRes.Params[0].AsString;
  LojPed.Params[1].AsString := PedRes.Params[1].AsString;
  LojPed.Params[2].AsString := PedRes.Params[2].AsString;
  LojPed.Params[3].AsString := PedRes.Params[3].AsString;
  LojPed.Open;

  if PedParUsaDec.Value = 'Nao' then PedResSldRe2.DisplayFormat := '###,###,##0';
  if LojParUsaDec.Value = 'Nao' then LojPedQtpPe2.DisplayFormat := '###,###,##0';

  grPedRes.SetFocus;
  
end;

procedure TfmPsqRes.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedResId_PedRes.Value > 0 then
     pnApeCli1.Caption := ' Cliente: '+ Trim(PedResNomCli.Value)
  else
     pnApeCli1.Caption := ' ';
end;

procedure TfmPsqRes.DsLojPedDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if LojPedId_LojPed.Value > 0 then
     pnApeCli2.Caption := ' Cliente: '+ Trim(LojPedNomCli.Value)
  else
     pnApeCli2.Caption := ' ';
end;

end.
