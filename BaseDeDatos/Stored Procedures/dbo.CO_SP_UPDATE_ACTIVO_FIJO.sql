SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_ACTIVO_FIJO]
@CO_ACT_FIJ_COD int
,@CO_EMP_RUC char(13)
,@CO_UBI_COD int
,@CO_TIP_ACT_COD int
,@CO_BAN_COD int
,@CO_ACT_FIJ_NOM varchar(50)
,@CO_ACT_FIJ_SER char(15)
,@CO_ACT_FIJ_FEC_COM datetime
,@CO_ACT_FIJ_NUM_FAC varchar(10)
,@CO_ACT_FIJ_NUM_CHE varchar(10)
,@CO_ACT_FIJ_NOM_PRO varchar(50)
,@CO_ACT_FIJ_ARE varchar(30)
,@CO_ACT_FIJ_DEP bit
,@CO_ACT_FIJ_VAL_ADQ float
,@CO_ACT_FIJ_DEP_ACU float
,@CO_ACT_FIJ_VAL_ACT float
,@CO_ACT_FIJ_FEC_INI datetime
,@CO_ACT_FIJ_FEC_FIN datetime
,@CO_ACT_FIJ_EST bit
,@CO_ACT_FIJ_USU_ALI varchar(15)
,@CO_ACT_FIJ_FUN_NOM nvarchar(50)
,@CO_ACT_FIJ_CAN INT
,@CO_ACT_FIJ_COD_PRO NCHAR(13)
AS
UPDATE [dbo].[CO_ACTIVO_FIJO] SET
[CO_UBI_COD]=@CO_UBI_COD
,[CO_TIP_ACT_COD]=@CO_TIP_ACT_COD
,[CO_BAN_COD]=@CO_BAN_COD
,[CO_ACT_FIJ_NOM]=@CO_ACT_FIJ_NOM
,[CO_ACT_FIJ_SER]=@CO_ACT_FIJ_SER
,[CO_ACT_FIJ_FEC_COM]=@CO_ACT_FIJ_FEC_COM
,[CO_ACT_FIJ_NUM_FAC]=@CO_ACT_FIJ_NUM_FAC
,[CO_ACT_FIJ_NUM_CHE]=@CO_ACT_FIJ_NUM_CHE
,[CO_ACT_FIJ_NOM_PRO]=@CO_ACT_FIJ_NOM_PRO
,[CO_ACT_FIJ_ARE]=@CO_ACT_FIJ_ARE
,[CO_ACT_FIJ_DEP]=@CO_ACT_FIJ_DEP
,[CO_ACT_FIJ_VAL_ADQ]=@CO_ACT_FIJ_VAL_ADQ
,[CO_ACT_FIJ_DEP_ACU]=@CO_ACT_FIJ_DEP_ACU
,[CO_ACT_FIJ_VAL_ACT]=@CO_ACT_FIJ_VAL_ACT
,[CO_ACT_FIJ_FEC_INI]=@CO_ACT_FIJ_FEC_INI
,[CO_ACT_FIJ_FEC_FIN]=@CO_ACT_FIJ_FEC_FIN
,[CO_ACT_FIJ_EST]=@CO_ACT_FIJ_EST
,[CO_ACT_FIJ_USU_ALI]=@CO_ACT_FIJ_USU_ALI
,[CO_ACT_FIJ_FUN_NOM]=@CO_ACT_FIJ_FUN_NOM
,[CO_ACT_FIJ_CAN]=@CO_ACT_FIJ_CAN
,[CO_ACT_FIJ_COD_PRO]=@CO_ACT_FIJ_COD_PRO
WHERE 
CO_ACT_FIJ_COD=@CO_ACT_FIJ_COD AND
CO_EMP_RUC=@CO_EMP_RUC
GO