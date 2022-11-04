unit PsqGrd;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxDBColorEdit;

type
  TfmPsqGrd = class(TForm)
    EstQte: TwwQuery;
    DsQte: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grTam: ThGrid;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstQteNOMCOR: TStringField;
    EstQteQTDQTE: TFloatField;
    DsTam: TwwDataSource;
    EstTam: TwwQuery;
    dxDBEdit1: TdxDBColorEdit;
    grCor: ThGrid;
    EstQteQTRQTE: TFloatField;
    EstQteQTDATU: TFloatField;
    Label28: TLabel;
    EstTamCODEMP: TIntegerField;
    GerEmp: TwwQuery;
    DsEmp: TwwDataSource;
    GerEmpCODEMP: TIntegerField;
    GerEmpNOMEMP: TStringField;
    EstQteCODEMP: TIntegerField;
    EstQteCODCLP: TStringField;
    EstQteCODGRU: TStringField;
    EstQteCODSUB: TStringField;
    EstQteCODPRO: TStringField;
    EstTamCODCLP: TStringField;
    EstTamCODGRU: TStringField;
    EstTamCODSUB: TStringField;
    EstTamCODPRO: TStringField;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    EstTamCODTAM: TStringField;
    EstQteCODCOR: TStringField;
    procedure grTamDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure DsTamDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodCor,NomCor : string;
  end;

var
  fmPsqGrd: TfmPsqGrd;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqGrd.grTamDblClick(Sender: TObject);
begin

  CodCor := EstQteCodCor.Value;
  NomCor := EstQteNomCor.Value;

  Close;

end;

procedure TfmPsqGrd.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodCor := EstQteCodCor.Value;
     NomCor := EstQteNomCor.Value;

     Close;

  end;

  if key = 33 then EstQte.MoveBy(-10); {Page Up}
  if key = 34 then EstQte.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstQte.Last;  {End}
     if key = 36 then EstQte.First; {Home}

     if key = 40 then EstQte.Next; {Para Baixo}
     if key = 38 then EstQte.Prior; {Para Cima}

  end;
end;

procedure TfmPsqGrd.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqGrd.DsTamDataChange(Sender: TObject; Field: TField);
begin
  if (EstQteCodEmp.Value <> EstTamCodEmp.Value) or (EstQteCodClp.Value <> EstTamCodClp.Value) or
     (EstQteCodGru.Value <> EstTamCodGru.Value) or (EstQteCodSub.Value <> EstTamCodSub.Value) or (EstQteCodPro.Value <> EstTamCodPro.Value) then begin

     EstQte.Close;
     EstQte.Params[0].AsInteger := EstTamCodEmp.Value;
     EstQte.Params[1].AsString  := EstTamCodClp.Value;
     EstQte.Params[2].AsString  := EstTamCodGru.Value;
     EstQte.Params[3].AsString  := EstTamCodSub.Value;
     EstQte.Params[4].AsString  := EstTamCodPro.Value;
     EstQte.Open;

  end;

  if GerEmpCodEmp.Value <> EstTamCodEmp.Value then begin

     GerEmp.Close;
     GerEmp.Params[0].AsInteger := EstTamCodEmp.Value;
     GerEmp.Open;

  end;
end;

procedure TfmPsqGrd.FormShow(Sender: TObject);
begin
  inherited;
  grTam.SetFocus;
end;

end.
