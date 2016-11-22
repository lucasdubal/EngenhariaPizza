-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 22-Nov-2016 às 16:21
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webentrega`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(50) NOT NULL,
  `nome` varchar(50) COLLATE utf16_unicode_ci NOT NULL,
  `endereco` varchar(70) COLLATE utf16_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `telefone` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `tipo` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `endereco`, `email`, `telefone`, `tipo`) VALUES
(1, 'Joao', 'avenida A', 'joao@gmail.com', '98876543', 1),
(2, 'Pedro', 'Avenida B', 'pedro@gmail.com', '90876756', 2),
(3, 'Valmir', 'Av.C', 'valmir@hotmail.com', '4354354353', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `id` int(10) NOT NULL,
  `nroPizza` int(50) NOT NULL,
  `nroBebida` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`id`, `nroPizza`, `nroBebida`) VALUES
(1, 260, 95);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamento`
--

CREATE TABLE `pagamento` (
  `id` int(30) NOT NULL,
  `valor` double NOT NULL,
  `formapagamento` varchar(30) COLLATE utf16_unicode_ci NOT NULL,
  `situacaopagamento` varchar(20) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(50) NOT NULL,
  `idcliente` int(30) NOT NULL,
  `total` double NOT NULL,
  `tamanhoPizza` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `pizzaSabor` varchar(20) COLLATE utf16_unicode_ci NOT NULL,
  `tipo` varchar(20) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idpedido`, `idcliente`, `total`, `tamanhoPizza`, `pizzaSabor`, `tipo`) VALUES
(21, 1, 27, 'media', '4queijos', '1'),
(22, 1, 32, 'grande', 'frango', '1'),
(23, 1, 22, 'pequena', 'palmito', '1'),
(24, 1, 22, 'pequena', 'palmito', '1'),
(25, 1, 22, 'pequena', 'palmito', '1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagamento`
--
ALTER TABLE `pagamento`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`,`idcliente`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `estoque`
--
ALTER TABLE `estoque`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `pagamento`
--
ALTER TABLE `pagamento`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
