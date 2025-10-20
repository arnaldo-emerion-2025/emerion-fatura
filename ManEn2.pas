unit ManEn2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManEn2 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    quSql: TwwQuery;
    EdObsMdv: TdxDBColorMemo;
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
  fmManEn2: TfmManEn2;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, ManGDB, ManEn1;

{$R *.DFM}

procedure TfmManEn2.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bCancelar.OnClick(Sender);

  if key = 123 then
    bConfirmar.OnClick(Sender);

end;

procedure TfmManEn2.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn2.FormShow(Sender: TObject);
begin
  inherited;

  fmManEn1.FatDev.Edit;

  EdObsMdv.SetFocus;

end;

procedure TfmManEn2.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManEn2.bConfirmarClick(Sender: TObject);
var
  sText: string;
begin

  fmManEn1.FatDevObsMdv.Value := EdObsMdv.Text;

  if Trim(fmManEn1.FatDevObsMdv.Value) <> '' then
  begin

    if fMsg('Confirma a Devolução dos Itens Informados ? ', 'O') then
    begin

      if fMsg('Deseja Emitir Nota Fiscal de Entrada da Mercadoria ? ', 'O') then
      begin

        fmManEn1.FatDev.Edit;

        fmManEn1.FatDevSitDev.Value := 'Concluido';

        with fmManEn1.FatDev do
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

            fmManEn1.Finalizar := 'N';

            if fmManEn1.FatDev.State = dsBrowse then
              fmManEn1.FatDev.Edit;

            EdObsMdv.SetFocus;

            raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManEn1.FatDev.Close;
        fmManEn1.FatDev.Open;

        fmManEn1.Finalizar := 'S';

        Close;

      end
      else
      begin

        sText := '          Confirma Devolução da Nota Fiscal ?      ' + #10 +
          '                                                   ' + #10 +
          ' Ao Confirmar Ocorrerão os Seguintes Lançamentos : ' + #10 +
          '                                                   ';

        if fmManEn1.FatDevAtuEst.Value = 'Sim' then
          sText := sText + #10 + ' . Devolução ao Estoque dos Itens da Nota Fiscal;';

        if fmManEn1.FatDevIntFin.Value = 'Sim' then
          sText := sText + #10 + ' . Cancelamento dos Titulos a Receber Decorrentes da Emissão da Nota Fiscal.';

        sText := sText + #10 + '                                                  ';

        if fMsg(sText, 'O') then
        begin

          fmManEn1.FatDev.Edit;

          fmManEn1.FatDevSitDev.Value := 'Devolvido';

          with fmManEn1.FatDev do
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

              fmManEn1.Finalizar := 'N';

              if fmManEn1.FatDev.State = dsBrowse then
                fmManEn1.FatDev.Edit;

              EdObsMdv.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;

          fmManEn1.FatDev.Close;
          fmManEn1.FatDev.Open;

          fmManEn1.Finalizar := 'S';

          Close;

        end;
      end;
    end;

  end
  else
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdObsMdv);
end;

procedure TfmManEn2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManEn1.FatDev.State <> dsBrowse then
    fmManEn1.FatDev.CancelUpdates;
end;

end.
