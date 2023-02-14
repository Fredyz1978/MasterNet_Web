SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_RUBRO_ROL_VALOR]
@CO_EMP_RUC char(13)
,@CO_RUB_ROL_VAL nvarchar(50)
AS 
SELECT * FROM [dbo].[CO_RUBROS_ROL]
WHERE [CO_EMP_RUC]=@CO_EMP_RUC AND CO_RUB_ROL_VAL=@CO_RUB_ROL_VAL
GO