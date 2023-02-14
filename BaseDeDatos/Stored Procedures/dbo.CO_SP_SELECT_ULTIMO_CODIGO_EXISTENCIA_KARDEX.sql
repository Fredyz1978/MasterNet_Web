SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 4/12/2006
-- Description:	Devuelve el ultimo codigo de la tabla CO_SALIDAS_KARDEX
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_ULTIMO_CODIGO_EXISTENCIA_KARDEX] 
@CO_ART_COD nvarchar(40)
,@CO_EMP_RUC char(13)
AS
SELECT     MAX(CO_EXI_KAR_COD) AS Expr1
FROM         CO_EXISTENCIAS_KARDEX
WHERE CO_EMP_RUC=@CO_EMP_RUC AND CO_ART_COD=@CO_ART_COD
GO
