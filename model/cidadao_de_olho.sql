-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24/09/2020 às 16:32
-- Versão do servidor: 10.4.11-MariaDB
-- Versão do PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cidadao_de_olho`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `deputys`
--

CREATE TABLE `deputys` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Despejando dados para a tabela `deputys`
--

INSERT INTO `deputys` (`id`, `name`) VALUES
('10002', 'Carlos Henrique'),
('10434', 'Leandro Genaro'),
('12195', 'André Quintão'),
('12202', 'Gustavo Valadares'),
('12210', 'Luiz Humberto Carneiro'),
('12213', 'Marília Campos'),
('13425', 'Betinho Pinto Coelho'),
('15245', 'Agostinho Patrus'),
('15246', 'Braulio Braz'),
('15260', 'Rosângela Reis'),
('15265', 'Inácio Franco'),
('16019', 'Léo Portela'),
('17872', 'Professor Wendel Mesquita'),
('17919', 'Duarte Bechir'),
('1832', 'Sávio Souza Cruz'),
('18848', 'Cássio Soares'),
('18849', 'Celinho Sintrocel'),
('18850', 'Doutor Wilson Batista'),
('18852', 'Elismar Prado'),
('18857', 'Bosco'),
('18858', 'João Vítor Xavier'),
('18860', 'Tadeu Martins Leite'),
('18863', 'Neilando Pimenta'),
('18867', 'Ulysses Gomes'),
('19150', 'Ana Paula Siqueira'),
('20231', 'Glaycon Franco'),
('21125', 'Mário Henrique Caixa'),
('22515', 'Thiago Cota'),
('22516', 'Fábio Avelar de Oliveira'),
('22521', 'Noraldino Júnior'),
('22523', 'Cristiano Silveira'),
('22531', 'Douglas Melo'),
('22561', 'João Magalhães'),
('22581', 'Doutor Jean Freire'),
('22607', 'Roberto Andrade'),
('22616', 'Tito Torres'),
('2267', 'Celise Laviola'),
('24621', 'Gustavo Santana'),
('26062', 'Charles Santos'),
('26098', 'Beatriz Cerqueira'),
('26101', 'Cleitinho Azevedo'),
('26105', 'Zé Guilherme'),
('26111', 'Mauro Tramonte'),
('26114', 'Raul Belém'),
('26119', 'Professor Cleiton'),
('26133', 'Fernando Pacheco'),
('26134', 'Guilherme da Cunha'),
('26135', 'Gustavo Mitre'),
('26136', 'Osvaldo Lopes'),
('26137', 'Professor Irineu'),
('26138', 'Repórter Rafael Martins'),
('26139', 'Zé Reis'),
('26143', 'Andréia de Jesus'),
('26144', 'Bartô'),
('26145', 'Betão'),
('26148', 'Bruno Engler'),
('26149', 'Coronel Henrique'),
('26150', 'Delegado Heli Grilo'),
('26151', 'Doorgal Andrada'),
('26152', 'Doutor Paulo'),
('26153', 'Leninha'),
('26163', 'Coronel Sandro'),
('26164', 'Delegada Sheila'),
('26165', 'Laura Serrano'),
('2698', 'Virgílio Guimarães'),
('4458', 'Marquinho Lemos'),
('5905', 'Hely Tarqüínio'),
('7327', 'Antonio Carlos Arantes'),
('7752', 'Alencar da Silveira Jr.'),
('7758', 'Carlos Pimenta'),
('7762', 'Gil Pereira'),
('7766', 'João Leite'),
('7769', 'Leonídio Bouças'),
('8095', 'Ione Pinheiro'),
('9652', 'Arlen Santiago'),
('9655', 'Dalmo Ribeiro Silva'),
('9673', 'Sargento Rodrigues');

-- --------------------------------------------------------

--
-- Estrutura para tabela `months`
--

CREATE TABLE `months` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `1` int(11) NOT NULL,
  `2` int(11) NOT NULL,
  `3` int(11) NOT NULL,
  `4` int(11) NOT NULL,
  `5` int(11) NOT NULL,
  `6` int(11) NOT NULL,
  `7` int(11) NOT NULL,
  `8` int(11) NOT NULL,
  `9` int(11) NOT NULL,
  `10` int(11) NOT NULL,
  `11` int(11) NOT NULL,
  `12` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Despejando dados para a tabela `months`
--

INSERT INTO `months` (`id`, `name`, `1`, `2`, `3`, `4`, `5`, `6`, `7`, `8`, `9`, `10`, `11`, `12`) VALUES
('10002', 'Carlos Henrique', 13, 19, 23, 19, 23, 16, 15, 24, 11, 17, 19, 19),
('10434', 'Leandro Genaro', 10, 20, 14, 24, 33, 22, 19, 12, 16, 5, 4, 4),
('12195', 'André Quintão', 7, 20, 20, 29, 43, 38, 48, 53, 55, 55, 34, 36),
('12202', 'Gustavo Valadares', 3, 6, 7, 7, 9, 6, 8, 9, 8, 9, 8, 9),
('12210', 'Luiz Humberto Carneiro', 16, 11, 21, 23, 21, 17, 18, 21, 14, 14, 19, 16),
('12213', 'Marília Campos', 24, 39, 62, 71, 59, 50, 51, 51, 47, 47, 60, 30),
('13425', 'Betinho Pinto Coelho', 0, 38, 55, 39, 35, 40, 31, 32, 24, 19, 22, 13),
('15245', 'Agostinho Patrus', 26, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
('15246', 'Braulio Braz', 4, 6, 10, 8, 14, 25, 17, 26, 28, 18, 22, 19),
('15260', 'Rosângela Reis', 14, 14, 20, 14, 23, 22, 17, 12, 15, 12, 24, 25),
('15265', 'Inácio Franco', 19, 23, 19, 25, 26, 21, 29, 26, 22, 22, 24, 20),
('16019', 'Léo Portela', 6, 23, 22, 36, 32, 23, 22, 26, 33, 39, 20, 22),
('17872', 'Professor Wendel Mesquita', 0, 11, 25, 37, 41, 42, 31, 44, 31, 32, 38, 35),
('17919', 'Duarte Bechir', 16, 15, 16, 15, 16, 21, 19, 23, 22, 31, 26, 27),
('1832', 'Sávio Souza Cruz', 49, 47, 45, 54, 48, 38, 59, 54, 60, 62, 51, 27),
('18848', 'Cássio Soares', 41, 67, 60, 56, 68, 63, 55, 57, 60, 55, 50, 59),
('18849', 'Celinho Sintrocel', 7, 17, 8, 7, 15, 15, 7, 0, 5, 11, 0, 10),
('18850', 'Doutor Wilson Batista', 12, 22, 27, 24, 30, 30, 29, 43, 37, 41, 39, 35),
('18852', 'Elismar Prado', 14, 19, 18, 13, 20, 21, 36, 33, 29, 20, 27, 15),
('18857', 'Bosco', 25, 20, 48, 45, 56, 55, 50, 55, 50, 65, 42, 69),
('18858', 'João Vítor Xavier', 12, 32, 37, 31, 39, 32, 30, 36, 29, 29, 38, 30),
('18860', 'Tadeu Martins Leite', 16, 18, 47, 38, 54, 73, 64, 48, 54, 49, 67, 50),
('18863', 'Neilando Pimenta', 13, 16, 12, 18, 29, 15, 11, 13, 18, 16, 17, 16),
('18867', 'Ulysses Gomes', 22, 43, 57, 41, 66, 85, 62, 64, 59, 82, 60, 80),
('19150', 'Ana Paula Siqueira', 0, 9, 30, 33, 37, 35, 34, 40, 34, 37, 25, 34),
('20231', 'Glaycon Franco', 3, 3, 3, 3, 3, 3, 4, 4, 4, 3, 3, 3),
('21125', 'Mário Henrique Caixa', 7, 4, 6, 8, 6, 6, 6, 6, 7, 7, 6, 6),
('22515', 'Thiago Cota', 9, 21, 31, 23, 23, 25, 19, 23, 20, 38, 27, 31),
('22516', 'Fábio Avelar de Oliveira', 29, 36, 46, 36, 46, 48, 49, 46, 43, 37, 25, 36),
('22521', 'Noraldino Júnior', 31, 29, 23, 18, 32, 19, 21, 44, 35, 37, 22, 31),
('22523', 'Cristiano Silveira', 8, 5, 12, 20, 19, 13, 20, 12, 9, 10, 10, 4),
('22531', 'Douglas Melo', 15, 27, 20, 24, 22, 28, 12, 24, 31, 4, 21, 22),
('22561', 'João Magalhães', 9, 9, 11, 9, 11, 12, 13, 10, 9, 13, 11, 10),
('22581', 'Doutor Jean Freire', 4, 38, 29, 26, 29, 19, 21, 12, 15, 20, 22, 17),
('22607', 'Roberto Andrade', 17, 32, 33, 32, 20, 24, 25, 23, 26, 23, 32, 26),
('22616', 'Tito Torres', 34, 42, 47, 45, 49, 47, 41, 48, 46, 42, 46, 44),
('2267', 'Celise Laviola', 38, 47, 51, 47, 51, 41, 45, 52, 53, 47, 39, 46),
('24621', 'Gustavo Santana', 6, 6, 7, 7, 7, 9, 8, 7, 7, 7, 7, 8),
('26062', 'Charles Santos', 0, 23, 22, 15, 20, 17, 18, 18, 16, 29, 21, 21),
('26098', 'Beatriz Cerqueira', 0, 14, 27, 30, 43, 47, 60, 48, 42, 59, 53, 43),
('26101', 'Cleitinho Azevedo', 0, 31, 23, 26, 19, 16, 14, 16, 17, 13, 10, 18),
('26105', 'Zé Guilherme', 0, 12, 22, 42, 52, 26, 48, 36, 64, 51, 47, 76),
('26111', 'Mauro Tramonte', 0, 11, 18, 14, 20, 20, 21, 22, 20, 27, 19, 18),
('26114', 'Raul Belém', 0, 27, 16, 19, 17, 14, 27, 25, 23, 34, 22, 23),
('26119', 'Professor Cleiton', 0, 44, 61, 71, 82, 84, 67, 78, 88, 73, 78, 67),
('26133', 'Fernando Pacheco', 0, 8, 37, 26, 47, 37, 36, 31, 32, 26, 35, 17),
('26134', 'Guilherme da Cunha', 0, 9, 4, 6, 16, 19, 6, 8, 14, 7, 10, 4),
('26135', 'Gustavo Mitre', 0, 23, 24, 37, 46, 41, 47, 62, 53, 41, 46, 50),
('26136', 'Osvaldo Lopes', 0, 21, 22, 32, 32, 40, 26, 30, 41, 20, 21, 22),
('26137', 'Professor Irineu', 0, 18, 33, 22, 38, 45, 27, 39, 28, 40, 43, 38),
('26138', 'Repórter Rafael Martins', 0, 6, 20, 22, 27, 23, 26, 31, 24, 12, 18, 18),
('26139', 'Zé Reis', 0, 31, 46, 48, 46, 49, 24, 26, 39, 48, 28, 37),
('26143', 'Andréia de Jesus', 0, 9, 38, 20, 27, 42, 52, 32, 51, 51, 47, 29),
('26144', 'Bartô', 0, 20, 21, 19, 28, 26, 23, 21, 28, 30, 19, 15),
('26145', 'Betão', 0, 33, 35, 60, 59, 44, 75, 64, 71, 56, 64, 40),
('26148', 'Bruno Engler', 0, 6, 5, 33, 6, 9, 15, 5, 3, 8, 5, 6),
('26149', 'Coronel Henrique', 0, 5, 36, 43, 30, 35, 32, 52, 37, 40, 42, 58),
('26150', 'Delegado Heli Grilo', 0, 4, 16, 19, 17, 15, 17, 15, 17, 12, 14, 15),
('26151', 'Doorgal Andrada', 0, 8, 4, 5, 3, 4, 4, 4, 6, 6, 5, 6),
('26152', 'Doutor Paulo', 0, 13, 18, 31, 30, 16, 18, 18, 20, 22, 25, 15),
('26153', 'Leninha', 0, 18, 47, 78, 43, 44, 48, 42, 39, 48, 38, 26),
('26163', 'Coronel Sandro', 0, 19, 22, 26, 35, 29, 29, 40, 47, 47, 37, 26),
('26164', 'Delegada Sheila', 0, 11, 17, 23, 14, 22, 19, 26, 21, 26, 28, 26),
('26165', 'Laura Serrano', 0, 37, 52, 69, 21, 16, 19, 19, 13, 11, 22, 18),
('2698', 'Virgílio Guimarães', 0, 3, 21, 17, 17, 25, 16, 22, 22, 20, 17, 12),
('4458', 'Marquinho Lemos', 0, 21, 26, 34, 31, 28, 0, 38, 26, 30, 32, 19),
('5905', 'Hely Tarqüínio', 32, 38, 45, 43, 39, 41, 39, 39, 48, 40, 38, 48),
('7327', 'Antonio Carlos Arantes', 37, 60, 59, 53, 62, 46, 55, 56, 45, 74, 73, 59),
('7752', 'Alencar da Silveira Jr.', 5, 8, 10, 6, 9, 12, 7, 10, 8, 9, 12, 14),
('7758', 'Carlos Pimenta', 14, 21, 15, 21, 11, 21, 14, 16, 11, 6, 23, 9),
('7762', 'Gil Pereira', 19, 20, 26, 27, 27, 53, 18, 21, 58, 40, 29, 34),
('7766', 'João Leite', 12, 13, 24, 20, 14, 21, 33, 32, 17, 32, 20, 30),
('7769', 'Leonídio Bouças', 16, 24, 28, 18, 24, 17, 19, 15, 31, 22, 22, 17),
('8095', 'Ione Pinheiro', 1, 7, 14, 13, 25, 22, 24, 26, 37, 33, 29, 24),
('9652', 'Arlen Santiago', 47, 53, 67, 62, 60, 69, 70, 64, 66, 50, 0, 0),
('9655', 'Dalmo Ribeiro Silva', 6, 15, 16, 21, 19, 20, 18, 18, 16, 16, 17, 21),
('9673', 'Sargento Rodrigues', 6, 24, 30, 28, 27, 29, 9, 36, 24, 34, 26, 24);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `deputys`
--
ALTER TABLE `deputys`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
