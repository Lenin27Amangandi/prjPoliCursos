-- database: ../database/poliHotel2k25.sqlite

DROP TABLE IF EXISTS Reservacion;
DROP TABLE IF EXISTS Descuento;
DROP TABLE IF EXISTS Usuario;
DROP TABLE IF EXISTS CatalogoTipo;
DROP TABLE IF EXISTS Catalogo;
DROP TABLE IF EXISTS Habitacion;


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
    ,Nombre VARCHAR(50) NOT NULL
    ,Apellido VARCHAR(50) NOT NULL
    ,IdTipoUsuario INTEGER NOT NULL

    ,Usuario VARCHAR(10) NOT NULL UNIQUE
    ,Contraseña VARCHAR(10) NOT NULL UNIQUE
    ,Telefono VARCHAR(10) NOT NULL UNIQUE

    ,Estado VARCHAR(1) DEFAULT ('A')
    ,FechaCreacion DATETIME DEFAULT (datetime ('now', 'localtime'))
    ,FechaModifica DATETIME

    ,FOREIGN KEY (IdTipoUsuario)  REFERENCES Catalogo(IdCatalogo)
);

CREATE TABLE Habitacion(
    IdHabitacion INTEGER PRIMARY KEY AUTOINCREMENT
    ,IdTipoHabitacion INTEGER NOT NULL

    ,NumeroHabitacion INTEGER NOT NULL
    ,PrecioHabitacion INTEGER NOT NULL

    ,Estado VARCHAR(1) DEFAULT ('A')
    ,FechaCreacion DATETIME DEFAULT (datetime ('now', 'localtime'))
    ,FechaModifica DATETIME

    ,FOREIGN KEY (IdTipoHabitacion) REFERENCES Catalogo(IdCatalogo)
);

CREATE TABLE Descuento (
    IdDescuento INTEGER PRIMARY KEY AUTOINCREMENT
    ,NombreDescuento VARCHAR(50) NOT NULL
    ,PorcentajeDescuento DECIMAL(5, 2) NOT NULL

    ,Estado VARCHAR(1) DEFAULT ('A')
    ,FechaCreacion DATETIME DEFAULT (datetime ('now', 'localtime'))
    ,FechaModifica DATETIME
);

CREATE TABLE Reservacion(
    IdReservacion INTEGER PRIMARY KEY AUTOINCREMENT

    ,IdHabitacion INTEGER NOT NULL
    ,IdUsuario INTEGER NOT NULL
    ,IdSucursal INTEGER NOT NULL
    ,IdFormaPago INTEGER NOT NULL

    ,IdDescuento INTEGER NOT NULL
    ,FechaEntrada DATETIME NOT NULL
    ,FechaSalida DATETIME NOT NULL

    ,Estado VARCHAR(1) DEFAULT ('A')
    ,FechaCreacion DATETIME DEFAULT (datetime ('now', 'localtime'))
    ,FechaModifica DATETIME

    ,FOREIGN KEY (IdHabitacion) REFERENCES Habitacion(IdHabitacion)
    ,FOREIGN KEY (IdUsuario) REFERENCES Usuario(IdUsuario)
    ,FOREIGN KEY (IdDescuento) REFERENCES Descuento(IdDescuento)
    ,FOREIGN KEY (IdSucursal) REFERENCES Catalogo(IdCatalogo)
    ,FOREIGN KEY (IdFormaPago) REFERENCES Catalogo(IdCatalogo)
);
