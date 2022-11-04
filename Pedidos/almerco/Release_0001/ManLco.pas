unit ManLco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManLco = class(TfmShowPadrao)
    PedCom: TwwQuery;
    DsCom: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    UpCom: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdOb1Com: TdxDBColorEdit;
    EdOb2Com: TdxDBColorEdit;
    EdOb3Com: TdxDBColorEdit;
    EdOb4Com: TdxDBColorEdit;
    EdOb5Com: TdxDBColorEdit;
    PedComID_PEDCOM: TIntegerField;
    PedComID_PEDRES: TIntegerField;
    PedComDTECOM: TDateTimeField;
    PedComHRECOM: TStringField;
    PedComOB1COM: TStringField;
    PedComOB2COM: TStringField;
    PedComOB3COM: TStringField;
    PedComOB4COM: TStringField;
    PedComOB5COM: TStringField;
    PedComCODUSU: TIntegerField;
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
  fmManLco: TfmManLco;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManLco.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManLco.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLco.FormShow(Sender: TObject);
begin

  PedCom.Insert;

  EdOb1Com.SetFocus;

end;

procedure TfmManLco.bCancelarClick(Sender: TObject);
begin

  PedCom.CancelUpdates;

  Close;

end;

procedure TfmManLco.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  PedComOb1Com.Value := Trim(PedComOb1Com.Value);
  PedComOb2Com.Value := Trim(PedComOb2Com.Value);
  PedComOb3Com.Value := Trim(PedComOb3Com.Value);
  PedComOb4Com.Value := Trim(PedComOb4Com.Value);
  PedComOb5Com.Value := Trim(PedComOb5Com.Value);

  PedComId_PedCom.Value := 0;
  PedComId_PedRes.Value := Id_PedRes;

  PedComDteCom.Value := date;
  PedComCodUsu.Value := GUsu_Id;
  PedComHreCom.Value := TimeToStr(Time);

  with PedCom do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedCom.State = dsBrowse then PedCom.Edit;

          EdOb1Com.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Liberar := 'Sim';

  Close;

end;

procedure TfmManLco.FormCreate(Sender: TObject);
begin
  inherited;
  Liberar := 'Nao';
end;

procedure TfmManLco.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedCom.State <> dsBrowse then PedCom.CancelUpdates;
end;

end.
