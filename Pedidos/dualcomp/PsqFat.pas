unit PsqFat;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FShowpadrao, ExtCtrls, StdCtrls, dxCntner, dxExEdtr, dxEdLib, dxDBELib,
  Db, Wwdatsrc, DBTables, Wwquery, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  RDprint;

type
  TfmPsqFat = class(TfmShowPadrao)
    PaintBox: TPaintBox;
    Label2: TLabel;
    Label1: TLabel;
    grPro: TdxDBGraphicEdit;
    FatPed: TwwQuery;
    DsFat: TwwDataSource;
    DsPe2: TwwDataSource;
    FatPe2: TwwQuery;
    FatPedDTEFAT: TDateTimeField;
    FatPedHREFAT: TStringField;
    FatPedTOTIPI: TFloatField;
    FatPedTOTICM: TFloatField;
    FatPedTOTFAT: TFloatField;
    FatPedTOTGER: TFloatField;
    FatPedALTVOL: TIntegerField;
    FatPedUSUFAT: TIntegerField;
    FatPedDTELIB: TDateTimeField;
    FatPedHRELIB: TStringField;
    FatPedUSULIB: TIntegerField;
    FatPedNOMLIB: TStringField;
    FatPedNOMFAT: TStringField;
    grFat: ThGrid;
    FatPedNRONFS: TIntegerField;
    pnNomLib: TPanel;
    pnNomFat: TPanel;
    Panel2: TPanel;
    pnTotIcm: TPanel;
    dxDBGraphicEdit1: TdxDBGraphicEdit;
    grPe2: ThGrid;
    Label9: TLabel;
    FatPedCODEMP: TIntegerField;
    FatPedDTERES: TDateTimeField;
    FatPedNUMRES: TIntegerField;
    FatPedSEQLIB: TIntegerField;
    FatPedSEQFAT: TIntegerField;
    Label3: TLabel;
    FatPedDTESDA: TDateTimeField;
    FatPedHRESDA: TStringField;
    FatPedTRASDA: TIntegerField;
    FatPedOBSSDA: TStringField;
    FatPedCODVEI: TIntegerField;
    FatPedDTEENT: TDateTimeField;
    FatPedHREENT: TStringField;
    FatPedOBSENT: TStringField;
    FatPedDTEATU: TDateTimeField;
    FatPedHREATU: TStringField;
    FatPedUSUATU: TIntegerField;
    quSql: TwwQuery;
    quLib: TwwQuery;
    quLb2: TwwQuery;
    FatPe2DESPE2: TStringField;
    FatPe2QTPPE2: TFloatField;
    FatPe2VLQPE2: TFloatField;
    FatPe2IPIPE2: TFloatField;
    FatPe2ICMPE2: TFloatField;
    FatPe2TOTIPI: TFloatField;
    FatPe2TOTPE2: TFloatField;
    FatPe2TOTGE2: TFloatField;
    FatPe2DSCPRO: TStringField;
    quRes: TwwQuery;
    FatPedQTPNOT: TIntegerField;
    FatPedQTPDUP: TIntegerField;
    FatPedNROCOL: TStringField;
    pnSitFat: TPanel;
    FatPedSITFAT: TStringField;
    RDprint1: TRDprint;
    FatPedQTDVOL: TIntegerField;
    Label4: TLabel;
    PedLb2: TwwQuery;
    StringField1: TStringField;
    PedLb2SLDLB2: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    DsLb2: TwwDataSource;
    dxDBGraphicEdit2: TdxDBGraphicEdit;
    grLb2: ThGrid;
    pnCodIte2: TPanel;
    PedLb2CODEMP: TIntegerField;
    PedLb2DTERES: TDateTimeField;
    PedLb2NUMRES: TIntegerField;
    PedLb2SEQLIB: TIntegerField;
    PedLb2SEQLB2: TIntegerField;
    PedLb2CODGRU: TStringField;
    PedLb2CODSUB: TStringField;
    PedLb2CODPRO: TStringField;
    FatPedTOTDSR: TFloatField;
    FatPedTOTSUB: TFloatField;
    FatPedCODCLI: TIntegerField;
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure RDprint1NewPage(Sender: TObject; Pagina: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure DsFatDataChange(Sender: TObject; Field: TField);
    procedure DsLb2DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    GExiCom : string;
    GImpRef : string;
  public
    { Public declarations }
  end;

var
  NomTip     : string;
  NomVen     : string;
  NomCli     : string;
  EndEn1     : string;
  EndEn2     : string;
  DesLb2     : string;
  NomTra     : string;
  EndTr1     : string;
  EndTr2     : string;
  EndTr3     : string;
  PraMed     : real;
  BasCom     : real;
  pLinha     : integer;
  qtdTam     : integer;
  qtdCol     : integer;
  fmPsqFat: TfmPsqFat;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, ManGDB, PsqEnt, PsqCre, ManEm1,
     ManCc2, ManE16;

{$R *.DFM}

procedure TfmPsqFat.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmPsqFat.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if FatPedCodEmp.Value > 0 then begin

     if key = 112 then begin

        try

           fmPsqEnt := TfmPsqEnt.Create(Self);
           fmPsqEnt.ShowModal;

        finally

           FreeAndNil(fmPsqEnt);

        end;
     end;

     if key = 113 then begin

        try

           fmPsqCre := TfmPsqCre.Create(Self);

           fmPsqCre.FinCrp.Close;
           fmPsqCre.FinCrp.Params[0].AsInteger  := FatPedCodEmp.Value;
           fmPsqCre.FinCrp.Params[1].AsDateTime := FatPedDteRes.Value;
           fmPsqCre.FinCrp.Params[2].AsInteger  := FatPedNumRes.Value;
           fmPsqCre.FinCrp.Params[3].AsInteger  := FatPedSeqLib.Value;
           fmPsqCre.FinCrp.Params[4].AsInteger  := FatPedSeqFat.Value;
           fmPsqCre.FinCrp.Open;

           fmPsqCre.ShowModal;

        finally

           FreeAndNil(fmPsqCre);

        end;
     end;

     if key = 116 then begin

        if FatPedNumRes.Value > 0 then begin

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

                        Params[0].AsInteger  := FatPedCodEmp.Value;
                        Params[1].AsDateTime := FatPedDteRes.Value;
                        Params[2].AsInteger  := FatPedNumRes.Value;

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

                        Params[0].AsInteger  := FatPedCodEmp.Value;
                        Params[1].AsDateTime := FatPedDteRes.Value;
                        Params[2].AsInteger  := FatPedNumRes.Value;
                        Params[3].AsInteger  := FatPedSeqLib.Value;

                   end;

                   Open;

              end;

              with quSql,SQL do begin

                   Close;
                   Text := ' Select NomTip From PedTip'+
                           ' Where CodTip = '''+IntToStr(quRes.FieldbyName('CodTip').AsInteger)+'''';
                   Open;

                   NomTip := FieldbyName('NomTip').AsString;

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

              rdprint1.OpcoesPreview.Preview     := True;
              rdprint1.OpcoesPreview.PreviewZoom := 100;
              rdprint1.TamanhoQteLPP             := seis;
              rdprint1.UsaGerenciadorImpr        := True;

              if GFlgImp = 'Nao' then begin

                 if GCodVen_Id > 0 then begin

                    rdprint1.OpcoesPreview.BotaoGravar   := Inativo;
                    rdprint1.OpcoesPreview.BotaoImprimir := Inativo;

                 end;
              end;

              rdprint1.TamanhoQteColunas  := 136;
              rdprint1.FonteTamanhoPadrao := s17cpp;

              {Inicio...}
              with rdprint1 do begin

                   abrir; {inicializa o arquivo de impressao...}

                   with quLb2,SQL do begin

                        Close;
                        Text := ' Select * From PedLb2'+
                                ' Where PedLb2.CodEmp = :CodEmp'+
                                '   and PedLb2.DteRes = :DteRes'+
                                '   and PedLb2.NumRes = :NumRes'+
                                '   and PedLb2.SeqLib = :SeqLib'+
                                ' Order by PedLb2.CodEmp,PedLb2.DteRes,PedLb2.NumRes,PedLb2.SeqLib,PedLb2.SeqLb2';

                        with Params do begin

                             Params[0].AsInteger  := FatPedCodEmp.Value;
                             Params[1].AsDateTime := FatPedDteRes.Value;
                             Params[2].AsInteger  := FatPedNumRes.Value;
                             Params[3].AsInteger  := FatPedSeqLib.Value;

                        end;

                        Open;

                   end;

                   quLb2.First;

                   while not quLb2.Eof do begin

                         if quLb2.FieldbyName('UltQts').AsFloat > 0 then begin

                            if Trim(GImpRef) = 'Sim' then
                               imp(pLinha,001,copy(Trim(quLb2.FieldbyName('RefLb2').AsString),1,14))
                            else
                               imp(pLinha,001,quLb2.FieldbyName('CodGru').AsString+'.'+quLb2.FieldbyName('CodSub').AsString+'.'+quLb2.FieldbyName('CodPro').AsString);

                            DesLb2 := copy(Trim(quLb2.FieldbyName('DesLb2').AsString),1,55);

                            imp(pLinha,016,DesLb2);

                            if fEncDecimal(quLb2.FieldbyName('UltQts').AsFloat) > 0 then
                               imp(pLinha,072,PreString(FormatFloat('###,##0.0000',quLb2.FieldbyName('UltQts').AsFloat),12))
                            else
                               imp(pLinha,072,PreString(FormatFloat('###,###,##0',quLb2.FieldbyName('UltQts').AsFloat),12));
                               
                            imp(pLinha,085,PreString(FormatFloat('###,##0.0000',quLb2.FieldbyName('VluLb2').AsFloat),12));
                            imp(pLinha,099,PreString(FormatFloat('##0.00',fRound(quLb2.FieldbyName('DscLb2').AsFloat + quLb2.FieldbyName('DspLb2').AsFloat,2)),06));
                            imp(pLinha,106,PreString(FormatFloat('##0.00',quLb2.FieldbyName('PacLb2').AsFloat),06));
                            imp(pLinha,113,PreString(FormatFloat('###,##0.0000',quLb2.FieldbyName('VlqLb2').AsFloat),12));
                            imp(pLinha,126,PreString(FormatFloat('#,###,##0.00',quLb2.FieldbyName('TotLb2').AsFloat),12));

                            if Trim( quLb2.FieldbyName('ObsLb2').AsString ) <> '' then begin

                               Inc(pLinha);

                               imp(pLinha,016,Trim( quLb2.FieldbyName('ObsLb2').AsString ));

                            end;

                            Inc(pLinha);

                            if pLinha > 61 then rdprint1.novapagina;

                         end;

                         quLb2.Next;

                   end;

                   imp(pLinha,126,fReplicate('-',12));
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   imp(pLinha,094,'Total de Itens              :');
                   imp(pLinha,126,PreString(FormatFloat('#,###,##0.00',quLib.FieldbyName('TotLib').AsFloat),12));
                   Inc(pLinha);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   imp(pLinha,094,'Total ICMS Substituto       :');
                   imp(pLinha,126,PreString(FormatFloat('#,###,##0.00',FatPedTotSub.Value),12));
                   Inc(pLinha);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   imp(pLinha,094,'Total de IPI                :');
                   imp(pLinha,126,PreString(FormatFloat('#,###,##0.00',FatPedTotIpi.Value),12));
                   Inc(pLinha);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   imp(pLinha,094,'Total Desc ICMS Obrigatorio :');
                   imp(pLinha,126,PreString(FormatFloat('#,###,##0.00',FatPedTotDsr.Value),12));
                   Inc(pLinha);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   imp(pLinha,094,'Total Faturado              :');
                   imp(pLinha,126,PreString(FormatFloat('#,###,##0.00',(quLib.FieldbyName('TotLib').AsFloat - FatPedTotDsr.Value) + FatPedTotIpi.Value + FatPedTotSub.Value),12));
                   Inc(pLinha);
                   Inc(pLinha);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'Total de Itens  : '+PreString(IntToStr(quLib.FieldbyName('QtsLib').AsInteger),08),[NORMAL, NEGRITO]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,fReplicate('-',80),[NORMAL]);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'INFORMACOES ADICIONAIS:',[NORMAL, NEGRITO]);
                   Inc(pLinha);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   impf(pLinha,001,'Cond. de Pagto.:',[NORMAL, NEGRITO]);
                   impf(pLinha,031,'Prazo',[NORMAL, NEGRITO]);
                   impf(pLinha,042,'Valor Parcela',[NORMAL, NEGRITO]);
                   impf(pLinha,072,'Prazo',[NORMAL, NEGRITO]);
                   impf(pLinha,083,'Valor Parcela',[NORMAL, NEGRITO]);

                   Inc(pLinha);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   with quSQL,SQL do begin

                        Close;
                        Text := ' Select * From FatPe3'+
                                ' Where CodEmp = :CodEmp'+
                                '   and DteRes = :DteRes'+
                                '   and NumRes = :NumRes'+
                                '   and SeqLib = :SeqLib'+
                                '   and SeqFat = :SeqFat'+
                                ' Order by CodEmp,NumRes,SeqLib,SeqFat,NroPe3';

                        with Params do begin

                             Params[0].AsInteger  := FatPedCodEmp.Value;
                             Params[1].AsDateTime := FatPedDteRes.Value;
                             Params[2].AsInteger  := FatPedNumRes.Value;
                             Params[3].AsInteger  := FatPedSeqLib.Value;
                             Params[4].AsInteger  := FatPedSeqFat.Value;

                        end;

                        Open;
                        First;

                   end;

                   QtdCol := 31;
                   PraMed := 0;

                   while not quSQL.Eof do begin

                         impf(pLinha,QtdCol + 00,PreString(IntToStr(quSql.FieldbyName('PraPe3').AsInteger),5),[NORMAL, NEGRITO]);
                         impf(pLinha,QtdCol + 09,PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpPe3').AsFloat),14),[NORMAL, NEGRITO]);

                         if QtdCol = 31 then
                            QtdCol := QtdCol + 41
                         else
                            begin

                            QtdCol := 31;

                            pLinha := pLinha + 1;

                         end;

                         PraMed := PraMed + quSql.FieldbyName('PraPe3').AsInteger;

                         quSql.Next;

                         if pLinha > 61 then rdprint1.novapagina;

                   end;

                   with quSQL,SQL do begin

                        Close;
                        Text := ' Select * From FatPe4'+
                                ' Where CodEmp = :CodEmp'+
                                '   and DteRes = :DteRes'+
                                '   and NumRes = :NumRes'+
                                '   and SeqLib = :SeqLib'+
                                '   and SeqFat = :SeqFat'+
                                ' Order by CodEmp,NumRes,SeqLib,SeqFat,NroPe4';

                        with Params do begin

                             Params[0].AsInteger  := FatPedCodEmp.Value;
                             Params[1].AsDateTime := FatPedDteRes.Value;
                             Params[2].AsInteger  := FatPedNumRes.Value;
                             Params[3].AsInteger  := FatPedSeqLib.Value;
                             Params[4].AsInteger  := FatPedSeqFat.Value;

                        end;

                        Open;
                        First;

                   end;

                   while not quSQL.Eof do begin

                         impf(pLinha,QtdCol + 00,PreString(IntToStr(quSql.FieldbyName('PraPe4').AsInteger),5),[NORMAL, NEGRITO]);
                         impf(pLinha,QtdCol + 09,PreString(FormatFloat('###,###,##0.00',quSql.FieldbyName('VlpPe4').AsFloat),14),[NORMAL, NEGRITO]);

                         if QtdCol = 31 then
                            QtdCol := QtdCol + 41
                         else
                            begin

                            QtdCol := 31;

                            pLinha := pLinha + 1;

                         end;

                         PraMed := PraMed + quSql.FieldbyName('PraPe4').AsInteger;

                         quSql.Next;

                         if pLinha > 61 then rdprint1.novapagina;

                   end;

                   pLinha := pLinha + 2;

                   if pLinha > 61 then rdprint1.novapagina;

                   PraMed := PraMed / StrToFloat(IntToStr((FatPedQtpNot.Value + FatPedQtpDup.Value)));

                   impf(pLinha,001,'Prazo Medio : '+FormatFloat('##0.00',PraMed)+' Dias',[NORMAL, NEGRITO]);

                   Inc(pLinha);

                   impf(pLinha,001,fReplicate('-',80),[NORMAL]);

                   Inc(pLinha);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   if quRes.FieldbyName('CodTra').AsInteger > 0 then begin

                      impf(pLinha,001,'Transportadora : '+preString(IntToStr(quRes.FieldbyName('CodTra').AsInteger),7)+' - '+NomTra,[NORMAL, NEGRITO]);
                      Inc(pLinha);

                      if pLinha > 61 then rdprint1.novapagina;

                      impf(pLinha,001,'                 '+EndTr1,[NORMAL, NEGRITO]);
                      Inc(pLinha);

                      if pLinha > 61 then rdprint1.novapagina;

                      impf(pLinha,001,'                 '+EndTr2,[NORMAL, NEGRITO]);
                      Inc(pLinha);

                      if pLinha > 61 then rdprint1.novapagina;

                      impf(pLinha,001,'                 '+EndTr3,[NORMAL, NEGRITO]);

                      end
                   else
                      impf(pLinha,001,'Transportadora : ',[NORMAL, NEGRITO]);

                   Inc(pLinha);
                   Inc(pLinha);

                   if pLinha > 61 then rdprint1.novapagina;

                   Fechar;  {Finaliza e inicia impressao ou preview}

              end;
           end;

           if fMsg('Deseja Enviar Pedido por Email ?','O') then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FinCli.Em1Cli,'+
                           '        FinCli.Em2Cli '+
                           ' From FinCli'+
                           ' Where FinCli.CodCli = '+ QuotedStr(IntToStr(FatPedCodCli.Value));
                   Open;

                   GEmail := Trim(FieldbyName('Em1Cli').AsString);

                   if Trim(GEmail) = '' then GEmail := Trim(FieldbyName('Em2Cli').AsString);

                   Open;

              end;

              GAssunto := 'Pedido No. '+IntToStr(FatPedNumRes.Value);

              try

                 fmManEm1 := TfmManEm1.Create(Self);

                 fmManEm1.sTotIpi := FatPedTotIpi.Value;
                 fmManEm1.sTotSub := FatPedTotSub.Value;
                 fmManEm1.sTotDsr := FatPedTotDsr.Value;

                 fmManEm1.PedLib.Close;
                 fmManEm1.PedLib.Params[0].AsInteger  := FatPedCodEmp.Value;
                 fmManEm1.PedLib.Params[1].AsDateTime := FatPedDteRes.Value;
                 fmManEm1.PedLib.Params[2].AsInteger  := FatPedNumRes.Value;
                 fmManEm1.PedLib.Params[3].AsInteger  := FatPedSeqLib.Value;
                 fmManEm1.PedLib.Open;

                 fmManEm1.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmManEm1);

              end;
           end;
        end;
     end;

     if key = 117 then begin

        if FatPedCodEmp.Value > 0 then begin

           if fMsg('Confirma impressão da cópia da nota fiscal ?','O') then begin

              try

                 fmManE16 := TfmManE16.Create(Self);

                 fmManE16.FatPed.Close;
                 fmManE16.FatPed.Params[0].AsInteger  := FatPedCodEmp.Value;
                 fmManE16.FatPed.Params[1].AsDateTime := FatPedDteRes.Value;
                 fmManE16.FatPed.Params[2].AsInteger  := FatPedNumRes.Value;
                 fmManE16.FatPed.Params[3].AsInteger  := FatPedSeqLib.Value;
                 fmManE16.FatPed.Params[4].AsInteger  := FatPedSeqFat.Value;
                 fmManE16.FatPed.Open;

                 fmManE16.FatPe2.Close;
                 fmManE16.FatPe2.Params[0].AsInteger  := FatPedCodEmp.Value;
                 fmManE16.FatPe2.Params[1].AsDateTime := FatPedDteRes.Value;
                 fmManE16.FatPe2.Params[2].AsInteger  := FatPedNumRes.Value;
                 fmManE16.FatPe2.Params[3].AsInteger  := FatPedSeqLib.Value;
                 fmManE16.FatPe2.Params[4].AsInteger  := FatPedSeqFat.Value;
                 fmManE16.FatPe2.Open;


                 fmManE16.RLReport1.PreviewModal;

              finally

                 FreeAndNil(fmManE16);

              end;
           end;
        end;
     end;
  end;
end;

procedure TfmPsqFat.RDprint1NewPage(Sender: TObject; Pagina: Integer);
begin
  inherited;

  rdprint1.impf(01,001,'PEDIDO FATURADO',[EXPANDIDO, NORMAL]);

  rdprint1.impf(02,001,fReplicate('-',80),[NORMAL]);
  rdprint1.impf(03,001,'Pedido       : '+preString(IntToStr(quRes.FieldbyName('NumRes').AsInteger),7),[NORMAL, NEGRITO]);
  rdprint1.impf(03,075,'Data : '+DateToStr(quRes.FieldbyName('DteRes').AsDateTime),[NORMAL]);
  rdprint1.impf(03,111,'Hora : '+quRes.FieldbyName('HreRes').AsString,[NORMAL]);
  rdprint1.impf(04,001,'Nota Fiscal  : '+preString(IntToStr(quLib.FieldbyName('NroNfs').AsInteger),7),[NORMAL, NEGRITO]);
  rdprint1.impf(05,001,'Vendedor     : '+preString(IntToStr(quRes.FieldbyName('CodVen').AsInteger),7)+' - '+NomVen,[NORMAL]);
  rdprint1.impf(06,001,'Cliente      : '+preString(IntToStr(quRes.FieldbyName('CodCli').AsInteger),7)+' - '+copy(NomCli,1,40),[NORMAL, NEGRITO]);
  rdprint1.impf(06,120,quRes.FieldbyName('UfeRes').AsString,[EXPANDIDO, NORMAL]);
  rdprint1.impf(07,001,'Entrega      : '+EndEn1,[NORMAL]);
  rdprint1.impf(08,001,'               '+EndEn2,[NORMAL]);

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

  pLinha := 12;

end;

procedure TfmPsqFat.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if key = #3 then begin {Comissões}

     if GExiCom = 'Sim' then begin
     
        if FatPedCodEmp.Value > 0 then begin

           try

              fmManCc2 := TfmManCc2.Create(Self);

              fmManCc2.PedLb2.Close;
              fmManCc2.PedLb2.Params[0].AsInteger  := FatPedCodEmp.Value;
              fmManCc2.PedLb2.Params[1].AsDateTime := FatPedDteRes.Value;
              fmManCc2.PedLb2.Params[2].AsInteger  := FatPedNumRes.Value;
              fmManCc2.PedLb2.Params[3].AsInteger  := FatPedSeqLib.Value;
              fmManCc2.PedLb2.Open;

              fmManCc2.ShowModal;

           finally

              FreeAndNil(fmManCc2);

           end;
        end;
     end;   
  end;
end;

procedure TfmPsqFat.FormShow(Sender: TObject);
begin
  inherited;

  with quSQL,SQL do begin

       Close;
       Text := ' Select ExiCom,UsaDec,ImpRef From PedPar';
       Open;

       GExiCom := FieldByName('ExiCom').AsString;
       GImpRef := FieldByName('ImpRef').AsString;

       if FieldbyName('UsaDec').AsString = 'Sim' then begin

          FatPe2QtpPe2.DisplayFormat := '###,###,##0.0000';
          PedLb2SldLb2.DisplayFormat := '###,###,##0.0000';

          end
       else
          begin

          FatPe2QtpPe2.DisplayFormat := '###,###,##0';
          PedLb2SldLb2.DisplayFormat := '###,###,##0';

       end;
  end;

  if GExiCom = 'Sim' then
     Label3.Caption := 'F1-Detalhes de Entrega F2-Vencimentos F5-Imprimir Pedido F6-Cópia da nota fiscal CTRL+C-Comissões'
  else
     Label3.Caption := 'F1-Detalhes de Entrega F2-Vencimentos F5-Imprimir Pedido F6-Cópia da nota fiscal';
     
end;

procedure TfmPsqFat.DsFatDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  pnSitFat.Caption := FatPedSitFat.Value;

  if FatPedCodEmp.Value > 0 then begin

     pnTotIcm.Caption := FormatFloat('###,###,##0.00',FatPedTotIcm.Value);

     pnNomLib.Caption := ' Liberado Por ' + FatPedNomLib.Value;

     pnNomFat.Caption := ' Faturado Por ' + FatPedNomFat.Value;

     end
  else
     begin

     pnNomLib.Caption := ' Liberado Por ';

     pnNomFat.Caption := ' Faturado Por  ';

  end;
end;

procedure TfmPsqFat.DsLb2DataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if PedLb2CodEmp.Value > 0 then
     pnCodIte2.Caption := PedLb2CodGru.Value+'.'+PedLb2CodSub.Value+'.'+PedLb2CodPro.Value
  else
     pnCodIte2.Caption := ' ';
end;

end.

