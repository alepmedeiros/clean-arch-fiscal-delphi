unit BaseIcms;

interface

uses
  SysUtils, Classes;

function CalculaBaseIcms(valorProduto: double; valorFrete: double; valorSeguro: double;
  valorDespesas: double; valorDesconto: double; valorIpi: double): double;

implementation

function CalculaBaseIcms(valorProduto: double; valorFrete: double; valorSeguro: double;
  valorDespesas: double; valorDesconto: double; valorIpi: double): double;
begin
  Result := valorProduto + valorFrete + valorSeguro + valorDespesas -
    valorDesconto + valorIpi;
end;

end.
