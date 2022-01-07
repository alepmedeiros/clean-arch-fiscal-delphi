program CleanArchFiscalDelphiTest;

{$IFNDEF TESTINSIGHT}
{$APPTYPE CONSOLE}
{$ENDIF}
{$STRONGLINKTYPES ON}
uses
  System.SysUtils,
  {$IFDEF TESTINSIGHT}
  TestInsight.DUnitX,
  {$ELSE}
  DUnitX.Loggers.Console,
  DUnitX.Loggers.Xml.NUnit,
  {$ENDIF }
  DUnitX.TestFramework,
  CleanArchFiscalDelphi.Test in 'CleanArchFiscalDelphi.Test.pas',
  CleanArchFiscalDelphi.Core.Entities.Interfaces in '..\src\core\entities\CleanArchFiscalDelphi.Core.Entities.Interfaces.pas',
  CleanArchFiscalDelphi.Core.Entities.Impl.Icms00 in '..\src\core\entities\impl\CleanArchFiscalDelphi.Core.Entities.Impl.Icms00.pas',
  CleanArchFiscalDelphi.Core.Entities.Impl.Icms20 in '..\src\core\entities\impl\CleanArchFiscalDelphi.Core.Entities.Impl.Icms20.pas',
  CleanArchFiscalDelphi.Core.Entities.Impl.Icms51 in '..\src\core\entities\impl\CleanArchFiscalDelphi.Core.Entities.Impl.Icms51.pas',
  CleanArchFiscalDelphi.Core.Entities.TipoIcms in '..\src\core\entities\CleanArchFiscalDelphi.Core.Entities.TipoIcms.pas',
  CleanArchFiscalDelphi.Core.Entities.ElementosIcms in '..\src\core\entities\CleanArchFiscalDelphi.Core.Entities.ElementosIcms.pas',
  CleanArchFiscalDelphi.Core.Repository.Interfaces in '..\src\core\repository\CleanArchFiscalDelphi.Core.Repository.Interfaces.pas',
  CleanArchFiscalDelphi.Core.UseCase.Interfaces in '..\src\core\usecase\CleanArchFiscalDelphi.Core.UseCase.Interfaces.pas',
  CleanArchFiscalDelphi.Core.UseCase.Impl.TributosElementosIcms in '..\src\core\usecase\impl\CleanArchFiscalDelphi.Core.UseCase.Impl.TributosElementosIcms.pas',
  CleanArchFiscalDelphi.Adapter.Interfaces in '..\src\adapter\CleanArchFiscalDelphi.Adapter.Interfaces.pas',
  CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapter in '..\src\adapter\impl\CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapter.pas',
  CleanArchFiscalDelphi.Infra.Impl.ElementosRepositoryMemory in '..\src\infra\repository\CleanArchFiscalDelphi.Infra.Impl.ElementosRepositoryMemory.pas',
  CleanArchFiscalDelphi.Controller in '..\src\controller\CleanArchFiscalDelphi.Controller.pas',
  CleanArchFiscalDelphi.Infra.Interfaces in '..\src\infra\CleanArchFiscalDelphi.Infra.Interfaces.pas',
  CleanArchFiscalDelphi.Infra.Http.ApiHorse in '..\src\infra\http\CleanArchFiscalDelphi.Infra.Http.ApiHorse.pas',
  CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapterForJson in '..\src\adapter\impl\CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapterForJson.pas';

{$IFNDEF TESTINSIGHT}
var
  runner: ITestRunner;
  results: IRunResults;
  logger: ITestLogger;
  nunitLogger : ITestLogger;
{$ENDIF}
begin
{$IFDEF TESTINSIGHT}
  TestInsight.DUnitX.RunRegisteredTests;
{$ELSE}
  try
    //Check command line options, will exit if invalid
    TDUnitX.CheckCommandLine;
    //Create the test runner
    runner := TDUnitX.CreateRunner;
    //Tell the runner to use RTTI to find Fixtures
    runner.UseRTTI := True;
    //When true, Assertions must be made during tests;
    runner.FailsOnNoAsserts := False;

    //tell the runner how we will log things
    //Log to the console window if desired
    if TDUnitX.Options.ConsoleMode <> TDunitXConsoleMode.Off then
    begin
      logger := TDUnitXConsoleLogger.Create(TDUnitX.Options.ConsoleMode = TDunitXConsoleMode.Quiet);
      runner.AddLogger(logger);
    end;
    //Generate an NUnit compatible XML File
    nunitLogger := TDUnitXXMLNUnitFileLogger.Create(TDUnitX.Options.XMLOutputFile);
    runner.AddLogger(nunitLogger);

    //Run tests
    results := runner.Execute;
    if not results.AllPassed then
      System.ExitCode := EXIT_ERRORS;

    {$IFNDEF CI}
    //We don't want this happening when running under CI.
    if TDUnitX.Options.ExitBehavior = TDUnitXExitBehavior.Pause then
    begin
      System.Write('Done.. press <Enter> key to quit.');
      System.Readln;
    end;
    {$ENDIF}
  except
    on E: Exception do
      System.Writeln(E.ClassName, ': ', E.Message);
  end;
{$ENDIF}
end.
