unit BaseIcmsSTReduzida;

interface

uses
  SysUtils, Classes;

function CalculaBaseIcmsST(baseIcms: double; valorIpi: double; mva: double; percentualReducao: double): double;

implementation

function CalculaBaseIcmsST(baseIcms: double; valorIpi: double; mva: double; percentualReducao: double): double;
var
  baseIcmsST: double;
begin
  baseIcmsST := (baseIcms + valorIpi) * (1 + (mva / 100));

  Result := baseIcmsST - (baseIcmsST * (percentualReducao/100));
end;

end.
