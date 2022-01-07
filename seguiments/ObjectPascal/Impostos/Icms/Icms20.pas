unit Icms20;

interface

uses
 SysUtils, Classes;

function CalculaIcms20(baseIcmsReduzida: double; aliquotaIcms: double) : double;

implementation

uses BaseIcmsReduzida, ValorIcms;

function CalculaIcms20(baseIcmsReduzida: double; aliquotaIcms: double) : double;
begin
  Result := CalculaValorIcms(BaseIcmsReduzida,aliquotaIcms);
end;

end.
