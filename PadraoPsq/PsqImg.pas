unit PsqImg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, jpeg, Db, Wwdatsrc, DBTables, Wwquery, ExtDlgs, StdCtrls,
  dxCntner, dxExEdtr, dxEdLib, dxDBELib, dxEditor, dxDBColorEdit;

type
  TfmPsqImg = class(TForm)
    EstPro: TwwQuery;
    DsPro: TwwDataSource;
    EstProIMGPRO: TBlobField;
    EstProCODCLP: TStringField;
    EstProCODGRU: TStringField;
    EstProCODSUB: TStringField;
    EstProCODPRO: TStringField;
    OpenPicture: TOpenPictureDialog;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel2: TPanel;
    Label11: TLabel;
    EdImgPro: TdxDBGraphicEdit;
    Label37: TLabel;
    Panel1: TPanel;
    Panel4: TPanel;
    Image2: TImage;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmPsqImg: TfmPsqImg;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmPsqImg.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmPsqImg.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
