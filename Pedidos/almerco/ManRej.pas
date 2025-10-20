unit ManRej;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, dxDBEdtr,
  FShowPadrao, dxDBColorMemo, dxDBColorEdit;

type
  TfmManRej = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    UpRes: TUpdateSQL;
    PedRej: TwwQuery;
    DsRej: TwwDataSource;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdOb1Rej: TdxDBColorEdit;
    EdOb2Rej: TdxDBColorEdit;
    EdOb3Rej: TdxDBColorEdit;
    EdOb4Rej: TdxDBColorEdit;
    EdOb5Rej: TdxDBColorEdit;
    PedRejID_PEDREJ: TIntegerField;
    PedRejID_PEDRES: TIntegerField;
    PedRejDTEREJ: TDateTimeField;
    PedRejHREREJ: TStringField;
    PedRejOB1REJ: TStringField;
    PedRejOB2REJ: TStringField;
    PedRejOB3REJ: TStringField;
    PedRejOB4REJ: TStringField;
    PedRejOB5REJ: TStringField;
    PedRejCODUSU: TIntegerField;
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
  fmManRej: TfmManRej;

implementation

uses dxDemoUtils, Bbmensag, ManGDB;

{$R *.DFM}

procedure TfmManRej.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManRej.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManRej.FormShow(Sender: TObject);
begin
  inherited;
  
  PedRej.Edit;

  EdOb1Rej.SetFocus;

end;

procedure TfmManRej.bCancelarClick(Sender: TObject);
begin

  PedRej.CancelUpdates;

  Close;

end;

procedure TfmManRej.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  PedRejOb1Rej.Value := Trim(PedRejOb1Rej.Value);
  PedRejOb2Rej.Value := Trim(PedRejOb2Rej.Value);
  PedRejOb3Rej.Value := Trim(PedRejOb3Rej.Value);
  PedRejOb4Rej.Value := Trim(PedRejOb4Rej.Value);
  PedRejOb5Rej.Value := Trim(PedRejOb5Rej.Value);

  PedRejId_PedRej.Value := 0;
  PedRejId_PedRes.Value := Id_PedRes;

  PedRejDteRej.Value := date;
  PedRejCodUsu.Value := GUsu_Id;
  PedRejHreRej.Value := TimeToStr(Time);

  with PedRej do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedRej.State = dsBrowse then PedRej.Edit;

          EdOb1Rej.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Liberar := 'Sim';

  Close;

end;

procedure TfmManRej.FormCreate(Sender: TObject);
begin
  inherited;
  Liberar := 'Nao';
end;

procedure TfmManRej.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedRej.State <> dsBrowse then PedRej.CancelUpdates;  
end;

end.
