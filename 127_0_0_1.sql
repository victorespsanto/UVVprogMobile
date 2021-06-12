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
-- Banco de dados: `db_carga`
--
CREATE DATABASE IF NOT EXISTS `db_carga` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_carga`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_backload`
--

CREATE TABLE `tb_backload` (
  `rt_backload` varchar(255) CHARACTER SET utf8 NOT NULL,
  `rt_load_back` varchar(255) CHARACTER SET utf8 NOT NULL,
  `dt_backload` date NOT NULL DEFAULT current_timestamp(),
  `comentario` varchar(255) CHARACTER SET utf8 NOT NULL,
  `nr_contentor` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_backload`
--

INSERT INTO `tb_backload` (`rt_backload`, `rt_load_back`, `dt_backload`, `comentario`, `nr_contentor`) VALUES
('', '', '1970-01-01', '', ''),
('319721421', '319081342', '2020-07-19', '', '14215-9'),
('319277904', '319118601', '2020-01-25', '', '23286-3'),
('319196335', '319196335', '2020-01-16', '', '00870904'),
('319196747', '319196747', '2020-01-16', '', '1311082011'),
('319681275', '319196748', '2020-07-04', '', '107560503'),
('319689991', '319196749', '2020-07-06', '', '107850501'),
('319202548', '319202548', '2020-02-11', '', '1311222007'),
('319682531', '319228225', '2020-07-04', '', '20537-1'),
('319722594', '319228226', '2020-07-19', '', '12613-7'),
('319243485', '319243485', '2020-02-04', '', 'HMHU920534'),
('319243486', '319243486', '2020-02-04', '', 'HMHU920549'),
('319674081', '319278790', '2020-07-04', '', '086381501'),
('319439759', '319340646', '2020-07-04', '', '096950503'),
('319417986', '319417986', '2020-03-26', '', '13769-7'),
('319485583', '319485583', '2020-04-07', '', '086361006'),
('319569874', '319485766', '2020-05-09', '', '096660502'),
('319559776', '319517521', '2020-05-03', '', '097201003'),
('319517522', '319517522', '2020-04-29', '', '119222015'),
('319594537', '319594537', '2020-07-18', '', '118350504'),
('319601601', '319601601', '2020-08-21', '', '085630502'),
('319601602', '319601602', '2020-10-08', '', '1311442007'),
('320079605', '319606147', '2020-12-01', '', '086012503'),
('320151875', '319606599', '2020-12-29', '', '1310692017'),
('320011473', '319606600', '2020-11-11', '', '1310802004'),
('319706091', '319609803', '2020-07-18', '', '086311506'),
('319610350', '319610350', '2020-06-07', '', '086361004'),
('319615637', '319615637', '2020-07-06', '', '1311142009'),
('319615638', '319615638', '2020-07-04', '', '1210152004'),
('319615639', '319615639', '2020-07-06', '', '16820-9'),
('319615640', '319615640', '2020-06-25', '', '17179-8'),
('319619008', '319619008', '2020-07-06', '', '12623-3'),
('319674080', '319637206', '2020-07-04', '', '096930503'),
('319645065', '319645065', '2020-06-25', '', '097040505'),
('319661985', '319661985', '2020-07-11', '', '022033205'),
('319776258', '319661986', '2020-08-21', '', 'OCTO501007'),
('319666563', '319666563', '2020-07-26', '', '12316-3'),
('319667771', '319667771', '2020-07-11', '', '10964-6'),
('319796085', '319667810', '2020-08-30', '', '021900404'),
('319674516', '319674516', '2020-07-18', '', '23286-3'),
('319680467', '319680467', '2020-07-11', '', '1311102015'),
('319680471', '319680471', '2020-08-03', '', '13685-4'),
('319690039', '319690039', '2020-07-18', '', '108100501'),
('319724272', '319690041', '2020-07-19', '', '1311171010'),
('319690802', '319690802', '2020-08-03', '', 'PPBR0003'),
('319700146', '319700146', '2020-07-19', '', '0870909'),
('319700150', '319700150', '2020-08-03', '', '15738-8'),
('319700245', '319700245', '2020-07-26', '', '17618-8'),
('319723993', '319705625', '2020-07-26', '', '10984-9'),
('319707768', '319707768', '2020-07-26', '', '1311162012'),
('319707771', '319707771', '2020-08-16', '', '16960-2'),
('319707773', '319707773', '2020-07-26', '', '17523-0'),
('319707800', '319707800', '2020-08-05', '', '096850502'),
('319712263', '319712263', '2020-08-26', '', '129502008'),
('319712264', '319712264', '2020-08-03', '', '021940402'),
('319722557', '319722557', '2020-08-03', '', '085600505'),
('319722559', '319722559', '2020-08-29', '', '097040503'),
('319733195', '319733195', '2020-08-21', '', '10926-5'),
('319733310', '319733310', '2020-08-05', '', '032680505'),
('319733312', '319733312', '2020-08-26', '', '17175-7'),
('319733314', '319733314', '2020-08-21', '', 'OCTO507005-5'),
('319748189', '319748189', '2020-08-16', '', '09599-9'),
('319748194', '319748194', '2020-09-22', '', '13281-0'),
('319750954', '319750954', '2020-09-22', '', '085620502'),
('319755404', '319755404', '2020-09-12', '', '03933-7'),
('319755426', '319755426', '2020-09-12', '', '12359-4'),
('319755427', '319755427', '2020-09-25', '', '14046-5'),
('319776013', '319755428', '2020-08-09', '', '20512-8'),
('319762246', '319762246', '2020-08-21', '', '07844-5'),
('319762247', '319762247', '2020-08-21', '', '06816-6'),
('319858416', '319762249', '2020-09-22', '', '13605-0'),
('319762253', '319762253', '2020-09-15', '', '05009-3'),
('319763072', '319763072', '2020-07-26', '', '17523-0'),
('319763272', '319763272', '2020-08-30', '', '011332501'),
('319768034', '319768034', '2020-09-22', '', '11510-4'),
('319768155', '319768155', '2020-09-12', '', 'OCTO507009-9'),
('319857993', '319768158', '2020-09-22', '', '1311222010'),
('319768161', '319768161', '2020-09-22', '', '10932-0'),
('319777908', '319777908', '2020-09-10', '', '09770-7'),
('319778916', '319778916', '2020-09-10', '', '032670503'),
('319780557', '319780557', '2020-09-22', '', 'OCTO507002-2'),
('319780671', '319780671', '2020-09-12', '', '09177-8'),
('319783687', '319783687', '2020-09-10', '', 'OCTO501004-4'),
('319799389', '319799389', '2020-09-22', '', '022033231'),
('319805575', '319805575', '2020-09-22', '', '09768-2'),
('319818023', '319818023', '2020-10-16', '', '118750503'),
('319818024', '319818024', '2020-10-04', '', '032720502'),
('319944226', '319818125', '2020-10-16', '', '17500-3'),
('319818126', '319818126', '2020-09-25', '', '118750504'),
('319818127', '319818127', '2020-09-26', '', 'OCTO512008-8'),
('319818266', '319818266', '2020-09-22', '', '08178-1'),
('319828934', '319828934', '2020-09-25', '', '21850402'),
('319829550', '319829550', '2020-09-22', '', '02950-3'),
('319830271', '319830271', '2020-09-25', '', '08710-2'),
('319836556', '319836556', '2020-10-16', '', '021880404'),
('319845277', '319845277', '2020-10-04', '', '129492014'),
('319845284', '319845284', '2020-09-26', '', '13493-4'),
('319845357', '319845357', '2020-10-04', '', '12851-9'),
('319855930', '319855930', '2020-10-19', '', '118720502'),
('319855932', '319855932', '2020-10-04', '', '15352-2'),
('319855975', '319855975', '2020-10-04', '', '14760-1'),
('319895448', '319895448', '2020-10-19', '', '15673-0'),
('319907239', '319907239', '2020-10-19', '', '1311142008'),
('319907240', '319907240', '2020-10-26', '', '10974-3'),
('319917184', '319917184', '2020-11-06', '', '09770-7'),
('320022062', '319917245', '2020-11-29', '', '09254-7'),
('319922327', '319922327', '2020-11-06', '', '1310382016'),
('319922328', '319922328', '2020-11-26', '', 'OCTO501004-4'),
('319922329', '319922329', '2020-11-11', '', '13789-0'),
('319924842', '319924842', '2020-10-19', '', '15331-1'),
('319927164', '319927164', '2020-11-11', '', '14063-5'),
('319933308', '319933308', '2020-10-26', '', '032720504'),
('319936672', '319936672', '2020-11-05', '', 'OCTO512005-5'),
('319941576', '319941576', '2020-11-05', '', '032650503'),
('319964155', '319964155', '2020-11-29', '', '119222017'),
('319964162', '319964162', '2020-11-11', '', '119232016'),
('320087790', '319982867', '2020-12-10', '', '10732-9'),
('319983062', '319983062', '2020-11-11', '', '04727-6'),
('319984301', '319984301', '2020-11-06', '', '10783-0'),
('320017580', '319984785', '2020-11-11', '', '129502020'),
('320060857.4', '319984786', '2020-11-26', '', '1311252014'),
('319985874', '319985874', '2020-12-01', '', '13328-1'),
('320060857', '319986120', '2020-11-26', '', '10780-6'),
('320006879', '320006879', '2020-11-26', '', '10712-6'),
('320006880', '320006880', '2020-12-01', '', '10916-7'),
('320134185', '320006883', '2020-12-19', '', '1311162012'),
('320007054', '320007054', '2020-11-26', '', '15570-1'),
('320087790', '320014651', '2020-12-10', '', '021880404'),
('320014652', '320014652', '2020-12-27', '', '12034-4'),
('320092932', '320018922', '2020-12-06', '', '075520404'),
('320115730', '320019756', '2020-12-27', '', '011332504'),
('320121431', '320024152', '2020-12-27', '', '12978-2'),
('320134271', '320029666', '2020-12-19', '', '17793-8'),
('320042932', '320042932', '2020-12-19', '', '15325-5'),
('320127520', '320043022', '2020-12-19', '', '17746-8'),
('320147797', '320091200', '2020-12-29', '', '17190-1'),
('320127518', '320091202', '2020-12-19', '', '1311142007'),
('320092551', '320092551', '2020-12-29', '', '18038-3'),
('320110214', '320110214', '2020-12-29', '', 'OCTO511017-7'),
('320111091', '320111091', '2020-12-29', '', '21006-9'),
('320129826', '320129826', '2020-12-29', '', '13883-9');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_load`
--

CREATE TABLE `tb_load` (
  `rt_load` varchar(255) NOT NULL,
  `dt_load` date NOT NULL DEFAULT current_timestamp(),
  `produto` varchar(255) CHARACTER SET utf8 NOT NULL,
  `volume` int(10) NOT NULL,
  `nr_contentor` varchar(255) CHARACTER SET utf8 NOT NULL,
  `dt_uso` date NOT NULL,
  `status` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'CHEIO'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_load`
--

INSERT INTO `tb_load` (`rt_load`, `dt_load`, `produto`, `volume`, `nr_contentor`, `dt_uso`, `status`) VALUES
('319081342', '2020-02-09', 'EC 6356A', 1500, '14215-9', '2020-07-19', 'DEVOLVIDO'),
('319118601', '2020-01-04', 'DORF OG 801D', 5000, '23286-3', '2020-01-25', 'DEVOLVIDO'),
('319196335', '2020-01-04', 'DISSOLVAN 12582', 5000, '00870904', '2020-01-16', 'DEVOLVIDO'),
('319196747', '2020-01-04', 'DISSOLVAN 12582', 5000, '1311082011', '2020-01-16', 'DEVOLVIDO'),
('319196748', '2020-06-18', 'DF 9101', 5000, '107560503', '2020-07-04', 'DEVOLVIDO'),
('319196749', '2020-06-23', 'DF 9101', 5000, '107850501', '2020-07-06', 'DEVOLVIDO'),
('319202548', '2020-01-04', 'ALCOOL ANIDRO', 5000, '1311222007', '2020-02-11', 'DEVOLVIDO'),
('319228225', '2020-01-26', 'EC 6356A', 1500, '20537-1', '2020-07-04', 'DEVOLVIDO'),
('319228226', '2020-01-26', 'EC 6356A', 1500, '12613-7', '2020-07-19', 'DEVOLVIDO'),
('319243485', '2020-01-22', 'NITRATO DE CÁLCIO', 5000, 'HMHU920534', '2020-02-04', 'DEVOLVIDO'),
('319243486', '2020-01-22', 'NITRATO DE CÁLCIO', 5000, 'HMHU920549', '2020-02-04', 'DEVOLVIDO'),
('319278790', '2020-02-07', 'MB 5075', 1500, '086381501', '2020-07-04', 'DEVOLVIDO'),
('319340646', '2020-03-09', 'NITRATO DE CÁLCIO', 5000, '096950503', '2020-03-12', 'DEVOLVIDO'),
('319417986', '2020-03-09', 'QUEROSENE', 1000, '13769-7', '2020-03-26', 'DEVOLVIDO'),
('319485583', '2020-03-29', 'NITRATO DE CÁLCIO', 5000, '086361006', '2020-04-07', 'DEVOLVIDO'),
('319485766', '2020-03-29', 'NITRATO DE CÁLCIO', 5000, '096660502', '2020-05-09', 'DEVOLVIDO'),
('319517521', '2020-04-14', 'QUEROSENE', 1000, '097201003', '2020-05-03', 'DEVOLVIDO'),
('319517522', '2020-04-14', 'QUEROSENE', 1000, '119222015', '2020-04-29', 'DEVOLVIDO'),
('319594537', '2020-06-30', 'DISSOLVAN 12582', 5000, '118350504', '2020-07-18', 'DEVOLVIDO'),
('319601601', '2020-07-27', 'DISSOLVAN 12582', 5000, '085630502', '2020-08-21', 'DEVOLVIDO'),
('319601602', '2020-09-21', 'DISSOLVAN 12582', 5000, '1311442007', '2020-10-08', 'DEVOLVIDO'),
('319606147', '2020-06-30', 'MB 5075', 1500, '086012503', '2020-11-30', 'DEVOLVIDO'),
('319606599', '2020-11-14', 'DISSOLVAN 12582', 5000, '1310692017', '2020-12-18', 'DEVOLVIDO'),
('319606600', '2020-10-03', 'DISSOLVAN 12582', 5000, '1310802004', '2020-11-11', 'DEVOLVIDO'),
('319609803', '2020-05-29', 'MB 5075', 1500, '086311506', '2020-07-18', 'DEVOLVIDO'),
('319610350', '2020-05-29', 'NITRATO DE CÁLCIO', 5000, '086361004', '2020-06-07', 'DEVOLVIDO'),
('319615637', '2020-06-18', 'ALCOOL ANIDRO', 5000, '1311142009', '2020-07-06', 'DEVOLVIDO'),
('319615638', '2020-06-18', 'ALCOOL ANIDRO', 5000, '1210152004', '2020-07-04', 'DEVOLVIDO'),
('319615639', '2020-06-18', 'ALCOOL ANIDRO', 5000, '16820-9', '2020-07-06', 'DEVOLVIDO'),
('319615640', '2020-06-18', 'ALCOOL ANIDRO', 5000, '17179-8', '2020-06-25', 'DEVOLVIDO'),
('319619008', '2020-06-02', 'TRIETILENOGLICOL', 1500, '12623-3', '2020-07-06', 'DEVOLVIDO'),
('319637206', '2020-06-18', 'NITRATO DE CÁLCIO', 5000, '096930503', '2020-07-04', 'DEVOLVIDO'),
('319645065', '2020-06-18', 'NITRATO DE CÁLCIO', 5000, '097040505', '2020-06-25', 'DEVOLVIDO'),
('319661985', '2020-06-23', 'FLOTREAT DF 13730', 5000, '022033205', '2020-07-11', 'DEVOLVIDO'),
('319661986', '2020-06-23', 'FLOTREAT DF 13730', 5000, 'OCTO501007', '2020-08-21', 'DEVOLVIDO'),
('319666563', '2020-06-30', 'DF 9101', 5000, '12316-3', '2020-07-26', 'DEVOLVIDO'),
('319667771', '2020-07-03', 'ÁLCOOL ANIDRO', 5000, '10964-6', '2020-07-11', 'DEVOLVIDO'),
('319667810', '2020-07-13', 'FLOTREAT DF 13730', 5000, '021900404', '2020-08-30', 'DEVOLVIDO'),
('319667825', '2020-06-30', 'QUEROSENE', 1000, '17213-7', '0000-00-00', 'CHEIO'),
('319674516', '2020-07-03', 'DORF OG 801D', 5000, '23286-3', '2020-07-18', 'DEVOLVIDO'),
('319680467', '2020-07-03', 'ÁLCOOL ANIDRO', 5000, '1311102015', '2020-07-11', 'DEVOLVIDO'),
('319680471', '2020-07-22', 'DF 9101', 5000, '13685-4', '2020-08-03', 'DEVOLVIDO'),
('319690039', '2020-07-03', 'ALCOOL ANIDRO', 5000, '108100501', '2020-07-18', 'DEVOLVIDO'),
('319690041', '2020-07-03', 'ALCOOL ANIDRO', 5000, '1311171010', '2020-07-19', 'DEVOLVIDO'),
('319690802', '2020-07-07', 'ÁLCOOL ANIDRO', 5000, 'PPBR0003', '2020-08-03', 'DEVOLVIDO'),
('319700146', '2020-07-13', 'NITRATO DE CÁLCIO', 5000, '0870909', '2020-07-19', 'DEVOLVIDO'),
('319700150', '2020-07-13', 'EC 6356A', 1500, '15738-8', '2020-08-03', 'DEVOLVIDO'),
('319700245', '2020-07-13', 'EC 6356A', 1500, '17618-8', '2020-07-26', 'DEVOLVIDO'),
('319700251', '2020-07-13', 'EC 6356A', 1500, '20494-2', '0000-00-00', 'CHEIO'),
('319705625', '2020-07-13', 'ALCOOL ANIDRO', 5000, '10984-9', '2020-07-16', 'DEVOLVIDO'),
('319707768', '2020-07-18', 'ALCOOL ANIDRO', 5000, '1311162012', '2020-07-26', 'DEVOLVIDO'),
('319707771', '2020-07-27', 'ALCOOL ANIDRO', 5000, '16960-2', '2020-08-16', 'DEVOLVIDO'),
('319707773', '2020-07-18', 'ALCOOL ANIDRO', 5000, '17523-0', '2020-07-26', 'DEVOLVIDO'),
('319707800', '2020-07-22', 'ALCOOL ANIDRO', 5000, '096850502', '2020-08-05', 'DEVOLVIDO'),
('319712263', '2020-07-27', 'ALCOOL ANIDRO', 5000, '129502008', '2020-08-26', 'DEVOLVIDO'),
('319712264', '2020-07-18', 'ALCOOL ANIDRO', 5000, '021940402', '2020-08-03', 'DEVOLVIDO'),
('319722557', '2020-07-22', 'NITRATO DE CÁLCIO', 5000, '085600505', '2020-08-03', 'DEVOLVIDO'),
('319722559', '2020-08-07', 'NITRATO DE CÁLCIO', 5000, '097040503', '2020-08-26', 'DEVOLVIDO'),
('319733195', '2020-07-27', 'ALCOOL ANIDRO', 5000, '10926-5', '2020-08-21', 'DEVOLVIDO'),
('319733310', '2020-07-27', 'ALCOOL ANIDRO', 5000, '032680505', '2020-08-05', 'DEVOLVIDO'),
('319733312', '2020-08-03', 'ALCOOL ANIDRO', 5000, '17175-7', '2020-08-26', 'DEVOLVIDO'),
('319733314', '2020-08-03', 'ALCOOL ANIDRO', 5000, 'OCTO507005-5', '2020-08-21', 'DEVOLVIDO'),
('319748189', '2020-08-03', 'DF 9101', 5000, '09599-9', '2020-08-16', 'DEVOLVIDO'),
('319748194', '2020-09-07', 'TRIETILENOGLICOL', 1500, '13281-0', '2020-09-22', 'DEVOLVIDO'),
('319750954', '2020-09-08', 'NITRATO DE CÁLCIO', 5000, '085620502', '2020-09-22', 'DEVOLVIDO'),
('319753349', '2020-08-02', 'EC 6356A', 1500, '12641-1', '0000-00-00', 'CHEIO'),
('319755404', '2020-08-07', 'EC 6356A', 1500, '03933-7', '2020-09-12', 'DEVOLVIDO'),
('319755426', '2020-08-07', 'EC 6356A', 1500, '12359-4', '2020-09-12', 'DEVOLVIDO'),
('319755427', '2020-08-07', 'EC 6356A', 1500, '14046-5', '2020-09-25', 'DEVOLVIDO'),
('319755428', '2020-08-07', 'EC 6356A', 1500, '20512-8', '2020-08-09', 'DEVOLVIDO'),
('319762246', '2020-08-07', 'DF 9101', 5000, '07844-5', '2020-08-21', 'DEVOLVIDO'),
('319762247', '2020-08-07', 'DF 9101', 5000, '06816-6', '2020-08-21', 'DEVOLVIDO'),
('319762249', '2020-08-07', 'EC 6356A', 1500, '13605-0', '2020-09-22', 'DEVOLVIDO'),
('319762253', '2020-08-07', 'EC 6356A', 1500, '05009-3', '2020-09-15', 'DEVOLVIDO'),
('319763072', '2020-08-20', 'ÁLCOOL ANIDRO', 5000, '17523-0', '2020-08-30', 'DEVOLVIDO'),
('319763272', '2020-08-20', 'ÁLCOOL ANIDRO', 5000, '011332501', '2020-08-30', 'DEVOLVIDO'),
('319768034', '2020-09-06', 'TRIETILENOGLICOL', 1500, '11510-4', '2020-09-22', 'DEVOLVIDO'),
('319768155', '2020-08-24', 'ALCOOL ANIDRO', 5000, 'OCTO507009-9', '2020-09-12', 'DEVOLVIDO'),
('319768158', '2020-08-24', 'ALCOOL ANIDRO', 5000, '1311222010', '2020-09-22', 'DEVOLVIDO'),
('319768161', '2020-08-24', 'ALCOOL', 5000, '10932-0', '2020-09-22', 'DEVOLVIDO'),
('319777908', '2020-08-24', 'DF 9101', 5000, '09770-7', '2020-09-10', 'DEVOLVIDO'),
('319778916', '2020-08-20', 'ALCOOL ANIDRO', 5000, '032670503', '2020-09-10', 'DEVOLVIDO'),
('319780557', '2020-08-24', 'ALCOOL ANIDRO', 5000, 'OCTO507002-2', '2020-09-22', 'DEVOLVIDO'),
('319780671', '2020-08-24', 'DF 9101', 5000, '09177-8', '2020-09-12', 'DEVOLVIDO'),
('319783687', '2020-08-24', 'FLOTREAT DF 13730', 5000, 'OCTO501004-4', '2020-09-10', 'DEVOLVIDO'),
('319799389', '2020-09-06', 'FLOTREAT DF 13730', 5000, '022033231', '2020-09-22', 'DEVOLVIDO'),
('319805575', '2020-09-06', 'DF 9101', 5000, '09768-2', '2020-09-22', 'DEVOLVIDO'),
('319818023', '2020-09-21', 'ALCOOL ANIDRO', 5000, '118750503', '2020-10-16', 'DEVOLVIDO'),
('319818024', '2020-09-08', 'ALCOOL ANIDRO', 5000, '032720502', '2020-10-04', 'DEVOLVIDO'),
('319818125', '2020-09-21', 'ALCOOL ANIDRO', 5000, '17500-3', '2020-10-16', 'DEVOLVIDO'),
('319818126', '2020-09-08', 'ALCOOL ANIDRO', 5000, '118750504', '2020-09-25', 'DEVOLVIDO'),
('319818127', '2020-09-08', 'ALCOOL ANIDRO', 5000, 'OCTO512008-8', '2020-09-26', 'DEVOLVIDO'),
('319818266', '2020-09-08', 'DF 9101', 5000, '08178-1', '2020-09-22', 'DEVOLVIDO'),
('319828934', '2020-09-08', 'FLOTREAT DF 13730', 5000, '21850402', '2020-09-25', 'DEVOLVIDO'),
('319829550', '2020-09-07', 'DF 9101', 5000, '02950-3', '2020-09-22', 'DEVOLVIDO'),
('319830271', '2020-09-07', 'DF 9101', 5000, '08710-2', '2020-09-25', 'DEVOLVIDO'),
('319836556', '2020-09-21', 'FLOTREAT DF 13730', 5000, '021880404', '2020-10-16', 'DEVOLVIDO'),
('319845277', '2020-09-22', 'ALCOOL ANIDRO', 5000, '129492014', '2020-10-04', 'DEVOLVIDO'),
('319845284', '2020-09-21', 'DF 9101', 5000, '13493-4', '2020-09-26', 'DEVOLVIDO'),
('319845357', '2020-09-22', 'TRIETILENOGLICOL', 1500, '12851-9', '2020-10-04', 'DEVOLVIDO'),
('319855930', '2020-09-22', 'ALCOOL ANIDRO', 5000, '118720502', '2020-10-19', 'DEVOLVIDO'),
('319855932', '2020-09-22', 'NITRATO DE CÁCIO', 5000, '15352-2', '2020-10-04', 'DEVOLVIDO'),
('319855975', '2020-09-22', 'DF 9101', 5000, '14760-1', '2020-10-04', 'DEVOLVIDO'),
('319895448', '2020-10-03', 'DF 9101', 5000, '15673-0', '2020-10-19', 'DEVOLVIDO'),
('319907239', '2020-10-03', 'ALCOOL ANIDRO', 5000, '1311142008', '2020-10-19', 'DEVOLVIDO'),
('319907240', '2020-10-15', 'ALCOOL ANIDRO', 5000, '10974-3', '2020-10-26', 'DEVOLVIDO'),
('319917184', '2020-11-05', 'DF 9101', 5000, '09770-7', '2020-11-06', 'DEVOLVIDO'),
('319917245', '2020-11-05', 'DF 9101', 5000, '09254-7', '2020-11-29', 'DEVOLVIDO'),
('319922327', '2020-10-23', 'FLOTREAT DF 13730', 5000, '1310382016', '2020-11-06', 'DEVOLVIDO'),
('319922328', '2020-11-05', 'FLOTREAT DF 13730', 5000, 'OCTO501004-4', '2020-11-26', 'DEVOLVIDO'),
('319922329', '2020-11-04', 'DF 9101', 5000, '13789-0', '2020-11-11', 'DEVOLVIDO'),
('319924842', '2020-10-11', 'NITRATO DE CÁLCIO', 5000, '15331-1', '2020-10-19', 'DEVOLVIDO'),
('319927164', '2020-10-15', 'SCAL 16817A', 1500, '14063-5', '2020-11-11', 'DEVOLVIDO'),
('319933308', '2020-10-15', 'ALCOOL ANIDRO', 5000, '032720504', '2020-10-26', 'DEVOLVIDO'),
('319936672', '2020-10-15', 'ALCOOL ANIDRO', 5000, 'OCTO512005-5', '2020-11-05', 'DEVOLVIDO'),
('319941576', '2020-10-18', 'ALCOOL ANIDRO', 5000, '032650503', '2020-11-05', 'DEVOLVIDO'),
('319964155', '2020-11-05', 'QUEROSENE', 1000, '119222017', '2020-11-29', 'DEVOLVIDO'),
('319964162', '2020-11-05', 'QUEROSENE', 1000, '119232016', '2020-11-11', 'DEVOLVIDO'),
('319982867', '2020-11-05', 'ALCOOL ANIDRO', 5000, '10732-9', '2020-11-25', 'DEVOLVIDO'),
('319982868', '2020-11-05', 'ALCOOL ANIDRO', 5000, '17491-6', '0000-00-00', 'CHEIO'),
('319983062', '2020-11-04', 'TRIETILENOGLICOL', 1500, '04727-6', '2020-11-11', 'DEVOLVIDO'),
('319984301', '2020-11-05', 'ÁLCOOL ANIDRO', 5000, '10783-0', '2020-11-06', 'DEVOLVIDO'),
('319984785', '2020-11-04', 'ÁLCOOL ANIDRO', 5000, '129502020', '2020-11-11', 'DEVOLVIDO'),
('319984786', '2020-11-04', 'ÁLCOOL ANIDRO', 5000, '1311252014', '2020-11-26', 'DEVOLVIDO'),
('319985874', '2020-11-07', 'DF 9101', 5000, '13328-1', '2020-12-01', 'DEVOLVIDO'),
('319986120', '2020-11-05', 'ALCOOL ANIDRO', 5000, '10780-6', '2020-11-26', 'DEVOLVIDO'),
('320006879', '2020-11-14', 'ÁLCOOL ANIDRO', 5000, '10712-6', '2020-11-26', 'DEVOLVIDO'),
('320006880', '2020-11-22', 'ÁLCOOL ANIDRO', 5000, '10916-7', '2020-12-01', 'DEVOLVIDO'),
('320006883', '2020-11-22', 'ÁLCOOL ANIDRO', 5000, '1311162012', '2020-12-18', 'DEVOLVIDO'),
('320007054', '2020-11-07', 'SCAL 16817A', 1500, '15570-1', '2020-11-26', 'DEVOLVIDO'),
('320014650', '2020-11-14', 'FLOTREAT DF 13730', 5000, '119250302', '0000-00-00', 'CHEIO'),
('320014651', '2020-11-14', 'FLOTREAT DF 13730', 5000, '021880404', '2020-11-28', 'DEVOLVIDO'),
('320014652', '2020-11-30', 'DF 9101', 5000, '12034-4', '2020-12-01', 'DEVOLVIDO'),
('320018922', '2020-11-22', 'ÁLCOOL ANIDRO', 5000, '075520404', '2020-12-01', 'DEVOLVIDO'),
('320019756', '2020-11-29', 'ÁLCOOL ANIDRO', 5000, '011332504', '2020-12-27', 'DEVOLVIDO'),
('320024152', '2020-11-22', 'TRIETILENOGLICOL', 1500, '12978-2', '2020-12-14', 'DEVOLVIDO'),
('320029332', '2020-11-29', 'ÁLCOOL ANIDRO', 5000, '10920,8', '0000-00-00', 'CHEIO'),
('320029355', '2020-11-30', 'FLOTREAT DF 13730', 5000, '1310902003', '0000-00-00', 'CHEIO'),
('320029666', '2020-11-22', 'SCAL 16817A', 1500, '17793-8', '2020-12-09', 'DEVOLVIDO'),
('320029668', '2020-11-29', 'ÁLCOOL ANIDRO', 5000, '10686-8', '0000-00-00', 'CHEIO'),
('320029669', '2020-11-30', 'DF 9101', 5000, '13440-7', '0000-00-00', 'CHEIO'),
('320042932', '2020-11-22', 'NITRATO DE CÁLCIO', 5000, '15325-5', '2020-12-14', 'DEVOLVIDO'),
('320043020', '2020-11-22', 'QUEROSENE', 1000, '13769-7', '0000-00-00', 'CHEIO'),
('320043021', '2020-11-22', 'QUEROSENE', 1000, '13783-4', '0000-00-00', 'CHEIO'),
('320043022', '2020-11-22', 'TRIETILENOGLICOL', 1500, '17746-8', '2020-12-14', 'DEVOLVIDO'),
('320091200', '2020-12-06', 'ÁLCOOL ANIDRO', 5000, '17190-1', '2020-12-18', 'DEVOLVIDO'),
('320091202', '2020-12-06', 'ÁLCOOL ANIDRO', 5000, '1311142007', '2020-12-18', 'DEVOLVIDO'),
('320092548', '2020-12-16', 'SCAL 16817A', 1500, '17963-9', '2020-12-20', 'VAZIO'),
('320092551', '2020-12-23', 'SCAL 16817A', 1500, '18038-3', '2020-12-29', 'DEVOLVIDO'),
('320092820', '2020-12-16', 'DF 9101', 5000, '15449-6', '2020-12-20', 'VAZIO'),
('320093604', '2020-12-17', 'FLOTREAT DF 13730', 5000, '02182040-1', '0000-00-00', 'CHEIO'),
('320110214', '2020-12-23', 'ÁLCOOL ANIDRO', 5000, 'OCTO511017-7', '2020-12-29', 'DEVOLVIDO'),
('320111091', '2020-12-23', 'TRIETILENOGLICOL', 1500, '21006-9', '2020-12-29', 'DEVOLVIDO'),
('320129826', '2020-12-23', 'DF 9101', 5000, '13883-9', '2020-12-29', 'DEVOLVIDO'),
('320153812', '2020-12-20', 'ÁLCOOL ANIDRO', 5000, '10737-8', '0000-00-00', 'CHEIO'),
('320153812.1', '2020-12-20', 'ÁLCOOL ANIDRO', 5000, '17495-7', '0000-00-00', 'CHEIO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_produto`
--

CREATE TABLE `tb_produto` (
  `idProduto` int(11) NOT NULL,
  `nome_produto` varchar(255) CHARACTER SET utf8 NOT NULL,
  `funcao` varchar(255) NOT NULL,
  `aplicavel` varchar(255) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_produto`
--

INSERT INTO `tb_produto` (`idProduto`, `nome_produto`, `funcao`, `aplicavel`) VALUES
(11666667, 'ALCOOL ANIDRO', 'INIBIDOR DE HIDRATO', 'SIM'),
(12473385, 'DF 9101', 'ANTIESPUMANTE', 'SIM'),
(11452431, 'DISSOLVAN 12582', 'DESEMULSIFICANTE TOP SIDE', 'SIM'),
(12190437, 'DORF OG 801D', 'ANTIESPUMANTE', 'NÃO'),
(11655196, 'EC 6356A', 'ANTINCRUSTANTE', 'NÃO'),
(11767200, 'FLOTREAT DF 13730', 'DESEMULSIFICANTE SUB SEA', 'SIM'),
(11222824, 'MB 5075', 'BIOCIDA DE CHOQUE', 'NÃO'),
(11983962, 'NITRATO DE CALCIO', 'BIOREDUTOR DE BACTÉRIA', 'SIM'),
(0, 'OR 6012', 'SEQUESTRANTE DE OXIGÊNIO', 'SIM'),
(10965405, 'QUEROSENE', 'SOLVENTE LIMPEZA', 'SIM'),
(11655196, 'SCAL 16817A', 'ANTINCRUSTANTE', 'SIM'),
(11789993, 'TRIETILENOGLICOL', 'DESIDRANTE DE GÁS', 'SIM');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_backload`
--
ALTER TABLE `tb_backload`
  ADD UNIQUE KEY `rt_load_back` (`rt_load_back`);

--
-- Índices para tabela `tb_load`
--
ALTER TABLE `tb_load`
  ADD PRIMARY KEY (`rt_load`(20)) USING BTREE;

--
-- Índices para tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  ADD PRIMARY KEY (`nome_produto`);
--
-- Banco de dados: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"controlechave\",\"table\":\"keys\"},{\"db\":\"controlechave\",\"table\":\"users\"},{\"db\":\"controlechave\",\"table\":\"sequelizemeta\"},{\"db\":\"rhesus\",\"table\":\"users\"},{\"db\":\"bd_entregalogo\",\"table\":\"users\"},{\"db\":\"db_carga\",\"table\":\"tb_backload\"},{\"db\":\"db_carga\",\"table\":\"tb_load\"},{\"db\":\"db_carga\",\"table\":\"tb_produto\"},{\"db\":\"db_carga\",\"table\":\"produto\"},{\"db\":\"carga\",\"table\":\"produto\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

--
-- Extraindo dados da tabela `pma__relation`
--

INSERT INTO `pma__relation` (`master_db`, `master_table`, `master_field`, `foreign_db`, `foreign_table`, `foreign_field`) VALUES
('db_carga', 'tb_load', 'produto', 'db_carga', 'tb_produto', 'nome_produto'),
('db_carga', 'tb_load', 'rt_load', 'db_carga', 'tb_backload', 'rt_load_back');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('db_carga', 'tb_backload', 'rt_backload'),
('db_carga', 'tb_load', 'rt_load');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- Extraindo dados da tabela `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'db_carga', 'tb_backload', '{\"sorted_col\":\"`rt_load_back` ASC\"}', '2021-01-04 01:26:03'),
('root', 'db_carga', 'tb_load', '{\"sorted_col\":\"`rt_load` ASC\"}', '2021-01-04 13:26:59'),
('root', 'db_carga', 'tb_produto', '{\"CREATE_TIME\":\"2020-11-25 16:39:00\"}', '2020-11-26 14:11:37'),
('root', 'rhesus', 'users', '{\"CREATE_TIME\":\"2021-05-26 20:31:00\",\"col_order\":[0,1,2,3,4,5,6,7,8],\"col_visib\":[1,1,1,1,1,1,1,1,1]}', '2021-06-01 22:19:34');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2021-06-12 13:37:11', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"pt\",\"NavigationWidth\":399}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Índices para tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Índices para tabela `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Índices para tabela `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Índices para tabela `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Índices para tabela `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Índices para tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Índices para tabela `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Índices para tabela `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Índices para tabela `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Índices para tabela `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Índices para tabela `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Índices para tabela `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Índices para tabela `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Banco de dados: `rhesus`
--
CREATE DATABASE IF NOT EXISTS `rhesus` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `rhesus`;

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
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `profissao` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `nome`, `senha`, `profissao`, `bairro`, `cidade`, `telefone`, `createdAt`, `updatedAt`) VALUES
(5, 'PEDRO', 'cdsgf', 'Jornalista', 'Ilha do Frade', 'Vitoria', '27992234563', '2021-05-26 23:48:44', '2021-05-27 00:18:02'),
(18, 'Mateus', 'Dnzjs', 'Designer', 'Praia da Costa', 'Vila Velha', '27980235678', '2021-05-28 23:48:09', '2021-05-28 23:48:09'),
(19, 'Joao', 'Bzjsj', 'Cozinheiro', 'Santa Helena', 'Vitória', '27999239821', '2021-05-28 23:53:52', '2021-05-28 23:53:52'),
(20, 'Paula', 'njdkdk', 'Artesã', 'Nova Almeida', 'Serra', '27880018923', '2021-05-29 00:22:15', '2021-05-29 00:22:15'),
(21, 'Carlos', 'bdjsj', 'Pipoqueiro', 'Maria Ortiz', 'Vitória', '2723271243', '2021-05-29 00:30:18', '2021-05-29 00:30:18'),
(32, 'Ricardo', 'hjgh', 'Fisioterapeuta', 'Santa Luzia', 'Vitória', '27989027866', '2021-05-29 02:29:59', '2021-05-29 02:29:59'),
(51, 'Victor', '123', 'Jornalista', 'Praia do Canto', 'Vitória', '27988009988', '2021-06-04 22:03:10', '2021-06-04 22:03:10');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
--
-- Banco de dados: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
