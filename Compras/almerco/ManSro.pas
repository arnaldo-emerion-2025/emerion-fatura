unit ManSro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Db,
  DBTables, Wwquery, RDprint, dxExEdtr, FShowPadrao, dxColorCurrencyEdit,
  dxDBColorCurrencyEdit, Wwdatsrc;

type
  TfmManSro = class(TfmShowPadrao)
    GerEmp: TwwQuery;
    PaintBox: TPaintBox;
    Label57: TLabel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    RDprint1: TRDprint;
    quSQL: TwwQuery;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EdQtdNfs: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    EdNroNot: TdxDBColorCurrencyEdit;
    EdSeqFin: TdxDBColorCurrencyEdit;
    EdSeqIni: TdxDBColorCurrencyEdit;
    GerEmpNRONOT: TIntegerField;
    CmpNfs: TwwQuery;
    UpCmpNfs: TUpdateSQL;
    DsCmpNfs: TwwDataSource;
    CmpNfsID_CMPNFS: TIntegerField;
    CmpNfsCODEMP: TIntegerField;
    CmpNfsCODTIP: TIntegerField;
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
    CmpNfsQTDNOT: TIntegerField;
    CmpNfsNRONOT: TIntegerField;
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
    CmpNfsNOMENT: TStringField;
    CmpNfsCEPFOR: TStringField;
    CmpNfsTENFOR: TStringField;
    CmpNfsENDFOR: TStringField;
    CmpNfsREFFOR: TStringField;
    CmpNfsNUMFOR: TStringField;
    CmpNfsBAIFOR: TStringField;
    CmpNfsCIDFOR: TStringField;
    CmpNfsUFEFOR: TStringField;
    CmpNfsOB1NFS: TStringField;
    CmpNfsOB2NFS: TStringField;
    CmpNfsOB3NFS: TStringField;
    CmpNfsOB4NFS: TStringField;
    CmpNfsOB5NFS: TStringField;
    CmpNfsOB6NFS: TStringField;
    CmpNfsOB7NFS: TStringField;
    CmpNfsOB8NFS: TStringField;
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
    CmpNfsBSICMF: TFloatField;
    CmpNfsBAICMF: TFloatField;
    CmpNfsTOICMF: TFloatField;
    CmpNfsBSICMS: TFloatField;
    CmpNfsBAICMS: TFloatField;
    CmpNfsTOICMS: TFloatField;
    CmpNfsBSICMD: TFloatField;
    CmpNfsBAICMD: TFloatField;
    CmpNfsTOICMD: TFloatField;
    CmpNfsBSIPIF: TFloatField;
    CmpNfsBAIPIF: TFloatField;
    CmpNfsTOIPIF: TFloatField;
    CmpNfsBSIPIS: TFloatField;
    CmpNfsBAIPIS: TFloatField;
    CmpNfsTOIPIS: TFloatField;
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
    CmpNfsOBCNF1: TStringField;
    CmpNfsOBCNF2: TStringField;
    CmpNfsOBCNF3: TStringField;
    CmpNfsDTFNFS: TDateTimeField;
    CmpNfsHRFNFS: TStringField;
    CmpNfsOBFNF1: TStringField;
    CmpNfsOBFNF2: TStringField;
    CmpNfsOBFNF3: TStringField;
    CmpNfsUSFNFS: TIntegerField;
    CmpNfsATUEST: TStringField;
    CmpNfsLANEST: TStringField;
    CmpNfsINTFIN: TStringField;
    CmpNfsCONSUM: TStringField;
    CmpNfsFLGSIN: TStringField;
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
    CmpNfsTRBPIS: TStringField;
    CmpNfsTRBCOF: TStringField;
    CmpNfsFLGENV: TStringField;
    CmpNfsFLGIMP: TStringField;
    CmpNfsFLGATU: TStringField;
    CmpNfsSEQNFS: TStringField;
    CmpNfsSITNFS: TStringField;
    CmpNfsSERNOT: TStringField;
    CmpNfsSERSEL: TStringField;
    CmpNfsFLGSEG: TStringField;
    CmpNfsSEQINI: TIntegerField;
    CmpNfsSEQFIN: TIntegerField;
    CmpNfsCODTRA: TIntegerField;
    CmpNfsTXFICM: TStringField;
    CmpNfsTXFIPI: TStringField;
    CmpNfsFLGNFS: TStringField;
    CmpNfsVALTMO: TFloatField;
    CmpNfsID_CMPPED: TIntegerField;
    CmpNfsOB1OPE: TStringField;
    CmpNfsOB2OPE: TStringField;
    CmpNfsOB3OPE: TStringField;
    CmpNfsOB4OPE: TStringField;
    CmpNfsOB5OPE: TStringField;
    CmpNfsCEFFOR: TStringField;
    CmpNfsTEFFOR: TStringField;
    CmpNfsENFFOR: TStringField;
    CmpNfsRFFFOR: TStringField;
    CmpNfsNRFFOR: TStringField;
    CmpNfsBAFFOR: TStringField;
    CmpNfsCIFFOR: TStringField;
    CmpNfsID_FINUFF: TIntegerField;
    CmpNfsID_FINCIF: TIntegerField;
    CmpNfsID_TRAUFE: TIntegerField;
    CmpNfsID_TRACIE: TIntegerField;
    CmpNfsID_FINUFE: TIntegerField;
    CmpNfsID_FINCIE: TIntegerField;
    CmpNfsNFEPIS: TStringField;
    CmpNfsNFECOF: TStringField;
    CmpNfsFLGNFE: TStringField;
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
    CmpNfsUFFFOR: TStringField;
    CmpNfsCGEFOR: TStringField;
    CmpNfsINEFOR: TStringField;
    GerEmpFLGSEL: TStringField;
    procedure bretornarClick(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    {Private declarations}
  public
    NroIni,NroFin : integer;
    {Public declarations}
  end;

var
  fmManSro: TfmManSro;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB;

{$R *.DFM}

procedure TfmManSro.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManSro.bcontinuarClick(Sender: TObject);
var
  ArqTexto : TStringList;
  Nota01: array[1..211] of string;
  ValorExt,ValorEx1,ValorEx2,ValorEx3,sContinuar : string;
  EndEnt1,EndEnt2,EndCob1,EndCob2,Linha,FonFor,PrtFor,sCanc,sText : string;
  NomFor,CgcFor,InsFor,TenFor,CepFor,EndFor,NumFor,BaiFor,CidFor,UfeFor,RefFor,ImpRef,Fonte : string;
  Tam,Reg,Inc,Col,Lin,r,i,j,rec,qtdIte,qtdNfs,qtdnot,qtdLin,Id_CmpNfg,qtdimpr,qtitens,NroNf2,SeqNfs,QtiNfs,SeqError,SeqNot,NroNot : integer;
begin

  ActiveControl := nil;
  
  if EdSeqIni.Value > 0 then begin

     if EdSeqFin.Value > 0 then begin

        if (EdSeqIni.Value >= NroIni) and (EdSeqFin.Value <= NroFin) then begin

           if EdSeqFin.Value >= EdSeqIni.Value then begin

              if GerEmpFlgSel.Value = 'Sim' then begin

                 sContinuar := 'N';

                 qtdnot := GerEmpNroNot.Value + 1;

                 if EdNroNot.Value > qtdnot then begin

                    if fMsgConf('No. de formulário fiscal informado esta fora de sequência. O próximo seria '+Trim(IntToStr(QtdNot))+'. Confirma no. alterado ?','E') = 'SIM' then
                       sContinuar := 'S'
                    else
                       begin

                       if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                       CmpNfsNroNot.Value := QtdNot;

                       if EdNroNot.Enabled then EdNroNot.SetFocus;

                    end;

                    end
                 else
                    begin

                    if EdNroNot.Value < qtdnot then begin

                       if fMsgConf('No. de formulário fiscal informado esta fora de sequência. O próximo seria '+Trim(IntToStr(QtdNot))+'. Confirma no. alterado ?','E') = 'SIM' then
                          sContinuar := 'S'
                       else
                          begin

                          if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                          CmpNfsNroNot.Value := QtdNot;

                          if EdNroNot.Enabled then EdNroNot.SetFocus;

                       end;

                       end
                    else
                       sContinuar := 'S';

                 end;

                 end
              else
                 sContinuar := 'S';
                 
              if sContinuar = 'S' then begin

                 CmpNfsFlgAtu.Value := 'S';

                 CmpNfsFlgNfs.Value := 'Sim';
                 CmpNfsFlgSeg.Value := 'Sim';

                 with CmpNfs do begin

                      fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                      try

                         ApplyUpdates; {Tenta aplicar as alterações};

                         fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                      except

                         fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                         sContinuar := 'N';

                         if CmpNfs.State = dsBrowse then CmpNfs.Edit;

                         EdSeqIni.SetFocus;

                         raise;

                      end;

                      CommitUpdates; {sucesso!, limpa o cache...}

                 end;

                 CmpNfs.Close;
                 CmpNfs.Open;

                 sContinuar := 'S';

                 end
              else
                 sContinuar := 'S';

              if sContinuar = 'S' then begin

                 if fMsg('Confirma emissão da 2ª via da nota fiscal informada ?','O') then begin

                    if FileExists(ExtractFilePath(Application.ExeName)+'lincol.txt') then begin

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select FatPar.ImpRef '+
                                    ' From FatPar';
                            Open;

                            ImpRef := quSql.FieldbyName('ImpRef').AsString;

                       end;

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select GerEmp.QtdLin,'+
                                    '        GerEmp.QtdNot '+
                                    ' From GerEmp'+
                                    ' Where GerEmp.CodEmp = '+ QuotedStr(IntToStr(CmpNfsCodEmp.Value));
                            Open;

                            QtdIte := quSql.FieldbyName('QtdLin').AsInteger;
                            QtdNfs := quSql.FieldbyName('QtdNot').AsInteger;

                       end;

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select FinFor.NomFor,'+
                                    '        FinFor.CgcFor,'+
                                    '        FinFor.InsFor,'+
                                    '        FinFor.TenFor,'+
                                    '        FinFor.EndFor,'+
                                    '        FinFor.RefFor,'+
                                    '        FinFor.NumFor,'+
                                    '        FinFor.BaiFor,'+
                                    '        FinFor.CidFor,'+
                                    '        FinFor.SigUfe,'+
                                    '        FinFor.CepFor,'+
                                    '        FinFor.PrtFor,'+
                                    '        FinFor.FonFor '+
                                    ' From FinFor'+
                                    ' Where FinFor.CodFor = '+ QuotedStr(IntToStr(CmpNfsCodFor.Value));
                            Open;

                            NomFor := Trim(FieldbyName('NomFor').AsString);
                            CgcFor := Trim(FieldbyName('CgcFor').AsString);
                            InsFor := Trim(FieldbyName('InsFor').AsString);
                            TenFor := Trim(FieldbyName('TenFor').AsString);
                            EndFor := Trim(FieldbyName('EndFor').AsString);
                            RefFor := Trim(FieldbyName('RefFor').AsString);
                            NumFor := Trim(FieldbyName('NumFor').AsString);
                            BaiFor := Trim(FieldbyName('BaiFor').AsString);
                            CidFor := Trim(FieldbyName('CidFor').AsString);
                            UfeFor := Trim(FieldbyName('SigUfe').AsString);
                            CepFor := Trim(FieldbyName('CepFor').AsString);
                            PrtFor := Trim(FieldbyName('PrtFor').AsString);
                            FonFor := Trim(FieldbyName('FonFor').AsString);

                            if Trim(CepFor) <> '' then CepFor := copy(CepFor,1,5)+ '-' +copy(CepFor,6,3);

                       end;

                       fmsg('Posicione a nota fiscal na impressora e pressione ENTER','E');

                       SeqError := 1;
                    
                       try

                          ArqTexto := TStringList.Create;
                          ArqTexto.LoadFromFile(ExtractFilePath(Application.ExeName)+'lincol.txt');

                          qtdLin := ArqTexto.Count - 1; {Quantidade de Linhas no Arquivo LINCOL.TXT}

                          EndCob2 := '';
                          EndEnt2 := '';

                          if Trim( TenFor ) <> '' then
                             EndCob1 := Trim( TenFor ) + ' ' + Trim( EndFor )
                          else
                             EndCob1 := Trim( EndFor );

                          if Trim( NumFor ) <> '' then
                             EndCob1 := EndCob1 + ', ' +Trim( NumFor );

                          if Trim( RefFor ) <> '' then
                             EndCob1 := EndCob1 + ' ' +Trim( RefFor );

                          if Trim( BaiFor ) <> '' then
                             EndCob1 := EndCob1 + ' ' +Trim( BaiFor );

                          if Trim( CidFor ) <> '' then
                             EndCob1 := EndCob1 + ' - ' +Trim( CidFor );

                          if Trim( UfeFor ) <> '' then
                             EndCob1 := EndCob1 + ' ' +Trim( UfeFor );

                          if Trim( CepFor ) <> '' then
                             EndCob1 := EndCob1 + ' Cep ' +Trim( CepFor );

                          if Trim( CmpNfsNomEnt.Value ) <> '' then begin

                             EndEnt1 := Trim( CmpNfsNomEnt.Value );

                             if Trim(CmpNfsCgcFor.Value) <> '' then
                                EndEnt1 := EndEnt1 + ' CNPJ: '+ fFormatCgcCpf(CmpNfsCgcFor.Value);

                             if Trim(CmpNfsTenFor.Value) <> '' then
                                EndEnt2 := Trim(CmpNfsTenFor.Value)+' '+Trim(CmpNfsEndFor.Value)
                             else
                                EndEnt2 := Trim(CmpNfsEndFor.Value);

                             if Trim(CmpNfsNumFor.Value) <> '' then
                                EndEnt2 := EndEnt2+ ', ' +Trim(CmpNfsNumFor.Value);

                             if Trim(CmpNfsRefFor.Value) <> '' then
                                EndEnt2 := EndEnt2+ ' ' +Trim(CmpNfsRefFor.Value);

                             if Trim(CmpNfsBaiFor.Value) <> '' then
                                EndEnt2 := EndEnt2+ ' ' +Trim(CmpNfsBaiFor.Value);

                             if Trim(CmpNfsCidFor.Value) <> '' then
                                EndEnt2 := EndEnt2+ ' ' +Trim(CmpNfsCidFor.Value);

                             if Trim(CmpNfsUfeFor.Value) <> '' then
                                EndEnt2 := EndEnt2 + ' - ' +Trim(CmpNfsUfeFor.Value);

                             if Trim(CmpNfsCepFor.Value) <> '' then
                                EndEnt2 := EndEnt2+ ' Cep ' +copy(Trim(CmpNfsCepFor.Value),1,5)+'-'+copy(Trim(CmpNfsCepFor.Value),6,3);

                             end
                          else
                             begin

                             if Trim(CmpNfsTenFor.Value) <> '' then
                                EndEnt1 := Trim(CmpNfsTenFor.Value)+ ' ' +Trim(CmpNfsEndFor.Value)
                             else
                                EndEnt1 := Trim(CmpNfsEndFor.Value);

                             if Trim(CmpNfsNumFor.Value) <> '' then
                                EndEnt1 := EndEnt1+ ', ' +Trim(CmpNfsNumFor.Value);

                             if Trim(CmpNfsRefFor.Value) <> '' then
                                EndEnt1 := EndEnt1+ ' ' +Trim(CmpNfsRefFor.Value);

                             if Trim(CmpNfsBaiFor.Value) <> '' then
                                EndEnt1 := EndEnt1+ ' ' +Trim(CmpNfsBaiFor.Value);

                             if Trim(CmpNfsCidFor.Value) <> '' then
                                EndEnt1 := EndEnt1+ ' ' +Trim(CmpNfsCidFor.Value);

                             if Trim(CmpNfsUfeFor.Value) <> '' then
                                EndEnt1 := EndEnt1+ ' - ' +Trim(CmpNfsUfeFor.Value);

                             if Trim(CmpNfsCepFor.Value) <> '' then
                                EndEnt1 := EndEnt1 + ' Cep ' + copy(Trim(CmpNfsCepFor.Value),1,5)+ '-' +copy(Trim(CmpNfsCepFor.Value),6,3);
                                                                                 
                             EndEnt2 := 'CNPJ: '+fFormatCgcCpf(CmpNfsCgcFor.Value);

                          end;
                       
                          if Trim(PrtFor) <> '' then
                             FonFor := '(' +Trim(PrtFor)+ ')' +Trim(FonFor)
                          else
                             FonFor := Trim(FonFor);

                          Nota01[001] := 'NumNot';

                          Nota01[002] := 'X';                               {Saida}

                          Nota01[003] := ' ';                               {Entrada}

                          Nota01[004] := Trim(CmpNfsDesNat.Value); {NatOper}

                          if Trim( CmpNfsCodCf2.Value ) <> '' then {Cfop}
                             Nota01[005] := Trim(CmpNfsCodCf1.Value)+ '/' +Trim(CmpNfsCodCf2.Value)
                          else
                             Nota01[005] := Trim(CmpNfsCodCf1.Value);

                          Nota01[006] := '';

                          Nota01[007] := Trim(CmpNfsInsSub.Value); {InscEstSubTrib}

                          Nota01[008] := NomFor;  {Nome do Fornecedor}

                          if Trim(CgcFor) <> '' then
                             Nota01[009] := fFormatCgcCpf(fLimpaStr(CgcFor))
                          else
                             Nota01[009] := ' ';
                          
                          Nota01[010] := DateToStr(CmpNfsDteFat.Value); {DataEmis}

                          if Trim(TEnFor) <> '' then
                             Nota01[011] := Trim(TEnFor)+ ' ' +Trim(EndFor)
                          else
                             Nota01[011] := Trim(EndFor);

                          if Trim(NumFor) <> '' then
                             Nota01[011] := Nota01[011]+ ', ' +Trim(NumFor);

                          if Trim(RefFor) <> '' then
                             Nota01[011] := Nota01[011]+ ' '  +Trim(RefFor);

                          Nota01[012] := BaiFor; {Bairro}

                          if Trim( CepFor ) <> '' then {Cep}
                             Nota01[013] := copy(CepFor,1,5)+ '-' +copy(CepFor,6,3)
                          else
                             Nota01[013] := ' ';

                          Nota01[014] := '';                          {DataSai}

                          Nota01[015] := CidFor; {Cidade}

                          Nota01[016] := FonFor;                      {Fone}

                          {Uf}
                          if Trim(CmpNfsUfeNfs.Value) <> 'EX' then
                             Nota01[017] := UfeFor
                          else
                             Nota01[017] := ' ';

                          {InscEst}
                          if Trim(CmpNfsUfeNfs.Value) <> 'EX' then
                             Nota01[018] := InsFor
                          else
                             Nota01[018] := ' ';

                          Nota01[019] := ' '; {Hora da Saida}

                          Nota01[208] := ' '; {Detalhamento do ICMS}

                          i := 131;

                          while (i <= 184) do begin

                                Nota01[i] := ' '; {Detalhamento do ICMS}

                                i := i + 1;

                          end;

                          Nota01[185] := ' ';

                          Nota01[186] := ' ';

                          Nota01[038] := EndCob1;                      {Cobranca_1}

                          Nota01[039] := EndCob2;                      {Cobranca_2}

                          Nota01[040] := '';                           {Produto}

                          Nota01[041] := '';                           {Descr}

                          Nota01[042] := '';                           {ClassFisc}

                          Nota01[207] := '';                           {ClassFisc}

                          Nota01[043] := '';                           {St1}

                          Nota01[044] := '';                           {St2}

                          Nota01[045] := '';                           {Unidade}

                          Nota01[046] := '';                           {Qtde}

                          Nota01[047] := '';                           {Unit}

                          Nota01[048] := '';                           {Total}

                          Nota01[049] := '';                           {AlIcms}

                          Nota01[050] := '';                           {AlIpi}

                          Nota01[051] := '';                           {ValIpi}

                          Nota01[052] := '';                           {Descr2}

                          Nota01[128] := '';                           {Descr3}

                          Nota01[053] := '';                           {TextIpi}

                          Nota01[054] := '';                           {TextIcm}

                          Nota01[055] := 'Entrega: '+EndEnt1;          {Entrega_1}

                          Nota01[056] := '         '+EndEnt2;          {Entrega_2}

                          Nota01[067] := CmpNfsNomTra.Value; {NomeTransp}

                          Nota01[068] := CmpNfsTipFrt.Value; {FretePc}

                          Nota01[069] := CmpNfsPlcTra.Value; {Placa}

                          Nota01[070] := CmpNfsUfePlc.Value; {UfPlaca}

                          if Trim( CmpNfsCgcTra.Value ) <> '' then
                             Nota01[071] := fFormatCgcCpf(CmpNfsCgcTra.Value)
                          else
                             Nota01[071] := ' ';

                          if Trim(CmpNfsTenTra.Value) <> '' then
                             Nota01[072] := Trim(CmpNfsTenTra.Value)+ ' '  +Trim(CmpNfsEndTra.Value)
                          else
                             Nota01[072] := Trim(CmpNfsEndTra.Value);

                          if Trim(CmpNfsNumTra.Value) <> '' then
                             Nota01[072] := Nota01[072]+ ', ' +Trim(CmpNfsNumTra.Value);

                          if Trim(CmpNfsRefTra.Value) <> '' then
                             Nota01[072] := Nota01[072]+ ' '  +Trim(CmpNfsRefTra.Value);
                          
                          if Trim(CmpNfsBaiTra.Value) <> '' then
                             Nota01[072] := Nota01[072]+ ' '  +Trim(CmpNfsBaiTra.Value);

                          Nota01[073] := CmpNfsCidTra.Value; {CidTransp}

                          Nota01[074] := CmpNfsUfeTra.Value; {UFTransp}

                          Nota01[075] := CmpNfsInsTra.Value; {InscTransp}

                          if CmpNfsAltVol.Value > 0 then
                             Nota01[076] := Prestring(IntToStr(CmpNfsAltVol.Value),7) {QtdeVol}
                          else
                             Nota01[076] := ' ';

                          Nota01[077] := CmpNfsEspNfs.Value; {Especie}

                          Nota01[078] := CmpNfsMarNfs.Value; {Marca}

                          Nota01[079] := CmpNfsNumNfs.Value; {Numero}

                          Nota01[080] := Prestring(FormatFloat('###,###,##0.0000',CmpNfsInfBrt.Value),14); {PesBruto}

                          Nota01[081] := Prestring(FormatFloat('###,###,##0.0000',CmpNfsInfLiq.Value),14); {PesLiq}

                          Nota01[187] := Trim(CmpNfsOb1Nfs.Value);              {Obs1}

                          Nota01[188] := Trim(CmpNfsOb2Nfs.Value);              {Obs2}

                          Nota01[189] := Trim(CmpNfsOb3Nfs.Value);              {Obs3}

                          Nota01[190] := Trim(CmpNfsOb4Nfs.Value);              {Obs4}

                          Nota01[191] := Trim(CmpNfsOb5Nfs.Value);              {Obs5}

                          Nota01[192] := Trim(CmpNfsOb6Nfs.Value);              {Obs6}

                          Nota01[193] := Trim(CmpNfsOb7Nfs.Value);              {Obs7}

                          Nota01[194] := Trim(CmpNfsOb8Nfs.Value);              {Obs8}

                          Nota01[117] := IntToStr(CmpNfsCodFor.Value); {código do Fornecedor}

                          Nota01[118] := ''; {código do Vendedor}

                          Nota01[119] := ''; {SeuPed}

                          Nota01[120] := ''; {Nosso Pedido}

                          Nota01[121] := 'NumNot'; {NotaRod1}

                          Nota01[122] := 'NumNot'; {NotaRod2}

                          Nota01[210] := 'NroNot';       {Nro Formulário}

                          Nota01[211] := Trim(CmpNfsSerNot.Value);  {Serie}

                          ValorExt := fExtenso(CmpNfsTotGer.Value);

                          if Length(TrimLeft(TrimRight(ValorExt))) < 150 then
                             ValorExt := TrimLeft(TrimRight(ValorExt))+fReplicate('*',150 - Length(TrimLeft(TrimRight(ValorExt))));

                          Nota01[123] := copy(ValorExt,001,50); {Valor por Extenso 1}

                          Nota01[124] := copy(ValorExt,051,50); {Valor por Extenso 2}

                          Nota01[125] := copy(ValorExt,101,50); {Valor por Extenso 3}

                          Nota01[126] := ''; {Observações Sobre Desconto}

                          {********************************************************************************************}

                          rdprint1.OpcoesPreview.PreviewZoom := 100;
                          rdprint1.TamanhoQteLPP             := oito;
                          rdprint1.UsaGerenciadorImpr        := True;
                          rdprint1.opcoesPreview.Preview     := False;

                          rdprint1.TamanhoQteColunas  := 136;
                          rdprint1.FonteTamanhoPadrao := s17cpp;

                          {Programação dos Eventos: desliga eventos cabecalho/rodape}
                          rdprint1.OnNewPage       := nil;
                          rdprint1.OnBeforeNewPage := nil;

                          rdprint1.TamanhoQteLinhas := QtdNfs;

                          qtdimpr := 0; {Quantidade de Linhas de Itens Impressas};
                          qtitens := 0; {Indicador se Esta Sendo Impressos Itens ou Não}

                          NroNf2 := 0;  {sequencial dos Itens a Serem Impressos}

                          Lin := 0; {Linha que Esta Sendo Impressas}{Incrementos de Linhas}
                          Inc := 0; {Incrementos de Linhas}
                          Col := 0; {Posição da Coluna a ser Impressa}
                          Reg := 0; {Numero do Vetor a Ser Impresso}
                          Tam := 0; {Tamanho da String a Ser Impressa}

                          qtdnot := StrToInt(FloatToStr(EdSeqIni.value));    {Quantidade de Notas Impressas}

                          Id_CmpNfg := StrToInt(FloatToStr(EdSeqIni.value)); {Quantidade de Notas Fiscais Impressas}

                          seqnot := StrToInt(FloatToStr(EdSeqFin.value));

                          with quSQL,SQL do begin

                               Close;
                               Text := ' Select CmpNf2.NroNf2,'+
                                       '        CmpNf2.NroNot '+
                                       ' From CmpNf2'+
                                       ' Where CmpNf2.Id_CmpNfs = :Id_CmpNfs'+
                                       '   and CmpNf2.Id_CmpNfg = :Id_CmpNfg'+
                                       ' Order by CmpNf2.NroNf2';

                               with Params do begin

                                    Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                                    Params[1].AsInteger := Id_CmpNfg;

                               end;

                               Open;

                               NroNf2 := FieldbyName('NroNf2').AsInteger - 1;
                               NroNot := FieldbyName('NroNot').AsInteger;

                          end;

                          with rdprint1 do begin

                               abrir; {inicializa o arquivo de impressao...}

                               if setup then begin

                                  while Id_CmpNfg <= seqnot do begin

                                        with quSQL,SQL do begin

                                             Close;
                                             Text := ' Select Count(*) as QtdReg'+
                                                     ' From CmpNf2'+
                                                     ' Where CmpNf2.Id_CmpNfs = :Id_CmpNfs'+
                                                     '   and CmpNf2.Id_CmpNfg = :Id_CmpNfg';

                                             with Params do begin

                                                  Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                                                  Params[1].AsInteger := Id_CmpNfg;

                                             end;

                                             Open;

                                             QtiNfs := FieldbyName('QtdReg').AsInteger;

                                        end;

                                        SeqNfs := 0;

                                        if Id_CmpNfg = CmpNfsQtdNfs.Value then begin

                                           with quSQL,SQL do begin

                                                Close;
                                                Text := ' Select Count(Distinct(CmpNf4.PerIcm)) as QtdReg'+
                                                        ' From CmpNf4'+
                                                        ' Where CmpNf4.Id_CmpNfs = :Id_CmpNfs';

                                                with Params do begin

                                                     Params[0].AsInteger := CmpNfsId_CmpNfs.Value;

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
                                                           ' Where CmpNf4.Id_CmpNfs = :Id_CmpNfs'+
                                                           ' Group by CmpNf4.PerIcm'+
                                                           ' Order by CmpNf4.PerIcm';

                                                   with Params do begin

                                                        Params[0].AsInteger := CmpNfsId_CmpNfs.Value;

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
                                           if CmpNfsBasIcm.Value > 0 then
                                              Nota01[057] := Prestring(FormatFloat('###,###,##0.00',CmpNfsBasIc1.Value),14)
                                           else
                                              Nota01[057] := ' ';

                                           {ValIcms}
                                           if CmpNfsTotIcm.Value > 0 then
                                              Nota01[058] := Prestring(FormatFloat('###,###,##0.00',CmpNfsTotIc1.Value),14)
                                           else
                                              Nota01[058] := ' ';

                                           {BaseIcmsSub}
                                           if CmpNfsBasSub.Value > 0 then
                                              Nota01[059] := Prestring(FormatFloat('###,###,##0.00',CmpNfsBasSu1.Value),14)
                                           else
                                              Nota01[059] := ' ';

                                           {ValIcmsSub}
                                           if CmpNfsTotSub.Value > 0 then
                                              Nota01[060] := Prestring(FormatFloat('###,###,##0.00',CmpNfsTotSu1.Value),14)
                                           else
                                              Nota01[060] := ' ';

                                           Nota01[061] := Prestring(FormatFloat('###,###,##0.00',CmpNfsTotIt1.Value),14); {TotalProds}

                                           if CmpNfsTotFrt.Value > 0 then
                                              Nota01[062] := Prestring(FormatFloat('###,###,##0.00',CmpNfsTotFrt.Value),14)  {Frete}
                                           else
                                              Nota01[062] := ' ';

                                           if CmpNfsTotSeg.Value > 0 then
                                              Nota01[063] := Prestring(FormatFloat('###,###,##0.00',CmpNfsTotSeg.Value),14) {Seguro}
                                           else
                                              Nota01[063] := ' ';

                                           if CmpNfsTotDes.Value > 0 then
                                              Nota01[064] := Prestring(FormatFloat('###,###,##0.00',CmpNfsTotDes.Value),14) {Outras}
                                           else
                                              Nota01[064] := ' ';

                                           if CmpNfsTotIpi.Value > 0 then
                                              Nota01[065] := Prestring(FormatFloat('###,###,##0.00',CmpNfsTotIp1.Value),14) {TotalIPI}
                                           else
                                              Nota01[065] := ' ';

                                           Nota01[066] := Prestring(FormatFloat('###,###,##0.00',CmpNfsTotGe1.Value),14); {TotalNota}

                                           Nota01[126] := ''; {Descontos Gerais na Nota}

                                           Nota01[127] := ' ';

                                           end
                                        else
                                           begin

                                           {BaseIcms}
                                           Nota01[057] := '***,***,***.**';

                                           {ValIcms}
                                           Nota01[058] := '***,***,***.**';

                                           {BaseIcmsSub}
                                           Nota01[059] := '***,***,***.**';

                                           {ValIcmsSub}
                                           Nota01[060] := '***,***,***.**';

                                           Nota01[061] := '***,***,***.**';

                                           Nota01[062] := '***,***,***.**';

                                           Nota01[063] := '***,***,***.**';

                                           Nota01[064] := '***,***,***.**';

                                           Nota01[065] := '***,***,***.**';

                                           {TotalNota}
                                           Nota01[066] := '***,***,***.**';

                                           {Descontos Gerais na Nota}
                                           Nota01[126] := ' ';

                                           Nota01[127] := ' ';

                                       end;

                                       {Carregando Itens na Matriz NotaImpr}

                                        ValorExt := fExtenso(CmpNfsTotGer.Value);

                                        if Length( Trim( ValorExt ) ) < 150 then ValorExt := Trim( ValorExt )+fReplicate('*',150 - Length(Trim( ValorExt )));

                                        Nota01[123] := copy(ValorExt,001,50); {Valor por Extenso 1}

                                        Nota01[124] := copy(ValorExt,051,50); {Valor por Extenso 2}

                                        Nota01[125] := copy(ValorExt,101,50); {Valor por Extenso 3}

                                        with quSQL,SQL do begin

                                             Close;
                                             Text := ' Select CmpNf3.Id_CmpNf3,'+
                                                     '        CmpNf3.ClsIpi'+
                                                     ' From CmpNf3'+
                                                     ' Where CmpNf3.Id_CmpNfs = :Id_CmpNfs'+
                                                     '   and CmpNf3.Id_CmpNfg = :Id_CmpNfg'+
                                                     ' Order by CmpNf3.Id_CmpNf3';

                                             with Params do begin

                                                  Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                                                  Params[1].AsInteger := Id_CmpNfg;

                                             end;

                                             Open;

                                        end;

                                        quSQL.First;

                                        {CodClassfisc}

                                        i := 88;

                                        for j := 1 to 28 do begin

                                            Nota01[i] := ' ';

                                            i := i + 1;

                                        end;

                                        i := 88;

                                        rec := 0;

                                        while not quSQL.Eof do begin

                                              if Trim( quSQL.FieldbyName('ClsIpi').AsString ) <> '' then
                                                 Nota01[i] := IntToStr(quSQL.FieldbyName('Id_CmpNf3').AsInteger)+ ' - ' +quSQL.FieldbyName('ClsIpi').AsString
                                              else
                                                 Nota01[i] := ' ';

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

                                                       imp(Lin,001,'');

                                                       end
                                                    else
                                                       begin

                                                       if pos('NroFormulario',Linha) > 0 then begin

                                                          Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));   {Linha encontrada e de Final de Nota Fiscal}
                                                          Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));

                                                          Fonte := UpperCase(copy(Linha,pos('{',Linha)+1,1));

                                                          if (Col > 0) or (Inc > 0) then begin

                                                             Lin := Lin + Inc;

                                                             if Fonte = 'E' then impf(Lin,Col,Trim(CmpNfsSerSel.Value)+' '+IntToStr(NroNot),[EXPANDIDO, negrito]);
                                                             if Fonte = 'N' then impf(Lin,Col,Trim(CmpNfsSerSel.Value)+' '+IntToStr(NroNot),[NORMAL, negrito]);
                                                             if Fonte = 'C' then impf(Lin,Col,Trim(CmpNfsSerSel.Value)+' '+IntToStr(NroNot),[Comp20, negrito]);

                                                          end;

                                                          end
                                                       else
                                                          begin

                                                          if (pos('NotaCab',Linha) > 0) or (pos('NotaRod',Linha) > 0) then begin

                                                             Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));   {Linha encontrada e de Final de Nota Fiscal}
                                                             Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));

                                                             Fonte := UpperCase(copy(Linha,pos('{',Linha)+1,1));
                                                             
                                                             if (Col > 0) or (Inc > 0) then begin

                                                                Lin := Lin + Inc;

                                                                if Fonte = 'E' then impf(Lin,Col,fNumZeros(IntToStr(CmpNfsNroNfs.Value),6),[EXPANDIDO, negrito]);
                                                                if Fonte = 'N' then impf(Lin,Col,fNumZeros(IntToStr(CmpNfsNroNfs.Value),6),[NORMAL, negrito]);
                                                                if Fonte = 'C' then impf(Lin,Col,fNumZeros(IntToStr(CmpNfsNroNfs.Value),6),[Comp20, negrito]);
                                                                
                                                             end;

                                                             end
                                                          else
                                                             begin

                                                             if (pos('#00040',Linha) = 0) and (qtitens = 0) then begin  {A Linha que Esta Sendo Impressa não e a de Itens}

                                                                Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));   {Linha encontrada e de Incremento de Saltos de Linhas}
                                                                Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));
                                                                reg := StrToInt(copy(Linha,pos('#',Linha)+1,5));

                                                                Fonte := UpperCase(copy(Linha,pos('{',Linha)+1,1));
                                                                
                                                                if (Col > 0) or (Inc > 0) then begin

                                                                   Lin := Lin + Inc;

                                                                   if (reg >= 131) and (reg <= 160) then begin

                                                                      if Id_CmpNfg = CmpNfsQtdNfs.Value then begin

                                                                         if Fonte = 'E' then impf(Lin,Col,Nota01[reg],[EXPANDIDO]);
                                                                         if Fonte = 'N' then impf(Lin,Col,Nota01[reg],[NORMAL]);
                                                                         if Fonte = 'C' then impf(Lin,Col,Nota01[reg],[Comp20]);
                                                     
                                                                         end
                                                                      else
                                                                         begin

                                                                         if (reg = 151) then begin

                                                                            if Fonte = 'E' then impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[EXPANDIDO]);
                                                                            if Fonte = 'N' then impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[NORMAL]);
                                                                            if Fonte = 'C' then impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp20]);

                                                                            end
                                                                         else
                                                                            begin

                                                                            if (reg >= 131) and (reg <= 140) then begin

                                                                               if Fonte = 'E' then impf(Lin,Col,' ',[EXPANDIDO]);
                                                                               if Fonte = 'N' then impf(Lin,Col,' ',[NORMAL]);
                                                                               if Fonte = 'C' then impf(Lin,Col,' ',[Comp20]);

                                                                               end
                                                                            else
                                                                               begin

                                                                               if (reg >= 141) and (reg <= 150) then begin

                                                                                  if Fonte = 'E' then impf(Lin,Col,' ',[EXPANDIDO]);
                                                                                  if Fonte = 'N' then impf(Lin,Col,' ',[NORMAL]);
                                                                                  if Fonte = 'C' then impf(Lin,Col,' ',[Comp20]);

                                                                                  end
                                                                               else
                                                                                  begin

                                                                                  if (reg >= 151) and (reg <= 160) then begin

                                                                                     if Fonte = 'E' then impf(Lin,Col,' ',[EXPANDIDO]);
                                                                                     if Fonte = 'N' then impf(Lin,Col,' ',[NORMAL]);
                                                                                     if Fonte = 'C' then impf(Lin,Col,' ',[Comp20]);

                                                                                  end;
                                                                               end;
                                                                            end;
                                                                         end;
                                                                      end;

                                                                      end
                                                                   else
                                                                      begin

                                                                      if Fonte = 'E' then impf(Lin,Col,Nota01[reg],[EXPANDIDO]);
                                                                      if Fonte = 'N' then impf(Lin,Col,Nota01[reg],[NORMAL]);
                                                                      if Fonte = 'C' then impf(Lin,Col,Nota01[reg],[Comp20]);

                                                                   end;
                                                                end;

                                                                end
                                                             else
                                                                begin

                                                                if qtitens < 2 then begin

                                                                   qtitens := 1;

                                                                   NroNf2 := NroNf2 + 1;
                                                                   SeqNfs := SeqNfs + 1;

                                                                   if qtdimpr = 0 then qtdimpr := Lin;

                                                                   with quSQL,SQL do begin

                                                                        Close;
                                                                        Text := ' Select CmpNf2.CodClp,'+
                                                                                '        CmpNf2.CodGru,'+
                                                                                '        CmpNf2.CodSub,'+
                                                                                '        CmpNf2.CodPro,'+
                                                                                '        CmpNf2.Id_CmpNfg,'+
                                                                                '        CmpNf2.DesNf2,'+
                                                                                '        CmpNf2.ObsNf2,'+
                                                                                '        CmpNf2.RefNf2,'+
                                                                                '        CmpNf2.Id_CmpNf3,'+
                                                                                '        CmpNf2.ClsIpi,'+
                                                                                '        CmpNf2.CodSt1,'+
                                                                                '        CmpNf2.CodSt2,'+
                                                                                '        CmpNf2.CodCfo,'+
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
                                                                                ' Where CmpNf2.Id_CmpNfs = :Id_CmpNfs'+
                                                                                '   and CmpNf2.NroNf2 = :NroNf2';

                                                                        with Params do begin

                                                                             Params[0].AsInteger := CmpNfsId_CmpNfs.Value;
                                                                             Params[1].AsInteger := NroNf2;

                                                                        end;

                                                                        Open;

                                                                   end;

                                                                   if Trim( quSql.FieldbyName('CodGru').AsString ) <> '' then begin

                                                                      {Item a Ser Impresso Pertence a Nota Fiscal}
                                                                      if quSql.FieldbyName('Id_CmpNfg').AsInteger = Id_CmpNfg then begin

                                                                         {Produto}
                                                                         if ImpRef = 'Nao' then begin

                                                                            if (quSql.FieldbyName('CodClp').AsString <> '8') and (quSql.FieldbyName('CodClp').AsString <> '9') then
                                                                               Nota01[040] := quSql.FieldbyName('CodGru').AsString+ '.' +quSql.FieldbyName('CodSub').AsString+ '.' +quSql.FieldbyName('CodPro').AsString
                                                                            else
                                                                               Nota01[040] := '';

                                                                            end   
                                                                         else
                                                                            Nota01[040] := Trim( quSql.FieldbyName('RefNf2').AsString );

                                                                         {Descr}
                                                                         Nota01[041] := Trim(quSql.FieldbyName('DesNf2').AsString);

                                                                         {Referência}

                                                                         if Trim( quSql.FieldbyName('RefNf2').AsString ) <> '' then
                                                                            Nota01[052] := Trim( quSql.FieldbyName('RefNf2').AsString )
                                                                         else
                                                                            Nota01[052] := ' ';

                                                                         {ClassFisc}
                                                                         if Trim( quSQL.FieldbyName('ClsIpi').AsString ) <> '' then
                                                                            Nota01[042] := fLimpaStr( quSql.FieldbyName('ClsIpi').AsString )
                                                                         else
                                                                            Nota01[042] := ' ';

                                                                         {CFOP}
                                                                         if Trim( quSQL.FieldbyName('CodCfo').AsString ) <> '' then
                                                                            Nota01[209] := fLimpaStr( quSql.FieldbyName('CodCfo').AsString )
                                                                         else
                                                                            Nota01[209] := ' ';

                                                                         if Trim( quSQL.FieldbyName('Id_CmpNf3').AsString ) <> '' then
                                                                            Nota01[207] := IntToStr(quSQL.FieldbyName('Id_CmpNf3').AsInteger)
                                                                         else
                                                                            Nota01[207] := ' ';

                                                                         {St1}
                                                                         Nota01[043] := quSql.FieldbyName('CodSt1').AsString;

                                                                         {St2}
                                                                         Nota01[044] := quSql.FieldbyName('CodSt2').AsString;

                                                                         {Unidade}
                                                                         Nota01[045] := quSql.FieldbyName('CodUnd').AsString;

                                                                         {Qtde}

                                                                         if fEncDecimal(quSql.FieldbyName('QtpNf2').AsFloat) > 0 then
                                                                            Nota01[046] := Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpNf2').AsFloat),12)
                                                                         else
                                                                            Nota01[046] := Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('QtpNf2').AsFloat),12);

                                                                         {Unit}
                                                                         Nota01[047] := Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('VluNf2').AsFloat),12);

                                                                         {Total}
                                                                         Nota01[048] := Prestring(FormatFloat('###,###,##0.00',quSql.FieldbyName('TotIte').AsFloat),12);

                                                                         {AlIcms}
                                                                         if quSql.FieldbyName('TrbIcm').AsString = 'Sim' then
                                                                            Nota01[049] := Prestring(FormatFloat('##0',quSql.FieldbyName('IcmNf2').AsFloat),3)
                                                                         else
                                                                            Nota01[049] := ' ';

                                                                         {AlIpi}
                                                                         if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                                                            Nota01[050] := Prestring(FormatFloat('##0',quSql.FieldbyName('IpiNf2').AsFloat),3)
                                                                         else
                                                                            Nota01[050] := ' ';

                                                                         {ValIpi}
                                                                         if quSql.FieldbyName('TrbIcm').AsString = 'Sim' then
                                                                            Nota01[051] := Prestring(FormatFloat('###,##0.00',fRound(quSql.FieldbyName('TotIpi').AsFloat,2)),10)
                                                                         else
                                                                            begin

                                                                            if quSql.FieldbyName('TotIpi').AsFloat > 0 then
                                                                               Nota01[051] := Prestring(FormatFloat('###,##0.00',fRound(quSql.FieldbyName('TotIpi').AsFloat,2)),10)
                                                                            else
                                                                               Nota01[051] := ' ';

                                                                         end;

                                                                         rec := r;

                                                                         i := rec + 19;

                                                                         Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));   {Linha encontrada e de Incremento de Saltos de Linhas}

                                                                         Lin := Lin + 1;

                                                                         while r <= i do begin

                                                                               Linha := ArqTexto[r];

                                                                               if Trim( Linha ) <> '' then begin

                                                                                  Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));
                                                                                  Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));
                                                                                  reg := StrToInt(copy(Linha,pos('#',Linha)+1,5));
                                                                                  Tam := StrToInt(copy(Linha,pos('#',Linha)+6,3));

                                                                                  Fonte := UpperCase(copy(Linha,pos('{',Linha)+1,1));
                                                                                  
                                                                                  if Tam > 0 then begin

                                                                                     if (Col > 0) or (Inc > 0) then begin

                                                                                        if pos('Sim',Linha) > 0 then begin

                                                                                           {Verifica se a Linha que Esta Sendo Impressa não e a de Segunda Descrição ou de Titulos de Descontos}
                                                                                           if (Reg <> 52) and (Reg <> 126) and (Reg <> 127) and (Reg <> 128) then begin

                                                                                              if Fonte = 'E' then impf(Lin,Col,copy(Nota01[reg],1,Tam),[EXPANDIDO]);
                                                                                              if Fonte = 'N' then impf(Lin,Col,copy(Nota01[reg],1,Tam),[NORMAL]);
                                                                                              if Fonte = 'C' then impf(Lin,Col,copy(Nota01[reg],1,Tam),[Comp20]);

                                                                                              end
                                                                                           else
                                                                                              begin

                                                                                              if (Reg = 52) and (Trim( quSql.FieldbyName('RefNf2').AsString ) <> '') then begin

                                                                                                 {Descr2}
                                                                                                 Nota01[052] := Trim( quSql.FieldbyName('RefNf2').AsString );

                                                                                                 Lin := Lin + Inc;

                                                                                                 if Fonte = 'E' then impf(Lin,Col,copy(Nota01[reg],1,Tam),[EXPANDIDO]);
                                                                                                 if Fonte = 'N' then impf(Lin,Col,copy(Nota01[reg],1,Tam),[NORMAL]);
                                                                                                 if Fonte = 'C' then impf(Lin,Col,copy(Nota01[reg],1,Tam),[Comp20]);

                                                                                              end;

                                                                                              if (Reg = 128) and (Trim( quSql.FieldbyName('ObsNf2').AsString ) <> '') then begin

                                                                                                 {Descr2}
                                                                                                 Nota01[128] := Trim( copy(quSql.FieldbyName('ObsNf2').AsString,1,Tam));

                                                                                                 Lin := Lin + Inc;

                                                                                                 if Fonte = 'E' then impf(Lin,Col,Nota01[reg],[EXPANDIDO]);
                                                                                                 if Fonte = 'N' then impf(Lin,Col,Nota01[reg],[NORMAL]);
                                                                                                 if Fonte = 'C' then impf(Lin,Col,Nota01[reg],[Comp20]);

                                                                                                 if Trim( copy(quSql.FieldbyName('ObsNf2').AsString,Tam+1,Tam )) <> '' then begin

                                                                                                    {Descr2}
                                                                                                    Nota01[128] := Trim(copy(quSql.FieldbyName('ObsNf2').AsString,Tam+1,Tam));

                                                                                                    Lin := Lin + 1;

                                                                                                    if Fonte = 'E' then impf(Lin,Col,Nota01[reg],[EXPANDIDO]);
                                                                                                    if Fonte = 'N' then impf(Lin,Col,Nota01[reg],[NORMAL]);
                                                                                                    if Fonte = 'C' then impf(Lin,Col,Nota01[reg],[Comp20]);

                                                                                                 end;

                                                                                                 if Trim( copy(quSql.FieldbyName('ObsNf2').AsString,(Tam+Tam+1),Tam) ) <> '' then begin

                                                                                                    {Descr2}
                                                                                                    Nota01[128] := Trim(copy(quSql.FieldbyName('ObsNf2').AsString,(Tam+Tam+1),Tam));

                                                                                                    Lin := Lin + 1;

                                                                                                    if Fonte = 'E' then impf(Lin,Col,Nota01[reg],[EXPANDIDO]);
                                                                                                    if Fonte = 'N' then impf(Lin,Col,Nota01[reg],[NORMAL]);
                                                                                                    if Fonte = 'C' then impf(Lin,Col,Nota01[reg],[Comp20]);

                                                                                                 end;
                                                                                              end;

                                                                                              (*
                                                                                              if ( (Reg = 126) or (Reg = 127) ) then begin

                                                                                                 if (CmpNfsTotDsr.Value > 0) and (SeqNfs = QtiNfs) then begin

                                                                                                    { Só ira Imprimir o Campo de Descontos na Ultima Nota e se foi Efetuado Descontos na Nota }

                                                                                                    Lin := Lin + Inc;

                                                                                                    if Fonte = 'E' then impf(Lin,Col,Nota01[reg],[EXPANDIDO]);
                                                                                                    if Fonte = 'N' then impf(Lin,Col,Nota01[reg],[NORMAL]);
                                                                                                    if Fonte = 'C' then impf(Lin,Col,Nota01[reg],[Comp20]);

                                                                                                 end;
                                                                                              end; *)
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
                                                                         begin  {Finalizar Nota para Impressão da Proxima Nota}

                                                                         NroNf2 := NroNf2 - 1;

                                                                         r := r + 19;

                                                                         qtitens := 2;

                                                                      end;

                                                                      end
                                                                   else
                                                                      begin {Não Ha Mais Itens para Impressão}

                                                                      NroNf2 := NroNf2 - 1;

                                                                      r := r + 19;

                                                                      qtitens := 0;

                                                                   end;

                                                                   end
                                                                else
                                                                   begin

                                                                   reg := StrToInt(copy(Linha,pos('#',Linha)+1,5));
                                                                   Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));
                                                                   Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));

                                                                   Fonte := UpperCase(copy(Linha,pos('{',Linha)+1,1));
                                                                   
                                                                   if (Col > 0) or (Inc > 0) then begin

                                                                      if (reg >= 57) and (reg <= 66) then begin

                                                                         Lin := Lin + Inc;

                                                                         if Fonte = 'E' then impf(Lin,Col,Nota01[reg],[EXPANDIDO]);
                                                                         if Fonte = 'N' then impf(Lin,Col,Nota01[reg],[NORMAL]);
                                                                         if Fonte = 'C' then impf(Lin,Col,Nota01[reg],[Comp20]);

                                                                         end
                                                                      else
                                                                         begin

                                                                         if (Reg = 67) and (Id_CmpNfg < CmpNfsQtdNfs.Value) then begin

                                                                            Lin := Lin + Inc;

                                                                            if Fonte = 'E' then impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[EXPANDIDO]);
                                                                            if Fonte = 'N' then impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[NORMAL]);
                                                                            if Fonte = 'C' then impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp20]);

                                                                            end
                                                                         else
                                                                            begin

                                                                            if (Reg >= 68) and (Reg <= 81) and (Id_CmpNfg < CmpNfsQtdNfs.Value) then begin

                                                                               Lin := Lin + Inc;

                                                                               if Fonte = 'E' then impf(Lin,Col,' ',[EXPANDIDO]);
                                                                               if Fonte = 'N' then impf(Lin,Col,' ',[NORMAL]);
                                                                               if Fonte = 'C' then impf(Lin,Col,' ',[Comp20]);

                                                                               end
                                                                            else
                                                                               begin

                                                                               if (reg >= 187) and (reg <= 194) and (Id_CmpNfg < CmpNfsQtdNfs.Value) then begin

                                                                                  if reg = 187 then
                                                                                     Linha := 'Continua '+Trim( IntToStr(qtdnot) )+'/'+Trim( IntToStr(CmpNfsQtdNfs.Value) )
                                                                                  else
                                                                                     Linha := ' ';

                                                                                  Lin := Lin + Inc;

                                                                                  if Fonte = 'E' then impf(Lin,Col,Linha,[EXPANDIDO]);
                                                                                  if Fonte = 'N' then impf(Lin,Col,Linha,[NORMAL]);
                                                                                  if Fonte = 'C' then impf(Lin,Col,Linha,[Comp20]);

                                                                                  end
                                                                               else
                                                                                  begin

                                                                                  if (reg >= 82) or (reg <= 128) or (reg >= 187) then begin

                                                                                     Lin := Lin + Inc;

                                                                                     if Fonte = 'E' then impf(Lin,Col,Nota01[Reg],[EXPANDIDO]);
                                                                                     if Fonte = 'N' then impf(Lin,Col,Nota01[Reg],[NORMAL]);
                                                                                     if Fonte = 'C' then impf(Lin,Col,Nota01[Reg],[Comp20]);

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

                                        NroNot := NroNot + 1;                                  

                                        qtdnot := qtdnot + 1;

                                        Id_CmpNfg := Id_CmpNfg + 1;

                                  end;

                                  Fechar;  {Finaliza e inicia impressão ou preview}

                               end;   
                          end;
                    
                          rdprint1.TamanhoQteLinhas := 66; {Voltar o valor original...}

                          SeqError := 0;

                          if CmpNfsFlgImp.Value = 'Nao' then begin
                    
                             if fMsg('Nota Impressa Corretamente','O') then begin

                                CmpNfs.Edit;

                                CmpNfsFlgAtu.Value := 'F';
                             
                                CmpNfsFlgImp.Value := 'Sim';

                                with CmpNfs do begin

                                     fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                                     try

                                        ApplyUpdates; {Tenta aplicar as alterações};

                                        fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                     except

                                        fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                        if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;

                                        CmpNfs.Close;
                                        CmpNfs.Open;

                                        EdSeqIni.SetFocus;

                                        raise;

                                     end;

                                     CommitUpdates; {sucesso!, limpa o cache...}

                                end;

                                CmpNfs.Close;
                                CmpNfs.Open;

                                close;

                                end
                             else
                                EdSeqIni.SetFocus;

                             end
                          else
                             Close;

                       finally

                          if SeqError = 1 then begin

                             rdprint1.Abortar;

                             rdprint1.TamanhoQteLinhas := 66;

                          end;

                          if CmpNfs.State = dsBrowse then CmpNfs.Edit;
                          
                          EdSeqIni.SetFocus;

                       end;

                       close;

                       end
                    else
                       fmsgErro('Arquivo de Configuração da Nota Fiscal não Encontrado. Consulte o Administrador do Sistema para Maiores Informações',EdSeqIni);

                 end;
              end;
              
              end
           else
              fmsgErro('Sequencia Final Informado é Menor que a Sequencia Inicial.',EdSeqFin);

           end
        else
           fmsgErro('Sequencias Informadas estão Incorretas para as Notas Emitidas para o Pedido.',EdSeqIni);

        end
     else
        fmsgErro('Número de Sequencia Final de Nota Fiscal Informado Fora da Sequencia de Notas Impressas para o Pedido.',EdSeqFin);

     end
  else
     fmsgErro('Número de Sequencia Inicial de Nota Fiscal Informado Fora da Sequencia de Notas Impressas para o Pedido.',EdSeqIni);
end;

procedure TfmManSro.FormShow(Sender: TObject);
begin
  inherited;

  EdQtdNfs.Caption := IntToStr(CmpNfsQtdNfs.Value);

  GerEmp.Close;
  GerEmp.Params[0].AsInteger := CmpNfsCodEmp.Value;
  GerEmp.Open;

  CmpNfs.Edit;

  if GerEmpFlgSel.Value = 'Sim' then begin

     CmpNfsNroNot.Value := GerEmpNroNot.Value + 1;

     if CmpNfsNroNot.Value > 0 then
        EdNroNot.Text := IntToStr(CmpNfsNroNot.Value)
     else
        EdNroNot.Text := '0';

  end;
  
  if GerEmpFlgSel.Value = 'Nao' then begin

     Label8.Visible := False;

     EdNroNot.Visible := False;
     
  end;

  CmpNfsSeqIni.Value := 1;
  CmpNfsSeqFin.Value := CmpNfsQtdNfs.Value;

  EdSeqIni.Value := 1;
  EdSeqFin.Value := CmpNfsQtdNfs.Value;

  NroIni := 1;
  NroFin := CmpNfsQtdNfs.Value;
  
  EdSeqIni.SetFocus;

end;

procedure TfmManSro.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  if CmpNfs.State <> dsBrowse then CmpNfs.CancelUpdates;
end;

end.
