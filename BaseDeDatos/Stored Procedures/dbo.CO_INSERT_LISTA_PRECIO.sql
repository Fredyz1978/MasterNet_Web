SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_INSERT_LISTA_PRECIO]
@CO_EMP_RUC char(13)
,@Nombre nvarchar(250)
,@Rentabilidad float
AS
INSERT INTO [dbo].[CO_LISTA_PRECIO]
           ([CO_EMP_RUC]
           ,[Nombre]
           ,[Rentabilidad])
     VALUES
           (@CO_EMP_RUC
           ,@Nombre
           ,@Rentabilidad)
GO
