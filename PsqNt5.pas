unit PsqNt5;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  Grids, Wwdbigrd, Wwdbgrid, hGrid, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  dxEditor, FShowPadrao, dxDBColorEdit, dxDBColorCurrencyEdit,
  dxDBColorDateEdit, Buttons;

type
  TfmPsqNt5 = class(TfmShowPadrao)
    FatPe2: TwwQuery;
    DsFatPe2: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label8: TLabel;
    Label25: TLabel;
    grPe21: TdxDBColorEdit;
    grPe2: ThGrid;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    dxDBGraphicEdit3: TdxDBGraphicEdit;
    Panel2: TPanel;
    grLb21: TdxDBColorEdit;
    grLb2: ThGrid;
    PedLb2: TwwQuery;
    DsPedLb2: TwwDataSource;
    PedLb2DESRE2: TStringField;
    PedLb2CODUND: TStringField;
    PedLb2VLQRE2: TFloatField;
    PedLb2ICMRE2: TFloatField;
    PedLb2IPIRE2: TFloatField;
    PedLb2ULTQTS: TFloatField;
    PedLb2CODITE: TStringField;
    FatPe2ID_FATPE2: TIntegerField;
    FatPe2ID_FATPED: TIntegerField;
    FatPe2ID_PEDLIB: TIntegerField;
    FatPe2FLGUSA: TStringField;
    FatPe2ID_PEDRES: TIntegerField;
    FatPe2CODVEN: TIntegerField;
    FatPe2CODATD: TIntegerField;
    FatPe2TOTLIB: TFloatField;
    FatPe2TOTIPI: TFloatField;
    FatPe2TOTSUB: TFloatField;
    FatPe2TOTDSR: TFloatField;
    FatPe2TOTGER: TFloatField;
    FatPe2APEVEN: TStringField;
    FatPe2APEATD: TStringField;
    FatPe2DTELIB: TDateTimeField;
    FatPe2HRELIB: TStringField;
    FatPe2SITLIB: TStringField;
    FatPe2LOGUSU: TStringField;
    FatPe2CODPFA: TStringField;
    FatPe2DSCPFA: TStringField;
    Label3: TLabel;
    pnDscPfa: TPanel;
    FatPe2LIBERADO: TStringField;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    pnText: TLabel;
    PedPar: TwwQuery;
    PedParUSADEC: TStringField;
    PedParTIPATD: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DsFatPe2DataChange(Sender: TObject; Field: TField);
    procedure FatPe2LIBERADOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure grPe2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grLb2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grPe2Enter(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqNt5: TfmPsqNt5;

implementation

uses dxDemoUtils, ManGDB, ManE08;

{$R *.DFM}

procedure TfmPsqNt5.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqNt5.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqNt5.FormShow(Sender: TObject);
begin
  inherited;

  if PedParUsaDec.Value = 'Nao' then PedLb2UltQts.DisplayFormat := '###,###,##0';

  if Trim(PedParTipAtd.Value) = 'Vendedor' then begin

     with FatPe2,SQL do begin

          Close;
          Text := ' Select FatPe2.*,'+
                  '        PedLib.Id_PedRes,'+
                  '        PedLib.DteLib,'+
                  '        PedLib.HreLib,'+
                  '        PedRes.CodPfa,'+
                  '        PedRes.CodVen,'+
                  '        PedRes.CodAtd,'+
                  '        PedLib.TotLib,'+
                  '        PedLib.TotIpi,'+
                  '        PedLib.TotSub,'+
                  '        PedLib.TotDsr,'+
                  '        PedLib.TotGer,'+
                  '        PedLib.SitLib,'+
                  '        GerUsu.LogUsu,'+
                  '        FinVen.ApeVen,'+
                  '        EstPfa.DscPfa,'+
                  '        (Select ApeVen From FinVen Where FinVen.CodVen = PedRes.CodAtd) as ApeAtd'+
                  ' From FatPe2,PedLib,PedRes,FinVen,GerUsu,EstPfa'+
                  ' Where FatPe2.Id_PedLib = PedLib.Id_PedLib'+
                  '   and PedLib.Id_PedRes = PedRes.Id_PedRes'+
                  '   and PedRes.CodVen = FinVen.CodVen'+
                  '   and PedRes.CodPfa = EstPfa.CodPfa'+
                  '   and PedRes.TipPfa =  EstPfa.TipPfa'+
                  '   and PedLib.CodUsu = GerUsu.CodUsu'+
                  '   and FatPe2.Id_FatPed = :Id_FatPed'+
                  ' Order by PedLib.Id_PedLib';
          Open;

     end;
  end;

  grPe2.SetFocus;

end;

procedure TfmPsqNt5.DsFatPe2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnDscPfa.Caption := ' '+Trim(FatPe2DscPfa.Value);
end;

procedure TfmPsqNt5.FatPe2LIBERADOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if FatPe2DteLib.Value > 0 then
     Text := FormatDateTime('dd/mm/yyyy',FatPe2DteLib.Value)+ ' ' +FatPe2HreLib.Value
  else
     Text := '';
end;

procedure TfmPsqNt5.grPe2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin

     grPe2.Enabled := False;

     grLb2.Enabled := True;

     grLb2.SetFocus;

  end;
end;

procedure TfmPsqNt5.grLb2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin

     grLb2.Enabled := False;

     grPe2.Enabled := True;

     grPe2.SetFocus;

  end;
end;

procedure TfmPsqNt5.grPe2Enter(Sender: TObject);
begin
  inherited;
  pnText.Caption := 'ENTER-Alterar janela';
end;

end.
