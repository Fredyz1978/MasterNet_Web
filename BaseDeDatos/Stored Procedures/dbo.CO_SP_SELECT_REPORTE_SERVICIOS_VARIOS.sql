SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_SERVICIOS_VARIOS]
@CO_EMP_RUC CHAR(13)
,@CO_SER_OPC CHAR(1)
,@CO_DOC_VEN_FEC1 DATETIME
,@CO_DOC_VEN_FEC2 DATETIME
,@CO_TIP_SER_COD INT
,@CO_VEN_CED NCHAR(10)
AS
IF (@CO_SER_OPC='N') 
SELECT     dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD, 
dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_NOM, dbo.CO_SERVICIO.CO_TIP_SER_COD, 
dbo.CO_TIPO_SERVICIO.CO_TIP_SER_NOM, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_CAN, 
dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_PRE, dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC, 
dbo.CO_DOCUMENTO_VENTA.CO_VEN_CED,
@CO_DOC_VEN_FEC1 AS DESDE,@CO_DOC_VEN_FEC2 AS HASTA,
dbo.CO_DOCUMENTO_VENTA.CO_TIP_DOC_VEN_NUM, 
dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM
FROM dbo.CO_DOCUMENTO_VENTA INNER JOIN
dbo.CO_DETALLE_DOCUMENTO_VENTA ON  dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID = dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DOC_VEN_ID INNER JOIN
dbo.CO_EMPRESA ON dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
dbo.CO_SERVICIO ON dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD = dbo.CO_SERVICIO.CO_SER_COD INNER JOIN
dbo.CO_TIPO_SERVICIO ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_TIPO_SERVICIO.CO_EMP_RUC AND 
dbo.CO_SERVICIO.CO_TIP_SER_COD = dbo.CO_TIPO_SERVICIO.CO_TIP_SER_COD AND 
dbo.CO_SERVICIO.CO_EMP_RUC = dbo.CO_TIPO_SERVICIO.CO_EMP_RUC
WHERE dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC=@CO_EMP_RUC AND dbo.CO_SERVICIO.CO_TIP_SER_COD=@CO_TIP_SER_COD
AND dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC>=@CO_DOC_VEN_FEC1
AND dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC<=@CO_DOC_VEN_FEC2
AND (dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_EST = N'ACTIVA')
ELSE IF (@CO_SER_OPC='T') 
SELECT     dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD, 
dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_NOM, dbo.CO_SERVICIO.CO_TIP_SER_COD, 
dbo.CO_TIPO_SERVICIO.CO_TIP_SER_NOM, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_CAN, 
dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_PRE, dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC, 
dbo.CO_DOCUMENTO_VENTA.CO_VEN_CED,@CO_DOC_VEN_FEC1 AS DESDE,@CO_DOC_VEN_FEC2 AS HASTA,
dbo.CO_DOCUMENTO_VENTA.CO_TIP_DOC_VEN_NUM, 
dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM
FROM dbo.CO_DOCUMENTO_VENTA INNER JOIN
dbo.CO_DETALLE_DOCUMENTO_VENTA ON  dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID = dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DOC_VEN_ID INNER JOIN
dbo.CO_EMPRESA ON dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
dbo.CO_SERVICIO ON dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD = dbo.CO_SERVICIO.CO_SER_COD INNER JOIN
dbo.CO_TIPO_SERVICIO ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_TIPO_SERVICIO.CO_EMP_RUC AND 
dbo.CO_SERVICIO.CO_TIP_SER_COD = dbo.CO_TIPO_SERVICIO.CO_TIP_SER_COD AND 
dbo.CO_SERVICIO.CO_EMP_RUC = dbo.CO_TIPO_SERVICIO.CO_EMP_RUC
WHERE dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC=@CO_EMP_RUC
AND dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC>=@CO_DOC_VEN_FEC1
AND dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC<=@CO_DOC_VEN_FEC2
AND (dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_EST = N'ACTIVA')
ELSE IF (@CO_SER_OPC='V') 
SELECT     dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD, 
dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_NOM, dbo.CO_SERVICIO.CO_TIP_SER_COD, 
dbo.CO_TIPO_SERVICIO.CO_TIP_SER_NOM, dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_CAN, 
dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_PRE, dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC, 
dbo.CO_DOCUMENTO_VENTA.CO_VEN_CED
,@CO_DOC_VEN_FEC1 AS DESDE,@CO_DOC_VEN_FEC2 AS HASTA,dbo.CO_DOCUMENTO_VENTA.CO_TIP_DOC_VEN_NUM, 
dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_NUM
FROM dbo.CO_DOCUMENTO_VENTA INNER JOIN
dbo.CO_DETALLE_DOCUMENTO_VENTA ON  dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_ID = dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DOC_VEN_ID INNER JOIN
dbo.CO_EMPRESA ON dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC INNER JOIN
dbo.CO_SERVICIO ON dbo.CO_DETALLE_DOCUMENTO_VENTA.CO_DET_DOC_VEN_ART_COD = dbo.CO_SERVICIO.CO_SER_COD INNER JOIN
dbo.CO_TIPO_SERVICIO ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_TIPO_SERVICIO.CO_EMP_RUC AND 
dbo.CO_SERVICIO.CO_TIP_SER_COD = dbo.CO_TIPO_SERVICIO.CO_TIP_SER_COD AND 
dbo.CO_SERVICIO.CO_EMP_RUC = dbo.CO_TIPO_SERVICIO.CO_EMP_RUC
WHERE dbo.CO_DOCUMENTO_VENTA.CO_EMP_RUC=@CO_EMP_RUC AND dbo.CO_DOCUMENTO_VENTA.CO_VEN_CED=@CO_VEN_CED
AND dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC>=@CO_DOC_VEN_FEC1
AND dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_FEC<=@CO_DOC_VEN_FEC2
AND (dbo.CO_DOCUMENTO_VENTA.CO_DOC_VEN_EST = N'ACTIVA')
GO