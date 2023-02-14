SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date, ,>
-- Description:	<Description, ,>
-- =============================================
CREATE FUNCTION [dbo].[fn_Stock_Articulo]
(
	@CO_EMP_RUC CHAR(13),
	@PR_PRO_COD NVARCHAR(10)
)
RETURNS float
AS
BEGIN


DECLARE @STOCK float

EXEC @STOCK=[PRODUCCION].[PR_SELECT_STOCK_PRODUCTO] @CO_EMP_RUC,@PR_PRO_COD

return isnull(@STOCK,0)

END
GO
