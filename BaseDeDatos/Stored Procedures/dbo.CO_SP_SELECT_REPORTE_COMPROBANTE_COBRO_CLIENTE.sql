SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_COMPROBANTE_COBRO_CLIENTE]
@CO_COM_COD_CLI_ID uniqueidentifier,
@CO_EMP_RUC char(13)
AS
SELECT * FROM CO_VW_SELECT_REPORTE_COBRO_CLIENTES
WHERE CO_COM_COD_CLI_ID=@CO_COM_COD_CLI_ID AND CO_EMP_RUC=@CO_EMP_RUC

GO