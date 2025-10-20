unit ManCpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCpe = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdObsOrc: TdxDBColorMemo;
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
  fmManCpe: TfmManCpe;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, ManLp3;

{$R *.DFM}

procedure TfmManCpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManCpe.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCpe.FormShow(Sender: TObject);
begin
  inherited;
  
  fmManLp3.FatOrc.Edit;

  EdObsOrc.SetFocus;

end;

procedure TfmManCpe.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCpe.bConfirmarClick(Sender: TObject);
var
sText,sReceber,sEstoque : string;
begin

  sText := 'Deseja Realmente Cancelar a Emissão deste Pedido ? ';

  if fmManLp3.FatOrcAtuEst.Value = 'Sim' then sEstoque := ' . Devolução ao Estoque dos Itens Emitidos no Pedido;';
  if fmManLp3.FatOrcIntFin.Value = 'Sim' then sReceber := ' . Exclusão dos Titulos a Receber Decorrentes da Emissão do Pedido;';

  if (Trim( sEstoque ) <> '') or (Trim( sReceber ) <> '') then
     sText := sText + #10 + ' ' + #10 + ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :';

  sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;

  if fMsg(sText,'O') then begin

     fmManLp3.FatOrc.Edit;

     fmManLp3.FatOrcDteCOr.Value := Date;

     fmManLp3.FatOrcUsuCOr.Value := GUsu_Id;

     fmManLp3.FatOrcSitOrc.Value := 'Cancelado';

     fmManLp3.FatOrcHreCOr.Value := TimeToStr(Time);

     with fmManLp3.FatOrc do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if fmManLp3.FatOrc.State <> dsBrowse then fmManLp3.FatOrc.CancelUpdates;

             EdObsOrc.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     fmManLp3.FatOrc.Close;
     fmManLp3.FatOrc.Open;

     Close;

  end;
end;

procedure TfmManCpe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManLp3.FatOrc.State <> dsBrowse then fmManLp3.FatOrc.CancelUpdates;
end;

end.
