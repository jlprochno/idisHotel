--02. Dados da Reserva

USE HotelIdis;

SELECT

	'Ol� ' + ((CASE WHEN CHARINDEX(' ',C.nomeCliente) = 0 THEN C.nomeCliente ELSE SUBSTRING(C.nomeCliente,1,(CHARINDEX(' ',C.nomeCliente)-1))END) 
		   + ', seja muito Bem-vindx ao Hotel ' + H.nomeHotel 	+ CONCAT (' ao seu hotel ' ,quantidadeEstrelasHotel, ' estrelas.')) AS 'Dados do Hotel',
	
	(CASE WHEN Q.tipoQuarto = 'Solteiro'	 THEN 'Voc� escolheu o tipo do quarto Solteiro e o valor da di�ria � de R$150,00!' 
		  WHEN Q.tipoQuarto = 'Casal'		 THEN 'Voc� escolheu o tipo do quarto Casal e o valor da di�ria � de R$250,00!' 
		  WHEN Q.tipoQuarto = 'Fam�lia'		 THEN 'Voc� escolheu o tipo do quarto Fam�lia e o valor da di�ria � de R$450,00!' 
		  WHEN Q.tipoQuarto = 'Presidencial' THEN 'Voc� escolheu o tipo do quarto Presidencial e o valor da di�ria � de R$550,00!' 
	ELSE '' END) AS 'Escolha quarto',

	R.numeroQuarto AS 'N�mero do quarto',
	R.dtInicioReserva AS 'In�cio da estadia',
	R.dtFimReserva AS 'Fim da estadia',
	F.nomeFuncionario AS 'Funcionario respons�vel pela reserva'

	FROM Hotel AS H
	INNER JOIN Quarto AS Q ON Q.codHotel = H.codHotel
	INNER JOIN Reserva AS R ON R.codHotel = H.codHotel
	INNER JOIN Funcionario AS F ON F.codFuncionario = R.codFuncionario
	INNER JOIN Cliente AS C ON C.codCliente = R.codCliente
