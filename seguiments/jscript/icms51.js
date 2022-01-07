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

function calcularIcmsOperacao(valorProduto, 
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
									
	let icmsOperacao = baseIcms * (aliquotaIcms/100);
	return Number(icmsOperacao).toFixed(2);
}

function calcularIcmsDiferido(valorProduto, 
							  valorFrete, 
							  valorSeguro, 
							  valorOutro, 
							  valorDesconto, 
							  aliquotaIcms, 
							  percentualDiferimento, 
							  valorIpi = 0){
	let icmsProprio = calcularIcmsOperacao(valorProduto, 
	                                       valorFrete, 
										   valorSeguro, 
										   valorOutro, 
										   valorDesconto, 
										   aliquotaIcms);
	
	let icmsDiferido = ((percentualDiferimento/100) * icmsProprio);
	return Number(icmsDiferido).toFixed(2);
}

function calcularIcms51(valorProduto, 
                        valorFrete, 
						valorSeguro, 
						valorOutro, 
						valorDesconto, 
						aliquotaIcms, 
						percentualDiferimento, 
						valorIpi = 0){
    let icmsDiferido = calcularIcmsDiferido(valorProduto, 
											valorFrete, 
											valorSeguro, 
											valorOutro, 
											valorDesconto, 
											aliquotaIcms, 
											percentualDiferimento, 
											valorIpi);
	
	let icmsOperacao = calcularIcmsOperacao(valorProduto, 
											valorFrete, 
											valorSeguro, 
											valorOutro, 
											valorDesconto, 
											aliquotaIcms, 
											valorIpi);
	
	let icms51 = icmsOperacao - icmsDiferido;
	return Number(icms51).toFixed(2);
}