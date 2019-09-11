-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.3.16-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Volcando estructura de base de datos para blog
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `blog`;

-- Volcando estructura para tabla blog.articulo
CREATE TABLE IF NOT EXISTS `articulo` (
  `idarticulo` int(11) NOT NULL AUTO_INCREMENT,
  `idcategoria` int(11) DEFAULT 0,
  `idusuario` int(11) DEFAULT NULL,
  `titulo` varchar(250) DEFAULT NULL,
  `resumen` varchar(250) DEFAULT NULL,
  `contenido` text DEFAULT NULL,
  `imagen` varchar(100) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `visitas` int(4) DEFAULT 0,
  PRIMARY KEY (`idarticulo`),
  KEY `FK_articulo_categoria` (`idcategoria`),
  KEY `FK_articulo_usuario` (`idusuario`),
  CONSTRAINT `FK_articulo_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_articulo_usuario` FOREIGN KEY (`idusuario`) REFERENCES `usuario` (`idusuario`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla blog.articulo: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` (`idarticulo`, `idcategoria`, `idusuario`, `titulo`, `resumen`, `contenido`, `imagen`, `fecha`, `visitas`) VALUES
	(1, 1, 1, 'El arte digital y sus infinitas posibilidades', 'El arte digital es, seguramente, la disciplina más novedosa dentro del mundo de las artes plásticas. Muchos la consideran la expresión artística del futuro por las nuevas   posibilidades creativas con la que, cada día, es capaz de sorprendernos. Las ', 'El arte digital es, seguramente, la disciplina más novedosa dentro del mundo de las artes plásticas. Muchos la consideran la expresión artística del futuro por las nuevas   posibilidades creativas con la que, cada día, es capaz de sorprendernos.\r\nLas nuevas tecnologías se ponen al servicio del arte interconectando sectores muy diversos que abarcan desde la imagen y la fotografía tradicional hasta los más espectaculares efectos especiales. Arte digital puede ser un cuadro en el que casi podemos sumergirnos gracias a su diseño en 3D, un videojuego en el que participamos de manera activa junto a personajes virtuales, un corto de animación, una fotografía en la que nada es lo que parece… la creatividad no tiene límites y con las herramientas actuales puede llegar a donde se proponga.\r\nTambién el propio concepto de artista ha cambiado radicalmente. A las técnicas tradicionales de dibujo, pintura o escultura, basadas principalmente en la representación de la realidad, se han unido conceptos rompedores como el modelado de escenarios y personajes, los objetos “interactivos”, los entornos virtuales o las interfaces gráficas que han supuesto una verdadera revolución. Podría decirse que el campo del arte y el de la comunicación se han unido definitivamente abriendo nuevas vías de expresión, aún inexploradas, que tienen en cuenta los nuevos soportes: pcs, consolas, tablets, Iphones…\r\nSin duda, éste el motivo principal por el que también la formación relacionada con el Arte ha cambiado, ampliando horizontes y ofreciendo nuevas opciones que no se limitan, únicamente, al Grado en Bellas Artes. Novedosos estudios como el Grado en Diseño, Animación y Arte Digital son un buen ejemplo de cómo aprender a combinar la propia creatividad con las nuevas tecnologías.\r\nSe trata de un grado que incluye materias muy diversas: fotografía, modelaje, diseño 3D, narrativa audiovisual, comunicación, game desing y por supuesto, Historia del Arte una asignatura que no puede faltar como fuente de inspiración para los artistas del siglo XXI.\r\nHay que tener en cuenta que el arte digital está muy presente en nuestro día a día (no solo en una exposición puntual que puedas ver en un museo). Basta pensar, por ejemplo, en el mundo de la publicidad y el marketing, con anuncios, campañas, banners, carteles, cortos… nadie puede negar que algunas piezas son realmente obras de arte. Lo mismo ocurre con los actuales videojuegos, que no dejan de sorprender por su impactante realismo, por la calidad en el diseño detallado de personajes y “mundos” y por la capacidad de interactuación que permiten.\r\nProductores digitales, animadores en 2D y 3D, responsables de post producción, expertos en efectos especiales, creativos publicitarios, diseñadores de contenidos audiovisuales… nuevas profesiones que hacen de un trabajo basado en la tecnología, un verdadero arte.', 'foto1.jpg', '2008-05-12 00:00:00', 7),
	(2, 1, 1, 'Slate de HP, la competencia de iPad', 'HP ha presentado su nueva joya, Slate. Aun se desconoce cuando llegará a España, y el precio por el cual podremos adquirir este dispositivo. Pero si sabemos que podremos comprarlo en su página web o bien por los medios de canal convencionales, y es q', 'HP ha presentado su nueva joya, Slate. Aun se desconoce cuando llegará a España, y el precio por el cual podremos adquirir este dispositivo. Pero si sabemos que podremos comprarlo en su página web o bien por los medios de canal convencionales, y es que HP sigue siendo fiel a su sistema de distribución y no tiene intención de cambiarlo. Abrir una división de venta paralela de dispositivos ajena al canal de distribución sería un error y enfrentaría a los Partners con HP. Algo que es mejor evitar.\r\nEl Slate de HP nos recuerda mucho al nuevo iPad de Apple, y es que parece que han tomado ejemplo del nuevo dispositivo de Apple. Aunque el director de marketing comenta que no tiene nada que ver y no será un producto para sustituir a otros sino que abre una vía de negocio nueva.\r\nSlate de HP vendrá con Windows 7 como sistema operativo y podrá leer flash, cosa que iPad no puede. Y esto será un punto positivo para Slate. Pretende ser un dispositivo con un alto rendimiento multimedia y orientado al ocio, descartando así que sea un producto de gama profesional.', 'foto2.jpg', '2008-07-12 00:00:00', 3),
	(3, 1, 1, 'Windows Phone 7', 'Microsoft presenta en el Mobile World Congress de Barcelona el nuevo sistema operativo para móviles, el Windows Phone 7. Este nuevo sistema operativo pretende arrebatar cuota de mercado a Apple y Google con sus respectivos móviles iPhone y Nexus One.', 'Microsoft presenta en el Mobile World Congress de Barcelona el nuevo sistema operativo para móviles, el Windows Phone 7. Este nuevo sistema operativo pretende arrebatar cuota de mercado a Apple y Google con sus respectivos móviles iPhone y Nexus One.\r\nSteve Balmer presentó ayer el Windows Phone 7, con pretensiones de arañar a Apple y a Google y adentrarse en una batalla hoy por hoy lidiada por estos. Aunque Apple saca una mayor ventaja frente a sus competidores. Y es que hasta Nokia, el gran fabricante de telefonía, se ha quedado atrás con los avances que ha ido presentando Apple en sus terminales táctiles.\r\nWindows Phone 7 ha sido presentado en el hotel Catalonia, con una gran expectación de japoneses que debido al Mobile World Congress han invadido la ciudad.', 'foto3.jpg', '2010-03-12 00:56:27', 1),
	(4, 1, 1, 'Trucos para conseguir tráfico web', 'Hace tiempo me llegó un documento donde hablaba de 77 formas de conseguir tráfico para nuestras webs. Unos trucos, algunos de ellos muy obvios, y otros que quizás omitimos. Se trata de un documento muy curioso e interesante para los webmasters que de', 'Hace tiempo me llegó un documento donde hablaba de 77 formas de conseguir tráfico para nuestras webs. Unos trucos, algunos de ellos muy obvios, y otros que quizás omitimos. Se trata de un documento muy curioso e interesante para los webmasters que desean mejorar la rentabilidad de su web y quieren potenciar el tráfico web entrante a esta.\r\nEsta guía de trucos está desarrollada por Allan Gardyne y traducida por José Rosselló.\r\nComo bien dice el informe, en ocasiones no se pueden aplicar los 77 trucos para conseguir tráfico web, pero podemos aplicar tantos como podamos o nos permita nuestra página web. Sin lugar a dudas este documento se debe leer detenidamente y es una lectura que recomiendo a todos los webmasters, que aunque ya los sepan, no va bien recordarlos de vez en cuando.\r\nSe trata de un informe realizado en el 2006, pero a pesar de ello sigue siendo muy actual. Aquí os dejo el link de la descarga del informe de trucos para conseguir tráfico.', '', '2010-03-12 01:02:42', 8),
	(10, 1, 1, 'y sellama peru', NULL, NULL, NULL, '0000-00-00 00:00:00', 0),
	(11, 1, 1, 'Maria Paradao de belli', NULL, NULL, NULL, '0000-00-00 00:00:00', 0),
	(12, 1, 1, 'PedorSalinas', NULL, NULL, NULL, '2019-02-01 00:00:00', 0);
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;

-- Volcando estructura para tabla blog.categoria
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(255) DEFAULT '0',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Volcando datos para la tabla blog.categoria: ~1 rows (aproximadamente)
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` (`idcategoria`, `descripcion`) VALUES
	(1, 'Electronica');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;

-- Volcando estructura para tabla blog.comentario
CREATE TABLE IF NOT EXISTS `comentario` (
  `idcomentario` int(11) NOT NULL AUTO_INCREMENT,
  `idarticulo` int(6) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `comentario` text CHARACTER SET latin1 DEFAULT NULL,
  `nombre` varchar(15) CHARACTER SET latin1 DEFAULT '',
  PRIMARY KEY (`idcomentario`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla blog.comentario: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `comentario` DISABLE KEYS */;
INSERT INTO `comentario` (`idcomentario`, `idarticulo`, `fecha`, `comentario`, `nombre`) VALUES
	(1, 1, '2007-12-06', 'Amigo estoy tratando de instalar el apache en el Ubuntu, como hago esto', 'Ricardo'),
	(2, 1, '2007-12-02', 'No puedes escribir mas???', 'Ruben'),
	(3, 1, '2008-02-05', 'Una consulta, como utilizo los procesos crond\r\nSaludos', 'carlos'),
	(4, 1, '2008-03-31', 'afds', 'f'),
	(5, 2, '2008-03-31', 'afds', 'adf'),
	(6, 2, '2008-03-31', 'afds', 'adf'),
	(7, 2, '2008-03-31', 'afds', 'adf'),
	(8, 2, '2008-03-31', 'afds', 'adf'),
	(43, 1, '2017-06-11', 'asdf', 'Martin'),
	(44, 1, '2017-06-11', 'asdf', 'Juan'),
	(45, 1, '2017-06-11', 'asdf', 'Juan'),
	(46, 1, '2017-06-11', 'asdf', 'Juan');
/*!40000 ALTER TABLE `comentario` ENABLE KEYS */;

-- Volcando estructura para tabla blog.usuario
CREATE TABLE IF NOT EXISTS `usuario` (
  `idusuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `nombres` varchar(255) DEFAULT NULL,
  `apellidos` varchar(255) DEFAULT NULL,
  `perfil` int(11) DEFAULT NULL,
  `estado` int(1) DEFAULT 0,
  PRIMARY KEY (`idusuario`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla blog.usuario: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` (`idusuario`, `login`, `password`, `nombres`, `apellidos`, `perfil`, `estado`) VALUES
	(1, 'demo', 'e10adc3949ba59abbe56e057f20f883e', 'MARTIN', 'TRUJILLO BUSTAMANTE', 1, 1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
