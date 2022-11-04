unit ObsCli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, FShowPadrao, dxDBColorEdit;

type
  TfmObsCli = class(TfmShowPadrao)
    FinCli: TwwQuery;
    DsCli: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    dxDBEdit1: TdxDBColorEdit;
    Label1: TLabel;
    Panel1: TPanel;
    FinCliOBSCLI: TMemoField;
    Memo1: TMemo;
    FinCliOBSRES: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FinCliAfterOpen(DataSet: TDataSet);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmObsCli: TfmObsCli;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmObsCli.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then
    close;
end;

procedure TfmObsCli.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmObsCli.FormShow(Sender: TObject);
begin
  inherited;
  Memo1.SetFocus;
end;

procedure TfmObsCli.FinCliAfterOpen(DataSet: TDataSet);
begin
  inherited;
   Memo1.Clear;
   Memo1.Lines.Add(FinCliOBSCLI.AsString);
   Memo1.Lines.Add('-------------------------------------------------------------------------------------------------------------------------------------------------');
   Memo1.Lines.Add('');
   Memo1.Lines.Add(FinCliOBSRES.AsString);
end;

end.
