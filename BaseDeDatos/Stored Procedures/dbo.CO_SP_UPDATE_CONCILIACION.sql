SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_CONCILIACION]
@CO_CON_BAN_COD int
,@CO_CC_NUM varchar(10)
,@CO_TIP_TRA_COD char(2)
,@CO_EMP_RUC char(13)
,@CO_CONTABILIDAD_TIP_COM_COD int
,@CO_CONTABILIDAD_COM_NUM int
,@CO_COMPRA_DOC_COM_NUM int
,@CO_COMPRA_CUE_PAG_COD int
,@CO_CON_BAN_TRA_NUM varchar(20)
,@CO_CON_BAN_FEC datetime
,@CO_CON_BAN_NOM_BEN varchar(50)
,@CO_CON_BAN_VAL FLOAT
,@CO_CON_BAN_VAL_LET nvarchar(100)
,@CO_CON_BAN_AFE CHAR(1)
,@CO_CON_BAN_CON BIT
,@CO_CON_BAN_USU_ALI varchar(15)
AS
UPDATE [dbo].[CO_CONCILIACION] SET
CO_CC_NUM=@CO_CC_NUM
,CO_TIP_TRA_COD=@CO_TIP_TRA_COD
,CO_CONTABILIDAD_TIP_COM_COD=@CO_CONTABILIDAD_TIP_COM_COD
,CO_CONTABILIDAD_COM_NUM=@CO_CONTABILIDAD_COM_NUM
,CO_COMPRA_DOC_COM_NUM=@CO_COMPRA_DOC_COM_NUM
,CO_COMPRA_CUE_PAG_COD=@CO_COMPRA_CUE_PAG_COD
,CO_CON_BAN_TRA_NUM=@CO_CON_BAN_TRA_NUM
,CO_CON_BAN_FEC=@CO_CON_BAN_FEC
,CO_CON_BAN_NOM_BEN=@CO_CON_BAN_NOM_BEN
,CO_CON_BAN_VAL=@CO_CON_BAN_VAL
,CO_CON_BAN_VAL_LET=@CO_CON_BAN_VAL_LET
,CO_CON_BAN_AFE=@CO_CON_BAN_AFE
,CO_CON_BAN_CON=@CO_CON_BAN_CON
,CO_CON_BAN_USU_ALI=@CO_CON_BAN_USU_ALI
WHERE CO_CON_BAN_COD=@CO_CON_BAN_COD
GO
