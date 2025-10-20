unit ManCge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, dxCntner, dxExEdtr, dxEdLib, dxDBELib, Db, DBTables, Grids,
  Wwdbigrd, Wwdbgrid, hGrid, ExtCtrls, StdCtrls, Wwquery;

type
  TfmManCge = class(TfmShowPadrao)
    dbGer: TdxDBGraphicEdit;
    PedRes: TQuery;
    PedRe2: TQuery;
    DsRes: TDataSource;
    DsRe2: TDataSource;
    grRes: ThGrid;
    PaintBox: TPaintBox;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label32: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label24: TLabel;
    dbGr2: TdxDBGraphicEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label1: TLabel;
    Label7: TLabel;
    Bevel2: TBevel;
    grGr2: ThGrid;
    Label8: TLabel;
    Bevel1: TBevel;
    Label9: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    PedResDTERES: TDateTimeField;
    PedResTOTGER: TFloatField;
    PedResSITRES: TStringField;
    PedRe2CODGRU: TStringField;
    PedRe2CODSUB: TStringField;
    PedRe2CODPRO: TStringField;
    PedRe2DESRE2: TStringField;
    PedRe2QTPRE2: TFloatField;
    PedRe2QTSRE2: TFloatField;
    PedRe2QTFRE2: TFloatField;
    PedRe2CODITE: TStringField;
    PedResHRERES: TStringField;
    PedResLOGUSU: TStringField;
    Label4: TLabel;
    PedResID_PEDRES: TIntegerField;
    PedRe2ID_PEDRE2: TIntegerField;
    PedRe2CODCLP: TStringField;
    procedure DsResDataChange(Sender: TObject; Field: TField);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure PedRe2CODITEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    Id_PedGer : integer;
    { Public declarations }
  end;

var
  fmManCge: TfmManCge;

implementation

uses Bbmensag;

{$R *.DFM}

procedure TfmManCge.DsResDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedRe2.Params[0].AsInteger <> PedResId_PedRes.Value then begin

     PedRe2.Close;
     PedRe2.Params[0].AsInteger := PedResId_PedRes.Value;
     PedRe2.Params[1].AsInteger := Id_PedGer;
     PedRe2.Open;

  end;  
end;

procedure TfmManCge.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

procedure TfmManCge.FormShow(Sender: TObject);
begin
  inherited;

  PedRes.Close;
  PedRes.Params[0].AsInteger := Id_PedGer;
  PedRes.Open;

  grRes.SetFocus;

end;

procedure TfmManCge.PedRe2CODITEGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  inherited;
  if PedRe2Id_PedRe2.Value > 0 then
     Text := PedRe2CodClp.Value+'-'+PedRe2CodGru.Value+'.'+PedRe2CodSub.Value+'.'+PedRe2CodPro.Value
  else
     Text := ' ';
end;

end.
