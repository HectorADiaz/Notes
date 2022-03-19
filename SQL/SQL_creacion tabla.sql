CREATE TABLE `tienda_bootsfaces`.`cliente` (
  `idCliente` INT NOT NULL AUTO_INCREMENT,
  `nombres` VARCHAR(45) NOT NULL,
  `apellidos` VARCHAR(45) NOT NULL,
  `cedula` VARCHAR(10) NOT NULL,
  `direccion` VARCHAR(120) NULL,
  `estado` TINYINT(1) NOT NULL,
  PRIMARY KEY (`idCliente`));