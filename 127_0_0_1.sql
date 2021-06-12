-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Jun-2021 às 15:37
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `bd_entregalogo`
--
CREATE DATABASE IF NOT EXISTS `bd_entregalogo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bd_entregalogo`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20210526191236-create-user.js');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `bd_mantenedores`
--
CREATE DATABASE IF NOT EXISTS `bd_mantenedores` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `bd_mantenedores`;
--
-- Banco de dados: `controlechave`
--
CREATE DATABASE IF NOT EXISTS `controlechave` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `controlechave`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `ambiente` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `keys`
--

INSERT INTO `keys` (`id`, `ambiente`, `local`, `userId`, `createdAt`, `updatedAt`) VALUES
(1, 'SALA 101', 'PRÉDIO AZUL', 17, '2021-06-07 15:43:44', '2021-06-07 15:43:44'),
(2, 'SALA 102', 'PRÉDIO AZUL', 17, '2021-06-07 15:44:38', '2021-06-07 15:44:38'),
(3, 'SALA 103', 'PRÉDIO AZUL', 17, '2021-06-07 15:45:50', '2021-06-07 19:37:55'),
(4, 'SALA 104', 'PRÉDIO AZUL', 17, '2021-06-07 15:45:58', '2021-06-07 19:38:20'),
(5, 'SALA 201', 'PRÉDIO AZUL', 17, '2021-06-07 15:46:19', '2021-06-07 15:46:19'),
(6, 'SALA 202', 'PRÉDIO AZUL', 10, '2021-06-07 15:46:27', '2021-06-07 19:42:40'),
(7, 'SALA 203', 'PRÉDIO AZUL', 17, '2021-06-07 15:46:55', '2021-06-07 15:46:55'),
(8, 'SALA 204', 'PRÉDIO AZUL', 17, '2021-06-07 15:47:08', '2021-06-07 15:47:08'),
(9, 'LAB QUÍMICA', 'PRÉDIO AZUL', 17, '2021-06-07 15:49:32', '2021-06-07 15:49:32'),
(10, 'SALA 101', 'PRÉDIO VERDE', 17, '2021-06-07 15:50:28', '2021-06-07 15:50:28'),
(11, 'SALA 102', 'PRÉDIO VERDE', 17, '2021-06-07 15:51:16', '2021-06-07 15:51:16'),
(12, 'SALA 103', 'PRÉDIO VERDE', 17, '2021-06-07 15:51:28', '2021-06-07 19:39:30'),
(13, 'SALA 104', 'PRÉDIO VERDE', 17, '2021-06-07 15:51:40', '2021-06-07 15:51:40'),
(14, 'SALA 201', 'PRÉDIO VERDE', 17, '2021-06-07 15:51:49', '2021-06-07 15:51:49'),
(15, 'SALA 202', 'PRÉDIO VERDE', 12, '2021-06-07 15:51:57', '2021-06-07 19:13:49'),
(16, 'SALA 203', 'PRÉDIO VERDE', 17, '2021-06-07 15:52:03', '2021-06-07 15:52:03'),
(17, 'SALA 204', 'PRÉDIO VERDE', 17, '2021-06-07 15:52:15', '2021-06-07 15:52:15'),
(18, 'LAB FÍSICA', 'PRÉDIO VERDE', 17, '2021-06-07 15:52:31', '2021-06-07 15:52:31');

-- --------------------------------------------------------

--
-- Estrutura da tabela `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20210606223100-create-user.js'),
('20210606223336-create-key.js');

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `senha` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `nome`, `senha`, `createdAt`, `updatedAt`) VALUES
(2, 'joao', '456', '2021-06-06 22:52:03', '2021-06-07 02:00:40'),
(10, 'Francisco', 'jj', '2021-06-07 03:02:14', '2021-06-07 06:11:07'),
(12, 'Paulo', 'jj', '2021-06-07 03:02:39', '2021-06-07 03:02:39'),
(13, 'Paulo', 'jj', '2021-06-07 03:03:07', '2021-06-07 03:03:07'),
(17, 'Administrador', 'admin', '2021-06-07 13:23:20', '2021-06-07 13:34:02'),
(18, 'Fernando', 'suor', '2021-06-07 13:48:42', '2021-06-07 13:48:42');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userId` (`userId`);

--
-- Índices para tabela `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `keys`
--
ALTER TABLE `keys`
  ADD CONSTRAINT `keys_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--


