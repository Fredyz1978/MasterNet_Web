SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_TRANSACCION]
@CO_EMP_RUC char(13)
,@CO_RUB_ROL_COD int
,@PROF_COD char(10)
,@CO_TRA_MES int
,@CO_TRA_ANO int

,@CO_TRA_VAL float
AS
UPDATE [dbo].[CO_TRANSACCION] SET
[CO_TRA_VAL]=@CO_TRA_VAL
WHERE 
[CO_EMP_RUC]=@CO_EMP_RUC AND
[CO_RUB_ROL_COD]=@CO_RUB_ROL_COD AND
[PROF_COD]=@PROF_COD AND
CO_TRA_MES=@CO_TRA_MES AND
CO_TRA_ANO=@CO_TRA_ANO
GO
