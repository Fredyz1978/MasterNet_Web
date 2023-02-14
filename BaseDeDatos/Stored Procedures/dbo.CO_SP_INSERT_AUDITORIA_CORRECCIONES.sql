SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_AUDITORIA_CORRECCIONES]
(@CO_AUD_COR_ART_COD nvarchar(50)
           ,@CO_AUD_COR_SIG char(1)
           ,@CO_AUD_COR_CAN float
           ,@CO_AUD_COR_USU nvarchar(50)
           ,@CO_AUD_COR_FEC datetime)
AS
INSERT INTO [dbo].[CO_AUDITORIO_CORRECCIONES]
           ([CO_AUD_COR_ART_COD]
           ,[CO_AUD_COR_SIG]
           ,[CO_AUD_COR_CAN]
           ,[CO_AUD_COR_USU]
           ,[CO_AUD_COR_FEC])
     VALUES
           (@CO_AUD_COR_ART_COD
           ,@CO_AUD_COR_SIG
           ,@CO_AUD_COR_CAN
           ,@CO_AUD_COR_USU
           ,@CO_AUD_COR_FEC)
GO
