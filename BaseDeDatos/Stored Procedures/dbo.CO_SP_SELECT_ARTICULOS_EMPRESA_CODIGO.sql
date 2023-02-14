SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CO_SP_SELECT_ARTICULOS_EMPRESA_CODIGO] 

	-- Add the parameters for the stored procedure here
	@CO_EMP_RUC varchar(50),
	@CO_ART_COD varchar(50)
AS
BEGIN
	SELECT     art.*, pre.CO_TAB_PRE_POR_ART
	FROM         dbo.CO_ARTICULO art inner join CO_TABLA_PRECIO pre on 
	art.CO_ART_COD=pre.CO_ART_COD
	WHERE     (art.CO_EMP_RUC = @CO_EMP_RUC)
	and art.CO_ART_COD LIKE @CO_ART_COD+'%'
	order by art.CO_ART_COD
END
GO
