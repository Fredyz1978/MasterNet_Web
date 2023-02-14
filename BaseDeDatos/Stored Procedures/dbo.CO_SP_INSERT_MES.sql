SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_INSERT_MES]
@CO_MES_NUM int
,@CO_ANIO_NUM int
,@CO_EMP_RUC char(13)
,@CO_MES_EST bit
,@CO_MES_USU_ALI varchar(13)
AS
INSERT INTO [dbo].[CO_MES]
           ([CO_MES_NUM]
           ,[CO_ANIO_NUM]
           ,[CO_EMP_RUC]
           ,[CO_MES_EST]
           ,[CO_MES_USU_ALI])
     VALUES
           (@CO_MES_NUM
,@CO_ANIO_NUM
,@CO_EMP_RUC
,@CO_MES_EST
,@CO_MES_USU_ALI)
GO
