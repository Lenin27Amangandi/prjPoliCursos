-- database: ../database/poliHoteles.sqlite

DROP TABLE IF EXISTS Descuento; 
DROP TABLE IF EXISTS Reservacion;
DROP TABLE IF EXISTS Cliente;
DROP TABLE IF EXISTS FormaDePago;
DROP TABLE IF EXISTS Habitacion;
DROP TABLE IF EXISTS Sucursal;


-- Crear tabla de Sucursal
CREATE TABLE Sucursal (
    SucursalID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre TEXT NOT NULL,
    Direccion TEXT NOT NULL,
    Telefono TEXT
);

-- Crear tabla de Habitacion
CREATE TABLE Habitacion (
    HabitacionID INTEGER PRIMARY KEY AUTOINCREMENT,
    NumeroHabitacion INTEGER NOT NULL,
    TipoHabitacion TEXT NOT NULL,
    PrecioPorNoche REAL NOT NULL,
    SucursalID INTEGER,
    FOREIGN KEY (SucursalID) REFERENCES Sucursal(SucursalID)
);

-- Crear tabla de FormaDePago
CREATE TABLE FormaDePago (
    FormaDePagoID INTEGER PRIMARY KEY AUTOINCREMENT,
    MetodoDePago TEXT NOT NULL
);

-- Crear tabla de Cliente
CREATE TABLE Cliente (
    ClienteID INTEGER PRIMARY KEY AUTOINCREMENT,
    Nombre TEXT NOT NULL,
    Email TEXT NOT NULL,
    Telefono TEXT,
    Direccion TEXT
);

-- Crear tabla de Reservacion
CREATE TABLE Reservacion (
    ReservacionID INTEGER PRIMARY KEY AUTOINCREMENT,
    FechaLlegada DATE NOT NULL,
    FechaSalida DATE NOT NULL,
    NumeroPersonas INTEGER NOT NULL,
    EstadoReserva TEXT NOT NULL,
    SucursalID INTEGER,
    HabitacionID INTEGER,
    ClienteID INTEGER,
    FormaDePagoID INTEGER,
    DescuentoID INTEGER,
    FOREIGN KEY (SucursalID) REFERENCES Sucursal(SucursalID),
    FOREIGN KEY (HabitacionID) REFERENCES Habitacion(HabitacionID),
    FOREIGN KEY (ClienteID) REFERENCES Cliente(ClienteID),
    FOREIGN KEY (FormaDePagoID) REFERENCES FormaDePago(FormaDePagoID),
    FOREIGN KEY (DescuentoID) REFERENCES Descuento(DescuentoID)
);

-- Crear tabla de Descuento (opcional)
CREATE TABLE Descuento (
    DescuentoID INTEGER PRIMARY KEY AUTOINCREMENT,
    PorcentajeDescuento REAL NOT NULL,
    Descripcion TEXT,
    FechaInicio DATE,
    FechaFin DATE
);
