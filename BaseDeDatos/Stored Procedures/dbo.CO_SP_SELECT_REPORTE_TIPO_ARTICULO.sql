SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_SELECT_REPORTE_TIPO_ARTICULO]
@CO_EMP_RUC CHAR(13),
@CO_TIP_ART_COD_D NVARCHAR(10),
@CO_TIP_ART_COD_H NVARCHAR(10),
@CO_OPCION CHAR(1)
AS
IF @CO_OPCION='C'
SELECT dbo.CO_TIPO_ARTICULO.CO_TIP_ART_COD, dbo.CO_TIPO_ARTICULO.CO_EMP_RUC, dbo.CO_TIPO_ARTICULO.CO_TIP_ART_NOM, 
dbo.CO_EMPRESA.CO_EMP_NOM
FROM dbo.CO_TIPO_ARTICULO INNER JOIN
dbo.CO_EMPRESA ON dbo.CO_TIPO_ARTICULO.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC
WHERE dbo.CO_TIPO_ARTICULO.CO_TIP_ART_COD>=@CO_TIP_ART_COD_D AND dbo.CO_TIPO_ARTICULO.CO_TIP_ART_COD<=@CO_TIP_ART_COD_H AND dbo.CO_TIPO_ARTICULO.CO_EMP_RUC=@CO_EMP_RUC
else IF @CO_OPCION='T'
SELECT dbo.CO_TIPO_ARTICULO.CO_TIP_ART_COD, dbo.CO_TIPO_ARTICULO.CO_EMP_RUC, dbo.CO_TIPO_ARTICULO.CO_TIP_ART_NOM, 
dbo.CO_EMPRESA.CO_EMP_NOM
FROM dbo.CO_TIPO_ARTICULO INNER JOIN
dbo.CO_EMPRESA ON dbo.CO_TIPO_ARTICULO.CO_EMP_RUC = dbo.CO_EMPRESA.CO_EMP_RUC
WHERE dbo.CO_TIPO_ARTICULO.CO_EMP_RUC=@CO_EMP_RUC
GO
