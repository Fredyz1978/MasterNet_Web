SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_SELECT_DETALLE_REGLA]
@PR_REG_COD INT
AS
SELECT *
FROM [PRODUCCION].[DETALLE_REGLA]
WHERE PR_REG_COD=@PR_REG_COD
GO
