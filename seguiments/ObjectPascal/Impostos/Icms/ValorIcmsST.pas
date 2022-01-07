unit ValorIcmsST;

interface

uses
  SysUtils, Classes;

function CalculaValorIcmsST(baseIcmsST: double; aliquotaIcmsST: double; valorIcms: double) : double;

implementation

function CalculaValorIcmsST(baseIcmsST: double; aliquotaIcmsST: double; valorIcms: double) : double;
begin
  Result := ((baseIcmsST * (aliquotaIcmsST / 100)) - valorIcms);
end;

end.
