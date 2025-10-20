unit ManNfp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Fpadrao, ExtCtrls, dxCntner, dxEditor, dxEdLib, dxDBELib, StdCtrls, Db,
  Wwdatsrc, DBTables, Wwquery, dxExEdtr, Grids, Wwdbigrd, Wwdbgrid, hGrid,
  dxDBEdtr, Buttons, dxfProgressBar, dxColorPickEdit, dxColorEdit,
  dxColorDateEdit;

type
  TfmManNfp = class(TfmPadrao)
    PaintBox: TPaintBox;
    bEnviar: TBitBtn;
    quSql: TwwQuery;
    ProgressBar: TdxfProgressBar;
    SaveDialog: TSaveDialog;
    Label26: TLabel;
    Label17: TLabel;
    EdPsqCodEmp: TdxColorEdit;
    EdDteFat1: TdxColorDateEdit;
    Label2: TLabel;
    EdDteFat2: TdxColorDateEdit;
    EdPsqApeEmp: TdxColorEdit;
    BbPsqEmp: TSpeedButton;
    quSQL1: TwwQuery;
    quSQL2: TwwQuery;
    procedure PaintBoxPaint(Sender: TObject);
    procedure bEnviarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
    procedure EdPsqCodEmpExit(Sender: TObject);
    procedure BbPsqEmpClick(Sender: TObject);
    procedure EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    retorno: integer;
    sBase, sFiltro: string;
  end;

var
  fmManNfp: TfmManNfp;

implementation

uses dxDemoUtils, Bbmensag, Bbgeral, Bbfuncao, ManGDB, PsqEmp;

{$R *.DFM}

procedure TfmManNfp.PaintBoxPaint(Sender: TObject);
begin
  inherited;
  with Sender as TPaintBox do
    FillGrayGradientRect(PaintBox.Canvas, PaintBox.ClientRect, PaintBox.Color);
end;

procedure TfmManNfp.bEnviarClick(Sender: TObject);
var
  QtdArq: integer;
  CgcEmp: string;
  InsEmp: string;
  EndCli: string;
  EndTra: string;
  NomArq: string;
  CgcCli: string;
  ArqTexto: TextFile;
  FlgPrazo: string;
  QtdParc: string;
  TipVenda: string;
  NumCli: string;
  BaiCli: string;
  CidCli: string;
  UfeCli: string;
  DesNat: string;
  CodUnd: string;
  ClsIpi: string;
  CodStr: string;
  Correto: string;
  ObsFat: string;
  TipFrt: string;
  QtdReg: integer;
  QtdReg20: integer;
  QtdReg30: integer;
  QtdReg40: integer;
  QtdReg50: integer;
  QtdReg60: integer;
  TotGer_Lan: real;
  IssSer: real;
begin
  inherited;
  if Trim(UpperCase(GLibAce)) = 'SIM' then
  begin

    ActiveControl := nil;

    if Trim(EdPsqCodEmp.Text) = '' then
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdPsqCodEmp);

    if Trim(fLimpaStr(EdDteFat1.Text)) = '' then
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdDteFat1);
    if Trim(fLimpaStr(EdDteFat2.Text)) = '' then
      fmsgErro('Campo de preenchimento obrigatório não informado.', EdDteFat2);

    sFiltro := ' Where LojFat.SitFat = ' + QuotedStr('Concluido') + ' and LojFat.FlgImp = ' + QuotedStr('Sim');

    sFiltro := sFiltro + ' and LojFat.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

    if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
      sFiltro := sFiltro + ' and LojFat.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date));
    if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
      sFiltro := sFiltro + ' and LojFat.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select Count(*) as QtdReg From LojFat' + sFiltro;
      Open;

      QtdReg := FieldbyName('QtdReg').AsInteger;

    end;

    sFiltro := '';

    if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
      sFiltro := ' Where FatPed.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date));
    if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
      sFiltro := sFiltro + ' and FatPed.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

    sFiltro := sFiltro + ' and FatPed.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

    sFiltro := sFiltro + ' and FatPed.FlgImp = ' + QuotedStr('Sim') + ' and FatPed.SitFat = ' + QuotedStr('Faturado') + ' and FatPed.ModPfa = ' +
      QuotedStr('Vendas') + ' and FatPed.IntFin = ' + QuotedStr('Sim');

    with quSQL, SQL do
    begin

      Close;
      Text := ' Select Count(*) as QtdReg From FatPed' + sFiltro;
      Open;

      QtdReg := QtdReg + FieldbyName('QtdReg').AsInteger;

    end;

    if QtdReg > 0 then
    begin

      ProgressBar.Max := QtdReg;

      if fMsg('Confirma envio das informações ?', 'S') then
      begin

        with quSQL, SQL do
        begin

          close;
          Text := ' Select GerEmp.InsEmp,' +
            '        GerEmp.CgcEmp ' +
            ' From GerEmp' +
            ' Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);
          Open;

          InsEmp := Trim(FieldbyName('InsEmp').AsString);
          CgcEmp := FLimpaStr(Trim(FieldbyName('CgcEmp').AsString));

        end;

        NomArq := 'NF' + copy(FormatDateTime('dd/mm/yyyy', EdDteFat1.Date), 1, 2) +
          copy(FormatDateTime('dd/mm/yyyy', EdDteFat1.Date), 4, 2) +
          copy(FormatDateTime('dd/mm/yyyy', EdDteFat2.Date), 1, 2) +
          copy(FormatDateTime('dd/mm/yyyy', EdDteFat2.Date), 4, 2) + '.TXT';

        SaveDialog.FileName := NomArq;

        if SaveDialog.Execute then
        begin

          QtdReg20 := 0;
          QtdReg30 := 0;
          QtdReg40 := 0;
          QtdReg50 := 0;
          QtdReg60 := 0;

          TotGer_Lan := 0;

          AssignFile(ArqTexto, SaveDialog.FileName);

          Rewrite(ArqTexto);

          Write(ArqTexto, #$EF + #$BB + #$BF);

          Writeln(ArqTexto, '10|' +
            '1,00|' +
            CgcEmp + '|' +
            FormatDateTime('dd/mm/yyyy', EdDteFat1.Date) + '|' +
            FormatDateTime('dd/mm/yyyy', EdDteFat2.Date));

          ProgressBar.Visible := True;

          ProgressBar.Position := 0;

          sFiltro := '';

          if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
            sFiltro := ' Where LojFat.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date));
          if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
            sFiltro := sFiltro + ' and LojFat.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

          sFiltro := sFiltro + ' and LojFat.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

          sFiltro := sFiltro + ' and LojFat.SitFat = ' + QuotedStr('Concluido') + ' and LojFat.FlgImp = ' + QuotedStr('Sim');

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select * From LojFat' + sFiltro;
            Open;
            First;

          end;

          while not quSQL.EOF do
          begin

            with quSQL1, SQL do
            begin

              Close;
              Text := ' Select EstPfa.DsrPfa' +
                ' From EstPfa' +
                ' Where EstPfa.CodPfa = ' + QuotedStr(quSQL.FieldbyName('CodPfa').AsString) +
                '   and EstPfa.TipPfa = ' + QuotedStr(quSQL.FieldbyName('TipPfa').AsString);
              Open;

              DesNat := fLimpaAcentos(FieldbyName('DsrPfa').AsString);

            end;

            if Trim(DesNat) <> '' then
            begin

              CgcCli := Trim(quSQL.FieldbyName('CgcCli').AsString);

              FlgPrazo := '2';
              QtdParc := '0';

              if Trim(quSQL.FieldbyName('TenTra').AsString) <> '' then
                EndTra := fLimpaAcentos(Trim(quSQL.FieldbyName('TenTra').AsString)) + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('EndTra').AsString))
              else
                EndTra := fLimpaAcentos(Trim(quSQL.FieldbyName('EndTra').AsString));

              if Trim(quSQL.FieldbyName('NumTra').AsString) <> '' then
                EndTra := EndTra + ', ' + fLimpaAcentos(Trim(quSQL.FieldbyName('NumTra').AsString));

              if Trim(quSQL.FieldbyName('EndCli').AsString) <> '' then
                EndCli := fLimpaAcentos(quSQL.FieldbyName('EndCli').AsString)
              else
                EndCli := 'NAO INFORMADO';

              if Trim(quSQL.FieldbyName('TenCli').AsString) <> '' then
                EndCli := fLimpaAcentos(Trim(quSQL.FieldbyName('TenCli').AsString)) + ' ' + EndCli;

              if Trim(quSQL.FieldbyName('NumCli').AsString) <> '' then
                NumCli := fLimpaAcentos(copy(Trim(quSQL.FieldbyName('NumCli').AsString), 1, 60))
              else
                NumCli := 'S/N';

              if Trim(quSQL.FieldbyName('BaiCli').AsString) <> '' then
                BaiCli := fLimpaAcentos(copy(Trim(quSQL.FieldbyName('BaiCli').AsString), 1, 60))
              else
                BaiCli := 'NAO INFORMADO';

              if Trim(quSQL.FieldbyName('CidCli').AsString) <> '' then
                CidCli := fLimpaAcentos(copy(Trim(quSQL.FieldbyName('CidCli').AsString), 1, 60))
              else
                CidCli := 'NAO INFORMADO';

              if Trim(quSQL.FieldbyName('UfeCli').AsString) <> '' then
                UfeCli := fLimpaAcentos(Trim(quSQL.FieldbyName('UfeCli').AsString))
              else
                UfeCli := GUfeEmp;

              if Trim(quSQL.FieldbyName('TipFrt').AsString) = '1' then
                TipFrt := '0'
              else
                TipFrt := '1';

              Writeln(ArqTexto, '20|' + // Tipo de Registro "20"
                'I|' + // Função do Registro
                '|' + // Justificativa de Cancelamento
                copy(Trim(DesNat), 1, 60) + '|' + // Natureza da Operação
                '01|' + // Serie da Nota Fiscal
                IntToStr(quSQL.FieldbyName('NroNfs').AsInteger) + '|' + // No. da Nota Fiscal
                FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DteFat').AsDateTime) + // Data de Emissão da Nota Fiscal
                ' ' + Trim(quSQL.FieldbyName('HreFat').AsString) + '|' + // Horario de Emissão da Nota Fiscal
                FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DteFat').AsDateTime) + // Data de Saida da Nota Fiscal
                ' ' + Trim(quSQL.FieldbyName('HreFat').AsString) + '|' + // Horario de Saida da Nota Fiscal
                '1|' + // Tipo de Nota Fiscal 0-Entrada 1-Saida
                FLimpaStr(Trim(quSQL.FieldbyName('CodCf1').AsString)) + '|' + // Código Fiscal da Operação
                '|' + // IE do Substituto Tributario na UF de Destino
                '|' + // Inscrição Municipal do Emitente
                FLimpaStr(CgcCli) + '|' + // CPF/CNPJ do destinatario ou do Remetente
                fLimpaAcentos(copy(Trim(quSQL.FieldbyName('NomCli').AsString), 1, 60)) + '|' + // Razão Social ou Nome do Destinatario ou do Remetente
                copy(Trim(EndCli), 1, 60) + '|' + // Logradouro
                NumCli + '|' + // Número
                fLimpaAcentos(copy(Trim(quSQL.FieldbyName('RefCli').AsString), 1, 60)) + '|' + // Complemento
                BaiCli + '|' + // Bairro
                CidCli + '|' + // Nome do Municipio
                UfeCli + '|' + // Siga da UF
                '|' + // Código do Cep
                '|' + // Nome do País
                '|' + // Telefone
                '|'); // IE do destinatario ou Remetente

              Inc(QtdReg20);

              with quSQL1, SQL do
              begin

                Close;
                Text := ' Select LojFa5.IssFa5 From LojFa5 Where LojFa5.Id_LojFat = ' + QuotedStr(IntToStr(quSQL.FieldbyName('Id_LojFat').AsInteger));
                Open;
                First;

                IssSer := FieldbyName('IssFa5').AsFloat;

              end;

              with quSQL1, SQL do
              begin

                Close;
                Text := ' Select * From LojFa4 Where LojFa4.Id_LojFat = ' + QuotedStr(IntToStr(quSQL.FieldbyName('Id_LojFat').AsInteger));
                Open;
                First;

              end;

              while not quSQL1.EOF do
              begin

                if quSQL1.FieldbyName('TotSub').AsFloat > 0 then
                  TipVenda := '3'
                else
                  TipVenda := '1';

                if Trim(quSQL1.FieldbyName('CodUnd').AsString) <> '' then
                  CodUnd := Trim(quSQL1.FieldbyName('CodUnd').AsString)
                else
                  CodUnd := 'PC';

                if Trim(quSQL1.FieldbyName('CodSt1').AsString) <> '' then
                  CodStr := Trim(quSQL1.FieldbyName('CodSt1').AsString)
                else
                  CodStr := '0';

                if Trim(quSQL1.FieldbyName('CodSt2').AsString) <> '' then
                  CodStr := CodStr + Trim(quSQL1.FieldbyName('CodSt2').AsString)
                else
                  CodStr := CodStr + '00';

                ClsIpi := copy(Trim(fLimpaStr(quSQL1.FieldbyName('ClsIpi').AsString)), 1, 8);

                if Length(ClsIpi) < 8 then
                  ClsIpi := ClsIpi + fReplicate('0', 8 - Length(ClsIpi));

                Writeln(ArqTexto, '30|' + // Tipo de Registro "30"
                  quSQL1.FieldbyName('CodGru').AsString + quSQL1.FieldbyName('CodSub').AsString + quSQL1.FieldbyName('CodPro').AsString + '|' +
                    // Código do Produto ou Serviço
                  Trim(quSQL1.FieldbyName('DesFa4').AsString) + '|' + // Descrição do Produto ou Serviço
                  ClsIpi + '|' + // Código NCM
                  CodUnd + '|' + // Unidade Comercial
                  FormatFloat('########0.0000', quSQL1.FieldbyName('QtpFa4').AsFloat) + '|' + // Quantidade Comercial
                  FormatFloat('########0.0000', quSQL1.FieldbyName('VluFa4').AsFloat) + '|' + // Valor Unitário de Comercialização
                  FormatFloat('########0.00', quSQL1.FieldbyName('TotFa4').AsFloat) + '|' + // Valor Total Bruto dos Produtos/Serviços
                  CodStr + '|' + // Situação Tributaria
                  FormatFloat('###,###,##0.00', quSQL1.FieldbyName('IcmFa4').AsFloat) + '|' + // Aliquota do Imposto ICMS
                  FormatFloat('###,###,##0.00', quSQL1.FieldbyName('IpiFa4').AsFloat) + '|' + // Aliquota do IPI
                  FormatFloat('###,###,##0.00', quSQL1.FieldbyName('TotIpi').AsFloat) + '|'); // Valor do IPI

                Inc(QtdReg30);

                quSQL1.Next;

              end;

              Writeln(ArqTexto, '40|' + // Tipo de Registro "40"
                FormatFloat('########0.00', quSQL.FieldbyName('BasIcm').AsFloat) + '|' + // Base de Calculo do ICMS
                FormatFloat('########0.00', quSQL.FieldbyName('TotIcm').AsFloat) + '|' + // Valor Total do ICMS
                FormatFloat('########0.00', quSQL.FieldbyName('BasSub').AsFloat) + '|' + // Base de Calculo do ICMS ST
                FormatFloat('########0.00', quSQL.FieldbyName('TotSub').AsFloat) + '|' + // Valor Total do ICMS ST
                FormatFloat('########0.00', quSQL.FieldbyName('TotFat').AsFloat) + '|' + // Valor Total dos Produtos e Serviços
                FormatFloat('########0.00', quSQL.FieldbyName('TotFrt').AsFloat) + '|' + // Valor Total do Frete
                FormatFloat('########0.00', quSQL.FieldbyName('TotSeg').AsFloat) + '|' + // Valor Total do Seguro
                FormatFloat('########0.00', quSQL.FieldbyName('TotDsr').AsFloat) + '|' + // Valor Total do Desconto
                FormatFloat('########0.00', quSQL.FieldbyName('TotIpi').AsFloat) + '|' + // Valor Total do IPI
                FormatFloat('########0.00', quSQL.FieldbyName('TotDes').AsFloat) + '|' + // Outras despesas acessórias
                FormatFloat('########0.00', quSQL.FieldbyName('TotGer').AsFloat) + '|' + // Valor Total da NF
                FormatFloat('########0.00', quSQL.FieldbyName('TotSer').AsFloat) + '|' + // Valor Total dos Serviços não-incidência ou não Tributados pelo ICMS
                FormatFloat('########0.00', IssSer) + '|' + // Aliquota do ISS
                FormatFloat('########0.00', quSQL.FieldbyName('TotIss').AsFloat) + '|'); // Valor Total do ISS

              Inc(QtdReg40);

              Writeln(ArqTexto, '50|' + // Tipo de Registro "50"
                TipFrt + '|' + // Tipo de Frete 0 - por Conta do Emitente 1-por Conta do Destinatario
                FLimpaStr(Trim(quSQL.FieldbyName('CgcTra').AsString)) + '|' + // CNPJ/CPF do Transportador
                Trim(quSQL.FieldbyName('NomTra').AsString) + '|' + // Razão Social ou Nome
                FLimpaStr(Trim(quSQL.FieldbyName('InsTra').AsString)) + '|' + // Inscrição Estadual
                EndTra + '|' + // Endereço Completo
                Trim(quSQL.FieldbyName('CidTra').AsString) + '|' + // Nome do Municipio
                Trim(quSQL.FieldbyName('UfeTra').AsString) + '|' + // Sigla da UF
                Trim(quSQL.FieldbyName('PlcTra').AsString) + '|' + // Placa do Veículo
                Trim(quSQL.FieldbyName('UfePlc').AsString) + '|' + // Sigla da UF da Placa
                IntToStr(quSQL.FieldbyName('AltVol').AsInteger) + '|' + // Quantidade de Volumes Transportados
                Trim(quSQL.FieldbyName('EspFat').AsString) + '|' + // Especié dos Volumes Transportados
                Trim(quSQL.FieldbyName('MarFat').AsString) + '|' + // Marca dos Volumes Transportados
                '|' + // Númeração dos Volumes Transportados
                FormatFloat('########0.000', quSQL.FieldbyName('InfLiq').AsFloat) + '|' + // Peso Liquido
                FormatFloat('########0.000', quSQL.FieldbyName('InfBrt').AsFloat) + '|'); // Peso Bruto

              Inc(QtdReg50);

              if Trim(quSQL.FieldbyName('Ob1Fat').AsString) <> '' then
                ObsFat := quSQL.FieldbyName('Ob1Fat').AsString;

              if Trim(quSQL.FieldbyName('Ob2Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob2Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob2Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob3Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob3Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob3Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob4Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob4Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob4Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob5Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob5Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob5Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob6Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob6Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob6Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob7Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob7Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob7Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob8Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob8Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob8Fat').AsString));

              end;

              ObsFat := copy(Trim(ObsFat), 1, 256);

              Writeln(ArqTexto, '60|' + // Tipo de Registro "60"
                '|' + // Dados da Fatura
                ObsFat + '|' + // Informações Adicionais do Interesse do Fisco
                '|'); // Informações Complementares do Contribuinte

              Inc(QtdReg60);

              TotGer_Lan := TotGer_Lan + quSQL.FieldbyName('TotGer').AsFloat;

            end;

            quSQL.Next;

            ProgressBar.StepBy(1);

            Application.ProcessMessages;

          end;

          sFiltro := '';

          if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
            sFiltro := ' Where FatPed.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date));
          if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
            sFiltro := sFiltro + ' and FatPed.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

          sFiltro := sFiltro + ' and FatPed.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

          sFiltro := sFiltro + ' and FatPed.FlgImp = ' + QuotedStr('Sim') + ' and FatPed.SitFat = ' + QuotedStr('Faturado') + ' and FatPed.ModPfa = ' +
            QuotedStr('Vendas') + ' and FatPed.IntFin = ' + QuotedStr('Sim');

          with quSQL, SQL do
          begin

            Close;
            Text := ' Select FatPed.*,' +
              '        FinCli.NomCli' +
              ' From FatPed LEFT JOIN FinCli ON (FatPed.CodCli = FinCli.CodCli)' + sFiltro;
            Open;
            First;

          end;

          while not quSQL.EOF do
          begin

            with quSQL1, SQL do
            begin

              Close;
              Text := ' Select EstPfa.DsrPfa' +
                ' From EstPfa' +
                ' Where EstPfa.CodPfa = ' + QuotedStr(quSQL.FieldbyName('CodPfa').AsString) +
                '   and EstPfa.TipPfa = ' + QuotedStr(quSQL.FieldbyName('TipPfa').AsString);
              Open;

              DesNat := fLimpaAcentos(FieldbyName('DsrPfa').AsString);

            end;

            if Trim(DesNat) <> '' then
            begin

              CgcCli := Trim(quSQL.FieldbyName('CgcCli').AsString);

              FlgPrazo := '2';
              QtdParc := '0';

              if Trim(quSQL.FieldbyName('TenTra').AsString) <> '' then
                EndTra := fLimpaAcentos(Trim(quSQL.FieldbyName('TenTra').AsString)) + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('EndTra').AsString))
              else
                EndTra := fLimpaAcentos(Trim(quSQL.FieldbyName('EndTra').AsString));

              if Trim(quSQL.FieldbyName('NumTra').AsString) <> '' then
                EndTra := EndTra + ', ' + fLimpaAcentos(Trim(quSQL.FieldbyName('NumTra').AsString));

              if Trim(quSQL.FieldbyName('EnfCli').AsString) <> '' then
                EndCli := fLimpaAcentos(quSQL.FieldbyName('EnfCli').AsString)
              else
                EndCli := 'NAO INFORMADO';

              if Trim(quSQL.FieldbyName('TefCli').AsString) <> '' then
                EndCli := fLimpaAcentos(Trim(quSQL.FieldbyName('TefCli').AsString)) + ' ' + EndCli;

              if Trim(quSQL.FieldbyName('NrfCli').AsString) <> '' then
                NumCli := fLimpaAcentos(copy(Trim(quSQL.FieldbyName('NrfCli').AsString), 1, 60))
              else
                NumCli := 'S/N';

              if Trim(quSQL.FieldbyName('BafCli').AsString) <> '' then
                BaiCli := fLimpaAcentos(copy(Trim(quSQL.FieldbyName('BafCli').AsString), 1, 60))
              else
                BaiCli := 'NAO INFORMADO';

              if Trim(quSQL.FieldbyName('CifCli').AsString) <> '' then
                CidCli := fLimpaAcentos(copy(Trim(quSQL.FieldbyName('CifCli').AsString), 1, 60))
              else
                CidCli := 'NAO INFORMADO';

              if Trim(quSQL.FieldbyName('UffCli').AsString) <> '' then
                UfeCli := fLimpaAcentos(Trim(quSQL.FieldbyName('UffCli').AsString))
              else
                UfeCli := GUfeEmp;

              if Trim(quSQL.FieldbyName('TipFrt').AsString) = '1' then
                TipFrt := '0'
              else
                TipFrt := '1';

              Writeln(ArqTexto, '20|' + // Tipo de Registro "20"
                'I|' + // Função do Registro
                '|' + // Justificativa de Cancelamento
                copy(Trim(DesNat), 1, 60) + '|' + // Natureza da Operação
                '01|' + // Serie da Nota Fiscal
                IntToStr(quSQL.FieldbyName('NroNfs').AsInteger) + '|' + // No. da Nota Fiscal
                FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DteFat').AsDateTime) + // Data de Emissão da Nota Fiscal
                ' ' + Trim(quSQL.FieldbyName('HreFat').AsString) + '|' + // Horario de Emissão da Nota Fiscal
                FormatDateTime('dd/mm/yyyy', quSQL.FieldbyName('DteFat').AsDateTime) + // Data de Saida da Nota Fiscal
                ' ' + Trim(quSQL.FieldbyName('HreFat').AsString) + '|' + // Horario de Saida da Nota Fiscal
                '1|' + // Tipo de Nota Fiscal 0-Entrada 1-Saida
                FLimpaStr(Trim(quSQL.FieldbyName('CodCf1').AsString)) + '|' + // Código Fiscal da Operação
                '|' + // IE do Substituto Tributario na UF de Destino
                '|' + // Inscrição Municipal do Emitente
                FLimpaStr(CgcCli) + '|' + // CPF/CNPJ do destinatario ou do Remetente
                fLimpaAcentos(copy(Trim(quSQL.FieldbyName('NomCli').AsString), 1, 60)) + '|' + // Razão Social ou Nome do Destinatario ou do Remetente
                copy(Trim(EndCli), 1, 60) + '|' + // Logradouro
                NumCli + '|' + // Número
                fLimpaAcentos(copy(Trim(quSQL.FieldbyName('RffCli').AsString), 1, 60)) + '|' + // Complemento
                BaiCli + '|' + // Bairro
                CidCli + '|' + // Nome do Municipio
                UfeCli + '|' + // Siga da UF
                '|' + // Código do Cep
                '|' + // Nome do País
                '|' + // Telefone
                '|'); // IE do destinatario ou Remetente

              Inc(QtdReg20);

              with quSQL1, SQL do
              begin

                Close;
                Text := ' Select FatPe5.IssPe5' +
                  ' From FatPe5' +
                  ' Where FatPe5.Id_FatPed = ' + QuotedStr(IntToStr(quSQL.FieldbyName('Id_FatPed').AsInteger));
                Open;
                First;

                IssSer := FieldbyName('IssPe5').AsFloat;

              end;

              sFiltro := ' and LojFat.SitFat = ' + QuotedStr('Concluido') + ' and LojFat.FlgImp = ' + QuotedStr('Sim');

              sFiltro := sFiltro + ' and LojFat.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

              if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
                sFiltro := sFiltro + ' and LojFat.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date));
              if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
                sFiltro := sFiltro + ' and LojFat.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

              sFiltro := '';

              if Trim(fLimpaStr(EdDteFat1.Text)) <> '' then
                sFiltro := sFiltro + ' and FatPed.DteFat >= ' + QuotedStr(fDateToSQL(EdDteFat1.Date));
              if Trim(fLimpaStr(EdDteFat2.Text)) <> '' then
                sFiltro := sFiltro + ' and FatPed.DteFat <= ' + QuotedStr(fDateToSQL(EdDteFat2.Date));

              sFiltro := sFiltro + ' and FatPed.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

              sFiltro := sFiltro + ' and FatPed.FlgSin = ' + QuotedStr('Sim') + ' and FatPed.FlgImp = ' + QuotedStr('Sim') + ' and FatPed.SitFat = ' +
                QuotedStr('Faturado');

              with quSQL1, SQL do
              begin

                Close;
                Text := ' Select * From FatPe4' +
                  ' Where FatPe4.Id_FatPed = ' + QuotedStr(IntToStr(quSQL.FieldbyName('Id_FatPed').AsInteger));
                Open;

              end;

              while not quSQL1.EOF do
              begin

                if quSQL1.FieldbyName('TotSub').AsFloat > 0 then
                  TipVenda := '3'
                else
                  TipVenda := '1';

                if Trim(quSQL1.FieldbyName('CodUnd').AsString) <> '' then
                  CodUnd := Trim(quSQL1.FieldbyName('CodUnd').AsString)
                else
                  CodUnd := 'PC';

                if Trim(quSQL1.FieldbyName('CodSt1').AsString) <> '' then
                  CodStr := Trim(quSQL1.FieldbyName('CodSt1').AsString)
                else
                  CodStr := '0';

                if Trim(quSQL1.FieldbyName('CodSt2').AsString) <> '' then
                  CodStr := CodStr + Trim(quSQL1.FieldbyName('CodSt2').AsString)
                else
                  CodStr := CodStr + '00';

                ClsIpi := copy(Trim(fLimpaStr(quSQL1.FieldbyName('ClsIpi').AsString)), 1, 8);

                if Length(ClsIpi) < 8 then
                  ClsIpi := ClsIpi + fReplicate('0', 8 - Length(ClsIpi));

                Writeln(ArqTexto, '30|' + // Tipo de Registro "30"
                  quSQL1.FieldbyName('CodGru').AsString + quSQL1.FieldbyName('CodSub').AsString + quSQL1.FieldbyName('CodPro').AsString + '|' +
                    // Código do Produto ou Serviço
                  Trim(quSQL1.FieldbyName('DesPe4').AsString) + '|' + // Descrição do Produto ou Serviço
                  ClsIpi + '|' + // Código NCM
                  CodUnd + '|' + // Unidade Comercial
                  FormatFloat('########0.0000', quSQL1.FieldbyName('QtpPe4').AsFloat) + '|' + // Quantidade Comercial
                  FormatFloat('########0.0000', quSQL1.FieldbyName('VluPe4').AsFloat) + '|' + // Valor Unitário de Comercialização
                  FormatFloat('########0.00', quSQL1.FieldbyName('TotPe4').AsFloat) + '|' + // Valor Total Bruto dos Produtos/Serviços
                  CodStr + '|' + // Situação Tributaria
                  FormatFloat('###,###,##0.00', quSQL1.FieldbyName('IcmPe4').AsFloat) + '|' + // Aliquota do Imposto ICMS
                  FormatFloat('###,###,##0.00', quSQL1.FieldbyName('IpiPe4').AsFloat) + '|' + // Aliquota do IPI
                  FormatFloat('###,###,##0.00', quSQL1.FieldbyName('TotIpi').AsFloat) + '|'); // Valor do IPI

                Inc(QtdReg30);

                quSQL1.Next;

              end;

              Writeln(ArqTexto, '40|' + // Tipo de Registro "40"
                FormatFloat('########0.00', quSQL.FieldbyName('BasIcm').AsFloat) + '|' + // Base de Calculo do ICMS
                FormatFloat('########0.00', quSQL.FieldbyName('TotIcm').AsFloat) + '|' + // Valor Total do ICMS
                FormatFloat('########0.00', quSQL.FieldbyName('BasSub').AsFloat) + '|' + // Base de Calculo do ICMS ST
                FormatFloat('########0.00', quSQL.FieldbyName('TotSub').AsFloat) + '|' + // Valor Total do ICMS ST
                FormatFloat('########0.00', quSQL.FieldbyName('TotFat').AsFloat) + '|' + // Valor Total dos Produtos e Serviços
                FormatFloat('########0.00', quSQL.FieldbyName('TotFrt').AsFloat) + '|' + // Valor Total do Frete
                FormatFloat('########0.00', quSQL.FieldbyName('TotSeg').AsFloat) + '|' + // Valor Total do Seguro
                FormatFloat('########0.00', quSQL.FieldbyName('TotDsr').AsFloat) + '|' + // Valor Total do Desconto
                FormatFloat('########0.00', quSQL.FieldbyName('TotIpi').AsFloat) + '|' + // Valor Total do IPI
                FormatFloat('########0.00', quSQL.FieldbyName('TotDes').AsFloat) + '|' + // Outras despesas acessórias
                FormatFloat('########0.00', quSQL.FieldbyName('TotGer').AsFloat) + '|' + // Valor Total da NF
                FormatFloat('########0.00', quSQL.FieldbyName('TotSer').AsFloat) + '|' + // Valor Total dos Serviços não-incidência ou não Tributados pelo ICMS
                FormatFloat('########0.00', IssSer) + '|' + // Aliquota do ISS
                FormatFloat('########0.00', quSQL.FieldbyName('TotIss').AsFloat) + '|'); // Valor Total do ISS

              Inc(QtdReg40);

              Writeln(ArqTexto, '50|' + // Tipo de Registro "50"
                TipFrt + '|' + // Tipo de Frete 0 - por Conta do Emitente 1-por Conta do Destinatario
                FLimpaStr(Trim(quSQL.FieldbyName('CgcTra').AsString)) + '|' + // CNPJ/CPF do Transportador
                Trim(quSQL.FieldbyName('NomTra').AsString) + '|' + // Razão Social ou Nome
                FLimpaStr(Trim(quSQL.FieldbyName('InsTra').AsString)) + '|' + // Inscrição Estadual
                EndTra + '|' + // Endereço Completo
                Trim(quSQL.FieldbyName('CidTra').AsString) + '|' + // Nome do Municipio
                Trim(quSQL.FieldbyName('UfeTra').AsString) + '|' + // Sigla da UF
                Trim(quSQL.FieldbyName('PlcTra').AsString) + '|' + // Placa do Veículo
                Trim(quSQL.FieldbyName('UfePlc').AsString) + '|' + // Sigla da UF da Placa
                IntToStr(quSQL.FieldbyName('AltVol').AsInteger) + '|' + // Quantidade de Volumes Transportados
                Trim(quSQL.FieldbyName('EspFat').AsString) + '|' + // Especié dos Volumes Transportados
                Trim(quSQL.FieldbyName('MarFat').AsString) + '|' + // Marca dos Volumes Transportados
                '|' + // Númeração dos Volumes Transportados
                FormatFloat('########0.000', quSQL.FieldbyName('InfLiq').AsFloat) + '|' + // Peso Liquido
                FormatFloat('########0.000', quSQL.FieldbyName('InfBrt').AsFloat) + '|'); // Peso Bruto

              Inc(QtdReg50);

              if Trim(quSQL.FieldbyName('Ob1Fat').AsString) <> '' then
                ObsFat := fLimpaAcentos(quSQL.FieldbyName('Ob1Fat').AsString);

              if Trim(quSQL.FieldbyName('Ob2Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob2Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob2Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob3Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob3Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob3Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob4Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob4Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob4Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob5Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob5Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob5Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob6Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob6Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob6Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob7Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob7Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob7Fat').AsString));

              end;

              if Trim(quSQL.FieldbyName('Ob8Fat').AsString) <> '' then
              begin

                if Trim(ObsFat) <> '' then
                  ObsFat := ObsFat + ' ' + fLimpaAcentos(Trim(quSQL.FieldbyName('Ob8Fat').AsString))
                else
                  ObsFat := fLimpaAcentos(Trim(quSQL.FieldbyName('Ob8Fat').AsString));

              end;

              ObsFat := copy(Trim(ObsFat), 1, 256);

              Writeln(ArqTexto, '60|' + // Tipo de Registro "60"
                '|' + // Dados da Fatura
                ObsFat + '|' + // Informações Adicionais do Interesse do Fisco
                '|'); // Informações Complementares do Contribuinte

              Inc(QtdReg60);

              TotGer_Lan := TotGer_Lan + quSQL.FieldbyName('TotGer').AsFloat;

            end;

            quSQL.Next;

            ProgressBar.StepBy(1);

            Application.ProcessMessages;

          end;

          ProgressBar.Position := 0;

          quSQL.Close;

          quSQL1.Close;

          QtdArq := QtdReg20 + QtdReg30 + QtdReg40 + QtdReg50 + QtdReg60;

          Writeln(ArqTexto, '90|' +
            fNumZeros(IntToStr(QtdReg20), 5) + '|' +
            fNumZeros(IntToStr(QtdReg30), 5) + '|' +
            fNumZeros(IntToStr(QtdReg40), 5) + '|' +
            fNumZeros(IntToStr(QtdReg50), 5) + '|' +
            fNumZeros(IntToStr(QtdReg60), 5));

          CloseFile(ArqTexto);

          fMsg('Arquivo(s) gerados com sucesso' + #10 + 'quantidade de arquivos para transmissão ' + Trim(IntToStr(QtdArq)), 'I');

          EdPsqCodEmp.SetFocus;

        end;
      end;

    end
    else
      fmsgErro('Nao foram localizadas informações para envio do arquivo.', nil);

  end
  else
    fmsgErro(GMensagem, nil);
end;

procedure TfmManNfp.FormShow(Sender: TObject);
begin
  inherited;
  EdPsqCodEmp.SetFocus;
end;

procedure TfmManNfp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action := CaFree;
end;

procedure TfmManNfp.FormDestroy(Sender: TObject);
begin
  inherited;
  fmManNfp := nil;
end;

procedure TfmManNfp.EdPsqCodEmpKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if not (key in ['0'..'9']) then
    key := #0;
end;

procedure TfmManNfp.EdPsqCodEmpExit(Sender: TObject);
begin
  inherited;
  if Trim(EdPsqCodEmp.Text) <> '' then
  begin

    if GFlgAce <> 'Sim' then
    begin

      with quSQL, SQL do
      begin

        Close;
        Text := ' Select FLGDEL,SEQIMP from GerPar';
        Open;

        if Trim(FieldbyName('FLGDEL').AsString) = '*' then
        begin

          GFlgAce := 'Sim';

          if FieldbyName('SEQIMP').AsInteger > 0 then
            GEmpLog := FieldbyName('SEQIMP').AsInteger;

        end
        else
        begin

          GEmpLog := 0;
          GFlgAce := 'Nao';

        end;
      end;
    end;

    with quSql, SQL do
    begin

      Close;
      Text := ' Select GerEmp.ApeEmp From GerEmp Where GerEmp.CodEmp = ' + QuotedStr(EdPsqCodEmp.Text);

      if GFlgAce = 'Sim' then
      begin

        if GEmpLog > 0 then
          Text := Text + ' and GerEmp.CodEmp = ' + QuotedStr(IntToStr(GEmpLog))
        else
          Text := Text + ' and GerEmp.CodFil > 0';

      end;

      Open;

      if Trim(FieldByName('ApeEmp').AsString) <> '' then
        EdPsqApeEmp.Text := FieldByName('ApeEmp').AsString
      else
      begin

        EdPsqApeEmp.Text := '';

        fmsgErro('Empresa informada não localizada.', EdPsqCodEmp);

      end;
    end;

  end
  else
    EdPsqApeEmp.Text := '';
end;

procedure TfmManNfp.BbPsqEmpClick(Sender: TObject);
begin
  inherited;

  try

    fmPsqEmp := TfmPsqEmp.Create(Self);
    fmPsqEmp.ShowModal;

    if fmPsqEmp.CodEmp > 0 then
    begin

      EdPsqApeEmp.Text := fmPsqEmp.NomEmp;
      EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

    end;

  finally

    FreeAndNil(fmPsqEmp);

  end;

  EdPsqCodEmp.SetFocus;

end;

procedure TfmManNfp.EdPsqCodEmpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if key = 112 then
  begin {F1 - Iniciais}

    try

      fmPsqEmp := TfmPsqEmp.Create(Self);
      fmPsqEmp.ShowModal;

      if fmPsqEmp.CodEmp > 0 then
      begin

        EdPsqApeEmp.Text := fmPsqEmp.NomEmp;
        EdPsqCodEmp.Text := IntToStr(fmPsqEmp.CodEmp);

      end;

    finally

      FreeAndNil(fmPsqEmp);

    end;

    EdPsqCodEmp.SetFocus;

  end;
end;

end.
