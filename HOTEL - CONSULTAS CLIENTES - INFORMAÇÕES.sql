--02. Dados da Reserva

USE HotelIdis;

SELECT

	'Olá ' + ((CASE WHEN CHARINDEX(' ',C.nomeCliente) = 0 THEN C.nomeCliente ELSE SUBSTRING(C.nomeCliente,1,(CHARINDEX(' ',C.nomeCliente)-1))END) 
		   + ', seja muito Bem-vindx ao Hotel ' + H.nomeHotel 	+ CONCAT (' ao seu hotel ' ,quantidadeEstrelasHotel, ' estrelas.')) AS 'Dados do Hotel',
	
	(CASE WHEN Q.tipoQuarto = 'Solteiro'	 THEN 'Você escolheu o tipo do quarto Solteiro e o valor da diária é de R$150,00!' 
		  WHEN Q.tipoQuarto = 'Casal'		 THEN 'Você escolheu o tipo do quarto Casal e o valor da diária é de R$250,00!' 
		  WHEN Q.tipoQuarto = 'Família'		 THEN 'Você escolheu o tipo do quarto Família e o valor da diária é de R$450,00!' 
		  WHEN Q.tipoQuarto = 'Presidencial' THEN 'Você escolheu o tipo do quarto Presidencial e o valor da diária é de R$550,00!' 
	ELSE '' END) AS 'Escolha quarto',

	R.numeroQuarto AS 'Número do quarto',
	R.dtInicioReserva AS 'Início da estadia',
	R.dtFimReserva AS 'Fim da estadia',
	F.nomeFuncionario AS 'Funcionario responsável pela reserva'

	FROM Hotel AS H
	INNER JOIN Quarto AS Q ON Q.codHotel = H.codHotel
	INNER JOIN Reserva AS R ON R.codHotel = H.codHotel
	INNER JOIN Funcionario AS F ON F.codFuncionario = R.codFuncionario
	INNER JOIN Cliente AS C ON C.codCliente = R.codCliente
