function calcularBaseIcmsProprio(valorProduto, 
								 valorFrete, 
								 valorSeguro, 
								 valorOutro, 
								 valorDesconto) {
    let baseIcms = valorProduto + 
				   valorFrete + 
				   valorSeguro + 
				   valorOutro - 
				   valorDesconto;
				   
    return Number(baseIcms.toFixed(2));
}

function calcularValorIcmsProprio(valorProduto, 
								  valorFrete, 
								  valorSeguro, 
								  valorOutro, 
								  valorDesconto, 
								  aliquotaIcmsProprio) {
    let baseIcmsProprio = calcularBaseIcmsProprio(valorProduto, 
												  valorFrete, 
												  valorSeguro, 
												  valorOutro, 
												  valorDesconto);
												  
	let valorIcmsProprio = baseIcmsProprio * (aliquotaIcmsProprio/100);
	return Number(valorIcmsProprio.toFixed(2));
}

function calcularBaseIcmsST(valorProduto, 
						    valorFrete, 
							valorSeguro, 
							valorOutro, 
							valorDesconto, 
							percentualMVA, 
							valorIpi = 0){
	let baseIcmsProprio = calcularBaseIcmsProprio(valorProduto, 
	                                              valorFrete, 
												  valorSeguro, 
												  valorOutro, 
												  valorDesconto);
												  
	let baseIcmsST = (baseIcmsProprio + valorIpi) * (1 + (percentualMVA/100));
	return Number(baseIcmsST.toFixed(2));
}

function calcularIcms10(valorProduto, 
						valorFrete, 
						valorSeguro, 
						valorOutro, 
						valorDesconto, 
						percentualMVA, 
						aliquotaIcmsProprio, 
						aliquotaIcmsST, 
						valorIpi = 0){
    let baseIcmsST = calcularBaseIcmsST(valorProduto, 
										valorFrete, 
										valorSeguro, 
										valorOutro, 
										valorDesconto, 
										percentualMVA, 
										valorIpi);
										
	let valorIcmsProprio = calcularValorIcmsProprio(valorProduto, 
													valorFrete, 
													valorSeguro, 
													valorOutro, 
													valorDesconto, 
													aliquotaIcmsProprio);
	let icms10 = (baseIcmsST * (aliquotaIcmsST/100)) - valorIcmsProprio;
	return Number(icms10.toFixed(2));
}