SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[CO_SP_UPDATE_ARTICULO_PRECIOS] 
	-- Add the parameters for the stored procedure here
	@CO_EMP_RUC varchar(50),
	@CO_ART_COD varchar(50),
	@CO_ART_PES float,
	@CO_ART_PRE_COS float,
	@CO_TAB_PRE_POR_ART float
AS
BEGIN
update dbo.CO_ARTICULO set 
CO_ART_PES=case when @CO_ART_PES is null then CO_ART_PES else @CO_ART_PES end,
CO_ART_PRE_COS=case when @CO_ART_PRE_COS is null then CO_ART_PRE_COS else @CO_ART_PRE_COS end
where [CO_EMP_RUC]=@CO_EMP_RUC and [CO_ART_COD]=@CO_ART_COD

update dbo.CO_TABLA_PRECIO set 
CO_TAB_PRE_POR_ART=case when @CO_TAB_PRE_POR_ART is null then CO_TAB_PRE_POR_ART else @CO_TAB_PRE_POR_ART end,
CO_TAB_PRE=@CO_ART_PRE_COS+(@CO_ART_PRE_COS*@CO_TAB_PRE_POR_ART/100)
where ListaDePrecioID=1 and [CO_EMP_RUC]=@CO_EMP_RUC and [CO_ART_COD]=@CO_ART_COD
end
GO
