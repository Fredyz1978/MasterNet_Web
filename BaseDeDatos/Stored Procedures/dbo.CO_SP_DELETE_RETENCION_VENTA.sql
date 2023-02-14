SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[CO_SP_DELETE_RETENCION_VENTA]
(@CO_EMP_RUC char(13)
,@CO_DOC_VEN_NUM int
,@CO_TIP_DOC_VEN_NUM int)
AS
DELETE [dbo].[CO_RETENCION_VENTA]
WHERE 
[CO_EMP_RUC]=@CO_EMP_RUC
AND [CO_DOC_VEN_NUM]=@CO_DOC_VEN_NUM
AND [CO_TIP_DOC_VEN_NUM]=@CO_TIP_DOC_VEN_NUM
GO
