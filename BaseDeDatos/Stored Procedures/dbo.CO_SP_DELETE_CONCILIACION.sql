SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_CONCILIACION]
@CO_EMP_RUC char(13)
,@CO_CONTABILIDAD_COM_NUM int
,@CO_CONTABILIDAD_TIP_COM_COD int
AS
DELETE [dbo].[CO_CONCILIACION] 
WHERE CO_EMP_RUC=@CO_EMP_RUC
AND CO_CONTABILIDAD_COM_NUM=@CO_CONTABILIDAD_COM_NUM
AND CO_CONTABILIDAD_TIP_COM_COD=@CO_CONTABILIDAD_TIP_COM_COD
GO