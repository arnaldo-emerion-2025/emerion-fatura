unit ManPe3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Db, Wwdatsrc, Wwquery, DBFlEdit, StdCtrls, Mask, DBCtrls,
  hEdits, Grids, Wwdbigrd, Wwdbgrid, hGrid, hNavigator, ExtCtrls, Buttons,
  wwdblook, dxfPictureButton, RDprint, dxCntner, dxEditor, dxExEdtr,
  dxDBEdtr, dxDBELib, dxEdLib, AlignEdit, FShowPadrao,
  dxDBColorCurrencyEdit, dxDBColorEdit;

type
  TfmManPe3 = class(TfmShowPadrao)
    PedRe3: TwwQuery;
    DsRe3: TwwDataSource;
    PaintBox: TPaintBox;
    grRe3: ThGrid;
    PedRe3CODEMP: TIntegerField;
    PedRe3NUMRES: TIntegerField;
    PedRe3SEQRE3: TIntegerField;
    PedRe3PRARE3: TIntegerField;
    PedRe3VLPRE3: TFloatField;
    pnTit: TdxDBColorEdit;
    grTit: TPanel;
    Label11: TLabel;
    Label2: TLabel;
    UpRe3: TUpdateSQL;
    grPro: TdxDBGraphicEdit;
    quSQL: TwwQuery;
    RDprint1: TRDprint;
    Panel1: TPanel;
    EdPraRe3: TdxDBColorEdit;
    EdVlpRe3: TdxDBColorCurrencyEdit;
    PedRe3DTERES: TDateTimeField;
    PedRe3NRORE3: TIntegerField;
    Label9: TLabel;
    Label1: TLabel;
    quSQL1: TwwQuery;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure PedRe3NewRecord(DataSet: TDataSet);
    procedure EdPraRe3Exit(Sender: TObject);
    procedure grRe3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdPraRe3KeyPress(Sender: TObject; var Key: Char);
    procedure bRetornar;
    procedure bContinuar;
    procedure Panel1Exit(Sender: TObject);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  Linha : Integer;
  fmManPe3: TfmManPe3;
  sCabe,NomVen,NomAtd,NomCli,EndEn1,EndEn2,EndEn3 : string;

implementation

uses dxDemoUtils, BbMensag, Bbgeral, Bbfuncao, ManGDB, ManPed, PsqBan, AuxPsq;

{$R *.DFM}

procedure TfmManPe3.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 27 then begin

     if PedRe3.State <> dsBrowse then PedRe3.CancelUpdates;

     if EdPraRe3.Enabled then begin

        EdPraRe3.Enabled := False;

        EdPraRe3.Font.Style := [fsBold];

        grRe3.SetFocus;

        end
     else
        bRetornar;
  end;

  if key = 123 then begin

     if grRe3.Focused then bContinuar;

  end;
end;

procedure TfmManPe3.FormShow(Sender: TObject);
begin
  inherited;
  
  PedRe3.Close;
  PedRe3.Params[0].AsInteger  := fmManPed.PedResCodEmp.Value;
  PedRe3.Params[1].AsDateTime := fmManPed.PedResDteRes.Value;
  PedRe3.Params[2].AsInteger  := fmManPed.PedResNumRes.Value;
  PedRe3.Open;

  if fmManPed.PedResQtpRes.Value = 0 then begin

     PedRe3.Append;

     EdPraRe3.SetFocus;

     end
  else
     grRe3.SetFocus;
     
end;

procedure TfmManPe3.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPe3.PedRe3NewRecord(DataSet: TDataSet);
begin

  PedRe3.DisableControls;

  PedRe3PraRe3.Value := 0;
  PedRe3CodEmp.Value := fmManPed.PedResCodEmp.Value;
  PedRe3DteRes.Value := fmManPed.PedResDteRes.Value;
  PedRe3NumRes.Value := fmManPed.PedResNumRes.Value;
  PedRe3SeqRe3.Value := fmManPed.PedResSeqPar.Value + 1;
  PedRe3NroRe3.Value := fmManPed.PedResQtpRes.Value + 1;

  PedRe3.EnableControls;

  EdPraRe3.Enabled := True;

  EdPraRe3.Font.Style := [];

  EdPraRe3.SetFocus;

end;

procedure TfmManPe3.EdPraRe3Exit(Sender: TObject);
begin
  inherited;
  if (Tecla = 'UP') then begin

     if fmManPed.PedResQtpRes.Value > 0 then begin

        EdPraRe3.Enabled := False;

        EdPraRe3.Font.Style := [fsBold];

        if PedRe3.State <> dsBrowse then
           PedRe3.CancelUpdates
        else
           begin

           if not PedRe3.Bof then PedRe3.Prior;

        end;

        grRe3.SetFocus;

        end
     else
        EdPraRe3.SetFocus;

  end;
end;

procedure TfmManPe3.grRe3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
var
NroRe3 : integer;
begin

  if key = 13 then begin {Tecla - ENTER}

     EdPraRe3.Enabled := True;

     EdPraRe3.Font.Style := [];

     EdPraRe3.SetFocus;

  end;

  if key = 40 then begin {Tecla - Seta para Baixo}

     if PedRe3NroRe3.Value = fmManPed.PedResQtpRes.Value then PedRe3.Append;

  end;

  if key = 46 then begin {Tecla - DEL}

     if PedRe3CodEmp.Value > 0 then begin

        NroRe3 := PedRe3NroRe3.Value;

        PedRe3.Delete;

        with PedRe3 do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                if PedRe3.State <> dsBrowse then PedRe3.CancelUpdates;

                grRe3.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        PedRe3.Close;
        PedRe3.Open;

        fmManPed.PedRes.Close;
        fmManPed.PedRes.Open;

        if NroRe3 < fmManPed.PedResQtpRes.Value then
           PedRe3.Locate('CodEmp;NumRes;NroRe3',VarArrayOf([PedRe3CodEmp.Value,PedRe3NumRes.Value,NroRe3]),[LoPartialKey])
        else
           begin

           if fmManPed.PedResQtpRes.Value = 0 then
              PedRe3.Append
           else
              PedRe3.Last;

        end;
     end;
  end;
end;

procedure TfmManPe3.EdPraRe3KeyPress(Sender: TObject; var Key: Char);
begin
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPe3.bRetornar;
begin

  if PedRe3.State <> dsBrowse then PedRe3.CancelUpdates;

  close;

end;

procedure TfmManPe3.bContinuar;
var
EndTr3,sImprProd : string;
TotEst,ValDup,PrMedio : real;
CodMrc,Tam,Coluna,CodEit : integer;
NomMrc,NumPro,DscPro : string;
DesRe2,NomTra,EndTr1,EndTr2,sImprPed : string;
begin
  if fMsg('Confirma o Pedido ?','O') then begin

     {Pedido Posto}

     fmManPed.PedRes.Edit;

     fmManPed.PedResSitRes.Value := 'Aguardando Separacao de Estoque';

     with fmManPed.PedRes do begin

          fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

          try

             ApplyUpdates; {Tenta aplicar as alterações};

             fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

          except

             fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

             if fmManPed.PedRes.State <> dsBrowse then fmManPed.PedRes.CancelUpdates;

             fmManPed.Finalizar := 'N';

             grRe3.SetFocus;

             raise;

          end;

          CommitUpdates; {sucesso!, limpa o cache...}

     end;

     fmManPed.Finalizar := 'S';

     fmManPed.PedRes.Close;
     fmManPed.PedRes.Open;

     sImprPed := 'N';

     sImprProd := 'N';

     if fMsg('Confirma Impressão do Pedido ?','O') then sImprPed := 'S';

     if fmManPed.PedResAtuEst.Value = 'Sim' then
        if fMsg('Imprime via Deposito ?','O') then sImprProd := 'S';

     if (sImprPed = 'S') or (sImprProd = 'S') then begin

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinVen.ApeVen From FinVen'+
                     ' Where FinVen.CodVen = '''+IntToStr(fmManPed.PedResCodVen.Value)+'''';
             Open;

             NomVen := FieldbyName('ApeVen').AsString;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinAtd.ApeAtd From FinAtd'+
                     ' Where FinAtd.CodAtd = '''+IntToStr(fmManPed.PedResCodAtd.Value)+'''';
             Open;

             NomAtd := FieldbyName('ApeAtd').AsString;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinCli.NomCli From FinCli'+
                     ' Where FinCli.CodCli = '''+IntToStr(fmManPed.PedResCodCli.Value)+'''';
             Open;

             NomCli := FieldbyName('NomCli').AsString;

        end;

        with quSQL,SQL do begin

             Close;
             Text := ' Select FinTra.NomTra,'+
                     '        FinTra.TenTra,'+
                     '        FinTra.EndTra,'+
                     '        FinTra.NumTra,'+
                     '        FinTra.BaiTra,'+
                     '        FinTra.CidTra,'+
                     '        FinTra.SigUfe,'+
                     '        FinTra.CepTra,'+
                     '        FinTra.PrtTra,'+
                     '        FinTra.FonTra'+
                     ' From FinTra'+                     
                     ' Where FinTra.CodTra = '''+IntToStr(fmManPed.PedResCodTra.Value)+'''';
             Open;

             if Trim( quSql.FieldbyName('NomTra').AsString ) <> '' then begin

                NomTra := quSql.FieldbyName('NomTra').AsString;

                if Trim( FieldbyName('TenTra').AsString ) <> '' then
                   EndTr1 := Trim( FieldbyName('TenTra').AsString )+ ' ' +Trim( FieldbyName('EndTra').AsString )
                else
                   EndTr1 := Trim( FieldbyName('EndTra').AsString );

                if Trim( FieldbyName('NumTra').AsString ) <> '' then EndTr1 := EndTr1+ ', ' +Trim( FieldbyName('NumTra').AsString );

                if Trim( FieldbyName('BaiTra').AsString ) <> '' then EndTr1 := EndTr1+ ' Bairro ' +Trim( FieldbyName('BaiTra').AsString );

                EndTr2 := 'Cidade ' +Trim( quSql.FieldbyName('CidTra').AsString )+ ' UF ' +FieldbyName('SigUfe').AsString;

                if Trim( FieldbyName('CepTra').AsString ) <> '' then EndTr2 := EndTr2+ ' Cep: ' +copy(FieldbyName('CepTra').AsString,1,5)+ '-' +copy(FieldbyName('CepTra').AsString,6,3);

                EndTr3 := 'TeleFone '+ '(' +Trim( FieldbyName('PrtTra').AsString )+ ') ' +Trim( FieldbyName('FonTra').AsString );

             end;
        end;

        EndEn1 := Trim( fmManPed.PedResNomEnt.Value );

        if Trim( fmManPed.PedResTenCli.Value ) <> '' then
           EndEn2 := Trim( fmManPed.PedResTenCli.Value )+ ' ' +Trim( fmManPed.PedResEndCli.Value )
        else
           EndEn2 := Trim( fmManPed.PedResEndCli.Value );

        if Trim( fmManPed.PedResNumCli.Value ) <> '' then EndEn2 := EndEn2+ ', '+Trim( fmManPed.PedResNumCli.Value );

        if Trim( fmManPed.PedResBaiCli.Value ) <> '' then EndEn2 := EndEn2+ ' Bairro ' +Trim( fmManPed.PedResBaiCli.Value );

        EndEn3 := 'Cidade ' +Trim( fmManPed.PedResCidCli.Value )+ ' UF ' +fmManPed.PedResUfeCli.Value;

        if Trim( fmManPed.PedResCepCli.Value ) <> '' then EndEn3 := EndEn3 + ' Cep: ' +copy(fmManPed.PedResCepCli.Value,1,5)+ '-' +copy(fmManPed.PedResCepCli.Value,6,3);

        CodEit := fmManPed.PedResCodEmp.Value;

        if fmManPed.PedResLanEst.Value = 'Sim' then begin

           if fmManPed.PedResCodFil.Value > 0 then CodEit := fmManPed.PedResCodFil.Value

        end;

        if sImprPed = 'S' then
           sCabe := '1'
        else
           sCabe := '2';

        rdprint1.OpcoesPreview.Preview     := True;
        rdprint1.OpcoesPreview.PreviewZoom := 100;
        rdprint1.TamanhoQteLPP             := seis;
        rdprint1.UsaGerenciadorImpr        := True;

        if GFlgImp = 'Nao' then begin

           rdprint1.OpcoesPreview.BotaoGravar   := Inativo;
           rdprint1.OpcoesPreview.BotaoImprimir := Inativo;

        end;
           
        rdprint1.TamanhoQteColunas  := 136;
        rdprint1.FonteTamanhoPadrao := s17cpp;

        {Inicio...}
        with rdprint1 do begin

             abrir; {inicializa o arquivo de impressao...}

             if sImprPed = 'S' then begin

                TotEst := 0;

                with quSQL,SQL do begin

                     Close;
                     Text := ' Select PedRe2.CodGru,'+
                             '        PedRe2.CodSub,'+
                             '        PedRe2.CodPro,'+
                             '        PedRe2.DesRe2,'+
                             '        PedRe2.ObsRe2,'+                             
                             '        PedRe2.QtpRe2,'+
                             '        PedRe2.VluRe2,'+
                             '        PedRe2.DscRe2,'+
                             '        PedRe2.DspRe2,'+
                             '        PedRe2.PacRe2,'+
                             '        PedRe2.VlqRe2,'+
                             '        PedRe2.TotRe2'+                                                                                                                                                                                                                                                                     
                             ' From PedRe2'+
                             ' Where PedRe2.CodEmp = '''+ IntToStr(fmManPed.PedResCodEmp.Value)   +''''+
                             '   and PedRe2.DteRes = '''+ fDateToSQL(fmManPed.PedResDteRes.Value) +''''+
                             '   and PedRe2.NumRes = '''+ IntToStr(fmManPed.PedResNumRes.Value)   +''''+
                             ' Order by PedRe2.NroRe2';
                     Open;

                end;

                quSql.First;

                while not quSQL.Eof do begin

                      imp(Linha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString);

                      DesRe2 := copy(Trim(quSql.FieldbyName('DesRe2').AsString),1,55);

                      imp(Linha,016,DesRe2);
                      imp(Linha,072,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpRe2').AsFloat),12));
                      imp(Linha,085,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('VluRe2').AsFloat),12));
                      imp(Linha,099,PreString(FormatFloat('##0.00',fRound(quSql.FieldbyName('DscRe2').AsFloat + quSql.FieldbyName('DspRe2').AsFloat,2)),06));
                      imp(Linha,106,PreString(FormatFloat('##0.00',quSql.FieldbyName('PacRe2').AsFloat),06));
                      imp(Linha,113,PreString(FormatFloat('###,##0.0000',quSql.FieldbyName('VlqRe2').AsFloat),12));
                      imp(Linha,126,PreString(FormatFloat('#,###,##0.00',quSql.FieldbyName('TotRe2').AsFloat),12));

                      if Trim( quSQL.FieldbyName('ObsRe2').AsString ) <> '' then begin

                         Inc(Linha);

                         imp(Linha,016,Trim( quSql.FieldbyName('ObsRe2').AsString ));

                      end;

                      Linha := Linha + 1;

                      if Linha > 61 then rdprint1.novapagina;

                      quSQL.Next;

                end;

                imp(Linha,126,fReplicate('-',12));
                Linha := Linha + 1;

                if Linha > 61 then rdprint1.novapagina;

                imp(Linha,100,'Total de Itens        :');
                imp(Linha,126,PreString(FormatFloat('#,###,##0.00',fmManPed.PedResTotRes.Value),12));

                Linha := Linha + 2;

                if Linha > 61 then rdprint1.novapagina;

                imp(Linha,100,'Total ICMS Substituto :');
                imp(Linha,126,PreString(FormatFloat('#,###,##0.00',fmManPed.PedResTotSub.Value),12));

                Linha := Linha + 2;

                if Linha > 61 then rdprint1.novapagina;

                imp(Linha,100,'Total de IPI          :');
                imp(Linha,126,PreString(FormatFloat('#,###,##0.00',fmManPed.PedResTotIpi.Value),12));

                Linha := Linha + 2;

                if Linha > 61 then rdprint1.novapagina;

                imp(Linha,100,'Total do Pedido       :');
                imp(Linha,126,PreString(FormatFloat('#,###,##0.00',fmManPed.PedResTotGer.Value),12));

                Linha := Linha + 2;

                if Linha > 61 then rdprint1.novapagina;

                if GGUs_Id = 1 then begin

                   imp(Linha,100,'Custo Total           :');
                   imp(Linha,126,PreString(FormatFloat('#,###,##0.00',fmManPed.PedResTotCst.Value),12));

                   Linha := Linha + 3;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Acrescimos            :  '+PreString(FormatFloat('##0.00',fmManPed.PedResMedAcr.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',fmManPed.PedResTotAcr.Value),12),[NORMAL, NEGRITO]);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Descontos (Vendedor)  :  '+PreString(FormatFloat('##0.00',fmManPed.PedResMedDsc.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',fmManPed.PedResTotDsc.Value),12),[NORMAL, NEGRITO]);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Dsc. ICMS Obrigatorio :  '+PreString(FormatFloat('##0.00',fmManPed.PedResDscReg.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',fmManPed.PedResTotDsr.Value),12),[NORMAL, NEGRITO]);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Descontos (Gerencia)  :  '+PreString(FormatFloat('##0.00',fmManPed.PedResMedDco.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',fmManPed.PedResTotDco.Value),12),[NORMAL, NEGRITO]);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Desc. Promocional     :  '+PreString(FormatFloat('##0.00',fmManPed.PedResMedPrm.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',fmManPed.PedResTotDsp.Value),12),[NORMAL, NEGRITO]);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Total Comissao        :  '+PreString(FormatFloat('##0.00',fmManPed.PedResMedCom.Value),6)+'(%) '+PreString(FormatFloat('###,##0.00',fmManPed.PedResTotCom.Value),12),[NORMAL, NEGRITO]);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Margem                :  '+PreString(FormatFloat('##0.00',fmManPed.PedResTotRen.Value),6)+'(%) ',[NORMAL, NEGRITO]);
                   Inc(Linha);

                end;

                Linha := Linha + 1;

                if Linha > 61 then rdprint1.novapagina;

                if Trim( fmManPed.PedResSitRes.Value ) <> 'Aguardando Pagamento Antecipado' then begin

                   if (Trim( fmManPed.PedResSitRes.Value ) = 'Aguardando Liberacao do Depto Comercial')  or
                      (Trim( fmManPed.PedResSitRes.Value ) = 'Aguardando Liberacao do Depto Financeiro') then
                      impf(Linha,001,'Total de Itens        : '+PreString(IntToStr(fmManPed.PedResQtiRes.Value),08)+'        ******** SUJEITO A APROVACAO ********',[NORMAL, NEGRITO])
                   else
                      impf(Linha,001,'Total de Itens        : '+PreString(IntToStr(fmManPed.PedResQtiRes.Value),08),[NORMAL, NEGRITO]);

                   end
                else
                   impf(Linha,001,'Total de Itens        : '+PreString(IntToStr(fmManPed.PedResQtiRes.Value),08)+'       ******** AGUARDANDO PAGAMENTO ********',[NORMAL, NEGRITO]);

                Linha := Linha + 1;

                if Linha > 61 then rdprint1.novapagina;

                impf(Linha,001,fReplicate('-',80),[NORMAL]);
                Linha := Linha + 1;

                if Linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'INFORMACOES ADICIONAIS:',[NORMAL, NEGRITO]);
                Linha := Linha + 2;

                if Linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'Cond. de Pagto.:',[NORMAL, NEGRITO]);
                impf(Linha,031,'Prazo',[NORMAL, NEGRITO]);
                impf(Linha,042,'Valor Parcela',[NORMAL, NEGRITO]);
                impf(Linha,072,'Prazo',[NORMAL, NEGRITO]);
                impf(Linha,083,'Valor Parcela',[NORMAL, NEGRITO]);

                Linha := Linha + 2;

                if Linha > 61 then rdprint1.novapagina;

                with quSQL,SQL do begin

                     Close;
                     Text := ' Select * From PedRe3'+
                             ' Where PedRe3.CodEmp = '''+ IntToStr(fmManPed.PedResCodEmp.Value)   +''''+
                             '   and PedRe3.DteRes = '''+ fDateToSQL(fmManPed.PedResDteRes.Value) +''''+
                             '   and PedRe3.NumRes = '''+ IntToStr(fmManPed.PedResNumRes.Value)   +''''+
                             ' Order by PedRe3.NroRe3';
                     Open;
                     First;

                end;

                Coluna  := 31;
                PrMedio := 0;

                while not quSQL.Eof do begin

                      impf(Linha,Coluna+00,PreString(IntToStr(quSql.FieldbyName('PraRe3').AsInteger),5),[NORMAL, NEGRITO]);
                      impf(Linha,Coluna+09,PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpRe3').AsFloat),14),[NORMAL, NEGRITO]);

                      if coluna = 31 then
                         Coluna := Coluna + 41
                      else
                         begin

                         coluna := 31;

                         Linha := Linha + 1;

                      end;

                      PrMedio := PrMedio + quSql.FieldbyName('PraRe3').AsInteger;

                      quSql.Next;

                      if Linha > 61 then rdprint1.novapagina;

                end;

                Linha := Linha + 2;

                if Linha > 61 then rdprint1.novapagina;

                if fmManPed.PedResQtpRes.Value > 0 then
                   PrMedio := PrMedio / StrToFloat(IntToStr(fmManPed.PedResQtpRes.Value))
                else
                   PrMedio := 0;

                impf(Linha,001,'Prazo Medio : '+FormatFloat('##0.00',PrMedio)+' Dias',[NORMAL, NEGRITO]);

                Linha := Linha + 1;

                if Linha > 61 then rdprint1.novapagina;

                impf(Linha,001,fReplicate('-',80),[NORMAL]);

                Linha := Linha + 2;

                if Linha > 61 then rdprint1.novapagina;

                if fmManPed.PedResCodTra.Value > 0 then begin

                   impf(Linha,001,'Transportadora : '+preString(IntToStr(fmManPed.PedResCodTra.Value),7)+' - '+NomTra,[NORMAL, NEGRITO]);
                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'                 '+EndTr1,[NORMAL, NEGRITO]);
                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'                 '+EndTr2,[NORMAL, NEGRITO]);
                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'                 '+EndTr3,[NORMAL, NEGRITO]);

                   end
                else
                   impf(Linha,001,'Transportadora : ',[NORMAL, NEGRITO]);

                Linha := Linha + 2;

                if Linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'Observacoes    : ',[NORMAL,NEGRITO]);
                impf(Linha,030,copy(fmManPed.PedResObsRes.Value,001,040),[NORMAL]);

                if Trim( copy(fmManPed.PedResObsRes.Value,041,040) ) <> '' then begin

                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,030,copy(fmManPed.PedResObsRes.Value,041,040),[NORMAL]);

                end;

                if Trim( copy(fmManPed.PedResObsRes.Value,081,040) ) <> '' then begin

                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,030,copy(fmManPed.PedResObsRes.Value,081,040),[NORMAL]);

                end;

                if Trim( copy(fmManPed.PedResObsRes.Value,121,040) ) <> '' then begin

                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,030,copy(fmManPed.PedResObsRes.Value,121,040),[NORMAL]);

                end;

                if Trim( copy(fmManPed.PedResObsRes.Value,161,040) ) <> '' then begin

                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,030,copy(fmManPed.PedResObsRes.Value,161,040),[NORMAL]);

                end;

                if Trim( copy(fmManPed.PedResObsRes.Value,201,040) ) <> '' then begin

                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,030,copy(fmManPed.PedResObsRes.Value,201,040),[NORMAL]);

                end;

                Linha := Linha + 4;

                if Linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'Data : ___/___/_____ Nota : __________ Ass. CPD : ______________________________',[NORMAL, NEGRITO]);

             end;

             if sImprProd = 'S' then begin

                sCabe := '2';

                if sImprPed = 'S' then NovaPagina;

                with quSQL,SQL do begin

                     Close;
                     Text := ' Select PedRe2.CodEmp,'+
                             '        PedRe2.CodClp,'+
                             '        PedRe2.CodGru,'+
                             '        PedRe2.CodSub,'+
                             '        PedRe2.CodPro,'+
                             '        PedRe2.CodUnd,'+
                             '        PedRe2.QtpRe2'+
                             ' From PedRe2,EstQte'+
                             ' Where PedRe2.CodEmp = :CodEmp'+
                             '   and PedRe2.DteRes = :DteRes'+
                             '   and PedRe2.NumRes = :NumRes'+
                             '   and EstQte.CodEmp = :CodEit'+
                             '   and EstQte.CodClp = PedRe2.CodClp'+
                             '   and EstQte.CodGru = PedRe2.CodGru'+
                             '   and EstQte.CodSub = PedRe2.CodSub'+
                             '   and EstQte.CodPro = PedRe2.CodPro'+
                             '   and EstQte.CodTam = PedRe2.CodTam'+
                             '   and EstQte.CodCor = PedRe2.CodCor'+
                             '   and (EstQte.QtdQte - (EstQte.QtrQte + EstQte.QtdRma)) >= 0'+
                             ' Order by PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';

                     with Params do begin

                          Params[0].AsInteger  := fmManPed.PedResCodEmp.Value;
                          Params[1].AsDateTime := fmManPed.PedResDteRes.Value;
                          Params[2].AsInteger  := fmManPed.PedResNumRes.Value;
                          Params[3].AsInteger  := CodEit;

                     end;

                     Open;

                end;

                quSql.First;

                if quSQL.FieldbyName('CodEmp').AsInteger > 0 then begin

                   while not quSQL.Eof do begin

                         with quSQL1,SQL do begin

                              Close;
                              Text := ' Select EstPro.CodMrc,'+
                                      '        EstPro.NumPro,'+
                                      '        EstPro.DscPro'+
                                      ' From EstPro'+
                                      ' Where EstPro.CodClp = :CodClp'+
                                      '   and EstPro.CodGru = :CodGru'+
                                      '   and EstPro.CodSub = :CodSub'+
                                      '   and EstPro.CodPro = :CodPro';                                                                                  

                              with Params do begin

                                   Params[0].AsString := quSql.FieldbyName('CodClp').AsString;
                                   Params[1].AsString := quSql.FieldbyName('CodGru').AsString;
                                   Params[2].AsString := quSql.FieldbyName('CodSub').AsString;
                                   Params[3].AsString := quSql.FieldbyName('CodPro').AsString;

                              end;

                              Open;

                              NumPro := FieldbyName('NumPro').AsString;
                              DscPro := FieldbyName('DscPro').AsString;
                              CodMrc := FieldbyName('CodMrc').AsInteger;

                         end;

                         with quSQL1,SQL do begin

                              Close;
                              Text := ' Select EstMrc.NomMrc From EstMrc Where EstMrc.CodMrc = :CodMrc';

                              with Params do begin

                                   Params[0].AsInteger := CodMrc;

                              end;

                              Open;

                              NomMrc := FieldbyName('NomMrc').AsString;

                         end;

                         impf(Linha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString,[NORMAL]);

                         impf(Linha,027,copy(Trim( DscPro ),1,40),[NORMAL]);

                         if fEncDecimal(quSql.FieldbyName('QtpRe2').AsFloat) > 0 then
                            impf(Linha,097,Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpRe2').AsFloat),12),[NORMAL])
                         else
                            impf(Linha,097,Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('QtpRe2').AsFloat),12),[NORMAL]);

                         impf(Linha,118,'________',[NORMAL]);

                         impf(Linha,134,Trim(quSQL.FieldbyName('CodUnd').AsString),[NORMAL]);

                         Inc(Linha);

                         if Trim(fmManPed.GImpMrc) = 'Sim' then begin

                            if Trim( NomMrc ) <> '' then begin

                               if Trim( NumPro ) <> '' then
                                  impf(Linha,027,Trim( NomMrc )+' - '+Trim( NumPro ),[NORMAL])
                               else
                                  impf(Linha,027,Trim( NomMrc ),[NORMAL]);

                               end
                            else
                               begin

                               if Trim( NumPro ) <> '' then impf(Linha,027,Trim( NumPro ),[NORMAL]);

                            end;

                            Inc(Linha);

                         end;

                         quSQL.Next;

                         if not quSQL.EOF then begin
                            
                            if Trim(fmManPed.GImpTra) = 'Sim' then begin

                               impf(Linha,027,'-----------------------------------------------------',[NORMAL]);

                               Inc(Linha);

                            end;
                         end;

                         if Linha > 61 then rdprint1.novapagina;

                   end;

                   Inc(Linha);

                end;

                with quSQL,SQL do begin

                     Close;
                     Text := ' Select PedRe2.CodEmp,'+
                             '        PedRe2.CodClp,'+
                             '        PedRe2.CodGru,'+
                             '        PedRe2.CodSub,'+
                             '        PedRe2.CodPro,'+
                             '        PedRe2.CodUnd,'+
                             '        PedRe2.QtpRe2'+
                             ' From PedRe2,EstQte'+
                             ' Where PedRe2.CodEmp = :CodEmp'+
                             '   and PedRe2.DteRes = :DteRes'+
                             '   and PedRe2.NumRes = :NumRes'+
                             '   and EstQte.CodEmp = :CodEit'+
                             '   and EstQte.CodClp = PedRe2.CodClp'+
                             '   and EstQte.CodGru = PedRe2.CodGru'+
                             '   and EstQte.CodSub = PedRe2.CodSub'+
                             '   and EstQte.CodPro = PedRe2.CodPro'+
                             '   and EstQte.CodTam = PedRe2.CodTam'+
                             '   and EstQte.CodCor = PedRe2.CodCor'+
                             '   and (EstQte.QtdQte - (EstQte.QtrQte + EstQte.QtdRma)) < 0'+
                             ' Order by PedRe2.CodGru,PedRe2.CodSub,PedRe2.CodPro';

                     with Params do begin

                          Params[0].AsInteger  := fmManPed.PedResCodEmp.Value;
                          Params[1].AsDateTime := fmManPed.PedResDteRes.Value;
                          Params[2].AsInteger  := fmManPed.PedResNumRes.Value;
                          Params[3].AsInteger  := CodEit;

                     end;

                     Open;

                end;

                quSql.First;

                if quSQL.FieldbyName('CodEmp').AsInteger > 0 then begin

                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   rdprint1.impf(Linha,001,'Produtos Abaixo do Estoque Disponivel',[NORMAL,NEGRITO]);
                   Inc(Linha);

                   rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   while not quSQL.Eof do begin

                         with quSQL1,SQL do begin

                              Close;
                              Text := ' Select EstPro.CodMrc,'+
                                      '        EstPro.NumPro,'+
                                      '        EstPro.DscPro'+
                                      ' From EstPro'+
                                      ' Where EstPro.CodClp = :CodClp'+
                                      '   and EstPro.CodGru = :CodGru'+
                                      '   and EstPro.CodSub = :CodSub'+
                                      '   and EstPro.CodPro = :CodPro';                                                                                  

                              with Params do begin

                                   Params[0].AsString := quSql.FieldbyName('CodClp').AsString;
                                   Params[1].AsString := quSql.FieldbyName('CodGru').AsString;
                                   Params[2].AsString := quSql.FieldbyName('CodSub').AsString;
                                   Params[3].AsString := quSql.FieldbyName('CodPro').AsString;

                              end;

                              Open;

                              NumPro := FieldbyName('NumPro').AsString;
                              DscPro := FieldbyName('DscPro').AsString;
                              CodMrc := FieldbyName('CodMrc').AsInteger;

                         end;

                         with quSQL1,SQL do begin

                              Close;
                              Text := ' Select EstMrc.NomMrc From EstMrc Where EstMrc.CodMrc = :CodMrc';

                              with Params do begin

                                   Params[0].AsInteger := CodMrc;

                              end;

                              Open;

                              NomMrc := FieldbyName('NomMrc').AsString;

                         end;

                         impf(Linha,001,quSql.FieldbyName('CodGru').AsString+'.'+quSql.FieldbyName('CodSub').AsString+'.'+quSql.FieldbyName('CodPro').AsString,[NORMAL]);

                         impf(Linha,027,copy(Trim( DscPro ),1,40),[NORMAL]);

                         if fEncDecimal(quSql.FieldbyName('QtpRe2').AsFloat) > 0 then
                            impf(Linha,097,Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpRe2').AsFloat),12),[NORMAL])
                         else
                            impf(Linha,097,Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('QtpRe2').AsFloat),12),[NORMAL]);

                         impf(Linha,118,'________',[NORMAL]);

                         impf(Linha,134,Trim(quSQL.FieldbyName('CodUnd').AsString),[NORMAL]);

                         Inc(Linha);

                         if Trim(fmManPed.GImpMrc) = 'Sim' then begin
                            
                            if Trim( NomMrc ) <> '' then begin

                               if Trim( NumPro ) <> '' then
                                  impf(Linha,027,Trim( NomMrc )+' - '+Trim( NumPro ),[NORMAL])
                               else
                                  impf(Linha,027,Trim( NomMrc ),[NORMAL]);

                               end
                            else
                               begin

                               if Trim( NumPro ) <> '' then impf(Linha,027,Trim( NumPro ),[NORMAL]);

                            end;

                            Inc(Linha);

                         end;
                         
                         quSQL.Next;

                         if not quSQL.EOF then begin

                            if Trim(fmManPed.GImpTra) = 'Sim' then begin

                               impf(Linha,027,'-----------------------------------------------------',[NORMAL]);

                               Inc(Linha);

                            end;
                         end;

                         if Linha > 61 then rdprint1.novapagina;

                   end;
                end;

                Inc(Linha);
                Inc(Linha);

                if Linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'Total de Itens : '+PreString(IntToStr(fmManPed.PedResQtiRes.Value),08),[NORMAL, NEGRITO]);

                Inc(Linha);

                if Linha > 61 then rdprint1.novapagina;

                rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);

                Inc(Linha);
                Inc(Linha);

                if Linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'INFORMACOES ADICIONAIS:',[NORMAL, NEGRITO]);

                if Trim(fmManPed.GImpFin) = 'Sim' then begin

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

                   with quSQL,SQL do begin

                        Close;
                        Text := ' Select * From PedRe3'+
                                ' Where PedRe3.CodEmp = '''+ IntToStr(fmManPed.PedResCodEmp.Value) +''''+
                                '   and PedRe3.DteRes = '''+ fDateToSQL(fmManPed.PedResDteRes.Value) +''''+
                                '   and PedRe3.NumRes = '''+ IntToStr(fmManPed.PedResNumRes.Value) +''''+
                                ' Order by PedRe3.SeqRe3';
                        Open;
                        First;

                   end;

                   Coluna  := 31;
                   PrMedio := 0;

                   while not quSQL.Eof do begin

                         impf(Linha,Coluna+00,PreString(IntToStr(quSql.FieldbyName('PraRe3').AsInteger),5),[NORMAL, NEGRITO]);
                         impf(Linha,Coluna+09,PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpRe3').AsFloat),14),[NORMAL, NEGRITO]);

                         if coluna = 31 then
                            Coluna := Coluna + 41
                         else
                            begin

                            coluna := 31;

                            Inc(Linha);

                         end;

                         PrMedio := PrMedio + quSql.FieldbyName('PraRe3').AsInteger;

                         quSql.Next;

                         if Linha > 61 then rdprint1.novapagina;

                   end;

                   Inc(Linha);
                   Inc(Linha);

                   if Linha > 61 then rdprint1.novapagina;

                   if fmManPed.PedResQtpRes.Value > 0 then
                      PrMedio := PrMedio / StrToFloat(IntToStr(fmManPed.PedResQtpRes.Value))
                   else
                      PrMedio := 0;

                   impf(Linha,001,'Prazo Medio : '+FormatFloat('##0.00',PrMedio)+' Dias',[NORMAL, NEGRITO]);

                end;

                Inc(Linha);
                Inc(Linha);

                if Linha > 61 then rdprint1.novapagina;

                if fmManPed.PedResCodTra.Value > 0 then begin

                   impf(Linha,001,'Transportadora : '+preString(IntToStr(fmManPed.PedResCodTra.Value),7)+' - '+NomTra,[NORMAL, NEGRITO]);
                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'                 '+EndTr1,[NORMAL, NEGRITO]);
                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'                 '+EndTr2,[NORMAL, NEGRITO]);
                   Linha := Linha + 1;

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'                 '+EndTr3,[NORMAL, NEGRITO]);

                   end
                else
                   impf(Linha,001,'Transportadora : ',[NORMAL, NEGRITO]);
                      
                Inc(Linha);
                Inc(Linha);

                if Trim(fmManPed.GImpObs) = 'Sim' then begin

                   if Linha > 61 then rdprint1.novapagina;

                   impf(Linha,001,'Observacoes    : ',[NORMAL,NEGRITO]);
                   impf(Linha,030,copy(fmManPed.PedResObsRes.Value,001,040),[NORMAL]);

                   if Trim( copy(fmManPed.PedResObsRes.Value,041,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,030,copy(fmManPed.PedResObsRes.Value,041,040),[NORMAL]);

                   end;

                   if Trim( copy(fmManPed.PedResObsRes.Value,081,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,030,copy(fmManPed.PedResObsRes.Value,081,040),[NORMAL]);

                   end;

                   if Trim( copy(fmManPed.PedResObsRes.Value,121,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,030,copy(fmManPed.PedResObsRes.Value,121,040),[NORMAL]);

                   end;

                   if Trim( copy(fmManPed.PedResObsRes.Value,161,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,030,copy(fmManPed.PedResObsRes.Value,161,040),[NORMAL]);

                   end;

                   if Trim( copy(fmManPed.PedResObsRes.Value,201,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,030,copy(fmManPed.PedResObsRes.Value,201,040),[NORMAL]);

                   end;

                   Inc(Linha);
                   Inc(Linha);

                end;

                if Linha > 61 then rdprint1.novapagina;

                impf(Linha,001,'Separado Por   : ______________________ Conferido Por : ______________________',[NORMAL, NEGRITO]);

             end;

             fechar;  {Finaliza e inicia impressao ou preview}

        end;
     end;

     close;

  end;
end;

procedure TfmManPe3.Panel1Exit(Sender: TObject);
var
SeqRe3 : integer;
begin
  if PedRe3.State <> dsBrowse then begin

     if PedRe3PraRe3.Value >= 0 then begin

        if PedRe3.State = dsInsert then begin

           with PedRe3 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedRe3.State = dsBrowse then PedRe3.Edit;

                   EdPraRe3.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedRe3.Close;
           PedRe3.Open;

           fmManPed.PedRes.Close;
           fmManPed.PedRes.Open;

           PedRe3.Append;

           EdPraRe3.SetFocus;

           end
        else
           begin

           SeqRe3 := PedRe3SeqRe3.Value;

           with PedRe3 do begin

                fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                try

                   ApplyUpdates; {Tenta aplicar as alterações};

                   fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                except

                   fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                   if PedRe3.State = dsBrowse then PedRe3.Edit;

                   EdPraRe3.SetFocus;

                   raise;

                end;

                CommitUpdates; {sucesso!, limpa o cache...}

           end;

           PedRe3.Close;
           PedRe3.Open;

           fmManPed.PedRes.Close;
           fmManPed.PedRes.Open;

           PedRe3.Locate('CodEmp;DteRes;NumRes;SeqRe3',VarArrayOf([PedRe3CodEmp.Value,PedRe3DteRes.Value,PedRe3NumRes.Value,SeqRe3]),[LoPartialKey]);

           if PedRe3NroRe3.Value = fmManPed.PedResQtpRes.Value then
              PedRe3.Append
           else
              begin

              EdPraRe3.Enabled := False;

              EdPraRe3.Font.Style := [fsBold];

              grRe3.SetFocus;

           end;
        end;

        end
     else
        fmsgErro('Campo de Preenchimento Obrigatorio não Informado.',EdPraRe3);
        
     end
  else
     begin

     EdPraRe3.Enabled := False;

     EdPraRe3.Font.Style := [fsBold];

     grRe3.SetFocus;

  end;
end;

procedure TfmManPe3.RDprint1NewPage(Sender: TObject; Pagina: Integer);
begin

  Linha := 1;

  if sCabe = '1' then begin

     rdprint1.impf(Linha,001,'GERENCIA (PD)',[EXPANDIDO, NORMAL]);

     Inc(Linha);

     if fmManPed.PedResPedAnt.Value = 'Nao' then
        rdprint1.impf(Linha,001,'Entregar em '+DateToStr(fmManPed.PedResDtfRes.Value),[EXPANDIDO, NORMAL])
     else
        rdprint1.impf(Linha,001,'Entregar em '+DateToStr(fmManPed.PedResDtfRes.Value)+ ' - ANTECIPADO',[EXPANDIDO, NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Pedido       : '+preString(IntToStr(fmManPed.PedResNumRes.Value),7),[NORMAL, NEGRITO]);
     rdprint1.impf(Linha,075,'Data : '+DateToStr(fmManPed.PedResDteRes.Value),[NORMAL]);
     rdprint1.impf(Linha,111,'Hora : '+fmManPed.PedResHreRes.Value,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Vendedor     : '+preString(IntToStr(fmManPed.PedResCodVen.Value),7)+' - '+NomVen,[NORMAL]);

     Inc(Linha);

     if fmManPed.PedResCodAtd.Value > 0 then begin

        rdprint1.impf(Linha,001,'Atendente    : '+preString(IntToStr(fmManPed.PedResCodAtd.Value),7)+' - '+NomAtd,[NORMAL]);

        Inc(Linha);

     end;

     rdprint1.impf(Linha,001,'Cliente      : '+preString(IntToStr(fmManPed.PedResCodCli.Value),7)+' - '+copy(NomCli,1,40),[NORMAL, NEGRITO]);
     rdprint1.impf(Linha,120,fmManPed.PedResUfeRes.Value,[EXPANDIDO, NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Entrega      : '+EndEn1,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'               '+EndEn2,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'               '+EndEn3,[NORMAL]);

     Inc(Linha);

     if Trim( fmManPed.PedResCgcCli.Value ) <> '' then begin

        if Length( Trim(fmManPed.PedResCgcCli.Value) ) > 11 then
           rdprint1.impf(Linha,001,'CNPJ         : '+fFormatCgcCpf(fmManPed.PedResCgcCli.Value),[NORMAL, NEGRITO])
        else
           rdprint1.impf(Linha,001,'CPF          : '+fFormatCgcCpf(fmManPed.PedResCgcCli.Value),[NORMAL, NEGRITO]);

        end
     else
        rdprint1.impf(Linha,001,'CNPJ/CPF     : ',[NORMAL, NEGRITO]);

     rdprint1.impf(Linha,114,'Pagina No. '+fNumZeros(IntToStr(Pagina),3),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Nosso Codigo',[comp17]);
     rdprint1.imp(Linha,016,'Descricao');
     rdprint1.imp(Linha,078,'Quant');
     rdprint1.imp(Linha,086,'Preco Bruto');
     rdprint1.imp(Linha,099,'% Desc');
     rdprint1.imp(Linha,106,'% Acrs');
     rdprint1.imp(Linha,116,'Preco Liq');
     rdprint1.imp(Linha,128,'Total Item');

     Inc(Linha);

     rdprint1.imp(Linha,001,fReplicate('-',14));
     rdprint1.imp(Linha,016,fReplicate('-',55));
     rdprint1.imp(Linha,072,fReplicate('-',12));
     rdprint1.imp(Linha,085,fReplicate('-',12));
     rdprint1.imp(Linha,099,fReplicate('-',06));
     rdprint1.imp(Linha,106,fReplicate('-',06));
     rdprint1.imp(Linha,113,fReplicate('-',12));
     rdprint1.imp(Linha,126,fReplicate('-',12));

     Inc(Linha);

     end
  else
     begin

     rdprint1.impf(Linha,001,'DEPOSITO',[EXPANDIDO, NORMAL]);

     Inc(Linha);

     if fmManPed.PedResPedAnt.Value = 'Nao' then
        rdprint1.impf(Linha,001,'Entregar em '+DateToStr(fmManPed.PedResDtfRes.Value),[EXPANDIDO, NORMAL])
     else
        rdprint1.impf(Linha,001,'Entregar em '+DateToStr(fmManPed.PedResDtfRes.Value)+ ' - ANTECIPADO',[EXPANDIDO, NORMAL]);

     rdprint1.impf(Linha,114,'Pagina No. '+fNumZeros(IntToStr(Pagina),3),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Pedido       : '+preString(IntToStr(fmManPed.PedResNumRes.Value),7),[NORMAL, NEGRITO]);
     rdprint1.impf(Linha,075,'Data : '+DateToStr(fmManPed.PedResDteRes.Value),[NORMAL]);
     rdprint1.impf(Linha,111,'Hora : '+fmManPed.PedResHreRes.Value,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Vendedor     : '+preString(IntToStr(fmManPed.PedResCodVen.Value),7)+' - '+NomVen,[NORMAL]);

     Inc(Linha);

     if fmManPed.PedResCodAtd.Value > 0 then begin

        rdprint1.impf(Linha,001,'Atendente    : '+preString(IntToStr(fmManPed.PedResCodAtd.Value),7)+' - '+NomAtd,[NORMAL]);

        Inc(Linha);

     end;

     rdprint1.impf(Linha,001,'Cliente      : '+preString(IntToStr(fmManPed.PedResCodCli.Value),7)+' - '+copy(NomCli,1,40),[NORMAL, NEGRITO]);
     rdprint1.impf(Linha,120,fmManPed.PedResUfeRes.Value,[EXPANDIDO, NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Entrega      : '+EndEn1,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'               '+EndEn2,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'               '+EndEn3,[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,fReplicate('-',80),[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,'Nosso Codigo',[NORMAL]);
     rdprint1.impf(Linha,027,'Descricao',[NORMAL]);
     rdprint1.impf(Linha,109,'Quant',[NORMAL]);
     rdprint1.impf(Linha,119,'Separado',[NORMAL]);
     rdprint1.impf(Linha,134,'UN',[NORMAL]);

     Inc(Linha);

     rdprint1.impf(Linha,001,fReplicate('-',14),[NORMAL]);
     rdprint1.impf(Linha,027,fReplicate('-',40),[NORMAL]);
     rdprint1.impf(Linha,097,fReplicate('-',12),[NORMAL]);
     rdprint1.impf(Linha,118,fReplicate('-',09),[NORMAL]);
     rdprint1.impf(Linha,134,fReplicate('-',02),[NORMAL]);

     Inc(Linha);

  end;
end;

end.
