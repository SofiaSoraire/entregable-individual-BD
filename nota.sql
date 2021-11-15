DROP DATABASE IF EXISTS adm_notas;
CREATE DATABASE adm_notas;
USE adm_notas;

CREATE TABLE `usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(255) NOT NULL,
   `email` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `titulo` VARCHAR(100) NOT NULL,
   `fecha_inicio` DATETIME NOT NULL,
   `fecha_final` DATETIME NOT NULL,
   `descripcion` VARCHAR(255) NOT NULL,
   `eliminable` TINYINT NOT NULL,
   `id_usuario` INT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(255) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `notas_categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `id_nota` INT NOT NULL,
   `id_categoria` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notas` ADD CONSTRAINT `FK_e7244526-0d3d-470b-98b7-9232b1b3525e` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios`(`id`)  ;

ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_8275793f-0959-4ec8-9891-83c792b7c41d` FOREIGN KEY (`id_nota`) REFERENCES `notas`(`id`)  ;

ALTER TABLE `notas_categorias` ADD CONSTRAINT `FK_946e5277-38a4-4364-8f01-4ce53f5185d9` FOREIGN KEY (`id_categoria`) REFERENCES `categorias`(`id`)  ;


INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'sofia', 'sofia@gmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'ana', 'ana@gmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'jose', 'jose@gmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'juan', 'juan@gmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'maria', 'maria@gmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'paula', 'paula@gmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'tomas', 'tomas@gmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'carlos', 'carlos@gmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'mia', 'mia@gmail.com');
INSERT INTO `usuarios` (`id`, `nombre`, `email`) VALUES (NULL, 'julian', 'julian@gmail.com');

INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'matematicas');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'lengua');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'historia');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'geografia');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'fisica');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'quimica');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'biologia');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'ingles');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'musica');
INSERT INTO `categorias` (`id`, `nombre`) VALUES (NULL, 'natacion');

INSERT INTO `notas` (`id`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_final`, `eliminable`, `id_usuario`) VALUES (NULL, 'matematicas', 'seis', '2021-03-01 11:03:04', '2021-03-01 11:03:04', '0', '1');
INSERT INTO `notas` (`id`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_final`, `eliminable`, `id_usuario`) VALUES (NULL, 'lengua', 'diez', '2021-03-02 10:15:24', '2021-03-02 10:15:24', '0', '1');
INSERT INTO `notas` (`id`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_final`, `eliminable`, `id_usuario`) VALUES (NULL, 'historia', 'siete', '2021-03-03 12:21:12', '2021-03-03 12:21:12', '0', '1');
INSERT INTO `notas` (`id`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_final`, `eliminable`, `id_usuario`) VALUES (NULL, 'geografia', 'nueve', '2021-03-04 13:30:40', '2021-03-04 13:30:40', '0', '1');
INSERT INTO `notas` (`id`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_final`, `eliminable`, `id_usuario`) VALUES (NULL, 'fisica', 'ocho', '2021-03-05 09:20:45', '2021-03-05 09:20:45', '0', '1');
INSERT INTO `notas` (`id`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_final`, `eliminable`, `id_usuario`) VALUES (NULL, 'quimica', 'ocho', '2021-03-06 10:53:50', '2021-03-06 10:53:50', '0', '1');
INSERT INTO `notas` (`id`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_final`, `eliminable`, `id_usuario`) VALUES (NULL, 'biologia', 'siete', '2021-03-07 11:35:02', '2021-03-07 11:35:02', '0', '1');
INSERT INTO `notas` (`id`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_final`, `eliminable`, `id_usuario`) VALUES (NULL, 'ingles', 'seis', '2021-03-08 12:46:54', '2021-03-08 12:46:54', '0', '1');
INSERT INTO `notas` (`id`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_final`, `eliminable`, `id_usuario`) VALUES (NULL, 'musica', 'nueve', '2021-03-09 10:56:15', '2021-03-09 10:56:15', '0', '1');
INSERT INTO `notas` (`id`, `titulo`, `descripcion`, `fecha_inicio`, `fecha_final`, `eliminable`, `id_usuario`) VALUES (NULL, 'natacion', 'diez', '2021-03-10 13:21:10', '2021-03-10 13:21:10', '0', '1');

INSERT INTO `notas_categorias` (`id`, `id_nota`, `id_categoria`) VALUES (NULL, '1', '1');
INSERT INTO `notas_categorias` (`id`, `id_nota`, `id_categoria`) VALUES (NULL, '2', '2');
INSERT INTO `notas_categorias` (`id`, `id_nota`, `id_categoria`) VALUES (NULL, '3', '3');
INSERT INTO `notas_categorias` (`id`, `id_nota`, `id_categoria`) VALUES (NULL, '4', '4');
INSERT INTO `notas_categorias` (`id`, `id_nota`, `id_categoria`) VALUES (NULL, '5', '5');
INSERT INTO `notas_categorias` (`id`, `id_nota`, `id_categoria`) VALUES (NULL, '6', '6');
INSERT INTO `notas_categorias` (`id`, `id_nota`, `id_categoria`) VALUES (NULL, '7', '7');
INSERT INTO `notas_categorias` (`id`, `id_nota`, `id_categoria`) VALUES (NULL, '8', '8');
INSERT INTO `notas_categorias` (`id`, `id_nota`, `id_categoria`) VALUES (NULL, '9', '9');
INSERT INTO `notas_categorias` (`id`, `id_nota`, `id_categoria`) VALUES (NULL, '10', '10');