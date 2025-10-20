unit ManFro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, dxDBColorMemo,
  dxDBColorEdit, FShowPadrao;

type
  TfmManFro = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    EdObfNf3: TdxDBColorEdit;
    EdObfNf2: TdxDBColorEdit;
    EdObfNf1: TdxDBColorEdit;
    CmpNfs: TwwQuery;
    UpNfs: TUpdateSQL;
    DsNfs: TwwDataSource;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsDTFNFS: TDateTimeField;
    CmpNfsHRFNFS: TStringField;
    CmpNfsUSFNFS: TIntegerField;
    CmpNfsSEQNFS: TStringField;
    CmpNfsOBFNF1: TStringField;
    CmpNfsOBFNF2: TStringField;
    CmpNfsOBFNF3: TStringField;
    CmpNfsSITNFS: TStringField;
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
  fmManFro: TfmManFro;

implementation

uses dxDemoUtils, Bbmensag, ManGDB;

{$R *.DFM}

procedure TfmManFro.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManFro.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManFro.FormShow(Sender: TObject);
begin
  inherited;

  CmpNfs.Edit;

  EdObfNf1.SetFocus;

end;

procedure TfmManFro.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManFro.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  CmpNfsObfNf1.Value := Trim(EdObfNf1.Text);
  CmpNfsObfNf2.Value := Trim(EdObfNf2.Text);
  CmpNfsObfNf3.Value := Trim(EdObfNf3.Text);

  if (Trim(CmpNfsObfNf1.Value) <> '') or
     (Trim(CmpNfsObfNf2.Value) <> '') or
     (Trim(CmpNfsObfNf3.Value) <> '') then begin

     if fMsg('Deseja Realmente deixar o saldo como não atendido ? ','O') then begin

        CmpNfsDtfNfs.Value := Date;
        CmpNfsUsfNfs.Value := GUsu_Id;
        CmpNfsSitNfs.Value := 'Cancelada';
        CmpNfsHrfNfs.Value := TimeToStr(Time);

        with CmpNfs do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                EdObfNf1.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        Close;

     end;

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdObfNf1);
end;

procedure TfmManFro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;
end;

end.
