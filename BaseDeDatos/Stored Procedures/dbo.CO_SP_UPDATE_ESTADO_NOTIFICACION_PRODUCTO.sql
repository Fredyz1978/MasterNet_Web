SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 02/01/2007
-- Description:	Actualiza el estado de las notificaciones a atendido dado el codigo de productos
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_UPDATE_ESTADO_NOTIFICACION_PRODUCTO] 

@CO_NOT_STO_ATE BIT,
@CO_ART_COD NVARCHAR(40),
@CO_EMP_RUC CHAR(13)

AS
BEGIN

UPDATE    CO_NOTIFICACIONES_STOCK
SET              CO_NOT_STO_ATE = @CO_NOT_STO_ATE
WHERE     (CO_ART_COD = @CO_ART_COD) AND (CO_EMP_RUC = @CO_EMP_RUC)

END
GO
