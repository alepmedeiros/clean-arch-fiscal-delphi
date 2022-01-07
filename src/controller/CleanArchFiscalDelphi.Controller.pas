unit CleanArchFiscalDelphi.Controller;

interface

uses
  CleanArchFiscalDelphi.Core.UseCase.Interfaces,
  CleanArchFiscalDelphi.Core.Repository.Interfaces,
  CleanArchFiscalDelphi.Core.UseCase.Impl.TributosElementosIcms,
  CleanArchFiscalDelphi.Infra.Impl.ElementosRepositoryMemory;

type
  iController = interface
    function TributosElementosIcms : iTributosElementosIcms;
  end;

  TController = class(TInterfacedObject, iController)
    private
      FRepository : iRepositoryElementosIcms;
      FTributosIcms : iTributosElementosIcms;
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iController;
      function TributosElementosIcms : iTributosElementosIcms;
  end;

implementation

constructor TController.Create;
begin
  FRepository := TElementosRepositoryMemory.New;
  FTributosIcms := TTributosElementosIcms.New(FRepository);
end;

destructor TController.Destroy;
begin

  inherited;
end;

function TController.TributosElementosIcms: iTributosElementosIcms;
begin
  Result := FTributosIcms;
end;

class function TController.New : iController;
begin
  Result := Self.Create;
end;

end.
