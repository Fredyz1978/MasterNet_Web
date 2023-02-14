SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 1/12/2006
-- Description:	Inserta un registro en la Tabla CO_SALIDAS_KARDEX
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_INSERT_SALIDA_KARDEX] 

	@CO_EMP_RUC char(13),
	@CO_ART_COD nvarchar(40),
	@CO_SAL_KAR_FEC datetime,
	@CO_SAL_KAR_DOC int,
	@CO_SAL_KAR_TIP_DOC int,
	@CO_SAL_KAR_CANT int,
	@CO_SAL_KAR_VAL_UNI float,
	@CO_SAL_KAR_VAL_TOT float

AS
BEGIN

	INSERT INTO CO_SALIDAS_KARDEX
                      (CO_EMP_RUC, CO_ART_COD, CO_SAL_KAR_FEC, CO_SAL_KAR_DOC, CO_SAL_KAR_TIP_DOC, CO_SAL_KAR_CANT, CO_SAL_KAR_VAL_UNI, CO_SAL_KAR_VAL_TOT)
	VALUES     (@CO_EMP_RUC,@CO_ART_COD,@CO_SAL_KAR_FEC,@CO_SAL_KAR_DOC,@CO_SAL_KAR_TIP_DOC,@CO_SAL_KAR_CANT,@CO_SAL_KAR_VAL_UNI,@CO_SAL_KAR_VAL_TOT)

END
GO
