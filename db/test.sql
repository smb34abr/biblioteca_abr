-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 31-12-2025 a las 21:29:10
-- Versión del servidor: 10.11.11-MariaDB
-- Versión de PHP: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `test`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `editorial`
--

CREATE TABLE `editorial` (
  `id_editorial` int(11) NOT NULL,
  `nombre_editorial` varchar(100) NOT NULL,
  `pais` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `editorial`
--

INSERT INTO `editorial` (`id_editorial`, `nombre_editorial`, `pais`) VALUES
(1, 'Editorial Diana', 'México'),
(2, 'Penguin Random House', 'Estadunidense'),
(3, 'Ediciones Urano ', 'Estados Unidos'),
(4, 'Ediciones Zeta', 'España'),
(5, 'Ediciones Paidós', 'Argentina'),
(6, 'Editorial Debolsillo', 'España'),
(7, 'Producción editorial', 'España'),
(8, 'Editorial Alfaguara', 'España'),
(9, 'Editorial Booket ', 'Española'),
(10, 'Editorial Planeta ', 'Española'),
(11, 'Ediciones B', 'Estados Unidos'),
(12, 'Editorial Grijalbo ', 'España'),
(13, 'Seix Barral México\r\n', 'España'),
(14, 'Editorial Lumen', 'España'),
(15, 'Plaza Janés', 'Española'),
(16, 'Editorial RM', 'México'),
(17, 'Editorial Suma de Letras ', 'España'),
(18, 'Pundo de lectura', 'España'),
(19, 'Editorial biblos', 'Argentina'),
(20, 'Editorial Edhasa', 'Española'),
(21, 'Editorial EMU', 'México'),
(22, 'Vintage Books', 'Estados Unidos'),
(23, 'Editorial Everest', 'Española'),
(24, 'Ediciones Destino', 'Española'),
(25, 'Editorial lectorum', 'México'),
(26, 'Editorial Océano', 'Española'),
(27, 'Editorial Puck', 'Española'),
(28, 'Editorial Debate', 'España'),
(29, '', ''),
(30, 'Ediciones ViaMagna', 'España'),
(31, 'Grupo Editorial Tomo', 'México');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `escritores`
--

CREATE TABLE `escritores` (
  `id_escritor` int(11) NOT NULL,
  `nombre_escritor` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `nacionalidad` varchar(50) DEFAULT NULL,
  `estado` tinyint(4) NOT NULL DEFAULT 1,
  `fecha_nacimiento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `escritores`
--

INSERT INTO `escritores` (`id_escritor`, `nombre_escritor`, `apellido`, `nacionalidad`, `estado`, `fecha_nacimiento`) VALUES
(1, 'Gabriel', 'García Márquez', 'Colombiana', 1, '1927-03-06'),
(2, 'Augustine', '\"Og\" Mandino', 'Estadounidense', 1, '1923-12-12'),
(3, 'Kate', 'Stewart', 'Estadounidense', 1, NULL),
(4, 'Jaime', 'Garza Bores', 'Mexicana', 1, '1955-02-08'),
(5, 'William', 'H. Mcraven', 'Estadounidense', 1, '1955-11-06'),
(6, 'Miguel', 'Ruiz', 'Mexicana', 1, '1952-08-27'),
(7, 'Viktor', 'Frankl', 'Austríaco', 1, '1905-03-26'),
(8, 'James', 'Clear', 'Estadounidense', 1, '1986-01-01'),
(9, 'John', 'Ray Grisham', 'Estadounidense', 1, '1955-02-08'),
(10, 'Marcos', 'Ordónez', 'Español', 1, '1957-03-25'),
(11, 'Stephen', 'E. Ambrose', 'Español', 1, '1936-01-10'),
(12, 'Sofía', 'Guadarrama Collado', 'Mexicana', 1, '1976-04-14'),
(13, 'Anotnio', 'Guadarrama Collado', 'Mexicana', 1, '1976-04-14'),
(14, 'Julio', 'Cortázar', 'Argentino', 1, '1914-08-26'),
(15, 'Maria ', 'Dueñas', 'Española', 1, '1964-01-01'),
(16, 'Dan', 'Brown', 'Estadounidense', 1, '1964-06-22'),
(17, 'Julia', 'Navarro', 'Española', 1, '1953-07-29'),
(18, 'Steven D.', 'Levitt', 'Estadounidense', 1, '1967-05-29'),
(19, 'John', 'Katzenbach', 'Estadounidense', 1, '1950-06-23'),
(20, 'Christine', 'Kabus', 'Estadounidense', 1, '1952-05-02'),
(21, 'Héctor', 'Zagal', 'Mexicana', 1, '1952-06-06'),
(22, 'Elizabeth', 'Haran', 'Australia', 1, '1954-01-01'),
(23, 'Norah', 'Sanders', 'Alemana', 1, '1943-01-01'),
(24, 'Sarah', 'Lark', 'Alemana', 1, '1958-01-01'),
(25, 'Ignacio ', 'Martínez de Pisón', 'Española', 1, '1960-12-27'),
(26, 'Carlos', 'Fuentes', 'Mexicana', 1, '1928-11-11'),
(27, 'Héctor ', 'Abad Faciolince', 'Colombiano', 1, '1958-01-01'),
(28, 'Fabián', 'Casas', 'Argentino', 1, '1965-04-07'),
(29, 'Gioconda ', 'Belli', 'Nicaragüense', 1, '1948-12-08'),
(30, 'Catherine', 'O Flynn ', 'Inglesa', 1, '1970-01-01'),
(31, 'Elena', 'Poniatowska', 'Francesa Mexicana', 1, '1932-05-19'),
(32, 'Ángeles', 'Mastretta', 'Mexicana', 1, '1949-10-09'),
(33, 'Elena', 'Ferrante', 'Italiana', 1, '1965-03-08'),
(34, 'Jonathan', 'Rabb', 'Estadounidense', 1, '1964-04-25'),
(35, 'Vasili', 'Grossman', 'Berdíchev', 1, '1905-12-12'),
(36, 'Patrick', 'Süskind', 'Alemana', 1, '1949-03-26'),
(37, 'Sophie', 'Labelle', 'Canadiense', 1, '1988-04-22'),
(38, 'Paco Ignacio', ' Taibo II', 'Española, Mexicana', 1, '1949-01-11'),
(39, 'Fernando', 'Del paso', 'Mexicana', 1, '1935-04-01'),
(40, 'Paula', 'Hawkins', 'Inglesa', 1, '1972-08-26'),
(41, 'John', 'Case', 'Estadounidense', 1, '1942-01-01'),
(42, 'Andres Manuel', 'López Obrado', 'Mexicana', 1, '1953-11-13'),
(43, 'Thomas ', 'Hardy', 'Inglesa', 1, '1840-06-02'),
(44, 'Carlos', 'Ruiz Zafon', 'Española', 1, '1964-09-25'),
(45, 'Richard', 'Price', 'Estadounidense', 1, '1949-10-12'),
(46, 'Silvia', 'Gurrola Bonilla', 'Mexicana', 1, '1966-01-09'),
(47, 'Jim', 'Hougan', 'Estadounidense', 1, '1942-01-01'),
(48, 'Monica Bruno', 'Koppel', 'Mexicana', 1, '1969-06-10'),
(49, 'Ernest', 'Hemingway', 'Estadounidense', 1, '1899-07-12'),
(50, 'Kenneth', 'Martin Follett', 'Inglesa', 1, '0049-06-05'),
(51, 'Isabel', 'allende', 'Chilena', 1, '1942-08-02'),
(52, 'Juan ', 'Rulfo', 'Mexicana', 1, '1917-05-16'),
(53, 'Luís', 'Miguel Rocha', 'Portugues', 1, '1976-02-14'),
(54, 'Kate', 'Morton', 'Australiana', 1, '1976-07-19'),
(55, 'Guillermo', 'Ferrara', 'Argentino', 1, '1967-01-01'),
(56, 'Celia', 'Del palacio', 'Mexicana', 1, '1960-10-20'),
(57, 'Ai', 'Mi', 'China', 1, '1987-10-10'),
(58, 'Anne', 'Jacobs', 'Alemana', 1, '1941-01-01'),
(59, 'Stephen', 'King', 'Estadounidense', 1, '1947-09-21'),
(60, 'Danielle', 'Steel', 'Estadounidense', 1, '1947-08-14'),
(61, 'Stephenie', 'Meyer', 'Estadounidense', 1, '1973-12-24'),
(62, 'Michael', 'Ende', 'Alemana', 1, '1929-11-12'),
(63, 'Pedro', 'Salmerón', 'Mexicana', 1, '1971-10-07'),
(64, 'David', 'Lagercrantz', 'Sueco', 1, '1972-09-04'),
(65, 'JJ ', 'Benitez', 'Española', 1, '1946-09-07'),
(66, 'José', 'Saramago', 'Portugues', 1, '1922-11-16'),
(67, 'Sara', 'Sefchovich', 'Mexicana', 1, '1949-04-02'),
(68, 'J. R. R.', 'Tolkien', 'Britanico', 1, '1892-01-03'),
(69, 'Anonimo', 'N/A', 'Varias', 1, '2025-01-01'),
(70, 'Paulo', 'Coelho', 'Brasileño', 1, '1947-08-24'),
(71, 'Thomas', 'Mann', 'Elemana', 1, '1875-06-06'),
(72, 'Louisa', 'May Alcott', 'Estadounidense', 1, '1832-11-29'),
(73, ' E. L.', 'James', 'Inglesa', 1, '1963-03-07'),
(74, 'Charles', 'Dickens', 'Inglesa', 1, '1812-02-07'),
(75, 'Stieg', 'Larsonn', 'Sueco', 1, '1954-08-15'),
(76, 'Mario', 'Benedetti', 'Uriguayo', 1, '1920-05-17'),
(77, 'Edmondo', 'De Amicis', 'Italiana', 1, '1846-10-21'),
(78, 'Hans', 'Christian Andersen', 'Danes', 1, '1805-04-02'),
(79, 'Jaime', 'Avilés', 'Mexicana', 1, '1954-03-13'),
(80, 'Suzanne', 'Collins', 'Estadounidense', 1, '1962-08-10'),
(81, 'Roderick', 'Gordon', 'Inglesa', 1, '1960-11-01'),
(82, 'Jonathan', 'Blitzer', 'Estadounidense', 1, '1969-06-10'),
(83, 'pediente', 'Dostoievski', 'Ruso', 1, '1821-11-11'),
(84, 'Marcel', 'Proust', 'Francés', 1, '1871-07-10'),
(85, 'Julio', 'Verne', 'Francés', 1, '1828-02-08'),
(86, 'Victor', 'Hugo', 'Francés', 1, '1802-02-26'),
(87, 'Alejandro', 'Dumas', 'Francés', 1, '1802-07-24'),
(88, 'Jack', 'London', 'Estadounidense', 1, '1876-01-12'),
(89, 'Edmundo', 'Amicis', 'Italiano', 1, '1846-10-21'),
(90, 'John', 'K. Turner', 'Estadounidense', 1, '1948-07-31'),
(91, 'Franz', ' Kafka', 'Checo', 1, '1883-07-03'),
(92, 'Sun', 'Tzu', 'Chino', 1, '0496-01-01'),
(93, 'Hermann', 'Hesse', 'Alemana', 1, '1877-07-02'),
(94, 'Emily', 'Brontë', 'Inglesa', 1, '1818-07-30'),
(95, 'Friedrich', 'Nietzsche', 'Alemana', 1, '1844-10-15'),
(96, 'Emilio', 'Carballido', 'Mexicana', 1, '1925-05-22'),
(97, 'Bram', 'Stoker', 'Irlandes', 1, '1847-11-08'),
(98, 'Ignacio', 'Manuel Altamirano', 'Mexicana', 1, '1834-11-13'),
(99, 'Aldous', 'Huxley', 'Inglesa', 1, '1894-07-26'),
(100, 'Paul', 'de Kruif', 'Estadounidense', 1, '1890-03-02'),
(101, 'Platón', 'S/A', 'Griego', 1, '0387-01-01'),
(102, 'Sean', 'Covey', 'Estadounidense', 1, '1964-09-17'),
(103, 'Stephen', 'E. Ambrose', 'Estadounidense', 1, '1936-01-10'),
(104, 'José', 'Agustín', 'Mexicano', 1, '1944-08-19'),
(105, 'León', 'Tolstoi', 'Ruso', 1, '1828-09-09'),
(106, 'Osho', 'Bhagwan ', 'Indio', 1, '1931-12-11'),
(107, 'Fiodor', 'M. Dostoievski', 'Ruso', 1, '0021-11-11'),
(108, 'Virginia', 'Cleo Andrews', 'Estadounidense', 1, '1923-06-06'),
(109, 'Hazel', 'Rowley', 'Autraliana', 1, '1951-11-16'),
(110, 'Markus', 'Zusak', 'Australiano', 1, '1975-06-23'),
(111, 'David', 'Unger', 'Guatemala', 1, '1950-11-06'),
(112, 'Giorgio', 'Faletti', 'Italiana', 1, '1950-11-25'),
(113, 'George', 'Orwell', 'Indio', 1, '1903-06-25'),
(114, 'Carlos', 'Montemayor', 'Mexicana', 1, '1943-06-13'),
(115, 'Danel', 'Defoe', 'Inglesa', 1, '1660-04-24'),
(116, 'Stephen', 'W. Hawking', 'Inglesa', 1, '1942-01-08'),
(117, 'Marguerite', 'Yourcenar', 'Francesa', 1, '1903-06-08'),
(118, 'Álvaro', 'Mutis', 'Colombiano', 1, '1923-08-25'),
(119, 'J. R. R.', 'Tolkien', 'Britanica', 1, '1973-01-03'),
(120, 'David', 'Morrell', 'Canadiense', 1, '1943-04-24'),
(121, 'Jane', 'Austen', 'Britanica', 1, '1775-12-16'),
(122, 'Stephen', 'R. Covey', 'Estadounidense', 1, '1932-10-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `id_libro` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `fecha_publicacion` year(4) DEFAULT NULL,
  `id_escritor` int(11) DEFAULT NULL,
  `id_editorial` int(11) DEFAULT NULL,
  `existencias` int(11) DEFAULT 0,
  `precio` int(11) NOT NULL,
  `fecha_captura` timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`id_libro`, `titulo`, `isbn`, `fecha_publicacion`, `id_escritor`, `id_editorial`, `existencias`, `precio`, `fecha_captura`) VALUES
(1, 'Memorias de mis putas tristes', '968-13-4032-9', '2004', 1, 1, 1, 80, '2025-11-09 01:49:52'),
(2, 'Noticia de un secuestro', '978-607-07-0368-3', '2010', 1, 1, 1, 80, '2025-11-09 01:49:59'),
(3, 'Cien años de soledad', '978-607-07-0403-1', '2010', 1, 1, 1, 380, '2025-11-09 01:50:07'),
(4, 'Vivir para contarla', '968-13-3608-9', '2002', 1, 1, 1, 150, '2025-11-09 01:50:32'),
(5, 'Del amor y otros demonios', '978-607-07-2878-5', '2015', 1, 1, 1, 40, '2025-11-09 01:50:37'),
(6, 'Relato de un náufrago', '968-13-2677-6', '2000', 1, 1, 1, 50, '2025-11-09 01:50:44'),
(7, 'Los funerales de la mamá grande', '968-13-1709-2', '1998', 1, 1, 1, 80, '2025-11-09 01:50:49'),
(8, 'El general en su laberito', '84-397-0478-X', '1989', 1, 1, 1, 80, '2025-11-09 01:50:55'),
(9, 'La elección', '968-13-1662-2', '1989', 2, 1, 1, 80, '2025-11-09 01:51:00'),
(10, 'Operación Jesucristo, el tercer día', '968-13-0612-0', '1988', 2, 1, 1, 80, '2025-11-09 01:51:06'),
(11, 'Vuelo', '978-607-383-398-1', '2020', 3, 2, 1, 50, '2025-11-09 01:51:13'),
(12, 'Hábitos atómicos', '978-6075696140', '2023', 8, 5, 1, 216, '2025-11-09 01:51:19'),
(13, 'La trampa', '978-607-316-906-6', '2018', 9, 6, 1, 50, '2025-11-09 01:51:26'),
(14, 'Los litigantes', '978-607-317-166-3', '2018', 9, 6, 1, 50, '0000-00-00 00:00:00'),
(15, 'El intermediario', '978-54-9872-330-4', '2009', 9, 4, 2, 110, '2025-11-13 05:52:24'),
(16, 'El manuscrito', ' 978-607-380-494-3', '2021', 9, 2, 1, 50, '2025-11-09 01:51:33'),
(17, 'Tiempo de perdon', '978-607-381-039-5', '2021', 9, 2, 1, 80, '2025-11-09 01:50:19'),
(18, 'Detrás del hielo', '978-84-98720-19-8', '2008', 10, 4, 1, 40, '2025-11-09 01:50:14'),
(19, 'El día D', '978-84-82400-38-6', '1994', 11, 7, 1, 495, '2025-11-09 02:05:01'),
(20, 'La senda del jaguar ', '978-607-380-907-8', '2021', 12, 2, 1, 80, '2025-11-13 05:26:44'),
(21, 'La revelación del águila ', '978-607-380-908-5', '2021', 12, 2, 1, 80, '2025-11-13 05:24:48'),
(22, 'El misterio de la serpiente Cóatl', '978-607-316-662-1', '2018', 13, 2, 1, 80, '2025-11-13 05:25:50'),
(23, 'Rayuela', '978-8420414706', '2013', 14, 8, 1, 350, '2025-11-09 23:00:53'),
(24, 'El Tiempo entre Costuras', '9788499983509', '2014', 15, 9, 1, 428, '2025-11-09 23:08:51'),
(25, 'El símbolo perdido', '978-607-07-0271-6', '2009', 16, 10, 1, 150, '2025-11-09 23:16:38'),
(26, 'El código da vince', '84-95618-60-5', '2003', 16, 3, 1, 70, '2025-11-15 03:25:44'),
(27, 'Inferno', '978-607-07-4643-0', '2013', 16, 10, 1, 80, '2025-11-09 23:20:28'),
(28, 'La fortaleza digital', '84-89367-01-9', '2006', 16, 3, 1, 100, '2025-11-09 23:22:17'),
(29, 'Ángeles y demonios', '8495618-71-0', '2004', 16, 3, 1, 50, '2025-11-09 23:23:30'),
(30, 'El niño que perdió la guerra', '978-607-384-876-3', '2024', 17, 2, 1, 549, '2025-11-13 05:46:36'),
(31, 'Piensa como un freak', '978-84-666-5695-5', '2014', 18, 11, 1, 70, '2025-11-13 14:20:11'),
(32, 'Confianza Ciega', '9786073191586', '2020', 19, 11, 1, 549, '2025-11-10 00:13:46'),
(33, 'Juicio final', '84-96546-72-1', '2006', 19, 4, 1, 249, '2025-11-10 00:18:55'),
(34, 'Las hijas del capitán', '978-607-07-5016-8', '2018', 15, 12, 1, 70, '2025-11-12 05:01:13'),
(35, 'La templanza', '978-607-07-2647-7', '2015', 15, 12, 1, 80, '2025-11-12 05:04:07'),
(36, 'Misión olvido', '978-607-07-1342-2', '2013', 15, 12, 1, 70, '2025-11-12 05:06:18'),
(37, 'En el corazón de los fiordos', '978-84-666-5223-0', '2012', 20, 11, 1, 100, '2025-11-12 05:13:08'),
(38, 'La ciudad de los secretos', '978-607-07-2345-2', '2014', 21, 12, 1, 80, '2025-11-12 05:17:47'),
(39, 'Ópalos de fuego', '978-607-480-808-7', '2014', 22, 11, 1, 100, '2025-11-12 05:29:27'),
(40, 'El brillo de la estrella del sur', '978-607-480-528-4', '2013', 22, 11, 1, 100, '2025-11-12 05:41:24'),
(41, 'El rio de la fortuna', '978-84-666-5165-3', '2012', 22, 11, 1, 100, '2025-11-12 05:43:35'),
(42, 'La balada del corazón salvaje', '978-84-666-5387-9', '2013', 23, 11, 1, 100, '2025-11-12 05:54:17'),
(43, 'Las olas del destino', '978-84-666-5322-0', '2013', 24, 11, 1, 70, '2025-11-12 05:58:08'),
(44, 'Lo que perdimos', '978-84-322-2843-8', '2009', 30, 13, 1, 50, '2025-11-13 04:44:26'),
(45, 'El infinito en la palma de la mano', '978-970-37-0766-9', '2008', 29, 13, 1, 70, '2025-11-13 04:45:46'),
(46, 'La supremacía Tolstoi', '978-6070732874', '2016', 28, 13, 1, 140, '2025-11-13 04:47:45'),
(47, 'El amanecer de un marido', '978-84-322-1284-0', '2010', 27, 13, 1, 100, '2025-11-13 04:49:27'),
(48, 'Gringo viejo', '968-6941-67-3', '2004', 26, 13, 1, 150, '2025-11-13 04:51:43'),
(49, 'Diente de leche', '978-84-322-1247-5', '2007', 25, 13, 1, 50, '2025-11-13 04:52:55'),
(50, 'Mal de amores', '978-607-07-1076-6', '2016', 32, 13, 1, 210, '2025-11-13 04:54:01'),
(51, 'Leonora', '978-84-322-1403-5', '2013', 31, 13, 1, 256, '2025-11-13 04:55:36'),
(52, 'El amante polaco I', '978-607-07-6387-8', '2019', 31, 13, 1, 100, '2025-11-13 04:57:09'),
(53, 'El amante polaco II', '978-6070780479', '2021', 31, 13, 1, 299, '2025-11-13 04:59:16'),
(54, 'La Amiga estupenda', '978-607-314-446-9', '2020', 33, 14, 1, 80, '2025-12-08 04:49:10'),
(55, 'La vida mentirosa de los adultos', '978-607-319-325-2', '2020', 33, 14, 1, 80, '2025-11-13 05:08:20'),
(56, 'Las deudas del cuerpo', '978-607-315-035-4', '2014', 33, 14, 1, 359, '2025-11-13 05:10:34'),
(57, 'Un mal nombre', '978-607-314-765-1', '2013', 33, 14, 1, 80, '2025-11-13 05:11:55'),
(58, 'El testamento', '84-96581-05-5', '2006', 9, 4, 1, 40, '2025-11-13 05:18:53'),
(59, 'La conspiración de los herejes', '84-96546-65-9', '2006', 34, 4, 1, 70, '2025-11-13 05:50:54'),
(60, 'El alamo', '978-607-07-0926-5', '2011', 38, 10, 1, 100, '2025-11-15 07:35:12'),
(61, 'El reino del dragón de oro ', '84-01-01-523--5', '2003', 51, 15, 1, 100, '2025-11-15 07:35:55'),
(62, 'Vida y destino', '978-970-810-381-7', '2008', 35, 14, 1, 100, '2025-11-13 14:26:20'),
(63, 'El perfume', '968-6005-17-X', '1991', 36, 13, 1, 70, '2025-11-13 14:49:47'),
(64, 'La lejanía del tesoro', '978-607-07-0901-2', '2014', 38, 10, 1, 100, '2025-11-15 07:30:48'),
(65, 'Noticia del imprerio', '968-406-925-1', '1999', 39, 10, 1, 100, '2025-11-15 02:58:27'),
(66, 'La chica del tren', '978-607-07-2838-9', '2015', 40, 10, 1, 80, '2025-11-15 03:02:34'),
(67, 'Terra nostra II', '978-726-104-8', '2002', 26, 10, 1, 70, '2025-11-15 03:19:25'),
(68, 'Cantar de siego', '970-726-109-9', '2002', 26, 10, 1, 70, '2025-11-15 03:21:15'),
(69, 'Código Génesis', '84-08-05851-7', '2005', 41, 10, 1, 100, '2025-11-15 03:27:41'),
(70, 'La sombra de dios', '84-08-06675-7', '2006', 41, 10, 1, 85, '2025-11-15 03:38:55'),
(71, 'Gracias', '978-6073911320', '2024', 42, 10, 1, 298, '2025-11-15 03:44:28'),
(72, 'El rumor de la caracola', '978-84-666-5852-2', '2016', 24, 11, 1, 70, '2025-12-14 16:18:37'),
(73, 'El laberinto de los espíritus ', '978-6070763991', '2020', 44, 10, 1, 498, '2025-11-15 04:37:59'),
(74, 'El juego del ángel', '978-970-37-0669-3', '2014', 44, 10, 1, 298, '2025-11-15 04:40:37'),
(75, 'La sombra del viento', '84-08-04364-1', '2002', 44, 10, 1, 100, '2025-11-15 04:41:54'),
(76, 'El prisionero del cielo', '978-6070737435', '2016', 44, 10, 1, 426, '2025-11-15 04:43:55'),
(77, 'La ciudad de vapor', '978-9584291387', '2020', 44, 10, 1, 261, '2025-11-15 04:45:24'),
(78, 'Pancho Villa', '970-37-0334-8', '2007', 38, 10, 1, 150, '2025-11-15 04:46:59'),
(79, 'Freedomland', '84-08-03444-8', '2000', 45, 10, 1, 100, '2025-11-15 04:52:03'),
(80, 'La dignidad encarnada', '978-607-072238-7', '2014', 46, 10, 1, 50, '2025-11-15 04:56:49'),
(81, 'Conócete a ti mismo', '978-607-07-2077-2', '2014', 48, 10, 1, 40, '2025-11-15 05:04:01'),
(82, 'Porque doblan las campanas', '09789807716314', '2014', 49, 8, 1, 415, '2025-12-14 02:06:11'),
(83, 'Un mundo sin fin', '978-970-810-255-1', '2007', 50, 15, 1, 100, '2025-11-15 06:29:10'),
(84, 'Conversando en ingles', '968-13-2530-3', '2006', 4, 1, 1, 30, '2025-11-15 06:49:23'),
(85, 'El llano en llamas', '978-968-5208-1', '2014', 52, 16, 1, 50, '2025-11-15 06:55:33'),
(86, 'Pedro paramo', '978-968-5208-55-.0', '2014', 52, 16, 1, 50, '2025-11-15 06:56:59'),
(87, 'Eva Luna', '968-13-2243-6', '1992', 51, 6, 1, 50, '2025-12-13 21:31:31'),
(88, 'Paula', '968-11-0150-2', '1995', 51, 15, 2, 60, '2025-12-07 19:54:38'),
(89, 'Violeta', '978-607-381-084-5', '2022', 51, 15, 1, 50, '2025-11-15 07:12:55'),
(90, 'Hija dela fortuna', '968-11-0347-5', '1999', 51, 15, 1, 100, '2025-11-15 07:15:16'),
(91, 'La ciudad de las bestias', '84-01-34166-3', '2002', 51, 15, 1, 100, '2025-11-15 07:18:41'),
(92, 'El hombre equivocado', '978-84-666-339-0', '2007', 19, 11, 1, 100, '2025-11-16 20:15:43'),
(93, 'La villa de las telas', '978-607-316-982-0', '2019', 58, 15, 1, 80, '2025-11-16 20:16:11'),
(94, 'La muerte del papa', '978-970-770-701-6', '2007', 53, 17, 1, 50, '2025-11-16 18:41:19'),
(95, 'El sexto sol', '978-607-11-0267-6', '2009', 53, 17, 1, 40, '2025-11-16 18:43:04'),
(96, 'Las horas distantes', '978-607-11-2033-5', '2013', 54, 17, 1, 100, '2025-11-16 19:09:36'),
(97, 'El secreto de dios', '978-607-31-3455-2', '2015', 55, 17, 1, 80, '2025-11-16 19:13:18'),
(98, 'No me alcanzará la vída', '978-970-58-0313-0', '2008', 56, 17, 1, 50, '2025-11-16 19:22:47'),
(99, 'Amor bajo el espino blanco', '978-8483653425', '2012', 57, 17, 1, 580, '2025-11-16 19:43:54'),
(100, 'Quien pierde paga', '978-607-3154039-2', '2016', 59, 15, 1, 80, '2025-12-03 04:39:26'),
(101, 'Dulce y amargo', '84-01-01454-9', '2001', 60, 15, 1, 80, '2025-11-16 20:27:25'),
(102, 'Un  asunto pendiente', '9788466323178', '2013', 19, 18, 1, 378, '2025-11-16 20:56:44'),
(103, 'La huesped The host', '978-607-11-0268-3', '2009', 61, 1, 1, 128, '2025-12-03 02:00:40'),
(104, 'Momo', '978-607-11-0254-6', '2009', 62, 18, 1, 70, '2025-12-02 05:58:23'),
(105, 'La división del norte', '978-607-747-607-8', '2018', 63, 9, 1, 429, '2025-12-03 03:35:40'),
(106, 'Millenninum lo que no ..', '978-607-07-5335-0', '2019', 64, 9, 1, 300, '2025-12-10 04:53:51'),
(107, 'La quinta columna', '978-607-0758577-1', '2022', 65, 9, 1, 50, '2025-12-03 04:46:00'),
(108, 'El viaje del elefante', '978-607-11-0632-2', '2013', 66, 18, 1, 70, '2025-12-03 04:20:18'),
(109, 'Artemio Cruz ', '978-97-0812-047-0', '2009', 26, 18, 2, 200, '2025-12-03 04:33:43'),
(110, 'Amanecer', '978-607-11-1418-1', '2011', 61, 18, 2, 379, '2025-12-08 05:11:55'),
(111, 'Vivir la vida', '970-710-050-5', '2002', 67, 18, 1, 40, '2025-12-03 04:55:03'),
(112, 'El Psicoanalista', '84-666-1732-9', '2004', 19, 19, 1, 400, '2025-12-04 02:39:34'),
(113, 'El Tren Pasa Primero', '978-607-07-4442-6', '2017', 31, 18, 1, 199, '2025-12-04 02:16:32'),
(114, 'El señor de los anillos', '978-6070792236', '2022', 68, 9, 1, 480, '2025-12-04 02:54:58'),
(115, 'Pregúntale a alicia', '978-970-731-123-7', '2006', 69, 18, 1, 50, '2025-12-04 02:59:09'),
(116, 'Los años con Laura Díaz', '978-607-314-468', '2016', 26, 6, 1, 50, '2025-12-06 17:39:54'),
(117, 'Todas las familias', '970-770-575-2', '2006', 26, 8, 1, 80, '2025-12-06 17:41:54'),
(118, 'Ensayo sobre la lucidez', '968-19-1474-0', '2004', 66, 8, 1, 245, '2025-12-06 17:47:08'),
(119, 'El hombre duplicado', '96819-1197-7', '2003', 66, 8, 1, 100, '2025-12-06 17:48:22'),
(120, 'Las intermitencias de la muerte', '9788420469454', '2005', 66, 8, 1, 100, '2025-12-06 19:01:45'),
(121, 'Todos los nombre', '968-19-0453-2', '1998', 66, 8, 1, 498, '2025-12-06 19:04:26'),
(122, 'El año de la muerte Ricardo Reis', '968-19-0390-0', '1997', 66, 8, 1, 100, '2025-12-10 04:56:05'),
(123, 'El Evangelio según Jesucristo', '968-19-0526-1', '1998', 66, 8, 1, 316, '2025-12-06 19:11:09'),
(124, 'Ensayo sobre la ceguera', '978-607-110-664-3', '2014', 66, 8, 1, 295, '2025-12-06 19:14:35'),
(125, 'Claraboya', '978-607-11-1729-9', '2012', 66, 8, 1, 2016, '2025-12-06 19:16:08'),
(126, 'El cuaderno del año del Nobel', '9786073173407', '2018', 66, 8, 1, 299, '2025-12-07 04:35:31'),
(127, 'Alabardas', '978-607-113-535-3', '2015', 66, 8, 1, 299, '2025-12-07 04:43:40'),
(128, 'El vencedor esta solo', '978-607-429-590-0', '2009', 70, 12, 1, 80, '2025-12-08 02:43:02'),
(129, 'El Peregrino', '978-607-313-780-5', '2015', 70, 12, 1, 40, '2025-12-08 02:45:36'),
(130, 'El Zahir', '968-59-5789-4', '2005', 70, 12, 1, 299, '2025-12-08 02:47:53'),
(131, 'La silla del äguila', '978-607-314-469-8', '2019', 26, 6, 1, 350, '2025-12-08 04:19:33'),
(132, 'La montaña mágica', '978-84-350-1838-8', '2015', 71, 20, 1, 1079, '2025-12-08 04:46:25'),
(133, 'Doktor Faustus', '978-8435018449', '2004', 71, 20, 1, 350, '2025-12-08 04:50:28'),
(134, 'Los Buddernbrook', '09788435017923', '2016', 71, 20, 1, 478, '2025-12-08 04:54:24'),
(135, 'La muerte en Venecia', '978-8435018838', '2010', 71, 20, 1, 289, '2025-12-08 04:56:37'),
(136, 'Eclipse', '978-970-58-0408-3', '2010', 61, 8, 2, 499, '2025-12-08 05:11:09'),
(137, 'Crepúsculo', '978-970-770-994-2', '2009', 61, 8, 2, 140, '2025-12-10 03:11:56'),
(138, 'Luna nueva', '978-970-58-0023-8', '2009', 61, 8, 2, 140, '2025-12-10 03:08:37'),
(139, 'La Citación', '84-666-0956-3', '2002', 9, 11, 1, 80, '2025-12-10 02:33:37'),
(140, 'La campaña', '978-607-319078-7', '2021', 26, 8, 1, 50, '2025-12-10 02:37:17'),
(141, 'Hombrecitos', '978-607-14-1162-4', '2013', 72, 21, 1, 40, '2025-12-10 02:46:34'),
(142, 'Mujercitas', '978-607-14-1173-0', '2013', 72, 21, 1, 55, '2025-12-10 02:48:09'),
(143, 'La segunda vida de Bree Tanner', '978-8420406268', '2010', 61, 8, 1, 100, '2025-12-10 03:15:21'),
(144, 'Cincuenta Sombras de Grey I', '978-607-311-096-9', '2015', 73, 12, 1, 100, '2025-12-10 04:15:33'),
(145, 'Cincuenta Sombras más oscuras', '978-607-311-4761--1', '2012', 73, 12, 1, 100, '2025-12-10 04:55:06'),
(146, 'Cincuenta Sombras liberadas III', '978-607-311-453-2', '2012', 73, 12, 1, 100, '2025-12-10 04:21:27'),
(147, 'Grey', '978-607-313-568-9', '2015', 73, 12, 1, 70, '2025-12-10 04:24:52'),
(148, 'David Copperfield', '09788444111070', '2012', 74, 23, 1, 149, '2025-12-10 04:36:00'),
(149, 'Grandes esperanzas', '9788483469880', '2008', 74, 6, 1, 239, '2025-12-10 04:40:21'),
(150, 'Cuentos de navidad', '09786071443670', '2009', 74, 6, 1, 239, '2025-12-10 04:44:08'),
(151, 'Millennium I', '978-84-233-4272-3', '2010', 75, 24, 1, 378, '2025-12-10 04:57:19'),
(152, 'Millennium II', '978-84233-4100-9', '2008', 75, 24, 1, 368, '2025-12-10 05:07:37'),
(153, 'Millennium III', '978-84-233-4161-0', '2009', 75, 24, 1, 100, '2025-12-10 05:09:12'),
(154, 'Ladrona de libros', '978-607-312-031-9', '2013', 110, 6, 1, 50, '2025-12-13 23:04:22'),
(155, 'Contemporanea', '978-970-780-264-3', '2007', 109, 6, 1, 50, '2025-12-13 23:05:29'),
(156, 'Millennium IV', '978-607-07-535-0', '2018', 75, 24, 1, 297, '2025-12-10 05:13:27'),
(157, 'Corazón diario de un niño', '750-227-567-036-8', '2023', 77, 25, 2, 142, '2025-12-12 05:22:42'),
(158, 'AMLO: Vida privada', '978-6073108621', '2012', 79, 12, 2, 200, '2025-12-11 04:35:38'),
(159, 'La mafia que se adueño de M.', '978-607-310-069-4', '2012', 42, 12, 1, 100, '2025-12-11 04:30:29'),
(160, 'No decir a dios  a la esperanza', '978-6073113434', '2012', 42, 12, 1, 100, '2025-12-11 04:32:21'),
(161, 'Hacia una economía moral', '978-6070765360', '2019', 42, 10, 1, 198, '2025-12-11 04:37:26'),
(162, 'Los juegos del hambre', '978-607-400-190-7', '2012', 80, 26, 1, 100, '2025-12-11 04:58:04'),
(163, 'Sinsajo', '978-607-400-450-2', '2012', 80, 26, 1, 100, '2025-12-11 04:56:16'),
(164, 'En llama', '978-607-400-396-3', '2012', 80, 26, 1, 100, '2025-12-11 04:57:25'),
(165, 'Cuentos sobre naturales', '978-607-11-2144-8', '2012', 26, 8, 1, 50, '2025-12-11 05:06:21'),
(166, 'Tuneles', '978-84-96886-03-2', '2007', 81, 27, 1, 80, '2025-12-11 05:42:31'),
(167, 'Profundidades', '978-84-9688609-4', '2008', 81, 27, 1, 80, '2025-12-11 05:43:48'),
(168, 'Caída libre ', '978-84-96886-17-9', '2009', 81, 27, 1, 50, '2025-12-11 05:45:43'),
(169, 'Al límite', '978-84-96886-25-4', '2011', 81, 27, 1, 80, '2025-12-11 05:47:33'),
(170, 'Todos los que se han ido', '978-607-385-971-4', '2025', 82, 28, 1, 499, '2025-12-12 02:36:07'),
(171, 'Memoria de la casa muerta', '978-607-14-1755-8', '2014', 107, 21, 2, 140, '2025-12-13 20:53:38'),
(172, 'Por el camino de Swann', '978-607-14-2032-9', '2016', 84, 21, 1, 90, '2025-12-12 03:21:00'),
(173, 'A las sombras de las muchachas', '978-607-14-2044-2', '2016', 84, 21, 1, 120, '2025-12-12 03:22:29'),
(174, 'El mundo de Guermantes', '978-607-14-2050-3', '2016', 84, 21, 1, 120, '2025-12-12 03:26:23'),
(175, 'Viaje al centro de la tierra', '978-607-14-1108-2', '2014', 85, 21, 1, 80, '2025-12-12 04:54:22'),
(176, 'Poema de Mio Cid', '978-607-14-1155-6', '2013', 69, 21, 1, 45, '2025-12-12 04:56:15'),
(177, 'Las mil y una noches', '978-607-14-1171-6', '2013', 69, 21, 1, 57, '2025-12-12 04:58:28'),
(178, 'Los miserables', '978-607-14-1172-3', '2013', 86, 21, 1, 84, '2025-12-12 05:01:44'),
(179, 'El conde de Montecristo', '978-607-14-1146-4', '2014', 87, 21, 1, 100, '2025-12-12 05:06:51'),
(180, 'Colmillo blanco', '978-607-14-1133-4', '2013', 88, 21, 1, 46, '2025-12-12 05:12:22'),
(181, 'México bárbaro', '978-607-14-1152-5', '2013', 90, 21, 1, 51, '2025-12-12 05:26:01'),
(182, 'Popol Vuh', '978-607-14-1156-3', '2013', 69, 21, 1, 40, '2025-12-13 04:43:54'),
(183, 'Carta al padre', '978-607-14-1132-7', '2014', 91, 21, 1, 50, '2025-12-13 04:47:00'),
(184, 'El arte de la guerra', '978-607-14-1144-0', '2013', 92, 21, 1, 30, '2025-12-13 04:49:08'),
(185, 'Demian', '978-607-14-1138-9', '2013', 93, 21, 1, 34, '2025-12-13 04:51:13'),
(186, 'Cumbres borrascosas', '978-607-14-1749-7', '2015', 94, 21, 1, 80, '2025-12-13 04:54:06'),
(187, 'El Anticristo', '978-607-14-1127-3', '2013', 95, 21, 1, 28, '2025-12-13 04:56:27'),
(188, 'Teatro joven de Mèxico', '978-607-14-1183-9', '2013', 96, 21, 1, 70, '2025-12-13 04:59:33'),
(189, 'Drácula', '978-607-14-1151-8', '2013', 97, 21, 1, 45, '2025-12-13 05:01:38'),
(190, 'Navidad en las montañas', '978-607-14-1174-7', '2013', 98, 21, 1, 45, '2025-12-13 05:04:45'),
(191, 'Un mundo feliz', '978-607-14-1107-5', '2013', 99, 21, 1, 40, '2025-12-13 05:07:23'),
(192, 'Cazadores de microbios', '978-607-14-1145-7', '2013', 100, 21, 1, 90, '2025-12-13 05:09:43'),
(193, 'La república', '978-607-14-1180-8', '2013', 101, 21, 1, 70, '2025-12-13 05:12:00'),
(194, 'Los 7 hábitos de los adolescentes', '978-970-780-273-5', '2012', 102, 6, 1, 40, '2025-12-13 17:31:51'),
(195, 'Ciudades desiertas', '978-607-314-492-6', '2016', 104, 6, 1, 40, '2025-12-13 20:21:07'),
(196, 'Ana Karenina', '978-607-14-1493-9', '2014', 105, 21, 1, 130, '2025-12-13 20:26:51'),
(197, 'El poder del amor', '978-607-380-632-9', '2010', 106, 6, 1, 30, '2025-12-13 20:41:13'),
(198, 'El idiota', '978-607-311-514-8', '2013', 107, 6, 1, 100, '2025-12-13 20:46:49'),
(199, 'Mi país inventado', '970-780-268-5', '2006', 51, 29, 1, 50, '2025-12-13 21:34:11'),
(200, 'Jardín sombríos', '968-5960-98-4', '2006', 108, 6, 1, 50, '2025-12-13 23:06:23'),
(201, 'Para mi eres divina', '978-607-310-626-9', '2011', 111, 6, 1, 40, '2025-12-13 23:10:02'),
(202, 'Yo mato', '968-5964-60-2', '2002', 112, 6, 1, 50, '2025-12-13 23:13:10'),
(203, 'Las armas alba', '978-607-429-653-2', '2009', 114, 6, 1, 70, '2025-12-13 23:30:04'),
(204, 'Guerra en el paraíso', '978-6074296525', '2017', 114, 6, 1, 197, '2025-12-13 23:33:05'),
(205, 'Robinson Crusoe', '978-607-311-850-7', '2013', 115, 6, 1, 150, '2025-12-13 23:36:24'),
(206, 'De perfil', '978-607-312-157-6', '2017', 104, 6, 1, 50, '2025-12-13 23:39:01'),
(207, 'La teoría del todo', '978-607-310-031-1', '2021', 116, 6, 1, 150, '2025-12-13 23:45:21'),
(208, 'Memoria de Adriano', '978-607-310-322-0', '2012', 117, 6, 1, 152, '2025-12-13 23:50:06'),
(209, 'Amirbar', '978-607-312-014-2', '2013', 118, 6, 1, 150, '2025-12-13 23:53:39'),
(210, 'La nieve del almirante', '978-607-312-013-5', '2013', 118, 6, 1, 150, '2025-12-13 23:54:58'),
(211, 'Los pilares de la tierra', '968-5964-94-7', '2006', 50, 6, 1, 15, '2025-12-13 23:58:19'),
(213, 'Orgullo y prejuicio', '978-607-415-359-0', '2013', 121, 31, 1, 230, '2025-12-15 02:57:07'),
(214, 'Emma', '978-1972-', '1972', 121, 31, 1, 35, '2025-12-15 03:02:41'),
(215, 'Guerra y Paz', '970-666-852-7', '2005', 105, 31, 1, 80, '2025-12-15 03:05:54'),
(216, 'Selección 1899-1961', '970-66-770-9', '2011', 49, 31, 1, 250, '2025-12-15 03:18:02'),
(220, 'Los 7 hábitos de la gente ', '84-4930432-6', '1997', 122, 11, 1, 50, '2025-12-17 04:36:48'),
(221, 'El rumor de la caracolar', '968-13-4032-10', '2021', 73, 8, 1, 490, '2025-12-17 04:38:51'),
(223, 'La vida de Salvador Bernal', '978-84-7953-253-8', '2025', 73, 25, 1, 50, '2025-12-17 04:41:50');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nacionalidad`
--

CREATE TABLE `nacionalidad` (
  `id_nacionalidad` int(11) NOT NULL,
  `nombre_nacionalidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

--
-- Volcado de datos para la tabla `nacionalidad`
--

INSERT INTO `nacionalidad` (`id_nacionalidad`, `nombre_nacionalidad`) VALUES
(1, 'Mexicana'),
(2, 'Estadounidense'),
(3, 'Colombiano'),
(4, 'chileno'),
(5, 'Franceses'),
(6, 'Ingleses'),
(7, 'Españoles'),
(8, 'Portugueses'),
(9, 'Argentino'),
(10, 'Italiano'),
(11, 'Ruso'),
(12, 'Alemán');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `prestamos`
--

CREATE TABLE `prestamos` (
  `id_prestamo` int(11) NOT NULL,
  `id_libro` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_prestamo` date NOT NULL,
  `fecha_devolucion_prevista` date NOT NULL,
  `fecha_devolucion_real` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombre`, `apellido`, `email`, `telefono`, `direccion`) VALUES
(1, 'Alberto', 'Bernal Ramírez', 'smb34abr@gmail.com', '5534219902', 'José María Morelos 79-4, Barrio del niño Jesus, Ciudad de México.'),
(2, 'María Emelia', 'Tejeda romero', 'melytejeda31@hotmail.com', '5516481486', 'José María Morelos 79-4, Barrio del niño Jesus, Ciudad de México.'),
(3, 'Sebastián', 'Bernal Tejeda', 'sbernal@gmail.com', '5513323325', 'José María Morelos 79-4, Barrio del niño Jesus, Ciudad de México.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `editorial`
--
ALTER TABLE `editorial`
  ADD PRIMARY KEY (`id_editorial`),
  ADD UNIQUE KEY `nombre` (`nombre_editorial`),
  ADD UNIQUE KEY `nombre_editorial` (`nombre_editorial`);

--
-- Indices de la tabla `escritores`
--
ALTER TABLE `escritores`
  ADD PRIMARY KEY (`id_escritor`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`id_libro`),
  ADD UNIQUE KEY `isbn` (`isbn`),
  ADD UNIQUE KEY `titulo` (`titulo`),
  ADD UNIQUE KEY `titulo_2` (`titulo`),
  ADD KEY `id_escritor` (`id_escritor`),
  ADD KEY `id_editorial` (`id_editorial`);

--
-- Indices de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  ADD PRIMARY KEY (`id_nacionalidad`);

--
-- Indices de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD PRIMARY KEY (`id_prestamo`),
  ADD KEY `id_libro` (`id_libro`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `editorial`
--
ALTER TABLE `editorial`
  MODIFY `id_editorial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `escritores`
--
ALTER TABLE `escritores`
  MODIFY `id_escritor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `id_libro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=245;

--
-- AUTO_INCREMENT de la tabla `nacionalidad`
--
ALTER TABLE `nacionalidad`
  MODIFY `id_nacionalidad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `prestamos`
--
ALTER TABLE `prestamos`
  MODIFY `id_prestamo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `libros`
--
ALTER TABLE `libros`
  ADD CONSTRAINT `libros_ibfk_1` FOREIGN KEY (`id_escritor`) REFERENCES `escritores` (`id_escritor`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `libros_ibfk_2` FOREIGN KEY (`id_editorial`) REFERENCES `editorial` (`id_editorial`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `prestamos`
--
ALTER TABLE `prestamos`
  ADD CONSTRAINT `prestamos_ibfk_1` FOREIGN KEY (`id_libro`) REFERENCES `libros` (`id_libro`) ON UPDATE CASCADE,
  ADD CONSTRAINT `prestamos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
