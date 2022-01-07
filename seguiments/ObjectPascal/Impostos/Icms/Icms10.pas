unit Icms10;


interface

uses
 SysUtils, Classes;

function CalculaIcms10(baseIcmsST: double; aliquotaIcmsST: double; valorIcms: double) : double;

implementation

uses BaseIcmsST, ValorIcmsST;

function CalculaIcms10(baseIcmsST: double; aliquotaIcmsST: double; valorIcms: double) : double;
begin
  Result := CalculaValorIcmsST(baseIcmsST, aliquotaIcmsST, valorIcms);
end;

end.
