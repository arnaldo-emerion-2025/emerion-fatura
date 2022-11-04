unit ManIro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Db,
  DBTables, Wwquery, RDprint, dxExEdtr, FShowPadrao, dxDBColorCurrencyEdit,
  Inifiles, shellapi, filectrl, IdComponent, IdTCPConnection, IdTCPClient,
  IdMessageClient, IdSMTP, IdBaseComponent, IdMessage;

type
  TfmManIro = class(TfmShowPadrao)
    GerEmp: TwwQuery;
    GerEmpCODEMP: TIntegerField;
    GerEmpNOMEMP: TStringField;
    GerEmpAPEEMP: TStringField;
    GerEmpCEPEMP: TStringField;
    GerEmpENDEMP: TStringField;
    GerEmpREFEMP: TStringField;
    GerEmpTENEMP: TStringField;
    GerEmpNUMEMP: TStringField;
    GerEmpBAIEMP: TStringField;
    GerEmpCIDEMP: TStringField;
    GerEmpSIGUFE: TStringField;
    GerEmpCGCEMP: TStringField;
    GerEmpINSEMP: TStringField;
    GerEmpPRTEMP: TStringField;
    GerEmpFONEMP: TStringField;
    GerEmpPRFEMP: TStringField;
    GerEmpFAXEMP: TStringField;
    GerEmpEMAEMP: TStringField;
    GerEmpWEBEMP: TStringField;
    GerEmpQTDNFS: TIntegerField;
    GerEmpNUMRES: TIntegerField;
    GerEmpNUMPED: TIntegerField;
    PaintBox: TPaintBox;
    Label10: TLabel;
    Bevel1: TBevel;
    Label57: TLabel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    quSQL: TwwQuery;
    EdNroNfs: TdxDBColorCurrencyEdit;
    RDprint1: TRDprint;
    CmpNfs: TwwQuery;
    CmpNf2: TwwQuery;
    CmpNf2CODCLP: TStringField;
    CmpNf2CODGRU: TStringField;
    CmpNf2CODSUB: TStringField;
    CmpNf2CODPRO: TStringField;
    CmpNf2QTPNF2: TFloatField;
    CmpNf2VLUNF2: TFloatField;
    CmpNf2IPINF2: TFloatField;
    CmpNf2ICMNF2: TFloatField;
    CmpNf2TOTITE: TFloatField;
    CmpNf2CODST1: TStringField;
    CmpNf2CODST2: TStringField;
    CmpNf2CODUND: TStringField;
    CmpNf2CODEMP: TIntegerField;
    CmpNf2DTENFS: TDateTimeField;
    CmpNf2SEQNFS: TIntegerField;
    CmpNf2SEQNF2: TIntegerField;
    CmpNf2CODEIT: TIntegerField;
    CmpNf2CODTAM: TStringField;
    CmpNf2CODCOR: TStringField;
    CmpNf2DESNF2: TStringField;
    CmpNf2OBSNF2: TStringField;
    CmpNf2REFNF2: TStringField;
    CmpNf2LIQNF2: TFloatField;
    CmpNf2BRTNF2: TFloatField;
    CmpNf2LINNF2: TIntegerField;
    CmpNf2QTDNF2: TFloatField;
    CmpNf2SLDNF2: TFloatField;
    CmpNf2CLSIPI: TStringField;
    CmpNf2SEQNFG: TIntegerField;
    CmpNf2SEQNF3: TIntegerField;
    CmpNf2BASIPI: TFloatField;
    CmpNf2TOTIPI: TFloatField;
    CmpNf2BASICM: TFloatField;
    CmpNf2TOTICM: TFloatField;
    CmpNf2BASSUB: TFloatField;
    CmpNf2TOTSUB: TFloatField;
    CmpNf2TOTNF2: TFloatField;
    CmpNf2TOTLIQ: TFloatField;
    CmpNf2TOTBRT: TFloatField;
    CmpNf2TOTPIS: TFloatField;
    CmpNf2TOTCOF: TFloatField;
    CmpNf2CODSTR: TStringField;
    CmpNf2TIPSTR: TStringField;
    CmpNf2REGIPI: TStringField;
    CmpNf2TIPIPI: TStringField;
    CmpNf2TRBIPI: TStringField;
    CmpNf2REDIPI: TFloatField;
    CmpNf2BSCIPI: TFloatField;
    CmpNf2REGICM: TStringField;
    CmpNf2TIPICM: TStringField;
    CmpNf2TRBICM: TStringField;
    CmpNf2REDICM: TFloatField;
    CmpNf2BSCICM: TFloatField;
    CmpNf2INCREV: TFloatField;
    CmpNf2INCFIN: TFloatField;
    CmpNf2NRONFS: TIntegerField;
    CmpNf2NRONF2: TIntegerField;
    CmpNf2FLGATU: TStringField;
    CmpNf2FLGENT: TStringField;
    CmpNf2QTINFE: TIntegerField;
    CmpNf2SEQNFE: TIntegerField;
    CmpNf2CODTXF: TStringField;
    UpNfs: TUpdateSQL;
    UpNf2: TUpdateSQL;
    CmpNfsCODEMP: TIntegerField;
    CmpNfsDTENFS: TDateTimeField;
    CmpNfsSEQNFS: TIntegerField;
    CmpNfsDTEFAT: TDateTimeField;
    CmpNfsHREFAT: TStringField;
    CmpNfsUFENFS: TStringField;
    CmpNfsCODPFA: TStringField;
    CmpNfsTIPPFA: TStringField;
    CmpNfsMODPFA: TStringField;
    CmpNfsCODFOR: TIntegerField;
    CmpNfsPERPIS: TFloatField;
    CmpNfsPERCOF: TFloatField;
    CmpNfsCODFIL: TIntegerField;
    CmpNfsQTDNFS: TIntegerField;
    CmpNfsNRONFS: TIntegerField;
    CmpNfsCGCFOR: TStringField;
    CmpNfsINSFOR: TStringField;
    CmpNfsCODCF1: TStringField;
    CmpNfsCODCF2: TStringField;
    CmpNfsFRTNFS: TStringField;
    CmpNfsFLGENT: TStringField;
    CmpNfsFLGSAI: TStringField;
    CmpNfsDESNAT: TStringField;
    CmpNfsINSSUB: TStringField;
    CmpNfsTIPFRT: TStringField;
    CmpNfsMARNFS: TStringField;
    CmpNfsNUMNFS: TStringField;
    CmpNfsESPNFS: TStringField;
    CmpNfsNOMTRA: TStringField;
    CmpNfsCGCTRA: TStringField;
    CmpNfsINSTRA: TStringField;
    CmpNfsCEPTRA: TStringField;
    CmpNfsTENTRA: TStringField;
    CmpNfsENDTRA: TStringField;
    CmpNfsREFTRA: TStringField;
    CmpNfsNUMTRA: TStringField;
    CmpNfsBAITRA: TStringField;
    CmpNfsCIDTRA: TStringField;
    CmpNfsUFETRA: TStringField;
    CmpNfsPLCTRA: TStringField;
    CmpNfsPRTTRA: TStringField;
    CmpNfsFONTRA: TStringField;
    CmpNfsUFEPLC: TStringField;
    CmpNfsCEPFOR: TStringField;
    CmpNfsTENFOR: TStringField;
    CmpNfsENDFOR: TStringField;
    CmpNfsREFFOR: TStringField;
    CmpNfsNUMFOR: TStringField;
    CmpNfsBAIFOR: TStringField;
    CmpNfsCIDFOR: TStringField;
    CmpNfsUFEFOR: TStringField;
    CmpNfsTXFIPI: TStringField;
    CmpNfsTXFICM: TStringField;
    CmpNfsOBSNFS: TStringField;
    CmpNfsSEQITE: TIntegerField;
    CmpNfsQTINFS: TIntegerField;
    CmpNfsLINNFS: TIntegerField;
    CmpNfsQTDVOL: TIntegerField;
    CmpNfsALTVOL: TIntegerField;
    CmpNfsINFLIQ: TFloatField;
    CmpNfsTOTLIQ: TFloatField;
    CmpNfsINFBRT: TFloatField;
    CmpNfsTOTBRT: TFloatField;
    CmpNfsBASIPI: TFloatField;
    CmpNfsTOTIPI: TFloatField;
    CmpNfsBASICM: TFloatField;
    CmpNfsTOTICM: TFloatField;
    CmpNfsBASSUB: TFloatField;
    CmpNfsTOTSUB: TFloatField;
    CmpNfsTOTITE: TFloatField;
    CmpNfsTOTGER: TFloatField;
    CmpNfsTOTPIS: TFloatField;
    CmpNfsTOTCOF: TFloatField;
    CmpNfsTOTFRT: TFloatField;
    CmpNfsTOTSEG: TFloatField;
    CmpNfsTOTDES: TFloatField;
    CmpNfsICMFRT: TFloatField;
    CmpNfsBSICMF: TFloatField;
    CmpNfsBAICMF: TFloatField;
    CmpNfsTOICMF: TFloatField;
    CmpNfsICMSEG: TFloatField;
    CmpNfsBSICMS: TFloatField;
    CmpNfsBAICMS: TFloatField;
    CmpNfsTOICMS: TFloatField;
    CmpNfsICMDES: TFloatField;
    CmpNfsBSICMD: TFloatField;
    CmpNfsBAICMD: TFloatField;
    CmpNfsTOICMD: TFloatField;
    CmpNfsIPIFRT: TFloatField;
    CmpNfsBSIPIF: TFloatField;
    CmpNfsBAIPIF: TFloatField;
    CmpNfsTOIPIF: TFloatField;
    CmpNfsIPISEG: TFloatField;
    CmpNfsBSIPIS: TFloatField;
    CmpNfsBAIPIS: TFloatField;
    CmpNfsTOIPIS: TFloatField;
    CmpNfsIPIDES: TFloatField;
    CmpNfsBSIPID: TFloatField;
    CmpNfsBAIPID: TFloatField;
    CmpNfsTOIPID: TFloatField;
    CmpNfsBASIP1: TFloatField;
    CmpNfsTOTIP1: TFloatField;
    CmpNfsBASIC1: TFloatField;
    CmpNfsTOTIC1: TFloatField;
    CmpNfsBASSU1: TFloatField;
    CmpNfsTOTSU1: TFloatField;
    CmpNfsTOTIT1: TFloatField;
    CmpNfsTOTGE1: TFloatField;
    CmpNfsCODUSU: TIntegerField;
    CmpNfsHRCNFS: TStringField;
    CmpNfsDTCNFS: TDateTimeField;
    CmpNfsUSCNFS: TIntegerField;
    CmpNfsOBCNFS: TStringField;
    CmpNfsATUEST: TStringField;
    CmpNfsLANEST: TStringField;
    CmpNfsINTFIN: TStringField;
    CmpNfsCONSUM: TStringField;
    CmpNfsFLGCTB: TStringField;
    CmpNfsCODIPI: TStringField;
    CmpNfsTIPIPI: TStringField;
    CmpNfsTRBIPI: TStringField;
    CmpNfsREDIPI: TFloatField;
    CmpNfsBSCIPI: TFloatField;
    CmpNfsCODICM: TStringField;
    CmpNfsTIPICM: TStringField;
    CmpNfsTRBICM: TStringField;
    CmpNfsREDICM: TFloatField;
    CmpNfsBSCICM: TFloatField;
    CmpNfsINCREV: TFloatField;
    CmpNfsINCFIN: TFloatField;
    CmpNfsNROCOL: TStringField;
    CmpNfsSEQOPE: TStringField;
    CmpNfsSITNFS: TStringField;
    CmpNfsFLGNFS: TStringField;
    CmpNfsFLGATU: TStringField;
    CmpNfsCODTIP: TIntegerField;
    CmpNfsDESREG: TStringField;
    CmpNfsFLGENV: TStringField;
    CmpNfsFLGSIN: TStringField;
    CmpNfsOB1NFS: TStringField;
    CmpNfsOB2NFS: TStringField;
    CmpNfsOB3NFS: TStringField;
    CmpNfsOB4NFS: TStringField;
    CmpNfsOB5NFS: TStringField;
    CmpNfsOB6NFS: TStringField;
    CmpNfsOB7NFS: TStringField;
    CmpNfsOB8NFS: TStringField;
    CmpNfsFLGIMP: TStringField;
    CmpNfsNOMENT: TStringField;
    CmpNfsDTFNFS: TDateTimeField;
    CmpNfsHRFNFS: TStringField;
    CmpNfsUSFNFS: TIntegerField;
    CmpNfsOBFNFS: TStringField;
    CmpNfsCODTFO: TIntegerField;
    CmpNfsFLGNFE: TStringField;
    CmpNfsCEFFOR: TStringField;
    CmpNfsTEFFOR: TStringField;
    CmpNfsENFFOR: TStringField;
    CmpNfsRFFFOR: TStringField;
    CmpNfsNRFFOR: TStringField;
    CmpNfsBAFFOR: TStringField;
    CmpNfsCIFFOR: TStringField;
    CmpNfsUFFFOR: TStringField;
    CmpNfsID_FINUFF: TIntegerField;
    CmpNfsID_FINCIF: TIntegerField;
    CmpNfsID_FINUFE: TIntegerField;
    CmpNfsID_FINCIE: TIntegerField;
    CmpNfsID_TRAUFE: TIntegerField;
    CmpNfsID_TRACIE: TIntegerField;
    CmpNfsCGEFOR: TStringField;
    CmpNfsINEFOR: TStringField;
    CmpNfsID_ESTSIP: TIntegerField;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsTRBPIS: TStringField;
    CmpNfsNFEPIS: TStringField;
    CmpNfsTRBCOF: TStringField;
    CmpNfsNFECOF: TStringField;
    CmpNfsENVNFE: TStringField;
    CmpNfsSEQNFE: TStringField;
    CmpNfsDTENFE: TDateTimeField;
    CmpNfsRECNFE: TStringField;
    CmpNfsPRONFE: TStringField;
    CmpNfsLOTNFE: TIntegerField;
    CmpNfsDTEPNF: TDateTimeField;
    CmpNfsHREPNF: TStringField;
    CmpNfsDOPNFE: TDateTimeField;
    CmpNfsHRENFE: TStringField;
    CmpNfsUSUNFE: TIntegerField;
    CmpNfsIMPNFE: TStringField;
    CmpNfsRETNFE: TStringField;
    CmpNfsDTECNE: TDateTimeField;
    CmpNfsHRECNE: TStringField;
    CmpNfsARQNFE: TBlobField;
    CmpNfsDTCNFE: TDateTimeField;
    CmpNfsHRCNFE: TStringField;
    CmpNfsPRCNFE: TStringField;
    CmpNfsNROPDI: TStringField;
    CmpNfsDTEPDI: TDateTimeField;
    CmpNfsLOCPDI: TStringField;
    CmpNfsUFEPDI: TStringField;
    CmpNfsDTEADU: TDateTimeField;
    CmpNfsEXPPDI: TStringField;
    CmpNfsFLGUSA: TStringField;
    CmpNfsFLGEMI: TStringField;
    CmpNfsCODTRA: TIntegerField;
    CmpNfsNOMFOR: TStringField;
    CmpNfsEMAFOR: TStringField;
    BitBtn1: TBitBtn;
    PaintBox1: TPaintBox;
    UpFatArq: TUpdateSQL;
    FatArq: TwwQuery;
    DSCmpNFS: TDataSource;
    DSCMPNF2: TDataSource;
    QuSQL1: TwwQuery;
    FatArqCODEMP: TIntegerField;
    FatArqDTENFS: TDateTimeField;
    FatArqNUMNFS: TStringField;
    FatArqSEQNFS: TIntegerField;
    FatArqARQNFE: TBlobField;
    FatArqFLGATU: TStringField;
    FatArqID_CMPNFS: TIntegerField;
    FatArqNFETH: TIntegerField;
    FatArqSITNFS: TStringField;
    CorpoMail: TMemo;
    Memo1: TMemo;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    Button1: TButton;
    procedure bretornarClick(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure CmpNfsAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure bt_erroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    eAssunto, eAnexo, ePDF, ePara, eUsuario, eSenha, eHost, EProtocolo: string;
    eAutomatico, ei, eposicao, ehomologacao: integer;
    ecorpo: string;
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManIro: TfmManIro;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB, ManRo2, ManNF1R_NFE,
  ManPri, ManEn3_NFE, ManLro, ManRo4, ManRo3, ManE12_NFE;

{$R *.DFM}

procedure FindReplace(const Enc, subs: string; var Texto: TMemo);
var
  ifr, Posicaofr: Integer;
  Linhafr: string;
begin
  for ifr := 0 to Texto.Lines.count - 1 do
  begin
    Linhafr := Texto.Lines[ifr];
    repeat
      Posicaofr := Pos(Enc, Linhafr);
      if Posicaofr > 0 then
      begin
        Delete(Linhafr, Posicaofr, Length(Enc));
        Insert(Subs, Linhafr, Posicaofr);
        Texto.Lines[ifr] := Linhafr;
      end;
    until Posicaofr = 0;
  end;
end;

procedure TfmManIro.bretornarClick(Sender: TObject);
begin

  if fmManRo2.CmpNfsSitNfs.Value = 'Concluido' then
    fmManRo2.Finalizar := 'S';

  close;

end;

procedure TfmManIro.bcontinuarClick(Sender: TObject);
var
  ArqTexto: TStringList;
  Nota01: array[1..208] of string;
  Nota02: array[1..208] of string;
  ValorExt, ValorEx1, ValorEx2, ValorEx3, sContinuar: string;
  NomFor, CgcFor, InsFor, TenFor, CepFor, EndFor, NumFor, BaiFor, CidFor, SigUfe: string;
  EndEnt1, EndEnt2, EndCob1, EndCob2, Linha, FonFor, PrtFor, sCanc, sText, ImpClf, GImpRef: string;
  Tam, Reg, Inc, Col, Lin, r, i, j, rec, qtdIte, qtdNfs, qtdLin, qtdnfis, qtdimpr, qtitens, SeqNf2, SeqNfg, QtiNfg, qtdnot, SeqError: integer;
begin
  ActiveControl := nil;
  if fmManRo2.CmpNfsNroNfs.Value > 0 then
  begin
    sContinuar := 'N';
    qtdnfs := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

    if EdNroNfs.Value > qtdnfs then
    begin
      if fMsgConf('Nota Fiscal Informada Fora de Sequencia. Proxima ' + Trim(IntToStr(QtdNfs)) + '. Confirma ?', 'E') = 'SIM' then
        sContinuar := 'S'
      else
      begin
        if fmManRo2.CmpNfs.State = dsBrowse then
          fmManRo2.CmpNfs.Edit;
        fmManRo2.CmpNfsNroNfs.Value := QtdNfs;
        EdNroNfs.Value := fmManRo2.CmpNfsNroNfs.Value;
        if EdNroNfs.Enabled then
          EdNroNfs.SetFocus;
      end;
    end
    else
    begin
      if EdNroNfs.Value < qtdnfs then
      begin
        if fMsgConf('Nota Fiscal Informada Fora de Sequencia. Proxima ' + Trim(IntToStr(QtdNfs)) + '. Confirma ?', 'O') = 'SIM' then
          sContinuar := 'S'
        else
          sContinuar := 'N';
      end
      else
        sContinuar := 'S';
    end;
    if sContinuar = 'S' then
    begin
      if FileExists('C:\Emerion\LINCOL.TXT') then
      begin
        if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Aguardando Emissao de Nota Fiscal' then
        begin
          if fmManRo2.CmpNfs.State = dsBrowse then
            fmManRo2.CmpNfs.Edit;
          fmManRo2.CmpNfsFlgNfs.Value := '*';
          with fmManRo2.CmpNfs do
          begin
            fmManGDB.dbMain.StartTransaction; {Inicia a Transação}

            try

              ApplyUpdates; {Tenta aplicar as alterações}

              fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}

            except

              fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}

              sContinuar := 'N';

              if fmManRo2.CmpNfs.State = dsBrowse then
                fmManRo2.CmpNfs.Edit;

              EdNroNfs.Value := fmManRo2.CmpNfsNroNfs.Value;

              if EdNroNfs.Enabled then
                EdNroNfs.SetFocus;

              raise;

            end;

            CommitUpdates; {sucesso!, limpa o cache...}

          end;

          fmManRo2.CmpNfs.Close;
          fmManRo2.CmpNfs.Open;

          fmManRo2.CmpNf2.Close;
          fmManRo2.CmpNf2.Open;

          fmManRo2.CmpNfs.Edit;

          sContinuar := 'S';

        end
        else
          sContinuar := 'S';

        if sContinuar = 'S' then
        begin

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select ImpRef From FatPar';
            Open;

            GImpRef := FieldByName('ImpRef').AsString;

          end;

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select FinFor.NomFor,' +
              '        FinFor.CgcFor,' +
              '        FinFor.InsFor,' +
              '        FinFor.TenFor,' +
              '        FinFor.EndFor,' +
              '        FinFor.NumFor,' +
              '        FinFor.BaiFor,' +
              '        FinFor.CidFor,' +
              '        FinFor.SigUfe,' +
              '        FinFor.CepFor,' +
              '        FinFor.PrtFor,' +
              '        FinFor.FonFor From FinFor Where FinFor.CodFor = ''' + IntToStr(fmManRo2.CmpNfsCodFor.Value) + '''';
            Open;

            NomFor := FieldbyName('NomFor').AsString;
            CgcFor := FieldbyName('CgcFor').AsString;
            InsFor := FieldbyName('InsFor').AsString;
            TenFor := FieldbyName('TenFor').AsString;
            EndFor := FieldbyName('EndFor').AsString;
            NumFor := FieldbyName('NumFor').AsString;
            BaiFor := FieldbyName('BaiFor').AsString;
            CidFor := FieldbyName('CidFor').AsString;
            SigUfe := FieldbyName('SigUfe').AsString;
            CepFor := FieldbyName('CepFor').AsString;

            PrtFor := FieldbyName('PrtFor').AsString;
            FonFor := FieldbyName('FonFor').AsString;

          end;
          if Trim(NomFor) <> '' then
          begin

            if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Aguardando Emissao de Nota Fiscal' then
            begin

              sText := '              Confirma Nota Fiscal?               ' + #10 +
                '                                                  ' + #10 +
                ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :' + #10 +
                '                                                  ';

              if fmManRo2.CmpNfsAtuEst.Value = 'Sim' then
                sText := sText + #10 + ' . Baixas nos Estoques dos Itens Faturados;       ';

              if fmManRo2.CmpNfsIntFin.Value = 'Sim' then
                sText := sText + #10 + ' . Lançamentos dos Titulos no Contas a Receber.   ';

              sText := sText + #10 + '                                                  ';

              if fMsg(sText, 'O') then
              begin

                fmManRo2.CmpNfs.Edit;

                fmManRo2.CmpNfsSitNfs.Value := 'Concluido';

                with fmManRo2.CmpNfs do
                begin

                  fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
                  ;

                  try

                    ApplyUpdates; {Tenta aplicar as alterações}
                    ;

                    fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
                    ;

                  except

                    fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
                    ;

                    if fmManRo2.CmpNfs.State <> dsBrowse then
                      fmManRo2.CmpNfs.CancelUpdates;

                    fmManRo2.CmpNfs.Close;
                    fmManRo2.CmpNfs.Open;

                    fmManRo2.CmpNfs.Edit;

                    sContinuar := 'N';

                    if EdNroNfs.Enabled then
                      EdNroNfs.SetFocus;

                    raise;

                  end;

                  CommitUpdates; {sucesso!, limpa o cache...}

                end;

                fmManRo2.CmpNfs.Close;
                fmManRo2.CmpNfs.Open;

                EdNroNfs.Enabled := False;

                sContinuar := 'S';

              end
              else
              begin

                EdNroNfs.Enabled := False;

                sContinuar := 'N';

                bContinuar.SetFocus;

              end;

            end
            else
            begin

              if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Concluido' then
                fMsg('Operação não Pode ser Realizada. Romaneio Concluido.', 'E')

              else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Nao Concluido' then
                fMsg('Operação não Pode ser Realizada. Romaneio não Concluido.', 'E')

              else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Recebido' then
                fMsg('Operação não Pode ser Realizada. Romaneio com Recebimentos já Realizados.', 'E')

              else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Recebido Parcialmente' then
                fMsg('Operação não Pode ser Realizada. Romaneio com Recebimentos já Realizados.', 'E')

              else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Saldo Nao Atendido' then
                fMsg('Operação não Pode ser Realizada. Romaneio com Saldo não Atendido.', 'E')

              else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Cancelado' then
                fMsg('Operação não Pode ser Realizada. Romaneio Cancelado.', 'E')

              else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Processo de Alteracao' then
                fMsg('Operação não Pode ser Realizada. Romaneio em Processo de Alteração.', 'E');

            end;

            if sContinuar = 'S' then
            begin

              fmsg('Posicione Nota Fiscal e Pressione ENTER', 'E');

              SeqError := 1;

              try

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select QtdLin,QtdNot,ImpClf From FatPar';
                  Open;

                  ImpClf := quSql.FieldbyName('ImpClf').AsString;
                  QtdIte := quSql.FieldbyName('QtdLin').AsInteger;
                  QtdNfs := quSql.FieldbyName('QtdNot').AsInteger;

                end;

                ArqTexto := TStringList.Create;
                ArqTexto.LoadFromFile('C:\Emerion\LINCOL.TXT');

                qtdLin := ArqTexto.Count - 1; {Quantidade de Linhas no Arquivo LINCOL.TXT}

                EndCob2 := '';
                EndEnt2 := '';

                if Trim(TenFor) <> '' then
                  EndCob1 := Trim(TenFor);

                EndCob1 := EndCob1 + ' ' + Trim(EndFor) + ' No. ' + Trim(NumFor) + ' ' +
                  Trim(BaiFor) + ' - ' + Trim(CidFor) + ' ' +
                  Trim(SigUfe) + ' Cep ' + Trim(CepFor);

                if Trim(fmManRo2.CmpNfsNomEnt.Value) <> '' then
                begin

                  EndEnt1 := Trim(fmManRo2.CmpNfsNomEnt.Value);

                  EndEnt1 := EndEnt1 + ' C.N.P.J :' + copy(fmManRo2.CmpNfsCgcFor.Value, 01, 2) + '.' + copy(fmManRo2.CmpNfsCgcFor.Value, 3, 3) + '.' +
                    copy(fmManRo2.CmpNfsCgcFor.Value, 06, 3) + '/' + copy(fmManRo2.CmpNfsCgcFor.Value, 9, 4) + '-' +
                    copy(fmManRo2.CmpNfsCgcFor.Value, 13, 2);

                  if Trim(fmManRo2.CmpNfsTenFor.Value) <> '' then
                    EndEnt2 := Trim(fmManRo2.CmpNfsTenFor.Value) + ' ';

                  if Trim(fmManRo2.CmpNfsNumFor.Value) <> '' then
                    EndEnt2 := EndEnt2 + Trim(fmManRo2.CmpNfsEndFor.Value) + ', ' + Trim(fmManRo2.CmpNfsNumFor.Value) + ' '
                  else
                    EndEnt2 := EndEnt2 + Trim(fmManRo2.CmpNfsEndFor.Value) + ' ';

                  EndEnt2 := EndEnt2 + Trim(fmManRo2.CmpNfsBaiFor.Value) + ' - ' + Trim(fmManRo2.CmpNfsCidFor.Value) + ' ' + Trim(fmManRo2.CmpNfsUfeFor.Value) +
                    ' Cep '
                    + Trim(fmManRo2.CmpNfsCepFor.Value);

                end
                else
                begin

                  if Trim(fmManRo2.CmpNfsTenFor.Value) <> '' then
                    EndEnt1 := Trim(fmManRo2.CmpNfsTenFor.Value) + ' ';

                  if Trim(fmManRo2.CmpNfsNumFor.Value) <> '' then
                    EndEnt1 := EndEnt1 + Trim(fmManRo2.CmpNfsEndFor.Value) + ', ' + Trim(fmManRo2.CmpNfsNumFor.Value) + ' '
                  else
                    EndEnt1 := EndEnt1 + Trim(fmManRo2.CmpNfsEndFor.Value) + ' ';

                  EndEnt1 := EndEnt1 + Trim(fmManRo2.CmpNfsBaiFor.Value) + ' - ' + Trim(fmManRo2.CmpNfsCidFor.Value) + ' ' + Trim(fmManRo2.CmpNfsUfeFor.Value) +
                    ' Cep '
                    + Trim(fmManRo2.CmpNfsCepFor.Value);

                  EndEnt2 := 'C.N.P.J.:' + copy(fmManRo2.CmpNfsCgcFor.Value, 01, 2) + '.' + copy(fmManRo2.CmpNfsCgcFor.Value, 3, 3) + '.' +
                    copy(fmManRo2.CmpNfsCgcFor.Value, 06, 3) + '/' + copy(fmManRo2.CmpNfsCgcFor.Value, 9, 4) + '-' +
                    copy(fmManRo2.CmpNfsCgcFor.Value, 13, 2);

                end;

                if Trim(PrtFor) <> '' then
                  FonFor := '(' + Trim(PrtFor) + ')' + Trim(FonFor)
                else
                  FonFor := Trim(FonFor);

                Nota01[001] := 'NumNot';
                Nota02[001] := 'Comp12';

                Nota01[002] := fmManRo2.CmpNfsFlgSai.Value; {Saida}
                Nota02[002] := 'Comp12';

                Nota01[003] := fmManRo2.CmpNfsFlgEnt.Value; {Entrada}
                Nota02[003] := 'Comp12';

                Nota01[004] := Trim(fmManRo2.CmpNfsDesNat.Value); {NatOper}
                Nota02[004] := 'Comp12';

                if Trim(fmManRo2.CmpNfsCodCf2.Value) <> '' then {Cfop}
                  Nota01[005] := Trim(fmManRo2.CmpNfsCodCf1.Value) + '/' + Trim(fmManRo2.CmpNfsCodCf2.Value)
                else
                  Nota01[005] := Trim(fmManRo2.CmpNfsCodCf1.Value);

                Nota02[005] := 'Comp12';

                Nota01[006] := '';
                Nota02[006] := 'Comp12';

                Nota01[007] := fmManRo2.CmpNfsInsSub.Value; {InscEstSubTrib}
                Nota02[007] := 'Comp12';

                Nota01[010] := DateToStr(fmManRo2.CmpNfsDteFat.Value); {DataEmis}
                Nota02[010] := 'Comp12';

                Nota01[008] := NomFor; {Nome do Fornecedor}
                Nota02[008] := 'Comp12';

                CgcFor := fLimpaStr(CgcFor);

                if Trim(fmManRo2.CmpNfsUfeNfs.Value) <> 'EX' then
                begin

                  if Length(Trim(CgcFor)) <= 11 then
                    Nota01[009] := copy(CgcFor, 1, 3) + '.' + copy(CgcFor, 4, 3) + '.' +
                      copy(CgcFor, 7, 3) + '-' + copy(CgcFor, 10, 2)
                  else
                    Nota01[009] := copy(CgcFor, 01, 2) + '.' + copy(CgcFor, 3, 3) + '.' +
                      copy(CgcFor, 06, 3) + '/' + copy(CgcFor, 9, 4) + '-' +
                      copy(CgcFor, 13, 2);

                end
                else
                  Nota01[009] := ' ';

                Nota02[009] := 'Comp12';

                Nota01[010] := DateToStr(fmManRo2.CmpNfsDteFat.Value); {DataEmis}
                Nota02[010] := 'Comp12';

                Nota01[011] := Trim(TenFor) + ' ' + Trim(EndFor) + ', ' + Trim(NumFor); {Endereco}
                Nota02[011] := 'Comp12';

                Nota01[012] := BaiFor; {Bairro}
                Nota02[012] := 'Comp12';

                if Trim(CepFor) <> '' then {Cep}
                  Nota01[013] := copy(CepFor, 1, 5) + '-' + copy(CepFor, 6, 3)
                else
                  Nota01[013] := ' ';

                Nota02[013] := 'Comp12';

                Nota01[014] := ''; {DataSai}
                Nota02[014] := '';

                Nota01[015] := CidFor; {Cidade}
                Nota02[015] := 'Comp12';

                Nota01[016] := FonFor; {Fone}
                Nota02[016] := 'Comp12';

                {Uf}
                if Trim(fmManRo2.CmpNfsUfeNfs.Value) <> 'EX' then
                  Nota01[017] := SigUfe
                else
                  Nota01[017] := ' ';

                Nota02[017] := 'Comp12';

                {InscEst}
                if Trim(fmManRo2.CmpNfsUfeNfs.Value) <> 'EX' then
                  Nota01[018] := InsFor
                else
                  Nota01[018] := ' ';

                Nota02[018] := 'Comp12';

                Nota01[019] := ''; {Hora da Saida}
                Nota02[019] := 'Comp12';

                Nota01[208] := ' '; {Detalhamento do ICMS}
                Nota02[208] := 'Comp20';

                i := 131;

                rec := 0;

                for j := 1 to 12 do
                begin

                  Nota01[i] := ' '; {Número}
                  Nota02[i] := 'Comp12';

                  i := i + 1;

                  rec := rec + 1;

                  if rec = 8 then
                    i := 195;

                end;

                i := 141;

                rec := 0;

                for j := 1 to 12 do
                begin

                  Nota01[i] := ' '; {Número}
                  Nota02[i] := 'Comp12';

                  i := i + 1;

                  rec := rec + 1;

                  if rec = 8 then
                    i := 199;

                end;

                i := 151;

                rec := 0;

                for j := 1 to 12 do
                begin

                  Nota01[i] := ' '; {Número}
                  Nota02[i] := 'Comp12';

                  i := i + 1;

                  rec := rec + 1;

                  if rec = 8 then
                    i := 203;

                end;

                Nota01[038] := EndCob1; {Cobranca_1}
                Nota02[038] := 'Comp20';

                Nota01[039] := EndCob2; {Cobranca_2}
                Nota02[039] := 'Comp20';

                Nota01[040] := ''; {Produto}
                Nota02[040] := 'Comp20';

                Nota01[041] := ''; {Descr}
                Nota02[041] := 'Comp20';

                Nota01[042] := ''; {ClassFisc}
                Nota02[042] := 'Comp20';

                Nota01[207] := ''; {ClassFisc}
                Nota02[207] := 'Comp20';

                Nota01[043] := ''; {St1}
                Nota02[043] := 'Comp20';

                Nota01[044] := ''; {St2}
                Nota02[044] := 'Comp20';

                Nota01[045] := ''; {Unidade}
                Nota02[045] := 'Comp20';

                Nota01[046] := ''; {Qtde}
                Nota02[046] := 'Comp20';

                Nota01[047] := ''; {Unit}
                Nota02[047] := 'Comp20';

                Nota01[048] := ''; {Total}
                Nota02[048] := 'Comp20';

                Nota01[049] := ''; {AlIcms}
                Nota02[049] := 'Comp20';

                Nota01[050] := ''; {AlIpi}
                Nota02[050] := 'Comp20';

                Nota01[051] := ''; {ValIpi}
                Nota02[051] := 'Comp20';

                Nota01[052] := ''; {Descr2}
                Nota02[052] := 'Comp20';

                Nota01[128] := ''; {Descr3}
                Nota02[128] := 'Comp20';

                Nota01[053] := fmManRo2.CmpNfsTxfIpi.Value; {TextIpi}
                Nota02[053] := 'Comp20';

                Nota01[054] := fmManRo2.CmpNfsTxfIcm.Value; {TextIcm}
                Nota02[054] := 'Comp20';

                Nota01[055] := 'Entrega: ' + EndEnt1; {Entrega_1}
                Nota02[055] := 'Comp20';

                Nota01[056] := '         ' + EndEnt2; {Entrega_2}
                Nota02[056] := 'Comp20';

                Nota01[067] := fmManRo2.CmpNfsNomTra.Value; {NomeTransp}
                Nota02[067] := 'Comp12';

                Nota01[068] := fmManRo2.CmpNfsTipFrt.Value; {FretePc}
                Nota02[068] := 'Comp12';

                Nota01[069] := fmManRo2.CmpNfsPlcTra.Value; {Placa}
                Nota02[069] := 'Comp12';

                Nota01[070] := fmManRo2.CmpNfsUfePlc.Value; {UfPlaca}
                Nota02[070] := 'Comp12';

                if Trim(fmManRo2.CmpNfsCgcTra.Value) <> '' then

                  Nota01[071] := copy(fmManRo2.CmpNfsCgcTra.Value, 01, 2) + '.' + copy(fmManRo2.CmpNfsCgcTra.Value, 3, 3) + '.' +
                    copy(fmManRo2.CmpNfsCgcTra.Value, 06, 3) + '/' + copy(fmManRo2.CmpNfsCgcTra.Value, 9, 4) + '-' +
                    copy(fmManRo2.CmpNfsCgcTra.Value, 13, 2)

                else
                  Nota01[071] := ' ';

                Nota02[071] := 'Comp12';

                Nota01[072] := Trim(fmManRo2.CmpNfsTenTra.Value) + ' ' + Trim(fmManRo2.CmpNfsEndTra.Value) + ', ' + Trim(fmManRo2.CmpNfsNumTra.Value) + ' ' +
                  Trim(fmManRo2.CmpNfsBaiTra.Value);
                Nota02[072] := 'Comp12';

                Nota01[073] := fmManRo2.CmpNfsCidTra.Value; {CidTransp}
                Nota02[073] := 'Comp12';

                Nota01[074] := fmManRo2.CmpNfsUfeTra.Value; {UFTransp}
                Nota02[074] := 'Comp12';

                Nota01[075] := fmManRo2.CmpNfsInsTra.Value; {InscTransp}
                Nota02[075] := 'Comp12';

                // De Acordo com o Toninho Por Enquanto Deixar o Campo de Volumes Em branco Em  : 02/07/2003 //
                // So Exibir se a Valeria Alterar o seu Conteudo "Notas de Exportação //

                if fmManRo2.CmpNfsAltVol.Value > 0 then
                  Nota01[076] := Prestring(IntToStr(fmManRo2.CmpNfsAltVol.Value), 7) {QtdeVol}
                else
                  Nota01[076] := ' ';

                Nota02[076] := 'Comp12';

                Nota01[077] := fmManRo2.CmpNfsEspNfs.Value; {Especie}
                Nota02[077] := 'Comp12';

                Nota01[078] := fmManRo2.CmpNfsMarNfs.Value; {Marca}
                Nota02[078] := 'Comp12';

                Nota01[079] := fmManRo2.CmpNfsNumNfs.Value; {Numero}
                Nota02[079] := 'Comp12';

                Nota01[080] := Prestring(FormatFloat('###,###,##0.00', fmManRo2.CmpNfsInfBrt.Value), 14); {PesBruto}
                Nota02[080] := 'Comp12';

                Nota01[081] := Prestring(FormatFloat('###,###,##0.00', fmManRo2.CmpNfsInfLiq.Value), 14); {PesLiq}
                Nota02[081] := 'Comp12';

                if (Trim(fmManRo2.CmpNfsOb1Nfs.Value) = '') and
                  (Trim(fmManRo2.CmpNfsOb2Nfs.Value) = '') and
                  (Trim(fmManRo2.CmpNfsOb3Nfs.Value) = '') and
                  (Trim(fmManRo2.CmpNfsOb4Nfs.Value) = '') and
                  (Trim(fmManRo2.CmpNfsOb5Nfs.Value) = '') and
                  (Trim(fmManRo2.CmpNfsOb6Nfs.Value) = '') and
                  (Trim(fmManRo2.CmpNfsOb7Nfs.Value) = '') and
                  (Trim(fmManRo2.CmpNfsOb8Nfs.Value) = '') then
                begin

                  Nota01[187] := copy(fmManRo2.CmpNfsObsNfs.Value, 001, 070); {Obs1}
                  Nota02[187] := 'Comp20';

                  Nota01[188] := copy(fmManRo2.CmpNfsObsNfs.Value, 071, 070); {Obs2}
                  Nota02[188] := 'Comp20';

                  Nota01[189] := copy(fmManRo2.CmpNfsObsNfs.Value, 141, 070); {Obs3}
                  Nota02[189] := 'Comp20';

                  Nota01[190] := copy(fmManRo2.CmpNfsObsNfs.Value, 211, 070); {Obs4}
                  Nota02[190] := 'Comp20';

                  Nota01[191] := copy(fmManRo2.CmpNfsObsNfs.Value, 281, 070); {Obs5}
                  Nota02[191] := 'Comp20';

                  Nota01[192] := copy(fmManRo2.CmpNfsObsNfs.Value, 351, 070); {Obs6}
                  Nota02[192] := 'Comp20';

                  Nota01[193] := ' '; {Obs7}
                  Nota02[193] := 'Comp20';

                  Nota01[194] := ' '; {Obs8}
                  Nota02[194] := 'Comp20';

                end
                else
                begin

                  Nota01[187] := fmManRo2.CmpNfsOb1Nfs.Value; {Obs1}
                  Nota02[187] := 'Comp20';

                  Nota01[188] := fmManRo2.CmpNfsOb2Nfs.Value; {Obs2}
                  Nota02[188] := 'Comp20';

                  Nota01[189] := fmManRo2.CmpNfsOb3Nfs.Value; {Obs3}
                  Nota02[189] := 'Comp20';

                  Nota01[190] := fmManRo2.CmpNfsOb4Nfs.Value; {Obs4}
                  Nota02[190] := 'Comp20';

                  Nota01[191] := fmManRo2.CmpNfsOb5Nfs.Value; {Obs5}
                  Nota02[191] := 'Comp20';

                  Nota01[192] := fmManRo2.CmpNfsOb6Nfs.Value; {Obs6}
                  Nota02[192] := 'Comp20';

                  Nota01[193] := fmManRo2.CmpNfsOb7Nfs.Value; {Obs7}
                  Nota02[193] := 'Comp20';

                  Nota01[194] := fmManRo2.CmpNfsOb8Nfs.Value; {Obs8}
                  Nota02[194] := 'Comp20';

                end;

                Nota01[117] := IntToStr(fmManRo2.CmpNfsCodFor.Value); {código do Fornecedor}
                Nota02[117] := 'Comp12';

                Nota01[118] := ' '; {código do Vendedor}
                Nota02[118] := 'Comp12';

                Nota01[119] := ''; {SeuPed}
                Nota02[119] := 'Comp12';

                Nota01[120] := ' '; {Nosso Pedido}
                Nota02[120] := 'Comp12';

                Nota01[121] := 'NumNot'; {NotaRod1}
                Nota02[121] := 'Comp20';

                Nota01[122] := 'NumNot'; {NotaRod2}
                Nota02[122] := 'Comp20';

                ValorExt := fExtenso(fmManRo2.CmpNfsTotGer.Value);

                if Length(TrimLeft(TrimRight(ValorExt))) < 150 then
                  ValorExt := TrimLeft(TrimRight(ValorExt)) + fReplicate('*', 150 - Length(TrimLeft(TrimRight(ValorExt))));

                Nota01[123] := copy(ValorExt, 001, 50); {Valor por Extenso 1}
                Nota02[123] := 'Comp12';

                Nota01[124] := copy(ValorExt, 051, 50); {Valor por Extenso 2}
                Nota02[124] := 'Comp12';

                Nota01[125] := copy(ValorExt, 101, 50); {Valor por Extenso 3}
                Nota02[125] := 'Comp12';

                Nota01[126] := fmManRo2.CmpNfsDesReg.Value; {Observações Sobre Desconto}
                Nota02[126] := 'Comp20';

                {********************************************************************************************}

                rdprint1.OpcoesPreview.Preview := False;
                rdprint1.OpcoesPreview.PreviewZoom := 100;
                rdprint1.TamanhoQteLPP := oito;
                rdprint1.UsaGerenciadorImpr := True;

                rdprint1.TamanhoQteColunas := 136;
                rdprint1.FonteTamanhoPadrao := s17cpp;

                {Programação dos Eventos: desliga eventos cabecalho/rodape}
                rdprint1.OnNewPage := nil;
                rdprint1.OnBeforeNewPage := nil;

                rdprint1.TamanhoQteLinhas := QtdNfs;

                qtdimpr := 0; {Quantidade de Linhas de Itens Impressas}
                ;
                qtitens := 0; {Indicador se Esta Sendo Impressos Itens ou Não}

                SeqNf2 := 0; {sequencial dos Itens a Serem Impressos}

                Lin := 0; {Linha que Esta Sendo Impressas} {Incrementos de Linhas}
                Inc := 0; {Incrementos de Linhas}
                Col := 0; {Posição da Coluna a ser Impressa}
                Reg := 0; {Numero do Vetor a Ser Impresso}
                Tam := 0; {Tamanho da String a Ser Impressa}

                qtdnot := 1; {Quantidade de Notas Impressas}

                rdprint1.abrir;

                //            qtdnfis := (fmManRo2.CmpNfsNroNfs.Value - fmManRo2.CmpNfsQtdNfs.Value)+ 1;  {Quantidade de Notas Fiscais Impressas}

                qtdnfis := 1; {Quantidade de Notas Fiscais Impressas}

                while qtdnfis <= fmManRo2.CmpNfsQtdNfs.Value do
                begin

                  with quSQL, SQL do
                  begin

                    Close;
                    Text := ' Select Count(*) as QtdReg From CmpNf2' +
                      ' Where CmpNf2.CodEmp = :CodEmp' +
                      '   and CmpNf2.DteNfs = :DteNfs' +
                      '   and CmpNf2.SeqNfs = :SeqNfs' +
                      '   and CmpNf2.SeqNfg = :SeqNfg';

                    with Params do
                    begin

                      Params[0].AsInteger := fmManRo2.CmpNfsCodEmp.Value;
                      Params[1].AsDateTime := fmManRo2.CmpNfsDteNfs.Value;
                      Params[2].AsInteger := fmManRo2.CmpNfsSeqNfs.Value;
                      Params[3].AsInteger := qtdnfis;

                    end;

                    Open;

                    QtiNfg := FieldbyName('QtdReg').AsInteger;

                  end;

                  SeqNfg := 0;

                  if qtdnfis = fmManRo2.CmpNfsQtdNfs.Value then
                  begin

                    with quSQL, SQL do
                    begin

                      Close;
                      Text := ' Select Count(Distinct(CmpNf4.PerIcm)) as QtdReg' +
                        ' From CmpNf4' +
                        ' Where CmpNf4.CodEmp = :CodEmp' +
                        '   and CmpNf4.DteNfs = :DteNfs' +
                        '   and CmpNf4.SeqNfs = :SeqNfs';

                      with Params do
                      begin

                        Params[0].AsInteger := fmManRo2.CmpNfsCodEmp.Value;
                        Params[1].AsDateTime := fmManRo2.CmpNfsDteNfs.Value;
                        Params[2].AsInteger := fmManRo2.CmpNfsSeqNfs.Value;

                      end;

                      Open;

                    end;

                    if quSQL.FieldbyName('QtdReg').AsInteger > 1 then
                    begin

                      with quSQL, SQL do
                      begin

                        Close;
                        Text := ' Select CmpNf4.PerIcm,' +
                          '        Sum(CmpNf4.BasIcm) as BasIcm,' +
                          '        Sum(CmpNf4.TotIcm) as TotIcm ' +
                          ' From CmpNf4' +
                          ' Where CmpNf4.CodEmp = :CodEmp' +
                          '   and CmpNf4.DteNfs = :DteNfs' +
                          '   and CmpNf4.SeqNfs = :SeqNfs' +
                          ' Group by CmpNf4.PerIcm' +
                          ' Order by CmpNf4.PerIcm';

                        with Params do
                        begin

                          Params[0].AsInteger := fmManRo2.CmpNfsCodEmp.Value;
                          Params[1].AsDateTime := fmManRo2.CmpNfsDteNfs.Value;
                          Params[2].AsInteger := fmManRo2.CmpNfsSeqNfs.Value;

                        end;

                        Open;
                        First;

                      end;

                      while not quSQL.EOF do
                      begin

                        if Trim(Nota01[208]) <> '' then
                          Nota01[208] := Trim(Nota01[208]) + ' Base ' + FormatFloat('###', quSQL.FieldbyName('PerIcm').AsFloat) + '% R$ ' +
                            preString(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIcm').AsFloat), 15) + ' Imp. R$ ' +
                            preString(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIcm').AsFloat), 15)
                        else
                          Nota01[208] := 'Base ' + FormatFloat('###', quSQL.FieldbyName('PerIcm').AsFloat) + '% R$ ' +
                            preString(FormatFloat('###,###,##0.00', quSQL.FieldbyName('BasIcm').AsFloat), 15) + ' Imp. R$ ' +
                            preString(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIcm').AsFloat), 15);

                        quSQL.Next;

                      end;
                    end;

                    {BaseIcms}
                    if fmManRo2.CmpNfsBasIc1.Value > 0 then
                      Nota01[057] := Prestring(FormatFloat('###,###,##0.00', fmManRo2.CmpNfsBasIc1.Value), 14)
                    else
                      Nota01[057] := ' ';

                    Nota02[057] := 'Comp12';

                    {ValIcms}
                    if fmManRo2.CmpNfsTotIc1.Value > 0 then
                      Nota01[058] := Prestring(FormatFloat('###,###,##0.00', fRound(fmManRo2.CmpNfsTotIc1.Value, 2)), 14)
                    else
                      Nota01[058] := ' ';

                    Nota02[058] := 'Comp12';

                    {BaseIcmsSub}
                    if fmManRo2.CmpNfsBasSu1.Value > 0 then
                      Nota01[059] := Prestring(FormatFloat('###,###,##0.00', fmManRo2.CmpNfsBasSu1.Value), 14)
                    else
                      Nota01[059] := ' ';

                    Nota02[059] := 'Comp12';

                    {ValIcmsSub}
                    if fmManRo2.CmpNfsTotSu1.Value > 0 then
                      Nota01[060] := Prestring(FormatFloat('###,###,##0.00', fRound(fmManRo2.CmpNfsTotSu1.Value, 2)), 14)
                    else
                      Nota01[060] := ' ';

                    Nota02[060] := 'Comp12';

                    Nota01[061] := Prestring(FormatFloat('###,###,##0.00', fmManRo2.CmpNfsTotIt1.Value), 14); {TotalProds}
                    Nota02[061] := 'Comp12';

                    if fmManRo2.CmpNfsTotFrt.Value > 0 then
                      Nota01[062] := Prestring(FormatFloat('###,###,##0.00', fmManRo2.CmpNfsTotFrt.Value), 14) {Frete}
                    else
                      Nota01[062] := ' ';

                    Nota02[062] := 'Comp12';

                    if fmManRo2.CmpNfsTotSeg.Value > 0 then
                      Nota01[063] := Prestring(FormatFloat('###,###,##0.00', fmManRo2.CmpNfsTotSeg.Value), 14) {Seguro}
                    else
                      Nota01[063] := ' ';

                    Nota02[063] := 'Comp12';

                    if fmManRo2.CmpNfsTotDes.Value > 0 then
                      Nota01[064] := Prestring(FormatFloat('###,###,##0.00', fmManRo2.CmpNfsTotDes.Value), 14) {Outras}
                    else
                      Nota01[064] := ' ';

                    Nota02[064] := 'Comp12';

                    if fmManRo2.CmpNfsTotIp1.Value > 0 then
                      Nota01[065] := Prestring(FormatFloat('###,###,##0.00', fRound(fmManRo2.CmpNfsTotIp1.Value, 2)), 14) {TotalIPI}
                    else
                      Nota01[065] := ' ';

                    Nota02[065] := 'Comp12';

                    if fmManRo2.CmpNfsTotGe1.Value > 0 then
                      Nota01[066] := Prestring(FormatFloat('###,###,##0.00', fmManRo2.CmpNfsTotGe1.Value), 14) {TotalNota}
                    else
                      Nota01[066] := ' ';

                    Nota02[066] := 'Comp12';

                    Nota01[126] := fmManRo2.CmpNfsDesReg.Value; {Descontos Gerais na Nota}
                    Nota02[126] := 'Comp20';

                    Nota01[127] := ' '; {Descontos Gerais na Nota}
                    Nota02[127] := 'Comp20';

                  end
                  else
                  begin

                    {BaseIcms}
                    Nota01[057] := '***,***,***.**';
                    Nota02[057] := 'Comp12';

                    {ValIcms}
                    Nota01[058] := '***,***,***.**';
                    Nota02[058] := 'Comp12';

                    {BaseIcmsSub}
                    Nota01[059] := '***,***,***.**';
                    Nota02[059] := 'Comp12';

                    {ValIcmsSub}
                    Nota01[060] := '***,***,***.**';
                    Nota02[060] := 'Comp12';

                    Nota01[061] := '***,***,***.**';
                    Nota02[061] := 'Comp12';

                    Nota01[062] := '***,***,***.**';
                    Nota02[062] := 'Comp12';

                    Nota01[063] := '***,***,***.**';
                    Nota02[063] := 'Comp12';

                    Nota01[064] := '***,***,***.**';
                    Nota02[064] := 'Comp12';

                    Nota01[065] := '***,***,***.**';
                    Nota02[065] := 'Comp12';

                    Nota01[066] := '***,***,***.**';
                    Nota02[066] := 'Comp12';

                    {Descontos Gerais na Nota}
                    Nota01[126] := ' ';
                    Nota02[126] := 'Comp20';

                    Nota01[127] := ' ';
                    Nota02[127] := 'Comp20';

                  end;

                  {Carregando Itens na Matriz NotaImpr}

                  ValorExt := fExtenso(fmManRo2.CmpNfsTotGe1.Value);

                  if Length(Trim(ValorExt)) < 150 then
                    ValorExt := Trim(ValorExt) + fReplicate('*', 150 - Length(Trim(ValorExt)));

                  Nota01[123] := copy(ValorExt, 001, 50); {Valor por Extenso 1}
                  Nota02[123] := 'Comp12';

                  Nota01[124] := copy(ValorExt, 051, 50); {Valor por Extenso 2}
                  Nota02[124] := 'Comp12';

                  Nota01[125] := copy(ValorExt, 101, 50); {Valor por Extenso 3}
                  Nota02[125] := 'Comp12';

                  with quSQL, SQL do
                  begin

                    Close;
                    Text := ' Select CmpNf3.SeqNf3,' +
                      '        CmpNf3.ClsIpi From CmpNf3' +
                      ' Where CmpNf3.CodEmp = :CodEmp' +
                      '   and CmpNf3.DteNfs = :DteNfs' +
                      '   and CmpNf3.SeqNfs = :SeqNfs' +
                      '   and CmpNf3.SeqNfg = :SeqNfg' +
                      ' Order by CmpNf3.SeqNf3';

                    with Params do
                    begin

                      Params[0].AsInteger := fmManRo2.CmpNfsCodEmp.Value;
                      Params[1].AsDateTime := fmManRo2.CmpNfsDteNfs.Value;
                      Params[2].AsInteger := fmManRo2.CmpNfsSeqNfs.Value;
                      Params[3].AsInteger := qtdnfis;

                    end;

                    Open;

                  end;

                  quSQL.First;

                  {CodClassfisc}

                  i := 88;

                  for j := 1 to 28 do
                  begin

                    Nota01[i] := ' ';
                    Nota02[i] := 'Comp20';

                    i := i + 1;

                  end;

                  i := 88;

                  rec := 0;

                  while not quSQL.Eof do
                  begin

                    if Trim(quSQL.FieldbyName('ClsIpi').AsString) <> '' then
                      Nota01[i] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqNf3').AsInteger), 3) + ' - ' + quSQL.FieldbyName('ClsIpi').AsString
                    else
                      Nota01[i] := ' ';

                    Nota02[i] := 'Comp20';

                    i := i + 1;

                    rec := rec + 1;

                    if rec > 28 then
                      quSQL.Last
                    else
                      quSQL.Next;

                  end;

                  r := 0;

                  while r <= qtdLin do
                  begin

                    Linha := ArqTexto[r];

                    if Trim(Linha) <> '' then
                    begin

                      if pos('Sim', Linha) > 0 then
                      begin

                        if pos('salto', Linha) > 0 then
                        begin

                          Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3)); {Linha encontrada e de Incremento de Saltos de Linhas}
                          Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));

                          if pos('Inicio', Linha) > 0 then
                          begin

                            if qtdnot > 1 then
                              Inc := Inc + 1;

                          end;

                          Lin := Lin + Inc;

                          rdprint1.imp(Lin, 001, '');

                        end
                        else
                        begin

                          if (pos('NotaCab', Linha) > 0) or (pos('NotaRod', Linha) > 0) then
                          begin

                            Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3)); {Linha encontrada e de Final de Nota Fiscal}
                            Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));

                            if (Col > 0) or (Inc > 0) then
                            begin

                              Lin := Lin + Inc;

                              rdprint1.impf(Lin, Col, fNumZeros(IntToStr(fmManRo2.CmpNfsNroNfs.Value), 6), [EXPANDIDO, negrito]);

                            end;

                          end
                          else
                          begin

                            if (pos('#00040', Linha) = 0) and (qtitens = 0) then
                            begin {A Linha que Esta Sendo Impressa não e a de Itens}

                              Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3)); {Linha encontrada e de Incremento de Saltos de Linhas}
                              Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));
                              reg := StrToInt(copy(Linha, pos('#', Linha) + 1, 5));

                              if (Col > 0) or (Inc > 0) then
                              begin

                                Lin := Lin + Inc;

                                if (reg >= 131) and (reg <= 160) then
                                begin

                                  if qtdnfis = fmManRo2.CmpNfsQtdNfs.Value then
                                  begin

                                    if Nota02[Reg] = 'Comp12' then
                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                    if Nota02[Reg] = 'Comp20' then
                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                    if Nota02[Reg] = 'Comp17' then
                                      rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                  end
                                  else
                                  begin

                                    if (reg = 151) then
                                    begin

                                      if Nota02[Reg] = 'Comp12' then
                                        rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp12]);
                                      if Nota02[Reg] = 'Comp20' then
                                        rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp20]);
                                      if Nota02[Reg] = 'Comp17' then
                                        rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp17]);

                                    end
                                    else
                                    begin

                                      if (reg >= 131) and (reg <= 140) then
                                      begin

                                        if Nota02[Reg] = 'Comp12' then
                                          rdprint1.impf(Lin, Col, ' ', [Comp12]);
                                        if Nota02[Reg] = 'Comp20' then
                                          rdprint1.impf(Lin, Col, ' ', [Comp20]);
                                        if Nota02[Reg] = 'Comp17' then
                                          rdprint1.impf(Lin, Col, ' ', [Comp17]);

                                      end
                                      else
                                      begin

                                        if (reg >= 141) and (reg <= 150) then
                                        begin

                                          if Nota02[Reg] = 'Comp12' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp12]);
                                          if Nota02[Reg] = 'Comp20' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp20]);
                                          if Nota02[Reg] = 'Comp17' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp17]);

                                        end
                                        else
                                        begin

                                          if (reg >= 151) and (reg <= 160) then
                                          begin

                                            if Nota02[Reg] = 'Comp12' then
                                              rdprint1.impf(Lin, Col, ' ', [Comp12]);
                                            if Nota02[Reg] = 'Comp20' then
                                              rdprint1.impf(Lin, Col, ' ', [Comp20]);
                                            if Nota02[Reg] = 'Comp17' then
                                              rdprint1.impf(Lin, Col, ' ', [Comp17]);

                                          end;
                                        end;
                                      end;
                                    end;
                                  end;

                                end
                                else
                                begin

                                  if Nota02[Reg] = 'Comp12' then
                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                  if Nota02[Reg] = 'Comp20' then
                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                  if Nota02[Reg] = 'Comp17' then
                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                end;
                              end;

                            end
                            else
                            begin

                              if qtitens < 2 then
                              begin

                                qtitens := 1;

                                SeqNf2 := SeqNf2 + 1;
                                SeqNfg := SeqNfg + 1;

                                if qtdimpr = 0 then
                                  qtdimpr := Lin;

                                with quSQL, SQL do
                                begin

                                  Close;
                                  Text := ' Select CmpNf2.CodClp,' +
                                    '        CmpNf2.CodGru,' +
                                    '        CmpNf2.CodSub,' +
                                    '        CmpNf2.CodPro,' +
                                    '        CmpNf2.NroNfs,' +
                                    '        CmpNf2.SeqNfg,' +
                                    '        CmpNf2.DesNf2,' +
                                    '        CmpNf2.ObsNf2,' +
                                    '        CmpNf2.RefNf2,' +
                                    '        CmpNf2.SeqNf3,' +
                                    '        CmpNf2.ClsIpi,' +
                                    '        CmpNf2.CodSt1,' +
                                    '        CmpNf2.CodSt2,' +
                                    '        CmpNf2.CodUnd,' +
                                    '        CmpNf2.QtpNf2,' +
                                    '        CmpNf2.CodUnd,' +
                                    '        CmpNf2.VluNf2,' +
                                    '        CmpNf2.TotIte,' +
                                    '        CmpNf2.TrbIcm,' +
                                    '        CmpNf2.IcmNf2,' +
                                    '        CmpNf2.TrbIpi,' +
                                    '        CmpNf2.IpiNf2,' +
                                    '        CmpNf2.TotIpi ' +
                                    ' From CmpNf2' +
                                    ' Where CmpNf2.CodEmp = :CodEmp' +
                                    '   and CmpNf2.DteNfs = :DteNfs' +
                                    '   and CmpNf2.SeqNfs = :SeqNfs' +
                                    '   and CmpNf2.NroNf2 = :NroNf2';

                                  with Params do
                                  begin

                                    Params[0].AsInteger := fmManRo2.CmpNfsCodEmp.Value;
                                    Params[1].AsDateTime := fmManRo2.CmpNfsDteNfs.Value;
                                    Params[2].AsInteger := fmManRo2.CmpNfsSeqNfs.Value;
                                    Params[3].AsInteger := SeqNf2;

                                  end;

                                  Open;

                                end;

                                if Trim(quSql.FieldbyName('CodGru').AsString) <> '' then
                                begin

                                  {Item a Ser Impresso Pertence a Nota Fiscal}
                                  if quSql.FieldbyName('SeqNfg').AsInteger = qtdnfis then
                                  begin

                                    {Produto}
                                    if GImpRef = 'Nao' then
                                      Nota01[040] := quSql.FieldbyName('CodClp').AsString + '-' +
                                        quSql.FieldbyName('CodGru').AsString + '.' + quSql.FieldbyName('CodSub').AsString + '.' +
                                        quSql.FieldbyName('CodPro').AsString
                                    else
                                      Nota01[040] := Trim(quSql.FieldbyName('RefNf2').AsString);

                                    Nota02[040] := 'Comp20';

                                    {Descr}
                                    Nota01[041] := Trim(quSql.FieldbyName('DesNf2').AsString);
                                    Nota02[041] := 'Comp20';

                                    {Descr}

                                    if Trim(quSql.FieldbyName('RefNf2').AsString) <> '' then
                                      Nota01[052] := Trim(quSql.FieldbyName('RefNf2').AsString)
                                    else
                                      Nota01[052] := ' ';

                                    Nota02[052] := 'Comp20';

                                    {ClassFisc}
                                    if Trim(quSQL.FieldbyName('ClsIpi').AsString) <> '' then
                                      Nota01[042] := fLimpaStr(quSql.FieldbyName('ClsIpi').AsString)
                                    else
                                      Nota01[042] := ' ';

                                    Nota02[042] := 'Comp20';

                                    if Trim(quSQL.FieldbyName('SeqNf3').AsString) <> '' then
                                      Nota01[207] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqNf3').AsInteger), 3)
                                    else
                                      Nota01[207] := ' ';

                                    Nota02[207] := 'Comp20';

                                    {St1}
                                    Nota01[043] := quSql.FieldbyName('CodSt1').AsString;
                                    Nota02[043] := 'Comp20';

                                    {St2}
                                    Nota01[044] := quSql.FieldbyName('CodSt2').AsString;
                                    Nota02[044] := 'Comp20';

                                    {Unidade}
                                    Nota01[045] := quSql.FieldbyName('CodUnd').AsString;
                                    Nota02[045] := 'Comp20';

                                    {Qtde}

                                    if quSql.FieldbyName('QtpNf2').AsFloat > 0 then
                                    begin

                                      if fEncDecimal(quSql.FieldbyName('QtpNf2').AsFloat) > 0 then
                                        Nota01[046] := Prestring(FormatFloat('###,##0.0000',
                                          quSql.FieldbyName('QtpNf2').AsFloat), 12)
                                      else
                                        Nota01[046] := Prestring(FormatFloat('####,###,##0',
                                          quSql.FieldbyName('QtpNf2').AsFloat), 12);

                                    end
                                    else
                                      Nota01[046] := ' ';

                                    Nota02[046] := 'Comp20';

                                    {Unit}
                                    if quSql.FieldbyName('VluNf2').AsFloat > 0 then
                                      Nota01[047] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('VluNf2').AsFloat), 12)
                                    else
                                      Nota01[047] := ' ';

                                    Nota02[047] := 'Comp20';

                                    {Total}
                                    if quSql.FieldbyName('TotIte').AsFloat > 0 then
                                      Nota01[048] := Prestring(FormatFloat('###,###,##0.00', quSql.FieldbyName('TotIte').AsFloat),
                                        12)
                                    else
                                      Nota01[048] := ' ';

                                    Nota02[048] := 'Comp20';

                                    {AlIcms}
                                    if quSql.FieldbyName('TrbIcm').AsString = 'Sim' then
                                      Nota01[049] := Prestring(FormatFloat('##0', quSql.FieldbyName('IcmNf2').AsFloat), 3)
                                    else
                                      Nota01[049] := ' ';

                                    Nota02[049] := 'Comp20';

                                    {AlIpi}
                                    if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                      Nota01[050] := Prestring(FormatFloat('##0', quSql.FieldbyName('IpiNf2').AsFloat), 3)
                                    else
                                      Nota01[050] := ' ';

                                    Nota02[050] := 'Comp20';

                                    {ValIpi}
                                    if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                      Nota01[051] := Prestring(FormatFloat('###,##0.00', fRound(quSql.FieldbyName('TotIpi').AsFloat,
                                        2)), 10)
                                    else
                                    begin

                                      if quSql.FieldbyName('TotIpi').AsFloat > 0 then
                                        Nota01[051] := Prestring(FormatFloat('###,##0.00',
                                          fRound(quSql.FieldbyName('TotIpi').AsFloat, 2)), 10)
                                      else
                                        Nota01[051] := ' ';

                                    end;

                                    Nota02[051] := 'Comp20';

                                    rec := r;

                                    i := rec + 18;

                                    Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3));
                                    {Linha encontrada e de Incremento de Saltos de Linhas}

                                    Lin := Lin + 1;

                                    while r <= i do
                                    begin

                                      Linha := ArqTexto[r];

                                      if Trim(Linha) <> '' then
                                      begin

                                        Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3));
                                        Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));
                                        reg := StrToInt(copy(Linha, pos('#', Linha) + 1, 5));
                                        Tam := StrToInt(copy(Linha, pos('#', Linha) + 6, 3));

                                        if Tam > 0 then
                                        begin

                                          if (Col > 0) or (Inc > 0) then
                                          begin

                                            if pos('Sim', Linha) > 0 then
                                            begin

                                              {Verifica se a Linha que Esta Sendo Impressa não e a de Segunda Descrição ou de Titulos de Descontos}
                                              if (Reg <> 52) and (Reg <> 126) and (Reg <> 127) and (Reg <> 128) then
                                              begin

                                                if Nota02[Reg] = 'Comp12' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam),
                                                    [Comp12]);
                                                if Nota02[Reg] = 'Comp20' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam),
                                                    [Comp20]);
                                                if Nota02[Reg] = 'Comp17' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam),
                                                    [Comp17]);

                                              end
                                              else
                                              begin

                                                if (Reg = 52) and (Trim(quSql.FieldbyName('RefNf2').AsString)
                                                  <> '') then
                                                begin

                                                  {Descr2}
                                                  Nota01[052] :=
                                                    Trim(quSql.FieldbyName('RefNf2').AsString);
                                                  Nota02[052] := 'Comp20';

                                                  Lin := Lin + Inc;

                                                  if Nota02[Reg] = 'Comp12' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                  if Nota02[Reg] = 'Comp20' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                  if Nota02[Reg] = 'Comp17' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                                end;

                                                if (Reg = 128) and (Trim(quSql.FieldbyName('ObsNf2').AsString)
                                                  <> '') then
                                                begin

                                                  {Descr2}
                                                  Nota01[128] :=
                                                    Trim(copy(quSql.FieldbyName('ObsNf2').AsString, 1,
                                                    Tam));
                                                  Nota02[128] := 'Comp20';

                                                  Lin := Lin + Inc;

                                                  if Nota02[Reg] = 'Comp12' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                  if Nota02[Reg] = 'Comp20' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                  if Nota02[Reg] = 'Comp17' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                                  if Trim(copy(quSql.FieldbyName('ObsNf2').AsString, Tam
                                                    + 1, Tam)) <> '' then
                                                  begin

                                                    {Descr2}
                                                    Nota01[128] :=
                                                      Trim(copy(quSql.FieldbyName('ObsNf2').AsString,
                                                      Tam + 1, Tam));
                                                    Nota02[128] := 'Comp20';

                                                    Lin := Lin + 1;

                                                    if Nota02[Reg] = 'Comp12' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg],
                                                        [Comp12]);
                                                    if Nota02[Reg] = 'Comp20' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg],
                                                        [Comp20]);
                                                    if Nota02[Reg] = 'Comp17' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg],
                                                        [Comp17]);

                                                  end;

                                                  if Trim(copy(quSql.FieldbyName('ObsNf2').AsString, (Tam
                                                    + Tam + 1), Tam)) <> '' then
                                                  begin

                                                    {Descr2}
                                                    Nota01[128] :=
                                                      Trim(copy(quSql.FieldbyName('ObsNf2').AsString,
                                                      (Tam + Tam + 1), Tam));
                                                    Nota02[128] := 'Comp20';

                                                    Lin := Lin + 1;

                                                    if Nota02[Reg] = 'Comp12' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg],
                                                        [Comp12]);
                                                    if Nota02[Reg] = 'Comp20' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg],
                                                        [Comp20]);
                                                    if Nota02[Reg] = 'Comp17' then
                                                      rdprint1.impf(Lin, Col, Nota01[reg],
                                                        [Comp17]);

                                                  end;
                                                end;

                                                //                                                                              if ( (Reg = 126) or (Reg = 127) ) then begin
                                                //
                                                //                                                                                 if (fmManRo2.CmpNfsTotDsr.Value > 0) and (SeqNfg = QtiNfg) then begin
                                                //
                                                //                                                                                    { Só ira Imprimir o Campo de Descontos na Ultima Nota e se foi Efetuado Descontos na Nota }
                                                //
                                                //                                                                                    Lin := Lin + Inc;
                                                //
                                                //                                                                                    if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                //                                                                                    if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                //                                                                                    if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);
                                                //
                                                //                                                                                 end;
                                                //                                                                              end;
                                              end;
                                            end;
                                          end;
                                        end;
                                      end;

                                      r := r + 1;

                                    end;

                                    r := rec;

                                  end
                                  else
                                  begin {Finalizar Nota para Impressão da Proxima Nota}

                                    SeqNf2 := SeqNf2 - 1;

                                    r := r + 18;

                                    qtitens := 2;

                                  end;

                                end
                                else
                                begin {Não Ha Mais Itens para Impressão}

                                  SeqNf2 := SeqNf2 - 1;

                                  r := r + 18;

                                  qtitens := 0;

                                end;

                              end
                              else
                              begin

                                reg := StrToInt(copy(Linha, pos('#', Linha) + 1, 5));
                                Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3));
                                Col := StrToInt(copy(Linha, pos(',', Linha) + 1, 3));

                                if (Col > 0) or (Inc > 0) then
                                begin

                                  if (reg >= 57) and (reg <= 66) then
                                  begin

                                    Lin := Lin + Inc;

                                    if Nota02[Reg] = 'Comp12' then
                                      rdprint1.impf(Lin, Col, Nota01[Reg], [Comp12]);
                                    if Nota02[Reg] = 'Comp20' then
                                      rdprint1.impf(Lin, Col, Nota01[Reg], [Comp20]);
                                    if Nota02[Reg] = 'Comp17' then
                                      rdprint1.impf(Lin, Col, Nota01[Reg], [Comp17]);

                                  end
                                  else
                                  begin

                                    if fmManRo2.CmpNfsCodEmp.Value = 1 then
                                    begin

                                      if (Reg = 67) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then
                                      begin

                                        Lin := Lin + Inc;

                                        if Nota02[Reg] = 'Comp12' then
                                          rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp12]);
                                        if Nota02[Reg] = 'Comp20' then
                                          rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp20]);
                                        if Nota02[Reg] = 'Comp17' then
                                          rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp17]);

                                      end
                                      else
                                      begin

                                        if (Reg >= 68) and (Reg <= 81) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then
                                        begin

                                          Lin := Lin + Inc;

                                          if Nota02[Reg] = 'Comp12' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp12]);
                                          if Nota02[Reg] = 'Comp20' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp20]);
                                          if Nota02[Reg] = 'Comp17' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp17]);

                                        end
                                        else
                                        begin

                                          if (reg >= 187) and (reg <= 194) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then
                                          begin

                                            if reg = 187 then
                                              Linha := 'Continua ' + Trim(IntToStr(qtdnot)) + '/' +
                                                Trim(IntToStr(fmManRo2.CmpNfsQtdNfs.Value))
                                            else
                                              Linha := ' ';

                                            Lin := Lin + Inc;

                                            if Nota02[Reg] = 'Comp12' then
                                              rdprint1.impf(Lin, Col, Linha, [Comp12]);
                                            if Nota02[Reg] = 'Comp20' then
                                              rdprint1.impf(Lin, Col, Linha, [Comp20]);
                                            if Nota02[Reg] = 'Comp17' then
                                              rdprint1.impf(Lin, Col, Linha, [Comp17]);

                                          end
                                          else
                                          begin

                                            if (reg >= 82) or (reg <= 128) or (reg >= 187) then
                                            begin

                                              Lin := Lin + Inc;

                                              if Nota02[Reg] = 'Comp12' then
                                                rdprint1.impf(Lin, Col, Nota01[Reg], [Comp12]);
                                              if Nota02[Reg] = 'Comp20' then
                                                rdprint1.impf(Lin, Col, Nota01[Reg], [Comp20]);
                                              if Nota02[Reg] = 'Comp17' then
                                                rdprint1.impf(Lin, Col, Nota01[Reg], [Comp17]);

                                            end
                                            else
                                              Lin := Lin + Inc;
                                          end;
                                        end;
                                      end;

                                    end
                                    else
                                    begin

                                      if (Reg = 67) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then
                                      begin

                                        Lin := Lin + Inc;

                                        if Nota02[Reg] = 'Comp12' then
                                          rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp12]);
                                        if Nota02[Reg] = 'Comp20' then
                                          rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp20]);
                                        if Nota02[Reg] = 'Comp17' then
                                          rdprint1.impf(Lin, Col, 'VIDE ULTIMA NOTA FISCAL', [Comp17]);

                                      end
                                      else
                                      begin

                                        if (Reg >= 68) and (Reg <= 81) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then
                                        begin

                                          Lin := Lin + Inc;

                                          if Nota02[Reg] = 'Comp12' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp12]);
                                          if Nota02[Reg] = 'Comp20' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp20]);
                                          if Nota02[Reg] = 'Comp17' then
                                            rdprint1.impf(Lin, Col, ' ', [Comp17]);

                                        end
                                        else
                                        begin

                                          if (reg >= 187) and (reg <= 194) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then
                                          begin

                                            if reg = 187 then
                                              Linha := 'Continua ' + Trim(IntToStr(qtdnot)) + '/' +
                                                Trim(IntToStr(fmManRo2.CmpNfsQtdNfs.Value))
                                            else
                                              Linha := ' ';

                                            Lin := Lin + Inc;

                                            if Nota02[Reg] = 'Comp12' then
                                              rdprint1.impf(Lin, Col, Linha, [Comp12]);
                                            if Nota02[Reg] = 'Comp20' then
                                              rdprint1.impf(Lin, Col, Linha, [Comp20]);
                                            if Nota02[Reg] = 'Comp17' then
                                              rdprint1.impf(Lin, Col, Linha, [Comp17]);

                                          end
                                          else
                                          begin

                                            if (reg >= 82) or (reg <= 128) or (reg >= 187) then
                                            begin

                                              Lin := Lin + Inc;

                                              if Nota02[Reg] = 'Comp12' then
                                                rdprint1.impf(Lin, Col, Nota01[Reg], [Comp12]);
                                              if Nota02[Reg] = 'Comp20' then
                                                rdprint1.impf(Lin, Col, Nota01[Reg], [Comp20]);
                                              if Nota02[Reg] = 'Comp17' then
                                                rdprint1.impf(Lin, Col, Nota01[Reg], [Comp17]);

                                            end
                                            else
                                              Lin := Lin + Inc;
                                          end;
                                        end;
                                      end;
                                    end;
                                  end;
                                end;
                              end;
                            end;
                          end;
                        end;

                        if (qtitens = 0) or (qtitens = 2) then
                        begin

                          if qtdimpr > 0 then
                          begin

                            Lin := Lin + (QtdIte - (Lin - qtdimpr));

                            qtdimpr := 0;

                          end;

                          r := r + 1;

                        end;

                      end
                      else
                        r := r + 1;

                    end
                    else
                      r := r + 1;
                  end;

                  qtitens := 0;

                  qtdnot := qtdnot + 1;

                  qtdnfis := qtdnfis + 1;

                end;

                rdprint1.fechar; {Finaliza e inicia impressão ou preview}

                rdprint1.TamanhoQteLinhas := 66; {Voltar o valor original...}

                SeqError := 0;

                if fMsg('Nota Impressa Corretamente', 'O') then
                begin

                  fmManRo2.CmpNfs.Edit;

                  fmManRo2.CmpNfsFlgAtu.Value := 'F';

                  fmManRo2.CmpNfsFlgImp.Value := 'Sim';

                  with fmManRo2.CmpNfs do
                  begin

                    fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
                    ;

                    try

                      ApplyUpdates; {Tenta aplicar as alterações}
                      ;

                      fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
                      ;

                    except

                      fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
                      ;

                      fmManRo2.Finalizar := 'N';

                      if fmManRo2.CmpNfs.State <> dsBrowse then
                        fmManRo2.CmpNfs.CancelUpdates;

                      fmManRo2.CmpNfs.Close;
                      fmManRo2.CmpNfs.Open;

                      fmManRo2.CmpNfs.Edit;

                      if EdNroNfs.Enabled then
                        EdNroNfs.SetFocus;

                      raise;

                    end;

                    CommitUpdates; {sucesso!, limpa o cache...}

                  end;

                  fmManRo2.CmpNfs.Close;
                  fmManRo2.CmpNfs.Open;

                  fmManRo2.Finalizar := 'S';

                  close;

                end
                else
                begin

                  if EdNroNfs.Enabled then
                    EdNroNfs.SetFocus;

                  exit;

                end;

              finally

                fmManRo2.CmpNfs.Edit;

                if SeqError = 1 then
                begin

                  rdprint1.Abortar;

                  rdprint1.TamanhoQteLinhas := 66;

                end;

                if EdNroNfs.Enabled then
                  EdNroNfs.SetFocus;

              end;

              close;

            end
            else
            begin

              if EdNroNfs.Enabled then
                EdNroNfs.SetFocus;

            end;

          end
          else
          begin

            if EdNroNfs.Enabled then
              fmsgErro('Fornecedor Informado para a Emissão da Nota Fiscal não Encontrado.', EdNroNfs)
            else
              fmsgErro('Fornecedor Informado para a Emissão da Nota Fiscal não Encontrado.', nil)

          end;

        end
        else
        begin

          if EdNroNfs.Enabled then
            EdNroNfs.SetFocus;

        end;

      end
      else
      begin

        if EdNroNfs.Enabled then
          fmsgErro('Arquivo de Configuração da Nota Fiscal não Encontrado. Consulte o Administrador do Sistema para Maiores Informações', EdNroNfs)
        else
          fmsgErro('Arquivo de Configuração da Nota Fiscal não Encontrado. Consulte o Administrador do Sistema para Maiores Informações', nil);

      end;

    end
    else
    begin

      if EdNroNfs.Enabled then
        EdNroNfs.SetFocus;

    end;

  end
  else
  begin

    if fmManRo2.CmpNfsNroNfs.Value = 0 then
    begin

      GerEmp.Close;
      GerEmp.Open;

      fmManRo2.CmpNfs.Edit;

      EdNroNfs.Value := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

      fmsgErro('Número da Nota Fiscal não Informado. Próximo No. ' + Trim(FloatToStr(EdNroNfs.Value)), EdNroNfs);

    end;
  end;
end;

procedure TfmManIro.FormShow(Sender: TObject);
begin
  inherited;

  GerEmp.Close;
  GerEmp.Params[0].AsInteger := fmManRo2.CmpNfsCodEmp.Value;
  GerEmp.Open;

  fmManRo2.CmpNfs.Edit;

  if fmManRo2.CmpNfsNroNfs.Value = 0 then
    fmManRo2.CmpNfsNroNfs.Value := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

  if fmManRo2.CmpNfsNroNfs.Value > 0 then
    EdNroNfs.Text := IntToStr(fmManRo2.CmpNfsNroNfs.Value)
  else
    EdNroNfs.Text := '0';

  EdNroNfs.SetFocus;

end;

procedure TfmManIro.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManIro.CmpNfsAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CmpNf2.Active := false;
  CmpNf2.SQL.text := 'Select * From CmpNf2 ' +
    ' Where CmpNf2.CodEmp = ' + QuotedStr(CmpNfsCODEMP.asstring) +
    '     and CmpNf2.DteNfs = ' + QuotedStr(formatdatetime('mm/dd/yyyy', CmpNfsDTENFS.Value)) +
    '     and CmpNf2.SeqNfs = ' + QuotedStr(CmpNfsSEQNFS.asstring) +
    ' Order by CmpNf2.NroNf2';
  CmpNfs.Open;
end;

function Executa(Arquivo: string; Estado: Integer): Integer;
var
  Programa: array[0..512] of char;
  CurDir: array[0..255] of char;
  WorkDir: string;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
begin
  StrPCopy(Programa, Arquivo);
  GetDir(0, WorkDir);
  StrPCopy(CurDir, WorkDir);
  FillChar(StartupInfo, Sizeof(StartupInfo), #0);
  StartupInfo.cb := sizeof(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Estado;
  if not CreateProcess(nil, Programa, nil, nil, false, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo) then
    Result := -1
  else
  begin
    WaitForSingleObject(ProcessInfo.hProcess, Infinite);
    //GetExitCodeProcess (ProcessInfo.hProcess, Result);
  end;
end; //Estado é o tipo de janela que aparecerá, que pode ser:

//SW_SHOWNORMA//L - Janela em modo normal

//SW_MAXIMIZE// - Janela maximizada

//SW_MINIMIZE// - Janela minimizada

//SW_HIDE //- Janela Escondida

procedure TfmManIro.BitBtn1Click(Sender: TObject);
var
  IniFile, chave, CaminhoLeitura, CaminhoRetorno, CaminhoPDF, VNumNota, TLinha: string;
  TArquivo, TDANFE: TextFile;
  i: integer;
  ini: Tinifile;
  SeqEnc: integer;
  LinArq: string;
  NroReg: integer;
  SeqLin: integer;
  ArqRe1: string;
  ArqRe2: string;
  ArqRs1: string;
  ArqRs2: string;
  FlgRej: string;
  FlgArq: string;
  MSGNFE: string;
  MSGANT: string;
  RECNFE: string;
  PRONFE: string;
  DTENFE: string;
  HRENFE: string;
  DTEPNF: string;
  HREPNF: string;
  ArqEnv: TextFile;
  ArqRet: TStringList;
  SeqRet: Boolean;
  Handle: LongInt;
  ApeEmp: string;
  NomEmp: string;
  EndEmp: string;
  NumEmp: string;
  RefEmp: string;
  BaiEmp: string;
  CidEmp: string;
  UfeEmp: string;
  CepEmp: string;
  FonEmp: string;
  CgcEmp: string;
  CpfEmp: string;
  InsEmp: string;
  CgcTra: string;
  CpfTra: string;
  InsTra: string;
  ApeTra: string;
  NomTra: string;
  EndTra: string;
  NumTra: string;
  RefTra: string;
  BaiTra: string;
  CidTra: string;
  UfeTra: string;
  DesNat: string;
  EmaCli: string;
  CgcCli: string;
  CpfCli: string;
  InsCli: string;
  NomCli: string;
  EndCli: string;
  NumCli: string;
  RefCli: string;
  BaiCli: string;
  CidCli: string;
  UfeCli: string;
  CepCli: string;
  FonCli: string;
  CodPro: string;
  ClsIpi: string;
  DesPro: string;
  CodCfo: string;
  CodUnd: string;
  CodSt1: string;
  CodSt2: string;
  QtdPro: string;
  VluPro: string;
  TotPro: string;
  EspFat: string;
  MarFat: string;
  PesLiq: string;
  PesBrt: string;
  TipNCM: string;
  NroSuf: string;
  BasIcm: string;
  RedIcm: string;
  PerIcm: string;
  TotIcm: string;
  TrbPis: string;
  PerPis: string;
  BasPis: string;
  TotPis: string;
  TrbCof: string;
  PerCof: string;
  BasCof: string;
  TotCof: string;
  NroDoc: string;
  TrbIpi: string;
  BasIpi: string;
  PerIpi: string;
  TotIpi: string;
  TotDsr: string;
  BasSub: string;
  IcmSub: string;
  MrgSub: string;
  NfePis: string;
  NfeCof: string;
  TotSub: string;
  TotFrt: string;
  TotSeg: string;
  TotDes: string;
  TipFrt: string;
  ObsFat: string;
  TipCnd: string;
  NomArq: string;
  sNumeroNF: string;
  NroPais_Emp: string;
  NomPais_Emp: string;
  NroPais_Cli: string;
  NomPais_Cli: string;
  Finalizar: string;
  Id_EmpCie: string;
  Id_CliNfe: string;
  Id_EstSip: string;
  Id_FinPai: integer;
  Id_FinUfe: integer;
  Id_FinCie: integer;
  Id_CliUfe: integer;
  Id_CliCie: integer;
  Nome_ArqIni: string;
  linpro: string;
  id_CMPNFS: integer;
  chaven: string;
  sText, cinserir, cdir, vchave, strAux: string;
begin
  inherited;
  //Etapa 1 - Acertar dados
  CmpNfs.Active := false;
  cmpnfs.sql.text := 'Select CmpNfs.*, ' +
    ' FinFor.NomFor, ' +
    '            FinFor.EmaFor ' +
    ' From cmpnfs LEFT JOIN FinFOR ON (CodFOR = FinFOr.CodFor) ' +
    ' Where id_CMPNFS = ' + QuotedStr(fmManLro.CmpNfsID_CMPNFS.AsString) +
    ' Order by NroNfs ';
  cmpnfs.open;

  cmpnfs.Edit;
  CmpNfsNRONFS.Value := strtoint(EdNroNfs.text);
  CmpNfsFLGNFS.value := '*';
  vnumnota := EdNroNfs.text;
  cmpnfs.Post;
  //  CmpNfs.ApplyUpdates;

  if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Aguardando Emissao de Nota Fiscal' then
  begin

    sText := '              Confirma Nota Fiscal?               ' + #10 +
      '                                                  ' + #10 +
      ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :' + #10 +
      '                                                  ';

    if fmManRo2.CmpNfsAtuEst.Value = 'Sim' then
      sText := sText + #10 + ' . Baixas nos Estoques dos Itens Faturados;       ';

    if fmManRo2.CmpNfsIntFin.Value = 'Sim' then
      sText := sText + #10 + ' . Lançamentos dos Titulos no Contas a Receber.   ';

    sText := sText + #10 + '                                                  ';

    if fMsg(sText, 'O') then
    begin

      fmManRo2.CmpNfs.Edit;

      fmManRo2.CmpNfsSitNfs.Value := 'Concluido';
      fmManRo2.CmpNfsNRONFS.Value := strtoint(EdNroNfs.text);
      fmManRo2.CmpNfsFLGNFS.value := '*';

      with fmManRo2.CmpNfs do
      begin

        fmManGDB.dbMain.StartTransaction; {Inicia a Transação}
        ;

        try

          ApplyUpdates; {Tenta aplicar as alterações}
          ;

          fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação}
          ;

        except
          fmManPri.Enabled := True;
          fmManIro.Enabled := True;
          //          pnMensag.visible := false;
          fmManIro.CLOSE;

          fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro}
          ;

          if fmManRo2.CmpNfs.State <> dsBrowse then
            fmManRo2.CmpNfs.CancelUpdates;

          fmManRo2.CmpNfs.Close;
          fmManRo2.CmpNfs.Open;

          fmManRo2.CmpNfs.Edit;

          Finalizar := 'N';

          if EdNroNfs.Enabled then
            EdNroNfs.SetFocus;

          raise;

        end;

        CommitUpdates; {sucesso!, limpa o cache...}

      end;

      fmManRo2.CmpNfs.Close;
      fmManRo2.CmpNfs.Open;

      EdNroNfs.Enabled := False;

      Finalizar := 'S';

    end
    else
    begin

      EdNroNfs.Enabled := False;

      Finalizar := 'N';

      bContinuar.SetFocus;

    end;

  end
  else
  begin

    if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Concluido' then
      fMsg('Operação não Pode ser Realizada. Romaneio Concluido.', 'E')

    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Nao Concluido' then
      fMsg('Operação não Pode ser Realizada. Romaneio não Concluido.', 'E')

    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Recebido' then
      fMsg('Operação não Pode ser Realizada. Romaneio com Recebimentos já Realizados.', 'E')

    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Recebido Parcialmente' then
      fMsg('Operação não Pode ser Realizada. Romaneio com Recebimentos já Realizados.', 'E')

    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Saldo Nao Atendido' then
      fMsg('Operação não Pode ser Realizada. Romaneio com Saldo não Atendido.', 'E')

    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Cancelado' then
      fMsg('Operação não Pode ser Realizada. Romaneio Cancelado.', 'E')

    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Processo de Alteracao' then
      fMsg('Operação não Pode ser Realizada. Romaneio em Processo de Alteração.', 'E');

  end;

  fmManIRo.close;
  fmManRo4.close;
  fmManRo3.close;
  fmManro2.Finalizar := 'S';
  fmManRo2.close;
  fmManLro.bAtualizar.Click;

end;

procedure TfmManIro.bt_erroClick(Sender: TObject);
begin
  inherited;
  //  pn_erro.Visible := false;
  fmManPri.Enabled := True;
  fmManIro.Enabled := True;
end;

procedure TfmManIro.Button1Click(Sender: TObject);
var
  xAnexo: Integer;
  newtext: tidtext;
  p: TidMessageParts;
begin
  idmessage1.clear;

  IdSMTP1.host := ehost;
  idsmtp1.Password := eSenha;
  idsmtp1.UserID := eUsuario;
  idmessage1.From.Address := eUsuario;
  IdMessage1.Recipients.EMailAddresses := ePara;
  IdMessage1.Priority := mpHigh;
  IdMessage1.Subject := eAssunto;
  IdMessage1.ContentType := 'text/html';
  IdMessage1.Body.text := corpomail.lines.text;
  IdMessage1.IsEncoded := True;
  IdMessage1.ReceiptRecipient.Text := IdMessage1.From.Text; // Auto Resposta
  TIdAttachment.create(idmessage1.MessageParts, TFileName(eAnexo));
  if FileExists(epdf) then
    TIdAttachment.create(idmessage1.MessageParts, TFileName(ePDF));

  IdSMTP1.Connect;
  try
    IdSMTP1.Send(IdMessage1);
    Application.MessageBox('Email enviado com sucesso!', 'Confirmação', MB_ICONINFORMATION + MB_OK);
  except
    Showmessage('Não foi possível enviar o e-mail para o cliente.');
  end;
  IdSMTP1.Disconnect;
  corpomail.Lines.text := memo1.lines.text;

end;

end.
