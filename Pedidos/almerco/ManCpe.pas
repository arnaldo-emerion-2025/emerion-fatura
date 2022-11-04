unit ManCpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCpe = class(TfmShowPadrao)
    PedCpe: TwwQuery;
    DsCpe: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    UpCpe: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdOb1Cpe: TdxDBColorEdit;
    EdOb2Cpe: TdxDBColorEdit;
    EdOb3Cpe: TdxDBColorEdit;
    EdOb4Cpe: TdxDBColorEdit;
    EdOb5Cpe: TdxDBColorEdit;
    PedCpeID_PEDRES: TIntegerField;
    PedCpeDTECPE: TDateTimeField;
    PedCpeHRECPE: TStringField;
    PedCpeOB1CPE: TStringField;
    PedCpeOB2CPE: TStringField;
    PedCpeOB3CPE: TStringField;
    PedCpeOB4CPE: TStringField;
    PedCpeOB5CPE: TStringField;
    PedCpeCODUSU: TIntegerField;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bCancelarClick(Sender: TObject);
    procedure bConfirmarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    Id_PedRes : integer;
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
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCpe.FormShow(Sender: TObject);
begin

  PedCpe.Insert;

  EdOb1Cpe.SetFocus;

end;

procedure TfmManCpe.bCancelarClick(Sender: TObject);
begin

  PedCpe.CancelUpdates;

  Close;

end;

procedure TfmManCpe.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  PedCpeOb1Cpe.Value := Trim(PedCpeOb1Cpe.Value);
  PedCpeOb2Cpe.Value := Trim(PedCpeOb2Cpe.Value);
  PedCpeOb3Cpe.Value := Trim(PedCpeOb3Cpe.Value);
  PedCpeOb4Cpe.Value := Trim(PedCpeOb4Cpe.Value);
  PedCpeOb5Cpe.Value := Trim(PedCpeOb5Cpe.Value);

  PedCpeId_PedRes.Value := Id_PedRes;

  PedCpeDteCpe.Value := date;
  PedCpeCodUsu.Value := GUsu_Id;
  PedCpeHreCpe.Value := TimeToStr(Time);

  with PedCpe do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedCpe.State = dsBrowse then PedCpe.Edit;

          EdOb1Cpe.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Close;

end;

procedure TfmManCpe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedCpe.State <> dsBrowse then PedCpe.CancelUpdates;
end;

end.
