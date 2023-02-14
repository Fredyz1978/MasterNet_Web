SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		fredy aguirre
-- Create date: 13/11/2006
-- Description:	Devuelve los articulos Empresa
-- =============================================
CREATE PROCEDURE [dbo].[CO_SP_SELECT_ARTICULOS_EMPRESA] 
	-- Add the parameters for the stored procedure here
	@CO_EMP_RUC varchar(50)
AS
BEGIN
	SET NOCOUNT ON;
	SELECT     *
	FROM         dbo.CO_ARTICULO
	WHERE     (CO_EMP_RUC = @CO_EMP_RUC)
END
GO
