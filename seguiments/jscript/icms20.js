function calcularBaseIcmsReduzida(valorProduto, 
								  valorFrete, 
								  valorSeguro, 
								  valorOutro, 
								  valorDesconto, 
								  percentualReducao, 
								  valorIpi = 0) {
    let baseIcms = valorProduto + 
				   valorFrete + 
				   valorSeguro + 
				   valorOutro - 
				   valorDesconto + 
				   valorIpi;
				   
	let baseIcmsReduzida = baseIcms - ((percentualReducao/100) * baseIcms);
    return Number(baseIcmsReduzida.toFixed(2));
}

function calcularIcms20(valorProduto, 
						valorFrete, 
						valorSeguro, 
						valorOutro, 
						valorDesconto, 
						percentualReducao, 
						aliquotaIcms, 
						valorIpi = 0) {
    let baseIcmsProprio = calcularBaseIcmsReduzida(valorProduto, 
												   valorFrete, 
												   valorSeguro, 
												   valorOutro, 
												   valorDesconto, 
												   percentualReducao, 
												   valorIpi);
	
	let icms20 = baseIcmsProprio * (aliquotaIcms/100);
	return Number(icms20.toFixed(2));
}