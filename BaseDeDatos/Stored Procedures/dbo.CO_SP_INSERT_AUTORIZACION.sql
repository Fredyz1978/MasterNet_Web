SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[CO_SP_INSERT_AUTORIZACION]
@CO_TIP_DOC_VEN_NUM int,
@CO_ALM_COD int,
@CO_EMP_RUC char(13),
@Serie1 nvarchar(5),
@Sere2 nvarchar(5),
@SecuenciaInicio int,
@SecuenciaFinal int,
@ValidoDesde datetime,
@ValidoHasta datetime,
@Activo bit
AS
INSERT INTO [dbo].[CO_AUTORIZACION]
           ([CO_TIP_DOC_VEN_NUM]
           ,[CO_ALM_COD]
           ,[CO_EMP_RUC]
           ,[Serie1]
           ,[Sere2]
           ,[SecuenciaInicio]
           ,[SecuenciaFinal]
           ,[ValidoDesde]
           ,[ValidoHasta]
           ,[Activo])
     VALUES
           (@CO_TIP_DOC_VEN_NUM,
           @CO_ALM_COD,
           @CO_EMP_RUC,
           @Serie1,
           @Sere2,
           @SecuenciaInicio,
           @SecuenciaFinal,
           @ValidoDesde,
           @ValidoHasta,
           @Activo)
GO
