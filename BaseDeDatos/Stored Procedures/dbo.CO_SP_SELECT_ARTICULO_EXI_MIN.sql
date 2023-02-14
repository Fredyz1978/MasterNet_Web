SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 19/12/2006
-- Description:	Retorna el producto dado el codigo que sea menor o igual a la Existencia MIN
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_ARTICULO_EXI_MIN]

@CO_EMP_RUC char(13),
@CO_ART_COD nvarchar(20),
@CO_ART_EXI int

AS
BEGIN

SELECT  CO_ART_COD, CO_EMP_RUC, CO_FAM_ART_COD, CO_ART_NOM, CO_ART_COD_FAB, CO_ART_MAR, CO_ART_COL, 
        CO_ART_EXI_MIN, CO_ART_EXI_MAX, CO_ART_UNI, CO_ART_POR_IVA, CO_ART_TIP, 
        CO_ART_USU_ALI, CO_ICE_COD, CO_ART_PRE_COS
FROM         CO_ARTICULO
WHERE     (CO_EMP_RUC = @CO_EMP_RUC) AND (CO_ART_COD = @CO_ART_COD) AND (CO_ART_EXI_MIN >= @CO_ART_EXI)

END
GO
