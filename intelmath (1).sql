-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-10-2019 a las 05:39:31
-- Versión del servidor: 10.1.26-MariaDB
-- Versión de PHP: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `intelmath`
--

DELIMITER $$
--
-- Procedimientos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbl_biblioteca` (IN `idbiblioteca` INT, IN `titulo_p` VARCHAR(100), IN `descripcion_p` VARCHAR(200), IN `tipo_p` VARCHAR(100), IN `idusuario` INT, IN `idtipo` INT, IN `archivoPdf` LONGBLOB, IN `opcion` CHAR(10))  begin 
		Case opcion 
			when 'consultar' then 
				select * from tbl_biblioteca where titulo = titulo_p;
			when 'Insertar' then 
            if not exists (select * from tbl_biblioteca where id_biblioteca = idbiblioteca ) then
            insert into  tbl_biblioteca values (idbiblioteca,titulo_p,descripcion_p,tipo_p,idusuario,idtipo,archivoPdf);
            end if;
            when 'Actualizar' then
            update tbl_biblioteca set titulo = titulo_p , descripcion = descripcion_p, tipo = tipo_p, archivopdf = archivoPdf where id_usuario = idusuario and id_tipo = idtipo ;
			when 'Eliminar' then
			DELETE FROM tbl_biblioteca WHERE  titulo = titulo_p;
       end case;
end$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_tbl_usuario` (IN `id_usuarioP` INT, IN `usuarioP` VARCHAR(50), IN `contraseñaP` VARCHAR(50), IN `nombreP` VARCHAR(80), IN `apellidoP` VARCHAR(80), IN `correo_electronicoP` VARCHAR(100), IN `telefonoP` CHAR(15), IN `id_rolP` INT, IN `opcion` CHAR(10))  begin 
		Case opcion 
			when 'consultar' then 
				select * from tbl_usuario where   id_usuario = id_usuario;
			when 'insertar' then 
            if not exists (select * from tbl_usuario where id_usuario=id_usuario ) then
            insert into  tbl_usuario values (id_usuarioP,usuarioP,contraseñaP,nombreP,apellidoP,correo_electronicoP,telefonoP,id_rolP);
            end if;
            when 'Actualizar' then
            update tbl_usuario set   nombre = nombreP , apellido = apellidoP ,correo_electronico = correo_electronicoP , telefono = telefonoP where usuario = usuarioP;
            when 'contraseña' then
            update tbl_usuario set contraseña = contraseñaP where usuario = usuarioP;
            WHEN 'rol' THEN
            UPDATE tbl_usuario set id_rol = id_rolP WHERE usuario = usuarioP;
       end case;
end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_biblioteca`
--

CREATE TABLE `tbl_biblioteca` (
  `id_biblioteca` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `tipo` varchar(30) DEFAULT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `archivopdf` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_dinamicas`
--

CREATE TABLE `tbl_dinamicas` (
  `id_dinamicas` int(11) NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_dinamicas`
--

INSERT INTO `tbl_dinamicas` (`id_dinamicas`, `porcentaje`, `puntaje`, `id_usuario`) VALUES
(1, 100, 109, 1),
(2, 100, 109, 2),
(3, 100, 109, 3),
(4, 100, 109, 4),
(5, 100, 109, 5),
(6, 100, 109, 6),
(7, 100, 109, 7),
(8, 100, 109, 8),
(9, 100, 109, 9),
(10, 100, 109, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_modo`
--

CREATE TABLE `tbl_modo` (
  `id_modo` int(11) NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `id_dinamicas` int(11) NOT NULL,
  `id_tipo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_modo`
--

INSERT INTO `tbl_modo` (`id_modo`, `porcentaje`, `puntaje`, `id_dinamicas`, `id_tipo`) VALUES
(1, 43, 779, 1, 3),
(2, 43, 779, 1, 4),
(3, 43, 779, 1, 3),
(4, 43, 779, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_nivel`
--

CREATE TABLE `tbl_nivel` (
  `id_nivel` int(11) NOT NULL,
  `porcentaje` int(11) NOT NULL,
  `puntaje` int(11) NOT NULL,
  `id_modo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_rol`
--

CREATE TABLE `tbl_rol` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_rol`
--

INSERT INTO `tbl_rol` (`id_rol`, `rol`) VALUES
(1, 'Aprendiz'),
(2, 'Administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_temas`
--

CREATE TABLE `tbl_temas` (
  `id_temas` int(11) NOT NULL,
  `tema` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `id_biblioteca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo`
--

CREATE TABLE `tbl_tipo` (
  `id_tipo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_tipo`
--

INSERT INTO `tbl_tipo` (`id_tipo`, `nombre`) VALUES
(1, 'Operadores'),
(2, 'Logica'),
(3, 'Razonamiento Matematico'),
(4, 'Razonamiento Logico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_trivia`
--

CREATE TABLE `tbl_trivia` (
  `id_trivia` int(11) NOT NULL,
  `contenido` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_trivia`
--

INSERT INTO `tbl_trivia` (`id_trivia`, `contenido`) VALUES
(1, 'Mejora tus habilidades al practicar a diario '),
(2, 'Comprende el mundo de las matemáticas gracias a nuestros grandes datos que tenemos en la biblioteca'),
(3, 'Tu lógica mejora tu razonamiento'),
(4, 'Sabias que jugando uno puedo aprender, entra a dinámicas y averígualo por tu mismo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuario`
--

CREATE TABLE `tbl_usuario` (
  `id_usuario` int(11) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL,
  `nombre` varchar(80) NOT NULL,
  `apellido` varchar(80) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `telefono` char(10) DEFAULT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbl_usuario`
--

INSERT INTO `tbl_usuario` (`id_usuario`, `usuario`, `contraseña`, `nombre`, `apellido`, `correo_electronico`, `telefono`, `id_rol`) VALUES
(1, 'mary21', '1234hola', 'Mary', 'Ohara', 'marys212131@gmail.com', '123456789', 1),
(2, 'Riko21', '1234hola', 'riko', 'Sakurauchi ', 'riko212131@gmail.com', '123456789', 2),
(3, 'You21', '1234hola', 'you', 'watanabe', 'you212131@gmail.com', '123456789', 1),
(4, 'maru21', '1234hola', 'Hanamaru', 'kunikida', 'zura212131@gmail.com', '123456789', 2),
(5, 'delfin21', '1234hola', 'kanan', 'matsuura', 'kanan212131@gmail.com', '123456789', 2),
(6, 'mandarina21', '1234hola', 'chika', 'tagami', 'chikachi212131@gmail.com', '123456789', 1),
(7, 'muu21', '1234hola', 'nozomi', 'tojo', 'nozomi212131@gmail.com', '123456789', 1),
(8, 'yohane21', '1234hola', 'yoshiko21', 'Thushima', 'yohane212131@gmail.com', '123456789', 2),
(9, 'dia', '1234hola', 'dia', 'kurosawa', 'dia212131@gmail.com', '123456789', 1),
(10, 'ruby', '1234hola', 'ruby', 'kurosawa', 'ruby212131@gmail.com', '123456789', 2);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_biblioteca`
--
ALTER TABLE `tbl_biblioteca`
  ADD PRIMARY KEY (`id_biblioteca`),
  ADD KEY `id_usuario` (`id_usuario`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `tbl_dinamicas`
--
ALTER TABLE `tbl_dinamicas`
  ADD PRIMARY KEY (`id_dinamicas`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `tbl_modo`
--
ALTER TABLE `tbl_modo`
  ADD PRIMARY KEY (`id_modo`),
  ADD KEY `id_dinamicas` (`id_dinamicas`),
  ADD KEY `id_tipo` (`id_tipo`);

--
-- Indices de la tabla `tbl_nivel`
--
ALTER TABLE `tbl_nivel`
  ADD PRIMARY KEY (`id_nivel`),
  ADD KEY `id_modo` (`id_modo`);

--
-- Indices de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tbl_temas`
--
ALTER TABLE `tbl_temas`
  ADD PRIMARY KEY (`id_temas`),
  ADD KEY `id_biblioteca` (`id_biblioteca`);

--
-- Indices de la tabla `tbl_tipo`
--
ALTER TABLE `tbl_tipo`
  ADD PRIMARY KEY (`id_tipo`);

--
-- Indices de la tabla `tbl_trivia`
--
ALTER TABLE `tbl_trivia`
  ADD PRIMARY KEY (`id_trivia`);

--
-- Indices de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `usuario` (`usuario`),
  ADD KEY `tbl_usuario_ibfk_1` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_biblioteca`
--
ALTER TABLE `tbl_biblioteca`
  MODIFY `id_biblioteca` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_dinamicas`
--
ALTER TABLE `tbl_dinamicas`
  MODIFY `id_dinamicas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tbl_modo`
--
ALTER TABLE `tbl_modo`
  MODIFY `id_modo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_nivel`
--
ALTER TABLE `tbl_nivel`
  MODIFY `id_nivel` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_rol`
--
ALTER TABLE `tbl_rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tbl_temas`
--
ALTER TABLE `tbl_temas`
  MODIFY `id_temas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_tipo`
--
ALTER TABLE `tbl_tipo`
  MODIFY `id_tipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_trivia`
--
ALTER TABLE `tbl_trivia`
  MODIFY `id_trivia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_biblioteca`
--
ALTER TABLE `tbl_biblioteca`
  ADD CONSTRAINT `tbl_biblioteca_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id_usuario`),
  ADD CONSTRAINT `tbl_biblioteca_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tbl_tipo` (`id_tipo`);

--
-- Filtros para la tabla `tbl_dinamicas`
--
ALTER TABLE `tbl_dinamicas`
  ADD CONSTRAINT `tbl_dinamicas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_usuario` (`id_usuario`);

--
-- Filtros para la tabla `tbl_modo`
--
ALTER TABLE `tbl_modo`
  ADD CONSTRAINT `tbl_modo_ibfk_1` FOREIGN KEY (`id_dinamicas`) REFERENCES `tbl_dinamicas` (`id_dinamicas`),
  ADD CONSTRAINT `tbl_modo_ibfk_2` FOREIGN KEY (`id_tipo`) REFERENCES `tbl_tipo` (`id_tipo`);

--
-- Filtros para la tabla `tbl_nivel`
--
ALTER TABLE `tbl_nivel`
  ADD CONSTRAINT `tbl_nivel_ibfk_1` FOREIGN KEY (`id_modo`) REFERENCES `tbl_modo` (`id_modo`);

--
-- Filtros para la tabla `tbl_temas`
--
ALTER TABLE `tbl_temas`
  ADD CONSTRAINT `tbl_temas_ibfk_1` FOREIGN KEY (`id_biblioteca`) REFERENCES `tbl_biblioteca` (`id_biblioteca`);

--
-- Filtros para la tabla `tbl_usuario`
--
ALTER TABLE `tbl_usuario`
  ADD CONSTRAINT `tbl_usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `tbl_rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
