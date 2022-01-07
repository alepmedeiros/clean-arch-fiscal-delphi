unit BaseIcmsST;

interface

uses
  SysUtils, Classes;

function CalculaBaseIcmsST(baseIcms: double; valorIpi: double; mva: double): double;

implementation

function CalculaBaseIcmsST(baseIcms: double; valorIpi: double; mva: double): double;
begin
  Result := (baseIcms + valorIpi) * (1 + (mva / 100));
end;

end.
