SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [PRODUCCION].[PR_INSERT_REGLA]
@PR_REG_COD int
,@PR_TIP_REC_COD int
,@PR_REG_NOM nvarchar(50)
AS
INSERT INTO [PRODUCCION].[REGLA]
([PR_REG_COD]
,[PR_TIP_REC_COD]
,[PR_REG_NOM])
VALUES
(@PR_REG_COD
,@PR_TIP_REC_COD
,@PR_REG_NOM)
GO