unit ManCdv_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCdv_NFE = class(TfmShowPadrao)
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
  fmManCdv_NFE: TfmManCdv_NFE;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, ManEno_NFE;

{$R *.DFM}

procedure TfmManCdv_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bCancelar.OnClick(Sender);

  if key = 123 then
    bConfirmar.OnClick(Sender);

end;

procedure TfmManCdv_NFE.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCdv_NFE.FormShow(Sender: TObject);
begin
  inherited;

  fmManEno_NFE.FatDev.Edit;

  EdObsCft.SetFocus;

end;

procedure TfmManCdv_NFE.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCdv_NFE.bConfirmarClick(Sender: TObject);
var
  sText, sReceber, sEstoque: string;
begin

  fmManEno_NFE.FatDevObsCft.Value := EdObsCft.Text;

  if Trim(fmManEno_NFE.FatDevObsCft.Value) <> '' then
  begin

    sText := 'Deseja Realmente Cancelar a Nota Fiscal ? ';

    if fmManEno_NFE.FatDevAtuEst.Value = 'Sim' then
      sEstoque := ' . Saida do Estoque dos Itens Devolvidos;';

    if fmManEno_NFE.FatDevIntFin.Value = 'Sim' then
      sReceber := ' . Cancelamento dos Titulos a Receber Marcados como Devolvidos.';

    if fmManEno_NFE.FatDevIntFin.Value = 'Sim' then
      sReceber := ' . Cancelamento de Creditos Gerados ao Cliente.';

    if (Trim(sEstoque) <> '') or (Trim(sReceber) <> '') then
      sText := sText + #10 + ' ' + #10 + ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :';

    sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;

    if fMsg(sText, 'O') then
    begin

      fmManEno_NFE.FatDev.Edit;

      fmManEno_NFE.FatDevDtcDev.Value := Date;

      fmManEno_NFE.FatDevUsuCft.Value := GUsu_Id;

      fmManEno_NFE.FatDevSitDev.Value := 'Cancelado';

      fmManEno_NFE.FatDevHrcDev.Value := TimeToStr(Time);

      with fmManEno_NFE.FatDev do
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

          if fmManEno_NFE.FatDev.State = dsBrowse then
            fmManEno_NFE.FatDev.Edit;

          EdObsCft.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      fmManEno_NFE.FatDev.Close;
      fmManEno_NFE.FatDev.Open;

      Close;

    end;

  end
  else
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdObsCft);
end;

procedure TfmManCdv_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManEno_NFE.FatDev.State <> dsBrowse then
    fmManEno_NFE.FatDev.CancelUpdates;
end;

end.
