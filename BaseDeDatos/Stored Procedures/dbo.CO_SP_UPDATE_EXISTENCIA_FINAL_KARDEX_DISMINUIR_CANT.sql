SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 1/12/2006
-- Description:	Actualiza la cantidad de Tabla CO_EXISTENCIA_FINAL restando  la cantidad de salida solicitada.
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_UPDATE_EXISTENCIA_FINAL_KARDEX_DISMINUIR_CANT] 

	@CO_EXI_FIN_KAR_CANT int,
	@CO_EXI_FIN_KAR_COD numeric(18,0),
	@CO_EMP_RUC char(13),
	@CO_ART_COD nvarchar(40)

AS
BEGIN

UPDATE CO_EXISTENCIA_FINAL_KARDEX
SET CO_EXI_FIN_KAR_CANT = CO_EXI_FIN_KAR_CANT - @CO_EXI_FIN_KAR_CANT, 
CO_EXI_FIN_KAR_VAL_TOT = (CO_EXI_FIN_KAR_CANT - @CO_EXI_FIN_KAR_CANT) * CO_EXI_FIN_KAR_VAL_UNI
WHERE (CO_EXI_FIN_KAR_COD = @CO_EXI_FIN_KAR_COD) AND (CO_EMP_RUC = @CO_EMP_RUC) AND (CO_ART_COD = @CO_ART_COD)
END
GO
