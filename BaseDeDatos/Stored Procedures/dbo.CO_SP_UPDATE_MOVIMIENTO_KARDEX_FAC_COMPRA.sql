SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create PROC [dbo].[CO_SP_UPDATE_MOVIMIENTO_KARDEX_FAC_COMPRA]
@CO_DOC_COM_NUM int
,@CO_EMP_RUC char(13)
,@CO_DOC_COM_CORRE_INV bit
AS
update [dbo].[CO_DOCUMENTO_COMPRA]set

[CO_DOC_COM_CORRE_INV]=@CO_DOC_COM_CORRE_INV
where
[CO_DOC_COM_NUM]=@CO_DOC_COM_NUM and [CO_EMP_RUC]=@CO_EMP_RUC and   (CO_DOC_COM_CORRE_INV is null or CO_DOC_COM_CORRE_INV= 'False')
GO