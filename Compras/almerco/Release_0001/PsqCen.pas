unit PsqCen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, dxDBEdtr,
  dxDBColorLookupEdit, dxDBColorEdit, DBColorRichEdit;

type
  TfmPsqCen = class(TForm)
    CmpEnt: TwwQuery;
    DsEnt: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label12: TLabel;
    EdUscEnt: TdxDBColorEdit;
    GerUsu: TwwQuery;
    DsUsu: TwwDataSource;
    GerUsuCODUSU: TIntegerField;
    GerUsuLOGUSU: TStringField;
    CbNomUsu: TdxDBColorLookupEdit;
    CmpEntUSCENT: TIntegerField;
    Label3: TLabel;
    Label4: TLabel;
    EdDtcEnt: TdxDBColorEdit;
    CmpEntDTCENT: TDateTimeField;
    CmpEntHRCENT: TStringField;
    EdHrcEnt: TdxDBColorEdit;
    EdObcEn1: TdxDBColorEdit;
    EdObcEn2: TdxDBColorEdit;
    EdObcEn3: TdxDBColorEdit;
    CmpEntOBCEN1: TStringField;
    CmpEntOBCEN2: TStringField;
    CmpEntOBCEN3: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqCen: TfmPsqCen;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqCen.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if key = 27 then close;
end;

procedure TfmPsqCen.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqCen.FormShow(Sender: TObject);
begin
  GerUsu.Close;
  GerUsu.Params[0].AsInteger := CmpEntUscEnt.Value;
  GerUsu.Open;
end;

end.
