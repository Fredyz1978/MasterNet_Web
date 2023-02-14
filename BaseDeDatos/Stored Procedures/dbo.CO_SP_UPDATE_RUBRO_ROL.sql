SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_RUBRO_ROL]
@CO_RUB_ROL_COD int
,@CO_EMP_RUC char(13)
,@CO_RUB_ROL_NOM nvarchar(60)
,@CO_RUB_ROL_TIP nvarchar(50)
,@CO_RUB_ROL_VAL nvarchar(50)
,@CO_RUB_ROL_REN bit
,@CO_RUB_ROL_FOR nvarchar(200)
,@CO_RUB_ROL_IES bit
,@CO_TIP_RUB_COD int
,@CO_RUB_ROL_AFE nvarchar(10)
AS 
UPDATE [dbo].[CO_RUBROS_ROL] SET
[CO_RUB_ROL_NOM]=@CO_RUB_ROL_NOM
,[CO_RUB_ROL_TIP]=@CO_RUB_ROL_TIP
,[CO_RUB_ROL_VAL]=@CO_RUB_ROL_VAL
,[CO_RUB_ROL_REN]=@CO_RUB_ROL_REN
,[CO_RUB_ROL_FOR]=@CO_RUB_ROL_FOR
,CO_RUB_ROL_IES=@CO_RUB_ROL_IES
,CO_TIP_RUB_COD=@CO_TIP_RUB_COD
,CO_RUB_ROL_AFE=@CO_RUB_ROL_AFE
WHERE 
[CO_EMP_RUC]=@CO_EMP_RUC AND CO_RUB_ROL_COD=@CO_RUB_ROL_COD
GO