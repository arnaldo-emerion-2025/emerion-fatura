unit ManCmp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, Grids, Wwdbigrd, Wwdbgrid, hGrid, dxExEdtr, dxEdLib, dxEditor,
  StdCtrls, ExtCtrls, Buttons, dxCntner, Menus, Db, Wwdatsrc, DBTables,
  Wwquery, ImgList, RDprint, dxDBELib, dxDBGrid, dxDBTLCl, dxGrClms, dxTL,
  dxDBCtrl, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk, dxPSdxDBGrLnk,
  dxColorEdit, dxColorDateEdit;

type
  TSaveMethod = procedure (const FileName: String; ASaveAll: Boolean) of object;

  TfmManCmp = class(TfmPadrao)
    PaintBox: TPaintBox;
    Label28: TLabel;
    EdPsqDpePed1: TdxColorDateEdit;
    Label29: TLabel;
    EdPsqDpePed2: TdxColorDateEdit;
    Label20: TLabel;
    EdPsqCodFor: TdxColorEdit;
    bPsqFor: TSpeedButton;
    EdPsqNomFor: TdxColorEdit;
    bSelecionar: TBitBtn;
    Label6: TLabel;
    Label11: TLabel;
    CmpPed: TwwQuery;
    CmpPedNUMPED: TIntegerField;
    CmpPedDTEPED: TDateTimeField;
    CmpPedHREPED: TStringField;
    CmpPedCODPFA: TStringField;
    CmpPedNOMFOR: TStringField;
    CmpPedTOTGER: TFloatField;
    CmpPedTOTPED: TFloatField;
    CmpPedTOTIPI: TFloatField;
    CmpPedCODEMP: TIntegerField;
    CmpPedCODFOR: TIntegerField;
    CmpPedCONPLC: TIntegerField;
    CmpPedSUBPLC: TIntegerField;
    CmpPedTIPPFA: TStringField;
    CmpPedPREPED: TIntegerField;
    CmpPedDPEPED: TDateTimeField;
    CmpPedCODFIL: TIntegerField;
    CmpPedUFEPED: TStringField;
    CmpPedCODCLP: TStringField;
    CmpPedNOMCON: TStringField;
    CmpPedNOMVEN: TStringField;
    CmpPedCEPENT: TStringField;
    CmpPedTENENT: TStringField;
    CmpPedENDENT: TStringField;
    CmpPedREFENT: TStringField;
    CmpPedNUMENT: TStringField;
    CmpPedBAIENT: TStringField;
    CmpPedCIDENT: TStringField;
    CmpPedUFEENT: TStringField;
    CmpPedFLGCTB: TStringField;
    CmpPedOBSPED: TStringField;
    CmpPedQTIPED: TIntegerField;
    CmpPedSEQITE: TIntegerField;
    CmpPedBASIPI: TFloatField;
    CmpPedBASICM: TFloatField;
    CmpPedTOTICM: TFloatField;
    CmpPedBASSUB: TFloatField;
    CmpPedTOTSUB: TFloatField;
    CmpPedMEDDSC: TFloatField;
    CmpPedTOTDSC: TFloatField;
    CmpPedMEDACR: TFloatField;
    CmpPedTOTACR: TFloatField;
    CmpPedLANEST: TStringField;
    CmpPedATUEST: TStringField;
    CmpPedINTFIN: TStringField;
    CmpPedCONSUM: TStringField;
    CmpPedCODIPI: TStringField;
    CmpPedTIPIPI: TStringField;
    CmpPedTRBIPI: TStringField;
    CmpPedREDIPI: TFloatField;
    CmpPedBSCIPI: TFloatField;
    CmpPedCODICM: TStringField;
    CmpPedTIPICM: TStringField;
    CmpPedTRBICM: TStringField;
    CmpPedREDICM: TFloatField;
    CmpPedBSCICM: TFloatField;
    CmpPedINCREV: TFloatField;
    CmpPedINCFIN: TFloatField;
    CmpPedTXFIPI: TStringField;
    CmpPedTXFICM: TStringField;
    CmpPedCODUSU: TIntegerField;
    CmpPedSEQPED: TStringField;
    CmpPedSITPED: TStringField;
    CmpPedOBSCND: TStringField;
    CmpPedEMAFOR: TStringField;
    CmpPedCODTMO: TIntegerField;
    CmpPedFLGOCO: TStringField;
    CmpPedFLGATU: TStringField;
    CmpPedVALTMO: TFloatField;
    CmpPedFLGTAB: TStringField;
    CmpPedTOTVEN: TFloatField;
    CmpPedTOTREN: TFloatField;
    CmpPedDTEFPE: TDateTimeField;
    CmpPedHREFPE: TStringField;
    CmpPedOBSFPE: TMemoField;
    CmpPedUSUFPE: TIntegerField;
    CmpPe2: TwwQuery;
    CmpPe2DSCPRO: TStringField;
    CmpPe2QTPPE2: TFloatField;
    CmpPe2QTRPE2: TFloatField;
    CmpPe2QTNPE2: TFloatField;
    CmpPe2VLQPE2: TFloatField;
    CmpPe2ICMPE2: TFloatField;
    CmpPe2TOTPE2: TFloatField;
    CmpPe2QTEPE2: TFloatField;
    CmpPe2TOTIPI: TFloatField;
    CmpPe2IPIPE2: TFloatField;
    CmpPe2CODEMP: TIntegerField;
    CmpPe2DTEPED: TDateTimeField;
    CmpPe2NUMPED: TIntegerField;
    CmpPe2SEQPE2: TIntegerField;
    CmpPe2CODEIT: TIntegerField;
    CmpPe2CODCLP: TStringField;
    CmpPe2CODGRU: TStringField;
    CmpPe2CODSUB: TStringField;
    CmpPe2CODPRO: TStringField;
    CmpPe2CODTAM: TStringField;
    CmpPe2CODCOR: TStringField;
    CmpPe2DESPE2: TStringField;
    CmpPe2OBSPE2: TStringField;
    CmpPe2CODST1: TStringField;
    CmpPe2CODST2: TStringField;
    CmpPe2CODUND: TStringField;
    CmpPe2CLSIPI: TStringField;
    CmpPe2SLDPE2: TFloatField;
    CmpPe2VLUPE2: TFloatField;
    CmpPe2DSCPE2: TFloatField;
    CmpPe2VDSPE2: TFloatField;
    CmpPe2PACPE2: TFloatField;
    CmpPe2VACPE2: TFloatField;
    CmpPe2BASIPI: TFloatField;
    CmpPe2BASICM: TFloatField;
    CmpPe2TOTICM: TFloatField;
    CmpPe2BASSUB: TFloatField;
    CmpPe2TOTSUB: TFloatField;
    CmpPe2TOTGE2: TFloatField;
    CmpPe2TOTDSC: TFloatField;
    CmpPe2TOTACR: TFloatField;
    CmpPe2CODSTR: TStringField;
    CmpPe2TIPSTR: TStringField;
    CmpPe2REGIPI: TStringField;
    CmpPe2TIPIPI: TStringField;
    CmpPe2TRBIPI: TStringField;
    CmpPe2REDIPI: TFloatField;
    CmpPe2BSCIPI: TFloatField;
    CmpPe2REGICM: TStringField;
    CmpPe2TIPICM: TStringField;
    CmpPe2TRBICM: TStringField;
    CmpPe2REDICM: TFloatField;
    CmpPe2BSCICM: TFloatField;
    CmpPe2INCREV: TFloatField;
    CmpPe2INCFIN: TFloatField;
    CmpPe2FLASEQ: TStringField;
    CmpPe2NROPE2: TIntegerField;
    CmpPe2NOMCON: TStringField;
    CmpPe2NOMVEN: TStringField;
    CmpPe2OBSCND: TStringField;
    CmpPe2TOTGER: TFloatField;
    CmpPe2DPEPED: TDateTimeField;
    CmpPe2PREPED: TIntegerField;
    CmpPe2OBSPED: TStringField;
    CmpPe2CODFOR: TIntegerField;
    CmpPe2NOMFOR: TStringField;
    CmpPe2ENDFOR: TStringField;
    CmpPe2BAIFOR: TStringField;
    CmpPe2CIDFOR: TStringField;
    CmpPe2SIGUFE: TStringField;
    CmpPe2FONFOR: TStringField;
    CmpPe2FAXFOR: TStringField;
    CmpPe2REFPRO: TStringField;
    CmpPe2FLGDUP: TStringField;
    CmpPe2LOGUSU: TStringField;
    CmpPe2QTIPE3: TIntegerField;
    CmpPe2SEQPE3: TIntegerField;
    CmpPe2FLGRES: TStringField;
    CmpPe2VLQITE: TFloatField;
    CmpPe2FLGVAL: TStringField;
    CmpPe2FLGLAN: TStringField;
    CmpPe2VALVEN: TFloatField;
    CmpPe2TOTVEN: TFloatField;
    CmpPe2TOTREN: TFloatField;
    CmpPe2CODPFO: TStringField;
    DsPe2: TwwDataSource;
    DsPed: TwwDataSource;
    Label2: TLabel;
    Bevel2: TBevel;
    dbRes: TdxDBGraphicEdit;
    grPed: ThGrid;
    pnLogUsu: TPanel;
    pnCodFor: TPanel;
    Label3: TLabel;
    Bevel3: TBevel;
    dbRe2: TdxDBGraphicEdit;
    grPe2: ThGrid;
    CmpPedLOGUSU: TStringField;
    quSql: TwwQuery;
    Label16: TLabel;
    Label4: TLabel;
    EdPsqNumPed: TdxColorEdit;
    bImprimir: TSpeedButton;
    rdprint: TRDprint;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure bPsqForClick(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure EdPsqCodForExit(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DsPedDataChange(Sender: TObject; Field: TField);
    procedure EdPsqNumPedExit(Sender: TObject);
    procedure bImprimirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rdprintNewPage(Sender: TObject; Pagina: Integer);
  private
    {Private declarations}
  public
    {Public declarations}
    sBase,sFiltro,sOrdem : string;
  end;

var
  Linha    : integer;
  fmManCmp : TfmManCmp;

implementation

uses dxDemoUtils, Bbgeral, Bbfuncao, Bbmensag, ManGDB, PsqEmp, PsqCli, PsqVen,
     ManPri, AuxIni, AuxPsq;

{$R *.DFM}

procedure TfmManCmp.FormCreate(Sender: TObject);
begin
  inherited;

  EdPsqDpePed1.Date := Date;
  EdPsqDpePed2.Date := Date;

  sBase := ' Select CmpPed.*,'+
           '        FinFor.NomFor,'+
           '        FinFor.EmaFor,'+
           '        GerUsu.LogUsu'+
           ' From CmpPed LEFT JOIN FinFor ON (CmpPed.CodFor = FinFor.CodFor)'+
           '             LEFT JOIN GerUsu ON (CmpPed.CodUsu = GerUsu.CodUsu)';

end;

procedure TfmManCmp.bSelecionarClick(Sender: TObject);
begin

  sOrdem  := ' Order by CmpPed.DpePed,CmpPed.NumPed';
  
  sFiltro := ' Where ( CmpPed.SitPed = '''+ 'Concluido' +''' or CmpPed.SitPed = '''+ 'Recebido Parcialmente' +''')';

  if Trim( EdPsqNumPed.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.NumPed = '''+ EdPsqNumPed.Text +'''';  
  if Trim( EdPsqCodFor.Text ) <> '' then sFiltro := sFiltro + ' and CmpPed.CodFor = '''+ EdPsqCodFor.Text +'''';

  if Trim(fLimpaStr(EdPsqDpePed1.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DpePed >= '''+ fDateToSQL(EdPsqDpePed1.Date) +'''';
  if Trim(fLimpaStr(EdPsqDpePed2.Text)) <> '' then sFiltro := sFiltro + ' and CmpPed.DpePed <= '''+ fDateToSQL(EdPsqDpePed2.Date) +'''';

  with CmpPed,SQL do begin

       Close;
       Text := sBase + sFiltro + sOrdem;
       Open;

  end;

  grPed.SetFocus;

end;

procedure TfmManCmp.EdPsqCodForExit(Sender: TObject);
begin
  if Trim( EdPsqCodFor.Text ) <> '' then begin

     with quSql,SQL do begin

          Close;
          Text := 'Select NomFor From FinFor Where CodFor = '''+ EdPsqCodFor.Text +'''';
          Open;

          EdPsqNomFor.Text := quSql.FieldByName('NomFor').AsString;

     end;

     end
  else
     EdPsqNomFor.Text := '';
end;

procedure TfmManCmp.bPsqForClick(Sender: TObject);
begin

  try

     fmAuxIni := TfmAuxIni.Create(Self);

     fmAuxIni.TipoPesq := 'F';

     fmAuxIni.ShowModal;

     if fmAuxIni.CodFor > 0 then begin

        EdPsqNomFor.Text := fmAuxIni.NomFor;
        EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

     end;

  finally   

     FreeAndNil(fmAuxIni);

  end;
end;

procedure TfmManCmp.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqNumPed.SetFocus;
end;

procedure TfmManCmp.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManCmp.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManCmp := nil;
end;

procedure TfmManCmp.EdPsqNumResKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not ( key in [ '0'..'9' ] ) then key := #0;
end;

procedure TfmManCmp.EdPsqCodForKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key = 112 then begin {F1 - Iniciais}

     try

        fmAuxIni := TfmAuxIni.Create(Self);

        fmAuxIni.TipoPesq := 'F';

        fmAuxIni.ShowModal;

        if fmAuxIni.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxIni.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxIni.CodFor);

        end;

     finally   

        FreeAndNil(fmAuxIni);

     end;
  end;

  if key = 113 then begin {F2 - Inteligente/Nome}

     try

        fmAuxPsq := TfmAuxPsq.Create(Self);

        fmAuxPsq.TipoPesq := 'F';

        fmAuxPsq.ShowModal;

        if fmAuxPsq.CodFor > 0 then begin

           EdPsqNomFor.Text := fmAuxPsq.NomFor;
           EdPsqCodFor.Text := IntToStr(fmAuxPsq.CodFor);

        end;

     finally   

        FreeAndNil(fmAuxPsq);

     end;
  end;
end;

procedure TfmManCmp.DsPedDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if CmpPedCodFor.Value > 0 then
     pnCodFor.Caption := ' Código do Fornecedor : ' + FNumZeros(IntToStr(CmpPedCodFor.Value),7)
  else
     pnCodFor.Caption := ' Código do Fornecedor : ';

  pnLogUsu.Caption := ' Responsavel : ' + CmpPedLogUsu.Value;

end;

procedure TfmManCmp.EdPsqNumPedExit(Sender: TObject);
begin
  inherited;
  if Trim( EdPsqNumPed.Text ) <> '' then begin

     EdPsqCodFor.Clear;
     EdPsqNomFor.Clear;

     EdPsqDpePed1.Clear;
     EdPsqDpePed2.Clear;

  end;
end;

procedure TfmManCmp.bImprimirClick(Sender: TObject);
var
QtiPed : integer;
begin
  inherited;
  if CmpPedCodEmp.Value > 0 then begin

     if fMsg('Imprime Pedido de Compra ?','O') then begin

        if CmpPe2CodEmp.Value > 0 then begin

           rdprint.OpcoesPreview.Preview     := False;
           rdprint.OpcoesPreview.PreviewZoom := 100;
           rdprint.TamanhoQteLPP             := seis;
           rdprint.UsaGerenciadorImpr        := True;

           rdprint.TamanhoQteColunas  := 136;
           rdprint.FonteTamanhoPadrao := s17cpp;

           QtiPed := 0;

           {Inicio...}
           with rdprint do begin

                abrir; {inicializa o arquivo de impressao...}

                if setup then begin {abre tela para escolha da impressora e modelo...}

                   CmpPe2.First;

                   while not CmpPe2.Eof do begin

                         impf(Linha,001,CmpPe2CodGru.Value+'.'+CmpPe2CodSub.Value+'.'+CmpPe2CodPro.Value,[NORMAL]);
                         impf(Linha,027,copy(CmpPe2DesPe2.Value,1,37),[NORMAL]);
                         impf(Linha,092,Prestring(FormatFloat('###,##0.0000',CmpPe2SldPe2.Value),12),[NORMAL]);
                         impf(Linha,114,CmpPe2CodUnd.Value,[NORMAL]);
                         impf(Linha,118,Prestring(FormatFloat('###,##0.0000',CmpPe2VlqPe2.Value),11),[NORMAL]);

                         Inc(Linha);

                         if Linha > 61 then rdprint.novapagina;

                         if Trim(CmpPe2CodPfo.Value) <> '' then begin

                            impf(Linha,027,CmpPe2CodPfo.Value,[NORMAL]);

                            Inc(Linha);

                            if Linha > 61 then rdprint.novapagina;

                         end;
                         
                         QtiPed := QtiPed + 1;

                         CmpPe2.Next;

                   end;

                   Inc(Linha);

                   if Linha > 61 then rdprint.novapagina;

                   impf(Linha,001,'Total de Itens : '+PreString(IntToStr(QtiPed),08),[NORMAL, NEGRITO]);

                   Inc(Linha);
                   Inc(Linha);

                   if Linha > 61 then rdprint.novapagina;

                   impf(Linha,001,'Observacoes    : ',[NORMAL,NEGRITO]);
                   impf(Linha,030,copy(CmpPedObsPed.Value,001,040),[NORMAL]);

                   if Trim( copy(CmpPedObsPed.Value,041,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint.novapagina;

                      impf(Linha,030,copy(CmpPedObsPed.Value,041,040),[NORMAL]);

                   end;

                   if Trim( copy(CmpPedObsPed.Value,081,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint.novapagina;

                      impf(Linha,030,copy(CmpPedObsPed.Value,081,040),[NORMAL]);

                   end;

                   if Trim( copy(CmpPedObsPed.Value,121,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint.novapagina;

                      impf(Linha,030,copy(CmpPedObsPed.Value,121,040),[NORMAL]);

                   end;

                   if Trim( copy(CmpPedObsPed.Value,161,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint.novapagina;

                      impf(Linha,030,copy(CmpPedObsPed.Value,161,040),[NORMAL]);

                   end;

                   if Trim( copy(CmpPedObsPed.Value,201,040) ) <> '' then begin

                      Inc(Linha);

                      if Linha > 61 then rdprint.novapagina;

                      impf(Linha,030,copy(CmpPedObsPed.Value,201,040),[NORMAL]);

                   end;

                   Inc(Linha);

                   if Linha > 61 then rdprint.novapagina;

                   Inc(Linha);

                   if Linha > 61 then rdprint.novapagina;

                   Inc(Linha);

                   if Linha > 61 then rdprint.novapagina;

                   impf(Linha,001,'                                         Conferido Por : ______________________',[NORMAL, NEGRITO]);

                   Fechar;  {Finaliza e inicia impressao ou preview}

                end;
           end;
        end;
      end;
   end;
end;

procedure TfmManCmp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then close;

  if key = 116 then bImprimir.OnClick(Sender);

end;

procedure TfmManCmp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManCmp.rdprintNewPage(Sender: TObject; Pagina: Integer);
begin
  inherited;

  rdprint.impf(01,001,'PEDIDO DE COMPRA',[EXPANDIDO, NORMAL]);

  rdprint.impf(02,001,'Entregar em '+DateToStr(CmpPedDpePed.Value),[EXPANDIDO, NORMAL]);

  rdprint.impf(02,114,'Pagina No. '+fNumZeros(IntToStr(Pagina),3),[NORMAL]);

  rdprint.impf(03,001,fReplicate('-',80),[NORMAL]);
  rdprint.impf(04,001,'Pedido       : '+preString(IntToStr(CmpPedNumPed.Value),7),[NORMAL, NEGRITO]);
  rdprint.impf(04,075,'Data : '+DateToStr(CmpPedDtePed.Value),[NORMAL]);
  rdprint.impf(04,111,'Hora : '+CmpPedHrePed.Value,[NORMAL]);
  rdprint.impf(05,001,'Fornecedor   : '+preString(IntToStr(CmpPedCodFor.Value),7)+' - '+CmpPedNomFor.Value,[NORMAL, NEGRITO]);
  rdprint.impf(05,120,CmpPedUfePed.Value,[EXPANDIDO, NORMAL]);
  rdprint.impf(06,001,'Responsavel  : '+CmpPedLogUsu.Value,[NORMAL,NEGRITO]);

  rdprint.impf(07,001,fReplicate('-',80),[NORMAL]);
  rdprint.impf(08,001,'Nosso Codigo',[NORMAL]);
  rdprint.impf(08,027,'Descricao',[NORMAL]);
  rdprint.impf(08,104,'Quant',[NORMAL]);
  rdprint.impf(08,114,'UN',[NORMAL]);
  rdprint.impf(08,130,'Unit',[NORMAL]);
  rdprint.impf(09,001,fReplicate('-',14),[NORMAL]);
  rdprint.impf(09,027,fReplicate('-',37),[NORMAL]);
  rdprint.impf(09,092,fReplicate('-',12),[NORMAL]);
  rdprint.impf(09,114,fReplicate('-',02),[NORMAL]);
  rdprint.impf(09,118,fReplicate('-',11),[NORMAL]);

  Linha := 10;

end;

end.

