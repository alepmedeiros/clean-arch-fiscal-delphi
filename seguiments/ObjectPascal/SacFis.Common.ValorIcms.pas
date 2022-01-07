unit SacFis.Common.ValorIcms;

interface

type
  TValorIcms = class
  public
    class function GerarValorIcms(
      const ValorBaseCalculo: Double;
      const AliqIcmsProprio: Double): Double;
  end;

  TValorIcmsST = class
  public
    class function GerarValorIcms(
      const ValorBaseCalculoST: Double;
      const AliqIcmsST: Double;
      const ValorIcms: Double): Double;
  end;

implementation

{ TValorIcms }

class function TValorIcms.GerarValorIcms(
  const ValorBaseCalculo: Double;
  const AliqIcmsProprio: Double): Double;
begin
  Assert(ValorBaseCalculo >= 0);
  Assert(AliqIcmsProprio > 0);
  Result := (ValorBaseCalculo * (AliqIcmsProprio / 100));
end;

{ TValorIcmsST }

class function TValorIcmsST.GerarValorIcms(
  const ValorBaseCalculoST: Double;
  const AliqIcmsST: Double;
  const ValorIcms: Double): Double;
begin
  Assert(ValorBaseCalculoST >= 0);
  Assert(AliqIcmsST > 0);
  Assert(ValorIcms >= 0);
  Result := ((ValorBaseCalculoST * (AliqIcmsST / 100)) - ValorIcms);
end;

end.

