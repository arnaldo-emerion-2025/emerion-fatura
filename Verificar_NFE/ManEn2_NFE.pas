unit ManEn2_NFE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ComCtrls, ExtCtrls, DBCtrls, Db, Wwdatsrc, DBTables, Wwquery,
  dxCntner, dxEditor, dxEdLib, dxDBELib, dxExEdtr, Buttons, FShowPadrao,
  dxDBColorMemo, dxDBColorEdit;

type
  TfmManEn2_NFE = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    dxDBEdit29: TdxDBColorEdit;
    Panel3: TPanel;
    Label11: TLabel;
    bConfirmar: TBitBtn;
    bCancelar: TBitBtn;
    quSql: TwwQuery;
    EdObsMdv: TdxDBColorMemo;
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
  fmManEn2_NFE: TfmManEn2_NFE;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, ManGDB, ManEn1_NFE;

{$R *.DFM}

procedure TfmManEn2_NFE.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bCancelar.OnClick(Sender);

  if key = 123 then bConfirmar.OnClick(Sender);

end;

procedure TfmManEn2_NFE.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManEn2_NFE.FormShow(Sender: TObject);
begin
  inherited;

  fmManEn1_NFE.FatDev.Edit;

  EdObsMdv.SetFocus;

end;

procedure TfmManEn2_NFE.bCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TfmManEn2_NFE.bConfirmarClick(Sender: TObject);
var
sText : string;
begin

  fmManEn1_NFE.FatDevObsMdv.Value := EdObsMdv.Text;

  if Trim( fmManEn1_NFE.FatDevObsMdv.Value ) <> '' then begin

     if fMsg('Confirma a Devolução dos Itens Informados ? ','O') then begin

        if fMsg('Deseja Emitir Nota Fiscal de Entrada da Mercadoria ? ','O') then begin

           fmManEn1_NFE.FatDev.Edit;

           fmManEn1_NFE.FatDevSitDev.Value := 'Concluido';

//Rolando
fmmanen1_nfe.FatDevFLGNOT.Value := 'Sim';
fmmanen1_nfe.FatDevFLGNFE.Value := 'Sim';
fmmanen1_nfe.FatDevENVNFE.Value := 'Nao';
//


           with fmManEn1_NFE.FatDev do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   fmManEn1_NFE.Finalizar := 'N';

                   if fmManEn1_NFE.FatDev.State = dsBrowse then fmManEn1_NFE.FatDev.Edit;

                   EdObsMdv.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           fmManEn1_NFE.FatDev.Close;
           fmManEn1_NFE.FatDev.Open;

           fmManEn1_NFE.Finalizar := 'S';

           Close;

           end
        else
           begin

           sText := '          Confirma Devolução da Nota Fiscal ?      '+#10+
                    '                                                   '+#10+
                    ' Ao Confirmar Ocorrerão os Seguintes Lançamentos : '+#10+
                    '                                                   ';

           if fmManEn1_NFE.FatDevAtuEst.Value = 'Sim' then sText := sText + #10 + ' . Devolução ao Estoque dos Itens da Nota Fiscal;';

           if fmManEn1_NFE.FatDevIntFin.Value = 'Sim' then sText := sText + #10 + ' . Cancelamento dos Titulos a Receber Decorrentes da Emissão da Nota Fiscal.';

           sText := sText + #10 + '                                                  ';

           if fMsg(sText,'O') then begin

           fmManEn1_NFE.FatDev.Edit;

           fmManEn1_NFE.FatDevSitDev.Value := 'Devolvido';

//Rolando
fmmanen1_nfe.FatDevFLGNOT.Value := 'Sim';
fmmanen1_nfe.FatDevFLGNFE.Value := 'Sim';
fmmanen1_nfe.FatDevENVNFE.Value := 'Nao';
//


           with fmManEn1_NFE.FatDev do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   fmManEn1_NFE.Finalizar := 'N';

                   if fmManEn1_NFE.FatDev.State = dsBrowse then fmManEn1_NFE.FatDev.Edit;

                   EdObsMdv.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           fmManEn1_NFE.FatDev.Close;
           fmManEn1_NFE.FatDev.Open;

           fmManEn1_NFE.Finalizar := 'S';

           Close;

           end;
        end;
     end;

     end
  else
     fmsgErro('Campo de preenchimento obrigatório não informado.',EdObsMdv);
end;

procedure TfmManEn2_NFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if fmManEn1_NFE.FatDev.State <> dsBrowse then fmManEn1_NFE.FatDev.CancelUpdates;
end;

end.
