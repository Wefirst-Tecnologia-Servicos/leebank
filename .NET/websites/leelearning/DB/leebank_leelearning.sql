-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Tempo de geração: 24-Fev-2023 às 16:32
-- Versão do servidor: 5.7.23-23
-- versão do PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `leebank_leelearning`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `article`
--

CREATE TABLE `article` (
  `articleid` int(11) NOT NULL,
  `title` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(155) COLLATE utf8_unicode_ci NOT NULL,
  `theme` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(155) COLLATE utf8_unicode_ci NOT NULL,
  `articleDate` date NOT NULL,
  `star` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `author` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `createdby` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifiedby` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedon` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `article`
--

INSERT INTO `article` (`articleid`, `title`, `subtitle`, `theme`, `content`, `image`, `articleDate`, `star`, `author`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
(1, 'Artigo de teste', 'Artigo para testar as funções do site', 'Saúde Financeira', '            <div class=\"article__paragraph\">\r\n                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore\r\n                    et\r\n                    dolore magna aliqua. Proin libero nunc consequat interdum varius sit amet mattis vulputate. Mi\r\n                    bibendum\r\n                    neque egestas congue quisque egestas. Ultrices neque ornare aenean euismod elementum. Facilisis leo\r\n                    vel\r\n                    fringilla est ullamcorper.</p>\r\n                <p>Condimentum lacinia quis vel eros donec. Lobortis feugiat vivamus at augue eget arcu. Egestas purus\r\n                    viverra accumsan in nisl nisi scelerisque. Dolor sit amet consectetur adipiscing. Vel turpis nunc\r\n                    eget\r\n                    lorem dolor sed viverra ipsum nunc. Sed risus pretium quam vulputate.</p>\r\n                <p>Cursus mattis molestie a iaculis at erat. Lacus sed viverra tellus in hac habitasse platea dictumst.\r\n                    In\r\n                    est ante in nibh mauris cursus mattis molestie. Feugiat nibh sed pulvinar proin gravida hendrerit\r\n                    lectus.</p>\r\n            </div>\r\n            <div class=\"article__paragraph\">\r\n                <h3>Lorem ipsum dolor sit amet</h3>\r\n                <p>Quis auctor elit sed vulputate. Quis auctor elit sed vulputate mi sit amet mauris commodo. Magna\r\n                    etiam\r\n                    tempor orci eu lobortis elementum nibh tellus. Nisi quis eleifend quam adipiscing. Est ultricies\r\n                    integer\r\n                    quis auctor elit. Mauris ultrices eros in cursus turpis massa tincidunt dui. Nulla facilisi etiam\r\n                    dignissim diam quis enim lobortis. Magna sit amet purus gravida quis blandit turpis cursus in.</p>\r\n                <p>Cras semper auctor neque vitae tempus quam pellentesque nec. Sapien pellentesque habitant morbi\r\n                    tristique\r\n                    senectus et. Enim diam vulputate ut pharetra sit amet aliquam id. Dolor magna eget est lorem ipsum\r\n                    dolor\r\n                    sit. Vel pretium lectus quam id. Eros in cursus turpis massa. Id volutpat lacus laoreet non. Non\r\n                    diam\r\n                    phasellus vestibulum lorem sed risus ultricies.</p>\r\n                <p>Dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Suspendisse ultrices gravida\r\n                    dictum fusce. A diam sollicitudin tempor id eu nisl nunc mi ipsum. Mollis nunc sed id semper.</p></div><div class=\"article__apostrophe\"><h5>Egestas purus viverra accumsan in nisl nisi scelerisque. Dolor sit amet consectetur adipiscing. Vel\r\n                    turpis nunc eget lorem dolor sed viverra ipsum nunc. Sed risus pretium quam vulputate.</h5></div>\r\n            <div class=\"article__paragraph article__paragraph--last\"><h3>Euismod nisi porta lorem mollis.</h3><p>Dui vivamus arcu felis bibendum ut tristique. Condimentum lacinia quis vel eros donec ac odio.\r\n                    Dignissim\r\n                    enim sit amet venenatis. Consectetur a erat nam at. Odio pellentesque diam volutpat commodo. Et\r\n                    egestas\r\n                    quis ipsum suspendisse ultrices gravida dictum fusce ut. Adipiscing elit duis tristique sollicitudin\r\n                    nibh. Vitae turpis massa sed elementum tempus egestas sed sed. Tortor posuere ac ut consequat\r\n                    semper.\r\n                    Sagittis aliquam malesuada bibendum arcu vitae elementum curabitur vitae nunc.</p></div>', 'no-picture.jpg', '2022-12-12', '0', 'Lucca Duarte Batista', 'Lucca810', '2022-12-19 03:00:00', 'Lucca810', '2023-01-27'),
(2, 'Artigo 2 Mudado 21', 'Artigo de teste dos card 2', 'Saúde Financeira', '<p>Welcome to TinyMCE! &nbsp;&nbsp;</p>', 'artigo2.jpg', '2023-01-30', '1', 'Lucca Duarte Batista', 'Lucca810', '2022-12-19 03:00:00', '35885944857', '2023-02-16'),
(3, 'Artigo 3', 'Texto para teste 3', 'Empreendedorismo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.', 'no-picture.jpg', '2022-12-18', '0', 'Lucca Duarte Batista', 'Lucca810', '2022-12-19 03:00:00', NULL, NULL),
(4, 'Artigo 4', 'texto para teste 4', 'Tema', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eget ligula eu lectus lobortis condimentum. Aliquam nonummy auctor massa. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Nulla at risus. Quisque purus magna, auctor et, sagittis ac, posuere eu, lectus. Nam mattis, felis ut adipiscing.', 'destaques.jpg', '2022-12-20', '0', 'Lucca Duarte Batista', 'Lucca810', '2022-12-19 03:00:00', NULL, NULL),
(5, 'Teste alterado', 'teste', 'teste', '<h2>Alterado alterado</h2>\n<h2>Alterado alterado</h2>\n<p><strong>Alterado alterado</strong></p>\n<p><em>Alterado alterado</em></p>\n<p><em>Alterado alterado</em></p>\n<p>Alterado alterado</p>\n<p>&nbsp;</p>', 'no-picture.jpg', '2023-01-20', '1', 'Daniel', 'sistema', '2023-01-20 19:30:01', 'sistema', '2023-02-03'),
(6, 'Finanças para leigos', 'finanças  2', 'finanças', '<p>testestestestestestes de paragrafo</p>\n<h2><span style=\"color: rgb(22, 145, 121);\">testestestestestestes de paragrafo</span></h2>\n<p>&nbsp;</p>\n<p><span style=\"color: rgb(22, 145, 121);\"><strong>testestestestestestes de paragrafo</strong></span></p>\n<p>&nbsp;</p>\n<p><span style=\"text-decoration: underline;\"><strong>testestestestestestes de paragrafo</strong></span></p>', 'no-picture.jpg', '1998-08-19', '0', 'Daniel', 'sistema', '2023-02-03 18:52:11', NULL, NULL),
(7, 'teste', 'teste', 'teste', '<p>Escreva o conte&uacute;do de seu artigo aqui! &nbsp;</p>', 'no-image.jpg', '2023-02-16', '0', 'teste', 'sistema', '2023-02-16 16:47:34', NULL, NULL),
(8, 'Dinheiro na terceira idade', 'Como gastar seu dinheiro acumulado', 'Dinheiro', '<p>Escreva o conte&uacute;do de seu artigo aqui! &nbsp;</p>', 'artigo8.jpg', '2022-08-17', '0', 'Daniel', '35885944857', '2023-02-17 19:10:18', '35885944857', '2023-02-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `articletopic`
--

CREATE TABLE `articletopic` (
  `articleid` int(11) NOT NULL,
  `topic` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `createdby` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `cratedon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedby` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedon` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `articletopic`
--

INSERT INTO `articletopic` (`articleid`, `topic`, `createdby`, `cratedon`, `modifiedby`, `modifiedon`) VALUES
(1, 'Investimentos', 'Lucca810', '2022-12-12 17:37:26', NULL, NULL),
(1, 'Saúde financeira', 'Lucca810', '2022-12-12 17:37:26', NULL, NULL),
(2, 'Saúde financeira', 'sistema', '2023-02-16 17:52:40', NULL, '2023-02-16'),
(3, 'Investimentos', 'Lucca810', '2022-12-19 16:51:30', NULL, NULL),
(4, 'Saúde financeira', 'Lucca810', '2022-12-19 16:51:30', NULL, NULL),
(5, 'Bolsa de valores', 'sistema', '2023-02-03 19:29:59', NULL, '2023-02-03'),
(5, 'Investimentos', 'sistema', '2023-02-03 19:29:59', NULL, '2023-02-03'),
(5, 'Saúde financeira', 'sistema', '2023-02-03 19:29:59', NULL, '2023-02-03'),
(6, 'Bolsa de valores', 'sistema', '2023-02-03 18:52:11', NULL, NULL),
(6, 'Saúde financeira', 'sistema', '2023-02-03 18:52:11', NULL, NULL),
(7, 'Bolsa de valores', 'sistema', '2023-02-16 16:47:34', NULL, NULL),
(8, 'Bolsa de valores', 'sistema', '2023-02-17 19:14:15', NULL, '2023-02-17'),
(8, 'Investimentos', 'sistema', '2023-02-17 19:14:15', NULL, '2023-02-17'),
(8, 'Saúde financeira', 'sistema', '2023-02-17 19:14:15', NULL, '2023-02-17');

-- --------------------------------------------------------

--
-- Estrutura da tabela `person`
--

CREATE TABLE `person` (
  `personid` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `createdby` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedby` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedon` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `person`
--

INSERT INTO `person` (`personid`, `username`, `name`, `birthday`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
('35885944857', 'Lucca810', 'Lucca Duarte Batista', '0000-00-00', 'Lucca810', '2022-12-12 17:28:54', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `persongroup`
--

CREATE TABLE `persongroup` (
  `actualGroup` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `createdby` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedby` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedon` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `persongroup`
--

INSERT INTO `persongroup` (`actualGroup`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
('Administrador', 'Lucca810', '2022-12-12 17:24:56', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `persongroupperson`
--

CREATE TABLE `persongroupperson` (
  `personid` varchar(14) COLLATE utf8_unicode_ci NOT NULL,
  `actualGroup` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(155) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `createdby` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedby` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedon` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `persongroupperson`
--

INSERT INTO `persongroupperson` (`personid`, `actualGroup`, `status`, `picture`, `notes`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
('35885944857', 'Administrador', 'ATIVO', 'no-picture.jpg', 'Sou o adminstrador e desenvolvedor back-end da aplicação.', 'Lucca810', '2022-12-12 17:29:38', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `status`
--

CREATE TABLE `status` (
  `status` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `createdby` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedby` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedon` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `status`
--

INSERT INTO `status` (`status`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
('ATIVO', 'Lucca810', '2022-12-12 17:25:14', NULL, NULL),
('INATIVO', 'Lucca810', '2022-12-12 17:25:14', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `topic`
--

CREATE TABLE `topic` (
  `topic` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(155) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no-picture.jpg',
  `createdby` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedby` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedon` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `topic`
--

INSERT INTO `topic` (`topic`, `image`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
('Bolsa de valores', 'topico1.png', 'Lucca Duarte Batista', '2023-02-03 14:36:37', NULL, NULL),
('Investimentos', 'topico2.png', 'Lucca810', '2023-02-03 14:36:46', NULL, NULL),
('Saúde financeira', 'topico3.png', 'Lucca810', '2023-02-03 14:36:55', NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `user`
--

CREATE TABLE `user` (
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `createdby` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `createdon` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modifiedby` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `modifiedon` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `user`
--

INSERT INTO `user` (`username`, `password`, `createdby`, `createdon`, `modifiedby`, `modifiedon`) VALUES
('Lucca810', 'lucca8', 'Lucca810', '2022-12-12 17:24:28', NULL, NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`articleid`);

--
-- Índices para tabela `articletopic`
--
ALTER TABLE `articletopic`
  ADD PRIMARY KEY (`articleid`,`topic`),
  ADD KEY `fk_article_has_topic_topic1_idx` (`topic`),
  ADD KEY `fk_article_has_topic_article_idx` (`articleid`);

--
-- Índices para tabela `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`personid`),
  ADD KEY `fk_person_user1_idx` (`username`);

--
-- Índices para tabela `persongroup`
--
ALTER TABLE `persongroup`
  ADD PRIMARY KEY (`actualGroup`);

--
-- Índices para tabela `persongroupperson`
--
ALTER TABLE `persongroupperson`
  ADD PRIMARY KEY (`personid`,`actualGroup`),
  ADD KEY `fk_person_has_persongroup_persongroup1_idx` (`actualGroup`),
  ADD KEY `fk_person_has_persongroup_person1_idx` (`personid`),
  ADD KEY `fk_persongroupperson_status1_idx` (`status`);

--
-- Índices para tabela `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status`);

--
-- Índices para tabela `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`topic`);

--
-- Índices para tabela `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `articletopic`
--
ALTER TABLE `articletopic`
  ADD CONSTRAINT `fk_article_has_topic_article` FOREIGN KEY (`articleid`) REFERENCES `article` (`articleid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_article_has_topic_topic1` FOREIGN KEY (`topic`) REFERENCES `topic` (`topic`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `fk_person_user1` FOREIGN KEY (`username`) REFERENCES `user` (`username`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `persongroupperson`
--
ALTER TABLE `persongroupperson`
  ADD CONSTRAINT `fk_person_has_persongroup_person1` FOREIGN KEY (`personid`) REFERENCES `person` (`personid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_person_has_persongroup_persongroup1` FOREIGN KEY (`actualGroup`) REFERENCES `persongroup` (`actualGroup`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_persongroupperson_status1` FOREIGN KEY (`status`) REFERENCES `status` (`status`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
