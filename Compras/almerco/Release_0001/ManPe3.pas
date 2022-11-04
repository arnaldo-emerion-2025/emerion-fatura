unit ManPe3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, Mask, hEdits, AlignEdit, dxCntner, dxEditor,
  dxEdLib, dxExEdtr, dxDBELib, FShowPadrao, dxDBColorEdit, dxColorEdit;

type
  TfmManPe3 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label2: TLabel;
    EdSenUsu: TdxColorEdit;
    BbSair: TBitBtn;
    quSql: TwwQuery;
    CmpPe2: TwwQuery;
    CmpPe2NROPE2: TIntegerField;
    CmpPe2VLQPE2: TFloatField;
    CmpPe2VLQITE: TFloatField;
    DsPe2: TwwDataSource;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    Panel3: TPanel;
    Label1: TLabel;
    dxDBEdit28: TdxDBColorEdit;
    grPe2: ThGrid;
    CmpPe2DESPE2: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BbSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure EdSenUsuKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grPe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grPe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure EdSenUsuKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdSenUsuMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  private
    {Private declarations}
  public
    {Public declarations}
    sContinuar : string;
    sTentativa : integer;
  end;

var
  fmManPe3: TfmManPe3;

implementation

uses dxDemoUtils, Encrypt, Bbfuncao, BbMensag, ManGDB, ManPed;

{$R *.DFM}

procedure TfmManPe3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then close;
end;

procedure TfmManPe3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe3.FormShow(Sender: TObject);
begin
  inherited;
  
  CmpPe2.Close;
  CmpPe2.Params[0].AsInteger := fmManPed.CmpPedId_CmpPed.Value;
  CmpPe2.Open;

  EdSenUsu.SetFocus;

end;

procedure TfmManPe3.BbSairClick(Sender: TObject);
var
Senha : string;
begin

  ActiveControl := nil;

  Senha := IBPassword(PChar(EdSenUsu.Text));

  if GSup_Id > 0 then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as QtdReg'+
                  ' From GerUsu'+
                  ' where GerUsu.CodUsu = '+ QuotedStr(IntToStr(GSup_Id)) +
                  '   and GerUsu.SenUsu = '+ QuotedStr(Senha);
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
                  '   and GerUsu.SenUsu = '+ QuotedStr(Senha);
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

procedure TfmManPe3.FormCreate(Sender: TObject);
begin
  inherited;
  
  sTentativa := 0;

  sContinuar := 'N';

end;

procedure TfmManPe3.EdSenUsuKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = 40) or (key = 13) then BbSair.SetFocus;
end;

procedure TfmManPe3.grPe2KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  EdSenUsu.Color := $00FCF4ED;

  grPe2.Color := clInfoBk;

end;

procedure TfmManPe3.grPe2MouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  EdSenUsu.Color := $00FCF4ED;

  grPe2.Color := clInfoBk;

end;

procedure TfmManPe3.EdSenUsuKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  grPe2.Color := $00FCF4ED;

  EdSenUsu.Color := clInfoBk;

end;

procedure TfmManPe3.EdSenUsuMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  grPe2.Color := $00FCF4ED;

  EdSenUsu.Color := clInfoBk;

end;

end.
