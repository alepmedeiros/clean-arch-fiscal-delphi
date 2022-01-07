program ApiHorse_CleanArchFiscalDelphi;

{$APPTYPE CONSOLE}

{$R *.res}

uses
  System.SysUtils,
  CleanArchFiscalDelphi.Adapter.Interfaces in '..\src\adapter\CleanArchFiscalDelphi.Adapter.Interfaces.pas',
  CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapter in '..\src\adapter\impl\CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapter.pas',
  CleanArchFiscalDelphi.Controller in '..\src\controller\CleanArchFiscalDelphi.Controller.pas',
  CleanArchFiscalDelphi.Core.Entities.ElementosIcms in '..\src\core\entities\CleanArchFiscalDelphi.Core.Entities.ElementosIcms.pas',
  CleanArchFiscalDelphi.Core.Entities.Interfaces in '..\src\core\entities\CleanArchFiscalDelphi.Core.Entities.Interfaces.pas',
  CleanArchFiscalDelphi.Core.Entities.TipoIcms in '..\src\core\entities\CleanArchFiscalDelphi.Core.Entities.TipoIcms.pas',
  CleanArchFiscalDelphi.Core.Entities.Impl.Icms00 in '..\src\core\entities\impl\CleanArchFiscalDelphi.Core.Entities.Impl.Icms00.pas',
  CleanArchFiscalDelphi.Core.Entities.Impl.Icms20 in '..\src\core\entities\impl\CleanArchFiscalDelphi.Core.Entities.Impl.Icms20.pas',
  CleanArchFiscalDelphi.Core.Entities.Impl.Icms51 in '..\src\core\entities\impl\CleanArchFiscalDelphi.Core.Entities.Impl.Icms51.pas',
  CleanArchFiscalDelphi.Core.Repository.Interfaces in '..\src\core\repository\CleanArchFiscalDelphi.Core.Repository.Interfaces.pas',
  CleanArchFiscalDelphi.Core.UseCase.Interfaces in '..\src\core\usecase\CleanArchFiscalDelphi.Core.UseCase.Interfaces.pas',
  CleanArchFiscalDelphi.Core.UseCase.Impl.TributosElementosIcms in '..\src\core\usecase\impl\CleanArchFiscalDelphi.Core.UseCase.Impl.TributosElementosIcms.pas',
  CleanArchFiscalDelphi.Infra.Interfaces in '..\src\infra\CleanArchFiscalDelphi.Infra.Interfaces.pas',
  CleanArchFiscalDelphi.Infra.Impl.ElementosRepositoryMemory in '..\src\infra\repository\CleanArchFiscalDelphi.Infra.Impl.ElementosRepositoryMemory.pas',
  CleanArchFiscalDelphi.Infra.Http.ApiHorse in '..\src\infra\http\CleanArchFiscalDelphi.Infra.Http.ApiHorse.pas',
  CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapterForJson in '..\src\adapter\impl\CleanArchFiscalDelphi.Adapter.Impl.ElementosAdapterForJson.pas';

begin
  CleanArchFiscalDelphi.Infra.Http.ApiHorse.TApiHorse.New.Registrar;
end.
