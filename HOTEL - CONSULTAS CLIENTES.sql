USE HotelIdis;

-- Dados do Hotel e da Reserva do Cliente

SELECT 

	H.nomeHotel AS 'Nome Hotel',
	Q.numeroQuarto AS 'Numero do Quarto',
	Q.adaptado AS 'Quarto Adaptado?',	
	Q.tipoQuarto AS 'Tipo do Quarto',
	R.dtReserva AS 'Data do pedido da Reserva',
	R.dtInicioReserva AS 'Início da Estadia',
	R.dtFimReserva AS 'Fim da Estadia',
	R.statusReserva AS 'Status da Reserva',
	F.cargoFuncionario AS 'Funcionário que reservou',
	C.nomeCliente AS 'Nome do Cliente'

	FROM Hotel AS H
	INNER JOIN Quarto AS Q ON Q.codHotel = H.codHotel
	INNER JOIN Reserva AS R ON R.codHotel = H.codHotel
	INNER JOIN Funcionario AS F ON F.codFuncionario = R.codFuncionario
	INNER JOIN Cliente AS C ON C.codCliente = R.codCliente

-- Dados do CheckIn e do Consumo do Cliente
SELECT

	CI.statusCheckIn AS 'Status do CheckIn',
	CI.periodoPermanecia AS 'Quantos dias de estadia',
	CON.descricaoConsumo AS 'Descrição do Consumo',
	CON.dtConsumo AS 'Data do Consumo',
	CON.valorConsumo AS 'Valor do Consumo',
	--valorNotaFiscal AS 'Valor da Nota Fiscal',
	CO.pagamantoNotaFiscal AS 'Forma de Pagamento'

	FROM Hotel AS H
	INNER JOIN Reserva AS R ON R.codHotel = H.codHotel
	INNER JOIN Cliente AS C ON C.codCliente = R.codCliente
	INNER JOIN ContatosCliente AS CC ON CC.codCliente = C.codCliente
	INNER JOIN CheckIn AS CI ON CI.codCliente = C.codCliente
	INNER JOIN Consumo AS CON ON CON.codCheckin = CI.codCheckin
	INNER JOIN CheckOut AS CO ON CO.codCliente = C.codCliente