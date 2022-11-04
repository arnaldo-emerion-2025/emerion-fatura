unit PsqCmp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao, dxDBColorEdit;

type
  TfmPsqCmp = class(TfmShowPadrao)
    CmpPed: TwwQuery;
    DsPed: TwwDataSource;
    PaintBox: TPaintBox;
    Panel3: TPanel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    dxDBEdit28: TdxDBColorEdit;
    grPed: ThGrid;
    Label28: TLabel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Bevel3: TBevel;
    Label6: TLabel;
    CmpPedDTEPED: TDateTimeField;
    CmpPedNUMPED: TIntegerField;
    CmpPedQTPPE2: TFloatField;
    CmpPedDPEPED: TDateTimeField;
    CmpPedHREPED: TStringField;
    CmpPedQTRPE2: TFloatField;
    CmpPedSLDPE2: TFloatField;
    pnApeFor: TPanel;
    CmpPedCODFOR: TIntegerField;
    Label1: TLabel;
    CmpPedAPEFOR: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsPedDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqCmp: TfmPsqCmp;

implementation

uses ManGDB, dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCmp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

procedure TfmPsqCmp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCmp.FormShow(Sender: TObject);
begin
  inherited;

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then
  begin

    if GCodVen_Id > 0 then
    begin

      if GExiFor = 'Nao' then
        pnApeFor.Visible := False;

    end;
  end;

  grPed.SetFocus;

end;

procedure TfmPsqCmp.DsPedDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if CmpPedCodFor.Value > 0 then
    pnApeFor.Caption := ' ' + CmpPedApeFor.Value
  else
    pnApeFor.Caption := ' ';
end;

end.
