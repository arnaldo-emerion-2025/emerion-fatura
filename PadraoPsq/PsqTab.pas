unit PsqTab;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, dxCntner, dxExEdtr, dxEdLib, dxDBELib;

type
  TfmPsqTab = class(TForm)
    PaintBox: TPaintBox;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel2: TPanel;
    Label5: TLabel;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    StrTab: TStringGrid;
    Label21: TLabel;
    Label2: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure StrTabDblClick(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    ret : string;
    TabPrc : integer;
  end;

var
  fmPsqTab: TfmPsqTab;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTab.FormCreate(Sender: TObject);
begin
  inherited;
  
  ret := 'S';

  TabPrc := 0;

end;

procedure TfmPsqTab.FormShow(Sender: TObject);
begin
  inherited;
  StrTab.Setfocus;
end;

procedure TfmPsqTab.FormKeyDown(Sender: TObject; var Key: Word;  Shift: TShiftState);
begin
  
  if key = 27 then Close;

  if key = 13 then begin

     TabPrc := StrToInt(copy(StrTab.Cells[0,StrTab.Row],9,1));

     ret := 'N';

     Close;

  end;
end;

procedure TfmPsqTab.StrTabDblClick(Sender: TObject);
begin

  TabPrc := StrToInt(copy(StrTab.Cells[0,StrTab.Row],9,1));

  ret := 'N';

  Close;

end;

procedure TfmPsqTab.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
