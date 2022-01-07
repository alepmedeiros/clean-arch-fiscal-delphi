unit Icms101;

interface

uses
 SysUtils, Classes;

function CalculaIcms101(baseIcms: double; aliquotaCreditoSN: double) : double;

implementation

uses BaseIcms, ValorIcms;

function CalculaIcms101(baseIcms: double; aliquotaCreditoSN: double) : double;
begin
  Result := CalculaValorIcms(BaseIcms,aliquotaCreditoSN);
end;

end.
