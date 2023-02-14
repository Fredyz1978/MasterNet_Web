SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE VIEW [dbo].[CN_VW_SELECT_PERMISO]
AS
SELECT     dbo.PERMISO.PERM_NOM, dbo.PERMISO.CONT_COD, dbo.USUARIO.USUA_COD, dbo.PERMISO.PERM_COD
FROM         dbo.PERMISO INNER JOIN
                      dbo.USUARIO ON dbo.PERMISO.USUA_COD = dbo.USUARIO.USUA_COD INNER JOIN
                      dbo.CONTROL ON dbo.PERMISO.CONT_COD = dbo.CONTROL.CONT_COD
GO
