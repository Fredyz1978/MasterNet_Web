SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_UPDATE_DETALLE_PROCESO]
@PR_DET_PRO_COD int
,@PR_PRO_NUM int
,@CO_EMP_RUC char(13)
,@PR_PRO_COD nvarchar(10)
,@PR_DET_PRO_NOM nvarchar(100)
,@PR_DET_PRO_CAN float
,@PR_DET_PRO_PRE float
as
UPDATE [PRODUCCION].[DETALLE_PROCESO] SET
[PR_PRO_NUM]=@PR_PRO_NUM
,[PR_PRO_COD]=@PR_PRO_COD
,[PR_DET_PRO_NOM]=@PR_DET_PRO_NOM
,[PR_DET_PRO_CAN]=@PR_DET_PRO_CAN
,[PR_DET_PRO_PRE]=@PR_DET_PRO_PRE
WHERE
[CO_EMP_RUC]=@CO_EMP_RUC AND
[PR_DET_PRO_COD]=@PR_DET_PRO_COD
GO
