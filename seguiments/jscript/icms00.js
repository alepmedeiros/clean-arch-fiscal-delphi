function calcularBaseIcms(valorProduto, 
						  valorFrete, 
						  valorSeguro, 
						  valorOutro, 
						  valorDesconto, 
						  valorIpi = 0) {
    let baseIcms = valorProduto + 
				   valorFrete + 
				   valorSeguro + 
				   valorOutro - 
				   valorDesconto + 
				   valorIpi;
				   
    return Number(baseIcms).toFixed(2);
}

function calcularIcms00(valorProduto, 
                        valorFrete, 
						valorSeguro, 
						valorOutro, 
						valorDesconto, 
						aliquotaIcms, 
						valorIpi = 0) {
    let baseIcms = calcularBaseIcms(valorProduto, 
	                                valorFrete, 
									valorSeguro, 
									valorOutro, 
									valorDesconto, 
									valorIpi);
	
	let icms00 = baseIcms * (aliquotaIcms/100);
	return Number(icms00).toFixed(2);
}