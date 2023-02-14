SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_VENDEDOR]
@CO_VEN_CED varchar(10)
,@CO_EMP_RUC char(13)
,@CO_VEN_NOM nvarchar(50)
,@CO_VEN_DIR nvarchar(150)
,@CO_VEN_TEL nvarchar(10)
,@CO_VEN_CEL nvarchar(50)
,@CO_VEN_CTA varchar(40)
,@CO_VEN_EMAIL varchar(100)
AS
INSERT INTO [dbo].[CO_VENDEDOR]
           ([CO_VEN_CED]
           ,[CO_EMP_RUC]
           ,[CO_VEN_NOM]
           ,[CO_VEN_DIR]
           ,[CO_VEN_TEL]
           ,[CO_VEN_CEL]
           ,[CO_VEN_CTA]
		   ,CO_VEN_EMAIL
		   ,CO_ESTADO)
     VALUES
           (@CO_VEN_CED
           ,@CO_EMP_RUC
           ,@CO_VEN_NOM
           ,@CO_VEN_DIR
           ,@CO_VEN_TEL
           ,@CO_VEN_CEL
           ,@CO_VEN_CTA
		   ,@CO_VEN_EMAIL
		   ,1)
GO
