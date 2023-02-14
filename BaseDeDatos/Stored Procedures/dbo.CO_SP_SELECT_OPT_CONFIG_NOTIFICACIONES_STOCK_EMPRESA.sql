SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 15/12/2006
-- Description:	Selecciona las opciones de configuracion de notificaciones de stock de una empresa
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_OPT_CONFIG_NOTIFICACIONES_STOCK_EMPRESA] 

@CO_EMP_RUC CHAR(13)

AS
BEGIN

SELECT     CO_OPT_CONF_NOT_STO_COD, CO_EMP_RUC, CO_OPT_CONF_NOT_STO_POR_MIN, CO_OPT_CONF_NOT_STO_POR_MAX, 
                      CO_OPT_CONF_NOT_STO_MOS_NOT_COM, CO_OPT_CONF_NOT_STO_MOS_NOT_VEN, CO_OPT_CONF_NOT_SOT_MOS_NOT_INI
FROM         CO_OPT_CONFIG_NOTIFICACIONES_STOCK
WHERE     (CO_EMP_RUC = @CO_EMP_RUC)

END
GO
