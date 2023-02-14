SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE proc [dbo].[CO_SP_UPDATE_AUTORIZACION]
@AutorizacionID int,
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
UPDATE [dbo].[CO_AUTORIZACION] SET
           [CO_TIP_DOC_VEN_NUM]=@CO_TIP_DOC_VEN_NUM
           ,[CO_ALM_COD]=@CO_ALM_COD
           ,[CO_EMP_RUC]=@CO_EMP_RUC
           ,[Serie1]=@Serie1
           ,[Sere2]=@Sere2
           ,[SecuenciaInicio]=@SecuenciaInicio
           ,[SecuenciaFinal]=@SecuenciaFinal
           ,[ValidoDesde]=@ValidoDesde
           ,[ValidoHasta]=@ValidoHasta
           ,[Activo]=@Activo
WHERE [AutorizacionID]=@AutorizacionID
GO
