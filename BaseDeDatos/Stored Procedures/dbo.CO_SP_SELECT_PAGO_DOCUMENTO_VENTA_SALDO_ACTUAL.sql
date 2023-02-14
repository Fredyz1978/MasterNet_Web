SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_PAGO_DOCUMENTO_VENTA_SALDO_ACTUAL]
@CO_CLI_COD nvarchar(50)
,@CO_EMP_RUC char(13)
AS
SELECT ISNULL(SUM(dbo.CO_PAGO_DOCUMENTO_VENTA.CO_PAG_DOC_VEN_VAL),0) AS ValorCredito
FROM dbo.CO_PAGO_DOCUMENTO_VENTA INNER JOIN
dbo.CO_DOCUMENTO_VENTA ON dbo.CO_PAGO_DOCUMENTO_VENTA.CO_DOC_VEN_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID INNER JOIN
dbo.CO_CLIENTE ON dbo.CO_DOCUMENTO_VENTA.CO_CLI_COD = dbo.CO_CLIENTE.CO_CLI_COD AND 
dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC = dbo.CO_CLIENTE.CO_EMP_RUC AND 
dbo.CO_DOCUMENTO_VENTA.CO_TIP_CLI_COD = dbo.CO_CLIENTE.CO_TIP_CLI_COD
WHERE dbo.CO_CLIENTE.CO_CLI_COD=@CO_CLI_COD AND dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC=@CO_EMP_RUC
GO