unit ManCpg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCpg = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdOb1Del: TdxDBColorEdit;
    EdOb2Del: TdxDBColorEdit;
    EdOb3Del: TdxDBColorEdit;
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
  fmManCpg: TfmManCpg;

implementation

uses dxDemoUtils, ManGDB, ManGco;

{$R *.DFM}

procedure TfmManCpg.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManCpg.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCpg.FormShow(Sender: TObject);
begin

  fmManGco.PedGer.Insert;

  EdOb1Del.SetFocus;

end;

procedure TfmManCpg.bCancelarClick(Sender: TObject);
begin

  fmManGco.PedGer.CancelUpdates;

  Close;

end;

procedure TfmManCpg.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  fmManGco.PedGerOb1Del.Value := Trim(fmManGco.PedGerOb1Del.Value);
  fmManGco.PedGerOb2Del.Value := Trim(fmManGco.PedGerOb2Del.Value);
  fmManGco.PedGerOb3Del.Value := Trim(fmManGco.PedGerOb3Del.Value);

  fmManGco.PedGerDteDel.Value := date;
  fmManGco.PedGerUsuDel.Value := GUsu_Id;
  fmManGco.PedGerSitGer.Value := 'Cancelado';
  fmManGco.PedGerHreDel.Value := TimeToStr(Time);

  with fmManGco.PedGer do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManGco.PedGer.State = dsBrowse then fmManGco.PedGer.Edit;

          EdOb1Del.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Close;

end;

procedure TfmManCpg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManGco.PedGer.State <> dsBrowse then fmManGco.PedGer.CancelUpdates;
end;

end.
