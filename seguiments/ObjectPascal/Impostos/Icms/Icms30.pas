unit Icms30;

interface

uses
 SysUtils, Classes;

function CalculaIcms30(baseIcmsST: double; aliquotaIcmsST: double; valorIcms: double) : double;

implementation

uses BaseIcmsST, ValorIcmsST;

function CalculaIcms30(baseIcmsST: double; aliquotaIcmsST: double; valorIcms: double) : double;
begin
  Result := CalculaValorIcmsST(baseIcmsST, aliquotaIcmsST, valorIcms);
end;

end.
