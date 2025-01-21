-- database: ../database/poliCurso2k25.sqlite


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
    ,('Matematica')
    ,('Biologia')
    ,('Ingles');

INSERT INTO CredencialUsuario (Usuario, Clave)
VALUES ('Xander_Half', '123X')
    ,('Eren_Jeager', '123E')
    ,('Alice_Reiss', '123A')
    ,('John_Doe', '123J')
    ,('Jane_Smith', '123S')
    ,('Michael_Brown', '123M')
    ,('Emily_Davis', '123E')
    ,('Chris_Johnson', '123C')
    ,('Jessica_Wilson', '123J')
    ,('David_Jones', '123D')
    ,('Sarah_Miller', '123S')
    ,('Daniel_Taylor', '123D')
    ,('Laura_Anderson', '123L')
    ,('James_Thomas', '123J')
    ,('Emma_Moore', '123E')
    ,('Robert_Lee', '123R')
    ,('Olivia_Harris', '123O')
    ,('William_Clark', '123W')
    ,('Sophia_Lewis', '123S')
    ,('Joseph_Walker', '123J')
    ,('Mia_Hall', '123M');

INSERT INTO Usuario (Nombre, Apellido, Cedula, IdTipoUsuario, IdGenero, IdCredencialUsuario, IdCursoPago)
VALUES ('Lenin', 'Amangandi','1753193828', 1, 1, 1, 1)
    ,('Eren', 'Jeager', '1753193827', 2, 1, 2, 2)
    ,('Alice', 'Reiss','1753193826' , 2, 1, 3, 3)
    ,('John', 'Doe', '1753193825', 1, 1, 4, 4)
    ,('Jane', 'Smith', '1753193824', 2, 2, 5, 5)
    ,('Michael', 'Brown', '1753193823', 1, 1, 6, 6)
    ,('Emily', 'Davis', '1753193822', 2, 2, 7, 1)
    ,('Chris', 'Johnson', '1753193821', 1, 1, 8, 2)
    ,('Jessica', 'Wilson', '1753193820', 2, 2, 9, 3)
    ,('David', 'Jones', '1753193819', 1, 1, 10, 4)
    ,('Sarah', 'Miller', '1753193818', 2, 2, 11, 5)
    ,('Daniel', 'Taylor', '1753193817', 1, 1, 12, 6)
    ,('Laura', 'Anderson', '1753193816', 2, 2, 13, 1)
    ,('James', 'Thomas', '1753193815', 1, 1, 14, 2)
    ,('Emma', 'Moore', '1753193814', 2, 2, 15, 3)
    ,('Robert', 'Lee', '1753193813', 1, 1, 16, 4)
    ,('Olivia', 'Harris', '1753193812', 2, 2, 17, 5)
    ,('William', 'Clark', '1753193811', 1, 1, 18, 6)
    ,('Sophia', 'Lewis', '1753193810', 2, 2, 19, 1)
    ,('Joseph', 'Walker', '1753193809', 1, 1, 20, 2);

INSERT INTO FormaPago (FormaPago) VALUES
    ('TargetaCredito'),
    ('TargetaDebito'),
    ('Paypal'),
    ('Transferencia'),
    ('Efectivo');

INSERT INTO CursoPago (IdFormaPago, IdCurso, Valor) VALUES
    (1, 1, 100.0),
    (2, 1, 95.0),  
    (3, 2, 200.0), 
    (1, 3, 150.0),  
    (4, 4, 80.0)
    ,(2, 2, 90.0)
    ,(3, 3, 120.0)
    ,(4, 5, 110.0)
    ,(5, 6, 130.0)
    ,(1, 4, 85.0)
    ,(2, 5, 75.0)
    ,(3, 6, 95.0)
    ,(4, 1, 105.0)
    ,(5, 2, 115.0)
    ,(1, 3, 125.0)
    ,(2, 4, 135.0)
    ,(3, 5, 145.0)
    ,(4, 6, 155.0)
    ,(5, 1, 165.0)
    ,(1, 2, 175.0)
    ,(2, 3, 185.0)
    ,(3, 4, 195.0)
    ,(4, 5, 205.0)
    ,(5, 6, 215.0)
    ;  