unit CleanArchFiscalDelphi.Infra.Impl.ElementosRepositoryMemory;

interface

uses
  CleanArchFiscalDelphi.Core.Entities.Interfaces,
  CleanArchFiscalDelphi.Core.Entities.ElementosIcms,
  CleanArchFiscalDelphi.Core.Repository.Interfaces,
  CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapter, System.JSON,
  CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapterForJson;

type
  TElementosRepositoryMemory = class(TInterfacedObject, iRepositoryElementosIcms)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iRepositoryElementosIcms;
      function GetElementos(Value : String) : iElementos; overload;
      function GetElementos(Value : TJsonObject) : iElementos; overload;
  end;

implementation

constructor TElementosRepositoryMemory.Create;
begin

end;

destructor TElementosRepositoryMemory.Destroy;
begin

  inherited;
end;

function TElementosRepositoryMemory.GetElementos(
  Value: TJsonObject): iElementos;
begin
  Result :=
    TElementosAdapter
      .New
        .TipoIcms(Value.GetValue<String>('cst'))
        .ValorProduto(Value.GetValue<Double>('produto'))
        .ValorFrete(Value.GetValue<Double>('frete'))
        .ValorSeguro(Value.GetValue<Double>('seguro'))
        .ValorDespesas(Value.GetValue<Double>('despesas'))
        .ValorDesconto(Value.GetValue<Double>('desconto'))
        .AliquotaIcms(Value.GetValue<Double>('icms'))
        .PercentualReducao(Value.GetValue<Double>('reducao'))
        .PercentualDeferimento(Value.GetValue<Double>('deferimento'))
        .ElementosTributarios;
end;

function TElementosRepositoryMemory.GetElementos(Value: String): iElementos;
var
  lJson : TJsonObject;
begin
  lJson := TJsonObject.ParseJSONValue(Value) as TJsonObject;
  Result :=
    TElementosAdapterForJson
      .New
        .TipoIcms(lJson.GetValue<String>('cst'))
        .ValorProduto(lJson.GetValue<Double>('produto'))
        .ValorFrete(lJson.GetValue<Double>('frete'))
        .ValorSeguro(lJson.GetValue<Double>('seguro'))
        .ValorDespesas(lJson.GetValue<Double>('despesas'))
        .ValorDesconto(lJson.GetValue<Double>('desconto'))
        .AliquotaIcms(lJson.GetValue<Double>('icms'))
        .PercentualReducao(lJson.GetValue<Double>('reducao'))
        .PercentualDeferimento(lJson.GetValue<Double>('deferimento'))
        .ElementosTributarios;
//    TElementosAdapter
//      .New
//        .TipoIcms(Value)
//        .ValorProduto(135)
//        .ValorFrete(7.50)
//        .ValorSeguro(3)
//        .ValorDespesas(1.50)
//        .ValorDesconto(13.50)
//        .AliquotaIcms(18)
//        .PercentualReducao(10)
//        .PercentualDeferimento(10)
//        .ElementosTributarios;
//  TElementosIcms
//              .New
//              .RetornaElementosPorICMS(Value)
//              .ValorProduto(135)
//              .ValorFrete(7.50)
//              .ValorSeguro(3)
//              .ValorDespesas(1.50)
//              .ValorDesconto(13.50)
//              .AliquotaIcms(18)
//              .PercentualReducao(10)
//              .PercentualDeferimento(10);
end;

class function TElementosRepositoryMemory.New : iRepositoryElementosIcms;
begin
  Result := Self.Create;
end;

end.
