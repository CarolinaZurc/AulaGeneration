-- MySQL Script generated by MySQL Workbench
-- Thu Apr 22 22:09:35 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema db_escola
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_escola
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_escola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `db_escola` ;

-- -----------------------------------------------------
-- Table `db_escola`.`tb_alunes`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_escola`.`tb_alunes` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `idade` BIGINT NOT NULL,
  `serie` VARCHAR(10) NOT NULL,
  `notas` DECIMAL(10,0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
AUTO_INCREMENT = 9
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;

insert into db_escola.tb_alunes (nome, idade, serie, notas)
values
("Ricardo", "15", "1 EM", "8"),
("Ana", "17", "3 EM", "6"),
("Leticia", "16", "3 EM", "7"),
("Luiza", "15", "2 EM", "4"),
("Isabel", "17", "3 EM", "10"),
("Tereza", "15", "1 EM", "10"),
("Felipe", "16", "2 EM", "7"),
("Jose", "15", "2 EM", "6");

select * from db_escola.tb_alunes;
select * from db_escola.tb_alunes where notas > 7;
select * from db_escola.tb_alunes where notas < 7;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
