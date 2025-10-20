unit ManObc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, dxDBColorMemo,
  dxDBColorEdit, FShowPadrao;

type
  TfmManObc = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdObcEn3: TdxDBColorEdit;
    EdObcEn2: TdxDBColorEdit;
    EdObcEn1: TdxDBColorEdit;
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
  inherited;

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
  inherited;

  fmManCen.CmpEnt.Edit;

  EdObcEn1.SetFocus;

end;

procedure TfmManObc.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManObc.bConfirmarClick(Sender: TObject);
var
  sText,sReceber,sEstoque : string;
begin

  ActiveControl := nil;

  fmManCen.CmpEntObcEn1.Value := Trim(EdObcEn1.Text);
  fmManCen.CmpEntObcEn2.Value := Trim(EdObcEn2.Text);
  fmManCen.CmpEntObcEn3.Value := Trim(EdObcEn3.Text);

  if (Trim(fmManCen.CmpEntObcEn1.Value) <> '') or
     (Trim(fmManCen.CmpEntObcEn2.Value) <> '') or
     (Trim(fmManCen.CmpEntObcEn3.Value) <> '') then begin

     sText := 'Deseja Realmente Cancelar a Operação de Entrada ? ';

     if fmManCen.CmpEntAtuEst.Value = 'Sim' then sEstoque := ' . Saida do Estoque dos Itens da Entrada;';

     if fmManCen.CmpEntIntFin.Value = 'Sim' then sReceber := ' . Exclusão dos titulos lançados no Contas a Pagar;';

     if (Trim( sEstoque ) <> '') or (Trim( sReceber ) <> '') then
        sText := sText + #10 + ' ' + #10 + ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :';

     sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;

     if fMsg(sText,'O') then begin

        fmManCen.CmpEntDtcEnt.Value := Date;
        fmManCen.CmpEntUscEnt.Value := GUsu_Id;
        fmManCen.CmpEntSitEnt.Value := 'Cancelada';
        fmManCen.CmpEntHrcEnt.Value := TimeToStr(Time);

        with fmManCen.CmpEnt do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if fmManCen.CmpEnt.State = dsBrowse then fmManCen.CmpEnt.Edit;

                EdObcEn1.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManCen.CmpEnt.Close;
        fmManCen.CmpEnt.Open;

        Close;

     end;

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdObcEn1);
end;

procedure TfmManObc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManCen.CmpEnt.State <> dsBrowse then fmManCen.CmpEnt.CancelUpdates;
end;

end.
