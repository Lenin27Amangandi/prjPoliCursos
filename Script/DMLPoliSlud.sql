-- database: ../database/poliSalud2k25.sqlite
INSERT INTO
    CatalogoTipo (NombreCatalogoTipo)
VALUES
    ('TipoUsuario')
    ,('Sexo')
    ,('Especialidad');

INSERT INTO
    Catalogo (IdCatalogoTipo, NombreCatalogo)
VALUES
    (1, 'Estudiante') --1
    ,(1, 'Maestro') --2
    ,(2, 'Hombre') --3
    ,(2, 'Mujer') --4
    ,(3, 'Odontologia') --5
    ,(3, 'Medicina General') --6
    ,(3, 'Psicologia') --7
    ,(3, 'Nutricion'); --8

INSERT INTO Usuario (IdTipoUsuario,Nombre,Apellido,IdGenero,IdEspecialidad,Cedula,Usuario
                    ,Contraseña,FechaCita)
VALUES
    (1,'Lenin'      ,'Amangandi',3,5,'1753194828'  ,'LeninA'   ,'123L'  ,'2025-07-15 00:14:00')
    ,(1,'Alicia'    ,'Reiss'    ,4,8,'1753197828'  ,'AliciaR'  ,'123AL' ,'2025-07-16 00:12:00')
    ,(2,'Pablo'     ,'Perez'    ,3,6,'1753194727'  ,'ErenJ'    ,'123P'  ,'2025-07-16 00:11:00')
    ,(2,'Alice'     ,'Asturia'  ,4,7,'1753194626'  ,'AliceR'   ,'123A'  ,'2025-07-16 00:14:30')
    ,(1,'Carlos'    ,'Santana'  ,3,5,'1753194829' ,'CarlosS'  ,'123CS'  ,'2025-07-16 00:15:00')
    ,(1,'Maria'     ,'Lopez'    ,4,8,'1753194830'  ,'MariaL'   ,'123ML'  ,'2025-07-17 00:08:00')
    ,(2,'Ana'       ,'Gomez'    ,4,7,'1753194832'  ,'AnaG'     ,'123AG'  ,'2025-07-17 00:08:30')
    ,(2,'Juan'      ,'Martinez' ,3,6,'1753194831'  ,'JuanM'    ,'123JM'  ,'2025-07-17 00:09:00')
    ,(1,'Luis'      ,'Ramirez'  ,3,5,'1753194833'  ,'LuisR'    ,'123LR'  ,'2025-07-18 00:09:30')
    ,(1,'Laura'     ,'Torres'   ,4,8,'1753194834'  ,'LauraT'   ,'123LT'  ,'2025-07-18 00:12:00')
    ,(2,'Pedro'     ,'Vargas'   ,3,6,'1753194835'  ,'PedroV'   ,'123PV'  ,'2025-07-18 00:16:30')
    ,(2,'Sofia'     ,'Diaz'     ,4,7,'1753194836'  ,'SofiaD'   ,'123SD'  ,'2025-07-20 00:14:30')
    ,(1,'Miguel'    ,'Fernandez',3,5,'1753194837'  ,'MiguelF'  ,'123MF'  ,'2025-07-20 00:11:30')
    ,(1,'Isabel'    ,'Morales'  ,4,8,'1753194838'  ,'IsabelM'  ,'123IM'  ,'2025-07-21 00:06:00')
    ,(2,'Diego'     ,'Ortega'   ,3,6,'1753194839'  ,'DiegoO'   ,'123DO'  ,'2025-07-21 00:06:30')
    ,(2,'Elena'     ,'Rojas'    ,4,7,'1753194840'  ,'ElenaR'   ,'123ER'  ,'2025-07-22 00:07:00')
    ,(1,'Jorge'     ,'Castro'   ,3,5,'1753194841'  ,'JorgeC'   ,'123JC'  ,'2025-07-24 00:08:00')
    ,(1,'Patricia'  ,'Mendoza'  ,4,8,'1753194842'  ,'PatriciaM','123PM'  ,'2025-07-25 00:09:00')
    ,(2,'Ricardo'   ,'Guerrero' ,3,6,'1753194843'  ,'RicardoG' ,'123RG'  ,'2025-07-27 00:12:00');


    SELECT 
        TipoUsuario.NombreCatalogo AS TipoUsuario,
        Usuario.Nombre,
        Usuario.Apellido,
        Genero.NombreCatalogo AS Genero,
        Especialidad.NombreCatalogo AS Especialidad,
        Usuario.Cedula,
        Usuario.Usuario,
        Usuario.Contraseña,
        Usuario.FechaCita
    FROM 
        Usuario
    JOIN 
        Catalogo AS Genero ON Usuario.IdGenero = Genero.IdCatalogo
    JOIN 
        Catalogo AS Especialidad ON Usuario.IdEspecialidad = Especialidad.IdCatalogo
    JOIN 
        Catalogo AS TipoUsuario ON Usuario.IdTipoUsuario = TipoUsuario.IdCatalogo;


DELETE FROM Usuario;