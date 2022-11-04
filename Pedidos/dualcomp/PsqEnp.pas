unit PsqEnp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Db,
  DBTables, Wwquery, dxExEdtr, Wwdatsrc, dxDBEdtr, FShowPadrao,
  dxDBColorMaskEdit, dxDBColorMemo, dxDBColorLookupEdit, dxDBColorEdit,
  dxDBColorDateEdit, dxDBColorCurrencyEdit;

type
  TfmPsqEnp = class(TfmShowPadrao)
    FinTra: TwwQuery;
    DsTra: TwwDataSource;
    FinTraCODTRA: TIntegerField;
    FinTraNOMTRA: TStringField;
    FinTraAPETRA: TStringField;
    FinTraCEPTRA: TStringField;
    FinTraENDTRA: TStringField;
    FinTraREFTRA: TStringField;
    FinTraTENTRA: TStringField;
    FinTraNUMTRA: TStringField;
    FinTraBAITRA: TStringField;
    FinTraCIDTRA: TStringField;
    FinTraSIGUFE: TStringField;
    FinTraCGCTRA: TStringField;
    FinTraINSTRA: TStringField;
    FinTraPRTTRA: TStringField;
    FinTraFONTRA: TStringField;
    FinTraPRFTRA: TStringField;
    FinTraFAXTRA: TStringField;
    FinTraEMATRA: TStringField;
    FinTraWEBTRA: TStringField;
    DsVei: TwwDataSource;
    ExpVei: TwwQuery;
    ExpVeiCODVEI: TIntegerField;
    ExpVeiMODVEI: TStringField;
    ExpVeiMARVEI: TStringField;
    ExpVeiPLCVEI: TStringField;
    ExpVeiUFEVEI: TStringField;
    Label38: TLabel;
    EdQtdVol: TdxDBColorCurrencyEdit;
    Label60: TLabel;
    EdDteSda: TdxDBColorDateEdit;
    Label52: TLabel;
    EdCodVei: TdxDBColorEdit;
    Label1: TLabel;
    CbNomVei: TdxDBColorLookupEdit;
    CbNomTra: TdxDBColorLookupEdit;
    EdCodTra: TdxDBColorEdit;
    Label2: TLabel;
    EdObsSda: TdxDBColorMemo;
    Label3: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    PaintBox: TPaintBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Bevel2: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    EdDteEnt: TdxDBColorDateEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    EdObsEnt: TdxDBColorMemo;
    Label16: TLabel;
    Bevel3: TBevel;
    Label17: TLabel;
    Label18: TLabel;
    EdUsuAtu: TdxDBColorEdit;
    CbLogUsu: TdxDBColorLookupEdit;
    EdDteAtu: TdxDBColorDateEdit;
    Label19: TLabel;
    GerUsu: TwwQuery;
    DsUsu: TwwDataSource;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    EdHreSda: TdxDBColorMaskEdit;
    EdHreEnt: TdxDBColorMaskEdit;
    Label24: TLabel;
    Label25: TLabel;
    EdHreAtu: TdxDBColorMaskEdit;
    Label20: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    EdNroCol: TdxDBColorEdit;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqEnp: TfmPsqEnp;

implementation

uses dxDemoUtils, Bbgeral, PsqOrc;

{$R *.DFM}

procedure TfmPsqEnp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqEnp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqEnp.FormShow(Sender: TObject);
begin
  inherited;
  
  FinTra.Close;
  FinTra.Params[0].AsInteger := fmPsqOrc.FatOrcTraSda.Value;
  FinTra.Open;

  ExpVei.Close;
  ExpVei.Params[0].AsInteger := fmPsqOrc.FatOrcCodVei.Value;
  ExpVei.Open;

  GerUsu.Close;
  GerUsu.Params[0].AsInteger := fmPsqOrc.FatOrcUsuAtu.Value;
  GerUsu.Open;

end;

end.
