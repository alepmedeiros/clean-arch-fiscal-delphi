unit CleanArchFiscalDelphi.Core.Entities.Impl.Icms00;

interface

uses
  System.SysUtils,
  CleanArchFiscalDelphi.Core.Entities.Interfaces;

type
  TIcms00 = class(TInterfacedObject, iElementos)
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

function TICMS00.AliquotaIcms(Value: Double): iElementos;
begin
  Result := Self;
  FAliquotaIcms := Value;
end;

function TICMS00.BaseIcms: Double;
begin
  Result := GetBaseIcms;
end;

function TIcms00.BaseIcms(var Value: Double): iElementos;
begin
  Result := Self;
  Value := GetBaseIcms;
end;

function TIcms00.BaseIcmsST(var Value: Double): iElementos;
begin
  Result := Self;
  Value := GetBaseIcmsST;
end;

function TICMS00.BaseIcmsST: Double;
begin
  Result := GetBaseIcmsST;
end;

constructor TICMS00.Create;
begin

end;

destructor TICMS00.Destroy;
begin

  inherited;
end;

function TIcms00.GetBaseIcms: Double;
begin
  Result := SetFormat(FValorProduto + FValorFrete + FValorSeguro +
    FValorDespesas - FValorDesconto + FValorIPI);
end;

function TIcms00.GetBaseIcmsST: Double;
begin
  Result := 0;
end;

function TIcms00.GetValorIcms: Double;
begin
  Result := SetFormat(Self.GetBaseIcms * (FAliquotaIcms / 100));
end;

function TIcms00.GetValorIcmsST: Double;
begin
  Result := 0;
end;

class function TICMS00.New: iElementos;
begin
  Result := Self.Create;
end;

function TICMS00.PercentualDeferimento(Value: Double): iElementos;
begin
  Result := Self;
  FPercentualDeferimento := Value;
end;

function TICMS00.SetFormat(Value: Double): Double;
begin
  Result := FormatFloat('#,##0.00', Value).ToDouble;
end;

function TICMS00.PercentualReducao(Value: Double): iElementos;
begin
  Result := Self;
  FPercentualReducao := Value;
end;

function TICMS00.ValorDesconto(Value: Double): iElementos;
begin
  Result := Self;
  FValorDesconto := Value;
end;

function TICMS00.ValorDespesas(Value: Double): iElementos;
begin
  Result := Self;
  FValorDespesas := Value;
end;

function TICMS00.ValorFrete(Value: Double): iElementos;
begin
  Result := Self;
  FValorFrete := Value;
end;

function TICMS00.ValorIcms: Double;
begin
  Result := GetValorIcms;
end;

function TIcms00.ValorIcms(var Value: Double): iElementos;
begin
  Result := Self;
  Value := GetValorIcms;
end;

function TIcms00.ValorIcmsST(var Value: Double): iElementos;
begin
  Result := Self;
  Value := GetValorIcmsST;
end;

function TICMS00.ValorIcmsST: Double;
begin
  Result := GetValorIcmsST;
end;

function TICMS00.ValorIPI(Value: Double): iElementos;
begin
  Result := Self;
  FValorIPI := Value;
end;

function TICMS00.ValorProduto(Value: Double): iElementos;
begin
  Result := Self;
  FValorProduto := Value;
end;

function TICMS00.ValorSeguro(Value: Double): iElementos;
begin
  Result := Self;
  FValorSeguro := Value;
end;

end.
