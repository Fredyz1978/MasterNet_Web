SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_DELETE_REGLA]
@PR_REG_COD INT
AS
DELETE REGLA
WHERE PR_REG_COD=@PR_REG_COD
GO