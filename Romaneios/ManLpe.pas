unit ManLpe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, dxColorEdit;

type
  TfmManLpe = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label2: TLabel;
    Bevel2: TBevel;
    grLib: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    grOrc: ThGrid;
    quSql: TwwQuery;
    PedLib: TwwQuery;
    PedLibNUMRES: TIntegerField;
    PedLibDTELIB: TDateTimeField;
    PedLibHRELIB: TStringField;
    PedLibNOMCLI: TStringField;
    PedLibTOTGER: TFloatField;
    DsLib: TwwDataSource;
    UpLib: TUpdateSQL;
    FatOrc: TwwQuery;
    DsOrc: TwwDataSource;
    UpOrc: TUpdateSQL;
    FatOrcCODEMP: TIntegerField;
    FatOrcNUMRES: TIntegerField;
    FatOrcDTEORC: TDateTimeField;
    FatOrcHREORC: TStringField;
    FatOrcSEQITE: TIntegerField;
    FatOrcQTPORC: TIntegerField;
    FatOrcTOTORC: TFloatField;
    FatOrcTOTGER: TFloatField;
    FatOrcCODUSU: TIntegerField;
    FatOrcNOMUSU: TStringField;
    bLiberar: TSpeedButton;
    bEditar: TSpeedButton;
    bEmitir: TSpeedButton;
    FatOrcDTERES: TDateTimeField;
    FatOrcSEQLIB: TIntegerField;
    FatOrcSEQORC: TIntegerField;
    pnCodCli: TPanel;
    Panel1: TPanel;
    EdPsqNumRes: TdxColorEdit;
    pnSitOrc: TPanel;
    FatOrcTOTFRT: TFloatField;
    FatOrcTOTSEG: TFloatField;
    FatOrcTOTDES: TFloatField;
    FatOrcLANORC: TFloatField;
    FatOrcSLDORC: TFloatField;
    FatOrcFLGAVI: TStringField;
    FatOrcFLGTMO: TStringField;
    FatOrcCODTMO: TIntegerField;
    FatOrcTIPTMO: TStringField;
    FatOrcDTCTMO: TDateTimeField;
    FatOrcVALTMO: TFloatField;
    FatOrcQTIORC: TIntegerField;
    FatOrcHRECOR: TStringField;
    FatOrcDTECOR: TDateTimeField;
    FatOrcUSUCOR: TIntegerField;
    FatOrcTRASDA: TIntegerField;
    FatOrcDTESDA: TDateTimeField;
    FatOrcHRESDA: TStringField;
    FatOrcUSUSDA: TIntegerField;
    FatOrcOBSSDA: TStringField;
    FatOrcCODVEI: TIntegerField;
    FatOrcDTEENT: TDateTimeField;
    FatOrcHREENT: TStringField;
    FatOrcUSUENT: TIntegerField;
    FatOrcOBSENT: TStringField;
    FatOrcOBSCOR: TMemoField;
    FatOrcOBSORC: TMemoField;
    FatOrcSQPORC: TIntegerField;
    FatOrcQTDVOL: TIntegerField;
    FatOrcFLGATU: TStringField;
    FatOrcFLGIMP: TStringField;
    dbRes: TdxDBGraphicEdit;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    FatOrcSITORC: TStringField;
    bImprimir: TSpeedButton;
    quLb2: TwwQuery;
    quRes: TwwQuery;
    quLib: TwwQuery;
    RDprint1: TRDprint;
    bAtualizar: TBitBtn;
    FatOrcDTEATU: TDateTimeField;
    FatOrcHREATU: TStringField;
    FatOrcUSUATU: TIntegerField;
    FatOrcNROCOL: TStringField;
    PedLibCODEMP: TIntegerField;
    PedLibDTERES: TDateTimeField;
    PedLibSEQLIB: TIntegerField;
    PedLibTOTLIB: TFloatField;
    PedLibTOTIPI: TFloatField;
    PedLibCODCLI: TIntegerField;
    PedLibSITLIB: TStringField;
    PedLibPEDTIP: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure DsLibDataChange(Sender: TObject; Field: TField);
    procedure DsFatDataChange(Sender: TObject; Field: TField);
    procedure bEditarClick(Sender: TObject);
    procedure bEmitirClick(Sender: TObject);
    procedure DsOrcDataChange(Sender: TObject; Field: TField);
    procedure bLiberarClick(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure bAtualizarClick(Sender: TObject);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    {Public declarations}
    DteRes : TDateTime;
    CodEmp,NumRes,SeqLib,SeqOrc : integer;
  end;

var
  Linha : integer;
  NomVen : string;
  NomCli : string;
  EndEn1 : string;
  EndEn2 : string;
  NroPag : integer;
  fmManLpe: TfmManLpe;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManEpe;

{$R *.DFM}

procedure TfmManLpe.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 113 then bLiberar.OnClick(Sender);

  if key = 114 then bEditar.OnClick(Sender);

  if key = 115 then bEmitir.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

end;

procedure TfmManLpe.FormShow(Sender: TObject);
begin
  inherited;

  EdPsqNumRes.SetFocus;

  if GFlgAce = 'Sim' then begin

     with PedLib,SQL do begin

          Close;
          Text := ' Select PedLib.CodEmp,'+
                  '        PedLib.DteRes,'+
                  '        PedLib.NumRes,'+
                  '        PedLib.SeqLib,'+
                  '        PedLib.CodCli,'+
                  '        PedLib.PedTip,'+
                  '        PedLib.DteLib,'+
                  '        PedLib.HreLib,'+
                  '        PedLib.TotLib,'+
                  '        PedLib.TotIpi,'+
                  '        PedLib.TotGer,'+
                  '        PedLib.SitLib,'+
                  '        FinCli.NomCli'+
                  ' From PedLib LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'+
                  ' Where ( PedLib.SitLib = '''+ 'Concluido' +''' or PedLib.SitLib = '''+ 'Faturando' +''' )'+
                  '   and PedLib.SitLib = '+ QuotedStr('Transferencias') +
                  ' Order by PedLib.NumRes';
          Open;

     end;
  end;
end;

procedure TfmManLpe.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManLpe.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManLpe := nil;
end;

procedure TfmManLpe.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManLpe.DsLibDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if PedLibCodCli.Value > 0 then
     pnCodCli.Caption := ' Código do Cliente : ' + FNumZeros(IntToStr(PedLibCodCli.Value),7)
  else
     pnCodCli.Caption := ' Código do Cliente : ';
     
end;

procedure TfmManLpe.DsFatDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnSitOrc.Caption := FatOrcSitOrc.Value;
end;

procedure TfmManLpe.bEditarClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if FatOrcNumRes.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManEpe then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existem Romaneios em Andamento.','E');

           fmManEpe.WindowState := wsNormal;
           fmManEpe.BringToFront;

           end
        else
           begin

           CodEmp := FatOrcCodEmp.Value;
           DteRes := FatOrcDteRes.Value;
           NumRes := FatOrcNumRes.Value;
           SeqLib := FatOrcSeqLib.Value;
           SeqOrc := FatOrcSeqOrc.Value;

           fmManEpe := TfmManEpe.Create(Self);
           fmManEpe.Show;

        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManLpe.bEmitirClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedLibCodEmp.Value > 0 then begin

        if PedLibSitLib.Value = 'Concluido' then begin

           Found := -1;

           for i := 0 to Screen.FormCount - 1 do begin

               if Screen.Forms[i] is TfmManEpe then Found := i;

           end;

           if Found >= 0 then begin

              fmsg('Existem Romaneios em Andamento.','E');

              fmManEpe.WindowState := wsNormal;
              fmManEpe.BringToFront;

              end
           else
              begin

              CodEmp := PedLibCodEmp.Value;
              DteRes := PedLibDteRes.Value;
              NumRes := PedLibNumRes.Value;
              SeqLib := PedLibSeqLib.Value;

              PedLib.Edit;

              PedLibPedTip.Value := 2;

              PedLibSitLib.Value := 'Faturando';

              with PedLib do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      SeqOrc := 0;

                      if PedLib.State <> dsBrowse then PedLib.CancelUpdates;

                      grLib.SetFocus;
                   
                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              PedLib.Close;
              PedLib.Open;

              PedLib.Locate('CodEmp;DteRes;NumRes;SeqLib',VarArrayOf([CodEmp,DteRes,NumRes,SeqLib]), [loPartialKey]);

              SeqOrc := FatOrcSeqOrc.Value;

              if SeqOrc > 0 then begin

                 fmManEpe := TfmManEpe.Create(Self);
                 fmManEpe.Show;

              end;
           end;

           end
        else
           begin

           if PedLibSitLib.Value = 'Faturando' then
              fmsgErro('Operação não Pode ser Realizada. Romaneio com Emissões não Concluidas.',Nil)
           else
              begin

              if PedLibSitLib.Value = 'Faturado' then
                 fmsgErro('Operação não Pode ser Realizada. Romaneio já Emitido.',Nil)

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManLpe.DsOrcDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnSitOrc.Caption := FatOrcSitOrc.Value;
end;

procedure TfmManLpe.bLiberarClick(Sender: TObject);
var
i     : Integer;
Found : Integer;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedLibCodEmp.Value > 0 then begin

        Found := -1;

        for i := 0 to Screen.FormCount - 1 do begin

            if Screen.Forms[i] is TfmManEpe then Found := i;

        end;

        if Found >= 0 then begin

           fmsg('Existem Romaneios em Andamento.','E');

           fmManEpe.WindowState := wsNormal;
           fmManEpe.BringToFront;

           end
        else
           begin

           if fMsg('Confirma Retorno do Romaneio para a Liberação ?','S') then begin

              PedLib.Edit;

              PedLibSitLib.Value := 'Nao Concluido';

              with PedLib do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                   try

                      ApplyUpdates; {Tenta aplicar as alterações};

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                      if PedLib.State <> dsBrowse then PedLib.CancelUpdates;

                      grLib.SetFocus;
                
                      raise;

                   end;

                   CommitUpdates; {sucesso!, limpa o cache...}

              end;

              PedLib.Close;
              PedLib.Open;

              grLib.SetFocus;

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManLpe.bImprimirClick(Sender: TObject);
var
QtdCol : integer;
ValDup,PraMed : real;
EndTr3,NomTra,EndTr1,EndTr2 : string;
i     : Integer;
Found : Integer;
begin
  inherited;
  if PedLibCodEmp.Value > 0 then begin

     Found := -1;

     for i := 0 to Screen.FormCount - 1 do begin

         if Screen.Forms[i] is TfmManEpe then Found := i;

     end;

     if Found >= 0 then begin

        fmsg('Existem Romaneios em Andamento.','E');

        fmManEpe.WindowState := wsNormal;
        fmManEpe.BringToFront;

        end
     else
        begin      
  
        if PedLibNumRes.Value > 0 then begin

           if fMsg('Confirma Impressão do Pedido ?','O') then begin

              with quRes,SQL do begin

                   Close;
                   Text := ' Select PedRes.*,'+
                           '        FinCli.CliTab,'+
                           '        FormatCgcCpf(PedRes.CgcCli) as CgcCpf'+
                           ' From PedRes INNER JOIN FinCli ON (PedRes.CodCli = FinCli.CodCli)'+
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

                      EndTr1 := Trim( quSql.FieldbyName('TenTra').AsString )+' '+Trim( quSql.FieldbyName('EndTra').AsString )+' N. '+
                                Trim( quSql.FieldbyName('NumTra').AsString )+' B. '+Trim( quSql.FieldbyName('BaiTra').AsString );
                      EndTr2 := 'Cidade '+Trim( quSql.FieldbyName('CidTra').AsString )+' UF '+quSql.FieldbyName('SigUfe').AsString+' Cep: '+
                                copy(quSql.FieldbyName('CepTra').AsString,1,5)+'-'+copy(quSql.FieldbyName('CepTra').AsString,6,3);

                      EndTr3 := 'TeleFone '+'('+Trim( quSql.FieldbyName('PrtTra').AsString )+') '+Trim( quSql.FieldbyName('FonTra').AsString );

                   end;
              end;

              EndEn1 := Trim( quRes.FieldbyName('TenCli').AsString )+'. '+Trim( quRes.FieldbyName('EndCli').AsString )+' N. '+
                        Trim( quRes.FieldbyName('NumCli').AsString )+' B. '+Trim( quRes.FieldbyName('BaiCli').AsString );

              EndEn2 := 'Cidade '+Trim( quRes.FieldbyName('CidCli').AsString )+' UF '+quRes.FieldbyName('UfeCli').AsString+' Cep: '+
                        copy(quRes.FieldbyName('CepCli').AsString,1,5)+'-'+copy(quRes.FieldbyName('CepCli').AsString,6,3);

              rdprint1.OpcoesPreview.Preview     := False;
              rdprint1.OpcoesPreview.PreviewZoom := 100;
              rdprint1.TamanhoQteLPP             := seis;
              rdprint1.UsaGerenciadorImpr        := True;

              rdprint1.TamanhoQteColunas  := 136;
              rdprint1.FonteTamanhoPadrao := s17cpp;

              NroPag := 0;

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

                      imp(Linha,125,fReplicate('-',12));
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      imp(Linha,107,'Total Itens    :');
                      imp(Linha,125,PreString(FormatFloat('#,###,##0.00',quLib.FieldbyName('TotLib').AsFloat),12));
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      imp(Linha,107,'Total IPI      :');
                      imp(Linha,125,PreString(FormatFloat('#,###,##0.00',quLib.FieldbyName('TotIpi').AsFloat),12));
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      imp(Linha,107,'Total Liberado :');
                      imp(Linha,125,PreString(FormatFloat('#,###,##0.00',quLib.FieldbyName('TotGer').AsFloat),12));
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      Inc(Linha);
                      Inc(Linha);
                      Inc(Linha);

                      if Linha > 61 then rdprint1.novapagina;

                      impf(Linha,001,'Total de Itens        : '+PreString(IntToStr(quLib.FieldbyName('QtsLib').AsInteger),08),[NORMAL, NEGRITO]);
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

                      NroPag := NroPag - 1;

                      Fechar;  {Finaliza e inicia impressao ou preview}

                 end;
              end;
           end;
        end;
     end;
  end;
end;

procedure TfmManLpe.bAtualizarClick(Sender: TObject);
begin
  inherited;

  if GFlgAce <> 'Sim' then begin

     with quSQL,SQL do begin

          Close;
          Text := ' Select FLGDEL,SEQIMP from GerPar';
          Open;

          if Trim(FieldbyName('FLGDEL').AsString) = '*' then begin

             GFlgAce := 'Sim';

             if FieldbyName('SEQIMP').AsInteger > 0 then GEmpLog := FieldbyName('SEQIMP').AsInteger;

             end
          else
             begin

             GEmpLog := 0;
             GFlgAce := 'Nao';

          end;
     end;
  end;
  
  if Trim( EdPsqNumRes.Text ) <> '' then begin

     with PedLib,SQL do begin

          Close;
          Text := ' Select PedLib.CodEmp,'+
                  '        PedLib.DteRes,'+
                  '        PedLib.NumRes,'+
                  '        PedLib.SeqLib,'+
                  '        PedLib.CodCli,'+
                  '        PedLib.PedTip,'+
                  '        PedLib.DteLib,'+
                  '        PedLib.HreLib,'+
                  '        PedLib.TotLib,'+
                  '        PedLib.TotIpi,'+
                  '        PedLib.TotGer,'+
                  '        PedLib.SitLib,'+
                  '        FinCli.NomCli'+
                  ' From PedLib LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'+
                  ' Where PedLib.NumRes   = '''+ EdPsqNumRes.Text +''''+
                  '   and ( PedLib.SitLib = '''+ 'Concluido' +''' or PedLib.SitLib = '''+ 'Faturando' +''' )';

          if GFlgAce = 'Sim' then Text := Text + ' and PedLib.SitLib = '+ QuotedStr('Transferencias');

          Text := Text + ' Order by PedLib.NumRes';

          Open;

     end;

     end
  else
     begin

     with PedLib,SQL do begin

          Close;
          Text := ' Select PedLib.CodEmp,'+
                  '        PedLib.DteRes,'+
                  '        PedLib.NumRes,'+
                  '        PedLib.SeqLib,'+
                  '        PedLib.CodCli,'+
                  '        PedLib.PedTip,'+
                  '        PedLib.DteLib,'+
                  '        PedLib.HreLib,'+
                  '        PedLib.TotLib,'+
                  '        PedLib.TotIpi,'+
                  '        PedLib.TotGer,'+
                  '        PedLib.SitLib,'+
                  '        FinCli.NomCli'+
                  ' From PedLib LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'+
                  ' Where ( PedLib.SitLib = '''+ 'Concluido' +''' or PedLib.SitLib = '''+ 'Faturando' +''' )';

          if GFlgAce = 'Sim' then Text := Text + ' and PedLib.SitLib = '+ QuotedStr('Transferencias');
          
          Text := Text + ' Order by PedLib.NumRes';

          Open;

     end;
  end;
end;

procedure TfmManLpe.RDprint1NewPage(Sender: TObject; Pagina: Integer);
begin
  inherited;

  NroPag := NroPag + 1;

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

  rdprint1.impf(07,114,'Pagina No. '+fNumZeros(IntToStr(NroPag),3),[NORMAL]);

  rdprint1.impf(08,001,fReplicate('-',80),[NORMAL]);
  rdprint1.impf(09,001,'Nosso Codigo',[comp17]);
  rdprint1.imp(09,016,'Descricao');
  rdprint1.imp(09,078,'Quant');
  rdprint1.imp(09,086,'Preco Bruto');
  rdprint1.imp(09,099,'% Desc');
  rdprint1.imp(09,106,'% Acrs');
  rdprint1.imp(09,116,'Preco Liq');
  rdprint1.imp(09,128,'Total Item');
  rdprint1.imp(10,001,fReplicate('-',14));
  rdprint1.imp(10,016,fReplicate('-',55));
  rdprint1.imp(10,072,fReplicate('-',12));
  rdprint1.imp(10,085,fReplicate('-',12));
  rdprint1.imp(10,099,fReplicate('-',06));
  rdprint1.imp(10,106,fReplicate('-',06));
  rdprint1.imp(10,113,fReplicate('-',12));
  rdprint1.imp(10,126,fReplicate('-',12));

  Linha := 11;

end;

procedure TfmManLpe.FormClose(Sender: TObject; var Action: TCloseAction);
var
i     : Integer;
Found : integer;
begin
  inherited;
  
  Found := -1;

  for i := 0 to Screen.FormCount - 1 do begin

      if Screen.Forms[i] is TfmManEpe then Found := i;

  end;

  if Found >= 0 then
     fmsgErro('Existem Romaneios em Andamento. Por Favor Feche o Formulario.',Nil)
  else
     Action := CaFree;

end;

end.

