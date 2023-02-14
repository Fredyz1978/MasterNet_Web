SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CO_SP_SELECT_GRUPO_USUARIO]
@USUA_COD INT
AS
SELECT dbo.CO_GRUPO.CO_GRU_COD, dbo.CO_GRUPO.CO_GRU_NOM
FROM dbo.CO_GRUPO INNER JOIN
dbo.CO_PERTENECE ON dbo.CO_GRUPO.CO_GRU_COD = dbo.CO_PERTENECE.CO_GRU_COD INNER JOIN
dbo.USUARIO ON dbo.CO_PERTENECE.USUA_COD = dbo.USUARIO.USUA_COD
WHERE USUARIO.USUA_COD=@USUA_COD
GO
