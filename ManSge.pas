unit ManSge;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Db,
  DBTables, Wwquery, RDprint, dxExEdtr, FShowPadrao, dxColorCurrencyEdit;

type
  TfmManSge = class(TfmShowPadrao)
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
    Label6: TLabel;
    Label5: TLabel;
    EdSeqFin: TdxColorCurrencyEdit;
    EdSeqIni: TdxColorCurrencyEdit;
    Label7: TLabel;
    EdQtdNfs: TLabel;
    procedure bretornarClick(Sender: TObject);
    procedure bcontinuarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PaintBoxPaint(Sender: TObject);
  private
    {Private declarations}
  public
    NroIni, NroFin: integer;
    {Public declarations}
  end;

var
  fmManSge: TfmManSge;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManGer, ManGDB;

{$R *.DFM}

procedure TfmManSge.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManSge.bcontinuarClick(Sender: TObject);
var
  ArqTexto: TStringList;
  Nota01: array[1..208] of string;
  Nota02: array[1..208] of string;
  EndEnt1, EndEnt2, EndCob1, EndCob2, Linha, FonCli, NomCli, Pt1Cli, Fo1Cli, sCanc, sText, ImpClf, GImpRef: string;
  TecCli, EncCli, NrcCli, BacCli, CicCli, UfcCli, CecCli, ValorExt, ValorEx1, ValorEx2, ValorEx3, CgcCli, sContinuar: string;
  SeqNot, Tam, Reg, Inc, Col, Lin, r, i, j, rec, qtdIte, qtdNfs, qtdLin, qtdnfis, qtdimpr, qtitens, SeqGe2, qtdnot, qtinfg, seqnfg: integer;
begin
  if EdSeqIni.Value > 0 then
  begin

    if EdSeqFin.Value > 0 then
    begin

      if (EdSeqIni.Value >= NroIni) and (EdSeqFin.Value <= NroFin) then
      begin

        if EdSeqFin.Value >= EdSeqIni.Value then
        begin

          if fMsg('Confirma Emissão da 2ª Via da Nota Fiscal Informada ?', 'O') then
          begin

            if FileExists('C:\Emerion\LINCOL.TXT') then
            begin

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select ImpRef From FatPar';
                Open;

                GImpRef := FieldByName('ImpRef').AsString;

              end;

              ArqTexto := TStringList.Create;
              ArqTexto.LoadFromFile('C:\Emerion\LINCOL.TXT');

              qtdLin := ArqTexto.Count - 1; {Quantidade de Linhas no Arquivo LINCOL.TXT}

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select QtdLin,QtdNot,ImpClf From FatPar';
                Open;

                ImpClf := quSql.FieldbyName('ImpClf').AsString;
                QtdIte := quSql.FieldbyName('QtdLin').AsInteger;
                QtdNfs := quSql.FieldbyName('QtdNot').AsInteger;

              end;

              EndCob2 := '';
              EndEnt2 := '';

              if Trim(fmManGer.FatGerNomEnt.Value) <> '' then
              begin

                EndEnt1 := Trim(fmManGer.FatGerNomEnt.Value);

                EndEnt1 := EndEnt1 + ' C.N.P.J :' + copy(fmManGer.FatGerCgeCli.Value, 01, 2) + '.' + copy(fmManGer.FatGerCgeCli.Value, 3, 3) + '.' +
                  copy(fmManGer.FatGerCgeCli.Value, 06, 3) + '/' + copy(fmManGer.FatGerCgeCli.Value, 9, 4) + '-' +
                  copy(fmManGer.FatGerCgeCli.Value, 13, 2);

                if Trim(fmManGer.FatGerTenCli.Value) <> '' then
                  EndEnt2 := Trim(fmManGer.FatGerTenCli.Value) + ' ';

                if Trim(fmManGer.FatGerNumCli.Value) <> '' then
                  EndEnt2 := EndEnt2 + Trim(fmManGer.FatGerEndCli.Value) + ', ' + Trim(fmManGer.FatGerNumCli.Value) + ' '
                else
                  EndEnt2 := EndEnt2 + Trim(fmManGer.FatGerEndCli.Value) + ' ';

                EndEnt2 := EndEnt2 + Trim(fmManGer.FatGerBaiCli.Value) + ' - ' + Trim(fmManGer.FatGerCidCli.Value) + ' ' + Trim(fmManGer.FatGerUfeCli.Value) +
                  ' Cep ' + Trim(fmManGer.FatGerCepCli.Value);

              end
              else
              begin

                if Trim(fmManGer.FatGerTenCli.Value) <> '' then
                  EndEnt1 := Trim(fmManGer.FatGerTenCli.Value) + ' ';

                if Trim(fmManGer.FatGerNumCli.Value) <> '' then
                  EndEnt1 := EndEnt1 + Trim(fmManGer.FatGerEndCli.Value) + ', ' + Trim(fmManGer.FatGerNumCli.Value) + ' '
                else
                  EndEnt1 := EndEnt1 + Trim(fmManGer.FatGerEndCli.Value) + ' ';

                EndEnt1 := EndEnt1 + Trim(fmManGer.FatGerBaiCli.Value) + ' - ' + Trim(fmManGer.FatGerCidCli.Value) + ' ' + Trim(fmManGer.FatGerUfeCli.Value) +
                  ' Cep ' + Trim(fmManGer.FatGerCepCli.Value);

                EndEnt2 := 'C.N.P.J.:' + copy(fmManGer.FatGerCgeCli.Value, 01, 2) + '.' + copy(fmManGer.FatGerCgeCli.Value, 3, 3) + '.' +
                  copy(fmManGer.FatGerCgeCli.Value, 06, 3) + '/' + copy(fmManGer.FatGerCgeCli.Value, 9, 4) + '-' +
                  copy(fmManGer.FatGerCgeCli.Value, 13, 2);

              end;

              Nota01[001] := 'NumNot';
              Nota02[001] := 'Comp12';

              Nota01[002] := fmManGer.FatGerFlgSai.Value; {Saida}
              Nota02[002] := 'Comp12';

              Nota01[003] := fmManGer.FatGerFlgEnt.Value; {Entrada}
              Nota02[003] := 'Comp12';

              Nota01[004] := Trim(fmManGer.FatGerDesNat.Value); {NatOper}
              Nota02[004] := 'Comp12';

              if Trim(fmManGer.FatGerCodCf2.Value) <> '' then {Cfop}
                Nota01[005] := Trim(fmManGer.FatGerCodCf1.Value) + '/' + Trim(fmManGer.FatGerCodCf2.Value)
              else
                Nota01[005] := Trim(fmManGer.FatGerCodCf1.Value);

              Nota02[005] := 'Comp12';

              Nota01[006] := '';
              Nota02[006] := 'Comp12';

              Nota01[007] := fmManGer.FatGerInsSub.Value; {InscEstSubTrib}
              Nota02[007] := 'Comp12';

              Nota01[010] := DateToStr(fmManGer.FatGerDteFat.Value); {DataEmis}
              Nota02[010] := 'Comp12';

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select FinCli.NomCli,' +
                  '        FinCli.CgcCli,' +
                  '        FinCli.TefCli,' +
                  '        FinCli.TecCli,' +
                  '        FinCli.EnfCli,' +
                  '        FinCli.EncCli,' +
                  '        FinCli.NrfCli,' +
                  '        FinCli.NrcCli,' +
                  '        FinCli.BafCli,' +
                  '        FinCli.BacCli,' +
                  '        FinCli.CifCli,' +
                  '        FinCli.CicCli,' +
                  '        FinCli.UffCli,' +
                  '        FinCli.UfcCli,' +
                  '        FinCli.CefCli,' +
                  '        FinCli.CecCli,' +
                  '        FinCli.Pt1Cli,' +
                  '        FinCli.Fo1Cli,' +
                  '        FinCli.InsCli From FinCli Where FinCli.CodCli = ''' + IntToStr(fmManGer.FatGerCodCli.Value) + '''';
                Open;

                if Trim(FieldbyName('TecCli').AsString) <> '' then
                  EndCob1 := Trim(FieldbyName('TecCli').AsString);

                EndCob1 := EndCob1 + ' ' + Trim(FieldbyName('EncCli').AsString) + ' No. ' + Trim(FieldbyName('NrcCli').AsString) + ' ' +
                  Trim(FieldbyName('BacCli').AsString) + ' - ' + Trim(FieldbyName('CicCli').AsString) + ' ' +
                  Trim(FieldbyName('UfcCli').AsString) + ' Cep ' + Trim(FieldbyName('CecCli').AsString);

                if Trim(FieldbyName('Pt1Cli').AsString) <> '' then
                  FonCli := '(' + Trim(FieldbyName('Pt1Cli').AsString) + ')' + Trim(FieldbyName('Fo1Cli').AsString)
                else
                  FonCli := Trim(FieldbyName('Fo1Cli').AsString);

                Nota01[008] := FieldbyName('NomCli').AsString; {Nome do Cliente}
                Nota02[008] := 'Comp12';

                CgcCli := fLimpaStr(FieldbyName('CgcCli').AsString);

                if Length(Trim(CgcCli)) <= 11 then
                  Nota01[009] := copy(CgcCli, 1, 3) + '.' + copy(CgcCli, 4, 3) + '.' +
                    copy(CgcCli, 7, 3) + '-' + copy(CgcCli, 10, 2)
                else
                  Nota01[009] := copy(CgcCli, 01, 2) + '.' + copy(CgcCli, 3, 3) + '.' +
                    copy(CgcCli, 06, 3) + '/' + copy(CgcCli, 9, 4) + '-' +
                    copy(CgcCli, 13, 2);

                Nota02[009] := 'Comp12';

                Nota01[011] := Trim(FieldbyName('TEfCli').AsString) + ' ' + Trim(FieldbyName('EnfCli').AsString) + ', ' + Trim(FieldbyName('NrfCli').AsString);
                  {Endereco}
                Nota02[011] := 'Comp12';

                Nota01[012] := FieldbyName('BafCli').AsString; {Bairro}
                Nota02[012] := 'Comp12';

                if Trim(FieldbyName('CefCli').AsString) <> '' then {Cep}
                  Nota01[013] := copy(FieldbyName('CefCli').AsString, 1, 5) + '-' + copy(FieldbyName('CefCli').AsString, 6, 3)
                else
                  Nota01[013] := ' ';

                Nota02[013] := 'Comp12';

                Nota01[014] := ''; {DataSai}
                Nota02[014] := '';

                Nota01[015] := FieldbyName('CifCli').AsString; {Cidade}
                Nota02[015] := 'Comp12';

                Nota01[016] := FonCli; {Fone}
                Nota02[016] := 'Comp12';

                Nota01[017] := FieldbyName('UffCli').AsString; {Uf}
                Nota02[017] := 'Comp12';

                Nota01[018] := FieldbyName('InsCli').AsString; {InscEst}
                Nota02[018] := 'Comp12';

              end;

              Nota01[019] := ''; {Hora da Saida}
              Nota02[019] := 'Comp12';

              Nota01[208] := ' '; {Detalhamento do ICMS}
              Nota02[208] := 'Comp20';

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select FatGe3.NroGe3,' +
                  '        FatGe3.DtvGe3,' +
                  '        FatGe3.VlpGe3 From FatGe3' +
                  ' Where FatGe3.CodEmp = :CodEmp' +
                  '   and FatGe3.DteGer = :DteGer' +
                  '   and FatGe3.NumGer = :NumGer';

                with Params do
                begin

                  Params[0].AsInteger := fmManGer.FatGerCodEmp.Value;
                  Params[1].AsDateTime := fmManGer.FatGerDteGer.Value;
                  Params[2].AsInteger := fmManGer.FatGerNumGer.Value;

                end;

                Open;
                First;

              end;

              i := 131;

              rec := 0;

              while not quSQL.Eof do
              begin

                Nota01[i] := fNumZeros(IntToStr(fmManGer.FatGerNroNfs.Value), 6) + '/' + FNumZeros(IntToStr(quSQL.FieldbyName('NroGe3').AsInteger), 3); {Número}
                Nota02[i] := 'Comp12';

                i := i + 1;

                rec := rec + 1;

                if rec = 8 then
                  i := 195;

                if rec > 12 then
                  quSQL.Last
                else
                  quSQL.Next;

              end;

              quSQL.First;

              i := 141;

              rec := 0;

              while not quSQL.Eof do
              begin

                Nota01[i] := quSQL.FieldbyName('DtvGe3').AsString; {Vencimento}
                Nota02[i] := 'Comp12';

                i := i + 1;

                rec := rec + 1;

                if rec = 8 then
                  i := 199;

                if rec > 12 then
                  quSQL.Last
                else
                  quSQL.Next;

              end;

              quSQL.First;

              i := 151;

              rec := 0;

              while not quSQL.Eof do
              begin

                Nota01[i] := Prestring(FormatFloat('###,###,##0.00', quSQL.FieldbyName('VlpGe3').AsFloat), 14); {Valor}
                Nota02[i] := 'Comp12';

                i := i + 1;

                rec := rec + 1;

                if rec = 8 then
                  i := 203;

                if rec > 12 then
                  quSQL.Last
                else
                  quSQL.Next;

              end;

              i := 161;

              rec := 0;

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select * From FatGse' +
                  ' Where FatGse.CodEmp = :CodEmp' +
                  '   and FatGse.DteGer = :DteGer' +
                  '   and FatGse.NumGer = :NumGer';

                with Params do
                begin

                  Params[0].AsInteger := fmManGer.FatGerCodEmp.Value;
                  Params[1].AsDateTime := fmManGer.FatGerDteGer.Value;
                  Params[2].AsInteger := fmManGer.FatGerNumGer.Value;

                end;

                Open;
                First;

              end;

              while not quSQL.Eof do
              begin

                if (quSql.FieldbyName('CodGru').AsString <> '888') and (quSql.FieldbyName('CodGru').AsString <> '999') then
                  Nota01[i] := quSql.FieldbyName('CodGru').AsString + '.' + quSql.FieldbyName('CodSub').AsString + '.' + quSql.FieldbyName('CodPro').AsString
                else
                  Nota01[i] := ' ';

                Nota02[i] := 'Comp20';

                i := i + 1;

                if rec > 4 then
                  quSQL.Last
                else
                  quSQL.Next;

              end;

              i := 165;

              quSQL.First;

              while not quSQL.Eof do
              begin

                if Trim(copy(quSql.FieldbyName('DesSer').AsString, 1, 40)) <> '' then
                  Nota01[i] := copy(quSql.FieldbyName('DesSer').AsString, 1, 40)
                else
                  Nota01[i] := ' ';

                Nota02[i] := 'Comp20';

                i := i + 1;

                if rec > 4 then
                  quSQL.Last
                else
                  quSQL.Next;

              end;

              i := 169;

              quSQL.First;

              while not quSQL.Eof do
              begin

                if Trim(quSql.FieldbyName('CodUnd').AsString) <> '' then
                  Nota01[i] := quSql.FieldbyName('CodUnd').AsString
                else
                  Nota01[i] := ' ';

                Nota02[i] := 'Comp20';

                i := i + 1;

                if rec > 4 then
                  quSQL.Last
                else
                  quSQL.Next;

              end;

              i := 173;

              quSQL.First;

              while not quSQL.Eof do
              begin

                if quSql.FieldbyName('QtpSer').AsFloat > 0 then
                begin

                  if fEncDecimal(quSql.FieldbyName('QtpSer').AsFloat) > 0 then
                    Nota01[i] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('QtpSer').AsFloat), 12)
                  else
                    Nota01[i] := Prestring(FormatFloat('####,###,##0', quSql.FieldbyName('QtpSer').AsFloat), 12);

                end
                else
                  Nota01[i] := ' ';

                Nota02[i] := 'Comp20';

                i := i + 1;

                if rec > 4 then
                  quSQL.Last
                else
                  quSQL.Next;

              end;

              i := 177;

              quSQL.First;

              while not quSQL.Eof do
              begin

                if quSql.FieldbyName('VluSer').AsFloat > 0 then
                  Nota01[i] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('VluSer').AsFloat), 12)
                else
                  Nota01[i] := ' ';

                Nota02[i] := 'Comp20';

                i := i + 1;

                if rec > 4 then
                  quSQL.Last
                else
                  quSQL.Next;

              end;

              i := 181;

              quSQL.First;

              while not quSQL.Eof do
              begin

                if quSql.FieldbyName('TotSer').AsFloat > 0 then
                  Nota01[i] := Prestring(FormatFloat('###,###,##0.00', quSql.FieldbyName('TotSer').AsFloat), 12)
                else
                  Nota01[i] := ' ';

                Nota02[i] := 'Comp20';

                i := i + 1;

                if rec > 4 then
                  quSQL.Last
                else
                  quSQL.Next;

              end;

              if fmManGer.FatGerTotIs1.Value > 0 then
                Nota01[185] := Prestring(FormatFloat('###,###,##0.00', fmManGer.FatGerTotIs1.Value), 14)
              else
                Nota01[185] := ' ';

              Nota02[185] := 'Comp12';

              if fmManGer.FatGerTotSe1.Value > 0 then
                Nota01[186] := Prestring(FormatFloat('###,###,##0.00', fmManGer.FatGerTotSe1.Value), 14)
              else
                Nota01[186] := ' ';

              Nota02[186] := 'Comp12';

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

              Nota01[053] := fmManGer.FatGerTxfIpi.Value; {TextIpi}
              Nota02[053] := 'Comp20';

              Nota01[054] := fmManGer.FatGerTxfIcm.Value; {TextIcm}
              Nota02[054] := 'Comp20';

              Nota01[055] := 'Entrega: ' + EndEnt1; {Entrega_1}
              Nota02[055] := 'Comp20';

              Nota01[056] := '         ' + EndEnt2; {Entrega_2}
              Nota02[056] := 'Comp20';

              Nota01[067] := fmManGer.FatGerNomTra.Value; {NomeTransp}
              Nota02[067] := 'Comp12';

              Nota01[068] := fmManGer.FatGerTipFrt.Value; {FretePc}
              Nota02[068] := 'Comp12';

              Nota01[069] := fmManGer.FatGerPlcTra.Value; {Placa}
              Nota02[069] := 'Comp12';

              Nota01[070] := fmManGer.FatGerUfePlc.Value; {UfPlaca}
              Nota02[070] := 'Comp12';

              if Trim(fmManGer.FatGerCgcTra.Value) <> '' then

                Nota01[071] := copy(fmManGer.FatGerCgcTra.Value, 01, 2) + '.' + copy(fmManGer.FatGerCgcTra.Value, 3, 3) + '.' +
                  copy(fmManGer.FatGerCgcTra.Value, 06, 3) + '/' + copy(fmManGer.FatGerCgcTra.Value, 9, 4) + '-' +
                  copy(fmManGer.FatGerCgcTra.Value, 13, 2)

              else
                Nota01[071] := ' ';

              Nota02[071] := 'Comp12';

              Nota01[072] := Trim(fmManGer.FatGerTenTra.Value) + ' ' + Trim(fmManGer.FatGerEndTra.Value) + ', ' + Trim(fmManGer.FatGerNumTra.Value) + ' ' +
                Trim(fmManGer.FatGerBaiTra.Value);
              Nota02[072] := 'Comp12';

              Nota01[073] := fmManGer.FatGerCidTra.Value; {CidTransp}
              Nota02[073] := 'Comp12';

              Nota01[074] := fmManGer.FatGerUfeTra.Value; {UFTransp}
              Nota02[074] := 'Comp12';

              Nota01[075] := fmManGer.FatGerInsTra.Value; {InscTransp}
              Nota02[075] := 'Comp12';

              // De Acordo com o Toninho Por Enquanto Deixar o Campo de Volumes Em branco Em  : 02/07/2003 //
              // So Exibir se a Valeria Alterar o seu Conteudo "Notas de Exportação //

              if fmManGer.FatGerAltVol.Value > 0 then
                Nota01[076] := Prestring(IntToStr(fmManGer.FatGerAltVol.Value), 7) {QtdeVol}
              else
                Nota01[076] := ' ';

              Nota02[076] := 'Comp12';

              Nota01[077] := fmManGer.FatGerEspGer.Value; {Especie}
              Nota02[077] := 'Comp12';

              Nota01[078] := fmManGer.FatGerMarGer.Value; {Marca}
              Nota02[078] := 'Comp12';

              Nota01[079] := fmManGer.FatGerNroGer.Value; {Numero}
              Nota02[079] := 'Comp12';

              Nota01[080] := Prestring(FormatFloat('###,###,##0.00', fmManGer.FatGerInfBrt.Value), 14); {PesBruto}
              Nota02[080] := 'Comp12';

              Nota01[081] := Prestring(FormatFloat('###,###,##0.00', fmManGer.FatGerInfLiq.Value), 14); {PesLiq}
              Nota02[081] := 'Comp12';

              if (Trim(fmManGer.FatGerOb1Ger.Value) = '') and
                (Trim(fmManGer.FatGerOb2Ger.Value) = '') and
                (Trim(fmManGer.FatGerOb3Ger.Value) = '') and
                (Trim(fmManGer.FatGerOb4Ger.Value) = '') and
                (Trim(fmManGer.FatGerOb5Ger.Value) = '') and
                (Trim(fmManGer.FatGerOb6Ger.Value) = '') and
                (Trim(fmManGer.FatGerOb7Ger.Value) = '') and
                (Trim(fmManGer.FatGerOb8Ger.Value) = '') then
              begin

                Nota01[187] := copy(fmManGer.FatGerObsGer.Value, 001, 070); {Obs1}
                Nota02[187] := 'Comp20';

                Nota01[188] := copy(fmManGer.FatGerObsGer.Value, 071, 070); {Obs2}
                Nota02[188] := 'Comp20';

                Nota01[189] := copy(fmManGer.FatGerObsGer.Value, 141, 070); {Obs3}
                Nota02[189] := 'Comp20';

                Nota01[190] := copy(fmManGer.FatGerObsGer.Value, 211, 070); {Obs4}
                Nota02[190] := 'Comp20';

                Nota01[191] := copy(fmManGer.FatGerObsGer.Value, 281, 070); {Obs5}
                Nota02[191] := 'Comp20';

                Nota01[192] := copy(fmManGer.FatGerObsGer.Value, 351, 070); {Obs6}
                Nota02[192] := 'Comp20';

                Nota01[193] := ' '; {Obs7}
                Nota02[193] := 'Comp20';

                Nota01[194] := ' '; {Obs8}
                Nota02[194] := 'Comp20';

              end
              else
              begin

                Nota01[187] := fmManGer.FatGerOb1Ger.Value; {Obs1}
                Nota02[187] := 'Comp20';

                Nota01[188] := fmManGer.FatGerOb2Ger.Value; {Obs2}
                Nota02[188] := 'Comp20';

                Nota01[189] := fmManGer.FatGerOb3Ger.Value; {Obs3}
                Nota02[189] := 'Comp20';

                Nota01[190] := fmManGer.FatGerOb4Ger.Value; {Obs4}
                Nota02[190] := 'Comp20';

                Nota01[191] := fmManGer.FatGerOb5Ger.Value; {Obs5}
                Nota02[191] := 'Comp20';

                Nota01[192] := fmManGer.FatGerOb6Ger.Value; {Obs6}
                Nota02[192] := 'Comp20';

                Nota01[193] := fmManGer.FatGerOb7Ger.Value; {Obs7}
                Nota02[193] := 'Comp20';

                Nota01[194] := fmManGer.FatGerOb8Ger.Value; {Obs8}
                Nota02[194] := 'Comp20';

              end;

              Nota01[117] := IntToStr(fmManGer.FatGerCodCli.Value); {código do Cliente}
              Nota02[117] := 'Comp12';

              Nota01[118] := fNumZeros(IntToStr(fmManGer.FatGerCodVen.Value), 3); {código do Vendedor}
              Nota02[118] := 'Comp12';

              Nota01[119] := ''; {SeuPed}
              Nota02[119] := 'Comp12';

              Nota01[120] := fNumZeros(IntToStr(fmManGer.FatGerNumGer.Value), 7); {Nosso Pedido}
              Nota02[120] := 'Comp12';

              Nota01[121] := 'NumNot'; {NotaRod1}
              Nota02[121] := 'Comp20';

              Nota01[122] := 'NumNot'; {NotaRod2}
              Nota02[122] := 'Comp20';

              ValorExt := fExtenso(fmManGer.FatGerTotGer.Value);

              if Length(TrimLeft(TrimRight(ValorExt))) < 150 then
                ValorExt := TrimLeft(TrimRight(ValorExt)) + fReplicate('*', 150 - Length(TrimLeft(TrimRight(ValorExt))));

              Nota01[123] := copy(ValorExt, 001, 50); {Valor por Extenso 1}
              Nota02[123] := 'Comp12';

              Nota01[124] := copy(ValorExt, 051, 50); {Valor por Extenso 2}
              Nota02[124] := 'Comp12';

              Nota01[125] := copy(ValorExt, 101, 50); {Valor por Extenso 3}
              Nota02[125] := 'Comp12';

              Nota01[126] := fmManGer.FatGerDesReg.Value; {Observações Sobre Desconto}
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

              SeqGe2 := 0; {sequencial dos Itens a Serem Impressos}

              Lin := 0; {Linha que Esta Sendo Impressas} {Incrementos de Linhas}
              Inc := 0; {Incrementos de Linhas}
              Col := 0; {Posição da Coluna a ser Impressa}
              Reg := 0; {Numero do Vetor a Ser Impresso}
              Tam := 0; {Tamanho da String a Ser Impressa}

              qtdnot := 1; {Quantidade de Notas Impressas}

              rdprint1.abrir;

              qtdnot := StrToInt(FloatToStr(EdSeqIni.value)); {Quantidade de Notas Impressas}

              qtdnfis := StrToInt(FloatToStr(EdSeqIni.value)); {Quantidade de Notas Fiscais Impressas}

              seqnot := StrToInt(FloatToStr(EdSeqFin.value));

              while qtdnfis <= seqnot do
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select Count(*) as QtdReg From FatGe2' +
                    ' Where FatGe2.CodEmp = :CodEmp' +
                    '   and FatGe2.DteGer = :DteGer' +
                    '   and FatGe2.NumGer = :NumGer' +
                    '   and FatGe2.SeqNfg = :SeqNfg';

                  with Params do
                  begin

                    Params[0].AsInteger := fmManGer.FatGerCodEmp.Value;
                    Params[1].AsDateTime := fmManGer.FatGerDteGer.Value;
                    Params[2].AsInteger := fmManGer.FatGerNumGer.Value;
                    Params[3].AsInteger := qtdnfis;

                  end;

                  Open;

                  QtiNfg := FieldbyName('QtdReg').AsInteger;

                end;

                SeqNfg := 0;

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select FatNfg.CodEmp,' +
                    '        FatNfg.BasIcm,' +
                    '        FatNfg.TotIcm,' +
                    '        FatNfg.BasSub,' +
                    '        FatNfg.TotSub,' +
                    '        FatNfg.TotIte,' +
                    '        FatNfg.TotDsr,' +
                    '        FatNfg.TotFrt,' +
                    '        FatNfg.TotSeg,' +
                    '        FatNfg.TotDes,' +
                    '        FatNfg.TotIpi,' +
                    '        FatNfg.TotGer From FatNfg' +
                    ' Where FatNfg.CodEmp = :CodEmp' +
                    '   and FatNfg.DteGer = :DteGer' +
                    '   and FatNfg.NumGer = :NumGer' +
                    '   and FatNfg.SeqNfg = :SeqNfg';

                  with Params do
                  begin

                    Params[0].AsInteger := fmManGer.FatGerCodEmp.Value;
                    Params[1].AsDateTime := fmManGer.FatGerDteGer.Value;
                    Params[2].AsInteger := fmManGer.FatGerNumGer.Value;
                    Params[3].AsInteger := qtdnfis;

                  end;

                  Open;

                end;

                if qtdnfis = fmManGer.FatGerQtdNfs.Value then
                begin

                  with quSQL, SQL do
                  begin

                    Close;
                    Text := ' Select Count(Distinct(FatGe5.PerIcm)) as QtdReg' +
                      ' From FatGe5' +
                      ' Where FatGe5.CodEmp = :CodEmp' +
                      '   and FatGe5.DteGer = :DteGer' +
                      '   and FatGe5.NumGer = :NumGer';

                    with Params do
                    begin

                      Params[0].AsInteger := fmManGer.FatGerCodEmp.Value;
                      Params[1].AsDateTime := fmManGer.FatGerDteGer.Value;
                      Params[2].AsInteger := fmManGer.FatGerNumGer.Value;

                    end;

                    Open;

                  end;

                  if quSQL.FieldbyName('QtdReg').AsInteger > 1 then
                  begin

                    with quSQL, SQL do
                    begin

                      Close;
                      Text := ' Select FatGe5.PerIcm,' +
                        '        Sum(FatGe5.BasIcm) as BasIcm,' +
                        '        Sum(FatGe5.TotIcm) as TotIcm ' +
                        ' From FatGe5' +
                        ' Where FatGe5.CodEmp = :CodEmp' +
                        '   and FatGe5.DteGer = :DteGer' +
                        '   and FatGe5.NumGer = :NumGer' +
                        ' Group by FatGe5.PerIcm' +
                        ' Order by FatGe5.PerIcm';

                      with Params do
                      begin

                        Params[0].AsInteger := fmManGer.FatGerCodEmp.Value;
                        Params[1].AsDateTime := fmManGer.FatGerDteGer.Value;
                        Params[2].AsInteger := fmManGer.FatGerNumGer.Value;

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
                        Nota01[208] := 'Base ' + FormatFloat('###', quSQL.FieldbyName('PerIcm').AsFloat) + '% R$ ' + preString(FormatFloat('###,###,##0.00',
                          quSQL.FieldbyName('BasIcm').AsFloat), 15) + ' Imp. R$ ' + preString(FormatFloat('###,###,##0.00', quSQL.FieldbyName('TotIcm').AsFloat),
                          15);

                      quSQL.Next;

                    end;
                  end;

                  {BaseIcms}
                  if fmManGer.FatGerBasIc1.Value > 0 then
                    Nota01[057] := Prestring(FormatFloat('###,###,##0.00', fmManGer.FatGerBasIc1.Value), 14)
                  else
                    Nota01[057] := ' ';

                  Nota02[057] := 'Comp12';

                  {ValIcms}
                  if fmManGer.FatGerTotIc1.Value > 0 then
                    Nota01[058] := Prestring(FormatFloat('###,###,##0.00', fRound(fmManGer.FatGerTotIc1.Value, 2)), 14)
                  else
                    Nota01[058] := ' ';

                  Nota02[058] := 'Comp12';

                  {BaseIcmsSub}
                  if fmManGer.FatGerBasSu1.Value > 0 then
                    Nota01[059] := Prestring(FormatFloat('###,###,##0.00', fmManGer.FatGerBasSu1.Value), 14)
                  else
                    Nota01[059] := ' ';

                  Nota02[059] := 'Comp12';

                  {ValIcmsSub}
                  if fmManGer.FatGerTotSu1.Value > 0 then
                    Nota01[060] := Prestring(FormatFloat('###,###,##0.00', fRound(fmManGer.FatGerTotSu1.Value, 2)), 14)
                  else
                    Nota01[060] := ' ';

                  Nota02[060] := 'Comp12';

                  Nota01[061] := Prestring(FormatFloat('###,###,##0.00', fmManGer.FatGerTotIt1.Value), 14); {TotalProds}
                  Nota02[061] := 'Comp12';

                  if fmManGer.FatGerTotFrt.Value > 0 then
                    Nota01[062] := Prestring(FormatFloat('###,###,##0.00', fmManGer.FatGerTotFrt.Value), 14) {Frete}
                  else
                    Nota01[062] := ' ';

                  Nota02[062] := 'Comp12';

                  if fmManGer.FatGerTotSeg.Value > 0 then
                    Nota01[063] := Prestring(FormatFloat('###,###,##0.00', fmManGer.FatGerTotSeg.Value), 14) {Seguro}
                  else
                    Nota01[063] := ' ';

                  Nota02[063] := 'Comp12';

                  if fmManGer.FatGerTotDes.Value > 0 then
                    Nota01[064] := Prestring(FormatFloat('###,###,##0.00', fmManGer.FatGerTotDes.Value), 14) {Outras}
                  else
                    Nota01[064] := ' ';

                  Nota02[064] := 'Comp12';

                  if fmManGer.FatGerTotIp1.Value > 0 then
                    Nota01[065] := Prestring(FormatFloat('###,###,##0.00', fRound(fmManGer.FatGerTotIp1.Value, 2)), 14) {TotalIPI}
                  else
                    Nota01[065] := ' ';

                  Nota02[065] := 'Comp12';

                  if fmManGer.FatGerTotGe1.Value > 0 then
                    Nota01[066] := Prestring(FormatFloat('###,###,##0.00', fmManGer.FatGerTotGe1.Value), 14) {TotalNota}
                  else
                    Nota01[066] := ' ';

                  Nota02[066] := 'Comp12';

                  Nota01[126] := fmManGer.FatGerDesReg.Value; {Descontos Gerais na Nota}
                  Nota02[126] := 'Comp20';

                  if fmManGer.FatGerTotDsr.Value > 0 then
                    Nota01[127] := PreString('-' + Trim(FormatFloat('###,##0.00', fmManGer.FatGerTotDsr.Value)), 12) {Descontos Gerais na Nota}
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

                  Nota01[066] := '***,***,***.**';
                  Nota02[066] := 'Comp12';

                  {Descontos Gerais na Nota}
                  Nota01[126] := ' ';
                  Nota02[126] := 'Comp20';

                  Nota01[127] := ' ';
                  Nota02[127] := 'Comp20';

                end;

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select FatGe4.SeqGe4,' +
                    '        FatGe4.ClsIpi From FatGe4' +
                    ' Where FatGe4.CodEmp = :CodEmp' +
                    '   and FatGe4.DteGer = :DteGer' +
                    '   and FatGe4.NumGer = :NumGer' +
                    '   and FatGe4.SeqNfg = :SeqNfg' +
                    ' Order by FatGe4.SeqGe4';

                  with Params do
                  begin

                    Params[0].AsInteger := fmManGer.FatGerCodEmp.Value;
                    Params[1].AsDateTime := fmManGer.FatGerDteGer.Value;
                    Params[2].AsInteger := fmManGer.FatGerNumGer.Value;
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
                    Nota01[i] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqGe4').AsInteger), 3) + ' - ' + quSQL.FieldbyName('ClsIpi').AsString
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

                            rdprint1.impf(Lin, Col, fNumZeros(IntToStr(fmManGer.FatGerNroNfs.Value), 6), [EXPANDIDO, negrito]);

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

                                if qtdnfis = fmManGer.FatGerQtdNfs.Value then
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

                              SeqGe2 := SeqGe2 + 1;
                              SeqNfg := SeqNfg + 1;

                              if qtdimpr = 0 then
                                qtdimpr := Lin;

                              with quSQL, SQL do
                              begin

                                Close;
                                Text := ' Select FatGe2.CodClp,' +
                                  '        FatGe2.CodGru,' +
                                  '        FatGe2.CodSub,' +
                                  '        FatGe2.CodPro,' +
                                  '        FatGe2.NroNfs,' +
                                  '        FatGe2.SeqNfg,' +
                                  '        FatGe2.DesGe2,' +
                                  '        FatGe2.ObsGe2,' +
                                  '        FatGe2.RefGe2,' +
                                  '        FatGe2.SeqGe4,' +
                                  '        FatGe2.ClsIpi,' +
                                  '        FatGe2.CodSt1,' +
                                  '        FatGe2.CodSt2,' +
                                  '        FatGe2.CodUnd,' +
                                  '        FatGe2.QtpGe2,' +
                                  '        FatGe2.CodUnd,' +
                                  '        FatGe2.VlqGe2,' +
                                  '        FatGe2.TotIte,' +
                                  '        FatGe2.TrbIcm,' +
                                  '        FatGe2.IcmGe2,' +
                                  '        FatGe2.TrbIpi,' +
                                  '        FatGe2.IpiGe2,' +
                                  '        FatGe2.TotIpi ' +
                                  ' From FatGe2' +
                                  ' Where FatGe2.CodEmp = :CodEmp' +
                                  '   and FatGe2.DteGer = :DteGer' +
                                  '   and FatGe2.NumGer = :NumGer' +
                                  '   and FatGe2.NroGe2 = :NroGe2';

                                with Params do
                                begin

                                  Params[0].AsInteger := fmManGer.FatGerCodEmp.Value;
                                  Params[1].AsDateTime := fmManGer.FatGerDteGer.Value;
                                  Params[2].AsInteger := fmManGer.FatGerNumGer.Value;
                                  Params[3].AsInteger := SeqGe2;

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
                                  begin

                                    if (quSql.FieldbyName('CodGru').AsString <> '888') and (quSql.FieldbyName('CodGru').AsString <> '999') then
                                      Nota01[040] := quSql.FieldbyName('CodClp').AsString + '-' + quSql.FieldbyName('CodGru').AsString + '.' +
                                        quSql.FieldbyName('CodSub').AsString + '.' + quSql.FieldbyName('CodPro').AsString
                                    else
                                      Nota01[040] := ' ';

                                  end
                                  else
                                    Nota01[040] := Trim(quSql.FieldbyName('RefGe2').AsString);

                                  Nota02[040] := 'Comp20';

                                  {Descr}
                                  Nota01[041] := Trim(quSql.FieldbyName('DesGe2').AsString);
                                  Nota02[041] := 'Comp20';

                                  {Descr}

                                  if Trim(quSql.FieldbyName('RefGe2').AsString) <> '' then
                                    Nota01[052] := Trim(quSql.FieldbyName('RefGe2').AsString)
                                  else
                                    Nota01[052] := ' ';

                                  Nota02[052] := 'Comp20';

                                  {ClassFisc}
                                  if Trim(quSQL.FieldbyName('ClsIpi').AsString) <> '' then
                                    Nota01[042] := fLimpaStr(quSql.FieldbyName('ClsIpi').AsString)
                                  else
                                    Nota01[042] := ' ';

                                  Nota02[042] := 'Comp20';

                                  if Trim(quSQL.FieldbyName('SeqGe4').AsString) <> '' then
                                    Nota01[207] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqGe4').AsInteger), 3)
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

                                  if quSql.FieldbyName('QtpGe2').AsFloat > 0 then
                                  begin

                                    if fEncDecimal(quSql.FieldbyName('QtpGe2').AsFloat) > 0 then
                                      Nota01[046] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('QtpGe2').AsFloat), 12)
                                    else
                                      Nota01[046] := Prestring(FormatFloat('####,###,##0', quSql.FieldbyName('QtpGe2').AsFloat), 12);

                                  end
                                  else
                                    Nota01[046] := ' ';

                                  Nota02[046] := 'Comp20';

                                  {Unit}
                                  if quSql.FieldbyName('VlqGe2').AsFloat > 0 then
                                    Nota01[047] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('VlqGe2').AsFloat), 12)
                                  else
                                    Nota01[047] := ' ';

                                  Nota02[047] := 'Comp20';

                                  {Total}
                                  if quSql.FieldbyName('TotIte').AsFloat > 0 then
                                    Nota01[048] := Prestring(FormatFloat('###,###,##0.00', quSql.FieldbyName('TotIte').AsFloat), 12)
                                  else
                                    Nota01[048] := ' ';

                                  Nota02[048] := 'Comp20';

                                  {AlIcms}
                                  if quSql.FieldbyName('TrbIcm').AsString = 'Sim' then
                                    Nota01[049] := Prestring(FormatFloat('##0', quSql.FieldbyName('IcmGe2').AsFloat), 3)
                                  else
                                    Nota01[049] := ' ';

                                  Nota02[049] := 'Comp20';

                                  {AlIpi}
                                  if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                    Nota01[050] := Prestring(FormatFloat('##0', quSql.FieldbyName('IpiGe2').AsFloat), 3)
                                  else
                                    Nota01[050] := ' ';

                                  Nota02[050] := 'Comp20';

                                  {ValIpi}
                                  if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                    Nota01[051] := Prestring(FormatFloat('###,##0.00', fRound(quSql.FieldbyName('TotIpi').AsFloat, 2)), 10)
                                  else
                                  begin

                                    if quSql.FieldbyName('TotIpi').AsFloat > 0 then
                                      Nota01[051] := Prestring(FormatFloat('###,##0.00', fRound(quSql.FieldbyName('TotIpi').AsFloat, 2)), 10)
                                    else
                                      Nota01[051] := ' ';

                                  end;

                                  Nota02[051] := 'Comp20';

                                  rec := r;

                                  i := rec + 18;

                                  Inc := StrToInt(copy(Linha, pos('=', Linha) + 1, 3)); {Linha encontrada e de Incremento de Saltos de Linhas}

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
                                                rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp12]);
                                              if Nota02[Reg] = 'Comp20' then
                                                rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp20]);
                                              if Nota02[Reg] = 'Comp17' then
                                                rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp17]);

                                            end
                                            else
                                            begin

                                              if (Reg = 52) and (Trim(quSql.FieldbyName('RefGe2').AsString) <> '') then
                                              begin

                                                {Descr2}
                                                Nota01[052] := Trim(quSql.FieldbyName('RefGe2').AsString);
                                                Nota02[052] := 'Comp20';

                                                Lin := Lin + Inc;

                                                if Nota02[Reg] = 'Comp12' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp12]);
                                                if Nota02[Reg] = 'Comp20' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp20]);
                                                if Nota02[Reg] = 'Comp17' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp17]);

                                              end;

                                              if (Reg = 128) and (Trim(quSql.FieldbyName('ObsGe2').AsString) <> '') then
                                              begin

                                                {Descr2}
                                                Nota01[128] := Trim(quSql.FieldbyName('ObsGe2').AsString);
                                                Nota02[128] := 'Comp20';

                                                Lin := Lin + Inc;

                                                if Nota02[Reg] = 'Comp12' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp12]);
                                                if Nota02[Reg] = 'Comp20' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp20]);
                                                if Nota02[Reg] = 'Comp17' then
                                                  rdprint1.impf(Lin, Col, copy(Nota01[reg], 1, Tam), [Comp17]);

                                              end;

                                              if ((Reg = 126) or (Reg = 127)) then
                                              begin

                                                if (fmManGer.FatGerTotDsr.Value > 0) and (SeqNfg = QtiNfg) then
                                                begin

                                                  { Só ira Imprimir o Campo de Descontos na Ultima Nota e se foi Efetuado Descontos na Nota }

                                                  Lin := Lin + Inc;

                                                  if Nota02[Reg] = 'Comp12' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                  if Nota02[Reg] = 'Comp20' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                  if Nota02[Reg] = 'Comp17' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

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
                                begin {Finalizar Nota para Impressão da Proxima Nota}

                                  SeqGe2 := SeqGe2 - 1;

                                  r := r + 18;

                                  qtitens := 2;

                                end;

                              end
                              else
                              begin {Não Ha Mais Itens para Impressão}

                                SeqGe2 := SeqGe2 - 1;

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

                                  if (Reg = 67) and (qtdnfis < fmManGer.FatGerQtdNfs.Value) then
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

                                    if (Reg >= 68) and (Reg <= 81) and (qtdnfis < fmManGer.FatGerQtdNfs.Value) then
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

                                      if (reg >= 187) and (reg <= 194) and (qtdnfis < fmManGer.FatGerQtdNfs.Value) then
                                      begin

                                        if reg = 187 then
                                          Linha := 'Continua ' + Trim(IntToStr(qtdnot)) + '/' + Trim(IntToStr(fmManGer.FatGerQtdNfs.Value))
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

              if fmManGer.FatGerFlgImp.Value = 'Nao' then
              begin

                if fMsg('Nota Impressa Corretamente', 'O') then
                begin

                  fmManGer.FatGer.Edit;

                  fmManGer.FatGerFlgAtu.Value := 'F';

                  fmManGer.FatGerFlgImp.Value := 'Sim';

                  with fmManGer.FatGer do
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

                      if fmManGer.FatGer.State <> dsBrowse then
                        fmManGer.FatGer.CancelUpdates;

                      fmManGer.FatGer.Close;
                      fmManGer.FatGer.Open;

                      EdSeqIni.SetFocus;

                      raise;

                    end;

                    CommitUpdates; {sucesso!, limpa o cache...}

                  end;

                  fmManGer.FatGer.Close;
                  fmManGer.FatGer.Open;

                  close;

                end
                else
                  EdSeqIni.SetFocus;

              end
              else
                Close;

            end
            else
              fmsgErro('Arquivo de Configuração da Nota Fiscal não Encontrado. Consulte o Administrador do Sistema para Maiores Informações', EdSeqIni);

          end;

        end
        else
          fmsgErro('Sequencia Final Informado é Menor que a Sequencia Inicial.', EdSeqFin);

      end
      else
        fmsgErro('Sequencias Informadas estão Incorretas para as Notas Emitidas para o Pedido.', EdSeqIni);

    end
    else
      fmsgErro('Número de Sequencia Final de Nota Fiscal Informado Fora da Sequencia de Notas Impressas para o Pedido.', EdSeqFin);

  end
  else
    fmsgErro('Número de Sequencia Inicial de Nota Fiscal Informado Fora da Sequencia de Notas Impressas para o Pedido.', EdSeqIni);
end;

procedure TfmManSge.FormShow(Sender: TObject);
begin
  inherited;

  EdQtdNfs.Caption := IntToStr(fmManGer.FatGerQtdNfs.Value);

  NroIni := 1;
  NroFin := fmManGer.FatGerQtdNfs.Value;

  EdSeqIni.Value := 1;
  EdSeqFin.Value := StrToFloat(IntToStr(fmManGer.FatGerQtdNfs.Value));

  EdSeqIni.SetFocus;

end;

procedure TfmManSge.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
