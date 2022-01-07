unit CleanArchFiscalDelphi.Core.Entities.Impl.Icms20;

interface

uses
  System.SysUtils,
  CleanArchFiscalDelphi.Core.Entities.Interfaces;

type
  TIcms20 = class(TInterfacedObject, iElementos)
  private
    FValorProduto : Double;
    FValorFrete : Double;
    FValorSeguro : Double;
    FValorDespesas : Double;
    FValorDesconto : Double;
    FValorIPI : Double;
    FAliquotaIcms : Double;
    FPercentualReducao : Double;
    FPercentualDeferimento : Double;

    function SetFormat(Value: Double): Double;

    function GetBaseIcms : Double;
    function GetValorIcms : Double;
    function GetBaseIcmsST : Double;
    function GetValorIcmsST : Double;
  public
    constructor Create;
    destructor Destroy; override;
    class function New: iElementos;
    function ValorProduto(Value : Double = 0) : iElementos;
    function ValorFrete(Value : Double = 0) : iElementos;
    function ValorSeguro(Value : Double = 0) : iElementos;
    function ValorDespesas(Value : Double = 0) : iElementos;
    function ValorDesconto(Value : Double = 0) : iElementos;
    function ValorIPI(Value : Double = 0) : iElementos;
    function AliquotaIcms(Value : Double = 0) : iElementos;
    function PercentualReducao(Value : Double = 0) : iElementos;
    function PercentualDeferimento(Value : Double = 0) : iElementos;

    function BaseIcms(var Value : Double) : iElementos; overload;
    function BaseIcms : Double; overload;
    function ValorIcms(var Value : Double) : iElementos; overload;
    function ValorIcms : Double; overload;

    function BaseIcmsST(var Value : Double) : iElementos; overload;
    function BaseIcmsST : Double; overload;
    function ValorIcmsST(var Value : Double) : iElementos; overload;
    function ValorIcmsST : Double; overload;
  end;

implementation

function TIcms20.AliquotaIcms(Value: Double): iElementos;
begin
  Result := Self;
  FAliquotaIcms := Value;
end;

function TIcms20.BaseIcms: Double;
begin
  Result := GetBaseIcms;
end;

function TIcms20.BaseIcms(var Value: Double): iElementos;
begin
  Result := Self;
  Value := GetBaseIcms;
end;

function TIcms20.BaseIcmsST(var Value: Double): iElementos;
begin
  Result := Self;
  Value := GetBaseIcmsST;
end;

function TIcms20.BaseIcmsST: Double;
begin
  Result := GetBaseIcmsST;
end;

constructor TIcms20.Create;
begin

end;

destructor TIcms20.Destroy;
begin

  inherited;
end;

function TIcms20.GetBaseIcms: Double;
var
  lBaseIcmsred : Double;
begin
  lBaseIcmsred :=
  SetFormat(FValorProduto + FValorFrete + FValorSeguro +
    FValorDespesas - FValorDesconto + FValorIPI);

  Result := lBaseIcmsred - (FPercentualReducao / 100 * lBaseIcmsred);
end;


function TIcms20.GetBaseIcmsST: Double;
begin
  Result := 0;
end;

function TIcms20.GetValorIcms: Double;
begin
  Result := SetFormat(FAliquotaIcms / 100 * Self.GetBaseIcms);
end;

function TIcms20.GetValorIcmsST: Double;
begin
  Result := 0;
end;

class function TIcms20.New: iElementos;
begin
  Result := Self.Create;
end;

function TIcms20.PercentualDeferimento(Value: Double): iElementos;
begin
  Result := Self;
  FPercentualDeferimento := Value;
end;

function TIcms20.SetFormat(Value: Double): Double;
begin
  Result := FormatFloat('#,##0.00', Value).ToDouble;
end;

function TIcms20.PercentualReducao(Value: Double): iElementos;
begin
  Result := Self;
  FPercentualReducao := Value;
end;

function TIcms20.ValorDesconto(Value: Double): iElementos;
begin
  Result := Self;
  FValorDesconto := Value;
end;

function TIcms20.ValorDespesas(Value: Double): iElementos;
begin
  Result := Self;
  FValorDespesas := Value;
end;

function TIcms20.ValorFrete(Value: Double): iElementos;
begin
  Result := Self;
  FValorFrete := Value;
end;

function TIcms20.ValorIcms: Double;
begin
  Result := GetValorIcms;
end;

function TIcms20.ValorIcms(var Value: Double): iElementos;
begin
  Result := Self;
  Value := GetValorIcms;
end;

function TIcms20.ValorIcmsST(var Value: Double): iElementos;
begin
  Result := Self;
  Value := GetValorIcmsST;
end;

function TIcms20.ValorIcmsST: Double;
begin
  Result := GetValorIcmsST;
end;

function TIcms20.ValorIPI(Value: Double): iElementos;
begin
  Result := Self;
  FValorIPI := Value;
end;

function TIcms20.ValorProduto(Value: Double): iElementos;
begin
  Result := Self;
  FValorProduto := Value;
end;

function TIcms20.ValorSeguro(Value: Double): iElementos;
begin
  Result := Self;
  FValorSeguro := Value;
end;

end.
