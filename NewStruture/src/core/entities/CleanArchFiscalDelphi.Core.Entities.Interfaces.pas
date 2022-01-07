unit CleanArchFiscalDelphi.Core.Entities.Interfaces;

interface

type
  iElementos = interface
    function ValorProduto(Value : Double = 0) : iElementos;
    function ValorFrete(Value : Double = 0) : iElementos;
    function ValorSeguro(Value : Double = 0) : iElementos;
    function ValorDespesas(Value : Double = 0) : iElementos;
    function ValorDesconto(Value : Double = 0) : iElementos;
    function ValorIPI(Value : Double = 0) : iElementos;
    function AliquotaIcms(Value : Double = 0) : iElementos;
    function PercentualReducao(Value : Double = 0) : iElementos;
    function PercentualDeferimento(Value : Double = 0) : iElementos;

    function BaseIcms(var Value : Double) : iElementos; overload;
    function BaseIcms : Double; overload;
    function ValorIcms(var Value : Double) : iElementos; overload;
    function ValorIcms : Double; overload;

    function BaseIcmsST(var Value : Double) : iElementos; overload;
    function BaseIcmsST : Double; overload;
    function ValorIcmsST(var Value : Double) : iElementos; overload;
    function ValorIcmsST : Double; overload;
  end;

implementation

end.

