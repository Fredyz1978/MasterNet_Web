SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CO_SP_SELECT_USUARIO_PERMISO_GRUPO]
@CO_GRU_COD INT
AS
SELECT     '' AS PERM_NOM, 0 AS CONT_COD, dbo.CO_GRUPO.CO_GRU_COD, dbo.USUARIO.USUA_COD
FROM         dbo.CO_GRUPO INNER JOIN
                      dbo.CO_PERTENECE ON dbo.CO_GRUPO.CO_GRU_COD = dbo.CO_PERTENECE.CO_GRU_COD INNER JOIN
                      dbo.USUARIO ON dbo.CO_PERTENECE.USUA_COD = dbo.USUARIO.USUA_COD
WHERE dbo.CO_GRUPO.CO_GRU_COD=@CO_GRU_COD
GO
