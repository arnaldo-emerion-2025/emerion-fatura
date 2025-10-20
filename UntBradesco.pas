unit UntBradesco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs, StdCtrls,
  ExtCtrls;

function Modulo10(Valor: string): string;
function Modulo11(Valor: string; Base: Integer = 9; Resto: boolean = false): string;
function Formatar(Texto: string; TamanhoDesejado: integer; AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;
function GetLinhaDigitavel(Codigo: string): string;
function CalcularFatorVencimento(DataDesejada: TDateTime): string;
function GetNomeBanco: string;
function CalcularDigitoNossoNumero(Carteira, NossoNumero: string): string;
function GetCampoLivreCodigoBarra(Carteira, NossoNumero, CodigoAgencia, NumeroConta: string): string;
function GerarCodigoBarra(Banco, Carteira, NossoNumero, CodigoAgencia, NumeroConta: string; Vencimento: TDateTime; Valor: Extended): string;
function aCB_LD_NN_BRADESCO(cCart, cBanco, cAgencia, cConta, cDigCC, cNroDoc: string; nValor: Extended; dVencto: TDateTime): TStringList;

const
  CodigoBanco = '237';
  NomeBanco = 'BRADESCO';

implementation

function Modulo10(Valor: string): string;
{
   Rotina usada para c�lculo de alguns d�gitos verificadores
   Pega-se cada um dos d�gitos contidos no par�metro VALOR, da direita para a
   esquerda e multiplica-se por 2121212...
   Soma-se cada um dos subprodutos. Caso algum dos subprodutos tenha mais de um
   d�gito, deve-se somar cada um dos d�gitos. (Exemplo: 7*2 = 14 >> 1+4 = 5)
   Divide-se a soma por 10.
   Faz-se a opera��o 10-Resto da divis�o e devolve-se o resultado dessa opera��o
   como resultado da fun��o Modulo10.
   Obs.: Caso o resultado seja maior que 9, dever� ser substitu�do por 0 (ZERO).
}
var
  Auxiliar: string;
  Contador, Peso: integer;
  Digito: integer;
begin
  Auxiliar := '';
  Peso := 2;
  for Contador := Length(Valor) downto 1 do
  begin
    Auxiliar := IntToStr(StrToInt(Valor[Contador]) * Peso) + Auxiliar;
    if Peso = 1 then
      Peso := 2
    else
      Peso := 1;
  end;

  Digito := 0;
  for Contador := 1 to Length(Auxiliar) do
  begin
    Digito := Digito + StrToInt(Auxiliar[Contador]);
  end;
  Digito := 10 - (Digito mod 10);
  if (Digito > 9) then
    Digito := 0;
  Result := IntToStr(Digito);
end;

function Modulo11(Valor: string; Base: Integer = 9; Resto: boolean = false): string;
{
   Rotina muito usada para calcular d�gitos verificadores
   Pega-se cada um dos d�gitos contidos no par�metro VALOR, da direita para a
   esquerda e multiplica-se pela seq��ncia de pesos 2, 3, 4 ... at� BASE.
   Por exemplo: se a base for 9, os pesos ser�o 2,3,4,5,6,7,8,9,2,3,4,5...
   Se a base for 7, os pesos ser�o 2,3,4,5,6,7,2,3,4...
   Soma-se cada um dos subprodutos.
   Divide-se a soma por 11.
   Faz-se a opera��o 11-Resto da divis�o e devolve-se o resultado dessa opera��o
   como resultado da fun��o Modulo11.
   Obs.: Caso o resultado seja maior que 9, dever� ser substitu�do por 0 (ZERO).
}
var
  Soma: integer;
  Contador, Peso, Digito: integer;
begin
  Soma := 0;
  Peso := 2;
  for Contador := Length(Valor) downto 1 do
  begin
    Soma := Soma + (StrToInt(Valor[Contador]) * Peso);
    if Peso < Base then
      Peso := Peso + 1
    else
      Peso := 2;
  end;

  if Resto then
    Result := IntToStr(Soma mod 11)
  else
  begin
    Digito := 11 - (Soma mod 11);
    if (Digito > 9) then
      Digito := 0;
    Result := IntToStr(Digito);
  end
end;

function Formatar(Texto: string; TamanhoDesejado: integer; AcrescentarADireita: boolean = true; CaracterAcrescentar: char = ' '): string;
{
   OBJETIVO: Eliminar caracteres inv�lidos e acrescentar caracteres � esquerda ou � direita do texto original para que a string resultante fique com o tamanho desejado

   Texto : Texto original
   TamanhoDesejado: Tamanho que a string resultante dever� ter
   AcrescentarADireita: Indica se o car�cter ser� acrescentado � direita ou � esquerda
      TRUE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � direita
             Se o tamanho do texto for MAIOR que o desejado, eliminar �ltimos caracteres do texto
      FALSE - Se o tamanho do texto for MENOR que o desejado, acrescentar car�cter � esquerda
             Se o tamanho do texto for MAIOR que o desejado, eliminar primeiros caracteres do texto
   CaracterAcrescentar: Car�cter que dever� ser acrescentado
}
var
  QuantidadeAcrescentar,
    TamanhoTexto,
    PosicaoInicial,
    i: integer;

begin
  case CaracterAcrescentar of
    '0'..'9', 'a'..'z', 'A'..'Z': ; {N�o faz nada}
  else
    CaracterAcrescentar := ' ';
  end;

  Texto := Trim(Texto);
  TamanhoTexto := Length(Texto);
  for i := 1 to (TamanhoTexto) do
  begin
    if Pos(Texto[i], ' 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ`~''"!@#$%^&*()_-+=|/\{}[]:;,.<>') = 0 then
    begin
      case Texto[i] of
        '�', '�': Texto[i] := 'A';
        '�', '�': Texto[i] := 'E';
        '�', '�': Texto[i] := 'I';
        '�', '�': Texto[i] := 'O';
        '�', '�': Texto[i] := 'U';
        '�', '�': Texto[i] := 'A';
        '�', '�': Texto[i] := 'E';
        '�', '�': Texto[i] := 'I';
        '�', '�': Texto[i] := 'O';
        '�', '�': Texto[i] := 'U';
        '�', '�': Texto[i] := 'A';
        '�', '�': Texto[i] := 'E';
        '�', '�': Texto[i] := 'I';
        '�', '�': Texto[i] := 'O';
        '�', '�': Texto[i] := 'U';
        '�', '�': Texto[i] := 'A';
        '�', '�': Texto[i] := 'E';
        '�', '�': Texto[i] := 'I';
        '�', '�': Texto[i] := 'O';
        '�', '�': Texto[i] := 'U';
        '�', '�': Texto[i] := 'C';
        '�', '�': Texto[i] := 'N';
      else
        Texto[i] := ' ';
      end;
    end;
  end;

  QuantidadeAcrescentar := TamanhoDesejado - TamanhoTexto;
  if QuantidadeAcrescentar < 0 then
    QuantidadeAcrescentar := 0;
  if CaracterAcrescentar = '' then
    CaracterAcrescentar := ' ';
  if TamanhoTexto >= TamanhoDesejado then
    PosicaoInicial := TamanhoTexto - TamanhoDesejado + 1
  else
    PosicaoInicial := 1;

  if AcrescentarADireita then
    Texto := Copy(Texto, 1, TamanhoDesejado) + StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar)
  else
    Texto := StringOfChar(CaracterAcrescentar, QuantidadeAcrescentar) + Copy(Texto, PosicaoInicial, TamanhoDesejado);

  Result := AnsiUpperCase(Texto);
end;

function GetLinhaDigitavel(Codigo: string): string;
{
   A linha digit�vel � baseada na informa��es do c�digo de barras.
   As informa��es que fazem parte do c�digo de barras s�o:
   Posi��o         Conte�do
   1 a 3           N�mero do banco
   4               C�digo da Moeda - 9 para Real
   5               Digito verificador do C�digo de Barras
   6 a 19          Valor (12 inteiros e 2 decimais)
   20 a 44         Campo Livre definido por cada banco
}
var
  p1, p2, p3, p4, p5, p6,
    Campo1, Campo2, Campo3, Campo4, Campo5: string;
begin
  {
     Campo 1 - composto pelo c�digo do banco, c�digo da moeda, as cinco primeiras posi��es
     do campo livre e DV (modulo10) desse campo
  }
  p1 := Copy(Codigo, 1, 4);
  p2 := Copy(Codigo, 20, 5);
  p3 := Modulo10(p1 + p2);
  p4 := p1 + p2 + p3;
  p5 := Copy(p4, 1, 5);
  p6 := Copy(p4, 6, 5);
  Campo1 := p5 + '.' + p6;

  {
     Campo 2 - composto pelas posi�oes 6 a 15 do campo livre
     e DV (modulo10) deste campo
  }
  p1 := Copy(Codigo, 25, 10);
  p2 := Modulo10(p1);
  p3 := p1 + p2;
  p4 := Copy(p3, 1, 5);
  p5 := Copy(p3, 6, 6);
  Campo2 := p4 + '.' + p5;

  {
     Campo 3 - composto pelas posicoes 16 a 25 do campo livre
     e DV (modulo10) deste campo
  }
  p1 := Copy(Codigo, 35, 10);
  p2 := Modulo10(p1);
  p3 := p1 + p2;
  p4 := Copy(p3, 1, 5);
  p5 := Copy(p3, 6, 6);
  Campo3 := p4 + '.' + p5;

  {
     Campo 4 - digito verificador do codigo de barras
  }
  Campo4 := Copy(Codigo, 5, 1);

  {
     Campo 5 - composto pelo valor nominal do documento, sem indicacao
     de zeros a esquerda e sem edicao (sem ponto e virgula). Quando se
     tratar de valor zerado, a representacao deve ser 000 (tres zeros).
  }
  Campo5 := Copy(Codigo, 6, 14);

  Result := Campo1 + ' ' + Campo2 + ' ' + Campo3 + ' ' + Campo4 + ' ' + Campo5;
end;

function CalcularFatorVencimento(DataDesejada: TDateTime): string;
{O fator de vencimento � a quantidade de dias entre 07/Nov/1997 e a data de vencimento do t�tulo}
begin
  Result := IntToStr(Trunc(DataDesejada - EncodeDate(1997, 10, 07)));
end;

function GetNomeBanco: string;
begin
  Result := NomeBanco;
end;

function CalcularDigitoNossoNumero(Carteira, NossoNumero: string): string;
var
  ACarteira,
    ANossoNumero,
    ADigitoNossoNumero: string;
begin
  Result := '0';

  ACarteira := Formatar(Carteira, 2, false, '0');
  ANossoNumero := Formatar(NossoNumero, 11, false, '0');
  ADigitoNossoNumero := Modulo11(ACarteira + ANossoNumero, 7, true);
  if StrToInt(ADigitoNossoNumero) = 1 then
    ADigitoNossoNumero := 'P'
  else if StrToInt(ADigitoNossoNumero) > 1 then
    ADigitoNossoNumero := IntToStr(11 - StrToInt(ADigitoNossoNumero));

  Result := ADigitoNossoNumero;
end;

function GetCampoLivreCodigoBarra(Carteira, NossoNumero, CodigoAgencia, NumeroConta: string): string;
var
  AAnoAtual,
    ACarteira,
    ANossoNumero,
    ACodigoAgencia,
    ANumeroConta: string;
begin

  {
   A primeira parte do c�digo de barras ser� calculada automaticamente.
   Ela � composta por:
   C�digo do banco (3 posi��es)
   C�digo da moeda = 9 (1 posi��o)
   D�gito do c�digo de barras (1 posi��o) - Ser� calculado e inclu�do pelo componente
   Fator de vencimento (4 posi��es) - Obrigat�rio a partir de 03/07/2000
   Valor do documento (10 posi��es) - Sem v�rgula decimal e com ZEROS � esquerda

   A segunda parte do c�digo de barras � um campo livre, que varia de acordo
   com o banco. Esse campo livre ser� calculado por esta fun��o (que voc� dever�
   alterar de acordo com as informa��es fornecidas pelo banco).
  }

  {Segunda parte do c�digo de barras - Campo livre - Varia de acordo com o banco}

  ACarteira := Formatar(Carteira, 2, false, '0');
  AAnoAtual := FormatDateTime('yy', Now());
  ANossoNumero := Formatar(NossoNumero, 11, false, '0');
  ACodigoAgencia := Formatar(CodigoAgencia, 4, false, '0');
  ANumeroConta := Formatar(NumeroConta, 7, false, '0');

  Result := ACodigoAgencia + ACarteira + ANossoNumero + ANumeroConta + '0';
end;

function GerarCodigoBarra(Banco, Carteira, NossoNumero, CodigoAgencia,
  NumeroConta: string; Vencimento: TDateTime; Valor: Extended): string;
var
  ACodigoBanco,
    ACodigoMoeda,
    ADigitoCodigoBarras,
    AFatorVencimento,
    AValorDocumento,
    ACampoLivre,
    ACodigoBarras: string;
begin

  {
   A primeira parte do c�digo de barras � composta por:
   C�digo do banco (3 posi��es)
   C�digo da moeda = 9 (1 posi��o)
   D�gito do c�digo de barras (1 posi��o) - Ser� calculado e inclu�do pelo componente
   Fator de vencimento (4 posi��es) - Obrigat�rio a partir de 03/07/2000
   Valor do documento (10 posi��es) - Sem v�rgula decimal e com ZEROS � esquerda

   A segunda parte do c�digo de barras � um campo livre, que varia de acordo
   com o banco
  }

  {Primeira parte do c�digo de barras}
  ACodigoBanco := Formatar(Banco, 3, false, '0');
  ACodigoMoeda := '9';
  AFatorVencimento := Formatar(CalcularFatorVencimento(Vencimento), 4, false, '0');
  AValorDocumento := FormatCurr('0000000000', Valor * 100); {Formata o valor com 10 d�gitos, incluindo as casas decimais, mas n�o mostra o ponto decimal}

  {Segunda parte do c�digo de barras - Campo livre - Varia de acordo com o banco}

  ACampoLivre := GetCampoLivreCodigoBarra(Carteira, NossoNumero, CodigoAgencia, NumeroConta);
  {Calcula o d�gito e completa o c�digo de barras}
  ACodigoBarras := ACodigoBanco + ACodigoMoeda + AFatorVencimento + AValorDocumento + ACampoLivre;
  ADigitoCodigoBarras := Modulo11(ACodigoBarras, 9);
  if ADigitoCodigoBarras = '0' then
    ADigitoCodigoBarras := '1';

  Result := Copy(ACodigoBarras, 1, 4) + ADigitoCodigoBarras + Copy(ACodigoBarras, 5, length(ACodigoBarras) - 4);
end;

function aCB_LD_NN_BRADESCO(cCart, cBanco, cAgencia, cConta, cDigCC, cNroDoc: string;
  nValor: Extended; dVencto: TDateTime): TStringList;
var
  cCodBar, cLD, cNN, cDNN: string;
begin
  Result := TStringList.Create;
  cCodBar := GerarCodigoBarra(cBanco, cCart, cNroDoc, cAgencia,
    cConta, dVencto, nValor);
  cLD := GetLinhaDigitavel(cCodBar);
  cNN := Formatar(cNroDoc, 11, false, '0');
  cDNN := CalcularDigitoNossoNumero(cCart, cNroDoc);

  Result.Add(cCodBar);
  Result.Add(cLD);
  Result.Add(cNN);
  Result.Add(cDNN);
end;

end.
