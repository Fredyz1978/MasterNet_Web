SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_NUMERO_TIPO_COMPROBANTE]
@CO_EMP_RUC CHAR(13),
@CO_TIP_COM_COD INT
AS
SELECT CO_TIP_COM_INI FROM CO_TIPO_COMPROBANTE
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_TIP_COM_COD=@CO_TIP_COM_COD
GO
