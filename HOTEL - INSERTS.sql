USE HotelIdis;

--Inserção da tabela Hotel

INSERT INTO Hotel (nomeHotel) VALUES ('Estrela Luxuosa');
INSERT INTO Hotel (nomeHotel) VALUES ('Sereno Palace');
INSERT INTO Hotel (nomeHotel) VALUES ('Aconchego Celestial');
INSERT INTO Hotel (nomeHotel) VALUES ('Vista Serena');
INSERT INTO Hotel (nomeHotel) VALUES ('Paradiso Escondido');
INSERT INTO Hotel (nomeHotel) VALUES ('Refúgio Encantado');
INSERT INTO Hotel (nomeHotel) VALUES ('Oasis Dourado');
INSERT INTO Hotel (nomeHotel) VALUES ('Harmonia Suites');
INSERT INTO Hotel (nomeHotel) VALUES ('Luminar Resort');
INSERT INTO Hotel (nomeHotel) VALUES ('Tranquilidade Hotel');
INSERT INTO Hotel (nomeHotel) VALUES ('Jardim dos Sonhos');
INSERT INTO Hotel (nomeHotel) VALUES ('Mirage Boutique');
INSERT INTO Hotel (nomeHotel) VALUES ('Solitude Estelar');
INSERT INTO Hotel (nomeHotel) VALUES ('Maravilha Noturna');
INSERT INTO Hotel (nomeHotel) VALUES ('Aurora Palace');
INSERT INTO Hotel (nomeHotel) VALUES ('Sonhos do Horizonte');
INSERT INTO Hotel (nomeHotel) VALUES ('Calma Celestial');
INSERT INTO Hotel (nomeHotel) VALUES ('Palácio da Serenidad');
INSERT INTO Hotel (nomeHotel) VALUES ('Radiante Refúgio');
INSERT INTO Hotel (nomeHotel) VALUES ('Horizonte Hotel');

--Inserção da tabela Quarto
 
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (1, 'SIM', 'Solteiro');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (2, 'SIM', 'Casal');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (3, 'SIM', 'Família');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (4, 'SIM', 'Presidencial');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (5, 'NÃO', 'Solteiro');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (6, 'NÃO', 'Casal');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (7, 'NÃO', 'Família');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (8, 'NÃO', 'Presidencial');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (9, 'SIM', 'Solteiro');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (10, 'SIM', 'Casal');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (11, 'SIM', 'Família');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (12, 'SIM', 'Presidencial');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (13, 'NÃO', 'Solteiro');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (14, 'NÃO', 'Casal');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (15, 'NÃO', 'Família');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (16, 'NÃO', 'Presidencial');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (17, 'SIM', 'Solteiro');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (18, 'SIM', 'Casal');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (19, 'SIM', 'Família');
INSERT INTO Quarto (codHotel, adaptado, tipoQuarto) VALUES (20, 'SIM', 'Presidencial');

--Inserção da tabela Funcionario

INSERT INTO Funcionario (tipoFuncionario) VALUES ('Atendente');
INSERT INTO Funcionario (tipoFuncionario) VALUES ('Atendente Virtual');
INSERT INTO Funcionario (tipoFuncionario) VALUES ('Telefonista');
INSERT INTO Funcionario (tipoFuncionario) VALUES ('Manobrista');
INSERT INTO Funcionario (tipoFuncionario) VALUES ('Mensageiro');
INSERT INTO Funcionario (tipoFuncionario) VALUES ('Supervisor');
INSERT INTO Funcionario (tipoFuncionario) VALUES ('Coordenador');
INSERT INTO Funcionario (tipoFuncionario) VALUES ('Gerente');
INSERT INTO Funcionario (tipoFuncionario) VALUES ('Limpeza');
INSERT INTO Funcionario (tipoFuncionario) VALUES ('Lavanderia');
INSERT INTO Funcionario (tipoFuncionario) VALUES ('Cozinha');
INSERT INTO Funcionario (tipoFuncionario) VALUES ('Recepcionista');

--Inserção da tabela Cliente
 
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Marcelo Wzorek Filho', 'Wzorek@gmail.com', 'Brasil');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Jenyffer Laura Prochno Pereira', 'Prochno@gmail.com', 'Brasil');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Wallace Vinicius Lopes dos Santos', 'Lopes@gmail.com', 'Brasil');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Sofia Almeida', 'sofia.al@email.com', 'Portugal');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Carlos Mendes', 'carlos.m@email.com', 'Brasil');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Emily Johnson', 'emily.j@email.com', 'Estados Unidos');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Luca Rossi', 'luca.rossi@email.com', 'Itália');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Mei Chen', 'mei.chen@email.com', 'China');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Pablo Sánchez', 'pablo.s@email.com', 'Espanha');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Aya Tanaka', 'aya.t@email.com', 'Japão');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Anika Müller', 'anika.mu@email.com', 'Alemanha');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Juan Rodriguez', 'juan.r@email.com', 'México');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Isabella Wong', 'isabella.w@email.com', 'Singapura');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Malik Ahmed', 'malik.a@email.com', 'Índia');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Olivia Andersson', 'olivia.a@email.com', 'Suécia');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Ahmed Al-Farsi', 'ahmed.af@email.com', 'Arábia Saudita');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Maria Santos', 'maria.s@email.com', 'Portugal');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Diego Fernandez', 'diego.f@email.com', 'Argentina');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Luna Kim', 'luna.k@email.com', 'Coreia do Sul');
INSERT INTO Cliente (nomeCliente, emailCliente, nacionalidadeCliente) VALUES ('Mateo Gómez', 'mateo.g@email.com', 'Colômbia');

--Inserção da tabela ContatosCliente
 
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (1, '15551234567', 'Rua das Flores, 123, Cidade Encanto');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (2, '44201234567', 'Av. Central, 456, Vilarejo Sonhos');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (3, '33123456789', 'Praça Imaginação, 789, Cidade Contos');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (4, '81312345678', 'Travessa Sonhos, 101, Vila Ilusões');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (4, '11987654321', 'Alameda Desejos, 202, Cidade Mágica');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (6, '49301234567', 'Rua Aventura, 303, Bairro Ilusão');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (7, '61298765432', 'Av. Imaginação, 404, Cidade Enigmas');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (8, '39612345678', 'Beco Segredos, 505, Vila Mistério');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (9, '97141234567', 'Praia Suspiros, 606, Cidade Romance');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (10, '46812345678', 'Estrada Desconhecido, 707, Vilarejo Mistério');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (11, '91111234567', 'Rua Infinito, 808, Bairro Estrelas');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (12, '52551234567', 'Praça Magia, 909, Cidade Maravilhas');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (13, '65123456780', 'Travessa Ilusão, 1010, Vila Encanto');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (14, '20212345678', 'Av. Sonhos, 1111, Cidade Surreal');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (15, '35312345678', 'Rua Inspiração, 1212, Bairro Poesia');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (16, '54111234567', 'Alameda Fábulas, 1313, Vilarejo Contos');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (17, '82212345678', 'Praça Alegria, 1414, Cidade Sorrisos');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (18, '57123456785', 'Travessa Encanto, 1515, Vila Felicidade');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (19, '49891234568', 'Rua Esperança, 1616, Cidade Magia');
INSERT INTO ContatosCliente(codCliente, telefoneContato, enderecoContato) VALUES (20, '97150123456', 'Av. Imaginação, 1717, Bairro Maravilhas');

--Inserção da tabela Reserva
 
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (1, 1, 1, '2024-01-01',  '2024-02-01', '2024-02-04', 'Solteiro',  'Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (2, 2, 2,  '2024-01-02',  '2024-02-02', '2024-02-05', 'Casal', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (3, 3, 3, '2024-01-03',  '2024-02-03', '2024-02-06', 'Família',  'Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (4, 4, 4, '2024-01-04',  '2024-02-04', '2024-02-07', 'Presidencial', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (5, 5, 5, '2024-01-05',  '2024-02-05', '2024-02-08', 'Solteiro', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (6, 6, 6, '2024-01-06',  '2024-02-06', '2024-02-09', 'Casal',  'Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (7, 7, 7, '2024-01-07',  '2024-02-07', '2024-02-10', 'Família', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (8, 8, 8, '2024-01-08',  '2024-02-08', '2024-02-11', 'Presidencial', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (9, 9, 9, '2024-01-09',  '2024-02-09', '2024-02-12', 'Solteiro',  'Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (10, 10, 10,  '2024-01-10',  '2024-02-10', '2024-02-13', 'Casal', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (11, 11, 11,  '2024-01-11',  '2024-02-11', '2024-02-14', 'Família', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (12, 12, 12,  '2024-01-12',  '2024-02-12', '2024-02-15', 'Presidencial',  'Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (13, 13, 13,  '2024-01-13',  '2024-02-13', '2024-02-16', 'Solteiro', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (14, 14, 14,  '2024-01-14',  '2024-02-14', '2024-02-17', 'Casal', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (15, 15, 15,  '2024-01-15',  '2024-02-15', '2024-02-18', 'Família',  'Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (16, 16, 16,  '2024-01-16',  '2024-02-16', '2024-02-19', 'Presidencial', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (17, 17, 17,  '2024-01-17',  '2024-02-17', '2024-02-20', 'Solteiro', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (18, 18, 18,  '2024-01-18',  '2024-02-18', '2024-02-21', 'Casal',  'Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (19, 19, 19,  '2024-01-19',  '2024-02-19', '2024-02-22', 'Família', 'Não Reservado', 12);
INSERT INTO Reserva (codHotel, numeroQuarto, codCliente, dtReserva, dtInicioReserva, dtFimReserva, tipoReserva, statusReserva, codFuncionario)
VALUES (20, 20, 20,  '2024-01-20',  '2024-02-20', '2024-02-23', 'Presidencial', 'Não Reservado', 12);

--Inserção da tabela CheckIn

INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (1, 'Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (2, 'Não Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (3, 'Aguardando', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (4, 'Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (5, 'Não Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (6, 'Aguardando', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (7, 'Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (8, 'Não Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (9, 'Aguardando', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (10, 'Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (11, 'Não Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (12, 'Aguardando', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (13, 'Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (14, 'Não Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (15, 'Aguardando', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (16, 'Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (17, 'Não Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (18, 'Aguardando', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (19, 'Confirmado', 4);
INSERT INTO CheckIn (codCliente, statusCheckIn, periodoPermanecia) VALUES (20, 'Não Confirmado', 4);

--Inserção da tabela Consumo

INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (1, 'Coca-Cola', 5.50, '2024-01-05');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (2, 'Energético', 15.80, '2024-01-06');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (3, 'Água mineral', 2.50, '2024-01-07');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (4, 'Café gourmet', 25.50, '2024-01-08');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (5, 'Chá-Verde', 3.50, '2024-01-09');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (6, 'Suco de Laranja', 5.50, '2024-01-10');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (7, 'Banana', 1.20, '2024-01-11');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (8, 'Salada de frutas', 6.50, '2024-01-12');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (9, 'Sanduíche gourmet', 10.50, '2024-01-13');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (10, 'Vinho', 14.50, '2024-01-14');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (11, 'Pepsi', 8.50, '2024-01-15');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (12, 'Batata Frita', 35.50, '2024-01-16');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (13, 'Jantar Completo', 155.50, '2024-01-17');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (14, 'Almoço Completo', 25.50, '2024-01-18');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (15, 'Salgadinho', 12.50, '2024-01-19');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (16, 'Pão de Queijo', 6.50, '2024-01-20');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (17, 'Coxinha', 5.50, '2024-01-21');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (18, 'Risoles', 4.50, '2024-01-22');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (19, 'Suco de Uva', 1.50, '2024-01-23');
INSERT INTO Consumo (codCheckin, descricaoConsumo, valorConsumo, dtConsumo) VALUES (20, 'Sorvete', 5.50, '2024-01-24');

--Inserção da tabela CheckOut

INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (1, 569.90, 'Dinheiro');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (2, 993.00, 'Cartão de Crédito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (3, 348.50, 'Cartão de Débito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (4, 169.80, 'Dinheiro');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (5, 1593.10, 'Cartão de Crédito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (6, 348.00, 'Cartão de Débito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (7, 963.63, 'Dinheiro');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (8, 325.36, 'Cartão de Crédito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (9, 694.15, 'Cartão de Débito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (10, 962.90, 'Dinheiro');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (11, 638.10, 'Cartão de Crédito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (12, 986.80, 'Cartão de Débito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (13, 846.50, 'Dinheiro');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (14, 513.60, 'Cartão de Crédito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (15, 382.10, 'Cartão de Débito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (16, 693.30, 'Dinheiro');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (17, 1532.90, 'Cartão de Crédito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (18, 695.50, 'Cartão de Débito');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (19, 569.30, 'Dinheiro');
INSERT INTO CheckOut(codCliente, valorNotaFiscal, pagamantoNotaFiscal) VALUES (20, 1923.30, 'Cartão de Crédito');
























CREATE TABLE ContatosCliente(
	codContato INT IDENTITY,
	codCliente INT NOT NULL,
	telefoneContato VARCHAR(11) NOT NULL,
	enderecoContato VARCHAR(50) NOT NULL,
	CONSTRAINT Pk_codContato PRIMARY KEY (codContato),
	CONSTRAINT fk_codCliente FOREIGN KEY (codCliente) references Cliente(codCliente)
);









