SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 02/01/2007
-- Description:	Devuelve todos lo tipos de notificacion
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_TIPOS_NOTIFICACION] 

AS
BEGIN
	SET NOCOUNT ON;

	SELECT     CO_TIP_NOT_STO_COD, CO_TIP_NOT_STO_NOM
	FROM         CO_TIPO_NOTIFICACIONES_STOCK

END
GO
