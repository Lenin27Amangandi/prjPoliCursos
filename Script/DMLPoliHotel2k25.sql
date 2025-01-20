-- database: ../database/poliHotel2k25.sqlite

INSERT INTO
    CatalogoTipo (NombreCatalogoTipo)
VALUES
    ('Sucursal') --1
    ,('FormaPago') --2
    ,('TipoCliente')--3
    ,('TipoHabitacion') --4
    ;

INSERT INTO
    Catalogo (IdCatalogoTipo, NombreCatalogo)
VALUES
    (1, 'QuitoNorte') --1
    ,(1, 'QuitoSur') --2
    ,(1, 'Valle') --3
    
    ,(2, 'Efectivo') --4
    ,(2, 'Targeta Debito') --5
    ,(2, 'Targeta Credito') --6
    ,(2, 'Transferencia Bancaria') --7

    ,(3, 'Nuevo') --8
    ,(3, 'Vip') --9
    ,(3, 'Frecuente')--10
    
    ,(4, 'Individual') --11
    ,(4, 'Doble') --12
    ,(4, 'Suite') --13
    ,(4, 'Matrimonial') --14
    ,(4, 'Presidencial'); --15



INSERT INTO
    Usuario (Nombre, Apellido, IdTipoUsuario, Usuario, Contraseña, Telefono)
VALUES
    ('Juan'     , 'Perez'   , 8 , 'juanperez'   , '1234Jp', '0986452134') --1
    ,('Ana'     , 'Lopez'   , 9 , 'analopez'    , '1234Al', '0986452121') --2
    ,('Carlos'  , 'Gomez'   , 10, 'carlosgomez' , '1234CG', '0986452111')   --3
    ,('Maria'   , 'Ruiz'    , 8 , 'mariaruiz'   , '1234Mr', '0986452100') --4
    ,('Luis'    , 'Garcia'  , 9 , 'luisgarcia'  , '1234Lg', '0986452999'); --5

INSERT INTO
    Habitacion (IdTipoHabitacion, NumeroHabitacion, PrecioHabitacion)
VALUES
     (11, 101, 30) --1
    ,(12, 102, 50)  --2
    ,(13, 201, 75) --3
    ,(14, 401, 100) --4
    ,(15, 501, 300); --5

INSERT INTO
    Descuento (NombreDescuento, PorcentajeDescuento)
VALUES
    ('Descuento por pago anticipado', 0.05) --1
    ,('Descuento por Nuevo Cliente', 0.10) --2
    ,('Descuento de cumpleaños', 00.15)     --3
    ,('Descuento Fecha especial', 00.50);   --4



INSERT INTO
    Reservacion (IdHabitacion, IdUsuario, IdSucursal, IdFormaPago, IdDescuento, FechaEntrada, FechaSalida)
VALUES
    (1, 1, 1, 4, 1, '2025-02-01', '2025-02-05') --1
    ,(2, 2, 2, 5, 2, '2025-02-10', '2025-02-12') --2
    ,(3, 3, 3, 6, 3, '2025-03-01', '2025-03-03') --3
    ,(4, 4, 2, 7, 4, '2025-03-15', '2025-03-20') --4
    ,(5, 5, 1, 4, 1, '2025-01-20', '2025-01-25'); --5


    SELECT 
        Reservacion.IdReservacion,
        Habitacion.NumeroHabitacion,
        Usuario.Nombre AS Usuario,
        Sucursal.NombreCatalogo AS Sucursal,
        FormaPago.NombreCatalogo AS FormaPago,
        Descuento.NombreDescuento AS Descuento,
        Reservacion.FechaEntrada,
        Reservacion.FechaSalida
    FROM 
        Reservacion
    JOIN 
        Habitacion ON Reservacion.IdHabitacion = Habitacion.IdHabitacion,
        Usuario  As Usuario ON Reservacion.IdUsuario = Usuario.IdUsuario,
        Catalogo AS Sucursal ON Reservacion.IdSucursal = Sucursal.IdCatalogo,
        Catalogo AS FormaPago ON Reservacion.IdFormaPago = FormaPago.IdCatalogo,
        Descuento ON Reservacion.IdDescuento = Descuento.IdDescuento
        ;






