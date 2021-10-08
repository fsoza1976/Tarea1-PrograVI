DROP TABLE IF EXISTS #IdTipoTemp

SELECT
IdTipoIdentificacion, Descripcion INTO #IdTipoTemp
FROM (
VALUES 
(1, 'CEDULA'),
(2, 'PASAPORTE'),
(3, 'CEDULA JURIDICA')
)AS TEMP(IdTipoIdentificacion, Descripcion)






--ACTUALIZAR DATOS:
UPDATE T SET 
T.Descripcion=ID.Descripcion
FROM dbo.TipoIdentificacion T
INNER JOIN #IdTipoTemp ID
ON T.IdTipoIdentificacion=ID.IdTipoIdentificacion



--INSERTAR DATOS:
SET IDENTITY_INSERT dbo.TipoIdentificacion ON

INSERT INTO dbo.TipoIdentificacion(
IdTipoIdentificacion, Descripcion)
SELECT 
IdTipoIdentificacion, Descripcion
FROM #IdTipoTemp

EXCEPT
SELECT
IdTipoIdentificacion, Descripcion
FROM dbo.TipoIdentificacion

SET IDENTITY_INSERT dbo.TipoIdentificacion OFF
GO