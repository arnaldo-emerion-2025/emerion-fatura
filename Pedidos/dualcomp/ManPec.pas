unit ManPec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManPec = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObsPed: TdxDBColorMemo;
    bConfirmar: TBitBtn;
    LojPec: TwwQuery;
    DsPec: TwwDataSource;
    UpPec: TUpdateSQL;
    LojPecCODEMP: TIntegerField;
    LojPecDTEPED: TDateTimeField;
    LojPecNUMPED: TIntegerField;
    LojPecCODTCL: TIntegerField;
    LojPecCODGCL: TIntegerField;
    LojPecCEPCLI: TStringField;
    LojPecTENCLI: TStringField;
    LojPecENDCLI: TStringField;
    LojPecREFCLI: TStringField;
    LojPecNUMCLI: TStringField;
    LojPecBAICLI: TStringField;
    LojPecCIDCLI: TStringField;
    LojPecUFECLI: TStringField;
    LojPecCGCCLI: TStringField;
    LojPecINSCLI: TStringField;
    LojPecLIMCLI: TFloatField;
    LojPecCLIDEV: TFloatField;
    LojPecTOTDEB: TFloatField;
    LojPecTOTATR: TFloatField;
    LojPecTOTCHE: TFloatField;
    LojPecOBSPED: TStringField;
    LojPecCLITAB: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManPec: TfmManPec;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManPec.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then Close;

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManPec.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPec.FormShow(Sender: TObject);
begin
  inherited;
  EdObsPed.SetFocus;  
end;

procedure TfmManPec.bConfirmarClick(Sender: TObject);
begin

  LojPecObsPed.Value := EdObsPed.Text;

  Close;
  
end;

end.
