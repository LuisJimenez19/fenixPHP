-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 31-03-2024 a las 23:23:06
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping_angel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `seccion` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `nombre_articulo` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `fecha` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `pais_de_origen` varchar(9) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `precio` int DEFAULT NULL,
  `url_img` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL DEFAULT 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `seccion`, `nombre_articulo`, `fecha`, `pais_de_origen`, `precio`, `url_img`) VALUES
(1, 'update', 'botines', '10/12/2021', 'China', 140, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(2, 'CERÁMICA', 'Plato Decorativo', '7/06/1997', 'China', 45, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(3, 'CERÁMICA', 'Juego de te', '15/01/1997', 'China', 36, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(4, 'CERÁMICA', 'Cenicero', '2/07/1997', 'Japón', 16, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(5, 'CERÁMICA', 'Maceta', '23/02/1997', 'España', 24, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(6, 'CERÁMICA', 'Jarra china', '2/09/1997', 'China', 106, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(7, 'CONFECCIÓN', 'Tarje Caballero', '11/03/1997', 'Italia', 237, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(8, 'CONFECCIÓN', 'Pantalón Señora', '1/05/1997', 'Marruecos', 145, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(9, 'CONFECCIÓN', 'Camisa Caballero', '11/08/1997', 'España', 56, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(10, 'CONFECCIÓN', 'Blusa Sra.', '18/03/1997', 'China', 84, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(11, 'CONFECCIÓN', 'Cazadora piel', '10/07/1997', 'Italia', 436, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(12, 'CONFECCIÓN', 'Abrigo Caballero', '5/07/1997', 'Italia', 203, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(13, 'CONFECCIÓN', 'Abrigo Sra', '3/05/1997', 'Marruecos', 300, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(14, 'CONFECCIÓN', 'Cinturón de piel', '12/05/1997', 'España', 4, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(15, 'DEPORTE', 'Raqueta Tenis', '20/03/1997', 'Usa', 78, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(16, 'DEPORTE', 'Chándal', '13/09/1997', 'Usa', 193, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(17, 'DEPORTE', 'Tren Eléctrico', '3/07/1997', 'Japón', 1254, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(18, 'DEPORTE', 'Pistola Olímpica', '23/05/1997', 'Suecia', 38, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(19, 'DEPORTE', 'Monopatín', '11/11/1997', 'Marruecos', 93, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(20, 'Deportes', 'botines', '10/12/2021', 'Japón', 63, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(21, 'DEPORTE', 'Balón Fútbol', '5/07/1997', 'España', 37, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(22, 'DEPORTE', 'Sudadera', '3/11/1997', 'Usa', 366, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(23, 'DEPORTE', 'Bicicleta de montaña', '14/03/1997', 'Usa', 470, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(24, 'FERRETERÍA', 'Destornillador', '22/10/1997', 'España', 6, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(25, 'FERRETERÍA', 'Serrucho', '23/03/1997', 'Francia', 26, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(26, 'FERRETERÍA', 'Llave Inglesa', '23/04/1997', 'Usa', 20, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(27, 'FERRETERÍA', 'Alicates', '17/04/1997', 'Italia', 6, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(28, 'FERRETERÍA', 'Martillo', '4/09/1997', 'España', 9, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(29, 'FERRETERÍA', 'Destornillador', '20/02/1997', 'Francia', 8, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(30, 'FERRETERÍA', 'Lima Grande', '10/08/1997', 'España', 18, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(31, 'FERRETERÍA', 'Juego de brocas', '4/07/1997', 'Taiwán', 13, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(32, 'JUGUETERÍA', 'Coche Teledirigido', '26/05/1997', 'Marruecos', 132, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(33, 'JUGUETERÍA', 'Correpasillos', '11/04/1997', 'Japón', 86, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(34, 'JUGUETERÍA', 'Consola Video', '24/09/1997', 'Usa', 369, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(35, 'JUGUETERÍA', 'Muñeca Andadora', '4/10/1997', 'España', 88, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(36, 'JUGUETERÍA', 'Fuerte de soldados', '25/11/1997', 'Japón', 120, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(37, 'JUGUETERÍA', 'Pistola con sonidos', '15/02/1997', 'España', 48, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(38, 'JUGUETERÍA', 'Pie de lámpara', '27/05/1997', 'Turquía', 33, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(39, NULL, NULL, NULL, NULL, NULL, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(40, 'Deportes', 'botines', '10/12/2021', 'China', 400, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(41, 'Deportes', 'botines', '10/12/2021', 'China', 400, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(42, 'Deportes', 'botines', '10/12/2021', 'China', 400, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(43, 'Deportes', 'botines', '10/12/2021', 'China', 400, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(44, 'Deportes', 'botines', '10/12/2021', 'China', 400, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(45, 'Deportes', 'botines', '10/12/2021', 'China', 400, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(46, 'Deportes', 'botines', '10/12/2021', 'China', 400, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(47, 'Deportes', 'botines', '10/12/2021', 'China', 400, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(48, 'Deportes', 'botines', '10/12/2021', 'China', 400, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(49, 'Deportes', 'botines', '10/12/2021', 'China', 400, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440'),
(50, 'Deportes', 'botines', '10/12/2021', 'Bogota', 400, 'https://firebasestorage.googleapis.com/v0/b/binary-diary-log.appspot.com/o/strategies%2F8099968b-a021-4466-8e2f-513c0f08d5ed%2FReversi%C3%B2n-c3114d3b-7017-4561-b8dd-ad9360bbafdc?alt=media&token=f18604e3-76c2-4b81-b952-a3b482ef5440');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
