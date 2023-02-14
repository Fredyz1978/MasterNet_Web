SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_SELECT_DETALLE_PROCESO_REGLA]
@PR_PRO_NUM INT
,@CO_EMP_RUC CHAR(13)
AS
SELECT * FROM [PRODUCCION].[DETALLE_PROCESO_REGLA]
WHERE PR_PRO_NUM=@PR_PRO_NUM AND CO_EMP_RUC=@CO_EMP_RUC
GO
