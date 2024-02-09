-- 03. Conta e Consumo detalhado do cliente:

USE HotelIdis;

SELECT
	'Olá, ' + (CASE WHEN CHARINDEX(' ',C.nomeCliente) = 0 THEN C.nomeCliente ELSE SUBSTRING(C.nomeCliente,1,(CHARINDEX(' ',C.nomeCliente)-1))END) + ' seguem as informações atualizadas da sua conta:' AS 'Resposável financeiro',
	(CASE WHEN Q.tipoQuarto = 'Solteiro'	 THEN 'A diária é de R$150,00 por dia'
		  WHEN Q.tipoQuarto = 'Casal'		 THEN 'A diária é de R$250,00 por dia'
		  WHEN Q.tipoQuarto = 'Família'		 THEN 'A diária é de R$450,00 por dia'
		  WHEN Q.tipoQuarto = 'Presidencial' THEN 'A diária é de R$550,00 por dia' 
	ELSE '' END) AS 'Valor diarias',
	CI.periodoPermanecia AS 'Dias de estadia',
	(CASE WHEN Q.tipoQuarto = 'Solteiro'	 THEN (periodoPermanecia * 150)
		  WHEN Q.tipoQuarto = 'Casal'		 THEN (periodoPermanecia * 250)
		  WHEN Q.tipoQuarto = 'Família'		 THEN (periodoPermanecia * 450)
		  WHEN Q.tipoQuarto = 'Presidencial' THEN (periodoPermanecia * 550) 
	ELSE '' END) AS 'Valor das suas diarias',
	RES.consumoRestaurante AS 'Consumo Restaurante',
	RES.consumoFrigobar AS 'Consumo Frigobar',
	RES.consumoEntregaQuarto AS 'Consumo Entregas no quarto',
	L.valorConsumoLavanderia AS 'Consumo Lavanderia',
	CON.valorConsumo AS 'Demais Consumos',	
	CO.taxaColchao AS 'Taxa padrão colchão extra',
	RES.taxaEntregaQuarto AS 'Taxa padrão entregas no quarto',
	(CASE WHEN Q.tipoQuarto = 'Solteiro'	 THEN ((periodoPermanecia * 150) + ((periodoPermanecia * 150) * taxaColchao) + RES.consumoRestaurante + RES.consumoFrigobar + (RES.consumoEntregaQuarto * RES.taxaEntregaQuarto ) + L.valorConsumoLavanderia + CON.valorConsumo)
		  WHEN Q.tipoQuarto = 'Casal'		 THEN ((periodoPermanecia * 250) + ((periodoPermanecia * 250) * taxaColchao) + RES.consumoRestaurante + RES.consumoFrigobar + (RES.consumoEntregaQuarto * RES.taxaEntregaQuarto ) + L.valorConsumoLavanderia + CON.valorConsumo)
		  WHEN Q.tipoQuarto = 'Família'		 THEN ((periodoPermanecia * 450) + ((periodoPermanecia * 450) * taxaColchao) + RES.consumoRestaurante + RES.consumoFrigobar + (RES.consumoEntregaQuarto * RES.taxaEntregaQuarto ) + L.valorConsumoLavanderia + CON.valorConsumo)
		  WHEN Q.tipoQuarto = 'Presidencial' THEN ((periodoPermanecia * 550) + ((periodoPermanecia * 550) * taxaColchao) + RES.consumoRestaurante + RES.consumoFrigobar + (RES.consumoEntregaQuarto * RES.taxaEntregaQuarto ) + L.valorConsumoLavanderia + CON.valorConsumo)
	ELSE '' END) AS 'Valor total'		


	FROM Hotel AS H
	INNER JOIN Quarto AS Q ON Q.codHotel = H.codHotel
	INNER JOIN Reserva AS R ON R.codHotel = H.codHotel
	INNER JOIN Cliente AS C ON C.codCliente = R.codCliente
	INNER JOIN CheckIn AS CI ON CI.codCliente = C.codCliente
	INNER JOIN Consumo AS CON ON CON.codCheckin = CI.codCheckin
	INNER JOIN CheckOut AS CO ON CO.codCliente = C.codCliente
	INNER JOIN Restaurante AS RES ON RES.codConsumo = CON.codConsumo
	INNER JOIN Lavanderia AS L ON L.codConsumo = CON.codConsumo
