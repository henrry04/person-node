CREATE DATABASE personas;

USE personas;

CREATE TABLE `personas`.`pais` (
  `idpais` INT(11) AUTO_INCREMENT,
  `nombre` VARCHAR(45) NULL,
  `created` TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idpais`));

  CREATE TABLE `personas`.`personas` (
  `idpersonas` INT AUTO_INCREMENT,
  `nombre` VARCHAR(100) NOT NULL,
  `pais` INT(11) NOT NULL,
  `created` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idpersonas`));

  ALTER TABLE `personas`.`personas` 
    ADD CONSTRAINT `pk`
    FOREIGN KEY (`pais`)
    REFERENCES `personas`.`pais` (`idpais`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

INSERT INTO `personas`.`pais` (`nombre`) VALUES ('Colombia');
INSERT INTO `personas`.`pais` (`nombre`) VALUES ('Brasil');
INSERT INTO `personas`.`pais` (`nombre`) VALUES ('Chile');
INSERT INTO `personas`.`pais` (`nombre`) VALUES ('Argentina');
INSERT INTO `personas`.`pais` (`nombre`) VALUES ('Perú');
INSERT INTO `personas`.`pais` (`nombre`) VALUES ('Panamá');
INSERT INTO `personas`.`pais` (`nombre`) VALUES ('México');
INSERT INTO `personas`.`pais` (`nombre`) VALUES ('España');
INSERT INTO `personas`.`pais` (`nombre`) VALUES ('Italia');
INSERT INTO `personas`.`pais` (`nombre`) VALUES ('Alemania');