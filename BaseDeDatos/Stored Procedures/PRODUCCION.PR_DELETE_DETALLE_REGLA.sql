SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_DELETE_DETALLE_REGLA]
@PR_DET_REG_COD int
AS
DELETE [PRODUCCION].[DETALLE_REGLA] 
WHERE PR_DET_REG_COD=@PR_DET_REG_COD

GO
