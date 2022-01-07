unit Ipi50;

interface

uses
 SysUtils, Classes;

function CalculaIpi50(baseIpi: double; aliquotaIpi: double) : double;

implementation

uses BaseIpi;

function CalculaIpi50(baseIpi: double; aliquotaIpi: double) : double;
begin
  Result := baseIpi * (aliquotaIpi / 100);;
end;

end.
