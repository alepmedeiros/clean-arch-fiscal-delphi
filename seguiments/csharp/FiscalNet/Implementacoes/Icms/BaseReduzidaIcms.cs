/*
 * NA REDUÇÃO DE BASE DE ICMS, CALCULA-SE A BASE DE ICMS SEM
 * IPI, E ACRESCENTA O IPI APÓS A REDUÇÃO DA BASE
 * 
 */
 namespace FiscalNet.Implementacoes.Icms
{
    public class BaseReduzidaIcms
    {
        private decimal ValorProduto { get; set; }
        private decimal ValorFrete { get; set; }
        private decimal ValorSeguro { get; set; }
        private decimal DespesasAcessorias { get; set; }
        private decimal ValorIpi { get; set; }
        private decimal ValorDesconto { get; set; }
        private decimal AliqBcRedIcms { get; set; }

        public BaseReduzidaIcms(decimal valorProduto,
            decimal valorFrete,
            decimal valorSeguro,
            decimal despesasAcessorias,
            decimal valorIpi,
            decimal valorDesconto,
            decimal aliqBcRedIcms)
        {
            this.ValorProduto       = valorProduto;
            this.ValorFrete         = valorFrete;
            this.ValorSeguro        = valorSeguro;
            this.DespesasAcessorias = despesasAcessorias;
            this.ValorIpi           = valorIpi;
            this.ValorDesconto      = valorDesconto;
            this.AliqBcRedIcms      = aliqBcRedIcms;
        }

        public decimal GerarBaseReduzidaIcms()
        {
            decimal BaseNormal = (ValorProduto +
                ValorFrete +
                ValorSeguro +
                DespesasAcessorias -
                ValorDesconto);

            return (BaseNormal - (BaseNormal * (AliqBcRedIcms / 100))) + ValorIpi;
        }
    }
}
