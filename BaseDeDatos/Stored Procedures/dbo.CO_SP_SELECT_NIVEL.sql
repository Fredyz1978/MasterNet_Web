SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_NIVEL]
@CO_CON_COD INT
AS
SELECT * FROM CO_CONFIG_NIVEL
WHERE CO_CON_COD=@CO_CON_COD
GO