unit CleanArchFiscalDelphi.Adapter.Interfaces;

interface

uses
  CleanArchFiscalDelphi.Core.UseCase.Interfaces,
  CleanArchFiscalDelphi.Core.Entities.Interfaces,
  System.JSON;

type
  iElementosAdapter = interface
    function TipoIcms(Value : String) : iElementosAdapter;
    function ValorProduto(Value : Double = 0) : iElementosAdapter;
    function ValorFrete(Value : Double = 0) : iElementosAdapter;
    function ValorSeguro(Value : Double = 0) : iElementosAdapter;
    function ValorDespesas(Value : Double = 0) : iElementosAdapter;
    function ValorDesconto(Value : Double = 0) : iElementosAdapter;
    function ValorIPI(Value : Double = 0) : iElementosAdapter;
    function AliquotaIcms(Value : Double = 0) : iElementosAdapter;
    function PercentualReducao(Value : Double = 0) : iElementosAdapter;
    function PercentualDeferimento(Value : Double = 0) : iElementosAdapter;
    function ElementosTributarios: iElementos;
  end;

  iElementosAdapterForJson = interface
    function TipoIcms(Value : String) : iElementosAdapterForJson;
    function ValorProduto(Value : Double = 0) : iElementosAdapterForJson;
    function ValorFrete(Value : Double = 0) : iElementosAdapterForJson;
    function ValorSeguro(Value : Double = 0) : iElementosAdapterForJson;
    function ValorDespesas(Value : Double = 0) : iElementosAdapterForJson;
    function ValorDesconto(Value : Double = 0) : iElementosAdapterForJson;
    function ValorIPI(Value : Double = 0) : iElementosAdapterForJson;
    function AliquotaIcms(Value : Double = 0) : iElementosAdapterForJson;
    function PercentualReducao(Value : Double = 0) : iElementosAdapterForJson;
    function PercentualDeferimento(Value : Double = 0) : iElementosAdapterForJson;
    function ElementosTributarios: iElementos;
  end;

implementation

end.
