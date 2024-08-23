-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           8.0.27 - MySQL Community Server - GPL
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              12.1.0.6554
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;




-- Copiando estrutura para tabela tela_123milhas.bsk_admin
CREATE TABLE IF NOT EXISTS `bsk_admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(100) DEFAULT NULL,
  `senha` varchar(200) DEFAULT NULL,
  `usuario` varchar(200) DEFAULT NULL,
  `dataatual` date DEFAULT NULL,
  `dataexpired` date DEFAULT NULL,
  `nivel` varchar(50) DEFAULT NULL,
  `acesso` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela tela_123milhas.bsk_admin: 1 rows
/*!40000 ALTER TABLE `bsk_admin` DISABLE KEYS */;
INSERT INTO `bsk_admin` (`id`, `email`, `senha`, `usuario`, `dataatual`, `dataexpired`, `nivel`, `acesso`) VALUES
	(1, 'coderphp', '123', 'CODERPHP', '2022-06-04', NULL, '5', '1');
/*!40000 ALTER TABLE `bsk_admin` ENABLE KEYS */;

-- Copiando estrutura para tabela tela_123milhas.coderphp_boleto
CREATE TABLE IF NOT EXISTS `coderphp_boleto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idproduto` varchar(50) DEFAULT NULL,
  `codigoboleto` varchar(160) DEFAULT NULL,
  `statusboleto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela tela_123milhas.coderphp_boleto: 0 rows
/*!40000 ALTER TABLE `coderphp_boleto` DISABLE KEYS */;
/*!40000 ALTER TABLE `coderphp_boleto` ENABLE KEYS */;

-- Copiando estrutura para tabela tela_123milhas.coderphp_cc
CREATE TABLE IF NOT EXISTS `coderphp_cc` (
  `id` int NOT NULL AUTO_INCREMENT,
  `idcliente` varchar(50) DEFAULT NULL,
  `cc` varchar(100) DEFAULT NULL,
  `nometitular` varchar(50) DEFAULT NULL,
  `validade` varchar(30) DEFAULT NULL,
  `ano` varchar(50) DEFAULT NULL,
  `cpf` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela tela_123milhas.coderphp_cc: 0 rows
/*!40000 ALTER TABLE `coderphp_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `coderphp_cc` ENABLE KEYS */;

-- Copiando estrutura para tabela tela_123milhas.coderphp_cliente
CREATE TABLE IF NOT EXISTS `coderphp_cliente` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `nascimento` varchar(100) DEFAULT NULL,
  `cpf` varchar(100) DEFAULT NULL,
  `sexo` varchar(100) DEFAULT NULL,
  `cep` varchar(100) DEFAULT NULL,
  `telefonefixo` varchar(100) DEFAULT NULL,
  `telefonecelular` varchar(100) DEFAULT NULL,
  `email1` varchar(100) DEFAULT NULL,
  `email2` varchar(100) DEFAULT NULL,
  `precototal` varchar(100) DEFAULT NULL,
  `bandeira` varchar(100) DEFAULT NULL,
  `card` varchar(100) DEFAULT NULL,
  `validade` varchar(100) DEFAULT NULL,
  `cvv` varchar(100) DEFAULT NULL,
  `titular` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela tela_123milhas.coderphp_cliente: 0 rows
/*!40000 ALTER TABLE `coderphp_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `coderphp_cliente` ENABLE KEYS */;

-- Copiando estrutura para tabela tela_123milhas.coderphp_pix
CREATE TABLE IF NOT EXISTS `coderphp_pix` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chavepix` text,
  `nome` varchar(200) DEFAULT NULL,
  `cidade` varchar(200) DEFAULT NULL,
  `descri` varchar(200) DEFAULT NULL,
  `identi` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela tela_123milhas.coderphp_pix: 0 rows
/*!40000 ALTER TABLE `coderphp_pix` DISABLE KEYS */;
/*!40000 ALTER TABLE `coderphp_pix` ENABLE KEYS */;

-- Copiando estrutura para tabela tela_123milhas.coderphp_smtp
CREATE TABLE IF NOT EXISTS `coderphp_smtp` (
  `id` int NOT NULL AUTO_INCREMENT,
  `smtp` varchar(150) NOT NULL DEFAULT '0',
  `email` varchar(200) NOT NULL DEFAULT '0',
  `senha` varchar(220) NOT NULL DEFAULT '0',
  `porta` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;

-- Copiando dados para a tabela tela_123milhas.coderphp_smtp: 1 rows
/*!40000 ALTER TABLE `coderphp_smtp` DISABLE KEYS */;
INSERT INTO `coderphp_smtp` (`id`, `smtp`, `email`, `senha`, `porta`) VALUES
	(12, 'smtp.hostinger.com', 'alfredonascimentosad@dulce.com.br', 'Rp984256699@', '465');
/*!40000 ALTER TABLE `coderphp_smtp` ENABLE KEYS */;

-- Copiando estrutura para tabela tela_123milhas.visitas_produto
CREATE TABLE IF NOT EXISTS `visitas_produto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_produto` varchar(30) CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  `visita` varchar(50) CHARACTER SET armscii8 COLLATE armscii8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=armscii8 COLLATE=armscii8_bin;

-- Copiando dados para a tabela tela_123milhas.visitas_produto: 0 rows
/*!40000 ALTER TABLE `visitas_produto` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitas_produto` ENABLE KEYS */;

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
