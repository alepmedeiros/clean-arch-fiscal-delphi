unit SacFis.Icms00;

interface

uses
  SacFis.Intf.Icms,
  SacFis.Common.BaseIcms,
  SacFis.Common.ValorIcms,
  SacFis.ExceptionIcms;

type
  TIcms00 = class(TInterfacedObject, IIcms00)
  private
    FValorProduto           : Double;
    FValorFrete             : Double;
    FValorSeguro            : Double;
    FValorDespesasAcessorias: Double;
    FValorIpi               : Double;
    FValorDesconto          : Double;
    FAliqIcmsProprio        : Double;
  public
    constructor Create(
      const ValorProduto: Double;
      const ValorFrete: Double;
      const ValorSeguro: Double;
      const ValorDespesasAcessorias: Double;
      const ValorIpi: Double;
      const ValorDesconto: Double;
      const AliqIcmsProprio: Double);

    class function New(
      const ValorProduto: Double;
      const ValorFrete: Double;
      const ValorSeguro: Double;
      const ValorDespesasAcessorias: Double;
      const ValorIpi: Double;
      const ValorDesconto: Double;
      const AliqIcmsProprio: Double): IIcms00;

    function PossuiIcmsProprio: Boolean;
    function PossuiIcmsST: Boolean;
    function PossuiRedBCIcmsProprio: Boolean;
    function PossuiRedBCIcmsST: Boolean;

    function BaseIcms: Double;
    function ValorIcms: Double;
    function BaseIcmsST: Double;
    function ValorIcmsST: Double;
  end;

implementation

{ TIcms00 }

constructor TIcms00.Create(
  const ValorProduto: Double;
  const ValorFrete: Double;
  const ValorSeguro: Double;
  const ValorDespesasAcessorias: Double;
  const ValorIpi: Double;
  const ValorDesconto: Double;
  const AliqIcmsProprio: Double);
begin
  //inherited Create;
  FValorProduto            := ValorProduto;
  FValorFrete              := ValorFrete;
  FValorSeguro             := ValorSeguro;
  FValorDespesasAcessorias := ValorDespesasAcessorias;
  FValorIpi                := ValorIpi;
  FValorDesconto           := ValorDesconto;
  FAliqIcmsProprio         := AliqIcmsProprio;
end;

class function TIcms00.New(
  const ValorProduto: Double;
  const ValorFrete: Double;
  const ValorSeguro: Double;
  const ValorDespesasAcessorias: Double;
  const ValorIpi: Double;
  const ValorDesconto: Double;
  const AliqIcmsProprio: Double): IIcms00;
begin
  Result := TIcms00.Create(
    ValorProduto,
    ValorFrete,
    ValorSeguro,
    ValorDespesasAcessorias,
    ValorIpi,
    ValorDesconto,
    AliqIcmsProprio);
end;

function TIcms00.PossuiIcmsProprio: Boolean;
begin
  Result := True;
end;

function TIcms00.PossuiIcmsST: Boolean;
begin
  Result := False;
end;

function TIcms00.PossuiRedBCIcmsProprio: Boolean;
begin
  Result := False;
end;

function TIcms00.PossuiRedBCIcmsST: Boolean;
begin
  Result := False;
end;

function TIcms00.BaseIcms: Double;
begin
  Result := TBaseIcms.GerarBaseIcms(
    FValorProduto,
    FValorFrete,
    FValorSeguro,
    FValorDespesasAcessorias,
    FValorIpi,
    FValorDesconto);
end;

function TIcms00.ValorIcms: Double;
begin
  Result := TValorIcms.GerarValorIcms(
    BaseIcms,
    FAliqIcmsProprio);
end;

function TIcms00.BaseIcmsST: Double;
begin
  raise ExceptionSemIcmsST.Create;
end;

function TIcms00.ValorIcmsST: Double;
begin
  raise ExceptionSemIcmsST.Create;
end;

end.







