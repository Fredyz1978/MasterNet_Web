SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_CLIENTE]
			@CO_CLI_COD nvarchar(50)
           ,@CO_EMP_RUC char(13)
           ,@CO_TIP_CLI_COD nvarchar(10)
           ,@CO_CLI_CED nvarchar(13)
           ,@CO_CLI_NOM nvarchar(100)
           ,@CO_CLI_CON nvarchar(50)
           ,@CO_CLI_EST_CIV nvarchar(10)
           ,@CO_CLI_SEX nvarchar(15)
           ,@CO_CLI_PAI nvarchar(20)
           ,@CO_CLI_CIU nvarchar(20)
           ,@CO_CLI_BAR nvarchar(30)
           ,@CO_CLI_DIR nvarchar(150)
           ,@CO_CLI_TEL nvarchar(10)
           ,@CO_CLI_TEL2 nvarchar(10)
           ,@CO_CLI_FAX nvarchar(10)
           ,@CO_CLI_CEL nvarchar(10)
           ,@CO_CLI_MAI nvarchar(100)
           ,@CO_CLI_CUE_CON nvarchar(40)
           ,@CO_CLI_DES float
           ,@CO_CLI_LIM_CRE float
           ,@CO_CLI_CRE bit
           ,@CO_CLI_EST nvarchar(10)
           ,@CO_CLI_USU_ALI nvarchar(15)
			,@CO_TIP_IDE_COD nvarchar(10)
			,@CO_CLI_MAI2 nvarchar(100)
		   ,@CO_CLI_MAI3 nvarchar(100)
		   ,@CuentaContableVenta nvarchar(40)
AS
UPDATE [dbo].[CO_CLIENTE] SET
            [CO_TIP_CLI_COD]=@CO_TIP_CLI_COD
           ,[CO_CLI_CED]=@CO_CLI_CED
           ,[CO_CLI_NOM]=@CO_CLI_NOM
           ,[CO_CLI_CON]=@CO_CLI_CON
           ,[CO_CLI_EST_CIV]=@CO_CLI_EST_CIV
           ,[CO_CLI_SEX]=@CO_CLI_SEX
           ,[CO_CLI_PAI]=@CO_CLI_PAI
           ,[CO_CLI_CIU]=@CO_CLI_CIU
           ,[CO_CLI_BAR]=@CO_CLI_BAR
           ,[CO_CLI_DIR]=@CO_CLI_DIR
           ,[CO_CLI_TEL]=@CO_CLI_TEL
           ,[CO_CLI_TEL2]=@CO_CLI_TEL2
           ,[CO_CLI_FAX]=@CO_CLI_FAX
           ,[CO_CLI_CEL]=@CO_CLI_CEL
           ,[CO_CLI_MAI]=@CO_CLI_MAI
           ,[CO_CLI_CUE_CON]=@CO_CLI_CUE_CON
           ,[CO_CLI_DES]=@CO_CLI_DES
           ,[CO_CLI_LIM_CRE]=@CO_CLI_LIM_CRE
           ,[CO_CLI_CRE]=@CO_CLI_CRE
           ,[CO_CLI_EST]=@CO_CLI_EST
           ,[CO_CLI_USU_ALI]=@CO_CLI_USU_ALI
		   ,CO_TIP_IDE_COD=@CO_TIP_IDE_COD
		   ,CO_CLI_MAI2=@CO_CLI_MAI2
		   ,CO_CLI_MAI3=@CO_CLI_MAI3
		   ,CuentaContableVenta=@CuentaContableVenta
     WHERE
           ([CO_CLI_COD]=@CO_CLI_COD
           AND [CO_EMP_RUC]=@CO_EMP_RUC)
GO
