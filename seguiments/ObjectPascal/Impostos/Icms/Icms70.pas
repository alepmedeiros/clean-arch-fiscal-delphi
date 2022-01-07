unit Icms70;

interface

uses
 SysUtils, Classes;

function CalculaIcms70(baseIcmsSTReduzida: double; aliquotaIcmsST: double; valorIcms: double) : double;

implementation

uses BaseIcmsST, ValorIcmsST;

function CalculaIcms10(baseIcmsSTReduzida: double; aliquotaIcmsST: double; valorIcms: double) : double;
begin
  Result := CalculaValorIcmsST(baseIcmsSTReduzida, aliquotaIcmsST, valorIcms);
end;

end.
