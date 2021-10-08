CREATE TABLE [dbo].[TipoIdentificacion]
(
	[IdTipoIdentificacion] INT NOT NULL IDENTITY(1,1) CONSTRAINT PK_IdTipoIdentificacion PRIMARY KEY CLUSTERED(IdTipoIdentificacion),
    [Descripcion] VARCHAR(50) NULL
)


