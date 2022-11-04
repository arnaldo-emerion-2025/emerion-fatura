unit ManSdp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Db,
  DBTables, Wwquery, RDprint, dxExEdtr;

type
  TfmManSdp = class(TForm)
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
    Label57: TLabel;
    bretornar: TBitBtn;
    bcontinuar: TBitBtn;
    RDprint1: TRDprint;
    quSQL: TwwQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    lbNroIni: TLabel;
    lbNroFin: TLabel;
    EdNroNfs: TdxCurrencyEdit;
    procedure bretornarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
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
  fmManSdp: TfmManSdp;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManDpa;

{$R *.DFM}

procedure TfmManSdp.FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 40) or (Key = 13) then
     Perform(Wm_NextDlgCtl,0,0)
  else
     begin
     if Key = 38 then Perform(Wm_NextDlgCtl,1,0);
  end;
end;

procedure TfmManSdp.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManSdp.bcontinuarClick(Sender: TObject);
var
ArqTexto : TStringList;
Nota01: array[1..160] of string;
Nota02: array[1..160] of string;
EndEnt1,EndEnt2,EndCob1,EndCob2,Linha,FonCli,NomCli,Pt1Cli,Fo1Cli,sCanc,sText : string;
Tam,Reg,Inc,Col,Lin,r,i,rec,qtdIte,qtdNfs,qtdLin,qtdnfis,qtdimpr,qtitens,SeqDp2,qtdnot : integer;
TecCli,EncCli,NrcCli,BacCli,CicCli,UfcCli,CecCli,ValorExt,ValorEx1,ValorEx2,ValorEx3,CgcCli : string;
begin
  if EdNroNfs.Value > 0 then begin

     if (EdNroNfs.Value >= NroIni) and (EdNroNfs.Value <= NroFin) then begin

        if fMsg('Confirma Emissão da 2ª Via da Nota Fiscal Informada ?','O') then begin

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

              {Carregando Itens na Matriz NotaImpr}

              ValorExt := fExtenso(fmManDpa.FatDvpTotGer.Value);

              if Length( Trim( ValorExt ) ) < 150 then
                 ValorExt := Trim( ValorExt )+fReplicate('*',150 - Length(Trim( ValorExt )));

              Nota01[123] := copy(ValorExt,001,50); {Valor por Extenso 1}
              Nota02[123] := 'Comp12';

              Nota01[124] := copy(ValorExt,051,50); {Valor por Extenso 2}
              Nota02[124] := 'Comp12';

              Nota01[125] := copy(ValorExt,101,50); {Valor por Extenso 3}
              Nota02[125] := 'Comp12';

              Nota01[126] := '      0.00'; {Descontos Gerais na Nota}
              Nota02[126] := 'Comp20';

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select * From FinCli'+
                           ' Where CodCli = :CodCli';

                   with Params do begin

                        Params[0].AsInteger := fmManDpa.FatDvpCodCli.Value;

                   end;

                   Open;

                   NomCli := quSQL.FieldbyName('NomCli').AsString;
                   TecCli := quSQL.FieldbyName('TecCli').AsString;
                   EncCli := quSQL.FieldbyName('EncCli').AsString;
                   NrcCli := quSQL.FieldbyName('NrcCli').AsString;
                   BacCli := quSQL.FieldbyName('BacCli').AsString;
                   CicCli := quSQL.FieldbyName('CicCli').AsString;
                   UfcCli := quSQL.FieldbyName('UfcCli').AsString;
                   CecCli := quSQL.FieldbyName('CecCli').AsString;

                   Pt1Cli := quSQL.FieldbyName('Pt1Cli').AsString;
                   Fo1Cli := quSQL.FieldbyName('Fo1Cli').AsString;

              end;

              EndCob2 := '';
              EndEnt2 := '';

              if Trim( TecCli ) <> '' then EndCob1 := Trim( TecCli );

              EndCob1 := EndCob1+ ' ' + Trim( EncCli )+' No. '+Trim( NrcCli )+' '+
                                        Trim( BacCli )+' - '+Trim( CicCli )+' '+
                                        Trim( UfcCli )+' Cep '+Trim( CecCli );

              if Trim( fmManDpa.FatDvpTenCli.Value ) <> '' then EndEnt1 := Trim( fmManDpa.FatDvpTenCli.Value );

              EndEnt1 := EndEnt1+ ' ' + Trim( fmManDpa.FatDvpEndCli.Value )+' No. '+Trim( fmManDpa.FatDvpNumCli.Value )+' '+
                                        Trim( fmManDpa.FatDvpBaiCli.Value )+' - '+Trim( fmManDpa.FatDvpCidCli.Value )+' '+
                                        Trim( fmManDpa.FatDvpUfeCli.Value )+' Cep '+Trim( fmManDpa.FatDvpCepCli.Value );

              if Trim( fmManDpa.FatDvpCgeCli.Value ) <> '' then begin

                 if Length(Trim( fmManDpa.FatDvpCgeCli.Value )) <= 11 then begin

                    EndEnt1 := EndEnt1 + ' C.P.F.:'+copy(fmManDpa.FatDvpCgeCli.Value,1,3)+'.'+copy(fmManDpa.FatDvpCgeCli.Value,4,3)+'.'+
                                                    copy(fmManDpa.FatDvpCgeCli.Value,7,3)+'-'+copy(fmManDpa.FatDvpCgeCli.Value,10,2);

                    EndEnt1 := EndEnt1 + ' R.G.: '+Trim( fmManDpa.FatDvpIneCli.Value );

                    end
                 else
                    begin

                    EndEnt1 := EndEnt1 + ' C.N.P.J.:'+copy(fmManDpa.FatDvpCgeCli.Value,01,2)+'.'+copy(fmManDpa.FatDvpCgeCli.Value,3,3)+'.'+
                                                      copy(fmManDpa.FatDvpCgeCli.Value,06,3)+'/'+copy(fmManDpa.FatDvpCgeCli.Value,9,4)+'-'+
                                                      copy(fmManDpa.FatDvpCgeCli.Value,13,2);

                    EndEnt1 := EndEnt1 + ' Inscrição Estadual : '+Trim( fmManDpa.FatDvpIneCli.Value );

                 end;
              end;

              if Trim( Pt1Cli ) <> '' then
                 FonCli := '('+Trim( Pt1Cli )+')'+Trim( Fo1Cli )
              else
                 FonCli := Trim( Fo1Cli );

              Nota01[001] := 'NumNot';
              Nota02[001] := 'Comp12';

              Nota01[002] := fmManDpa.FatDvpFlgSai.Value; {Saida}
              Nota02[002] := 'Comp12';

              Nota01[003] := fmManDpa.FatDvpFlgEnt.Value; {Entrada}
              Nota02[003] := 'Comp12';

              Nota01[004] := fmManDpa.FatDvpDesNat.Value; {NatOper}
              Nota02[004] := 'Comp12';

              if Trim( fmManDpa.FatDvpCodCf2.Value ) <> '' then {Cfop}
                 Nota01[005] := Trim( fmManDpa.FatDvpCodCf1.Value )+'/'+Trim( fmManDpa.FatDvpCodCf2.Value )
              else
                 Nota01[005] := Trim( fmManDpa.FatDvpCodCf1.Value );

              Nota02[005] := 'Comp12';

              Nota01[006] := '';
              Nota02[006] := 'Comp12';

              Nota01[007] := fmManDpa.FatDvpInsSub.Value; {InscEstSubTrib}
              Nota02[007] := 'Comp12';

              Nota01[008] := NomCli;  {Nome do Cliente}
              Nota02[008] := 'Comp12';

              CgcCli := fLimpaStr(fmManDpa.FatDvpCgcCli.Value);

              if Length( Trim(CgcCli) ) <= 11 then
                 Nota01[009] := copy(CgcCli,1,3)+'.'+copy(CgcCli,4,3)+'.'+
                                copy(CgcCli,7,3)+'-'+copy(CgcCli,10,2)
              else
                 Nota01[009] := copy(CgcCli,01,2)+'.'+copy(CgcCli,3,3)+'.'+
                                copy(CgcCli,06,3)+'/'+copy(CgcCli,9,4)+'-'+
                                copy(CgcCli,13,2);

              Nota02[009] := 'Comp12';

              Nota01[010] := DateToStr(fmManDpa.FatDvpDteDvp.Value); {DataEmis}
              Nota02[010] := 'Comp12';

              Nota01[011] := Trim( fmManDpa.FatDvpTEfCli.Value ) + ' ' + Trim( fmManDpa.FatDvpEnfCli.Value ) + ', '+ Trim( fmManDpa.FatDvpNrfCli.Value ); {Endereco}
              Nota02[011] := 'Comp12';

              Nota01[012] := fmManDpa.FatDvpBafCli.Value; {Bairro}
              Nota02[012] := 'Comp12';

              if Trim( fmManDpa.FatDvpCefCli.Value ) <> '' then {Cep}
                 Nota01[013] := copy(fmManDpa.FatDvpCefCli.Value,1,5)+ '-' +copy(fmManDpa.FatDvpCefCli.Value,6,3)
              else
                 Nota01[013] := ' ';

              Nota02[013] := 'Comp12';

              Nota01[014] := '';                          {DataSai}
              Nota02[014] := '';

              Nota01[015] := fmManDpa.FatDvpCifCli.Value; {Cidade}
              Nota02[015] := 'Comp12';

              Nota01[016] := FonCli;                      {Fone}
              Nota02[016] := 'Comp12';

              Nota01[017] := fmManDpa.FatDvpUffCli.Value; {Uf}
              Nota02[017] := 'Comp12';

              Nota01[018] := fmManDpa.FatDvpInsCli.Value; {InscEst}
              Nota02[018] := 'Comp12';

              Nota01[019] := '';                          {Hora da Saida}
              Nota02[019] := '';

              i := 131;

              rec := 0;

              while not quSQL.Eof do begin

                    Nota01[i] := ' ';       {Número da Duplicata}
                    Nota02[i] := 'Comp12';

                    i := i + 1;

                    if rec > 6 then
                       quSQL.Last
                    else
                       quSQL.Next;

              end;

              i := 141;

              while not quSQL.Eof do begin

                    Nota01[i] := ' ';       {Vencimento da Duplicata}
                    Nota02[i] := 'Comp12';

                    i := i + 1;

                    if rec > 6 then
                       quSQL.Last
                    else
                       quSQL.Next;

              end;

              i := 151;

              while not quSQL.Eof do begin

                    Nota01[i] := ' ';      {Valor da Duplicata}
                    Nota02[i] := 'Comp12';

                    i := i + 1;

                    if rec > 6 then
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

              Nota01[053] := fmManDpa.FatDvpTxfIpi.Value;  {TextIpi}
              Nota02[053] := 'Comp20';

              Nota01[054] := fmManDpa.FatDvpTxfIcm.Value;  {TextIcm}
              Nota02[054] := 'Comp20';

              Nota01[055] := 'Entrega: '+EndEnt1;          {Entrega_1}
              Nota02[055] := 'Comp20';

              Nota01[056] := 'Entrega: '+EndEnt2;          {Entrega_2}
              Nota02[056] := 'Comp20';

              {BaseIcms}
              if fmManDpa.FatDvpBasIcm.Value > 0 then
                 Nota01[057] := Prestring(FormatFloat('###,###,##0.00',fmManDpa.FatDvpBasIcm.Value),14)
              else
                 Nota01[057] := ' ';

              Nota02[057] := 'Comp12';

              {ValIcms}
              if fmManDpa.FatDvpTotIcm.Value > 0 then
                 Nota01[058] := Prestring(FormatFloat('###,###,##0.00',fmManDpa.FatDvpTotIcm.Value),14)
              else
                 Nota01[058] := ' ';

              Nota02[058] := 'Comp12';

              {BaseIcmsSub}
              if fmManDpa.FatDvpBasSub.Value > 0 then
                 Nota01[059] := Prestring(FormatFloat('###,###,##0.00',fmManDpa.FatDvpBasSub.Value),14)
              else
                 Nota01[059] := ' ';

              Nota02[059] := 'Comp12';

              {ValIcmsSub}
              if fmManDpa.FatDvpTotSub.Value > 0 then
                 Nota01[060] := Prestring(FormatFloat('###,###,##0.00',fmManDpa.FatDvpTotSub.Value),14)
              else
                 Nota01[060] := ' ';

              Nota02[060] := 'Comp12';

              Nota01[061] := Prestring(FormatFloat('###,###,##0.00',fRound(fmManDpa.FatDvpTotDvp.Value - fmManDpa.FatDvpTotDsr.Value,2)),14); {TotalProds}
              Nota02[061] := 'Comp12';

              Nota01[062] := Prestring(FormatFloat('###,###,##0.00',fmManDpa.FatDvpTotFrt.Value),14); {Frete}
              Nota02[062] := 'Comp12';

              Nota01[063] := Prestring(FormatFloat('###,###,##0.00',fmManDpa.FatDvpTotSeg.Value),14); {Seguro}
              Nota02[063] := 'Comp12';

              Nota01[064] := Prestring(FormatFloat('###,###,##0.00',fmManDpa.FatDvpTotDes.Value),14); {Outras}
              Nota02[064] := 'Comp12';

              Nota01[065] := Prestring(FormatFloat('###,###,##0.00',fmManDpa.FatDvpTotIpi.Value),14); {TotalIPI}
              Nota02[065] := 'Comp12';

              Nota01[066] := Prestring(FormatFloat('###,###,##0.00',fmManDpa.FatDvpTotGer.Value),14); {TotalNota}
              Nota02[066] := 'Comp12';

              Nota01[067] := fmManDpa.FatDvpNomTra.Value; {NomeTransp}
              Nota02[067] := 'Comp12';

              Nota01[068] := fmManDpa.FatDvpTipFrt.Value; {FretePc}
              Nota02[068] := 'Comp12';

              Nota01[069] := fmManDpa.FatDvpPlcTra.Value; {Placa}
              Nota02[069] := 'Comp12';

              Nota01[070] := fmManDpa.FatDvpUfePlc.Value; {UfPlaca}
              Nota02[070] := 'Comp12';

              if Trim( fmManDpa.FatDvpCgcTra.Value ) <> '' then

                 Nota01[071] := copy(fmManDpa.FatDvpCgcTra.Value,01,2)+'.'+copy(fmManDpa.FatDvpCgcTra.Value,3,3)+'.'+
                                copy(fmManDpa.FatDvpCgcTra.Value,06,3)+'/'+copy(fmManDpa.FatDvpCgcTra.Value,9,4)+'-'+
                                copy(fmManDpa.FatDvpCgcTra.Value,13,2)

              else
                 Nota01[071] := ' ';

              Nota02[071] := 'Comp12';

              Nota01[072] := Trim( fmManDpa.FatDvpTenTra.Value ) + ' ' + Trim( fmManDpa.FatDvpEndTra.Value ) + ', ' + Trim( fmManDpa.FatDvpNumTra.Value ) + ' ' + Trim( fmManDpa.FatDvpBaiTra.Value );
              Nota02[072] := 'Comp12';

              Nota01[073] := fmManDpa.FatDvpCidTra.Value; {CidTransp}
              Nota02[073] := 'Comp12';

              Nota01[074] := fmManDpa.FatDvpUfeTra.Value; {UFTransp}
              Nota02[074] := 'Comp12';

              Nota01[075] := fmManDpa.FatDvpInsTra.Value; {InscTransp}
              Nota02[075] := 'Comp12';

              // De Acordo com o Toninho Por Enquanto Deixar o Campo de Volumes Em branco Em  : 02/07/2003 //
              // So Exibir se a Valeria Alterar o seu Conteudo "Notas de Exportação //

              if fmManDpa.FatDvpQtdVol.Value > 0 then
                 Nota01[076] := Prestring(IntToStr(fmManDpa.FatDvpQtdVol.Value),7) {QtdeVol}
              else
                 Nota01[076] := ' ';

              Nota02[076] := 'Comp12';

              Nota01[077] := fmManDpa.FatDvpEspDvp.Value; {Especie}
              Nota02[077] := 'Comp12';

              Nota01[078] := fmManDpa.FatDvpMarDvp.Value; {Marca}
              Nota02[078] := 'Comp12';

              Nota01[079] := fmManDpa.FatDvpNroDvp.Value; {Numero}
              Nota02[079] := 'Comp12';

              Nota01[080] := Prestring(FormatFloat('###,###,##0.00',fmManDpa.FatDvpInfBrt.Value),14); {PesBruto}
              Nota02[080] := 'Comp12';

              Nota01[081] := Prestring(FormatFloat('###,###,##0.00',fmManDpa.FatDvpInfLiq.Value),14); {PesLiq}
              Nota02[081] := 'Comp12';

              Nota01[082] := copy(fmManDpa.FatDvpObsDvp.Value,001,070); {Obs1}
              Nota02[082] := 'Comp20';

              Nota01[083] := copy(fmManDpa.FatDvpObsDvp.Value,071,070); {Obs2}
              Nota02[083] := 'Comp20';

              Nota01[084] := copy(fmManDpa.FatDvpObsDvp.Value,141,070); {Obs3}
              Nota02[084] := 'Comp20';

              Nota01[085] := copy(fmManDpa.FatDvpObsDvp.Value,211,070); {Obs4}
              Nota02[085] := 'Comp20';

              Nota01[086] := copy(fmManDpa.FatDvpObsDvp.Value,281,070); {Obs5}
              Nota02[086] := 'Comp20';

              Nota01[087] := copy(fmManDpa.FatDvpObsDvp.Value,351,070); {Obs6}
              Nota02[087] := 'Comp20';

              with quSQL,SQL do begin

                   Close;
                   Text := ' Select * From FatDp3'+
                           ' Where FatDp3.CodEmp = :CodEmp'+
                           '   and FatDp3.DteRes = :DteRes'+
                           '   and FatDp3.NumRes = :NumRes'+
                           '   and FatDp3.SeqLib = :SeqLib'+
                           '   and FatDp3.SeqFat = :SeqFat'+
                           '   and FatDp3.SeqEnf = :SeqEnf'+
                           ' Order by FatDp3.CodEmp,FatDp3.DteRes,FatDp3.NumRes,FatDp3.SeqLib,FatDp3.SeqFat,FatDp3.NroPe3';

                   with Params do begin

                        Params[0].AsInteger  := fmManDpa.FatDvpCodEmp.Value;
                        Params[1].AsDateTime := fmManDpa.FatDvpDteRes.Value;
                        Params[2].AsInteger  := fmManDpa.FatDvpNumRes.Value;
                        Params[3].AsInteger  := fmManDpa.FatDvpSeqLib.Value;
                        Params[4].AsInteger  := fmManDpa.FatDvpSeqFat.Value;
                        Params[5].AsInteger  := fmManDpa.FatDvpSeqEnf.Value;

                   end;

                   Open;

              end;

              quSQL.First;

              i := 88;

              rec := 0;

              while not quSQL.Eof do begin

                    if Trim( quSQL.FieldbyName('ClsIpi').AsString ) <> '' then
                       Nota01[i] := quSQL.FieldbyName('ClsIpi').AsString
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

              Nota01[117] := IntToStr(fmManDpa.FatDvpCodCli.Value); {código do Cliente}
              Nota02[117] := 'Comp12';

              Nota01[118] := IntToStr(fmManDpa.FatDvpCodVen.Value); {código do Vendedor}
              Nota02[118] := 'Comp12';

              Nota01[119] := ''; {SeuPed}
              Nota02[119] := 'Comp12';

              Nota01[120] := Prestring(IntToStr(fmManDpa.FatDvpNumRes.Value),8); {Nosso Pedido}
              Nota02[120] := 'Comp12';

              Nota01[121] := 'NumNot'; {NotaRod1}
              Nota02[121] := 'Comp20';

              Nota01[122] := 'NumNot'; {NotaRod2}
              Nota02[122] := 'Comp20';

              ValorExt := fExtenso(fmManDpa.FatDvpTotGer.Value);

              if Length(TrimLeft(TrimRight(ValorExt))) < 150 then
                 ValorExt := TrimLeft(TrimRight(ValorExt))+fReplicate('*',150 - Length(TrimLeft(TrimRight(ValorExt))));

              Nota01[123] := copy(ValorExt,001,50); {Valor por Extenso 1}
              Nota02[123] := 'Comp12';

              Nota01[124] := copy(ValorExt,051,50); {Valor por Extenso 2}
              Nota02[124] := 'Comp12';

              Nota01[125] := copy(ValorExt,101,50); {Valor por Extenso 3}
              Nota02[125] := 'Comp12';

              Nota01[126] := fmManDpa.FatDvpDesReg.Value; {Observações Sobre Desconto}
              Nota02[126] := 'Comp20';

              Nota01[127] := PreString('-'+Trim( FormatFloat('###,##0.00',fmManDpa.FatDvpTotDsr.Value) ),12); {Descontos Gerais na Nota}
              Nota02[127] := 'Comp20';

              {********************************************************************************************}

              rdprint1.Preview            := False;
              rdprint1.PreviewZoom        := 100;
              rdprint1.TestarPorta        := True;
              rdprint1.TamanhoQteLPP      := oito;
              rdprint1.UsaGerenciadorImpr := True;

              rdprint1.TamanhoQteColunas  := 136;
              rdprint1.FonteTamanhoPadrao := s17cpp;

              {Programação dos Eventos: desliga eventos cabecalho/rodape}
              rdprint1.OnNewPage       := nil;
              rdprint1.OnBeforeNewPage := nil;

              rdprint1.TamanhoQteLinhas := QtdNfs;

              qtdnfis := (fmManDpa.FatDvpNroNfs.Value - fmManDpa.FatDvpQtdNfs.Value)+ 1;  {Quantidade de Notas Fiscais Impressas}

              qtdimpr := 0; {Quantidade de Linhas de Itens Impressas};
              qtitens := 0; {Indicador se Esta Sendo Impressos Itens ou Não}

              if EdNroNfs.Value = NroIni then begin

                 SeqDp2 := 0;  {sequencial dos Itens a Serem Impressos}

                 qtdnot := 1;  {Quantidade de Notas Impressas}

                 end
              else
                 begin

                 qtdNot := StrToInt(FloatToStr((EdNroNfs.Value - NroIni) + 1));

                 with quSQL,SQL do begin

                      Close;
                      Text := ' Select * From FatDp2'+
                              ' Where FatDp2.CodEmp = :CodEmp'+
                              '   and FatDp2.DteRes = :DteRes'+
                              '   and FatDp2.NumRes = :NumRes'+
                              '   and FatDp2.SeqLib = :SeqLib'+
                              '   and FatDp2.SeqFat = :SeqFat'+
                              '   and FatDp2.SeqEnf = :SeqEnf'+
                              '   and FatDp2.NroNfs = :NroNfs'+
                              ' Order by FatDp2.CodEmp,FatDp2.DteRes,FatDp2.NumRes,FatDp2.SeqLib,FatDp2.SeqFat,FatDp2.NroNfs,FatDp2.NroDp2';

                      with Params do begin

                           Params[0].AsInteger  := fmManDpa.FatDvpCodEmp.Value;
                           Params[1].AsDateTime := fmManDpa.FatDvpDteRes.Value;
                           Params[2].AsInteger  := fmManDpa.FatDvpNumRes.Value;
                           Params[3].AsInteger  := fmManDpa.FatDvpSeqLib.Value;
                           Params[4].AsInteger  := fmManDpa.FatDvpSeqFat.Value;
                           Params[5].AsInteger  := fmManDpa.FatDvpSeqEnf.Value;
                           Params[6].AsInteger  := StrToInt(FloatToStr(EdNroNfs.Value));

                      end;

                      Open;
                      First;

                 end;

                 SeqDp2 := quSQL.FieldbyName('NroDp2').AsInteger - 1;

              end;

              Lin := 0; {Linha que Esta Sendo Impressas}{Incrementos de Linhas}
              Inc := 0; {Incrementos de Linhas}
              Col := 0; {Posição da Coluna a ser Impressa}
              Reg := 0; {Numero do Vetor a Ser Impresso}
              Tam := 0; {Tamanho da String a Ser Impressa}

              rdprint1.abrir;

              while qtdnfis <= fmManDpa.FatDvpNroNfs.Value do begin

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

                                   rdprint1.imp(Lin,Col,'');

                                   end
                                else
                                   begin

                                   if (pos('NotaCab',Linha) > 0) or (pos('NotaRod',Linha) > 0) then begin

                                      Inc := StrToInt(copy(Linha,pos('=',Linha)+1,3));   {Linha encontrada e de Final de Nota Fiscal}
                                      Col := StrToInt(copy(Linha,pos(',',Linha)+1,3));

                                      if (Col > 0) or (Inc > 0) then begin

                                         Lin := Lin + Inc;

                                         rdprint1.impf(Lin,Col,PreString(FormatFloat('###,###',StrToFloat(IntToStr(fmManDpa.FatDvpNroNfs.Value))),7),[EXPANDIDO, negrito]);

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

                                            if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                            if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                            if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                         end;

                                         end
                                      else
                                         begin

                                         if qtitens < 2 then begin

                                            qtitens := 1;

                                            SeqDp2 := SeqDp2 + 1;

                                            if qtdimpr = 0 then qtdimpr := Lin;

                                            with quSQL,SQL do begin

                                                 Close;
                                                 Text := ' Select * From FatDp2'+
                                                         ' Where FatDp2.CodEmp = :CodEmp'+
                                                         '   and FatDp2.DteRes = :DteRes'+
                                                         '   and FatDp2.NumRes = :NumRes'+
                                                         '   and FatDp2.SeqLib = :SeqLib'+
                                                         '   and FatDp2.SeqFat = :SeqFat'+
                                                         '   and FatDp2.SeqEnf = :SeqEnf'+
                                                         '   and FatDp2.NroDp2 = :NroDp2';

                                                 with Params do begin

                                                      Params[0].AsInteger  := fmManDpa.FatDvpCodEmp.Value;
                                                      Params[1].AsDateTime := fmManDpa.FatDvpDteRes.Value;
                                                      Params[2].AsInteger  := fmManDpa.FatDvpNumRes.Value;
                                                      Params[3].AsInteger  := fmManDpa.FatDvpSeqLib.Value;
                                                      Params[4].AsInteger  := fmManDpa.FatDvpSeqFat.Value;
                                                      Params[5].AsInteger  := fmManDpa.FatDvpSeqEnf.Value;
                                                      Params[6].AsInteger  := SeqDp2;

                                                 end;

                                                 Open;

                                            end;

                                            if Trim( quSql.FieldbyName('CodGru').AsString ) <> '' then begin

                                               {Item a Ser Impresso Pertence a Nota Fiscal}
                                               if quSql.FieldbyName('NroNfs').AsInteger = qtdnfis then begin

                                                  {Produto}
                                                  Nota01[040] := quSql.FieldbyName('CodGru').AsString +'.'+ quSql.FieldbyName('CodSub').AsString+ '.' +quSql.FieldbyName('CodPro').AsString;
                                                  Nota02[040] := 'Comp20';

                                                  {Descr}
                                                  Nota01[052] := Trim(quSql.FieldbyName('RefDp2').AsString);
                                                  Nota02[052] := 'Comp20';

                                                  {Descr}
                                                  Nota01[041] := Trim(quSql.FieldbyName('DesDp2').AsString);
                                                  Nota02[041] := 'Comp20';

                                                  {ClassFisc}
                                                  if Trim( quSQL.FieldbyName('ClsIpi').AsString ) <> '' then
                                                     Nota01[042] := fLimpaStr( quSql.FieldbyName('ClsIpi').AsString )
                                                  else
                                                     Nota01[042] := ' ';

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
                                                  if fEncDecimal(quSql.FieldbyName('QtpDp2').AsFloat) > 0 then
                                                     Nota01[046] := Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpDp2').AsFloat),12)
                                                  else
                                                     Nota01[046] := Prestring(FormatFloat('####,###,##0',quSql.FieldbyName('QtpDp2').AsFloat),12);

                                                  Nota02[046] := 'Comp20';

                                                  {Qtde}
                                                  Nota01[046] := Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('QtpDp2').AsFloat),12);
                                                  Nota02[046] := 'Comp20';

                                                  {Unit}
                                                  Nota01[047] := Prestring(FormatFloat('###,##0.0000',quSql.FieldbyName('VlqDp2').AsFloat),12);
                                                  Nota02[047] := 'Comp20';

                                                  {Total}
                                                  Nota01[048] := Prestring(FormatFloat('###,###,##0.00',quSql.FieldbyName('TotDp2').AsFloat),12);
                                                  Nota02[048] := 'Comp20';

                                                  {AlIcms}
                                                  if quSql.FieldbyName('TrbIcm').AsString = 'Sim' then
                                                     Nota01[049] := Prestring(FormatFloat('###',quSql.FieldbyName('IcmDp2').AsFloat),3)
                                                  else
                                                     Nota01[049] := ' ';

                                                  Nota02[049] := 'Comp20';

                                                  {AlIpi}
                                                  if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                                     Nota01[050] := Prestring(FormatFloat('###',quSql.FieldbyName('IpiDp2').AsFloat),3)
                                                  else
                                                     Nota01[050] := ' ';

                                                  Nota02[050] := 'Comp20';

                                                  {ValIpi}
                                                  if quSql.FieldbyName('TotIpi').AsFloat > 0 then
                                                     Nota01[051] := Prestring(FormatFloat('###,##0.00',quSql.FieldbyName('TotIpi').AsFloat),10)
                                                  else
                                                     Nota01[051] := ' ';

                                                  Nota02[051] := 'Comp20';

                                                  rec := r;

                                                  i := rec + 16;

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

                                                                    {Verifica se a Linha que Esta Sendo Impressa não e a de Segunda Descrição ou de Textos Fiscais}
                                                                    if (Reg <> 52) and (Reg <> 126) and (Reg <> 127) and (Reg <> 128) then begin

                                                                       if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,copy(Nota01[reg],1,Tam),[Comp12]);
                                                                       if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,copy(Nota01[reg],1,Tam),[Comp20]);
                                                                       if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,copy(Nota01[reg],1,Tam),[Comp17]);

                                                                       end
                                                                    else
                                                                       begin

                                                                       if (Reg = 52) and (Trim( quSql.FieldbyName('RefDp2').AsString ) <> '') then begin

                                                                          {Descr2}
                                                                          Nota01[052] := Trim( quSql.FieldbyName('RefDp2').AsString );
                                                                          Nota02[052] := 'Comp20';

                                                                          Lin := Lin + Inc;

                                                                          if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                          if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                          if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);
                                                                       
                                                                       end;

                                                                       if (Reg = 128) and (Trim( quSql.FieldbyName('ObsDp2').AsString ) <> '') then begin

                                                                          {Descr2}
                                                                          Nota01[128] := Trim(copy(quSql.FieldbyName('ObsDp2').AsString,1,Tam));
                                                                          Nota02[128] := 'Comp20';

                                                                          Lin := Lin + Inc;

                                                                          if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                          if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                          if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                          if Trim( copy(quSql.FieldbyName('ObsDp2').AsString,Tam+1,Tam )) <> '' then begin

                                                                             {Descr2}
                                                                             Nota01[128] := Trim(copy(quSql.FieldbyName('ObsDp2').AsString,Tam+1,Tam));
                                                                             Nota02[128] := 'Comp20';

                                                                             Lin := Lin + 1;

                                                                             if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                             if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                             if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                          end;

                                                                          if Trim( copy(quSql.FieldbyName('ObsDp2').AsString,(Tam+Tam+1),Tam) ) <> '' then begin

                                                                             {Descr2}
                                                                             Nota01[128] := Trim(copy(quSql.FieldbyName('ObsDp2').AsString,(Tam+Tam+1),Tam));
                                                                             Nota02[128] := 'Comp20';

                                                                             Lin := Lin + 1;

                                                                             if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp12]);
                                                                             if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp20]);
                                                                             if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Nota01[reg],[Comp17]);

                                                                          end;
                                                                       end;

                                                                       if ( (Reg = 126) or (Reg = 127) ) and (fmManDpa.FatDvpTotDsr.Value > 0) and (SeqDp2 = fmManDpa.FatDvpQtiDvp.Value) then begin

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

                                                        r := r + 1;

                                                  end;

                                                  r := rec;

                                                  end
                                               else
                                                  begin  {Finalizar Nota para Impressão da Proxima Nota}

                                                  SeqDp2 := SeqDp2 - 1;

                                                  r := r + 16;

                                                  qtitens := 2;

                                               end;

                                               end
                                            else
                                               begin {Não Ha Mais Itens para Impressão}

                                               SeqDp2 := SeqDp2 - 1;

                                               r := r + 16;

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

                                                  if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,'***,***,***.**',[Comp12]);
                                                  if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,'***,***,***.**',[Comp20]);
                                                  if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,'***,***,***.**',[Comp17]);

                                                  end
                                               else
                                                  begin

                                                  if (Reg >= 67) and (Reg <= 81) then begin

                                                     Lin := Lin + Inc;

                                                     if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,' ',[Comp12]);
                                                     if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,' ',[Comp20]);
                                                     if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,' ',[Comp17]);

                                                     end
                                                  else
                                                     begin

                                                     if (reg = 82) or (reg = 117) then begin

                                                        Linha := 'Continua '+Trim( IntToStr(qtdnot) )+'/'+Trim( IntToStr(fmManDpa.FatDvpQtdNfs.Value) );

                                                        Lin := Lin + Inc;

                                                        if Nota02[Reg] = 'Comp12' then rdprint1.impf(Lin,Col,Linha,[Comp12]);
                                                        if Nota02[Reg] = 'Comp20' then rdprint1.impf(Lin,Col,Linha,[Comp20]);
                                                        if Nota02[Reg] = 'Comp17' then rdprint1.impf(Lin,Col,Linha,[Comp17]);

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

              rdprint1.fechar;  {Finaliza e inicia impressao ou preview}

              rdprint1.TamanhoQteLinhas := 66; {Voltar o valor original...}

              Close;

              end
           else
              fmsgErro('Arquivo de Configuração da Nota Fiscal não Encontrado. Consulte o Administrador do Sistema para Maiores Informações',EdNroNfs);

        end;

        end
     else
        fmsgErro('Número de Nota Fiscal Informado Fora da Sequencia de Notas Impressas para o Pedido.',EdNroNfs);
  end;
end;

procedure TfmManSdp.FormShow(Sender: TObject);
begin

  NroIni := (fmManDpa.FatDvpNroNfs.Value - fmManDpa.FatDvpQtdNfs.Value) + 1;
  NroFin := fmManDpa.FatDvpNroNfs.Value;

  LbNroIni.Caption := fNumZeros(IntToStr(NroIni),8);

  LbNroFin.Caption := fNumZeros(IntToStr(NroFin),8);

  EdNroNfs.SetFocus;

end;

procedure TfmManSdp.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
       FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManSdp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := CaFree;
end;

end.
