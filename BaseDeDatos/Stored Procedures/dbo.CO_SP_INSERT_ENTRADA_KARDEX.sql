SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy Aguirre
-- Create date: 30/11/2006
-- Description:	Inserta una Entrada de Kardex en la Tabla CO_ENTRADA_KARDEX
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_INSERT_ENTRADA_KARDEX] 
	-- Add the parameters for the stored procedure here
	@CO_EMP_RUC char(13),
	@CO_ART_COD nvarchar(40),
	@CO_ENT_KAR_FEC datetime,
	@CO_ENT_KAR_DOC int,
	@CO_ENT_KAR_TIP_DOC int,
	@CO_ENT_KAR_CANT int,
	@CO_ENT_KAR_VAL_UNI float,
	@CO_ENT_KAR_VAL_TOT float
AS
BEGIN
	INSERT INTO CO_ENTRADAS_KARDEX
						  (CO_EMP_RUC, CO_ART_COD, CO_ENT_KAR_FEC, CO_ENT_KAR_DOC, CO_ENT_KAR_TIP_DOC, CO_ENT_KAR_CANT, CO_ENT_KAR_VAL_UNI, CO_ENT_KAR_VAL_TOT)
	VALUES     (@CO_EMP_RUC,@CO_ART_COD,@CO_ENT_KAR_FEC,@CO_ENT_KAR_DOC, @CO_ENT_KAR_TIP_DOC,@CO_ENT_KAR_CANT,@CO_ENT_KAR_VAL_UNI,@CO_ENT_KAR_VAL_TOT)
END
GO
