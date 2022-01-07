unit BaseIcmsReduzida;

interface

uses
  SysUtils, Classes;

function CalculaBaseIcmsReduzida(valorProduto: double; valorFrete: double; valorSeguro: double;
  valorDespesas: double; valorDesconto: double; percentualReducao: double; valorIpi: double): double;

implementation

function CalculaBaseIcmsReduzida(valorProduto: double; valorFrete: double; valorSeguro: double;
  valorDespesas: double; valorDesconto: double; percentualReducao: double; valorIpi: double): double;
  var
  baseIcms: double;
  begin

  baseIcms := valorProduto + valorFrete + valorSeguro + valorDespesas -
    valorDesconto + valorIpi;

  Result := baseIcms - (baseIcms * (percentualReducao/100));
end;

end.
