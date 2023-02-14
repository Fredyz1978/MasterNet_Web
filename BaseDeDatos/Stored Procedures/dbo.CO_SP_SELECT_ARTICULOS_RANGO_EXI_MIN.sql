SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 15/12/2006
-- Description:	Devuelve los productos que estan dentro del rango de existencia MIN o sean menor o igual a la existencia MIN
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_ARTICULOS_RANGO_EXI_MIN] 

@CO_EMP_RUC char(13),
@CO_ART_EXI int

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	SELECT     CO_ART_COD, CO_EMP_RUC, CO_FAM_ART_COD, CO_ART_NOM, CO_ART_COD_FAB, CO_ART_MAR, CO_ART_COL, 
						  CO_ART_EXI_MIN, CO_ART_EXI_MAX, CO_ART_UNI, CO_ART_POR_IVA, CO_ART_TIP,
						  CO_ART_USU_ALI, CO_ICE_COD, CO_ART_PRE_COS
	FROM         CO_ARTICULO
	WHERE     (CO_EMP_RUC = @CO_EMP_RUC) AND ((@CO_ART_EXI <= CO_ART_EXI_MIN * (1+((SELECT CO_OPT_CONF_NOT_STO_POR_MIN
		FROM         CO_OPT_CONFIG_NOTIFICACIONES_STOCK
		WHERE     (CO_EMP_RUC = @CO_EMP_RUC))/100))) AND (@CO_ART_EXI >= CO_ART_EXI_MIN))
END
GO
