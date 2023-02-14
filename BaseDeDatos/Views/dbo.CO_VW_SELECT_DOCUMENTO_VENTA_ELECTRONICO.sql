SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO




/*ORDER BY CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM*/
CREATE VIEW [dbo].[CO_VW_SELECT_DOCUMENTO_VENTA_ELECTRONICO]
AS
SELECT dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_CLIENTE.CO_CLI_COD, dbo.CO_CLIENTE.CO_CLI_CED, dbo.CO_CLIENTE.CO_CLI_TEL, dbo.CO_CLIENTE.CO_CLI_DIR, dbo.CO_CLIENTE.CO_CLI_CIU, 
                         dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FOR_PAG, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_TOT_LET, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_TOT_NET, 
                         dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_POR_DES, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_DES, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_POR_IVA, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_IVA, 
                         dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_TOT_PAG, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_NUM, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_FEC_INI, 
                         dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_FEC_TER, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_TIP, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_NOM_TRA, 
                         dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_GUI_IDE, dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM, dbo.CO_DOCUMENTO_VENTA.CO_TIP_DOC_VEN_NUM, 
                         dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_NOM, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_CAN, 
                         dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_PRE, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_TOT, dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, 
                         dbo.CO_EMPRESA.CO_EMP_DIR, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_VAL_IVA0, dbo.CO_VENDEDOR.CO_VEN_NOM, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_BAR, 
                         dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_OTR, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_DET, dbo.CO_FAMILIA_ARTICULO.CO_FAM_ART_COD, dbo.CO_FAMILIA_ARTICULO.CO_FAM_ART_NOM, 
                         dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_CANTIDAD_EMPAQUE, dbo.CO_CLIENTE.CO_CLI_MAI, dbo.CO_EMPRESA.CO_CONTRIBUYENTE_ESPECIAL, dbo.CO_EMPRESA.CO_CONTRIBUYENTE_NUMERO, 
                         dbo.CO_EMPRESA.CO_OBLIGADO_CONTABILIDAD, dbo.CO_EMPRESA.CO_EMPRESA_LOGO, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID, dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_VAL_ICE, 
                         dbo.CO_DOCUMENTO_VENTA.AlmacenID, dbo.CO_DOCUMENTO_ELECTRONICO.CO_FECHA_AUTORIZA_FACT_ELECTRONICA, dbo.CO_DOCUMENTO_ELECTRONICO.CO_XML_FACTURA_ELECTRONICA, 
                         dbo.CO_DOCUMENTO_ELECTRONICO.CO_RIDE_FACTURA_ELECTRONICA, dbo.CO_DOCUMENTO_ELECTRONICO.CO_OBSERVA_FACT_ELECTRONICA, 
                         dbo.CO_DOCUMENTO_ELECTRONICO.CO_CLAVE_ACCESO_FACT_ELECTRONICA, dbo.CO_DOCUMENTO_ELECTRONICO.CO_CODIGO_BARRAS_FACT_ELECTRONICA, dbo.CO_EMPRESA.CO_EMP_RAZ_SOC, 
                         dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_COD_SRI,
                             (SELECT        CO_DOC_VEN_NUM
                               FROM            dbo.CO_DOCUMENTO_VENTA AS DV
                               WHERE        (CO_DOC_VEN_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ORIGINAL_ID)) AS CO_DOC_VEN_MOD_NUM,
                             (SELECT        CO_DOC_VEN_FEC
                               FROM            dbo.CO_DOCUMENTO_VENTA AS DV
                               WHERE        (CO_DOC_VEN_ID = dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ORIGINAL_ID)) AS CO_DOC_VEN_FEC_MOD, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_DES, 
                         ISNULL(dbo.CO_DOCUMENTO_ELECTRONICO.CO_ESTADO_FACTURA_ELECTRONICA, 1) AS CO_ESTADO_FACTURA_ELECTRONICA, dbo.CO_VENDEDOR.CO_VEN_EMAIL, dbo.CO_CLIENTE.CO_CLI_MAI2, 
                         dbo.CO_CLIENTE.CO_CLI_MAI3
FROM            dbo.CO_TIPO_IDENTIFICACION INNER JOIN
                         dbo.CO_CLIENTE INNER JOIN
                         dbo.CO_DOCUMENTO_VENTA ON dbo.CO_CLIENTE.CO_CLI_COD = dbo.CO_DOCUMENTO_VENTA.CO_CLI_COD AND dbo.CO_CLIENTE.CO_EMP_RUC = dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC INNER JOIN
                         dbo.CO_DETALLE_DOCUMENTO_VENTA ON dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID = dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DOC_VEN_ID INNER JOIN
                         dbo.CO_EMPRESA ON dbo.CO_CLIENTE.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
                         dbo.CO_VENDEDOR ON dbo.CO_DOCUMENTO_VENTA.CO_VEN_CED = dbo.CO_VENDEDOR.CO_VEN_CED AND dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC = dbo.CO_VENDEDOR.CO_EMP_RUC AND 
                         dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_VENDEDOR.CO_EMP_RUC ON dbo.CO_TIPO_IDENTIFICACION.CO_TIP_IDE_COD = dbo.CO_CLIENTE.CO_TIP_IDE_COD INNER JOIN
                         dbo.CO_DOCUMENTO_ELECTRONICO ON dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID = dbo.CO_DOCUMENTO_ELECTRONICO.CO_DOCUMENTO_ID LEFT OUTER JOIN
                         dbo.CO_ARTICULO INNER JOIN
                         dbo.CO_FAMILIA_ARTICULO ON dbo.CO_ARTICULO.CO_FAM_ART_COD = dbo.CO_FAMILIA_ARTICULO.CO_FAM_ART_COD ON 
                         dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD = dbo.CO_ARTICULO.CO_ART_COD




GO
