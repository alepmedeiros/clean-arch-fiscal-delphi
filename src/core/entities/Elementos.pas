unit Elementos;

interface

uses
  System.SysUtils;

type
  TElementos = class
  private
    FValorProduto: Double;
    FValorFrete: Double;
    FValorDespesa: Double;
    FValorSeguro: Double;
    FValorDesconto: Double;
    FValorIpi: Double;
    FValorAliquota: Double;
    FBcIcms: Double;
  public
    constructor Create(ValorProduto, ValorFrete, ValorSeguro, ValorDespesa,
      ValorDesconto, ValorIpi, ValorAliquota: Double);
    function getBcImcs: Double;
    function getValorIcms: Double;
  end;

implementation

{ TElementos }

constructor TElementos.Create(ValorProduto, ValorFrete, ValorSeguro,
  ValorDespesa, ValorDesconto, ValorIpi, ValorAliquota: Double);
begin
  FValorIpi := 0;
  FValorProduto := ValorProduto;
  FValorFrete := ValorFrete;
  FValorDespesa := ValorDespesa;
  FValorSeguro := ValorSeguro;
  FValorDesconto := ValorDesconto;
  if not ValorIpi.IsNan then
    FValorIpi := ValorIpi;
  FValorAliquota := ValorAliquota;
end;

function TElementos.getBcImcs: Double;
begin
  FBcIcms := FValorProduto + FValorFrete + FValorSeguro + FValorDespesa -
    FValorDesconto + FValorIpi;
  Result := FBcIcms;
end;

function TElementos.getValorIcms: Double;
begin
  Result := FBcIcms - (FValorAliquota / 100 * FBcIcms);
end;

end.
