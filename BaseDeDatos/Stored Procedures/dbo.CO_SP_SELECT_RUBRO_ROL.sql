SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_RUBRO_ROL]
@CO_EMP_RUC char(13)
AS 
SELECT * FROM [dbo].[CO_RUBROS_ROL]
WHERE [CO_EMP_RUC]=@CO_EMP_RUC
GO
