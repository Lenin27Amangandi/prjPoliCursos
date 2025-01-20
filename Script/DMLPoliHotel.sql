-- database: ../database/poliHoteles.sqlite


-- Insertar datos en la tabla Sucursal
INSERT INTO Sucursal (Nombre, Direccion, Telefono)
VALUES 
    ('Hotel Sol', 'Calle Ficticia 123, Ciudad A', '555-1234'),
    ('Hotel Mar', 'Avenida del Mar 456, Ciudad B', '555-5678'),
    ('Hotel Montaña', 'Carretera a la Montaña 789, Ciudad C', '555-8765'),
    ('Hotel Playa', 'Playa Azul 101, Ciudad D', '555-4321'),
    ('Hotel Centro', 'Centro Historico 202, Ciudad E', '555-1111');

-- Insertar datos en la tabla Habitacion
INSERT INTO Habitacion (NumeroHabitacion, TipoHabitacion, PrecioPorNoche, SucursalID)
VALUES 
    (101, 'Individual', 50.00, 1),
    (102, 'Doble', 75.00, 1),
    (201, 'Suite', 150.00, 2),
    (202, 'Doble', 80.00, 2),
    (301, 'Individual', 45.00, 3);

-- Insertar datos en la tabla FormaDePago
INSERT INTO FormaDePago (MetodoDePago)
VALUES 
    ('Tarjeta de Crédito'),
    ('Efectivo'),
    ('Transferencia Bancaria'),
    ('PayPal'),
    ('Tarjeta de Débito');

-- Insertar datos en la tabla Cliente
INSERT INTO Cliente (Nombre, Email, Telefono, Direccion)
VALUES 
    ('Juan Pérez', 'juanperez@email.com', '555-5555', 'Calle Falsa 123, Ciudad A'),
    ('Ana López', 'analopez@email.com', '555-6666', 'Avenida Siempre Viva 456, Ciudad B'),
    ('Carlos Gómez', 'carlosgomez@email.com', '555-7777', 'Calle Real 789, Ciudad C'),
    ('María Ruiz', 'mariaruiz@email.com', '555-8888', 'Calle Luna 101, Ciudad D'),
    ('Luis García', 'luisgarcia@email.com', '555-9999', 'Calle Sol 202, Ciudad E');

-- Insertar datos en la tabla Descuento (opcional)
INSERT INTO Descuento (PorcentajeDescuento, Descripcion, FechaInicio, FechaFin)
VALUES 
    (10.0, 'Descuento por temporada baja', '2025-01-01', '2025-03-31'),
    (15.0, 'Descuento de cumpleaños', '2025-01-15', '2025-01-31'),
    (5.0, 'Descuento por pago anticipado', '2025-02-01', '2025-02-28'),
    (20.0, 'Descuento especial', '2025-03-01', '2025-03-15'),
    (8.0, 'Descuento de fidelidad', '2025-01-01', '2025-12-31');

SELECT * FROM Sucursal;
SELECT * FROM Habitacion;
SELECT * FROM Cliente;
SELECT * FROM FormaDePago;
SELECT * FROM Descuento;

SELECT * FROM Sucursal;
SELECT * FROM Habitacion;
SELECT * FROM Cliente;
SELECT * FROM FormaDePago;
SELECT * FROM Descuento;

-- Insertar datos en la tabla Reservacion
INSERT INTO Reservacion (FechaLlegada, FechaSalida, NumeroPersonas, EstadoReserva, SucursalID, HabitacionID, ClienteID, FormaDePagoID, DescuentoID)
VALUES 
    ('2025-02-01', '2025-02-05', 1, 'Confirmada', 1, 1, 1, 1, 1),  -- Aquí las claves foráneas deben coincidir
    ('2025-02-10', '2025-02-12', 2, 'Confirmada', 2, 3, 2, 2, 1),
    ('2025-03-01', '2025-03-03', 1, 'Pendiente', 3, 5, 3, 3, 1),
    ('2025-03-15', '2025-03-20', 4, 'Confirmada', 2, 4, 4, 4, 2),
    ('2025-01-20', '2025-01-25', 1, 'Cancelada', 1, 1, 5, 5, 1);


    SELECT 
    S.Nombre AS NombreSucursal,
    F.MetodoDePago AS FormaDePago,
    C.Nombre AS NombreCliente,
    D.PorcentajeDescuento AS PorcentajeDescuento,
    H.TipoHabitacion AS TipoHabitacion
FROM 
    Reservacion R
JOIN 
    Sucursal S ON R.SucursalID = S.SucursalID
JOIN 
    FormaDePago F ON R.FormaDePagoID = F.FormaDePagoID
JOIN 
    Cliente C ON R.ClienteID = C.ClienteID
JOIN 
    Descuento D ON R.DescuentoID = D.DescuentoID
JOIN 
    Habitacion H ON R.HabitacionID = H.HabitacionID;



