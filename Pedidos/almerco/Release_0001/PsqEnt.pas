unit PsqEnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Db,
  DBTables, Wwquery, dxExEdtr, Wwdatsrc, dxDBEdtr, FShowPadrao,
  dxDBColorMaskEdit, dxDBColorMemo, dxDBColorLookupEdit, dxDBColorEdit,
  dxDBColorDateEdit, dxDBColorCurrencyEdit;
  
type
  TfmPsqEnt = class(TfmShowPadrao)
    FinTra: TwwQuery;
    DsTra: TwwDataSource;
    FinTraCODTRA: TIntegerField;
    FinTraNOMTRA: TStringField;
    DsVei: TwwDataSource;
    ExpVei: TwwQuery;
    ExpVeiCODVEI: TIntegerField;
    ExpVeiMODVEI: TStringField;
    Label38: TLabel;
    EdQtdVol: TdxDBColorCurrencyEdit;
    Label60: TLabel;
    EdDteSda: TdxDBColorDateEdit;
    Label52: TLabel;
    EdCodVei: TdxDBColorEdit;
    Label1: TLabel;
    CbNomVei: TdxDBColorLookupEdit;
    CbNomTra: TdxDBColorLookupEdit;
    EdTraSda: TdxDBColorEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label10: TLabel;
    Bevel1: TBevel;
    PaintBox: TPaintBox;
    Label9: TLabel;
    Bevel2: TBevel;
    Label11: TLabel;
    EdDteEnt: TdxDBColorDateEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Bevel3: TBevel;
    Label17: TLabel;
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
    Label25: TLabel;
    EdHreAtu: TdxDBColorMaskEdit;
    Label20: TLabel;
    Label26: TLabel;
    EdNroCol: TdxDBColorEdit;
    EdOb1Sda: TdxDBColorEdit;
    EdOb2Sda: TdxDBColorEdit;
    EdOb3Sda: TdxDBColorEdit;
    EdOb4Sda: TdxDBColorEdit;
    EdOb5Sda: TdxDBColorEdit;
    EdOb1Ent: TdxDBColorEdit;
    EdOb2Ent: TdxDBColorEdit;
    EdOb3Ent: TdxDBColorEdit;
    EdOb4Ent: TdxDBColorEdit;
    EdOb5Ent: TdxDBColorEdit;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqEnt: TfmPsqEnt;

implementation

uses dxDemoUtils, Bbgeral, PsqFat;

{$R *.DFM}

procedure TfmPsqEnt.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqEnt.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

end.
