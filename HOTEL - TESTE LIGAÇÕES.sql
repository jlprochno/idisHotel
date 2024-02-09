USE HotelIdis;

SELECT
	H.codHotel,	H.nomeHotel,
	Q.numeroQuarto,	Q.codHotel,	Q.adaptado, Q.tipoQuarto,
	R.codReserva, R.codHotel, R.numeroQuarto, R.codCliente,	R.dtReserva, R.dtInicioReserva, R.dtFimReserva, R.tipoReserva, R.statusReserva,	R.codFuncionario,
	F.codFuncionario, F.cargoFuncionario,
	C.codCliente, C.nomeCliente, C.emailCliente, C.nacionalidadeCliente,
	CC.codContato, CC.codCliente, CC.telefoneContato, CC.enderecoContato,
	CI.codCheckIn, CI.codCliente, CI.statusCheckIn, CI.periodoPermanecia,
	CON.codConsumo, CON.codCheckin, CON.descricaoConsumo, CON.valorConsumo, CON.dtConsumo,
	CO.codNotaFiscal, CO.codCliente, CO.pagamantoNotaFiscal


	FROM Hotel AS H
	INNER JOIN Quarto AS Q ON Q.codHotel = H.codHotel
	INNER JOIN Reserva AS R ON R.codHotel = H.codHotel
	INNER JOIN Funcionario AS F ON F.codFuncionario = R.codFuncionario
	INNER JOIN Cliente AS C ON C.codCliente = R.codCliente
	INNER JOIN ContatosCliente AS CC ON CC.codCliente = C.codCliente
	INNER JOIN CheckIn AS CI ON CI.codCliente = C.codCliente
	INNER JOIN Consumo AS CON ON CON.codCheckin = CI.codCheckin
	INNER JOIN CheckOut AS CO ON CO.codCliente = C.codCliente





	






