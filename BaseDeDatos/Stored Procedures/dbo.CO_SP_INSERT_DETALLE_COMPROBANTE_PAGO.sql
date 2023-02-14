SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_DETALLE_COMPROBANTE_PAGO]
@CO_COM_PAG_NUM uniqueidentifier
           ,@CO_EMP_RUC char(13)
           ,@CO_PAG_PRO_COD int
           ,@CO_DOC_COM_NUM uniqueidentifier
           ,@CO_DOC_COM_TIP nvarchar(50)
           ,@CO_DET_PAG_PRO_CON nvarchar(50)
           ,@CO_DET_PAG_PRO_VAL float
           ,@CO_DET_PAG_PRO_FEC datetime
AS
INSERT INTO [dbo].[CO_DETALLE_COMPROBANTE_PAGO]
           ([CO_COM_PAG_NUM]
           ,[CO_EMP_RUC]
           ,[CO_PAG_PRO_COD]
           ,[CO_DOC_COM_NUM]
           ,[CO_DOC_COM_TIP]
           ,[CO_DET_PAG_PRO_CON]
           ,[CO_DET_PAG_PRO_VAL]
           ,[CO_DET_PAG_PRO_FEC])
     VALUES
           (@CO_COM_PAG_NUM
           ,@CO_EMP_RUC
           ,@CO_PAG_PRO_COD
           ,@CO_DOC_COM_NUM
           ,@CO_DOC_COM_TIP
           ,@CO_DET_PAG_PRO_CON
           ,@CO_DET_PAG_PRO_VAL
           ,@CO_DET_PAG_PRO_FEC)
GO
