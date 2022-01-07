unit Tributos;

interface

uses
  Elementos,
  ElementosRepositoryCore;

type
  TTributos = class
  private
    FElementosRespository: iElementosRespository;
  public
    constructor Create(ElementosRespository: iElementosRespository);
    function Execute: TElementos;
  end;

implementation

{ TTributos }

constructor TTributos.Create(ElementosRespository: iElementosRespository);
begin
  FElementosRespository := ElementosRespository;
end;

function TTributos.Execute: TElementos;
begin
  Result := FElementosRespository.ValoresNota;
end;

end.
