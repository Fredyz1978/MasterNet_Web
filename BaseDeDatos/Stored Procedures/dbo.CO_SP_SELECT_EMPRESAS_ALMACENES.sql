SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CO_SP_SELECT_EMPRESAS_ALMACENES]
AS
SELECT CO_EMPRESA.CO_EMP_RUC,CO_EMP_NOM+' / '+CO_ALM_NOM AS CO_EMP_NOM, CO_ALM_COD
FROM CO_EMPRESA INNER JOIN dbo.CO_ALMACEN
ON dbo.CO_EMPRESA.CO_EMP_RUC = dbo.CO_ALMACEN.CO_EMP_RUC
GO
