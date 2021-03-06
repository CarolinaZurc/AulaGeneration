-- MySQL Script generated by MySQL Workbench
-- Sun Apr 25 12:31:17 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_cidade_das_carnes
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_cidade_das_carnes
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_cidade_das_carnes` DEFAULT CHARACTER SET utf8 ;
USE `db_cidade_das_carnes` ;

-- -----------------------------------------------------
-- Table `db_cidade_das_carnes`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cidade_das_carnes`.`tb_categoria` (
  `id_cat` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `kg` DECIMAL(3,2) NULL,
  `preco` DECIMAL(4,2) NULL,
  PRIMARY KEY (`id_cat`),
  UNIQUE INDEX `category_id_UNIQUE` (`id_cat` ASC) VISIBLE);

SELECT * FROM db_cidade_das_carnes.tb_categoria;
INSERT into tb_categoria (nome, kg, preco)
VALUES
("Carne de boi", 1.00, 30.00),
("Carne de frango", 1.00, 20.00),
("Carne de soja", 1.00, 15.00);

-- -----------------------------------------------------
-- Table `db_cidade_das_carnes`.`tb_produtos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_cidade_das_carnes`.`tb_produtos` (
  `id_prod` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `carne_branca` TINYINT NULL,
  `carne_vermelha` TINYINT NULL,
  `carne_vegetariana` TINYINT NULL,
  `fk_cat` INT NOT NULL,
  PRIMARY KEY (`id_prod`, `fk_cat`),
  UNIQUE INDEX `id_prod_UNIQUE` (`id_prod` ASC) VISIBLE,
  INDEX `fk_tb_produtos_tb_categoria_idx` (`fk_cat` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produtos_tb_categoria`
    FOREIGN KEY (`fk_cat`)
    REFERENCES `db_cidade_das_carnes`.`tb_categoria` (`id_cat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

SELECT * FROM db_cidade_das_carnes.tb_produtos;
INSERT INTO tb_produtos (nome, carne_branca, carne_vermelha, carne_vegetariana, fk_cat)
VALUES
("Picanha", false, true, false, 1),
("Fraldinha", false, true, false, 1),
("Costela", false, true, false, 1),
("Coxinha da asa", true, false, false, 2),
("Coxa e sobrecoxa", true, false, false, 2),
("Carne de Soja", false, false, true, 3);

SELECT * FROM db_cidade_das_carnes.tb_produtos;
SELECT * FROM db_cidade_das_carnes.tb_categoria where preco > 50;
SELECT * FROM db_cidade_das_carnes.tb_categoria WHERE preco BETWEEN 3 AND 60;
SELECT * FROM db_cidade_das_carnes.tb_produtos WHERE nome LIKE "C%";
SELECT * FROM tb_produtos inner join tb_categoria on tb_categoria.id_cat = tb_produtos.fk_cat;
SELECT * FROM tb_produtos inner join tb_categoria on tb_categoria.id_cat = tb_produtos.fk_cat where tb_produtos.carne_vegetariana;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
