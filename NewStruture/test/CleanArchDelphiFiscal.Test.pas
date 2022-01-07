unit CleanArchDelphiFiscal.Test;

interface

uses
  DUnitX.TestFramework;

type
  [TestFixture]
  TCleanArchDelphiFiscal = class
  public
    [Setup]
    procedure Setup;
    [TearDown]
    procedure TearDown;
  end;

implementation

procedure TCleanArchDelphiFiscal.Setup;
begin
end;

procedure TCleanArchDelphiFiscal.TearDown;
begin
end;

initialization
  TDUnitX.RegisterTestFixture(TCleanArchDelphiFiscal);

end.
