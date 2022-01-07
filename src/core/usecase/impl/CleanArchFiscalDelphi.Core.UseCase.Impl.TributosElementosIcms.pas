unit CleanArchFiscalDelphi.Core.UseCase.Impl.TributosElementosIcms;

interface

uses
  CleanArchFiscalDelphi.Core.UseCase.Interfaces,
  CleanArchFiscalDelphi.Core.Repository.Interfaces,
  CleanArchFiscalDelphi.Core.Entities.Interfaces, System.JSON;

type
  TTributosElementosIcms = class(TInterfacedObject, iTributosElementosIcms)
  private
    FRepositoryElementos : iRepositoryElementosIcms;
  public
    constructor Create(RepositoryElementos: iRepositoryElementosIcms);
    destructor Destroy; override;
    class function New(RepositoryElementos: iRepositoryElementosIcms)
      : iTributosElementosIcms;
      function Execute(Value: String): iElementos;
//    function Execute(Value: String): iElementos; overload;
//    function Execute(Value : TJsonObject) : iElementos; overload;
  end;

implementation

constructor TTributosElementosIcms.Create(RepositoryElementos: iRepositoryElementosIcms);
begin
  FRepositoryElementos := RepositoryElementos;
end;

destructor TTributosElementosIcms.Destroy;
begin

  inherited;
end;

//function TTributosElementosIcms.Execute(Value: TJsonObject): iElementos;
//begin
//  Result := FRepositoryElementos.GetElementos(Value);
//end;

function TTributosElementosIcms.Execute(Value: String): iElementos;
begin
  Result := FRepositoryElementos.GetElementos(Value);
end;

class function TTributosElementosIcms.New(RepositoryElementos: iRepositoryElementosIcms)
      : iTributosElementosIcms;
begin
  Result := Self.Create(RepositoryElementos);
end;

end.
