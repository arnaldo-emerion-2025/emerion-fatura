unit UnitItau;

//func�es para o Banco Itau

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Dialogs, StdCtrls,
  ExtCtrls;

const
  CodigoBanco = '341';
  NomeBanco = 'Banco Ita� SA';

implementation

function StrZero(numero, digitos: Integer): string;
var
 i: Integer;
begin
 Result := IntToStr(numero);
for i := Length(Result) to digitos - 1 do
 Result := '0' + Result;
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

function Modulo11(cData: string): Integer;
var
  L, D, P: Integer;
begin
  L := Length(cData);
  D := 0;
  P := 1;
  while L > 0 do
  begin
    P := P + 1;
    D := D + (StrToInt(Copy(cData, L, 1)) * P);
    if P = 9 then
      P := 1;
    L := L - 1;
  end;
  D := 11 - (D mod 11);
  if (D = 0) or (D = 1) or (D = 10) or (D = 11) then
    D := 1;
  result := D;
end;

{
//Banco Itau
//Calculo do Digito do Codigo de Barras
function BarraDV( B_CAMPO: String ): String;
var
   i, nCont, nPeso: Integer;
   Resto, Resultado: Extended;
begin
   nCont := 0;
   nPeso := 2;
   for i := 43 downto 1 do
   begin
      nCont := nCont + ( StrToInt( Copy( B_CAMPO, i, 1 ) ) * nPeso );
      nPeso := nPeso + 1;
      if nPeso > 9 then
         nPeso := 2;
 end;

   Resto  := Frac( nCont / 11 );
   Resultado := ( 11 - Resto );
   if ( Resultado = 10 ) or ( resultado = 11 ) then
  Result := '1'
   else
  Result := FloatToStr( Resultado );
end;
}

function aCB_LD_NN_ITAU(cCart, cBanco, cAgencia, cConta, cDigCC, cNroDoc: string; nValor: Extended; dVencto: TDateTime): TStringList;
var
  bldocnufinal,
    blvalorfinal: string;
  dvnn, dvcb, dv: Integer;
  NN, RN, CB, s, _cfator, _cCart: string;
  nExtToInt: Variant;
begin
  Result := TStringList.Create;

  bldocnufinal := cNroDoc; //Alterei aqui era Copy( cNroDoc, 4, 8 )
  nExtToInt := Int(nValor * 100);
  blvalorfinal := StrZero(nExtToInt, 10);
  dvnn := 0;
  dvcb := 0;
  dv := 0;
  NN := '';
  RN := '';
  CB := '';
  s := '';

  nExtToInt := dVencto - StrToDate('07/10/97');

  _cfator := StrZero(nExtToInt, 4);

  _cCart := cCart;

  //-------- Definicao do NOSSO NUMERO
  s := cAgencia + cConta + _cCart + bldocnufinal; //ALTEREI AQUI TINHA O cDigCC
  dvnn := modulo10(s); // digito verifacador Agencia + Conta + Carteira + Nosso Num
  NN := bldocnufinal;

  //	-------- Definicao do CODIGO DE BARRAS
  s := cBanco + _cfator + blvalorfinal + _cCart + bldocnufinal + Trim(IntToStr(dvnn)) + cAgencia + cConta + cDigCC + '000';
  dvcb := modulo11(s);
  CB := Copy(s, 1, 4) + Trim(IntToStr(dvcb)) + Copy(s, 5, Length(s));

  //-------- Definicao da LINHA DIGITAVEL (Representacao Numerica)
  //	Campo 1			Campo 2			Campo 3			Campo 4		Campo 5
  //	AAABC.CCDDX		DDDDD.DDFFFY	FGGGG.GGHHHZ	K			UUUUVVVVVVVVVV

  // 	CAMPO 1:
  //	AAA = Codigo do banco na Camara de Compensacao
  //	  B = Codigo da moeda, sempre 9
  //	CCC = Codigo da Carteira de Cobranca
  //	 DD = Dois primeiros digitos no nosso numero
  //	  X = DAC que amarra o campo, calculado pelo Modulo 10 da String do campo

  s := cBanco + _cCart + Copy(bldocnufinal, 1, 2);
  dv := modulo10(s);
  RN := Copy(s, 1, 5) + '.' + Copy(s, 6, 4) + Trim(IntToStr(dv)) + '  ';

  // 	CAMPO 2:
  //	DDDDDD = Restante do Nosso Numero
  //	     E = DAC do campo Agencia/Conta/Carteira/Nosso Numero
  //	   FFF = Tres primeiros numeros que identificam a agencia
  //	     Y = DAC que amarra o campo, calculado pelo Modulo 10 da String do campo

  s := Copy(bldocnufinal, 3, 6) + Trim(IntToStr(dvnn)) + Copy(cAgencia, 1, 3);
  dv := modulo10(s);
  RN := RN + Copy(s, 1, 5) + '.' + Copy(s, 6, 5) + Trim(IntToStr(dv)) + '  ';

  // 	CAMPO 3:
  //	     F = Restante do numero que identifica a agencia
  //	GGGGGG = Numero da Conta + DAC da mesma
  //	   HHH = Zeros (Nao utilizado)
  //	     Z = DAC que amarra o campo, calculado pelo Modulo 10 da String do campo
  s := Copy(cAgencia, 4, 1) + cConta + cDigCC + '000';
  dv := modulo10(s);
  RN := RN + Copy(s, 1, 5) + '.' + Copy(s, 6, 5) + Trim(IntToStr(dv)) + '  ';

  // 	CAMPO 4:
  //	     K = DAC do Codigo de Barras
  RN := RN + Trim(IntToStr(dvcb)) + '  ';

  // 	CAMPO 5:
  //	      UUUU = Fator de Vencimento
  //	VVVVVVVVVV = Valor do Titulo
  nExtToInt := (nValor * 100);
  RN := RN + _cfator + StrZero(nExtToInt, 14 - Length(_cfator));

  Result.Add(CB); //Codigo de Barras
  Result.Add(RN); //Linha Digitavel
  Result.Add(NN); //Nosso Numero
  Result.Add(Trim(IntToStr(dvnn)));
end;

end.
