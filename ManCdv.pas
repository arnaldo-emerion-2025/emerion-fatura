unit ManCdv;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCdv = class(TfmShowPadrao)
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
  fmManCdv: TfmManCdv;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, ManEno;

{$R *.DFM}

procedure TfmManCdv.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bCancelar.OnClick(Sender);

  if key = 123 then
    bConfirmar.OnClick(Sender);

end;

procedure TfmManCdv.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCdv.FormShow(Sender: TObject);
begin
  inherited;

  fmManEno.FatDev.Edit;

  EdObsCft.SetFocus;

end;

procedure TfmManCdv.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCdv.bConfirmarClick(Sender: TObject);
var
  sText, sReceber, sEstoque: string;
begin

  fmManEno.FatDevObsCft.Value := EdObsCft.Text;

  if Trim(fmManEno.FatDevObsCft.Value) <> '' then
  begin

    sText := 'Deseja Realmente Cancelar a Nota Fiscal ? ';

    if fmManEno.FatDevAtuEst.Value = 'Sim' then
      sEstoque := ' . Saida do Estoque dos Itens Devolvidos;';

    if fmManEno.FatDevIntFin.Value = 'Sim' then
      sReceber := ' . Cancelamento dos Titulos a Receber Marcados como Devolvidos.';

    if fmManEno.FatDevIntFin.Value = 'Sim' then
      sReceber := ' . Cancelamento de Creditos Gerados ao Cliente.';

    if (Trim(sEstoque) <> '') or (Trim(sReceber) <> '') then
      sText := sText + #10 + ' ' + #10 + ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :';

    sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;

    if fMsg(sText, 'O') then
    begin

      fmManEno.FatDev.Edit;

      fmManEno.FatDevDtcDev.Value := Date;

      fmManEno.FatDevUsuCft.Value := GUsu_Id;

      fmManEno.FatDevSitDev.Value := 'Cancelado';

      fmManEno.FatDevHrcDev.Value := TimeToStr(Time);

      with fmManEno.FatDev do
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

          if fmManEno.FatDev.State = dsBrowse then
            fmManEno.FatDev.Edit;

          EdObsCft.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      fmManEno.FatDev.Close;
      fmManEno.FatDev.Open;

      Close;

    end;

  end
  else
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdObsCft);
end;

procedure TfmManCdv.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManEno.FatDev.State <> dsBrowse then
    fmManEno.FatDev.CancelUpdates;
end;

end.
