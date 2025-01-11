-- database: ../database/udemy2k24.sqlite
/*
CopyRight
autor: Lenin Amangandi
fecha: 2024-07-21
*/

DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS Curso;
DROP TABLE IF EXISTS TipoUsuario;
DROP TABLE IF EXISTS Genero;
DROP TABLE IF EXISTS CredencialUsuario;
DROP TABLE IF EXISTS CursoPago;
DROP TABLE IF EXISTS FormaPago;

CREATE TABLE Usuario(
IdUsuario             INTEGER PRIMARY KEY AUTOINCREMENT
,Nombre               TEXT NOT NULL 
,Apellido             TEXT NOT NULL 
,Cedula               TEXT NOT NULL UNIQUE
,IdTipoUsuario        INTEGER NOT NULL 
,IdGenero             INTEGER NOT NULL
,IdCredencialUsuario  INTEGER NOT NULL
,IdCursoPago          INTEGER NOT NULL
,FOREIGN KEY (IdCursoPago) REFERENCES CursoPago(IdCursoPago)
,FOREIGN KEY (IdTipoUsuario) REFERENCES TipoUsuario(IdTipoUsuario)
,FOREIGN KEY (IdGenero) REFERENCES Genero(IdGenero)
,FOREIGN KEY (IdCredencialUsuario) REFERENCES CredencialUsuario(IdCredencialUsuario)
);

CREATE TABLE Curso (
IdCurso         Integer PRIMARY KEY AUTOINCREMENT
,NombreCurso     VARCHAR(50) NOT NULL
);

CREATE TABLE CredencialUsuario(
IdCredencialUsuario       INTEGER PRIMARY KEY AUTOINCREMENT
,Usuario         VARCHAR(20) NOT NULL
,Clave           VARCHAR(20) NOT NULL
,FechaCreacion   DATETIME DEFAULT (datetime('now', 'localtime'))  
);

CREATE TABLE TipoUsuario(
IdTipoUsuario      INTEGER PRIMARY KEY AUTOINCREMENT
,Profesion         VARCHAR(20) NOT NULL
);

CREATE TABLE Genero(
IdGenero        INTEGER PRIMARY KEY AUTOINCREMENT
,NombreGenero   VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE CursoPago (
    IdCursoPago INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdFormaPago INTEGER NOT NULL
    ,IdCurso INTEGER NOT NULL
    ,Valor FLOAT NOT NULL
    ,FechaPago DATETIME DEFAULT (datetime('now', 'localtime'))
    ,FOREIGN KEY (IdFormaPago) REFERENCES FormaPago(IdFormaPago)
    ,FOREIGN KEY (IdCurso) REFERENCES Curso(IdCurso)
);

CREATE TABLE FormaPago(
IdFormaPago INTEGER PRIMARY KEY AUTOINCREMENT
,FormaPago  VARCHAR(25) NOT NULL UNIQUE
);