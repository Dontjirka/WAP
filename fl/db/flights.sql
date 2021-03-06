-- MySQL Script generated by MySQL Workbench
-- Mon Apr 11 22:07:50 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`airport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`airport` (
  `code` VARCHAR(5) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`gate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`gate` (
  `code` VARCHAR(3) NOT NULL,
  `desc` VARCHAR(45) NULL,
  PRIMARY KEY (`code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`flight`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`flight` (
  `idflight` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `flight_code` VARCHAR(10) NOT NULL,
  `from_airport_code` VARCHAR(5) NOT NULL,
  `to_airport_code` VARCHAR(5) NOT NULL,
  `from_dtm` TIMESTAMP NOT NULL,
  `gate_code` VARCHAR(3) NOT NULL,
  PRIMARY KEY (`idflight`),
  INDEX `fk_flight_airport_idx` (`from_airport_code` ASC) VISIBLE,
  INDEX `fk_flight_airport1_idx` (`to_airport_code` ASC) VISIBLE,
  INDEX `fk_flight_gate1_idx` (`gate_code` ASC) VISIBLE,
  CONSTRAINT `fk_flight_airport`
    FOREIGN KEY (`from_airport_code`)
    REFERENCES `mydb`.`airport` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_airport1`
    FOREIGN KEY (`to_airport_code`)
    REFERENCES `mydb`.`airport` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_gate1`
    FOREIGN KEY (`gate_code`)
    REFERENCES `mydb`.`gate` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;-- MySQL Script generated by MySQL Workbench
-- Mon Apr 11 09:41:47 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`airport`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`airport` (
  `code` VARCHAR(5) NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`gate`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`gate` (
  `code` VARCHAR(3) NOT NULL,
  `desc` VARCHAR(45) NULL,
  PRIMARY KEY (`code`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`flight`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`flight` (
  `idflight` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `flight_code` VARCHAR(10) NOT NULL,
  `from_airport_code` VARCHAR(5) NOT NULL,
  `to_airport_code` VARCHAR(5) NOT NULL,
  `from_dtm` TIMESTAMP NOT NULL,
  `gate_code` VARCHAR(3) NOT NULL,
  PRIMARY KEY (`idflight`),
  INDEX `fk_flight_airport_idx` (`from_airport_code` ASC) VISIBLE,
  INDEX `fk_flight_airport1_idx` (`to_airport_code` ASC) VISIBLE,
  INDEX `fk_flight_gate1_idx` (`gate_code` ASC) VISIBLE,
  CONSTRAINT `fk_flight_airport`
    FOREIGN KEY (`from_airport_code`)
    REFERENCES `mydb`.`airport` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_airport1`
    FOREIGN KEY (`to_airport_code`)
    REFERENCES `mydb`.`airport` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_flight_gate1`
    FOREIGN KEY (`gate_code`)
    REFERENCES `mydb`.`gate` (`code`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;