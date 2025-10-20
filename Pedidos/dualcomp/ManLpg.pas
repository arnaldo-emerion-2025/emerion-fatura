unit ManLpg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManLpg = class(TfmShowPadrao)
    PedLib: TwwQuery;
    DsLib: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObsAnt: TdxDBColorMemo;
    UpLib: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    PedLibCODEMP: TIntegerField;
    PedLibDTERES: TDateTimeField;
    PedLibNUMRES: TIntegerField;
    PedLibSEQLIB: TIntegerField;
    PedLibUSUANT: TIntegerField;
    PedLibOBSANT: TMemoField;
    PedLibSITLIB: TStringField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
    Liberar : string;
  end;

var
  fmManLpg: TfmManLpg;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManLpg.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManLpg.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLpg.FormShow(Sender: TObject);
begin

  PedLib.Edit;

  EdObsAnt.SetFocus;

end;

procedure TfmManLpg.bCancelarClick(Sender: TObject);
begin

  PedLib.CancelUpdates;

  Close;

end;

procedure TfmManLpg.bConfirmarClick(Sender: TObject);
begin

  PedLibSitLib.Value := 'Liberado';

  with PedLib do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          PedLib.Close;
          PedLib.Open;

          PedLib.Edit;

          EdObsAnt.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Liberar := 'Sim';

  Close;

end;

procedure TfmManLpg.FormCreate(Sender: TObject);
begin
  inherited;

  Liberar := 'Nao';

end;

procedure TfmManLpg.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedLib.State <> dsBrowse then PedLib.CancelUpdates;
end;

end.
