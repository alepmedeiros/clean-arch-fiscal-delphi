unit BaseIpi;

interface

uses
  SysUtils, Classes;

function CalculaBaseIpi(valorProduto: double; valorFrete: double; valorSeguro: double;
  valorDespesas: double ): double;

implementation

function CalculaBaseIpi(valorProduto: double; valorFrete: double; valorSeguro: double;
  valorDespesas: double ): double;
begin
  Result := valorProduto + valorFrete + valorSeguro + valorDespesas;
end;

end.
