﻿CREATE PROCEDURE [dbo].[IdentificacionObtener]
	@IdTipoIdentificacion int=NULL
AS BEGIN
SET NOCOUNT ON
	SELECT
		T.IdTipoIdentificacion,
		T.Descripcion
	FROM dbo.TipoIdentificacion T
	WHERE
		(@IdTipoIdentificacion IS NULL OR IdTipoIdentificacion=@IdTipoIdentificacion)
END
GO
