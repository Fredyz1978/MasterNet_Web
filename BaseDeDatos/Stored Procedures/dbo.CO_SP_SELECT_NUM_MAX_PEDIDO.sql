SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Fredy M. Aguirre
-- Create date: 02/01/2007
-- Description:	Devuelve el ultimo codigo ingresado de la tabla Pedido
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_NUM_MAX_PEDIDO] 

@CO_EMP_RUC CHAR(13)

AS 
BEGIN

SELECT     MAX(CO_PED_COD) AS Expr1
FROM         CO_PEDIDO
WHERE     (CO_EMP_RUC = @CO_EMP_RUC)

END
GO
