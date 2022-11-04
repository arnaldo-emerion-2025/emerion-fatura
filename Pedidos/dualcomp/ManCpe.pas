unit ManCpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowpadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCpe = class(TfmShowPadrao)
    PedRes: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObsDel: TdxDBColorMemo;
    UpRes: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    PedResCODEMP: TIntegerField;
    PedResDTERES: TDateTimeField;
    PedResNUMRES: TIntegerField;
    PedResOBSDEL: TMemoField;
    PedResSITRES: TStringField;
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

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManCpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManCpe.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCpe.FormShow(Sender: TObject);
begin

  PedRes.Edit;

  EdObsDel.SetFocus;

end;

procedure TfmManCpe.bCancelarClick(Sender: TObject);
begin

  PedRes.CancelUpdates;

  Close;

end;

procedure TfmManCpe.bConfirmarClick(Sender: TObject);
begin

  PedResSitRes.Value := 'Cancelado';

  with PedRes do begin
  
       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedRes.State = dsBrowse then PedRes.Edit;

          EdObsDel.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  close;

end;

procedure TfmManCpe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedRes.State <> dsBrowse then PedRes.CancelUpdates;
end;

end.
