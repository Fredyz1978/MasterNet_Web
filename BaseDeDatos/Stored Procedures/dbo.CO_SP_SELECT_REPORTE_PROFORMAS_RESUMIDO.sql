SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_PROFORMAS_RESUMIDO]
@CO_EMP_RUC CHAR(13)
,@CO_PRO_TIP NVARCHAR(15)
,@CO_VEN_CED NCHAR(10)
,@CO_PRO_OPC CHAR(1)
,@CO_PRO_FEC1 DATETIME
,@CO_PRO_FEC2 DATETIME
AS
IF (@CO_PRO_OPC='T')
SELECT dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_PROFORMA.CO_PRO_COD, '' as CO_PRO_TIP, 
dbo.CO_PROFORMA.CO_PRO_EST, dbo.CO_PROFORMA.CO_PRO_FEC, dbo.CO_PROFORMA.CO_VEN_CED, dbo.CO_CLIENTE.CO_CLI_COD, 
dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_PROFORMA.CO_PRO_TOT_NET, dbo.CO_PROFORMA.CO_PRO_FOR_PAG
FROM dbo.CO_EMPRESA INNER JOIN
dbo.CO_PROFORMA ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_PROFORMA.CO_EMP_RUC INNER JOIN
dbo.CO_CLIENTE ON dbo.CO_PROFORMA.CO_CLI_COD = dbo.CO_CLIENTE.CO_CLI_COD AND 
dbo.CO_PROFORMA.CO_EMP_RUC = dbo.CO_CLIENTE.CO_EMP_RUC
WHERE (dbo.CO_PROFORMA.CO_PRO_EST = N'ACTIVA' or dbo.CO_PROFORMA.CO_PRO_EST = N'PROCESADO') AND dbo.CO_EMPRESA.CO_EMP_RUC=@CO_EMP_RUC AND
dbo.CO_PROFORMA.CO_PRO_FEC>=@CO_PRO_FEC1 AND
dbo.CO_PROFORMA.CO_PRO_FEC<=@CO_PRO_FEC2
ELSE IF (@CO_PRO_OPC='O')
SELECT dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_PROFORMA.CO_PRO_COD, '' as CO_PRO_TIP, 
dbo.CO_PROFORMA.CO_PRO_EST, dbo.CO_PROFORMA.CO_PRO_FEC, dbo.CO_PROFORMA.CO_VEN_CED, dbo.CO_CLIENTE.CO_CLI_COD, 
dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_PROFORMA.CO_PRO_TOT_NET, dbo.CO_PROFORMA.CO_PRO_FOR_PAG
FROM dbo.CO_EMPRESA INNER JOIN
dbo.CO_PROFORMA ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_PROFORMA.CO_EMP_RUC INNER JOIN
dbo.CO_CLIENTE ON dbo.CO_PROFORMA.CO_CLI_COD = dbo.CO_CLIENTE.CO_CLI_COD AND 
dbo.CO_PROFORMA.CO_EMP_RUC = dbo.CO_CLIENTE.CO_EMP_RUC
WHERE (dbo.CO_PROFORMA.CO_PRO_EST = N'ACTIVA' or dbo.CO_PROFORMA.CO_PRO_EST = N'PROCESADO') AND dbo.CO_EMPRESA.CO_EMP_RUC=@CO_EMP_RUC 
AND dbo.CO_PROFORMA.CO_PRO_FEC>=@CO_PRO_FEC1 AND
dbo.CO_PROFORMA.CO_PRO_FEC<=@CO_PRO_FEC2
ELSE IF (@CO_PRO_OPC='V')
SELECT dbo.CO_EMPRESA.CO_EMP_NOM, dbo.CO_EMPRESA.CO_EMP_CIU, dbo.CO_PROFORMA.CO_PRO_COD, '' as CO_PRO_TIP, 
dbo.CO_PROFORMA.CO_PRO_EST, dbo.CO_PROFORMA.CO_PRO_FEC, dbo.CO_PROFORMA.CO_VEN_CED, dbo.CO_CLIENTE.CO_CLI_COD, 
dbo.CO_CLIENTE.CO_CLI_NOM, dbo.CO_PROFORMA.CO_PRO_TOT_NET, dbo.CO_PROFORMA.CO_PRO_FOR_PAG
FROM dbo.CO_EMPRESA INNER JOIN
dbo.CO_PROFORMA ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_PROFORMA.CO_EMP_RUC INNER JOIN
dbo.CO_CLIENTE ON dbo.CO_PROFORMA.CO_CLI_COD = dbo.CO_CLIENTE.CO_CLI_COD AND 
dbo.CO_PROFORMA.CO_EMP_RUC = dbo.CO_CLIENTE.CO_EMP_RUC
WHERE (dbo.CO_PROFORMA.CO_PRO_EST = N'ACTIVA' or dbo.CO_PROFORMA.CO_PRO_EST = N'PROCESADO') AND dbo.CO_EMPRESA.CO_EMP_RUC=@CO_EMP_RUC AND dbo.CO_PROFORMA.CO_VEN_CED=@CO_VEN_CED AND
dbo.CO_PROFORMA.CO_PRO_FEC>=@CO_PRO_FEC1 AND
dbo.CO_PROFORMA.CO_PRO_FEC<=@CO_PRO_FEC2
GO