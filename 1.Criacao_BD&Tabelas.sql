CREATE SCHEMA IF NOT EXISTS `projeto1_bd2`;

CREATE TABLE IF NOT EXISTS `projeto1_bd2`.`usuario` (
  `CPF` VARCHAR(11) NOT NULL,
  `Nome` VARCHAR(45) NOT NULL,
  `Telefone` VARCHAR(11) NOT NULL,
  `E-mail` VARCHAR(45) NOT NULL,
  `Data_Nascimento` DATE NOT NULL,
  PRIMARY KEY (`CPF`));
  
CREATE TABLE IF NOT EXISTS `projeto1_bd2`.`endereco` (
  `CPF_Usuario` VARCHAR(11) NOT NULL,
  `Cidade` VARCHAR(45) NOT NULL,
  `CEP` VARCHAR(8) NOT NULL,
  `UF` VARCHAR(2) NOT NULL,
  `Pais` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`CPF_Usuario`),
  FOREIGN KEY (`CPF_Usuario`) REFERENCES `projeto1_bd2`.`usuario` (`CPF`));
  
CREATE TABLE IF NOT EXISTS `projeto1_bd2`.`planos` (
  `Nome_Plano` VARCHAR(10) NOT NULL,
  `Preco` FLOAT NOT NULL,
  `Quant_Perfil` INT NOT NULL,
  `Download` TINYINT NOT NULL,
  PRIMARY KEY (`Nome_Plano`));

CREATE TABLE IF NOT EXISTS `projeto1_bd2`.`assinatura` (
  `Id_Usuario` VARCHAR(20) NOT NULL,
  `Senha` VARCHAR(10) NOT NULL,
  `CPF_Usuario` VARCHAR(11) NOT NULL,
  `Tipo_Plano` VARCHAR(10) NOT NULL,
  `Data_Assinatura` DATE NOT NULL,
  `Tipo_Pagamento` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`Id_Usuario`),
  FOREIGN KEY (`CPF_Usuario`) REFERENCES `projeto1_bd2`.`usuario` (`CPF`),
  FOREIGN KEY (`Tipo_Plano`) REFERENCES `projeto1_bd2`.`planos` (`Nome_Plano`));
  
CREATE TABLE IF NOT EXISTS `projeto1_bd2`.`perfil` (
  `Id_Perfil` INT NOT NULL AUTO_INCREMENT,
  `Usuario` VARCHAR(20) NOT NULL,
  `Nome` VARCHAR(15) NOT NULL,
  `Controle_Parental` TINYINT NOT NULL,
  PRIMARY KEY (`Id_Perfil`),
  FOREIGN KEY (`Usuario`) REFERENCES `projeto1_bd2`.`assinatura` (`Id_Usuario`));