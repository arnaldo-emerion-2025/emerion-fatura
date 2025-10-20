unit ManSen;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  FShowPadrao, dxColorEdit;

type
  TfmManSen = class(TfmShowPadrao)
    quSql: TwwQuery;
    PaintBox: TPaintBox;
    Label1: TLabel;
    EdSenUsu: TdxColorEdit;
    BbSair: TBitBtn;
    procedure BbSairClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure EdSenUsuKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    tentativas : integer;
    sContinuar : string;
  end;

var
  fmManSen: TfmManSen;

implementation

uses dxDemoUtils, Encrypt, Bbfuncao, BbMensag, ManGDB;

{$R *.DFM}

procedure TfmManSen.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

procedure TfmManSen.BbSairClick(Sender: TObject);
var
Senha : string;
begin

  ActiveControl := nil;

  Senha := IBPassword(PChar(EdSenUsu.Text));

  if GSup_Id > 0 then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as Reg From GerUsu'+
                  ' where CodUsu = :CodUsu'+
                  '   and SenUsu = :SenUsu';

          with Params do begin

               Params[0].AsInteger := GSup_Id;
               Params[1].AsString  := Senha;

          end;

          Open;

     end;

     end
  else
     begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as Reg From GerUsu'+
                  ' where CodUsu = :CodUsu'+
                  '   and SenUsu = :SenUsu';

          with Params do begin

               Params[0].AsInteger := GUsu_Id;
               Params[1].AsString  := Senha;

          end;

          Open;

     end;
  end;

  if quSQL.FieldbyName('Reg').AsInteger > 0 then begin

     sContinuar := 'S';

     Close;

     end
  else
     begin

     tentativas := tentativas + 1;

     if tentativas = 3 then begin

        fMsg('Limite de Tentativas Esgotado. Desconto não Permitido','E');

        Close

        end
     else
        fmsgErro('Senha Informada Incorreta',EdSenUsu);
  end;
end;

procedure TfmManSen.FormCreate(Sender: TObject);
begin
  inherited;
  
  tentativas := 0;

  sContinuar := 'N';

end;

procedure TfmManSen.FormShow(Sender: TObject);
begin
  inherited;
  EdSenUsu.SetFocus;
end;

procedure TfmManSen.EdSenUsuKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (key = 40) or (key = 13) then BbSair.SetFocus;
end;

procedure TfmManSen.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
