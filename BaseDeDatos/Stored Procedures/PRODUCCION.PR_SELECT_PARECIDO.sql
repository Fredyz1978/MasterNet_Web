SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_SELECT_PARECIDO]
@PR_PRO_COD nvarchar(10),
@CO_EMP_RUC char(13)
AS
SELECT * FROM [PRODUCCION].[PARECIDO] 
WHERE PR_PRO_COD=@PR_PRO_COD AND CO_EMP_RUC=@CO_EMP_RUC
GO
