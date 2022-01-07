unit Icms00;

interface

uses
 SysUtils, Classes;

function CalculaIcms00(baseIcms: double; aliquotaIcms: double) : double;

implementation

uses BaseIcms, ValorIcms;

function CalculaIcms00(baseIcms: double; aliquotaIcms: double) : double;
begin
  Result := CalculaValorIcms(BaseIcms,aliquotaIcms);
end;

end.
