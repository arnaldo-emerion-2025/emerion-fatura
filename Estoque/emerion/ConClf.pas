unit ConClf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FlEdit, Db, Wwdatsrc, DBTables, Wwquery, Buttons,
  wwdblook, Mask, wwdbedit, Wwdotdot, Wwdbcomb, DBCtrls, ExtCtrls,
  dxCntner, dxEditor, dxEdLib, FShowPadrao, dxColorEdit;

type
  TfmConClf = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label1: TLabel;
    Label19: TLabel;
    EdPsqClsPro: TdxColorEdit;
    bPesquisa: TBitBtn;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bPesquisaClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmConClf: TfmConClf;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, ManPro;

{$R *.DFM}

procedure TfmConClf.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmConClf.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqClsPro.SetFocus;
end;

procedure TfmConClf.bPesquisaClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqClsPro.Text ) <> '' then begin

     fmManPro.sFiltro := '';

     case fmManPro.rgStatus.Itemindex of
          0: fmManPro.sFiltro := ' Where EstPro.FlbPro  = '''+ ' ' +'''';
          1: fmManPro.sFiltro := ' Where EstPro.FlbPro  = '''+ '*' +'''';
     end;

     if pos('Where',fmManPro.sFiltro) > 0 then begin

        case fmManPro.rgPromocao.Itemindex of
             0: fmManPro.sFiltro := fmManPro.sFiltro + ' and EstPro.FlgPro  = '''+ 'Sim' +'''';
             1: fmManPro.sFiltro := fmManPro.sFiltro + ' and EstPro.FlgPro  = '''+ 'Nao' +'''';
        end;

        end
     else
        begin

        case fmManPro.rgPromocao.Itemindex of
             0: fmManPro.sFiltro := ' Where EstPro.FlgPro  = '''+ 'Sim' +'''';
             1: fmManPro.sFiltro := ' Where EstPro.FlgPro  = '''+ 'Nao' +'''';
        end;
     end;

     if pos('Where',fmManPro.sFiltro) = 0 then
        fmManPro.sFiltro := ' Where EstPro.ClfSai LIKE ''%'+ EdPsqClsPro.Text +'%'''
     else
        fmManPro.sFiltro := fmManPro.sFiltro + ' and EstPro.ClfSai LIKE ''%'+ EdPsqClsPro.Text +'%''';

     with fmManPro.EstPro,SQL do begin

          Close;
          Text := fmManPro.sBase + fmManPro.sFiltro + fmManPro.sOrdem;
          Open;

     end;

     with fmManPro.quSQL,SQL do begin

          Close;
          Text := ' Select Count(*) as Reg From EstPro' + fmManPro.sFiltro;
          Open;

          fmManPro.pnQuant.Caption := fNumZeros(IntToStr(FieldbyName('Reg').AsInteger),6);

     end;

     close;
     
  end;
end;

procedure TfmConClf.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

end.
