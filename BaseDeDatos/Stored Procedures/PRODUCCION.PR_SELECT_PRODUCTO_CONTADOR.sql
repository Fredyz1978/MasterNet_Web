SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [PRODUCCION].[PR_SELECT_PRODUCTO_CONTADOR]
@PR_PRO_COD  NVARCHAR(10),
@CO_EMP_RUC CHAR(13)
AS
SELECT COUNT(*)
FROM PRODUCTO
WHERE PR_PRO_COD=@PR_PRO_COD AND CO_EMP_RUC=@CO_EMP_RUC

GO