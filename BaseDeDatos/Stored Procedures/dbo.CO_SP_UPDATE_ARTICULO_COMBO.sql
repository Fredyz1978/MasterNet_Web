SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[CO_SP_UPDATE_ARTICULO_COMBO]
@ArticuloID int
,@CO_EMP_RUC char(13)
,@CO_ART_COD nvarchar(20)
,@Cantidad int
,@Costo float
AS
UPDATE [dbo].[CO_ARTICULO_COMBO] SET
Cantidad=@Cantidad,
Costo=@Costo
WHERE 
ArticuloID=@ArticuloID and
CO_ART_COD=@CO_ART_COD AND 
EmpresaID=@CO_EMP_RUC
GO
