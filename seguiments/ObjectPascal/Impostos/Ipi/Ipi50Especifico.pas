unit Ipi50Especifico;

interface

uses
  SysUtils, Classes;

function CalculaIpi50Especifico(quantidade: double; valorUnitario: double) : double;

implementation

function CalculaIpi50Especifico(quantidade: double; valorUnitario: double) : double;
begin
  Result := quantidade * valorUnitario;
end;

end.
