-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_RH2
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_RH2
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_RH2` DEFAULT CHARACTER SET utf8 ;
USE `db_RH2` ;

-- -----------------------------------------------------
-- Table `db_RH2`.`cargos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_RH2`.`cargos` (
  `id_cargos` INT NOT NULL AUTO_INCREMENT,
  `cargo_nome` VARCHAR(45) NULL,
  `salario_cargo` VARCHAR(45) NULL,
  PRIMARY KEY (`id_cargos`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_RH2`.`tb_funcionario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_RH2`.`tb_funcionario` (
  `id_tb_funcionario` INT NOT NULL AUTO_INCREMENT,
  `nome_tb_funcionario` VARCHAR(45) NULL,
  `idade_tb_funcionario` VARCHAR(45) NULL,
  `cargo_tb_funcionario` VARCHAR(45) NULL,
  `salario_tb_funcionario` DECIMAL(5,3) NULL,
  `cargos_id_cargos` INT NOT NULL,
  PRIMARY KEY (`id_tb_funcionario`, `cargos_id_cargos`),
  CONSTRAINT `fk_tb_funcionario_cargos`
    FOREIGN KEY (`cargos_id_cargos`)
    REFERENCES `db_RH2`.`cargos` (`id_cargos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
