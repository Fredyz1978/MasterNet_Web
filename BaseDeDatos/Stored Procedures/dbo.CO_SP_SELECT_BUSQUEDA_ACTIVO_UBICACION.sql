SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_BUSQUEDA_ACTIVO_UBICACION]
@CO_EMP_COD CHAR(13)
,@CO_UBI_COD INT
AS
SELECT     dbo.CO_ACTIVO_FIJO.*, dbo.CO_TIPO_ACTIVO.CO_TIP_ACT_NOM, dbo.CO_UBICACION_AF.CO_UBI_NOM
FROM         dbo.CO_ACTIVO_FIJO INNER JOIN
                      dbo.CO_TIPO_ACTIVO ON dbo.CO_ACTIVO_FIJO.CO_TIP_ACT_COD = dbo.CO_TIPO_ACTIVO.CO_TIP_ACT_COD INNER JOIN
                      dbo.CO_UBICACION_AF ON dbo.CO_ACTIVO_FIJO.CO_EMP_RUC = dbo.CO_UBICACION_AF.CO_EMP_RUC AND 
                      dbo.CO_ACTIVO_FIJO.CO_UBI_COD = dbo.CO_UBICACION_AF.CO_UBI_COD
WHERE dbo.CO_ACTIVO_FIJO.CO_EMP_RUC=@CO_EMP_COD AND dbo.CO_ACTIVO_FIJO.CO_UBI_COD=@CO_UBI_COD
GO
