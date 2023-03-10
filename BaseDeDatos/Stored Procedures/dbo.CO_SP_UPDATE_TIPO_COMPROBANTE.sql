SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_TIPO_COMPROBANTE]
@CO_EMP_RUC CHAR(13),
@CO_TIP_COM_COD INT,
@CO_TIP_COM_NOM VARCHAR(20),
@CO_TIP_COM_INI INT
AS
UPDATE CO_TIPO_COMPROBANTE SET
CO_TIP_COM_NOM=@CO_TIP_COM_NOM,
CO_TIP_COM_INI=@CO_TIP_COM_INI
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_TIP_COM_COD=@CO_TIP_COM_COD
GO
