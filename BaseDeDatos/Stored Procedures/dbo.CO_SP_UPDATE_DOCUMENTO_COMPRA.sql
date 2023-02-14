SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Stored Procedure

CREATE PROC [dbo].[CO_SP_UPDATE_DOCUMENTO_COMPRA]
			@CO_DOC_COM_ID UNIQUEIDENTIFIER
           ,@CO_DOC_COM_FEC_CAD datetime
           ,@CO_TIP_SUS_COD nvarchar(5)
           ,@CO_TIP_COM_COM_COD int
           ,@CO_DOC_COM_ETA nvarchar(10)
           ,@CO_DOC_COM_PUN_EMI nvarchar(10)
           ,@CO_DOC_COM_SEC nvarchar(10)
           ,@CO_DOC_COM_DET nvarchar(50)
           ,@CO_DOC_COM_NUM_AUT nvarchar(50)
           ,@CO_DOC_COM_FEC_EMI datetime
           ,@CO_DOC_COM_FEC_REG datetime
           ,@CO_DOC_COM_EST nvarchar(10)
           ,@CO_DOC_COM_TOT_NET float
           ,@CO_DOC_COM_POR_DES float
           ,@CO_DOC_COM_DES float
           ,@CO_DOC_COM_POR_IVA int
		   ,@CO_DOC_COM_IVA float
           ,@CO_DOC_COM_TOT_PAG float
           ,@CO_DOC_COM_FOR_PAG nvarchar(15)
           ,@CO_DOC_COM_EFE bit
           ,@CO_DOC_COM_EFE_VAL float
           ,@CO_DOC_COM_CHE bit
           ,@CO_DOC_COM_CHE_VAL float
			,@CO_DOC_COM_CHE_NUM nvarchar(50)
           ,@CO_DOC_COM_CHE_NUM_CUE nvarchar(10)
           ,@CO_DOC_COM_NUM_PAG int
           ,@CO_DOC_COM_USU_ALI nvarchar(15)
           ,@CO_DOC_COM_TOT_LET nvarchar(200)
			,@CO_DOC_COM_VAL_ICE float
			,@CO_DOC_COM_VAL_IVA0 float
,@CO_DOC_COM_FEC_PAGO datetime
,@CO_DOC_COM_DIAS_PLA int,
@CO_DOC_COM_TAR bit,
@CO_DOC_COM_TAR_VAL float(53),
@CO_DOC_COM_TAR_NUM nvarchar(30),
@CO_DOC_COM_TAR_VAU nvarchar(40),
@AlmacenID int,
@CO_DOC_COM_TRA bit
,@CO_DOC_COM_TRA_VAL float
,@CO_DOC_COM_TRA_DOC_NUM varchar(20)
AS
UPDATE [dbo].[CO_DOCUMENTO_COMPRA] SET
           [CO_DOC_COM_FEC_CAD]=@CO_DOC_COM_FEC_CAD
           ,[CO_TIP_SUS_COD]=@CO_TIP_SUS_COD
           ,[CO_TIP_COM_COM_COD]=@CO_TIP_COM_COM_COD
           ,[CO_DOC_COM_ETA]=@CO_DOC_COM_ETA
           ,[CO_DOC_COM_PUN_EMI]=@CO_DOC_COM_PUN_EMI
           ,[CO_DOC_COM_SEC]=@CO_DOC_COM_SEC
           ,[CO_DOC_COM_DET]=@CO_DOC_COM_DET
           ,[CO_DOC_COM_NUM_AUT]=@CO_DOC_COM_NUM_AUT
           ,[CO_DOC_COM_FEC_EMI]=@CO_DOC_COM_FEC_EMI
           ,[CO_DOC_COM_FEC_REG]=@CO_DOC_COM_FEC_REG
           ,[CO_DOC_COM_EST]=@CO_DOC_COM_EST
           ,[CO_DOC_COM_TOT_NET]=@CO_DOC_COM_TOT_NET
           ,[CO_DOC_COM_POR_DES]=@CO_DOC_COM_POR_DES
           ,[CO_DOC_COM_DES]=@CO_DOC_COM_DES
           ,[CO_DOC_COM_POR_IVA]=@CO_DOC_COM_POR_IVA
		   ,CO_DOC_COM_IVA=@CO_DOC_COM_IVA
           ,[CO_DOC_COM_TOT_PAG]=@CO_DOC_COM_TOT_PAG
           ,[CO_DOC_COM_FOR_PAG]=@CO_DOC_COM_FOR_PAG
           ,[CO_DOC_COM_EFE]=@CO_DOC_COM_EFE
           ,[CO_DOC_COM_EFE_VAL]=@CO_DOC_COM_EFE_VAL
           ,[CO_DOC_COM_CHE]=@CO_DOC_COM_CHE
           ,[CO_DOC_COM_CHE_VAL]=@CO_DOC_COM_CHE_VAL
			,[CO_DOC_COM_CHE_NUM]=@CO_DOC_COM_CHE_NUM_CUE
           ,[CO_DOC_COM_CHE_NUM_CUE]=@CO_DOC_COM_CHE_NUM
           ,[CO_DOC_COM_NUM_PAG]=@CO_DOC_COM_NUM_PAG
           ,[CO_DOC_COM_USU_ALI]=@CO_DOC_COM_USU_ALI
           ,[CO_DOC_COM_TOT_LET]=@CO_DOC_COM_TOT_LET
			,CO_DOC_COM_VAL_ICE=@CO_DOC_COM_VAL_ICE
			,CO_DOC_COM_VAL_IVA0=@CO_DOC_COM_VAL_IVA0
			,CO_DOC_COM_FEC_PAGO=@CO_DOC_COM_FEC_PAGO
			,CO_DOC_COM_DIAS_PLA=@CO_DOC_COM_DIAS_PLA
			,CO_DOC_COM_TAR=@CO_DOC_COM_TAR
			,CO_DOC_COM_TAR_VAL=@CO_DOC_COM_TAR_VAL
			,CO_DOC_COM_TAR_NUM=@CO_DOC_COM_TAR_NUM
			,CO_DOC_COM_TAR_VAU=@CO_DOC_COM_TAR_VAU
			,AlmacenID=@AlmacenID,
			CO_DOC_COM_TRA=@CO_DOC_COM_TRA
			,CO_DOC_COM_TRA_VAL=@CO_DOC_COM_TRA_VAL
			,CO_DOC_COM_TRA_DOC_NUM=@CO_DOC_COM_TRA_DOC_NUM
WHERE CO_DOC_COM_ID=@CO_DOC_COM_ID

GO
