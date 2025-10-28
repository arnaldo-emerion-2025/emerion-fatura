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
    pn_erro: TPanel;
    memo_erro: TMemo;
    bt_erro: TButton;
    UpFatArq: TUpdateSQL;
    FatArq: TwwQuery;
    DSCmpNFS: TDataSource;
    DSCMPNF2: TDataSource;
    FatArqCODEMP: TIntegerField;
    FatArqDTENFS: TDateTimeField;
    FatArqNUMNFS: TStringField;
    FatArqSEQNFS: TIntegerField;
    FatArqARQNFE: TBlobField;
    FatArqFLGATU: TStringField;
    FatArqID_CMPNFS: TIntegerField;
    FatArqNFETH: TIntegerField;
    FatArqARQNFE_1: TBlobField;
    QuSQL1: TwwQuery;
    FatArqSITNFS: TStringField;
    Button1: TButton;
    Memo1: TMemo;
    CorpoMail: TMemo;
    IdMessage1: TIdMessage;
    IdSMTP1: TIdSMTP;
    procedure bretornarClick(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure CmpNfsAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure bt_erroClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    {Private declarations}
    eAssunto, eAnexo, ePara, eUsuario, eSenha,eHost, EProtocolo:string;
    eAutomatico, ei, eposicao, ehomologacao:integer;
    ecorpo: String;
  public
    {Public declarations}
  end;

var
  fmManIro: TfmManIro;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB, ManRo2, ManNF1R_NFE,
  ManPri, ManEn3_NFE, ManLro, ManRo4, ManRo3, ManE12_NFE;

{$R *.DFM}

Procedure FindReplace (const Enc, subs: String; Var Texto: TMemo);
Var
ifr, Posicaofr: Integer;
Linhafr: string;
Begin
For ifr:= 0 to Texto.Lines.count - 1 do
begin
Linhafr := Texto. Lines[ifr];
Repeat
Posicaofr:=Pos(Enc,Linhafr);
If Posicaofr > 0 then
Begin
Delete(Linhafr,Posicaofr,Length(Enc));
Insert(Subs,Linhafr,Posicaofr);
Texto.Lines[ifr]:=Linhafr;
end;
until Posicaofr = 0;
end;
end;

procedure TfmManIro.bretornarClick(Sender: TObject);
begin

  if fmManRo2.CmpNfsSitNfs.Value = 'Concluido' then fmManRo2.Finalizar := 'S';
   
  close;
  
end;

procedure TfmManIro.bcontinuarClick(Sender: TObject);
var
ArqTexto : TStringList;
Nota01: array[1..208] of string;
Nota02: array[1..208] of string;
ValorExt,ValorEx1,ValorEx2,ValorEx3,sContinuar : string;
NomFor,CgcFor,InsFor,TenFor,CepFor,EndFor,NumFor,BaiFor,CidFor,SigUfe : string;
EndEnt1,EndEnt2,EndCob1,EndCob2,Linha,FonFor,PrtFor,sCanc,sText,ImpClf,GImpRef : string;
Tam,Reg,Inc,Col,Lin,r,i,j,rec,qtdIte,qtdNfs,qtdLin,qtdnfis,qtdimpr,qtitens,SeqNf2,SeqNfg,QtiNfg,qtdnot,SeqError : integer;
begin

  ActiveControl := nil;
  
  if fmManRo2.CmpNfsNroNfs.Value > 0 then begin

     sContinuar := 'N';

     qtdnfs := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

     if EdNroNfs.Value > qtdnfs then begin

        if fMsgConf('Nota Fiscal Informada Fora de Sequencia. Proxima '+Trim( IntToStr(QtdNfs) )+'. Confirma ?','E') = 'SIM' then
           sContinuar := 'S'
        else
           begin

           if fmManRo2.CmpNfs.State = dsBrowse then fmManRo2.CmpNfs.Edit;
           
           fmManRo2.CmpNfsNroNfs.Value := QtdNfs;

           EdNroNfs.Value := fmManRo2.CmpNfsNroNfs.Value;

           if EdNroNfs.Enabled then EdNroNfs.SetFocus;

        end;

        end
     else
        begin

        if EdNroNfs.Value < qtdnfs then begin

           if fMsgConf('Nota Fiscal Informada Fora de Sequencia. Proxima '+Trim( IntToStr(QtdNfs) )+'. Confirma ?','O') = 'SIM' then
              sContinuar := 'S'
           else
              sContinuar := 'N';

           end
        else
           sContinuar := 'S';

     end;

     if sContinuar = 'S' then begin

        if FileExists('C:\Emerion\LINCOL.TXT') then begin

           if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Aguardando Emissao de Nota Fiscal' then begin

              if fmManRo2.CmpNfs.State = dsBrowse then fmManRo2.CmpNfs.Edit;

              fmManRo2.CmpNfsFlgNfs.Value := '*';

              with fmManRo2.CmpNfs do begin

                   fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

                   try

                      ApplyUpdates; {Tenta aplicar as alteracoes};

                      fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o};

                   except

                      fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro};

                      sContinuar := 'N';

                      if fmManRo2.CmpNfs.State = dsBrowse then fmManRo2.CmpNfs.Edit;

                      EdNroNfs.Value := fmManRo2.CmpNfsNroNfs.Value;
                      
                      if EdNroNfs.Enabled then EdNroNfs.SetFocus;

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
              
           if sContinuar = 'S' then begin

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select ImpRef From FatPar';
                   Open;

                   GImpRef := FieldByName('ImpRef').AsString;
                   
              end;

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FinFor.NomFor,'+
                           '        FinFor.CgcFor,'+
                           '        FinFor.InsFor,'+
                           '        FinFor.TenFor,'+
                           '        FinFor.EndFor,'+
                           '        FinFor.NumFor,'+
                           '        FinFor.BaiFor,'+
                           '        FinFor.CidFor,'+
                           '        FinFor.SigUfe,'+
                           '        FinFor.CepFor,'+
                           '        FinFor.PrtFor,'+
                           '        FinFor.FonFor From FinFor Where FinFor.CodFor = '''+ IntToStr( fmManRo2.CmpNfsCodFor.Value ) +'''';
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

              if Trim( NomFor ) <> '' then begin

                 if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Aguardando Emissao de Nota Fiscal' then begin

                    sText := '              Confirma Nota Fiscal?               '+#10+
                             '                                                  '+#10+
                             ' Ao Confirmar Ocorrer�o os Seguintes Lan�amentos :'+#10+
                             '                                                  ';

                    if fmManRo2.CmpNfsAtuEst.Value = 'Sim' then sText := sText + #10 + ' . Baixas nos Estoques dos Itens Faturados;       ';

                    if fmManRo2.CmpNfsIntFin.Value = 'Sim' then sText := sText + #10 + ' . Lan�amentos dos Titulos no Contas a Receber.   ';

                    sText := sText + #10 + '                                                  ';

                    if fMsg(sText,'O') then begin

                       fmManRo2.CmpNfs.Edit;

                       fmManRo2.CmpNfsSitNfs.Value := 'Concluido';

                       with fmManRo2.CmpNfs do begin

                            fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

                            try

                               ApplyUpdates; {Tenta aplicar as alteracoes};

                               fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o};

                            except

                               fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro};

                               if fmManRo2.CmpNfs.State <> dsBrowse then fmManRo2.CmpNfs.CancelUpdates;

                               fmManRo2.CmpNfs.Close;
                               fmManRo2.CmpNfs.Open;

                               fmManRo2.CmpNfs.Edit;

                               sContinuar := 'N';

                               if EdNroNfs.Enabled then EdNroNfs.SetFocus;

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

                    if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Concluido' then fMsg('Opera��o n�o Pode ser Realizada. Romaneio Concluido.','E')

                    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Nao Concluido' then fMsg('Opera��o n�o Pode ser Realizada. Romaneio n�o Concluido.','E')

                    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Recebido' then fMsg('Opera��o n�o Pode ser Realizada. Romaneio com Recebimentos j� Realizados.','E')

                    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Recebido Parcialmente' then fMsg('Opera��o n�o Pode ser Realizada. Romaneio com Recebimentos j� Realizados.','E')

                    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Saldo Nao Atendido' then fMsg('Opera��o n�o Pode ser Realizada. Romaneio com Saldo n�o Atendido.','E')

                    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Cancelado' then fMsg('Opera��o n�o Pode ser Realizada. Romaneio Cancelado.','E')

                    else if Trim(fmManRo2.CmpNfsSitNfs.Value) = 'Processo de Alteracao' then fMsg('Opera��o n�o Pode ser Realizada. Romaneio em Processo de Altera��o.','E');

                 end;

                 if sContinuar = 'S' then begin

                    fmsg('Posicione Nota Fiscal e Pressione ENTER','E');

                    SeqError := 1;

                    try

                       with quSQL,SQL do begin

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

                       if Trim( TenFor ) <> '' then EndCob1 := Trim( TenFor );

                       EndCob1 := EndCob1+ ' ' + Trim( EndFor )+' No. '+Trim( NumFor )+' '+
                                                 Trim( BaiFor )+' - '+Trim( CidFor )+' '+
                                                 Trim( SigUfe )+' Cep '+Trim( CepFor );

                       if Trim( fmManRo2.CmpNfsNomEnt.Value ) <> '' then begin

                          EndEnt1 := Trim( fmManRo2.CmpNfsNomEnt.Value );

                          EndEnt1 := EndEnt1 + ' C.N.P.J :'+copy(fmManRo2.CmpNfsCgcFor.Value,01,2)+'.'+copy(fmManRo2.CmpNfsCgcFor.Value,3,3)+'.'+
                                                            copy(fmManRo2.CmpNfsCgcFor.Value,06,3)+'/'+copy(fmManRo2.CmpNfsCgcFor.Value,9,4)+'-'+
                                                            copy(fmManRo2.CmpNfsCgcFor.Value,13,2);

                          if Trim( fmManRo2.CmpNfsTenFor.Value ) <> '' then EndEnt2 := Trim( fmManRo2.CmpNfsTenFor.Value )+' ';

                          if Trim( fmManRo2.CmpNfsNumFor.Value ) <> '' then
                             EndEnt2 := EndEnt2 + Trim( fmManRo2.CmpNfsEndFor.Value )+ ', ' +Trim( fmManRo2.CmpNfsNumFor.Value )+' '
                          else
                             EndEnt2 := EndEnt2 + Trim( fmManRo2.CmpNfsEndFor.Value )+' ';

                          EndEnt2 := EndEnt2 + Trim( fmManRo2.CmpNfsBaiFor.Value )+ ' - ' +Trim( fmManRo2.CmpNfsCidFor.Value )+ ' ' + Trim( fmManRo2.CmpNfsUfeFor.Value ) + ' Cep ' +Trim( fmManRo2.CmpNfsCepFor.Value );
                          
                          end
                       else
                          begin

                          if Trim( fmManRo2.CmpNfsTenFor.Value ) <> '' then EndEnt1 := Trim( fmManRo2.CmpNfsTenFor.Value )+' ';

                          if Trim( fmManRo2.CmpNfsNumFor.Value ) <> '' then
                             EndEnt1 := EndEnt1 + Trim( fmManRo2.CmpNfsEndFor.Value )+ ', ' +Trim( fmManRo2.CmpNfsNumFor.Value )+' '
                          else
                             EndEnt1 := EndEnt1 + Trim( fmManRo2.CmpNfsEndFor.Value )+' ';

                          EndEnt1 := EndEnt1 + Trim( fmManRo2.CmpNfsBaiFor.Value )+ ' - ' +Trim( fmManRo2.CmpNfsCidFor.Value )+ ' ' + Trim( fmManRo2.CmpNfsUfeFor.Value ) + ' Cep ' +Trim( fmManRo2.CmpNfsCepFor.Value );

                          EndEnt2 := 'C.N.P.J.:'+copy(fmManRo2.CmpNfsCgcFor.Value,01,2)+'.'+copy(fmManRo2.CmpNfsCgcFor.Value,3,3)+'.'+
                                                 copy(fmManRo2.CmpNfsCgcFor.Value,06,3)+'/'+copy(fmManRo2.CmpNfsCgcFor.Value,9,4)+'-'+
                                                 copy(fmManRo2.CmpNfsCgcFor.Value,13,2);

                       end;

                       if Trim( PrtFor ) <> '' then
                          FonFor := '('+Trim( PrtFor )+')'+Trim( FonFor )
                       else
                          FonFor := Trim( FonFor );

                       Nota01[001] := 'NumNot';
                       Nota02[001] := 'Comp12';

                       Nota01[002] := fmManRo2.CmpNfsFlgSai.Value; {Saida}
                       Nota02[002] := 'Comp12';

                       Nota01[003] := fmManRo2.CmpNfsFlgEnt.Value; {Entrada}
                       Nota02[003] := 'Comp12';

                       Nota01[004] := Trim(fmManRo2.CmpNfsDesNat.Value); {NatOper}
                       Nota02[004] := 'Comp12';

                       if Trim( fmManRo2.CmpNfsCodCf2.Value ) <> '' then {Cfop}
                          Nota01[005] := Trim( fmManRo2.CmpNfsCodCf1.Value )+'/'+Trim( fmManRo2.CmpNfsCodCf2.Value )
                       else
                          Nota01[005] := Trim( fmManRo2.CmpNfsCodCf1.Value );

                       Nota02[005] := 'Comp12';

                       Nota01[006] := '';
                       Nota02[006] := 'Comp12';

                       Nota01[007] := fmManRo2.CmpNfsInsSub.Value; {InscEstSubTrib}
                       Nota02[007] := 'Comp12';

                       Nota01[010] := DateToStr(fmManRo2.CmpNfsDteFat.Value); {DataEmis}
                       Nota02[010] := 'Comp12';

                       Nota01[008] := NomFor;  {Nome do Fornecedor}
                       Nota02[008] := 'Comp12';

                       CgcFor := fLimpaStr(CgcFor);

                       if Trim(fmManRo2.CmpNfsUfeNfs.Value) <> 'EX' then begin

                          if Length( Trim(CgcFor) ) <= 11 then
                             Nota01[009] := copy(CgcFor,1,3)+'.'+copy(CgcFor,4,3)+'.'+
                                            copy(CgcFor,7,3)+'-'+copy(CgcFor,10,2)
                          else
                             Nota01[009] := copy(CgcFor,01,2)+'.'+copy(CgcFor,3,3)+'.'+
                                            copy(CgcFor,06,3)+'/'+copy(CgcFor,9,4)+'-'+
                                            copy(CgcFor,13,2);

                          end
                       else
                          Nota01[009] := ' ';
                    
                       Nota02[009] := 'Comp12';

                       Nota01[010] := DateToStr(fmManRo2.CmpNfsDteFat.Value); {DataEmis}
                       Nota02[010] := 'Comp12';

                       Nota01[011] := Trim( TenFor ) + ' ' + Trim( EndFor ) + ', '+ Trim( NumFor ); {Endereco}
                       Nota02[011] := 'Comp12';

                       Nota01[012] := BaiFor; {Bairro}
                       Nota02[012] := 'Comp12';

                       if Trim( CepFor ) <> '' then {Cep}
                          Nota01[013] := copy(CepFor,1,5)+ '-' +copy(CepFor,6,3)
                       else
                          Nota01[013] := ' ';
                 
                       Nota02[013] := 'Comp12';

                       Nota01[014] := '';                          {DataSai}
                       Nota02[014] := '';

                       Nota01[015] := CidFor; {Cidade}
                       Nota02[015] := 'Comp12';

                       Nota01[016] := FonFor;                      {Fone}
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

                       Nota01[019] := '';          {Hora da Saida}
                       Nota02[019] := 'Comp12';

                       Nota01[208] := ' ';         {Detalhamento do ICMS}
                       Nota02[208] := 'Comp20';

                       i := 131;

                       rec := 0;

                       for j := 1 to 12 do begin

                           Nota01[i] := ' '; {N�mero}
                           Nota02[i] := 'Comp12';

                           i := i + 1;

                           rec := rec + 1;

                           if rec = 8 then i := 195;

                       end;

                       i := 141;

                       rec := 0;

                       for j := 1 to 12 do begin

                           Nota01[i] := ' '; {N�mero}
                           Nota02[i] := 'Comp12';

                           i := i + 1;

                           rec := rec + 1;

                           if rec = 8 then i := 199;

                       end;

                       i := 151;

                       rec := 0;

                       for j := 1 to 12 do begin

                           Nota01[i] := ' '; {N�mero}
                           Nota02[i] := 'Comp12';

                           i := i + 1;

                           rec := rec + 1;

                           if rec = 8 then i := 203;

                       end;

                       Nota01[038] := EndCob1;                      {Cobranca_1}
                       Nota02[038] := 'Comp20';

                       Nota01[039] := EndCob2;                      {Cobranca_2}
                       Nota02[039] := 'Comp20';

                       Nota01[040] := '';                           {Produto}
                       Nota02[040] := 'Comp20';

                       Nota01[041] := '';                           {Descr}
                       Nota02[041] := 'Comp20';

                       Nota01[042] := '';                           {ClassFisc}
                       Nota02[042] := 'Comp20';

                       Nota01[207] := '';                           {ClassFisc}
                       Nota02[207] := 'Comp20';

                       Nota01[043] := '';                           {St1}
                       Nota02[043] := 'Comp20';

                       Nota01[044] := '';                           {St2}
                       Nota02[044] := 'Comp20';

                       Nota01[045] := '';                           {Unidade}
                       Nota02[045] := 'Comp20';

                       Nota01[046] := '';                           {Qtde}
                       Nota02[046] := 'Comp20';

                       Nota01[047] := '';                           {Unit}
                       Nota02[047] := 'Comp20';

                       Nota01[048] := '';                           {Total}
                       Nota02[048] := 'Comp20';

                       Nota01[049] := '';                           {AlIcms}
                       Nota02[049] := 'Comp20';

                       Nota01[050] := '';                           {AlIpi}
                       Nota02[050] := 'Comp20';

                       Nota01[051] := '';                           {ValIpi}
                       Nota02[051] := 'Comp20';

                       Nota01[052] := '';                           {Descr2}
                       Nota02[052] := 'Comp20';

                       Nota01[128] := '';                           {Descr3}
                       Nota02[128] := 'Comp20';

                       Nota01[053] := fmManRo2.CmpNfsTxfIpi.Value;  {TextIpi}
                       Nota02[053] := 'Comp20';

                       Nota01[054] := fmManRo2.CmpNfsTxfIcm.Value;  {TextIcm}
                       Nota02[054] := 'Comp20';

                       Nota01[055] := 'Entrega: '+EndEnt1;          {Entrega_1}
                       Nota02[055] := 'Comp20';

                       Nota01[056] := '         '+EndEnt2;          {Entrega_2}
                       Nota02[056] := 'Comp20';

                       Nota01[067] := fmManRo2.CmpNfsNomTra.Value; {NomeTransp}
                       Nota02[067] := 'Comp12';

                       Nota01[068] := fmManRo2.CmpNfsTipFrt.Value; {FretePc}
                       Nota02[068] := 'Comp12';

                       Nota01[069] := fmManRo2.CmpNfsPlcTra.Value; {Placa}
                       Nota02[069] := 'Comp12';

                       Nota01[070] := fmManRo2.CmpNfsUfePlc.Value; {UfPlaca}
                       Nota02[070] := 'Comp12';

                       if Trim( fmManRo2.CmpNfsCgcTra.Value ) <> '' then

                          Nota01[071] := copy(fmManRo2.CmpNfsCgcTra.Value,01,2)+'.'+copy(fmManRo2.CmpNfsCgcTra.Value,3,3)+'.'+
                                         copy(fmManRo2.CmpNfsCgcTra.Value,06,3)+'/'+copy(fmManRo2.CmpNfsCgcTra.Value,9,4)+'-'+
                                         copy(fmManRo2.CmpNfsCgcTra.Value,13,2)

                       else
                          Nota01[071] := ' ';

                       Nota02[071] := 'Comp12';

                       Nota01[072] := Trim( fmManRo2.CmpNfsTenTra.Value ) + ' ' + Trim( fmManRo2.CmpNfsEndTra.Value ) + ', ' + Trim( fmManRo2.CmpNfsNumTra.Value ) + ' ' + Trim( fmManRo2.CmpNfsBaiTra.Value );
                       Nota02[072] := 'Comp12';

                       Nota01[073] := fmManRo2.CmpNfsCidTra.Value; {CidTransp}
                       Nota02[073] := 'Comp12';

                       Nota01[074] := fmManRo2.CmpNfsUfeTra.Value; {UFTransp}
                       Nota02[074] := 'Comp12';

                       Nota01[075] := fmManRo2.CmpNfsInsTra.Value; {InscTransp}
                       Nota02[075] := 'Comp12';

                       // De Acordo com o Toninho Por Enquanto Deixar o Campo de Volumes Em branco Em  : 02/07/2003 //
                       // So Exibir se a Valeria Alterar o seu Conteudo "Notas de Exporta��o //

                       if fmManRo2.CmpNfsAltVol.Value > 0 then
                          Nota01[076] := Prestring(IntToStr(fmManRo2.CmpNfsAltVol.Value),7) {QtdeVol}
                       else
                          Nota01[076] := ' ';

                       Nota02[076] := 'Comp12';

                       Nota01[077] := fmManRo2.CmpNfsEspNfs.Value; {Especie}
                       Nota02[077] := 'Comp12';

                       Nota01[078] := fmManRo2.CmpNfsMarNfs.Value; {Marca}
                       Nota02[078] := 'Comp12';

                       Nota01[079] := fmManRo2.CmpNfsNumNfs.Value; {Numero}
                       Nota02[079] := 'Comp12';

                       Nota01[080] := Prestring(FormatFloat('###,###,##0.00',fmManRo2.CmpNfsInfBrt.Value),14); {PesBruto}
                       Nota02[080] := 'Comp12';

                       Nota01[081] := Prestring(FormatFloat('###,###,##0.00',fmManRo2.CmpNfsInfLiq.Value),14); {PesLiq}
                       Nota02[081] := 'Comp12';

                       if ( Trim(fmManRo2.CmpNfsOb1Nfs.Value) = '' ) and
                          ( Trim(fmManRo2.CmpNfsOb2Nfs.Value) = '' ) and
                          ( Trim(fmManRo2.CmpNfsOb3Nfs.Value) = '' ) and
                          ( Trim(fmManRo2.CmpNfsOb4Nfs.Value) = '' ) and
                          ( Trim(fmManRo2.CmpNfsOb5Nfs.Value) = '' ) and
                          ( Trim(fmManRo2.CmpNfsOb6Nfs.Value) = '' ) and
                          ( Trim(fmManRo2.CmpNfsOb7Nfs.Value) = '' ) and
                          ( Trim(fmManRo2.CmpNfsOb8Nfs.Value) = '' ) then begin

                          Nota01[187] := copy(fmManRo2.CmpNfsObsNfs.Value,001,070); {Obs1}
                          Nota02[187] := 'Comp20';

                          Nota01[188] := copy(fmManRo2.CmpNfsObsNfs.Value,071,070); {Obs2}
                          Nota02[188] := 'Comp20';

                          Nota01[189] := copy(fmManRo2.CmpNfsObsNfs.Value,141,070); {Obs3}
                          Nota02[189] := 'Comp20';

                          Nota01[190] := copy(fmManRo2.CmpNfsObsNfs.Value,211,070); {Obs4}
                          Nota02[190] := 'Comp20';

                          Nota01[191] := copy(fmManRo2.CmpNfsObsNfs.Value,281,070); {Obs5}
                          Nota02[191] := 'Comp20';

                          Nota01[192] := copy(fmManRo2.CmpNfsObsNfs.Value,351,070); {Obs6}
                          Nota02[192] := 'Comp20';

                          Nota01[193] := ' ';                                       {Obs7}
                          Nota02[193] := 'Comp20';

                          Nota01[194] := ' ';                                       {Obs8}
                          Nota02[194] := 'Comp20';

                          end
                       else
                          begin

                          Nota01[187] := fmManRo2.CmpNfsOb1Nfs.Value;              {Obs1}
                          Nota02[187] := 'Comp20';

                          Nota01[188] := fmManRo2.CmpNfsOb2Nfs.Value;              {Obs2}
                          Nota02[188] := 'Comp20';

                          Nota01[189] := fmManRo2.CmpNfsOb3Nfs.Value;              {Obs3}
                          Nota02[189] := 'Comp20';

                          Nota01[190] := fmManRo2.CmpNfsOb4Nfs.Value;              {Obs4}
                          Nota02[190] := 'Comp20';

                          Nota01[191] := fmManRo2.CmpNfsOb5Nfs.Value;              {Obs5}
                          Nota02[191] := 'Comp20';

                          Nota01[192] := fmManRo2.CmpNfsOb6Nfs.Value;              {Obs6}
                          Nota02[192] := 'Comp20';

                          Nota01[193] := fmManRo2.CmpNfsOb7Nfs.Value;              {Obs7}
                          Nota02[193] := 'Comp20';

                          Nota01[194] := fmManRo2.CmpNfsOb8Nfs.Value;              {Obs8}
                          Nota02[194] := 'Comp20';

                       end;

                       Nota01[117] := IntToStr(fmManRo2.CmpNfsCodFor.Value); {c�digo do Fornecedor}
                       Nota02[117] := 'Comp12';

                       Nota01[118] := ' ';                                   {c�digo do Vendedor}
                       Nota02[118] := 'Comp12';

                       Nota01[119] := '';        {SeuPed}
                       Nota02[119] := 'Comp12';

                       Nota01[120] := ' ';       {Nosso Pedido}
                       Nota02[120] := 'Comp12';

                       Nota01[121] := 'NumNot';  {NotaRod1}
                       Nota02[121] := 'Comp20';

                       Nota01[122] := 'NumNot';  {NotaRod2}
                       Nota02[122] := 'Comp20';

                       ValorExt := fExtenso(fmManRo2.CmpNfsTotGer.Value);

                       if Length(TrimLeft(TrimRight(ValorExt))) < 150 then
                          ValorExt := TrimLeft(TrimRight(ValorExt))+fReplicate('*',150 - Length(TrimLeft(TrimRight(ValorExt))));

                       Nota01[123] := copy(ValorExt,001,50); {Valor por Extenso 1}
                       Nota02[123] := 'Comp12';

                       Nota01[124] := copy(ValorExt,051,50); {Valor por Extenso 2}
                       Nota02[124] := 'Comp12';

                       Nota01[125] := copy(ValorExt,101,50); {Valor por Extenso 3}
                       Nota02[125] := 'Comp12';

                       Nota01[126] := fmManRo2.CmpNfsDesReg.Value; {Observa��es Sobre Desconto}
                       Nota02[126] := 'Comp20';

                       {********************************************************************************************}

                       rdprint1.OpcoesPreview.Preview     := False;
                       rdprint1.OpcoesPreview.PreviewZoom := 100;
                       rdprint1.TamanhoQteLPP             := oito;
                       rdprint1.UsaGerenciadorImpr        := True;

                       rdprint1.TamanhoQteColunas  := 136;
                       rdprint1.FonteTamanhoPadrao := s17cpp;

                       {Programa��o dos Eventos: desliga eventos cabecalho/rodape}
                       rdprint1.OnNewPage       := nil;
                       rdprint1.OnBeforeNewPage := nil;

                       rdprint1.TamanhoQteLinhas := QtdNfs;

                       qtdimpr := 0; {Quantidade de Linhas de Itens Impressas};
                       qtitens := 0; {Indicador se Esta Sendo Impressos Itens ou N�o}

                       SeqNf2 := 0;  {sequencial dos Itens a Serem Impressos}

                       Lin := 0; {Linha que Esta Sendo Impressas}{Incrementos de Linhas}
                       Inc := 0; {Incrementos de Linhas}
                       Col := 0; {Posi��o da Coluna a ser Impressa}
                       Reg := 0; {Numero do Vetor a Ser Impresso}
                       Tam := 0; {Tamanho da String a Ser Impressa}

                       qtdnot := 1;  {Quantidade de Notas Impressas}

                       rdprint1.abrir;

         //            qtdnfis := (fmManRo2.CmpNfsNroNfs.Value - fmManRo2.CmpNfsQtdNfs.Value)+ 1;  {Quantidade de Notas Fiscais Impressas}

                       qtdnfis := 1;  {Quantidade de Notas Fiscais Impressas}

                       while qtdnfis <= fmManRo2.CmpNfsQtdNfs.Value do begin

                             with quSQL,SQL do begin

                                  Close;
                                  Text := ' Select Count(*) as QtdReg From CmpNf2'+
                                          ' Where CmpNf2.CodEmp = :CodEmp'+
                                          '   and CmpNf2.DteNfs = :DteNfs'+
                                          '   and CmpNf2.SeqNfs = :SeqNfs'+
                                          '   and CmpNf2.SeqNfg = :SeqNfg';

                                  with Params do begin

                                       Params[0].AsInteger  := fmManRo2.CmpNfsCodEmp.Value;
                                       Params[1].AsDateTime := fmManRo2.CmpNfsDteNfs.Value;
                                       Params[2].AsInteger  := fmManRo2.CmpNfsSeqNfs.Value;
                                       Params[3].AsInteger  := qtdnfis;

                                  end;

                                  Open;

                                  QtiNfg := FieldbyName('QtdReg').AsInteger;

                             end;

                             SeqNfg := 0;

                             if qtdnfis = fmManRo2.CmpNfsQtdNfs.Value then begin

                                with quSQL,SQL do begin

                                     Close;
                                     Text := ' Select Count(Distinct(CmpNf4.PerIcm)) as QtdReg'+
                                             ' From CmpNf4'+
                                             ' Where CmpNf4.CodEmp = :CodEmp'+
                                             '   and CmpNf4.DteNfs = :DteNfs'+
                                             '   and CmpNf4.SeqNfs = :SeqNfs';

                                     with Params do begin

                                          Params[0].AsInteger  := fmManRo2.CmpNfsCodEmp.Value;
                                          Params[1].AsDateTime := fmManRo2.CmpNfsDteNfs.Value;
                                          Params[2].AsInteger  := fmManRo2.CmpNfsSeqNfs.Value;

                                     end;

                                     Open;

                                end;

                                if quSQL.FieldbyName('QtdReg').AsInteger > 1 then begin

                                   with quSQL,SQL do begin

                                        Close;
                                        Text := ' Select CmpNf4.PerIcm,'+
                                                '        Sum(CmpNf4.BasIcm) as BasIcm,'+
                                                '        Sum(CmpNf4.TotIcm) as TotIcm '+
                                                ' From CmpNf4'+
                                                ' Where CmpNf4.CodEmp = :CodEmp'+
                                                '   and CmpNf4.DteNfs = :DteNfs'+
                                                '   and CmpNf4.SeqNfs = :SeqNfs'+
                                                ' Group by CmpNf4.PerIcm'+
                                                ' Order by CmpNf4.PerIcm';

                                        with Params do begin

                                             Params[0].AsInteger  := fmManRo2.CmpNfsCodEmp.Value;
                                             Params[1].AsDateTime := fmManRo2.CmpNfsDteNfs.Value;
                                             Params[2].AsInteger  := fmManRo2.CmpNfsSeqNfs.Value;

                                        end;

                                        Open;
                                        First;

                                   end;

                                   while not quSQL.EOF do begin

                                         if Trim(Nota01[208]) <> '' then
                                            Nota01[208] := Trim(Nota01[208]) + ' Base '+FormatFloat('###',quSQL.FieldbyName('PerIcm').AsFloat)+'% R$ '+preString(FormatFloat('###,###,##0.00',quSQL.FieldbyName('BasIcm').AsFloat),15)+' Imp. R$ '+preString(FormatFloat('###,###,##0.00',quSQL.FieldbyName('TotIcm').AsFloat),15)
                                         else
                                            Nota01[208] := 'Base '+FormatFloat('###',quSQL.FieldbyName('PerIcm').AsFloat)+'% R$ '+preString(FormatFloat('###,###,##0.00',quSQL.FieldbyName('BasIcm').AsFloat),15)+' Imp. R$ '+preString(FormatFloat('###,###,##0.00',quSQL.FieldbyName('TotIcm').AsFloat),15);
                                   
                                         quSQL.Next;

                                   end;
                                end;

                                {BaseIcms}
                                if fmManRo2.CmpNfsBasIc1.Value > 0 then
                                   Nota01[057] := Prestring(FormatFloat('###,###,##0.00',fmManRo2.CmpNfsBasIc1.Value),14)
                                else
                                   Nota01[057] := ' ';

                                Nota02[057] := 'Comp12';

                                {ValIcms}
                                if fmManRo2.CmpNfsTotIc1.Value > 0 then
                                   Nota01[058] := Prestring(FormatFloat('###,###,##0.00',fRound(fmManRo2.CmpNfsTotIc1.Value,2)),14)
                                else
                                   Nota01[058] := ' ';

                                Nota02[058] := 'Comp12';

                                {BaseIcmsSub}
                                if fmManRo2.CmpNfsBasSu1.Value > 0 then
                                   Nota01[059] := Prestring(FormatFloat('###,###,##0.00',fmManRo2.CmpNfsBasSu1.Value),14)
                                else
                                   Nota01[059] := ' ';

                                Nota02[059] := 'Comp12';

                                {ValIcmsSub}
                                if fmManRo2.CmpNfsTotSu1.Value > 0 then
                                   Nota01[060] := Prestring(FormatFloat('###,###,##0.00',fRound(fmManRo2.CmpNfsTotSu1.Value,2)),14)
                                else
                                   Nota01[060] := ' ';

                                Nota02[060] := 'Comp12';

                                Nota01[061] := Prestring(FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotIt1.Value),14); {TotalProds}
                                Nota02[061] := 'Comp12';

                                if fmManRo2.CmpNfsTotFrt.Value > 0 then
                                   Nota01[062] := Prestring(FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotFrt.Value),14)  {Frete}
                                else
                                   Nota01[062] := ' ';

                                Nota02[062] := 'Comp12';

                                if fmManRo2.CmpNfsTotSeg.Value > 0 then
                                   Nota01[063] := Prestring(FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotSeg.Value),14) {Seguro}
                                else
                                   Nota01[063] := ' ';

                                Nota02[063] := 'Comp12';

                                if fmManRo2.CmpNfsTotDes.Value > 0 then
                                   Nota01[064] := Prestring(FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotDes.Value),14) {Outras}
                                else
                                   Nota01[064] := ' ';

                                Nota02[064] := 'Comp12';

                                if fmManRo2.CmpNfsTotIp1.Value > 0 then
                                   Nota01[065] := Prestring(FormatFloat('###,###,##0.00',fRound(fmManRo2.CmpNfsTotIp1.Value,2)),14) {TotalIPI}
                                else
                                   Nota01[065] := ' ';

                                Nota02[065] := 'Comp12';

                                if fmManRo2.CmpNfsTotGe1.Value > 0 then
                                   Nota01[066] := Prestring(FormatFloat('###,###,##0.00',fmManRo2.CmpNfsTotGe1.Value),14) {TotalNota}
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

                             if Length( Trim( ValorExt ) ) < 150 then ValorExt := Trim( ValorExt )+fReplicate('*',150 - Length(Trim( ValorExt )));

                             Nota01[123] := copy(ValorExt,001,50); {Valor por Extenso 1}
                             Nota02[123] := 'Comp12';

                             Nota01[124] := copy(ValorExt,051,50); {Valor por Extenso 2}
                             Nota02[124] := 'Comp12';

                             Nota01[125] := copy(ValorExt,101,50); {Valor por Extenso 3}
                             Nota02[125] := 'Comp12';

                             with quSQL,SQL do begin

                                  Close;
                                  Text := ' Select CmpNf3.SeqNf3,'+
                                          '        CmpNf3.ClsIpi From CmpNf3'+
                                          ' Where CmpNf3.CodEmp = :CodEmp'+
                                          '   and CmpNf3.DteNfs = :DteNfs'+
                                          '   and CmpNf3.SeqNfs = :SeqNfs'+
                                          '   and CmpNf3.SeqNfg = :SeqNfg'+
                                          ' Order by CmpNf3.SeqNf3';

                                  with Params do begin

                                       Params[0].AsInteger  := fmManRo2.CmpNfsCodEmp.Value;
                                       Params[1].AsDateTime := fmManRo2.CmpNfsDteNfs.Value;
                                       Params[2].AsInteger  := fmManRo2.CmpNfsSeqNfs.Value;
                                       Params[3].AsInteger  := qtdnfis;

                                  end;

                                  Open;

                             end;

                             quSQL.First;

                             {CodClassfisc}

                             i := 88;

                             for j := 1 to 28 do begin

                                 Nota01[i] := ' ';
                                 Nota02[i] := 'Comp20';

                                 i := i + 1;

                             end;

                             i := 88;

                             rec := 0;

                             while not quSQL.Eof do begin

                                   if Trim( quSQL.FieldbyName('ClsIpi').AsString ) <> '' then
                                      Nota01[i] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqNf3').AsInteger),3)+ ' - ' +quSQL.FieldbyName('ClsIpi').AsString
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

                             while r <= qtdLin do begin

                                   Linha := ArqTexto[r];

                                   if Trim( Linha ) <> '' then begin

                                      if pos('Sim',Linha) > 0 then begin

                                         if pos('salto',Linha) > 0 then begin

                                            Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));   {Linha encontrada e de Incremento de Saltos de Linhas}
                                            Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));

                                            if pos('Inicio',Linha) > 0 then begin

                                               if qtdnot > 1 then Inc := Inc + 1;

                                            end;

                                            Lin := Lin + Inc;

                                            rdprint1.imp(Lin,001,'');

                                            end
                                         else
                                            begin

                                            if (pos('NotaCab',Linha) > 0) or (pos('NotaRod',Linha) > 0) then begin

                                               Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));   {Linha encontrada e de Final de Nota Fiscal}
                                               Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));

                                               if (Col > 0) or (Inc > 0) then begin

                                                  Lin := Lin + Inc;

                                                  rdprint1.impf(Lin,Col,fNumZeros(IntToStr(fmManRo2.CmpNfsNroNfs.Value),6),[EXPANDIDO, negrito]);

                                               end;

                                               end
                                            else
                                               begin

                                               if (pos('#00040',Linha) = 0) and (qtitens = 0) then begin  {A Linha que Esta Sendo Impressa n�o e a de Itens}

                                                  Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));   {Linha encontrada e de Incremento de Saltos de Linhas}
                                                  Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));
                                                  reg := StrToInt(copy(Linha,pos('#',Linha)+1,5));

                                                  if (Col > 0) or (Inc > 0) then begin

                                                     Lin := Lin + Inc;

                                                     if (reg >= 131) and (reg <= 160) then begin

                                                        if qtdnfis = fmManRo2.CmpNfsQtdNfs.Value then begin

                                                           if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                           if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                           if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                           end
                                                        else
                                                           begin

                                                           if (reg = 151) then begin

                                                              if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp12]);
                                                              if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp20]);
                                                              if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp17]);

                                                              end
                                                           else
                                                              begin

                                                              if (reg >= 131) and (reg <= 140) then begin

                                                                 if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,' ',[Comp12]);
                                                                 if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,' ',[Comp20]);
                                                                 if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,' ',[Comp17]);

                                                                 end
                                                              else
                                                                 begin

                                                                 if (reg >= 141) and (reg <= 150) then begin

                                                                    if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,' ',[Comp12]);
                                                                    if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,' ',[Comp20]);
                                                                    if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,' ',[Comp17]);

                                                                    end
                                                                 else
                                                                    begin

                                                                    if (reg >= 151) and (reg <= 160) then begin

                                                                    if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,' ',[Comp12]);
                                                                    if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,' ',[Comp20]);
                                                                    if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,' ',[Comp17]);

                                                                    end;
                                                                 end;
                                                              end;
                                                           end;
                                                        end;
                                               
                                                        end
                                                     else
                                                        begin

                                                        if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                        if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                        if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                     end;
                                                  end;

                                                  end
                                               else
                                                  begin

                                                  if qtitens < 2 then begin

                                                     qtitens := 1;

                                                     SeqNf2 := SeqNf2 + 1;
                                                     SeqNfg := SeqNfg + 1;

                                                     if qtdimpr = 0 then qtdimpr := Lin;

                                                     with quSQL,SQL do begin

                                                          Close;
                                                          Text := ' Select CmpNf2.CodClp,'+
                                                                  '        CmpNf2.CodGru,'+
                                                                  '        CmpNf2.CodSub,'+
                                                                  '        CmpNf2.CodPro,'+
                                                                  '        CmpNf2.NroNfs,'+
                                                                  '        CmpNf2.SeqNfg,'+
                                                                  '        CmpNf2.DesNf2,'+
                                                                  '        CmpNf2.ObsNf2,'+
                                                                  '        CmpNf2.RefNf2,'+
                                                                  '        CmpNf2.SeqNf3,'+                                                                  
                                                                  '        CmpNf2.ClsIpi,'+
                                                                  '        CmpNf2.CodSt1,'+
                                                                  '        CmpNf2.CodSt2,'+
                                                                  '        CmpNf2.CodUnd,'+
                                                                  '        CmpNf2.QtpNf2,'+
                                                                  '        CmpNf2.CodUnd,'+
                                                                  '        CmpNf2.VluNf2,'+
                                                                  '        CmpNf2.TotIte,'+
                                                                  '        CmpNf2.TrbIcm,'+
                                                                  '        CmpNf2.IcmNf2,'+
                                                                  '        CmpNf2.TrbIpi,'+
                                                                  '        CmpNf2.IpiNf2,'+
                                                                  '        CmpNf2.TotIpi '+
                                                                  ' From CmpNf2'+
                                                                  ' Where CmpNf2.CodEmp = :CodEmp'+
                                                                  '   and CmpNf2.DteNfs = :DteNfs'+
                                                                  '   and CmpNf2.SeqNfs = :SeqNfs'+
                                                                  '   and CmpNf2.NroNf2 = :NroNf2';

                                                          with Params do begin

                                                               Params[0].AsInteger  := fmManRo2.CmpNfsCodEmp.Value;
                                                               Params[1].AsDateTime := fmManRo2.CmpNfsDteNfs.Value;
                                                               Params[2].AsInteger  := fmManRo2.CmpNfsSeqNfs.Value;
                                                               Params[3].AsInteger  := SeqNf2;

                                                          end;

                                                          Open;

                                                     end;

                                                     if Trim( quSql.FieldbyName('CodGru').AsString ) <> '' then begin

                                                        {Item a Ser Impresso Pertence a Nota Fiscal}
                                                        if quSql.FieldbyName('SeqNfg').AsInteger = qtdnfis then begin

                                                           {Produto}
                                                           if GImpRef = 'Nao' then
                                                              Nota01[040] := quSql.FieldbyName('CodClp').AsString+ '-' +quSql.FieldbyName('CodGru').AsString+ '.' +quSql.FieldbyName('CodSub').AsString+ '.' +quSql.FieldbyName('CodPro').AsString
                                                           else
                                                              Nota01[040] := Trim( quSql.FieldbyName('RefNf2').AsString );
                                                              
                                                           Nota02[040] := 'Comp20';

                                                           {Descr}
                                                           Nota01[041] := Trim(quSql.FieldbyName('DesNf2').AsString);
                                                           Nota02[041] := 'Comp20';

                                                           {Descr}

                                                           if Trim( quSql.FieldbyName('RefNf2').AsString ) <> '' then
                                                              Nota01[052] := Trim( quSql.FieldbyName('RefNf2').AsString )
                                                           else
                                                              Nota01[052] := ' ';
                                                     
                                                           Nota02[052] := 'Comp20';

                                                           {ClassFisc}
                                                           if Trim( quSQL.FieldbyName('ClsIpi').AsString ) <> '' then
                                                              Nota01[042] := fLimpaStr( quSql.FieldbyName('ClsIpi').AsString )
                                                           else
                                                              Nota01[042] := ' ';
                                                              
                                                           Nota02[042] := 'Comp20';

                                                           if Trim( quSQL.FieldbyName('SeqNf3').AsString ) <> '' then
                                                              Nota01[207] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqNf3').AsInteger),3)
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

                                                           if quSql.FieldbyName('QtpNf2').AsFloat > 0 then begin

                                                              if fEncDecimal(quSql.FieldbyName('QtpNf2').AsFloat) > 0 then
                                                                 Nota01[046] := Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpNf2').AsFloat),12)
                                                              else
                                                                 Nota01[046] := Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('QtpNf2').AsFloat),12);

                                                              end
                                                           else
                                                              Nota01[046] := ' ';

                                                           Nota02[046] := 'Comp20';

                                                           {Unit}
                                                           if quSql.FieldbyName('VluNf2').AsFloat > 0 then
                                                              Nota01[047] := Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('VluNf2').AsFloat),12)
                                                           else
                                                              Nota01[047] := ' ';

                                                           Nota02[047] := 'Comp20';

                                                           {Total}
                                                           if quSql.FieldbyName('TotIte').AsFloat > 0 then
                                                              Nota01[048] := Prestring(FormatFloat('###,###,##0.00',quSql.FieldbyName('TotIte').AsFloat),12)
                                                           else
                                                              Nota01[048] := ' ';
                                                     
                                                           Nota02[048] := 'Comp20';

                                                           {AlIcms}
                                                           if quSql.FieldbyName('TrbIcm').AsString = 'Sim' then
                                                              Nota01[049] := Prestring(FormatFloat('##0',quSql.FieldbyName('IcmNf2').AsFloat),3)
                                                           else
                                                              Nota01[049] := ' ';

                                                           Nota02[049] := 'Comp20';

                                                           {AlIpi}
                                                           if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                                              Nota01[050] := Prestring(FormatFloat('##0',quSql.FieldbyName('IpiNf2').AsFloat),3)
                                                           else
                                                              Nota01[050] := ' ';

                                                           Nota02[050] := 'Comp20';

                                                           {ValIpi}
                                                           if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                                              Nota01[051] := Prestring(FormatFloat('###,##0.00',fRound(quSql.FieldbyName('TotIpi').AsFloat,2)),10)
                                                           else
                                                              begin

                                                              if quSql.FieldbyName('TotIpi').AsFloat > 0 then
                                                                 Nota01[051] := Prestring(FormatFloat('###,##0.00',fRound(quSql.FieldbyName('TotIpi').AsFloat,2)),10)
                                                              else
                                                                 Nota01[051] := ' ';

                                                           end;
                                                           
                                                           Nota02[051] := 'Comp20';

                                                           rec := r;

                                                           i := rec + 18;

                                                           Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));   {Linha encontrada e de Incremento de Saltos de Linhas}

                                                           Lin := Lin + 1;

                                                           while r <= i do begin

                                                                 Linha := ArqTexto[r];

                                                                 if Trim( Linha ) <> '' then begin

                                                                    Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));
                                                                    Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));
                                                                    reg := StrToInt(copy(Linha,pos('#',Linha)+1,5));
                                                                    Tam := StrToInt(copy(Linha,pos('#',Linha)+6,3));

                                                                    if Tam > 0 then begin

                                                                       if (Col > 0) or (Inc > 0) then begin

                                                                          if pos('Sim',Linha) > 0 then begin

                                                                             {Verifica se a Linha que Esta Sendo Impressa n�o e a de Segunda Descri��o ou de Titulos de Descontos}
                                                                             if (Reg <> 52) and (Reg <> 126) and (Reg <> 127) and (Reg <> 128) then begin

                                                                                if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,copy(Nota01[reg],1,Tam),[Comp12]);
                                                                                if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,copy(Nota01[reg],1,Tam),[Comp20]);
                                                                                if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,copy(Nota01[reg],1,Tam),[Comp17]);

                                                                                end
                                                                             else
                                                                                begin

                                                                                if (Reg = 52) and (Trim( quSql.FieldbyName('RefNf2').AsString ) <> '') then begin

                                                                                   {Descr2}
                                                                                   Nota01[052] := Trim( quSql.FieldbyName('RefNf2').AsString );
                                                                                   Nota02[052] := 'Comp20';

                                                                                   Lin := Lin + Inc;

                                                                                   if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                                   if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                                   if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                                end;

                                                                                if (Reg = 128) and (Trim( quSql.FieldbyName('ObsNf2').AsString ) <> '') then begin

                                                                                   {Descr2}
                                                                                   Nota01[128] := Trim( copy(quSql.FieldbyName('ObsNf2').AsString,1,Tam));
                                                                                   Nota02[128] := 'Comp20';

                                                                                   Lin := Lin + Inc;

                                                                                   if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                                   if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                                   if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                                   if Trim( copy(quSql.FieldbyName('ObsNf2').AsString,Tam+1,Tam )) <> '' then begin

                                                                                      {Descr2}
                                                                                      Nota01[128] := Trim(copy(quSql.FieldbyName('ObsNf2').AsString,Tam+1,Tam));
                                                                                      Nota02[128] := 'Comp20';

                                                                                      Lin := Lin + 1;

                                                                                      if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                                      if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                                      if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                                   end;

                                                                                   if Trim( copy(quSql.FieldbyName('ObsNf2').AsString,(Tam+Tam+1),Tam) ) <> '' then begin

                                                                                      {Descr2}
                                                                                      Nota01[128] := Trim(copy(quSql.FieldbyName('ObsNf2').AsString,(Tam+Tam+1),Tam));
                                                                                      Nota02[128] := 'Comp20';

                                                                                      Lin := Lin + 1;

                                                                                      if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                                      if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                                      if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                                   end;
                                                                                end;

//                                                                              if ( (Reg = 126) or (Reg = 127) ) then begin
//
//                                                                                 if (fmManRo2.CmpNfsTotDsr.Value > 0) and (SeqNfg = QtiNfg) then begin
//
//                                                                                    { S� ira Imprimir o Campo de Descontos na Ultima Nota e se foi Efetuado Descontos na Nota }
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
                                                           begin  {Finalizar Nota para Impress�o da Proxima Nota}

                                                           SeqNf2 := SeqNf2 - 1;

                                                           r := r + 18;

                                                           qtitens := 2;

                                                        end;

                                                        end
                                                     else
                                                        begin {N�o Ha Mais Itens para Impress�o}

                                                        SeqNf2 := SeqNf2 - 1;

                                                        r := r + 18;

                                                        qtitens := 0;

                                                     end;

                                                     end
                                                  else
                                                     begin

                                                     reg := StrToInt(copy(Linha,pos('#',Linha)+1,5));
                                                     Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));
                                                     Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));

                                                     if (Col > 0) or (Inc > 0) then begin

                                                        if (reg >= 57) and (reg <= 66) then begin

                                                           Lin := Lin + Inc;

                                                           if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[Reg],[Comp12]);
                                                           if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[Reg],[Comp20]);
                                                           if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[Reg],[Comp17]);

                                                           end
                                                        else
                                                           begin

                                                           if fmManRo2.CmpNfsCodEmp.Value = 1 then begin

                                                              if (Reg = 67) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then begin

                                                                 Lin := Lin + Inc;

                                                                 if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp12]);
                                                                 if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp20]);
                                                                 if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp17]);

                                                                 end
                                                              else
                                                                 begin

                                                                 if (Reg >= 68) and (Reg <= 81) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then begin

                                                                    Lin := Lin + Inc;

                                                                    if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,' ',[Comp12]);
                                                                    if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,' ',[Comp20]);
                                                                    if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,' ',[Comp17]);

                                                                    end
                                                                 else
                                                                    begin

                                                                    if (reg >= 187) and (reg <= 194) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then begin

                                                                       if reg = 187 then
                                                                          Linha := 'Continua '+Trim( IntToStr(qtdnot) )+'/'+Trim( IntToStr(fmManRo2.CmpNfsQtdNfs.Value) )
                                                                       else
                                                                          Linha := ' ';

                                                                       Lin := Lin + Inc;

                                                                       if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Linha,[Comp12]);
                                                                       if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Linha,[Comp20]);
                                                                       if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Linha,[Comp17]);

                                                                       end
                                                                    else
                                                                       begin

                                                                       if (reg >= 82) or (reg <= 128) or (reg >= 187) then begin

                                                                          Lin := Lin + Inc;

                                                                          if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[Reg],[Comp12]);
                                                                          if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[Reg],[Comp20]);
                                                                          if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[Reg],[Comp17]);

                                                                          end
                                                                       else
                                                                          Lin := Lin + Inc;
                                                                    end;
                                                                 end;
                                                              end;

                                                              end
                                                           else
                                                              begin

                                                              if (Reg = 67) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then begin

                                                                 Lin := Lin + Inc;

                                                                 if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp12]);
                                                                 if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp20]);
                                                                 if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp17]);

                                                                 end
                                                              else
                                                                 begin

                                                                 if (Reg >= 68) and (Reg <= 81) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then begin

                                                                    Lin := Lin + Inc;

                                                                    if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,' ',[Comp12]);
                                                                    if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,' ',[Comp20]);
                                                                    if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,' ',[Comp17]);

                                                                    end
                                                                 else
                                                                    begin

                                                                    if (reg >= 187) and (reg <= 194) and (qtdnfis < fmManRo2.CmpNfsQtdNfs.Value) then begin

                                                                       if reg = 187 then
                                                                          Linha := 'Continua '+Trim( IntToStr(qtdnot) )+'/'+Trim( IntToStr(fmManRo2.CmpNfsQtdNfs.Value) )
                                                                       else
                                                                          Linha := ' ';

                                                                       Lin := Lin + Inc;

                                                                       if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Linha,[Comp12]);
                                                                       if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Linha,[Comp20]);
                                                                       if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Linha,[Comp17]);

                                                                       end
                                                                    else
                                                                       begin

                                                                       if (reg >= 82) or (reg <= 128) or (reg >= 187) then begin

                                                                          Lin := Lin + Inc;

                                                                          if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[Reg],[Comp12]);
                                                                          if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[Reg],[Comp20]);
                                                                          if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[Reg],[Comp17]);

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

                                         if (qtitens = 0) or (qtitens = 2) then begin

                                            if qtdimpr > 0 then begin

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

                       rdprint1.fechar;  {Finaliza e inicia impress�o ou preview}

                       rdprint1.TamanhoQteLinhas := 66; {Voltar o valor original...}

                       SeqError := 0;

                       if fMsg('Nota Impressa Corretamente','O') then begin

                          fmManRo2.CmpNfs.Edit;

                          fmManRo2.CmpNfsFlgAtu.Value := 'F';
                             
                          fmManRo2.CmpNfsFlgImp.Value := 'Sim';

                          with fmManRo2.CmpNfs do begin

                               fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};

                               try

                                  ApplyUpdates; {Tenta aplicar as alteracoes};

                                  fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o};

                               except

                                  fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro};

                                  fmManRo2.Finalizar := 'N';

                                  if fmManRo2.CmpNfs.State <> dsBrowse then fmManRo2.CmpNfs.CancelUpdates;

                                  fmManRo2.CmpNfs.Close;
                                  fmManRo2.CmpNfs.Open;

                                  fmManRo2.CmpNfs.Edit;

                                  if EdNroNfs.Enabled then EdNroNfs.SetFocus;

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

                          if EdNroNfs.Enabled then EdNroNfs.SetFocus;

                          exit;

                       end;

                    finally

                       fmManRo2.CmpNfs.Edit;

                       if SeqError = 1 then begin

                          rdprint1.Abortar;

                          rdprint1.TamanhoQteLinhas := 66;

                       end;

                       if EdNroNfs.Enabled then EdNroNfs.SetFocus;

                    end;

                    close;

                    end
                 else
                    begin

                    if EdNroNfs.Enabled then EdNroNfs.SetFocus;

                 end;

                 end
              else
                 begin

                 if EdNroNfs.Enabled then
                    fmsgErro('Fornecedor Informado para a Emiss�o da Nota Fiscal n�o Encontrado.',EdNroNfs)
                 else
                    fmsgErro('Fornecedor Informado para a Emiss�o da Nota Fiscal n�o Encontrado.',Nil)

              end;
                    
              end
           else
              begin

              if EdNroNfs.Enabled then EdNroNfs.SetFocus;

           end;
           
           end
        else
           begin

           if EdNroNfs.Enabled then
              fmsgErro('Arquivo de Configura��o da Nota Fiscal n�o Encontrado. Consulte o Administrador do Sistema para Maiores Informa��es',EdNroNfs)
           else
              fmsgErro('Arquivo de Configura��o da Nota Fiscal n�o Encontrado. Consulte o Administrador do Sistema para Maiores Informa��es',Nil);

        end;
              
        end
     else
        begin

        if EdNroNfs.Enabled then EdNroNfs.SetFocus;

     end;

     end
  else
     begin

     if fmManRo2.CmpNfsNroNfs.Value = 0 then begin

        GerEmp.Close;
        GerEmp.Open;

        fmManRo2.CmpNfs.Edit;

        EdNroNfs.Value := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

        fmsgErro('N�mero da Nota Fiscal n�o Informado. Pr�ximo No. '+Trim(FloatToStr( EdNroNfs.Value )),EdNroNfs);

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
     EdNroNfs.Text := IntToStr( fmManRo2.CmpNfsNroNfs.Value )
  else
     EdNroNfs.Text := '0';

  EdNroNfs.SetFocus;

end;

procedure TfmManIro.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManIro.CmpNfsAfterScroll(DataSet: TDataSet);
begin
  inherited;
CmpNf2.Active:=false;
CmpNf2.SQL.text:='Select * From CmpNf2 '+
                 ' Where CmpNf2.CodEmp = '+QuotedStr(CmpNfsCODEMP.asstring)+
                 '     and CmpNf2.DteNfs = '+QuotedStr(formatdatetime('mm/dd/yyyy', CmpNfsDTENFS.Value))+
                 '     and CmpNf2.SeqNfs = '+QuotedStr(CmpNfsSEQNFS.asstring)+
                 ' Order by CmpNf2.NroNf2';
CmpNfs.Open;
end;

function Executa (Arquivo : String; Estado : Integer) : Integer;
var
Programa : array [0..512] of char;
CurDir : array [0..255] of char;
WorkDir : String;
StartupInfo : TStartupInfo;
ProcessInfo : TProcessInformation;
begin
StrPCopy (Programa, Arquivo);
GetDir (0, WorkDir);
StrPCopy (CurDir, WorkDir);
FillChar (StartupInfo, Sizeof (StartupInfo), #0);
StartupInfo.cb := sizeof (StartupInfo);
StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
StartupInfo.wShowWindow := Estado;
if not CreateProcess (nil, Programa, nil, nil, false, CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil, nil, StartupInfo, ProcessInfo) then
Result := -1
else
begin
WaitForSingleObject (ProcessInfo.hProcess, Infinite);
//GetExitCodeProcess (ProcessInfo.hProcess, Result);
end;
end;   //Estado � o tipo de janela que aparecer�, que pode ser:

//SW_SHOWNORMA//L - Janela em modo normal

//SW_MAXIMIZE// - Janela maximizada

//SW_MINIMIZE// - Janela minimizada

//SW_HIDE //- Janela Escondida


procedure TfmManIro.BitBtn1Click(Sender: TObject);
var
        IniFile, chave, CaminhoLeitura, CaminhoRetorno, CaminhoXml, VNumNota,TLinha:string;
        TArquivo:TextFile;
        i:integer;
        ini :Tinifile;
  SeqEnc      : integer;
  LinArq      : string;
  NroReg      : integer;
  SeqLin      : integer;
  ArqRe1      : string;
  ArqRe2      : string;
  ArqRs1      : string;
  ArqRs2      : string;
  FlgRej      : string;
  FlgArq      : string;
  MSGNFE      : string;
  MSGANT      : string;
  RECNFE      : string;
  PRONFE      : string;
  DTENFE      : string;
  HRENFE      : string;
  DTEPNF      : string;
  HREPNF      : string;
  ArqEnv      : TextFile;
  ArqRet      : TStringList;
  SeqRet      : Boolean;
  Handle      : LongInt;
  ApeEmp      : string;
  NomEmp      : string;
  EndEmp      : string;
  NumEmp      : string;
  RefEmp      : string;
  BaiEmp      : string;
  CidEmp      : string;
  UfeEmp      : string;
  CepEmp      : string;
  FonEmp      : string;
  CgcEmp      : string;
  CpfEmp      : string;
  InsEmp      : string;
  CgcTra      : string;
  CpfTra      : string;
  InsTra      : string;
  ApeTra      : string;
  NomTra      : string;
  EndTra      : string;
  NumTra      : string;
  RefTra      : string;
  BaiTra      : string;
  CidTra      : string;
  UfeTra      : string;
  DesNat      : string;
  EmaCli      : string;
  CgcCli      : string;
  CpfCli      : string;
  InsCli      : string;
  NomCli      : string;
  EndCli      : string;
  NumCli      : string;
  RefCli      : string;
  BaiCli      : string;
  CidCli      : string;
  UfeCli      : string;
  CepCli      : string;
  FonCli      : string;
  CodPro      : string;
  ClsIpi      : string;
  DesPro      : string;
  CodCfo      : string;
  CodUnd      : string;
  CodSt1      : string;
  CodSt2      : string;
  QtdPro      : string;
  VluPro      : string;
  TotPro      : string;
  EspFat      : string;
  MarFat      : string;
  PesLiq      : string;
  PesBrt      : string;
  TipNCM      : string;
  NroSuf      : string;
  BasIcm      : string;
  RedIcm      : string;
  PerIcm      : string;
  TotIcm      : string;
  TrbPis      : string;
  PerPis      : string;
  BasPis      : string;
  TotPis      : string;
  TrbCof      : string;
  PerCof      : string;
  BasCof      : string;
  TotCof      : string;
  NroDoc      : string;
  TrbIpi      : string;
  BasIpi      : string;
  PerIpi      : string;
  TotIpi      : string;
  TotDsr      : string;
  BasSub      : string;
  IcmSub      : string;
  MrgSub      : string;
  NfePis      : string;
  NfeCof      : string;
  TotSub      : string;
  TotFrt      : string;
  TotSeg      : string;
  TotDes      : string;
  TipFrt      : string;
  ObsFat      : string;
  TipCnd      : string;
  NomArq      : string;
  sNumeroNF   : string;
  NroPais_Emp : string;
  NomPais_Emp : string;
  NroPais_Cli : string;
  NomPais_Cli : string;
  Finalizar   : string;
  Id_EmpCie   : string;
  Id_CliNfe   : string;
  Id_EstSip   : string;
  Id_FinPai   : integer;
  Id_FinUfe   : integer;
  Id_FinCie   : integer;
  Id_CliUfe   : integer;
  Id_CliCie   : integer;
  Nome_ArqIni : string;
  linpro      : string;
  id_CMPNFS:integer;

  cinserir, cdir, vchave :string;
begin
  inherited;
  //Etapa 1 - Acertar dados
CmpNfs.Active:=false;
cmpnfs.sql.text:='Select CmpNfs.*, '+
                 ' FinFor.NomFor, '+
                 '            FinFor.EmaFor '+
                 ' From cmpnfs LEFT JOIN FinFOR ON (CodFOR = FinFOr.CodFor) '+
                 ' Where id_CMPNFS = '+QuotedStr(fmManLro.CmpNfsID_CMPNFS.AsString)+
                 ' Order by NroNfs ';
cmpnfs.open;

cmpnfs.Edit;
CmpNfsNRONFS.Value:=strtoint(EdNroNfs.text);
cmpnfs.Post;


  Finalizar:='N';
  if CmpNfsID_CMPNFS.Value > 0 then
    begin
    Id_CMPNFS := CMPNFSID_CMPNFS.Value;
    if CMPNFSID_CMPNFS.Value > 0 then
      begin
      if fMsg('Confirma envio para emiss�o da NFe ?','O') then
        begin
        Nome_ArqIni := cDir+'config.ini';
        if FileExists(Nome_ArqIni) then
          try
            Finalizar := 'N';
            fmManNF1R_NFE := TfmManNF1R_NFE.Create(Self);
            fmManNF1R_NFE.ShowModal;
            Finalizar := fmManNF1R_NFE.Finalizar;
          finally
            FreeAndNil(fmManNF1R_NFE);
          end
        else
          fmsgErro('Arquivos de configura��o para envio da nota fiscal eletronica n�o localizado .INI. Por favor verificar.',Nil);
        end;
      end;
    end;
  if Finalizar = 'S' then
    begin
    with quSQL,SQL do
      begin
      Close;
      Text := ' Select GerEmp.ApeEmp,'+
              '        GerEmp.NomEmp,'+
              '        GerEmp.CgcEmp,'+
              '        GerEmp.InsEmp,'+
              '        GerEmp.CepEmp,'+
              '        GerEmp.TenEmp,'+
              '        GerEmp.EndEmp,'+
              '        GerEmp.NumEmp,'+
              '        GerEmp.RefEmp,'+
              '        GerEmp.BaiEmp,'+
              '        GerEmp.SigUfe,'+
              '        GerEmp.PrtEmp,'+
              '        GerEmp.FonEmp,'+
              '        GerEmp.Id_FinUfe,'+
              '        GerEmp.Id_FinCie,'+
              '        GerEmp.Id_FinPai '+
              ' From GerEmp'+
              ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(CmpNfsCODEMP.Value));
      Open;
      ApeEmp := fLimpaAcentos(FieldbyName('ApeEmp').AsString);
      NomEmp := fLimpaAcentos(FieldbyName('NomEmp').AsString);
      if FieldbyName('TenEmp').AsString <> '' then
        EndEmp := Trim(FieldbyName('TenEmp').AsString)+ ' ' +FieldbyName('EndEmp').AsString
      else
        EndEmp := FieldbyName('EndEmp').AsString;
      EndEmp := fLimpaAcentos(EndEmp);
      NumEmp := fLimpaAcentos(FieldbyName('NumEmp').AsString);
      RefEmp := fLimpaAcentos(FieldbyName('RefEmp').AsString);
      BaiEmp := fLimpaAcentos(FieldbyName('BaiEmp').AsString);
      UfeEmp := fLimpaAcentos(FieldbyName('SigUfe').AsString);
      CepEmp := FieldbyName('CepEmp').AsString;
      if Length(Trim(FieldbyName('CgcEmp').AsString)) = 11 then
        CpfEmp := FieldbyName('CgcEmp').AsString
      else
        CgcEmp := FieldbyName('CgcEmp').AsString;
      Id_FinUfe := FieldbyName('Id_FinUfe').AsInteger;
      Id_FinCie := FieldbyName('Id_FinCie').AsInteger;
      if Trim(fLimpaStr(FieldbyName('PrtEmp').AsString)) <> '' then
        FonEmp := Trim(fLimpaStr(FieldbyName('PrtEmp').AsString))+ Trim(fLimpaStr(FieldbyName('FonEmp').AsString))
      else
        FonEmp := Trim(fLimpaStr(FieldbyName('FonEmp').AsString));
      InsEmp := fLimpaStr(FieldbyName('InsEmp').AsString);
      NomEmp := copy(Trim(NomEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomEmp),1,60)));
      ApeEmp := copy(Trim(ApeEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(ApeEmp),1,60)));
      EndEmp := copy(Trim(EndEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndEmp),1,60)));
      NumEmp := copy(Trim(NumEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumEmp),1,60)));
      RefEmp := copy(Trim(RefEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefEmp),1,60)));
      BaiEmp := copy(Trim(BaiEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiEmp),1,60)));
      UfeEmp := copy(Trim(UfeEmp),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeEmp),1,02)));
      InsEmp := copy(Trim(InsEmp),1,14) + fReplicate(' ',14 - Length(copy(Trim(InsEmp),1,14)));
      CgcEmp := fReplicate('0',14 - Length(copy(Trim(CgcEmp),1,14))) + copy(Trim(CgcEmp),1,14);
      CpfEmp := fReplicate('0',14 - Length(copy(Trim(CpfEmp),1,14))) + copy(Trim(CpfEmp),1,14);
      CepEmp := fReplicate('0',08 - Length(copy(Trim(CepEmp),1,08))) + copy(Trim(CepEmp),1,08);
      FonEmp := fReplicate('0',10 - Length(copy(Trim(FonEmp),1,10))) + copy(Trim(FonEmp),1,10);
      Id_FinPai := FieldbyName('Id_FinPai').AsInteger;
      end;
    end;
  if Finalizar = 'S' then
    if not Id_FinUfe > 0 then
      begin
      Finalizar:='N';
      fmManPri.Enabled := True;
      fmManIro.Enabled := True;
      fmsgErro('C�digo da UF para emiss�o de NFe n�o informado no cadastro da empresa.',Nil);
      end;
  if Finalizar = 'S' then
    if not Id_FinCie > 0 then
      begin
      Finalizar:='N';
      fmManPri.Enabled := True;
      fmManIro.Enabled := True;
      fmsgErro('C�digo de municipio para emiss�o de NFe n�o informado no cadastro da empresa.',Nil);
      end;
  if Finalizar = 'S' then
    if not Id_FinPai > 0 then
      begin
      Finalizar:='N';
      fmManPri.Enabled := True;
      fmManIro.Enabled := True;
      fmsgErro('C�digo do pa�s para emiss�o de NFe n�o informado no cadastro da empresa.',Nil);
      end;
  if Finalizar = 'S' then
    begin
    with quSQL,SQL do
      begin
      Close;
      Text := ' Select FinPai.NomPai From FinPai Where FinPai.Id_FinPai = '+ QuotedStr(IntToStr(Id_FinPai));
      Open;
      NomPais_Emp := fLimpaAcentos(FieldbyName('NomPai').AsString);
      NomPais_Emp := copy(Trim(NomPais_Emp),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomPais_Emp),1,60)));
      NroPais_Emp := fNumZeros(IntToStr(Id_FinPai),4);
      end;
    NfePis := fLimpaStr(Trim(CMPNFSNfePis.Value));
    NfeCof := fLimpaStr(Trim(CMPNFSNfeCof.Value));
    if CMPNFSId_EstSip.Value > 0 then
      begin
      with quSQL,SQL do
        begin
        Close;
        Text := ' Select EstSip.SigNfe'+
                ' From EstSip'+
                ' Where EstSip.Id_EstSip = '+ QuotedStr(IntToStr(CMPNFSId_EstSip.Value));
        Open;
        Id_EstSip := FieldbyName('SigNfe').AsString;
        end;
      end
    else
      begin
      if Trim(CMPNFSTipPfa.Value) = 'Saida' then
        begin
        if CMPNFSTotIpi.Value > 0 then
          Id_EstSip := '50'
        else
          Id_EstSip := '99';
        end
      else
        Id_EstSip := '49';
      end;
    with quSQL,SQL do
      begin
      Close;
      Text := ' Select Nomfor,'+
              '        Cgcfor,'+
              '        Insfor,'+
              '        ""as NroSuf,'+
              '        Ptrfor,'+
              '        Fonfor,'+
              '        EmAFOR,'+
              '        Id_FinPai'+
              ' From FinFor'+
              ' Where CodFor = '+ QuotedStr(IntToStr(CmpNfsCODFOR.Value));
      Open;
      NomCli := fLimpaAcentos(FieldbyName('NomFor').AsString);
      NroSuf := fLimpaAcentos(fLimpaStr(' '));
      EmaCli := Trim(FieldbyName('EmaFor').AsString);
      EmaCli := copy(EmaCli,1,60) + fReplicate(' ',60 - Length(copy(EmaCli,1,60)));
      if Length(Trim(FieldbyName('CgcFor').AsString)) = 11 then
        CpfCli := FieldbyName('CgcFor').AsString
      else
        CgcCli := FieldbyName('CgcFor').AsString;
      InsCli := fLimpaStr(FieldbyName('InsFor').AsString);
      CgcCli := copy(Trim(CgcCli),1,14) + fReplicate(' ',14 - Length(copy(Trim(CgcCli),1,14)));
      CpfCli := copy(Trim(CpfCli),1,14) + fReplicate(' ',14 - Length(copy(Trim(CpfCli),1,14)));
      InsCli := copy(Trim(InsCli),1,14) + fReplicate(' ',14 - Length(copy(Trim(InsCli),1,14)));
      if Trim(fLimpaStr(FieldbyName('Ptrfor').AsString)) <> '' then
        FonCli := Trim(fLimpaStr(FieldbyName('Ptrfor').AsString))+ Trim(fLimpaStr(FieldbyName('Fonfor').AsString))
      else
        FonCli := Trim(fLimpaStr(FieldbyName('FonFor').AsString));
      FonCli := fRemoverEspaco(FonCli);
      NomCli := copy(Trim(NomCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomCli),1,60)));
      NroSuf := copy(Trim(NroSuf),1,09) + fReplicate(' ',09 - Length(copy(Trim(NroSuf),1,09)));
      FonCli := fReplicate('0',10 - Length(copy(Trim(FonCli),1,10))) + copy(Trim(FonCli),1,10);
      Id_FinPai := FieldbyName('Id_FinPai').AsInteger;
      if not Id_FinPai > 0 then
        begin
        Finalizar:='N';
        fmManPri.Enabled := True;
        fmManIro.Enabled := True;
        fmsgErro('C�digo do pa�s para emiss�o de NFe n�o informado no cadastro do Fornecedor.',Nil);
        end
      else
        NroPais_Cli := fNumZeros(IntToStr(Id_FinPai),4);
      end;
    Id_CliUfe := CMPNFSId_FinUff.Value;
    Id_CliCie := CMPNFSId_FinCif.Value;
    with quSQL,SQL do
      begin
      Close;
      Text := ' Select FinPai.NomPai From FinPai Where FinPai.Id_FinPai = '+ QuotedStr(IntToStr(Id_FinPai));
      Open;
      NomPais_Cli := fLimpaAcentos(FieldbyName('NomPai').AsString);
      NomPais_Cli := copy(Trim(NomPais_Cli),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomPais_Cli),1,60)));
      end;
    with quSQL,SQL do
      begin
      Close;
      Text := ' Select FinCie.NomCie,'+
              '        FinCie.SigNfe '+
              ' From FinCie'+
              ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_CliCie));
      Open;
      Id_CliNfe := IntToStr(Id_CliUfe)+FieldbyName('SigNfe').AsString;
      CidCli := fLimpaAcentos(FieldbyName('NomCie').AsString);
      CidCli := copy(Trim(CidCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(CidCli),1,60)));
      end;
    end;
  if Finalizar = 'S' then
    begin
    if Trim(CMPNFSSeqNFe.Value) = '' then
      begin
      CMPNFS.Edit;
      CMPNFSFlgAtu.Value := 'F';
      CMPNFSSeqNFe.Value := fMontaChaveAcessoNFe(Id_FinUfe,CmpNfsDTENFS.Value,CgcEmp,55,1,CMPNFSNroNfs.Value,1);
      with CMPNFS do
        try
          fmManGDB.dbMain.StartTransaction; //Inicia a Transa��o
          ApplyUpdates; //Tenta aplicar as alteracoes
          fmManGDB.dbMain.Commit; //confirma todas as alteracoes fechando a transa��o
        except
          begin
          fmManGDB.dbMain.Rollback; //desfaz as alteracoes se acontecer um erro
          if CMPNFS.State <> dsBrowse then CMPNFS.CancelUpdates;
          end;
        end;
      CMPNFS.Close;
      CMPNFS.Open;
      end;
    end;

  // Etapa 2 - Verificando se o servi�o est� ativo
  flgrej:='N';
  //Etapa 3 - Preparar os dados para o envio para o robo
  if FlgRej = 'N' then
    begin
    Application.ProcessMessages;
    fmManPri.Enabled := False;
    fmManIro.Enabled := False;

    if not directoryExists(cDir+'REQ') then CreateDir(cDir+'REQ');
    if not directoryExists(cDir+'RESP') then CreateDir(cDir+'RESP');
    if not directoryExists(cDir+'BACKUP') then CreateDir(cDir+'BACKUP');
    if not directoryExists(cDir+'BACKUP\NFE') then CreateDir(cDir+'BACKUP\NFE');
    ArqRe1 := cDir+'REQ\INTPOS.TMP';  //trabalho interno
    ArqRe2 := cDir+'REQ\INTPOS.001';  //arquivo que o robo enxerga
    ArqRs1 := cDir+'RESP\INTPOS.STS'; //trabalho interno
    ArqRs2 := cDir+'RESP\INTPOS.001'; //arquivo que o robo envia
    DeleteFile(ArqRe1);
    DeleteFile(ArqRe2);
    DeleteFile(ArqRs1);
    DeleteFile(ArqRs2);
    AssignFile(ArqEnv,ArqRe1);
    Rewrite(ArqEnv);
    chave:=CMPNFSSeqNFe.Value;

        Writeln(ArqEnv,'EM0201' +
                     UfeEmp +
         CMPNFSSeqNFe.Value +
         fNumZeros(IntToStr(CMPNFSLotNfe.Value),9));

    with quSQL,SQL do
      begin
      Close;
      Text := ' Select FinCie.NomCie,'+
              '        FinCie.SigNfe '+
              ' From FinCie'+
              ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie));
      Open;
      Id_EmpCie := IntToStr(Id_FinUfe)+FieldbyName('SigNfe').AsString;
      CidEmp := fLimpaAcentos(FieldbyName('NomCie').AsString);
      CidEmp := copy(Trim(CidEmp),1,60) + fReplicate(' ',60 - Length(copy(Trim(CidEmp),1,60)));
      end;

    DesNat := fLimpaAcentos(CMPNFSDesNat.Value);
    DesNat := copy(Trim(DesNat),1,60) + fReplicate(' ',60 - Length(copy(Trim(DesNat),1,60)));
    TipCnd := '0';
    if CMPNFSIntFin.Value = 'Nao' then
      TipCnd := '2'
    else
        TipCnd := '1';


    Writeln(ArqEnv,'EM0202'+                                                        // Uso interno do sistema
      IntToStr(Id_FinUfe)+                                             // C�digo da UF do emitente do documento fiscal
      copy(CMPNFSSeqNFE.Value,35,09)+                                  // C�digo n�merico que comp�e a chave de acesso
      DesNat+                                                          // Descri��o da natureza de opera��o
      TipCnd+                                                          // Indicador da forma de pagamento 0-Pagamento � vista 1-Pagamento � prazo 2-Outros
      '55'+                                                            // C�digo do Modelo do documento fiscal
      '1'+                                                             // S�rie do documento fiscal
      fNumZeros(IntToStr(CMPNFSNroNfs.Value),9)+                       // N�mero do documento fiscal
      copy(FormatDateTime('dd/mm/yyyy',CmpNfsDTENFS.Value),7,4) +'-'+  // Data de emiss�o do documento fiscal
      copy(FormatDateTime('dd/mm/yyyy',CmpNfsDTENFS.Value),4,2) +'-'+
      copy(FormatDateTime('dd/mm/yyyy',CmpNfsDTENFS.Value),1,2) +
      '0000-00-00'+                                                    // Data de saida ou entrada da Mercadoria/Produto
      '1'+                                                             // Tipo do documento fiscal
      Id_EmpCie+                                                       // C�digo do Municipio de Ocorr�ncia do Fato Gerador
      '1'+                                                             // Formato de Impressao do DANFE
      '1'+                                                             // Forma de emiss�o da NF-e
      copy(CMPNFSSeqNFE.Value,44,1)+                                   // Digito verificador da Chave de Acesso da NF-e
      '2'+                                                             // Identifica��o do Ambiente
      '1'+                                                             // Finalidade de emiss�o da NF-e
      '0'+                                                             // Processo de emiss�o da NF-e
      'EMERION FATURA      ');                                         // Vers�o do processo de emiss�o da NF-e

    VNumNota:=CMPNFSNroNfs.AsString;

    Writeln(ArqEnv,'EM0203'+                                                        // Uso interno do sistema
      CgcEmp+                                                          // CNPJ do emitente
      CpfEmp+                                                          // CPF do emitente
      NomEmp+                                                          // Raz�o social ou Nome do emitente
      ApeEmp+                                                          // Nome fantasia
      EndEmp+                                                          // Logradouro
      NumEmp+                                                          // N�mero
      RefEmp+                                                          // Complemento
      BaiEmp+                                                          // Bairro
      Id_EmpCie+                                                       // C�digo do municipio
      CidEmp+                                                          // Nome do municipio
      UfeEmp+                                                          // Sigla da UF
      CepEmp+                                                          // C�digo do CEP
      NroPais_Emp+                                                     // C�digo do Pa�s
      NomPais_Emp+                                                     // Nome do Pa�s
      FonEmp+                                                          // Telefone
      InsEmp+                                                          // IE
      '              '+                                                // IE do Substituto tribut�rio
      '               '+                                               // IM inscri��o municipal
      '       ');                                                      // CNAE Fiscal

    if CmpNfsTEFFOR.Value <> '' then
      EndCli := Trim(CmpNfsTEFFOR.Value)+ ' ' +CmpNfsENFFOR.Value
    else
      EndCli := CmpNfsENFFOR.Value;
    EndCli := fLimpaAcentos(EndCli);
    NumCli := fLimpaAcentos(CmpNfsNRFFOR.Value);
    RefCli := fLimpaAcentos(CmpNfsRFFFOR.Value);
    BaiCli := fLimpaAcentos(CmpNfsBAFFOR.Value);
    UfeCli := fLimpaAcentos(CmpNfsUFEFOR.Value);
    CepCli := CMPNFSCeffor.Value;
    EndCli := copy(Trim(EndCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndCli),1,60)));
    NumCli := copy(Trim(NumCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumCli),1,60)));
    RefCli := copy(Trim(RefCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefCli),1,60)));
    BaiCli := copy(Trim(BaiCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiCli),1,60)));
    UfeCli := copy(Trim(UfeCli),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeCli),1,02)));
    CepCli := fReplicate('0',08 - Length(copy(Trim(CepCli),1,08))) + copy(Trim(CepCli),1,08);
    Writeln(ArqEnv,'EM0204'+                                                       // Uso interno do sistema
                       CgcCli+                                                         // CNPJ do destinatario
                       CpfCli+                                                         // CPF do destinatario
                       NomCli+                                                         // Raz�o social ou nome do destinatario
                       EndCli+                                                         // Logradouro
                       NumCli+                                                         // N�mero
                       RefCli+                                                         // Complemento
                       BaiCli+                                                         // Bairro
                       Id_CliNfe+                                                      // C�digo do Municipio
                       CidCli+                                                         // Nome do Municipio
                       UfeCli+                                                         // Sigla da UF
                       CepCli+                                                         // C�digo do Cep
                       NroPais_Cli+                                                    // C�digo do Pa�s
                       NomPais_Cli+                                                    // Nome do Pa�s
                       FonCli+                                                         // Telefone
                       InsCli+                                                         // IE
                       NroSuf);                                                        // Inscri��o SUFRAMA

    if (Trim(CmpNfsCEPFOR.Value) <> Trim(CmpNfsCEFFOR.Value)) or (Trim(CmpNfsTENFOR.Value) <> Trim(CMPNFSTeffor.Value)) or (Trim(CMPNFSEndfor.Value) <> Trim(CMPNFSEnffor.Value)) or (Trim(CMPNFSRefFor.Value) <> Trim(CMPNFSRffFor.Value)) or (Trim(CMPNFSNumFor.Value) <> Trim(CMPNFSNrfFor.Value)) or (Trim(CMPNFSBaiFor.Value) <> Trim(CMPNFSBafFor.Value)) or (Trim(CMPNFSCidFor.Value) <> Trim(CMPNFSCifFor.Value)) or (Trim(CMPNFSUfeFor.Value) <> Trim(CMPNFSUffFor.Value)) then
      begin
      if Trim(CmpNfsCGEFOR.Value) <> '' then
        CgcCli := copy(Trim(CmpNfsCGEFOR.Value),1,14) + fReplicate(' ',14 - Length(copy(Trim(CmpNfsCGEFOR.Value),1,14)));

      if CmpNfsTENFOR.Value <> '' then
        EndCli := Trim(CMPNFSTenfor.Value)+ ' ' +CMPNFSEndfor.Value
      else
        EndCli := CMPNFSEndFor.Value;

      EndCli := fLimpaAcentos(EndCli);
      NumCli := fLimpaAcentos(CMPNFSNumFor.Value);
      RefCli := fLimpaAcentos(CMPNFSRefFor.Value);
      BaiCli := fLimpaAcentos(CMPNFSBaiFor.Value);
      UfeCli := fLimpaAcentos(CMPNFSUfeFor.Value);
      EndCli := copy(Trim(EndCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndCli),1,60)));
      NumCli := copy(Trim(NumCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumCli),1,60)));
      RefCli := copy(Trim(RefCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefCli),1,60)));
      BaiCli := copy(Trim(BaiCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiCli),1,60)));
      UfeCli := copy(Trim(UfeCli),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeCli),1,02)));
      CepCli := fReplicate('0',08 - Length(copy(Trim(CepCli),1,08))) + copy(Trim(CepCli),1,08);
      Id_FinUfe := CMPNFSId_FinUfe.Value;
      Id_FinCie := CMPNFSId_FinCie.Value;
      with quSQL,SQL do
        begin
        Close;
        Text := ' Select FinCie.NomCie,'+
                '        FinCie.SigNfe '+
                ' From FinCie'+
                ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie));
        Open;
        Id_CliNfe := IntToStr(Id_FinUfe)+FieldbyName('SigNfe').AsString;
        CidCli := fLimpaAcentos(FieldbyName('NomCie').AsString);
        CidCli := copy(Trim(CidCli),1,60) + fReplicate(' ',60 - Length(copy(Trim(CidCli),1,60)));
        end;
      Writeln(ArqEnv,'EM0205'+   // Uso interno do sistema
                       CgcCli+     // CNPJ do destinatario
                       EndCli+     // Logradouro
                       NumCli+     // N�mero
                       RefCli+     // Complemento
                       BaiCli+     // Bairro
                    Id_CliNfe+  // C�digo do Municipio
                       CidCli+     // Nome do Municipio
                        UfeCli);    // Sigla da UF
      end;

    TrbPis := Trim(CMPNFSTrbPis.Value);
    TrbCof := Trim(CMPNFSTrbCof.Value);
    TrbPis := copy(Trim(TrbPis),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbPis),1,03)));
    TrbCof := copy(Trim(TrbCof),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbCof),1,03)));
    PerPis := fSubstDecimal(FormatFloat('##0.00',CMPNFSPerPis.Value),05);
    PerCof := fSubstDecimal(FormatFloat('##0.00',CMPNFSPerCof.Value),05);
    with quSQL,SQL do
      begin
      Close;
      Text := 'Select CmpNF2.*, '+
              '        Cast('+quotedstr('0')+' as Numeric(15,2))as TotFrt,'+
              '        Cast('+quotedstr('0')+' as Numeric(15,2))as TotSEG,'+
              '        Cast('+quotedstr('0')+' as Numeric(15,2))as TotDES '+
              '  From CmpNf2 '+
              '    Where CmpNf2.CodEmp = '+QuotedStr(CmpNfsCODEMP.asstring)+
              '     and CmpNf2.DteNfs = '+QuotedStr(formatdatetime('mm/dd/yyyy', CmpNfsDTENFS.value))+
              '     and CmpNf2.SeqNfs = '+QuotedStr(CmpNfsSEQNFS.asstring)+
              'Order by CmpNf2.NroNf2';
      Open;
      First;
      end;

    while not quSQL.EOF do
      begin
      CodPro := quSQL.FieldbyName('CodClp').AsString+
                quSQL.FieldbyName('CodGru').AsString+
                quSQL.FieldbyName('CodSub').AsString+
                quSQL.FieldbyName('CodPro').AsString;
      DesPro := AllTrim(fLimpaAcentos(quSQL.FieldbyName('DesNF2').AsString+ ' ' +quSQL.FieldbyName('ObsNF2').AsString));
      DesPro := copy(DesPro,1,120);
      ClsIpi := Trim(fLimpaStr(quSQL.FieldbyName('ClsIpi').AsString));
      CodCfo := Trim(fLimpaStr(quSQL.FieldbyName('CodCfo').AsString));
      if Trim(ClsIpi) = '00000000' then ClsIpi := '';
      CodUnd := Trim(quSQL.FieldbyName('CodUnd').AsString);
      CodSt1 := Trim(quSQL.FieldbyName('CodSt1').AsString);
      CodSt2 := Trim(quSQL.FieldbyName('CodSt2').AsString);
      TrbIpi := Trim(quSQL.FieldbyName('TrbIpi').AsString);
      QtdPro := fSubstDecimal(FormatFloat('########0.0000',quSQL.FieldbyName('QtpNF2').AsFloat),15);
      VluPro := fSubstDecimal(FormatFloat('########0.0000',quSQL.FieldbyName('VluNF2').AsFloat),15);
      TotPro := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotNF2').AsFloat),15);
      BasIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasIcm').AsFloat),15);
      RedIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('RedIcm').AsFloat),15);
      PerIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IcmNF2').AsFloat),05);
      TotIcm := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIcm').AsFloat),15);
      BasIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasIpi').AsFloat),15);
      PerIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IpiNF2').AsFloat),05);
      TotIpi := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotIpi').AsFloat),15);
      MrgSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('MrgSub').AsFloat),05);
      IcmSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('IcmSub').AsFloat),05);
      BasSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('BasSub').AsFloat),15);
      TotSub := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotSub').AsFloat),15);
      TotDsr := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotDES').AsFloat),15);
      TotFrt := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotFrt').AsFloat),15);
      TotSeg := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotSeg').AsFloat),15);
      TotDes := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotDes').AsFloat),15);
      BasPis := fSubstDecimal(FormatFloat('########0.00',(quSQL.FieldbyName('TotNF2').AsFloat - quSQL.FieldbyName('TotDES').AsFloat)),15);
      BasCof := fSubstDecimal(FormatFloat('########0.00',(quSQL.FieldbyName('TotNF2').AsFloat - quSQL.FieldbyName('TotDES').AsFloat)),15);
      TotPis := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotPis').AsFloat),15);
      TotCof := fSubstDecimal(FormatFloat('########0.00',quSQL.FieldbyName('TotCof').AsFloat),15);
      TipNCM := '';
      CodPro := copy(Trim(CodPro),1,60) + fReplicate(' ',60 - Length(copy(Trim(CodPro),1,60)));
      CodCfo := copy(Trim(CodCfo),1,04) + fReplicate(' ',04 - Length(copy(Trim(CodCfo),1,04)));
      CodUnd := copy(Trim(CodUnd),1,06) + fReplicate(' ',06 - Length(copy(Trim(CodUnd),1,06)));
      TrbIpi := copy(Trim(TrbIpi),1,03) + fReplicate(' ',03 - Length(copy(Trim(TrbIpi),1,03)));
      CodSt1 := fReplicate('0',01 - Length(copy(Trim(CodSt1),1,01))) + copy(Trim(CodSt1),1,01);
      CodSt2 := fReplicate('0',02 - Length(copy(Trim(CodSt2),1,02))) + copy(Trim(CodSt2),1,02);
      ClsIpi := fReplicate('0',08 - Length(copy(Trim(ClsIpi),1,08))) + copy(Trim(ClsIpi),1,08);
      DesPro := copy(Trim(DesPro),1,120) + fReplicate(' ',120 - Length(copy(Trim(DesPro),1,120)));


      Writeln(ArqEnv,'EM0206'+                                                     // Uso interno do sistema
                         '00'+                                                         // Tipo de opera��o
                         fNumZeros(IntToStr(quSQL.FieldbyName('NroNF2').AsInteger),3)+ // Nro. do item
                         CodPro+                                                       // C�digo do Produto ou servi�o
                         '              '+                                             // GTIN
                         DesPro+                                                       // Descri��o do produto ou servi�o
                         ClsIpi+                                                       // C�digo NCM
                         '   '+                                                        // EX_TIPI
                         '  '+                                                         // G�nero do produto ou servi�o
                         CodCfo+                                                       // C�digo fiscal da opera��o
                         CodUnd+                                                       // Unidade comercial
                         QtdPro+                                                       // Quantidade comercial
                         VluPro+                                                       // Valor unit�rio de comercializa��o
                         TotPro+                                                       // Valor Total Bruto dos Produtos ou Servi�os
                         '              '+                                             // GTIN
                         CodUnd+                                                       // Unidade Tributavel
                         QtdPro+                                                       // Quantidade Tributavel
                         VluPro+                                                       // Valor Unit�rio de tributa��o
                         TotFrt+                                                       // Valor Total do Frete
                         TotSeg+                                                       // Valor Total do Seguro
                         TotDsr);                                                      // Valor do Desconto

      Writeln(ArqEnv,'EM0207'+                                                     // Uso interno do sistema
                     '01'+                                                         // Tipo de opera��o
                     fNumZeros(IntToStr(quSQL.FieldbyName('NroNF2').AsInteger),3)+ // Nro. do item
                     CodSt1+                                                       // Origem da mercadoria
                     CodSt2+                                                       // Grupo de CST
                     '3'+                                                          // Modalidade de determina��o da BC do ICMS ST
                     RedIcm+                                                       // Percential de redu��o de BC do ICMS
                     BasIcm+                                                       // Valor da BC do ICMS
                     PerIcm+                                                       // Aliquota do imposto
                     TotIcm+                                                       // Valor do ICMS
                     BasSub+                                                       // Valor da BC do ICMS ST
                     IcmSub+                                                       // Aliquota do imposto do ICMS ST
                     MrgSub+                                                       // Percentual da Margem de valor Adicionado do ICMS ST
                     TotSub);                                                      // Valor do ICMS ST

      Writeln(ArqEnv,'EM0208'+                                                     // Uso interno do sistema
                     '01'+                                                         // Tipo de opera��o
                     fNumZeros(IntToStr(quSQL.FieldbyName('NroNF2').AsInteger),3)+ // Nro. do item
                     TrbIpi+                                                       // IPI tributado
                     BasIpi+                                                       // Valor da BC do IPI
                     PerIpi+                                                       // Aliquota do imposto
                     TotIpi+                                                       // Valor do IPI
                     Id_EstSip);                                                   // Situa��o tribut�ria do IPI

      Writeln(ArqEnv,'EM0209'+                                                     // Uso interno do sistema
                     '01'+                                                         // Tipo de opera��o
                     fNumZeros(IntToStr(quSQL.FieldbyName('NroNF2').AsInteger),3)+ // Nro. do item
                     NfePis+                                                       // Situa��o Tributaria do PIS
                     TrbPis+                                                       // PIS tributado
                     BasPis+                                                       // BC PIS
                     PerPis+                                                       // Percentual do PIS
                     TotPis+                                                       // Valor do PIS
                     NfeCof+                                                       // Situa��o Tributaria do COFINS
                     TrbCof+                                                       // COFINS tributado
                     BasCof+                                                       // BC COFINS
                     PerCof+                                                       // Percentual do COFINS
                     TotCof);                                                      // Valor do COFINS
      Application.ProcessMessages;
      quSQL.Next;
      end;

    Writeln(ArqEnv,'EM0210'+                                                          // Uso interno do sistema
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSBasIcm.Value),15)+  // Base de Calculo do ICMS
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSTotIcm.Value),15)+  // Valor Total do ICMS
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSBasSub.Value),15)+  // Base de Calculo do ICMS ST
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSTotSub.Value),15)+  // Valor Total do ICMS ST
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSTotGer.Value),15)+  // Valor Total dos produtos e servi�os
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSTotFrt.Value),15)+  // Valor Total do Frete
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSTotSeg.Value),15)+  // Valor Total do Seguro
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSTotDes.Value),15)+  // Valor Total do Desconto
                   '           0.00'+                                                 // Valor Total do II
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSTotIpi.Value),15)+  // Valor Total do IPI
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSTotPis.Value),15)+  // Valor Total do PIS
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSTotCof.Value),15)+  // Valor Total do COFINS
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSTotDes.Value),15)+  // Outras Despesas Acess�rias
                   fSubstDecimal(FormatFloat('########0.00',CMPNFSTotGer.Value),15)); // Valor Total da NFe

    if CMPNFSTipFrt.Value = '2' then
      TipFrt := '1'
    else
      TipFrt := '0';
    if Length(Trim(CMPNFSCgcTra.Value)) = 11 then
      CpfTra := CMPNFSCgcTra.Value
    else
      CgcTra := CMPNFSCgcTra.Value;
    Id_FinUfe := CMPNFSId_TraUfe.Value;
    Id_FinCie := CMPNFSId_TraCie.Value;
    InsTra := fLimpaStr(CMPNFSInsTra.Value);
    NomTra := fLimpaAcentos(CMPNFSNomTra.Value);
    if Trim(CMPNFSTenTra.Value) <> '' then
      EndTra := Trim(CMPNFSTenTra.Value)+ ' ' +CMPNFSEndTra.Value
    else
      EndTra := CMPNFSEndTra.Value;
    EndTra := fLimpaAcentos(EndTra);
    NumTra := fLimpaAcentos(CMPNFSNumTra.Value);
    RefTra := fLimpaAcentos(CMPNFSRefTra.Value);
    BaiTra := fLimpaAcentos(CMPNFSBaiTra.Value);
    UfeTra := fLimpaAcentos(CMPNFSUfeTra.Value);
    CgcTra := fReplicate('0',14 - Length(copy(Trim(CgcTra),1,14))) + copy(Trim(CgcTra),1,14);
    CpfTra := fReplicate('0',14 - Length(copy(Trim(CpfTra),1,14))) + copy(Trim(CpfTra),1,14);
    NomTra := copy(Trim(NomTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(NomTra),1,60)));
    ApeTra := copy(Trim(ApeTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(ApeTra),1,60)));
    EndTra := copy(Trim(EndTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(EndTra),1,60)));
    NumTra := copy(Trim(NumTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(NumTra),1,60)));
    RefTra := copy(Trim(RefTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(RefTra),1,60)));
    BaiTra := copy(Trim(BaiTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(BaiTra),1,60)));
    UfeTra := copy(Trim(UfeTra),1,02) + fReplicate(' ',02 - Length(copy(Trim(UfeTra),1,02)));
    InsTra := copy(Trim(InsTra),1,14) + fReplicate(' ',14 - Length(copy(Trim(InsTra),1,14)));

    with quSQL,SQL do
      begin
      Close;
      Text := ' Select FinCie.NomCie,'+
              '        FinCie.SigNfe '+
              ' From FinCie'+
              ' Where FinCie.Id_FinCie = '+ QuotedStr(IntToStr(Id_FinCie));
      Open;
      CidTra := fLimpaAcentos(FieldbyName('NomCie').AsString);
      CidTra := copy(Trim(CidTra),1,60) + fReplicate(' ',60 - Length(copy(Trim(CidTra),1,60)));
      end;

    PesLiq := fSubstDecimal(FormatFloat('########0.000',CMPNFSInfLiq.Value),15);
    PesBrt := fSubstDecimal(FormatFloat('########0.000',CMPNFSInfBrt.Value),15);
    EspFat := fLimpaAcentos(CMPNFSESPnfs.Value);
    MarFat := fLimpaAcentos(CMPNFSMARnfs.Value);
    MarFat := copy(Trim(MarFat),1,60) + fReplicate(' ',60 - Length(copy(Trim(MarFat),1,60)));
    EspFat := copy(Trim(EspFat),1,60) + fReplicate(' ',60 - Length(copy(Trim(EspFat),1,60)));

    Writeln(ArqEnv,'EM0211'+                                   // Uso interno do sistema
                   TipFrt+                                     // Modalidade do Frete
                   CgcTra+                                     // CNPJ
                   CpfTra+                                     // CPF
                   NomTra+                                     // Raz�o social ou nome
                   InsTra+                                     // IE
                   EndTra+                                     // Endere�o completo
                   CidTra+                                     // Nome do Municipio
                   UfeTra+                                     // Sigla da UF
                   fNumZeros(IntToStr(CMPNFSAltVol.Value),15)+ // Quantidade de volumes
                   MarFat+                                     // Especie dos volumes transportados
                   EspFat+                                     // Marca dos volumes transportados
                   PesLiq+                                     // Peso Liquido (em Kg)
                   PesBrt);                                    // Peso Bruto (em Kg)

    if CMPNFSIntFin.Value = 'Sim' then
      begin
      NroDoc := fSubstDecimal(IntToStr(CMPNFSNroNfs.Value),60);
      Writeln(ArqEnv,'EM0212'+                                                          // Uso interno do sistema
                     NroDoc+                                                            // N�mero da fatura
                     fSubstDecimal(FormatFloat('########0.00',CMPNFSTotGer.Value),15)+  // Valor Original
                     '           0.00'+                                                 // Valor do desconto
                     fSubstDecimal(FormatFloat('########0.00',CMPNFSTotGer.Value),15)); // Valor Original

      end;


    ObsFat := '';
    if Trim(fLimpaAcentos(CMPNFSOb1NFS.Value)) <> '' then ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb1NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb2NFS.Value)) <> '' then ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb2NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb3NFS.Value)) <> '' then ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb3NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb4NFS.Value)) <> '' then ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb4NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb5NFS.Value)) <> '' then ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb5NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb6NFS.Value)) <> '' then ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb6NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb7NFS.Value)) <> '' then ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb7NFS.Value));
    if Trim(fLimpaAcentos(CMPNFSOb8NFS.Value)) <> '' then ObsFat := ObsFat + AllTrim(fLimpaAcentos(CMPNFSOb8NFS.Value));
    ObsFat := copy(ObsFat,1,256);
    ObsFat := copy(Trim(ObsFat),1,256) + fReplicate(' ',256 - Length(copy(Trim(ObsFat),1,256)));
    Writeln(ArqEnv,'EM0214'+ // Uso interno do sistema
                   ObsFat);  // Informa��es adicionais de interesse do Fisco
    CloseFile(ArqEnv);
    end;


  //Chamando o NFeEmerion

  IniFile:=ExtractFilePath(Application.ExeName)+'NFeEmerion.ini';
  if not FileExists(inifile) then
  begin
      showmessage('Erro. N�o foi poss�vel localizar o arquivo de configura��o da NF-e.');
      sysutils.abort;
  end;

  ini:=TIniFile.create(IniFile);
  try
          CaminhoXml:= ini.ReadString('Geral','PathXML','');
          CaminhoLeitura:=ini.ReadString('Geral','PathLeitura','');
          CaminhoRetorno:=ini.ReadString('Geral','PathRetorno','');
  finally
        ini.free;
  end;


  if not DirectoryExists(CaminhoXml) then
  ForceDirectories(CaminhoXml);

  if not DirectoryExists(CaminhoLeitura) then
  ForceDirectories(CaminhoLeitura);

  if not DirectoryExists(CaminhoRetorno) then
  ForceDirectories(CaminhoRetorno);
VNumNota:=EdNroNfs.Text;
      CopyFile(Pchar(ArqRe1),Pchar(CaminhoLeitura+'\EVNOTA'+VNumNota+'.txt'), SeqRet);
      Executa(ExtractFilePath(Application.exename)+'\NFeEmerion.exe ENVIA '+vnumnota,SW_HIDE);
      Application.BringToFront;
      fmManIro.BringToFront;

      //   CaminhoRetorno:=ExtractFilePath(Application.exename)+'\NFE\Retorno';
//   CaminhoLeitura:=ExtractFilePath(Application.exename)+'\NFE\Leitura';

   if FileExists(CaminhoRetorno+'\'+VNumNota+' - NF-e- Retorno.xml') then
   begin

        CMPNFS.edit;
        CMPNFSFLGATU.value:='F';
        CMPNFSENVNFE.value:='Sim';
        CMPNFSUSUNFE.Value:=GUsu_Id;

        AssignFile(TArquivo, (CaminhoRetorno+'\'+VNumNota+' - NF-e- Retorno.xml'));
        Reset(TArquivo);
        ReadLn(TArquivo, TLinha);
        Repeat
          Application.ProcessMessages;
                if pos('<nProt>',TLinha)>0 then
                begin
                CMPNFSPRONFE.Value:=(copy(TLinha, pos('<nProt>',TLinha)+Length('<nProt>') ,15));
                eprotocolo:=(copy(TLinha, pos('<nProt>',TLinha)+Length('<nProt>') ,15));
                end;

                if pos('<xMotivo>',TLinha)>0 then
                CMPNFSRETNFE.Value:=(copy(TLinha, pos('<xMotivo>',TLinha)+Length('<xMotivo>') ,pos('</xMotivo>',TLinha)-(pos('<xMotivo>',TLinha)+Length('<xMotivo>'))));

                if pos('<dhRecbto>',TLinha)>0 then
                begin
                CMPNFSDTEPNF.value:=strtodate(copy(TLinha, pos('<dhRecbto>',TLinha)+Length('<dhRecbto>')+8,2)+'/'+copy(TLinha, pos('<dhRecbto>',TLinha)+Length('<dhRecbto>')+5,2)+'/'+copy(TLinha, pos('<dhRecbto>',TLinha)+Length('<dhRecbto>'),4));
                CMPNFSDTENFE.Value:=strtodate(copy(TLinha, pos('<dhRecbto>',TLinha)+Length('<dhRecbto>')+8,2)+'/'+copy(TLinha, pos('<dhRecbto>',TLinha)+Length('<dhRecbto>')+5,2)+'/'+copy(TLinha, pos('<dhRecbto>',TLinha)+Length('<dhRecbto>'),4));
                end;

                if pos('<dhRecbto>',TLinha)>0 then
                CMPNFSHREPNF.Value:=(copy(TLinha, pos('<dhRecbto>',TLinha)+Length('<dhRecbto>')+11,8));

                if pos('infNFe versao="1.10" Id="',TLinha)>0 then
                begin
                CMPNFSSEQNFE.Value:=(copy(TLinha, pos('infNFe versao="1.10" Id="NFe',TLinha)+Length('infNFe versao="1.10" Id="NFe'),44));
                 chave:=(copy(TLinha, pos('infNFe versao="1.10" Id="NFe',TLinha)+Length('infNFe versao="1.10" Id="NFe'),44));
                end;
        ReadLn(TArquivo, TLinha);
        until EOF(Tarquivo);
        CloseFile(TArquivo);
        movefile(pchar(CaminhoRetorno+'\'+VNumNota+' - NF-e- Retorno.xml'), pchar(CaminhoRetorno+'\'+VNumNota+' - NF-e- '+chave+'.xml'));

        CMPNFS.Post;
        CMPNFS.ApplyUpdates; //Tenta aplicar as alteracoes


        FatArq.Active:=false;
        FatArq.Params[0].AsInteger := CMPNFSID_CMPNFS.Value;
        FatArq.Open;
              FatArq.Edit;
              FatArqFlgAtu.Value := 'F';
              TBlobField(FatArq.FieldByName('ArqNfe')).LoadFromFile(CaminhoRetorno+'\'+VNumNota+' - NF-e- ' +chave+'.xml');
              FatArqNFETH.VALUE:=1;
              FatArqSITNFS.Value:='Faturado';
              FatArq.Post;
              FatArq.ApplyUpdates;
              FatArq.Close;

////============================== Mandando E-mail Para o Cliente ==== ////

                  ini:=TIniFile.create(IniFile);
                  try
                          ehost:= ini.ReadString('E-mail','host','');
                          eusuario:= ini.ReadString('E-mail','usuario','');
                          esenha:= ini.ReadString('E-mail','senha','');
                          eAutomatico:= ini.ReadInteger('E-mail','automatico',0);
                          ehomologacao:=ini.ReadInteger('WebService','Ambiente',1);
                  finally
                        ini.free;
                  end;
           if eAutomatico = 1 then
           begin
              if ehomologacao = 1 then
             epara := 'fernanda@emerion.com.br'
             else
             ePara := CmpNfsEMAFOR.Value;

                sNumeroNF := copy(fNumZeros(IntToStr(cmpnfsNroNfs.Value),9),1,3)+ '.' +
                        copy(fNumZeros(IntToStr(cmpnfsNroNfs.Value),9),4,3)+ '.' +
                        copy(fNumZeros(IntToStr(cmpnfsNroNfs.Value),9),7,3);
                eAssunto := 'NF-e: '+ sNumeroNF + ' ' + UpperCase(Trim(NomEmp));

                FindReplace('#PROTOCOLO#',eProtocolo,corpomail);
                FindReplace('#SERIE#','1',corpomail);
                FindReplace('#EMITENTE#',trim(NomEmp),corpomail);
                FindReplace('#NUMERONOTA#',SNumeroNF,corpomail);

                eanexo:=CaminhoRetorno+'\'+VNumNota+' - NF-e- '+chave+'.xml';
                button1.Click;
                end;//mandando e-mail
////============================== Mandando E-mail Para o Cliente ==== ////


  ///////=========================================================
//Danfe

    if CMPNFSEnvNfe.Value = 'Sim' then
    begin
       if fMsg('Confirma impress�o do DANFE ?','O') then
       begin
           with quSQL,SQL do
           begin
               Close;
               Text := ' Delete From FatNfe Where FatNfe.Id_CMPNFS = '+ QuotedStr(IntToStr(CMPNFSID_CMPNFS.Value));
               ExecSQL;
            end;
            with quSQL,SQL do
            begin
             Close;
             Text := ' Select GerEmp.NomEmp'+
                     ' From GerEmp'+
                     ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(CMPNFSCodEmp.Value));
             Open;
             NomEmp := fLimpaAcentos(FieldbyName('NomEmp').AsString);
             end;
//             GEmail := CMPNFSEmafor.Value;
             sNumeroNF := copy(fNumZeros(IntToStr(CMPNFSNroNfs.Value),9),1,3)+ '.' +
                          copy(fNumZeros(IntToStr(CMPNFSNroNfs.Value),9),4,3)+ '.' +
                          copy(fNumZeros(IntToStr(CMPNFSNroNfs.Value),9),7,3);
             GAssunto := 'NF-e: '+ sNumeroNF + ' ' + UpperCase(Trim(NomEmp));
             with quSQL,SQL do
             begin
                Close;
                Text := 'Select CmpNF2.*, '+
                        '        Cast('+quotedstr('0')+' as Numeric(15,2))as TotFrt,'+
                        '        Cast('+quotedstr('0')+' as Numeric(15,2))as TotSEG,'+
                        '        Cast('+quotedstr('0')+' as Numeric(15,2))as TotDES '+
                        '  From CmpNf2 '+
                        '    Where CmpNf2.CodEmp = '+QuotedStr(CmpNfsCODEMP.asstring)+
                        '     and CmpNf2.DteNfs = '+QuotedStr(formatdatetime('mm/dd/yyyy', CmpNfsDTENFS.value))+
                        '     and CmpNf2.SeqNfs = '+QuotedStr(CmpNfsSEQNFS.asstring)+
                        'Order by CmpNf2.NroNf2';
                Open;
                First;
             end;
             NroReg := 0;
             while not quSQL.EOF do
             begin
                Inc(NroReg);
                with quSQL1,SQL do
                begin
                   Close;
                   Text := ' Insert Into FatNfe(Dev_CodEmp,Dev_DteRes,Dev_NumRes,Dev_SeqLib,Dev_SeqFat,Dev_SeqDev,CodClp,CodGru,CodSub,CodPro,'+
                           '                    CodTam,CodCor,DesNfe,CfoNfe,NcmNfe,SitNfe,UndNfe,QtpNfe,VlqNfe,TotNfe,BasIcm,TotIcm,TotIpi,IcmNfe,'+
                           '                    IpiNfe,NroNfe,IteNfe, id_cmpnfs)'+
                           '             Values(:Dev_CodEmp,:Dev_DteRes,:Dev_NumRes,:Dev_SeqLib,:Dev_SeqFat,:Dev_SeqDev,:CodClp,:CodGru,:CodSub,:CodPro,'+
                           '                    :CodTam,:CodCor,:DesNfe,:CfoNfe,:NcmNfe,:SitNfe,:UndNfe,:QtpNfe,:VlqNfe,:TotNfe,:BasIcm,:TotIcm,:TotIpi,'+
                           '                    :IcmNfe,:IpiNfe,:NroNfe,:IteNfe, :id_cmpnfs)';
                   with Params do
                   begin
                        Params[00].AsInteger  := CMPNFSCodEmp.Value;
                        Params[01].AsDateTime := CmpNfsDTENFS.Value;
                        Params[02].AsInteger  := CmpNfsNroNFS.asinteger;
                        Params[03].AsInteger  := 0;
                        Params[04].AsInteger  := 0;
                        Params[05].AsInteger  := CmpNfsSEQNFS.Value;
                        Params[06].AsString   := quSQL.FieldbyName('CodClp').AsString;
                        Params[07].AsString   := quSQL.FieldbyName('CodGru').AsString;
                        Params[08].AsString   := quSQL.FieldbyName('CodSub').AsString;
                        Params[09].AsString   := quSQL.FieldbyName('CodPro').AsString;
                        Params[10].AsString   := quSQL.FieldbyName('CodTam').AsString;
                        Params[11].AsString   := quSQL.FieldbyName('CodCor').AsString;
                        Params[12].AsString   := Trim(quSQL.FieldbyName('DesNF2').AsString);
                        Params[13].AsString   := Trim(quSQL.FieldbyName('CodCfo').AsString);
                        Params[14].AsString   := Trim(quSQL.FieldbyName('ClsIpi').AsString);
                        Params[15].AsString   := quSQL.FieldbyName('CodSt1').AsString+ ' ' +quSQL.FieldbyName('CodSt2').AsString;
                        Params[16].AsString   := Trim(quSQL.FieldbyName('CodUnd').AsString);
                        Params[17].AsFloat    := quSQL.FieldbyName('QtpNF2').AsFloat;
                        Params[18].AsFloat    := quSQL.FieldbyName('VluNF2').AsFloat;
                        Params[19].AsFloat    := quSQL.FieldbyName('TotNF2').AsFloat;
                        Params[20].AsFloat    := quSQL.FieldbyName('BasIcm').AsFloat;
                        Params[21].AsFloat    := quSQL.FieldbyName('TotIcm').AsFloat;
                        Params[22].AsFloat    := quSQL.FieldbyName('TotIpi').AsFloat;
                        Params[23].AsFloat    := quSQL.FieldbyName('IcmNF2').AsFloat;
                        Params[24].AsFloat    := quSQL.FieldbyName('IpiNF2').AsFloat;
                        Params[25].AsInteger  := NroReg;
                        Params[26].AsString   := 'Sim';
                        Params[27].AsInteger  := CmpNfsID_CMPNFS.value;
                   end;
                   ExecSQL;
              end;
              quSQL.Next;
         end;
        try
           fmManE12_NFE := TfmManE12_NFE.Create(Self);
           fmManE12_NFE.FatGer.Close;
           fmManE12_NFE.FatGer.sql.text:='Select CmpNfs.*, '+
                                         '           FinFor.ApeFor, '+
                                         '           FinFOR.NomFor, '+
                                         '           FinFOR.PtrFor, '+
                                         '           FinFOR.FonFor, '+
                                         '           CMPNFS.SeqNfe as NFE '+
                                         'From CmpNfs LEFT JOIN FinFor ON (CmpNfs.CodFor = FinFor.CodFor) '+
                                         'Where CmpNfs.id_cmpnfs = '+QuotedStr(CmpNfsID_CMPNFS.asstring);

           fmManE12_NFE.FatGer.Open;
           fmManE12_NFE.FatNfe.Active:=false;
           fmManE12_NFE.fatnfe.SQL.text:='Select * From FatNfe '+
                                         ' Where FatNfe.id_CMPNFS = '+QuotedStr(CmpNfsID_CMPNFS.asstring)+
                                         ' Order by FatNfe.NroNfe ';
           fmManE12_NFE.FatNfe.open;
           fmManE12_NFE.RLReport1.PreviewModal;
        finally
           FreeAndNil(fmManE12_NFE);
        end;
        if CMPNFSImpNFe.Value = 'Nao' then
        begin
           if fMsg('DANFE impressa corretamente ?','O') then
           begin
              CMPNFS.Edit;
              CMPNFSFlgAtu.Value := 'F';
              CMPNFSImpNFe.Value := 'Sim';
              CmpNfsFLGIMP.Value := 'Sim';
              with CMPNFS do
              begin
                   fmManGDB.dbMain.StartTransaction; {Inicia a Transa��o};
                   try
                      ApplyUpdates; {Tenta aplicar as alteracoes};
                      fmManGDB.dbMain.Commit; {confirma todas as alteracoes fechando a transa��o};
                   except
                      fmManGDB.dbMain.Rollback; {desfaz as alteracoes se acontecer um erro};
                      if CMPNFS.State <> dsBrowse then CMPNFS.CancelUpdates;
                      CMPNFS.Close;
                      CMPNFS.Open;
                      raise;
                   end;
                   CommitUpdates; {sucesso!, limpa o cache...}
              end;
           end;
        end;
     end;
  end;

                 //Rolando - Fim
  ////////=========================================================
        fmManRo4.close;
        fmManRo3.close;
        fmManro2.Finalizar:='S';
        fmManRo2.close;
        fmManIRo.close;
        fmManLro.bAtualizar.Click;

   end else

   if FileExists(CaminhoRetorno+'\LogErro-'+VNumNota+'.txt') then
   begin
        pn_erro.visible:=true;
        memo_erro.Font.Color:=clBlack;
        memo_erro.Lines.Clear;
        memo_erro.Lines.LoadFromFile(CaminhoRetorno+'\LogErro-'+VNumNota+'.txt');
        i:=1;
        repeat
           i:=i+1;
        until not FileExists(CaminhoRetorno+'\LogErro-'+VNumNota+'.EP'+inttostr(i));

        MoveFile(pchar(CaminhoRetorno+'\LogErro-'+VNumNota+'.txt'),pchar(CaminhoRetorno+'\LogErro-'+VNumNota+'.EP'+inttostr(i)));
   end;
     fmManPri.Enabled := True;
     fmManIro.Enabled := True;


end;

procedure TfmManIro.bt_erroClick(Sender: TObject);
begin
  inherited;
  pn_erro.Visible:=false;
     fmManPri.Enabled := True;
     fmManIro.Enabled := True;
end;

procedure TfmManIro.Button1Click(Sender: TObject);
var xAnexo : Integer;
newtext:tidtext;
p: TidMessageParts;
begin
idmessage1.clear;

IdSMTP1.host:=ehost;
idsmtp1.Password := eSenha;
idsmtp1.UserID:=eUsuario;
idmessage1.From.Address:=eUsuario;
IdMessage1.Recipients.EMailAddresses := ePara;
IdMessage1.Priority := mpHigh;
IdMessage1.Subject := eAssunto;
IdMessage1.ContentType := 'text/html';
IdMessage1.Body.text:= corpomail.lines.text;
IdMessage1.IsEncoded := True;
IdMessage1.ReceiptRecipient.Text := IdMessage1.From.Text; // Auto Resposta
TIdAttachment.create(idmessage1.MessageParts, TFileName(eAnexo));
IdSMTP1.Connect;
try
IdSMTP1.Send(IdMessage1);
Application.MessageBox('Email enviado com sucesso!', 'Confirma��o', MB_ICONINFORMATION + MB_OK);
finally
IdSMTP1.Disconnect;
end;
corpomail.Lines.text:=memo1.lines.text;
end;

end.
