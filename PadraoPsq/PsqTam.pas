unit PsqTam;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, dxDBColorEdit;

type
  TfmPsqTam = class(TForm)
    EstTam: TwwQuery;
    DsTam: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit28: TdxDBColorEdit;
    grTam: ThGrid;
    Label21: TLabel;
    Label28: TLabel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    EstTamQTDTAM: TFloatField;
    EstTamQTRTAM: TFloatField;
    EstTamQTDATU: TFloatField;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    EstTamCODTAM: TStringField;
    procedure grTamDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    CodTam : string;
  end;

var
  fmPsqTam: TfmPsqTam;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqTam.grTamDblClick(Sender: TObject);
begin

  CodTam := EstTamCodTam.Value;

  Close;

end;

procedure TfmPsqTam.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then close;

  if key = 13 then begin

     CodTam := EstTamCodTam.Value;

     Close;

  end;

  if key = 33 then EstTam.MoveBy(-10); {Page Up}
  if key = 34 then EstTam.MoveBy(10);  {Page Down}

  if not (ActiveControl is ThGrid) then begin

     if key = 35 then EstTam.Last;  {End}
     if key = 36 then EstTam.First; {Home}

     if key = 40 then EstTam.Next; {Para Baixo}
     if key = 38 then EstTam.Prior; {Para Cima}

  end;
end;

procedure TfmPsqTam.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
