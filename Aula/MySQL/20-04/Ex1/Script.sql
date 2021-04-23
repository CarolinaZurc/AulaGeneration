-- PRIMARY-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_funcionaries
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_funcionaries
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_funcionaries` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `db_funcionaries` ;

-- -----------------------------------------------------
-- Table `db_funcionaries`.`db_func`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_funcionaries`.`db_func` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(20) NOT NULL,
  `idade` BIGINT NULL DEFAULT NULL,
  `salario` BIGINT NULL DEFAULT NULL,
  `ativo` TINYINT(1) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

INSERT into db_funcionaries.db_func (nome, idade, salario, ativo)
values
("Alex", "33", "2100", true),
("Anna", "28", "3000", true),
("Felipe", "35", "3500", true),
("Natalia", "30", "1890", true),
("Vitor", "25", "1500", true),
("Bruno", "33", "1890", true),
("Julia", "31", "2000", true),
("Inacio", "29", "1700", true);

SELECT * FROM db_funcionaries.db_func;
SELECT * FROM db_funcionaries.db_func where salario > 2000;
SELECT * FROM db_funcionaries.db_func where salario < 2000;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
