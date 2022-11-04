unit ManCge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManCge = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    EdObcNfs: TdxDBColorMemo;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
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
  fmManCge: TfmManCge;

implementation

uses dxDemoUtils, Bbmensag, ManGDB, ManRom;

{$R *.DFM}

procedure TfmManCge.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  
  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManCge.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCge.FormShow(Sender: TObject);
begin
  inherited;
  
  fmManRom.CmpNfs.Edit;

  EdObcNfs.SetFocus;

end;

procedure TfmManCge.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManCge.bConfirmarClick(Sender: TObject);
var
sText,sReceber,sEstoque : string;
begin

  fmManRom.CmpNfsObcNfs.Value := EdObcNfs.Text;

  if Trim( fmManRom.CmpNfsObcNfs.Value ) <> '' then begin

     sText := 'Deseja Realmente Cancelar a Opera��o ? ';

     if fmManRom.CmpNfsAtuEst.Value = 'Sim' then sEstoque := ' . Devolu��o ao Estoque dos Itens da Opera��o;';

//   if fmManRom.CmpNfsIntFin.Value = 'Sim' then sReceber := ' . Exclus�o dos Titulos a Receber Decorrentes da Emiss�o da Nota Fiscal.';

     if (Trim( sEstoque ) <> '') or (Trim( sReceber ) <> '') then
        sText := sText + #10 + ' ' + #10 + ' Ao Confirmar Ocorrer�o os Seguintes Lan�amentos :';

     sText := sText + #10 + ' ' + #10 + sEstoque + #10 + ' ' + #10 + sReceber;

     if fMsg(sText,'O') then begin

        fmManRom.CmpNfs.Edit;

        fmManRom.CmpNfsDtcNfs.Value := Date;

        fmManRom.CmpNfsUscNfs.Value := GUsu_Id;

        fmManRom.CmpNfsSitNfs.Value := 'Cancelado';

        fmManRom.CmpNfsHrcNfs.Value := TimeToStr(Time);

        with fmManRom.CmpNfs do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

             try

                ApplyUpdates; {Tenta aplicar as altera��es};

                fmManGDB.dbMain.Commit; {confirma todas as altera��es fechando a transa��o};

             except

                fmManGDB.dbMain.Rollback; {desfaz as altera��es se acontecer um erro};

                if fmManRom.CmpNfs.State <> dsBrowse then fmManRom.CmpNfs.CancelUpdates;

                EdObcNfs.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManRom.CmpNfs.Close;
        fmManRom.CmpNfs.Open;

        Close;

     end;

     end
  else
     fmsgErro('Campo de Preenchimento Obrigatorio n�o Informado.',EdObcNfs);
end;

procedure TfmManCge.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManRom.CmpNfs.State <> dsBrowse then fmManRom.CmpNfs.CancelUpdates;
end;

end.
