SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 15/12/2006
-- Description:	Devuelve todos los registros de la tabla CO_NOTIFICACIONES_STOCK
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_NOTIFICACIONES_STOCK] 

@CO_EMP_RUC char(13)

AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;
	
	SELECT     CO_NOT_STO_COD, CO_ART_COD, CO_EMP_RUC, CO_TIP_NOT_STO_COD, USUA_COD, CO_NOT_STO_DET, CO_NOT_STO_FEC, 
						  CO_NOT_STO_ATE
	FROM         CO_NOTIFICACIONES_STOCK
	WHERE     (CO_EMP_RUC = @CO_EMP_RUC)

END
GO
