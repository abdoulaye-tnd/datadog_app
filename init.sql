BEGIN;

CREATE USER datadog;
GRANT SELECT ON pg_stat_database TO datadog;


CREATE TABLE Animal (
    id integer NOT NULL DEFAULT '0',
    espece VARCHAR(40) NOT NULL,
    sexe CHAR(1),
    date_naissance VARCHAR(30),
    nom VARCHAR(30),
    commentaires TEXT,
    PRIMARY KEY (id)
);

CREATE TABLE STUDENT
      (ADMISSION INT PRIMARY KEY     NOT NULL,
      NAME           TEXT    NOT NULL,
      AGE            INT     NOT NULL,
      COURSE        CHAR(50),
      DEPARTMENT        CHAR(50));

INSERT INTO Animal (id,espece, sexe, date_naissance, nom, commentaires) VALUES 
('1','chien', 'F', '2008-02-20 15:45:00' , 'Canaille', NULL),
('2','chien', 'F','2009-05-26 08:54:00'  , 'Cali', NULL),
('3','chien', 'F','2007-04-24 12:54:00' , 'Rouquine', NULL),
('4','chien', 'F','2009-05-26 08:56:00' , 'Fila', NULL),
('5','chien', 'F','2008-02-20 15:47:00' , 'Anya', NULL),
('6','chien', 'F','2009-05-26 08:50:00' ,'Louya' , NULL),
('7','chien', 'F', '2008-03-10 13:45:00','Welva' , NULL),
('8','chien', 'F','2007-04-24 12:59:00' ,'Zira' , NULL),
('9','chien', 'F', '2009-05-26 09:02:00','Java' , NULL),
('10','chien', 'M','2007-04-24 12:45:00' ,'Balou' , NULL),
('11','chien', 'M','2008-03-10 13:43:00' ,'Pataud' , NULL),
('12','chien', 'M','2007-04-24 12:42:00' , 'Bouli', NULL),
('13','chien', 'M', '2009-03-05 13:54:00','Zoulou' , NULL),
('14','chien', 'M','2007-04-12 05:23:00' ,'Cartouche' , NULL),
('15','chien', 'M', '2006-05-14 15:50:00', 'Zambo', NULL),
('16','chien', 'M','2006-05-14 15:48:00' ,'Samba' , NULL),
('17','chien', 'M', '2008-03-10 13:40:00','Moka' , NULL),
('18','chien', 'M', '2006-05-14 15:40:00','Pilou' , NULL),
('19','chat', 'M','2009-05-14 06:30:00' , 'Fiero', NULL),
('20','chat', 'M','2007-03-12 12:05:00' ,'Zonko', NULL),
('21','chat', 'M','2008-02-20 15:45:00' , 'Filou', NULL),
('22','chat', 'M','2007-03-12 12:07:00' , 'Farceur', NULL),
('23','chat', 'M','2006-05-19 16:17:00' ,'Caribou' , NULL),
('24','chat', 'M','2008-04-20 03:22:00' , 'Capou', NULL),
('25','chat', 'M','2006-05-19 16:56:00' , 'Raccou', 'Pas de queue depuis la naissance');


COMMIT;
