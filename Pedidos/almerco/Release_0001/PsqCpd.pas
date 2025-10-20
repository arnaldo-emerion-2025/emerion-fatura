unit PsqCpd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, StdCtrls, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, hGrid;

type
  TfmPsqCpd = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label2: TLabel;
    Bevel2: TBevel;
    PedRe2: TwwQuery;
    DsRe2: TwwDataSource;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grRe2: ThGrid;
    Label9: TLabel;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2VLURE2: TFloatField;
    PedRe2VLQRE2: TFloatField;
    PedRe2DSCRE2: TFloatField;
    PedRe2PACRE2: TFloatField;
    PedRe2DSRRE2: TFloatField;
    PedRe2TOTBRT: TFloatField;
    PedRe2DSCPER: TFloatField;
    PedRe2TOTNAT: TFloatField;
    pnDesRe2: TPanel;
    PedRe2CODITE: TStringField;
    PedRe2TOTGE2: TFloatField;
    PedRe2TOTCST: TFloatField;
    PedRe2TOTDSC: TFloatField;
    PedRe2DIFDSC: TFloatField;
    PedRe2MARPRE: TFloatField;
    PedRe2MARPED: TFloatField;
    PedRe2LUCROP: TFloatField;
    PedRe2LUCROL: TFloatField;
    PedRe2TOTPER: TFloatField;
    Panel1: TPanel;
    pnTotal01: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    pnTotal02: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    pnTotal03: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    pnTotal04: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    pnTotal05: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    pnTotal07: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    pnTotal08: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    pnTotal06: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    pnTotal09: TPanel;
    pnTotal10: TPanel;
    Panel12: TPanel;
    PedRe2QTPRE2: TFloatField;
    PedRe2TOTREN: TFloatField;
    Panel9: TPanel;
    Panel15: TPanel;
    Panel18: TPanel;
    Panel21: TPanel;
    pnTotal11: TPanel;
    Panel24: TPanel;
    Panel27: TPanel;
    pnVcsRe2: TPanel;
    Panel29: TPanel;
    pnTotIpi: TPanel;
    PedRe2VCSRE2: TFloatField;
    Panel32: TPanel;
    Panel28: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    PedRe2VACRE2: TFloatField;
    PedRe2TOTIPI: TFloatField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PedRe2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure grRe2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DsRe2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmPsqCpd: TfmPsqCpd;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, ManGDB;

{$R *.DFM}

procedure TfmPsqCpd.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCpd.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqCpd.PedRe2CODITEGetText(Sender: TField; var Text: String; DisplayText: Boolean);
begin
  inherited;
  if Trim( PedRe2CodGru.Value ) <> '' then Text := PedRe2CodGru.Value+ '.' +PedRe2CodSub.Value+ '.' +PedRe2CodPro.Value;
end;

procedure TfmPsqCpd.grRe2DrawDataCell(Sender: TObject; const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  if gdSelected in State then begin

     with (Sender as ThGrid).Canvas do begin

          Font.Color := clWhite;

          FillRect(Rect);

     end;

     end
  else
     begin

     if (PedRe2.FieldbyName('LanCst').AsString = 'Sim') or (PedRe2.FieldbyName('NumEnt').AsInteger > 0) then begin

        with (Sender as ThGrid).Canvas do begin

             Font.Color := clRed;

             FillRect(Rect);

        end;
     end;
  end;

  (Sender as ThGrid).DefaultDrawDataCell(Rect, Field, State);

end;

procedure TfmPsqCpd.DsRe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  
  pnDesRe2.Caption := ' ' + PedRe2DesRe2.Value;

  pnTotal10.Caption := FormatFloat('###,###,##0.0000',PedRe2QtpRe2.Value) + ' ';

  pnTotal01.Caption := FormatFloat('###,###,##0.00',PedRe2DifDsc.Value) + ' ';
  pnTotal02.Caption := FormatFloat('###,###,##0.00',PedRe2MarPre.Value) + ' ';
  pnTotal03.Caption := FormatFloat('###,###,##0.00',PedRe2TotRen.Value) + ' ';
  pnTotal04.Caption := FormatFloat('###,###,##0.00',PedRe2LucroP.Value) + ' ';
  pnTotal05.Caption := FormatFloat('###,###,##0.00',PedRe2LucroL.Value) + ' ';
  pnTotal06.Caption := FormatFloat('###,###,##0.00',PedRe2VacRe2.Value) + ' ';
  pnTotal09.Caption := FormatFloat('###,###,##0.00',PedRe2DscPer.Value) + ' ';
  pnTotal11.Caption := FormatFloat('###,###,##0.00',PedRe2TotDsc.Value) + ' ';
  pnTotIpi.Caption  := FormatFloat('###,###,##0.00',PedRe2TotIpi.Value) + ' ';

  pnTotal07.Caption := FormatFloat('###,###,##0.0000',PedRe2VluRe2.Value) + ' ';
  pnTotal08.Caption := FormatFloat('###,###,##0.0000',PedRe2VlqRe2.Value) + ' ';

  pnVcsRe2.Caption := FormatFloat('###,###,##0.0000',PedRe2VcsRe2.Value) + ' ';

end;

end.

