unit CleanArchFiscalDelphi.Core.Entities.ElementosIcms;

interface

uses
  TypInfo,
  CleanArchFiscalDelphi.Core.Entities.Interfaces,
  CleanArchFiscalDelphi.Core.Entities.TipoIcms,
  CleanArchFiscalDelphi.Core.Entities.Impl.Icms00,
  CleanArchFiscalDelphi.Core.Entities.Impl.Icms20,
  CleanArchFiscalDelphi.Core.Entities.Impl.Icms51;

type
  iElementosIcms = interface
    function RetornaElementosPorICMS(Value : String) : iElementos;
  end;

  TElementosIcms = class(TInterfacedObject, iElementosIcms)
    private
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iElementosIcms;
      function RetornaElementosPorICMS(Value : String) : iElementos;
  end;

implementation

constructor TElementosIcms.Create;
begin

end;

destructor TElementosIcms.Destroy;
begin

  inherited;
end;

class function TElementosIcms.New : iElementosIcms;
begin
  Result := Self.Create;
end;

function TElementosIcms.RetornaElementosPorICMS(Value: String): iElementos;
var
  tpIcms : TTipoIcms;
begin
  case tpIcms.GetValue(Value) of
    tp00: Result := TIcms00.New;
    tp20: Result := TIcms20.New;
    tp51: Result := TIcms51.New;
  end;
end;

end.
