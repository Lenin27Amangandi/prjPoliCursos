-- database: ../database/poliSalud2k25.sqlite
DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS Catalogo;
DROP TABLE IF EXISTS CatalogoTipo;

CREATE TABLE CatalogoTipo (
        IdCatalogoTipo      INTEGER PRIMARY KEY AUTOINCREMENT
        ,NombreCatalogoTipo VARCHAR(20) NOT NULL

        ,Estado             VARCHAR(1) DEFAULT ('A')
        ,FechaCreacion      DATETIME DEFAULT (datetime ('now', 'localtime'))
        ,FechaModifica      DATETIME
    );

CREATE TABLE Catalogo(
    IdCatalogo INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdCatalogoTipo INTEGER NOT NULL
    ,NombreCatalogo VARCHAR(50) NOT NULL
    
    ,Estado VARCHAR(1) DEFAULT ('A')
    ,FechaCreacion DATETIME DEFAULT (datetime ('now', 'localtime'))
    ,FechaModifica DATETIME

    ,FOREIGN KEY (IdCatalogoTipo) REFERENCES CatalogoTipo(IdCatalogoTipo)
);

CREATE TABLE Usuario(
    IdUsuario INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdTipoUsuario INTEGER NOT NULL
    ,Nombre VARCHAR(50) NOT NULL
    ,Apellido VARCHAR(50) NOT NULL
    ,IdGenero INTEGER NOT NULL
    ,IdEspecialidad INTEGER NOT NULL
    ,Cedula VARCHAR(10) NOT NULL UNIQUE
    ,Usuario VARCHAR(10) NOT NULL UNIQUE
    ,Contraseña VARCHAR(10) NOT NULL UNIQUE
    ,FechaCita DATETIME NOT NULL

    ,Estado VARCHAR(1) DEFAULT ('A')
    ,FechaCreacion DATETIME DEFAULT (datetime ('now', 'localtime'))
    ,FechaModifica DATETIME

    ,FOREIGN KEY (IdTipoUsuario)  REFERENCES Catalogo(IdCatalogo)
    ,FOREIGN KEY (IdGenero)       REFERENCES Catalogo(IdCatalogo)
    ,FOREIGN KEY (IdEspecialidad) REFERENCES Catalogo(IdCatalogo)
);