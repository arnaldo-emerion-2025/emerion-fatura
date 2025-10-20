unit PsqFor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
  dxColorEdit;

type
  TfmPsqFor = class(TForm)
    FinFor: TwwQuery;
    DsFor: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label11: TLabel;
    PaintBox: TPaintBox;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    FinForNOMFOR: TStringField;
    FinForCODFOR: TIntegerField;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grFor: ThGrid;
    FinForSIGUFE: TStringField;
    FinForCONPLC: TIntegerField;
    FinForSUBPLC: TIntegerField;
    Panel2: TPanel;
    rgBusca: TRadioGroup;
    FinForCGCCPF: TStringField;
    FinForCGCFOR: TStringField;
    FinForAPEFOR: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure EdpesquisaChange(Sender: TObject);
    procedure grForDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    NomFor : string;
    SigUfe : string;
    CodFor : integer;
    ConPlc : integer;
    SubPlc : integer;
  end;

var
  fmPsqFor: TfmPsqFor;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqFor.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodFor := FinForCodFor.Value;
     NomFor := FinForApeFor.Value;
     SigUfe := FinForSigUfe.Value;
     ConPlc := FinForConPlc.Value;
     SubPlc := FinForSubPlc.Value;

     Close;

  end;

  if key = 33 then FinFor.MoveBy(-10); {Page Up}
  if key = 34 then FinFor.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinFor.Last;  {End}
     if key = 36 then FinFor.First; {Home}

     if key = 40 then FinFor.Next; {Para Baixo}
     if key = 38 then FinFor.Prior; {Para Cima}

  end;
end;

procedure TfmPsqFor.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqFor.EdpesquisaChange(Sender: TObject);
begin
  if rgBusca.ItemIndex = 0 then FinFor.Locate('NomFor',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 1 then FinFor.Locate('ApeFor',EdPesquisa.Text,[LoPartialKey]);
  if rgBusca.ItemIndex = 2 then FinFor.Locate('CgcFor',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqFor.grForDblClick(Sender: TObject);
begin

  CodFor := FinForCodFor.Value;
  NomFor := FinForApeFor.Value;
  SigUfe := FinForSigUfe.Value;
  ConPlc := FinForConPlc.Value;
  SubPlc := FinForSubPlc.Value;

  Close;

end;

procedure TfmPsqFor.FormShow(Sender: TObject);
begin
  inherited;
  EdPesquisa.SetFocus;
end;

end.
