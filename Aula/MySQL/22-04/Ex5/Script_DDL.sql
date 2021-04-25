-- MySQL Script generated by MySQL Workbench
-- Sun Apr 25 15:37:19 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_construindo_a_nossa_vida
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_construindo_a_nossa_vida
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_construindo_a_nossa_vida` DEFAULT CHARACTER SET utf8 ;
USE `db_construindo_a_nossa_vida` ;

-- -----------------------------------------------------
-- Table `db_construindo_a_nossa_vida`.`tb_categoria`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_construindo_a_nossa_vida`.`tb_categoria` (
  `id_cat` INT NOT NULL AUTO_INCREMENT,
  `construcao` TINYINT NULL,
  `acabamento` TINYINT NULL,
  PRIMARY KEY (`id_cat`),
  UNIQUE INDEX `id_cat_UNIQUE` (`id_cat` ASC) VISIBLE);

SELECT * FROM db_construindo_a_nossa_vida.tb_categoria;
INSERT INTO tb_categoria (construcao, acabamento)
VALUES
(true, false),
(false, true);

-- -----------------------------------------------------
-- Table `db_construindo_a_nossa_vida`.`tb_produto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_construindo_a_nossa_vida`.`tb_produto` (
  `id_prod` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `tipo` VARCHAR(45) NULL,
  `qntd` INT NULL,
  `preco` DECIMAL(4,2) NULL,
  `fk_cat` INT NOT NULL,
  PRIMARY KEY (`id_prod`, `fk_cat`),
  UNIQUE INDEX `id_prod_UNIQUE` (`id_prod` ASC) VISIBLE,
  INDEX `fk_tb_produto_tb_categoria_idx` (`fk_cat` ASC) VISIBLE,
  CONSTRAINT `fk_tb_produto_tb_categoria`
    FOREIGN KEY (`fk_cat`)
    REFERENCES `db_construindo_a_nossa_vida`.`tb_categoria` (`id_cat`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

SELECT * FROM db_construindo_a_nossa_vida.tb_produto;
INSERT INTO tb_produto(nome, tipo, qntd, preco, fk_cat)
VALUES
("Cimento", "Pó", 1, 25.00, 1),
("Massa corrida", "Massa", 1, 70.00, 1),
("Tinta", "Líquido", 1, 80.00, 2),
("Torneira", "Físico", 1, 89.00, 2); 

SELECT * FROM db_construindo_a_nossa_vida.tb_produto;
SELECT * FROM db_construindo_a_nossa_vida.tb_produto where preco > 50;
SELECT * FROM db_construindo_a_nossa_vida.tb_produto where preco between 3 and 60;
SELECT * FROM db_construindo_a_nossa_vida.tb_produto where nome like "C%";
SELECT * FROM tb_produto inner join tb_categoria on tb_categoria.id_cat = tb_produto.fk_cat;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
