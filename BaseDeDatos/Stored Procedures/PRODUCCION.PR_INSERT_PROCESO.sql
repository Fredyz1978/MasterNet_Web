SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE PROC [PRODUCCION].[PR_INSERT_PROCESO]
@PR_PRO_NUM int
,@CO_EMP_RUC CHAR(13)
,@PR_TIP_REC_COD int
,@PR_PRO_FEC datetime
,@PR_PRO_EST bit
,@PR_PRO_VAL_AGR float
AS
INSERT INTO [PRODUCCION].[PROCESO]
([PR_PRO_NUM]
,[CO_EMP_RUC]
,[PR_TIP_REC_COD]
,[PR_PRO_FEC]
,[PR_PRO_EST]
,[PR_PRO_VAL_AGR])
VALUES
(@PR_PRO_NUM
,@CO_EMP_RUC
,@PR_TIP_REC_COD
,@PR_PRO_FEC
,@PR_PRO_EST
,@PR_PRO_VAL_AGR)



GO
