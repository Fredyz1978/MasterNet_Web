SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_DOCUMENTO_COMPRAS]
@CO_EMP_RUC CHAR(13)
,@CO_DOC_COM_NUM INT
AS
SELECT * FROM CO_VW_SELECT_REPORTE_DOCUMENTO_COMPRA
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_DOC_COM_NUM=@CO_DOC_COM_NUM
GO
