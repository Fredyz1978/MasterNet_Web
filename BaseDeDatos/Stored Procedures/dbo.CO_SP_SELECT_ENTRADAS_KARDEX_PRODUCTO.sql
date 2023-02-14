SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 7/12/2006
-- Description:	Devuelve todos las salidas dado el ruc de la empresa y el codigo de articulo
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_ENTRADAS_KARDEX_PRODUCTO] 

@CO_EMP_RUC CHAR(13),
@CO_ART_COD NVARCHAR(40)

AS
BEGIN

SELECT     CO_ENT_KAR_COD, CO_EMP_RUC, CO_ART_COD, CO_ENT_KAR_FEC, CO_ENT_KAR_DOC, CO_ENT_KAR_TIP_DOC, CO_ENT_KAR_CANT, 
                      CO_ENT_KAR_VAL_UNI, CO_ENT_KAR_VAL_TOT
FROM         CO_ENTRADAS_KARDEX
WHERE     (CO_EMP_RUC = @CO_EMP_RUC) AND (CO_ART_COD = @CO_ART_COD)

END
GO
