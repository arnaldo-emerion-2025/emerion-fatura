unit ManLib;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, StdCtrls, Wwdatsrc, Db, DBTables, Wwquery, dxExEdtr,
  dxEdLib, dxDBELib, dxEditor, Buttons, dxCntner, AlignEdit, hGrid, Grids,
  Wwdbigrd, Wwdbgrid, RDprint, dxDBColorDateEdit, dxDBColorCurrencyEdit,
  dxDBColorEdit;

type
  TfmManLib = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label29: TLabel;
    PedLib: TwwQuery;
    PedLb2: TwwQuery;
    UpLb2: TUpdateSQL;
    DsLb2: TDataSource;
    DsLib: TDataSource;
    quSql: TwwQuery;
    EdDteRes: TdxDBColorDateEdit;
    Label1: TLabel;
    EdCodEmp: TdxDBColorEdit;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    EdCodCli: TdxDBColorEdit;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    EdCodVen: TdxDBColorEdit;
    Label16: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    EdCodPfa: TdxDBColorEdit;
    grPe21: TdxDBGraphicEdit;
    grLb2: ThGrid;
    grLabel1: TdxDBGraphicEdit;
    grLabel2: TPanel;
    Label37: TLabel;
    Label53: TLabel;
    Label68: TLabel;
    pnTotLib: TPanel;
    EdTotLib: TdxDBColorCurrencyEdit;
    Label8: TLabel;
    Label32: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    EdNomCli: TdxDBColorEdit;
    pnNomCli: TPanel;
    EdNomVen: TdxDBColorEdit;
    EdDscPfa: TdxDBColorEdit;
    pnNomVen: TPanel;
    pnNomPfa: TPanel;
    EdApeEmp: TdxDBColorEdit;
    pnApeEmp: TPanel;
    EdCgcCli: TdxDBColorEdit;
    pnCgcCli: TPanel;
    EdUfeRes: TdxDBColorEdit;
    pnUfeRes: TPanel;
    Label12: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    pnNumRes: TPanel;
    EdNumRes: TdxDBColorEdit;
    PedLb2CODITE: TStringField;
    Label3: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    PedLb2QTPLB2: TFloatField;
    PedLb2QTSLB2: TFloatField;
    PedLb2ULTQTS: TFloatField;
    PedLb2SLDLB2: TFloatField;
    PedLb2DESLB2: TStringField;
    Label20: TLabel;
    Label21: TLabel;
    EdQtsLib: TdxDBColorCurrencyEdit;
    pnQtsLib: TPanel;
    Label22: TLabel;
    UpLib: TUpdateSQL;
    Panel1: TPanel;
    EdCodIte: TdxDBColorEdit;
    EdDesLb2: TdxDBColorEdit;
    EdQtpLb2: TdxDBColorCurrencyEdit;
    EdQtsLb2: TdxDBColorCurrencyEdit;
    EdUltQts: TdxDBColorCurrencyEdit;
    EdSldLb2: TdxDBColorCurrencyEdit;
    Label17: TLabel;
    Label23: TLabel;
    EdQtdIte: TdxDBColorCurrencyEdit;
    pnQtdIte: TPanel;
    RDprint1: TRDprint;
    quLb2: TwwQuery;
    quRes: TwwQuery;
    quLib: TwwQuery;
    PedLibCODEMP: TIntegerField;
    PedLibDTERES: TDateTimeField;
    PedLibNUMRES: TIntegerField;
    PedLibSEQLIB: TIntegerField;
    PedLibDTELIB: TDateTimeField;
    PedLibUFELIB: TStringField;
    PedLibCODCLI: TIntegerField;
    PedLibCODVEN: TIntegerField;
    PedLibCODATD: TIntegerField;
    PedLibCODPFA: TStringField;
    PedLibTIPPFA: TStringField;
    PedLibQTSLIB: TIntegerField;
    PedLibTOTLIB: TFloatField;
    PedLibSITLIB: TStringField;
    PedLb2CODEMP: TIntegerField;
    PedLb2DTERES: TDateTimeField;
    PedLb2NUMRES: TIntegerField;
    PedLb2SEQLIB: TIntegerField;
    PedLb2SEQLB2: TIntegerField;
    PedLibFLGLIB: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure grLb2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Panel1Exit(Sender: TObject);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure DsLb2DataChange(Sender: TObject; Field: TField);
  private
  public
    sEnc,Finalizar : string;
  end;

var
  NomVen     : string;
  NomCli     : string;
  EndEn1     : string;
  EndEn2     : string;
  EndEn3     : string;  
  DesRe2     : string;
  NomTra     : string;
  EndTr1     : string;
  EndTr2     : string;
  EndTr3     : string;
  Linha      : integer;
  fmManLib: TfmManLib;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManLpe;

{$R *.DFM}

procedure TfmManLib.FormCreate(Sender: TObject);
begin
  inherited;

  sEnc := 'N';

  Finalizar := 'N';

end;

procedure TfmManLib.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLib.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
DteRes : TDateTime;
ValDup,PraMed : real;
EndTr3,NomTra,EndTr1,EndTr2 : string;
CodEmp,NumRes,SeqLib,SeqLb2,QtdCol : integer;
begin
  inherited;
  if key = 32 then begin {Barra de Espaço}

     CodEmp := PedLb2CodEmp.Value;
     DteRes := PedLb2DteRes.Value;
     NumRes := PedLb2NumRes.Value;
     SeqLib := PedLb2SeqLib.Value;
     SeqLb2 := PedLb2SeqLb2.Value;

     PedLb2.Edit;

     if PedLb2SldLb2.Value > 0 then begin

        if PedLb2UltQts.Value > 0 then
           PedLb2UltQts.Value := fRound(PedLb2UltQts.Value + PedLb2SldLb2.Value,4)
        else
           PedLb2UltQts.Value := PedLb2SldLb2.Value;

        end
     else
        PedLb2UltQts.Value := 0;

     with PedLb2 do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if PedLb2.State <> dsBrowse then PedLb2.CancelUpdates;

             grLb2.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     PedLb2.Close;
     PedLb2.Open;

     PedLib.Close;
     PedLib.Open;

     PedLb2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqLb2',VarArrayOf([CodEmp,DteRes,NumRes,SeqLib,SeqLb2]),[LoPartialKey]);

  end;

  if key = 117 then begin {F6 - Separar Tudo/Nao Separar}

     CodEmp := PedLb2CodEmp.Value;
     DteRes := PedLb2DteRes.Value;
     NumRes := PedLb2NumRes.Value;
     SeqLib := PedLb2SeqLib.Value;
     SeqLb2 := PedLb2SeqLb2.Value;

     if EdUltQts.Enabled then begin

        PedLb2.CancelUpdates;

        EdUltQts.Enabled := False;

        EdUltQts.Font.Style := [fsBold];

     end;
     
     PedLib.Edit;

     if PedLibFlgLib.Value = '*' then
        PedLibFlgLib.Value := ' '
     else
        PedLibFlgLib.Value := '*';

     with PedLib do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if PedLib.State <> dsBrowse then PedLib.CancelUpdates;

             grLb2.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     PedLib.Close;
     PedLib.Open;

     PedLb2.Close;
     PedLb2.Open;

     PedLb2.Locate('CodEmp;DteRes;NumRes;SeqLib;SeqLb2',VarArrayOf([CodEmp,DteRes,NumRes,SeqLib,SeqLb2]),[LoPartialKey]);

     grLb2.SetFocus;

  end;

  if key = 27 then begin

     if PedLb2.State <> dsBrowse then PedLb2.CancelUpdates;

     if EdUltQts.Enabled then begin

        EdUltQts.Enabled := False;

        EdUltQts.Font.Style := [fsBold];

        grLb2.SetFocus;

        end
     else
        Close;
  end;

  if key = 123 then begin {F12-Finalizar Liberação}

     if PedLibQtsLib.Value > 0 then begin

        if not EdUltQts.Enabled then begin

           if fMsg('Confirma a Liberação do Pedido?','O') then begin

              PedLib.Edit;

              PedLibSitLib.Value := 'Concluido';

              with PedLib do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      Finalizar := 'N';

                      PedLib.Close;
                      PedLib.Open;

                      grLb2.SetFocus;

                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              Finalizar := 'S';

              if fMsg('Confirma Impressão do Pedido ?','O') then begin

                 with quRes,SQL do begin

                      Close;
                      Text := ' Select PedRes.*,'+
                              '        FinCli.CliTab,'+
                              '        FormatCgcCpf(PedRes.CgcCli) as CgcCpf'+
                              ' From PedRes LEFT JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
                              ' Where PedRes.CodEmp = :CodEmp'+
                              '   and PedRes.DteRes = :DteRes'+
                              '   and PedRes.NumRes = :NumRes';

                      with Params do begin

                           Params[0].AsInteger  := PedLibCodEmp.Value;
                           Params[1].AsDateTime := PedLibDteRes.Value;
                           Params[2].AsInteger  := PedLibNumRes.Value;

                      end;

                      Open;

                 end;

                 with quLib,SQL do begin

                      Close;
                      Text := ' Select * From PedLib'+
                              ' Where CodEmp = :CodEmp'+
                              '   and DteRes = :DteRes'+
                              '   and NumRes = :NumRes'+
                              '   and SeqLib = :SeqLib';

                      with Params do begin

                           Params[0].AsInteger  := PedLibCodEmp.Value;
                           Params[1].AsDateTime := PedLibDteRes.Value;
                           Params[2].AsInteger  := PedLibNumRes.Value;
                           Params[3].AsInteger  := PedLibSeqLib.Value;

                      end;

                      Open;

                 end;

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select ApeVen From FinVen'+
                              ' Where CodVen = '''+IntToStr(quRes.FieldbyName('CodVen').AsInteger)+'''';
                      Open;

                      NomVen := FieldbyName('ApeVen').AsString;

                 end;

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select NomCli From FinCli'+
                              ' Where CodCli = '''+IntToStr(quRes.FieldbyName('CodCli').AsInteger)+'''';
                      Open;

                      NomCli := FieldbyName('NomCli').AsString;

                 end;

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select * From FinTra'+
                              ' Where CodTra = '''+IntToStr(quRes.FieldbyName('CodTra').AsInteger)+'''';
                      Open;

                      if Trim( quSql.FieldbyName('NomTra').AsString ) <> '' then begin

                          NomTra := quSql.FieldbyName('NomTra').AsString;

                          if Trim(FieldbyName('TenTra').AsString) <> '' then
                             EndTr1 := Trim( FieldbyName('TenTra').AsString )+ ' ' +
                                       Trim( FieldbyName('EndTra').AsString )
                          else
                             EndTr1 := Trim( FieldbyName('EndTra').AsString );

                          if Trim( FieldbyName('NumTra').AsString ) <> '' then
                             EndTr1 := EndTr1 + ', ' +Trim( FieldbyName('NumTra').AsString );

                          if Trim( FieldbyName('BaiTra').AsString ) <> '' then
                             EndTr1 := EndTr1 + ' ' +Trim( FieldbyName('BaiTra').AsString );

                          EndTr2 := Trim( FieldbyName('CidTra').AsString );

                          if Trim( FieldbyName('SigUfe').AsString ) <> '' then
                             EndTr2 := EndTr2+ ' - ' +FieldbyName('SigUfe').AsString;

                          if Trim( FieldbyName('CepTra').AsString ) <> '' then
                             EndTr2 := EndTr2 + ' Cep '+
                                       copy(FieldbyName('CepTra').AsString,1,5)+ '-' +
                                       copy(FieldbyName('CepTra').AsString,6,3);

                          if Trim( FieldbyName('PrtTra').AsString ) <> '' then
                             EndTr3 := 'TeleFone '+'('+Trim( FieldbyName('PrtTra').AsString )+') '+Trim( FieldbyName('FonTra').AsString )
                          else
                             begin

                             if Trim( FieldbyName('FonTra').AsString ) <> '' then
                                EndTr3 := 'TeleFone '+Trim( FieldbyName('FonTra').AsString );

                          end;
                      end;
                 end;

                 EndEn1 := Trim( quRes.FieldbyName('NomEnt').AsString );

                 if Trim(quRes.FieldbyName('TenCli').AsString) <> '' then
                    EndEn2 := Trim( quRes.FieldbyName('TenCli').AsString )+ ' ' +
                              Trim( quRes.FieldbyName('EndCli').AsString )
                 else
                    EndEn2 := Trim( quRes.FieldbyName('EndCli').AsString );

                 if Trim( quRes.FieldbyName('NumCli').AsString ) <> '' then
                    EndEn2 := EndEn2 + ', ' +Trim( quRes.FieldbyName('NumCli').AsString );

                 if Trim( quRes.FieldbyName('BaiCli').AsString ) <> '' then
                    EndEn2 := EndEn2 + ' ' +Trim( quRes.FieldbyName('BaiCli').AsString );

                 EndEn3 := Trim( quRes.FieldbyName('CidCli').AsString );

                 if Trim( quRes.FieldbyName('UfeCli').AsString ) <> '' then
                    EndEn3 := EndEn3+ ' - ' +quRes.FieldbyName('UfeCli').AsString;

                 if Trim( quRes.FieldbyName('CepCli').AsString ) <> '' then
                    EndEn3 := EndEn3 + ' Cep '+
                              copy(quRes.FieldbyName('CepCli').AsString,1,5)+ '-' +
                              copy(quRes.FieldbyName('CepCli').AsString,6,3);

                 rdprint1.OpcoesPreview.Preview     := False;
                 rdprint1.OpcoesPreview.PreviewZoom := 100;
                 rdprint1.TamanhoQteLPP             := seis;
                 rdprint1.UsaGerenciadorImpr        := True;

                 rdprint1.TamanhoQteColunas  := 136;
                 rdprint1.FonteTamanhoPadrao := s17cpp;

                 {Inicio...}
                 with rdprint1 do begin

                      abrir; {inicializa o arquivo de impressao...}

                      if setup then begin {abre tela para escolha da impressora e modelo...}

                         with quLb2,SQL do begin

                              Close;
                              Text := ' Select * From PedLb2'+
                                      ' Where PedLb2.CodEmp = :CodEmp'+
                                      '   and PedLb2.DteRes = :DteRes'+
                                      '   and PedLb2.NumRes = :NumRes'+
                                      '   and PedLb2.SeqLib = :SeqLib and PedLb2.UltQts > 0'+
                                      ' Order by PedLb2.CodEmp,PedLb2.DteRes,PedLb2.NumRes,PedLb2.SeqLib,PedLb2.SeqLb2';

                              with Params do begin

                                   Params[0].AsInteger  := PedLibCodEmp.Value;
                                   Params[1].AsDateTime := PedLibDteRes.Value;
                                   Params[2].AsInteger  := PedLibNumRes.Value;
                                   Params[3].AsInteger  := PedLibSeqLib.Value;

                              end;

                              Open;

                         end;

                         quLb2.First;

                         while not quLb2.Eof do begin

                               if quLb2.FieldbyName('UltQts').AsFloat > 0 then begin

                                  imp(Linha,001,quLb2.FieldbyName('CodGru').AsString+ '.' +quLb2.FieldbyName('CodSub').AsString+ '.' +quLb2.FieldbyName('CodPro').AsString);

                                  imp(Linha,016,quLb2.FieldbyName('DesLb2').AsString);
                                  imp(Linha,072,PreString(FormatFloat('###,##0.0000',quLb2.FieldbyName('UltQts').AsFloat),12));
                                  imp(Linha,085,PreString(FormatFloat('###,##0.0000',quLb2.FieldbyName('VluLb2').AsFloat),12));
                                  imp(Linha,099,PreString(FormatFloat('##0.00',fRound(quLb2.FieldbyName('DscLb2').AsFloat + quLb2.FieldbyName('DspLb2').AsFloat,2)),06));
                                  imp(Linha,106,PreString(FormatFloat('##0.00',quLb2.FieldbyName('PacLb2').AsFloat),06));
                                  imp(Linha,113,PreString(FormatFloat('###,##0.0000',quLb2.FieldbyName('VlqLb2').AsFloat),12));
                                  imp(Linha,126,PreString(FormatFloat('#,###,##0.00',quLb2.FieldbyName('TotLb2').AsFloat),12));

                                  if Trim( quLb2.FieldbyName('ObsLb2').AsString ) <> '' then begin

                                     Inc(Linha);

                                     imp(Linha,016,Trim( quLb2.FieldbyName('ObsLb2').AsString ));

                                  end;

                                  Inc(Linha);

                                  if Linha > 61 then rdprint1.novapagina;

                              end;

                              quLb2.Next;

                         end;

                         imp(Linha,126,fReplicate('-',12));
                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         imp(Linha,100,'Total de Itens        :');
                         imp(Linha,126,PreString(FormatFloat('#,###,##0.00',quLib.FieldbyName('TotLib').AsFloat),12));

                         Linha := Linha + 2;

                         if Linha > 61 then rdprint1.novapagina;

                         imp(Linha,100,'Total ICMS Substituto :');
                         imp(Linha,126,PreString(FormatFloat('#,###,##0.00',quLib.FieldbyName('TotSub').AsFloat),12));

                         Linha := Linha + 2;

                         if Linha > 61 then rdprint1.novapagina;

                         imp(Linha,100,'Total de IPI          :');
                         imp(Linha,126,PreString(FormatFloat('#,###,##0.00',quLib.FieldbyName('TotIpi').AsFloat),12));

                         Linha := Linha + 2;

                         if Linha > 61 then rdprint1.novapagina;

                         imp(Linha,100,'Total Liberado        :');
                         imp(Linha,126,PreString(FormatFloat('#,###,##0.00',quLib.FieldbyName('TotGer').AsFloat),12));

                         Inc(Linha);
                         Inc(Linha);
                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         impf(Linha,001,'Total de Itens       :'+PreString(IntToStr(quLib.FieldbyName('QtsLib').AsInteger),08),[NORMAL, NEGRITO]);
                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         impf(Linha,001,fReplicate('-',80),[NORMAL]);
                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         impf(Linha,001,'INFORMACOES ADICIONAIS:',[NORMAL, NEGRITO]);
                         Inc(Linha);
                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         impf(Linha,001,'Cond. de Pagto.:',[NORMAL, NEGRITO]);
                         impf(Linha,031,'Prazo',[NORMAL, NEGRITO]);
                         impf(Linha,042,'Valor Parcela',[NORMAL, NEGRITO]);
                         impf(Linha,072,'Prazo',[NORMAL, NEGRITO]);
                         impf(Linha,083,'Valor Parcela',[NORMAL, NEGRITO]);

                         Inc(Linha);
                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         ValDup := fRound(quLib.FieldbyName('TotGer').AsFloat/quRes.FieldbyName('QtpRes').AsInteger,2);

                         with quSQL,SQL do begin

                              Close;
                              Text := ' Select * From PedRe3'+
                                      ' Where CodEmp = '''+ IntToStr(quLib.FieldbyName('CodEmp').AsInteger)    +''''+
                                      '   and DteRes = '''+ fDateToSQL(quLib.FieldbyName('DteRes').AsDateTime) +''''+
                                      '   and NumRes = '''+ IntToStr(quLib.FieldbyName('NumRes').AsInteger)    +''''+
                                      ' Order by CodEmp,DteRes,NumRes,SeqRe3';
                              Open;
                              First;

                         end;

                         QtdCol := 31;
                         PraMed := 0;

                         while not quSQL.Eof do begin

                               impf(Linha,QtdCol + 00,PreString(IntToStr(quSql.FieldbyName('PraRe3').AsInteger),5),[NORMAL, NEGRITO]);
                               impf(Linha,QtdCol + 09,PreString(FormatFloat('###,###,##0.00',ValDup),14),[NORMAL, NEGRITO]);

                               if QtdCol = 31 then
                                  QtdCol := QtdCol + 41
                               else
                                  begin

                                  QtdCol := 31;

                                  Linha := Linha + 1;

                               end;

                               PraMed := PraMed + quSql.FieldbyName('PraRe3').AsInteger;

                               quSql.Next;

                               if Linha > 61 then rdprint1.novapagina;

                         end;

                         Linha := Linha + 2;

                         if Linha > 61 then rdprint1.novapagina;

                         PraMed := PraMed / StrToFloat(quRes.FieldbyName('QtpRes').AsString);

                         impf(Linha,001,'Prazo Medio : '+FormatFloat('##0.00',PraMed)+' Dias',[NORMAL, NEGRITO]);

                         Inc(Linha);
                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         if quRes.FieldbyName('CodTra').AsInteger > 0 then begin

                            impf(Linha,001,'Transportadora : '+preString(IntToStr(quRes.FieldbyName('CodTra').AsInteger),7)+' - '+NomTra,[NORMAL, NEGRITO]);
                            Inc(Linha);

                            if Linha > 61 then rdprint1.novapagina;

                            impf(Linha,001,'                 '+EndTr1,[NORMAL, NEGRITO]);
                            Inc(Linha);

                            if Linha > 61 then rdprint1.novapagina;

                            impf(Linha,001,'                 '+EndTr2,[NORMAL, NEGRITO]);
                            Inc(Linha);

                            if Linha > 61 then rdprint1.novapagina;

                            impf(Linha,001,'                 '+EndTr3,[NORMAL, NEGRITO]);

                            end
                         else
                            impf(Linha,001,'Transportadora : ',[NORMAL, NEGRITO]);

                         Inc(Linha);
                         Inc(Linha);

                         if Linha > 61 then rdprint1.novapagina;

                         Fechar;  {Finaliza e inicia impressao ou preview}

                    end;
                 end;
              end;

              Close;

           end;
        end;
     end;
  end;
end;

procedure TfmManLib.grLb2KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 13 then begin {Tecla - ENTER}

     EdUltQts.Enabled := True;

     EdUltQts.Font.Style := [];

     EdUltQts.SetFocus;

  end;
end;

procedure TfmManLib.FormClose(Sender: TObject; var Action: TCloseAction);
var
DteRes : TDateTime;
CodEmp,NumRes : integer;
begin
  inherited;
  if Finalizar = 'N' then begin

     if fMsg('Deseja Realmente Abandonar a Liberação do Pedido?','O') then begin

        if PedLibSitLib.Value = 'Nao Concluido' then begin

           fmManGDB.dbMain.StartTransaction;

           with quSql,SQL do begin

                Close;
                Text := ' Delete From PedLib'+
                        ' Where CodEmp = :CodEmp'+
                        '   and DteRes = :DteRes'+
                        '   and NumRes = :NumRes'+
                        '   and SeqLib = :SeqLib';

                with Params do begin

                     Params[0].AsInteger  := PedLibCodEmp.Value;
                     Params[1].AsDateTime := PedLibDteRes.Value;
                     Params[2].AsInteger  := PedLibNumRes.Value;
                     Params[3].AsInteger  := PedLibSeqLib.Value;

                end;

                ExecSQL;

           end;

           fmManGDB.dbMain.Commit;

           fmManLpe.PedRes.Close;
           fmManLpe.PedRes.Open;

           fmManLpe.PedLib.Close;
           fmManLpe.PedLib.Open;

           CodEmp := fmManLpe.PedResCodEmp.Value;
           DteRes := fmManLpe.PedResDteRes.Value;
           NumRes := fmManLpe.PedResNumRes.Value;

           fmManLpe.PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]), [loPartialKey]);

        end;

        Action := CaFree;

        end
     else
        Abort;

     end
  else
     begin

     if PedLibSitLib.Value = 'Concluido' then begin

        fmManLpe.EdPsqNumRes.Text := '';

        fmManLpe.PedRes.Close;
        fmManLpe.PedRes.Open;

        fmManLpe.PedLib.Close;
        fmManLpe.PedLib.Open;

        end
     else
        begin

        CodEmp := fmManLpe.PedResCodEmp.Value;
        DteRes := fmManLpe.PedResDteRes.Value;
        NumRes := fmManLpe.PedResNumRes.Value;

        fmManLpe.PedRes.Close;
        fmManLpe.PedRes.Open;

        fmManLpe.PedLib.Close;
        fmManLpe.PedLib.Open;

        fmManLpe.PedRes.Locate('CodEmp;DteRes;NumRes',VarArrayOf([CodEmp,DteRes,NumRes]), [loPartialKey]);

     end;

     Action := CaFree;

  end;
end;

procedure TfmManLib.FormShow(Sender: TObject);
var
SeqLib : integer;
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select UsaDec From PedPar';
       Open;

       if FieldbyName('UsaDec').AsString = 'Sim' then begin

          PedLb2QtpLb2.DisplayFormat := '###,###,##0.0000';
          PedLb2QtsLb2.DisplayFormat := '###,###,##0.0000';
          PedLb2UltQts.DisplayFormat := '###,###,##0.0000';
          PedLb2SldLb2.DisplayFormat := '###,###,##0.0000';

          EdQtpLb2.DisplayFormat := '###,###,##0.0000';
          EdQtsLb2.DisplayFormat := '###,###,##0.0000';
          EdUltQts.DisplayFormat := '###,###,##0.0000';
          EdSldLb2.DisplayFormat := '###,###,##0.0000';

          EdQtpLb2.DecimalPlaces := 4;
          EdQtsLb2.DecimalPlaces := 4;
          EdUltQts.DecimalPlaces := 4;
          EdSldLb2.DecimalPlaces := 4;

          end
       else
          begin

          PedLb2QtpLb2.DisplayFormat := '###,###,##0';
          PedLb2QtsLb2.DisplayFormat := '###,###,##0';
          PedLb2UltQts.DisplayFormat := '###,###,##0';
          PedLb2SldLb2.DisplayFormat := '###,###,##0';

          EdQtpLb2.DisplayFormat := '###,###,##0';
          EdQtsLb2.DisplayFormat := '###,###,##0';
          EdUltQts.DisplayFormat := '###,###,##0';
          EdSldLb2.DisplayFormat := '###,###,##0';

          EdQtpLb2.DecimalPlaces := 0;
          EdQtsLb2.DecimalPlaces := 0;
          EdUltQts.DecimalPlaces := 0;
          EdSldLb2.DecimalPlaces := 0;

       end;
  end;
  
  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as QtdLib From PedLib'+
               ' Where PedLib.CodEmp = :CodEmp'+
               '   and PedLib.DteRes = :DteRes'+
               '   and PedLib.NumRes = :NumRes';

       with Params do begin

            Params[0].AsInteger  := fmManLpe.CodEmp;
            Params[1].AsDateTime := fmManLpe.DteRes;
            Params[2].AsInteger  := fmManLpe.NumRes;

       end;

       Open;

       if FieldbyName('QtdLib').AsInteger <> fmManLpe.SeqLib then
          SeqLib := FieldbyName('QtdLib').AsInteger
       else
          SeqLib := fmManLpe.SeqLib;

  end;

  PedLib.Close;
  PedLib.Params[0].AsInteger  := fmManLpe.CodEmp;
  PedLib.Params[1].AsDateTime := fmManLpe.DteRes;
  PedLib.Params[2].AsInteger  := fmManLpe.NumRes;
  PedLib.Params[3].AsInteger  := SeqLib;
  PedLib.Open;

  PedLb2.Close;
  PedLb2.Params[0].AsInteger  := PedLibCodEmp.Value;
  PedLb2.Params[1].AsDateTime := PedLibDteRes.Value;
  PedLb2.Params[2].AsInteger  := PedLibNumRes.Value;
  PedLb2.Params[3].AsInteger  := PedLibSeqLib.Value;
  PedLb2.Open;

  with quSQL,SQL do begin

       Close;
       Text := ' Select ApeEmp From GerEmp Where GerEmp.CodEmp = '''+ IntToStr(PedLibCodEmp.Value) +'''';
       Open;

       pnApeEmp.Caption := FieldbyName('ApeEmp').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select NomCli,CgcCli From FinCli Where FinCli.CodCli = '''+ IntToStr(PedLibCodCli.Value) +'''';
       Open;

       pnNomCli.Caption := FieldbyName('NomCli').AsString;

       if TrimLeft(TrimRight(FieldbyName('CgcCli').AsString)) <> '' then begin

          if Length(TrimLeft(TrimRight(FieldbyName('CgcCli').AsString))) <= 11 then

             pnCgcCli.Caption := copy(FieldbyName('CgcCli').AsString,01,03)+ '.' +
                                 copy(FieldbyName('CgcCli').AsString,04,03)+ '.' +
                                 copy(FieldbyName('CgcCli').AsString,07,03)+ '-' +
                                 copy(FieldbyName('CgcCli').AsString,10,02)

          else

             pnCgcCli.Caption := copy(FieldbyName('CgcCli').AsString,01,02)+ '.' +
                                 copy(FieldbyName('CgcCli').AsString,03,03)+ '.' +
                                 copy(FieldbyName('CgcCli').AsString,06,03)+ '/' +
                                 copy(FieldbyName('CgcCli').AsString,09,04)+ '-' +
                                 copy(FieldbyName('CgcCli').AsString,13,02);

          end
       else
          pnCgcCli.Caption := '';

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select ApeVen From FinVen Where FinVen.CodVen = '''+ IntToStr(PedLibCodVen.Value) +'''';
       Open;

       pnNomVen.Caption := FieldbyName('ApeVen').AsString;

  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select DsrPfa From EstPfa'+
               ' Where EstPfa.CodPfa = '''+ PedLibCodPfa.Value +''''+
               '   and EstPfa.TipPfa = '''+ PedLibTipPfa.Value +'''';
       Open;

       pnNomPfa.Caption := FieldbyName('DsrPfa').AsString;

  end;

  pnUfeRes.Caption := PedLibUfeLib.Value;
  pnNumRes.Caption := IntToStr(PedLibNumRes.Value);

  with quSQL,SQL do begin

       Close;
       Text := ' Select Count(*) as QtdReg From PedRe2'+
               ' Where PedRe2.CodEmp = :CodEmp'+
               '   and PedRe2.DteRes = :DteRes'+
               '   and PedRe2.NumRes = :NumRes'+
               '   and PedRe2.SldRe2 > 0';

       with Params do begin

            Params[0].AsInteger  := PedLibCodEmp.Value;
            Params[1].AsDateTime := PedLibDteRes.Value;
            Params[2].AsInteger  := PedLibNumRes.Value;

       end;

       Open;

       if FieldbyName('QtdReg').AsInteger > 0 then
          pnQtdIte.Caption := IntToStr( FieldbyName('QtdReg').AsInteger )
       else
          pnQtdIte.Caption := '0';

  end;

  if PedLibSitLib.Value <> 'Nao Concluido' then sEnc := 'S';

end;

procedure TfmManLib.FormActivate(Sender: TObject);
begin
  inherited;
  if sEnc = 'S' then begin

     if PedLibSitLib.Value = 'Concluido' then
        fMsg('Operação não Pode ser Realizada. Liberação Aguardando Faturamento.','E')
     else
        begin

        if PedLibSitLib.Value = 'Faturando' then
           fMsg('Operação não Pode ser Realizada. Liberação em Processo de Faturamento.','E')
        else
           begin

           if PedLibSitLib.Value = 'Faturado' then fMsg('Operação não Pode ser Realizada. Liberação Faturada.','E');

        end;
     end;

     Finalizar := 'S';

     Close;

  end;
end;

procedure TfmManLib.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLib := nil;
end;

procedure TfmManLib.Panel1Exit(Sender: TObject);
var
SeqLb2 : integer;
begin
  inherited;
  if PedLb2.State <> dsBrowse then begin

     if PedLb2UltQts.Value <= fRound(PedLb2SldLb2.Value + PedLb2QtsLb2.Value,4) then begin

        SeqLb2 := PedLb2SeqLb2.Value;

        with PedLb2 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedLb2.State = dsBrowse then PedLb2.Edit;

                EdUltQts.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedLb2.Close;
        PedLb2.Open;

        PedLb2.Locate('CodEmp;DteRes;NumRes;SeqLb2',VarArrayOf([PedLb2CodEmp.Value,PedLb2DteRes.Value,PedLb2NumRes.Value,SeqLb2]),[LoPartialKey]);

        PedLib.Close;
        PedLib.Open;

        PedLb2.Next;

        EdUltQts.Enabled := False;

        EdUltQts.Font.Style := [fsBold];

        grLb2.SetFocus;

        end
     else
        fmsgErro('Quantidade Informada Maior que o Saldo a Liberar.',EdUltQts);

     end
  else
     begin

     EdUltQts.Enabled := False;

     EdUltQts.Font.Style := [fsBold];

     grLb2.SetFocus;

  end;
end;

procedure TfmManLib.RDprint1NewPage(Sender: TObject; Pagina: Integer);
begin
  inherited;

  rdprint1.impf(01,001,'PEDIDO SEPARADO',[EXPANDIDO, NORMAL]);
  
  rdprint1.impf(02,001,fReplicate('-',80),[NORMAL]);
  rdprint1.impf(03,001,'Pedido       : '+preString(IntToStr(quRes.FieldbyName('NumRes').AsInteger),7),[NORMAL, NEGRITO]);
  rdprint1.impf(03,075,'Data : '+DateToStr(quRes.FieldbyName('DteRes').AsDateTime),[NORMAL]);
  rdprint1.impf(03,111,'Hora : '+quRes.FieldbyName('HreRes').AsString,[NORMAL]);
  rdprint1.impf(04,001,'Vendedor     : '+preString(IntToStr(quRes.FieldbyName('CodVen').AsInteger),7)+' - '+NomVen,[NORMAL]);
  rdprint1.impf(05,001,'Cliente      : '+preString(IntToStr(quRes.FieldbyName('CodCli').AsInteger),7)+' - '+copy(NomCli,1,40),[NORMAL, NEGRITO]);
  rdprint1.impf(05,120,quRes.FieldbyName('UfeRes').AsString,[EXPANDIDO, NORMAL]);
  rdprint1.impf(06,001,'Entrega      : '+EndEn1,[NORMAL]);
  rdprint1.impf(07,001,'               '+EndEn2,[NORMAL]);
  rdprint1.impf(08,001,'               '+EndEn3,[NORMAL]);  

  rdprint1.impf(08,114,'Pagina No. '+fNumZeros(IntToStr(Pagina),3),[NORMAL]);

  rdprint1.impf(09,001,fReplicate('-',80),[NORMAL]);
  rdprint1.impf(10,001,'Nosso Codigo',[comp17]);
  rdprint1.imp(10,016,'Descricao');
  rdprint1.imp(10,078,'Quant');
  rdprint1.imp(10,086,'Preco Bruto');
  rdprint1.imp(10,099,'% Desc');
  rdprint1.imp(10,106,'% Acrs');
  rdprint1.imp(10,116,'Preco Liq');
  rdprint1.imp(10,128,'Total Item');
  rdprint1.imp(11,001,fReplicate('-',14));
  rdprint1.imp(11,016,fReplicate('-',55));
  rdprint1.imp(11,072,fReplicate('-',12));
  rdprint1.imp(11,085,fReplicate('-',12));
  rdprint1.imp(11,099,fReplicate('-',06));
  rdprint1.imp(11,106,fReplicate('-',06));
  rdprint1.imp(11,113,fReplicate('-',12));
  rdprint1.imp(11,126,fReplicate('-',12));

  Linha := 12;

end;

procedure TfmManLib.DsLb2DataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnTotLib.Caption := FormatFloat('###,###,##0.00',PedLibTotLib.Value);

  if PedLibQtsLib.Value > 0 then
     pnQtsLib.Caption := IntToStr(PedLibQtsLib.Value)
  else
     pnQtsLib.Caption := '0';
     
end;

end.
