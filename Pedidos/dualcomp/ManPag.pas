unit ManPag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, dxDBELib, dxColorEdit, RDprint;

type
  TfmManPag = class(TfmPadrao)
    PedLib: TwwQuery;
    DsLib: TwwDataSource;
    PaintBox: TPaintBox;
    Label2: TLabel;
    Bevel2: TBevel;
    grLib: ThGrid;
    Label3: TLabel;
    Bevel3: TBevel;
    quSql: TwwQuery;
    bRejeitar: TSpeedButton;
    bLiberar: TSpeedButton;
    pnTelefone: TPanel;
    Panel1: TPanel;
    EdPsqNumRes: TdxColorEdit;
    PedLb2: TwwQuery;
    PedLb2DSCPRO: TStringField;
    DsLb2: TwwDataSource;
    grLb2: ThGrid;
    PedLibDTERES: TDateTimeField;
    PedLibNUMRES: TIntegerField;
    PedLibCODVEN: TIntegerField;
    PedLibCODPFA: TStringField;
    PedLibTOTGER: TFloatField;
    PedLibNOMCLI: TStringField;
    dbRes: TdxDBGraphicEdit;
    dbRe2: TdxDBGraphicEdit;
    PedLb2DESLB2: TStringField;
    PedLb2ULTQTS: TFloatField;
    PedLb2VLQLB2: TFloatField;
    PedLb2ICMLB2: TFloatField;
    PedLb2TOTLB2: TFloatField;
    pnCodCli: TPanel;
    bAtualizar: TBitBtn;
    PedLibCODEMP: TIntegerField;
    PedLibSEQLIB: TIntegerField;
    PedLibSITLIB: TStringField;
    PedLibPT1CLI: TStringField;
    PedLibFO1CLI: TStringField;
    PedLb2CODEMP: TIntegerField;
    PedLb2DTERES: TDateTimeField;
    PedLb2NUMRES: TIntegerField;
    PedLb2SEQLIB: TIntegerField;
    PedLb2SEQLB2: TIntegerField;
    PedLibCODCLI: TIntegerField;
    bImprimir: TSpeedButton;
    RDprint1: TRDprint;
    quLib: TwwQuery;
    quLb2: TwwQuery;
    quRes: TwwQuery;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure PaintBoxPaint(Sender: TObject);
    procedure bLiberarClick(Sender: TObject);
    procedure bRejeitarClick(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure bAtualizarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DsLibDataChange(Sender: TObject; Field: TField);
    procedure bImprimirClick(Sender: TObject);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
  private
    {Private declarations}
    sBase : string;
    DteRes : TDateTime;
    CodEmp,NumRes,SeqLib : Integer;
    NomVen,NomCli,EndEn1,EndEn2 : string;
  public
    {Public declarations}
  end;

var
  Linha : Integer;
  fmManPag: TfmManPag;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, ManPri, ManObs,
     ManLpg;

{$R *.DFM}

procedure TfmManPag.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 114 then bRejeitar.OnClick(Sender);

  if key = 115 then bLiberar.OnClick(Sender);

  if key = 116 then bImprimir.OnClick(Sender);

end;

procedure TfmManPag.FormShow(Sender: TObject);
begin
  inherited;

  sBase := ' Select PedLib.CodEmp,'+
           '        PedLib.DteRes,'+
           '        PedLib.NumRes,'+
           '        PedLib.SeqLib,'+
           '        PedLib.CodCli,'+
           '        PedLib.CodVen,'+
           '        PedLib.CodPfa,'+
           '        PedLib.TotGer,'+
           '        PedLib.SitLib,'+
           '        FinCli.NomCli,'+
           '        FinCli.Pt1Cli,'+
           '        FinCli.Fo1Cli'+
           ' From PedLib LEFT JOIN FinCli ON (PedLib.CodCli = FinCli.CodCli)'+
           ' Where PedLib.SitLib = '+ QuotedStr('Aguardando Confirmacao do Pagamento');

  if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

     if GCodVen_Id > 0 then sBase := sBase + ' and PedLib.CodVen = '+ QuotedStr(IntToStr(GCodVen_Id));

  end;
  
  with PedLib,SQL do begin

       Close;
       Text := sBase + ' Order by PedLib.NumRes';
       Open;

  end;

  if GCodVen_Id > 0 then begin

     if (GGus_Id <> 1) and (GUsu_Id <> 1) and (GUsu_Id <> 999) and (GFlgGer <> 'Sim') then begin

         bLiberar.Enabled  := False;
         bRejeitar.Enabled := False;

     end;
  end;

  with quSQL,SQL do begin

       Close;
       Text := ' Select UsaDec From PedPar';
       Open;

       if FieldbyName('UsaDec').AsString = 'Sim' then
          PedLb2UltQts.DisplayFormat := '###,###,##0.0000'
       else
          PedLb2UltQts.DisplayFormat := '###,###,##0';
          
  end;

  EdPsqNumRes.SetFocus;
  
end;

procedure TfmManPag.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManPag.bLiberarClick(Sender: TObject);
var
sCorreto : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedLibCodEmp.Value > 0 then begin

        try

           fmManLpg := TfmManLpg.Create(Self);

           fmManLpg.PedLib.Close;
           fmManLpg.PedLib.Params[0].AsInteger  := PedLibCodEmp.Value;
           fmManLpg.PedLib.Params[1].AsDateTime := PedLibDteRes.Value;
           fmManLpg.PedLib.Params[2].AsInteger  := PedLibNumRes.Value;
           fmManLpg.PedLib.Params[3].AsInteger  := PedLibSeqLib.Value;
           fmManLpg.PedLib.Open;

           fmManLpg.ShowModal;

           sCorreto := fmManLpg.Liberar;

        finally

           FreeAndNil(fmManLpg);

        end;

        if sCorreto = 'Sim' then begin

           EdPsqNumRes.Text := '';

           with PedLib,SQL do begin

                Close;
                Text := sBase + ' Order by PedLib.NumRes';
                Open;

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPag.bRejeitarClick(Sender: TObject);
var
sCorreto : string;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then begin

     if PedLibCodEmp.Value > 0 then begin

        try

           fmManObs := TfmManObs.Create(Self);

           fmManObs.Caption := 'Liberação de Pedidos Aguardando Confirmação de Pagamento';

           fmManObs.PedRes.Close;
           fmManObs.PedRes.Params[0].AsInteger  := PedLibCodEmp.Value;
           fmManObs.PedRes.Params[1].AsDateTime := PedLibDteRes.Value;
           fmManObs.PedRes.Params[2].AsInteger  := PedLibNumRes.Value;
           fmManObs.PedRes.Open;

           fmManObs.ShowModal;

           sCorreto := fmManObs.sCorreto;

        finally

           FreeAndNil(fmManObs);

        end;

        if sCorreto = 'Sim' then begin

           EdPsqNumRes.Text := '';

           with PedLib,SQL do begin

                Close;
                Text := sBase + ' Order by PedLib.NumRes';
                Open;

           end;
        end;
     end;

     end
  else
     fmsgErro(GMensagem,Nil);
end;

procedure TfmManPag.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManPag.bAtualizarClick(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNumRes.Text ) <> '' then begin

     with PedLib,SQL do begin

          Close;
          Text := sBase +
                  '   and PedLib.NumRes = '+ QuotedStr(EdPsqNumRes.Text) +
                  ' Order by PedLib.NumRes';
          Open;

     end;

     end
  else
     begin

     with PedLib,SQL do begin

          Close;
          Text := sBase + ' Order by PedLib.NumRes';
          Open;

     end;
  end;   
end;

procedure TfmManPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManPag.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManPag := nil;
end;

procedure TfmManPag.DsLibDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedLibCodCli.Value > 0 then begin

     pnCodCli.Caption := ' Código do Cliente : ' + FNumZeros(IntToStr(PedLibCodCli.Value),7);

     pnTelefone.Caption := ' TELEFONE : '+'('+Trim( PedLibPt1Cli.Value )+') '+Trim( PedLibFo1Cli.Value );

     end
  else
     begin

     pnCodCli.Caption := ' Código do Cliente : ';

     pnTelefone.Caption := ' TELEFONE : ';

  end;
end;

procedure TfmManPag.bImprimirClick(Sender: TObject);
var
QtdCol : integer;
ValDup,PraMed : real;
EndTr3,NomTra,EndTr1,EndTr2 : string;
begin
  inherited;
  if PedlibCodEmp.Value > 0 then begin

     CodEmp := PedLibCodEmp.Value;
     DteRes := PedLibDteRes.Value;
     NumRes := PedLibNumRes.Value;
     SeqLib := PedLibSeqLib.Value;     

     with PedLib,SQL do begin

          Close;
          Text := sBase +
                  '   and PedLib.CodEmp = '+ QuotedStr(IntToStr(CodEmp))   +
                  '   and PedLib.DteRes = '+ QuotedStr(fDateToSQL(DteRes)) +
                  '   and PedLib.NumRes = '+ QuotedStr(IntToStr(NumRes))   +
                  '   and PedLib.SeqLib = '+ QuotedStr(IntToStr(SeqLib))   ;
          Open;
          
     end;

     if PedlibCodEmp.Value > 0 then begin

        if fMsg('Confirma Impressão do Pedido ?','O') then begin

           with quRes,SQL do begin

                Close;
                Text := ' Select PedRes.CodEmp,'+
                        '        PedRes.DteRes,'+
                        '        PedRes.NumRes,'+
                        '        PedRes.HreRes,'+
                        '        PedRes.UfeRes,'+
                        '        PedRes.CodVen,'+
                        '        PedRes.CodCli,'+
                        '        PedRes.CodTra,'+
                        '        PedRes.TenCli,'+
                        '        PedRes.EndCli,'+
                        '        PedRes.NumCli,'+
                        '        PedRes.RefCli,'+
                        '        PedRes.BaiCli,'+
                        '        PedRes.CidCli,'+
                        '        PedRes.UfeCli,'+
                        '        PedRes.CepCli,'+
                        '        PedRes.QtpRes From PedRes'+
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
                Text := ' Select PedLib.CodEmp,'+
                        '        PedLib.DteRes,'+
                        '        PedLib.NumRes,'+
                        '        PedLib.SeqLib,'+
                        '        PedLib.TotLib,'+
                        '        PedLib.TotIpi,'+
                        '        PedLib.TotGer,'+
                        '        PedLib.QtsLib From PedLib'+
                        ' Where PedLib.CodEmp = :CodEmp'+
                        '   and PedLib.DteRes = :DteRes'+
                        '   and PedLib.NumRes = :NumRes'+
                        '   and PedLib.SeqLib = :SeqLib';

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
                Text := ' Select FinVen.ApeVen From FinVen Where FinVen.CodVen = '''+ IntToStr(quRes.FieldbyName('CodVen').AsInteger) +'''';
                Open;

                NomVen := FieldbyName('ApeVen').AsString;

           end;

           with quSQL,SQL do begin

                Close;
                Text := ' Select FinCli.NomCli From FinCli Where FinCli.CodCli = '''+ IntToStr(quRes.FieldbyName('CodCli').AsInteger) +'''';
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
                        '        FinTra.FonTra From FinTra Where FinTra.CodTra = '''+ IntToStr(quRes.FieldbyName('CodTra').AsInteger) +'''';
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

           if Trim(quRes.FieldbyName('TenCli').AsString) <> '' then
              EndEn1 := Trim( quRes.FieldbyName('TenCli').AsString )+ ' ' +
                        Trim( quRes.FieldbyName('EndCli').AsString )
           else
              EndEn1 := Trim( quRes.FieldbyName('EndCli').AsString );

           if Trim( quRes.FieldbyName('NumCli').AsString ) <> '' then
              EndEn1 := EndEn1 + ', ' +Trim( quRes.FieldbyName('NumCli').AsString );

           if Trim( quRes.FieldbyName('BaiCli').AsString ) <> '' then
              EndEn1 := EndEn1 + ' ' +Trim( quRes.FieldbyName('BaiCli').AsString );

           EndEn2 := Trim( quRes.FieldbyName('CidCli').AsString );

           if Trim( quRes.FieldbyName('UfeCli').AsString ) <> '' then
              EndEn2 := EndEn2+ ' - ' +quRes.FieldbyName('UfeCli').AsString;

           if Trim( quRes.FieldbyName('CepCli').AsString ) <> '' then
              EndEn2 := EndEn2 + ' Cep '+
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
                        Text := ' Select PedLb2.CodGru,'+
                                '        PedLb2.CodSub,'+
                                '        PedLb2.CodPro,'+
                                '        PedLb2.UltQts,'+
                                '        PedLb2.DesLb2,'+
                                '        PedLb2.ObsLb2,'+
                                '        PedLb2.VluLb2,'+
                                '        PedLb2.DscLb2,'+
                                '        PedLb2.DspLb2,'+
                                '        PedLb2.PacLb2,'+
                                '        PedLb2.VlqLb2,'+
                                '        PedLb2.TotLb2'+                                                                                                                                                                                                                                                                                                                                
                                ' From PedLb2'+
                                ' Where PedLb2.CodEmp = :CodEmp'+
                                '   and PedLb2.DteRes = :DteRes'+
                                '   and PedLb2.NumRes = :NumRes'+
                                '   and PedLb2.SeqLib = :SeqLib and PedLb2.UltQts > 0'+
                                ' Order by PedLb2.SeqLb2';

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
                        Text := ' Select PedRe3.PraRe3 From PedRe3'+
                                ' Where PedRe3.CodEmp = '''+ IntToStr(quLib.FieldbyName('CodEmp').AsInteger)    +''''+
                                '   and PedRe3.DteRes = '''+ fDateToSQL(quLib.FieldbyName('DteRes').AsDateTime) +''''+
                                '   and PedRe3.NumRes = '''+ IntToStr(quLib.FieldbyName('NumRes').AsInteger)    +''''+
                                ' Order by PedRe3.NroRe3';
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
     end;
  end;
end;

procedure TfmManPag.RDprint1NewPage(Sender: TObject; Pagina: Integer);
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

  rdprint1.impf(07,114,'Pagina No. '+fNumZeros(IntToStr(Pagina),3),[NORMAL]);

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

end.

