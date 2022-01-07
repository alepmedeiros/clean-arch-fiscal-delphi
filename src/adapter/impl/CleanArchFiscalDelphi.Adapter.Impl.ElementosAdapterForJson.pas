unit CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapterForJson;

interface

uses
  CleanArchFiscalDelphi.Adapter.Interfaces,
  CleanArchFiscalDelphi.Core.Entities.Interfaces,
  CleanArchFiscalDelphi.Core.Entities.ElementosIcms,
  CleanArchFiscalDelphi.Core.UseCase.Interfaces, System.JSON;

type
  TElementosAdapterForJson = class(TInterfacedObject, iElementosAdapterForJson)
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
    class function New: iElementosAdapterForJson;
    function TipoIcms(Value : String) : iElementosAdapterForJson;
    function ValorProduto(Value: Double = 0): iElementosAdapterForJson;
    function ValorFrete(Value: Double = 0): iElementosAdapterForJson;
    function ValorSeguro(Value: Double = 0): iElementosAdapterForJson;
    function ValorDespesas(Value: Double = 0): iElementosAdapterForJson;
    function ValorDesconto(Value: Double = 0): iElementosAdapterForJson;
    function ValorIPI(Value: Double = 0): iElementosAdapterForJson;
    function AliquotaIcms(Value: Double = 0): iElementosAdapterForJson;
    function PercentualReducao(Value: Double = 0): iElementosAdapterForJson;
    function PercentualDeferimento(Value: Double = 0): iElementosAdapterForJson;
    function ElementosTributarios: iElementos;
  end;

implementation

function TElementosAdapterForJson.AliquotaIcms(Value: Double): iElementosAdapterForJson;
begin
  Result := Self;
  FAliquotaICMS := Value;
end;

constructor TElementosAdapterForJson.Create;
begin
  FElementos := TElementosIcms.New;
end;

destructor TElementosAdapterForJson.Destroy;
begin

  inherited;
end;

function TElementosAdapterForJson.ElementosTributarios: iElementos;
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

class function TElementosAdapterForJson.New: iElementosAdapterForJson;
begin
  Result := Self.Create;
end;

function TElementosAdapterForJson.PercentualDeferimento(Value: Double)
  : iElementosAdapterForJson;
begin
  Result := Self;
  FPercentualDeferimento := Value;
end;

function TElementosAdapterForJson.PercentualReducao(Value: Double): iElementosAdapterForJson;
begin
  Result := Self;
  FPercentualReducao := Value;
end;

function TElementosAdapterForJson.TipoIcms(Value: String): iElementosAdapterForJson;
begin
  Result := Self;
  FTipoIcms := Value;
end;

function TElementosAdapterForJson.ValorDesconto(Value: Double): iElementosAdapterForJson;
begin
  Result := Self;
  FDesconto := Value;
end;

function TElementosAdapterForJson.ValorDespesas(Value: Double): iElementosAdapterForJson;
begin
  Result := Self;
  FDespesas := Value;
end;

function TElementosAdapterForJson.ValorFrete(Value: Double): iElementosAdapterForJson;
begin
  Result := Self;
  FValorFrete := Value;
end;

function TElementosAdapterForJson.ValorIPI(Value: Double): iElementosAdapterForJson;
begin
  Result := Self;
  FIPI := Value;
end;

function TElementosAdapterForJson.ValorProduto(Value: Double): iElementosAdapterForJson;
begin
  Result := Self;
  FValorProduto := Value;
end;

function TElementosAdapterForJson.ValorSeguro(Value: Double): iElementosAdapterForJson;
begin
  Result := Self;
  FValorSeguro := Value;
end;

end.
