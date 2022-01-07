unit SacFis.Common.BaseIcms;

interface

type
  TBaseIcms = class
  public
    class function GerarBaseIcms(
      const ValorProduto: Double;
      const ValorFrete: Double;
      const ValorSeguro: Double;
      const ValorDespesasAcessorias: Double;
      const ValorIpi: Double;
      const ValorDesconto: Double): Double;
  end;

  TBaseReduzidaIcms = class
  public
    class function GerarBaseIcms(
      const ValorProduto: Double;
      const ValorFrete: Double;
      const ValorSeguro: Double;
      const ValorDespesasAcessorias: Double;
      const ValorIpi: Double;
      const ValorDesconto: Double;
      const AliqRedBCIcms: Double): Double;
  end;

  TBaseIcmsST = class
  public
    class function GerarBaseIcms(
      const BaseIcms: Double;
      const MVA: Double): Double;
  end;

  TBaseReduzidaIcmsST = class
  public
    class function GerarBaseIcms(
      const ValorProduto: Double;
      const ValorFrete: Double;
      const ValorSeguro: Double;
      const ValorDespesasAcessorias: Double;
      const ValorIpi: Double;
      const ValorDesconto: Double;
      const AliqRedBCIcmsST: Double): Double;
  end;

implementation

{ TBaseIcms }

class function TBaseIcms.GerarBaseIcms(
  const ValorProduto: Double;
  const ValorFrete: Double;
  const ValorSeguro: Double;
  const ValorDespesasAcessorias: Double;
  const ValorIpi: Double;
  const ValorDesconto: Double): Double;
begin
  Result :=
    ValorProduto +
    ValorFrete +
    ValorSeguro +
    ValorDespesasAcessorias +
    ValorIpi -
    ValorDesconto;
end;

{ TBaseReduzidaIcms }

class function TBaseReduzidaIcms.GerarBaseIcms(
  const ValorProduto: Double;
  const ValorFrete: Double;
  const ValorSeguro: Double;
  const ValorDespesasAcessorias: Double;
  const ValorIpi: Double;
  const ValorDesconto: Double;
  const AliqRedBCIcms: Double): Double;
var
  BaseNormal: Double;
begin
  Assert(AliqRedBCIcms > 0);
  BaseNormal :=
    ValorProduto +
    ValorFrete +
    ValorSeguro +
    ValorDespesasAcessorias -
    ValorDesconto;
  Result := (BaseNormal - (BaseNormal * (AliqRedBCIcms / 100))) + ValorIpi;
end;

{ TBaseIcmsST }

class function TBaseIcmsST.GerarBaseIcms(
  const BaseIcms: Double;
  const MVA: Double): Double;
begin
  Result := BaseIcms * (1 + (MVA / 100));
end;

{ TBaseReduzidaIcmsST }

class function TBaseReduzidaIcmsST.GerarBaseIcms(
  const ValorProduto: Double;
  const ValorFrete: Double;
  const ValorSeguro: Double;
  const ValorDespesasAcessorias: Double;
  const ValorIpi: Double;
  const ValorDesconto: Double;
  const AliqRedBCIcmsST: Double): Double;
var
  BaseNormal: Double;
begin
  BaseNormal :=
    ValorProduto +
    ValorFrete +
    ValorSeguro +
    ValorDespesasAcessorias -
    ValorDesconto;
  Result := (BaseNormal - (BaseNormal * (AliqRedBCIcmsST / 100))) + ValorIpi;
end;

end.

