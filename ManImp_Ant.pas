unit ManImp_Ant;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Db,
  DBTables, Wwquery, RDprint, dxExEdtr, FShowpadrao, dxDBColorCurrencyEdit;

type
  TfmManImp = class(TfmShowPadrao)
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
    RDprint1: TRDprint;
    quSQL: TwwQuery;
    EdNroNfs: TdxDBColorCurrencyEdit;
    procedure bretornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bcontinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    {Public declarations}
  end;

var
  fmManImp: TfmManImp;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGDB, ManNot, ManPri;

{$R *.DFM}

procedure TfmManImp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;

  if key = 27 then bRetornar.OnClick(Sender);

  if key = 123 then bContinuar.OnClick(Sender);

end;

procedure TfmManImp.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManImp.bcontinuarClick(Sender: TObject);
var
ArqTexto : TStringList;
Nota01: array[1..160] of string;
Nota02: array[1..160] of string;
NomCli,CgcCli,InsCli,TefCli,CefCli,EnfCli,NrfCli,BafCli,CifCli,UffCli : string;
EndEnt1,EndEnt2,EndCob1,EndCob2,Linha,FonCli,Pt1Cli,Fo1Cli,sCanc,sText : string;
TecCli,EncCli,NrcCli,BacCli,CicCli,UfcCli,CecCli,ValorExt,ValorEx1,ValorEx2,ValorEx3,sContinuar : string;
Tam,Reg,Inc,Col,Lin,r,i,j,rec,qtdIte,qtdNfs,qtdLin,qtdnfis,qtdimpr,qtitens,SeqPe2,SeqNfs,QtiNfs,qtdnot,CodCli : integer;
begin
  if fmManNot.FatPedNroNfs.Value > 0 then begin

     sContinuar := 'N';

     qtdnfs := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

     if EdNroNfs.Value > qtdnfs then begin

        if fMsgConf('Nota Fiscal Informada Fora de Sequencia. Proxima '+Trim( IntToStr(QtdNfs) )+'. Confirma ?','E') = 'SIM' then
           sContinuar := 'S'
        else
           begin

           fmManNot.FatPedNroNfs.Value := QtdNfs;

           EdNroNfs.SetFocus;

        end;

        end
     else
        begin

        if EdNroNfs.Value < qtdnfs then begin

           if fMsgConf('Nota Fiscal Informada Fora de Sequencia. Proxima '+Trim( IntToStr(QtdNfs) )+'. Confirma ?','E') = 'SIM' then
              sContinuar := 'S'
           else
              sContinuar := 'N';

           end
        else
           sContinuar := 'S';

     end;

     if sContinuar = 'S' then begin

        if fmManNot.FatPed.State = dsBrowse then fmManNot.FatPed.Edit;
        
        fmManNot.FatPedFlgNfs.Value := '*';

        with fmManNot.FatPed do begin

             fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

             try

                ApplyUpdates; {Tenta aplicar as alterações};

                fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

             except

                fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                sContinuar := 'N';

                if fmManNot.FatPed.State = dsBrowse then fmManNot.FatPed.Edit;

                EdNroNfs.SetFocus;

                raise;

             end;

             CommitUpdates; {sucesso!, limpa o cache...}

        end;

        fmManNot.FatPed.Close;
        fmManNot.FatPed.Open;

        fmManNot.FatPe2.Close;
        fmManNot.FatPe2.Open;

        fmManNot.FatPed.Edit;

        sContinuar := 'S';

     end;

     if sContinuar = 'S' then begin

        if fMsg('Confirma Emissão da Nota Fiscal?','O') then begin

           if FileExists('C:\Emerion\LINCOL.TXT') then begin

              ArqTexto := TStringList.Create;
              ArqTexto.LoadFromFile('C:\Emerion\LINCOL.TXT');

              qtdLin := ArqTexto.Count - 1; {Quantidade de Linhas no Arquivo LINCOL.TXT}

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select QtdLin,QtdNot From FatPar';
                   Open;

                   QtdIte := quSql.FieldbyName('QtdLin').AsInteger;
                   QtdNfs := quSql.FieldbyName('QtdNot').AsInteger;

              end;

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select PedRes.CodCli From PedRes'+
                           ' Where PedRes.CodEmp = :CodEmp'+
                           '   and PedRes.DteRes = :DteRes'+
                           '   and PedRes.NumRes = :NumRes';

                   with Params do begin

                        Params[0].AsInteger  := fmManNot.FatPedCodEmp.Value;
                        Params[1].AsDateTime := fmManNot.FatPedDteRes.Value;
                        Params[2].AsInteger  := fmManNot.FatPedNumRes.Value;

                   end;

                   Open;

                   CodCli := FieldbyName('CodCli').AsInteger;

              end;

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select FinCli.NomCli,'+
                           '        FinCli.CgcCli,'+
                           '        FinCli.InsCli,'+
                           '        FinCli.TefCli,'+
                           '        FinCli.TecCli,'+
                           '        FinCli.EnfCli,'+
                           '        FinCli.EncCli,'+
                           '        FinCli.NrfCli,'+
                           '        FinCli.NrcCli,'+
                           '        FinCli.BafCli,'+
                           '        FinCli.BacCli,'+
                           '        FinCli.CifCli,'+
                           '        FinCli.CicCli,'+
                           '        FinCli.UffCli,'+
                           '        FinCli.UfcCli,'+
                           '        FinCli.CefCli,'+
                           '        FinCli.CecCli,'+
                           '        FinCli.Pt1Cli,'+
                           '        FinCli.Fo1Cli From FinCli Where FinCli.CodCli = '''+ IntToStr( CodCli ) +'''';
                   Open;

                   NomCli := FieldbyName('NomCli').AsString;
                   CgcCli := FieldbyName('CgcCli').AsString;
                   InsCli := FieldbyName('InsCli').AsString;
                   TefCli := FieldbyName('TefCli').AsString;
                   TecCli := FieldbyName('TecCli').AsString;
                   EnfCli := FieldbyName('EnfCli').AsString;
                   EncCli := FieldbyName('EncCli').AsString;
                   NrfCli := FieldbyName('NrfCli').AsString;
                   NrcCli := FieldbyName('NrcCli').AsString;
                   BafCli := FieldbyName('BafCli').AsString;
                   BacCli := FieldbyName('BacCli').AsString;
                   CifCli := FieldbyName('CifCli').AsString;
                   CicCli := FieldbyName('CicCli').AsString;
                   UffCli := FieldbyName('UffCli').AsString;
                   UfcCli := FieldbyName('UfcCli').AsString;
                   CefCli := FieldbyName('CefCli').AsString;
                   CecCli := FieldbyName('CecCli').AsString;

                   Pt1Cli := FieldbyName('Pt1Cli').AsString;
                   Fo1Cli := FieldbyName('Fo1Cli').AsString;

              end;

              if Trim( NomCli ) <> '' then begin
              
                 EndCob2 := '';
                 EndEnt2 := '';

                 if Trim( TecCli ) <> '' then EndCob1 := Trim( TecCli );

                 EndCob1 := EndCob1+ ' ' + Trim( EncCli )+' No. '+Trim( NrcCli )+' '+
                                           Trim( BacCli )+' - '+Trim( CicCli )+' '+
                                           Trim( UfcCli )+' Cep '+Trim( CecCli );

                 if Trim( fmManNot.FatPedTenCli.Value ) <> '' then EndEnt1 := Trim( fmManNot.FatPedTenCli.Value );

                 EndEnt1 := EndEnt1+ ' ' + Trim( fmManNot.FatPedEndCli.Value )+ ' No. ' +Trim( fmManNot.FatPedNumCli.Value )+ ' ' +
                                           Trim( fmManNot.FatPedBaiCli.Value )+ ' - '   +Trim( fmManNot.FatPedCidCli.Value )+ ' ' +
                                           Trim( fmManNot.FatPedUfeCli.Value )+ ' Cep ' +Trim( fmManNot.FatPedCepCli.Value );

                 if Trim( Pt1Cli ) <> '' then
                    FonCli := '('+Trim( Pt1Cli )+')'+Trim( Fo1Cli )
                 else
                    FonCli := Trim( Fo1Cli );

                 Nota01[001] := 'NumNot';
                 Nota02[001] := 'Comp12';

                 Nota01[002] := fmManNot.FatPedFlgSai.Value; {Saida}
                 Nota02[002] := 'Comp12';

                 Nota01[003] := fmManNot.FatPedFlgEnt.Value; {Entrada}
                 Nota02[003] := 'Comp12';

                 Nota01[004] := fmManNot.FatPedDesNat.Value; {NatOper}
                 Nota02[004] := 'Comp12';

                 if Trim( fmManNot.FatPedCodCf2.Value ) <> '' then {Cfop}
                    Nota01[005] := Trim( fmManNot.FatPedCodCf1.Value )+'/'+Trim( fmManNot.FatPedCodCf2.Value )
                 else
                    Nota01[005] := Trim( fmManNot.FatPedCodCf1.Value );

                 Nota02[005] := 'Comp12';

                 Nota01[006] := '';
                 Nota02[006] := 'Comp12';

                 Nota01[007] := fmManNot.FatPedInsSub.Value; {InscEstSubTrib}
                 Nota02[007] := 'Comp12';

                 Nota01[008] := NomCli;  {Nome do Cliente}
                 Nota02[008] := 'Comp12';

                 CgcCli := fLimpaStr(CgcCli);

                 if Trim(fmManNot.FatPedUfeFat.Value) <> 'EX' then begin

                    if Length( Trim(CgcCli) ) <= 11 then
                       Nota01[009] := copy(CgcCli,1,3)+'.'+copy(CgcCli,4,3)+'.'+
                                      copy(CgcCli,7,3)+'-'+copy(CgcCli,10,2)
                    else
                       Nota01[009] := copy(CgcCli,01,2)+'.'+copy(CgcCli,3,3)+'.'+
                                      copy(CgcCli,06,3)+'/'+copy(CgcCli,9,4)+'-'+
                                      copy(CgcCli,13,2);

                    end
                 else
                    Nota01[009] := ' ';
                    
                 Nota02[009] := 'Comp12';

                 Nota01[010] := DateToStr(fmManNot.FatPedDteFat.Value); {DataEmis}
                 Nota02[010] := 'Comp12';

                 Nota01[011] := Trim( TEfCli ) + ' ' + Trim( EnfCli ) + ', '+ Trim( NrfCli ); {Endereco}
                 Nota02[011] := 'Comp12';

                 Nota01[012] := BafCli; {Bairro}
                 Nota02[012] := 'Comp12';

                 if Trim( CefCli ) <> '' then {Cep}
                    Nota01[013] := copy(CefCli,1,5)+ '-' +copy(CefCli,6,3)
                 else
                    Nota01[013] := ' ';
                 
                 Nota02[013] := 'Comp12';

                 Nota01[014] := '';                          {DataSai}
                 Nota02[014] := '';

                 Nota01[015] := CifCli; {Cidade}
                 Nota02[015] := 'Comp12';

                 Nota01[016] := FonCli;                      {Fone}
                 Nota02[016] := 'Comp12';

                 {Uf}
                 if Trim(fmManNot.FatPedUfeFat.Value) <> 'EX' then
                    Nota01[017] := UffCli
                 else
                    Nota01[017] := ' ';
                    
                 Nota02[017] := 'Comp12';

                 {InscEst}
                 if Trim(fmManNot.FatPedUfeFat.Value) <> 'EX' then
                    Nota01[018] := InsCli
                 else
                    Nota01[018] := ' ';
                    
                 Nota02[018] := 'Comp12';

                 Nota01[019] := '';                          {Hora da Saida}
                 Nota02[019] := '';

                 i := 131;

                 rec := 0;

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select FatPe3.NroPe3,'+
                              '        FatPe3.DtvPe3,'+
                              '        FatPe3.VlpPe3 From FatPe3'+
                              ' Where FatPe3.CodEmp = :CodEmp'+
                              '   and FatPe3.DteRes = :DteRes'+
                              '   and FatPe3.NumRes = :NumRes'+
                              '   and FatPe3.SeqLib = :SeqLib'+
                              '   and FatPe3.SeqFat = :SeqFat'+
                              ' Order by FatPe3.NroPe3';

                      with Params do begin

                           Params[0].AsInteger  := fmManNot.FatPedCodEmp.Value;
                           Params[1].AsDateTime := fmManNot.FatPedDteRes.Value;
                           Params[2].AsInteger  := fmManNot.FatPedNumRes.Value;
                           Params[3].AsInteger  := fmManNot.FatPedSeqLib.Value;
                           Params[4].AsInteger  := fmManNot.FatPedSeqFat.Value;

                      end;

                      Open;
                      First;

                 end;

                 while not quSQL.Eof do begin

                       Nota01[i] := fNumZeros(IntToStr(fmManNot.FatPedNroNfs.Value),6) + '/' + FNumZeros(IntToStr(quSQL.FieldbyName('NroPe3').AsInteger),3); {Número}
                       Nota02[i] := 'Comp12';

                       i := i + 1;

                       if rec > 8 then
                          quSQL.Last
                       else
                          quSQL.Next;

                 end;

                 i := 141;

                 quSQL.First;

                 while not quSQL.Eof do begin

                       Nota01[i] := quSQL.FieldbyName('DtvPe3').AsString; {Vencimento}
                       Nota02[i] := 'Comp12';

                       i := i + 1;

                       if rec > 8 then
                          quSQL.Last
                       else
                          quSQL.Next;

                 end;

                 i := 151;

                 quSQL.First;

                 while not quSQL.Eof do begin

                       Nota01[i] := Prestring(FormatFloat('###,###,##0.00',quSQL.FieldbyName('VlpPe3').AsFloat),14); {Valor}
                       Nota02[i] := 'Comp12';

                       i := i + 1;

                       if rec > 8 then
                          quSQL.Last
                       else
                          quSQL.Next;

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

                 Nota01[053] := fmManNot.FatPedTxfIpi.Value;  {TextIpi}
                 Nota02[053] := 'Comp20';

                 Nota01[054] := fmManNot.FatPedTxfIcm.Value;  {TextIcm}
                 Nota02[054] := 'Comp20';

                 Nota01[055] := 'Entrega: '+EndEnt1;          {Entrega_1}
                 Nota02[055] := 'Comp20';

                 Nota01[056] := 'Entrega: '+EndEnt2;          {Entrega_2}
                 Nota02[056] := 'Comp20';

                 Nota01[067] := fmManNot.FatPedNomTra.Value; {NomeTransp}
                 Nota02[067] := 'Comp12';

                 Nota01[068] := fmManNot.FatPedTipFrt.Value; {FretePc}
                 Nota02[068] := 'Comp12';

                 Nota01[069] := fmManNot.FatPedPlcTra.Value; {Placa}
                 Nota02[069] := 'Comp12';

                 Nota01[070] := fmManNot.FatPedUfePlc.Value; {UfPlaca}
                 Nota02[070] := 'Comp12';

                 if Trim( fmManNot.FatPedCgcTra.Value ) <> '' then

                    Nota01[071] := copy(fmManNot.FatPedCgcTra.Value,01,2)+'.'+copy(fmManNot.FatPedCgcTra.Value,3,3)+'.'+
                                   copy(fmManNot.FatPedCgcTra.Value,06,3)+'/'+copy(fmManNot.FatPedCgcTra.Value,9,4)+'-'+
                                   copy(fmManNot.FatPedCgcTra.Value,13,2)

                 else
                    Nota01[071] := ' ';

                 Nota02[071] := 'Comp12';

                 Nota01[072] := Trim( fmManNot.FatPedTenTra.Value ) + ' ' + Trim( fmManNot.FatPedEndTra.Value ) + ', ' + Trim( fmManNot.FatPedNumTra.Value ) + ' ' + Trim( fmManNot.FatPedBaiTra.Value );
                 Nota02[072] := 'Comp12';

                 Nota01[073] := fmManNot.FatPedCidTra.Value; {CidTransp}
                 Nota02[073] := 'Comp12';

                 Nota01[074] := fmManNot.FatPedUfeTra.Value; {UFTransp}
                 Nota02[074] := 'Comp12';

                 Nota01[075] := fmManNot.FatPedInsTra.Value; {InscTransp}
                 Nota02[075] := 'Comp12';

                 // De Acordo com o Toninho Por Enquanto Deixar o Campo de Volumes Em branco Em  : 02/07/2003 //
                 // So Exibir se a Valeria Alterar o seu Conteudo "Notas de Exportação //

                 if fmManNot.FatPedAltVol.Value > 0 then
                    Nota01[076] := Prestring(IntToStr(fmManNot.FatPedAltVol.Value),7) {QtdeVol}
                 else
                    Nota01[076] := ' ';

                 Nota02[076] := 'Comp12';

                 Nota01[077] := fmManNot.FatPedEspFat.Value; {Especie}
                 Nota02[077] := 'Comp12';

                 Nota01[078] := fmManNot.FatPedMarFat.Value; {Marca}
                 Nota02[078] := 'Comp12';

                 Nota01[079] := fmManNot.FatPedNroFat.Value; {Numero}
                 Nota02[079] := 'Comp12';

                 Nota01[080] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedInfBrt.Value),14); {PesBruto}
                 Nota02[080] := 'Comp12';

                 Nota01[081] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedInfLiq.Value),14); {PesLiq}
                 Nota02[081] := 'Comp12';

                 Nota01[082] := copy(fmManNot.FatPedObsFat.Value,001,070); {Obs1}
                 Nota02[082] := 'Comp20';

                 Nota01[083] := copy(fmManNot.FatPedObsFat.Value,071,070); {Obs2}
                 Nota02[083] := 'Comp20';

                 Nota01[084] := copy(fmManNot.FatPedObsFat.Value,141,070); {Obs3}
                 Nota02[084] := 'Comp20';

                 Nota01[085] := copy(fmManNot.FatPedObsFat.Value,211,070); {Obs4}
                 Nota02[085] := 'Comp20';

                 Nota01[086] := copy(fmManNot.FatPedObsFat.Value,281,070); {Obs5}
                 Nota02[086] := 'Comp20';

                 Nota01[087] := copy(fmManNot.FatPedObsFat.Value,351,070); {Obs6}
                 Nota02[087] := 'Comp20';

                 Nota01[117] := IntToStr(fmManNot.CodCli); {código do Cliente}
                 Nota02[117] := 'Comp12';

                 Nota01[118] := fNumZeros(IntToStr(fmManNot.CodVen),3); {código do Vendedor}
                 Nota02[118] := 'Comp12';

                 Nota01[119] := ''; {SeuPed}
                 Nota02[119] := 'Comp12';

                 Nota01[120] := fNumZeros(IntToStr(fmManNot.FatPedNumRes.Value),7); {Nosso Pedido}
                 Nota02[120] := 'Comp12';

                 Nota01[121] := 'NumNot'; {NotaRod1}
                 Nota02[121] := 'Comp20';

                 Nota01[122] := 'NumNot'; {NotaRod2}
                 Nota02[122] := 'Comp20';

                 ValorExt := fExtenso(fmManNot.FatPedTotGer.Value);

                 if Length(TrimLeft(TrimRight(ValorExt))) < 150 then
                    ValorExt := TrimLeft(TrimRight(ValorExt))+fReplicate('*',150 - Length(TrimLeft(TrimRight(ValorExt))));

                 Nota01[123] := copy(ValorExt,001,50); {Valor por Extenso 1}
                 Nota02[123] := 'Comp12';

                 Nota01[124] := copy(ValorExt,051,50); {Valor por Extenso 2}
                 Nota02[124] := 'Comp12';

                 Nota01[125] := copy(ValorExt,101,50); {Valor por Extenso 3}
                 Nota02[125] := 'Comp12';

                 Nota01[126] := fmManNot.FatPedDesReg.Value; {Observações Sobre Desconto}
                 Nota02[126] := 'Comp20';

                 {********************************************************************************************}

                 rdprint1.OpcoesPreview.Preview     := False;
                 rdprint1.OpcoesPreview.PreviewZoom := 100;
                 rdprint1.TestarPorta               := True;
                 rdprint1.TamanhoQteLPP             := oito;
                 rdprint1.UsaGerenciadorImpr        := True;

                 rdprint1.TamanhoQteColunas  := 136;
                 rdprint1.FonteTamanhoPadrao := s17cpp;

                 {Programação dos Eventos: desliga eventos cabecalho/rodape}
                 rdprint1.OnNewPage       := nil;
                 rdprint1.OnBeforeNewPage := nil;

                 rdprint1.TamanhoQteLinhas := QtdNfs;

                 qtdimpr := 0; {Quantidade de Linhas de Itens Impressas};
                 qtitens := 0; {Indicador se Esta Sendo Impressos Itens ou Não}

                 SeqPe2 := 0;  {sequencial dos Itens a Serem Impressos}

                 Lin := 0; {Linha que Esta Sendo Impressas}{Incrementos de Linhas}
                 Inc := 0; {Incrementos de Linhas}
                 Col := 0; {Posição da Coluna a ser Impressa}
                 Reg := 0; {Numero do Vetor a Ser Impresso}
                 Tam := 0; {Tamanho da String a Ser Impressa}

                 qtdnot := 1;  {Quantidade de Notas Impressas}

                 rdprint1.abrir;

   //            qtdnfis := (fmManNot.FatPedNroNfs.Value - fmManNot.FatPedQtdNfs.Value)+ 1;  {Quantidade de Notas Fiscais Impressas}

                 qtdnfis := 1;  {Quantidade de Notas Fiscais Impressas}

                 while qtdnfis <= fmManNot.FatPedQtdNfs.Value do begin

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select Count(*) as QtdReg From FatPe2'+
                                    ' Where FatPe2.CodEmp = :CodEmp'+
                                    '   and FatPe2.DteRes = :DteRes'+
                                    '   and FatPe2.NumRes = :NumRes'+
                                    '   and FatPe2.SeqLib = :SeqLib'+
                                    '   and FatPe2.SeqFat = :SeqFat'+
                                    '   and FatPe2.SeqNfs = :SeqNfs';

                            with Params do begin

                                 Params[0].AsInteger  := fmManNot.FatPedCodEmp.Value;
                                 Params[1].AsDateTime := fmManNot.FatPedDteRes.Value;
                                 Params[2].AsInteger  := fmManNot.FatPedNumRes.Value;
                                 Params[3].AsInteger  := fmManNot.FatPedSeqLib.Value;
                                 Params[4].AsInteger  := fmManNot.FatPedSeqFat.Value;
                                 Params[5].AsInteger  := qtdnfis;

                            end;

                            Open;

                            QtiNfs := FieldbyName('QtdReg').AsInteger;

                       end;

                       SeqNfs := 0;

                       if qtdnfis = fmManNot.FatPedQtdNfs.Value then begin
                    
                          {BaseIcms}
                          if fmManNot.FatPedBasIcm.Value > 0 then
                             Nota01[057] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedBasIcm.Value),14)
                          else
                             Nota01[057] := ' ';

                          Nota02[057] := 'Comp12';

                          {ValIcms}
                          if fmManNot.FatPedTotIcm.Value > 0 then
                             Nota01[058] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedTotIcm.Value),14)
                          else
                             Nota01[058] := ' ';

                          Nota02[058] := 'Comp12';

                          {BaseIcmsSub}
                          if fmManNot.FatPedBasSub.Value > 0 then
                             Nota01[059] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedBasSub.Value),14)
                          else
                             Nota01[059] := ' ';

                          Nota02[059] := 'Comp12';

                          {ValIcmsSub}
                          if fmManNot.FatPedTotSub.Value > 0 then
                             Nota01[060] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedTotSub.Value),14)
                          else
                             Nota01[060] := ' ';

                          Nota02[060] := 'Comp12';

                          Nota01[061] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedTotFat.Value - fmManNot.FatPedTotDsr.Value),14); {TotalProds}
                          Nota02[061] := 'Comp12';

                          if fmManNot.FatPedTotFrt.Value > 0 then
                             Nota01[062] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedTotFrt.Value),14)  {Frete}
                          else
                             Nota01[062] := ' ';

                          Nota02[062] := 'Comp12';

                          if fmManNot.FatPedTotSeg.Value > 0 then
                             Nota01[063] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedTotSeg.Value),14) {Seguro}
                          else
                             Nota01[063] := ' ';

                          Nota02[063] := 'Comp12';

                          if fmManNot.FatPedTotDes.Value > 0 then
                             Nota01[064] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedTotDes.Value),14) {Outras}
                          else
                             Nota01[064] := ' ';

                          Nota02[064] := 'Comp12';

                          if fmManNot.FatPedTotIpi.Value > 0 then
                             Nota01[065] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedTotIpi.Value),14) {TotalIPI}
                          else
                             Nota01[065] := ' ';

                          Nota02[065] := 'Comp12';

                          Nota01[066] := Prestring(FormatFloat('###,###,##0.00',fmManNot.FatPedTotGer.Value),14); {TotalNota}
                          Nota02[066] := 'Comp12';

                          Nota01[126] := fmManNot.FatPedDesReg.Value; {Descontos Gerais na Nota}
                          Nota02[126] := 'Comp20';

                          if fmManNot.FatPedTotDsr.Value > 0 then
                             Nota01[127] := PreString('-'+Trim( FormatFloat('###,##0.00',fmManNot.FatPedTotDsr.Value) ),12) {Descontos Gerais na Nota}
                          else
                             Nota01[127] := ' ';

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

                          {TotalNota}
                          Nota01[066] := '***,***,***.**';
                          Nota02[066] := 'Comp12';

                          {Descontos Gerais na Nota}
                          Nota01[126] := ' ';
                          Nota02[126] := 'Comp20';

                          Nota01[127] := ' ';
                          Nota02[127] := 'Comp20';

                      end;

                      {Carregando Itens na Matriz NotaImpr}

                       ValorExt := fExtenso(fmManNot.FatPedTotGer.Value);

                       if Length( Trim( ValorExt ) ) < 150 then ValorExt := Trim( ValorExt )+fReplicate('*',150 - Length(Trim( ValorExt )));

                       Nota01[123] := copy(ValorExt,001,50); {Valor por Extenso 1}
                       Nota02[123] := 'Comp12';

                       Nota01[124] := copy(ValorExt,051,50); {Valor por Extenso 2}
                       Nota02[124] := 'Comp12';

                       Nota01[125] := copy(ValorExt,101,50); {Valor por Extenso 3}
                       Nota02[125] := 'Comp12';

                       with quSQL,SQL do begin

                            Close;
                            Text := ' Select FatClf.SeqClf,'+
                                    '        FatClf.ClsIpi From FatClf'+
                                    ' Where FatClf.CodEmp = :CodEmp'+
                                    '   and FatClf.DteRes = :DteRes'+
                                    '   and FatClf.NumRes = :NumRes'+
                                    '   and FatClf.SeqLib = :SeqLib'+
                                    '   and FatClf.SeqFat = :SeqFat'+
                                    '   and FatClf.SeqNfs = :SeqNfs'+
                                    ' Order by FatClf.SeqClf';

                            with Params do begin

                                 Params[0].AsInteger  := fmManNot.FatPedCodEmp.Value;
                                 Params[1].AsDateTime := fmManNot.FatPedDteRes.Value;
                                 Params[2].AsInteger  := fmManNot.FatPedNumRes.Value;
                                 Params[3].AsInteger  := fmManNot.FatPedSeqLib.Value;
                                 Params[4].AsInteger  := fmManNot.FatPedSeqFat.Value;
                                 Params[5].AsInteger  := qtdnfis;

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
                                Nota01[i] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqClf').AsInteger),3)+ ' - ' +quSQL.FieldbyName('ClsIpi').AsString
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

                                            rdprint1.impf(Lin,Col,fNumZeros(IntToStr(fmManNot.FatPedNroNfs.Value),7),[EXPANDIDO, negrito]);
                                            
                                         end;

                                         end
                                      else
                                         begin

                                         if (pos('#00040',Linha) = 0) and (qtitens = 0) then begin  {A Linha que Esta Sendo Impressa não e a de Itens}

                                            Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));   {Linha encontrada e de Incremento de Saltos de Linhas}
                                            Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));
                                            reg := StrToInt(copy(Linha,pos('#',Linha)+1,5));

                                            if (Col > 0) or (Inc > 0) then begin

                                               Lin := Lin + Inc;

                                               if (reg >= 131) and (reg <= 160) then begin

                                                  if qtdnfis = fmManNot.FatPedQtdNfs.Value then begin

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

                                               SeqPe2 := SeqPe2 + 1;
                                               SeqNfs := SeqNfs + 1;

                                               if qtdimpr = 0 then qtdimpr := Lin;

                                               with quSQL,SQL do begin

                                                    Close;
                                                    Text := ' Select FatPe2.CodGru,'+
                                                            '        FatPe2.CodSub,'+
                                                            '        FatPe2.CodPro,'+
                                                            '        FatPe2.SeqNfs,'+
                                                            '        FatPe2.DesPe2,'+
                                                            '        FatPe2.ObsPe2,'+
                                                            '        FatPe2.RefPe2,'+
                                                            '        FatPe2.ClsIpi,'+
                                                            '        FatPe2.CodSt1,'+
                                                            '        FatPe2.CodSt2,'+
                                                            '        FatPe2.CodUnd,'+
                                                            '        FatPe2.QtpPe2,'+
                                                            '        FatPe2.CodUnd,'+
                                                            '        FatPe2.VlqPe2,'+
                                                            '        FatPe2.TotPe2,'+
                                                            '        FatPe2.TrbIcm,'+
                                                            '        FatPe2.IcmPe2,'+
                                                            '        FatPe2.TrbIpi,'+
                                                            '        FatPe2.IpiPe2,'+
                                                            '        FatPe2.TotIpi From FatPe2'+
                                                            ' Where FatPe2.CodEmp = :CodEmp'+
                                                            '   and FatPe2.DteRes = :DteRes'+
                                                            '   and FatPe2.NumRes = :NumRes'+
                                                            '   and FatPe2.SeqLib = :SeqLib'+
                                                            '   and FatPe2.SeqFat = :SeqFat'+
                                                            '   and FatPe2.NroPe2 = :NroPe2';

                                                    with Params do begin

                                                         Params[0].AsInteger  := fmManNot.FatPedCodEmp.Value;
                                                         Params[1].AsDateTime := fmManNot.FatPedDteRes.Value;
                                                         Params[2].AsInteger  := fmManNot.FatPedNumRes.Value;
                                                         Params[3].AsInteger  := fmManNot.FatPedSeqLib.Value;
                                                         Params[4].AsInteger  := fmManNot.FatPedSeqFat.Value;
                                                         Params[5].AsInteger  := SeqPe2;

                                                    end;

                                                    Open;

                                               end;

                                               if Trim( quSql.FieldbyName('CodGru').AsString ) <> '' then begin

                                                  {Item a Ser Impresso Pertence a Nota Fiscal}
                                                  if quSql.FieldbyName('SeqNfs').AsInteger = qtdnfis then begin

                                                     {Produto}
                                                     Nota01[040] := quSql.FieldbyName('CodGru').AsString+ '.' +quSql.FieldbyName('CodSub').AsString+ '.' +quSql.FieldbyName('CodPro').AsString;
                                                     Nota02[040] := 'Comp20';
                                                  
                                                     {Descr}
                                                     Nota01[041] := Trim(copy(quSql.FieldbyName('DesPe2').AsString,1,40));
                                                     Nota02[041] := 'Comp20';

                                                     {Descr}

                                                     if Trim( quSql.FieldbyName('RefPe2').AsString ) <> '' then
                                                        Nota01[052] := Trim( quSql.FieldbyName('RefPe2').AsString )
                                                     else
                                                        Nota01[052] := ' ';
                                                     
                                                     Nota02[052] := 'Comp20';

                                                     {ClassFisc}
                                                     if Trim( quSQL.FieldbyName('ClsIpi').AsString ) <> '' then
                                                        Nota01[042] := fLimpaStr( quSql.FieldbyName('ClsIpi').AsString )
                                                     else
                                                        Nota01[042] := ' ';
                                                     
                                                     Nota02[042] := 'Comp20';

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

                                                     if fEncDecimal(quSql.FieldbyName('QtpPe2').AsFloat) > 0 then
                                                        Nota01[046] := Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpPe2').AsFloat),12)
                                                     else
                                                        Nota01[046] := Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('QtpPe2').AsFloat),12);

                                                     Nota02[046] := 'Comp20';

                                                     {Unit}
                                                     Nota01[047] := Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('VlqPe2').AsFloat),12);
                                                     Nota02[047] := 'Comp20';

                                                     {Total}
                                                     Nota01[048] := Prestring(FormatFloat('###,###,##0.00',quSql.FieldbyName('TotPe2').AsFloat),12);
                                                     Nota02[048] := 'Comp20';

                                                     {AlIcms}
                                                     if quSql.FieldbyName('TrbIcm').AsString = 'Sim' then
                                                        Nota01[049] := Prestring(FormatFloat('###',quSql.FieldbyName('IcmPe2').AsFloat),3)
                                                     else
                                                        Nota01[049] := ' ';

                                                     Nota02[049] := 'Comp20';

                                                     {AlIpi}
                                                     if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                                        Nota01[050] := Prestring(FormatFloat('###',quSql.FieldbyName('IpiPe2').AsFloat),3)
                                                     else
                                                        Nota01[050] := ' ';

                                                     Nota02[050] := 'Comp20';

                                                     {ValIpi}
                                                     if quSql.FieldbyName('TotIpi').AsFloat > 0 then
                                                        Nota01[051] := Prestring(FormatFloat('###,##0.00',fRound(quSql.FieldbyName('TotIpi').AsFloat,2)),10)
                                                     else
                                                        Nota01[051] := ' ';

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

                                                                       {Verifica se a Linha que Esta Sendo Impressa não e a de Segunda Descrição ou de Titulos de Descontos}
                                                                       if (Reg <> 52) and (Reg <> 126) and (Reg <> 127) and (Reg <> 128) then begin

                                                                          if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,copy(Nota01[reg],1,Tam),[Comp12]);
                                                                          if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,copy(Nota01[reg],1,Tam),[Comp20]);
                                                                          if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,copy(Nota01[reg],1,Tam),[Comp17]);

                                                                          end
                                                                       else
                                                                          begin

                                                                          if (Reg = 52) and (Trim( quSql.FieldbyName('RefPe2').AsString ) <> '') then begin

                                                                             {Descr2}
                                                                             Nota01[052] := Trim( quSql.FieldbyName('RefPe2').AsString );
                                                                             Nota02[052] := 'Comp20';

                                                                             Lin := Lin + Inc;

                                                                             if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                             if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                             if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                          end;

                                                                          if (Reg = 128) and (Trim( quSql.FieldbyName('ObsPe2').AsString ) <> '') then begin

                                                                             {Descr2}
                                                                             Nota01[128] := Trim( copy(quSql.FieldbyName('ObsPe2').AsString,1,Tam));
                                                                             Nota02[128] := 'Comp20';

                                                                             Lin := Lin + Inc;

                                                                             if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                             if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                             if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                             if Trim( copy(quSql.FieldbyName('ObsPe2').AsString,Tam+1,Tam )) <> '' then begin

                                                                                {Descr2}
                                                                                Nota01[128] := Trim(copy(quSql.FieldbyName('ObsPe2').AsString,Tam+1,Tam));
                                                                                Nota02[128] := 'Comp20';

                                                                                Lin := Lin + 1;

                                                                                if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                                if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                                if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                             end;

                                                                             if Trim( copy(quSql.FieldbyName('ObsPe2').AsString,(Tam+Tam+1),Tam) ) <> '' then begin

                                                                                {Descr2}
                                                                                Nota01[128] := Trim(copy(quSql.FieldbyName('ObsPe2').AsString,(Tam+Tam+1),Tam));
                                                                                Nota02[128] := 'Comp20';

                                                                                Lin := Lin + 1;

                                                                                if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                                if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                                if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                             end;
                                                                          end;

                                                                          if ( (Reg = 126) or (Reg = 127) ) then begin

                                                                             if (fmManNot.FatPedTotDsr.Value > 0) and (SeqNfs = QtiNfs) then begin

                                                                                { Só ira Imprimir o Campo de Descontos na Ultima Nota e se foi Efetuado Descontos na Nota }

                                                                                Lin := Lin + Inc;

                                                                                if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                                if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                                if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                             end;
                                                                          end;
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

                                                     SeqPe2 := SeqPe2 - 1;

                                                     r := r + 18;

                                                     qtitens := 2;

                                                  end;

                                                  end
                                               else
                                                  begin {Não Ha Mais Itens para Impressão}

                                                  SeqPe2 := SeqPe2 - 1;

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

                                                     if (Reg = 67) and (qtdnfis < fmManNot.FatPedQtdNfs.Value) then begin

                                                        Lin := Lin + Inc;

                                                        if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp12]);
                                                        if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp20]);
                                                        if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,'VIDE ULTIMA NOTA FISCAL',[Comp17]);

                                                        end
                                                     else
                                                        begin

                                                        if (Reg >= 68) and (Reg <= 81) and (qtdnfis < fmManNot.FatPedQtdNfs.Value) then begin

                                                           Lin := Lin + Inc;

                                                           if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,' ',[Comp12]);
                                                           if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,' ',[Comp20]);
                                                           if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,' ',[Comp17]);

                                                           end
                                                        else
                                                           begin

                                                           if (reg >= 82) and (reg <= 87) and (qtdnfis < fmManNot.FatPedQtdNfs.Value) then begin

                                                              if reg = 82 then
                                                                 Linha := 'Continua '+Trim( IntToStr(qtdnot) )+'/'+Trim( IntToStr(fmManNot.FatPedQtdNfs.Value) )
                                                              else
                                                                 Linha := ' ';

                                                              Lin := Lin + Inc;

                                                              if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Linha,[Comp12]);
                                                              if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Linha,[Comp20]);
                                                              if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Linha,[Comp17]);

                                                              end
                                                           else
                                                              begin

                                                              if (reg >= 82) or (reg <= 128) then begin

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

                 rdprint1.fechar;  {Finaliza e inicia impressão ou preview}

                 rdprint1.TamanhoQteLinhas := 66; {Voltar o valor original...}

                 sText := '                 Impressão Correta?               '+#10+
                          '                                                  '+#10+
                          ' Ao Confirmar Ocorrerão os Seguintes Lançamentos :'+#10+
                          '                                                  ';

                 if fmManNot.FatPedAtuEst.Value = 'Sim' then sText := sText + #10 + ' . Baixas nos Estoques dos Itens Faturados;       ';

                 if fmManNot.FatPedIntFin.Value = 'Sim' then sText := sText + #10 + ' . Lançamentos dos Titulos no Contas a Receber.   ';

                 sText := sText + #10 + '                                                  ';

                 if fMsg(sText,'O') then begin

                    sCanc := 'Nao';

                    while sCanc = 'Nao' do begin

                          if fmManNot.FatPed.State = dsBrowse then fmManNot.FatPed.Edit;

                          fmManNot.FatPedSitFat.Value := 'Faturado';

                          with fmManNot.FatPed do begin

                               fmManGDB.dbMain.StartTransaction; {Inicia a Transação};

                               try

                                  ApplyUpdates; {Tenta aplicar as alterações};

                                  fmManGDB.dbMain.Commit; {confirma todas as alterações fechando a transação};

                                  CommitUpdates; {sucesso!, limpa o cache...}

                                  fmManNot.Finalizar := 'S';

                                  sCanc := 'SSS';

                               except

                                  if pos('NUMERIC',UpperCase(GError)) > 0 then begin

                                     GError := '';

                                     sleep(200);

                                     CancelUpdates;

                                     fmManGDB.dbMain.Rollback; {desfaz as alterações se acontecer um erro};

                                     fmManNot.Finalizar := 'N';

                                     sCanc := 'Nao';

                                     end
                                  else
                                     begin

                                     fmManGDB.dbMain.Rollback;

                                     sCanc := 'Sim';

                                  end;
                               end;
                          end;

                          fmManNot.FatPed.Close;
                          fmManNot.FatPed.Open;

                    end;

                    if sCanc = 'Sim' then begin

                       if fmManNot.FatPed.State = dsBrowse then fmManNot.FatPed.Edit;

                       bContinuar.SetFocus;

                       end
                    else
                       Close;

                    end
                 else
                    EdNroNfs.SetFocus;

                 end
              else
                 fmsgErro('Cliente Informado para a Emissão da Nota Fiscal não Encontrado.',EdNroNfs);

              end
           else
              fmsgErro('Arquivo de Configuração da Nota Fiscal não Encontrado. Consulte o Administrador do Sistema para Maiores Informações',EdNroNfs);

           end
        else
           close;

        end
     else
        EdNroNfs.SetFocus;

     end
  else
     begin

     if fmManNot.FatPedNroNfs.Value = 0 then begin

        GerEmp.Close;
        GerEmp.Open;

        fmManNot.FatPed.Edit;

        EdNroNfs.Value := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

        fmsgErro('Número da Nota Fiscal não Informado. Próximo No. '+Trim(FloatToStr( EdNroNfs.Value )),EdNroNfs);

     end;
  end;
end;

procedure TfmManImp.FormShow(Sender: TObject);
begin
  inherited;
  
  GerEmp.Close;
  GerEmp.Params[0].AsInteger := fmManNot.FatPedCodEmp.Value;
  GerEmp.Open;

  fmManNot.FatPed.Edit;

  fmManNot.FatPedNroNfs.Value := GerEmp.FieldbyName('QtdNfs').AsInteger + 1;

  if fmManNot.FatPedNroNfs.Value > 0 then
     EdNroNfs.Text := IntToStr( fmManNot.FatPedNroNfs.Value )
  else
     EdNroNfs.Text := '0';

  EdNroNfs.SetFocus;

end;

procedure TfmManImp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
