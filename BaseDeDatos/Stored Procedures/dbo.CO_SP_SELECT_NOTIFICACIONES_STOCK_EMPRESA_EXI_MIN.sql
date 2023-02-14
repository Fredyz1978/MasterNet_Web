SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 28/12/2006
-- Description:	Presenta las notificaciones que sean del tipo de existencia MIN y que no hayan sido atendidas, ed, que no se haya producido un pedido...
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_NOTIFICACIONES_STOCK_EMPRESA_EXI_MIN] 

@CO_EMP_RUC char(13)

AS
BEGIN
	SET NOCOUNT ON;
	
SELECT     CO_NOTIFICACIONES_STOCK.CO_ART_COD, CO_ARTICULO.CO_ART_EXI_MIN, CO_ARTICULO.CO_ART_NOM, 
                      CO_NOTIFICACIONES_STOCK.CO_NOT_STO_DET, CO_NOTIFICACIONES_STOCK.CO_NOT_STO_FEC, USUARIO.USUA_NOM
FROM         CO_NOTIFICACIONES_STOCK INNER JOIN
                      CO_ARTICULO ON CO_NOTIFICACIONES_STOCK.CO_ART_COD = CO_ARTICULO.CO_ART_COD AND 
                      CO_NOTIFICACIONES_STOCK.CO_EMP_RUC = CO_ARTICULO.CO_EMP_RUC INNER JOIN
                      USUARIO ON CO_NOTIFICACIONES_STOCK.USUA_COD = USUARIO.USUA_COD
WHERE     (CO_NOTIFICACIONES_STOCK.CO_TIP_NOT_STO_COD = 1) AND (CO_NOTIFICACIONES_STOCK.CO_NOT_STO_ATE = 0) AND 
                      (CO_NOTIFICACIONES_STOCK.CO_EMP_RUC = @CO_EMP_RUC)
END
GO
