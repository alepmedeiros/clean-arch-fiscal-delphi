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
    return Number(baseIcmsReduzida).toFixed(2);
}

function calcularIcmsOperacao(valorProduto, 
							  valorFrete, 
							  valorSeguro, 
							  valorOutro, 
							  valorDesconto, 
							  aliquotaIcms, 
							  percentualReducao, 
							  valorIpi = 0) {
    let baseIcmsReduzida = calcularBaseIcmsReduzida(valorProduto, 
													valorFrete, 
													valorSeguro, 
													valorOutro, 
													valorDesconto, 
													percentualReducao, 
													valorIpi);
													
	let icmsOperacao = baseIcmsReduzida * (aliquotaIcms/100);
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
										   aliquotaIcms, 
										   valorIpi);
										   
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