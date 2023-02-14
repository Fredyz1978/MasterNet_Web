SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create proc [dbo].[CO_INSERT_UBICACIONARTICULO]
@CO_ART_COD nvarchar(20)
           ,@CO_EMP_RUC char(13)
           ,@CO_BOD_COD int
AS
INSERT INTO [CO_UBICACIONARTICULO]
           (CO_ART_COD
           ,CO_EMP_RUC
           ,CO_BOD_COD)
     VALUES
           (@CO_ART_COD
           ,@CO_EMP_RUC
           ,@CO_BOD_COD)
GO
