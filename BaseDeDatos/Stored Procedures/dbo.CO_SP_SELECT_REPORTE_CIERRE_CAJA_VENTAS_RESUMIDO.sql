SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_CIERRE_CAJA_VENTAS_RESUMIDO]
@CO_DOC_VEN_FEC DATETIME
AS
select isnull(sum(X.CO_DOC_VEN_EFE_VAL),0) as VALOR_EFECTIVO,
isnull(sum(X.CO_DOC_VEN_CHE_VAL),0) as VALOR_CHEQUE,
isnull(sum(X.CO_DOC_VEN_TAR_VAL),0) as VALOR_TARJETA,
0 as CO_TAR_NOM
from 
(
--DOCUMENTOS DE VENTA TODOS EXCEPTO NC
SELECT DV.CO_DOC_VEN_NUM, C.CO_CLI_NOM, 
DV.CO_DOC_VEN_EFE_VAL, 
DV.CO_DOC_VEN_TRA_VAL,
DV.CO_DOC_VEN_CHE_VAL,
DV.CO_DOC_VEN_TAR_VAL, 
(SELECT ISNULL(SUM(DR.CO_RET_VAL),0) FROM dbo.CO_RETENCION R INNER JOIN CO_DETALLE_RETENCION DR ON R.CO_RET_COD=DR.CO_RET_COD
						WHERE R.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID) AS CO_DOC_VEN_RET_VAL,
DV.CO_DOC_VEN_TOT_PAG-
(DV.CO_DOC_VEN_EFE_VAL+
DV.CO_DOC_VEN_CHE_VAL+
DV.CO_DOC_VEN_TRA_VAL+
DV.CO_DOC_VEN_TAR_VAL+(SELECT ISNULL(SUM(DR.CO_RET_VAL),0) FROM dbo.CO_RETENCION R INNER JOIN CO_DETALLE_RETENCION DR ON R.CO_RET_COD=DR.CO_RET_COD
						WHERE R.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID)) AS CO_DOC_VEN_CRE
FROM dbo.CO_DOCUMENTO_VENTA DV INNER JOIN dbo.CO_CLIENTE C ON DV.CO_CLI_COD = C.CO_CLI_COD AND 
DV.CO_EMP_RUC = C.CO_EMP_RUC AND DV.CO_TIP_CLI_COD = C.CO_TIP_CLI_COD
WHERE MONTH(CO_DOC_VEN_FEC)=MONTH(@CO_DOC_VEN_FEC) AND DAY(CO_DOC_VEN_FEC)=DAY(@CO_DOC_VEN_FEC) AND YEAR(CO_DOC_VEN_FEC)=YEAR(@CO_DOC_VEN_FEC)
 AND CO_DOC_VEN_EST='ACTIVA' AND DV.CO_TIP_DOC_VEN_NUM<>4
union 
--NOTAS DE CRÉDITO
SELECT DV.CO_DOC_VEN_NUM, C.CO_CLI_NOM, 
DV.CO_DOC_VEN_EFE_VAL*-1, 
DV.CO_DOC_VEN_TRA_VAL*-1,
DV.CO_DOC_VEN_CHE_VAL*-1,
DV.CO_DOC_VEN_TAR_VAL*-1, 
(SELECT ISNULL(SUM(DR.CO_RET_VAL),0) FROM dbo.CO_RETENCION R INNER JOIN CO_DETALLE_RETENCION DR ON R.CO_RET_COD=DR.CO_RET_COD
						WHERE R.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID)*-1 AS CO_DOC_VEN_RET_VAL,
(DV.CO_DOC_VEN_TOT_PAG-
(DV.CO_DOC_VEN_EFE_VAL+
DV.CO_DOC_VEN_CHE_VAL+
DV.CO_DOC_VEN_TRA_VAL+
DV.CO_DOC_VEN_TAR_VAL+(SELECT ISNULL(SUM(DR.CO_RET_VAL),0) FROM dbo.CO_RETENCION R INNER JOIN CO_DETALLE_RETENCION DR ON R.CO_RET_COD=DR.CO_RET_COD
						WHERE R.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID)))*-1 AS CO_DOC_VEN_CRE
FROM dbo.CO_DOCUMENTO_VENTA DV INNER JOIN dbo.CO_CLIENTE C ON DV.CO_CLI_COD = C.CO_CLI_COD AND 
DV.CO_EMP_RUC = C.CO_EMP_RUC AND DV.CO_TIP_CLI_COD = C.CO_TIP_CLI_COD
WHERE MONTH(CO_DOC_VEN_FEC)=MONTH(@CO_DOC_VEN_FEC) AND DAY(CO_DOC_VEN_FEC)=DAY(@CO_DOC_VEN_FEC) AND YEAR(CO_DOC_VEN_FEC)=YEAR(@CO_DOC_VEN_FEC)
AND CO_DOC_VEN_EST='ACTIVA' AND DV.CO_TIP_DOC_VEN_NUM=4
union
--VALORES DE LAS RESERVAS
SELECT DV.CO_DOC_VEN_NUM, C.CO_CLI_NOM, 
ISNULL(SUM(DVA.VALOR_ABONO),0) as CO_DOC_VEN_EFE_VAL, 
0 AS CO_DOC_VEN_TRA_VAL,
0 AS CO_DOC_VEN_CHE_VAL,
0 AS CO_DOC_VEN_TAR_VAL, 
0 AS CO_DOC_VEN_RET_VAL, 
0 AS CO_DOC_VEN_CRE
FROM dbo.CO_DOCUMENTO_RESERVA DV INNER JOIN dbo.CO_CLIENTE C ON DV.CO_CLI_COD = C.CO_CLI_COD AND 
DV.CO_EMP_RUC = C.CO_EMP_RUC AND DV.CO_TIP_CLI_COD = C.CO_TIP_CLI_COD INNER JOIN dbo.CO_DETALLE_DOCUMENTO_RESEVA_ABONO DVA on DVA.CO_DOC_VEN_ID=DV.CO_DOC_VEN_ID
WHERE MONTH(FECHA_ABONO)=MONTH(@CO_DOC_VEN_FEC) AND DAY(FECHA_ABONO)=DAY(@CO_DOC_VEN_FEC) AND YEAR(FECHA_ABONO)=YEAR(@CO_DOC_VEN_FEC)
AND CO_DOC_VEN_EST='ACTIVA'
group by DV.CO_DOC_VEN_NUM, C.CO_CLI_NOM
union
--VALORES DE LOS COBROS A CLIENTES
SELECT cast(DV.CO_COM_COB_CLI_NUM as varchar(20)) as CO_DOC_VEN_NUM , 
C.CO_CLI_NOM, ISNULL(SUM(DV.CO_COM_COB_CLI_EFE_VAL),0) as CO_DOC_VEN_EFE_VAL, 
ISNULL(SUM(DV.CO_COM_COB_TRA_VAL),0) AS CO_DOC_VEN_TRA_VAL,
ISNULL(SUM(DV.CO_COM_COB_CLI_CHE_VAL),0) AS CO_DOC_VEN_CHE_VAL,
ISNULL(SUM(DV.CO_COM_COB_CLI_TAR_VAL),0) AS CO_DOC_VEN_TAR_VAL, 
0 AS CO_DOC_VEN_RET_VAL, 
0 AS CO_DOC_VEN_CRE
FROM dbo.CO_COBRO_CLIENTE DV INNER JOIN dbo.CO_CLIENTE C ON DV.CO_CLI_COD = C.CO_CLI_COD AND 
DV.CO_EMP_RUC = C.CO_EMP_RUC AND DV.CO_TIP_CLI_COD = C.CO_TIP_CLI_COD 
WHERE MONTH(CO_COM_COB_CLI_FEC)=MONTH(@CO_DOC_VEN_FEC) AND DAY(CO_COM_COB_CLI_FEC)=DAY(@CO_DOC_VEN_FEC) AND YEAR(CO_COM_COB_CLI_FEC)=YEAR(@CO_DOC_VEN_FEC)
AND CO_COM_COB_CLI_EST='ACTIVA'
group by DV.CO_COM_COB_CLI_NUM, C.CO_CLI_NOM) as X
GO
