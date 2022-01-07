unit Icms51;

interface

uses
 SysUtils, Classes;

function CalculaIcms51(ValorIcms: double; aliquotaIcmsDiferido: double) : double;

implementation

uses BaseIcms, ValorIcms;

function CalculaIcms51(ValorIcms: double; aliquotaIcmsDiferido: double) : double;
begin

  Result := (ValorIcms - (ValorIcms * (aliquotaIcmsDiferido / 100)));
end;

end.
