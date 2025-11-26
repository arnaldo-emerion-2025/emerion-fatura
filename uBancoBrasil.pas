unit uBancoBrasil;

interface
uses
   Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs, StdCtrls,
  ExtCtrls;

  //Fun��es para o Banco Brasil
   //function getCodBar(): String;
   function StrZero(numero, digitos: Integer): string;
   function Modulo11(Valor: string; Base: Integer = 9; Resto: boolean = false): string;
   function Modulo10(cData: string): Integer;
   function getCodBar_BB(cConvcConvenio, cCart, cBanco, cAgencia, cConta, cDigCC, cNroDoc: string; nValor: Double; dVencto: TDateTime): TStringList;
const
   codigoBanco = '001';

implementation
uses bbfuncao;

function getCodBar_BB(cConvcConvenio, cCart, cBanco, cAgencia, cConta, cDigCC, cNroDoc{NossoNumero}: string; nValor: Double; dVencto: TDateTime): TStringList;
var
   sTempBarras, LinhaDigitavel, nossoNumero, CodBarras, strFatorVenc, strCarteira: String;
   fatorVencimento: variant;
   dVal:real;
   iVal:integer;
   strValorFormatado, strZeros, strConvenio, strNossoNumero, bldocnufinal: string;
   dvcb, dvNossoNumero, dv: Integer;
begin

  Result := TStringList.Create;

  sTempBarras  := '';
  nossoNumero := trim(cNroDoc);
  strNossoNumero := StrZero(strtoint(nossoNumero),10);
  CodBarras := '';

  strCarteira := strZero(strToInt(trim(cCart)),2);

  fatorVencimento := (dVencto - StrToDate('07/10/97'));

  strFatorVenc := StrZero(fatorVencimento, 4);
  strZeros :=  StrZero(0, 6);

  strCarteira := cCart;

  bldocnufinal := '0000' + cNroDoc;
  strConvenio := StrZero( strToint(trim(cConvcConvenio)),7);

  dVal := (nValor * 100);
  iVal :=  Trunc(dVal);
  strValorFormatado := StrZero(iVal, 10);

  sTempBarras := codigoBanco+'9'+strFatorVenc + strValorFormatado + strZeros + strConvenio + strNossoNumero+strCarteira; //ALTEREI AQUI TINHA O cDigCC
  dvcb := strToInt(modulo11(sTempBarras));
  CodBarras := Copy(sTempBarras, 1, 4) + Trim(IntToStr(dvcb)) + Copy(sTempBarras, 5, Length(sTempBarras));

  //-------- Definicao do NOSSO NUMERO

  dvNossoNumero := modulo10(bldocnufinal); // digito verifacador Agencia + Conta + Carteira + Nosso Num
  nossoNumero := bldocnufinal;

  //-------- Definicao do CODIGO DE BARRAS
  sTempBarras := cBanco + 'X' + strFatorVenc + strValorFormatado + '9' + cConvcConvenio + nossoNumero + Trim(IntToStr(dvNossoNumero)) + '0' + cCart;
       //strCarteira + bldocnufinal + Trim(IntToStr(dvNossoNumero)) + cAgencia + cConta + cDigCC + '000';


  //-------- Definicao da LINHA DIGITAVEL (Representacao Numerica)
  //	Campo 1			Campo 2			Campo 3			Campo 4		Campo 5
  //	AAABC.CCDDX		DDDDD.DDFFFY	FGGGG.GGHHHZ	K			UUUUVVVVVVVVVV

  // 	CAMPO 1:
  //	01,03 003 - Banco = '033'
  //	04,04 001 = Codigo da moeda, sempre 9
  //	05,05 001 = Fixo '9'
  //	06,09 004 = Codigo do Beneficiario  (Pegar Informacao Cobranca - Convenio)
  //	10,10 001 = DAC que amarra o campo, calculado pelo Modulo 10 da String do campo
  sTempBarras := codigoBanco  + '9' + Copy(CodBarras, 20, 5);
  dv := modulo10(sTempBarras);
  LinhaDigitavel := copy(sTempBarras,1,5) + '.' + copy(sTempBarras,6,4) + Trim(IntToStr(dv)) + '  ';

  // 	CAMPO 2:
  //	11,13 003 - Restante do Codigo do Beneficiario Padrao Santander
  //	14,20 007 = 7 primeiros campos do NN
  //	21,21 001 = DAC que amarra o campo, calculado pelo Modulo 10 da String do campo
  sTempBarras := Copy(CodBarras, 25, 10);
  dv := modulo10(sTempBarras);
  LinhaDigitavel := LinhaDigitavel + copy(sTempBarras,1,5) + '.' + copy(sTempBarras,6,5)  + Trim(IntToStr(dv)) + '  ';

  // 	CAMPO 3:
  //	22,27 006 = Restante do NN com DV
  //  28,28 001 = IOF - Somente para seguradoras(Se 7% informar 7, limitada a 9)-Demais usar 0
  //  29,31 003 = Tipo de Modalidade Carteira 101(Simples) 102 (Simples SEM Registro) 201(Penhor)
  //  32,32 001 = Digito verificador
  sTempBarras := Copy(CodBarras, 35, 10);
  dv := modulo10(sTempBarras);
  LinhaDigitavel := LinhaDigitavel + copy(sTempBarras,1,5) + '.' + copy(sTempBarras,6,5) + Trim(IntToStr(dv)) + '  ';

  // 	CAMPO 4:
  //	     K = DAC do Codigo de Barras
  LinhaDigitavel := LinhaDigitavel + Trim(IntToStr(dvcb)) + '  ';

  // 	CAMPO 5:
  //	      UUUU = Fator de Vencimento
  //	VVVVVVVVVV = Valor do Titulo
  fatorVencimento := (nValor * 100);
  LinhaDigitavel := LinhaDigitavel + strFatorVenc + StrZero(fatorVencimento, 14 - Length(strFatorVenc));


  Result.Add(CodBarras);                  //Codigo de Barras
  Result.Add(LinhaDigitavel);                  //Linha Digitavel
  Result.Add(nossoNumero);                  //Nosso Numero
  Result.Add(Trim(IntToStr(dvNossoNumero)));//Digito Verificador Nosso Numero

end;

function StrZero(numero, digitos: Integer): string;
var
  i: Integer;
begin
  Result := IntToStr(numero);
  for i := Length(Result) to digitos - 1 do
    Result := '0' + Result;
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
   Faz-se a operacao 11-Resto da divis�o e devolve-se o resultado dessa operacao
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
    if ((Digito > 9) or (Digito < 1)) then
      Digito := 1;
    Result := IntToStr(Digito);
  end
end;

function Modulo10(cData: string): Integer;
var
  L, D, P: Integer;
  B: Boolean;
begin
  L := Length(cData);
  B := True;
  D := 0;

  while L > 0 do
  begin
    P := StrToInt(Copy(cData, L, 1));
    if B then
      P := P * 2;

    if P > 9 then
      P := P - 9;

    D := D + P;
    L := L - 1;
    B := not B;

  end;

  D := 10 - (D mod 10);
  if D = 10 then
    D := 0;
  Result := D;
end;

end.
