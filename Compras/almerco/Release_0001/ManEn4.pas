unit ManEn4;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, FShowPadrao, dxColorEdit, dxDBColorEdit;

type
  TfmManEn4 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label2: TLabel;
    EdSenUsu: TdxColorEdit;
    BbSair: TBitBtn;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    dxDBEdit28: TdxDBColorEdit;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    Panel1: TPanel;
    Label3: TLabel;
    dxDBEdit1: TdxDBColorEdit;
    quSql: TwwQuery;
    CmpVal: TwwQuery;
    CmpValNROEN2: TIntegerField;
    CmpValCODITE: TStringField;
    CmpValDESEN2: TStringField;
    CmpValVLQEN2: TFloatField;
    CmpValVLQPED: TFloatField;
    CmpValCODCLP: TStringField;
    CmpValCODGRU: TStringField;
    CmpValCODSUB: TStringField;
    CmpValCODPRO: TStringField;
    DsVal: TwwDataSource;
    CmpQtd: TwwQuery;
    IntegerField1: TIntegerField;
    CmpQtdCODITE: TStringField;
    CmpQtdDESEN2: TStringField;
    CmpQtdQTPEN2: TFloatField;
    CmpQtdQTDPED: TFloatField;
    CmpQtdCODCLP: TStringField;
    CmpQtdCODGRU: TStringField;
    CmpQtdCODSUB: TStringField;
    CmpQtdCODPRO: TStringField;
    DsQtd: TwwDataSource;
    grVal: ThGrid;
    grQtd: ThGrid;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdSenUsuKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grValKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grValMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure grQtdKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure grQtdMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure EdSenUsuKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EdSenUsuMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    {Private declarations}
  public
    {Public declarations}
    sContinuar : string;
    sTentativa : integer;
  end;

var
  fmManEn4: TfmManEn4;

implementation

uses dxDemoUtils, Encrypt, Bbfuncao, BbMensag, ManGDB, ManEnt;

{$R *.DFM}

procedure TfmManEn4.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmManEn4.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn4.FormShow(Sender: TObject);
begin
  inherited;
  
  CmpVal.Close;
  CmpVal.Params[0].AsInteger := fmManEnt.CmpEntId_CmpEnt.Value;
  CmpVal.Open;

  CmpQtd.Close;
  CmpQtd.Params[0].AsInteger := fmManEnt.CmpEntId_CmpEnt.Value;
  CmpQtd.Open;

  EdSenUsu.SetFocus;

end;

procedure TfmManEn4.BbSairClick(Sender: TObject);
var
  senha : string;
begin

  ActiveControl := nil;

  senha := IBPassword(PChar(EdSenUsu.Text));

  if GSup_Id > 0 then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg'+
                  ' From GerUsu'+
                  ' where GerUsu.CodUsu = '+ QuotedStr(IntToStr(GSup_Id)) +
                  '   and GerUsu.SenUsu = '+ QuotedStr(senha);
          Open;

     end;

     end
  else
     begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg'+
                  ' From GerUsu'+
                  ' where GerUsu.CodUsu = '+ QuotedStr(IntToStr(GUsu_Id)) +
                  '   and GerUsu.SenUsu = '+ QuotedStr(senha);
          Open;

     end;
  end;

  if quSQL.FieldbyName('QtdReg').AsInteger > 0 then begin

     sContinuar := 'S';

     Close;

     end
  else
     begin

     sTentativa := sTentativa + 1;

     if sTentativa = 3 then begin

        fMsg('Limite de Tentativas Esgotado. Desconto não Permitido.','E');

        Close

        end
     else
        fmsgErro('Senha Informada Incorreta.',EdSenUsu);
  end;
end;

procedure TfmManEn4.FormCreate(Sender: TObject);
begin
  inherited;

  sTentativa := 0;

  sContinuar := 'N';

end;

procedure TfmManEn4.EdSenUsuKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = 40) or (key = 13) then BbSair.SetFocus;
end;

procedure TfmManEn4.grValKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grQtd.Color := $00FCF4ED;

  EdSenUsu.Color := $00FCF4ED;

  grVal.Color := clInfoBk;

end;

procedure TfmManEn4.grValMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grQtd.Color := $00FCF4ED;

  EdSenUsu.Color := $00FCF4ED;

  grVal.Color := clInfoBk;

end;

procedure TfmManEn4.grQtdKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grVal.Color := $00FCF4ED;

  EdSenUsu.Color := $00FCF4ED;

  grQtd.Color := clInfoBk;

end;

procedure TfmManEn4.grQtdMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grVal.Color := $00FCF4ED;

  EdSenUsu.Color := $00FCF4ED;

  grQtd.Color := clInfoBk;

end;

procedure TfmManEn4.EdSenUsuKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grVal.Color := $00FCF4ED;
  grQtd.Color := $00FCF4ED;

  EdSenUsu.Color := clInfoBk;

end;

procedure TfmManEn4.EdSenUsuMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grVal.Color := $00FCF4ED;
  grQtd.Color := $00FCF4ED;

  EdSenUsu.Color := clInfoBk;

end;

end.
