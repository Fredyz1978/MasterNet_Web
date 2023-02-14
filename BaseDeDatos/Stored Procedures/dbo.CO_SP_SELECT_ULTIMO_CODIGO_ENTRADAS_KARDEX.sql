SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 4/12/2006
-- Description:	Devuelve el ultimo codigo de la tabla CO_SALIDAS_KARDEX
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_ULTIMO_CODIGO_ENTRADAS_KARDEX] 
AS
BEGIN

SELECT     MAX(CO_ENT_KAR_COD) AS Expr1
FROM         CO_ENTRADAS_KARDEX

END
GO
