unit ManLpg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManLpg = class(TfmShowPadrao)
    PedAnt: TwwQuery;
    DsCom: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    UpAnt: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdOb1Ant: TdxDBColorEdit;
    EdOb2Ant: TdxDBColorEdit;
    EdOb3Ant: TdxDBColorEdit;
    EdOb4Ant: TdxDBColorEdit;
    EdOb5Ant: TdxDBColorEdit;
    PedAntID_PEDANT: TIntegerField;
    PedAntID_PEDRES: TIntegerField;
    PedAntDTEANT: TDateTimeField;
    PedAntHREANT: TStringField;
    PedAntID_PEDLIB: TIntegerField;
    PedAntOB1ANT: TStringField;
    PedAntOB2ANT: TStringField;
    PedAntOB3ANT: TStringField;
    PedAntOB4ANT: TStringField;
    PedAntOB5ANT: TStringField;
    PedAntCODUSU: TIntegerField;
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
    Liberar   : string;
    Id_PedLib : integer;
    Id_PedRes : integer;
    {Public declarations}
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

  PedAnt.Insert;

  EdOb1Ant.SetFocus;

end;

procedure TfmManLpg.bCancelarClick(Sender: TObject);
begin

  PedAnt.CancelUpdates;

  Close;

end;

procedure TfmManLpg.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  PedAntOb1Ant.Value := Trim(PedAntOb1Ant.Value);
  PedAntOb2Ant.Value := Trim(PedAntOb2Ant.Value);
  PedAntOb3Ant.Value := Trim(PedAntOb3Ant.Value);
  PedAntOb4Ant.Value := Trim(PedAntOb4Ant.Value);
  PedAntOb5Ant.Value := Trim(PedAntOb5Ant.Value);

  PedAntId_PedAnt.Value := 0;
  PedAntId_PedLib.Value := Id_PedLib;
  PedAntId_PedRes.Value := Id_PedRes;

  PedAntDteAnt.Value := date;
  PedAntCodUsu.Value := GUsu_Id;
  PedAntHreAnt.Value := TimeToStr(Time);

  with PedAnt do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedAnt.State = dsBrowse then PedAnt.Edit;

          EdOb1Ant.SetFocus;

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
  if PedAnt.State <> dsBrowse then PedAnt.CancelUpdates;
end;

end.
