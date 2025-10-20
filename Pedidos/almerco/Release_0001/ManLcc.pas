unit ManLcc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManLcc = class(TfmShowPadrao)
    PedCon: TwwQuery;
    DsCon: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    UpCon: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdOb1Con: TdxDBColorEdit;
    EdOb2Con: TdxDBColorEdit;
    EdOb3Con: TdxDBColorEdit;
    EdOb4Con: TdxDBColorEdit;
    EdOb5Con: TdxDBColorEdit;
    PedConID_PEDCON: TIntegerField;
    PedConID_PEDRES: TIntegerField;
    PedConDTECON: TDateTimeField;
    PedConHRECON: TStringField;
    PedConOB1CON: TStringField;
    PedConOB2CON: TStringField;
    PedConOB3CON: TStringField;
    PedConOB4CON: TStringField;
    PedConOB5CON: TStringField;
    PedConCODUSU: TIntegerField;
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
  fmManLcc: TfmManLcc;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManLcc.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManLcc.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLcc.FormShow(Sender: TObject);
begin

  PedCon.Insert;

  EdOb1Con.SetFocus;

end;

procedure TfmManLcc.bCancelarClick(Sender: TObject);
begin

  PedCon.CancelUpdates;

  Close;

end;

procedure TfmManLcc.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  PedConOb1Con.Value := Trim(PedConOb1Con.Value);
  PedConOb2Con.Value := Trim(PedConOb2Con.Value);
  PedConOb3Con.Value := Trim(PedConOb3Con.Value);
  PedConOb4Con.Value := Trim(PedConOb4Con.Value);
  PedConOb5Con.Value := Trim(PedConOb5Con.Value);

  PedConId_PedCon.Value := 0;
  PedConId_PedRes.Value := Id_PedRes;

  PedConDteCon.Value := date;
  PedConCodUsu.Value := GUsu_Id;
  PedConHreCon.Value := TimeToStr(Time);

  with PedCon do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedCon.State = dsBrowse then PedCon.Edit;

          EdOb1Con.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Liberar := 'Sim';

  Close;

end;

procedure TfmManLcc.FormCreate(Sender: TObject);
begin
  inherited;
  Liberar := 'Nao';
end;

procedure TfmManLcc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedCon.State <> dsBrowse then PedCon.CancelUpdates;
end;

end.
