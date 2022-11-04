unit ManCge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCge = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdObcNf3: TdxDBColorEdit;
    EdObcNf2: TdxDBColorEdit;
    EdObcNf1: TdxDBColorEdit;
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
  fmManCge: TfmManCge;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, ManLr3;

{$R *.DFM}

procedure TfmManCge.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManCge.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCge.FormShow(Sender: TObject);
begin
  inherited;
  
  fmManLr3.CmpNfs.Edit;

  EdObcNf1.SetFocus;

end;

procedure TfmManCge.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCge.bConfirmarClick(Sender: TObject);
var
  sText,sEstoque : string;
begin

  ActiveControl := nil;

  fmManLr3.CmpNfsObcNf1.Value := Trim(fmManLr3.CmpNfsObcNf1.Value);
  fmManLr3.CmpNfsObcNf1.Value := Trim(fmManLr3.CmpNfsObcNf2.Value);
  fmManLr3.CmpNfsObcNf1.Value := Trim(fmManLr3.CmpNfsObcNf3.Value);

  if (Trim(fmManLr3.CmpNfsObcNf1.Value ) <> '') or
     (Trim(fmManLr3.CmpNfsObcNf2.Value ) <> '') or
     (Trim(fmManLr3.CmpNfsObcNf3.Value ) <> '') then begin

     sText := 'Deseja Realmente Cancelar a Opera��o ? ';

     if fmManLr3.CmpNfsAtuEst.Value = 'Sim' then sEstoque := ' . Devolu��o ao Estoque dos Itens da Opera��o;';

     if Trim(sEstoque) <> '' then
        sText := sText + #10 + ' ' + #10 + ' Ao Confirmar Ocorrer�o os Seguintes Lan�amentos :';

     sText := sText + #10 + ' ' + #10 + sEstoque;

     if fMsg(sText,'O') then begin

        fmManLr3.CmpNfsDtcNfs.Value := Date;
        fmManLr3.CmpNfsUscNfs.Value := GUsu_Id;
        fmManLr3.CmpNfsSitNfs.Value := 'Cancelado';
        fmManLr3.CmpNfsHrcNfs.Value := TimeToStr(Time);

        with fmManLr3.CmpNfs do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

             try

                ApplyUpdates; {Tenta aplicar as altera��es};

                fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o};

             except

                fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro};

                if fmManLr3.CmpNfs.State = dsBrowse then fmManLr3.CmpNfs.Edit;

                EdObcNf1.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManLr3.CmpNfs.Close;
        fmManLr3.CmpNfs.Open;

        Close;

     end;

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.',EdObcNf1);
end;

procedure TfmManCge.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManLr3.CmpNfs.State <> dsBrowse then fmManLr3.CmpNfs.CancelUpdates;
end;

end.
