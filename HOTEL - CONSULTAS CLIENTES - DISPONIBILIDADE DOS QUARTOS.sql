USE HotelIdis;

SELECT 

	(CASE WHEN Q.tipoQuarto = 'Solteiro'	 THEN 'Ol�, ' + (CASE WHEN CHARINDEX(' ',C.nomeCliente) = 0 THEN C.nomeCliente ELSE SUBSTRING(C.nomeCliente,1,(CHARINDEX(' ',C.nomeCliente)-1))END) + ', voc� escolheu o tipo do quarto Solteiro e o valor da di�ria � de R$150,00!' 
		  WHEN Q.tipoQuarto = 'Casal'		 THEN 'Ol�, ' + (CASE WHEN CHARINDEX(' ',C.nomeCliente) = 0 THEN C.nomeCliente ELSE SUBSTRING(C.nomeCliente,1,(CHARINDEX(' ',C.nomeCliente)-1))END) + ', voc� escolheu o tipo do quarto Casal e o valor da di�ria � de R$250,00!' 
		  WHEN Q.tipoQuarto = 'Fam�lia'		 THEN 'Ol�, ' + (CASE WHEN CHARINDEX(' ',C.nomeCliente) = 0 THEN C.nomeCliente ELSE SUBSTRING(C.nomeCliente,1,(CHARINDEX(' ',C.nomeCliente)-1))END) + ', voc� escolheu o tipo do quarto Fam�lia e o valor da di�ria � de R$450,00!' 
		  WHEN Q.tipoQuarto = 'Presidencial' THEN 'Ol�, ' + (CASE WHEN CHARINDEX(' ',C.nomeCliente) = 0 THEN C.nomeCliente ELSE SUBSTRING(C.nomeCliente,1,(CHARINDEX(' ',C.nomeCliente)-1))END) + ', voc� escolheu o tipo do quarto Presidencial e o valor da di�ria � de R$550,00!' 
	ELSE '' END) AS 'Escolha quarto',	

	(CASE WHEN Q.tipoQuarto = 'Solteiro'     THEN CONCAT ('N�s do ', H.nomeHotel, ' temos ' , H.quantidadeQuartos , ' quartos dispon�veis para voc�!')
		  WHEN Q.tipoQuarto = 'Casal'		 THEN CONCAT ('N�s do ', H.nomeHotel, ' temos ' , H.quantidadeQuartos , ' quartos dispon�veis para voc�!')
		  WHEN Q.tipoQuarto = 'Fam�lia'		 THEN CONCAT ('N�s do ', H.nomeHotel, ' temos ' , H.quantidadeQuartos , ' quartos dispon�veis para voc�!')
		  WHEN Q.tipoQuarto = 'Presidencial' THEN CONCAT ('N�s do ', H.nomeHotel, ' temos ' , H.quantidadeQuartos , ' quartos dispon�veis para voc�!')
	ELSE '' END) AS 'Quartos dispon�veis'



	FROM Hotel AS H
	INNER JOIN Quarto AS Q ON Q.codHotel = H.codHotel
	INNER JOIN Reserva AS R ON R.codHotel = H.codHotel
	INNER JOIN Cliente AS C ON C.codCliente = R.codCliente

