SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_COMPROBANTE_PAGO]
           (@CO_COM_PAG_NUM uniqueidentifier
           ,@CO_EMP_RUC char(13)
           ,@CO_PRO_COD nchar(20)
           ,@CO_COM_PAG_CON nvarchar(50)
           ,@CO_COM_PAG_FEC datetime
           ,@CO_COM_PAG_EST bit
           ,@CO_COM_PAG_USU_ALI nvarchar(15)
           ,@CO_COM_PAG_EFE bit
           ,@CO_COM_PAG_EFE_VAL float
           ,@CO_COM_PAG_CHE bit
           ,@CO_COM_PAG_CHE_VAL float
		   ,@CO_COM_PAG_VAL FLOAT
		   ,@CO_COM_PAG_TRA bit,
	@CO_COM_PAG_TRA_VAL float,
	@CO_COM_PAG_TRA_DOC_NUM varchar(20),
	@CO_COM_PAG_TAR bit,
	@CO_COM_PAG_TAR_VAL float,
	@CO_COM_PAG_TAR_NUM varchar(30),
	@CO_COM_PAG_TAR_VAU varchar(40),
	@CO_COM_PAG_TAR_NOM int)
AS
INSERT INTO [dbo].[CO_COMPROBANTE_PAGO]
           ([CO_COM_PAG_NUM]
           ,[CO_EMP_RUC]
           ,[CO_PRO_COD]
           ,[CO_COM_PAG_CON]
           ,[CO_COM_PAG_FEC]
           ,[CO_COM_PAG_EST]
           ,[CO_COM_PAG_USU_ALI]
           ,[CO_COM_PAG_EFE]
           ,[CO_COM_PAG_EFE_VAL]
           ,[CO_COM_PAG_CHE]
           ,[CO_COM_PAG_CHE_VAL]
			,CO_COM_PAG_VAL
			,CO_COM_PAG_TRA,
			CO_COM_PAG_TRA_VAL,
			CO_COM_PAG_TRA_DOC_NUM,
	CO_COM_PAG_TAR, 
	CO_COM_PAG_TAR_VAL,
	CO_COM_PAG_TAR_NUM,
	CO_COM_PAG_TAR_VAU,
	CO_COM_PAG_TAR_NOM)
     VALUES
           (@CO_COM_PAG_NUM
           ,@CO_EMP_RUC
           ,@CO_PRO_COD
           ,@CO_COM_PAG_CON
           ,@CO_COM_PAG_FEC
           ,@CO_COM_PAG_EST
           ,@CO_COM_PAG_USU_ALI
           ,@CO_COM_PAG_EFE
           ,@CO_COM_PAG_EFE_VAL
           ,@CO_COM_PAG_CHE
           ,@CO_COM_PAG_CHE_VAL
		   ,@CO_COM_PAG_VAL
		   ,@CO_COM_PAG_TRA,
			@CO_COM_PAG_TRA_VAL,
			@CO_COM_PAG_TRA_DOC_NUM,
	@CO_COM_PAG_TAR,
	@CO_COM_PAG_TAR_VAL,
	@CO_COM_PAG_TAR_NUM,
	@CO_COM_PAG_TAR_VAU,
	@CO_COM_PAG_TAR_NOM)

GO
