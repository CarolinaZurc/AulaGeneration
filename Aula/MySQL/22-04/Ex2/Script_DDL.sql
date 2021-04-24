-- MySQL Script generated by MySQL Workbench
-- Sat Apr 24 16:04:27 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_pizzaria_legal
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_pizzaria_legal
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_pizzaria_legal` DEFAULT CHARACTER SET utf8 ;
USE `db_pizzaria_legal` ;

-- -----------------------------------------------------
-- Table `db_pizzaria_legal`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pizzaria_legal`.`tb_categoria` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `Salgada` TINYINT NULL,
  `Doce` TINYINT NULL,
  PRIMARY KEY (`id_categoria`),
  UNIQUE INDEX `id_categoria_UNIQUE` (`id_categoria` ASC) VISIBLE);

SELECT * FROM db_pizzaria_legal.tb_categoria;
INSERT INTO tb_categoria (nome, salgada, doce)
VALUES
("Pizza", 1, 0),
("Pizza", 1, 0),
("Pizza", 1, 0),
("Pizza", 1, 0),
("Pizza", 1, 0),
("Pizza", 0, 1);

-- -----------------------------------------------------
-- Table `db_pizzaria_legal`.`tb_pizza`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_pizzaria_legal`.`tb_pizza` (
  `id_pizza` INT NOT NULL AUTO_INCREMENT,
  `Nome` VARCHAR(45) NOT NULL,
  `Tamanho` VARCHAR(45) NOT NULL,
  `Ingredientes` VARCHAR(250) NOT NULL,
  `Borda_recheada` TINYINT NOT NULL,
  `Preco` INT NOT NULL,
  `fk_cat` INT NOT NULL,
  PRIMARY KEY (`id_pizza`, `fk_cat`),
  UNIQUE INDEX `id_pizza_UNIQUE` (`id_pizza` ASC) VISIBLE,
  INDEX `fk_tb_pizza_tb_categoria_idx` (`fk_cat` ASC) VISIBLE,
  CONSTRAINT `fk_tb_pizza_tb_categoria`
    FOREIGN KEY (`fk_cat`)
    REFERENCES `db_pizzaria_legal`.`tb_categoria` (`id_categoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

SELECT * FROM db_pizzaria_legal.tb_pizza;
INSERT INTO tb_pizza (nome, tamanho, ingredientes, borda_recheada, preco, fk_cat)
values 
("Calabresa", "G", "Calabresa fatiada, mussarela, cebola, molho de tomate, orégano e azeitonas", true, 30, 2),
("Quatro Queijos", "M", "Parmesão, provolone, requeijão cremoso, mussarela, molho de tomate, orégano e azeitonas", false, 42, 2),
("Siciliana", "G", "Champignon, palmito, bacon, mussarela, tomate, molho de tomate, orégano e azeitonas", true, 55, 2),
("Bacon", "M", "Bacon, tomate, cebola, mussarela, molho de tomate, orégano e azeitonas", true, 50, 2),
("Vegetariana", "G", "Brócolis, champignon, palmito, queijo fresco, mussarela, molho de tomate, orégano e azeitonas", false, 45, 2),
("Brigadeiro", "M", "Chocolate e granulado", false, 40, 6);

SELECT * FROM db_pizzaria_legal.tb_pizza;
SELECT * FROM db_pizzaria_legal.tb_pizza where preco > 45;
SELECT * FROM db_pizzaria_legal.tb_pizza where preco between 29 and 60;
SELECT * FROM db_pizzaria_legal.tb_pizza where Nome like "C%";
SELECT * FROM tb_pizza INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_pizza.fk_cat; 
SELECT * FROM tb_pizza INNER JOIN tb_categoria on tb_categoria.id_categoria = tb_pizza.fk_cat WHERE tb_categoria.doce;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
