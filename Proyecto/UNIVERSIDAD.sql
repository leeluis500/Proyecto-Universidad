CREATE DATABASE UNIVERSIDAD;
USE UNIVERSIDAD;

CREATE TABLE CARRERA(
CODIGO_CARRERA VARCHAR(5) PRIMARY KEY,
NOMBRE_CARRERA VARCHAR(20) NOT NULL
)  ENGINE=INNODB;
Create table Cursos(
CODIGO_CURSO int(5) PRIMARY KEY,
NOMBRE_CURSO VARCHAR(20) NOT NULL
)ENGINE=InnODB DEFAULT CHARSET=Latin1;
CREATE TABLE CATEDRATICO(
CODIGO_CATEDRATICO VARCHAR(5) PRIMARY KEY,
NOMBRE_CATEDRATICO VARCHAR(50) NOT NULL,
CUI_CATEDRATICO VARCHAR(20) NOT NULL,
ESTATUS_CATEDRATICO VARCHAR(1) NOT NULL,
FOREIGN KEY (CODIGO_CARRERA) REFERENCES CARRERA(CODIGO_CARRERA)
)  ENGINE=INNODB;
CREATE TABLE ESTUDIANTE(
CODIGO_ESTUDIANTE VARCHAR(5) PRIMARY KEY,
NOMBRE_ESTUDIANTE VARCHAR(50) NOT NULL,
CUI_ESTUDIANTE VARCHAR(20) NOT NULL,
ESTATUS_CATEDRATICO VARCHAR(1) NOT NULL,
FOREIGN KEY (CODIGO_CARRERA) REFERENCES CARRERA(CODIGO_CARRERA) )ENGINE=INNODB;
Create table AsignacionCursos(
LISTADO_ESTUDIANTESCURSO int(20) auto_increment PRIMARY KEY,
CODIGO_ESTUDIANTE INT(10), 
CODIGO_CATEDRATICO INT(10),
CODIGO_CARRERA INT(10),
FOREIGN KEY (CODIGO_ESTUDIANTE) REFERENCES ESTUDIANTE(CODIGO_ESTUDIANTE),
FOREIGN KEY (CODIGO_CATEDRATICO) REFERENCES CATEDRATICO(CODIGO_CATEDRATICO),
FOREIGN KEY (CODIGO_CARRERA) REFERENCES CARRERA(CODIGO_CARRERA)
)ENGINE=InnODB DEFAULT CHARSET=Latin1;
Create table sedes (
CODIGO_ESTUDIANTE int(10),
CODIGO_CATEDRATICO INT(10),
CODIGO_CURSOS INT(5),
CODIGO_FACULTADES VARCHAR(10),
FOREIGN KEY (CODIGO_ESTUDIANTE) REFERENCES ESTUDIANTE (CODIGO_ESTUDIANTE),
FOREIGN KEY (CODIGO_CATEDRATICO) REFERENCES CATEDRATICO(CODIGO_CATEDRATICO),
FOREIGN KEY (CODIGO_CARRERA) REFERENCES CARRERA(CODIGO_CARRERA)
)ENGINE=InnODB DEFAULT CHARSET=Latin1;
Create table Notas(
NOTAS INT(10) PRIMARY KEY,
CODIGO_CATEDRATICO VARCHAR(5),
CODIGO_CURSO int(5),
CODIGO_ESTUDIANTE VARCHAR(5),
FOREIGN KEY (CODIGO_CATEDRATICO) REFERENCES CATEDRATICO(CODIGO_CATEDRATICO),
FOREIGN KEY (CODIGO_CURSO) REFERENCES Cursos(CODIGO_CURSO),
FOREIGN KEY (CODIGO_ESTUDIANTE) REFERENCES ESTUDIANTE(CODIGO_ESTUDIANTE)
)ENGINE=InnODB DEFAULT CHARSET=Latin1;