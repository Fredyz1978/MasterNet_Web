SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_BUSQUEDA_REGLA]
@PR_REG_NOM NVARCHAR(50)
AS
SELECT PR_REG_COD,PR_REG_NOM,PR_TIP_REC_COD
FROM PRODUCCION.REGLA
WHERE PR_REG_NOM like '%'+ @PR_REG_NOM + '%' 

GO
