SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROC [PRODUCCION].[PR_SELECT_PARECIDO_CONTADOR]
@PR_PAR_COD INT
AS
SELECT * FROM [PRODUCCION].[PARECIDO] 
WHERE PR_PAR_COD=@PR_PAR_COD

GO
