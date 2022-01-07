unit CleanArchFiscalDelphi.Infra.Http.ApiHorse;

interface

uses
  Horse,
  Horse.Jhonson,
  JSON,
  CleanArchFiscalDelphi.Infra.Interfaces,
  CleanArchFiscalDelphi.Controller,
  CleanArchFiscalDelphi.Core.Entities.Interfaces;

type
  TApiHorse = class(TInterfacedObject, iApi)
    private
      procedure TributosPorCST(var Value : TJsonObject);
    public
      constructor Create;
      destructor Destroy; override;
      class function New : iApi;
      function Registrar : iApi;
  end;

implementation

constructor TApiHorse.Create;
begin

end;

destructor TApiHorse.Destroy;
begin

  inherited;
end;

class function TApiHorse.New : iApi;
begin
  Result := Self.Create;
end;

function TApiHorse.Registrar: iApi;
begin
  Result := Self;
  THorse
    .Use(Jhonson)
    .Post('/tributos/:cst',
    procedure(Req: THorseRequest; Res: THorseResponse; Next: TProc)
    var
      lBody : TJsonObject;
      lcst : String;
    begin
      lBody := TJsonObject.ParseJSONValue(Req.Body) as TJsonObject;
      try
        if not lBody.TryGetValue<String>('cst', lcst) then
          lBody.AddPair('cst', Req.Params['cst']);

        TributosPorCST(lBody);

        Res.Status(200).Send<TJsonObject>(lBody);
      except
        Res.Status(500).Send('passing parameter is invalid');
      end;
    end);

    THorse.Listen(9000);
end;

procedure TApiHorse.TributosPorCST(var Value : TJsonObject);
var
  lTributos : iElementos;
begin
  lTributos :=
          TController
            .New
            .TributosElementosIcms
            .Execute(Value.ToString);

  Value.AddPair('baseicms',TJsonNumber.Create(lTributos.BaseIcms));
  Value.AddPair('valoricms',TJsonNumber.Create(lTributos.ValorIcms));
  Value.AddPair('baseicmsst',TJsonNumber.Create(lTributos.BaseIcmsST));
  Value.AddPair('valoricmsst',TJsonNumber.Create(lTributos.ValorIcmsST));
end;

end.
