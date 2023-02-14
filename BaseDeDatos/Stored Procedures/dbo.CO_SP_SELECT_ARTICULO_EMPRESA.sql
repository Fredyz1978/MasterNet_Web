SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 11/12/2006
-- Description:	Devuelve un articulo de la empresa
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_ARTICULO_EMPRESA] 

@CO_EMP_RUC char(13),
@CO_ART_COD nvarchar(20)

AS
BEGIN
	SELECT     ART.*,
	(SELECT CO_TAB_PRE FROM [dbo].[CO_TABLA_PRECIO] TP INNER JOIN [dbo].[CO_LISTA_PRECIO] LP ON TP.ListaDePrecioID=LP.ListaDePrecioID
	AND LP.Nombre='PVP' AND TP.CO_ART_COD=ART.CO_ART_COD AND TP.CO_EMP_RUC=ART.CO_EMP_RUC) AS PRECIO_VENTA,
	(SELECT CO_TAB_PRE FROM [dbo].[CO_TABLA_PRECIO] TP INNER JOIN [dbo].[CO_LISTA_PRECIO] LP ON TP.ListaDePrecioID=LP.ListaDePrecioID
	AND LP.Nombre='PVP TARJETA' AND TP.CO_ART_COD=ART.CO_ART_COD AND TP.CO_EMP_RUC=ART.CO_EMP_RUC) AS PRECIO_VENTA_MINIMO
	FROM         dbo.CO_ARTICULO ART
	WHERE     (ART.CO_EMP_RUC = @CO_EMP_RUC AND ART.CO_ART_COD=case @CO_ART_COD when '' then ART.CO_ART_COD else @CO_ART_COD end)
END
GO
