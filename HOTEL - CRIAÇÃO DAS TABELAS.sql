--CREATE DATABASE HotelIdis;
USE HotelIdis;

CREATE TABLE Hotel(
	codHotel INT IDENTITY,
	nomeHotel VARCHAR(45) NOT NULL,
	CONSTRAINT Pk_codHotel PRIMARY KEY (codHotel)
);

CREATE TABLE Quarto(
	numeroQuarto INT IDENTITY,
	codHotel INT NOT NULL,
	adaptado VARCHAR(3) NOT NULL,
	tipoQuarto VARCHAR(45) NOT NULL,
	CONSTRAINT Pk_numeroQuarto PRIMARY KEY (numeroQuarto),
	CONSTRAINT fk_codHotel_Quarto FOREIGN KEY (codHotel) references Hotel(codHotel)
);

CREATE TABLE Funcionario(
	codFuncionario INT IDENTITY,
	tipoFuncionario VARCHAR(45) NOT NULL,
	CONSTRAINT Pk_codFuncionario PRIMARY KEY (codFuncionario)
);

CREATE TABLE Cliente(
	codCliente INT IDENTITY,
	nomeCliente VARCHAR(45) NOT NULL,
	emailCliente VARCHAR(20) NOT NULL,
	nacionalidadeCliente VARCHAR(20) NOT NULL,
	CONSTRAINT Pk_codCliente PRIMARY KEY (codCliente)
);

CREATE TABLE ContatosCliente(
	codContato INT IDENTITY,
	codCliente INT NOT NULL,
	telefoneContato VARCHAR(11) NOT NULL,
	enderecoContato VARCHAR(50) NOT NULL,
	CONSTRAINT Pk_codContato PRIMARY KEY (codContato),
	CONSTRAINT fk_codCliente FOREIGN KEY (codCliente) references Cliente(codCliente)
);

CREATE TABLE Reserva(
	codReserva INT IDENTITY,
	codHotel INT NOT NULL,
	numeroQuarto INT NOT NULL,
	codCliente INT NOT NULL,
	dtReserva DATE NOT NULL,
	dtInicioReserva DATE NOT NULL,
	dtFimReserva DATE NOT NULL,
	tipoReserva VARCHAR(45) NOT NULL,
	statusReserva VARCHAR(20) NOT NULL,
	codFuncionario INT NOT NULL,
	CONSTRAINT Pk_codReserva PRIMARY KEY (codReserva),
	CONSTRAINT fk_codHotel_Reserva FOREIGN KEY (codHotel) references Hotel(codHotel),
	CONSTRAINT fk_numeroQuarto_Reserva FOREIGN KEY (numeroQuarto) references Quarto(numeroQuarto),
	CONSTRAINT fk_codFuncionario_Reserva FOREIGN KEY (codFuncionario) references Funcionario(codFuncionario),
	CONSTRAINT fk_codCliente_Reserva FOREIGN KEY (codCliente) references Cliente(codCliente),
	CHECK (dtInicioReserva < dtFimReserva)
);

CREATE TABLE CheckIn(
	codCheckIn INT IDENTITY,
	codCliente INT,
	statusCheckIn VARCHAR(20) NOT NULL,
	periodoPermanecia INT NOT NULL,
	CONSTRAINT Pk_codCheckin PRIMARY KEY (codCheckin),
	CONSTRAINT fk_codCliente_Checkin FOREIGN KEY (codCliente) references Cliente(codCliente)
);

CREATE TABLE Consumo(
	codConsumo INT IDENTITY,	
	codCheckin INT,
	descricaoConsumo VARCHAR(45) NOT NULL,
	valorConsumo FLOAT NOT NULL,
	dtConsumo DATE NOT NULL,
	CONSTRAINT Pk_codConsumo PRIMARY KEY (codConsumo),
	CONSTRAINT fk_codCheckIn_Consumo FOREIGN KEY (codCheckIn) references CheckIn(codCheckIn)
);

CREATE TABLE CheckOut(
	codNotaFiscal INT IDENTITY, 
	codCliente INT,
	pagamantoNotaFiscal VARCHAR(20) NOT NULL,
	CONSTRAINT Pk_codNotaFiscal PRIMARY KEY (codNotaFiscal),
	CONSTRAINT fk_codCliente_CheckOut FOREIGN KEY (codCliente) references Cliente(codCliente)
);

--CREATE TABLE valorDiaria(
--	valorDiariaSolteiro FLOAT NOT NULL,
--	valorDiariaCasal FLOAT NOT NULL,
--	valorDiariaFamília FLOAT NOT NULL,
--	valorDiariaPresidencial FLOAT NOT NULL,
--	codNotaFiscal INT,
--	CONSTRAINT fk_codNotaFiscal_valorDiaria FOREIGN KEY (codNotaFiscal) references CheckOut(codNotaFiscal)
--);


ALTER TABLE Hotel ADD quantidadeQuartos INT;
ALTER TABLE Hotel ADD tipoQuarto VARCHAR(50);
ALTER TABLE Hotel ADD enderecoHotel VARCHAR (50);
ALTER TABLE Hotel ADD quantidadeEstrelasHotel INT;
ALTER TABLE CheckOut ADD valorDiariaSolteiro FLOAT;
ALTER TABLE CheckOut ADD valorDiariaCasal FLOAT;
ALTER TABLE CheckOut ADD valorDiariaFamília FLOAT;
ALTER TABLE CheckOut ADD valorDiariaPresidencial FLOAT;

ALTER TABLE Reserva ADD colchaoOpcional VARCHAR(3);
ALTER TABLE CheckOut ADD taxaColchao FLOAT;

ALTER TABLE Funcionario ADD nomeFuncionario VARCHAR(50);

CREATE TABLE Restaurante(
	codConsumoRestarante INT IDENTITY,
	codConsumo INT,	
	consumoRestaurante FLOAT,
	consumoFrigobar FLOAT,
	consumoEntregaQuarto FLOAT,
	taxaEntregaQuarto FLOAT
	CONSTRAINT Pk_codConsumoRestarante PRIMARY KEY (codConsumoRestarante),
	CONSTRAINT fk_codConsumo_ConsumoRestaurante FOREIGN KEY (codConsumo) references Consumo(codConsumo)
);

CREATE TABLE Lavanderia(
	codConsumoLavanderia INT IDENTITY,
	codConsumo INT,
	servicoLavanderia VARCHAR (50) NOT NULL,
	valorServicoLavanderia FLOAT NOT NULL,
	valorConsumoLavanderia FLOAT NOT NULL
	CONSTRAINT Pk_codConsumoLavanderia PRIMARY KEY (codConsumoLavanderia),
	CONSTRAINT fk_codConsumoLavanderia FOREIGN KEY (codConsumo) references Consumo(codConsumo)
);

--ALTER TABLE Funcionario ADD cargoFuncionario VARCHAR(50);

--ALTER TABLE CheckOut
--  DROP COLUMN valorNotaFiscal;


EXEC sp_rename 'Funcionario.tipoFuncionario', 'cargoFuncionario', 'COLUMN';

--INSERT INTO Funcionario (cargoFuncionario) VALUES ('Atendente');
--INSERT INTO Funcionario (cargoFuncionario) VALUES ('Gerente');
--INSERT INTO Funcionario (cargoFuncionario) VALUES ('Diretor');
