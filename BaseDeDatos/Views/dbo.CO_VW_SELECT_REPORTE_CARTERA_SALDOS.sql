SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_CARTERA_SALDOS]
AS
SELECT     dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_CLIENTE.CO_CLI_COD, dbo.CO_CLIENTE.CO_CLI_CUE_CON, dbo.CO_EMPRESA.CO_EMP_NOM, 
                      dbo.CO_EMPRESA.CO_EMP_RUC, dbo.CO_CLIENTE.CO_TIP_CLI_COD, dbo.CO_EMPRESA.CO_EMP_CIU, 
                      dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM, dbo.CO_PAGO_DOCUMENTO_VENTA.CO_PAG_DOC_VEN_VAL, 
                      dbo.CO_PAGO_DOCUMENTO_VENTA.CO_PAG_DOC_VEN_VAL_IMP, dbo.CO_DOCUMENTO_VENTA.CO_VEN_CED, 
                      dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC, dbo.CO_DOCUMENTO_VENTA.CO_TIP_DOC_VEN_NUM, 
                      dbo.CO_PAGO_DOCUMENTO_VENTA.CO_PAG_DOC_VEN_FEC
FROM         dbo.CO_EMPRESA INNER JOIN
                      dbo.CO_CLIENTE ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_CLIENTE.CO_EMP_RUC INNER JOIN
                      dbo.CO_DOCUMENTO_VENTA ON dbo.CO_CLIENTE.CO_CLI_COD = dbo.CO_DOCUMENTO_VENTA.CO_CLI_COD AND 
                      dbo.CO_CLIENTE.CO_EMP_RUC = dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC AND 
                      dbo.CO_CLIENTE.CO_TIP_CLI_COD = dbo.CO_DOCUMENTO_VENTA.CO_TIP_CLI_COD INNER JOIN
                      dbo.CO_PAGO_DOCUMENTO_VENTA ON 
                      dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID = dbo.CO_PAGO_DOCUMENTO_VENTA.CO_DOC_VEN_ID



GO
