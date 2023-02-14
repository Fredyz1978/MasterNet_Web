SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 19/12/2006
-- Description:	Devuel el Usuario dado el ruc de la empresa y el alias.
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_USUARIO_EMPRESA_ALIAS] 
@EMP_RUC char(13),
@USU_ALI varchar(15)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT     dbo.USUARIO.USUA_COD
	FROM         dbo.CO_GRUPO INNER JOIN
						  dbo.CO_PERTENECE ON dbo.CO_GRUPO.CO_GRU_COD = dbo.CO_PERTENECE.CO_GRU_COD INNER JOIN
						  dbo.USUARIO ON dbo.CO_PERTENECE.USUA_COD = dbo.USUARIO.USUA_COD
	WHERE (CO_GRUPO.CO_EMP_RUC=@EMP_RUC) AND (dbo.USUARIO.USUA_ALI = @USU_ALI)
END
GO
