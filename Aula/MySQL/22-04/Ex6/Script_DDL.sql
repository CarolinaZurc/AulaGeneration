-- MySQL Script generated by MySQL Workbench
-- Sun Apr 25 16:47:54 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_cursoDaMinhaVida
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_cursoDaMinhaVida
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_cursoDaMinhaVida` DEFAULT CHARACTER SET utf8 ;
USE `db_cursoDaMinhaVida` ;

-- -----------------------------------------------------
-- Table `db_cursoDaMinhaVida`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cursoDaMinhaVida`.`tb_categoria` (
  `id_cat` INT NOT NULL AUTO_INCREMENT,
  `nivel_1` TINYINT NULL,
  `nivel_2` TINYINT NULL,
  `nivel_3` TINYINT NULL,
  PRIMARY KEY (`id_cat`),
  UNIQUE INDEX `category_id_UNIQUE` (`id_cat` ASC) VISIBLE);

SELECT * FROM db_cursoDaMinhaVida.tb_categoria;
INSERT INTO tb_categoria (nivel_1, nivel_2, nivel_3)
VALUES
(true, false, false),
(false, true, false),
(false, false, true);

-- -----------------------------------------------------
-- Table `db_cursoDaMinhaVida`.`tb_curso`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cursoDaMinhaVida`.`tb_curso` (
  `id_curso` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NULL,
  `basico` VARCHAR(45) NULL,
  `intermediario` VARCHAR(45) NULL,
  `profissionalizante` VARCHAR(45) NULL,
  `preco` DECIMAL(5,2) NULL,
  `fk_cat` INT NOT NULL,
  PRIMARY KEY (`id_curso`, `fk_cat`),
  UNIQUE INDEX `category_id_UNIQUE` (`id_curso` ASC) VISIBLE,
  INDEX `fk_tb_curso_tb_categoria_idx` (`fk_cat` ASC) VISIBLE,
  CONSTRAINT `fk_tb_curso_tb_categoria`
    FOREIGN KEY (`fk_cat`)
    REFERENCES `db_cursoDaMinhaVida`.`tb_categoria` (`id_cat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

SELECT * FROM db_cursoDaMinhaVida.tb_curso;
INSERT INTO tb_curso (nome, basico, intermediario, profissionalizante, preco, fk_cat)
VALUES
("Curso de inglês", "Não", "Não", "Sim", 400.00, 3),
("Curso de costura", "Não", "Não", "Sim", 250.00, 3),
("Curso de matemática", "Não", "Sim", "Não", 180.00, 2),
("Curso de Francês", "Não", "Não", "Sim", 350.00, 3),
("Curso de gastronomia", "Sim", "Não", "Não", 600.00, 1);

SELECT * FROM db_cursoDaMinhaVida.tb_curso;
SELECT * FROM db_cursoDaMinhaVida.tb_curso where preco > 50;
SELECT * FROM db_cursoDaMinhaVida.tb_curso where preco between 3 and 60;
SELECT * FROM db_cursoDaMinhaVida.tb_curso where nome like "J%";
SELECT * FROM tb_curso inner join tb_categoria on tb_categoria.id_cat = tb_curso.fk_cat;
SELECT * FROM tb_curso inner join tb_categoria on tb_categoria.id_cat = tb_curso.fk_cat where tb_categoria.nivel_2;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;