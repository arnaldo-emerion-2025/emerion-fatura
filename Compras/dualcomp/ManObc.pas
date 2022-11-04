unit ManObc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, dxDBColorMemo,
  dxDBColorEdit;

type
  TfmManObc = class(TForm)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObcEnt: TdxDBColorMemo;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManObc: TfmManObc;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, ManCen;

{$R *.DFM}

procedure TfmManObc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManObc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManObc.FormShow(Sender: TObject);
begin

  fmManCen.CmpEnt.Edit;

  EdObcEnt.SetFocus;

end;

procedure TfmManObc.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManObc.bConfirmarClick(Sender: TObject);
var
sText,sReceber,sEstoque : string;
begin

  fmManCen.CmpEntObcEnt.Value := EdObcEnt.Text;

  if Trim( fmManCen.CmpEntObcEnt.Value ) <> '' then begin

     sText := 'Deseja Realmente Cancelar a Operação de Entrada ? ';

     if fmManCen.CmpEntAtuEst.Value = 'Sim' then sEstoque := ' . Saida do Estoque dos Itens da Entrada;';

     if fmManCen.CmpEntIntFin.Value = 'Sim' then sReceber := ' . Exclusão dos Titulos Emitidos de Cobrança no Contas a Pagar;';

     if (Trim( sEstoque ) <> '') or (Trim( sReceber ) <> '') then
        sText := sText + #10 + ' ' + #10 + ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :';

     sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;

     if fMsg(sText,'O') then begin

        try

           fmManCen.CmpEnt.Edit;

           fmManCen.CmpEntDtcEnt.Value := Date;
           fmManCen.CmpEntUscEnt.Value := GUsu_Id;
           fmManCen.CmpEntSitEnt.Value := 'Cancelada';
           fmManCen.CmpEntHrcEnt.Value := TimeToStr(Time);

           fmManCen.CmpEnt.ApplyUpdates;

           fmManCen.CmpEnt.Close;
           fmManCen.CmpEnt.Open;

           Close;

        except

           if fmManCen.CmpEnt.State <> dsBrowse then fmManCen.CmpEnt.CancelUpdates;

           EdObcEnt.SetFocus;

        end;
     end;

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdObcEnt);
end;

procedure TfmManObc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fmManCen.CmpEnt.State <> dsBrowse then fmManCen.CmpEnt.CancelUpdates;
end;

end.
