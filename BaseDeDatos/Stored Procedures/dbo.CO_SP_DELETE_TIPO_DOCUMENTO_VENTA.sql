SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DELETE_TIPO_DOCUMENTO_VENTA]
@CO_TIP_DOC_VEN_NUM int
AS
DELETE [dbo].[CO_TIPO_DOCUMENTO_VENTA] 
WHERE CO_TIP_DOC_VEN_NUM=@CO_TIP_DOC_VEN_NUM
GO
