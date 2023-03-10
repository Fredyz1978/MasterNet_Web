SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_DETALLE_COBRO]
@CO_COM_COB_NUM int
,@CO_EMP_RUC char(13)
,@CO_DET_COB_COD int
,@CO_NOT_DEB_NUM int
AS
DELETE [dbo].[CO_DETALLE_COBRO]
WHERE 
([CO_COM_COB_NUM]=@CO_COM_COB_NUM
AND[CO_EMP_RUC]=@CO_EMP_RUC
AND [CO_DET_COB_COD]=@CO_DET_COB_COD
AND [CO_NOT_DEB_NUM]=@CO_NOT_DEB_NUM)
GO
