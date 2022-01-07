unit Icms201_202_203;

interface

uses
 SysUtils, Classes;

function CalculaIcms201_202_203(baseIcmsST: double; aliquotaIcmsST: double; valorIcms: double) : double;

implementation

uses BaseIcmsST, ValorIcmsST;

function CalculaIcms201_202_203(baseIcmsST: double; aliquotaIcmsST: double; valorIcms: double) : double;
begin
  Result := CalculaValorIcmsST(baseIcmsST, aliquotaIcmsST, valorIcms);
end;

end.
