unit ManSeg;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, Db,
  DBTables, Wwquery, RDprint, dxExEdtr, FShowPadrao, dxColorCurrencyEdit;

type
  TfmManSeg = class(TfmShowPadrao)
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
    EdQtdNfs: TLabel;
    EdSeqIni: TdxColorCurrencyEdit;
    EdSeqFin: TdxColorCurrencyEdit;
    Label7: TLabel;
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
  fmManSeg: TfmManSeg;

implementation

uses dxDemoUtils, Bbgeral, Bbmensag, Bbfuncao, ManLn2, ManGDB;

{$R *.DFM}

procedure TfmManSeg.bretornarClick(Sender: TObject);
begin
  close;
end;

procedure TfmManSeg.bcontinuarClick(Sender: TObject);
var
  ArqTexto: TStringList;
  Nota01: array[1..209] of string;
  Nota02: array[1..209] of string;
  EndEnt1, EndEnt2, EndCob1, EndCob2, Linha, FonCli, NomCli, Pt1Cli, Fo1Cli, sCanc, sText, ImpClf: string;
  TecCli, EncCli, NrcCli, BacCli, CicCli, UfcCli, CecCli, ValorExt, ValorEx1, ValorEx2, ValorEx3, CgcCli, GImpRef: string;
  Tam, Reg, Inc, Col, Lin, r, i, j, rec, qtdIte, qtdNfs, qtdLin, qtdnfis, qtdimpr, qtitens, SeqPe2, SeqNfs, QtiNfs, qtdnot, seqnot: integer;
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

              ArqTexto := TStringList.Create;
              ArqTexto.LoadFromFile('C:\Emerion\LINCOL.TXT');

              qtdLin := ArqTexto.Count - 1; {Quantidade de Linhas no Arquivo LINCOL.TXT}

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
                Text := ' Select QtdLin,QtdNot,ImpClf From FatPar';
                Open;

                ImpClf := quSql.FieldbyName('ImpClf').AsString;
                QtdIte := quSql.FieldbyName('QtdLin').AsInteger;
                QtdNfs := quSql.FieldbyName('QtdNot').AsInteger;

              end;

              EndCob2 := '';
              EndEnt2 := '';

              if Trim(fmManLn2.FatPedNomEnt.Value) <> '' then
              begin

                EndEnt1 := Trim(fmManLn2.FatPedNomEnt.Value);

                EndEnt1 := EndEnt1 + ' C.N.P.J :' + copy(fmManLn2.FatPedCgeCli.Value, 01, 2) + '.' + copy(fmManLn2.FatPedCgeCli.Value, 3, 3) + '.' +
                  copy(fmManLn2.FatPedCgeCli.Value, 06, 3) + '/' + copy(fmManLn2.FatPedCgeCli.Value, 9, 4) + '-' +
                  copy(fmManLn2.FatPedCgeCli.Value, 13, 2);

                if Trim(fmManLn2.FatPedTenCli.Value) <> '' then
                  EndEnt2 := Trim(fmManLn2.FatPedTenCli.Value) + ' ' + Trim(fmManLn2.FatPedEndCli.Value)
                else
                  EndEnt2 := Trim(fmManLn2.FatPedEndCli.Value);

                if Trim(fmManLn2.FatPedNumCli.Value) <> '' then
                  EndEnt2 := EndEnt2 + ', ' + Trim(fmManLn2.FatPedNumCli.Value);

                if Trim(fmManLn2.FatPedRefCli.Value) <> '' then
                  EndEnt2 := EndEnt2 + ' ' + Trim(fmManLn2.FatPedRefCli.Value);

                if Trim(fmManLn2.FatPedBaiCli.Value) <> '' then
                  EndEnt2 := EndEnt2 + ' ' + Trim(fmManLn2.FatPedBaiCli.Value);

                if Trim(fmManLn2.FatPedCidCli.Value) <> '' then
                  EndEnt2 := EndEnt2 + ' - ' + Trim(fmManLn2.FatPedCidCli.Value);

                if Trim(fmManLn2.FatPedUfeCli.Value) <> '' then
                  EndEnt2 := EndEnt2 + ' - ' + Trim(fmManLn2.FatPedUfeCli.Value);

                if Trim(fmManLn2.FatPedCepCli.Value) <> '' then
                  EndEnt2 := EndEnt2 + ' Cep ' + copy(Trim(fmManLn2.FatPedCepCli.Value), 1, 5) + '-' + copy(Trim(fmManLn2.FatPedCepCli.Value), 6, 3);

              end
              else
              begin

                if Trim(fmManLn2.FatPedTenCli.Value) <> '' then
                  EndEnt1 := Trim(fmManLn2.FatPedTenCli.Value) + ' ' + Trim(fmManLn2.FatPedEndCli.Value)
                else
                  EndEnt1 := Trim(fmManLn2.FatPedEndCli.Value);

                if Trim(fmManLn2.FatPedNumCli.Value) <> '' then
                  EndEnt1 := EndEnt1 + ', ' + Trim(fmManLn2.FatPedNumCli.Value);

                if Trim(fmManLn2.FatPedRefCli.Value) <> '' then
                  EndEnt1 := EndEnt1 + ', ' + Trim(fmManLn2.FatPedRefCli.Value);

                if Trim(fmManLn2.FatPedBaiCli.Value) <> '' then
                  EndEnt1 := EndEnt1 + ' ' + Trim(fmManLn2.FatPedBaiCli.Value);

                if Trim(fmManLn2.FatPedCidCli.Value) <> '' then
                  EndEnt1 := EndEnt1 + ' - ' + Trim(fmManLn2.FatPedCidCli.Value);

                if Trim(fmManLn2.FatPedUfeCli.Value) <> '' then
                  EndEnt1 := EndEnt1 + ' - ' + Trim(fmManLn2.FatPedUfeCli.Value);

                if Trim(fmManLn2.FatPedCepCli.Value) <> '' then
                  EndEnt1 := EndEnt1 + ' Cep ' + copy(Trim(fmManLn2.FatPedCepCli.Value), 1, 5) + '-' + copy(Trim(fmManLn2.FatPedCepCli.Value), 6, 3);

                EndEnt2 := 'C.N.P.J.:' + copy(fmManLn2.FatPedCgeCli.Value, 01, 2) + '.' + copy(fmManLn2.FatPedCgeCli.Value, 3, 3) + '.' +
                  copy(fmManLn2.FatPedCgeCli.Value, 06, 3) + '/' + copy(fmManLn2.FatPedCgeCli.Value, 9, 4) + '-' +
                  copy(fmManLn2.FatPedCgeCli.Value, 13, 2);

              end;

              Nota01[001] := 'NumNot';
              Nota02[001] := 'Comp12';

              Nota01[002] := fmManLn2.FatPedFlgSai.Value; {Saida}
              Nota02[002] := 'Comp12';

              Nota01[003] := fmManLn2.FatPedFlgEnt.Value; {Entrada}
              Nota02[003] := 'Comp12';

              Nota01[004] := Trim(fmManLn2.FatPedDesNat.Value); {NatOper}
              Nota02[004] := 'Comp12';

              if Trim(fmManLn2.FatPedCodCf2.Value) <> '' then {Cfop}
                Nota01[005] := Trim(fmManLn2.FatPedCodCf1.Value) + '/' + Trim(fmManLn2.FatPedCodCf2.Value)
              else
                Nota01[005] := Trim(fmManLn2.FatPedCodCf1.Value);

              Nota02[005] := 'Comp12';

              Nota01[006] := '';
              Nota02[006] := 'Comp12';

              Nota01[007] := Trim(fmManLn2.FatPedInsSub.Value); {InscEstSubTrib}
              Nota02[007] := 'Comp12';

              Nota01[010] := DateToStr(fmManLn2.FatPedDteFat.Value); {DataEmis}
              Nota02[010] := 'Comp12';

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select FinCli.NomCli,' +
                  '        FinCli.CgcCli,' +
                  '        FinCli.TefCli,' +
                  '        FinCli.TecCli,' +
                  '        FinCli.EnfCli,' +
                  '        FinCli.RffCli,' +
                  '        FinCli.EncCli,' +
                  '        FinCli.RfcCli,' +
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
                  '        FinCli.InsCli From FinCli Where FinCli.CodCli = ''' + IntToStr(fmManLn2.FatPedCodCli.Value) + '''';
                Open;

                Nota01[008] := FieldbyName('NomCli').AsString; {Nome do Cliente}
                Nota02[008] := 'Comp12';

                CgcCli := fLimpaStr(FieldbyName('CgcCli').AsString);

                if Trim(fmManLn2.FatPedUfeFat.Value) <> 'EX' then
                begin

                  if Length(Trim(CgcCli)) <= 11 then
                    Nota01[009] := copy(CgcCli, 1, 3) + '.' + copy(CgcCli, 4, 3) + '.' +
                      copy(CgcCli, 7, 3) + '-' + copy(CgcCli, 10, 2)
                  else
                    Nota01[009] := copy(CgcCli, 01, 2) + '.' + copy(CgcCli, 3, 3) + '.' +
                      copy(CgcCli, 06, 3) + '/' + copy(CgcCli, 9, 4) + '-' +
                      copy(CgcCli, 13, 2);

                end
                else
                  Nota02[009] := '';

                Nota02[009] := 'Comp12';

                if Trim(FieldbyName('TecCli').AsString) <> '' then
                  EndCob1 := Trim(FieldbyName('TecCli').AsString) + ' ' + Trim(FieldbyName('EncCli').AsString)
                else
                  EndCob1 := Trim(FieldbyName('EncCli').AsString);

                if Trim(FieldbyName('NrcCli').AsString) <> '' then
                  EndCob1 := EndCob1 + ', ' + Trim(FieldbyName('NrcCli').AsString);

                if Trim(FieldbyName('RfcCli').AsString) <> '' then
                  EndCob1 := EndCob1 + ' ' + Trim(FieldbyName('RfcCli').AsString);

                if Trim(FieldbyName('BacCli').AsString) <> '' then
                  EndCob1 := EndCob1 + ' ' + Trim(FieldbyName('BacCli').AsString);

                if Trim(FieldbyName('CicCli').AsString) <> '' then
                  EndCob1 := EndCob1 + ' - ' + Trim(FieldbyName('CicCli').AsString);

                if Trim(FieldbyName('UfcCli').AsString) <> '' then
                  EndCob1 := EndCob1 + ' ' + Trim(FieldbyName('UfcCli').AsString);

                if Trim(FieldbyName('CecCli').AsString) <> '' then
                  EndCob1 := EndCob1 + ' Cep ' + Trim(FieldbyName('CecCli').AsString);

                if Trim(FieldbyName('Pt1Cli').AsString) <> '' then
                  FonCli := '(' + Trim(FieldbyName('Pt1Cli').AsString) + ')' + Trim(FieldbyName('Fo1Cli').AsString)
                else
                  FonCli := Trim(FieldbyName('Fo1Cli').AsString);

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

                {Uf}
                if Trim(fmManLn2.FatPedUfeFat.Value) <> 'EX' then
                  Nota01[017] := FieldbyName('UffCli').AsString
                else
                  Nota01[017] := ' ';

                Nota02[017] := 'Comp12';

                {InscEst}
                if Trim(fmManLn2.FatPedUfeFat.Value) <> 'EX' then
                  Nota01[018] := FieldbyName('InsCli').AsString
                else
                  Nota01[018] := ' ';

                Nota02[018] := 'Comp12';

              end;

              Nota01[019] := ''; {Hora da Saida}
              Nota02[019] := '';

              Nota01[208] := ' '; {Detalhamento do ICMS}
              Nota02[208] := 'Comp20';

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select FatPe3.NroPe3,' +
                  '        FatPe3.DtvPe3,' +
                  '        FatPe3.VlpPe3 From FatPe3' +
                  ' Where FatPe3.CodEmp = :CodEmp' +
                  '   and FatPe3.DteRes = :DteRes' +
                  '   and FatPe3.NumRes = :NumRes' +
                  '   and FatPe3.SeqLib = :SeqLib' +
                  '   and FatPe3.SeqFat = :SeqFat';

                with Params do
                begin

                  Params[0].AsInteger := fmManLn2.FatPedCodEmp.Value;
                  Params[1].AsDateTime := fmManLn2.FatPedDteRes.Value;
                  Params[2].AsInteger := fmManLn2.FatPedNumRes.Value;
                  Params[3].AsInteger := fmManLn2.FatPedSeqLib.Value;
                  Params[4].AsInteger := fmManLn2.FatPedSeqFat.Value;

                end;

                Open;
                First;

              end;

              i := 131;

              rec := 0;

              while not quSQL.Eof do
              begin

                Nota01[i] := fNumZeros(IntToStr(fmManLn2.FatPedNroNfs.Value), 6) + '/' + FNumZeros(IntToStr(quSQL.FieldbyName('NroPe3').AsInteger), 3); {Número}
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

                Nota01[i] := quSQL.FieldbyName('DtvPe3').AsString; {Vencimento}
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

                Nota01[i] := Prestring(FormatFloat('###,###,##0.00', quSQL.FieldbyName('VlpPe3').AsFloat), 14); {Valor}
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
                Text := ' Select * From FatSer' +
                  ' Where FatSer.CodEmp = :CodEmp' +
                  '   and FatSer.DteRes = :DteRes' +
                  '   and FatSer.NumRes = :NumRes' +
                  '   and FatSer.SeqLib = :SeqLib' +
                  '   and FatSer.SeqFat = :SeqFat';

                with Params do
                begin

                  Params[0].AsInteger := fmManLn2.FatPedCodEmp.Value;
                  Params[1].AsDateTime := fmManLn2.FatPedDteRes.Value;
                  Params[2].AsInteger := fmManLn2.FatPedNumRes.Value;
                  Params[3].AsInteger := fmManLn2.FatPedSeqLib.Value;
                  Params[4].AsInteger := fmManLn2.FatPedSeqFat.Value;

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

                if Trim(quSql.FieldbyName('DesSer').AsString) <> '' then
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

              if fmManLn2.FatPedTotIss.Value > 0 then
                Nota01[185] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedTotIss.Value), 14)
              else
                Nota01[185] := ' ';

              Nota02[185] := 'Comp12';

              if fmManLn2.FatPedTotSer.Value > 0 then
                Nota01[186] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedTotSer.Value), 14)
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

              Nota01[053] := fmManLn2.FatPedTxfIpi.Value; {TextIpi}
              Nota02[053] := 'Comp20';

              Nota01[054] := fmManLn2.FatPedTxfIcm.Value; {TextIcm}
              Nota02[054] := 'Comp20';

              Nota01[055] := 'Entrega: ' + EndEnt1; {Entrega_1}
              Nota02[055] := 'Comp20';

              Nota01[056] := '         ' + EndEnt2; {Entrega_2}
              Nota02[056] := 'Comp20';

              Nota01[067] := fmManLn2.FatPedNomTra.Value; {NomeTransp}
              Nota02[067] := 'Comp12';

              Nota01[068] := fmManLn2.FatPedTipFrt.Value; {FretePc}
              Nota02[068] := 'Comp12';

              Nota01[069] := fmManLn2.FatPedPlcTra.Value; {Placa}
              Nota02[069] := 'Comp12';

              Nota01[070] := fmManLn2.FatPedUfePlc.Value; {UfPlaca}
              Nota02[070] := 'Comp12';

              if Trim(fmManLn2.FatPedCgcTra.Value) <> '' then

                Nota01[071] := copy(fmManLn2.FatPedCgcTra.Value, 01, 2) + '.' + copy(fmManLn2.FatPedCgcTra.Value, 3, 3) + '.' +
                  copy(fmManLn2.FatPedCgcTra.Value, 06, 3) + '/' + copy(fmManLn2.FatPedCgcTra.Value, 9, 4) + '-' +
                  copy(fmManLn2.FatPedCgcTra.Value, 13, 2)

              else
                Nota01[071] := ' ';

              Nota02[071] := 'Comp12';

              Nota01[072] := Trim(fmManLn2.FatPedTenTra.Value) + ' ' + Trim(fmManLn2.FatPedEndTra.Value) + ', ' + Trim(fmManLn2.FatPedNumTra.Value) + ' ' +
                Trim(fmManLn2.FatPedBaiTra.Value);
              Nota02[072] := 'Comp12';

              Nota01[073] := fmManLn2.FatPedCidTra.Value; {CidTransp}
              Nota02[073] := 'Comp12';

              Nota01[074] := fmManLn2.FatPedUfeTra.Value; {UFTransp}
              Nota02[074] := 'Comp12';

              Nota01[075] := fmManLn2.FatPedInsTra.Value; {InscTransp}
              Nota02[075] := 'Comp12';

              // De Acordo com o Toninho Por Enquanto Deixar o Campo de Volumes Em branco Em  : 02/07/2003 //
              // So Exibir se a Valeria Alterar o seu Conteudo "Notas de Exportação //

              if fmManLn2.FatPedAltVol.Value > 0 then
                Nota01[076] := Prestring(IntToStr(fmManLn2.FatPedAltVol.Value), 7) {QtdeVol}
              else
                Nota01[076] := ' ';

              Nota02[076] := 'Comp12';

              Nota01[077] := fmManLn2.FatPedEspFat.Value; {Especie}
              Nota02[077] := 'Comp12';

              Nota01[078] := fmManLn2.FatPedMarFat.Value; {Marca}
              Nota02[078] := 'Comp12';

              Nota01[079] := fmManLn2.FatPedNroFat.Value; {Numero}
              Nota02[079] := 'Comp12';

              Nota01[080] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedInfBrt.Value), 14); {PesBruto}
              Nota02[080] := 'Comp12';

              Nota01[081] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedInfLiq.Value), 14); {PesLiq}
              Nota02[081] := 'Comp12';

              if (Trim(fmManLn2.FatPedOb1Fat.Value) = '') and
                (Trim(fmManLn2.FatPedOb2Fat.Value) = '') and
                (Trim(fmManLn2.FatPedOb3Fat.Value) = '') and
                (Trim(fmManLn2.FatPedOb4Fat.Value) = '') and
                (Trim(fmManLn2.FatPedOb5Fat.Value) = '') and
                (Trim(fmManLn2.FatPedOb6Fat.Value) = '') and
                (Trim(fmManLn2.FatPedOb7Fat.Value) = '') and
                (Trim(fmManLn2.FatPedOb8Fat.Value) = '') then
              begin

                Nota01[187] := copy(fmManLn2.FatPedObsFat.Value, 001, 070); {Obs1}
                Nota02[187] := 'Comp20';

                Nota01[188] := copy(fmManLn2.FatPedObsFat.Value, 071, 070); {Obs2}
                Nota02[188] := 'Comp20';

                Nota01[189] := copy(fmManLn2.FatPedObsFat.Value, 141, 070); {Obs3}
                Nota02[189] := 'Comp20';

                Nota01[190] := copy(fmManLn2.FatPedObsFat.Value, 211, 070); {Obs4}
                Nota02[190] := 'Comp20';

                Nota01[191] := copy(fmManLn2.FatPedObsFat.Value, 281, 070); {Obs5}
                Nota02[191] := 'Comp20';

                Nota01[192] := copy(fmManLn2.FatPedObsFat.Value, 351, 070); {Obs6}
                Nota02[192] := 'Comp20';

                Nota01[193] := ' '; {Obs7}
                Nota02[193] := 'Comp20';

                Nota01[194] := ' '; {Obs8}
                Nota02[194] := 'Comp20';

              end
              else
              begin

                Nota01[187] := fmManLn2.FatPedOb1Fat.Value; {Obs1}
                Nota02[187] := 'Comp20';

                Nota01[188] := fmManLn2.FatPedOb2Fat.Value; {Obs2}
                Nota02[188] := 'Comp20';

                Nota01[189] := fmManLn2.FatPedOb3Fat.Value; {Obs3}
                Nota02[189] := 'Comp20';

                Nota01[190] := fmManLn2.FatPedOb4Fat.Value; {Obs4}
                Nota02[190] := 'Comp20';

                Nota01[191] := fmManLn2.FatPedOb5Fat.Value; {Obs5}
                Nota02[191] := 'Comp20';

                Nota01[192] := fmManLn2.FatPedOb6Fat.Value; {Obs6}
                Nota02[192] := 'Comp20';

                Nota01[193] := fmManLn2.FatPedOb7Fat.Value; {Obs7}
                Nota02[193] := 'Comp20';

                Nota01[194] := fmManLn2.FatPedOb8Fat.Value; {Obs8}
                Nota02[194] := 'Comp20';

              end;

              Nota01[117] := IntToStr(fmManLn2.FatPedCodCli.Value); {código do Cliente}
              Nota02[117] := 'Comp12';

              Nota01[118] := fNumZeros(IntToStr(fmManLn2.FatPedCodVen.Value), 3); {código do Vendedor}
              Nota02[118] := 'Comp12';

              Nota01[119] := ''; {SeuPed}
              Nota02[119] := 'Comp12';

              Nota01[120] := fNumZeros(IntToStr(fmManLn2.FatPedNumRes.Value), 7); {Nosso Pedido}
              Nota02[120] := 'Comp12';

              Nota01[121] := 'NumNot'; {NotaRod1}
              Nota02[121] := 'Comp20';

              Nota01[122] := 'NumNot'; {NotaRod2}
              Nota02[122] := 'Comp20';

              ValorExt := fExtenso(fmManLn2.FatPedTotGer.Value);

              if Length(TrimLeft(TrimRight(ValorExt))) < 150 then
                ValorExt := TrimLeft(TrimRight(ValorExt)) + fReplicate('*', 150 - Length(TrimLeft(TrimRight(ValorExt))));

              Nota01[123] := copy(ValorExt, 001, 50); {Valor por Extenso 1}
              Nota02[123] := 'Comp12';

              Nota01[124] := copy(ValorExt, 051, 50); {Valor por Extenso 2}
              Nota02[124] := 'Comp12';

              Nota01[125] := copy(ValorExt, 101, 50); {Valor por Extenso 3}
              Nota02[125] := 'Comp12';

              Nota01[126] := fmManLn2.FatPedDesReg.Value; {Observações Sobre Desconto}
              Nota02[126] := 'Comp20';

              {********************************************************************************************}

              if FileExists('C:\Windows\Emerion.prg') then
                rdprint1.opcoesPreview.Preview := True
              else
                rdprint1.opcoesPreview.Preview := False;

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

              SeqPe2 := 0; {sequencial dos Itens a Serem Impressos}

              Lin := 0; {Linha que Esta Sendo Impressas} {Incrementos de Linhas}
              Inc := 0; {Incrementos de Linhas}
              Col := 0; {Posição da Coluna a ser Impressa}
              Reg := 0; {Numero do Vetor a Ser Impresso}
              Tam := 0; {Tamanho da String a Ser Impressa}

              rdprint1.abrir;

              qtdnot := StrToInt(FloatToStr(EdSeqIni.value)); {Quantidade de Notas Impressas}

              qtdnfis := StrToInt(FloatToStr(EdSeqIni.value)); {Quantidade de Notas Fiscais Impressas}

              seqnot := StrToInt(FloatToStr(EdSeqFin.value));

              with quSQL, SQL do
              begin

                Close;
                Text := ' Select FatPe2.NroPe2 From FatPe2' +
                  ' Where FatPe2.CodEmp = :CodEmp' +
                  '   and FatPe2.DteRes = :DteRes' +
                  '   and FatPe2.NumRes = :NumRes' +
                  '   and FatPe2.SeqLib = :SeqLib' +
                  '   and FatPe2.SeqFat = :SeqFat' +
                  '   and FatPe2.SeqNfs = :SeqNfs' +
                  ' Order by FatPe2.NroPe2';

                with Params do
                begin

                  Params[0].AsInteger := fmManLn2.FatPedCodEmp.Value;
                  Params[1].AsDateTime := fmManLn2.FatPedDteRes.Value;
                  Params[2].AsInteger := fmManLn2.FatPedNumRes.Value;
                  Params[3].AsInteger := fmManLn2.FatPedSeqLib.Value;
                  Params[4].AsInteger := fmManLn2.FatPedSeqFat.Value;
                  Params[5].AsInteger := qtdnfis;

                end;

                Open;

                SeqPe2 := FieldbyName('NroPe2').AsInteger - 1;

              end;

              while qtdnfis <= seqnot do
              begin

                with quSQL, SQL do
                begin

                  Close;
                  Text := ' Select Count(*) as QtdReg From FatPe2' +
                    ' Where FatPe2.CodEmp = :CodEmp' +
                    '   and FatPe2.DteRes = :DteRes' +
                    '   and FatPe2.NumRes = :NumRes' +
                    '   and FatPe2.SeqLib = :SeqLib' +
                    '   and FatPe2.SeqFat = :SeqFat' +
                    '   and FatPe2.SeqNfs = :SeqNfs';

                  with Params do
                  begin

                    Params[0].AsInteger := fmManLn2.FatPedCodEmp.Value;
                    Params[1].AsDateTime := fmManLn2.FatPedDteRes.Value;
                    Params[2].AsInteger := fmManLn2.FatPedNumRes.Value;
                    Params[3].AsInteger := fmManLn2.FatPedSeqLib.Value;
                    Params[4].AsInteger := fmManLn2.FatPedSeqFat.Value;
                    Params[5].AsInteger := qtdnfis;

                  end;

                  Open;

                  QtiNfs := FieldbyName('QtdReg').AsInteger;

                end;

                SeqNfs := 0;

                if qtdnfis = fmManLn2.FatPedQtdNfs.Value then
                begin

                  with quSQL, SQL do
                  begin

                    Close;
                    Text := ' Select Count(Distinct(FatIcm.PerIcm)) as QtdReg' +
                      ' From FatIcm' +
                      ' Where FatIcm.CodEmp = :CodEmp' +
                      '   and FatIcm.DteRes = :DteRes' +
                      '   and FatIcm.NumRes = :NumRes' +
                      '   and FatIcm.SeqLib = :SeqLib' +
                      '   and FatIcm.SeqFat = :SeqFat';

                    with Params do
                    begin

                      Params[0].AsInteger := fmManLn2.FatPedCodEmp.Value;
                      Params[1].AsDateTime := fmManLn2.FatPedDteRes.Value;
                      Params[2].AsInteger := fmManLn2.FatPedNumRes.Value;
                      Params[3].AsInteger := fmManLn2.FatPedSeqLib.Value;
                      Params[4].AsInteger := fmManLn2.FatPedSeqFat.Value;

                    end;

                    Open;

                  end;

                  if quSQL.FieldbyName('QtdReg').AsInteger > 1 then
                  begin

                    with quSQL, SQL do
                    begin

                      Close;
                      Text := ' Select FatIcm.PerIcm,' +
                        '        Sum(FatIcm.BasIcm) as BasIcm,' +
                        '        Sum(FatIcm.TotIcm) as TotIcm ' +
                        ' From FatIcm' +
                        ' Where FatIcm.CodEmp = :CodEmp' +
                        '   and FatIcm.DteRes = :DteRes' +
                        '   and FatIcm.NumRes = :NumRes' +
                        '   and FatIcm.SeqLib = :SeqLib' +
                        '   and FatIcm.SeqFat = :SeqFat' +
                        ' Group by FatIcm.PerIcm' +
                        ' Order by FatIcm.PerIcm';

                      with Params do
                      begin

                        Params[0].AsInteger := fmManLn2.FatPedCodEmp.Value;
                        Params[1].AsDateTime := fmManLn2.FatPedDteRes.Value;
                        Params[2].AsInteger := fmManLn2.FatPedNumRes.Value;
                        Params[3].AsInteger := fmManLn2.FatPedSeqLib.Value;
                        Params[4].AsInteger := fmManLn2.FatPedSeqFat.Value;

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
                  if fmManLn2.FatPedBasIcm.Value > 0 then
                    Nota01[057] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedBasIcm.Value), 14)
                  else
                    Nota01[057] := ' ';

                  Nota02[057] := 'Comp12';

                  {ValIcms}
                  if fmManLn2.FatPedTotIcm.Value > 0 then
                    Nota01[058] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedTotIcm.Value), 14)
                  else
                    Nota01[058] := ' ';

                  Nota02[058] := 'Comp12';

                  {BaseIcmsSub}
                  if fmManLn2.FatPedBasSub.Value > 0 then
                    Nota01[059] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedBasSub.Value), 14)
                  else
                    Nota01[059] := ' ';

                  Nota02[059] := 'Comp12';

                  {ValIcmsSub}
                  if fmManLn2.FatPedTotSub.Value > 0 then
                    Nota01[060] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedTotSub.Value), 14)
                  else
                    Nota01[060] := ' ';

                  Nota02[060] := 'Comp12';

                  Nota01[061] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedTotFat.Value), 14); {TotalProds}
                  Nota02[061] := 'Comp12';

                  if fmManLn2.FatPedTotFrt.Value > 0 then
                    Nota01[062] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedTotFrt.Value), 14) {Frete}
                  else
                    Nota01[062] := ' ';

                  Nota02[062] := 'Comp12';

                  if fmManLn2.FatPedTotSeg.Value > 0 then
                    Nota01[063] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedTotSeg.Value), 14) {Seguro}
                  else
                    Nota01[063] := ' ';

                  Nota02[063] := 'Comp12';

                  if fmManLn2.FatPedTotDes.Value > 0 then
                    Nota01[064] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedTotDes.Value), 14) {Outras}
                  else
                    Nota01[064] := ' ';

                  Nota02[064] := 'Comp12';

                  if fmManLn2.FatPedTotIpi.Value > 0 then
                    Nota01[065] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedTotIpi.Value), 14) {TotalIPI}
                  else
                    Nota01[065] := ' ';

                  Nota02[065] := 'Comp12';

                  Nota01[066] := Prestring(FormatFloat('###,###,##0.00', fmManLn2.FatPedTotGer.Value), 14); {TotalNota}
                  Nota02[066] := 'Comp12';

                  Nota01[126] := fmManLn2.FatPedDesReg.Value; {Descontos Gerais na Nota}
                  Nota02[126] := 'Comp20';

                  if fmManLn2.FatPedTotDsr.Value > 0 then
                    Nota01[127] := PreString('-' + Trim(FormatFloat('###,##0.00', fmManLn2.FatPedTotDsr.Value)), 12) {Descontos Gerais na Nota}
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

                ValorExt := fExtenso(fmManLn2.FatPedTotGer.Value);

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
                  Text := ' Select FatClf.SeqClf,' +
                    '        FatClf.ClsIpi From FatClf' +
                    ' Where FatClf.CodEmp = :CodEmp' +
                    '   and FatClf.DteRes = :DteRes' +
                    '   and FatClf.NumRes = :NumRes' +
                    '   and FatClf.SeqLib = :SeqLib' +
                    '   and FatClf.SeqFat = :SeqFat' +
                    '   and FatClf.SeqNfs = :SeqNfs' +
                    ' Order by FatClf.SeqClf';

                  with Params do
                  begin

                    Params[0].AsInteger := fmManLn2.FatPedCodEmp.Value;
                    Params[1].AsDateTime := fmManLn2.FatPedDteRes.Value;
                    Params[2].AsInteger := fmManLn2.FatPedNumRes.Value;
                    Params[3].AsInteger := fmManLn2.FatPedSeqLib.Value;
                    Params[4].AsInteger := fmManLn2.FatPedSeqFat.Value;
                    Params[5].AsInteger := qtdnfis;

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
                    Nota01[i] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqClf').AsInteger), 3) + ' - ' + quSQL.FieldbyName('ClsIpi').AsString
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

                            rdprint1.impf(Lin, Col, fNumZeros(IntToStr(fmManLn2.FatPedNroNfs.Value), 6), [EXPANDIDO, negrito]);

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

                                if qtdnfis = fmManLn2.FatPedQtdNfs.Value then
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

                              SeqPe2 := SeqPe2 + 1;
                              SeqNfs := SeqNfs + 1;

                              if qtdimpr = 0 then
                                qtdimpr := Lin;

                              with quSQL, SQL do
                              begin

                                Close;
                                Text := ' Select FatPe2.CodClp,' +
                                  '        FatPe2.CodGru,' +
                                  '        FatPe2.CodSub,' +
                                  '        FatPe2.CodPro,' +
                                  '        FatPe2.SeqNfs,' +
                                  '        FatPe2.DesPe2,' +
                                  '        FatPe2.ObsPe2,' +
                                  '        FatPe2.RefPe2,' +
                                  '        FatPe2.SeqClf,' +
                                  '        FatPe2.ClsIpi,' +
                                  '        FatPe2.CodSt1,' +
                                  '        FatPe2.CodSt2,' +
                                  '        FatPe2.CodCfo,' +
                                  '        FatPe2.CodUnd,' +
                                  '        FatPe2.QtpPe2,' +
                                  '        FatPe2.CodUnd,' +
                                  '        FatPe2.VlqPe2,' +
                                  '        FatPe2.TotPe2,' +
                                  '        FatPe2.TrbIcm,' +
                                  '        FatPe2.IcmPe2,' +
                                  '        FatPe2.TrbIpi,' +
                                  '        FatPe2.IpiPe2,' +
                                  '        FatPe2.TotIpi ' +
                                  ' From FatPe2' +
                                  ' Where FatPe2.CodEmp = :CodEmp' +
                                  '   and FatPe2.DteRes = :DteRes' +
                                  '   and FatPe2.NumRes = :NumRes' +
                                  '   and FatPe2.SeqLib = :SeqLib' +
                                  '   and FatPe2.SeqFat = :SeqFat' +
                                  '   and FatPe2.NroPe2 = :NroPe2';

                                with Params do
                                begin

                                  Params[0].AsInteger := fmManLn2.FatPedCodEmp.Value;
                                  Params[1].AsDateTime := fmManLn2.FatPedDteRes.Value;
                                  Params[2].AsInteger := fmManLn2.FatPedNumRes.Value;
                                  Params[3].AsInteger := fmManLn2.FatPedSeqLib.Value;
                                  Params[4].AsInteger := fmManLn2.FatPedSeqFat.Value;
                                  Params[5].AsInteger := SeqPe2;

                                end;

                                Open;

                              end;

                              if Trim(quSql.FieldbyName('CodGru').AsString) <> '' then
                              begin

                                {Item a Ser Impresso Pertence a Nota Fiscal}
                                if quSql.FieldbyName('SeqNfs').AsInteger = qtdnfis then
                                begin

                                  {Produto}
                                  if GImpRef = 'Nao' then
                                    Nota01[040] := quSql.FieldbyName('CodClp').AsString + '-' + quSql.FieldbyName('CodGru').AsString + '.' +
                                      quSql.FieldbyName('CodSub').AsString + '.' + quSql.FieldbyName('CodPro').AsString
                                  else
                                    Nota01[040] := Trim(quSql.FieldbyName('RefPe2').AsString);

                                  Nota02[040] := 'Comp20';

                                  {Descr}
                                  Nota01[041] := Trim(quSql.FieldbyName('DesPe2').AsString);
                                  Nota02[041] := 'Comp20';

                                  {Descr}

                                  if Trim(quSql.FieldbyName('RefPe2').AsString) <> '' then
                                    Nota01[052] := Trim(quSql.FieldbyName('RefPe2').AsString)
                                  else
                                    Nota01[052] := ' ';

                                  Nota02[052] := 'Comp20';

                                  {ClassFisc}
                                  if Trim(quSQL.FieldbyName('ClsIpi').AsString) <> '' then
                                    Nota01[042] := fLimpaStr(quSql.FieldbyName('ClsIpi').AsString)
                                  else
                                    Nota01[042] := ' ';

                                  Nota02[042] := 'Comp20';

                                  {CFOP}
                                  if Trim(quSQL.FieldbyName('CodCfo').AsString) <> '' then
                                    Nota01[209] := fLimpaStr(quSql.FieldbyName('CodCfo').AsString)
                                  else
                                    Nota01[209] := ' ';

                                  Nota02[209] := 'Comp20';

                                  if Trim(quSQL.FieldbyName('SeqClf').AsString) <> '' then
                                    Nota01[207] := fNumZeros(IntToStr(quSQL.FieldbyName('SeqClf').AsInteger), 3)
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

                                  if fEncDecimal(quSql.FieldbyName('QtpPe2').AsFloat) > 0 then
                                    Nota01[046] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('QtpPe2').AsFloat), 12)
                                  else
                                    Nota01[046] := Prestring(FormatFloat('####,###,##0', quSql.FieldbyName('QtpPe2').AsFloat), 12);

                                  Nota02[046] := 'Comp20';

                                  {Unit}
                                  Nota01[047] := Prestring(FormatFloat('###,##0.0000', quSql.FieldbyName('VlqPe2').AsFloat), 12);
                                  Nota02[047] := 'Comp20';

                                  {Total}
                                  Nota01[048] := Prestring(FormatFloat('###,###,##0.00', quSql.FieldbyName('TotPe2').AsFloat), 12);
                                  Nota02[048] := 'Comp20';

                                  {AlIcms}
                                  if quSql.FieldbyName('TrbIcm').AsString = 'Sim' then
                                    Nota01[049] := Prestring(FormatFloat('##0', quSql.FieldbyName('IcmPe2').AsFloat), 3)
                                  else
                                    Nota01[049] := ' ';

                                  Nota02[049] := 'Comp20';

                                  {AlIpi}
                                  if quSql.FieldbyName('TrbIpi').AsString = 'Sim' then
                                    Nota01[050] := Prestring(FormatFloat('##0', quSql.FieldbyName('IpiPe2').AsFloat), 3)
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

                                              if (Reg = 52) and (Trim(quSql.FieldbyName('RefPe2').AsString) <> '') then
                                              begin

                                                {Descr2}
                                                Nota01[052] := Trim(quSql.FieldbyName('RefPe2').AsString);
                                                Nota02[052] := 'Comp20';

                                                Lin := Lin + Inc;

                                                if Nota02[Reg] = 'Comp12' then
                                                  rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                if Nota02[Reg] = 'Comp20' then
                                                  rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                if Nota02[Reg] = 'Comp17' then
                                                  rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                              end;

                                              if (Reg = 128) and (Trim(quSql.FieldbyName('ObsPe2').AsString) <> '') then
                                              begin

                                                {Descr2}
                                                Nota01[128] := Trim(copy(quSql.FieldbyName('ObsPe2').AsString, 1, Tam));
                                                Nota02[128] := 'Comp20';

                                                Lin := Lin + Inc;

                                                if Nota02[Reg] = 'Comp12' then
                                                  rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                if Nota02[Reg] = 'Comp20' then
                                                  rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                if Nota02[Reg] = 'Comp17' then
                                                  rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                                if Trim(copy(quSql.FieldbyName('ObsPe2').AsString, Tam + 1, Tam)) <> '' then
                                                begin

                                                  {Descr2}
                                                  Nota01[128] := Trim(copy(quSql.FieldbyName('ObsPe2').AsString, Tam + 1, Tam));
                                                  Nota02[128] := 'Comp20';

                                                  Lin := Lin + 1;

                                                  if Nota02[Reg] = 'Comp12' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                  if Nota02[Reg] = 'Comp20' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                  if Nota02[Reg] = 'Comp17' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                                end;

                                                if Trim(copy(quSql.FieldbyName('ObsPe2').AsString, (Tam + Tam + 1), Tam)) <> '' then
                                                begin

                                                  {Descr2}
                                                  Nota01[128] := Trim(copy(quSql.FieldbyName('ObsPe2').AsString, (Tam + Tam + 1), Tam));
                                                  Nota02[128] := 'Comp20';

                                                  Lin := Lin + 1;

                                                  if Nota02[Reg] = 'Comp12' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp12]);
                                                  if Nota02[Reg] = 'Comp20' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp20]);
                                                  if Nota02[Reg] = 'Comp17' then
                                                    rdprint1.impf(Lin, Col, Nota01[reg], [Comp17]);

                                                end;
                                              end;

                                              if ((Reg = 126) or (Reg = 127)) then
                                              begin

                                                if (fmManLn2.FatPedTotDsr.Value > 0) and (SeqNfs = QtiNfs) then
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

                                  if (Reg = 67) and (qtdnfis < fmManLn2.FatPedQtdNfs.Value) then
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

                                    if (Reg >= 68) and (Reg <= 81) and (qtdnfis < fmManLn2.FatPedQtdNfs.Value) then
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

                                      if (reg >= 187) and (reg <= 194) and (qtdnfis < fmManLn2.FatPedQtdNfs.Value) then
                                      begin

                                        if reg = 187 then
                                          Linha := 'Continua ' + Trim(IntToStr(qtdnot)) + '/' + Trim(IntToStr(fmManLn2.FatPedQtdNfs.Value))
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

              if fmManLn2.FatPedFlgImp.Value = 'Nao' then
              begin

                if fMsg('Nota Impressa Corretamente', 'O') then
                begin

                  fmManLn2.FatPed.Edit;

                  fmManLn2.FatPedFlgAtu.Value := 'F';

                  fmManLn2.FatPedFlgImp.Value := 'Sim';

                  with fmManLn2.FatPed do
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

                      if fmManLn2.FatPed.State <> dsBrowse then
                        fmManLn2.FatPed.CancelUpdates;

                      fmManLn2.FatPed.Close;
                      fmManLn2.FatPed.Open;

                      EdSeqIni.SetFocus;

                      raise;

                    end;

                    CommitUpdates; {sucesso!, limpa o cache...}

                  end;

                  fmManLn2.FatPed.Close;
                  fmManLn2.FatPed.Open;

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

procedure TfmManSeg.FormShow(Sender: TObject);
begin
  inherited;

  EdQtdNfs.Caption := IntToStr(fmManLn2.FatPedQtdNfs.Value);

  NroIni := 1;
  NroFin := fmManLn2.FatPedQtdNfs.Value;

  EdSeqIni.Value := 1;
  EdSeqFin.Value := StrToFloat(IntToStr(fmManLn2.FatPedQtdNfs.Value));

  EdSeqIni.SetFocus;

end;

procedure TfmManSeg.PaintBoxPaint(Sender: TObject);
begin
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

end.
