unit ManCdp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCdp = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObsCft: TdxDBColorMemo;
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
  fmManCdp: TfmManCdp;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, ManDep;

{$R *.DFM}

procedure TfmManCdp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bCancelar.OnClick(Sender);

  if key = 123 then
    bConfirmar.OnClick(Sender);

end;

procedure TfmManCdp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCdp.FormShow(Sender: TObject);
begin
  inherited;

  fmManDep.FatDep.Edit;

  EdObsCft.SetFocus;

end;

procedure TfmManCdp.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCdp.bConfirmarClick(Sender: TObject);
var
  sText, sReceber, sEstoque: string;
begin

  fmManDep.FatDepObsCft.Value := EdObsCft.Text;

  if Trim(fmManDep.FatDepObsCft.Value) <> '' then
  begin

    sText := 'Deseja Realmente Cancelar a Nota Fiscal ? ';

    if fmManDep.FatDepAtuEst.Value = 'Sim' then
      sEstoque := ' . Saida do Estoque dos Itens Devolvidos;';

    if fmManDep.FatDepIntFin.Value = 'Sim' then
      sReceber := ' . Cancelamento dos Titulos a Receber Marcados como Devolvidos.';

    if fmManDep.FatDepIntFin.Value = 'Sim' then
      sReceber := ' . Cancelamento de Creditos Gerados ao Cliente.';

    if (Trim(sEstoque) <> '') or (Trim(sReceber) <> '') then
      sText := sText + #10 + ' ' + #10 + ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :';

    sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;

    if fMsg(sText, 'O') then
    begin

      fmManDep.FatDep.Edit;

      fmManDep.FatDepDtcDep.Value := Date;

      fmManDep.FatDepUsuCft.Value := GUsu_Id;

      fmManDep.FatDepSitDep.Value := 'Cancelado';

      fmManDep.FatDepHrcDep.Value := TimeToStr(Time);

      with fmManDep.FatDep do
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

          if fmManDep.FatDep.State <> dsBrowse then
            fmManDep.FatDep.CancelUpdates;

          EdObsCft.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      fmManDep.FatDep.Close;
      fmManDep.FatDep.Open;

      Close;

    end;

  end
  else
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdObsCft);
end;

procedure TfmManCdp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManDep.FatDep.State <> dsBrowse then
    fmManDep.FatDep.CancelUpdates;
end;

end.
