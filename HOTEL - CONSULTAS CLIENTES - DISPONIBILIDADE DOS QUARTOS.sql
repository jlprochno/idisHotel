USE HotelIdis;

SELECT 

	(CASE WHEN Q.tipoQuarto = 'Solteiro'	 THEN 'Olá, ' + (CASE WHEN CHARINDEX(' ',C.nomeCliente) = 0 THEN C.nomeCliente ELSE SUBSTRING(C.nomeCliente,1,(CHARINDEX(' ',C.nomeCliente)-1))END) + ', você escolheu o tipo do quarto Solteiro e o valor da diária é de R$150,00!' 
		  WHEN Q.tipoQuarto = 'Casal'		 THEN 'Olá, ' + (CASE WHEN CHARINDEX(' ',C.nomeCliente) = 0 THEN C.nomeCliente ELSE SUBSTRING(C.nomeCliente,1,(CHARINDEX(' ',C.nomeCliente)-1))END) + ', você escolheu o tipo do quarto Casal e o valor da diária é de R$250,00!' 
		  WHEN Q.tipoQuarto = 'Família'		 THEN 'Olá, ' + (CASE WHEN CHARINDEX(' ',C.nomeCliente) = 0 THEN C.nomeCliente ELSE SUBSTRING(C.nomeCliente,1,(CHARINDEX(' ',C.nomeCliente)-1))END) + ', você escolheu o tipo do quarto Família e o valor da diária é de R$450,00!' 
		  WHEN Q.tipoQuarto = 'Presidencial' THEN 'Olá, ' + (CASE WHEN CHARINDEX(' ',C.nomeCliente) = 0 THEN C.nomeCliente ELSE SUBSTRING(C.nomeCliente,1,(CHARINDEX(' ',C.nomeCliente)-1))END) + ', você escolheu o tipo do quarto Presidencial e o valor da diária é de R$550,00!' 
	ELSE '' END) AS 'Escolha quarto',	

	(CASE WHEN Q.tipoQuarto = 'Solteiro'     THEN CONCAT ('Nós do ', H.nomeHotel, ' temos ' , H.quantidadeQuartos , ' quartos disponíveis para você!')
		  WHEN Q.tipoQuarto = 'Casal'		 THEN CONCAT ('Nós do ', H.nomeHotel, ' temos ' , H.quantidadeQuartos , ' quartos disponíveis para você!')
		  WHEN Q.tipoQuarto = 'Família'		 THEN CONCAT ('Nós do ', H.nomeHotel, ' temos ' , H.quantidadeQuartos , ' quartos disponíveis para você!')
		  WHEN Q.tipoQuarto = 'Presidencial' THEN CONCAT ('Nós do ', H.nomeHotel, ' temos ' , H.quantidadeQuartos , ' quartos disponíveis para você!')
	ELSE '' END) AS 'Quartos disponíveis'



	FROM Hotel AS H
	INNER JOIN Quarto AS Q ON Q.codHotel = H.codHotel
	INNER JOIN Reserva AS R ON R.codHotel = H.codHotel
	INNER JOIN Cliente AS C ON C.codCliente = R.codCliente

