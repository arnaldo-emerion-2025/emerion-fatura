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
    EdObcGer: TdxDBColorMemo;
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
  fmManCge: TfmManCge;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, ManGer;

{$R *.DFM}

procedure TfmManCge.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bCancelar.OnClick(Sender);

  if key = 123 then
    bConfirmar.OnClick(Sender);

end;

procedure TfmManCge.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCge.FormShow(Sender: TObject);
begin
  inherited;

  fmManGer.FatGer.Edit;

  EdObcGer.SetFocus;

end;

procedure TfmManCge.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCge.bConfirmarClick(Sender: TObject);
var
  sText, sReceber, sEstoque: string;
begin

  fmManGer.FatGerObcGer.Value := EdObcGer.Text;

  if Trim(fmManGer.FatGerObcGer.Value) <> '' then
  begin

    sText := 'Deseja Realmente Cancelar a Nota Fiscal ? ';

    if fmManGer.FatGerAtuEst.Value = 'Sim' then
      sEstoque := ' . Devolução ao Estoque dos Itens da Nota Fiscal;';

    if fmManGer.FatGerIntFin.Value = 'Sim' then
      sReceber := ' . Exclusão dos Titulos a Receber Decorrentes da Emissão da Nota Fiscal.';

    if (Trim(sEstoque) <> '') or (Trim(sReceber) <> '') then
      sText := sText + #10 + ' ' + #10 + ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :';

    sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;

    if fMsg(sText, 'O') then
    begin

      fmManGer.FatGer.Edit;

      fmManGer.FatGerDtcGer.Value := Date;

      fmManGer.FatGerUscGer.Value := GUsu_Id;

      fmManGer.FatGerSitGer.Value := 'Cancelado';

      fmManGer.FatGerHrcGer.Value := TimeToStr(Time);

      with fmManGer.FatGer do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alterações}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
          ;

        except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
          ;

          if fmManGer.FatGer.State = dsBrowse then
            fmManGer.FatGer.Edit;

          EdObcGer.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      fmManGer.FatGer.Close;
      fmManGer.FatGer.Open;

      Close;

    end;

  end
  else
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdObcGer);
end;

procedure TfmManCge.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManGer.FatGer.State <> dsBrowse then
    fmManGer.FatGer.CancelUpdates;
end;

end.
