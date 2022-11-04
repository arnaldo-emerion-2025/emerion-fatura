unit ManLre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManLre = class(TfmShowPadrao)
    PedFin: TwwQuery;
    DsFin: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    UpFin: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdOb1Fin: TdxDBColorEdit;
    EdOb2Fin: TdxDBColorEdit;
    EdOb3Fin: TdxDBColorEdit;
    EdOb4Fin: TdxDBColorEdit;
    EdOb5Fin: TdxDBColorEdit;
    PedFinID_PEDFIN: TIntegerField;
    PedFinID_PEDRES: TIntegerField;
    PedFinDTEFIN: TDateTimeField;
    PedFinHREFIN: TStringField;
    PedFinOB1FIN: TStringField;
    PedFinOB2FIN: TStringField;
    PedFinOB3FIN: TStringField;
    PedFinOB4FIN: TStringField;
    PedFinOB5FIN: TStringField;
    PedFinCODUSU: TIntegerField;
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
    Id_PedRes : integer;
    {Public declarations}
  end;

var
  fmManLre: TfmManLre;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManLre.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManLre.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLre.FormShow(Sender: TObject);
begin

  PedFin.Insert;

  EdOb1Fin.SetFocus;

end;

procedure TfmManLre.bCancelarClick(Sender: TObject);
begin

  PedFin.CancelUpdates;

  Close;

end;

procedure TfmManLre.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  PedFinOb1Fin.Value := Trim(PedFinOb1Fin.Value);
  PedFinOb2Fin.Value := Trim(PedFinOb2Fin.Value);
  PedFinOb3Fin.Value := Trim(PedFinOb3Fin.Value);
  PedFinOb4Fin.Value := Trim(PedFinOb4Fin.Value);
  PedFinOb5Fin.Value := Trim(PedFinOb5Fin.Value);

  PedFinId_PedFin.Value := 0;
  PedFinId_PedRes.Value := Id_PedRes;

  PedFinDteFin.Value := date;
  PedFinCodUsu.Value := GUsu_Id;
  PedFinHreFin.Value := TimeToStr(Time);

  with PedFin do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedFin.State = dsBrowse then PedFin.Edit;

          EdOb1Fin.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Liberar := 'Sim';

  Close;

end;

procedure TfmManLre.FormCreate(Sender: TObject);
begin
  inherited;
  Liberar := 'Nao';
end;

procedure TfmManLre.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedFin.State <> dsBrowse then PedFin.CancelUpdates;
end;

end.
