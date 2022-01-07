function calcularBaseIcmsReduzida(valorProduto, 
                                  valorFrete, 
								  valorSeguro, 
								  valorOutro, 
								  valorDesconto, 
								  percentualReducao) {
    let baseIcms = valorProduto + 
				   valorFrete + 
				   valorSeguro + 
				   valorOutro - 
				   valorDesconto;
				   
	let baseIcmsReduzida = baseIcms - ((percentualReducao/100) * baseIcms);
    return Number(baseIcmsReduzida).toFixed(2);
}

function calcularBaseIcms(valorProduto, 
                          valorFrete, 
						  valorSeguro, 
						  valorOutro, 
						  valorDesconto) {
    let baseIcms = valorProduto + 
				   valorFrete + 
				   valorSeguro + 
				   valorOutro - 
				   valorDesconto;
				   
    return Number(baseIcms).toFixed(2);
}

function calcularValorIcmsProprio(valorProduto, 
								  valorFrete, 
								  valorSeguro, 
								  valorOutro, 
								  valorDesconto, 
								  aliquotaIcmsProprio, 
								  percentualReducao = 0) {
    let baseIcmsProprio = percentualReducao > 0 ? calcularBaseIcmsReduzida(valorProduto, 
																		   valorFrete, 
																		   valorSeguro, 
																		   valorOutro, 
																		   valorDesconto, 
																		   percentualReducao) 
												: calcularBaseIcmsProprio(valorProduto, 
																		  valorFrete, 
																		  valorSeguro, 
																		  valorOutro, 
																		  valorDesconto);
																		  
	let valorIcmsProprio = baseIcmsProprio * (aliquotaIcmsProprio/100);
	return Number(valorIcmsProprio).toFixed(2);
}

function calcularBaseIcmsSTReduzida(valorProduto, 
									valorFrete, 
									valorSeguro, 
									valorOutro, 
									valorDesconto, 
									percentualMVA, 
									percentualReducaoST, 
									valorIpi = 0){
	let baseIcmsProprio = calcularBaseIcmsProprio(valorProduto, 
												  valorFrete, 
												  valorSeguro, 
												  valorOutro, 
												  valorDesconto);
												  
	let baseIcmsST = (baseIcmsProprio + valorIpi) * (1 + (percentualMVA/100));
	let baseIcmsSTReduzida = baseIcmsST - ((percentualReducaoST/100) * baseIcmsST);
	return Number(baseIcmsSTReduzida).toFixed(2);
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
	return Number(baseIcmsST).toFixed(2);
}

function calcularIcms70(valorProduto, 
						valorFrete, 
						valorSeguro, 
						valorOutro, 
						valorDesconto, 
						percentualMVA, 
						aliquotaIcmsProprio, 
						aliquotaIcmsST, 
						percentualReducao = 0, 
						percentualReducaoST = 0, 
						valorIpi = 0){
    let baseIcmsST = percentualReducaoST > 0 ? calcularBaseIcmsSTReduzida(valorProduto, 
																		  valorFrete, 
																		  valorSeguro, 
																		  valorOutro, 
																		  valorDesconto, 
																		  percentualMVA, 
																		  percentualReducaoST, 
																		  valorIpi) 
											: calcularBaseIcmsST(valorProduto, 
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
													aliquotaIcmsProprio, 
													percentualReducao = 0);
	let icms70 = (baseIcmsST * (aliquotaIcmsST/100)) - valorIcmsProprio;
	return Number(icms70).toFixed(2);
}