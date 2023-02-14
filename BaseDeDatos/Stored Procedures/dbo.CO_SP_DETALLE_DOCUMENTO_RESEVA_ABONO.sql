SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_DETALLE_DOCUMENTO_RESEVA_ABONO]
@CO_RES_PAG_ID uniqueidentifier
           ,@CO_DOC_VEN_ID uniqueidentifier
           ,@FECHA_ABONO datetime
           ,@VALOR_ABONO float
           ,@SALDO float
           ,@USUARIO nchar(10)
AS
INSERT INTO [dbo].[CO_DETALLE_DOCUMENTO_RESEVA_ABONO]
           ([CO_RES_PAG_ID]
           ,[CO_DOC_VEN_ID]
           ,[FECHA_ABONO]
           ,[VALOR_ABONO]
           ,[SALDO]
           ,[USUARIO])
     VALUES
           (@CO_RES_PAG_ID
           ,@CO_DOC_VEN_ID
           ,@FECHA_ABONO
           ,@VALOR_ABONO
           ,@SALDO
           ,@USUARIO)
GO
