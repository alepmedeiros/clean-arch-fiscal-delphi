unit PisCofins03;

interface

uses
  SysUtils, Classes;

function CalculaPisCofins03(quantidade: double; valorUnitario: double) : double;

implementation

function CalculaPisCofins03(quantidade: double; valorUnitario: double) : double;
begin
  Result := quantidade * valorUnitario;
end;

end.
