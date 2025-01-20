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

    INSERT INTO Usuario (Nombre, Apellido, IdTipoUsuario, Usuario, Contraseña, Telefono)
    VALUES
    ('Juan'     , 'Perez'   , 8 , 'juanperez'   , '1234Jp', '0986452134'),  --1
    ('Ana'      , 'Lopez'   , 9 , 'analopez'    , '1234Al', '0986452121'),  --2
    ('Carlos'   , 'Gomez'   , 10, 'carlosgomez' , '1234CG', '0986452111'),  --3
    ('Maria'    , 'Ruiz'    , 8 , 'mariaruiz'   , '1234Mr', '0986452100'),  --4
    ('Luis'     , 'Garcia'  , 9 , 'luisgarcia'  , '1234Lg', '0986452999'),  --5
    ('Liam'     , 'Diaz'    , 9 , 'liamdiaz'    , '1234Ldiaz', '0986452119'), --6
    ('Sofia'    , 'Torres'  , 10, 'sofiatorres' , '1234St', '0986452110'),  --7
    ('Lucas'    , 'Velez'   , 8 , 'lucasvelez'  , '1234Lv', '0986452112'),  --8
    ('Valeria'  , 'Cruz'    , 9 , 'valeriacruz' , '1234Vc', '0986452113'),  --9
    ('Mateo'    , 'Paz'     , 10, 'mateopaz'    , '1234Mp', '0986452114'),  --10
    ('Camila'   , 'Mora'    , 8 , 'camilamora'  , '1234Cm', '0986452115'),  --11
    ('Benjamin' , 'Ramos'   , 9 , 'benjaminramos', '1234Br', '0986452116'), --12
    ('Isabella' , 'Vargas'  , 10, 'isabellavargas', '1234Ivarga', '0986452117'), --13
    ('Samuel'   , 'Arias'   , 8 , 'samuelarias' , '1234SaLaria', '0986452118'), --14
    ('Emilia'   , 'Acosta'  , 9 , 'emiliaacosta' , '1234Eacosta', '0986452120'), --15
    ('Miguel'   , 'Molina'  , 10, 'miguelmolina' , '1234Mmolina', '0986452122'), --16
    ('Sara'     , 'Gutierrez', 8 , 'saragutierrez', '1234Sgutierrez', '0986452123'), --17
    ('Daniel'   , 'Ortiz'   , 9 , 'danielortiz' , '1234Dortiz', '0986452124'), --18
    ('Victoria' , 'Jimenez' , 10, 'victoriajimenez', '1234Vjimenez', '0986452125'), --19
    ('Martin'   , 'Silva'   , 8 , 'martinsilva' , '1234Msilva', '0986452126'); --20


INSERT INTO
    Habitacion (IdTipoHabitacion, NumeroHabitacion, PrecioHabitacion)
VALUES
     (11, 101, 30) --1
    ,(12, 102, 50)  --2
    ,(13, 201, 75) --3
    ,(14, 401, 100) --4
    ,(15, 501, 300) --5
    ,(11, 103, 30) --6
    ,(12, 104, 50) --7
    ,(13, 202, 75) --8
    ,(14, 402, 100) --9
    ,(15, 502, 300) --10
    ,(11, 105, 30) --11
    ,(12, 106, 50) --12
    ,(13, 203, 75) --13
    ,(14, 403, 100) --14
    ,(15, 503, 300) --15
    ,(11, 107, 30) --16
    ,(12, 108, 50) --17
    ,(13, 204, 75) --18
    ,(14, 404, 100) --19
    ,(15, 504, 300); --20

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
    ,(5, 5, 1, 4, 1, '2025-01-20', '2025-01-25') --5

    ,(6, 6, 3, 5, 2, '2025-02-15', '2025-02-18'), --6
    (7, 7, 1, 6, 3, '2025-03-05', '2025-03-10'), --7
    (8, 8, 2, 7, 4, '2025-03-25', '2025-03-30'), --8
    (9, 9, 3, 4, 1, '2025-01-15', '2025-01-20'), --9
    (10, 10, 1, 5, 2, '2025-02-20', '2025-02-25'), --10

    (11, 11, 2, 6, 3, '2025-03-10', '2025-03-15'), --11
    (12, 12, 3, 7, 4, '2025-03-20', '2025-03-25'), --12
    (13, 13, 1, 4, 1, '2025-01-10', '2025-01-15'), --13
    (14, 14, 2, 5, 2, '2025-02-05', '2025-02-10'), --14
    (15, 15, 3, 6, 3, '2025-03-15', '2025-03-20'), --15

    (16, 16, 1, 7, 4, '2025-03-25', '2025-03-30'), --16
    (17, 17, 2, 4, 1, '2025-01-05', '2025-01-10'), --17
    (18, 18, 3, 5, 2, '2025-02-10', '2025-02-15'), --18
    (19, 19, 1, 6, 3, '2025-03-05', '2025-03-10'), --19
    (20, 20, 2, 7, 4, '2025-03-15', '2025-03-20'); --20


    SELECT 
        Reservacion.IdReservacion,
        Habitacion.NumeroHabitacion,
        Habitacion.IdTipoHabitacion,
        Usuario.Nombre AS Usuario,
        Usuario.Apellido AS Apellido,
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






