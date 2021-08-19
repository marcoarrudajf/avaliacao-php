-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Ago-2021 às 22:43
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `vel_veiculo`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `rastreamento`
--

CREATE TABLE `rastreamento` (
  `id` int(11) NOT NULL,
  `placa` varchar(8) NOT NULL,
  `nome` varchar(40) NOT NULL,
  `ocorrencia` date DEFAULT NULL,
  `vel_max` int(11) NOT NULL,
  `reg_vel` int(11) NOT NULL,
  `dif_vel` decimal(5,2) DEFAULT NULL,
  `latitude` varchar(20) DEFAULT NULL,
  `longitude` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `rastreamento`
--

INSERT INTO `rastreamento` (`id`, `placa`, `nome`, `ocorrencia`, `vel_max`, `reg_vel`, `dif_vel`, `latitude`, `longitude`) VALUES
(1, 'MNO2588', 'Fabiano Lima Moreira', '2021-06-04', 60, 120, '100.00', '33.825587', '07.388525'),
(2, 'MWE8068', 'Flávia Almeida Soares', '2021-04-04', 90, 90, '0.00', '-07.825587', '98.399525'),
(3, 'PAC2583', 'Marcelo Rezende', '2020-03-31', 60, 130, '110.00', '63.253645', '80.298650'),
(4, 'PCC0902', 'Renan Filipe', '2021-02-28', 80, 110, '35.00', '-37.256507', '80.362525'),
(5, 'PYF9902', 'Maria de Oliveira Guedes', '2021-05-29', 80, 110, '35.00', '87.256507', '80.362525'),
(6, 'REB9835', 'João Guedes Lira', '2020-01-04', 110, 105, '-1.00', '82.898587', '-25.365425'),
(7, 'RGB1005', 'Monica Moraes', '2020-11-24', 120, 90, '-33.00', '50.898587', '25.365425'),
(8, 'YEM0205', 'Rodrigo M Antunes', '2020-12-30', 110, 150, '40.00', '15.025487', '55.025545'),
(9, 'HRM0205', 'Rafael Silva', '2021-01-08', 110, 120, '9.00', '145.25487', '85.000545'),
(10, 'HRM0205', 'Flavio Barci', '2021-06-28', 80, 118, '50.00', '89.025487', '05.000545');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `rastreamento`
--
ALTER TABLE `rastreamento`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `rastreamento`
--
ALTER TABLE `rastreamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
