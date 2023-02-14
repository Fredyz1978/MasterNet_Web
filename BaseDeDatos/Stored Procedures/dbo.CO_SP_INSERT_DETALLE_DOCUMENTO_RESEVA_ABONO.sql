SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_DETALLE_DOCUMENTO_RESEVA_ABONO]
@CO_RES_PAG_ID uniqueidentifier
           ,@CO_DOC_VEN_ID uniqueidentifier
           ,@FECHA_ABONO datetime
           ,@VALOR_ABONO float
           ,@SALDO float
           ,@USUARIO nchar(10)
AS

declare @SALDO2 as float
declare @DEUDA_TOTAL as float

select @SALDO2=isnull(sum(valor_abono),0) from [dbo].[CO_DETALLE_DOCUMENTO_RESEVA_ABONO] where CO_DOC_VEN_ID=@CO_DOC_VEN_ID
select @DEUDA_TOTAL=isnull(sum(CO_DOC_VEN_TOT_PAG),0) from [dbo].[CO_DOCUMENTO_RESERVA] where CO_DOC_VEN_ID=@CO_DOC_VEN_ID

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
           ,@DEUDA_TOTAL-@SALDO2-@VALOR_ABONO
           ,@USUARIO)
GO
