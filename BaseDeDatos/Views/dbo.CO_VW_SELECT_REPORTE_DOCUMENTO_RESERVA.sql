SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


CREATE VIEW [dbo].[CO_VW_SELECT_REPORTE_DOCUMENTO_RESERVA]
AS
SELECT        dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_CLIENTE.CO_CLI_COD, dbo.CO_CLIENTE.CO_CLI_CED, dbo.CO_CLIENTE.CO_CLI_TEL, dbo.CO_CLIENTE.CO_CLI_DIR, dbo.CO_CLIENTE.CO_CLI_CIU, 
                         dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_FEC, dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_TOT_LET, 
                         dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_TOT_NET, dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_POR_DES, dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_DES, 
                         dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_POR_IVA, dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_IVA, dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_TOT_PAG, 
                         dbo.CO_DOCUMENTO_RESERVA.CO_EMP_RUC, dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_NUM, 
                         dbo.CO_DETALLE_DOCUMENTO_RESERVA.CO_DET_DOC_VEN_ART_COD, dbo.CO_DETALLE_DOCUMENTO_RESERVA.CO_DET_DOC_VEN_ART_NOM, 
                         dbo.CO_DETALLE_DOCUMENTO_RESERVA.CO_DET_DOC_VEN_CAN, dbo.CO_DETALLE_DOCUMENTO_RESERVA.CO_DET_DOC_VEN_PRE, dbo.CO_DETALLE_DOCUMENTO_RESERVA.CO_DET_DOC_VEN_TOT, 
                         dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_EMPRESA.CO_EMP_DIR, dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_VAL_IVA0, dbo.CO_VENDEDOR.CO_VEN_NOM, 
                         dbo.CO_DETALLE_DOCUMENTO_RESERVA.CO_DET_DOC_VEN_ART_BAR, dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_OTR, dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_DET, 
                         dbo.CO_FAMILIA_ARTICULO.CO_FAM_ART_COD, dbo.CO_FAMILIA_ARTICULO.CO_FAM_ART_NOM,
						0 as CO_CANTIDAD_EMPAQUE, dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_ID
FROM            dbo.CO_ARTICULO INNER JOIN
                         dbo.CO_FAMILIA_ARTICULO ON dbo.CO_ARTICULO.CO_FAM_ART_COD = dbo.CO_FAMILIA_ARTICULO.CO_FAM_ART_COD INNER JOIN
                         dbo.CO_CLIENTE INNER JOIN
                         dbo.CO_DOCUMENTO_RESERVA ON dbo.CO_CLIENTE.CO_CLI_COD = dbo.CO_DOCUMENTO_RESERVA.CO_CLI_COD AND dbo.CO_CLIENTE.CO_EMP_RUC = dbo.CO_DOCUMENTO_RESERVA.CO_EMP_RUC AND 
                         dbo.CO_CLIENTE.CO_TIP_CLI_COD = dbo.CO_DOCUMENTO_RESERVA.CO_TIP_CLI_COD INNER JOIN
                         dbo.CO_DETALLE_DOCUMENTO_RESERVA ON dbo.CO_DOCUMENTO_RESERVA.CO_DOC_VEN_ID = dbo.CO_DETALLE_DOCUMENTO_RESERVA.CO_DOC_VEN_ID INNER JOIN
                         dbo.CO_EMPRESA ON dbo.CO_CLIENTE.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
                         dbo.CO_VENDEDOR ON dbo.CO_DOCUMENTO_RESERVA.CO_VEN_CED = dbo.CO_VENDEDOR.CO_VEN_CED AND dbo.CO_DOCUMENTO_RESERVA.CO_EMP_RUC = dbo.CO_VENDEDOR.CO_EMP_RUC AND 
                         dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_VENDEDOR.CO_EMP_RUC ON dbo.CO_ARTICULO.CO_ART_COD = dbo.CO_DETALLE_DOCUMENTO_RESERVA.CO_DET_DOC_VEN_ART_COD


GO