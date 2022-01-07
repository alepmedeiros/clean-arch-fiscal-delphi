unit CleanArchFiscalDelphi.Test;

interface

uses
  DUnitX.TestFramework,
  CleanArchFiscalDelphi.Core.Entities.ElementosIcms,
  CleanArchFiscalDelphi.Core.UseCase.Interfaces,
  CleanArchFiscalDelphi.Controller,
  CleanArchFiscalDelphi.Core.Entities.Interfaces;

type

  [TestFixture]
  TCleanArchFiscalDelphiTest = class
  public
    [Setup]
    procedure Setup;

    [TearDown]
    procedure TearDown;

    [Test]
    procedure VerificaIcms00;

    [Test]
    procedure VerificaIcms20;

    [Test]
    procedure VerificaIcms51;
  end;

implementation

uses
  CleanArchFiscalDelphi.Core.Repository.Interfaces,
  CleanArchFiscalDelphi.Infra.Impl.ElementosRepositoryMemory,
  CleanArchFiscalDelphi.Core.UseCase.Impl.TributosElementosIcms;

procedure TCleanArchFiscalDelphiTest.Setup;
begin
end;

procedure TCleanArchFiscalDelphiTest.TearDown;
begin
end;

procedure TCleanArchFiscalDelphiTest.VerificaIcms00;
var
//  lBcIcms, lValorIcms: Double;
//  lTributosElementos : iTributosElementosIcms;
//  lRepositoryMemory : iRepositoryElementosIcms;
  lController : iController;
  lTributos : iElementos;
begin
//  TElementosIcms
//    .New
//      .RetornaElementosPorICMS('00')
//      .ValorProduto(135)
//      .ValorFrete(7.50)
//      .ValorSeguro(3)
//      .ValorDespesas(1.50)
//      .ValorDesconto(13.50)
//      .AliquotaIcms(18)
//      .BaseIcms(lBcIcms)
//      .ValorIcms(lValorIcms);

//  lRepositoryMemory := TElementosRepositoryMemory.New;
//  lTributosElementos := TTributosElementosIcms.New(lRepositoryMemory);
//
//  lTributosElementos.Execute('00')
//    .BaseIcms(lBcIcms)
//    .ValorIcms(lValorIcms);

//  TController
//    .New
//      .TributosElementosIcms
//        .Execute('00')
//        .BaseIcms(lBcIcms)
//        .ValorIcms(lValorIcms);
//
//  Assert.AreEqual<Double>(lBcIcms, 133.50);
//  Assert.AreEqual<Double>(lValorIcms, 24.03);

  lController := TController.New;

  lTributos := lController.TributosElementosIcms.Execute('00');

  Assert.AreEqual<Double>(lTributos.BaseIcms, 133.50);
  Assert.AreEqual<Double>(lTributos.ValorIcms, 24.03);
end;

procedure TCleanArchFiscalDelphiTest.VerificaIcms20;
var
//  lBcIcms, lValorIcms: Double;
//  lTributosElementos : iTributosElementosIcms;
//  lRepositoryMemory : iRepositoryElementosIcms;
  lController : iController;
  lTributos : iElementos;
begin
//  TElementosIcms
//    .New
//    .RetornaElementosPorICMS('20')
//    .ValorProduto(135)
//    .ValorFrete(7.50)
//    .ValorSeguro(3)
//    .ValorDespesas(1.50)
//    .ValorDesconto(13.50)
//    .AliquotaIcms(18)
//    .PercentualReducao(10)
//    .BaseIcms(lBcIcms)
//    .ValorIcms(lValorIcms);

//  lRepositoryMemory := TElementosRepositoryMemory.New;
//  lTributosElementos := TTributosElementosIcms.New(lRepositoryMemory);

//  lTributosElementos.Execute('20')
//    .BaseIcms(lBcIcms)
//    .ValorIcms(lValorIcms);
//  TController
//    .New
//      .TributosElementosIcms
//        .Execute('20')
//        .BaseIcms(lBcIcms)
//        .ValorIcms(lValorIcms);

//  Assert.AreEqual<Double>(lBcIcms, 120.15);
//  Assert.AreEqual<Double>(lValorIcms, 21.63);
  lController := TController.New;

  lTributos := lController.TributosElementosIcms.Execute('20');

  Assert.AreEqual<Double>(lTributos.BaseIcms, 120.15);
  Assert.AreEqual<Double>(lTributos.ValorIcms, 21.63);
end;

procedure TCleanArchFiscalDelphiTest.VerificaIcms51;
var
//  lBcIcms, lValorIcms, lValorOperacao: Double;
//  lTributosElementos : iTributosElementosIcms;
//  lRepositoryMemory : iRepositoryElementosIcms;
  lController : iController;
  lTributos : iElementos;
begin
//  TElementosIcms
//    .New
//    .RetornaElementosPorICMS('51')
//    .ValorProduto(135)
//    .ValorFrete(7.50)
//    .ValorSeguro(3)
//    .ValorDespesas(1.50)
//    .ValorDesconto(13.50)
//    .AliquotaIcms(18)
//    .PercentualDeferimento(10)
//    .BaseIcms(lBcIcms)
//    .ValorIcms(lValorIcms);

//  lRepositoryMemory := TElementosRepositoryMemory.New;
//  lTributosElementos := TTributosElementosIcms.New(lRepositoryMemory);

//  lTributosElementos.Execute('51')
//    .BaseIcms(lBcIcms)
//    .ValorIcms(lValorIcms);

//  TController.New
//      .TributosElementosIcms
//        .Execute('51')
//        .BaseIcms(lBcIcms)
//        .ValorIcms(lValorIcms);
//
//  Assert.AreEqual<Double>(lBcIcms, 133.50);
//  Assert.AreEqual<Double>(lValorIcms, 21.63);

  lController := TController.New;

  lTributos := lController.TributosElementosIcms.Execute('51');

  Assert.AreEqual<Double>(lTributos.BaseIcms,133.50);
  Assert.AreEqual<Double>(lTributos.ValorIcms,21.63);
end;

initialization

TDUnitX.RegisterTestFixture(TCleanArchFiscalDelphiTest);

end.
