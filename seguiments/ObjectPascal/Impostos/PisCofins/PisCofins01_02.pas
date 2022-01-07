unit PisCofins01_02;

interface

uses
 SysUtils, Classes;

function CalculaPisCofins01_02(basePisCofins: double; aliquotaPisCofins: double) : double;

implementation

uses BasePisCofins;

function CalculaPisCofins01_02(basePisCofins: double; aliquotaPisCofins: double) : double;
begin
  Result := basePisCofins * (aliquotaPisCofins / 100);;
end;

end.
