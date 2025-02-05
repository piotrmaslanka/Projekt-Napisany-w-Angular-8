-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2019 at 12:58 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Table structure for table `adresyfirm`
--

CREATE TABLE IF NOT EXISTS `adresyfirm`
(
    `idAdresyFirm` int(11)             AUTO_INCREMENT NOT NULL,
    `miejscowosc`  varchar(50) COLLATE utf8_polish_ci NOT NULL,
    `kodPocztowy`  int(11)                            NOT NULL,
    `ulica`        varchar(50) COLLATE utf8_polish_ci NOT NULL,
    `nrLokalu`     int(11)                            NOT NULL,
    PRIMARY KEY (`idAdresyFirm`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adresypracownikow`
--

CREATE TABLE IF NOT EXISTS `adresypracownikow`
(
    `idAdresyPracownikow` int(11)             AUTO_INCREMENT NOT NULL,
    `miejscowosc`         varchar(50) COLLATE utf8_polish_ci NOT NULL,
    `ulica`               varchar(50) COLLATE utf8_polish_ci NOT NULL,
    `neDomu`              int(11)                            NOT NULL,
    `nrLokalu`            int(11)                            NOT NULL,
    `kodPocztowy`         int(11)                            NOT NULL,
    PRIMARY KEY (`idAdresyPracownikow`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cv`
--

CREATE TABLE IF NOT EXISTS `cv`
(
    `idCV`                int(11)      AUTO_INCREMENT NOT NULL,
    `jezykiProgramowania` text COLLATE utf8_polish_ci NOT NULL,
    `znajomoscTechnologi` text COLLATE utf8_polish_ci NOT NULL,
    `opisSiebie`          text COLLATE utf8_polish_ci NOT NULL,
    `listMotywacyjny`     text COLLATE utf8_polish_ci NOT NULL,
    PRIMARY KEY (`idCV`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `egzamin`
--

CREATE TABLE IF NOT EXISTS `egzamin`
(
    `idEgzaminu`       int(11)  NOT NULL AUTO_INCREMENT,
    `czasRozpoczecia`  datetime NOT NULL,
    `czasZakonczenia`  datetime NOT NULL,
    `idStanowisko`     int(11)  NOT NULL,
    `idTworcyEgzaminu` int(11)  NOT NULL,
    `nazwa`            varchar(30) COLLATE utf8_polish_ci DEFAULT NULL,
    PRIMARY KEY (`idEgzaminu`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

--
-- Dumping data for table `egzamin`
--

INSERT IGNORE INTO `egzamin` (`idEgzaminu`, `czasRozpoczecia`, `czasZakonczenia`, `idStanowisko`, `idTworcyEgzaminu`,
                              `nazwa`)
VALUES (1, '2019-07-01 00:00:00', '2019-07-02 00:00:00', 1, 1, 'Ezamin1');

-- --------------------------------------------------------

--
-- Table structure for table `kategorie`
--

CREATE TABLE IF NOT EXISTS `kategorie`
(
    `idKategorii`    int(11)             AUTO_INCREMENT  NOT NULL,
    `nazwaKategorii` varchar(100) COLLATE utf8_polish_ci NOT NULL,
    PRIMARY KEY (`idKategorii`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

--
-- Dumping data for table `kategorie`
--

INSERT IGNORE INTO `kategorie` (`idKategorii`, `nazwaKategorii`)
VALUES (1, 'systemy');

-- --------------------------------------------------------

--
-- Table structure for table `odpowiedzi`
--

CREATE TABLE IF NOT EXISTS `odpowiedzi`
(
    `idOdpowiedzi` int(11)   AUTO_INCREMENT            NOT NULL,
    `odpowiedz`    varchar(500) COLLATE utf8_polish_ci NOT NULL,
    `idPytania`    int(11)                             NOT NULL,
    PRIMARY KEY (`idOdpowiedzi`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

--
-- Dumping data for table `odpowiedzi`
--

INSERT IGNORE INTO `odpowiedzi` (`idOdpowiedzi`, `odpowiedz`, `idPytania`)
VALUES (2, 'komputer', 2),
       (4, 'karta graficzna', 2),
       (6, 'procesor ', 2),
       (8, 'wejścia ', 4),
       (9, 'wyjścia ', 4),
       (10, 'wejścia i wyjścia', 4),
       (11, 'paint', 6),
       (12, 'gimp', 6),
       (13, 'corel', 6),
       (14, 'word', 8),
       (15, 'acces', 8),
       (16, 'excel', 8),
       (17, 'karty graficznej ', 10),
       (18, 'procesora', 10),
       (19, 'ram\'u', 10),
       (20, 'antywirusa', 12),
       (21, 'firewala', 12),
       (22, 'skanera', 12),
       (23, 'freeware', 14),
       (24, 'shareware', 14),
       (25, 'trail', 14),
       (26, 'powerpoint ', 16),
       (27, 'excel ', 16),
       (28, 'paint', 16),
       (29, '30 min', 18),
       (30, '1h', 18),
       (31, 'nie trzeba robić przerw', 18),
       (32, 'java', 20),
       (33, 'niemiecki', 20),
       (34, 'J00x', 20),
       (35, 'html', 22),
       (36, 'css', 22),
       (37, 'javascript', 22),
       (38, 'backdoor', 24),
       (39, 'trojan', 24),
       (40, 'malware', 24),
       (42, 'analizą i modelowaniem matematycznym obiektów i układów różnej natury', 27),
       (43,
        'gromadzeniem, wyszukiwaniem i przetwarzaniem informacji za pomocą komputerów i odpowiedniego oprogramowania',
        27),
       (44, 'wytwarzaniem i przetwarzaniem sygnałów w postaci prądów i napięć elektrycznych', 27),
       (45, 'sposób przekazywania komputerowi poleceń do wykonania', 29),
       (46, 'zbiór danych, które są zarządzane przez tą samą jednostkę administracyjną\r\n', 29),
       (47,
        'czynnik, któremu człowiek może przypisać określony sens (znaczenie), aby móc ją wykorzystywać do różnych celów\r\n',
        29),
       (48, 'sposób przekazywania komputerowi poleceń do wykonania', 30),
       (49, 'zbiór danych, które są zarządzane przez tą samą jednostkę administracyjną', 30),
       (50,
        'czynnik, któremu człowiek może przypisać określony sens (znaczenie), aby móc ją wykorzystywać do różnych celów',
        30);

-- --------------------------------------------------------

--
-- Table structure for table `pracownik`
--
CREATE TABLE IF NOT EXISTS `pracownik`
(
    `idPracownik`   int(11)             AUTO_INCREMENT NOT NULL,
    `imie`          varchar(30) COLLATE utf8_polish_ci NOT NULL,
    `nazwisko`      varchar(50) COLLATE utf8_polish_ci NOT NULL,
    `dataUrodzenia` date                               NOT NULL,
    `login`         varchar(11) COLLATE utf8_polish_ci NOT NULL,
    `haslo`         varchar(11) COLLATE utf8_polish_ci NOT NULL,
    `email`         varchar(30) COLLATE utf8_polish_ci NOT NULL,
    PRIMARY KEY (`idPracownik`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

--
-- Dumping data for table `pracownik`
--

INSERT IGNORE INTO `pracownik` (`idPracownik`, `imie`, `nazwisko`, `dataUrodzenia`, `login`, `haslo`, `email`)
VALUES (1, 'Bartosz', 'Ochoedowski', '2019-07-16', 'bartek', '59300', ''),
       (3, 'Bartosz', 'Ochędowski', '2017-07-01', 'adam', 'adam1', 'ochedowski.bartosz@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `pytania`
--

CREATE TABLE IF NOT EXISTS `pytania`
(
    `idPytania`    int(11)          AUTO_INCREMENT     NOT NULL,
    `trescPytania` varchar(500) COLLATE utf8_polish_ci NOT NULL,
    `idKategoria`  int(11)                             NOT NULL,
    `idEgzaminu`   int(11)                             NOT NULL,
    PRIMARY KEY (`idPytania`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

--
-- Dumping data for table `pytania`
--

INSERT IGNORE INTO `pytania` (`idPytania`, `trescPytania`, `idKategoria`, `idEgzaminu`)
VALUES (2, 'Jednostka centralna to ?', 1, 1),
       (4, 'Klawiatura to urządzenie ?', 1, 1),
       (6, 'Darmowy program graficzny dystrybucji Linux to?', 1, 1),
       (8, 'Do tworzenia baz danych używamy ?', 1, 1),
       (10, 'Wydajność w grach zależy głównie od?', 1, 1),
       (12, 'Do ochrony komputera przed wirusami urzywamy?', 1, 1),
       (14, 'Darmowe oprogramowanie to', 1, 1),
       (16, 'Do tworzenia prezentacji wykorzystamy?', 1, 1),
       (18, 'Co ile powinniśmy robić sobie przerwe podczas korzystania z komputera?', 1, 1),
       (20, 'Jezykiem programowania jest?', 1, 1),
       (22, 'Strony internetowe są w języku:', 1, 1),
       (24, 'Wirusem dającym dostęp do komputera bez wiedzy użytkowanika jest ?', 1, 1),
       (27, 'Wirus wyświerlający reklamy jest ?', 1, 1),
       (29, 'Informatyka zajmuje się:', 1, 1),
       (30, 'Informacja to:', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sesje`
--

CREATE TABLE IF NOT EXISTS `sesje`
(
    `token`        int(11) NOT NULL AUTO_INCREMENT,
    `pracownik_id` int(11) NOT NULL,
    PRIMARY KEY (`token`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

--
-- Dumping data for table `sesje`
--

INSERT IGNORE INTO `sesje` (`token`, `pracownik_id`)
VALUES (1, 1),
       (2, 1),
       (3, 1),
       (4, 1),
       (5, 1),
       (6, 1),
       (7, 1),
       (8, 1),
       (9, 1),
       (10, 1),
       (11, 1),
       (12, 1),
       (13, 1),
       (14, 1),
       (15, 1),
       (16, 1),
       (17, 1),
       (18, 1),
       (19, 1),
       (20, 1),
       (21, 1),
       (22, 1),
       (23, 1),
       (24, 1),
       (25, 1),
       (26, 1),
       (27, 1),
       (28, 1),
       (29, 1),
       (30, 1),
       (31, 1),
       (32, 1),
       (33, 1),
       (34, 1),
       (35, 1),
       (36, 1),
       (37, 1),
       (38, 1),
       (39, 1),
       (40, 1),
       (41, 1),
       (42, 1),
       (43, 1),
       (44, 1),
       (45, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stanowisko`
--

CREATE TABLE IF NOT EXISTS `stanowisko`
(
    `idStanowisko`    int(11)              AUTO_INCREMENT NOT NULL,
    `nazwaStanowiska` varchar(100) COLLATE utf8_polish_ci NOT NULL,
    `opisStanowiska`  varchar(150) COLLATE utf8_polish_ci NOT NULL,
    PRIMARY KEY (`idStanowisko`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tworcyegzaminu`
--

CREATE TABLE IF NOT EXISTS `tworcyegzaminu`
(
    `idTworcyEgzaminu` int(11)       AUTO_INCREMENT        NOT NULL,
    `nazwaFirmy`       varchar(100) COLLATE utf8_polish_ci NOT NULL,
    `nip`              int(11)                             NOT NULL,
    `opis`             text COLLATE utf8_polish_ci         NOT NULL,
    `idAdresyFirm`     int(11)                             NOT NULL,
    PRIMARY KEY (`idTworcyEgzaminu`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wczesniejszapraca`
--

CREATE TABLE IF NOT EXISTS `wczesniejszapraca`
(
    `idWczesniejszaPraca` int(11)          AUTO_INCREMENT     NOT NULL,
    `nazwaFirmy`          varchar(100) COLLATE utf8_polish_ci NOT NULL,
    `nip`                 int(30)                             NOT NULL,
    `stanowisko`          varchar(50) COLLATE utf8_polish_ci  NOT NULL,
    `pensja`              int(11)                             NOT NULL,
    `idPracownik`         int(11)                             NOT NULL,
    PRIMARY KEY (`idWczesniejszaPraca`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wyksztalcenie`
--

CREATE TABLE IF NOT EXISTS `wyksztalcenie`
(
    `idWyksztalcenie` int(11)                             NOT NULL,
    `szkola`          varchar(100) COLLATE utf8_polish_ci NOT NULL,
    `dataUrodzenia`   int(11)                             NOT NULL,
    `rodzajDyplomu`   varchar(200) COLLATE utf8_polish_ci NOT NULL,
    `idPracownik`     int(11)                             NOT NULL,
    PRIMARY KEY (`idWyksztalcenie`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wynikiegzaminu`
--

CREATE TABLE IF NOT EXISTS `wynikiegzaminu`
(
    `otrzymanePunkty` int(11) NOT NULL,
    `idQuiz`          int(11) NOT NULL,
    `idPracownik`     int(11) NOT NULL,
    `data`            date    NOT NULL
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8
  COLLATE = utf8_polish_ci;

/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
