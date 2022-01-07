unit CleanArchFiscalDelphi.Core.UseCase.Interfaces;

interface

uses
  CleanArchFiscalDelphi.Core.Entities.Interfaces, System.JSON;

type
  iTributosElementosIcms = interface
    function Execute(Value : String) : iElementos;
//    function Execute(Value : String) : iElementos; overload;
//    function Execute(Value : TJsonObject) : iElementos; overload;
  end;

implementation

end.
