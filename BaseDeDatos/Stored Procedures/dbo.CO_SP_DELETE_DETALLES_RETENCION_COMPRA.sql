SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_DETALLES_RETENCION_COMPRA]
@CO_DOC_COM_NUM int
,@CO_DOC_COM_TIP nvarchar(50)
,@CO_EMP_RUC char(13)
AS
DELETE [dbo].[CO_DETALLE_RETENCION_COMPRA]
WHERE [CO_DOC_COM_NUM]=@CO_DOC_COM_NUM AND [CO_DOC_COM_TIP]=@CO_DOC_COM_TIP AND [CO_EMP_RUC]=@CO_EMP_RUC
GO