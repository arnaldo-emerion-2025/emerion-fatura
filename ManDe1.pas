unit ManDe1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, dxDBColorPickEdit,
  dxDBColorMemo, dxDBColorLookupEdit, dxDBColorEdit;

type
  TfmManDe1 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    EdObsDes: TdxDBColorMemo;
    Label29: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
    cepanterior : string;
  end;

var
  fmManDe1: TfmManDe1;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, BbMensag, ManDes, ManGDB, ManEma;

{$R *.DFM}

procedure TfmManDe1.FormCreate(Sender: TObject);
begin
  inherited;
  fmManDes.FatPed.Edit;
end;

procedure TfmManDe1.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManDe1.FormShow(Sender: TObject);
begin
  inherited;
  EdObsDes.SetFocus;
end;

procedure TfmManDe1.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManDe1.bContinuarClick(Sender: TObject);
begin

  ActiveControl := nil;
  
  with fmManDes.FatPed do begin

       fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

       try

          ApplyUpdates; {Tenta aplicar as alterações};

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

       except

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

          if fmManDes.FatPed.State = dsBrowse then fmManDes.FatPed.Edit;

          fmManDes.Finalizar := 'N';
          
          EdObsDes.SetFocus;

          raise;

       end;

       CommitUpdates; {sucesso!, limpa o cache...}

  end;

  if fMsg('Confirma Impressão da Minuta de Despacho ?','O') then begin

     try

        fmManEma := TfmManEma.Create(Self);

        fmManEma.FatPed.Close;
        fmManEma.FatPed.Params[0].AsInteger  := fmManDes.FatPedCodEmp.Value;
        fmManEma.FatPed.Params[1].AsDateTime := fmManDes.FatPedDteRes.Value;
        fmManEma.FatPed.Params[2].AsInteger  := fmManDes.FatPedNumRes.Value;
        fmManEma.FatPed.Params[3].AsInteger  := fmManDes.FatPedSeqLib.Value;
        fmManEma.FatPed.Params[4].AsInteger  := fmManDes.FatPedSeqFat.Value;
        fmManEma.FatPed.Open;

        fmManEma.RLReport1.PreviewModal;

     finally

        FreeAndNil(fmManEma);

     end;
  end;

  fmManDes.Finalizar := 'S';

  Close;
  
end;

procedure TfmManDe1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManDes.FatPed.State <> dsBrowse then fmManDes.FatPed.CancelUpdates;
end;

procedure TfmManDe1.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.

