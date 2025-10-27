unit uUtils;

interface

uses
   Sysutils,
   ulkJSON;

function putString(const value: String): TlkJSONbase;
function putNumber(const value: Extended): TlkJSONbase;
function putStrToNumber(const value: String): TlkJSONbase;

implementation

function putString(const value: String): TlkJSONbase;
begin
   Result := TlkJSONstring.generate(Trim(value));
end;

function putNumber(const value: Extended): TlkJSONbase;
begin
   Result := TlkJSONnumber.generate(value);
end;

function putStrToNumber(const value: String): TlkJSONbase;
begin
   DecimalSeparator := '.';
   Result := TlkJSONnumber.generate(StrToFloat(Trim(value)));
end;

end.
