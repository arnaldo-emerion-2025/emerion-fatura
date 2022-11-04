unit ManCDc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCDc = class(TfmShowPadrao)
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
  fmManCDc: TfmManCDc;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, ManDCl;

{$R *.DFM}

procedure TfmManCDc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then
    bCancelar.OnClick(Sender);

  if key = 123 then
    bConfirmar.OnClick(Sender);

end;

procedure TfmManCDc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCDc.FormShow(Sender: TObject);
begin
  inherited;

  fmManDCl.FatDCl.Edit;

  EdObcGer.SetFocus;

end;

procedure TfmManCDc.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCDc.bConfirmarClick(Sender: TObject);
begin

  fmManDCl.FatDClObcGer.Value := EdObcGer.Text;

  if Trim(fmManDCl.FatDClObcGer.Value) <> '' then
  begin

    if fMsg('Deseja Realmente Cancelar a Nota Fiscal ? ', 'O') then
    begin

      fmManDCl.FatDCl.Edit;

      fmManDCl.FatDClDtcGer.Value := Date;

      fmManDCl.FatDClUscGer.Value := GUsu_Id;

      fmManDCl.FatDClSitGer.Value := 'Cancelado';

      fmManDCl.FatDClHrcGer.Value := TimeToStr(Time);

      with fmManDCl.FatDCl do
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

          if fmManDCl.FatDCl.State = dsBrowse then
            fmManDCl.FatDCl.Edit;

          EdObcGer.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      fmManDCl.FatDCl.Close;
      fmManDCl.FatDCl.Open;

      Close;

    end;

  end
  else
    fmsgErro('Campo de Preenchimento Obrigatorio não Informado.', EdObcGer);
end;

procedure TfmManCDc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManDCl.FatDCl.State <> dsBrowse then
    fmManDCl.FatDCl.CancelUpdates;
end;

end.
