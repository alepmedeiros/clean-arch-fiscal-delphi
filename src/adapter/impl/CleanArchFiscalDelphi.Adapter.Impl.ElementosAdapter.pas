unit CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapter;

interface

uses
  CleanArchFiscalDelphi.Adapter.Interfaces,
  CleanArchFiscalDelphi.Core.Entities.Interfaces,
  CleanArchFiscalDelphi.Core.Entities.ElementosIcms,
  CleanArchFiscalDelphi.Core.UseCase.Interfaces, System.JSON;

type
  TElementosAdapter = class(TInterfacedObject, iElementosAdapter)
  private
    FElementos : iElementosIcms;

    FTipoIcms : String;
    FValorProduto: Double;
    FValorFrete: Double;
    FValorSeguro: Double;
    FDespesas: Double;
    FDesconto: Double;
    FIPI: Double;
    FAliquotaICMS: Double;
    FPercentualReducao: Double;
    FPercentualDeferimento: Double;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iElementosAdapter;
    function isJson(Value : TJsonObject) : iElementosAdapter;
    function TipoIcms(Value : String) : iElementosAdapter;
    function ValorProduto(Value: Double = 0): iElementosAdapter;
    function ValorFrete(Value: Double = 0): iElementosAdapter;
    function ValorSeguro(Value: Double = 0): iElementosAdapter;
    function ValorDespesas(Value: Double = 0): iElementosAdapter;
    function ValorDesconto(Value: Double = 0): iElementosAdapter;
    function ValorIPI(Value: Double = 0): iElementosAdapter;
    function AliquotaIcms(Value: Double = 0): iElementosAdapter;
    function PercentualReducao(Value: Double = 0): iElementosAdapter;
    function PercentualDeferimento(Value: Double = 0): iElementosAdapter;
    function ElementosTributarios: iElementos;
  end;

implementation

function TElementosAdapter.AliquotaIcms(Value: Double): iElementosAdapter;
begin
  Result := Self;
  FAliquotaICMS := Value;
end;

constructor TElementosAdapter.Create;
begin
  FElementos := TElementosIcms.New;
end;

destructor TElementosAdapter.Destroy;
begin

  inherited;
end;

function TElementosAdapter.ElementosTributarios: iElementos;
begin
  Result := FElementos
              .RetornaElementosPorICMS(FTipoIcms)
              .ValorProduto(FValorProduto)
              .ValorFrete(FValorFrete)
              .ValorSeguro(FValorSeguro)
              .ValorDespesas(FDespesas)
              .ValorDesconto(FDesconto)
              .ValorIPI(FIPI)
              .AliquotaIcms(FAliquotaICMS)
              .PercentualReducao(FPercentualReducao)
              .PercentualDeferimento(FPercentualDeferimento);
end;

function TElementosAdapter.isJson(Value: TJsonObject): iElementosAdapter;
begin
  Result := Self;

end;

class function TElementosAdapter.New: iElementosAdapter;
begin
  Result := Self.Create;
end;

function TElementosAdapter.PercentualDeferimento(Value: Double)
  : iElementosAdapter;
begin
  Result := Self;
  FPercentualDeferimento := Value;
end;

function TElementosAdapter.PercentualReducao(Value: Double): iElementosAdapter;
begin
  Result := Self;
  FPercentualReducao := Value;
end;

function TElementosAdapter.TipoIcms(Value: String): iElementosAdapter;
begin
  Result := Self;
  FTipoIcms := Value;
end;

function TElementosAdapter.ValorDesconto(Value: Double): iElementosAdapter;
begin
  Result := Self;
  FDesconto := Value;
end;

function TElementosAdapter.ValorDespesas(Value: Double): iElementosAdapter;
begin
  Result := Self;
  FDespesas := Value;
end;

function TElementosAdapter.ValorFrete(Value: Double): iElementosAdapter;
begin
  Result := Self;
  FValorFrete := Value;
end;

function TElementosAdapter.ValorIPI(Value: Double): iElementosAdapter;
begin
  Result := Self;
  FIPI := Value;
end;

function TElementosAdapter.ValorProduto(Value: Double): iElementosAdapter;
begin
  Result := Self;
  FValorProduto := Value;
end;

function TElementosAdapter.ValorSeguro(Value: Double): iElementosAdapter;
begin
  Result := Self;
  FValorSeguro := Value;
end;

end.
