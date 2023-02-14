SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_SELECT_PROCESO]
@CO_EMP_RUC CHAR(13)
,@PR_PRO_NUM int
AS
SELECT * FROM PRODUCCION.PROCESO
WHERE CO_EMP_RUC=@CO_EMP_RUC and PR_PRO_NUM=@PR_PRO_NUM
GO
