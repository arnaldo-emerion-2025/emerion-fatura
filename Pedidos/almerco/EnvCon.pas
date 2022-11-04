unit EnvCon;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FPadrao, StdCtrls, ExtCtrls, Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd,
  Wwdbgrid, hGrid, Buttons, dxCntner, dxEditor, dxExEdtr, dxEdLib, dxDBELib,
  FShowPadrao, dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmEnvCon = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label17: TLabel;
    BbSair: TBitBtn;
    EdPedCli: TdxDBColorEdit;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BbSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmEnvCon: TfmEnvCon;

implementation

uses dxDemoUtils, Bbmensag, Bberro, ManGDB, ManCta;

{$R *.DFM}

procedure TfmEnvCon.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmEnvCon.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then Close;
end;

procedure TfmEnvCon.FormShow(Sender: TObject);
begin
  inherited;

  fmManCta.PedCta.Edit;

  EdPedCli.SetFocus;

end;

procedure TfmEnvCon.BbSairClick(Sender: TObject);
begin

  ActiveControl := nil;

  fmManCta.PedCtaPedCli.Value := Trim(fmManCta.PedCtaPedCli.Value);

  if Trim(fmManCta.PedCtaPedCli.Value) = '' then fmsgErro('Campo de preenchimento obrigatório não informado.',EdPedCli);

  fmManCta.PedCtaFlgGer.Value := 'Sim';

  fmManCta.PedCtaSitCta.Value := 'Atendida';

  with fmManCta.PedCta do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManCta.PedCta.State = dsBrowse then fmManCta.PedCta.Edit;

          EdPedCli.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  close;

end;

procedure TfmEnvCon.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if fmManCta.PedCta.State <> dsBrowse then fmManCta.PedCta.CancelUpdates;
end;

end.
