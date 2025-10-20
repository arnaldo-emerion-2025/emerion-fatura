unit ManSc1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Buttons, dxCntner, dxEditor, dxEdLib,
  dxDBELib, dxDBColorEdit, dxExEdtr, dxDBColorCurrencyEdit,
  dxDBColorDateEdit, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid;

type
  TfmManSc1 = class(TfmPadrao)
    PaintBox: TPaintBox;
    Panel1: TPanel;
    PaintBox1: TPaintBox;
    EdNomArq: TdxDBColorEdit;
    pnNomArq: TPanel;
    EdId_ProArq: TdxDBColorEdit;
    bPsqArq: TSpeedButton;
    Label12: TLabel;
    dxDBColorEdit1: TdxDBColorEdit;
    SpeedButton1: TSpeedButton;
    dxDBColorEdit2: TdxDBColorEdit;
    Panel2: TPanel;
    dxDBColorEdit3: TdxDBColorEdit;
    SpeedButton2: TSpeedButton;
    dxDBColorEdit4: TdxDBColorEdit;
    Panel3: TPanel;
    dxDBColorEdit5: TdxDBColorEdit;
    SpeedButton3: TSpeedButton;
    dxDBColorEdit6: TdxDBColorEdit;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdDtePed: TdxDBColorDateEdit;
    Label5: TLabel;
    EdVluPe2: TdxDBColorCurrencyEdit;
    Label6: TLabel;
    dxDBColorCurrencyEdit1: TdxDBColorCurrencyEdit;
    dxDBColorEdit7: TdxDBColorEdit;
    Panel5: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    dxDBColorCurrencyEdit2: TdxDBColorCurrencyEdit;
    CmpSco: TwwQuery;
    UpCmpSco: TUpdateSQL;
    DsCmpSco: TwwDataSource;
    quSql: TwwQuery;
    CmpScoID_CMPSCO: TIntegerField;
    CmpScoDTESCO: TDateTimeField;
    CmpScoHRESCO: TStringField;
    CmpScoCODCLP: TStringField;
    CmpScoCODGRU: TStringField;
    CmpScoCODSUB: TStringField;
    CmpScoCODPRO: TStringField;
    CmpScoCLSIPI: TStringField;
    CmpScoQTDSCO: TFloatField;
    CmpScoVALCOT: TFloatField;
    CmpScoID_PORORI: TIntegerField;
    CmpScoID_PORDES: TIntegerField;
    CmpScoMRGSCO: TFloatField;
    CmpScoSEQSCO: TStringField;
    CmpScoSITSCO: TStringField;
    Panel6: TPanel;
    CmpSc2: TwwQuery;
    DsCmpSc2: TwwDataSource;
    UpCmpSc2: TUpdateSQL;
    grTlc: ThGrid;
    Panel7: TPanel;
    Label9: TLabel;
    Panel8: TPanel;
    CmpSc2ID_CMPSC2: TIntegerField;
    CmpSc2ID_CMPSCO: TIntegerField;
    CmpSc2ID_CMPMLC: TIntegerField;
    CmpSc2TOTSC2: TFloatField;
    CmpSc2NOMMLC: TStringField;
    Panel9: TPanel;
    Panel10: TPanel;
    hGrid1: ThGrid;
    Panel11: TPanel;
    Label10: TLabel;
    CmpSc3: TwwQuery;
    UpCmpSc3: TUpdateSQL;
    DsCmpSc3: TwwDataSource;
    CmpSc3ID_CMPSC3: TIntegerField;
    CmpSc3ID_CMPSC2: TIntegerField;
    CmpSc3DESSC3: TStringField;
    CmpSc3TIPSC3: TStringField;
    CmpSc3PERSC3: TFloatField;
    CmpSc3BASSC3: TFloatField;
    CmpSc3REDSC3: TFloatField;
    CmpSc3TOTSC3: TFloatField;
    dxDBColorEdit8: TdxDBColorEdit;
    Panel12: TPanel;
    Label11: TLabel;
    dxDBColorEdit9: TdxDBColorEdit;
    Panel13: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    dxDBColorEdit10: TdxDBColorEdit;
    Panel14: TPanel;
    Label15: TLabel;
    dxDBColorEdit11: TdxDBColorEdit;
    Panel15: TPanel;
    Label16: TLabel;
    dxDBColorEdit12: TdxDBColorEdit;
    Panel16: TPanel;
    Label17: TLabel;
    dxDBColorEdit13: TdxDBColorEdit;
    Panel17: TPanel;
    procedure PaintBoxPaint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmManSc1: TfmManSc1;

implementation

uses dxDemoUtils;

{$R *.DFM}

procedure TfmManSc1.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
