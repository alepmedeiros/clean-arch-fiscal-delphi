unit CleanArchFiscalDelphi.Core.Repository.Interfaces;

interface

uses
  Json,
  CleanArchFiscalDelphi.Core.Entities.Interfaces;

type
  iRepositoryElementosIcms = interface
    function GetElementos(Value : String) : iElementos;
//    function GetElementos(Value : String) : iElementos; overload;
//    function GetElementos(Value : TJsonObject) : iElementos; overload;
  end;

implementation

end.
