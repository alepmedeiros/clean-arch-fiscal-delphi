unit ValorIcms;

interface

uses
  SysUtils, Classes;

function CalculaValorIcms(baseIcms: double; aliquotaIcms: double) : double;

implementation

function CalculaValorIcms(baseIcms: double; aliquotaIcms: double) : double;
begin
  Result := baseIcms * (aliquotaIcms / 100);
end;

end.
