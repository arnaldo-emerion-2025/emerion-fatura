unit ManCat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCat = class(TfmShowPadrao)
    PedAte: TwwQuery;
    DsAte: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    UpAte: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdOb1Fin: TdxDBColorEdit;
    EdOb2Fin: TdxDBColorEdit;
    EdOb3Fin: TdxDBColorEdit;
    EdOb4Fin: TdxDBColorEdit;
    EdOb5Fin: TdxDBColorEdit;
    PedAteID_PEDATE: TIntegerField;
    PedAteDTEFIN: TDateTimeField;
    PedAteHREFIN: TStringField;
    PedAteOB1FIN: TStringField;
    PedAteOB2FIN: TStringField;
    PedAteOB3FIN: TStringField;
    PedAteOB4FIN: TStringField;
    PedAteOB5FIN: TStringField;
    PedAteSITATE: TStringField;
    PedAteUSUFIN: TIntegerField;
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
  fmManCat: TfmManCat;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManCat.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManCat.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCat.FormShow(Sender: TObject);
begin

  PedAte.Edit;

  EdOb1Fin.SetFocus;

end;

procedure TfmManCat.bCancelarClick(Sender: TObject);
begin

  PedAte.CancelUpdates;

  Close;

end;

procedure TfmManCat.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  PedAteOb1Fin.Value := Trim(PedAteOb1Fin.Value);
  PedAteOb2Fin.Value := Trim(PedAteOb2Fin.Value);
  PedAteOb3Fin.Value := Trim(PedAteOb3Fin.Value);
  PedAteOb4Fin.Value := Trim(PedAteOb4Fin.Value);
  PedAteOb5Fin.Value := Trim(PedAteOb5Fin.Value);

  PedAteDteFin.Value := date;
  PedAteUsuFin.Value := GUsu_Id;
  PedAteHreFin.Value := TimeToStr(Time);

  PedAteSitAte.Value := 'Finalizado';

  with PedAte do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedAte.State = dsBrowse then PedAte.Edit;

          EdOb1Fin.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Close;

end;

procedure TfmManCat.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedAte.State <> dsBrowse then PedAte.CancelUpdates;
end;

end.
