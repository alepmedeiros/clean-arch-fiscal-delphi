unit ElementosRepositoryMemory;

interface

uses
  ElementosRepositoryCore,
  Elementos;

type
  TElementosRespositoryMemory = class(TInterfacedObject, iElementosRespository)
  private
    FElementos : TElementos;
  public
    constructor Create(ValorProduto, ValorFrete,
  ValorSeguro, ValorDespesa, ValorDesconto, ValorIpi, ValorAliquota: Double);
    destructor Destroy; override;
    class function New(ValorProduto, ValorFrete,
  ValorSeguro, ValorDespesa, ValorDesconto, ValorIpi, ValorAliquota: Double): iElementosRespository;
    function ValoresNota: TElementos;
  end;

implementation

constructor TElementosRespositoryMemory.Create(ValorProduto, ValorFrete,
  ValorSeguro, ValorDespesa, ValorDesconto, ValorIpi, ValorAliquota: Double);
begin
  FElementos := TElementos.Create(ValorProduto, ValorFrete, ValorSeguro,
    ValorDespesa, ValorDesconto, ValorIpi, ValorAliquota);
end;

destructor TElementosRespositoryMemory.Destroy;
begin

  inherited;
end;

class function TElementosRespositoryMemory.New(ValorProduto, ValorFrete,
  ValorSeguro, ValorDespesa, ValorDesconto, ValorIpi, ValorAliquota: Double): iElementosRespository;
begin
  Result := Self.Create(ValorProduto, ValorFrete,
  ValorSeguro, ValorDespesa, ValorDesconto, ValorIpi, ValorAliquota);
end;

function TElementosRespositoryMemory.ValoresNota : TElementos;
begin
  Result := FElementos;
end;

end.
