unit ManFpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManFpe = class(TfmShowPadrao)
    CmpPed: TwwQuery;
    DsRes: TwwDataSource;
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObsFpe: TdxDBColorMemo;
    UpPed: TUpdateSQL;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    CmpPedID_CMPPED: TIntegerField;
    CmpPedDTEFPE: TDateTimeField;
    CmpPedHREFPE: TStringField;
    CmpPedOBSFPE: TMemoField;
    CmpPedUSUFPE: TIntegerField;
    CmpPedSITPED: TStringField;
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
  fmManFpe: TfmManFpe;

implementation

uses dxDemoUtils, ManGDB;

{$R *.DFM}

procedure TfmManFpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManFpe.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManFpe.FormShow(Sender: TObject);
begin

  CmpPed.Edit;

  EdObsFpe.SetFocus;

end;

procedure TfmManFpe.bCancelarClick(Sender: TObject);
begin

  CmpPed.CancelUpdates;

  Close;

end;

procedure TfmManFpe.bConfirmarClick(Sender: TObject);
begin

  ActiveControl := nil;

  CmpPedSitPed.Value := 'Saldo Nao Atendido';

  with CmpPed do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          CmpPed.Close;
          CmpPed.Open;

          CmpPed.Edit;

          EdObsFpe.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  Close;
  
end;

procedure TfmManFpe.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if CmpPed.State <> dsBrowse then CmpPed.CancelUpdates;
end;

end.
