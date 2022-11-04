unit ManCt3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, hEdits, Db, Wwdatsrc, DBTables, Wwquery,
  wwdblook, DBCtrls, Buttons, dxfPictureButton, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxCntner, dxEdLib, FShowPadrao, ppBands, ppCtrls,
  ppVar, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, ppReport,
  ppDB, ppDBPipe, ppStrtch, ppMemo, Psock, NMsmtp, dxfProgressBar,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCt3 = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EdObsCnd: TdxDBColorEdit;
    EdObsEnt: TdxDBColorEdit;
    EdObsVal: TdxDBColorEdit;
    Label12: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    EdObsCta: TdxDBColorMemo;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    EdObsCli: TdxDBColorEdit;
    Label5: TLabel;
    procedure FormShow(Sender: TObject);
    procedure bRetornarClick(Sender: TObject);
    procedure bContinuarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManCt3: TfmManCt3;

implementation

uses dxDemoUtils, ShellApi, Bbgeral, BbMensag, Fpreview, ManGDB, ManCt2,
     ManEma, ManEm2;


{$R *.DFM}

procedure TfmManCt3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManCt3.FormShow(Sender: TObject);
begin
  inherited;

  fmManCt2.PedCta.Edit;

  EdObsCli.Text := fmManCt2.PedCtaObsCli.Value;
  EdObsCnd.Text := fmManCt2.PedCtaObsCnd.Value;
  EdObsEnt.Text := fmManCt2.PedCtaObsEnt.Value;
  EdObsVal.Text := fmManCt2.PedCtaObsVal.Value;
  EdObsCta.Text := fmManCt2.PedCtaObsCta.Value;

  EdObsCli.SetFocus;
  
end;

procedure TfmManCt3.bRetornarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCt3.bContinuarClick(Sender: TObject);
var
NroCt2 : integer;
begin

  NroCt2 := fmManCt2.PedCt2NroCt2.Value;

  if fmManCt2.PedCta.State = dsBrowse then fmManCt2.PedCta.Edit;
  
  fmManCt2.PedCtaObsCli.Value := EdObsCli.Text;
  fmManCt2.PedCtaObsCnd.Value := EdObsCnd.Text;
  fmManCt2.PedCtaObsEnt.Value := EdObsEnt.Text;
  fmManCt2.PedCtaObsVal.Value := EdObsVal.Text;
  fmManCt2.PedCtaObsCta.Value := EdObsCta.Text;

  if fMsg('Confirma Cotacao ?','O') then begin

     fmManCt2.PedCtaSitCta.Value := 'Concluida';

     with fmManCt2.PedCta do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             fmManCt2.Finalizar := 'N';

             if fmManCt2.PedCta.State = dsBrowse then fmManCt2.PedCta.Edit;

             EdObsCli.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     fmManCt2.PedCta.Close;
     fmManCt2.PedCta.Open;

     fmManCt2.PedCt2.Close;
     fmManCt2.PedCt2.Open;

     fmManCt2.PedCt2.Locate('CodEmp;DteCta;NumCta;NroCt2',VarArrayOf([fmManCt2.PedCt2CodEmp.Value,fmManCt2.PedCt2DteCta.Value,fmManCt2.PedCt2NumCta.Value,NroCt2]),[LoPartialKey]);

     fmManCt2.Finalizar := 'S';

     if fMsg('Confirma a Impressão da Via Interna ?','O') then begin

        try

           fmManEma := TfmManEma.Create(Self);

           fmManEma.PedCta.Close;
           fmManEma.PedCta.Params[0].AsInteger  := fmManCt2.PedCtaCodEmp.Value;
           fmManEma.PedCta.Params[1].AsDateTime := fmManCt2.PedCtaDteCta.Value;
           fmManEma.PedCta.Params[2].AsInteger  := fmManCt2.PedCtaNumCta.Value;
           fmManEma.PedCta.Open;

           fmManEma.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManEma);

        end;
     end;

     if fMsg('Confirma a Impressão da Via do Cliente ?','O') then begin

        try

           fmManEm2 := TfmManEm2.Create(Self);

           fmManEm2.PedCta.Close;
           fmManEm2.PedCta.Params[0].AsInteger  := fmManCt2.PedCtaCodEmp.Value;
           fmManEm2.PedCta.Params[1].AsDateTime := fmManCt2.PedCtaDteCta.Value;
           fmManEm2.PedCta.Params[2].AsInteger  := fmManCt2.PedCtaNumCta.Value;
           fmManEm2.PedCta.Open;

           fmManEm2.RLReport1.PreviewModal;

        finally

           FreeAndNil(fmManEm2);

        end;
     end;

     Close;

  end;
end;

procedure TfmManCt3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManCt2.PedCta.State <> dsBrowse then fmManCt2.PedCta.CancelUpdates;
end;

procedure TfmManCt3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.

