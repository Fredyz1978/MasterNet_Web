SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_CONCEPTO_AIR_PORCENTAJE]
@CO_CON_AIR_COD int
AS
SELECT * FROM CO_CONCEPTO_AIR
WHERE CO_CON_AIR_COD=@CO_CON_AIR_COD
GO
