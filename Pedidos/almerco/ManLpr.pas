unit ManLpr;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManLpr = class(TfmShowPadrao)
    PedPro: TwwQuery;
    DsPro: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    UpRes: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    PedProID_PEDPRO: TIntegerField;
    PedProID_PEDRES: TIntegerField;
    PedProDTEPRO: TDateTimeField;
    PedProHREPRO: TStringField;
    PedProOB1PRO: TStringField;
    PedProOB2PRO: TStringField;
    PedProOB3PRO: TStringField;
    PedProOB4PRO: TStringField;
    PedProOB5PRO: TStringField;
    PedProCODUSU: TIntegerField;
    EdOb1Pro: TdxDBColorEdit;
    EdOb2Pro: TdxDBColorEdit;
    EdOb3Pro: TdxDBColorEdit;
    EdOb4Pro: TdxDBColorEdit;
    EdOb5Pro: TdxDBColorEdit;
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
  fmManLpr: TfmManLpr;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManLpr.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManLpr.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLpr.FormShow(Sender: TObject);
begin

  PedPro.Insert;

  EdOb1Pro.SetFocus;

end;

procedure TfmManLpr.bCancelarClick(Sender: TObject);
begin

  PedPro.CancelUpdates;

  Close;

end;

procedure TfmManLpr.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  PedProOb1Pro.Value := Trim(PedProOb1Pro.Value);
  PedProOb2Pro.Value := Trim(PedProOb2Pro.Value);
  PedProOb3Pro.Value := Trim(PedProOb3Pro.Value);
  PedProOb4Pro.Value := Trim(PedProOb4Pro.Value);
  PedProOb5Pro.Value := Trim(PedProOb5Pro.Value);

  PedProId_PedPro.Value := 0;
  PedProId_PedRes.Value := Id_PedRes;

  PedProDtePro.Value := date;
  PedProCodUsu.Value := GUsu_Id;
  PedProHrePro.Value := TimeToStr(Time);

  with PedPro do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if PedPro.State = dsBrowse then PedPro.Edit;

          EdOb1Pro.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Liberar := 'Sim';

  Close;

end;

procedure TfmManLpr.FormCreate(Sender: TObject);
begin
  inherited;
  Liberar := 'Nao';
end;

procedure TfmManLpr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if PedPro.State <> dsBrowse then PedPro.CancelUpdates;
end;

end.
