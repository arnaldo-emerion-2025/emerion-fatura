unit PsqLib;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, FShowPadrao, dxDBColorEdit;

type
  TfmPsqLib = class(TfmShowPadrao)
    PedLib: TwwQuery;
    DsFat: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grLib: ThGrid;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    PedLibTOTIPI: TFloatField;
    PedLibTOTICM: TFloatField;
    PedLibTOTGER: TFloatField;
    Label10: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label9: TLabel;
    PedLb2: TwwQuery;
    PedLb2CODEMP: TIntegerField;
    PedLb2NUMRES: TIntegerField;
    PedLb2SEQLIB: TIntegerField;
    PedLb2SEQLB2: TIntegerField;
    PedLb2ULTQTS: TFloatField;
    PedLb2CODITE: TStringField;
    PedLb2DSCPRO: TStringField;
    DsLb2: TwwDataSource;
    dxDBEdit1: TdxDBColorEdit;
    grLb2: ThGrid;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    PedLibCODEMP: TIntegerField;
    PedLibNUMRES: TIntegerField;
    PedLb2QTDLB2: TFloatField;
    Label14: TLabel;
    PedLibSEQLIB: TIntegerField;
    PedLibDTELIB: TDateTimeField;
    PedLibHRELIB: TStringField;
    PedLibTOTLIB: TFloatField;
    PedLibDTERES: TDateTimeField;
    PedLb2DTERES: TDateTimeField;
    DsPedLib_PedLb2: TDataSource;
    procedure grLibDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes: TDateTime;
    CodEmp, NumRes, SeqLib: integer;
  end;

var
  fmPsqLib: TfmPsqLib;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqLib.grLibDblClick(Sender: TObject);
begin

  CodEmp := PedLibCodEmp.Value;
  DteRes := PedLibDteRes.Value;
  NumRes := PedLibNumRes.Value;
  SeqLib := PedLibSeqLib.Value;

  Close;

end;

procedure TfmPsqLib.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    close;

  if key = 13 then
  begin

    CodEmp := PedLibCodEmp.Value;
    DteRes := PedLibDteRes.Value;
    NumRes := PedLibNumRes.Value;
    SeqLib := PedLibSeqLib.Value;

    Close;

  end;
end;

procedure TfmPsqLib.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqLib.FormShow(Sender: TObject);
begin
  inherited;
  grLib.SetFocus;
end;

end.
