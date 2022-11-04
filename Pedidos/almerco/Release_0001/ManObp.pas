unit ManObp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, dxDBEdtr,
  FShowPadrao, dxDBColorMemo, dxDBColorEdit, DBColorRichEdit;

type
  TfmManObp = class(TfmShowPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    Label9: TLabel;
    PedResOB1RES: TStringField;
    PedResOB2RES: TStringField;
    PedResOB3RES: TStringField;
    PedResOB4RES: TStringField;
    PedResOB5RES: TStringField;
    PedResOB6RES: TStringField;
    PedResOB7RES: TStringField;
    PedResOB8RES: TStringField;
    EdOb1Res: TdxDBColorEdit;
    EdOb2Res: TdxDBColorEdit;
    EdOb3Res: TdxDBColorEdit;
    EdOb4Res: TdxDBColorEdit;
    EdOb5Res: TdxDBColorEdit;
    EdOb6Res: TdxDBColorEdit;
    EdOb7Res: TdxDBColorEdit;
    EdOb8Res: TdxDBColorEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManObp: TfmManObp;

implementation

uses dxDemoUtils, Bbmensag;

{$R *.DFM}

procedure TfmManObp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

procedure TfmManObp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
