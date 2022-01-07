unit Fcp;

interface

uses
 SysUtils, Classes;

function CalculaFcp(baseIcms: double; aliquotaFcp: double) : double;

implementation

uses BaseIcms, ValorIcms;

function CalculaFcp(baseIcms: double; aliquotaFcp: double) : double;
begin
  Result := baseIcms * (aliquotaFcp / 100);
end;

end.
