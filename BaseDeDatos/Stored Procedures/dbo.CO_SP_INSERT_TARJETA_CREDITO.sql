SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_TARJETA_CREDITO]
	(@CO_EMP_RUC char(13)
           ,@CO_TAR_CRE_NOM nvarchar(250)
           ,@CO_TAR_CRE_CUE varchar(40))
AS
INSERT INTO [dbo].[CO_TARJETA_CREDITO]
           ([CO_EMP_RUC]
           ,[CO_TAR_CRE_NOM]
           ,[CO_TAR_CRE_CUE])
     VALUES
           (@CO_EMP_RUC
           ,@CO_TAR_CRE_NOM
           ,@CO_TAR_CRE_CUE)
GO
