SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_RUBRO_ROL_TIPO_IESS]
@CO_EMP_RUC char(13)
,@CO_RUB_ROL_TIP nvarchar(50)
,@CO_RUB_ROL_IES bit
,@CO_RUB_ROL_REN BIT
AS 
SELECT * FROM [dbo].[CO_RUBROS_ROL]
WHERE [CO_EMP_RUC]=@CO_EMP_RUC AND CO_RUB_ROL_TIP=@CO_RUB_ROL_TIP AND CO_RUB_ROL_IES=@CO_RUB_ROL_IES
AND CO_RUB_ROL_REN=@CO_RUB_ROL_REN
GO