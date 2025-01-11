-- database: ../database/udemy2k24.sqlite
/*
CopyRight
autor: Lenin Amangandi
fecha: 2024-07-21
 */

INSERT INTO TipoUsuario (Profesion) VALUES
    ('Estudiante')
    ,('Maestro');

INSERT INTO Genero (NombreGenero) VALUES
    ('Hombre')
    ,('Mujer');    

INSERT INTO Curso (NombreCurso) VALUES
    ('Fisica')
    ,('Programacion')
    ,('Quimica')
    ,('Matematica');

INSERT INTO CredencialUsuario (Usuario, Clave)
VALUES ('Xander_Half', '123X')
    ,('Eren_Jeager', '123E')
    ,('Alice_Reiss', '123A');

INSERT INTO Usuario (Nombre, Apellido, Cedula, IdTipoUsuario, IdGenero, IdCredencialUsuario, IdCursoPago)
VALUES ('Lenin', 'Amangandi','1753193828', 1, 1, 1, 1)
    ,('Eren', 'Jeager', '1753193827', 2, 1, 2, 2)
    ,('Alice', 'Reiss','1753193826' , 2, 1, 3, 3);

    SELECT * FROM Usuario WHERE IdUsuario = 3;

    UPDATE Usuario 
    SET Nombre ='Levy'
    WHERE Cedula= '1753193827' ;

INSERT INTO FormaPago (FormaPago) VALUES
    ('TargetaCredito'),
    ('TargetaDebito'),
    ('Paypal'),
    ('Transferencia'),
    ('Efectivo');

-- Insertar datos en CursoPago
INSERT INTO CursoPago (IdFormaPago, IdCurso, Valor) VALUES
    (1, 1, 100.0),
    (2, 1, 95.0),  
    (3, 2, 200.0), 
    (1, 3, 150.0),  
    (4, 4, 80.0);  