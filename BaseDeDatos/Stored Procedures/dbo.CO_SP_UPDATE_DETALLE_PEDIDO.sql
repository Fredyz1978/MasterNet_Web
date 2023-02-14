SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 02/01/2007
-- Description:	Actualiza un registro de la Tabla CO_DETALLE_PEDIDO
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_UPDATE_DETALLE_PEDIDO] 
	-- Add the parameters for the stored procedure here
	@CO_EMP_RUC char(13),
	@CO_PED_COD NUMERIC(18,0),
	@CO_ART_COD NVARCHAR(40),
	@CO_DET_PE_CANT INT
AS
BEGIN

UPDATE    CO_DETALLE_PEDIDO
SET              CO_PED_COD = @CO_PED_COD, CO_ART_COD = @CO_ART_COD, CO_EMP_RUC = @CO_EMP_RUC, 
                      CO_DET_PE_CANT = @CO_DET_PE_CANT
WHERE     (CO_PED_COD = @CO_PED_COD) AND (CO_ART_COD = @CO_ART_COD) AND (CO_EMP_RUC = @CO_EMP_RUC)

END
GO
