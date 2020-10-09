-- MySQL Script generated by MySQL Workbench
-- dim 04 oct 2020 11:10:48 CEST
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema AMT_stackunderflow
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `AMT_stackunderflow` ;

-- -----------------------------------------------------
-- Schema AMT_stackunderflow
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `AMT_stackunderflow` DEFAULT CHARSET = utf8mb4;
USE `AMT_stackunderflow` ;

-- -----------------------------------------------------
-- Table `users`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `users` ;

CREATE TABLE IF NOT EXISTS `users` (
  `uuid` VARCHAR(255) NOT NULL,
  `firstname` VARCHAR(255) NOT NULL,
  `lastname` VARCHAR(255) NOT NULL,
  `email` VARCHAR(255) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`uuid`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `questions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `questions` ;

CREATE TABLE IF NOT EXISTS `questions` (
  `uuid` VARCHAR(255) NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `description` TEXT NOT NULL,
  `votes` INT NOT NULL DEFAULT 0,
  `created_at` DATETIME NOT NULL,
  `users_uuid` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`uuid`, `users_uuid`),
  INDEX `fk_questions_users_idx` (`users_uuid` ASC) VISIBLE,
  CONSTRAINT `fk_questions_users`
    FOREIGN KEY (`users_uuid`)
    REFERENCES `AMT_stackunderflow`.`users` (`uuid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
