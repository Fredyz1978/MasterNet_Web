SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



CREATE VIEW [PRODUCCION].[SELECT_DESPACHOS]
AS
SELECT     PRODUCCION.DESPACHO.PR_DES_FEC, PRODUCCION.DETALLE_DESPACHO.CO_ART_COD, PRODUCCION.DETALLE_DESPACHO.CO_ART_NOM, 
                      PRODUCCION.DETALLE_DESPACHO.CO_ART_PRE, PRODUCCION.DETALLE_DESPACHO.CO_ART_UNI, 
                      PRODUCCION.DETALLE_DESPACHO.PR_PRO_COD, PRODUCCION.PRODUCTO.PR_PRO_NOM, 
                      PRODUCCION.DETALLE_DESPACHO.PR_DET_DES_CAN, PRODUCCION.PRODUCTO.CO_EMP_RUC, 
                      SUBSTRING(PRODUCCION.DETALLE_DESPACHO.CO_ART_COD, 0, 5) AS CODIGO_AGRUPACION,
					  PRODUCCION.DESPACHO.PR_DES_COD,
					  CASE WHEN SUBSTRING(PRODUCCION.DETALLE_DESPACHO.CO_ART_COD, 2, 1)='0' THEN 'DOCENAS'
						   WHEN SUBSTRING(PRODUCCION.DETALLE_DESPACHO.CO_ART_COD, 2, 1)='1' THEN 'ROLLOS'
						   WHEN SUBSTRING(PRODUCCION.DETALLE_DESPACHO.CO_ART_COD, 2, 1)='2' THEN 'CARRETOS'
						   WHEN SUBSTRING(PRODUCCION.DETALLE_DESPACHO.CO_ART_COD, 2, 1)='3' THEN 'CARRETOS 100 m.'
						   WHEN SUBSTRING(PRODUCCION.DETALLE_DESPACHO.CO_ART_COD, 2, 1)='5' THEN 'CARRETOS 500 m.'
						   WHEN SUBSTRING(PRODUCCION.DETALLE_DESPACHO.CO_ART_COD, 2, 1)='6' THEN 'METROS' ELSE 'S/T' END AS TIPO_PRODUCTO,
						   PRODUCCION.DESPACHO.TIPO
FROM         PRODUCCION.DESPACHO INNER JOIN
                      PRODUCCION.DETALLE_DESPACHO ON PRODUCCION.DESPACHO.PR_DES_COD = PRODUCCION.DETALLE_DESPACHO.PR_DES_COD INNER JOIN
                      PRODUCCION.PRODUCTO ON PRODUCCION.DETALLE_DESPACHO.PR_PRO_COD = PRODUCCION.PRODUCTO.PR_PRO_COD

--WHERE PRODUCCION.DESPACHO.TIPO='DESPACHO'






GO
