unit PsqSpl;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxColorEdit, dxDBColorEdit;

type
  TfmPsqSpl = class(TForm)
    FinSub: TwwQuery;
    DsSub: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grSub: ThGrid;
    Edpesquisa: TdxColorEdit;
    Label21: TLabel;
    Label28: TLabel;
    Panel3: TPanel;
    Label1: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Label2: TLabel;
    pnNomPlc: TdxDBColorEdit;
    EdNomPlc: TEdit;
    FinSubSUBPLC: TIntegerField;
    FinSubNOMSUB: TStringField;
    FinSubCONPLC: TIntegerField;
    FinSubNOMPLC: TStringField;
    procedure grSubDblClick(Sender: TObject);
    procedure EdPesquisaChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure DsSubDataChange(Sender: TObject; Field: TField);
  private
    {Private declarations}
  public
    {Public declarations}
    NomSub,NomPlc : string;
    SubPlc,ConPlc : integer;
  end;

var
  fmPsqSpl: TfmPsqSpl;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqSpl.grSubDblClick(Sender: TObject);
begin

  SubPlc := FinSubSubPlc.Value;
  ConPlc := FinSubConPlc.Value;
  NomSub := FinSubNomSub.Value;
  NomPlc := FinSubNomPlc.Value;

  Close;

end;

procedure TfmPsqSpl.EdPesquisaChange(Sender: TObject);
begin
  FinSub.Locate('NOMSUB',EdPesquisa.Text,[LoPartialKey]);
end;

procedure TfmPsqSpl.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  
  if key = 27 then close;

  if key = 13 then begin

     SubPlc := FinSubSubPlc.Value;
     ConPlc := FinSubConPlc.Value;
     NomSub := FinSubNomSub.Value;
     NomPlc := FinSubNomPlc.Value;

     Close;

  end;

  if key = 33 then FinSub.MoveBy(-10); {Page Up}
  if key = 34 then FinSub.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then FinSub.Last;  {End}
     if key = 36 then FinSub.First; {Home}

     if key = 40 then FinSub.Next; {Para Baixo}
     if key = 38 then FinSub.Prior; {Para Cima}

  end;
end;

procedure TfmPsqSpl.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqSpl.DsSubDataChange(Sender: TObject; Field: TField);
begin
  if FinSubConPlc.Value > 0 then
     EdNomPlc.Text := ' '+IntToStr(FinSubConPlc.Value)+' - '+FinSubNomPlc.Value
  else
     EdNomPlc.Text := ' ';
end;

end.
