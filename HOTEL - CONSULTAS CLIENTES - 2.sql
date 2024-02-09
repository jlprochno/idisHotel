USE HotelIdis;

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