unit ManEve;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManEve = class(TfmShowPadrao)
    PedVen: TwwQuery;
    DsVen: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    UpVen: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdOb1Ven: TdxDBColorEdit;
    EdOb2Ven: TdxDBColorEdit;
    EdOb3Ven: TdxDBColorEdit;
    EdOb4Ven: TdxDBColorEdit;
    EdOb5Ven: TdxDBColorEdit;
    PedVenID_PEDVEN: TIntegerField;
    PedVenID_PEDRES: TIntegerField;
    PedVenDTEVEN: TDateTimeField;
    PedVenHREVEN: TStringField;
    PedVenOB1VEN: TStringField;
    PedVenOB2VEN: TStringField;
    PedVenOB3VEN: TStringField;
    PedVenOB4VEN: TStringField;
    PedVenOB5VEN: TStringField;
    PedVenCODUSU: TIntegerField;
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
  fmManEve: TfmManEve;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManEve.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManEve.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEve.FormShow(Sender: TObject);
begin

  PedVen.Insert;

  EdOb1Ven.SetFocus;

end;

procedure TfmManEve.bCancelarClick(Sender: TObject);
begin

  PedVen.CancelUpdates;

  Close;

end;

procedure TfmManEve.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  PedVenOb1Ven.Value := Trim(PedVenOb1Ven.Value);
  PedVenOb2Ven.Value := Trim(PedVenOb2Ven.Value);
  PedVenOb3Ven.Value := Trim(PedVenOb3Ven.Value);
  PedVenOb4Ven.Value := Trim(PedVenOb4Ven.Value);
  PedVenOb5Ven.Value := Trim(PedVenOb5Ven.Value);

  PedVenId_PedVen.Value := 0;
  PedVenId_PedRes.Value := Id_PedRes;

  PedVenDteVen.Value := date;
  PedVenCodUsu.Value := GUsu_Id;
  PedVenHreVen.Value := TimeToStr(Time);

  with PedVen do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedVen.State = dsBrowse then PedVen.Edit;

          EdOb1Ven.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Liberar := 'Sim';

  Close;

end;

procedure TfmManEve.FormCreate(Sender: TObject);
begin
  inherited;
  Liberar := 'Nao';
end;

procedure TfmManEve.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedVen.State <> dsBrowse then PedVen.CancelUpdates;
end;

end.
