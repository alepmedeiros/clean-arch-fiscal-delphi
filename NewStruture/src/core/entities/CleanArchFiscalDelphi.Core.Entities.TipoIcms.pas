unit CleanArchFiscalDelphi.Core.Entities.TipoIcms;

interface

uses
  TypInfo;

type
  TTipoIcms = (tp00, tp20, tp51);

  TTipoIcmsHelper = record helper for TTipoIcms
    function GetValue(Value : String) : TTipoIcms;
  end;

implementation

{ TTipoIcmsHelper }

function TTipoIcmsHelper.GetValue(Value: String): TTipoIcms;
begin
  Result := TTipoIcms(GetEnumValue(TypeInfo(TTipoIcms), 'tp'+Value));
end;

end.
