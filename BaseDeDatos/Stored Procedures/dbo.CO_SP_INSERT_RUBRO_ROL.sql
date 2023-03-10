SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_RUBRO_ROL]
@CO_EMP_RUC char(13)
,@CO_RUB_ROL_NOM nvarchar(60)
,@CO_RUB_ROL_TIP nvarchar(50)
,@CO_RUB_ROL_VAL nvarchar(50)
,@CO_RUB_ROL_REN bit
,@CO_RUB_USU_ALI nvarchar(15)
,@CO_RUB_ROL_FOR nvarchar(200)
,@CO_RUB_ROL_IES bit
,@CO_TIP_RUB_COD int
,@CO_RUB_ROL_AFE nvarchar(10)

AS 
INSERT INTO [dbo].[CO_RUBROS_ROL]
([CO_EMP_RUC]
,[CO_RUB_ROL_NOM]
,[CO_RUB_ROL_TIP]
,[CO_RUB_ROL_VAL]
,[CO_RUB_ROL_REN]
,[CO_RUB_USU_ALI]
,[CO_RUB_ROL_FOR]
,[CO_RUB_ROL_IES]
,[CO_TIP_RUB_COD]
,[CO_RUB_ROL_AFE])
VALUES
(@CO_EMP_RUC
,@CO_RUB_ROL_NOM
,@CO_RUB_ROL_TIP
,@CO_RUB_ROL_VAL
,@CO_RUB_ROL_REN
,@CO_RUB_USU_ALI
,@CO_RUB_ROL_FOR
,@CO_RUB_ROL_IES
,@CO_TIP_RUB_COD
,@CO_RUB_ROL_AFE)
GO
