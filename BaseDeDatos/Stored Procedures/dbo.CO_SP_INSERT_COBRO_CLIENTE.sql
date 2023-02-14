SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- Stored Procedure

CREATE PROC [dbo].[CO_SP_INSERT_COBRO_CLIENTE]
			@CO_COM_COD_CLI_ID UNIQUEIDENTIFIER
		   ,@CO_COM_COB_CLI_NUM int
           ,@CO_EMP_RUC char(13)
           ,@CO_CLI_COD nvarchar(50)
           ,@CO_TIP_CLI_COD nvarchar(10)
           ,@CO_COM_COB_CLI_FEC datetime
		   ,@CO_COM_COB_CLI_CON nvarchar(100)
           ,@CO_COM_COB_CLI_VAL float
           ,@CO_COM_COB_CLI_EST nvarchar(10)
           ,@CO_COM_COB_CLI_COM nvarchar(50)
           ,@CO_COM_COB_CLI_USU_ALI nvarchar(14)
           ,@CO_COM_COB_CLI_FOR_COB nvarchar(15)
           ,@CO_COM_COB_CLI_EFE bit
           ,@CO_COM_COB_CLI_EFE_VAL float
           ,@CO_COM_COB_CLI_CHE bit
           ,@CO_COM_COB_CLI_CHE_VAL float
           ,@CO_COM_COB_CLI_CHE_NUM nvarchar(20)
           ,@CO_COM_COB_CLI_CHE_BAN nvarchar(50)
           ,@CO_COM_COB_CLI_TAR bit
           ,@CO_COM_COB_CLI_TAR_VAL float
           ,@CO_COM_COB_CLI_TAR_NUM nvarchar(50)
           ,@CO_COM_COB_CLI_TAR_VAU nvarchar(50)
		   ,@CO_COM_COB_CLI_CHE_FEC datetime,
			@CO_COM_COB_TRA bit,
	@CO_COM_COB_TRA_VAL float,
	 @CO_COM_COB_TRA_DOC_NUM varchar(20) 
AS
INSERT INTO [dbo].[CO_COBRO_CLIENTE]
           ([CO_COM_COD_CLI_ID]
		   ,[CO_COM_COB_CLI_NUM]
           ,[CO_EMP_RUC]
           ,[CO_CLI_COD]
           ,[CO_TIP_CLI_COD]
           ,[CO_COM_COB_CLI_FEC]
		   ,[CO_COM_COB_CLI_CON]
           ,[CO_COM_COB_CLI_VAL]
           ,[CO_COM_COB_CLI_EST]
           ,[CO_COM_COB_CLI_COM]
           ,[CO_COM_COB_CLI_USU_ALI]
           ,[CO_COM_COB_CLI_FOR_COB]
           ,[CO_COM_COB_CLI_EFE]
           ,[CO_COM_COB_CLI_EFE_VAL]
           ,[CO_COM_COB_CLI_CHE]
           ,[CO_COM_COB_CLI_CHE_VAL]
           ,[CO_COM_COB_CLI_CHE_NUM]
           ,[CO_COM_COB_CLI_CHE_BAN]
           ,[CO_COM_COB_CLI_TAR]
           ,[CO_COM_COB_CLI_TAR_VAL]
           ,[CO_COM_COB_CLI_TAR_NUM]
           ,[CO_COM_COB_CLI_TAR_VAU]
		   ,[CO_COM_COB_CLI_CHE_FEC]
		   ,CO_COM_COB_TRA,
	CO_COM_COB_TRA_VAL,
	 CO_COM_COB_TRA_DOC_NUM)
     VALUES
           (@CO_COM_COD_CLI_ID
		   ,@CO_COM_COB_CLI_NUM
           ,@CO_EMP_RUC
           ,@CO_CLI_COD
           ,@CO_TIP_CLI_COD
           ,@CO_COM_COB_CLI_FEC
		   ,@CO_COM_COB_CLI_CON
           ,@CO_COM_COB_CLI_VAL
           ,@CO_COM_COB_CLI_EST
           ,@CO_COM_COB_CLI_COM
           ,@CO_COM_COB_CLI_USU_ALI
           ,@CO_COM_COB_CLI_FOR_COB
           ,@CO_COM_COB_CLI_EFE
           ,@CO_COM_COB_CLI_EFE_VAL
           ,@CO_COM_COB_CLI_CHE
           ,@CO_COM_COB_CLI_CHE_VAL
           ,@CO_COM_COB_CLI_CHE_NUM
           ,@CO_COM_COB_CLI_CHE_BAN
           ,@CO_COM_COB_CLI_TAR
           ,@CO_COM_COB_CLI_TAR_VAL
           ,@CO_COM_COB_CLI_TAR_NUM
           ,@CO_COM_COB_CLI_TAR_VAU
		   ,@CO_COM_COB_CLI_CHE_FEC
		   ,@CO_COM_COB_TRA,
	@CO_COM_COB_TRA_VAL,
	 @CO_COM_COB_TRA_DOC_NUM)

GO
