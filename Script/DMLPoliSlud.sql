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
    (1,'Lenin'      ,'Amangandi',3,5,'1753194828'  ,'LeninA'   ,'123L'  ,'2025-07-21 00:14:00')
    ,(1,'Alicia'    ,'Reiss'    ,4,8,'1753197828'  ,'AliciaR'  ,'123AL' ,'2025-07-21 00:12:00')
    ,(2,'Alice'     ,'Asturia'  ,4,7,'1753194626'  ,'AliceR'   ,'123A'  ,'2025-07-21 00:15:00')
    ,(2,'Pablo'     ,'Perez'    ,3,6,'1753194727'  ,'ErenJ'    ,'123P'  ,'2025-07-21 00:16:00')

    ,(1,'Carlos'    ,'Santana'  ,3,5,'1753194829' ,'CarlosS'  ,'123CS'  ,'2025-07-21 00:17:00'),
    (1,'Maria'     ,'Lopez'    ,4,8,'1753194830'  ,'MariaL'   ,'123ML'  ,'2025-07-21 00:18:00'),
    (2,'Juan'      ,'Martinez' ,3,6,'1753194831'  ,'JuanM'    ,'123JM'  ,'2025-07-21 00:19:00'),
    (2,'Ana'       ,'Gomez'    ,4,7,'1753194832'  ,'AnaG'     ,'123AG'  ,'2025-07-21 00:20:00'),
    (1,'Luis'      ,'Ramirez'  ,3,5,'1753194833'  ,'LuisR'    ,'123LR'  ,'2025-07-21 00:21:00'),
    (1,'Laura'     ,'Torres'   ,4,8,'1753194834'  ,'LauraT'   ,'123LT'  ,'2025-07-21 00:22:00'),
    (2,'Pedro'     ,'Vargas'   ,3,6,'1753194835'  ,'PedroV'   ,'123PV'  ,'2025-07-21 00:23:00'),
    (2,'Sofia'     ,'Diaz'     ,4,7,'1753194836'  ,'SofiaD'   ,'123SD'  ,'2025-07-21 00:24:00'),
    (1,'Miguel'    ,'Fernandez',3,5,'1753194837'  ,'MiguelF'  ,'123MF'  ,'2025-07-21 00:25:00'),
    (1,'Isabel'    ,'Morales'  ,4,8,'1753194838'  ,'IsabelM'  ,'123IM'  ,'2025-07-21 00:26:00'),
    (2,'Diego'     ,'Ortega'   ,3,6,'1753194839'  ,'DiegoO'   ,'123DO'  ,'2025-07-21 00:27:00'),
    (2,'Elena'     ,'Rojas'    ,4,7,'1753194840'  ,'ElenaR'   ,'123ER'  ,'2025-07-21 00:28:00'),
    (1,'Jorge'     ,'Castro'   ,3,5,'1753194841'  ,'JorgeC'   ,'123JC'  ,'2025-07-21 00:29:00'),
    (1,'Patricia'  ,'Mendoza'  ,4,8,'1753194842'  ,'PatriciaM','123PM'  ,'2025-07-21 00:30:00'),
    (2,'Ricardo'   ,'Guerrero' ,3,6,'1753194843'  ,'RicardoG' ,'123RG'  ,'2025-07-21 00:31:00'),
    (2,'Valeria'   ,'Navarro'  ,4,7,'1753194844'  ,'ValeriaN' ,'123VN'  ,'2025-07-21 00:32:00'),
    (1,'Fernando'  ,'Soto'     ,3,5,'1753194845'  ,'FernandoS','123FS'  ,'2025-07-21 00:33:00'),
    (1,'Gabriela'  ,'Reyes'    ,4,8,'1753194846'  ,'GabrielaR','123GR'  ,'2025-07-21 00:34:00'),
    (2,'Oscar'     ,'Silva'    ,3,6,'1753194847'  ,'OscarS'   ,'123OS'  ,'2025-07-21 00:35:00'),
    (2,'Lucia'     ,'Herrera'  ,4,7,'1753194848'  ,'LuciaH'   ,'123LH'  ,'2025-07-21 00:36:00');



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