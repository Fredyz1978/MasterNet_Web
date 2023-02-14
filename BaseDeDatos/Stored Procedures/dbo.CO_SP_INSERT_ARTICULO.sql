SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_ARTICULO]
			@CO_ART_COD nvarchar(20)
           ,@CO_EMP_RUC char(13)
           ,@CO_FAM_ART_COD int
           ,@CO_ART_NOM nvarchar(100)
           ,@CO_ART_COD_FAB nvarchar(50)
           ,@CO_ART_MAR nvarchar(50)
           ,@CO_ART_COL nvarchar(20)
           ,@CO_ART_EXI_MIN int
           ,@CO_ART_EXI_MAX int
           ,@CO_ART_UNI nvarchar(50)
           ,@CO_ART_POR_IVA float
           ,@CO_ART_TIP nvarchar(15)
		   ,@CO_ART_USU_ALI VARCHAR(15)
		   ,@CO_ICE_COD int
		   ,@CO_ART_PRE_COS float
			,@CO_ART_PES float
			,@CO_ART_BAR NVARCHAR(20)
			,@CO_TIP_ART_COD NVARCHAR(10)
			,@DESCRIPCION NVARCHAR(500)
			,@UNIDAD_X_EMPAQUE INT 
			,@PRESENTACION VARCHAR(50)
			,@CODIGO_BARRAS VARBINARY(MAX)
			,@CO_ART_EST varchar(10)
AS
INSERT INTO [dbo].[CO_ARTICULO]
           ([CO_ART_COD]
           ,[CO_EMP_RUC]
           ,[CO_FAM_ART_COD]
           ,[CO_ART_NOM]
           ,[CO_ART_COD_FAB]
           ,[CO_ART_MAR]
           ,[CO_ART_COL]
           ,[CO_ART_EXI_MIN]
           ,[CO_ART_EXI_MAX]
           ,[CO_ART_UNI]
           ,[CO_ART_POR_IVA]
           ,[CO_ART_TIP]
		   ,[CO_ART_USU_ALI]
			,CO_ICE_COD
			,CO_ART_PRE_COS
			,CO_ART_PES
			,CO_ART_BAR
			,[CO_TIP_ART_COD]
			,[DESCRIPCION]
			,UNIDAD_X_EMPAQUE
			,PRESENTACION
			,CODIGO_BARRAS
			,CO_ART_EST)
     VALUES
           (@CO_ART_COD
           ,@CO_EMP_RUC
           ,@CO_FAM_ART_COD
           ,@CO_ART_NOM
           ,@CO_ART_COD_FAB
           ,@CO_ART_MAR
           ,@CO_ART_COL
           ,@CO_ART_EXI_MIN
           ,@CO_ART_EXI_MAX
           ,@CO_ART_UNI
           ,@CO_ART_POR_IVA
           ,@CO_ART_TIP
		   ,@CO_ART_USU_ALI
			,@CO_ICE_COD
			,@CO_ART_PRE_COS
			,@CO_ART_PES
			,@CO_ART_BAR
			,@CO_TIP_ART_COD
			,@DESCRIPCION
			,@UNIDAD_X_EMPAQUE
			,@PRESENTACION
			,@CODIGO_BARRAS
			,@CO_ART_EST)
GO
