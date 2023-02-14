SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_BUSQUEDA_GRUPO_NOMBRE]
@BUSCAR VARCHAR(20),
@CO_EMP_RUC CHAR(13)
AS
DECLARE @LIKE AS VARCHAR(50)
SET @LIKE='%'+@BUSCAR+'%'
SELECT     dbo.CO_GRUPO.CO_GRU_COD, dbo.CO_GRUPO.CO_GRU_NOM, dbo.CO_GRUPO.CO_EMP_ESCONTADOR
FROM CO_GRUPO     
WHERE dbo.CO_GRUPO.CO_GRU_NOM LIKE @LIKE AND (dbo.CO_GRUPO.CO_EMP_RUC = @CO_EMP_RUC) 
AND(dbo.CO_GRUPO.CO_GRU_NOM!='Tempfzf')
GO
