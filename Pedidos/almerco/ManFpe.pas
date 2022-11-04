unit ManFpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManFpe = class(TfmShowPadrao)
    PedFpe: TwwQuery;
    DsFpe: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    UpFpe: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdOb1Fpe: TdxDBColorEdit;
    EdOb2Fpe: TdxDBColorEdit;
    EdOb3Fpe: TdxDBColorEdit;
    EdOb4Fpe: TdxDBColorEdit;
    EdOb5Fpe: TdxDBColorEdit;
    PedFpeID_PEDRES: TIntegerField;
    PedFpeDTEFPE: TDateTimeField;
    PedFpeHREFPE: TStringField;
    PedFpeOB1FPE: TStringField;
    PedFpeOB2FPE: TStringField;
    PedFpeOB3FPE: TStringField;
    PedFpeOB4FPE: TStringField;
    PedFpeOB5FPE: TStringField;
    PedFpeCODUSU: TIntegerField;
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
  fmManFpe: TfmManFpe;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManFpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManFpe.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManFpe.FormShow(Sender: TObject);
begin

  PedFpe.Insert;

  EdOb1Fpe.SetFocus;

end;

procedure TfmManFpe.bCancelarClick(Sender: TObject);
begin

  PedFpe.CancelUpdates;

  Close;

end;

procedure TfmManFpe.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  PedFpeOb1Fpe.Value := Trim(PedFpeOb1Fpe.Value);
  PedFpeOb2Fpe.Value := Trim(PedFpeOb2Fpe.Value);
  PedFpeOb3Fpe.Value := Trim(PedFpeOb3Fpe.Value);
  PedFpeOb4Fpe.Value := Trim(PedFpeOb4Fpe.Value);
  PedFpeOb5Fpe.Value := Trim(PedFpeOb5Fpe.Value);

  PedFpeId_PedRes.Value := Id_PedRes;

  PedFpeDteFpe.Value := date;
  PedFpeCodUsu.Value := GUsu_Id;
  PedFpeHreFpe.Value := TimeToStr(Time);

  with PedFpe do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedFpe.State = dsBrowse then PedFpe.Edit;

          EdOb1Fpe.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Liberar := 'Sim';

  Close;

end;

procedure TfmManFpe.FormCreate(Sender: TObject);
begin
  inherited;
  Liberar := 'Nao';
end;

procedure TfmManFpe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedFpe.State <> dsBrowse then PedFpe.CancelUpdates;
end;

end.
